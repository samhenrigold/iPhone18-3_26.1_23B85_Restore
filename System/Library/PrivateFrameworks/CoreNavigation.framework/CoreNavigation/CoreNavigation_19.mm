uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 44);
  if (v1)
  {
    if (*(this + 44))
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
        v1 = *(this + 44);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 8) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 48))
        {
          *(v5 + 40) = 0;
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        *(v5 + 48) = 0;
      }
    }
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
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
        v1 = *(this + 44);
      }
    }

    if ((v1 & 8) != 0)
    {
      v3 = *(this + 32);
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
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_74;
        }

        *(this + 63) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v83[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v83))
          {
            return 0;
          }
        }

        else
        {
          v83[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v8, a2, v22) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v25 < 0 == v24)
        {
          *(a2 + 14) = v25;
        }

        v26 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v26 >= v15 || *v26 != 16)
        {
          continue;
        }

        v16 = v26 + 1;
        *(a2 + 1) = v16;
        goto LABEL_86;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
LABEL_86:
        v83[0] = 0;
        if (v16 >= v15 || (v27 = *v16, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v83);
          if (!result)
          {
            return result;
          }

          v27 = v83[0];
          v28 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          v28 = v16 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 16) = v27;
        v12 = *(this + 63) | 2;
        *(this + 63) = v12;
        if (v28 >= v15 || *v28 != 26)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_94:
        *(this + 63) = v12 | 4;
        v30 = *(this + 2);
        if (!v30)
        {
          operator new();
        }

        v83[0] = 0;
        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v83))
          {
            return 0;
          }
        }

        else
        {
          v83[0] = *v31;
          *(a2 + 1) = v31 + 1;
        }

        v32 = *(a2 + 14);
        v33 = *(a2 + 15);
        *(a2 + 14) = v32 + 1;
        if (v32 >= v33)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::MergePartialFromCodedStream(v30, a2, v34) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v35 = *(a2 + 14);
        v24 = __OFSUB__(v35, 1);
        v36 = v35 - 1;
        if (v36 < 0 == v24)
        {
          *(a2 + 14) = v36;
        }

        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 33)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_108:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v83;
        *(this + 63) |= 8u;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 41)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_112:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v83;
        v17 = *(this + 63) | 0x10;
        *(this + 63) = v17;
        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 50)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_116:
        *(this + 63) = v17 | 0x20;
        v40 = *(this + 5);
        if (!v40)
        {
          operator new();
        }

        v83[0] = 0;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v83))
          {
            return 0;
          }
        }

        else
        {
          v83[0] = *v41;
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
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::MergePartialFromCodedStream(v40, a2, v44) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v45 = *(a2 + 14);
        v24 = __OFSUB__(v45, 1);
        v46 = v45 - 1;
        if (v46 < 0 == v24)
        {
          *(a2 + 14) = v46;
        }

        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 != 58)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_130:
        *(this + 63) |= 0x40u;
        v48 = *(this + 6);
        if (!v48)
        {
          operator new();
        }

        v83[0] = 0;
        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v83))
          {
            return 0;
          }
        }

        else
        {
          v83[0] = *v49;
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
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::MergePartialFromCodedStream(v48, a2, v52) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v53 = *(a2 + 14);
        v24 = __OFSUB__(v53, 1);
        v54 = v53 - 1;
        if (v54 < 0 == v24)
        {
          *(a2 + 14) = v54;
        }

        v55 = *(a2 + 1);
        if (v55 >= *(a2 + 2) || *v55 != 65)
        {
          continue;
        }

        *(a2 + 1) = v55 + 1;
LABEL_144:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v83;
        *(this + 63) |= 0x80u;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 != 73)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_148:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v83;
        *(this + 63) |= 0x100u;
        v57 = *(a2 + 1);
        if (v57 >= *(a2 + 2) || *v57 != 81)
        {
          continue;
        }

        *(a2 + 1) = v57 + 1;
LABEL_152:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v83;
        *(this + 63) |= 0x200u;
        v58 = *(a2 + 1);
        if (v58 >= *(a2 + 2) || *v58 != 89)
        {
          continue;
        }

        *(a2 + 1) = v58 + 1;
LABEL_156:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v83;
        *(this + 63) |= 0x400u;
        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 97)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_160:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v83;
        *(this + 63) |= 0x800u;
        v60 = *(a2 + 1);
        if (v60 >= *(a2 + 2) || *v60 != 105)
        {
          continue;
        }

        *(a2 + 1) = v60 + 1;
LABEL_164:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = *v83;
        *(this + 63) |= 0x1000u;
        v61 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v61 >= v18 || *v61 != 112)
        {
          continue;
        }

        v19 = v61 + 1;
        *(a2 + 1) = v19;
LABEL_168:
        v83[0] = 0;
        if (v19 >= v18 || (v62 = *v19, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v83);
          if (!result)
          {
            return result;
          }

          v62 = v83[0];
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v62 <= 4)
        {
          *(this + 63) |= 0x2000u;
          *(this + 17) = v62;
        }

        v63 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v63 >= v10 || *v63 != 120)
        {
          continue;
        }

        v11 = v63 + 1;
        *(a2 + 1) = v11;
LABEL_178:
        v83[0] = 0;
        if (v11 >= v10 || (v64 = *v11, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v83);
          if (!result)
          {
            return result;
          }

          v64 = v83[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v64 <= 2)
        {
          *(this + 63) |= 0x4000u;
          *(this + 28) = v64;
        }

        v65 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v13 - v65 < 2 || *v65 != 128 || v65[1] != 1)
        {
          continue;
        }

        v14 = (v65 + 2);
        *(a2 + 1) = v14;
LABEL_189:
        v83[0] = 0;
        if (v14 >= v13 || (v66 = *v14, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v83);
          if (!result)
          {
            return result;
          }

          v66 = v83[0];
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v66 <= 0xC)
        {
          *(this + 63) |= 0x8000u;
          *(this + 29) = v66;
        }

        v67 = *(a2 + 1);
        if (*(a2 + 4) - v67 < 2 || *v67 != 137 || v67[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v67 + 2;
LABEL_200:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = *v83;
        *(this + 63) |= 0x10000u;
        v68 = *(a2 + 1);
        if (*(a2 + 4) - v68 < 2 || *v68 != 145 || v68[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v68 + 2;
LABEL_205:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 16) = *v83;
        *(this + 63) |= 0x20000u;
        v69 = *(a2 + 1);
        if (*(a2 + 4) - v69 < 2 || *v69 != 153 || v69[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v69 + 2;
LABEL_210:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 17) = *v83;
        *(this + 63) |= 0x40000u;
        v70 = *(a2 + 1);
        if (*(a2 + 4) - v70 < 2 || *v70 != 161 || v70[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v70 + 2;
LABEL_215:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 18) = *v83;
        *(this + 63) |= 0x80000u;
        v71 = *(a2 + 1);
        if (*(a2 + 4) - v71 < 2 || *v71 != 169 || v71[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v71 + 2;
LABEL_220:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 19) = *v83;
        *(this + 63) |= 0x100000u;
        v72 = *(a2 + 1);
        if (*(a2 + 4) - v72 < 2 || *v72 != 177 || v72[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v72 + 2;
LABEL_225:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = *v83;
        *(this + 63) |= 0x200000u;
        v73 = *(a2 + 1);
        if (*(a2 + 4) - v73 < 2 || *v73 != 185 || v73[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v73 + 2;
LABEL_230:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 21) = *v83;
        *(this + 63) |= 0x400000u;
        v74 = *(a2 + 1);
        if (*(a2 + 4) - v74 < 2 || *v74 != 193 || v74[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v74 + 2;
LABEL_235:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 22) = *v83;
        *(this + 63) |= 0x800000u;
        v75 = *(a2 + 1);
        if (*(a2 + 4) - v75 < 2 || *v75 != 201 || v75[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v75 + 2;
LABEL_240:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 23) = *v83;
        *(this + 63) |= 0x1000000u;
        v76 = *(a2 + 1);
        if (*(a2 + 4) - v76 < 2 || *v76 != 209 || v76[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v76 + 2;
LABEL_245:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 24) = *v83;
        *(this + 63) |= 0x2000000u;
        v77 = *(a2 + 1);
        if (*(a2 + 4) - v77 < 2 || *v77 != 217 || v77[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v77 + 2;
LABEL_250:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 25) = *v83;
        *(this + 63) |= 0x4000000u;
        v78 = *(a2 + 1);
        if (*(a2 + 4) - v78 < 2 || *v78 != 225 || v78[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v78 + 2;
LABEL_255:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 26) = *v83;
        *(this + 63) |= 0x8000000u;
        v79 = *(a2 + 1);
        if (*(a2 + 4) - v79 < 2 || *v79 != 233 || v79[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v79 + 2;
LABEL_260:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 27) = *v83;
        *(this + 63) |= 0x10000000u;
        v80 = *(a2 + 1);
        if (*(a2 + 4) - v80 < 2 || *v80 != 241 || v80[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v80 + 2;
LABEL_265:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 28) = *v83;
        *(this + 63) |= 0x20000000u;
        v81 = *(a2 + 1);
        if (*(a2 + 4) - v81 < 2 || *v81 != 249 || v81[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v81 + 2;
LABEL_270:
        *v83 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83) & 1) == 0)
        {
          return 0;
        }

        *(this + 29) = *v83;
        *(this + 63) |= 0x40000000u;
        v82 = *(a2 + 1);
        if (*(a2 + 4) - v82 < 2 || *v82 != 129 || v82[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v82 + 2;
LABEL_275:
        *v83 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v83))
        {
          *(this + 30) = *v83;
          *(this + 63) |= 0x80000000;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_74;
        }

        v12 = *(this + 63);
        goto LABEL_94;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_108;
        }

        goto LABEL_74;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_112;
        }

        goto LABEL_74;
      case 6u:
        if (v7 != 2)
        {
          goto LABEL_74;
        }

        v17 = *(this + 63);
        goto LABEL_116;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_130;
        }

        goto LABEL_74;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_144;
        }

        goto LABEL_74;
      case 9u:
        if (v7 == 1)
        {
          goto LABEL_148;
        }

        goto LABEL_74;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_152;
        }

        goto LABEL_74;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_156;
        }

        goto LABEL_74;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_160;
        }

        goto LABEL_74;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_164;
        }

        goto LABEL_74;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_168;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_178;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_74;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_189;
      case 0x11u:
        if (v7 == 1)
        {
          goto LABEL_200;
        }

        goto LABEL_74;
      case 0x12u:
        if (v7 == 1)
        {
          goto LABEL_205;
        }

        goto LABEL_74;
      case 0x13u:
        if (v7 == 1)
        {
          goto LABEL_210;
        }

        goto LABEL_74;
      case 0x14u:
        if (v7 == 1)
        {
          goto LABEL_215;
        }

        goto LABEL_74;
      case 0x15u:
        if (v7 == 1)
        {
          goto LABEL_220;
        }

        goto LABEL_74;
      case 0x16u:
        if (v7 == 1)
        {
          goto LABEL_225;
        }

        goto LABEL_74;
      case 0x17u:
        if (v7 == 1)
        {
          goto LABEL_230;
        }

        goto LABEL_74;
      case 0x18u:
        if (v7 == 1)
        {
          goto LABEL_235;
        }

        goto LABEL_74;
      case 0x19u:
        if (v7 == 1)
        {
          goto LABEL_240;
        }

        goto LABEL_74;
      case 0x1Au:
        if (v7 == 1)
        {
          goto LABEL_245;
        }

        goto LABEL_74;
      case 0x1Bu:
        if (v7 != 1)
        {
          goto LABEL_74;
        }

        goto LABEL_250;
      case 0x1Cu:
        if (v7 == 1)
        {
          goto LABEL_255;
        }

        goto LABEL_74;
      case 0x1Du:
        if (v7 == 1)
        {
          goto LABEL_260;
        }

        goto LABEL_74;
      case 0x1Eu:
        if (v7 == 1)
        {
          goto LABEL_265;
        }

        goto LABEL_74;
      case 0x1Fu:
        if (v7 == 1)
        {
          goto LABEL_270;
        }

        goto LABEL_74;
      case 0x20u:
        if (v7 == 1)
        {
          goto LABEL_275;
        }

        goto LABEL_74;
      default:
LABEL_74:
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 252);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 252);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 64), a2, a4);
  v6 = *(v5 + 252);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_38:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 252);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_43:
  v9 = *(v5 + 40);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 252);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_46:
  v10 = *(v5 + 48);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 252);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 96), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 104), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 68), a2, a4);
  v6 = *(v5 + 252);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xF, *(v5 + 112), a2, a4);
  v6 = *(v5 + 252);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x10, *(v5 + 116), a2, a4);
  v6 = *(v5 + 252);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 120), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 128), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(v5 + 136), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 144), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 152), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x16, a2, *(v5 + 160), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 168), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x18, a2, *(v5 + 176), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x19, a2, *(v5 + 184), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 192), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 200), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 208), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1D, a2, *(v5 + 216), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_72:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1F, a2, *(v5 + 232), a3);
    if ((*(v5 + 252) & 0x80000000) == 0)
    {
      return this;
    }

    goto LABEL_73;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1E, a2, *(v5 + 224), a3);
  v6 = *(v5 + 252);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_72;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    return this;
  }

