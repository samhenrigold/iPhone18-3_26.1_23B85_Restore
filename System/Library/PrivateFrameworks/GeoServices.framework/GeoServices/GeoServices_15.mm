uint64_t AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(AddrObjGoogle::protobuf::io::CodedOutputStream *this)
{
  if (this >> 28)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (this >= 0x200000)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (this >= 0x4000)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  if (this >= 0x80)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(AddrObjGoogle::protobuf::io::CodedOutputStream *this, const void *a2, void *__dst, unsigned __int8 *a4)
{
  v5 = a2;
  memcpy(__dst, this, a2);
  return __dst + v5;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::geo3::Address::SerializeWithCachedSizesToArray(addr_obj::geo3::Address *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = this;
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 2) + 8 * v6);
      *a2 = 90;
      v8 = *(v7 + 23);
      if ((v8 & 0x8000000000000000) != 0)
      {
        v8 = *(v7 + 8);
      }

      if (v8 > 0x7F)
      {
        v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v8;
        v9 = a2 + 2;
      }

      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = *v7;
      }

      if (v10 >= 0)
      {
        v12 = *(v7 + 23);
      }

      else
      {
        v12 = *(v7 + 8);
      }

      this = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, a4);
      a2 = this;
      ++v6;
    }

    while (v6 < *(v5 + 6));
  }

  v13 = *(v5 + 14);
  if ((v13 & 2) != 0)
  {
    v14 = *(v5 + 5);
    if (!v14)
    {
      v14 = *(addr_obj::geo3::Address::default_instance_(this) + 40);
    }

    *a2 = 122;
    v15 = v14[60];
    if (v15 > 0x7F)
    {
      v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v15;
      v16 = (a2 + 2);
    }

    a2 = addr_obj::geo3::StructuredAddress::SerializeWithCachedSizesToArray(v14, v16, a3, a4);
    v13 = *(v5 + 14);
  }

  if ((v13 & 4) != 0)
  {
    v17 = *(v5 + 12);
    *a2 = 384;
    v18 = a2 + 2;
    if ((v17 & 0x80000000) != 0)
    {
      v19 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v17, v18, a3);
    }

    else
    {
      if (v17 <= 0x7F)
      {
        *(a2 + 2) = v17;
        a2 = (a2 + 3);
        goto LABEL_29;
      }

      v19 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v17, v18, a3);
    }

    a2 = v19;
  }

LABEL_29:
  v22 = *(v5 + 1);
  v21 = (v5 + 8);
  v20 = v22;
  if (!v22 || *v20 == v20[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v21, a2, a3, a4);
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::geo3::StructuredAddress::SerializeWithCachedSizesToArray(addr_obj::geo3::StructuredAddress *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 61);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 10;
    v8 = a2 + 1;
    v9 = *(v7 + 23);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v7 + 8);
    }

    if (v9 > 0x7F)
    {
      v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = v4 + 2;
    }

    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    if (v11 >= 0)
    {
      v13 = *(v7 + 23);
    }

    else
    {
      v13 = *(v7 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v12, v13, v10, a4);
    v6 = *(this + 61);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 3);
  *v4 = 18;
  v15 = *(v14 + 23);
  if ((v15 & 0x8000000000000000) != 0)
  {
    v15 = *(v14 + 8);
  }

  if (v15 > 0x7F)
  {
    v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v16 = v4 + 2;
  }

  v17 = *(v14 + 23);
  if (v17 >= 0)
  {
    v18 = v14;
  }

  else
  {
    v18 = *v14;
  }

  if (v17 >= 0)
  {
    v19 = *(v14 + 23);
  }

  else
  {
    v19 = *(v14 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v18, v19, v16, a4);
  v6 = *(this + 61);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_51;
  }

LABEL_39:
  v20 = *(this + 4);
  *v4 = 26;
  v21 = *(v20 + 23);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v21 = *(v20 + 8);
  }

  if (v21 > 0x7F)
  {
    v22 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v21;
    v22 = v4 + 2;
  }

  v23 = *(v20 + 23);
  if (v23 >= 0)
  {
    v24 = v20;
  }

  else
  {
    v24 = *v20;
  }

  if (v23 >= 0)
  {
    v25 = *(v20 + 23);
  }

  else
  {
    v25 = *(v20 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v24, v25, v22, a4);
  v6 = *(this + 61);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_63;
  }

LABEL_51:
  v26 = *(this + 5);
  *v4 = 34;
  v27 = *(v26 + 23);
  if ((v27 & 0x8000000000000000) != 0)
  {
    v27 = *(v26 + 8);
  }

  if (v27 > 0x7F)
  {
    v28 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v27, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v27;
    v28 = v4 + 2;
  }

  v29 = *(v26 + 23);
  if (v29 >= 0)
  {
    v30 = v26;
  }

  else
  {
    v30 = *v26;
  }

  if (v29 >= 0)
  {
    v31 = *(v26 + 23);
  }

  else
  {
    v31 = *(v26 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v30, v31, v28, a4);
  v6 = *(this + 61);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_75;
  }

LABEL_63:
  v32 = *(this + 6);
  *v4 = 42;
  v33 = *(v32 + 23);
  if ((v33 & 0x8000000000000000) != 0)
  {
    v33 = *(v32 + 8);
  }

  if (v33 > 0x7F)
  {
    v34 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v33, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v33;
    v34 = v4 + 2;
  }

  v35 = *(v32 + 23);
  if (v35 >= 0)
  {
    v36 = v32;
  }

  else
  {
    v36 = *v32;
  }

  if (v35 >= 0)
  {
    v37 = *(v32 + 23);
  }

  else
  {
    v37 = *(v32 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v36, v37, v34, a4);
  v6 = *(this + 61);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_87;
  }

LABEL_75:
  v38 = *(this + 7);
  *v4 = 50;
  v39 = *(v38 + 23);
  if ((v39 & 0x8000000000000000) != 0)
  {
    v39 = *(v38 + 8);
  }

  if (v39 > 0x7F)
  {
    v40 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v39, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v39;
    v40 = v4 + 2;
  }

  v41 = *(v38 + 23);
  if (v41 >= 0)
  {
    v42 = v38;
  }

  else
  {
    v42 = *v38;
  }

  if (v41 >= 0)
  {
    v43 = *(v38 + 23);
  }

  else
  {
    v43 = *(v38 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v42, v43, v40, a4);
  v6 = *(this + 61);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_99;
  }

LABEL_87:
  v44 = *(this + 8);
  *v4 = 58;
  v45 = *(v44 + 23);
  if ((v45 & 0x8000000000000000) != 0)
  {
    v45 = *(v44 + 8);
  }

  if (v45 > 0x7F)
  {
    v46 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v45, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v45;
    v46 = v4 + 2;
  }

  v47 = *(v44 + 23);
  if (v47 >= 0)
  {
    v48 = v44;
  }

  else
  {
    v48 = *v44;
  }

  if (v47 >= 0)
  {
    v49 = *(v44 + 23);
  }

  else
  {
    v49 = *(v44 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v48, v49, v46, a4);
  v6 = *(this + 61);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_111;
  }

LABEL_99:
  v50 = *(this + 9);
  *v4 = 66;
  v51 = *(v50 + 23);
  if ((v51 & 0x8000000000000000) != 0)
  {
    v51 = *(v50 + 8);
  }

  if (v51 > 0x7F)
  {
    v52 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v51, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v51;
    v52 = v4 + 2;
  }

  v53 = *(v50 + 23);
  if (v53 >= 0)
  {
    v54 = v50;
  }

  else
  {
    v54 = *v50;
  }

  if (v53 >= 0)
  {
    v55 = *(v50 + 23);
  }

  else
  {
    v55 = *(v50 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v54, v55, v52, a4);
  v6 = *(this + 61);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_123;
  }

LABEL_111:
  v56 = *(this + 10);
  *v4 = 74;
  v57 = *(v56 + 23);
  if ((v57 & 0x8000000000000000) != 0)
  {
    v57 = *(v56 + 8);
  }

  if (v57 > 0x7F)
  {
    v58 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v57, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v57;
    v58 = v4 + 2;
  }

  v59 = *(v56 + 23);
  if (v59 >= 0)
  {
    v60 = v56;
  }

  else
  {
    v60 = *v56;
  }

  if (v59 >= 0)
  {
    v61 = *(v56 + 23);
  }

  else
  {
    v61 = *(v56 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v60, v61, v58, a4);
  v6 = *(this + 61);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_135;
  }

LABEL_123:
  v62 = *(this + 11);
  *v4 = 82;
  v63 = *(v62 + 23);
  if ((v63 & 0x8000000000000000) != 0)
  {
    v63 = *(v62 + 8);
  }

  if (v63 > 0x7F)
  {
    v64 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v63, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v63;
    v64 = v4 + 2;
  }

  v65 = *(v62 + 23);
  if (v65 >= 0)
  {
    v66 = v62;
  }

  else
  {
    v66 = *v62;
  }

  if (v65 >= 0)
  {
    v67 = *(v62 + 23);
  }

  else
  {
    v67 = *(v62 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v66, v67, v64, a4);
  v6 = *(this + 61);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_147;
  }

LABEL_135:
  v68 = *(this + 12);
  *v4 = 90;
  v69 = *(v68 + 23);
  if ((v69 & 0x8000000000000000) != 0)
  {
    v69 = *(v68 + 8);
  }

  if (v69 > 0x7F)
  {
    v70 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v69, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v69;
    v70 = v4 + 2;
  }

  v71 = *(v68 + 23);
  if (v71 >= 0)
  {
    v72 = v68;
  }

  else
  {
    v72 = *v68;
  }

  if (v71 >= 0)
  {
    v73 = *(v68 + 23);
  }

  else
  {
    v73 = *(v68 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v72, v73, v70, a4);
  v6 = *(this + 61);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_159;
  }

LABEL_147:
  v74 = *(this + 13);
  *v4 = 98;
  v75 = *(v74 + 23);
  if ((v75 & 0x8000000000000000) != 0)
  {
    v75 = *(v74 + 8);
  }

  if (v75 > 0x7F)
  {
    v76 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v75, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v75;
    v76 = v4 + 2;
  }

  v77 = *(v74 + 23);
  if (v77 >= 0)
  {
    v78 = v74;
  }

  else
  {
    v78 = *v74;
  }

  if (v77 >= 0)
  {
    v79 = *(v74 + 23);
  }

  else
  {
    v79 = *(v74 + 8);
  }

  v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v78, v79, v76, a4);
  if ((*(this + 61) & 0x1000) != 0)
  {
LABEL_159:
    v80 = *(this + 14);
    *v4 = 106;
    v81 = *(v80 + 23);
    if ((v81 & 0x8000000000000000) != 0)
    {
      v81 = *(v80 + 8);
    }

    if (v81 > 0x7F)
    {
      v82 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v81, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v81;
      v82 = v4 + 2;
    }

    v83 = *(v80 + 23);
    if (v83 >= 0)
    {
      v84 = v80;
    }

    else
    {
      v84 = *v80;
    }

    if (v83 >= 0)
    {
      v85 = *(v80 + 23);
    }

    else
    {
      v85 = *(v80 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v84, v85, v82, a4);
  }

LABEL_171:
  if (*(this + 32) >= 1)
  {
    v86 = 0;
    do
    {
      v87 = *(*(this + 15) + 8 * v86);
      *v4 = 114;
      v88 = *(v87 + 23);
      if ((v88 & 0x8000000000000000) != 0)
      {
        v88 = *(v87 + 8);
      }

      if (v88 > 0x7F)
      {
        v89 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v88, v4 + 1, a3);
      }

      else
      {
        *(v4 + 1) = v88;
        v89 = v4 + 2;
      }

      v90 = *(v87 + 23);
      if (v90 >= 0)
      {
        v91 = v87;
      }

      else
      {
        v91 = *v87;
      }

      if (v90 >= 0)
      {
        v92 = *(v87 + 23);
      }

      else
      {
        v92 = *(v87 + 8);
      }

      v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v91, v92, v89, a4);
      ++v86;
    }

    while (v86 < *(this + 32));
  }

  v93 = *(this + 61);
  if ((v93 & 0x4000) != 0)
  {
    v94 = *(this + 18);
    *v4 = 122;
    v95 = *(v94 + 23);
    if ((v95 & 0x8000000000000000) != 0)
    {
      v95 = *(v94 + 8);
    }

    if (v95 > 0x7F)
    {
      v96 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v95, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v95;
      v96 = v4 + 2;
    }

    v97 = *(v94 + 23);
    if (v97 >= 0)
    {
      v98 = v94;
    }

    else
    {
      v98 = *v94;
    }

    if (v97 >= 0)
    {
      v99 = *(v94 + 23);
    }

    else
    {
      v99 = *(v94 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v98, v99, v96, a4);
    v93 = *(this + 61);
  }

  if ((v93 & 0x8000) != 0)
  {
    v100 = *(this + 19);
    *v4 = 386;
    v101 = *(v100 + 23);
    if ((v101 & 0x8000000000000000) != 0)
    {
      v101 = *(v100 + 8);
    }

    if (v101 > 0x7F)
    {
      v102 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v101, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v101;
      v102 = v4 + 3;
    }

    v103 = *(v100 + 23);
    if (v103 >= 0)
    {
      v104 = v100;
    }

    else
    {
      v104 = *v100;
    }

    if (v103 >= 0)
    {
      v105 = *(v100 + 23);
    }

    else
    {
      v105 = *(v100 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v104, v105, v102, a4);
  }

  if (*(this + 42) >= 1)
  {
    v106 = 0;
    do
    {
      v107 = *(*(this + 20) + 8 * v106);
      *v4 = 394;
      v108 = *(v107 + 23);
      if ((v108 & 0x8000000000000000) != 0)
      {
        v108 = *(v107 + 8);
      }

      if (v108 > 0x7F)
      {
        v109 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v108, v4 + 2, a3);
      }

      else
      {
        *(v4 + 2) = v108;
        v109 = v4 + 3;
      }

      v110 = *(v107 + 23);
      if (v110 >= 0)
      {
        v111 = v107;
      }

      else
      {
        v111 = *v107;
      }

      if (v110 >= 0)
      {
        v112 = *(v107 + 23);
      }

      else
      {
        v112 = *(v107 + 8);
      }

      v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v111, v112, v109, a4);
      ++v106;
    }

    while (v106 < *(this + 42));
  }

  if ((*(this + 246) & 2) != 0)
  {
    v113 = *(this + 23);
    *v4 = 402;
    v114 = *(v113 + 23);
    if ((v114 & 0x8000000000000000) != 0)
    {
      v114 = *(v113 + 8);
    }

    if (v114 > 0x7F)
    {
      v115 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v114, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v114;
      v115 = v4 + 3;
    }

    v116 = *(v113 + 23);
    if (v116 >= 0)
    {
      v117 = v113;
    }

    else
    {
      v117 = *v113;
    }

    if (v116 >= 0)
    {
      v118 = *(v113 + 23);
    }

    else
    {
      v118 = *(v113 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v117, v118, v115, a4);
  }

  if (*(this + 50) >= 1)
  {
    v119 = 0;
    do
    {
      v120 = *(*(this + 24) + 8 * v119);
      *v4 = 410;
      v121 = v120[7];
      if (v121 > 0x7F)
      {
        v122 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v121, v4 + 2, a3);
      }

      else
      {
        *(v4 + 2) = v121;
        v122 = (v4 + 3);
      }

      v4 = addr_obj::geo3::StructuredAddress_SubPremise::SerializeWithCachedSizesToArray(v120, v122, a3, a4);
      ++v119;
    }

    while (v119 < *(this + 50));
  }

  if ((*(this + 246) & 8) != 0)
  {
    v123 = *(this + 27);
    *v4 = 418;
    v124 = *(v123 + 23);
    if ((v124 & 0x8000000000000000) != 0)
    {
      v124 = *(v123 + 8);
    }

    if (v124 > 0x7F)
    {
      v125 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v124, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v124;
      v125 = v4 + 3;
    }

    v126 = *(v123 + 23);
    if (v126 >= 0)
    {
      v127 = v123;
    }

    else
    {
      v127 = *v123;
    }

    if (v126 >= 0)
    {
      v128 = *(v123 + 23);
    }

    else
    {
      v128 = *(v123 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v127, v128, v125, a4);
  }

  if (*(this + 58) >= 1)
  {
    v129 = 0;
    do
    {
      v130 = *(*(this + 28) + 8 * v129);
      *v4 = 1696;
      v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v130, v4 + 2, a3);
      ++v129;
    }

    while (v129 < *(this + 58));
  }

  v133 = *(this + 1);
  v132 = (this + 8);
  v131 = v133;
  if (!v133 || *v131 == v131[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v132, v4, a3, a4);
}

