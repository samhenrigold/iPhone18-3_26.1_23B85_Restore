void sub_276B5BC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, unint64_t a2, google::protobuf::internal *a3, const google::protobuf::MessageLite *a4, InternalMetadata *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = &unk_2885C7980;
  v16[1] = a4;
  v11 = a2 >> 3;
  v15 = 0;
  if (google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(this, a2 & 7, a2 >> 3, v16, v14, &v15))
  {
    return sub_276B5BDFC(this, v11, v15, v14, a5, a3, a6);
  }

  if (a5->ptr_)
  {
    v13 = ((a5->ptr_ & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v13 = sub_276B61560(a5);
  }

  return google::protobuf::internal::UnknownFieldParse(v9, v13, a3, a6);
}

google::protobuf::internal *sub_276B5BDFC(google::protobuf::internal::ExtensionSet *this, int a2, int a3, uint64_t a4, unint64_t *a5, google::protobuf::internal *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = this;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v52 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 1, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedDoubleParser(v52, v8, a7, v53);
        break;
      case 2:
        v54 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 2, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFloatParser(v54, v8, a7, v55);
        break;
      case 3:
        v39 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 3, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt64Parser(v39, v8, a7, v40);
        break;
      case 4:
        v47 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 4, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt64Parser(v47, v8, a7, v48);
        break;
      case 5:
        v30 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 5, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedInt32Parser(v30, v8, a7, v31);
        break;
      case 6:
        v61 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 6, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed64Parser(v61, v8, a7, v62);
        break;
      case 7:
        v70 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 7, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedFixed32Parser(v70, v8, a7, v71);
        break;
      case 8:
        v49 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 8, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedBoolParser(v49, v8, a7, v50);
        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        google::protobuf::internal::LogMessage::LogMessage(&v130, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/extension_set_inl.h", 79);
        v13 = google::protobuf::internal::LogMessage::operator<<(&v130, "Non-primitive types can't be packed.");
        google::protobuf::internal::LogFinisher::operator=(&v129, &v13->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v130.__r_.__value_.__l.__data_);
        goto LABEL_188;
      case 0xD:
        v32 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 13, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedUInt32Parser(v32, v8, a7, v33);
        break;
      case 0xE:
        v130.__r_.__value_.__r.__words[0] = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v130.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v131 = a5;
        v132 = v11;
        v8 = sub_276B62420(a7, v8, &v130);
        goto LABEL_188;
      case 0xF:
        v20 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 15, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed32Parser(v20, v8, a7, v21);
        break;
      case 0x10:
        v42 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 16, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSFixed64Parser(v42, v8, a7, v43);
        break;
      case 0x11:
        v16 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 17, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt32Parser(v16, v8, a7, v17);
        break;
      case 0x12:
        v58 = google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(this, a2, 18, *(a4 + 2), *(a4 + 24));

        result = google::protobuf::internal::PackedSInt64Parser(v58, v8, a7, v59);
        break;
      default:
        goto LABEL_188;
    }
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v8 = (a6 + 8);
        v56 = *a6;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, *(a4 + 2), v56, *(a4 + 24));
        }

        else
        {
          v86 = *(a4 + 24);
          v87 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          *(v87 + 2) = v86;
          if (v88)
          {
            *(v87 + 4) = 1;
          }

          v87[10] &= 0xF0u;
          *v87 = v56;
        }

        goto LABEL_188;
      case 2:
        v8 = (a6 + 4);
        v57 = *a6;
        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, *(a4 + 2), v57, *(a4 + 24));
        }

        else
        {
          v89 = *(a4 + 24);
          v90 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
          *(v90 + 2) = v89;
          if (v91)
          {
            *(v90 + 4) = 2;
          }

          v90[10] &= 0xF0u;
          *v90 = v57;
        }

        goto LABEL_188;
      case 3:
        v41 = *a6;
        if (v41 < 0)
        {
          v98 = (*(a6 + 1) << 7) + v41;
          v41 = (v98 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v98 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            v41 = v113;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v44 = *(a4 + 2);
          v45 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v46 = 3;
          goto LABEL_171;
        }

        v114 = *(a4 + 24);
        v83 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
        *(v83 + 2) = v114;
        if ((v115 & 1) == 0)
        {
          goto LABEL_175;
        }

        v85 = 3;
        goto LABEL_174;
      case 4:
        v41 = *a6;
        if (v41 < 0)
        {
          v99 = (*(a6 + 1) << 7) + v41;
          v41 = (v99 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v99 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            v41 = v116;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v65 = 4;
          goto LABEL_158;
        }

        v117 = *(a4 + 24);
        v83 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
        *(v83 + 2) = v117;
        if ((v118 & 1) == 0)
        {
          goto LABEL_175;
        }

        v85 = 4;
        goto LABEL_174;
      case 5:
        v34 = *a6;
        if ((v34 & 0x8000000000000000) != 0)
        {
          v97 = (*(a6 + 1) << 7) + v34;
          LODWORD(v34) = v97 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v97 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            LODWORD(v34) = v110;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v25 = 5;
          v102 = v34;
          goto LABEL_145;
        }

        v111 = *(a4 + 24);
        v107 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
        *(v107 + 2) = v111;
        if ((v112 & 1) == 0)
        {
          goto LABEL_187;
        }

        v109 = 5;
        goto LABEL_186;
      case 6:
        v8 = (a6 + 8);
        v41 = *a6;
        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          v65 = 6;
LABEL_158:
          google::protobuf::internal::ExtensionSet::AddUInt64(this, a2, v65, v63, v41, v64);
          goto LABEL_188;
        }

        v92 = *(a4 + 24);
        v83 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v83 + 2) = v92;
        if ((v93 & 1) == 0)
        {
          goto LABEL_175;
        }

        v85 = 6;
        goto LABEL_174;
      case 7:
        v8 = (a6 + 4);
        v22 = *a6;
        if (*(a4 + 1) == 1)
        {
          v72 = *(a4 + 2);
          v73 = *(a4 + 24);
          v74 = 7;
          v75 = v22;
          goto LABEL_138;
        }

        v94 = *(a4 + 24);
        v79 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v79 + 2) = v94;
        if ((v95 & 1) == 0)
        {
          goto LABEL_133;
        }

        v81 = 7;
        goto LABEL_132;
      case 8:
        v51 = *a6;
        if (v51 < 0)
        {
          v100 = (*(a6 + 1) << 7) + v51;
          v51 = (v100 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v100 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            v51 = v119;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          google::protobuf::internal::ExtensionSet::AddBool(v12, v11, 8, *(a4 + 2), v51 != 0, *(a4 + 24));
        }

        else
        {
          v120 = *(a4 + 24);
          v121 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
          *(v121 + 2) = v120;
          if (v122)
          {
            *(v121 + 4) = 8;
          }

          v121[10] &= 0xF0u;
          *v121 = v51 != 0;
        }

        goto LABEL_188;
      case 9:
      case 0xC:
        v14 = *(a4 + 1);
        v15 = *(a4 + 24);
        if (v14 == 1)
        {
          v35 = google::protobuf::internal::ExtensionSet::AddString(this, a2, 9, v15);
        }

        else
        {
          v35 = google::protobuf::internal::ExtensionSet::MutableString(this, a2, 9, v15);
        }

        v36 = v35;
        v37 = *v8;
        if (*v8 < 0)
        {
          SizeFallback = google::protobuf::internal::ReadSizeFallback(v8, *v8);
          if (!SizeFallback)
          {
            v8 = 0;
            goto LABEL_188;
          }

          v38 = SizeFallback;
          v37 = v77;
        }

        else
        {
          v38 = v8 + 1;
        }

        return sub_276B62314(a7, v38, v37, v36);
      case 0xA:
        v66 = *(a4 + 1);
        v67 = *(a4 + 8);
        v68 = *(a4 + 24);
        if (v66 == 1)
        {
          v69 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 10, v67, v68);
        }

        else
        {
          v69 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 10, v67, v68);
        }

        return sub_276B62380(a7, v69, v8, (8 * v11) | 3u);
      case 0xB:
        v26 = *(a4 + 1);
        v27 = *(a4 + 8);
        v28 = *(a4 + 24);
        if (v26 == 1)
        {
          v29 = google::protobuf::internal::ExtensionSet::AddMessage(this, a2, 11, v27, v28);
        }

        else
        {
          v29 = google::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 11, v27, v28);
        }

        return google::protobuf::internal::ParseContext::ParseMessage(a7, v29, v8);
      case 0xD:
        v34 = *a6;
        if ((v34 & 0x8000000000000000) != 0)
        {
          v96 = (*(a6 + 1) << 7) + v34;
          LODWORD(v34) = v96 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v96 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            LODWORD(v34) = v105;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if (*(a4 + 1) == 1)
        {
          v72 = *(a4 + 2);
          v73 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v74 = 13;
          v75 = v34;
LABEL_138:
          google::protobuf::internal::ExtensionSet::AddUInt32(this, a2, v74, v72, v75, v73);
          goto LABEL_188;
        }

        v106 = *(a4 + 24);
        v107 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
        *(v107 + 2) = v106;
        if ((v108 & 1) == 0)
        {
          goto LABEL_187;
        }

        v109 = 13;
        goto LABEL_186;
      case 0xE:
        v34 = *a6;
        if ((v34 & 0x8000000000000000) != 0)
        {
          v101 = (*(a6 + 1) << 7) + v34;
          v34 = (v101 - 128);
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, (v101 - 128));
            if (!v8)
            {
              goto LABEL_188;
            }

            v34 = v125;
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        if ((*(a4 + 8))(*(a4 + 16), v34))
        {
          if (*(a4 + 1) == 1)
          {
            google::protobuf::internal::ExtensionSet::AddEnum(v12, v11, 14, *(a4 + 2), v34, *(a4 + 24));
          }

          else
          {
            v127 = *(a4 + 24);
            v107 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
            *(v107 + 2) = v127;
            if (v128)
            {
              v109 = 14;
LABEL_186:
              *(v107 + 4) = v109;
            }

LABEL_187:
            v107[10] &= 0xF0u;
            *v107 = v34;
          }
        }

        else
        {
          if (*a5)
          {
            v126 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v126 = sub_276B61560(a5);
          }

          google::protobuf::internal::WriteVarint(v11, v34, v126);
        }

        goto LABEL_188;
      case 0xF:
        v8 = (a6 + 4);
        v22 = *a6;
        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          v25 = 15;
          goto LABEL_129;
        }

        v78 = *(a4 + 24);
        v79 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v79 + 2) = v78;
        if ((v80 & 1) == 0)
        {
          goto LABEL_133;
        }

        v81 = 15;
        goto LABEL_132;
      case 0x10:
        v8 = (a6 + 8);
        v41 = *a6;
        if (*(a4 + 1) == 1)
        {
          v44 = *(a4 + 2);
          v45 = *(a4 + 24);
          v46 = 16;
          goto LABEL_171;
        }

        v82 = *(a4 + 24);
        v83 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
        *(v83 + 2) = v82;
        if ((v84 & 1) == 0)
        {
          goto LABEL_175;
        }

        v85 = 16;
        goto LABEL_174;
      case 0x11:
        v19 = *a6;
        if ((v19 & 0x8000000000000000) != 0)
        {
          v19 = (*(a6 + 1) << 7) + v19 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v19);
            if (!v8)
            {
              goto LABEL_188;
            }
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        v22 = -(v19 & 1) ^ (v19 >> 1);
        if (*(a4 + 1) == 1)
        {
          v23 = *(a4 + 2);
          v24 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v25 = 17;
LABEL_129:
          v102 = v22;
LABEL_145:
          google::protobuf::internal::ExtensionSet::AddInt32(this, a2, v25, v23, v102, v24);
        }

        else
        {
          v103 = *(a4 + 24);
          v79 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
          *(v79 + 2) = v103;
          if (v104)
          {
            v81 = 17;
LABEL_132:
            *(v79 + 4) = v81;
          }

LABEL_133:
          v79[10] &= 0xF0u;
          *v79 = v22;
        }

        goto LABEL_188;
      case 0x12:
        v60 = *a6;
        if ((v60 & 0x8000000000000000) != 0)
        {
          v60 = (*(a6 + 1) << 7) + v60 - 128;
          if (*(a6 + 1) < 0)
          {
            v8 = google::protobuf::internal::VarintParseSlow64(a6, v60);
            if (!v8)
            {
              goto LABEL_188;
            }
          }

          else
          {
            v8 = (a6 + 2);
          }
        }

        else
        {
          v8 = (a6 + 1);
        }

        v41 = -(v60 & 1) ^ (v60 >> 1);
        if (*(a4 + 1) == 1)
        {
          v44 = *(a4 + 2);
          v45 = *(a4 + 24);
          this = v12;
          a2 = v11;
          v46 = 18;
LABEL_171:
          google::protobuf::internal::ExtensionSet::AddInt64(this, a2, v46, v44, v41, v45);
        }

        else
        {
          v123 = *(a4 + 24);
          v83 = google::protobuf::internal::ExtensionSet::Insert(v12, v11);
          *(v83 + 2) = v123;
          if (v124)
          {
            v85 = 18;
LABEL_174:
            *(v83 + 4) = v85;
          }

LABEL_175:
          v83[10] &= 0xF0u;
          *v83 = v41;
        }

LABEL_188:
        result = v8;
        break;
      default:
        goto LABEL_188;
    }
  }

  return result;
}