LABEL_73:
  v11 = *(v5 + 240);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x20, a2, v11, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData *this, unsigned int a2)
{
  v3 = *(this + 63);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_47;
  }

  if (v3)
  {
    v6 = *(this + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v6 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_ + 8);
    }

    v7 = CoreNavigation::CLP::LogEntry::PrivateData::SvId::ByteSize(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 = v8 + v9 + 1;
    v3 = *(this + 63);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(this + 16);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v3 = *(this + 63);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v12 = *(this + 2);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_ + 16);
    }

    v13 = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::GpsTime::ByteSize(v12, a2);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v4 += v14 + v15 + 1;
    v3 = *(this + 63);
  }

  v16 = v4 + 9;
  if ((v3 & 8) == 0)
  {
    v16 = v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v17 = v16 + 9;
  }

  else
  {
    v17 = v16;
  }

  if ((v3 & 0x20) != 0)
  {
    v18 = *(this + 5);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v18 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_ + 40);
    }

    v19 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::ByteSize(v18, a2);
    v20 = v19;
    if (v19 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
    }

    else
    {
      v21 = 1;
    }

    v17 += v20 + v21 + 1;
    v3 = *(this + 63);
  }

  if ((v3 & 0x40) != 0)
  {
    v22 = *(this + 6);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v22 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::default_instance_ + 48);
    }

    v23 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::ByteSize(v22);
    v24 = v23;
    if (v23 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
    }

    else
    {
      v25 = 1;
    }

    v17 += v24 + v25 + 1;
    v3 = *(this + 63);
  }

  if ((v3 & 0x80) != 0)
  {
    v5 = v17 + 9;
  }

  else
  {
    v5 = v17;
  }

LABEL_47:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_81;
  }

  v26 = v5 + 9;
  if ((v3 & 0x100) == 0)
  {
    v26 = v5;
  }

  if ((v3 & 0x200) != 0)
  {
    v26 += 9;
  }

  if ((v3 & 0x400) != 0)
  {
    v26 += 9;
  }

  if ((v3 & 0x800) != 0)
  {
    v26 += 9;
  }

  if ((v3 & 0x1000) != 0)
  {
    v5 = v26 + 9;
  }

  else
  {
    v5 = v26;
  }

  if ((v3 & 0x2000) != 0)
  {
    v27 = *(this + 17);
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
      v3 = *(this + 63);
    }

    else
    {
      v28 = 2;
    }

    v5 = (v28 + v5);
    if ((v3 & 0x4000) == 0)
    {
LABEL_61:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_75;
    }
  }

  else if ((v3 & 0x4000) == 0)
  {
    goto LABEL_61;
  }

  v29 = *(this + 28);
  if ((v29 & 0x80000000) != 0)
  {
    v30 = 11;
  }

  else if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 63);
  }

  else
  {
    v30 = 2;
  }

  v5 = (v30 + v5);
  if ((v3 & 0x8000) != 0)
  {
LABEL_75:
    v31 = *(this + 29);
    if ((v31 & 0x80000000) != 0)
    {
      v32 = 12;
    }

    else if (v31 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
      v3 = *(this + 63);
    }

    else
    {
      v32 = 3;
    }

    v5 = (v32 + v5);
  }

LABEL_81:
  if ((v3 & 0xFF0000) != 0)
  {
    v33 = v5 + 10;
    if ((v3 & 0x10000) == 0)
    {
      v33 = v5;
    }

    if ((v3 & 0x20000) != 0)
    {
      v33 += 10;
    }

    if ((v3 & 0x40000) != 0)
    {
      v33 += 10;
    }

    if ((v3 & 0x80000) != 0)
    {
      v33 += 10;
    }

    if ((v3 & 0x100000) != 0)
    {
      v33 += 10;
    }

    if ((v3 & 0x200000) != 0)
    {
      v33 += 10;
    }

    if ((v3 & 0x400000) != 0)
    {
      v33 += 10;
    }

    if ((v3 & 0x800000) != 0)
    {
      v5 = v33 + 10;
    }

    else
    {
      v5 = v33;
    }
  }

  if (HIBYTE(v3))
  {
    v34 = v5 + 10;
    if ((v3 & 0x1000000) == 0)
    {
      v34 = v5;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v34 += 10;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v34 += 10;
    }

    if ((v3 & 0x8000000) != 0)
    {
      v34 += 10;
    }

    if ((v3 & 0x10000000) != 0)
    {
      v34 += 10;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v34 += 10;
    }

    if ((v3 & 0x40000000) != 0)
    {
      v34 += 10;
    }

    if (v3 >= 0)
    {
      v5 = v34;
    }

    else
    {
      v5 = v34 + 10;
    }
  }

  *(this + 62) = v5;
  return v5;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    *(this + 11) |= 2u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 16);
    }

    result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(v8, v9);
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  *(this + 11) |= 1u;
  v6 = *(this + 1);
  if (!v6)
  {
    operator new();
  }

  v7 = *(a2 + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 8);
  }

  result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(v6, v7);
  v5 = *(a2 + 11);
  if ((v5 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_19:
  *(this + 11) |= 4u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 24);
  }

  result = CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(v10, v11);
  if ((*(a2 + 11) & 8) != 0)
  {
LABEL_24:
    *(this + 11) |= 8u;
    v12 = *(this + 4);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 4);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 32);
    }

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::MergeFrom(v12, v13);
  }

  return result;
}

void sub_1D0C92F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v6 = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = v6;
    v4 = *(a2 + 11);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v5 = *(a2 + 1);
  *(this + 11) |= 1u;
  *(this + 1) = v5;
  v4 = *(a2 + 11);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  *(this + 11) |= 4u;
  v7 = *(this + 3);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 3);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(v7, v8);
  if ((*(a2 + 11) & 8) != 0)
  {
LABEL_16:
    *(this + 11) |= 8u;
    v9 = *(this + 4);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 4);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_ + 32);
    }

    CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergeFrom(v9, v10);
  }
}

void sub_1D0C93150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
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
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    v12 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v12;
    v13 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v13;
    LODWORD(v7) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v7;
    LODWORD(v7) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v7;
    LODWORD(v7) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v7;
    v14 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v14;
    v15 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v15;
    v16 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v16;
    v17 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v17;
    v18 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v18;
    v19 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v19;
    v20 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v20;
    v21 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v21;
    v22 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v22;
    v23 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v23;
    v24 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v24;
    v25 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v25;
    v26 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v26;
    v27 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v27;
    v28 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v28;
    result = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = result;
    LODWORD(v7) = *(this + 63);
    *(this + 63) = *(a2 + 63);
    *(a2 + 63) = v7;
    LODWORD(v7) = *(this + 62);
    *(this + 62) = *(a2 + 62);
    *(a2 + 62) = v7;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::SatelliteState(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *a2)
{
  *this = &unk_1F4CD78F0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::~SatelliteState(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *this)
{
  *this = &unk_1F4CD78F0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::~SatelliteState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
            goto LABEL_22;
          }

LABEL_48:
          *(this + 11) |= 4u;
          v26 = *(this + 3);
          if (!v26)
          {
            operator new();
          }

          v42 = 0;
          v27 = *(a2 + 1);
          if (v27 >= *(a2 + 2) || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
            {
              return 0;
            }
          }

          else
          {
            v42 = *v27;
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
          if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergePartialFromCodedStream(v26, a2, v30) || *(a2 + 36) != 1)
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
            goto LABEL_62;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 2)
          {
            goto LABEL_22;
          }