_BYTE *AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(AddrObjGoogle::protobuf::io::CodedOutputStream *this, _BYTE *a2, unsigned __int8 *a3)
{
  *a2 = this | 0x80;
  if (this < 0x80)
  {
    *a2 = this;
    v3 = 1;
  }

  else
  {
    a2[1] = (this >> 7) | 0x80;
    if (this < 0x4000)
    {
      a2[1] = this >> 7;
      v3 = 2;
    }

    else
    {
      a2[2] = (this >> 14) | 0x80;
      if (this < 0x200000)
      {
        a2[2] = this >> 14;
        v3 = 3;
      }

      else
      {
        a2[3] = (this >> 21) | 0x80;
        if (this >> 28)
        {
          a2[4] = this >> 28;
          v3 = 5;
        }

        else
        {
          a2[3] = this >> 21;
          v3 = 4;
        }
      }
    }
  }

  return &a2[v3];
}

std::string *addr_obj::SerializedAddress::SerializedAddress(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

GEOAddress *_protobufCPPDataToObjC<GEOAddress>(_BYTE *a1)
{
  v1 = [NSData initWithCPPData:a1 copy:?];
  v2 = [[GEOAddress alloc] initWithData:v1];

  return v2;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_186747BB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *GEOAddressReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOAddressReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 48));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 40) = objc_msgSend_position(v8);
  *(a1 + 44) = [v8 length];
  if (a3)
  {
    v9 = &GEOAddressReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOAddressReadAllFrom_initialTag;
  }

  Specified = GEOAddressReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOAddressReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 48));
  [v3 setLength:*(a1 + 44)];
  [v3 seekToOffset:*(a1 + 40)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 56) >> 2) & 1) + ((*(a1 + 56) >> 3) & 1) + ((*(a1 + 56) >> 1) & 1);
  while (1)
  {
    v11 = a3[v8];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v6 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v8;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 != 0;
  v13 = v9 | v12;
  v49 = v12 & ~v9 | v6;
  v50 = v9 | v12 | v6;
  if (((v9 | v12) | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  while (1)
  {
    v15 = objc_msgSend_position(v3);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_76:
      v24 = 1;
      goto LABEL_79;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v51[0]) = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:v51 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v51[0] & 0x7F) << v16;
      if ((v51[0] & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v22 = v17++ >= 9;
      if (v22)
      {
        v18 = 0;
        goto LABEL_29;
      }
    }

    if ([v3 hasError])
    {
      v18 = 0;
    }

LABEL_29:
    v23 = [v3 hasError];
    v24 = 1;
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_79;
    }

    v25 = v18 >> 3;
    v26 = v13;
    if (!((v14 == 0) | v13 & 1))
    {
      v27 = v14;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v26 = v29 != 0;
        if (v29)
        {
          v30 = v28 == v25;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v25 == 16)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_67;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 56) |= 1u;
      while (1)
      {
        LOBYTE(v51[0]) = 0;
        v37 = objc_msgSend_position(v3) + 1;
        if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
        {
          v39 = [v3 data];
          [v39 getBytes:v51 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v36 |= (v51[0] & 0x7F) << v34;
        if ((v51[0] & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v22 = v35++ >= 9;
        if (v22)
        {
          v40 = 0;
          goto LABEL_73;
        }
      }

      if ([v3 hasError])
      {
        v40 = 0;
      }

      else
      {
        v40 = v36;
      }

LABEL_73:
      *(a1 + 52) = v40;
      goto LABEL_68;
    }

    if (v25 == 15)
    {
      break;
    }

    if (v25 == 11)
    {
      if (!v26 || (*(a1 + 56) & 4) != 0)
      {
        goto LABEL_67;
      }

      v31 = PBReaderReadString();
      if (v31)
      {
        [(GEOAddress *)a1 _addNoFlagsFormattedAddressLine:v31];
      }
    }

    else
    {
      if ((v49 & 1) == 0 || (*(a1 + 56) & 2) != 0)
      {
LABEL_67:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_68;
      }

      if (!*(a1 + 16))
      {
        v41 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v42 = *(a1 + 16);
        *(a1 + 16) = v41;
      }

      if (!PBUnknownFieldAdd())
      {
        v24 = 0;
        v43 = &OBJC_IVAR___GEOPOIEvent__timeZone;
        goto LABEL_80;
      }
    }

LABEL_68:
    if (!(v50 & 1 | (v8 != 0)))
    {
      goto LABEL_76;
    }
  }

  if (!v26)
  {
    goto LABEL_67;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_78;
    }

    v8 += *(a1 + 56) << 28 >> 31;
    goto LABEL_68;
  }

  v51[0] = 0;
  v51[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_78;
  }

  v32 = objc_alloc_init(GEOStructuredAddress);
  if (GEOStructuredAddressReadAllFrom(v32, v3))
  {
    PBReaderRecallMark();
    v33 = *(a1 + 32);
    *(a1 + 32) = v32;

    --v8;
    goto LABEL_68;
  }

LABEL_78:
  v24 = 0;
LABEL_79:
  v43 = &OBJC_IVAR___GEOPOIEvent__timeZone;
  if ((v49 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_80:
  *(a1 + v43[591]) |= 2u;
LABEL_81:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v43[591]) |= 4u;
    *(a1 + v43[591]) |= 8u;
    goto LABEL_91;
  }

  if (v14)
  {
    while (1)
    {
      v45 = *v14++;
      v44 = v45;
      if (v45 == 11)
      {
        break;
      }

      if (v44 == 15)
      {
        v46 = 8;
LABEL_90:
        *(a1 + v43[591]) |= v46;
        continue;
      }

      if (!v44)
      {
        goto LABEL_91;
      }
    }

    v46 = 4;
    goto LABEL_90;
  }

LABEL_91:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_95:
    v47 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_95;
    }
  }

  return v3;
}

uint64_t GEOStructuredAddressReadAllFrom(void *a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      while (([v3 hasError] & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v39 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v39 & 0x7F) << v5;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = v7 & 7;
        v14 = v13 == 4 ? 1 : v12;
        if (v14)
        {
          break;
        }

        v15 = v7 >> 3;
        switch(v15)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 9;
            goto LABEL_66;
          case 2:
            v16 = PBReaderReadString();
            v17 = 8;
            goto LABEL_66;
          case 3:
            v16 = PBReaderReadString();
            v17 = 6;
            goto LABEL_66;
          case 4:
            v16 = PBReaderReadString();
            v17 = 5;
            goto LABEL_66;
          case 5:
            v16 = PBReaderReadString();
            v17 = 20;
            goto LABEL_66;
          case 6:
            v16 = PBReaderReadString();
            v17 = 13;
            goto LABEL_66;
          case 7:
            v16 = PBReaderReadString();
            v17 = 17;
            goto LABEL_66;
          case 8:
            v16 = PBReaderReadString();
            v17 = 21;
            goto LABEL_66;
          case 9:
            v16 = PBReaderReadString();
            v17 = 18;
            goto LABEL_66;
          case 10:
            v16 = PBReaderReadString();
            v17 = 24;
            goto LABEL_66;
          case 11:
            v16 = PBReaderReadString();
            v17 = 23;
            goto LABEL_66;
          case 12:
            v16 = PBReaderReadString();
            v17 = 11;
            goto LABEL_66;
          case 13:
            v16 = PBReaderReadString();
            v17 = 15;
            goto LABEL_66;
          case 14:
            v26 = PBReaderReadString();
            if (v26)
            {
              [a1 addAreaOfInterest:v26];
            }

            goto LABEL_62;
          case 15:
            v16 = PBReaderReadString();
            v17 = 12;
            goto LABEL_66;
          case 16:
            v16 = PBReaderReadString();
            v17 = 14;
            goto LABEL_66;
          case 17:
            v26 = PBReaderReadString();
            if (v26)
            {
              [a1 addDependentLocality:v26];
            }

            goto LABEL_62;
          case 18:
            v16 = PBReaderReadString();
            v17 = 19;
            goto LABEL_66;
          case 19:
            v39 = 0;
            v40 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_83;
            }

            v26 = objc_alloc_init(GEOSubPremise);
            if (!GEOSubPremiseReadAllFrom(v26, v3))
            {

              goto LABEL_83;
            }

            PBReaderRecallMark();
            [a1 addSubPremise:v26];
LABEL_62:

LABEL_67:
            v30 = objc_msgSend_position(v3);
            if (v30 >= [v3 length])
            {
              goto LABEL_81;
            }

            break;
          case 20:
            v16 = PBReaderReadString();
            v17 = 16;
LABEL_66:
            v29 = a1[v17];
            a1[v17] = v16;

            goto LABEL_67;
          default:
            if (v15 == 100)
            {
              if (v13 == 2)
              {
                v39 = 0;
                v40 = 0;
                if (!PBReaderPlaceMark())
                {
                  goto LABEL_83;
                }

                v18 = objc_msgSend_position(v3);
                for (i = [v3 length]; v18 < i && (objc_msgSend(v3, "hasError") & 1) == 0; i = objc_msgSend(v3, "length"))
                {
                  v20 = 0;
                  v21 = 0;
                  v22 = 0;
                  while (1)
                  {
                    v41 = 0;
                    v23 = objc_msgSend_position(v3);
                    if (v23 + 1 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3), v24 + 1 <= [v3 length]))
                    {
                      v25 = [v3 data];
                      [v25 getBytes:&v41 range:{objc_msgSend_position(v3), 1}];

                      [v3 setPosition:objc_msgSend_position(v3) + 1];
                    }

                    else
                    {
                      [v3 _setError];
                    }

                    v22 |= (v41 & 0x7F) << v20;
                    if ((v41 & 0x80) == 0)
                    {
                      break;
                    }

                    v20 += 7;
                    v11 = v21++ >= 9;
                    if (v11)
                    {
                      goto LABEL_37;
                    }
                  }

                  [v3 hasError];
LABEL_37:
                  PBRepeatedInt64Add();
                  v18 = objc_msgSend_position(v3);
                }

                PBReaderRecallMark();
              }

              else
              {
                v31 = 0;
                v32 = 0;
                v33 = 0;
                while (1)
                {
                  LOBYTE(v39) = 0;
                  v34 = objc_msgSend_position(v3);
                  if (v34 + 1 >= objc_msgSend_position(v3) && (v35 = objc_msgSend_position(v3), v35 + 1 <= [v3 length]))
                  {
                    v36 = [v3 data];
                    [v36 getBytes:&v39 range:{objc_msgSend_position(v3), 1}];

                    [v3 setPosition:objc_msgSend_position(v3) + 1];
                  }

                  else
                  {
                    [v3 _setError];
                  }

                  v33 |= (v39 & 0x7F) << v31;
                  if ((v39 & 0x80) == 0)
                  {
                    break;
                  }

                  v31 += 7;
                  v11 = v32++ >= 9;
                  if (v11)
                  {
                    goto LABEL_80;
                  }
                }

                [v3 hasError];
LABEL_80:
                PBRepeatedInt64Add();
              }
            }

            else
            {
              if (!a1[1])
              {
                v27 = objc_alloc_init(MEMORY[0x1E69C65D8]);
                v28 = a1[1];
                a1[1] = v27;
              }

              if (!PBUnknownFieldAdd())
              {
                goto LABEL_83;
              }
            }

            goto LABEL_67;
        }
      }
    }

LABEL_81:
    v37 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_83:
    v37 = 0;
  }

  objc_sync_exit(v3);

  return v37;
}

void *GEOPDBoundsReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDBoundsReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 56));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 48) = objc_msgSend_position(v8);
  *(a1 + 52) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDBoundsReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDBoundsReadAllFrom_initialTag;
  }

  Specified = GEOPDBoundsReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDBoundsCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOPDBoundsReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 56));
  [v3 setLength:*(a1 + 52)];
  [v3 seekToOffset:*(a1 + 48)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 68)) & 0xFF00FF00FF00FFLL), 0xFFFEFFFBFFFDFFFCLL) & 0xFF01FF01FF01FF01));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 1;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v54) = v14;
  HIDWORD(v54) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v55 = (v16 == 0) | v15;
  v56 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v54);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_93:
      v26 = 1;
      goto LABEL_96;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v57) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v57 & 0x7F) << v18;
      if ((v57 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      if (v19++ >= 9)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_96;
    }

    v27 = v20 >> 3;
    v28 = v56;
    if ((v55 & 1) == 0)
    {
      v29 = v16;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 > 2)
    {
      switch(v27)
      {
        case 3:
          if ((v7 & 1) == 0)
          {
            goto LABEL_78;
          }

          *(a1 + 68) |= 2u;
          LODWORD(v57) = 0;
          v35 = objc_msgSend_position(v3) + 4;
          if (v35 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3) + 4, v36 <= [v3 length]))
          {
            v43 = [v3 data];
            [v43 getBytes:&v57 range:{objc_msgSend_position(v3), 4}];

            [v3 setPosition:objc_msgSend_position(v3) + 4];
          }

          else
          {
            [v3 _setError];
          }

          v44 = v57;
          v45 = 64;
          break;
        case 4:
          if ((v7 & 1) == 0)
          {
            goto LABEL_78;
          }

          *(a1 + 68) |= 1u;
          LODWORD(v57) = 0;
          v37 = objc_msgSend_position(v3) + 4;
          if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 4, v38 <= [v3 length]))
          {
            v46 = [v3 data];
            [v46 getBytes:&v57 range:{objc_msgSend_position(v3), 4}];

            [v3 setPosition:objc_msgSend_position(v3) + 4];
          }

          else
          {
            [v3 _setError];
          }

          v44 = v57;
          v45 = 60;
          break;
        case 5:
          if (!v28)
          {
            goto LABEL_78;
          }

          if ((*(a1 + 68) & 0x20) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_95;
            }

            v42 = 4 * *(a1 + 68);
            goto LABEL_86;
          }

          v57 = 0;
          v58 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_95;
          }

          v33 = objc_alloc_init(GEOPDViewportFrame);
          if (!GEOPDViewportFrameReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_94;
          }

          PBReaderRecallMark();
          v34 = 40;
          goto LABEL_71;
        default:
          goto LABEL_72;
      }

      *(a1 + v45) = v44;
      goto LABEL_92;
    }

    if (v27 == 1)
    {
      break;
    }

    if (v27 == 2)
    {
      if (!v28)
      {
        goto LABEL_78;
      }

      if ((*(a1 + 68) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_95;
        }

        v42 = 16 * *(a1 + 68);
        goto LABEL_86;
      }

      v57 = 0;
      v58 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_95;
      }

      v33 = objc_alloc_init(GEOMapRegion);
      if (!GEOMapRegionReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_94;
      }

      PBReaderRecallMark();
      v34 = 24;
      goto LABEL_71;
    }