void sub_276B5CBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *sub_276B5CC60(google::protobuf::internal::ExtensionSet *a1, google::protobuf::internal *a2, const google::protobuf::MessageLite *a3, InternalMetadata *a4, uint64_t a5)
{
  v9 = 0;
  LODWORD(v10) = 0;
  v47 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = a2;
  __p[0] = 0;
  __p[1] = 0;
LABEL_2:
  while (2)
  {
    v11 = v9;
    while (1)
    {
      v12 = sub_2769F6104(a5, &v42, *(a5 + 92));
      v13 = v42;
      if (v12)
      {
        TagFallback = v42;
        goto LABEL_53;
      }

      TagFallback = (v42 + 1);
      v42 = (v42 + 1);
      LODWORD(v15) = *v13;
      if (v15 != 26)
      {
        break;
      }

      if (!v10)
      {
        v28 = *TagFallback;
        if (*TagFallback < 0)
        {
          SizeFallback = google::protobuf::internal::ReadSizeFallback((v13 + 1), *TagFallback);
          v42 = SizeFallback;
          if (!SizeFallback)
          {
            goto LABEL_51;
          }

          v28 = v30;
        }

        else
        {
          SizeFallback = v13 + 2;
          v42 = (v13 + 2);
        }

        LODWORD(v10) = 0;
        v42 = sub_276B62314(a5, SizeFallback, v28, __p);
        v9 = 1;
        if (!v42)
        {
          goto LABEL_51;
        }

        goto LABEL_2;
      }

      v17 = google::protobuf::internal::ExtensionSet::ParseField(a1, (8 * v10) | 2, TagFallback, a3, a4, a5);
      LODWORD(v10) = 0;
LABEL_15:
      v42 = v17;
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    if (v15 == 16)
    {
      v18 = *TagFallback;
      v19 = v18 + v18;
      v20 = v19 & (2 * v18);
      v10 = v20 >> 1;
      if ((v20 & 0x8000) != 0)
      {
        TagFallback = (v13 + 3);
        v31 = 13;
        while (1)
        {
          v32 = *TagFallback;
          v33 = v32 + v32;
          v10 += ((v33 & (2 * v32)) - 2) << v31;
          if ((v33 & (2 * v32) & 0x8000) == 0)
          {
            break;
          }

          v31 += 14;
          TagFallback = (TagFallback + 2);
          if (v31 == 69)
          {
            TagFallback = 0;
            v42 = 0;
            goto LABEL_53;
          }
        }

        v21 = v33 >= v32;
      }

      else
      {
        v21 = v19 >= v18;
      }

      v22 = !v21;
      v9 = 0;
      if (v22)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      v42 = (TagFallback + v23);
      if (v11)
      {
        v43 = &unk_2885C7980;
        v44 = a3;
        if (google::protobuf::internal::ExtensionSet::FindExtensionInfoFromFieldNumber(v13, 2, v10, &v43, v37, &v36))
        {
          if (v37[1] == 1)
          {
            v25 = google::protobuf::internal::ExtensionSet::AddMessage(a1, v10, 11, v38, v39);
          }

          else
          {
            v25 = google::protobuf::internal::ExtensionSet::MutableMessage(a1, v10, 11, v38, v39);
          }

          v27 = v25;
          v35 = 0;
          sub_276B626C0(&v43, *(a5 + 88), 0, &v35, __p);
          v46 = *(a5 + 96);
          if (!(*(*v27 + 88))(v27, v35, &v43) || v45)
          {
LABEL_51:
            TagFallback = 0;
            goto LABEL_53;
          }
        }

        else
        {
          sub_276B280C4(&v43, __p, v24);
          if (a4->ptr_)
          {
            v26 = ((a4->ptr_ & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v26 = sub_276B61560(a4);
          }

          google::protobuf::internal::WriteLengthDelimited(v10, v43, v44, v26);
        }

        LODWORD(v10) = 0;
        v9 = 1;
        continue;
      }

      continue;
    }

    break;
  }

  if ((v15 & 0x80) != 0)
  {
    v15 = (v15 + (*TagFallback << 7) - 128);
    if (*TagFallback < 0)
    {
      TagFallback = google::protobuf::internal::ReadTagFallback(v13, v15);
    }

    else
    {
      TagFallback = (v13 + 2);
    }
  }

  v42 = TagFallback;
  if (v15)
  {
    v16 = (v15 & 7) == 4;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = google::protobuf::internal::ExtensionSet::ParseField(a1, v15, TagFallback, a3, a4, a5);
    goto LABEL_15;
  }

  *(a5 + 80) = v15 - 1;
LABEL_53:
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  return TagFallback;
}

void sub_276B5CFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, const google::protobuf::MessageLite *a4)
{
  v6 = &unk_2885C91E0;
  v5[0] = &unk_2885C7980;
  v5[1] = a4;
  return google::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, v5, &v6);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseField(google::protobuf::internal::ExtensionSet *this, uint64_t a2, google::protobuf::io::CodedInputStream *a3, const google::protobuf::MessageLite *a4, google::protobuf::io::CodedOutputStream *a5)
{
  v7[0] = &unk_2885C9228;
  v7[1] = a5;
  v6[0] = &unk_2885C7980;
  v6[1] = a4;
  return google::protobuf::internal::ExtensionSet::ParseField(this, a2, a3, v6, v7);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSetLite(google::protobuf::internal::ExtensionSet *this, char **a2, google::protobuf::internal::ExtensionFinder *a3, google::protobuf::internal::FieldSkipper *a4)
{
  while (1)
  {
    while (1)
    {
      v8 = sub_276B5D188(a2);
      if (v8 != 11)
      {
        break;
      }

      if ((google::protobuf::internal::ExtensionSet::ParseMessageSetItemLite(this, a2, a3, a4, v9) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v8)
    {
      break;
    }

    if ((google::protobuf::internal::ExtensionSet::ParseField(this, v8, a2, a3, a4) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_276B5D188(char **this)
{
  v2 = *this;
  if (*this >= this[1])
  {
    TagFallback = 0;
    goto LABEL_5;
  }

  TagFallback = *v2;
  if (*v2 < 0)
  {
LABEL_5:
    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(this, TagFallback);
    goto LABEL_6;
  }

  *this = v2 + 1;
LABEL_6:
  *(this + 8) = TagFallback;
  return TagFallback;
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSetItemLite(google::protobuf::internal::ExtensionSet *this, char **a2, google::protobuf::internal::ExtensionFinder *a3, google::protobuf::internal::FieldSkipper *a4, __n128 a5)
{
  v9 = 0;
  memset(&v41, 0, sizeof(v41));
  a5.n128_u64[0] = 0xFFFFFFFF00000000;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v10 = *a2;
          if (*a2 >= a2[1])
          {
            v11 = 0;
          }

          else
          {
            v11 = *v10;
            if ((*v10 & 0x80000000) == 0)
            {
              *a2 = v10 + 1;
              goto LABEL_7;
            }
          }

          LODWORD(v11) = google::protobuf::io::CodedInputStream::ReadTagFallback(a2, v11);
LABEL_7:
          if (v11 <= 25)
          {
            break;
          }

          if (v11 != 26)
          {
            goto LABEL_14;
          }

          if (v9)
          {
            v12 = google::protobuf::internal::ExtensionSet::ParseField(this, (8 * v9) | 2u, a2, a3, a4);
LABEL_15:
            if ((v12 & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v14 = *a2;
            if (*a2 >= a2[1])
            {
              v15 = 0;
LABEL_36:
              Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
              v15 = Varint32Fallback;
              if ((Varint32Fallback & 0x8000000080000000) != 0)
              {
                goto LABEL_56;
              }

              goto LABEL_37;
            }

            v15 = *v14;
            if (*v14 < 0)
            {
              goto LABEL_36;
            }

            *a2 = v14 + 1;
LABEL_37:
            std::string::resize(&v41, v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6), 0);
            v20 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
            v21 = v41.__r_.__value_.__r.__words[0];
            if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = &v41;
            }

            else
            {
              v22 = v41.__r_.__value_.__r.__words[0];
            }

            if (v15 > 0x7F)
            {
              v22->__r_.__value_.__s.__data_[0] = v15 | 0x80;
              v25 = v15 >> 7;
              if (v20 >= 0)
              {
                v21 = &v41;
              }

              if (v15 >> 14)
              {
                v24 = &v21->__r_.__value_.__s.__data_[2];
                do
                {
                  *(v24 - 1) = v25 | 0x80;
                  v26 = v25 >> 7;
                  ++v24;
                  v27 = v25 >> 14;
                  v25 >>= 7;
                }

                while (v27);
                *(v24 - 1) = v26;
              }

              else
              {
                v21->__r_.__value_.__s.__data_[1] = v25;
                v24 = &v21->__r_.__value_.__s.__data_[2];
              }
            }

            else
            {
              v22->__r_.__value_.__s.__data_[0] = v15;
              if (v20 >= 0)
              {
                v23 = &v41;
              }

              else
              {
                v23 = v21;
              }

              v24 = &v23->__r_.__value_.__s.__data_[1];
            }

            Raw = google::protobuf::io::CodedInputStream::ReadRaw(a2, v24, v15);
            v9 = 0;
            if (!Raw)
            {
              goto LABEL_56;
            }
          }
        }

        if (!v11)
        {
          goto LABEL_56;
        }

        if (v11 == 12)
        {
          v29 = 1;
          goto LABEL_57;
        }

        if (v11 != 16)
        {
LABEL_14:
          v12 = (*(*a4 + 16))(a4, a2, a5);
          goto LABEL_15;
        }

        v13 = *a2;
        if (*a2 >= a2[1])
        {
          v9 = 0;
        }

        else
        {
          v9 = *v13;
          if ((*v13 & 0x80000000) == 0)
          {
            *a2 = v13 + 1;
            goto LABEL_25;
          }
        }

        v16 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
        v9 = v16;
        if (v16 < 0)
        {
          goto LABEL_56;
        }

LABEL_25:
        v17 = SHIBYTE(v41.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          break;
        }

        if (*(&v41.__r_.__value_.__s + 23))
        {
          v18 = &v41;
          goto LABEL_30;
        }
      }

      v17 = v41.__r_.__value_.__r.__words[1];
    }

    while (!v41.__r_.__value_.__l.__size_);
    v18 = v41.__r_.__value_.__r.__words[0];
LABEL_30:
    v31[0] = v18;
    v31[1] = v18 + v17;
    v31[2] = 0;
    v33 = 0;
    v34 = 0;
    v32 = v17;
    v35 = v17;
    v36 = -NAN;
    v39 = 0;
    v40 = 0;
    v37 = *(a2 + 13);
    v38 = v37;
    if ((google::protobuf::internal::ExtensionSet::ParseField(this, (8 * v9) | 2u, v31, a3, a4) & 1) == 0)
    {
      break;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      *v41.__r_.__value_.__l.__data_ = 0;
      v41.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v41.__r_.__value_.__s.__data_[0] = 0;
      *(&v41.__r_.__value_.__s + 23) = 0;
    }

    google::protobuf::io::CodedInputStream::~CodedInputStream(v31);
  }

  google::protobuf::io::CodedInputStream::~CodedInputStream(v31);
LABEL_56:
  v29 = 0;
LABEL_57:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  return v29;
}

void sub_276B5D500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ExtensionSet::ParseMessageSet(google::protobuf::internal::ExtensionSet *a1, char **a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  google::protobuf::io::StringOutputStream::StringOutputStream(v11, a4);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v12, v11, 1);
  v10[0] = &unk_2885C9228;
  v10[1] = v12;
  v9[0] = &unk_2885C7980;
  v9[1] = a3;
  v7 = google::protobuf::internal::ExtensionSet::ParseMessageSetLite(a1, a2, v9, v10);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v12);
  return v7;
}

void sub_276B5D624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::_InternalSerialize(google::protobuf::internal::ExtensionSet *this, int a2, int a3, unsigned __int8 *a4, google::protobuf::io::EpsCopyOutputStream *a5, __n128 a6)
{
  v8 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    v19 = *(v8 + 1);
    v18 = v8 + 2;
    v17 = v19;
    if (v19)
    {
      v20 = v18;
      do
      {
        if (*(v17 + 32) >= a2)
        {
          v20 = v17;
        }

        v17 = *(v17 + 8 * (*(v17 + 32) < a2));
      }

      while (v17);
      if (v20 != v18)
      {
        do
        {
          v21 = *(v20 + 8);
          if (v21 >= a3)
          {
            break;
          }

          a4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(v20 + 5, v21, a4, a5, a6);
          v22 = v20[1];
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
              v23 = v20[2];
              v24 = *v23 == v20;
              v20 = v23;
            }

            while (!v24);
          }

          v20 = v23;
        }

        while (v23 != v18);
      }
    }
  }

  else
  {
    v9 = *(this + 5);
    v10 = &v8[8 * v9];
    while (v9)
    {
      v11 = v9 >> 1;
      v12 = &v8[8 * (v9 >> 1)];
      v14 = *v12;
      v13 = (v12 + 8);
      v9 += ~(v9 >> 1);
      if (v14 < a2)
      {
        v8 = v13;
      }

      else
      {
        v9 = v11;
      }
    }

    while (v8 != v10)
    {
      v15 = *v8;
      if (v15 >= a3)
      {
        break;
      }

      a4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(v8 + 1, v15, a4, a5, a6);
      v8 += 8;
    }
  }

  return a4;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(int **this, uint64_t a2, unsigned __int8 *a3, google::protobuf::io::EpsCopyOutputStream *a4, __n128 a5)
{
  v6 = a3;
  v7 = a2;
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      if (*(this + 3))
      {
        if (*a4 <= a3)
        {
          v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
        }

        v9 = 8 * v7;
        if ((8 * v7) > 0x7F)
        {
          *v6 = v9 | 0x82;
          v25 = v9 >> 7;
          if (v9 >> 14)
          {
            v10 = v6 + 2;
            do
            {
              *(v10 - 1) = v25 | 0x80;
              v26 = v25 >> 7;
              ++v10;
              v27 = v25 >> 14;
              v25 >>= 7;
            }

            while (v27);
            *(v10 - 1) = v26;
          }

          else
          {
            v6[1] = v25;
            v10 = v6 + 2;
          }
        }

        else
        {
          *v6 = v9 | 2;
          v10 = v6 + 1;
        }

        v28 = *(this + 3);
        if (v28 > 0x7F)
        {
          *v10 = v28 | 0x80;
          v29 = v28 >> 7;
          if (v28 >> 14)
          {
            v6 = v10 + 2;
            do
            {
              *(v6 - 1) = v29 | 0x80;
              v30 = v29 >> 7;
              ++v6;
              v31 = v29 >> 14;
              v29 >>= 7;
            }

            while (v31);
            *(v6 - 1) = v30;
          }

          else
          {
            v10[1] = v29;
            v6 = v10 + 2;
          }
        }

        else
        {
          *v10 = v28;
          v6 = v10 + 1;
        }

        switch(*(this + 8))
        {
          case 1:
            v291 = *this;
            if (**this >= 1)
            {
              v292 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v291 = *this;
                }

                *v6 = *(*(v291 + 8) + 8 * v292);
                v6 += 8;
                ++v292;
                v291 = *this;
              }

              while (v292 < **this);
            }

            break;
          case 2:
            v293 = *this;
            if (**this >= 1)
            {
              v294 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v293 = *this;
                }

                *v6 = *(*(v293 + 8) + 4 * v294);
                v6 += 4;
                ++v294;
                v293 = *this;
              }

              while (v294 < **this);
            }

            break;
          case 3:
            v275 = *this;
            if (**this >= 1)
            {
              v276 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v275 = *this;
                }

                v277 = *(*(v275 + 8) + 8 * v276);
                if (v277 > 0x7F)
                {
                  *v6 = v277 | 0x80;
                  v278 = v277 >> 7;
                  if (v277 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v278 | 0x80;
                      v279 = v278 >> 7;
                      ++v6;
                      v280 = v278 >> 14;
                      v278 >>= 7;
                    }

                    while (v280);
                    *(v6 - 1) = v279;
                  }

                  else
                  {
                    v6[1] = v278;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v277;
                }

                ++v276;
                v275 = *this;
              }

              while (v276 < **this);
            }

            break;
          case 4:
            v283 = *this;
            if (**this >= 1)
            {
              v284 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v283 = *this;
                }

                v285 = *(*(v283 + 8) + 8 * v284);
                if (v285 > 0x7F)
                {
                  *v6 = v285 | 0x80;
                  v286 = v285 >> 7;
                  if (v285 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v286 | 0x80;
                      v287 = v286 >> 7;
                      ++v6;
                      v288 = v286 >> 14;
                      v286 >>= 7;
                    }

                    while (v288);
                    *(v6 - 1) = v287;
                  }

                  else
                  {
                    v6[1] = v286;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v285;
                }

                ++v284;
                v283 = *this;
              }

              while (v284 < **this);
            }

            break;
          case 5:
            v263 = *this;
            if (**this >= 1)
            {
              v264 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v263 = *this;
                }

                v265 = *(*(v263 + 8) + 4 * v264);
                if (v265 > 0x7F)
                {
                  *v6 = v265 | 0x80;
                  v266 = v265 >> 7;
                  if (v265 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v266 | 0x80;
                      v267 = v266 >> 7;
                      ++v6;
                      v268 = v266 >> 14;
                      v266 >>= 7;
                    }

                    while (v268);
                    *(v6 - 1) = v267;
                  }

                  else
                  {
                    v6[1] = v266;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v265;
                }

                ++v264;
                v263 = *this;
              }

              while (v264 < **this);
            }

            break;
          case 6:
            v308 = *this;
            if (**this >= 1)
            {
              v309 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v308 = *this;
                }

                *v6 = *(*(v308 + 8) + 8 * v309);
                v6 += 8;
                ++v309;
                v308 = *this;
              }

              while (v309 < **this);
            }

            break;
          case 7:
            v310 = *this;
            if (**this >= 1)
            {
              v311 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v310 = *this;
                }

                *v6 = *(*(v310 + 8) + 4 * v311);
                v6 += 4;
                ++v311;
                v310 = *this;
              }

              while (v311 < **this);
            }

            break;
          case 8:
            v289 = *this;
            if (**this >= 1)
            {
              v290 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v289 = *this;
                }

                *v6++ = *(*(v289 + 8) + v290++);
                v289 = *this;
              }

              while (v290 < **this);
            }

            break;
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
            google::protobuf::internal::LogMessage::LogMessage(v315, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 1966);
            v32 = google::protobuf::internal::LogMessage::operator<<(v315, "Non-primitive types can't be packed.");
            google::protobuf::internal::LogFinisher::operator=(&v314, &v32->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v315[0].__r_.__value_.__l.__data_);
            break;
          case 0xD:
            v269 = *this;
            if (**this >= 1)
            {
              v270 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v269 = *this;
                }

                v271 = *(*(v269 + 8) + 4 * v270);
                if (v271 > 0x7F)
                {
                  *v6 = v271 | 0x80;
                  v272 = v271 >> 7;
                  if (v271 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v272 | 0x80;
                      v273 = v272 >> 7;
                      ++v6;
                      v274 = v272 >> 14;
                      v272 >>= 7;
                    }

                    while (v274);
                    *(v6 - 1) = v273;
                  }

                  else
                  {
                    v6[1] = v272;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v271;
                }

                ++v270;
                v269 = *this;
              }

              while (v270 < **this);
            }

            break;
          case 0xE:
            v302 = *this;
            if (**this >= 1)
            {
              v303 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v302 = *this;
                }

                v304 = *(*(v302 + 8) + 4 * v303);
                if (v304 > 0x7F)
                {
                  *v6 = v304 | 0x80;
                  v305 = v304 >> 7;
                  if (v304 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v305 | 0x80;
                      v306 = v305 >> 7;
                      ++v6;
                      v307 = v305 >> 14;
                      v305 >>= 7;
                    }

                    while (v307);
                    *(v6 - 1) = v306;
                  }

                  else
                  {
                    v6[1] = v305;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v304;
                }

                ++v303;
                v302 = *this;
              }

              while (v303 < **this);
            }

            break;
          case 0xF:
            v261 = *this;
            if (**this >= 1)
            {
              v262 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v261 = *this;
                }

                *v6 = *(*(v261 + 8) + 4 * v262);
                v6 += 4;
                ++v262;
                v261 = *this;
              }

              while (v262 < **this);
            }

            break;
          case 0x10:
            v281 = *this;
            if (**this >= 1)
            {
              v282 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v281 = *this;
                }

                *v6 = *(*(v281 + 8) + 8 * v282);
                v6 += 8;
                ++v282;
                v281 = *this;
              }

              while (v282 < **this);
            }

            break;
          case 0x11:
            v254 = *this;
            if (**this >= 1)
            {
              v255 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v254 = *this;
                }

                v256 = *(*(v254 + 8) + 4 * v255);
                v257 = (2 * v256) ^ (v256 >> 31);
                if (v257 > 0x7F)
                {
                  *v6 = v257 | 0x80;
                  v258 = v257 >> 7;
                  if (v257 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v258 | 0x80;
                      v259 = v258 >> 7;
                      ++v6;
                      v260 = v258 >> 14;
                      v258 >>= 7;
                    }

                    while (v260);
                    *(v6 - 1) = v259;
                  }

                  else
                  {
                    v6[1] = v258;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v257;
                }

                ++v255;
                v254 = *this;
              }

              while (v255 < **this);
            }

            break;
          case 0x12:
            v295 = *this;
            if (**this >= 1)
            {
              v296 = 0;
              do
              {
                if (*a4 <= v6)
                {
                  v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                  v295 = *this;
                }

                v297 = *(*(v295 + 8) + 8 * v296);
                v298 = (2 * v297) ^ (v297 >> 63);
                if (v298 > 0x7F)
                {
                  *v6 = v298 | 0x80;
                  v299 = v298 >> 7;
                  if (v298 >> 14)
                  {
                    v6 += 2;
                    do
                    {
                      *(v6 - 1) = v299 | 0x80;
                      v300 = v299 >> 7;
                      ++v6;
                      v301 = v299 >> 14;
                      v299 >>= 7;
                    }

                    while (v301);
                    *(v6 - 1) = v300;
                  }

                  else
                  {
                    v6[1] = v299;
                    v6 += 2;
                  }
                }

                else
                {
                  *v6++ = v298;
                }

                ++v296;
                v295 = *this;
              }

              while (v296 < **this);
            }

            break;
          default:
            return v6;
        }
      }
    }

    else
    {
      switch(*(this + 8))
      {
        case 1:
          v12 = *this;
          if (**this >= 1)
          {
            v13 = 0;
            v14 = 8 * a2;
            v15 = (8 * a2) | 0x81;
            v16 = (a2 >> 4) & 0x1FFFFFF;
            v17 = (8 * a2) | 1;
            v18 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v12 = *this;
              }

              v19 = *(*(v12 + 8) + 8 * v13);
              if (v14 > 0x7F)
              {
                *v6 = v15;
                if (v14 >= 0x4000)
                {
                  v20 = v6 + 2;
                  v21 = v16;
                  do
                  {
                    *(v20 - 1) = v21 | 0x80;
                    v22 = v21 >> 7;
                    v20 = (v20 + 1);
                    v23 = v21 >> 14;
                    v21 >>= 7;
                  }

                  while (v23);
                  *(v20 - 1) = v22;
                }

                else
                {
                  v6[1] = v18;
                  v20 = v6 + 2;
                }
              }

              else
              {
                *v6 = v17;
                v20 = v6 + 1;
              }

              *v20 = v19;
              v6 = (v20 + 1);
              ++v13;
              v12 = *this;
            }

            while (v13 < **this);
          }

          break;
        case 2:
          v168 = *this;
          if (**this >= 1)
          {
            v169 = 0;
            v170 = 8 * a2;
            v171 = (a2 >> 4) & 0x1FFFFFF;
            v172 = (8 * a2) | 5;
            v173 = (8 * a2) >> 7;
            v174 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v168 = *this;
              }

              v175 = *(*(v168 + 8) + 4 * v169);
              if (v170 > 0x7F)
              {
                *v6 = v174;
                if (v170 >= 0x4000)
                {
                  v176 = v6 + 2;
                  v177 = v171;
                  do
                  {
                    *(v176 - 1) = v177 | 0x80;
                    v178 = v177 >> 7;
                    v176 = (v176 + 1);
                    v179 = v177 >> 14;
                    v177 >>= 7;
                  }

                  while (v179);
                  *(v176 - 1) = v178;
                }

                else
                {
                  v6[1] = v173;
                  v176 = v6 + 2;
                }
              }

              else
              {
                *v6 = v172;
                v176 = v6 + 1;
              }

              *v176 = v175;
              v6 = (v176 + 1);
              ++v169;
              v168 = *this;
            }

            while (v169 < **this);
          }

          break;
        case 3:
          v113 = *this;
          if (**this >= 1)
          {
            v114 = 0;
            v115 = 8 * a2;
            v116 = (8 * a2) | 0x80;
            v117 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v113 = *this;
              }

              v118 = *(*(v113 + 8) + 8 * v114);
              if (v115 > 0x7F)
              {
                *v6 = v116;
                if (v115 >= 0x4000)
                {
                  v119 = v6 + 2;
                  v120 = v117;
                  do
                  {
                    *(v119 - 1) = v120 | 0x80;
                    v121 = v120 >> 7;
                    ++v119;
                    v122 = v120 >> 14;
                    v120 >>= 7;
                  }

                  while (v122);
                  *(v119 - 1) = v121;
                }

                else
                {
                  v6[1] = v115 >> 7;
                  v119 = v6 + 2;
                }
              }

              else
              {
                v119 = v6 + 1;
                *v6 = v115;
              }

              if (v118 > 0x7F)
              {
                *v119 = v118 | 0x80;
                v123 = v118 >> 7;
                if (v118 >> 14)
                {
                  v6 = v119 + 2;
                  do
                  {
                    *(v6 - 1) = v123 | 0x80;
                    v124 = v123 >> 7;
                    ++v6;
                    v125 = v123 >> 14;
                    v123 >>= 7;
                  }

                  while (v125);
                  *(v6 - 1) = v124;
                }

                else
                {
                  v119[1] = v123;
                  v6 = v119 + 2;
                }
              }

              else
              {
                *v119 = v118;
                v6 = v119 + 1;
              }

              ++v114;
              v113 = *this;
            }

            while (v114 < **this);
          }

          break;
        case 4:
          v144 = *this;
          if (**this >= 1)
          {
            v145 = 0;
            v146 = 8 * a2;
            v147 = (8 * a2) | 0x80;
            v148 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v144 = *this;
              }

              v149 = *(*(v144 + 8) + 8 * v145);
              if (v146 > 0x7F)
              {
                *v6 = v147;
                if (v146 >= 0x4000)
                {
                  v150 = v6 + 2;
                  v151 = v148;
                  do
                  {
                    *(v150 - 1) = v151 | 0x80;
                    v152 = v151 >> 7;
                    ++v150;
                    v153 = v151 >> 14;
                    v151 >>= 7;
                  }

                  while (v153);
                  *(v150 - 1) = v152;
                }

                else
                {
                  v6[1] = v146 >> 7;
                  v150 = v6 + 2;
                }
              }

              else
              {
                v150 = v6 + 1;
                *v6 = v146;
              }

              if (v149 > 0x7F)
              {
                *v150 = v149 | 0x80;
                v154 = v149 >> 7;
                if (v149 >> 14)
                {
                  v6 = v150 + 2;
                  do
                  {
                    *(v6 - 1) = v154 | 0x80;
                    v155 = v154 >> 7;
                    ++v6;
                    v156 = v154 >> 14;
                    v154 >>= 7;
                  }

                  while (v156);
                  *(v6 - 1) = v155;
                }

                else
                {
                  v150[1] = v154;
                  v6 = v150 + 2;
                }
              }

              else
              {
                *v150 = v149;
                v6 = v150 + 1;
              }

              ++v145;
              v144 = *this;
            }

            while (v145 < **this);
          }

          break;
        case 5:
          v66 = *this;
          if (**this >= 1)
          {
            v67 = 0;
            v68 = 8 * a2;
            v69 = (8 * a2) | 0x80;
            v70 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v66 = *this;
              }

              v71 = *(*(v66 + 8) + 4 * v67);
              if (v68 > 0x7F)
              {
                *v6 = v69;
                if (v68 >= 0x4000)
                {
                  v72 = v6 + 2;
                  v73 = v70;
                  do
                  {
                    *(v72 - 1) = v73 | 0x80;
                    v74 = v73 >> 7;
                    ++v72;
                    v75 = v73 >> 14;
                    v73 >>= 7;
                  }

                  while (v75);
                  *(v72 - 1) = v74;
                }

                else
                {
                  v6[1] = v68 >> 7;
                  v72 = v6 + 2;
                }
              }

              else
              {
                v72 = v6 + 1;
                *v6 = v68;
              }

              if (v71 > 0x7F)
              {
                *v72 = v71 | 0x80;
                v76 = v71 >> 7;
                if (v71 >> 14)
                {
                  v6 = v72 + 2;
                  do
                  {
                    *(v6 - 1) = v76 | 0x80;
                    v77 = v76 >> 7;
                    ++v6;
                    v78 = v76 >> 14;
                    v76 >>= 7;
                  }

                  while (v78);
                  *(v6 - 1) = v77;
                }

                else
                {
                  v72[1] = v76;
                  v6 = v72 + 2;
                }
              }

              else
              {
                *v72 = v71;
                v6 = v72 + 1;
              }

              ++v67;
              v66 = *this;
            }

            while (v67 < **this);
          }

          break;
        case 6:
          v198 = *this;
          if (**this >= 1)
          {
            v199 = 0;
            v200 = 8 * a2;
            v201 = (8 * a2) | 0x81;
            v202 = (a2 >> 4) & 0x1FFFFFF;
            v203 = (8 * a2) | 1;
            v204 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v198 = *this;
              }

              v205 = *(*(v198 + 8) + 8 * v199);
              if (v200 > 0x7F)
              {
                *v6 = v201;
                if (v200 >= 0x4000)
                {
                  v206 = v6 + 2;
                  v207 = v202;
                  do
                  {
                    *(v206 - 1) = v207 | 0x80;
                    v208 = v207 >> 7;
                    v206 = (v206 + 1);
                    v209 = v207 >> 14;
                    v207 >>= 7;
                  }

                  while (v209);
                  *(v206 - 1) = v208;
                }

                else
                {
                  v6[1] = v204;
                  v206 = v6 + 2;
                }
              }

              else
              {
                *v6 = v203;
                v206 = v6 + 1;
              }

              *v206 = v205;
              v6 = (v206 + 1);
              ++v199;
              v198 = *this;
            }

            while (v199 < **this);
          }

          break;
        case 7:
          v223 = *this;
          if (**this >= 1)
          {
            v224 = 0;
            v225 = 8 * a2;
            v226 = (a2 >> 4) & 0x1FFFFFF;
            v227 = (8 * a2) | 5;
            v228 = (8 * a2) >> 7;
            v229 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v223 = *this;
              }

              v230 = *(*(v223 + 8) + 4 * v224);
              if (v225 > 0x7F)
              {
                *v6 = v229;
                if (v225 >= 0x4000)
                {
                  v231 = v6 + 2;
                  v232 = v226;
                  do
                  {
                    *(v231 - 1) = v232 | 0x80;
                    v233 = v232 >> 7;
                    v231 = (v231 + 1);
                    v234 = v232 >> 14;
                    v232 >>= 7;
                  }

                  while (v234);
                  *(v231 - 1) = v233;
                }

                else
                {
                  v6[1] = v228;
                  v231 = v6 + 2;
                }
              }

              else
              {
                *v6 = v227;
                v231 = v6 + 1;
              }

              *v231 = v230;
              v6 = (v231 + 1);
              ++v224;
              v223 = *this;
            }

            while (v224 < **this);
          }

          break;
        case 8:
          v157 = *this;
          if (**this >= 1)
          {
            v158 = 0;
            v159 = 8 * a2;
            v160 = (8 * a2) | 0x80;
            v161 = (a2 >> 4) & 0x1FFFFFF;
            v162 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v157 = *this;
              }

              v163 = *(*(v157 + 8) + v158);
              if (v159 > 0x7F)
              {
                *v6 = v160;
                if (v159 >= 0x4000)
                {
                  v164 = v6 + 2;
                  v165 = v161;
                  do
                  {
                    *(v164 - 1) = v165 | 0x80;
                    v166 = v165 >> 7;
                    ++v164;
                    v167 = v165 >> 14;
                    v165 >>= 7;
                  }

                  while (v167);
                  *(v164 - 1) = v166;
                }

                else
                {
                  v6[1] = v162;
                  v164 = v6 + 2;
                }
              }

              else
              {
                *v6 = v159;
                v164 = v6 + 1;
              }

              *v164 = v163;
              v6 = v164 + 1;
              ++v158;
              v157 = *this;
            }

            while (v158 < **this);
          }

          break;
        case 9:
          v252 = *this;
          if ((*this)[2] >= 1)
          {
            v253 = 0;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v252 = *this;
              }

              v6 = sub_276B32608(a4, v7, *(*(v252 + 16) + 8 * v253++ + 8), v6);
              v252 = *this;
            }

            while (v253 < (*this)[2]);
          }

          break;
        case 0xA:
          v96 = *this;
          if ((*this)[2] >= 1)
          {
            v97 = 0;
            v98 = 8 * a2;
            v313 = (8 * a2) | 0x83;
            v99 = (a2 >> 4) & 0x1FFFFFF;
            v100 = (8 * a2) | 3;
            v101 = (8 * a2) | 4;
            v102 = (8 * a2) >> 7;
            v103 = (8 * a2) | 0x84;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v96 = *this;
              }

              v104 = *(*(v96 + 16) + 8 * v97 + 8);
              if (v98 > 0x7F)
              {
                *v6 = v313;
                if (v98 >= 0x4000)
                {
                  v105 = v6 + 2;
                  v106 = v99;
                  do
                  {
                    *(v105 - 1) = v106 | 0x80;
                    v107 = v106 >> 7;
                    ++v105;
                    v108 = v106 >> 14;
                    v106 >>= 7;
                  }

                  while (v108);
                  *(v105 - 1) = v107;
                }

                else
                {
                  v6[1] = v102;
                  v105 = v6 + 2;
                }
              }

              else
              {
                v105 = v6 + 1;
                *v6 = v100;
              }

              v109 = (*(*v104 + 96))(v104, v105, a4);
              if (*a4 <= v109)
              {
                v109 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v109);
              }

              if (v98 > 0x7F)
              {
                *v109 = v103;
                if (v98 >= 0x4000)
                {
                  v6 = v109 + 2;
                  v110 = v99;
                  do
                  {
                    *(v6 - 1) = v110 | 0x80;
                    v111 = v110 >> 7;
                    ++v6;
                    v112 = v110 >> 14;
                    v110 >>= 7;
                  }

                  while (v112);
                  *(v6 - 1) = v111;
                }

                else
                {
                  v109[1] = v102;
                  v6 = v109 + 2;
                }
              }

              else
              {
                v6 = v109 + 1;
                *v109 = v101;
              }

              ++v97;
              v96 = *this;
            }

            while (v97 < (*this)[2]);
          }

          break;
        case 0xB:
          v235 = *this;
          if ((*this)[2] >= 1)
          {
            v236 = 0;
            v237 = 8 * a2;
            v238 = (a2 >> 4) & 0x1FFFFFF;
            v239 = (8 * a2) | 2;
            v240 = (8 * a2) | 0x82;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v235 = *this;
              }

              v241 = *(*(v235 + 16) + 8 * v236 + 8);
              if (v237 > 0x7F)
              {
                *v6 = v240;
                if (v237 >= 0x4000)
                {
                  v242 = v6 + 2;
                  v243 = v238;
                  do
                  {
                    *(v242 - 1) = v243 | 0x80;
                    v244 = v243 >> 7;
                    ++v242;
                    v245 = v243 >> 14;
                    v243 >>= 7;
                  }

                  while (v245);
                  *(v242 - 1) = v244;
                }

                else
                {
                  v6[1] = v237 >> 7;
                  v242 = v6 + 2;
                }
              }

              else
              {
                v242 = v6 + 1;
                *v6 = v239;
              }

              v246 = (*(*v241 + 80))(v241);
              if (v246 > 0x7F)
              {
                *v242 = v246 | 0x80;
                v248 = v246 >> 7;
                if (v246 >> 14)
                {
                  v247 = v242 + 2;
                  do
                  {
                    *(v247 - 1) = v248 | 0x80;
                    v249 = v248 >> 7;
                    ++v247;
                    v250 = v248 >> 14;
                    v248 >>= 7;
                  }

                  while (v250);
                  *(v247 - 1) = v249;
                }

                else
                {
                  v242[1] = v248;
                  v247 = v242 + 2;
                }
              }

              else
              {
                *v242 = v246;
                v247 = v242 + 1;
              }

              v6 = (*(*v241 + 96))(v241, v247, a4);
              ++v236;
              v235 = *this;
            }

            while (v236 < (*this)[2]);
          }

          break;
        case 0xC:
          v63 = *this;
          if ((*this)[2] >= 1)
          {
            v64 = 0;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v63 = *this;
              }

              v6 = sub_276B32608(a4, v7, *(*(v63 + 16) + 8 * v64++ + 8), v6);
              v63 = *this;
            }

            while (v64 < (*this)[2]);
          }

          break;
        case 0xD:
          v79 = *this;
          if (**this >= 1)
          {
            v80 = 0;
            v81 = 8 * a2;
            v82 = (8 * a2) | 0x80;
            v83 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v79 = *this;
              }

              v84 = *(*(v79 + 8) + 4 * v80);
              if (v81 > 0x7F)
              {
                *v6 = v82;
                if (v81 >= 0x4000)
                {
                  v85 = v6 + 2;
                  v86 = v83;
                  do
                  {
                    *(v85 - 1) = v86 | 0x80;
                    v87 = v86 >> 7;
                    ++v85;
                    v88 = v86 >> 14;
                    v86 >>= 7;
                  }

                  while (v88);
                  *(v85 - 1) = v87;
                }

                else
                {
                  v6[1] = v81 >> 7;
                  v85 = v6 + 2;
                }
              }

              else
              {
                v85 = v6 + 1;
                *v6 = v81;
              }

              if (v84 > 0x7F)
              {
                *v85 = v84 | 0x80;
                v89 = v84 >> 7;
                if (v84 >> 14)
                {
                  v6 = v85 + 2;
                  do
                  {
                    *(v6 - 1) = v89 | 0x80;
                    v90 = v89 >> 7;
                    ++v6;
                    v91 = v89 >> 14;
                    v89 >>= 7;
                  }

                  while (v91);
                  *(v6 - 1) = v90;
                }

                else
                {
                  v85[1] = v89;
                  v6 = v85 + 2;
                }
              }

              else
              {
                *v85 = v84;
                v6 = v85 + 1;
              }

              ++v80;
              v79 = *this;
            }

            while (v80 < **this);
          }

          break;
        case 0xE:
          v210 = *this;
          if (**this >= 1)
          {
            v211 = 0;
            v212 = 8 * a2;
            v213 = (8 * a2) | 0x80;
            v214 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v210 = *this;
              }

              v215 = *(*(v210 + 8) + 4 * v211);
              if (v212 > 0x7F)
              {
                *v6 = v213;
                if (v212 >= 0x4000)
                {
                  v216 = v6 + 2;
                  v217 = v214;
                  do
                  {
                    *(v216 - 1) = v217 | 0x80;
                    v218 = v217 >> 7;
                    ++v216;
                    v219 = v217 >> 14;
                    v217 >>= 7;
                  }

                  while (v219);
                  *(v216 - 1) = v218;
                }

                else
                {
                  v6[1] = v212 >> 7;
                  v216 = v6 + 2;
                }
              }

              else
              {
                v216 = v6 + 1;
                *v6 = v212;
              }

              if (v215 > 0x7F)
              {
                *v216 = v215 | 0x80;
                v220 = v215 >> 7;
                if (v215 >> 14)
                {
                  v6 = v216 + 2;
                  do
                  {
                    *(v6 - 1) = v220 | 0x80;
                    v221 = v220 >> 7;
                    ++v6;
                    v222 = v220 >> 14;
                    v220 >>= 7;
                  }

                  while (v222);
                  *(v6 - 1) = v221;
                }

                else
                {
                  v216[1] = v220;
                  v6 = v216 + 2;
                }
              }

              else
              {
                *v216 = v215;
                v6 = v216 + 1;
              }

              ++v211;
              v210 = *this;
            }

            while (v211 < **this);
          }

          break;
        case 0xF:
          v48 = *this;
          if (**this >= 1)
          {
            v49 = 0;
            v50 = 8 * a2;
            v51 = (a2 >> 4) & 0x1FFFFFF;
            v52 = (8 * a2) | 5;
            v53 = (8 * a2) >> 7;
            v54 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v48 = *this;
              }

              v55 = *(*(v48 + 8) + 4 * v49);
              if (v50 > 0x7F)
              {
                *v6 = v54;
                if (v50 >= 0x4000)
                {
                  v56 = v6 + 2;
                  v57 = v51;
                  do
                  {
                    *(v56 - 1) = v57 | 0x80;
                    v58 = v57 >> 7;
                    v56 = (v56 + 1);
                    v59 = v57 >> 14;
                    v57 >>= 7;
                  }

                  while (v59);
                  *(v56 - 1) = v58;
                }

                else
                {
                  v6[1] = v53;
                  v56 = v6 + 2;
                }
              }

              else
              {
                *v6 = v52;
                v56 = v6 + 1;
              }

              *v56 = v55;
              v6 = (v56 + 1);
              ++v49;
              v48 = *this;
            }

            while (v49 < **this);
          }

          break;
        case 0x10:
          v129 = *this;
          if (**this >= 1)
          {
            v130 = 0;
            v131 = 8 * a2;
            v132 = (8 * a2) | 0x81;
            v133 = (a2 >> 4) & 0x1FFFFFF;
            v134 = (8 * a2) | 1;
            v135 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v129 = *this;
              }

              v136 = *(*(v129 + 8) + 8 * v130);
              if (v131 > 0x7F)
              {
                *v6 = v132;
                if (v131 >= 0x4000)
                {
                  v137 = v6 + 2;
                  v138 = v133;
                  do
                  {
                    *(v137 - 1) = v138 | 0x80;
                    v139 = v138 >> 7;
                    v137 = (v137 + 1);
                    v140 = v138 >> 14;
                    v138 >>= 7;
                  }

                  while (v140);
                  *(v137 - 1) = v139;
                }

                else
                {
                  v6[1] = v135;
                  v137 = v6 + 2;
                }
              }

              else
              {
                *v6 = v134;
                v137 = v6 + 1;
              }

              *v137 = v136;
              v6 = (v137 + 1);
              ++v130;
              v129 = *this;
            }

            while (v130 < **this);
          }

          break;
        case 0x11:
          v33 = *this;
          if (**this >= 1)
          {
            v34 = 0;
            v35 = 8 * a2;
            v36 = (8 * a2) | 0x80;
            v37 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v33 = *this;
              }

              v38 = *(*(v33 + 8) + 4 * v34);
              if (v35 > 0x7F)
              {
                *v6 = v36;
                if (v35 >= 0x4000)
                {
                  v39 = v6 + 2;
                  v40 = v37;
                  do
                  {
                    *(v39 - 1) = v40 | 0x80;
                    v41 = v40 >> 7;
                    ++v39;
                    v42 = v40 >> 14;
                    v40 >>= 7;
                  }

                  while (v42);
                  *(v39 - 1) = v41;
                }

                else
                {
                  v6[1] = v35 >> 7;
                  v39 = v6 + 2;
                }
              }

              else
              {
                v39 = v6 + 1;
                *v6 = v35;
              }

              v43 = (2 * v38) ^ (v38 >> 31);
              if (v43 > 0x7F)
              {
                *v39 = v43 | 0x80;
                v44 = v43 >> 7;
                if (v43 >> 14)
                {
                  v6 = v39 + 2;
                  do
                  {
                    *(v6 - 1) = v44 | 0x80;
                    v45 = v44 >> 7;
                    ++v6;
                    v46 = v44 >> 14;
                    v44 >>= 7;
                  }

                  while (v46);
                  *(v6 - 1) = v45;
                }

                else
                {
                  v39[1] = v44;
                  v6 = v39 + 2;
                }
              }

              else
              {
                *v39 = v43;
                v6 = v39 + 1;
              }

              ++v34;
              v33 = *this;
            }

            while (v34 < **this);
          }

          break;
        case 0x12:
          v183 = *this;
          if (**this >= 1)
          {
            v184 = 0;
            v185 = 8 * a2;
            v186 = (8 * a2) | 0x80;
            v187 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v6)
              {
                v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v6);
                v183 = *this;
              }

              v188 = *(*(v183 + 8) + 8 * v184);
              if (v185 > 0x7F)
              {
                *v6 = v186;
                if (v185 >= 0x4000)
                {
                  v189 = v6 + 2;
                  v190 = v187;
                  do
                  {
                    *(v189 - 1) = v190 | 0x80;
                    v191 = v190 >> 7;
                    ++v189;
                    v192 = v190 >> 14;
                    v190 >>= 7;
                  }

                  while (v192);
                  *(v189 - 1) = v191;
                }

                else
                {
                  v6[1] = v185 >> 7;
                  v189 = v6 + 2;
                }
              }

              else
              {
                v189 = v6 + 1;
                *v6 = v185;
              }

              v193 = (2 * v188) ^ (v188 >> 63);
              if (v193 > 0x7F)
              {
                *v189 = v193 | 0x80;
                v194 = v193 >> 7;
                if (v193 >> 14)
                {
                  v6 = v189 + 2;
                  do
                  {
                    *(v6 - 1) = v194 | 0x80;
                    v195 = v194 >> 7;
                    ++v6;
                    v196 = v194 >> 14;
                    v194 >>= 7;
                  }

                  while (v196);
                  *(v6 - 1) = v195;
                }

                else
                {
                  v189[1] = v194;
                  v6 = v189 + 2;
                }
              }

              else
              {
                *v189 = v193;
                v6 = v189 + 1;
              }

              ++v184;
              v183 = *this;
            }

            while (v184 < **this);
          }

          break;
        default:
          return v6;
      }
    }

    return v6;
  }

  if (*(this + 10))
  {
    return v6;
  }

  switch(*(this + 8))
  {
    case 1:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v181 = *this;

      return sub_276B60D64(v7, v6, v181);
    case 2:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v182 = *this;

      return sub_276B60CF4(v7, v6, v182);
    case 3:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v126 = *this;
      v127 = v7;
      v128 = v6;

      return sub_276B6093C(v127, v126, v128);
    case 4:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v126 = *this;
      v127 = v7;
      v128 = v6;

      return sub_276B6093C(v127, v126, v128);
    case 5:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v93 = *this;
      v94 = v7;
      v95 = v6;

      goto LABEL_148;
    case 6:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v141 = *this;
      v142 = v7;
      v143 = v6;

      goto LABEL_213;
    case 7:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v60 = *this;
      v61 = v7;
      v62 = v6;

      goto LABEL_86;
    case 8:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v180 = *this;

      return sub_276B60DCC(v7, v180, v6);
    case 9:
    case 0xC:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v24 = *this;

      return sub_276B32608(a4, v7, v24, v6);
    case 0xA:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v251 = *this;

      return sub_276B60E30(v7, v251, v6, a4);
    case 0xB:
      if ((*(this + 10) & 0x10) != 0)
      {
        v312 = *(**this + 136);

        return v312(a5);
      }

      else
      {
        if (*a4 <= a3)
        {
          v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
        }

        v65 = *this;

        return sub_276B60F60(v7, v65, v6, a4);
      }

    case 0xD:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v92 = *this;

      return sub_276B609F0(v7, v92, v6);
    case 0xE:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v93 = *this;
      v94 = v7;
      v95 = v6;

LABEL_148:
      result = sub_276B60884(v94, v93, v95);
      break;
    case 0xF:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v60 = *this;
      v61 = v7;
      v62 = v6;

LABEL_86:
      result = sub_276B60C1C(v61, v60, v62);
      break;
    case 0x10:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v141 = *this;
      v142 = v7;
      v143 = v6;

LABEL_213:
      result = sub_276B60C8C(v142, v141, v143);
      break;
    case 0x11:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v47 = *this;

      result = sub_276B60AA4(v7, v47, v6);
      break;
    case 0x12:
      if (*a4 <= a3)
      {
        v6 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      v197 = *this;

      result = sub_276B60B60(v7, v197, v6);
      break;
    default:
      return v6;
  }

  return result;
}