LABEL_62:
          *(this + 11) |= 8u;
          v34 = *(this + 4);
          if (!v34)
          {
            operator new();
          }

          v42 = 0;
          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
            {
              return 0;
            }
          }

          else
          {
            v42 = *v35;
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
          if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::MergePartialFromCodedStream(v34, a2, v38) || *(a2 + 36) != 1)
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
        goto LABEL_22;
      }

      *(this + 11) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v42 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
        {
          return 0;
        }
      }

      else
      {
        v42 = *v10;
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
      if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
LABEL_34:
        *(this + 11) |= 2u;
        v18 = *(this + 2);
        if (!v18)
        {
          operator new();
        }

        v42 = 0;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v42))
          {
            return 0;
          }
        }

        else
        {
          v42 = *v19;
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
        if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
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
          goto LABEL_48;
        }
      }
    }

    if (v7 == 2 && v8 == 2)
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
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_12:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_15:
    v10 = *(v5 + 32);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if ((*(this + 44) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 8);
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
  v3 = *(this + 11);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 16);
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
    v3 = *(this + 11);
  }

LABEL_24:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 24);
  }

  v12 = *(v11 + 36);
  if (*(v11 + 36))
  {
    v13 = (v12 << 31 >> 31) & 9;
    if ((v12 & 2) != 0)
    {
      v13 += 9;
    }

    if ((v12 & 4) != 0)
    {
      v12 = v13 + 9;
    }

    else
    {
      v12 = v13;
    }
  }

  *(v11 + 32) = v12;
  v4 = (v4 + v12 + 2);
  if ((*(this + 11) & 8) != 0)
  {
LABEL_36:
    v14 = *(this + 4);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v14 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::default_instance_ + 32);
    }

    v15 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::ClockOffsets::ByteSize(v14, a2);
    v16 = v15;
    if (v15 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    }

    else
    {
      v17 = 1;
    }

    v4 = (v4 + v16 + v17 + 1);
  }

LABEL_42:
  *(this + 10) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::SatelliteState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v5;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::UserToSatelliteState(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *a2)
{
  *this = &unk_1F4CD7968;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::~UserToSatelliteState(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this)
{
  *this = &unk_1F4CD7968;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::~UserToSatelliteState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_ != this)
  {
    v2 = *(this + 3);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 4);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 == 2)
          {
            v10 = *(this + 11);
            goto LABEL_29;
          }

          goto LABEL_25;
        }

        if (v7 != 4 || v8 != 2)
        {
          goto LABEL_25;
        }

LABEL_43:
        *(this + 11) |= 8u;
        v21 = *(this + 4);
        if (!v21)
        {
          operator new();
        }

        v29[0] = 0;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v29))
          {
            return 0;
          }
        }

        else
        {
          v29[0] = *v22;
          *(a2 + 1) = v22 + 1;
        }

        v23 = *(a2 + 14);
        v24 = *(a2 + 15);
        *(a2 + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergePartialFromCodedStream(v21, a2, v25) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v26 = *(a2 + 14);
        v18 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v27 < 0 == v18)
        {
          *(a2 + 14) = v27;
        }

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

      *v29 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v29;
      *(this + 11) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 17)
      {
        *(a2 + 1) = v9 + 1;
LABEL_20:
        *v29 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v29) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v29;
        v10 = *(this + 11) | 2;
        *(this + 11) = v10;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 26)
        {
          *(a2 + 1) = v11 + 1;
LABEL_29:
          *(this + 11) = v10 | 4;
          v12 = *(this + 3);
          if (!v12)
          {
            operator new();
          }

          v29[0] = 0;
          v13 = *(a2 + 1);
          if (v13 >= *(a2 + 2) || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v29))
            {
              return 0;
            }
          }

          else
          {
            v29[0] = *v13;
            *(a2 + 1) = v13 + 1;
          }

          v14 = *(a2 + 14);
          v15 = *(a2 + 15);
          *(a2 + 14) = v14 + 1;
          if (v14 >= v15)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::InternalToolDataTypes::EcefXyz::MergePartialFromCodedStream(v12, a2, v16) || *(a2 + 36) != 1)
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
          if (v20 < *(a2 + 2) && *v20 == 34)
          {
            *(a2 + 1) = v20 + 1;
            goto LABEL_43;
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

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 44);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
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
  v7 = *(v5 + 24);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_11:
    v8 = *(v5 + 32);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this)
{
  v2 = *(this + 44);
  if (*(this + 44))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 4) != 0)
    {
      v5 = *(this + 3);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_ + 24);
      }

      v6 = *(v5 + 36);
      v7 = (v6 << 31 >> 31) & 9;
      if ((v6 & 2) != 0)
      {
        v7 += 9;
      }

      if ((v6 & 4) != 0)
      {
        v7 += 9;
      }

      if (*(v5 + 36))
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      *(v5 + 32) = v8;
      v4 = (v4 + v8 + 2);
      v2 = *(this + 11);
    }

    if ((v2 & 8) != 0)
    {
      v9 = *(this + 4);
      if (!v9)
      {
        CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
        v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::default_instance_ + 32);
      }

      v10 = *(v9 + 36);
      v11 = (v10 << 31 >> 31) & 9;
      if ((v10 & 2) != 0)
      {
        v11 += 9;
      }

      if ((v10 & 4) != 0)
      {
        v11 += 9;
      }

      if (*(v9 + 36))
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      *(v9 + 32) = v12;
      v4 = (v4 + v12 + 2);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::UserToSatelliteState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::PerConstellationCounts(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *a2)
{
  *this = &unk_1F4CD79E0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::~PerConstellationCounts(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *this)
{
  *this = &unk_1F4CD79E0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::~PerConstellationCounts(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v31 = 0;
          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v12 >= v8 || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
            if (!result)
            {
              return result;
            }

            v13 = v31;
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v14 = v12 + 1;
            *(a2 + 1) = v14;
          }

          *(this + 2) = v13;
          *(this + 10) |= 1u;
          if (v14 < v8 && *v14 == 16)
          {
            v17 = v14 + 1;
            *(a2 + 1) = v17;
            goto LABEL_39;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v10 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_39:
          v31 = 0;
          if (v17 >= v8 || (v18 = *v17, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
            if (!result)
            {
              return result;
            }

            v18 = v31;
            v19 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v19 = v17 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 3) = v18;
          *(this + 10) |= 2u;
          if (v19 < v8 && *v19 == 24)
          {
            v10 = v19 + 1;
            *(a2 + 1) = v10;
LABEL_47:
            v31 = 0;
            if (v10 >= v8 || (v20 = *v10, (v20 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
              if (!result)
              {
                return result;
              }

              v20 = v31;
              v21 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v21 = v10 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 4) = v20;
            *(this + 10) |= 4u;
            if (v21 < v8 && *v21 == 32)
            {
              v15 = v21 + 1;
              *(a2 + 1) = v15;
              goto LABEL_55;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_71;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_79;
        }

        goto LABEL_30;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v15 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_55:
      v31 = 0;
      if (v15 >= v8 || (v22 = *v15, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
        if (!result)
        {
          return result;
        }

        v22 = v31;
        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v23 = v15 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 5) = v22;
      *(this + 10) |= 8u;
      if (v23 < v8 && *v23 == 40)
      {
        v9 = v23 + 1;
        *(a2 + 1) = v9;
LABEL_63:
        v31 = 0;
        if (v9 >= v8 || (v24 = *v9, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
          if (!result)
          {
            return result;
          }

          v24 = v31;
          v25 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v25 = v9 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 6) = v24;
        *(this + 10) |= 0x10u;
        if (v25 < v8 && *v25 == 48)
        {
          v16 = v25 + 1;
          *(a2 + 1) = v16;
LABEL_71:
          v31 = 0;
          if (v16 >= v8 || (v26 = *v16, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
            if (!result)
            {
              return result;
            }

            v26 = v31;
            v27 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 7) = v26;
          *(this + 10) |= 0x20u;
          if (v27 < v8 && *v27 == 56)
          {
            v11 = v27 + 1;
            *(a2 + 1) = v11;
LABEL_79:
            v31 = 0;
            if (v11 >= v8 || (v28 = *v11, (v28 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
              if (!result)
              {
                return result;
              }

              v28 = v31;
              v29 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v29 = v11 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 8) = v28;
            *(this + 10) |= 0x40u;
            if (v29 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_30:
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

unsigned int *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[10];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[2], a2, a4);
    v6 = v5[10];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, v5[3], a2, a4);
  v6 = v5[10];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v5[4], a2, a4);
  v6 = v5[10];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v5[5], a2, a4);
  v6 = v5[10];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, v5[7], a2, a4);
    if ((v5[10] & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v5[6], a2, a4);
  v6 = v5[10];
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v7 = v5[8];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_55;
  }

  if (*(this + 40))
  {
    v5 = *(this + 2);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 10);
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
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(this + 3);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v10 = *(this + 5);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v11 = 2;
  }

  v4 = (v11 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_37:
  v12 = *(this + 6);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v13 = 2;
  }

  v4 = (v13 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_23:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_49;
  }

LABEL_43:
  v14 = *(this + 7);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v15 = 2;
  }

  v4 = (v15 + v4);
  if ((v3 & 0x40) != 0)
  {
LABEL_49:
    v16 = *(this + 8);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    }

    else
    {
      v17 = 2;
    }

    v4 = (v17 + v4);
  }

LABEL_55:
  *(this + 9) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PerConstellationCounts *a2)
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
    v9 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v9;
    v10 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v10;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *this)
{
  *(this + 84) = 0;
  *(this + 80) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::GnssPreprocessedMeasurementsEvent(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *a2)
{
  *this = &unk_1F4CD7A58;
  *(this + 84) = 0;
  *(this + 80) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::MergeFrom(this, a2);
  return this;
}

void sub_1D0C954CC(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 7);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::~GnssPreprocessedMeasurementsEvent(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *this)
{
  *this = &unk_1F4CD7A58;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::SharedDtor(this);
  sub_1D0B8CD0C(this + 7);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::~GnssPreprocessedMeasurementsEvent(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_61;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_65;
          }

          goto LABEL_36;
        }

        if (v7 == 7)
        {
          if (v8 != 2)
          {
            goto LABEL_36;
          }

          v13 = *(this + 22);
LABEL_73:
          *(this + 22) = v13 | 0x40;
          v28 = *(this + 6);
          if (!v28)
          {
            operator new();
          }

          v47[0] = 0;
          v29 = *(a2 + 1);
          if (v29 >= *(a2 + 2) || *v29 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v47))
            {
              return 0;
            }
          }

          else
          {
            v47[0] = *v29;
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
          if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::MergePartialFromCodedStream(v28, a2, v32) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v33 = *(a2 + 14);
          v18 = __OFSUB__(v33, 1);
          v34 = v33 - 1;
          if (v34 < 0 == v18)
          {
            *(a2 + 14) = v34;
          }

          v35 = *(a2 + 1);
          if (v35 < *(a2 + 2) && *v35 == 66)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v7 != 8 || v8 != 2)
          {
            goto LABEL_36;
          }

          while (2)
          {
            v36 = *(this + 17);
            v37 = *(this + 16);
            if (v37 >= v36)
            {
              if (v36 == *(this + 18))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
                v36 = *(this + 17);
              }

              *(this + 17) = v36 + 1;
              operator new();
            }

            v38 = *(this + 7);
            *(this + 16) = v37 + 1;
            v39 = *(v38 + 8 * v37);
            v47[0] = 0;
            v40 = *(a2 + 1);
            if (v40 >= *(a2 + 2) || *v40 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v47))
              {
                return 0;
              }
            }

            else
            {
              v47[0] = *v40;
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
            if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::MergePartialFromCodedStream(v39, a2, v43) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v44 = *(a2 + 14);
            v18 = __OFSUB__(v44, 1);
            v45 = v44 - 1;
            if (v45 < 0 == v18)
            {
              *(a2 + 14) = v45;
            }

            v35 = *(a2 + 1);
            v46 = *(a2 + 2);
            if (v35 < v46 && *v35 == 66)
            {
LABEL_86:
              *(a2 + 1) = v35 + 1;
              continue;
            }

            break;
          }

          if (v35 == v46 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 1)
          {
            goto LABEL_53;
          }
        }

        else if (v7 == 4 && v8 == 1)
        {
          goto LABEL_57;
        }

        goto LABEL_36;
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_36;
      }

      *(this + 22) |= 1u;
      v11 = *(this + 1);
      if (!v11)
      {
        operator new();
      }

      v47[0] = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v47))
        {
          return 0;
        }
      }

      else
      {
        v47[0] = *v12;
        *(a2 + 1) = v12 + 1;
      }

      v14 = *(a2 + 14);
      v15 = *(a2 + 15);
      *(a2 + 14) = v14 + 1;
      if (v14 >= v15)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergePartialFromCodedStream(v11, a2, v16) || *(a2 + 36) != 1)
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
      if (v20 < *(a2 + 2) && *v20 == 17)
      {
        *(a2 + 1) = v20 + 1;
LABEL_49:
        *v47 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v47) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v47;
        *(this + 22) |= 2u;
        v21 = *(a2 + 1);
        if (v21 < *(a2 + 2) && *v21 == 25)
        {
          *(a2 + 1) = v21 + 1;
LABEL_53:
          *v47 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v47) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v47;
          *(this + 22) |= 4u;
          v22 = *(a2 + 1);
          if (v22 < *(a2 + 2) && *v22 == 33)
          {
            *(a2 + 1) = v22 + 1;
LABEL_57:
            *v47 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v47) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = *v47;
            *(this + 22) |= 8u;
            v23 = *(a2 + 1);
            if (v23 < *(a2 + 2) && *v23 == 41)
            {
              *(a2 + 1) = v23 + 1;
LABEL_61:
              *v47 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v47) & 1) == 0)
              {
                return 0;
              }

              *(this + 5) = *v47;
              *(this + 22) |= 0x10u;
              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v24 < v9 && *v24 == 48)
              {
                v10 = v24 + 1;
                *(a2 + 1) = v10;
LABEL_65:
                v47[0] = 0;
                if (v10 >= v9 || (v25 = *v10, (v25 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v47);
                  if (!result)
                  {
                    return result;
                  }

                  v25 = v47[0];
                  v26 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  v26 = v10 + 1;
                  *(a2 + 1) = v26;
                }

                *(this + 80) = v25 != 0;
                v13 = *(this + 22) | 0x20;
                *(this + 22) = v13;
                if (v26 < v9 && *v26 == 58)
                {
                  *(a2 + 1) = v26 + 1;
                  goto LABEL_73;
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_49;
    }

LABEL_36:
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 88);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 88);
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
  v6 = *(v5 + 88);
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
  v6 = *(v5 + 88);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 80), a2, a4);
  if ((*(v5 + 88) & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v8 = *(v5 + 48);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v8, a2, a4);
LABEL_20:
  if (*(v5 + 64) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 56) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 64));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *this, unint64_t a2)
{
  v3 = *(this + 22);
  if (v3)
  {
    if (v3)
    {
      v6 = *(this + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
        v6 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_ + 8);
      }

      v7 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::ByteSize(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(this + 22);
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
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    v5 = v4 + ((v3 >> 4) & 2);
    if ((v3 & 0x40) != 0)
    {
      v10 = *(this + 6);
      if (!v10)
      {
        CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
        v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::default_instance_ + 48);
      }

      v5 += CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::ByteSize(v10) + 2;
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 16);
  v12 = (v11 + v5);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::ByteSize(*(*(this + 7) + 8 * v13), a2);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(this + 16));
  }

  *(this + 21) = v12;
  return v12;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0C96180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      result = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = result;
  }

  return result;
}