LABEL_72:
    if ((v54 & 1) == 0 || (*(a1 + 68) & 4) != 0)
    {
LABEL_78:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_92;
    }

    if (!*(a1 + 16))
    {
      v40 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v41 = *(a1 + 16);
      *(a1 + 16) = v40;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v53 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
      goto LABEL_97;
    }

LABEL_92:
    if (!(BYTE4(v54) & 1 | (v6 != 0)))
    {
      goto LABEL_93;
    }
  }

  if (!v28)
  {
    goto LABEL_78;
  }

  if ((*(a1 + 68) & 0x10) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_95;
    }

    v42 = 8 * *(a1 + 68);
LABEL_86:
    v6 += v42 >> 7;
    goto LABEL_92;
  }

  v57 = 0;
  v58 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_95;
  }

  v33 = objc_alloc_init(GEOMapRegion);
  if (GEOMapRegionReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v34 = 32;
LABEL_71:
    v39 = *(a1 + v34);
    *(a1 + v34) = v33;

    --v6;
    goto LABEL_92;
  }

LABEL_94:

LABEL_95:
  v26 = 0;
LABEL_96:
  v53 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
  if ((v54 & 1) == 0)
  {
    goto LABEL_98;
  }

LABEL_97:
  *(a1 + v53[768]) |= 4u;
LABEL_98:
  if (v56 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v53[768]) |= 0x10u;
    *(a1 + v53[768]) |= 8u;
    *(a1 + v53[768]) |= 0x20u;
    goto LABEL_111;
  }

  if (v16)
  {
    while (2)
    {
      while (1)
      {
        v48 = *v16++;
        v47 = v48;
        v49 = v48 == 1;
        if (v48 > 1)
        {
          break;
        }

        if (v49)
        {
          v50 = 16;
LABEL_109:
          *(a1 + v53[768]) |= v50;
          continue;
        }

        if (!v47)
        {
          goto LABEL_111;
        }
      }

      if (v47 == 5)
      {
        v50 = 32;
      }

      else
      {
        if (v47 != 2)
        {
          continue;
        }

        v50 = 8;
      }

      goto LABEL_109;
    }
  }

LABEL_111:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v56)
  {
    v51 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOPDAddressObjectReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v21 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v21 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v21 & 0x7F) << v5;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v7 >> 3) == 1)
        {
          v14 = PBReaderReadData();
          v15 = *(a1 + 16);
          *(a1 + 16) = v14;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v16 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v17 = *(a1 + 8);
            *(a1 + 8) = v16;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_26;
          }
        }

        v18 = objc_msgSend_position(v3);
      }

      while (v18 < [v3 length]);
    }

    v19 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_26:
    v19 = 0;
  }

  objc_sync_exit(v3);

  return v19;
}

void *GEOPDISO3166CodeReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDISO3166CodeReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 56));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 48) = objc_msgSend_position(v8);
  *(a1 + 52) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDISO3166CodeReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDISO3166CodeReadAllFrom_initialTag;
  }

  Specified = GEOPDISO3166CodeReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 32) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOPDISO3166CodeReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 56));
  [v3 setLength:*(a1 + 52)];
  [v3 seekToOffset:*(a1 + 48)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 64)) & 0xFF00FF00FF00FFLL), 0xFFFFFFFCFFFEFFFDLL) & 0xFF01FF01FF01FF01));
  while (1)
  {
    v11 = a3[v7];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v8 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v6 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v7;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 > 1;
  v13 = v12 & ~v9 | v8;
  v14 = v9 | v12;
  LODWORD(v52) = v13;
  HIDWORD(v52) = v14 | v8;
  if ((v14 | v6))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v53 = (v15 == 0) | v14;
  v54 = v14;
  while (1)
  {
    v16 = objc_msgSend_position(v3, v52);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_85:
      v25 = 1;
      goto LABEL_88;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v55[0]) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:v55 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v55[0] & 0x7F) << v17;
      if ((v55[0] & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      v23 = v18++ >= 9;
      if (v23)
      {
        v19 = 0;
        goto LABEL_30;
      }
    }

    if ([v3 hasError])
    {
      v19 = 0;
    }

LABEL_30:
    v24 = [v3 hasError];
    v25 = 1;
    if ((v24 & 1) != 0 || (v19 & 7) == 4)
    {
      goto LABEL_88;
    }

    v26 = v19 >> 3;
    v27 = v54;
    if ((v53 & 1) == 0)
    {
      v28 = v15;
      do
      {
        v30 = *v28++;
        v29 = v30;
        v27 = v30 != 0;
        if (v30)
        {
          v31 = v29 == v26;
        }

        else
        {
          v31 = 1;
        }
      }

      while (!v31);
    }

    if (v26 <= 2)
    {
      break;
    }

    if (v26 == 3)
    {
      if (!v27)
      {
        goto LABEL_73;
      }

      if ((*(a1 + 64) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_87;
        }

        v45 = 8 * *(a1 + 64);
        goto LABEL_83;
      }

      v32 = PBReaderReadString();
      v33 = 40;
      goto LABEL_71;
    }

    if (v26 == 4)
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_73;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 64) |= 1u;
      while (1)
      {
        LOBYTE(v55[0]) = 0;
        v37 = objc_msgSend_position(v3) + 1;
        if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
        {
          v39 = [v3 data];
          [v39 getBytes:v55 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v36 |= (v55[0] & 0x7F) << v34;
        if ((v55[0] & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v23 = v35++ >= 9;
        if (v23)
        {
          v40 = 0;
          goto LABEL_76;
        }
      }

      v40 = (v36 != 0) & ~[v3 hasError];
LABEL_76:
      *(a1 + 60) = v40;
      goto LABEL_84;
    }

LABEL_57:
    if ((v52 & 1) == 0 || (*(a1 + 64) & 2) != 0)
    {
LABEL_73:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_84;
    }

    if (!*(a1 + 16))
    {
      v41 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v42 = *(a1 + 16);
      *(a1 + 16) = v41;
    }

    if (!PBUnknownFieldAdd())
    {
      v25 = 0;
      goto LABEL_89;
    }

LABEL_84:
    if (!(BYTE4(v52) & 1 | (v7 != 0)))
    {
      goto LABEL_85;
    }
  }

  if (v26 != 1)
  {
    if (v26 == 2)
    {
      if (!v27)
      {
        goto LABEL_73;
      }

      if ((*(a1 + 64) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_87;
        }

        v45 = 32 * *(a1 + 64);
LABEL_83:
        v7 += v45 >> 7;
        goto LABEL_84;
      }

      v32 = PBReaderReadString();
      v33 = 24;
LABEL_71:
      v44 = *(a1 + v33);
      *(a1 + v33) = v32;
LABEL_72:

      --v7;
      goto LABEL_84;
    }

    goto LABEL_57;
  }

  if (!v27)
  {
    goto LABEL_73;
  }

  if ((*(a1 + 64) & 8) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_87;
    }

    v45 = 16 * *(a1 + 64);
    goto LABEL_83;
  }

  v55[0] = 0;
  v55[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_87;
  }

  v43 = objc_alloc_init(GEOLatLngE7);
  if (GEOLatLngE7ReadAllFrom(v43, v3))
  {
    PBReaderRecallMark();
    v44 = *(a1 + 32);
    *(a1 + 32) = v43;
    goto LABEL_72;
  }

LABEL_87:
  v25 = 0;
LABEL_88:
  if ((v52 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_89:
  *(a1 + 64) |= 2u;
LABEL_90:
  if (v54 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + 64) |= 8u;
    *(a1 + 64) |= 4u;
    *(a1 + 64) |= 0x10u;
    goto LABEL_103;
  }

  if (v15)
  {
    while (2)
    {
      while (1)
      {
        v47 = *v15++;
        v46 = v47;
        v48 = v47 == 1;
        if (v47 > 1)
        {
          break;
        }

        if (v48)
        {
          v49 = 8;
LABEL_101:
          *(a1 + 64) |= v49;
          continue;
        }

        if (!v46)
        {
          goto LABEL_103;
        }
      }

      if (v46 == 3)
      {
        v49 = 16;
      }

      else
      {
        if (v46 != 2)
        {
          continue;
        }

        v49 = 4;
      }

      goto LABEL_101;
    }
  }

LABEL_103:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v54)
  {
    v50 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDPlaceInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlaceInfoReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 80));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 72) = objc_msgSend_position(v8);
  *(a1 + 76) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDPlaceInfoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlaceInfoReadAllFrom_initialTag;
  }

  Specified = GEOPDPlaceInfoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 40) readAll:1];
    [*(a1 + 48) readAll:1];
    [*(a1 + 56) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

void *GEOPDRatingReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDRatingReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 64));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 56) = objc_msgSend_position(v8);
  *(a1 + 60) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDRatingReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDRatingReadAllFrom_initialTag;
  }

  Specified = GEOPDRatingReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDRatingCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

uint64_t GEOPDRapReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v26 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v26 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v26 & 0x7F) << v5;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v7 >> 3) == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v27 = 0;
            v17 = objc_msgSend_position(v3);
            if (v17 + 1 >= objc_msgSend_position(v3) && (v18 = objc_msgSend_position(v3), v18 + 1 <= [v3 length]))
            {
              v19 = [v3 data];
              [v19 getBytes:&v27 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v16 |= (v27 & 0x7F) << v14;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_36;
            }
          }

          if ([v3 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_36:
          *(a1 + 16) = v20;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v21 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v22 = *(a1 + 8);
            *(a1 + 8) = v21;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_39;
          }
        }

        v23 = objc_msgSend_position(v3);
      }

      while (v23 < [v3 length]);
    }

    v24 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_39:
    v24 = 0;
  }

  objc_sync_exit(v3);

  return v24;
}

void *GEOPDCaptionedPhotoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 92))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDCaptionedPhotoReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 96));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 88) = objc_msgSend_position(v8);
  *(a1 + 92) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDCaptionedPhotoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDCaptionedPhotoReadAllFrom_initialTag;
  }

  Specified = GEOPDCaptionedPhotoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDCaptionedPhotoCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 96));
  return Specified;
}

void *GEOPDCaptionedPhotoReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 96));
  [v3 setLength:*(a1 + 92)];
  [v3 seekToOffset:*(a1 + 88)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 108) >> 7) & 1) + (vaddv_s16((*&vshl_u16(vdup_n_s16(*(a1 + 108)), 0xFFF3FFF4FFF7FFF6) & 0xFF81FF81FF81FF81)) + ((*(a1 + 108) >> 14) & 1) + ((*(a1 + 108) >> 11) & 1) + (HIBYTE(*(a1 + 108)) & 1));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 4;
  v86 = v9;
  v87 = v13 & ~v10 | v8;
  v14 = v10 | v13;
  v88 = v14 | v8;
  if ((v14 | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v89 = (v15 == 0) | v14;
  v90 = v14;
  while (2)
  {
    v16 = objc_msgSend_position(v3);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_176:
      v25 = 1;
      goto LABEL_177;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v91) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v91 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v91 & 0x7F) << v17;
      if ((v91 & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      v23 = v18++ >= 9;
      if (v23)
      {
        v19 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v19 = 0;
    }

LABEL_33:
    v24 = [v3 hasError];
    v25 = 1;
    if ((v24 & 1) != 0 || (v19 & 7) == 4)
    {
      goto LABEL_177;
    }

    v26 = v19 >> 3;
    v27 = v90;
    if ((v89 & 1) == 0)
    {
      v28 = v15;
      do
      {
        v30 = *v28++;
        v29 = v30;
        v27 = v30 != 0;
        if (v30)
        {
          v31 = v29 == v26;
        }

        else
        {
          v31 = 1;
        }
      }

      while (!v31);
    }

    switch(v26)
    {
      case 1:
        if (!v27)
        {
          goto LABEL_143;
        }

        if ((*(a1 + 108) & 0x400) == 0)
        {
          v32 = PBReaderReadString();
          v33 = 40;
          goto LABEL_89;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_208;
        }

        v79 = 32 * *(a1 + 108);
        goto LABEL_172;
      case 2:
        if (!v27)
        {
          goto LABEL_143;
        }

        if ((*(a1 + 108) & 0x200) == 0)
        {
          v32 = PBReaderReadString();
          v33 = 32;
LABEL_89:
          v51 = *(a1 + v33);
          *(a1 + v33) = v32;
          goto LABEL_126;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_208;
        }

        v79 = *(a1 + 108) << 6;
        goto LABEL_172;
      case 3:
        if (!v27)
        {
          goto LABEL_143;
        }

        if ((*(a1 + 108) & 0x1000) == 0)
        {
          v32 = PBReaderReadString();
          v33 = 64;
          goto LABEL_89;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_208;
        }

        v79 = 8 * *(a1 + 108);
        goto LABEL_172;
      case 4:
        if (!v27)
        {
          goto LABEL_143;
        }

        if ((*(a1 + 108) & 0x2000) == 0)
        {
          v32 = PBReaderReadString();
          v33 = 72;
          goto LABEL_89;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_208;
        }

        v79 = 4 * *(a1 + 108);
        goto LABEL_172;
      case 5:
        if (!v27)
        {
          goto LABEL_143;
        }

        if ((*(a1 + 108) & 0x4000) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_208;
          }

          v79 = 2 * *(a1 + 108);
          goto LABEL_172;
        }

        v91 = 0;
        v92 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_208;
        }

        v34 = objc_alloc_init(GEOPDPhoto);
        if (!GEOPDPhotoReadAllFrom(v34, v3, v86 & 1))
        {
          goto LABEL_207;
        }

        PBReaderRecallMark();
        v35 = 80;
        goto LABEL_125;
      case 6:
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 108) |= 2u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v55 = objc_msgSend_position(v3) + 1;
          if (v55 >= objc_msgSend_position(v3) && (v56 = objc_msgSend_position(v3) + 1, v56 <= [v3 length]))
          {
            v57 = [v3 data];
            [v57 getBytes:&v91 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v54 |= (v91 & 0x7F) << v52;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v23 = v53++ >= 9;
          if (v23)
          {
            v44 = 0;
            goto LABEL_150;
          }
        }

        v44 = (v54 != 0) & ~[v3 hasError];
LABEL_150:
        v78 = 100;
        goto LABEL_157;
      case 7:
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 108) |= 0x40u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v67 = objc_msgSend_position(v3) + 1;
          if (v67 >= objc_msgSend_position(v3) && (v68 = objc_msgSend_position(v3) + 1, v68 <= [v3 length]))
          {
            v69 = [v3 data];
            [v69 getBytes:&v91 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v66 |= (v91 & 0x7F) << v64;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v23 = v65++ >= 9;
          if (v23)
          {
            v44 = 0;
            goto LABEL_154;
          }
        }

        v44 = (v66 != 0) & ~[v3 hasError];
LABEL_154:
        v78 = 105;
        goto LABEL_157;
      case 8:
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 108) |= 8u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v48 = objc_msgSend_position(v3) + 1;
          if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
          {
            v50 = [v3 data];
            [v50 getBytes:&v91 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v47 |= (v91 & 0x7F) << v45;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v23 = v46++ >= 9;
          if (v23)
          {
            v44 = 0;
            goto LABEL_148;
          }
        }

        v44 = (v47 != 0) & ~[v3 hasError];
LABEL_148:
        v78 = 102;
        goto LABEL_157;
      case 9:
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 108) |= 0x10u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v73 = objc_msgSend_position(v3) + 1;
          if (v73 >= objc_msgSend_position(v3) && (v74 = objc_msgSend_position(v3) + 1, v74 <= [v3 length]))
          {
            v75 = [v3 data];
            [v75 getBytes:&v91 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v72 |= (v91 & 0x7F) << v70;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v23 = v71++ >= 9;
          if (v23)
          {
            v44 = 0;
            goto LABEL_156;
          }
        }

        v44 = (v72 != 0) & ~[v3 hasError];
LABEL_156:
        v78 = 103;
        goto LABEL_157;
      case 10:
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v41 = objc_msgSend_position(v3) + 1;
          if (v41 >= objc_msgSend_position(v3) && (v42 = objc_msgSend_position(v3) + 1, v42 <= [v3 length]))
          {
            v43 = [v3 data];
            [v43 getBytes:&v91 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v40 |= (v91 & 0x7F) << v38;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v23 = v39++ >= 9;
          if (v23)
          {
            v44 = 0;
            goto LABEL_146;
          }
        }

        v44 = (v40 != 0) & ~[v3 hasError];
LABEL_146:
        v78 = 101;
        goto LABEL_157;
      case 11:
        if (!v27)
        {
          goto LABEL_143;
        }

        if ((*(a1 + 108) & 0x800) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_208;
          }

          v79 = 16 * *(a1 + 108);
LABEL_172:
          v6 += v79 >> 15;
          goto LABEL_175;
        }

        v91 = 0;
        v92 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_208;
        }

        v34 = objc_alloc_init(GEOPDJoeColor);
        if (GEOPDJoeColorReadAllFrom(v34, v3, v86 & 1))
        {
          PBReaderRecallMark();
          v35 = 56;
LABEL_125:
          v51 = *(a1 + v35);
          *(a1 + v35) = v34;
LABEL_126:

          --v6;
LABEL_175:
          if (!(v88 & 1 | (v6 != 0)))
          {
            goto LABEL_176;
          }

          continue;
        }

LABEL_207:

LABEL_208:
        v25 = 0;
LABEL_177:
        if (v87)
        {
LABEL_178:
          *(a1 + 108) |= 0x80u;
        }

        if (v90 || (v25 & 1) == 0)
        {
          *(a1 + 108) |= 0x400u;
          *(a1 + 108) |= 0x200u;
          *(a1 + 108) |= 0x1000u;
          *(a1 + 108) |= 0x2000u;
          *(a1 + 108) |= 0x4000u;
          *(a1 + 108) |= 0x800u;
          *(a1 + 108) |= 0x100u;
          goto LABEL_201;
        }

        if (v15)
        {
          while (1)
          {
LABEL_182:
            v82 = *v15++;
            v81 = v82;
            if (v82 > 3)
            {
              if (v81 > 10)
              {
                if (v81 == 11)
                {
                  v83 = 2048;
                }

                else
                {
                  if (v81 != 12)
                  {
                    continue;
                  }

                  v83 = 256;
                }
              }

              else if (v81 == 4)
              {
                v83 = 0x2000;
              }

              else
              {
                if (v81 != 5)
                {
                  continue;
                }

                v83 = 0x4000;
              }

              goto LABEL_199;
            }

            if (v81 > 1)
            {
              break;
            }

            if (v81 == 1)
            {
              v83 = 1024;
LABEL_199:
              *(a1 + 108) |= v83;
              continue;
            }

            if (!v81)
            {
              goto LABEL_201;
            }
          }

          if (v81 == 2)
          {
            v83 = 512;
          }

          else
          {
            if (v81 != 3)
            {
              goto LABEL_182;
            }

            v83 = 4096;
          }

          goto LABEL_199;
        }

LABEL_201:
        if (v25)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v90)
        {
          v84 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 12:
        if (!v27)
        {
          goto LABEL_143;
        }

        if ((*(a1 + 108) & 0x100) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_208;
          }

          v79 = *(a1 + 108) << 7;
          goto LABEL_172;
        }

        v91 = 0;
        v92 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_208;
        }

        v34 = objc_alloc_init(GEOPDAttribution);
        if (!GEOPDAttributionReadAllFrom(v34, v3, v86 & 1))
        {
          goto LABEL_207;
        }

        PBReaderRecallMark();
        v35 = 24;
        goto LABEL_125;
      case 13:
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        *(a1 + 108) |= 1u;
        v91 = 0;
        v36 = objc_msgSend_position(v3) + 8;
        if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 8, v37 <= [v3 length]))
        {
          v80 = [v3 data];
          [v80 getBytes:&v91 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        *(a1 + 48) = v91;
        goto LABEL_175;
      case 14:
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 108) |= 0x20u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v61 = objc_msgSend_position(v3) + 1;
          if (v61 >= objc_msgSend_position(v3) && (v62 = objc_msgSend_position(v3) + 1, v62 <= [v3 length]))
          {
            v63 = [v3 data];
            [v63 getBytes:&v91 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v60 |= (v91 & 0x7F) << v58;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v23 = v59++ >= 9;
          if (v23)
          {
            v44 = 0;
            goto LABEL_152;
          }
        }

        v44 = (v60 != 0) & ~[v3 hasError];
LABEL_152:
        v78 = 104;
LABEL_157:
        *(a1 + v78) = v44;
        goto LABEL_175;
      default:
        if ((v87 & 1) == 0 || (*(a1 + 108) & 0x80) != 0)
        {
LABEL_143:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_208;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v76 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v77 = *(a1 + 16);
            *(a1 + 16) = v76;
          }

          if (!PBUnknownFieldAdd())
          {
            v25 = 0;
            goto LABEL_178;
          }
        }

        goto LABEL_175;
    }
  }
}

void *GEOPDBusinessHoursReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDBusinessHoursReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 80));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 72) = objc_msgSend_position(v8);
  *(a1 + 76) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDBusinessHoursReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDBusinessHoursReadAllFrom_initialTag;
  }

  Specified = GEOPDBusinessHoursReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDBusinessHoursCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

id _fetchPhotoRelatedDataAttributionsForPlaceData(void *a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [GEOPDCaptionedPhoto captionedPhotosForPlaceData:v1];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v54;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v54 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v53 + 1) + 8 * i);
        v9 = [(GEOPDCaptionedPhoto *)v8 attribution];
        v10 = v9;
        if (v9)
        {
          [(GEOPDAttribution *)v9 _readVendorId];
          v11 = v10[7];

          if (!v11)
          {
            continue;
          }

          v10 = [(GEOPDCaptionedPhoto *)v8 attribution];
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v5);
  }

  v12 = [v1 componentOfType:26 options:3];
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 16);
    v15 = v14;
    if (v14)
    {
      [(GEOPDAttribution *)v14 _readVendorId];
      v16 = v15[7];

      if (!v16)
      {
        goto LABEL_17;
      }

      v15 = v13[2];
      [v2 addObject:v15];
    }
  }

LABEL_17:
  v17 = [v1 componentOfType:84 options:3];
  v18 = [(GEOPDComponent *)v17 commingledAttributions];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [(GEOPDComponent *)v17 commingledAttributions];
    [v2 addObjectsFromArray:v20];
LABEL_21:

    goto LABEL_22;
  }

  v21 = [(GEOPDComponent *)v17 attribution];

  if (v21)
  {
    v20 = [(GEOPDComponent *)v17 attribution];
    [v2 addObject:v20];
    goto LABEL_21;
  }

LABEL_22:
  v38 = v13;
  v39 = v3;
  v40 = v1;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v37 = v17;
  obj = [(GEOPDComponent *)v17 values];
  v43 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (!v43)
  {
    goto LABEL_42;
  }

  v42 = *v50;
  do
  {
    for (j = 0; j != v43; ++j)
    {
      if (*v50 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v23 = [(GEOPDComponentValue *)*(*(&v49 + 1) + 8 * j) categorizedPhotos];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v44 = v23;
      v24 = [(GEOPDCategorizedPhotos *)v23 photos];
      v25 = [v24 countByEnumeratingWithState:&v45 objects:v57 count:{16, v37, v38, v39, v40}];
      if (v25)
      {
        v26 = v25;
        v27 = *v46;
        do
        {
          v28 = 0;
          do
          {
            if (*v46 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v45 + 1) + 8 * v28);
            v30 = [(GEOPDCaptionedPhoto *)v29 attribution];
            if (v30)
            {
              v31 = v30;
              [(GEOPDAttribution *)v30 _readVendorId];
              v32 = v31[7];

              if (!v32)
              {
                goto LABEL_36;
              }

              v33 = [(GEOPDCaptionedPhoto *)v29 attribution];
              [v2 addObject:v33];
            }

            else
            {
              v33 = 0;
            }

LABEL_36:
            ++v28;
          }

          while (v26 != v28);
          v34 = [v24 countByEnumeratingWithState:&v45 objects:v57 count:16];
          v26 = v34;
        }

        while (v34);
      }
    }

    v43 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
  }

  while (v43);
LABEL_42:

  v35 = [v2 copy];

  return v35;
}

void *GEOPDBusinessHoursReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 80));
  [v3 setLength:*(a1 + 76)];
  [v3 seekToOffset:*(a1 + 72)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 88)), 0xFFFCFFFAFFFBFFF9), 0x1000100010001)) + ((*(a1 + 88) >> 3) & 1));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 2;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v66) = v14;
  HIDWORD(v66) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v67 = (v16 == 0) | v15;
  v68 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v66);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_130:
      v26 = 1;
      goto LABEL_133;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v69) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v69 & 0x7F) << v18;
      if ((v69 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v24 = v19++ >= 9;
      if (v24)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_133;
    }

    v27 = v20 >> 3;
    v28 = v68;
    if ((v67 & 1) == 0)
    {
      v29 = v16;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 > 3)
    {
      break;
    }

    if (v27 != 1)
    {
      if (v27 == 2)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_107;
        }

        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 88) |= 2u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v55 = objc_msgSend_position(v3) + 1;
          if (v55 >= objc_msgSend_position(v3) && (v56 = objc_msgSend_position(v3) + 1, v56 <= [v3 length]))
          {
            v57 = [v3 data];
            [v57 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v54 |= (v69 & 0x7F) << v52;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v24 = v53++ >= 9;
          if (v24)
          {
            v41 = 0;
            goto LABEL_121;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v54;
        }

LABEL_121:
        v58 = 56;
        goto LABEL_122;
      }

      if (v27 == 3)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_107;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 88) |= 1u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v38 = objc_msgSend_position(v3) + 1;
          if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v37 |= (v69 & 0x7F) << v35;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v24 = v36++ >= 9;
          if (v24)
          {
            v41 = 0;
            goto LABEL_117;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_117:
        v58 = 24;
LABEL_122:
        *(a1 + v58) = v41;
        goto LABEL_108;
      }

LABEL_75:
      if ((v66 & 1) == 0 || (*(a1 + 88) & 8) != 0)
      {
        goto LABEL_107;
      }

      if (!*(a1 + 16))
      {
        v42 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v43 = *(a1 + 16);
        *(a1 + 16) = v42;
      }

      if (!PBUnknownFieldAdd())
      {
        v26 = 0;
        v65 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
        goto LABEL_134;
      }

      goto LABEL_108;
    }

    if (!v28 || (*(a1 + 88) & 0x80) != 0)
    {
LABEL_107:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_108;
    }

    v69 = 0;
    v70 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_132;
    }

    v33 = objc_alloc_init(GEOPDHours);
    if (!GEOPDHoursReadAllFrom(v33, v3, v9 & 1))
    {
      goto LABEL_131;
    }

    PBReaderRecallMark();
    [(GEOPDBusinessHours *)a1 _addNoFlagsWeeklyHours:v33];

LABEL_108:
    if (!(BYTE4(v66) & 1 | (v6 != 0)))
    {
      goto LABEL_130;
    }
  }

  if (v27 > 5)
  {
    if (v27 == 6)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_107;
      }

      v45 = 0;
      v46 = 0;
      v47 = 0;
      *(a1 + 88) |= 4u;
      while (1)
      {
        LOBYTE(v69) = 0;
        v48 = objc_msgSend_position(v3) + 1;
        if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
        {
          v50 = [v3 data];
          [v50 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v47 |= (v69 & 0x7F) << v45;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v45 += 7;
        v24 = v46++ >= 9;
        if (v24)
        {
          v51 = 0;
          goto LABEL_113;
        }
      }

      if ([v3 hasError])
      {
        v51 = 0;
      }

      else
      {
        v51 = v47;
      }

LABEL_113:
      *(a1 + 84) = v51;
      goto LABEL_108;
    }

    if (v27 == 7)
    {
      if (!v28)
      {
        goto LABEL_107;
      }

      if ((*(a1 + 88) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_132;
        }

        v59 = *(a1 + 88) << 11;
        goto LABEL_129;
      }

      v69 = 0;
      v70 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_132;
      }

      v33 = objc_alloc_init(GEOPDHoursThreshold);
      if (!GEOPDHoursThresholdReadAllFrom(v33, v3))
      {
        goto LABEL_131;
      }

      PBReaderRecallMark();
      v34 = 32;
      goto LABEL_86;
    }

    goto LABEL_75;
  }

  if (v27 != 4)
  {
    if (!v28)
    {
      goto LABEL_107;
    }

    if ((*(a1 + 88) & 0x40) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_132;
      }

      v59 = *(a1 + 88) << 9;
      goto LABEL_129;
    }

    v69 = 0;
    v70 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_132;
    }

    v33 = objc_alloc_init(GEOLocalizedString);
    if (!GEOLocalizedStringReadAllFrom(v33, v3, v9 & 1))
    {
      goto LABEL_131;
    }

    PBReaderRecallMark();
    v34 = 48;
    goto LABEL_86;
  }

  if (!v28)
  {
    goto LABEL_107;
  }

  if ((*(a1 + 88) & 0x20) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_132;
    }

    v59 = *(a1 + 88) << 10;
LABEL_129:
    v6 += v59 >> 15;
    goto LABEL_108;
  }

  v69 = 0;
  v70 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_132;
  }

  v33 = objc_alloc_init(GEOLocalizedString);
  if (GEOLocalizedStringReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v34 = 40;
LABEL_86:
    v44 = *(a1 + v34);
    *(a1 + v34) = v33;

    --v6;
    goto LABEL_108;
  }

LABEL_131:

LABEL_132:
  v26 = 0;
LABEL_133:
  v65 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
  if ((v66 & 1) == 0)
  {
    goto LABEL_135;
  }

LABEL_134:
  *(a1 + v65[803]) |= 8u;
LABEL_135:
  if (v68 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v65[803]) |= 0x80u;
    *(a1 + v65[803]) |= 0x20u;
    *(a1 + v65[803]) |= 0x40u;
    *(a1 + v65[803]) |= 0x10u;
    goto LABEL_149;
  }

  if (v16)
  {
    while (1)
    {
      v61 = *v16++;
      v60 = v61;
      if (v61 > 4)
      {
        if (v60 == 5)
        {
          v62 = 64;
        }

        else
        {
          if (v60 != 7)
          {
            continue;
          }

          v62 = 16;
        }

        goto LABEL_147;
      }

      if (v60 == 1)
      {
        break;
      }

      if (v60 == 4)
      {
        v62 = 32;
LABEL_147:
        *(a1 + v65[803]) |= v62;
        continue;
      }

      if (!v60)
      {
        goto LABEL_149;
      }
    }

    v62 = 128;
    goto LABEL_147;
  }