void sub_276B5F83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::InternalSerializeMessageSetWithCachedSizesToArray(google::protobuf::internal::ExtensionSet *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v10 = a2;
  v5 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    sub_276B627E8(*v5, v5 + 1, &v10, a3);
    return v10;
  }

  else if (*(this + 5))
  {
    v6 = &v5[8 * *(this + 5)];
    v7 = *(this + 2);
    do
    {
      v8 = *v7;
      v7 += 8;
      v4 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeMessageSetItemWithCachedSizesToArray((v5 + 2), v8, v4, a3);
      v5 = v7;
    }

    while (v7 != v6);
  }

  return v4;
}

uint64_t google::protobuf::internal::ExtensionSet::ByteSize(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    sub_276B62880(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(this + 5))
  {
    v2 = 0;
    v3 = &v1[8 * *(this + 5)];
    v4 = *(this + 2);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t google::protobuf::internal::ExtensionSet::Extension::ByteSize(uint64_t **this, int a2)
{
  if (*(this + 9) == 1)
  {
    if (*(this + 11) == 1)
    {
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v7 = 8 * **this;
          goto LABEL_110;
        case 2:
        case 7:
        case 0xF:
          v7 = 4 * **this;
          goto LABEL_110;
        case 3:
          v68 = **this;
          if (v68 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v69 = (*this)[1];
          do
          {
            v70 = *v69++;
            v7 += (9 * (__clz(v70 | 1) ^ 0x3F) + 73) >> 6;
            --v68;
          }

          while (v68);
          goto LABEL_110;
        case 4:
          v71 = **this;
          if (v71 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v72 = (*this)[1];
          do
          {
            v73 = *v72++;
            v7 += (9 * (__clz(v73 | 1) ^ 0x3F) + 73) >> 6;
            --v71;
          }

          while (v71);
          goto LABEL_110;
        case 5:
          v51 = **this;
          if (v51 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v52 = (*this)[1];
          do
          {
            v54 = *v52++;
            v53 = v54;
            if (v54 < 0)
            {
              v55 = 10;
            }

            else
            {
              v55 = (9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6;
            }

            v7 += v55;
            --v51;
          }

          while (v51);
          goto LABEL_110;
        case 8:
          v7 = **this;
          goto LABEL_110;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          google::protobuf::internal::LogMessage::LogMessage(v87, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 1599);
          v3 = google::protobuf::internal::LogMessage::operator<<(v87, "Non-primitive types can't be packed.");
          google::protobuf::internal::LogFinisher::operator=(&v86, &v3->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v87[0].__r_.__value_.__l.__data_);
          goto LABEL_5;
        case 0xD:
          v19 = **this;
          if (v19 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v20 = (*this)[1];
          do
          {
            v21 = *v20++;
            v7 += (9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6;
            --v19;
          }

          while (v19);
          goto LABEL_110;
        case 0xE:
          v36 = **this;
          if (v36 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v37 = (*this)[1];
          do
          {
            v39 = *v37++;
            v38 = v39;
            if (v39 < 0)
            {
              v40 = 10;
            }

            else
            {
              v40 = (9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6;
            }

            v7 += v40;
            --v36;
          }

          while (v36);
          goto LABEL_110;
        case 0x11:
          v12 = **this;
          if (v12 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v13 = (*this)[1];
          do
          {
            v14 = *v13++;
            v7 += (9 * (__clz((2 * v14) ^ (v14 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            --v12;
          }

          while (v12);
          goto LABEL_110;
        case 0x12:
          v56 = **this;
          if (v56 < 1)
          {
            goto LABEL_5;
          }

          v7 = 0;
          v57 = (*this)[1];
          do
          {
            v58 = *v57++;
            v7 += (9 * (__clz((2 * v58) ^ (v58 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            --v56;
          }

          while (v56);
LABEL_110:
          *(this + 3) = v7;
          v74 = v7 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
          if (v7)
          {
            v4 = v74;
          }

          else
          {
            v4 = 0;
          }

          break;
        default:
LABEL_5:
          v4 = 0;
          *(this + 3) = 0;
          break;
      }
    }

    else
    {
      v5 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << (*(this + 8) == 10);
      switch(*(this + 8))
      {
        case 1:
        case 6:
        case 0x10:
          v6 = v5 + 8;
          goto LABEL_13;
        case 2:
        case 7:
        case 0xF:
          v6 = v5 + 4;
LABEL_13:
          v4 = v6 * **this;
          break;
        case 3:
          v62 = **this;
          v4 = v5 * v62;
          if (v62 >= 1)
          {
            v63 = (*this)[1];
            do
            {
              v64 = *v63++;
              v4 += (9 * (__clz(v64 | 1) ^ 0x3F) + 73) >> 6;
              --v62;
            }

            while (v62);
          }

          break;
        case 4:
          v65 = **this;
          v4 = v5 * v65;
          if (v65 >= 1)
          {
            v66 = (*this)[1];
            do
            {
              v67 = *v66++;
              v4 += (9 * (__clz(v67 | 1) ^ 0x3F) + 73) >> 6;
              --v65;
            }

            while (v65);
          }

          break;
        case 5:
          v46 = **this;
          v4 = v5 * v46;
          if (v46 >= 1)
          {
            v47 = (*this)[1];
            do
            {
              v49 = *v47++;
              v48 = v49;
              if (v49 < 0)
              {
                v50 = 10;
              }

              else
              {
                v50 = (9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6;
              }

              v4 += v50;
              --v46;
            }

            while (v46);
          }

          break;
        case 8:
          v4 = **this + **this * v5;
          break;
        case 9:
          v81 = *(*this + 2);
          v4 = v5 * v81;
          if (v81 >= 1)
          {
            v82 = ((*this)[2] + 8);
            do
            {
              v83 = *v82++;
              v84 = *(v83 + 23);
              v85 = *(v83 + 8);
              if ((v84 & 0x80u) == 0)
              {
                v85 = v84;
              }

              v4 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6);
              --v81;
            }

            while (v81);
          }

          break;
        case 0xA:
          v25 = *this;
          v26 = *(*this + 2);
          v4 = v5 * v26;
          if (v26 >= 1)
          {
            v27 = 0;
            do
            {
              v28 = *(*(v25 + 2) + 8 * v27 + 8);
              v4 += (*(*v28 + 72))(v28);
              ++v27;
              v25 = *this;
            }

            while (v27 < *(*this + 2));
          }

          break;
        case 0xB:
          v31 = *this;
          v32 = *(*this + 2);
          v4 = v5 * v32;
          if (v32 >= 1)
          {
            v33 = 0;
            do
            {
              v34 = *(*(v31 + 2) + 8 * v33 + 8);
              v35 = (*(*v34 + 72))(v34);
              v4 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
              ++v33;
              v31 = *this;
            }

            while (v33 < *(*this + 2));
          }

          break;
        case 0xC:
          v76 = *(*this + 2);
          v4 = v5 * v76;
          if (v76 >= 1)
          {
            v77 = ((*this)[2] + 8);
            do
            {
              v78 = *v77++;
              v79 = *(v78 + 23);
              v80 = *(v78 + 8);
              if ((v79 & 0x80u) == 0)
              {
                v80 = v79;
              }

              v4 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6);
              --v76;
            }

            while (v76);
          }

          break;
        case 0xD:
          v22 = **this;
          v4 = v5 * v22;
          if (v22 >= 1)
          {
            v23 = (*this)[1];
            do
            {
              v24 = *v23++;
              v4 += (9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6;
              --v22;
            }

            while (v22);
          }

          break;
        case 0xE:
          v41 = **this;
          v4 = v5 * v41;
          if (v41 >= 1)
          {
            v42 = (*this)[1];
            do
            {
              v44 = *v42++;
              v43 = v44;
              if (v44 < 0)
              {
                v45 = 10;
              }

              else
              {
                v45 = (9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6;
              }

              v4 += v45;
              --v41;
            }

            while (v41);
          }

          break;
        case 0x11:
          v15 = **this;
          v4 = v5 * v15;
          if (v15 >= 1)
          {
            v16 = (*this)[1];
            do
            {
              v17 = *v16++;
              v4 += (9 * (__clz((2 * v17) ^ (v17 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              --v15;
            }

            while (v15);
          }

          break;
        case 0x12:
          v59 = **this;
          v4 = v5 * v59;
          if (v59 >= 1)
          {
            v60 = (*this)[1];
            do
            {
              v61 = *v60++;
              v4 += (9 * (__clz((2 * v61) ^ (v61 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              --v59;
            }

            while (v59);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (*(this + 10))
  {
    return 0;
  }

  else
  {
    v4 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << (*(this + 8) == 10);
    switch(*(this + 8))
    {
      case 1:
      case 6:
      case 0x10:
        v4 += 8;
        return v4;
      case 2:
      case 7:
      case 0xF:
        v4 += 4;
        return v4;
      case 3:
      case 4:
        v8 = *this;
        goto LABEL_94;
      case 5:
      case 0xE:
        v9 = (9 * (__clz(*this | 1) ^ 0x1F) + 73) >> 6;
        if (*this >= 0)
        {
          v10 = v9;
        }

        else
        {
          v10 = 10;
        }

        v4 += v10;
        return v4;
      case 8:
        return ++v4;
      case 9:
      case 0xC:
        v11 = (*this)[1];
        if (*(*this + 23) >= 0)
        {
          v11 = *(*this + 23);
        }

        v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
        return v4;
      case 0xA:
        v4 += (*(**this + 72))();
        return v4;
      case 0xB:
        v29 = **this;
        if ((*(this + 10) & 0x10) != 0)
        {
          v30 = (*(v29 + 88))();
        }

        else
        {
          v30 = (*(v29 + 72))();
        }

        v4 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
        return v4;
      case 0xD:
        v18 = *this;
        goto LABEL_70;
      case 0x11:
        v18 = (2 * *this) ^ (*this >> 31);
LABEL_70:
        v4 += (9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6;
        break;
      case 0x12:
        v8 = (2 * *this) ^ (*this >> 63);
LABEL_94:
        v4 += (9 * (__clz(v8 | 1) ^ 0x3F) + 73) >> 6;
        break;
      default:
        return v4;
    }
  }

  return v4;
}

void sub_276B60394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *google::protobuf::internal::ExtensionSet::Extension::Free(_BYTE *this)
{
  v1 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[this[8]];
  if (this[9] == 1)
  {
    if (v1 > 5)
    {
      if (v1 > 8)
      {
        if (v1 == 9)
        {
          if (*this)
          {
            sub_276B4A5CC(*this);
            goto LABEL_27;
          }
        }

        else if (v1 == 10 && *this)
        {
          sub_276B55D34(*this);
          goto LABEL_27;
        }

        return this;
      }
    }

    else if (v1 <= 2 && v1 != 1 && v1 != 2)
    {
      return this;
    }

    v5 = *this;
    if (*this)
    {
      if (*(v5 + 4) >= 1)
      {
        v6 = *(v5 + 8);
        v8 = *(v6 - 8);
        v7 = (v6 - 8);
        if (!v8)
        {
          operator delete(v7);
        }
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (v1 == 10)
    {
      v3 = this[10];
      this = *this;
      if ((v3 & 0x10) != 0)
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      else
      {
        if (!this)
        {
          return this;
        }

        v4 = *(*this + 8);
      }

      return v4();
    }

    if (v1 == 9)
    {
      v2 = *this;
      if (*this)
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

LABEL_27:

        JUMPOUT(0x277C9F670);
      }
    }
  }

  return this;
}

uint64_t google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 2);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v6 + 40;
  if (v7 <= a2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

{
  v2 = *(this + 2);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v6 + 40;
  if (v7 <= a2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::RepeatedPrimitiveDefaults::default_instance(google::protobuf::internal::RepeatedPrimitiveDefaults *this)
{
  if ((atomic_load_explicit(&qword_280A52F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A52F40))
  {
    operator new();
  }

  return qword_280A52F38;
}

uint64_t google::protobuf::internal::RepeatedStringTypeTraits::GetDefaultRepeatedField(google::protobuf::internal::RepeatedStringTypeTraits *this)
{
  if ((atomic_load_explicit(&qword_280A52F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A52F50))
  {
    operator new();
  }

  return qword_280A52F48;
}

_BYTE *sub_276B60884(int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_276B6093C(int a1, unint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_276B609F0(int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  if (a2 > 0x7F)
  {
    *v4 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v4 + 2;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      v4[1] = v9;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = a2;
    return v4 + 1;
  }

  return v8;
}

_BYTE *sub_276B60AA4(int a1, int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  v8 = (2 * a2) ^ (a2 >> 31);
  if (v8 > 0x7F)
  {
    *v4 = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 2;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[1] = v10;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = v8;
    return v4 + 1;
  }

  return v9;
}

_BYTE *sub_276B60B60(int a1, uint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  v8 = (2 * a2) ^ (a2 >> 63);
  if (v8 > 0x7F)
  {
    *v4 = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 2;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[1] = v10;
      return v4 + 2;
    }
  }

  else
  {
    *v4 = v8;
    return v4 + 1;
  }

  return v9;
}

_DWORD *sub_276B60C1C(int a1, int a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x85;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3 | 5;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 4;
}

void *sub_276B60C8C(int a1, uint64_t a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x81;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3 | 1;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 8;
}

float *sub_276B60CF4(int a1, _BYTE *a2, float a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a2 = v3 | 0x85;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = (a2 + 2);
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a2[1] = v5;
      v4 = (a2 + 2);
    }
  }

  else
  {
    *a2 = v3 | 5;
    v4 = (a2 + 1);
  }

  *v4 = a3;
  return v4 + 1;
}

double *sub_276B60D64(int a1, _BYTE *a2, double a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a2 = v3 | 0x81;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = (a2 + 2);
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        v4 = (v4 + 1);
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a2[1] = v5;
      v4 = (a2 + 2);
    }
  }

  else
  {
    *a2 = v3 | 1;
    v4 = (a2 + 1);
  }

  *v4 = a3;
  return v4 + 1;
}

_BYTE *sub_276B60DCC(int a1, char a2, _BYTE *a3)
{
  v3 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = a3 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      a3[1] = v5;
      v4 = a3 + 2;
    }
  }

  else
  {
    *a3 = v3;
    v4 = a3 + 1;
  }

  *v4 = a2;
  return v4 + 1;
}

unsigned __int8 *sub_276B60E30(int a1, uint64_t a2, _BYTE *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = 8 * a1;
  v6 = (8 * a1) >> 7;
  v7 = (8 * a1) >> 14;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v5 | 0x83;
    if (v7)
    {
      v8 = a3 + 2;
      v9 = v5 >> 7;
      do
      {
        *(v8 - 1) = v9 | 0x80;
        v10 = v9 >> 7;
        ++v8;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
      *(v8 - 1) = v10;
    }

    else
    {
      a3[1] = v6;
      v8 = a3 + 2;
    }
  }

  else
  {
    *a3 = v5 | 3;
    v8 = a3 + 1;
  }

  v12 = (*(*a2 + 96))(a2, v8, a4);
  if (*a4 <= v12)
  {
    v12 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v12);
  }

  if (v5 > 0x7F)
  {
    *v12 = v5 | 0x84;
    if (v7)
    {
      v13 = v12 + 2;
      do
      {
        *(v13 - 1) = v6 | 0x80;
        v14 = v6 >> 7;
        ++v13;
        v15 = v6 >> 14;
        v6 >>= 7;
      }

      while (v15);
      *(v13 - 1) = v14;
    }

    else
    {
      v12[1] = v6;
      return v12 + 2;
    }
  }

  else
  {
    *v12 = v5 | 4;
    return v12 + 1;
  }

  return v13;
}

uint64_t sub_276B60F60(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v6 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a3 = v6 | 0x82;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      v7 = a3 + 2;
      do
      {
        *(v7 - 1) = v8 | 0x80;
        v9 = v8 >> 7;
        ++v7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
      *(v7 - 1) = v9;
    }

    else
    {
      a3[1] = v8;
      v7 = a3 + 2;
    }
  }

  else
  {
    *a3 = v6 | 2;
    v7 = a3 + 1;
  }

  v11 = (*(*a2 + 80))(a2);
  if (v11 > 0x7F)
  {
    *v7 = v11 | 0x80;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v7 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v7[1] = v13;
      v12 = v7 + 2;
    }
  }

  else
  {
    *v7 = v11;
    v12 = v7 + 1;
  }

  v16 = *(*a2 + 96);

  return v16(a2, v12, a4);
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeMessageSetItemWithCachedSizesToArray(google::protobuf::internal::ExtensionSet::Extension *this, uint64_t a2, unsigned __int8 *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a3;
  if (*(this + 8) == 11 && *(this + 9) != 1)
  {
    if ((*(this + 10) & 1) == 0)
    {
      if (*a4 <= a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, a3);
      }

      *v5 = 4107;
      if (a2 > 0x7F)
      {
        v5[2] = a2 | 0x80;
        v12 = a2 >> 7;
        if (a2 >> 14)
        {
          v11 = v5 + 4;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v5[3] = v12;
          v11 = v5 + 4;
        }
      }

      else
      {
        v5[2] = a2;
        v11 = v5 + 3;
      }

      v15 = *this;
      if ((*(this + 10) & 0x10) != 0)
      {
        v18 = (*(*v15 + 136))(*this, 3, v11, a4);
      }

      else
      {
        *v11 = 26;
        v16 = (*(*v15 + 80))(v15);
        if (v16 > 0x7F)
        {
          v11[1] = v16 | 0x80;
          v19 = v16 >> 7;
          if (v16 >> 14)
          {
            v17 = v11 + 3;
            do
            {
              *(v17 - 1) = v19 | 0x80;
              v20 = v19 >> 7;
              ++v17;
              v21 = v19 >> 14;
              v19 >>= 7;
            }

            while (v21);
            *(v17 - 1) = v20;
          }

          else
          {
            v11[2] = v19;
            v17 = v11 + 3;
          }
        }

        else
        {
          v11[1] = v16;
          v17 = v11 + 2;
        }

        v18 = (*(*v15 + 96))(v15, v17, a4);
      }

      v22 = v18;
      if (*a4 <= v18)
      {
        v22 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a4, v18);
      }

      *v22 = 12;
      return (v22 + 1);
    }
  }

  else
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 1, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/extension_set.cc", 2076);
    v8 = google::protobuf::internal::LogMessage::operator<<(v24, "Invalid message set extension.");
    google::protobuf::internal::LogFinisher::operator=(&v23, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
    return google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(this, a2, v5, a4, v9);
  }

  return v5;
}

void sub_276B61304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unint64_t google::protobuf::internal::ExtensionSet::Extension::MessageSetItemByteSize(uint64_t **this, int a2)
{
  if (*(this + 8) == 11 && *(this + 9) != 1)
  {
    if (*(this + 10))
    {
      return 0;
    }

    else
    {
      v4 = ((9 * (__clz(a2 | 1) ^ 0x1F) + 73) >> 6) + 4;
      v5 = **this;
      if ((*(this + 10) & 0x10) != 0)
      {
        v6 = (*(v5 + 88))();
      }

      else
      {
        v6 = (*(v5 + 72))();
      }

      return v4 + v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
    }
  }

  else
  {

    return google::protobuf::internal::ExtensionSet::Extension::ByteSize(this, a2);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::MessageSetByteSize(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    sub_276B62EFC(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(this + 5))
  {
    v2 = 0;
    v3 = &v1[8 * *(this + 5)];
    v4 = *(this + 2);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += google::protobuf::internal::ExtensionSet::Extension::MessageSetItemByteSize(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_276B614EC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    JUMPOUT(0x277C9F670);
  }

  return result;
}

void *sub_276B61560(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_276B615A8(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return (v3 + 8);
}

double sub_276B615A8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_276B615EC(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

void *sub_276B615EC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8C38(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276B61674);
}

void sub_276B61674(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

uint64_t sub_276B61688(google::protobuf::Arena *this, unint64_t a2)
{
  if (a2 >> 59)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/arena.h", 558);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (num_elements) <= (std::numeric_limits<size_t>::max() / sizeof(T)): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Requested size is too large to fit into size_t.");
    google::protobuf::internal::LogFinisher::operator=(&v8, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  v6 = 32 * a2;
  if (*(this + 24))
  {
    sub_276BD8C74(this);
  }

  return google::protobuf::Arena::AllocateAlignedNoHook(this, v6);
}

void sub_276B6172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_276B61744(_BYTE *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Free(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

_DWORD *sub_276B617B4(void *a1, void *a2, _DWORD *a3)
{
  if (a1 != a2)
  {
    do
    {
      if ((*(a1 + 50) & 1) == 0)
      {
        ++*a3;
      }

      v3 = a1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = a1[2];
          v5 = *v4 == a1;
          a1 = v4;
        }

        while (!v5);
      }

      a1 = v4;
    }

    while (v4 != a2);
  }

  return a3;
}

void *sub_276B61810(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61860(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61860(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8CB4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B618E8);
}

void sub_276B618E8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61908(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61958(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61958(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8CE4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B619E0);
}

void sub_276B619E0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61A00(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61A50(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61A50(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8D14(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B61AD8);
}

void sub_276B61AD8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61AF8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61B48(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61B48(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8D44(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B61BD0);
}

void sub_276B61BD0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61BF0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61C40(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61C40(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8D74(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B61CC8);
}

void sub_276B61CC8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61CE8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61D38(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61D38(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8DA4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B61DC0);
}

void sub_276B61DC0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void *sub_276B61DE0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61E30(a1, 0);
  *result = 0;
  result[1] = a1;
  return result;
}

void *sub_276B61E30(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8DD4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x10uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x10uLL, sub_276B61EB8);
}

void sub_276B61EB8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

google::protobuf::Arena **sub_276B61ED8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B61F34(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_276B61F34(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8E04(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_276B61FBC);
}

google::protobuf::Arena **sub_276B61FD8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B62034(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_276B62034(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8E34(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_276B620BC);
}

uint64_t sub_276B620C0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *sub_276B620EC(google::protobuf::internal::RepeatedPtrFieldBase *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (!v2)
  {
    return sub_276B62140(result, a2);
  }

  v3 = *v2;
  if (v3 >= *(result + 3))
  {
    return sub_276B62140(result, a2);
  }

  v4 = v2 + 2;
  v5 = *(result + 2);
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  *(result + 2) = v5 + 1;
  ++**(result + 2);
  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *sub_276B62140(google::protobuf::internal::RepeatedPtrFieldBase *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = *(this + 3);
    goto LABEL_11;
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  if (v5 == v6)
  {
LABEL_11:
    this = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v5 + 1);
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 2);
    v9 = *v4 + 1;
LABEL_13:
    *v4 = v9;
    goto LABEL_14;
  }

  this = *&v4[2 * v5 + 2];
  if (this)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    this = (*(*this + 8))(this);
    v4 = *(v3 + 2);
  }

LABEL_14:
  v10 = *(v3 + 2);
  *(v3 + 2) = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return this;
}

unsigned __int8 *sub_276B62220(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Clear(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

google::protobuf::internal::ExtensionSet *sub_276B62290(void *a1, void *a2, google::protobuf::internal::ExtensionSet *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, *(v5 + 8), v5 + 5);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return this;
}

google::protobuf::internal::EpsCopyInputStream *sub_276B62314(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x277C9F460](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::ReadStringFallback();
  }
}

uint64_t sub_276B62380(int32x2_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1[11].i32[0];
  v5 = __OFSUB__(v4--, 1);
  a1[11].i32[0] = v4;
  if (v4 < 0 != v5)
  {
    return 0;
  }

  ++a1[11].i32[1];
  result = (*(*a2 + 88))(a2, a3, a1);
  a1[11] = vadd_s32(a1[11], 0xFFFFFFFF00000001);
  v9 = a1[10].i32[0];
  a1[10].i32[0] = 0;
  if (v9 != a4)
  {
    return 0;
  }

  return result;
}

google::protobuf::internal *sub_276B62420(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = (this + 1);
    goto LABEL_5;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v7;
    while (1)
    {
LABEL_5:
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        v14 = (result + v5);
        v15 = a3[1];
        v17 = *a3;
        v18 = v15;
        v19 = *(a3 + 4);
        result = sub_276B6259C(result, v14, &v17);
        if (v14 != result)
        {
          return 0;
        }

        return result;
      }

      v10 = a3[1];
      v17 = *a3;
      v18 = v10;
      v19 = *(a3 + 4);
      result = sub_276B6259C(result, v8, &v17);
      if (!result)
      {
        return result;
      }

      v11 = *(a1 + 8);
      v12 = result - v11;
      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v9 - v12;
      result = (result + v12);
    }

    v22 = 0;
    v21 = 0;
    v20 = *v11;
    v16 = a3[1];
    v17 = *a3;
    v18 = v16;
    v19 = *(a3 + 4);
    if (sub_276B6259C((&v20 + v12), &v20 + v13, &v17) != (&v20 + v13))
    {
      return 0;
    }

    return (*(a1 + 8) + v13);
  }

  return result;
}

unsigned __int8 *sub_276B6259C(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
{
  v3 = this;
  if (this < a2)
  {
    do
    {
      v6 = *v3;
      if ((v6 & 0x8000000000000000) != 0)
      {
        v7 = (v3[1] << 7) + v6;
        v6 = (v7 - 128);
        if (v3[1] < 0)
        {
          v3 = google::protobuf::internal::VarintParseSlow64(v3, (v7 - 128));
          if (!v3)
          {
            return v3;
          }

          v6 = v8;
        }

        else
        {
          v3 += 2;
        }
      }

      else
      {
        ++v3;
      }

      if ((a3[1])(a3[2], v6))
      {
        v9 = *a3;
        v10 = **a3;
        if (v10 == (*a3)[1])
        {
          google::protobuf::RepeatedField<int>::Reserve();
        }

        *(*(v9 + 8) + 4 * v10) = v6;
        *v9 = v10 + 1;
      }

      else
      {
        v11 = *(a3 + 8);
        v12 = a3[3];
        if (*v12)
        {
          v13 = ((*v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v13 = sub_276B61560(v12);
        }

        google::protobuf::internal::WriteVarint(v11, v6, v13);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

uint64_t sub_276B626C0(uint64_t a1, int a2, const char *a3, char **a4, uint64_t *a5)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  *(a1 + 80) = -NAN;
  *(a1 + 88) = a2;
  *(a1 + 92) = 0x80000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_276B280C4(v8, a5, a3);
  *a4 = sub_276B62734(a1, v8[0], v8[1]);
  return a1;
}

char *sub_276B62734(uint64_t a1, char *__src, int64_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 17)
  {
    *(a1 + 28) = 16;
    v6 = &__src[__n - 16];
    *a1 = v6;
    *(a1 + 8) = v6;
    *(a1 + 16) = a1 + 40;
    if (*(a1 + 72) != 1)
    {
      return __src;
    }

    v7 = 2;
    v8 = __src;
    goto LABEL_6;
  }

  v8 = (a1 + 40);
  memcpy((a1 + 40), __src, __n);
  *(a1 + 28) = 0;
  *a1 = &v8[__n];
  *(a1 + 8) = &v8[__n];
  *(a1 + 16) = 0;
  if (*(a1 + 72) == 1)
  {
    v7 = __src - v8;
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

unsigned __int8 **sub_276B627E8(void *a1, void *a2, unsigned __int8 **a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    v8 = *a3;
    do
    {
      v8 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeMessageSetItemWithCachedSizesToArray((v7 + 5), *(v7 + 8), v8, a4);
      *a3 = v8;
      v9 = v7[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != a2);
  }

  return a3;
}

void *sub_276B62880(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v5 + 5, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *sub_276B6290C(uint64_t a1, int *a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void *sub_276B629D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B62A24(a1, 0);
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  return result;
}

void *sub_276B62A24(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8E64(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_276B62AAC);
}

uint64_t sub_276B62AB4(uint64_t **a1, uint64_t *a2, int *a3, _OWORD *a4)
{
  v4 = *sub_276B62B4C(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_276B62B4C(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_276B62CF4(uint64_t **a1, int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    if (*(v2 + 8) >= v3)
    {
      v4 = v2;
    }

    v2 = v2[*(v2 + 8) < v3];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < *(v4 + 8))
  {
    return 0;
  }

  sub_276A9A398(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t google::protobuf::internal::OnShutdownDelete<google::protobuf::internal::RepeatedPrimitiveDefaults>(google::protobuf::internal::RepeatedPrimitiveDefaults *)::{lambda(void const*)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    sub_276B62DB8(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276B62DB8(uint64_t a1)
{
  if (*(a1 + 100) >= 1)
  {
    v2 = *(a1 + 104);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(a1 + 84) >= 1)
  {
    v5 = *(a1 + 88);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(a1 + 68) >= 1)
  {
    v8 = *(a1 + 72);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(a1 + 52) >= 1)
  {
    v11 = *(a1 + 56);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  if (*(a1 + 36) >= 1)
  {
    v14 = *(a1 + 40);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }

  if (*(a1 + 20) >= 1)
  {
    v17 = *(a1 + 24);
    v19 = *(v17 - 8);
    v18 = (v17 - 8);
    if (!v19)
    {
      operator delete(v18);
    }
  }

  if (*(a1 + 4) >= 1)
  {
    v20 = *(a1 + 8);
    v22 = *(v20 - 8);
    v21 = (v20 - 8);
    if (!v22)
    {
      operator delete(v21);
    }
  }

  return a1;
}

void *google::protobuf::internal::OnShutdownDelete<google::protobuf::RepeatedPtrField<std::string>>(google::protobuf::RepeatedPtrField<std::string> *)::{lambda(void const*)#1}::__invoke(void *result)
{
  if (result)
  {
    sub_276B4A5CC(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

void *sub_276B62EFC(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += google::protobuf::internal::ExtensionSet::Extension::MessageSetItemByteSize(v5 + 5, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

void google::protobuf::internal::MapFieldBase::~MapFieldBase(google::protobuf::internal::MapFieldBase *this)
{
  *this = &unk_2885C7B80;
  v2 = *(this + 2);
  if (v2 && !*(this + 1))
  {
    sub_276B55D34(*(this + 2));
    MEMORY[0x277C9F670](v2, 0x1020C4014030ADELL);
  }

  std::mutex::~mutex((this + 24));
}

void google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(atomic_uint *this)
{
  explicit = atomic_load_explicit(this + 22, memory_order_acquire);
  if (explicit == 2)
  {
    v3 = (this + 6);
    std::mutex::lock((this + 6));
    if (this[22] == 2)
    {
      if (!*(this + 2))
      {
        v4 = *(this + 1);
        if (!v4)
        {
          operator new();
        }

        *(this + 2) = sub_276B672BC(v4);
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (explicit)
    {
      return;
    }

    v3 = (this + 6);
    std::mutex::lock((this + 6));
    if (!this[22])
    {
      (*(*this + 112))(this);
LABEL_11:
      atomic_store(2u, this + 22);
    }
  }

  std::mutex::unlock(v3);
}

uint64_t google::protobuf::internal::MapFieldBase::MutableRepeatedField(atomic_uint *this)
{
  google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMap(this);
  this[22] = 1;
  return *(this + 2);
}

uint64_t google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfLong(google::protobuf::internal::MapFieldBase *this)
{
  std::mutex::lock((this + 24));
  v2 = (*(*this + 104))(this);
  std::mutex::unlock((this + 24));
  return v2;
}

uint64_t google::protobuf::internal::MapFieldBase::SpaceUsedExcludingSelfNoLock(google::protobuf::internal::MapFieldBase *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 8 * *(v1 + 12);
  v3 = *(v1 + 16);
  if (v3)
  {
    if (*v3 >= 1)
    {
      v4 = 0;
      do
      {
        v2 += (*(**&v3[2 * v4 + 2] + 136))(*&v3[2 * v4 + 2]);
        ++v4;
        v3 = *(v1 + 16);
      }

      while (v4 < *v3);
    }

    v2 += 8;
  }

  return v2;
}

google::protobuf::Arena **google::protobuf::internal::MapFieldBase::SyncRepeatedFieldWithMapNoLock(google::protobuf::Arena **this)
{
  if (!this[2])
  {
    v1 = this;
    this = sub_276B672BC(this[1]);
    v1[2] = this;
  }

  return this;
}

void google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(google::protobuf::internal::MapFieldBase *this)
{
  if (atomic_load_explicit(this + 22, memory_order_acquire) == 1)
  {
    std::mutex::lock((this + 24));
    if (*(this + 22) == 1)
    {
      (*(*this + 120))(this);
      atomic_store(2u, this + 22);
    }

    std::mutex::unlock((this + 24));
  }
}

double google::protobuf::internal::DynamicMapField::DynamicMapField(google::protobuf::internal::DynamicMapField *this, const Message *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *this = &unk_2885C7C30;
  result = 0.0;
  *(this + 6) = xmmword_276C19EB0;
  *(this + 7) = xmmword_276C19EB0;
  *(this + 16) = &google::protobuf::internal::kGlobalEmptyTable;
  *(this + 17) = 0;
  *(this + 18) = a2;
  return result;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *this = &unk_2885C7C30;
  result = 0.0;
  *(this + 6) = xmmword_276C19EB0;
  *(this + 7) = xmmword_276C19EB0;
  *(this + 16) = &google::protobuf::internal::kGlobalEmptyTable;
  *(this + 17) = 0;
  *(this + 18) = a2;
  return result;
}

double google::protobuf::internal::DynamicMapField::DynamicMapField(google::protobuf::internal::DynamicMapField *this, const google::protobuf::Message *a2, google::protobuf::Arena *a3)
{
  v5 = sub_276B6770C(this, a3);
  *v5 = &unk_2885C7C30;
  result = 0.0;
  *(v5 + 96) = xmmword_276C19EB0;
  *(v5 + 112) = xmmword_276C19EB0;
  *(v5 + 128) = &google::protobuf::internal::kGlobalEmptyTable;
  *(v5 + 136) = a3;
  *(v5 + 144) = a2;
  return result;
}

{
  v5 = sub_276B6770C(this, a3);
  *v5 = &unk_2885C7C30;
  result = 0.0;
  *(v5 + 96) = xmmword_276C19EB0;
  *(v5 + 112) = xmmword_276C19EB0;
  *(v5 + 128) = &google::protobuf::internal::kGlobalEmptyTable;
  *(v5 + 136) = a3;
  *(v5 + 144) = a2;
  return result;
}

void google::protobuf::internal::DynamicMapField::~DynamicMapField(google::protobuf::internal::DynamicMapField *this)
{
  *this = &unk_2885C7C30;
  v2 = (this + 96);
  v3 = *(this + 15);
  v4 = *(this + 13);
  if (v4 > v3)
  {
    v5 = *(this + 16);
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        break;
      }

      if (v4 == ++v3)
      {
        goto LABEL_10;
      }
    }

    if (v6 == *(v5 + 8 * (v3 ^ 1)))
    {
      v6 = *(*v6 + 40);
      v7 = v6;
      v8 = this + 96;
      v9 = v3;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v7 = *(v5 + 8 * v3);
      v8 = this + 96;
      v9 = v3;
    }

    do
    {
      sub_276B635DC(v6 + 8);
      sub_276B67818(&v7);
      v6 = v7;
    }

    while (v7);
  }

LABEL_10:
  sub_276B67410(v2);
  sub_276B673BC(v2);
  google::protobuf::internal::MapFieldBase::~MapFieldBase(this);
}

{
  google::protobuf::internal::DynamicMapField::~DynamicMapField(this);

  JUMPOUT(0x277C9F670);
}

_DWORD *sub_276B635DC(_DWORD *result)
{
  v1 = result[2];
  if (v1 > 5)
  {
    if (v1 <= 7)
    {
      if (v1 == 6)
      {
        goto LABEL_20;
      }

      result = *result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v1 == 8)
      {
        goto LABEL_20;
      }

      if (v1 != 9)
      {
        if (v1 == 10)
        {
          result = *result;
          if (result)
          {
            v2 = *(*result + 8);

            return v2();
          }
        }

        return result;
      }

      v3 = *result;
      if (!*result)
      {
        return result;
      }

      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }
    }

LABEL_21:

    JUMPOUT(0x277C9F670);
  }

  if (v1 <= 2)
  {
    if (v1 != 1)
    {
      if (v1 != 2)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_20:
    result = *result;
    if (result)
    {
      goto LABEL_21;
    }

    return result;
  }

  if (v1 == 3)
  {
    goto LABEL_20;
  }

LABEL_15:
  result = *result;
  if (result)
  {
    goto LABEL_21;
  }

  return result;
}

void *google::protobuf::internal::DynamicMapField::Clear(google::protobuf::internal::DynamicMapField *this)
{
  v2 = (this + 96);
  if (!*(this + 1))
  {
    v3 = *(this + 15);
    v4 = *(this + 13);
    if (v4 > v3)
    {
      v5 = *(this + 16);
      while (1)
      {
        v6 = *(v5 + 8 * v3);
        if (v6)
        {
          break;
        }

        if (v4 == ++v3)
        {
          goto LABEL_11;
        }
      }

      if (v6 == *(v5 + 8 * (v3 ^ 1)))
      {
        v6 = *(*v6 + 40);
        v12 = v6;
        v13 = this + 96;
        v14 = v3;
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = *(v5 + 8 * v3);
        v13 = this + 96;
        v14 = v3;
      }

      do
      {
        sub_276B635DC(v6 + 8);
        sub_276B67818(&v12);
        v6 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  result = sub_276B67410(v2);
  v8 = *(this + 2);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9 >= 1)
    {
      v10 = (*(v8 + 16) + 8);
      do
      {
        v11 = *v10++;
        result = (*(*v11 + 40))(v11);
        --v9;
      }

      while (v9);
      *(v8 + 8) = 0;
    }
  }

  *(this + 22) = 0;
  return result;
}

BOOL google::protobuf::internal::DynamicMapField::ContainsMapKey(uint64_t a1, unsigned int *a2)
{
  v3 = (*(*a1 + 160))(a1);
  sub_276B6798C(v3, a2, 0, v5);
  return v5[0] != 0;
}

void google::protobuf::internal::DynamicMapField::AllocateMapValue(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 144) + 152))(*(a1 + 144));
  v5 = google::protobuf::Descriptor::map_value(v4);
  v6 = *(v5 + 48);
  if (v6)
  {
    v12 = v5;
    v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v6, memory_order_acquire) != -1)
    {
      v15 = &v13;
      v16 = &v12;
      v14 = &v15;
      std::__call_once(v6, &v14, sub_2769C149C);
    }

    v7 = *(v5 + 48);
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    *(a2 + 8) = v8;
    if (v7)
    {
      v12 = v5;
      v13 = google::protobuf::FieldDescriptor::TypeOnceInit;
      if (atomic_load_explicit(v7, memory_order_acquire) != -1)
      {
        v15 = &v13;
        v16 = &v12;
        v14 = &v15;
        std::__call_once(v7, &v14, sub_2769C149C);
      }

      v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    }
  }

  else
  {
    v8 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
    *(a2 + 8) = v8;
  }

  if (v8 > 5)
  {
    if (v8 <= 7)
    {
      if (v8 == 6)
      {
        v9 = sub_276B684AC(*(a1 + 8));
      }

      else
      {
        v9 = sub_276B68578(*(a1 + 8));
      }

      goto LABEL_29;
    }

    if (v8 != 8)
    {
      if (v8 == 9)
      {
        v9 = sub_2769C64F4(*(a1 + 8));
      }

      else
      {
        if (v8 != 10)
        {
          return;
        }

        (*(**(a1 + 144) + 152))(*(a1 + 144));
        Message = google::protobuf::Reflection::GetMessage(v10, *(a1 + 144), v5, 0);
        v9 = (*(*Message + 32))(Message, *(a1 + 8));
      }

      goto LABEL_29;
    }

LABEL_24:
    v9 = sub_276B680B0(*(a1 + 8));
    goto LABEL_29;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v9 = sub_276B68248(*(a1 + 8));
    }

    else if (v8 == 4)
    {
      v9 = sub_276B68314(*(a1 + 8));
    }

    else
    {
      v9 = sub_276B683E0(*(a1 + 8));
    }

    goto LABEL_29;
  }

  if (v8 == 1)
  {
    goto LABEL_24;
  }

  if (v8 != 2)
  {
    return;
  }

  v9 = sub_276B6817C(*(a1 + 8));
LABEL_29:
  *a2 = v9;
}

BOOL google::protobuf::internal::DynamicMapField::InsertOrLookupMapValue(__n128 *a1, unsigned int *a2, uint64_t a3)
{
  v6 = (*(a1->n128_u64[0] + 168))(a1);
  sub_276B6798C(v6, a2, 0, v10);
  v7 = v10[0];
  if (v10[0])
  {
    v8 = v10[0];
  }

  else
  {
    sub_276B68644(a1 + 6, a2, v10);
    v8 = v10[0];
    google::protobuf::internal::DynamicMapField::AllocateMapValue(a1, v10[0] + 32);
  }

  result = v7 == 0;
  *(a3 + 8) = *(v8 + 40);
  *a3 = *(v8 + 32);
  return result;
}

BOOL google::protobuf::internal::DynamicMapField::LookupMapValue(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = (*(*a1 + 160))(a1);
  sub_276B6798C(v5, a2, 0, v8);
  v6 = v8[0];
  if (v8[0])
  {
    *(a3 + 8) = *(v8[0] + 40);
    *a3 = *(v6 + 32);
  }

  return v6 != 0;
}

BOOL google::protobuf::internal::DynamicMapField::DeleteMapValue(uint64_t a1, unsigned int *a2)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  sub_276B6798C((a1 + 96), a2, 0, &v11);
  v4 = v11;
  v5 = v11;
  if (v11)
  {
    v6 = v12;
    *(a1 + 88) = 0;
    if (!*(a1 + 8))
    {
      v8 = v4;
      sub_276B635DC((v5 + 32));
      v4 = v8;
    }

    v9 = v4;
    v10 = v6;
    v11 = v4;
    v12 = v6;
    sub_276B67818(&v9);
    sub_276B69008((a1 + 96), &v11);
  }

  return v5 != 0;
}

uint64_t google::protobuf::internal::DynamicMapField::MutableMap(google::protobuf::internal::DynamicMapField *this)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(this);
  *(this + 22) = 0;
  return this + 96;
}

void google::protobuf::internal::DynamicMapField::SetMapIteratorValue(uint64_t a1, const std::string ***a2)
{
  v2 = **a2;
  if (v2)
  {
    sub_276B63E04((a2 + 2), **a2);
    *(a2 + 14) = v2[1].__r_.__value_.__r.__words[2];
    a2[6] = v2[1].__r_.__value_.__l.__size_;
  }
}

void sub_276B63E04(uint64_t a1, const std::string *a2)
{
  v4 = sub_276B66E74(a2);
  sub_276B67260(a1, v4);
  v5 = *(a1 + 24);
  if (v5 <= 3)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
LABEL_15:
        *a1 = a2->__r_.__value_.__r.__words[0];
        return;
      }

      if (v5 != 3)
      {
        return;
      }
    }

    *a1 = a2->__r_.__value_.__l.__data_;
    return;
  }

  if (v5 > 0xA)
  {
    goto LABEL_14;
  }

  if (((1 << v5) & 0x560) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 213);
    v6 = google::protobuf::internal::LogMessage::operator<<(v8, "Unsupported");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v6->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    return;
  }

  if (v5 == 7)
  {
    *a1 = a2->__r_.__value_.__s.__data_[0];
    return;
  }

  if (v5 != 9)
  {
LABEL_14:
    if (v5 != 4)
    {
      return;
    }

    goto LABEL_15;
  }

  std::string::operator=(a1, a2);
}

void sub_276B63F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int **google::protobuf::internal::DynamicMapField::MergeFrom(__n128 *this, const google::protobuf::internal::MapFieldBase *a2)
{
  result = (*(this->n128_u64[0] + 168))(this);
  v5 = *(a2 + 15);
  v6 = *(a2 + 13);
  if (v6 > v5)
  {
    v7 = result;
    v8 = *(a2 + 16);
    while (1)
    {
      v9 = *(v8 + 8 * v5);
      if (v9)
      {
        break;
      }

      if (v6 == ++v5)
      {
        return result;
      }
    }

    if (v9 == *(v8 + 8 * (v5 ^ 1)))
    {
      v9 = *(*v9 + 40);
      v26 = v9;
      v27 = a2 + 96;
      v28 = v5;
      if (!v9)
      {
        return result;
      }
    }

    else
    {
      v26 = *(v8 + 8 * v5);
      v27 = a2 + 96;
      v28 = v5;
    }

    do
    {
      sub_276B6798C(v7, v9, 0, v29);
      if (v29[0])
      {
        v10 = (v29[0] + 32);
      }

      else
      {
        sub_276B68644(this + 6, v26, v29);
        v10 = (v29[0] + 32);
        google::protobuf::internal::DynamicMapField::AllocateMapValue(this, v29[0] + 32);
      }

      v11 = (*(*this[9].n128_u64[0] + 152))(this[9].n128_u64[0]);
      v12 = google::protobuf::Descriptor::map_value(v11);
      v13 = *(v12 + 48);
      if (v13)
      {
        v30 = v12;
        v31 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v13, memory_order_acquire) != -1)
        {
          v29[0] = &v31;
          v29[1] = &v30;
          v32 = v29;
          std::__call_once(v13, &v32, sub_2769C149C);
        }
      }

      v14 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v12 + 56)];
      if (v14 > 5)
      {
        if (v14 <= 7)
        {
          if (v14 == 6)
          {
            v21 = sub_276B64B84((v26 + 8));
            sub_276B64A7C(v10, v21);
          }

          else
          {
            v19 = sub_276B64F84(v26 + 4);
            sub_276B64E84(v10, v19);
          }
        }

        else
        {
          switch(v14)
          {
            case 8:
              v23 = sub_276B6537C(v26 + 4);
              sub_276B6527C(v10, v23);
              break;
            case 9:
              v25 = sub_276B65184((v26 + 8));
              sub_276B65080(v10, v25);
              break;
            case 10:
              v16 = sub_276B65478(v10);
              v17 = sub_276B65570((v26 + 8));
              (*(*v16 + 112))(v16, v17);
              break;
          }
        }
      }

      else if (v14 <= 2)
      {
        if (v14 == 1)
        {
          v20 = sub_276B6438C(v26 + 4);
          sub_276B6428C(v10, v20);
        }

        else if (v14 == 2)
        {
          v18 = sub_276B64588((v26 + 8));
          sub_276B64488(v10, v18);
        }
      }

      else if (v14 == 3)
      {
        v22 = sub_276B64784(v26 + 4);
        sub_276B64684(v10, v22);
      }

      else if (v14 == 4)
      {
        v24 = sub_276B64980((v26 + 8));
        sub_276B64880(v10, v24);
      }

      else
      {
        v15 = sub_276B64D88((v26 + 8));
        sub_276B64C80(v10, v15);
      }

      result = sub_276B67818(&v26);
      v9 = v26;
    }

    while (v26);
  }

  return result;
}

void sub_276B6428C(_DWORD **a1, int a2)
{
  if (sub_276B66F14(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 783);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetInt32Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "int32");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B6438C(unsigned int **a1)
{
  if (sub_276B66F14(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 695);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B64470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64488(void **a1, uint64_t a2)
{
  if (sub_276B66F14(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 775);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetInt64Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "int64");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B64588(uint64_t a1)
{
  if (sub_276B66F14(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 685);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B6466C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64684(_DWORD **a1, int a2)
{
  if (sub_276B66F14(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 787);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetUInt32Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "uint32");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B6476C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B64784(unsigned int **a1)
{
  if (sub_276B66F14(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 700);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetUInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B64868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64880(void **a1, uint64_t a2)
{
  if (sub_276B66F14(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 779);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetUInt64Value");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "uint64");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B64980(uint64_t a1)
{
  if (sub_276B66F14(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 690);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetUInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B64A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64A7C(float **a1, float a2)
{
  if (sub_276B66F14(a1) != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 804);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetFloatValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "float");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

float sub_276B64B84(uint64_t a1)
{
  if (sub_276B66F14(a1) != 6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 718);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetFloatValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "float");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B64C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64C80(double **a1, double a2)
{
  if (sub_276B66F14(a1) != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 808);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetDoubleValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "double");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_276B64D88(uint64_t a1)
{
  if (sub_276B66F14(a1) != 5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 723);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetDoubleValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "double");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B64E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B64E84(_BYTE **a1, char a2)
{
  if (sub_276B66F14(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 791);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetBoolValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "BOOL");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B64F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B64F84(unsigned __int8 **a1)
{
  if (sub_276B66F14(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 704);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetBoolValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BOOL");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B65068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *sub_276B65080(std::string **a1, const std::string *a2)
{
  if (sub_276B66F14(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 800);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetStringValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "string");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  return std::string::operator=(*a1, a2);
}

void sub_276B6516C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B65184(uint64_t a1)
{
  if (sub_276B66F14(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 713);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetStringValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "string");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B65264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_276B6527C(_DWORD **a1, int a2)
{
  if (sub_276B66F14(a1) != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 796);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "Protocol Buffer map usage error:\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "MapValueRef::SetEnumValue");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, " type does not match\n");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "  Expected : ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "enum");
    v9 = google::protobuf::internal::LogMessage::operator<<(v8, "\n");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, "  Actual   : ");
    v11 = sub_276B66F14(a1);
    v12 = google::protobuf::internal::LogMessage::operator<<(v10, google::protobuf::FieldDescriptor::kCppTypeToName[v11]);
    google::protobuf::internal::LogFinisher::operator=(&v13, &v12->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  **a1 = a2;
}

void sub_276B65364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B6537C(unsigned int **a1)
{
  if (sub_276B66F14(a1) != 8)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 708);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetEnumValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "enum");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return **a1;
}

void sub_276B65460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B65478(uint64_t a1)
{
  if (sub_276B66F14(a1) != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 814);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueRef::MutableMessageValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "message");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B65558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B65570(uint64_t a1)
{
  if (sub_276B66F14(a1) != 10)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 729);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapValueConstRef::GetMessageValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "message");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66F14(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B65650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *google::protobuf::internal::DynamicMapField::Swap(google::protobuf::internal::DynamicMapField *this, google::protobuf::internal::MapFieldBase *a2)
{
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = sub_276B656B8(this + 12, a2 + 12);
  v6 = *(a2 + 22);
  *(a2 + 22) = *(this + 22);
  *(this + 22) = v6;
  return result;
}

uint64_t *sub_276B656B8(uint64_t *a1, uint64_t *a2)
{
  if (a1[5] == a2[5])
  {

    return sub_276B69158(a1, a2);
  }

  else
  {
    sub_276B691AC(v5, a1);
    sub_276B69278(a1, a2);
    sub_276B69278(a2, v5);
    return sub_276B673BC(v5);
  }
}

const google::protobuf::FieldDescriptor *google::protobuf::internal::DynamicMapField::SyncRepeatedFieldWithMapNoLock(google::protobuf::internal::DynamicMapField *this)
{
  (*(**(this + 18) + 152))(*(this + 18));
  v3 = v2;
  v4 = (*(**(this + 18) + 152))(*(this + 18));
  v5 = google::protobuf::Descriptor::map_key(v4);
  v6 = (*(**(this + 18) + 152))(*(this + 18));
  result = google::protobuf::Descriptor::map_value(v6);
  v8 = result;
  v9 = *(this + 2);
  if (!v9)
  {
    v10 = *(this + 1);
    if (!v10)
    {
      operator new();
    }

    result = sub_276B672BC(v10);
    v9 = result;
    *(this + 2) = result;
  }

  v11 = *(v9 + 2);
  if (v11 >= 1)
  {
    v12 = (*(v9 + 2) + 8);
    do
    {
      v13 = *v12++;
      result = (*(*v13 + 40))(v13);
      --v11;
    }

    while (v11);
    *(v9 + 2) = 0;
  }

  v14 = *(this + 15);
  v15 = *(this + 13);
  if (v15 > v14)
  {
    v16 = *(this + 16);
    while (1)
    {
      v17 = *(v16 + 8 * v14);
      if (v17)
      {
        break;
      }

      if (v15 == ++v14)
      {
        return result;
      }
    }

    if (v17 != *(v16 + 8 * (v14 ^ 1)))
    {
      v50 = *(v16 + 8 * v14);
      v51 = this + 96;
      v52 = v14;
      while (1)
      {
LABEL_17:
        v18 = (*(**(this + 18) + 32))(*(this + 18), *(this + 1));
        sub_276B693D8(*(this + 2), v18);
        v19 = v50;
        v20 = *(v5 + 48);
        if (v20)
        {
          v53 = v5;
          v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v20, memory_order_acquire) != -1)
          {
            v47[0].__r_.__value_.__r.__words[0] = &v54;
            v47[0].__r_.__value_.__l.__size_ = &v53;
            v55 = v47;
            std::__call_once(v20, &v55, sub_2769C149C);
          }
        }

        v21 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v5 + 56)];
        if (v21 <= 3)
        {
          switch(v21)
          {
            case 1:
              v27 = sub_276B65FDC(v19);
              google::protobuf::Reflection::SetInt32(v3, v18, v5, v27);
              break;
            case 2:
              v28 = sub_276B65EE4(v19);
              google::protobuf::Reflection::SetInt64(v3, v18, v5, v28);
              break;
            case 3:
              v23 = sub_276B661CC(v19);
              google::protobuf::Reflection::SetUInt32(v3, v18, v5, v23);
              break;
          }

          goto LABEL_40;
        }

        if (v21 > 0xA)
        {
          break;
        }

        if (((1 << v21) & 0x560) != 0)
        {
          google::protobuf::internal::LogMessage::LogMessage(v47, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/map_field.cc", 430);
          v22 = google::protobuf::internal::LogMessage::operator<<(v47, "Can't get here.");
          google::protobuf::internal::LogFinisher::operator=(&v55, &v22->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v47[0].__r_.__value_.__l.__data_);
        }

        else if (v21 == 7)
        {
          v29 = sub_276B662C4(v19);
          google::protobuf::Reflection::SetBool(v3, v18, v5, v29);
        }

        else
        {
          if (v21 != 9)
          {
            break;
          }

          v24 = sub_276B65DEC(v19);
          if (*(v24 + 23) < 0)
          {
            sub_276A07B90(__p, *v24, *(v24 + 8));
          }

          else
          {
            v25 = *v24;
            v49 = *(v24 + 16);
            *__p = v25;
          }

          google::protobuf::Reflection::SetString(v3, v18, v5, __p);
          if (SHIBYTE(v49) < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_40:
        v30 = v50;
        v31 = *(v8 + 6);
        if (v31)
        {
          v53 = v8;
          v54 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v31, memory_order_acquire) != -1)
          {
            v47[0].__r_.__value_.__r.__words[0] = &v54;
            v47[0].__r_.__value_.__l.__size_ = &v53;
            v55 = v47;
            std::__call_once(v31, &v55, sub_2769C149C);
          }
        }

        v32 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 14)];
        if (v32 > 5)
        {
          if (v32 <= 7)
          {
            if (v32 == 6)
            {
              v39 = sub_276B64B84((v30 + 8));
              google::protobuf::Reflection::SetFloat(v3, v18, v8, v39);
            }

            else
            {
              v37 = sub_276B64F84(v30 + 4);
              google::protobuf::Reflection::SetBool(v3, v18, v8, v37);
            }
          }

          else
          {
            switch(v32)
            {
              case 8:
                v41 = sub_276B6537C(v30 + 4);
                google::protobuf::Reflection::SetEnumValue(v3, v18, v8, v41);
                break;
              case 10:
                v43 = sub_276B65570((v30 + 8));
                v44 = google::protobuf::Reflection::MutableMessage(v3, v18, v8, 0);
                (*(*v44 + 112))(v44, v43);
                break;
              case 9:
                v34 = sub_276B65184((v30 + 8));
                if (*(v34 + 23) < 0)
                {
                  sub_276A07B90(v45, *v34, *(v34 + 8));
                }

                else
                {
                  v35 = *v34;
                  v46 = *(v34 + 16);
                  *v45 = v35;
                }

                google::protobuf::Reflection::SetString(v3, v18, v8, v45);
                if (SHIBYTE(v46) < 0)
                {
                  operator delete(v45[0]);
                }

                break;
            }
          }
        }

        else if (v32 <= 2)
        {
          if (v32 == 1)
          {
            v38 = sub_276B6438C(v30 + 4);
            google::protobuf::Reflection::SetInt32(v3, v18, v8, v38);
          }

          else if (v32 == 2)
          {
            v36 = sub_276B64588((v30 + 8));
            google::protobuf::Reflection::SetInt64(v3, v18, v8, v36);
          }
        }

        else if (v32 == 3)
        {
          v40 = sub_276B64784(v30 + 4);
          google::protobuf::Reflection::SetUInt32(v3, v18, v8, v40);
        }

        else if (v32 == 4)
        {
          v42 = sub_276B64980((v30 + 8));
          google::protobuf::Reflection::SetUInt64(v3, v18, v8, v42);
        }

        else
        {
          v33 = sub_276B64D88((v30 + 8));
          google::protobuf::Reflection::SetDouble(v3, v18, v8, v33);
        }

        result = sub_276B67818(&v50);
        if (!v50)
        {
          return result;
        }
      }

      if (v21 == 4)
      {
        v26 = sub_276B660D4(v19);
        google::protobuf::Reflection::SetUInt64(v3, v18, v5, v26);
      }

      goto LABEL_40;
    }

    v50 = *(*v17 + 40);
    v51 = this + 96;
    v52 = v14;
    if (v50)
    {
      goto LABEL_17;
    }
  }

  return result;
}

void sub_276B65DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276B65DEC(uint64_t a1)
{
  if (sub_276B66E74(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 144);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetStringValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "string");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_276B65ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B65EE4(uint64_t a1)
{
  if (sub_276B66E74(a1) != 2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 124);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B65FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B65FDC(unsigned int *a1)
{
  if (sub_276B66E74(a1) != 1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 132);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "int32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B660BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B660D4(uint64_t a1)
{
  if (sub_276B66E74(a1) != 4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 128);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetUInt64Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint64");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B661B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B661CC(unsigned int *a1)
{
  if (sub_276B66E74(a1) != 3)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 136);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetUInt32Value");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "uint32");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B662AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B662C4(unsigned __int8 *a1)
{
  if (sub_276B66E74(a1) != 7)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 140);
    v2 = google::protobuf::internal::LogMessage::operator<<(v13, "Protocol Buffer map usage error:\n");
    v3 = google::protobuf::internal::LogMessage::operator<<(v2, "MapKey::GetBoolValue");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, " type does not match\n");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "  Expected : ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, "BOOL");
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, "\n");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, "  Actual   : ");
    v9 = sub_276B66E74(a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v8, google::protobuf::FieldDescriptor::kCppTypeToName[v9]);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  return *a1;
}

void sub_276B663A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::DynamicMapField::SyncMapWithRepeatedFieldNoLock(google::protobuf::internal::DynamicMapField *this)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = (this + 96);
  (*(**(this + 18) + 152))(*(this + 18));
  v4 = v3;
  v5 = (*(**(this + 18) + 152))(*(this + 18));
  v6 = google::protobuf::Descriptor::map_key(v5);
  v7 = (*(**(this + 18) + 152))(*(this + 18));
  v8 = google::protobuf::Descriptor::map_value(v7);
  if (!*(this + 1))
  {
    v9 = *(this + 15);
    v10 = *(this + 13);
    if (v10 > v9)
    {
      v11 = *(this + 16);
      while (1)
      {
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          break;
        }

        if (v10 == ++v9)
        {
          goto LABEL_11;
        }
      }

      if (v12 == *(v11 + 8 * (v9 ^ 1)))
      {
        v12 = *(*v12 + 40);
        v36[0].__r_.__value_.__r.__words[0] = v12;
        v36[0].__r_.__value_.__l.__size_ = v2;
        v36[0].__r_.__value_.__r.__words[2] = v9;
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v36[0].__r_.__value_.__r.__words[0] = *(v11 + 8 * v9);
        v36[0].__r_.__value_.__l.__size_ = v2;
        v36[0].__r_.__value_.__r.__words[2] = v9;
      }

      do
      {
        sub_276B635DC(v12 + 8);
        sub_276B67818(v36);
        v12 = v36[0].__r_.__value_.__r.__words[0];
      }

      while (v36[0].__r_.__value_.__r.__words[0]);
    }
  }

LABEL_11:
  sub_276B67410(v2);
  v13 = *(this + 2);
  if (*(v13 + 8))
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v14 + 8);
    }

    else
    {
      v15 = 0;
    }

    do
    {
      v43 = 0;
      v16 = *(v6 + 48);
      if (v16)
      {
        v39 = v6;
        v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v16, memory_order_acquire) != -1)
        {
          v36[0].__r_.__value_.__r.__words[0] = &v40;
          v36[0].__r_.__value_.__l.__size_ = &v39;
          v41 = v36;
          std::__call_once(v16, &v41, sub_2769C149C);
        }
      }

      v17 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v6 + 56)];
      if (v17 <= 3)
      {
        switch(v17)
        {
          case 1:
            Int32 = google::protobuf::Reflection::GetInt32(v4, *v15, v6);
            if (v43 != 1)
            {
              if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v20 = 1;
LABEL_45:
              v43 = v20;
            }

LABEL_46:
            LODWORD(__p.__r_.__value_.__l.__data_) = Int32;
            break;
          case 2:
            Int64 = google::protobuf::Reflection::GetInt64(v4, *v15, v6);
            if (v43 != 2)
            {
              if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v22 = 2;
LABEL_52:
              v43 = v22;
            }

LABEL_53:
            __p.__r_.__value_.__r.__words[0] = Int64;
            break;
          case 3:
            Int32 = google::protobuf::Reflection::GetUInt32(v4, *v15, v6);
            if (v43 != 3)
            {
              if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v20 = 3;
              goto LABEL_45;
            }

            goto LABEL_46;
        }
      }

      else
      {
        if (v17 <= 0xA)
        {
          if (((1 << v17) & 0x560) != 0)
          {
            google::protobuf::internal::LogMessage::LogMessage(v36, 3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/map_field.cc", 513);
            v18 = google::protobuf::internal::LogMessage::operator<<(v36, "Can't get here.");
            google::protobuf::internal::LogFinisher::operator=(&v41, &v18->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v36[0].__r_.__value_.__l.__data_);
            goto LABEL_60;
          }

          if (v17 == 7)
          {
            Bool = google::protobuf::Reflection::GetBool(v4, *v15, v6);
            if (v43 != 7)
            {
              if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v43 = 7;
            }

            __p.__r_.__value_.__s.__data_[0] = Bool;
            goto LABEL_60;
          }

          if (v17 == 9)
          {
            google::protobuf::Reflection::GetString(&v37, v4, *v15, v6);
            sub_276B66BFC(&__p, &v37);
            if (v38 < 0)
            {
              operator delete(v37.n128_u64[0]);
            }

            goto LABEL_60;
          }
        }

        if (v17 == 4)
        {
          Int64 = google::protobuf::Reflection::GetUInt64(v4, *v15, v6);
          if (v43 != 4)
          {
            if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v22 = 4;
            goto LABEL_52;
          }

          goto LABEL_53;
        }
      }

LABEL_60:
      if (!*(this + 1))
      {
        sub_276B6798C(v2, &__p, 0, v36);
        if (v36[0].__r_.__value_.__r.__words[0])
        {
          sub_276B635DC((v36[0].__r_.__value_.__r.__words[0] + 32));
        }
      }

      sub_276B68644(v2, &__p, v36);
      v24 = v36[0].__r_.__value_.__r.__words[0];
      v25 = *(v8 + 48);
      if (v25)
      {
        v39 = v8;
        v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
        if (atomic_load_explicit(v25, memory_order_acquire) != -1)
        {
          v36[0].__r_.__value_.__r.__words[0] = &v40;
          v36[0].__r_.__value_.__l.__size_ = &v39;
          v41 = v36;
          std::__call_once(v25, &v41, sub_2769C149C);
        }

        v26 = *(v8 + 48);
        v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        *(v24 + 40) = v27;
        if (v26)
        {
          v39 = v8;
          v40 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v26, memory_order_acquire) != -1)
          {
            v36[0].__r_.__value_.__r.__words[0] = &v40;
            v36[0].__r_.__value_.__l.__size_ = &v39;
            v41 = v36;
            std::__call_once(v26, &v41, sub_2769C149C);
          }

          v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        }
      }

      else
      {
        v27 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v8 + 56)];
        *(v36[0].__r_.__value_.__r.__words[0] + 40) = v27;
      }

      if (v27 > 5)
      {
        if (v27 <= 7)
        {
          if (v27 == 6)
          {
            v28 = sub_276B684AC(*(this + 1));
            *v28 = google::protobuf::Reflection::GetFloat(v4, *v15, v8);
          }

          else
          {
            v28 = sub_276B68578(*(this + 1));
            *v28 = google::protobuf::Reflection::GetBool(v4, *v15, v8);
          }

          goto LABEL_96;
        }

        if (v27 != 8)
        {
          if (v27 == 9)
          {
            v28 = sub_2769C64F4(*(this + 1));
            google::protobuf::Reflection::GetString(v36, v4, *v15, v8);
            if (*(v28 + 23) < 0)
            {
              operator delete(*v28);
            }

            v32 = *&v36[0].__r_.__value_.__l.__data_;
            v28[2] = v36[0].__r_.__value_.__r.__words[2];
            *v28 = v32;
          }

          else
          {
            if (v27 != 10)
            {
              goto LABEL_97;
            }

            Message = google::protobuf::Reflection::GetMessage(v4, *v15, v8, 0);
            v28 = (*(*Message + 32))(Message, *(this + 1));
            (*(*v28 + 14))(v28, Message);
          }

          goto LABEL_96;
        }

        v28 = sub_276B680B0(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetEnumValue(v4, *v15, v8);
        goto LABEL_90;
      }

      if (v27 <= 2)
      {
        if (v27 != 1)
        {
          if (v27 != 2)
          {
            goto LABEL_97;
          }

          v28 = sub_276B6817C(*(this + 1));
          UInt64 = google::protobuf::Reflection::GetInt64(v4, *v15, v8);
          goto LABEL_92;
        }

        v28 = sub_276B680B0(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetInt32(v4, *v15, v8);
        goto LABEL_90;
      }

      if (v27 == 3)
      {
        v28 = sub_276B68248(*(this + 1));
        EnumValue = google::protobuf::Reflection::GetUInt32(v4, *v15, v8);
LABEL_90:
        *v28 = EnumValue;
        goto LABEL_96;
      }

      if (v27 == 4)
      {
        v28 = sub_276B68314(*(this + 1));
        UInt64 = google::protobuf::Reflection::GetUInt64(v4, *v15, v8);
LABEL_92:
        *v28 = UInt64;
        goto LABEL_96;
      }

      v28 = sub_276B683E0(*(this + 1));
      *v28 = google::protobuf::Reflection::GetDouble(v4, *v15, v8);
LABEL_96:
      *(v24 + 32) = v28;
LABEL_97:
      if (v43 == 9 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v15;
      v33 = *(this + 2);
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v34 + 8;
      }

      else
      {
        v35 = 0;
      }
    }

    while (v15 != (v35 + 8 * *(v33 + 8)));
  }
}

void sub_276B66B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 9 && a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_276B66BFC(uint64_t a1, __n128 *a2)
{
  sub_276B67260(a1, 9);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

uint64_t google::protobuf::internal::DynamicMapField::SpaceUsedExcludingSelfNoLock(google::protobuf::internal::DynamicMapField *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = 8 * *(v2 + 12);
    v4 = *(v2 + 16);
    if (v4)
    {
      if (*v4 >= 1)
      {
        v5 = 0;
        do
        {
          v3 += (*(**&v4[2 * v5 + 2] + 136))(*&v4[2 * v5 + 2]);
          ++v5;
          v4 = *(v2 + 16);
        }

        while (v5 < *v4);
      }

      v3 += 8;
    }

    v6 = v3 + 48;
  }

  else
  {
    v6 = 48;
  }

  v7 = (this + 96);
  v8 = *(this + 12);
  if (v8)
  {
    v9 = *(this + 15);
    v10 = *(this + 13);
    if (v10 <= v9)
    {
      v12 = 0;
    }

    else
    {
      v11 = *(this + 16);
      while (1)
      {
        v12 = *(v11 + 8 * v9);
        if (v12)
        {
          break;
        }

        v9 = (v9 + 1);
        if (v10 == v9)
        {
          v12 = 0;
          v9 = v10;
          goto LABEL_18;
        }
      }

      if (v12 == *(v11 + 8 * (v9 ^ 1)))
      {
        v12 = *(*v12 + 40);
      }
    }

LABEL_18:
    v22[0] = v12;
    v22[1] = v7;
    v22[2] = v9;
    if (sub_276B66E74(v12) == 9)
    {
      v13 = 24 * v8;
    }

    else
    {
      v13 = 0;
    }

    v6 += 48 * v8 + v13;
    v14 = sub_276B66F14((v12 + 8));
    if (v14 > 5)
    {
      if (v14 <= 7)
      {
        v20 = v6 + v8;
        if (v14 != 7)
        {
          v20 = v6;
        }

        if (v14 == 6)
        {
          v6 += 4 * v8;
        }

        else
        {
          return v20;
        }
      }

      else
      {
        switch(v14)
        {
          case 8:
            v6 += 4 * v8;
            break;
          case 9:
            v6 += 24 * v8;
            break;
          case 10:
            while (v12)
            {
              v18 = sub_276B65570((v12 + 8));
              (*(*v18 + 152))(v18);
              v6 += google::protobuf::Reflection::SpaceUsedLong(v19, v18);
              sub_276B67818(v22);
              v12 = v22[0];
            }

            break;
        }
      }
    }

    else
    {
      v15 = v6 + 4 * v8;
      v16 = v6 + 8 * v8;
      if (v14 == 5)
      {
        v17 = v6 + 8 * v8;
      }

      else
      {
        v17 = v6;
      }

      if (v14 == 4)
      {
        v17 = v6 + 8 * v8;
      }

      if (v14 == 3)
      {
        v17 = v6 + 4 * v8;
      }

      if (v14 != 2)
      {
        v16 = v6;
      }

      if (v14 != 1)
      {
        v15 = v16;
      }

      if (v14 <= 2)
      {
        return v15;
      }

      else
      {
        return v17;
      }
    }
  }

  return v6;
}

uint64_t sub_276B66E74(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 91);
    v3 = google::protobuf::internal::LogMessage::operator<<(v7, "Protocol Buffer map usage error:\n");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "MapKey::type MapKey is not initialized. ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, "Call set methods to initialize MapKey.");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
    return *(a1 + 24);
  }

  return result;
}

void sub_276B66EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B66F14(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result || !*a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Root/include/google/protobuf/map_field.h", 742);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "Protocol Buffer map usage error:\n");
    v4 = google::protobuf::internal::LogMessage::operator<<(v3, "MapValueConstRef::type MapValueConstRef is not initialized.");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    return *(a1 + 8);
  }

  return result;
}

void sub_276B66F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276B66FCC(uint64_t a1, void **a2)
{
  v4 = (*(*a1 + 160))(a1);
  v5 = v4[3];
  v6 = v4[1];
  if (v6 <= v5)
  {
    v8 = 0;
  }

  else
  {
    v7 = v4[4];
    while (1)
    {
      v8 = *(v7 + 8 * v5);
      if (v8)
      {
        break;
      }

      if (v6 == ++v5)
      {
        v8 = 0;
        v5 = v4[1];
        goto LABEL_9;
      }
    }

    if (v8 == *(v7 + 8 * (v5 ^ 1)))
    {
      v8 = *(*v8 + 40);
    }
  }

LABEL_9:
  v9 = *a2;
  *v9 = v8;
  v9[1] = v4;
  v9[2] = v5;
  v10 = *(*a1 + 176);

  return v10(a1, a2);
}

uint64_t sub_276B670AC(uint64_t a1, void **a2)
{
  result = (*(*a1 + 160))(a1);
  v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  return result;
}

uint64_t sub_276B67140(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276B67160(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v6 = *a2;
  v7 = **a3;
  *(v6 + 16) = *(*a3 + 16);
  *v6 = v7;
  v8 = sub_276B66E74((a3 + 4));
  sub_276B67260((a2 + 2), v8);
  *(a2 + 14) = a3[14];
  v9 = *(*a1 + 176);

  return v9(a1, a2);
}

uint64_t sub_276B671FC(uint64_t a1, unsigned int ***a2)
{
  sub_276B67818(*a2);
  v4 = *(*a1 + 176);

  return v4(a1, a2);
}

void sub_276B67260(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2 != a2)
  {
    if (v2 == 9 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = a2;
    if (a2 == 9)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

google::protobuf::Arena **sub_276B672BC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276B67318(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

void *sub_276B67318(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8E94(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_276B673A0);
}

uint64_t sub_276B673BC(uint64_t a1)
{
  if (!*(a1 + 40) && *(a1 + 8) != 1)
  {
    sub_276B67410(a1);
    if (!*(a1 + 40))
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

void *sub_276B67410(void *result)
{
  v1 = result;
  v2 = result[1];
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v1[4];
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        if (v5 == *(v4 + 8 * (v3 ^ 1)))
        {
          v7 = v3 + 1;
          *(v4 + 8 * (v3 + 1)) = 0;
          *(v1[4] + 8 * v3) = 0;
          v8 = *v5;
          do
          {
            v9 = v8[5];
            v10 = v8[1];
            v11 = v8;
            if (v10)
            {
              do
              {
                v12 = v10;
                v10 = *v10;
              }

              while (v10);
            }

            else
            {
              do
              {
                v12 = v11[2];
                v13 = *v12 == v11;
                v11 = v12;
              }

              while (!v13);
            }

            sub_276B675EC(v5, v8);
            sub_276B6751C(v1, v9);
            v8 = v12;
          }

          while (v12 != (v5 + 1));
          result = sub_276B6758C(v1, v5);
          goto LABEL_16;
        }

        *(v4 + 8 * v3) = 0;
        do
        {
          v6 = v5[6];
          result = sub_276B6751C(v1, v5);
          v5 = v6;
        }

        while (v6);
      }

      v7 = v3;
LABEL_16:
      v3 = v7 + 1;
      v2 = v1[1];
    }

    while (v7 + 1 < v2);
  }

  *v1 = 0;
  v1[3] = v2;
  return result;
}

uint64_t sub_276B6751C(uint64_t result, uint64_t a2)
{
  if (a2 && !*(result + 40))
  {
    if (*(a2 + 24) == 9 && *(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_276B6758C(uint64_t result, uint64_t a2)
{
  if (a2 && !*(result + 40))
  {
    sub_276B676A8(a2, *(a2 + 8));

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t *sub_276B675EC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_276B67634(a1, a2);
  if (!*(a1 + 16))
  {
    operator delete(a2);
  }

  return v4;
}

uint64_t *sub_276B67634(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  --*(a1 + 24);
  sub_276A9A40C(*(a1 + 8), a2);
  return v3;
}

void sub_276B676A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276B676A8(a1, *a2);
    sub_276B676A8(a1, a2[1]);
    if (!*(a1 + 16))
    {

      operator delete(a2);
    }
  }
}