void sub_1D0C9628C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::CopyFrom(const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssPreprocessedMeasurementsEvent *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v8;
    LOBYTE(v4) = *(this + 80);
    *(this + 80) = *(a2 + 80);
    *(a2 + 80) = v4;
    v9 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v9;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v10 = *(v3 + 88);
    *(v3 + 88) = *(a2 + 22);
    *(a2 + 22) = v10;
    v11 = *(v3 + 84);
    *(v3 + 84) = *(a2 + 21);
    *(a2 + 21) = v11;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::CNTimeSpan(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *a2)
{
  *this = &unk_1F4CD7AD0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::~CNTimeSpan(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *this)
{
  *this = &unk_1F4CD7AD0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::~CNTimeSpan(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      v13 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v13);
        if (!result)
        {
          return result;
        }

        v10 = v13;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 1) = v10;
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v7, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (v3)
  {
    if (*(this + 28))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 7);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      result = v4 + 9;
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

  *(this + 6) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::GnssReceiverClockModel(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *a2)
{
  *this = &unk_1F4CD7B48;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::~GnssReceiverClockModel(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *this)
{
  *this = &unk_1F4CD7B48;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::~GnssReceiverClockModel(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 44);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
      if ((*(v4 + 44) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v6 = *(v4 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v6, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *this)
{
  v1 = *(this + 44);
  if (*(this + 44))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 10) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssReceiverClockModel *a2)
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
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v6 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
    v7 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::GnssSvAndMeasurementData(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *a2)
{
  *this = &unk_1F4CD7BC0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::MergeFrom(this, a2);
  return this;
}

void sub_1D0C97064(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 7);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
  LODWORD(v5) = *(a2 + 16);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
      }

      v7 = *(*(a2 + 7) + 8 * v6);
      v8 = *(this + 17);
      v9 = *(this + 16);
      if (v9 >= v8)
      {
        if (v8 == *(this + 18))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
          v8 = *(this + 17);
        }

        *(this + 17) = v8 + 1;
        operator new();
      }

      v10 = *(this + 7);
      *(this + 16) = v9 + 1;
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 16);
    }

    while (v6 < v5);
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    goto LABEL_22;
  }

  if (v11)
  {
    *(this + 24) |= 1u;
    v14 = *(this + 1);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 1);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v4);
      v15 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergeFrom(v14, v15);
    v11 = *(a2 + 24);
    if ((v11 & 2) == 0)
    {
LABEL_16:
      if ((v11 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

  *(this + 24) |= 2u;
  v16 = *(this + 2);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 2);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(v4);
    v17 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::MergeFrom(v16, v17);
  v11 = *(a2 + 24);
  if ((v11 & 4) == 0)
  {
LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = *(a2 + 3);
  *(this + 24) |= 4u;
  *(this + 3) = v18;
  v11 = *(a2 + 24);
  if ((v11 & 8) == 0)
  {
LABEL_18:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    v20 = *(a2 + 5);
    *(this + 24) |= 0x10u;
    *(this + 5) = v20;
    v11 = *(a2 + 24);
    if ((v11 & 0x20) == 0)
    {
LABEL_20:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_37:
  v19 = *(a2 + 4);
  *(this + 24) |= 8u;
  *(this + 4) = v19;
  v11 = *(a2 + 24);
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v11 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_39:
  v21 = *(a2 + 6);
  *(this + 24) |= 0x20u;
  *(this + 6) = v21;
  v11 = *(a2 + 24);
  if ((v11 & 0x80) != 0)
  {
LABEL_21:
    v12 = *(a2 + 10);
    *(this + 24) |= 0x80u;
    *(this + 10) = v12;
    v11 = *(a2 + 24);
  }

LABEL_22:
  if ((v11 & 0x100) != 0)
  {
    v13 = *(a2 + 22);
    if (v13 >= 7)
    {
      __assert_rtn("set_sv_position_source", "CoreNavigationCLPGnssMsmtAnalysisToolData.pb.h", 6209, "::CoreNavigation::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
    }

    *(this + 24) |= 0x100u;
    *(this + 22) = v13;
  }
}

void sub_1D0C97458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::~GnssSvAndMeasurementData(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this)
{
  *this = &unk_1F4CD7BC0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::SharedDtor(this);
  sub_1D0B8CD0C(this + 7);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::~GnssSvAndMeasurementData(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 96);
  if (v2)
  {
    if (v2)
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(this + 96);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::Clear(this);
        v2 = *(v1 + 96);
      }
    }

    *(v1 + 80) = 0;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 88) = 0;
  }

  if (*(v1 + 64) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 56) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 64));
  }

  *(v1 + 64) = 0;
  *(v1 + 96) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 108);
  if (v1)
  {
    if (*(this + 108))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 20))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 20) = 0;
        v1 = *(this + 108);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v1 = *(this + 108);
      }
    }

    if ((v1 & 4) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 28))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 28) = 0;
        v1 = *(this + 108);
      }
    }

    if ((v1 & 8) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 28))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 28) = 0;
      }
    }
  }

  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 96) = 0;
  *(this + 108) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
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
              if (v7 != 4 || v8 != 1)
              {
                goto LABEL_39;
              }

              goto LABEL_69;
            }

            if (v8 != 1)
            {
              goto LABEL_39;
            }