LABEL_149:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v68)
  {
    v63 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDHoursReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 84))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDHoursReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 88));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 80) = objc_msgSend_position(v8);
  *(a1 + 84) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDHoursReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDHoursReadAllFrom_initialTag;
  }

  Specified = GEOPDHoursReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 88));
  return Specified;
}

void *GEOPDHoursReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 88));
  [v3 setLength:*(a1 + 84)];
  [v3 seekToOffset:*(a1 + 80)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 92) >> 2) & 1) + (*(a1 + 92) & 1) + ((*(a1 + 92) >> 1) & 1) + ((*(a1 + 92) >> 3) & 1);
  while (1)
  {
    v11 = a3[v6];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v8 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v6;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 > 1;
  v57 = v12 & ~v9 | v8;
  v13 = v9 | v12;
  if ((v9 | v12 | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v15 = objc_msgSend_position(v3);
  if (v15 < [v3 length])
  {
    v58 = v13 | v8;
    v59 = (v14 == 0) | v13;
    v60 = v13;
    while (([v3 hasError] & 1) == 0)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v61) = 0;
        v19 = objc_msgSend_position(v3) + 1;
        if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
        {
          v21 = [v3 data];
          [v21 getBytes:&v61 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v18 |= (v61 & 0x7F) << v16;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v22 = v17++ >= 9;
        if (v22)
        {
          v18 = 0;
          goto LABEL_30;
        }
      }

      if ([v3 hasError])
      {
        v18 = 0;
      }

LABEL_30:
      v23 = [v3 hasError];
      v24 = 1;
      v13 = v60;
      if (v23)
      {
        goto LABEL_95;
      }

      v25 = v18 & 7;
      if (v25 == 4)
      {
        goto LABEL_95;
      }

      v26 = v18 >> 3;
      v27 = v60;
      if ((v59 & 1) == 0)
      {
        v28 = v14;
        do
        {
          v30 = *v28++;
          v29 = v30;
          v27 = v30 != 0;
          if (v30)
          {
            v31 = v29 == v26;
          }

          else
          {
            v31 = 1;
          }
        }

        while (!v31);
      }

      if (v26 == 3)
      {
        if (!v27)
        {
          goto LABEL_75;
        }

        if ((*(a1 + 92) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_117;
          }

          v6 += *(a1 + 92) << 28 >> 31;
        }

        else
        {
          v61 = 0;
          v62 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_117;
          }

          v39 = objc_alloc_init(GEOPDHoursThreshold);
          if (!GEOPDHoursThresholdReadAllFrom(v39, v3))
          {

LABEL_117:
            v24 = 0;
            goto LABEL_95;
          }

          PBReaderRecallMark();
          v40 = *(a1 + 72);
          *(a1 + 72) = v39;

          --v6;
        }
      }

      else
      {
        if (v26 != 2)
        {
          if (v26 == 1)
          {
            if (v27 && (*(a1 + 92) & 2) == 0)
            {
              if (v25 == 2)
              {
                v61 = 0;
                v62 = 0;
                if (!PBReaderPlaceMark())
                {
                  goto LABEL_117;
                }

                while (1)
                {
                  v32 = objc_msgSend_position(v3);
                  if (v32 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v33 = 0;
                  v34 = 0;
                  v35 = 0;
                  while (1)
                  {
                    v63 = 0;
                    v36 = objc_msgSend_position(v3) + 1;
                    if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
                    {
                      v38 = [v3 data];
                      [v38 getBytes:&v63 range:{objc_msgSend_position(v3), 1}];

                      [v3 setPosition:objc_msgSend_position(v3) + 1];
                    }

                    else
                    {
                      [v3 _setError];
                    }

                    v35 |= (v63 & 0x7F) << v33;
                    if ((v63 & 0x80) == 0)
                    {
                      break;
                    }

                    v33 += 7;
                    v22 = v34++ >= 9;
                    if (v22)
                    {
                      goto LABEL_58;
                    }
                  }

                  [v3 hasError];
LABEL_58:
                  PBRepeatedInt32Add();
                }

                PBReaderRecallMark();
              }

              else
              {
                v44 = 0;
                v45 = 0;
                v46 = 0;
                v56 = 24;
                while (1)
                {
                  LOBYTE(v61) = 0;
                  v47 = objc_msgSend_position(v3, v56) + 1;
                  if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
                  {
                    v49 = [v3 data];
                    [v49 getBytes:&v61 range:{objc_msgSend_position(v3), 1}];

                    [v3 setPosition:objc_msgSend_position(v3) + 1];
                  }

                  else
                  {
                    [v3 _setError];
                  }

                  v46 |= (v61 & 0x7F) << v44;
                  if ((v61 & 0x80) == 0)
                  {
                    break;
                  }

                  v44 += 7;
                  v22 = v45++ >= 9;
                  if (v22)
                  {
                    goto LABEL_92;
                  }
                }

                [v3 hasError];
LABEL_92:
                PBRepeatedInt32Add();
              }

              v13 = v60;
              goto LABEL_76;
            }
          }

          else if ((v57 & 1) != 0 && (*(a1 + 92) & 1) == 0)
          {
            if (!*(a1 + 16))
            {
              v41 = objc_alloc_init(MEMORY[0x1E69C65D8]);
              v42 = *(a1 + 16);
              *(a1 + 16) = v41;
            }

            if (!PBUnknownFieldAdd())
            {
              v24 = 0;
              goto LABEL_96;
            }

            goto LABEL_76;
          }

LABEL_75:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_76;
        }

        if (!v27 || (*(a1 + 92) & 4) != 0)
        {
          goto LABEL_75;
        }

        v61 = 0;
        v62 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_117;
        }

        [(GEOPDHours *)a1 _reserveTimeRanges:?];
        if ((GEOPDLocalTimeRangeReadAllFrom(*(a1 + 48) + 12 * *(a1 + 56), v3) & 1) == 0)
        {
          goto LABEL_117;
        }

        PBReaderRecallMark();
        ++*(a1 + 56);
      }

LABEL_76:
      if (v58 & 1 | (v6 != 0))
      {
        v43 = objc_msgSend_position(v3);
        if (v43 < [v3 length])
        {
          continue;
        }
      }

      break;
    }
  }

  v24 = 1;
LABEL_95:
  if (v57)
  {
LABEL_96:
    *(a1 + 92) |= 1u;
  }

  if (!(v13 & 1 | ((v24 & 1) == 0)))
  {
    if (!v14)
    {
      goto LABEL_110;
    }

    while (1)
    {
      while (1)
      {
        v51 = *v14++;
        v50 = v51;
        v52 = v51 == 1;
        if (v51 <= 1)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = 8;
LABEL_108:
          *(a1 + 92) |= v53;
        }

        else if (v50 == 2)
        {
          v53 = 4;
          goto LABEL_108;
        }
      }

      if (v52)
      {
        v53 = 2;
        goto LABEL_108;
      }

      if (!v50)
      {
        goto LABEL_110;
      }
    }
  }

  *(a1 + 92) |= 2u;
  *(a1 + 92) |= 4u;
  *(a1 + 92) |= 8u;
LABEL_110:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_114;
  }

  v3 = 0;
  if (v13)
  {
LABEL_114:
    v54 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDResultSnippetReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 84))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDResultSnippetReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 88));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 80) = objc_msgSend_position(v8);
  *(a1 + 84) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDResultSnippetReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDResultSnippetReadAllFrom_initialTag;
  }

  Specified = GEOPDResultSnippetReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDResultSnippetCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 88));
  return Specified;
}

void *GEOPDResultSnippetReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 88));
  [v3 setLength:*(a1 + 84)];
  [v3 seekToOffset:*(a1 + 80)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 96) >> 1) & 1) + (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 96)), 0xFFFBFFF8FFFEFFFALL), 0x1000100010001)) + ((*(a1 + 96) >> 4) & 1) + ((*(a1 + 96) >> 7) & 1) + ((*(a1 + 96) >> 3) & 1));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 4;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v54) = v14;
  HIDWORD(v54) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v55 = (v16 == 0) | v15;
  v56 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v54);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_120:
      v26 = 1;
      goto LABEL_123;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v57) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v57 & 0x7F) << v18;
      if ((v57 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v24 = v19++ >= 9;
      if (v24)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_123;
    }

    v27 = v20 >> 3;
    v28 = v56;
    if ((v55 & 1) == 0)
    {
      v29 = v16;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 > 5)
    {
      break;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        if (!v28)
        {
          goto LABEL_102;
        }

        if ((*(a1 + 96) & 0x100) == 0)
        {
          v57 = 0;
          v58 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_122;
          }

          v35 = objc_alloc_init(GEOPDRating);
          if (!GEOPDRatingReadAllFrom(v35, v3, v9 & 1))
          {
            goto LABEL_121;
          }

          PBReaderRecallMark();
          v44 = 72;
LABEL_94:
          v36 = *(a1 + v44);
          *(a1 + v44) = v35;
LABEL_95:

          --v6;
          goto LABEL_103;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_122;
        }

        v47 = *(a1 + 96) << 7;
        goto LABEL_119;
      }

      if (v27 == 5)
      {
        if (!v28)
        {
          goto LABEL_102;
        }

        if ((*(a1 + 96) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_122;
          }

          v47 = *(a1 + 96) << 10;
          goto LABEL_119;
        }

        v33 = PBReaderReadString();
        v34 = 48;
        goto LABEL_73;
      }
    }

    else
    {
      if (v27 == 1)
      {
        if (!v28)
        {
          goto LABEL_102;
        }

        if ((*(a1 + 96) & 0x40) == 0)
        {
          v33 = PBReaderReadString();
          v34 = 56;
LABEL_73:
          v36 = *(a1 + v34);
          *(a1 + v34) = v33;
          goto LABEL_95;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_122;
        }

        v47 = *(a1 + 96) << 9;
LABEL_119:
        v6 += v47 >> 15;
        goto LABEL_103;
      }

      if (v27 == 2)
      {
        if (!v28)
        {
          goto LABEL_102;
        }

        if ((*(a1 + 96) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_122;
          }

          v47 = *(a1 + 96) << 13;
          goto LABEL_119;
        }

        v33 = PBReaderReadString();
        v34 = 24;
        goto LABEL_73;
      }
    }

LABEL_96:
    if ((v54 & 1) == 0 || (*(a1 + 96) & 2) != 0)
    {
      goto LABEL_102;
    }

    if (!*(a1 + 16))
    {
      v45 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v46 = *(a1 + 16);
      *(a1 + 16) = v45;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v53 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
      goto LABEL_124;
    }

LABEL_103:
    if (!(BYTE4(v54) & 1 | (v6 != 0)))
    {
      goto LABEL_120;
    }
  }

  if (v27 <= 8)
  {
    if (v27 == 6)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_102;
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      *(a1 + 96) |= 1u;
      while (1)
      {
        LOBYTE(v57) = 0;
        v40 = objc_msgSend_position(v3) + 1;
        if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 1, v41 <= [v3 length]))
        {
          v42 = [v3 data];
          [v42 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v39 |= (v57 & 0x7F) << v37;
        if ((v57 & 0x80) == 0)
        {
          break;
        }

        v37 += 7;
        v24 = v38++ >= 9;
        if (v24)
        {
          v43 = 0;
          goto LABEL_108;
        }
      }

      if ([v3 hasError])
      {
        v43 = 0;
      }

      else
      {
        v43 = v39;
      }

LABEL_108:
      *(a1 + 92) = v43;
      goto LABEL_103;
    }

    if (v27 == 8)
    {
      if (!v28 || (*(a1 + 96) & 0x10) != 0)
      {
        goto LABEL_102;
      }

      v57 = 0;
      v58 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_122;
      }

      v35 = objc_alloc_init(GEOPDChildPlace);
      if (!GEOPDChildPlaceReadAllFrom(v35, v3, v9 & 1))
      {
        goto LABEL_121;
      }

      PBReaderRecallMark();
      [(GEOPDResultSnippet *)a1 _addNoFlagsChildPlace:v35];
LABEL_69:

      goto LABEL_103;
    }

    goto LABEL_96;
  }

  if (v27 != 9)
  {
    if (v27 == 10)
    {
      if (!v28 || (*(a1 + 96) & 8) != 0)
      {
LABEL_102:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_103;
      }

      v57 = 0;
      v58 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_122;
      }

      v35 = objc_alloc_init(GEOPDChildItem);
      if (!GEOPDChildItemReadAllFrom(v35, v3, v9 & 1))
      {
        goto LABEL_121;
      }

      PBReaderRecallMark();
      [(GEOPDResultSnippet *)a1 _addNoFlagsChildItem:v35];
      goto LABEL_69;
    }

    goto LABEL_96;
  }

  if (!v28)
  {
    goto LABEL_102;
  }

  if ((*(a1 + 96) & 0x80) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_122;
    }

    v47 = *(a1 + 96) << 8;
    goto LABEL_119;
  }

  v57 = 0;
  v58 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_122;
  }

  v35 = objc_alloc_init(GEOPDPriceDescription);
  if (GEOPDPriceDescriptionReadAllFrom(v35, v3))
  {
    PBReaderRecallMark();
    v44 = 64;
    goto LABEL_94;
  }

LABEL_121:

LABEL_122:
  v26 = 0;
LABEL_123:
  v53 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v54 & 1) == 0)
  {
    goto LABEL_125;
  }

LABEL_124:
  *(a1 + v53[247]) |= 2u;
LABEL_125:
  if (v56 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v53[247]) |= 0x40u;
    *(a1 + v53[247]) |= 4u;
    *(a1 + v53[247]) |= 0x100u;
    *(a1 + v53[247]) |= 0x20u;
    *(a1 + v53[247]) |= 0x10u;
    *(a1 + v53[247]) |= 0x80u;
    *(a1 + v53[247]) |= 8u;
    goto LABEL_147;
  }

  if (v16)
  {
    while (1)
    {
LABEL_128:
      v49 = *v16++;
      v48 = v49;
      if (v49 > 4)
      {
        if (v48 > 8)
        {
          if (v48 == 9)
          {
            v50 = 128;
          }

          else
          {
            if (v48 != 10)
            {
              continue;
            }

            v50 = 8;
          }
        }

        else if (v48 == 5)
        {
          v50 = 32;
        }

        else
        {
          if (v48 != 8)
          {
            continue;
          }

          v50 = 16;
        }

        goto LABEL_145;
      }

      if (v48 > 1)
      {
        break;
      }

      if (v48 == 1)
      {
        v50 = 64;
LABEL_145:
        *(a1 + v53[247]) |= v50;
        continue;
      }

      if (!v48)
      {
        goto LABEL_147;
      }
    }

    if (v48 == 2)
    {
      v50 = 4;
    }

    else
    {
      if (v48 != 3)
      {
        goto LABEL_128;
      }

      v50 = 256;
    }

    goto LABEL_145;
  }

LABEL_147:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v56)
  {
    v51 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDRatingReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 64));
  [v3 setLength:*(a1 + 60)];
  [v3 seekToOffset:*(a1 + 56)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 76) >> 5) & 1) + ((*(a1 + 76) >> 6) & 1) + ((*(a1 + 76) >> 4) & 1);
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 != 0;
  LODWORD(v64) = v13 & ~v10 | v8;
  v14 = v10 | v13;
  if (((v10 | v13) | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = v6 != 0;
  v17 = objc_msgSend_position(v3);
  if (v17 >= [v3 length])
  {
    v26 = 1;
    goto LABEL_114;
  }

  HIDWORD(v64) = v16 | v8 | v14;
  while (2)
  {
    if ([v3 hasError])
    {
LABEL_112:
      v26 = 1;
      goto LABEL_114;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v65) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v65 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v65 & 0x7F) << v18;
      if ((v65 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v24 = v19++ >= 9;
      if (v24)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_114;
    }

    v27 = v20 >> 3;
    v28 = v14;
    if (!((v15 == 0) | v14 & 1))
    {
      v29 = v15;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 <= 3)
    {
      if (v27 != 1)
      {
        if (v27 == 2)
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_94;
          }

          *(a1 + 76) |= 2u;
          v65 = 0;
          v51 = objc_msgSend_position(v3) + 8;
          if (v51 >= objc_msgSend_position(v3) && (v52 = objc_msgSend_position(v3) + 8, v52 <= [v3 length]))
          {
            v57 = [v3 data];
            [v57 getBytes:&v65 range:{objc_msgSend_position(v3), 8}];

            [v3 setPosition:objc_msgSend_position(v3) + 8];
          }

          else
          {
            [v3 _setError];
          }

          v55 = v65;
          v56 = 48;
LABEL_109:
          *(a1 + v56) = v55;
        }

        else
        {
          if (v27 == 3)
          {
            if (v7)
            {
              *(a1 + 76) |= 1u;
              v65 = 0;
              v33 = objc_msgSend_position(v3) + 8;
              if (v33 >= objc_msgSend_position(v3) && (v34 = objc_msgSend_position(v3) + 8, v34 <= [v3 length]))
              {
                v54 = [v3 data];
                [v54 getBytes:&v65 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v55 = v65;
              v56 = 32;
              goto LABEL_109;
            }

LABEL_94:
            v26 = PBReaderSkipValueWithTag();
            if ((v26 & HIDWORD(v64) & 1) == 0)
            {
              goto LABEL_114;
            }

LABEL_111:
            v58 = objc_msgSend_position(v3);
            if (v58 >= [v3 length])
            {
              goto LABEL_112;
            }

            continue;
          }

LABEL_78:
          if ((v64 & 1) == 0 || (*(a1 + 76) & 0x10) != 0)
          {
            goto LABEL_94;
          }

          if (!*(a1 + 16))
          {
            v49 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v50 = *(a1 + 16);
            *(a1 + 16) = v49;
          }

          v26 = PBUnknownFieldAdd();
          if (!v26)
          {
            goto LABEL_115;
          }
        }

LABEL_110:
        if ((v64 & 0x100000000) == 0)
        {
          goto LABEL_112;
        }

        goto LABEL_111;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_94;
      }

      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 76) |= 8u;
      while (1)
      {
        LOBYTE(v65) = 0;
        v39 = objc_msgSend_position(v3) + 1;
        if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
        {
          v41 = [v3 data];
          [v41 getBytes:&v65 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v38 |= (v65 & 0x7F) << v36;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v24 = v37++ >= 9;
        if (v24)
        {
          v42 = 0;
          goto LABEL_99;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v38;
      }

LABEL_99:
      v53 = 72;
LABEL_104:
      *(a1 + v53) = v42;
      goto LABEL_110;
    }

    break;
  }

  if (v27 == 4)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_94;
    }

    v43 = 0;
    v44 = 0;
    v45 = 0;
    *(a1 + 76) |= 4u;
    while (1)
    {
      LOBYTE(v65) = 0;
      v46 = objc_msgSend_position(v3) + 1;
      if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
      {
        v48 = [v3 data];
        [v48 getBytes:&v65 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v45 |= (v65 & 0x7F) << v43;
      if ((v65 & 0x80) == 0)
      {
        break;
      }

      v43 += 7;
      v24 = v44++ >= 9;
      if (v24)
      {
        v42 = 0;
        goto LABEL_103;
      }
    }

    if ([v3 hasError])
    {
      v42 = 0;
    }

    else
    {
      v42 = v45;
    }

LABEL_103:
    v53 = 68;
    goto LABEL_104;
  }

  if (v27 != 5)
  {
    if (v27 != 6)
    {
      goto LABEL_78;
    }

    if (!v28 || (*(a1 + 76) & 0x40) != 0)
    {
      goto LABEL_94;
    }

    v65 = 0;
    v66 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_133;
    }

    v35 = objc_alloc_init(GEOLocalizedString);
    if (!GEOLocalizedStringReadAllFrom(v35, v3, v9 & 1))
    {
      goto LABEL_132;
    }

    PBReaderRecallMark();
    [(GEOPDRating *)a1 _addNoFlagsReviewSummary:v35];
    goto LABEL_93;
  }

  if (!v28 || (*(a1 + 76) & 0x20) != 0)
  {
    goto LABEL_94;
  }

  v65 = 0;
  v66 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_133;
  }

  v35 = objc_alloc_init(GEOLocalizedString);
  if (GEOLocalizedStringReadAllFrom(v35, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDRating *)a1 _addNoFlagsAppleRatingCategory:v35];
LABEL_93:

    goto LABEL_110;
  }

LABEL_132:

LABEL_133:
  v26 = 0;
LABEL_114:
  if (v64)
  {
LABEL_115:
    *(a1 + 76) |= 0x10u;
  }

  if (v14 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 76) |= 0x20u;
    *(a1 + 76) |= 0x40u;
    goto LABEL_126;
  }

  if (v15)
  {
    while (1)
    {
      v60 = *v15++;
      v59 = v60;
      if (v60 == 5)
      {
        break;
      }

      if (v59 == 6)
      {
        v61 = 64;
LABEL_125:
        *(a1 + 76) |= v61;
        continue;
      }

      if (!v59)
      {
        goto LABEL_126;
      }
    }

    v61 = 32;
    goto LABEL_125;
  }

LABEL_126:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

LABEL_130:
    v62 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_130;
    }
  }

  return v3;
}

uint64_t GEOStyleAttributesReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
          v8 = objc_msgSend_position(v3, v28[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v28 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v28[0] & 0x7F) << v5;
          if ((v28[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            LOBYTE(v28[0]) = 0;
            v19 = objc_msgSend_position(v3, v28[0]);
            if (v19 + 1 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3), v20 + 1 <= [v3 length]))
            {
              v21 = [v3 data];
              [v21 getBytes:v28 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v18 |= (v28[0] & 0x7F) << v16;
            if ((v28[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_40;
            }
          }

          if ([v3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_40:
          *(a1 + 24) = v22;
        }

        else if (v14 == 1)
        {
          v28[0] = 0;
          v28[1] = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_44;
          }

          v15 = objc_alloc_init(GEOStyleAttribute);
          if (!GEOStyleAttributeReadAllFrom(v15, v3))
          {

            goto LABEL_44;
          }

          PBReaderRecallMark();
          [a1 addAttribute:v15];
        }

        else
        {
          if (!*(a1 + 8))
          {
            v23 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v24 = *(a1 + 8);
            *(a1 + 8) = v23;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_44;
          }
        }

        v25 = objc_msgSend_position(v3);
      }

      while (v25 < [v3 length]);
    }

    v26 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_44:
    v26 = 0;
  }

  objc_sync_exit(v3);

  return v26;
}

void *GEOPDStorefrontPresentationReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDStorefrontPresentationReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 48));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 40) = objc_msgSend_position(v8);
  *(a1 + 44) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDStorefrontPresentationReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDStorefrontPresentationReadAllFrom_initialTag;
  }

  Specified = GEOPDStorefrontPresentationReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 16) readAll:1];
    [*(a1 + 32) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDStorefrontPresentationReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 48));
  [v3 setLength:*(a1 + 44)];
  [v3 seekToOffset:*(a1 + 40)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 52) >> 2) & 1) + (*(a1 + 52) & 1) + ((*(a1 + 52) >> 1) & 1);
  while (1)
  {
    v11 = a3[v6];
    if (v11 > -2)
    {
      break;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_13;
    }

    if (v11 == -2)
    {
      goto LABEL_9;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v6;
  }

  if (v11 == -1)
  {
    v8 = 1;
LABEL_9:
    v9 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v9 | (v10 > 1);
  if (v9 & 1 | (v10 > 1) | v7 & 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  while (1)
  {
    v14 = objc_msgSend_position(v3);
    if (v14 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
      goto LABEL_70;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      LOBYTE(v41) = 0;
      v18 = objc_msgSend_position(v3) + 1;
      if (v18 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3) + 1, v19 <= [v3 length]))
      {
        v20 = [v3 data];
        [v20 getBytes:&v41 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v17 |= (v41 & 0x7F) << v15;
      if ((v41 & 0x80) == 0)
      {
        break;
      }

      v15 += 7;
      if (v16++ >= 9)
      {
        v22 = 0;
        goto LABEL_31;
      }
    }

    v22 = [v3 hasError] ? 0 : v17;
LABEL_31:
    if (([v3 hasError] & 1) != 0 || (v22 & 7) == 4)
    {
LABEL_70:
      if (v12)
      {
        v34 = 1;
        goto LABEL_86;
      }

      if (!v13)
      {
LABEL_87:
        v3 = ([v3 hasError] ^ 1);
        if ((v12 & 1) == 0)
        {
          return v3;
        }

        goto LABEL_88;
      }

      while (1)
      {
        while (1)
        {
          v36 = *v13++;
          v35 = v36;
          v37 = v36 == 4;
          if (v36 <= 4)
          {
            break;
          }

          if (v35 == 6)
          {
            v38 = 2;
LABEL_81:
            *(a1 + 52) |= v38;
          }

          else if (v35 == 5)
          {
            v38 = 4;
            goto LABEL_81;
          }
        }

        if (v37)
        {
          v38 = 1;
          goto LABEL_81;
        }

        if (!v35)
        {
          goto LABEL_87;
        }
      }
    }

    v23 = v22 >> 3;
    v24 = v12;
    if (!((v13 == 0) | v12 & 1))
    {
      v25 = v13;
      do
      {
        v27 = *v25++;
        v26 = v27;
        v24 = v27 != 0;
        if (v27)
        {
          v28 = v26 == v23;
        }

        else
        {
          v28 = 1;
        }
      }

      while (!v28);
    }

    if (v23 != 6)
    {
      break;
    }

    if (!v24)
    {
LABEL_60:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_69;
    }

    if ((*(a1 + 52) & 2) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_85;
      }

      v33 = *(a1 + 52) << 6;
      goto LABEL_66;
    }

    v32 = PBReaderReadString();
    v31 = *(a1 + 24);
    *(a1 + 24) = v32;
LABEL_57:

    --v6;
LABEL_69:
    if (!(v12 & 1 | (v6 != 0)))
    {
      goto LABEL_70;
    }
  }

  if (v23 != 5)
  {
    if (v23 != 4)
    {
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_85;
      }

      goto LABEL_69;
    }

    if (!v24)
    {
      goto LABEL_60;
    }

    if (*(a1 + 52))
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_85;
      }

      v6 -= *(a1 + 52) & 1;
      goto LABEL_69;
    }

    v41 = 0;
    v42 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_85;
    }

    v29 = objc_alloc_init(GEOPDStorefrontView);
    if (!GEOPDStorefrontViewReadAllFrom(v29, v3, v8 & 1))
    {
      goto LABEL_84;
    }

    PBReaderRecallMark();
    v30 = 16;
    goto LABEL_53;
  }

  if (!v24)
  {
    goto LABEL_60;
  }

  if ((*(a1 + 52) & 4) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_85;
    }

    v33 = 32 * *(a1 + 52);
LABEL_66:
    v6 += v33 >> 7;
    goto LABEL_69;
  }

  v41 = 0;
  v42 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_85;
  }

  v29 = objc_alloc_init(GEOPDStorefrontView);
  if (GEOPDStorefrontViewReadAllFrom(v29, v3, v8 & 1))
  {
    PBReaderRecallMark();
    v30 = 32;
LABEL_53:
    v31 = *(a1 + v30);
    *(a1 + v30) = v29;
    goto LABEL_57;
  }

LABEL_84:

LABEL_85:
  v34 = 0;
LABEL_86:
  *(a1 + 52) |= 1u;
  *(a1 + 52) |= 4u;
  *(a1 + 52) |= 2u;
  if (v34)
  {
    goto LABEL_87;
  }

  v3 = 0;
  if (v12)
  {
LABEL_88:
    v39 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOPDStorefrontReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v19[0]) = 0;
          v8 = objc_msgSend_position(v3, v19[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v19 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v19[0] & 0x7F) << v5;
          if ((v19[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v12 = [v3 hasError] ? 0 : v7;
LABEL_16:
        v13 = [v3 hasError];
        v14 = (v12 & 7) == 4 ? 1 : v13;
        if (v14)
        {
          break;
        }

        if ((v12 >> 3) == 4)
        {
          v19[0] = 0;
          v19[1] = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_28;
          }

          v15 = objc_alloc_init(GEOPDStorefrontBundleId);
          if (!GEOPDStorefrontBundleIdReadAllFrom(v15, v3))
          {

            goto LABEL_28;
          }

          PBReaderRecallMark();
          [(GEOPDStorefront *)a1 addBundleId:v15];
        }

        else if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_28;
        }

        v16 = objc_msgSend_position(v3);
      }

      while (v16 < [v3 length]);
    }

    v17 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_28:
    v17 = 0;
  }

  objc_sync_exit(v3);

  return v17;
}

uint64_t GEOPDStorefrontBundleIdReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v32 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v32 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v32 & 0x7F) << v5;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v12 = [v3 hasError] ? 0 : v7;
LABEL_16:
        v13 = [v3 hasError];
        v14 = (v12 & 7) == 4 ? 1 : v13;
        if (v14)
        {
          break;
        }

        if ((v12 >> 3) == 2)
        {
          v24 = 0;
          v25 = 0;
          v17 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v33 = 0;
            v26 = objc_msgSend_position(v3);
            if (v26 + 1 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 1 <= [v3 length]))
            {
              v28 = [v3 data];
              [v28 getBytes:&v33 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v33 & 0x7F) << v24;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v21 = v25++ > 8;
            if (v21)
            {
              v22 = 0;
              v23 = &OBJC_IVAR___GEOPDStorefrontBundleId__timestamp;
              goto LABEL_47;
            }
          }

          v23 = &OBJC_IVAR___GEOPDStorefrontBundleId__timestamp;
        }

        else
        {
          if ((v12 >> 3) != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_48;
          }

          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v34 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v34 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v34 & 0x7F) << v15;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v21 = v16++ > 8;
            if (v21)
            {
              v22 = 0;
              v23 = &OBJC_IVAR___GEOPDStorefrontBundleId__identifier;
              goto LABEL_47;
            }
          }

          v23 = &OBJC_IVAR___GEOPDStorefrontBundleId__identifier;
        }

        if ([v3 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v17;
        }

LABEL_47:
        *(a1 + *v23) = v22;
LABEL_48:
        v29 = objc_msgSend_position(v3);
      }

      while (v29 < [v3 length]);
    }

    v30 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_50:
    v30 = 0;
  }

  objc_sync_exit(v3);

  return v30;
}

void sub_1867502DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _GEOPDPlaceCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  [*(a1 + 48) readAll:1];
  [(GEOPDPlacecardLayoutData *)*(a1 + 72) readAll:?];
  v2 = *(a1 + 88);

  return [v2 readAll:1];
}