LABEL_65:
            *v46 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v46) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v46;
            *(this + 24) |= 4u;
            v28 = *(a2 + 1);
            if (v28 < *(a2 + 2) && *v28 == 33)
            {
              *(a2 + 1) = v28 + 1;
LABEL_69:
              *v46 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v46) & 1) == 0)
              {
                return 0;
              }

              *(this + 4) = *v46;
              *(this + 24) |= 8u;
              v29 = *(a2 + 1);
              if (v29 < *(a2 + 2) && *v29 == 41)
              {
                *(a2 + 1) = v29 + 1;
LABEL_73:
                *v46 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v46) & 1) == 0)
                {
                  return 0;
                }

                *(this + 5) = *v46;
                *(this + 24) |= 0x10u;
                v30 = *(a2 + 1);
                if (v30 < *(a2 + 2) && *v30 == 49)
                {
                  *(a2 + 1) = v30 + 1;
                  goto LABEL_77;
                }
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || v8 != 2)
              {
                goto LABEL_39;
              }

              goto LABEL_51;
            }

            if (v8 != 2)
            {
              goto LABEL_39;
            }

            *(this + 24) |= 1u;
            v11 = *(this + 1);
            if (!v11)
            {
              operator new();
            }

            v46[0] = 0;
            v12 = *(a2 + 1);
            if (v12 >= *(a2 + 2) || *v12 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v46))
              {
                return 0;
              }
            }

            else
            {
              v46[0] = *v12;
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
            if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergePartialFromCodedStream(v11, a2, v15) || *(a2 + 36) != 1)
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
LABEL_51:
              *(this + 24) |= 2u;
              v20 = *(this + 2);
              if (!v20)
              {
                operator new();
              }

              v46[0] = 0;
              v21 = *(a2 + 1);
              if (v21 >= *(a2 + 2) || *v21 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v46))
                {
                  return 0;
                }
              }

              else
              {
                v46[0] = *v21;
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
              if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
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
              if (v27 < *(a2 + 2) && *v27 == 25)
              {
                *(a2 + 1) = v27 + 1;
                goto LABEL_65;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 == 5)
        {
          if (v8 != 1)
          {
            goto LABEL_39;
          }

          goto LABEL_73;
        }

        if (v7 != 6 || v8 != 1)
        {
          goto LABEL_39;
        }

LABEL_77:
        *v46 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v46) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v46;
        *(this + 24) |= 0x20u;
        v31 = *(a2 + 1);
        if (v31 < *(a2 + 2) && *v31 == 58)
        {
          while (1)
          {
            *(a2 + 1) = v31 + 1;
LABEL_81:
            v32 = *(this + 17);
            v33 = *(this + 16);
            if (v33 >= v32)
            {
              if (v32 == *(this + 18))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 56));
                v32 = *(this + 17);
              }

              *(this + 17) = v32 + 1;
              operator new();
            }

            v34 = *(this + 7);
            *(this + 16) = v33 + 1;
            v35 = *(v34 + 8 * v33);
            v46[0] = 0;
            v36 = *(a2 + 1);
            if (v36 >= *(a2 + 2) || *v36 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v46))
              {
                return 0;
              }
            }

            else
            {
              v46[0] = *v36;
              *(a2 + 1) = v36 + 1;
            }

            v37 = *(a2 + 14);
            v38 = *(a2 + 15);
            *(a2 + 14) = v37 + 1;
            if (v37 >= v38)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::MergePartialFromCodedStream(v35, a2, v39) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v40 = *(a2 + 14);
            v17 = __OFSUB__(v40, 1);
            v41 = v40 - 1;
            if (v41 < 0 == v17)
            {
              *(a2 + 14) = v41;
            }

            v31 = *(a2 + 1);
            if (v31 >= *(a2 + 2))
            {
              break;
            }

            v42 = *v31;
            if (v42 != 58)
            {
              if (v42 != 65)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v31 + 1;
              goto LABEL_99;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if (v8 != 2)
        {
          goto LABEL_39;
        }

        goto LABEL_81;
      }

      if (v7 != 8)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_39;
      }

LABEL_99:
      *v46 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v46) & 1) == 0)
      {
        return 0;
      }

      *(this + 10) = *v46;
      *(this + 24) |= 0x80u;
      v43 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v43 < v9 && *v43 == 72)
      {
        v10 = v43 + 1;
        *(a2 + 1) = v10;
LABEL_103:
        v46[0] = 0;
        if (v10 >= v9 || (v44 = *v10, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v46);
          if (!result)
          {
            return result;
          }

          v44 = v46[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v44 <= 6)
        {
          *(this + 24) |= 0x100u;
          *(this + 22) = v44;
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

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_103;
    }

LABEL_39:
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    v9 = *(this + 8);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v9, a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(v5 + 16);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v10, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  if ((*(v5 + 96) & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  }

LABEL_8:
  if (*(v5 + 64) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 56) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 64));
  }

  v8 = *(v5 + 96);
  if ((v8 & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 80), a3);
    v8 = *(v5 + 96);
  }

  if ((v8 & 0x100) != 0)
  {
    v11 = *(v5 + 88);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, v11, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this, unint64_t a2)
{
  v3 = *(this + 24);
  if (!v3)
  {
    v5 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v6 = *(this + 1);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v6 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::default_instance_ + 8);
  }

  v7 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::ByteSize(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
  }

  else
  {
    v9 = 1;
  }

  v4 = v8 + v9 + 1;
  v3 = *(this + 24);
  if ((v3 & 2) != 0)
  {
LABEL_13:
    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::default_instance_ + 16);
    }

    v11 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 += v12 + v13 + 1;
    v3 = *(this + 24);
  }

LABEL_19:
  v14 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v14 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v14 += 9;
  }

  if ((v3 & 0x10) != 0)
  {
    v14 += 9;
  }

  if ((v3 & 0x20) != 0)
  {
    v14 += 9;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 = v14 + 9;
  }

  else
  {
    v5 = v14;
  }

  if ((v3 & 0x100) != 0)
  {
LABEL_31:
    v15 = *(this + 22);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = 11;
    }

    else if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    }

    else
    {
      v16 = 2;
    }

    v5 += v16;
  }

LABEL_37:
  v17 = *(this + 16);
  v18 = (v17 + v5);
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::ByteSize(*(*(this + 7) + 8 * v19), a2);
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      }

      else
      {
        v22 = 1;
      }

      v18 = (v21 + v18 + v22);
      ++v19;
    }

    while (v19 < *(this + 16));
  }

  *(this + 23) = v18;
  return v18;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    sub_1D0C773F4(v3 + 10, *(v3 + 12) + v5);
    this = memcpy((*(v3 + 5) + 8 * *(v3 + 12)), *(a2 + 5), 8 * *(a2 + 12));
    *(v3 + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    sub_1D0C773F4(v3 + 14, *(v3 + 16) + v6);
    this = memcpy((*(v3 + 7) + 8 * *(v3 + 16)), *(a2 + 7), 8 * *(a2 + 16));
    *(v3 + 16) += *(a2 + 16);
  }

  v7 = *(a2 + 20);
  if (v7)
  {
    sub_1D0C773F4(v3 + 18, *(v3 + 20) + v7);
    this = memcpy((*(v3 + 9) + 8 * *(v3 + 20)), *(a2 + 9), 8 * *(a2 + 20));
    *(v3 + 20) += *(a2 + 20);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    sub_1D0C773F4(v3 + 22, *(v3 + 24) + v8);
    this = memcpy((*(v3 + 11) + 8 * *(v3 + 24)), *(a2 + 11), 8 * *(a2 + 24));
    *(v3 + 24) += *(a2 + 24);
  }

  LOBYTE(v9) = *(a2 + 108);
  if (!v9)
  {
    return result;
  }

  if ((*(a2 + 108) & 1) == 0)
  {
    if ((*(a2 + 108) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    *(v3 + 27) |= 2u;
    v12 = *(v3 + 2);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 2);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 16);
    }

    result = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergeFrom(v12, v13);
    v9 = *(a2 + 27);
    if ((v9 & 4) == 0)
    {
LABEL_15:
      if ((v9 & 8) == 0)
      {
        return result;
      }

      goto LABEL_32;
    }

    goto LABEL_27;
  }

  *(v3 + 27) |= 1u;
  v10 = *(v3 + 1);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 1);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 8);
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergeFrom(v10, v11);
  v9 = *(a2 + 27);
  if ((v9 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((v9 & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_27:
  *(v3 + 27) |= 4u;
  v14 = *(v3 + 3);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 3);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 24);
  }

  result = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergeFrom(v14, v15);
  if ((*(a2 + 27) & 8) != 0)
  {
LABEL_32:
    *(v3 + 27) |= 8u;
    v16 = *(v3 + 4);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 4);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 32);
    }

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergeFrom(v16, v17);
  }

  return result;
}

void sub_1D0C98610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssSvAndMeasurementData *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v9;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    v11 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v11;
    v12 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v12;
    v13 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v13;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this)
{
  *(this + 13) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::PolynomialEphemerides(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *a2)
{
  *this = &unk_1F4CD7C38;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::MergeFrom(this, a2);
  return this;
}

void sub_1D0C98848(_Unwind_Exception *a1)
{
  v3 = *(v1 + 11);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  v4 = *(v1 + 9);
  if (v4)
  {
    MEMORY[0x1D387EC80](v4, 0x1000C8000313F17);
  }

  v5 = *(v1 + 7);
  if (v5)
  {
    MEMORY[0x1D387EC80](v5, 0x1000C8000313F17);
  }

  v6 = *(v1 + 5);
  if (v6)
  {
    MEMORY[0x1D387EC80](v6, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::~PolynomialEphemerides(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this)
{
  *this = &unk_1F4CD7C38;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::SharedDtor(this);
  v2 = *(this + 11);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x1D387EC80](v4, 0x1000C8000313F17);
  }

  v5 = *(this + 5);
  if (v5)
  {
    MEMORY[0x1D387EC80](v5, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::~PolynomialEphemerides(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ != this)
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v7 == 5)
          {
            if (v8 == 1)
            {
              goto LABEL_99;
            }

            if (v8 == 2)
            {
              result = sub_1D0C99640(a2, this + 10);
              if (!result)
              {
                return result;
              }

              goto LABEL_115;
            }
          }

          else if (v7 == 6)
          {
            if (v8 == 1)
            {
              goto LABEL_119;
            }

            if (v8 == 2)
            {
              result = sub_1D0C99640(a2, this + 14);
              if (!result)
              {
                return result;
              }

              goto LABEL_135;
            }
          }

          goto LABEL_43;
        }

        if (v7 == 7)
        {
          if (v8 == 1)
          {
            goto LABEL_139;
          }

          if (v8 == 2)
          {
            result = sub_1D0C99640(a2, this + 18);
            if (!result)
            {
              return result;
            }

            goto LABEL_155;
          }

          goto LABEL_43;
        }

        if (v7 != 8)
        {
          goto LABEL_43;
        }

        if (v8 != 1)
        {
          if (v8 == 2)
          {
            result = sub_1D0C99640(a2, this + 22);
            if (!result)
            {
              return result;
            }

            goto LABEL_175;
          }

          goto LABEL_43;
        }

        while (2)
        {
          *v87 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v87) & 1) == 0)
          {
            return 0;
          }

          v76 = *v87;
          v77 = *(this + 24);
          if (v77 == *(this + 25))
          {
            sub_1D0C773F4(this + 22, v77 + 1);
            v77 = *(this + 24);
          }

          v78 = *(this + 11);
          v79 = v77 + 1;
          *(this + 24) = v77 + 1;
          *(v78 + 8 * v77) = v76;
          v80 = *(a2 + 1);
          v81 = *(a2 + 4) - v80;
          if (v81 >= 1)
          {
            v82 = v81 / 9u;
            v83 = v82 >= *(this + 25) - v79 ? *(this + 25) - v79 : v82;
            if (v83 >= 1)
            {
              v84 = 0;
              while (*v80 == 65)
              {
                v85 = *(v80 + 1);
                if (v79 >= *(this + 25))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v87);
                  v79 = *(this + 24);
                  v78 = *(this + 11);
                }

                *(this + 24) = v79 + 1;
                *(v78 + 8 * v79) = v85;
                ++v84;
                v80 += 9;
                ++v79;
                if (v83 == v84)
                {
                  goto LABEL_174;
                }
              }

              if (!v84)
              {
                goto LABEL_175;
              }

LABEL_174:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
            }
          }

LABEL_175:
          v42 = *(a2 + 1);
          v86 = *(a2 + 2);
          if (v42 < v86 && *v42 == 65)
          {
LABEL_158:
            *(a2 + 1) = v42 + 1;
            continue;
          }

          break;
        }

        if (v42 == v86 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 2)
          {
            goto LABEL_71;
          }
        }

        else if (v7 == 4 && v8 == 2)
        {
          goto LABEL_85;
        }

        goto LABEL_43;
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_43;
      }

      *(this + 27) |= 1u;
      v10 = *(this + 1);
      if (!v10)
      {
        operator new();
      }

      v87[0] = 0;
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v87))
        {
          return 0;
        }
      }

      else
      {
        v87[0] = *v11;
        *(a2 + 1) = v11 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::MergePartialFromCodedStream(v10, a2, v14) || *(a2 + 36) != 1)
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
      if (v18 < *(a2 + 2) && *v18 == 18)
      {
        *(a2 + 1) = v18 + 1;
LABEL_57:
        *(this + 27) |= 2u;
        v19 = *(this + 2);
        if (!v19)
        {
          operator new();
        }

        v87[0] = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v87))
          {
            return 0;
          }
        }

        else
        {
          v87[0] = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergePartialFromCodedStream(v19, a2, v23) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v24 = *(a2 + 14);
        v16 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v16)
        {
          *(a2 + 14) = v25;
        }

        v26 = *(a2 + 1);
        if (v26 < *(a2 + 2) && *v26 == 26)
        {
          *(a2 + 1) = v26 + 1;
LABEL_71:
          *(this + 27) |= 4u;
          v27 = *(this + 3);
          if (!v27)
          {
            operator new();
          }

          v87[0] = 0;
          v28 = *(a2 + 1);
          if (v28 >= *(a2 + 2) || *v28 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v87))
            {
              return 0;
            }
          }

          else
          {
            v87[0] = *v28;
            *(a2 + 1) = v28 + 1;
          }

          v29 = *(a2 + 14);
          v30 = *(a2 + 15);
          *(a2 + 14) = v29 + 1;
          if (v29 >= v30)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergePartialFromCodedStream(v27, a2, v31) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v32 = *(a2 + 14);
          v16 = __OFSUB__(v32, 1);
          v33 = v32 - 1;
          if (v33 < 0 == v16)
          {
            *(a2 + 14) = v33;
          }

          v34 = *(a2 + 1);
          if (v34 < *(a2 + 2) && *v34 == 34)
          {
            *(a2 + 1) = v34 + 1;
LABEL_85:
            *(this + 27) |= 8u;
            v35 = *(this + 4);
            if (!v35)
            {
              operator new();
            }

            v87[0] = 0;
            v36 = *(a2 + 1);
            if (v36 >= *(a2 + 2) || *v36 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v87))
              {
                return 0;
              }
            }

            else
            {
              v87[0] = *v36;
              *(a2 + 1) = v36 + 1;
            }

            v37 = *(a2 + 14);
            v38 = *(a2 + 15);
            *(a2 + 14) = v37 + 1;
            if (v37 >= v38)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergePartialFromCodedStream(v35, a2, v39) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v40 = *(a2 + 14);
            v16 = __OFSUB__(v40, 1);
            v41 = v40 - 1;
            if (v41 < 0 == v16)
            {
              *(a2 + 14) = v41;
            }

            v42 = *(a2 + 1);
            if (v42 < *(a2 + 2) && *v42 == 41)
            {
              while (1)
              {
                *(a2 + 1) = v42 + 1;
LABEL_99:
                *v87 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v87) & 1) == 0)
                {
                  return 0;
                }

                v43 = *v87;
                v44 = *(this + 12);
                if (v44 == *(this + 13))
                {
                  sub_1D0C773F4(this + 10, v44 + 1);
                  v44 = *(this + 12);
                }

                v45 = *(this + 5);
                v46 = v44 + 1;
                *(this + 12) = v44 + 1;
                *(v45 + 8 * v44) = v43;
                v47 = *(a2 + 1);
                v48 = *(a2 + 4) - v47;
                if (v48 >= 1)
                {
                  v49 = v48 / 9u;
                  v50 = v49 >= *(this + 13) - v46 ? *(this + 13) - v46 : v49;
                  if (v50 >= 1)
                  {
                    v51 = 0;
                    while (*v47 == 41)
                    {
                      v52 = *(v47 + 1);
                      if (v46 >= *(this + 13))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v87);
                        v46 = *(this + 12);
                        v45 = *(this + 5);
                      }

                      *(this + 12) = v46 + 1;
                      *(v45 + 8 * v46) = v52;
                      ++v51;
                      v47 += 9;
                      ++v46;
                      if (v50 == v51)
                      {
                        goto LABEL_114;
                      }
                    }

                    if (!v51)
                    {
                      goto LABEL_115;
                    }

LABEL_114:
                    wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                  }
                }

LABEL_115:
                v42 = *(a2 + 1);
                if (v42 >= *(a2 + 2))
                {
                  break;
                }

                v53 = *v42;
                if (v53 != 41)
                {
                  if (v53 == 49)
                  {
                    while (1)
                    {
                      *(a2 + 1) = v42 + 1;
LABEL_119:
                      *v87 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v87) & 1) == 0)
                      {
                        return 0;
                      }

                      v54 = *v87;
                      v55 = *(this + 16);
                      if (v55 == *(this + 17))
                      {
                        sub_1D0C773F4(this + 14, v55 + 1);
                        v55 = *(this + 16);
                      }

                      v56 = *(this + 7);
                      v57 = v55 + 1;
                      *(this + 16) = v55 + 1;
                      *(v56 + 8 * v55) = v54;
                      v58 = *(a2 + 1);
                      v59 = *(a2 + 4) - v58;
                      if (v59 >= 1)
                      {
                        v60 = v59 / 9u;
                        v61 = v60 >= *(this + 17) - v57 ? *(this + 17) - v57 : v60;
                        if (v61 >= 1)
                        {
                          v62 = 0;
                          while (*v58 == 49)
                          {
                            v63 = *(v58 + 1);
                            if (v57 >= *(this + 17))
                            {
                              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v87);
                              v57 = *(this + 16);
                              v56 = *(this + 7);
                            }

                            *(this + 16) = v57 + 1;
                            *(v56 + 8 * v57) = v63;
                            ++v62;
                            v58 += 9;
                            ++v57;
                            if (v61 == v62)
                            {
                              goto LABEL_134;
                            }
                          }

                          if (!v62)
                          {
                            goto LABEL_135;
                          }

LABEL_134:
                          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                        }
                      }