void _loadAttributions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if (+[GEOMapService shouldResolveAttribution])
    {
      v5 = +[GEOSearchAttributionManifestManager sharedManager];
      v6 = [v3 allObjects];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = ___loadAttributions_block_invoke;
      v7[3] = &unk_1E705FE20;
      v8 = v4;
      [v5 loadAttributionInfoForIdentifiers:v6 completionHandler:v7];
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

void sub_186753168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *GEOSearchAttributionManifestReadAllFrom(uint64_t a1, void *a2)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOSearchAttributionManifestReadAllFrom can only be called once per object"];
  }

  else
  {
    if (!(objc_msgSend_position(a2) >> 32) && !([a2 length] >> 32))
    {
      os_unfair_lock_lock((a1 + 64));
      v6 = a2;
      objc_sync_enter(v6);
      objc_storeStrong((a1 + 8), a2);
      *(a1 + 56) = objc_msgSend_position(v6);
      *(a1 + 60) = [v6 length];
      Specified = GEOSearchAttributionManifestReadSpecified(a1, v6, &GEOSearchAttributionManifestReadAllFrom_initialTag);
      objc_sync_exit(v6);

      os_unfair_lock_unlock((a1 + 64));
      return Specified;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v7, 2u);
    }
  }

  return 0;
}

void *GEOSearchAttributionManifestReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 64));
  [v3 setLength:*(a1 + 60)];
  [v3 seekToOffset:*(a1 + 56)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 68)) & 0xFF00FF00FF00FFLL), 0xFFFFFFFCFFFEFFFDLL) & 0xFF01FF01FF01FF01));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 1;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v48) = v14;
  HIDWORD(v48) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v49 = (v16 == 0) | v15;
  v50 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v48);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_78:
      v26 = 1;
      goto LABEL_81;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v51) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v51 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v51 & 0x7F) << v18;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      if (v19++ >= 9)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_81;
    }

    v27 = v20 >> 3;
    v28 = v50;
    if ((v49 & 1) == 0)
    {
      v29 = v16;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 <= 199)
    {
      break;
    }

    if (v27 == 200)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_71;
      }

      *(a1 + 68) |= 1u;
      v51 = 0;
      v38 = objc_msgSend_position(v3) + 8;
      if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 8, v39 <= [v3 length]))
      {
        v40 = [v3 data];
        [v40 getBytes:&v51 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      *(a1 + 48) = v51;
      goto LABEL_72;
    }

    if (v27 == 201)
    {
      if (!v28)
      {
        goto LABEL_71;
      }

      if ((*(a1 + 68) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_80;
        }

        v6 += *(a1 + 68) << 27 >> 31;
      }

      else
      {
        v34 = PBReaderReadString();
        v35 = *(a1 + 40);
        *(a1 + 40) = v34;

        --v6;
      }

      goto LABEL_72;
    }

LABEL_55:
    if ((v48 & 1) == 0 || (*(a1 + 68) & 2) != 0)
    {
      goto LABEL_71;
    }

    if (!*(a1 + 16))
    {
      v36 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v37 = *(a1 + 16);
      *(a1 + 16) = v36;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v47 = &OBJC_IVAR___GEOPlaceCollectionStorage__readerLock;
      goto LABEL_82;
    }

LABEL_72:
    if (!(BYTE4(v48) & 1 | (v6 != 0)))
    {
      goto LABEL_78;
    }
  }

  if (v27 != 1)
  {
    if (v27 == 2)
    {
      if (!v28 || (*(a1 + 68) & 4) != 0)
      {
        goto LABEL_71;
      }

      v51 = 0;
      v52 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_80;
      }

      v33 = objc_alloc_init(GEOActionComponentMapEntry);
      if (!GEOActionComponentMapEntryReadAllFrom(v33, v3))
      {
        goto LABEL_79;
      }

      PBReaderRecallMark();
      [(GEOSearchAttributionManifest *)a1 _addNoFlagsActionComponentMapEntries:v33];
      goto LABEL_66;
    }

    goto LABEL_55;
  }

  if (!v28 || (*(a1 + 68) & 8) != 0)
  {
LABEL_71:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_72;
  }

  v51 = 0;
  v52 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_80;
  }

  v33 = objc_alloc_init(GEOSearchAttributionSource);
  if (GEOSearchAttributionSourceReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOSearchAttributionManifest *)a1 _addNoFlagsSearchAttributionSources:v33];
LABEL_66:

    goto LABEL_72;
  }

LABEL_79:

LABEL_80:
  v26 = 0;
LABEL_81:
  v47 = &OBJC_IVAR___GEOPlaceCollectionStorage__readerLock;
  if ((v48 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_82:
  *(a1 + v47[303]) |= 2u;
LABEL_83:
  if (v50 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v47[303]) |= 8u;
    *(a1 + v47[303]) |= 4u;
    *(a1 + v47[303]) |= 0x10u;
    goto LABEL_96;
  }

  if (v16)
  {
    while (2)
    {
      while (1)
      {
        v42 = *v16++;
        v41 = v42;
        v43 = v42 == 1;
        if (v42 > 1)
        {
          break;
        }

        if (v43)
        {
          v44 = 8;
LABEL_94:
          *(a1 + v47[303]) |= v44;
          continue;
        }

        if (!v41)
        {
          goto LABEL_96;
        }
      }

      if (v41 == 201)
      {
        v44 = 16;
      }

      else
      {
        if (v41 != 2)
        {
          continue;
        }

        v44 = 4;
      }

      goto LABEL_94;
    }
  }

LABEL_96:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v50)
  {
    v45 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOSearchAttributionSourceReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 124))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOSearchAttributionSourceReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 128));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 120) = objc_msgSend_position(v8);
  *(a1 + 124) = [v8 length];
  if (a3)
  {
    v9 = &GEOSearchAttributionSourceReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOSearchAttributionSourceReadAllFrom_initialTag;
  }

  Specified = GEOSearchAttributionSourceReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOSearchAttributionSourceCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 128));
  return Specified;
}

void *GEOSearchAttributionSourceReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 128));
  [v3 setLength:*(a1 + 124)];
  [v3 seekToOffset:*(a1 + 120)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 140) >> 3) & 1) + ((*(a1 + 140) >> 5) & 1) + (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 140)), 0xFFF9FFFCFFF8FFF7), 0x1000100010001)) + ((*(a1 + 140) >> 11) & 1) + ((*(a1 + 140) >> 10) & 1) + ((*(a1 + 140) >> 6) & 1));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 5;
  v99 = v9;
  v100 = v13 & ~v10 | v8;
  v14 = v10 | v13;
  if ((v10 | v13 | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = objc_msgSend_position(v3);
  if (v16 < [v3 length])
  {
    v101 = v14 | v8;
    v102 = (v15 == 0) | v14;
    v103 = v14;
    while (([v3 hasError] & 1) == 0)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        LOBYTE(v104) = 0;
        v20 = objc_msgSend_position(v3) + 1;
        if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
        {
          v22 = [v3 data];
          [v22 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v19 |= (v104 & 0x7F) << v17;
        if ((v104 & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v23 = v18++ >= 9;
        if (v23)
        {
          v19 = 0;
          goto LABEL_33;
        }
      }

      if ([v3 hasError])
      {
        v19 = 0;
      }

LABEL_33:
      v24 = [v3 hasError];
      v25 = 1;
      v14 = v103;
      if (v24)
      {
        goto LABEL_207;
      }

      v26 = v19 & 7;
      if (v26 == 4)
      {
        goto LABEL_207;
      }

      v27 = v19 >> 3;
      v28 = v103;
      if ((v102 & 1) == 0)
      {
        v29 = v15;
        do
        {
          v31 = *v29++;
          v30 = v31;
          v28 = v31 != 0;
          if (v31)
          {
            v32 = v30 == v27;
          }

          else
          {
            v32 = 1;
          }
        }

        while (!v32);
      }

      if (v27 > 7)
      {
        if (v27 <= 10)
        {
          if (v27 == 8)
          {
            if (v28 && (*(a1 + 140) & 0x400) == 0)
            {
              v104 = 0;
              v105 = 0;
              if ((PBReaderPlaceMark() & 1) == 0)
              {
                goto LABEL_240;
              }

              v33 = objc_alloc_init(GEOComponentAction);
              if (!GEOComponentActionReadAllFrom(v33, v3))
              {
                goto LABEL_239;
              }

              PBReaderRecallMark();
              [(GEOSearchAttributionSource *)a1 _addNoFlagsSupportedComponentActions:v33];
              goto LABEL_144;
            }
          }

          else if (v27 == 9)
          {
            if (v7)
            {
              v65 = 0;
              v66 = 0;
              v67 = 0;
              *(a1 + 140) |= 2u;
              while (1)
              {
                LOBYTE(v104) = 0;
                v68 = objc_msgSend_position(v3) + 1;
                if (v68 >= objc_msgSend_position(v3) && (v69 = objc_msgSend_position(v3) + 1, v69 <= [v3 length]))
                {
                  v70 = [v3 data];
                  [v70 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v67 |= (v104 & 0x7F) << v65;
                if ((v104 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                v23 = v66++ >= 9;
                if (v23)
                {
                  v42 = 0;
                  goto LABEL_170;
                }
              }

              v42 = (v67 != 0) & ~[v3 hasError];
LABEL_170:
              v79 = 137;
LABEL_173:
              *(a1 + v79) = v42;
              goto LABEL_174;
            }
          }

          else if (v28)
          {
            if ((*(a1 + 140) & 0x40) == 0)
            {
              v34 = PBReaderReadString();
              v35 = 72;
LABEL_79:
              v43 = *(a1 + v35);
              *(a1 + v35) = v34;

              --v6;
              goto LABEL_182;
            }

            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_240;
            }

            v80 = *(a1 + 140) << 9;
            goto LABEL_181;
          }

          goto LABEL_161;
        }

        switch(v27)
        {
          case 0xB:
            if (v28 && (*(a1 + 140) & 0x20) == 0)
            {
              if (v26 == 2)
              {
                v104 = 0;
                v105 = 0;
                if (!PBReaderPlaceMark())
                {
                  goto LABEL_240;
                }

                while (1)
                {
                  v51 = objc_msgSend_position(v3);
                  if (v51 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v52 = 0;
                  v53 = 0;
                  v54 = 0;
                  while (1)
                  {
                    v106 = 0;
                    v55 = objc_msgSend_position(v3) + 1;
                    if (v55 >= objc_msgSend_position(v3) && (v56 = objc_msgSend_position(v3) + 1, v56 <= [v3 length]))
                    {
                      v57 = [v3 data];
                      [v57 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

                      [v3 setPosition:objc_msgSend_position(v3) + 1];
                    }

                    else
                    {
                      [v3 _setError];
                    }

                    v54 |= (v106 & 0x7F) << v52;
                    if ((v106 & 0x80) == 0)
                    {
                      break;
                    }

                    v52 += 7;
                    v23 = v53++ >= 9;
                    if (v23)
                    {
                      goto LABEL_118;
                    }
                  }

                  [v3 hasError];
LABEL_118:
                  PBRepeatedInt32Add();
                }

LABEL_185:
                PBReaderRecallMark();
LABEL_174:
                v14 = v103;
                goto LABEL_182;
              }

              v88 = 0;
              v89 = 0;
              v90 = 0;
              while (1)
              {
                LOBYTE(v104) = 0;
                v91 = objc_msgSend_position(v3) + 1;
                if (v91 >= objc_msgSend_position(v3) && (v92 = objc_msgSend_position(v3) + 1, v92 <= [v3 length]))
                {
                  v93 = [v3 data];
                  [v93 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v90 |= (v104 & 0x7F) << v88;
                if ((v104 & 0x80) == 0)
                {
                  break;
                }

                v88 += 7;
                v23 = v89++ >= 9;
                if (v23)
                {
                  goto LABEL_205;
                }
              }

LABEL_204:
              [v3 hasError];
LABEL_205:
              PBRepeatedInt32Add();
              goto LABEL_174;
            }

            goto LABEL_161;
          case 0xC:
            if (v7)
            {
              v71 = 0;
              v72 = 0;
              v73 = 0;
              *(a1 + 140) |= 4u;
              while (1)
              {
                LOBYTE(v104) = 0;
                v74 = objc_msgSend_position(v3) + 1;
                if (v74 >= objc_msgSend_position(v3) && (v75 = objc_msgSend_position(v3) + 1, v75 <= [v3 length]))
                {
                  v76 = [v3 data];
                  [v76 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v73 |= (v104 & 0x7F) << v71;
                if ((v104 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                v23 = v72++ >= 9;
                if (v23)
                {
                  v42 = 0;
                  goto LABEL_172;
                }
              }

              v42 = (v73 != 0) & ~[v3 hasError];
LABEL_172:
              v79 = 138;
              goto LABEL_173;
            }

            goto LABEL_161;
          case 0xD:
            if (v7)
            {
              v36 = 0;
              v37 = 0;
              v38 = 0;
              *(a1 + 140) |= 1u;
              while (1)
              {
                LOBYTE(v104) = 0;
                v39 = objc_msgSend_position(v3) + 1;
                if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
                {
                  v41 = [v3 data];
                  [v41 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v38 |= (v104 & 0x7F) << v36;
                if ((v104 & 0x80) == 0)
                {
                  break;
                }

                v36 += 7;
                v23 = v37++ >= 9;
                if (v23)
                {
                  v42 = 0;
                  goto LABEL_164;
                }
              }

              v42 = (v38 != 0) & ~[v3 hasError];
LABEL_164:
              v79 = 136;
              goto LABEL_173;
            }

            goto LABEL_161;
        }
      }

      else
      {
        if (v27 > 4)
        {
          if (v27 == 5)
          {
            if (v28 && (*(a1 + 140) & 0x10) == 0)
            {
              if (v26 == 2)
              {
                v104 = 0;
                v105 = 0;
                if (!PBReaderPlaceMark())
                {
                  goto LABEL_240;
                }

                while (1)
                {
                  v44 = objc_msgSend_position(v3);
                  if (v44 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
                  {
                    goto LABEL_185;
                  }

                  v45 = 0;
                  v46 = 0;
                  v47 = 0;
                  while (1)
                  {
                    v106 = 0;
                    v48 = objc_msgSend_position(v3) + 1;
                    if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
                    {
                      v50 = [v3 data];
                      [v50 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

                      [v3 setPosition:objc_msgSend_position(v3) + 1];
                    }

                    else
                    {
                      [v3 _setError];
                    }

                    v47 |= (v106 & 0x7F) << v45;
                    if ((v106 & 0x80) == 0)
                    {
                      break;
                    }

                    v45 += 7;
                    v23 = v46++ >= 9;
                    if (v23)
                    {
                      goto LABEL_101;
                    }
                  }

                  [v3 hasError];
LABEL_101:
                  PBRepeatedInt32Add();
                }
              }

              v82 = 0;
              v83 = 0;
              v84 = 0;
              while (1)
              {
                LOBYTE(v104) = 0;
                v85 = objc_msgSend_position(v3) + 1;
                if (v85 >= objc_msgSend_position(v3) && (v86 = objc_msgSend_position(v3) + 1, v86 <= [v3 length]))
                {
                  v87 = [v3 data];
                  [v87 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v84 |= (v104 & 0x7F) << v82;
                if ((v104 & 0x80) == 0)
                {
                  goto LABEL_204;
                }

                v82 += 7;
                v23 = v83++ >= 9;
                if (v23)
                {
                  goto LABEL_205;
                }
              }
            }
          }

          else if (v27 == 6)
          {
            if (v28 && (*(a1 + 140) & 0x80) == 0)
            {
              v104 = 0;
              v105 = 0;
              if ((PBReaderPlaceMark() & 1) == 0)
              {
                goto LABEL_240;
              }

              v33 = objc_alloc_init(GEOAttributionApp);
              if (!GEOAttributionAppReadAllFrom(v33, v3, v99 & 1))
              {
LABEL_239:

LABEL_240:
                v25 = 0;
                goto LABEL_207;
              }

              PBReaderRecallMark();
              [(GEOSearchAttributionSource *)a1 _addNoFlagsAttributionApps:v33];
              goto LABEL_144;
            }
          }

          else if (v28)
          {
            if ((*(a1 + 140) & 0x800) == 0)
            {
              v34 = PBReaderReadString();
              v35 = 112;
              goto LABEL_79;
            }

            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_240;
            }

            v80 = 16 * *(a1 + 140);
            goto LABEL_181;
          }

          goto LABEL_161;
        }

        switch(v27)
        {
          case 1:
            if (v28)
            {
              if ((*(a1 + 140) & 0x200) == 0)
              {
                v34 = PBReaderReadString();
                v35 = 96;
                goto LABEL_79;
              }

              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_240;
              }

              v80 = *(a1 + 140) << 6;
LABEL_181:
              v6 += v80 >> 15;
              goto LABEL_182;
            }

            goto LABEL_161;
          case 2:
            if (v7)
            {
              v58 = 0;
              v59 = 0;
              v60 = 0;
              while (1)
              {
                LOBYTE(v104) = 0;
                v61 = objc_msgSend_position(v3) + 1;
                if (v61 >= objc_msgSend_position(v3) && (v62 = objc_msgSend_position(v3) + 1, v62 <= [v3 length]))
                {
                  v63 = [v3 data];
                  [v63 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v60 |= (v104 & 0x7F) << v58;
                if ((v104 & 0x80) == 0)
                {
                  break;
                }

                v58 += 7;
                v23 = v59++ >= 9;
                if (v23)
                {
                  v64 = 0;
                  goto LABEL_168;
                }
              }

              if ([v3 hasError])
              {
                v64 = 0;
              }

              else
              {
                v64 = v60;
              }

LABEL_168:
              *(a1 + 132) = v64;
              goto LABEL_174;
            }

            goto LABEL_161;
          case 3:
            if (v28 && (*(a1 + 140) & 0x100) == 0)
            {
              v104 = 0;
              v105 = 0;
              if ((PBReaderPlaceMark() & 1) == 0)
              {
                goto LABEL_240;
              }

              v33 = objc_alloc_init(GEOLocalizedAttribution);
              if (!GEOLocalizedAttributionReadAllFrom(v33, v3, v99 & 1))
              {
                goto LABEL_239;
              }

              PBReaderRecallMark();
              [(GEOSearchAttributionSource *)a1 _addNoFlagsLocalizedAttribution:v33];
LABEL_144:

              goto LABEL_182;
            }

            goto LABEL_161;
        }
      }

      if ((v100 & 1) != 0 && (*(a1 + 140) & 8) == 0)
      {
        if (!*(a1 + 16))
        {
          v77 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v78 = *(a1 + 16);
          *(a1 + 16) = v77;
        }

        if (!PBUnknownFieldAdd())
        {
          v25 = 0;
          goto LABEL_208;
        }

        goto LABEL_182;
      }

LABEL_161:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_240;
      }

LABEL_182:
      if (v101 & 1 | (v6 != 0))
      {
        v81 = objc_msgSend_position(v3);
        if (v81 < [v3 length])
        {
          continue;
        }
      }

      break;
    }
  }

  v25 = 1;
LABEL_207:
  if (v100)
  {
LABEL_208:
    *(a1 + 140) |= 8u;
  }

  if (!(v14 & 1 | ((v25 & 1) == 0)))
  {
    if (!v15)
    {
      goto LABEL_233;
    }

    while (1)
    {
      while (1)
      {
        v95 = *v15++;
        v94 = v95;
        if (v95 > 6)
        {
          break;
        }

        if (v94 > 4)
        {
          if (v94 == 5)
          {
            v96 = 16;
            goto LABEL_231;
          }

          if (v94 == 6)
          {
            v96 = 128;
            goto LABEL_231;
          }
        }

        else
        {
          switch(v94)
          {
            case 1:
              v96 = 512;
LABEL_231:
              *(a1 + 140) |= v96;
              break;
            case 3:
              v96 = 256;
              goto LABEL_231;
            case 0:
              goto LABEL_233;
          }
        }
      }

      if (v94 > 9)
      {
        if (v94 == 10)
        {
          v96 = 64;
          goto LABEL_231;
        }

        if (v94 == 11)
        {
          v96 = 32;
          goto LABEL_231;
        }
      }

      else
      {
        if (v94 == 7)
        {
          v96 = 2048;
          goto LABEL_231;
        }

        if (v94 == 8)
        {
          v96 = 1024;
          goto LABEL_231;
        }
      }
    }
  }

  *(a1 + 140) |= 0x200u;
  *(a1 + 140) |= 0x100u;
  *(a1 + 140) |= 0x10u;
  *(a1 + 140) |= 0x80u;
  *(a1 + 140) |= 0x800u;
  *(a1 + 140) |= 0x400u;
  *(a1 + 140) |= 0x40u;
  *(a1 + 140) |= 0x20u;
LABEL_233:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_237;
  }

  v3 = 0;
  if (v14)
  {
LABEL_237:
    v97 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDTextBlockReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDTextBlockReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 56));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 48) = objc_msgSend_position(v8);
  *(a1 + 52) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDTextBlockReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDTextBlockReadAllFrom_initialTag;
  }

  Specified = GEOPDTextBlockReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

uint64_t GEOMapItemHashForPurpose(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if ([v3 _hasTransit])
      {
        v8 = 0x10000;
      }

      else
      {
        v8 = 0;
      }

      v6 = [v4 _roadAccessPoints];
      v5 = [v6 hash] ^ v8;
      goto LABEL_18;
    }

    if (a2 != 2)
    {
      goto LABEL_19;
    }

LABEL_10:
    v6 = [v4 name];
    v5 = [v6 hash];
LABEL_18:

    goto LABEL_19;
  }

  switch(a2)
  {
    case 3:
      if ([v3 _placeType] != 10 && objc_msgSend(v4, "_placeDisplayType") != 1)
      {
        v5 = [v4 _placeType];
        break;
      }

      v6 = [v4 name];
      v7 = [v6 hash];
      v5 = v7 ^ [v4 _placeType];
      goto LABEL_18;
    case 4:
      goto LABEL_10;
    case 5:
      if ([v3 _hasMUID] && objc_msgSend(v4, "_muid"))
      {
        v5 = [v4 _muid];
        break;
      }

      goto LABEL_10;
  }

LABEL_19:

  return v5;
}

void *GEOPDTextBlockReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 56));
  [v3 setLength:*(a1 + 52)];
  [v3 seekToOffset:*(a1 + 48)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 60) >> 2) & 1) + (*(a1 + 60) & 1) + ((*(a1 + 60) >> 3) & 1) + ((*(a1 + 60) >> 1) & 1);
  while (1)
  {
    v11 = a3[v8];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v6 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v8;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 > 1;
  v13 = v9 | v12;
  LODWORD(v43) = v12 & ~v9 | v6;
  HIDWORD(v43) = v9 | v12 | v6;
  if (((v9 | v12) | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  while (1)
  {
    v15 = objc_msgSend_position(v3, v43);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_67:
      v24 = 1;
      goto LABEL_68;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v44 = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v44 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v44 & 0x7F) << v16;
      if ((v44 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      if (v17++ >= 9)
      {
        v18 = 0;
        goto LABEL_29;
      }
    }

    if ([v3 hasError])
    {
      v18 = 0;
    }

LABEL_29:
    v23 = [v3 hasError];
    v24 = 1;
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_68;
    }

    v25 = v18 >> 3;
    v26 = v13;
    if (!((v14 == 0) | v13 & 1))
    {
      v27 = v14;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v26 = v29 != 0;
        if (v29)
        {
          v30 = v28 == v25;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v25 == 3)
    {
      if (!v26)
      {
        goto LABEL_57;
      }

      if ((*(a1 + 60) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_89;
        }

        v36 = *(a1 + 60) << 6;
        goto LABEL_65;
      }

      v31 = PBReaderReadString();
      v32 = 24;
      goto LABEL_50;
    }

    if (v25 == 2)
    {
      if (!v26)
      {
        goto LABEL_57;
      }

      if ((*(a1 + 60) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_89;
        }

        v36 = 32 * *(a1 + 60);
        goto LABEL_65;
      }

      v31 = PBReaderReadString();
      v32 = 32;
      goto LABEL_50;
    }

    if (v25 == 1)
    {
      break;
    }

    if (v43 & 1) == 0 || (*(a1 + 60))
    {
LABEL_57:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_66;
    }

    if (!*(a1 + 16))
    {
      v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      goto LABEL_69;
    }

LABEL_66:
    if (!(BYTE4(v43) & 1 | (v8 != 0)))
    {
      goto LABEL_67;
    }
  }

  if (!v26)
  {
    goto LABEL_57;
  }

  if ((*(a1 + 60) & 8) == 0)
  {
    v31 = PBReaderReadString();
    v32 = 40;
LABEL_50:
    v33 = *(a1 + v32);
    *(a1 + v32) = v31;

    --v8;
    goto LABEL_66;
  }

  if (PBReaderSkipValueWithTag())
  {
    v36 = 16 * *(a1 + 60);
LABEL_65:
    v8 += v36 >> 7;
    goto LABEL_66;
  }

LABEL_89:
  v24 = 0;
LABEL_68:
  if ((v43 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_69:
  *(a1 + 60) |= 1u;
LABEL_70:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + 60) |= 8u;
    *(a1 + 60) |= 4u;
    *(a1 + 60) |= 2u;
    goto LABEL_83;
  }

  if (v14)
  {
    while (2)
    {
      while (1)
      {
        v38 = *v14++;
        v37 = v38;
        v39 = v38 == 1;
        if (v38 > 1)
        {
          break;
        }

        if (v39)
        {
          v40 = 8;
LABEL_81:
          *(a1 + 60) |= v40;
          continue;
        }

        if (!v37)
        {
          goto LABEL_83;
        }
      }

      if (v37 == 3)
      {
        v40 = 2;
      }

      else
      {
        if (v37 != 2)
        {
          continue;
        }

        v40 = 4;
      }

      goto LABEL_81;
    }
  }

LABEL_83:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_87:
    v41 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_87;
    }
  }

  return v3;
}

void *GEOLocalizedAttributionReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOLocalizedAttributionReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 72));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 64) = objc_msgSend_position(v8);
  *(a1 + 68) = [v8 length];
  if (a3)
  {
    v9 = &GEOLocalizedAttributionReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOLocalizedAttributionReadAllFrom_initialTag;
  }

  Specified = GEOLocalizedAttributionReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void *GEOLocalizedAttributionReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 72));
  [v3 setLength:*(a1 + 68)];
  [v3 seekToOffset:*(a1 + 64)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (vaddv_s16((*&vshl_u16(vdup_n_s16(*(a1 + 76)), 0xFFFFFFFBFFFCFFFDLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 76) & 4) != 0) + (*(a1 + 76) & 1));
  while (1)
  {
    v11 = a3[v7];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v8 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v6 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v7;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 > 3;
  v13 = v9 | v12;
  LODWORD(v43) = v12 & ~v9 | v8;
  HIDWORD(v43) = v9 | v12 | v8;
  if (((v9 | v12) | v6))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  while (1)
  {
    v15 = objc_msgSend_position(v3, v43);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_79:
      v24 = 1;
      goto LABEL_80;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v44 = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v44 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v44 & 0x7F) << v16;
      if ((v44 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      if (v17++ >= 9)
      {
        v18 = 0;
        goto LABEL_29;
      }
    }

    if ([v3 hasError])
    {
      v18 = 0;
    }

LABEL_29:
    v23 = [v3 hasError];
    v24 = 1;
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_80;
    }

    v25 = v18 >> 3;
    v26 = v13;
    if (!((v14 == 0) | v13 & 1))
    {
      v27 = v14;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v26 = v29 != 0;
        if (v29)
        {
          v30 = v28 == v25;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v25 > 2)
    {
      switch(v25)
      {
        case 3:
          if (!v26 || (*(a1 + 76) & 0x10) != 0)
          {
LABEL_69:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_104;
            }

            goto LABEL_70;
          }

          v33 = PBReaderReadString();
          if (v33)
          {
            [(GEOLocalizedAttribution *)a1 _addNoFlagsLogoURLs:v33];
          }

          break;
        case 4:
          if (!v26 || (*(a1 + 76) & 0x20) != 0)
          {
            goto LABEL_69;
          }

          v33 = PBReaderReadString();
          if (v33)
          {
            [(GEOLocalizedAttribution *)a1 _addNoFlagsSnippetLogoURLs:v33];
          }

          break;
        case 5:
          if (!v26)
          {
            goto LABEL_69;
          }

          if ((*(a1 + 76) & 2) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_104;
            }

            v37 = *(a1 + 76) << 6;
            goto LABEL_78;
          }

          v31 = PBReaderReadString();
          v32 = 24;
          goto LABEL_62;
        default:
          goto LABEL_63;
      }

      goto LABEL_70;
    }

    if (v25 == 1)
    {
      if (!v26)
      {
        goto LABEL_69;
      }

      if ((*(a1 + 76) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_104;
        }

        v37 = 16 * *(a1 + 76);
        goto LABEL_78;
      }

      v31 = PBReaderReadString();
      v32 = 40;
      goto LABEL_62;
    }

    if (v25 == 2)
    {
      break;
    }

LABEL_63:
    if (v43 & 1) == 0 || (*(a1 + 76))
    {
      goto LABEL_69;
    }

    if (!*(a1 + 16))
    {
      v35 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v36 = *(a1 + 16);
      *(a1 + 16) = v35;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      goto LABEL_81;
    }

LABEL_70:
    if (!(BYTE4(v43) & 1 | (v7 != 0)))
    {
      goto LABEL_79;
    }
  }

  if (!v26)
  {
    goto LABEL_69;
  }

  if ((*(a1 + 76) & 4) == 0)
  {
    v31 = PBReaderReadString();
    v32 = 32;
LABEL_62:
    v34 = *(a1 + v32);
    *(a1 + v32) = v31;

    --v7;
    goto LABEL_70;
  }

  if (PBReaderSkipValueWithTag())
  {
    v37 = 32 * *(a1 + 76);
LABEL_78:
    v7 += v37 >> 7;
    goto LABEL_70;
  }

LABEL_104:
  v24 = 0;
LABEL_80:
  if ((v43 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_81:
  *(a1 + 76) |= 1u;
LABEL_82:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + 76) |= 8u;
    *(a1 + 76) |= 4u;
    *(a1 + 76) |= 0x10u;
    *(a1 + 76) |= 0x20u;
    *(a1 + 76) |= 2u;
    goto LABEL_98;
  }

  if (v14)
  {
    while (1)
    {
      v39 = *v14++;
      v38 = v39;
      if (v39 > 2)
      {
        switch(v38)
        {
          case 3:
            v40 = 16;
            break;
          case 4:
            v40 = 32;
            break;
          case 5:
            v40 = 2;
            break;
          default:
            continue;
        }

        goto LABEL_96;
      }

      if (v38 == 1)
      {
        break;
      }

      if (v38 == 2)
      {
        v40 = 4;
LABEL_96:
        *(a1 + 76) |= v40;
        continue;
      }

      if (!v38)
      {
        goto LABEL_98;
      }
    }

    v40 = 8;
    goto LABEL_96;
  }

LABEL_98:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_102:
    v41 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_102;
    }
  }

  return v3;
}