LABEL_135:
                      v42 = *(a2 + 1);
                      if (v42 >= *(a2 + 2))
                      {
                        break;
                      }

                      v64 = *v42;
                      if (v64 != 49)
                      {
                        if (v64 == 57)
                        {
                          while (1)
                          {
                            *(a2 + 1) = v42 + 1;
LABEL_139:
                            *v87 = 0;
                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v87) & 1) == 0)
                            {
                              return 0;
                            }

                            v65 = *v87;
                            v66 = *(this + 20);
                            if (v66 == *(this + 21))
                            {
                              sub_1D0C773F4(this + 18, v66 + 1);
                              v66 = *(this + 20);
                            }

                            v67 = *(this + 9);
                            v68 = v66 + 1;
                            *(this + 20) = v66 + 1;
                            *(v67 + 8 * v66) = v65;
                            v69 = *(a2 + 1);
                            v70 = *(a2 + 4) - v69;
                            if (v70 >= 1)
                            {
                              v71 = v70 / 9u;
                              v72 = v71 >= *(this + 21) - v68 ? *(this + 21) - v68 : v71;
                              if (v72 >= 1)
                              {
                                v73 = 0;
                                while (*v69 == 57)
                                {
                                  v74 = *(v69 + 1);
                                  if (v68 >= *(this + 21))
                                  {
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v87);
                                    v68 = *(this + 20);
                                    v67 = *(this + 9);
                                  }

                                  *(this + 20) = v68 + 1;
                                  *(v67 + 8 * v68) = v74;
                                  ++v73;
                                  v69 += 9;
                                  ++v68;
                                  if (v72 == v73)
                                  {
                                    goto LABEL_154;
                                  }
                                }

                                if (!v73)
                                {
                                  goto LABEL_155;
                                }

LABEL_154:
                                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                              }
                            }

LABEL_155:
                            v42 = *(a2 + 1);
                            if (v42 >= *(a2 + 2))
                            {
                              break;
                            }

                            v75 = *v42;
                            if (v75 != 57)
                            {
                              if (v75 == 65)
                              {
                                goto LABEL_158;
                              }

                              goto LABEL_1;
                            }
                          }
                        }

                        goto LABEL_1;
                      }
                    }
                  }

                  goto LABEL_1;
                }
              }
            }
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_57;
    }

LABEL_43:
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

void sub_1D0C99610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0C99640(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, _DWORD *a2)
{
  v9 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v9);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_10:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10);
      if (!result)
      {
        break;
      }

      v6 = v10;
      v7 = a2[2];
      if (v7 == a2[3])
      {
        sub_1D0C773F4(a2, v7 + 1);
        v7 = a2[2];
      }

      v8 = *a2;
      a2[2] = v7 + 1;
      *(v8 + 8 * v7) = v6;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 108);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 108);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 108);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  if ((*(v5 + 108) & 8) != 0)
  {
LABEL_15:
    v10 = *(v5 + 32);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 32);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  }

LABEL_18:
  if (*(v5 + 48) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(*(v5 + 40) + 8 * v11++), a3);
    }

    while (v11 < *(v5 + 48));
  }

  if (*(v5 + 64) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(*(v5 + 56) + 8 * v12++), a3);
    }

    while (v12 < *(v5 + 64));
  }

  if (*(v5 + 80) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(*(v5 + 72) + 8 * v13++), a3);
    }

    while (v13 < *(v5 + 80));
  }

  if (*(v5 + 96) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(*(v5 + 88) + 8 * v14++), a3);
    }

    while (v14 < *(v5 + 96));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 108);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_33;
  }

  if ((*(this + 108) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 108) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSSatelliteID::ByteSize(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v4 = v7 + v8 + 1;
  v3 = *(this + 27);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::ByteSize(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v4 += v11 + v12 + 1;
    v3 = *(this + 27);
  }

LABEL_18:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  v13 = *(this + 3);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 24);
  }

  v14 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::ByteSize(v13, a2);
  v15 = v14;
  if (v14 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
  }

  else
  {
    v16 = 1;
  }

  v4 += v15 + v16 + 1;
  if ((*(this + 27) & 8) != 0)
  {
LABEL_27:
    v17 = *(this + 4);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v17 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::default_instance_ + 32);
    }

    v18 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::ByteSize(v17, a2);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    }

    else
    {
      v20 = 1;
    }

    v4 += v19 + v20 + 1;
  }

LABEL_33:
  result = (9 * (*(this + 16) + *(this + 12) + *(this + 20) + *(this + 24)) + v4);
  *(this + 26) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::PolynomialEphemerides *a2)
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
    *(this + 5) = *(a2 + 5);
    v7 = *(a2 + 6);
    *(a2 + 5) = v6;
    v8 = *(this + 6);
    *(this + 6) = v7;
    *(a2 + 6) = v8;
    v9 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    v10 = *(a2 + 8);
    *(a2 + 7) = v9;
    v11 = *(this + 8);
    *(this + 8) = v10;
    *(a2 + 8) = v11;
    v12 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v13 = *(a2 + 10);
    *(a2 + 9) = v12;
    v14 = *(this + 10);
    *(this + 10) = v13;
    *(a2 + 10) = v14;
    v15 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    result = *(a2 + 12);
    *(a2 + 11) = v15;
    v17 = *(this + 12);
    *(this + 12) = result;
    *(a2 + 12) = v17;
    LODWORD(v15) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v15;
    LODWORD(v15) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v15;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::SharedCtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this)
{
  result = 0.0;
  *(this + 86) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 13) = 0;
  *(this + 14) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::GnssObservable(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *a2)
{
  *this = &unk_1F4CD7CB0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 86) = 0u;
  *(this + 13) = 0;
  *(this + 14) = 0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 29);
  if (v4)
  {
    if (v4)
    {
      *(this + 29) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergeFrom(v5, v6);
      v4 = *(a2 + 29);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 29) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergeFrom(v7, v8);
    v4 = *(a2 + 29);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_23:
    v9 = *(a2 + 6);
    if (v9 >= 7)
    {
      __assert_rtn("set_observable_type", "CoreNavigationCLPGnssMsmtAnalysisToolData.pb.h", 6592, "::CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GNSSObservableType_IsValid(value)");
    }

    *(this + 29) |= 4u;
    *(this + 6) = v9;
    v4 = *(a2 + 29);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

LABEL_25:
    v10 = *(a2 + 7);
    if (v10 >= 0xD)
    {
      __assert_rtn("set_gnss_band", "CoreNavigationCLPGnssMsmtAnalysisToolData.pb.h", 6615, "::CoreNavigation::CLP::LogEntry::PrivateData::Band_IsValid(value)");
    }

    *(this + 29) |= 8u;
    *(this + 7) = v10;
    v4 = *(a2 + 29);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }

LABEL_27:
    v11 = *(a2 + 4);
    *(this + 29) |= 0x10u;
    *(this + 4) = v11;
    v4 = *(a2 + 29);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

LABEL_28:
    v12 = *(a2 + 5);
    *(this + 29) |= 0x20u;
    *(this + 5) = v12;
    v4 = *(a2 + 29);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

LABEL_29:
    v13 = *(a2 + 6);
    *(this + 29) |= 0x40u;
    *(this + 6) = v13;
    v4 = *(a2 + 29);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(this + 29) |= 0x80u;
    v14 = *(this + 7);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 7);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v15 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 56);
    }

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::MergeFrom(v14, v15);
    v4 = *(a2 + 29);
  }

LABEL_35:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 8);
    *(this + 29) |= 0x100u;
    *(this + 8) = v16;
    v4 = *(a2 + 29);
  }

  if ((v4 & 0x200) != 0)
  {
    v17 = *(a2 + 24);
    if (v17 >= 5)
    {
      __assert_rtn("set_multipath_indicator", "CoreNavigationCLPGnssMsmtAnalysisToolData.pb.h", 6768, "::CoreNavigation::CLP::LogEntry::PrivateData::MultipathIndicator_IsValid(value)");
    }

    *(this + 29) |= 0x200u;
    *(this + 24) = v17;
    v4 = *(a2 + 29);
  }

  if ((v4 & 0x400) != 0)
  {
    v19 = *(a2 + 9);
    *(this + 29) |= 0x400u;
    *(this + 9) = v19;
    v4 = *(a2 + 29);
    if ((v4 & 0x800) == 0)
    {
LABEL_43:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_51;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_43;
  }

  v20 = *(a2 + 10);
  *(this + 29) |= 0x800u;
  *(this + 10) = v20;
  v4 = *(a2 + 29);
  if ((v4 & 0x1000) == 0)
  {
LABEL_44:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

LABEL_51:
  v21 = *(a2 + 11);
  *(this + 29) |= 0x1000u;
  *(this + 11) = v21;
  v4 = *(a2 + 29);
  if ((v4 & 0x2000) == 0)
  {
LABEL_45:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_53;
  }

LABEL_52:
  v22 = *(a2 + 13);
  *(this + 29) |= 0x2000u;
  *(this + 13) = v22;
  v4 = *(a2 + 29);
  if ((v4 & 0x4000) == 0)
  {
LABEL_46:
    if ((v4 & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_53:
  v23 = *(a2 + 100);
  *(this + 29) |= 0x4000u;
  *(this + 100) = v23;
  if ((*(a2 + 29) & 0x8000) != 0)
  {
LABEL_47:
    v18 = *(a2 + 101);
    *(this + 29) |= 0x8000u;
    *(this + 101) = v18;
  }
}

void sub_1D0C9A1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::~GnssObservable(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this)
{
  *this = &unk_1F4CD7CB0;
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::~GnssObservable(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::SharedDtor(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this)
{
  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ != this)
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

    v4 = *(this + 7);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::Clear(uint64_t this)
{
  v1 = *(this + 116);
  if (v1)
  {
    if (v1)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(this + 116);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
        v1 = *(this + 116);
      }
    }

    *(this + 40) = 0u;
    *(this + 24) = 0u;
    if ((v1 & 0x80) != 0)
    {
      v4 = *(this + 56);
      if (v4)
      {
        if (*(v4 + 52))
        {
          *(v4 + 40) = 0;
          *(v4 + 24) = 0uLL;
          *(v4 + 8) = 0uLL;
        }

        *(v4 + 52) = 0;
        v1 = *(this + 116);
      }
    }
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 104) = 0;
    *(this + 64) = 0u;
    *(this + 80) = 0u;
    *(this + 94) = 0;
  }

  *(this + 116) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_42;
        }

        *(this + 29) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v62[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62))
          {
            return 0;
          }
        }

        else
        {
          v62[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergePartialFromCodedStream(v8, a2, v22) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v25 < 0 == v24)
        {
          *(a2 + 14) = v25;
        }

        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 != 18)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
        goto LABEL_54;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

LABEL_54:
        *(this + 29) |= 2u;
        v27 = *(this + 2);
        if (!v27)
        {
          operator new();
        }

        v62[0] = 0;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62))
          {
            return 0;
          }
        }

        else
        {
          v62[0] = *v28;
          *(a2 + 1) = v28 + 1;
        }

        v29 = *(a2 + 14);
        v30 = *(a2 + 15);
        *(a2 + 14) = v29 + 1;
        if (v29 >= v30)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::MergePartialFromCodedStream(v27, a2, v31) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v32 = *(a2 + 14);
        v24 = __OFSUB__(v32, 1);
        v33 = v32 - 1;
        if (v33 < 0 == v24)
        {
          *(a2 + 14) = v33;
        }

        v34 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v34 >= v14 || *v34 != 24)
        {
          continue;
        }

        v15 = v34 + 1;
        *(a2 + 1) = v15;
LABEL_68:
        v62[0] = 0;
        if (v15 >= v14 || (v35 = *v15, (v35 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
          if (!result)
          {
            return result;
          }

          v35 = v62[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v35 <= 6)
        {
          *(this + 29) |= 4u;
          *(this + 6) = v35;
        }

        v37 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v37 >= v17 || *v37 != 32)
        {
          continue;
        }

        v18 = v37 + 1;
        *(a2 + 1) = v18;
LABEL_78:
        v62[0] = 0;
        if (v18 >= v17 || (v38 = *v18, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
          if (!result)
          {
            return result;
          }

          v38 = v62[0];
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (v38 <= 0xC)
        {
          *(this + 29) |= 8u;
          *(this + 7) = v38;
        }

        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 41)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_88:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v62;
        *(this + 29) |= 0x10u;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 49)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_92:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v62;
        *(this + 29) |= 0x20u;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 != 57)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_96:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v62;
        v19 = *(this + 29) | 0x40;
        *(this + 29) = v19;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 != 66)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_100:
        *(this + 29) = v19 | 0x80;
        v43 = *(this + 7);
        if (!v43)
        {
          operator new();
        }

        v62[0] = 0;
        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62))
          {
            return 0;
          }
        }

        else
        {
          v62[0] = *v44;
          *(a2 + 1) = v44 + 1;
        }

        v45 = *(a2 + 14);
        v46 = *(a2 + 15);
        *(a2 + 14) = v45 + 1;
        if (v45 >= v46)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::MergePartialFromCodedStream(v43, a2, v47) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v48 = *(a2 + 14);
        v24 = __OFSUB__(v48, 1);
        v49 = v48 - 1;
        if (v49 < 0 == v24)
        {
          *(a2 + 14) = v49;
        }

        v50 = *(a2 + 1);
        if (v50 >= *(a2 + 2) || *v50 != 73)
        {
          continue;
        }

        *(a2 + 1) = v50 + 1;
LABEL_114:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v62;
        *(this + 29) |= 0x100u;
        v51 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v51 >= v12 || *v51 != 80)
        {
          continue;
        }

        v13 = v51 + 1;
        *(a2 + 1) = v13;
LABEL_118:
        v62[0] = 0;
        if (v13 >= v12 || (v52 = *v13, (v52 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
          if (!result)
          {
            return result;
          }

          v52 = v62[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v52 <= 4)
        {
          *(this + 29) |= 0x200u;
          *(this + 24) = v52;
        }

        v53 = *(a2 + 1);
        if (v53 >= *(a2 + 2) || *v53 != 89)
        {
          continue;
        }

        *(a2 + 1) = v53 + 1;
LABEL_128:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v62;
        *(this + 29) |= 0x400u;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 != 97)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_132:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v62;
        *(this + 29) |= 0x800u;
        v55 = *(a2 + 1);
        if (v55 >= *(a2 + 2) || *v55 != 105)
        {
          continue;
        }

        *(a2 + 1) = v55 + 1;
LABEL_136:
        *v62 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v62;
        *(this + 29) |= 0x1000u;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 != 113)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_140:
        *v62 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v62))
        {
          *(this + 13) = *v62;
          *(this + 29) |= 0x2000u;
          v57 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v57 < v10 && *v57 == 120)
          {
            v11 = v57 + 1;
            *(a2 + 1) = v11;
LABEL_144:
            v62[0] = 0;
            if (v11 >= v10 || (v58 = *v11, (v58 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
              if (!result)
              {
                return result;
              }

              v58 = v62[0];
              v59 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v59 = (v11 + 1);
              *(a2 + 1) = v59;
            }

            *(this + 100) = v58 != 0;
            *(this + 29) |= 0x4000u;
            if (v10 - v59 >= 2 && *v59 == 128 && v59[1] == 1)
            {
              v16 = (v59 + 2);
              *(a2 + 1) = v16;
LABEL_153:
              v62[0] = 0;
              if (v16 >= v10 || (v60 = *v16, (v60 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v62);
                if (!result)
                {
                  return result;
                }

                v60 = v62[0];
                v61 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                v61 = v16 + 1;
                *(a2 + 1) = v61;
              }

              *(this + 101) = v60 != 0;
              *(this + 29) |= 0x8000u;
              if (v61 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_68;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_78;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_88;
        }

        goto LABEL_42;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_92;
        }

        goto LABEL_42;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_96;
        }

        goto LABEL_42;
      case 8u:
        if (v7 != 2)
        {
          goto LABEL_42;
        }

        v19 = *(this + 29);
        goto LABEL_100;
      case 9u:
        if (v7 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_114;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_118;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_128;
        }

        goto LABEL_42;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_132;
        }

        goto LABEL_42;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_136;
        }

        goto LABEL_42;
      case 0xEu:
        if (v7 == 1)
        {
          goto LABEL_140;
        }

        goto LABEL_42;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_144;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_42;
        }

        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_153;
      default:
LABEL_42:
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

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_29:
  v9 = *(v5 + 56);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v9, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 96), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 72), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 80), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 88), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_38:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 100), a2, a4);
    if ((*(v5 + 116) & 0x8000) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 104), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_38;
  }

LABEL_16:
  if ((v6 & 0x8000) == 0)
  {
    return this;
  }

LABEL_39:
  v10 = *(v5 + 101);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, v10, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::ByteSize(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this, unint64_t a2)
{
  v3 = *(this + 29);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_44;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v6 = *(this + 1);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
    v6 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 8);
  }

  v7 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::ByteSize(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
  }

  else
  {
    v9 = 1;
  }

  v4 = v8 + v9 + 1;
  v3 = *(this + 29);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v10 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 16);
    }

    v11 = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::CNTimeSpan::ByteSize(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    }

    else
    {
      v13 = 1;
    }

    v4 += v12 + v13 + 1;
    v3 = *(this + 29);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v14 = *(this + 6);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v15 = 2;
    }

    v4 += v15;
    if ((v3 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if ((v3 & 8) != 0)
  {
LABEL_27:
    v16 = *(this + 7);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v3 = *(this + 29);
    }

    else
    {
      v17 = 2;
    }

    v4 += v17;
  }

LABEL_33:
  v18 = v4 + 9;
  if ((v3 & 0x10) == 0)
  {
    v18 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v18 += 9;
  }

  if ((v3 & 0x40) != 0)
  {
    v5 = v18 + 9;
  }

  else
  {
    v5 = v18;
  }

  if ((v3 & 0x80) != 0)
  {
    v19 = *(this + 7);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::protobuf_AddDesc_CoreNavigationCLPGnssMsmtAnalysisToolData_2eproto(0);
      v19 = *(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::default_instance_ + 56);
    }

    v5 = v5 + CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::ByteSize(v19) + 2;
    v3 = *(this + 29);
  }

LABEL_44:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      LODWORD(v5) = v5 + 9;
    }

    if ((v3 & 0x200) != 0)
    {
      v20 = *(this + 24);
      if ((v20 & 0x80000000) != 0)
      {
        v21 = 11;
      }

      else if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
        v3 = *(this + 29);
      }

      else
      {
        v21 = 2;
      }

      LODWORD(v5) = v21 + v5;
    }

    v22 = v5 + 9;
    if ((v3 & 0x400) == 0)
    {
      v22 = v5;
    }

    if ((v3 & 0x800) != 0)
    {
      v22 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v22 += 9;
    }

    if ((v3 & 0x2000) != 0)
    {
      v22 += 9;
    }

    v23 = v22 + ((v3 >> 13) & 2);
    if ((v3 & 0x8000) != 0)
    {
      v5 = v23 + 3;
    }

    else
    {
      v5 = v23;
    }
  }

  *(this + 28) = v5;
  return v5;
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections::MergeFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::MeasurementCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (v5)
  {
    if (*(a2 + 52))
    {
      result = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 13);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 13) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 13);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 3);
    *(this + 13) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 13);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 4);
    *(this + 13) |= 8u;
    *(this + 4) = result;
    if ((*(a2 + 13) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = result;
  }

  return result;
}

void sub_1D0C9B3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::CopyFrom(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this, const CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable::Swap(CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *this, CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssObservable *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
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
    LODWORD(v7) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v7;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v9;
    v10 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v10;
    v11 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v11;
    result = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = result;
    LOBYTE(v7) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v7;
    LOBYTE(v7) = *(this + 101);
    *(this + 101) = *(a2 + 101);
    *(a2 + 101) = v7;
    LODWORD(v7) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v7;
    LODWORD(v7) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v7;
  }

  return result;
}