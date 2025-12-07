const AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::V2AddressObjectProto::SerializeWithCachedSizesToArray(addr_obj::V2AddressObjectProto *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  v5 = *(this + 35);
  if (v5)
  {
    v6 = *(this + 5);
    *a2 = 10;
    v7 = a2 + 1;
    v8 = *(v6 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v8 = *(v6 + 8);
    }

    if (v8 > 0x7F)
    {
      v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, v7, a3);
    }

    else
    {
      v3[1] = v8;
      v9 = v3 + 2;
    }

    v10 = *(v6 + 23);
    if (v10 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 23);
    }

    else
    {
      v12 = *(v6 + 8);
    }

    v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, v3);
    v5 = *(this + 35);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v13 = *(this + 6);
  *v3 = 18;
  v14 = *(v13 + 23);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v14 = *(v13 + 8);
  }

  if (v14 > 0x7F)
  {
    v15 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v14, v3 + 1, a3);
  }

  else
  {
    v3[1] = v14;
    v15 = v3 + 2;
  }

  v16 = *(v13 + 23);
  if (v16 >= 0)
  {
    v17 = v13;
  }

  else
  {
    v17 = *v13;
  }

  if (v16 >= 0)
  {
    v18 = *(v13 + 23);
  }

  else
  {
    v18 = *(v13 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v17, v18, v15, v3);
  v5 = *(this + 35);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_38:
  v19 = *(this + 7);
  *v3 = 26;
  v20 = *(v19 + 23);
  if ((v20 & 0x8000000000000000) != 0)
  {
    v20 = *(v19 + 8);
  }

  if (v20 > 0x7F)
  {
    v21 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v3 + 1, a3);
  }

  else
  {
    v3[1] = v20;
    v21 = v3 + 2;
  }

  v22 = *(v19 + 23);
  if (v22 >= 0)
  {
    v23 = v19;
  }

  else
  {
    v23 = *v19;
  }

  if (v22 >= 0)
  {
    v24 = *(v19 + 23);
  }

  else
  {
    v24 = *(v19 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v23, v24, v21, v3);
  v5 = *(this + 35);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_50:
  v25 = *(this + 8);
  *v3 = 34;
  v26 = *(v25 + 23);
  if ((v26 & 0x8000000000000000) != 0)
  {
    v26 = *(v25 + 8);
  }

  if (v26 > 0x7F)
  {
    v27 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v26, v3 + 1, a3);
  }

  else
  {
    v3[1] = v26;
    v27 = v3 + 2;
  }

  v28 = *(v25 + 23);
  if (v28 >= 0)
  {
    v29 = v25;
  }

  else
  {
    v29 = *v25;
  }

  if (v28 >= 0)
  {
    v30 = *(v25 + 23);
  }

  else
  {
    v30 = *(v25 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v29, v30, v27, v3);
  v5 = *(this + 35);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_74;
  }

LABEL_62:
  v31 = *(this + 10);
  *v3 = 42;
  v32 = *(v31 + 23);
  if ((v32 & 0x8000000000000000) != 0)
  {
    v32 = *(v31 + 8);
  }

  if (v32 > 0x7F)
  {
    v33 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v32, v3 + 1, a3);
  }

  else
  {
    v3[1] = v32;
    v33 = v3 + 2;
  }

  v34 = *(v31 + 23);
  if (v34 >= 0)
  {
    v35 = v31;
  }

  else
  {
    v35 = *v31;
  }

  if (v34 >= 0)
  {
    v36 = *(v31 + 23);
  }

  else
  {
    v36 = *(v31 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v35, v36, v33, v3);
  v5 = *(this + 35);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_86;
  }

LABEL_74:
  v37 = *(this + 11);
  *v3 = 50;
  v38 = *(v37 + 23);
  if ((v38 & 0x8000000000000000) != 0)
  {
    v38 = *(v37 + 8);
  }

  if (v38 > 0x7F)
  {
    v39 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v38, v3 + 1, a3);
  }

  else
  {
    v3[1] = v38;
    v39 = v3 + 2;
  }

  v40 = *(v37 + 23);
  if (v40 >= 0)
  {
    v41 = v37;
  }

  else
  {
    v41 = *v37;
  }

  if (v40 >= 0)
  {
    v42 = *(v37 + 23);
  }

  else
  {
    v42 = *(v37 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v41, v42, v39, v3);
  v5 = *(this + 35);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_98;
  }

LABEL_86:
  v43 = *(this + 12);
  *v3 = 58;
  v44 = *(v43 + 23);
  if ((v44 & 0x8000000000000000) != 0)
  {
    v44 = *(v43 + 8);
  }

  if (v44 > 0x7F)
  {
    v45 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v44, v3 + 1, a3);
  }

  else
  {
    v3[1] = v44;
    v45 = v3 + 2;
  }

  v46 = *(v43 + 23);
  if (v46 >= 0)
  {
    v47 = v43;
  }

  else
  {
    v47 = *v43;
  }

  if (v46 >= 0)
  {
    v48 = *(v43 + 23);
  }

  else
  {
    v48 = *(v43 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v47, v48, v45, v3);
  v5 = *(this + 35);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_110;
  }

LABEL_98:
  v49 = *(this + 9);
  *v3 = 66;
  v50 = *(v49 + 23);
  if ((v50 & 0x8000000000000000) != 0)
  {
    v50 = *(v49 + 8);
  }

  if (v50 > 0x7F)
  {
    v51 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v50, v3 + 1, a3);
  }

  else
  {
    v3[1] = v50;
    v51 = v3 + 2;
  }

  v52 = *(v49 + 23);
  if (v52 >= 0)
  {
    v53 = v49;
  }

  else
  {
    v53 = *v49;
  }

  if (v52 >= 0)
  {
    v54 = *(v49 + 23);
  }

  else
  {
    v54 = *(v49 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v53, v54, v51, v3);
  v5 = *(this + 35);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_122;
  }

LABEL_110:
  v55 = *(this + 13);
  *v3 = 74;
  v56 = *(v55 + 23);
  if ((v56 & 0x8000000000000000) != 0)
  {
    v56 = *(v55 + 8);
  }

  if (v56 > 0x7F)
  {
    v57 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v56, v3 + 1, a3);
  }

  else
  {
    v3[1] = v56;
    v57 = v3 + 2;
  }

  v58 = *(v55 + 23);
  if (v58 >= 0)
  {
    v59 = v55;
  }

  else
  {
    v59 = *v55;
  }

  if (v58 >= 0)
  {
    v60 = *(v55 + 23);
  }

  else
  {
    v60 = *(v55 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v59, v60, v57, v3);
  v5 = *(this + 35);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_134;
  }

LABEL_122:
  v61 = *(this + 14);
  *v3 = 82;
  v62 = *(v61 + 23);
  if ((v62 & 0x8000000000000000) != 0)
  {
    v62 = *(v61 + 8);
  }

  if (v62 > 0x7F)
  {
    v63 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v62, v3 + 1, a3);
  }

  else
  {
    v3[1] = v62;
    v63 = v3 + 2;
  }

  v64 = *(v61 + 23);
  if (v64 >= 0)
  {
    v65 = v61;
  }

  else
  {
    v65 = *v61;
  }

  if (v64 >= 0)
  {
    v66 = *(v61 + 23);
  }

  else
  {
    v66 = *(v61 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v65, v66, v63, v3);
  v5 = *(this + 35);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_146;
  }

LABEL_134:
  v67 = *(this + 15);
  *v3 = 90;
  v68 = *(v67 + 23);
  if ((v68 & 0x8000000000000000) != 0)
  {
    v68 = *(v67 + 8);
  }

  if (v68 > 0x7F)
  {
    v69 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v68, v3 + 1, a3);
  }

  else
  {
    v3[1] = v68;
    v69 = v3 + 2;
  }

  v70 = *(v67 + 23);
  if (v70 >= 0)
  {
    v71 = v67;
  }

  else
  {
    v71 = *v67;
  }

  if (v70 >= 0)
  {
    v72 = *(v67 + 23);
  }

  else
  {
    v72 = *(v67 + 8);
  }

  v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v71, v72, v69, v3);
  if ((*(this + 35) & 0x800) != 0)
  {
LABEL_146:
    v73 = *(this + 16);
    *v3 = 98;
    v74 = *(v73 + 23);
    if ((v74 & 0x8000000000000000) != 0)
    {
      v74 = *(v73 + 8);
    }

    if (v74 > 0x7F)
    {
      v75 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v74, v3 + 1, a3);
    }

    else
    {
      v3[1] = v74;
      v75 = v3 + 2;
    }

    v76 = *(v73 + 23);
    if (v76 >= 0)
    {
      v77 = v73;
    }

    else
    {
      v77 = *v73;
    }

    if (v76 >= 0)
    {
      v78 = *(v73 + 23);
    }

    else
    {
      v78 = *(v73 + 8);
    }

    v3 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v77, v78, v75, v3);
  }

LABEL_158:
  result = AddrObjGoogle::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((this + 8), 100, 200, v3);
  v84 = *(this + 4);
  v83 = (this + 32);
  v82 = v84;
  if (v84 && *v82 != v82[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v83, result, v80, v81);
  }

  return result;
}

uint64_t addr_obj::V2AddressObjectProto::ByteSize(addr_obj::V2AddressObjectProto *this)
{
  v2 = *(this + 35);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_85;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = *(this + 5);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 35);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = v9 + v5;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 6);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v2 = *(this + 35);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 += v16 + v12 + 1;
  }

LABEL_24:
  if ((v2 & 4) != 0)
  {
    v17 = *(this + 7);
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
      v22 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      v18 = *(v17 + 23);
      v20 = *(v17 + 8);
      v2 = *(this + 35);
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

    v3 += v22 + v18 + 1;
    if ((v2 & 8) == 0)
    {
LABEL_26:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_49;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_26;
  }

  v23 = *(this + 8);
  v24 = *(v23 + 23);
  v25 = v24;
  v26 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v27 = *(v23 + 23);
  }

  else
  {
    v27 = v26;
  }

  if (v27 >= 0x80)
  {
    v28 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    v24 = *(v23 + 23);
    v26 = *(v23 + 8);
    v2 = *(this + 35);
    v25 = *(v23 + 23);
  }

  else
  {
    v28 = 1;
  }

  if (v25 < 0)
  {
    v24 = v26;
  }

  v3 += v28 + v24 + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_27:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_49:
  v29 = *(this + 9);
  v30 = *(v29 + 23);
  v31 = v30;
  v32 = *(v29 + 8);
  if ((v30 & 0x80u) == 0)
  {
    v33 = *(v29 + 23);
  }

  else
  {
    v33 = v32;
  }

  if (v33 >= 0x80)
  {
    v34 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
    v30 = *(v29 + 23);
    v32 = *(v29 + 8);
    v2 = *(this + 35);
    v31 = *(v29 + 23);
  }

  else
  {
    v34 = 1;
  }

  if (v31 < 0)
  {
    v30 = v32;
  }

  v3 += v34 + v30 + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_28:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_58:
  v35 = *(this + 10);
  v36 = *(v35 + 23);
  v37 = v36;
  v38 = *(v35 + 8);
  if ((v36 & 0x80u) == 0)
  {
    v39 = *(v35 + 23);
  }

  else
  {
    v39 = v38;
  }

  if (v39 >= 0x80)
  {
    v40 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
    v36 = *(v35 + 23);
    v38 = *(v35 + 8);
    v2 = *(this + 35);
    v37 = *(v35 + 23);
  }

  else
  {
    v40 = 1;
  }

  if (v37 < 0)
  {
    v36 = v38;
  }

  v3 += v40 + v36 + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_29:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_76;
  }

LABEL_67:
  v41 = *(this + 11);
  v42 = *(v41 + 23);
  v43 = v42;
  v44 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v45 = *(v41 + 23);
  }

  else
  {
    v45 = v44;
  }

  if (v45 >= 0x80)
  {
    v46 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
    v42 = *(v41 + 23);
    v44 = *(v41 + 8);
    v2 = *(this + 35);
    v43 = *(v41 + 23);
  }

  else
  {
    v46 = 1;
  }

  if (v43 < 0)
  {
    v42 = v44;
  }

  v3 += v46 + v42 + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_76:
    v47 = *(this + 12);
    v48 = *(v47 + 23);
    v49 = v48;
    v50 = *(v47 + 8);
    if ((v48 & 0x80u) == 0)
    {
      v51 = *(v47 + 23);
    }

    else
    {
      v51 = v50;
    }

    if (v51 >= 0x80)
    {
      v52 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
      v48 = *(v47 + 23);
      v50 = *(v47 + 8);
      v2 = *(this + 35);
      v49 = *(v47 + 23);
    }

    else
    {
      v52 = 1;
    }

    if (v49 < 0)
    {
      v48 = v50;
    }

    v3 += v52 + v48 + 1;
  }

LABEL_85:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_127;
  }

  if ((v2 & 0x100) != 0)
  {
    v53 = *(this + 13);
    v54 = *(v53 + 23);
    v55 = v54;
    v56 = *(v53 + 8);
    if ((v54 & 0x80u) == 0)
    {
      v57 = *(v53 + 23);
    }

    else
    {
      v57 = v56;
    }

    if (v57 >= 0x80)
    {
      v58 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
      v54 = *(v53 + 23);
      v56 = *(v53 + 8);
      v2 = *(this + 35);
      v55 = *(v53 + 23);
    }

    else
    {
      v58 = 1;
    }

    if (v55 < 0)
    {
      v54 = v56;
    }

    v3 += v58 + v54 + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_88:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_109;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_88;
  }

  v59 = *(this + 14);
  v60 = *(v59 + 23);
  v61 = v60;
  v62 = *(v59 + 8);
  if ((v60 & 0x80u) == 0)
  {
    v63 = *(v59 + 23);
  }

  else
  {
    v63 = v62;
  }

  if (v63 >= 0x80)
  {
    v64 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63);
    v60 = *(v59 + 23);
    v62 = *(v59 + 8);
    v2 = *(this + 35);
    v61 = *(v59 + 23);
  }

  else
  {
    v64 = 1;
  }

  if (v61 < 0)
  {
    v60 = v62;
  }

  v3 += v64 + v60 + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_89:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_118;
  }

LABEL_109:
  v65 = *(this + 15);
  v66 = *(v65 + 23);
  v67 = v66;
  v68 = *(v65 + 8);
  if ((v66 & 0x80u) == 0)
  {
    v69 = *(v65 + 23);
  }

  else
  {
    v69 = v68;
  }

  if (v69 >= 0x80)
  {
    v70 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
    v66 = *(v65 + 23);
    v68 = *(v65 + 8);
    v2 = *(this + 35);
    v67 = *(v65 + 23);
  }

  else
  {
    v70 = 1;
  }

  if (v67 < 0)
  {
    v66 = v68;
  }

  v3 += v70 + v66 + 1;
  if ((v2 & 0x800) != 0)
  {
LABEL_118:
    v71 = *(this + 16);
    v72 = *(v71 + 23);
    v73 = v72;
    v74 = *(v71 + 8);
    if ((v72 & 0x80u) == 0)
    {
      v75 = *(v71 + 23);
    }

    else
    {
      v75 = v74;
    }

    if (v75 >= 0x80)
    {
      v76 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75);
      v72 = *(v71 + 23);
      v74 = *(v71 + 8);
      v73 = *(v71 + 23);
    }

    else
    {
      v76 = 1;
    }

    if (v73 < 0)
    {
      v72 = v74;
    }

    v3 += v76 + v72 + 1;
  }

LABEL_127:
  v78 = AddrObjGoogle::protobuf::internal::ExtensionSet::ByteSize(this + 1) + v3;
  v79 = *(this + 4);
  if (v79 && *v79 != v79[1])
  {
    v78 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 4, v77) + v78;
  }

  *(this + 34) = v78;
  return v78;
}

void addr_obj::V2AddressObjectProto::MergeFrom(addr_obj::V2AddressObjectProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 3703);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::V2AddressObjectProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D14B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::V2AddressObjectProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::V2AddressObjectProto::GetMetadata(addr_obj::V2AddressObjectProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9053E8;
}

void sub_1868D15E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::VenueDecoratorProto::MergeFrom(addr_obj::VenueDecoratorProto *this, const addr_obj::VenueDecoratorProto *a2)
{
  v3 = this;
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 4146);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v14, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (!v5)
  {
    goto LABEL_24;
  }

  if ((*(a2 + 52) & 1) == 0)
  {
    if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v8 = *(a2 + 3);
    *(v3 + 13) |= 2u;
    v9 = *(v3 + 3);
    if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(v3 + 3), v8);
    v5 = *(a2 + 13);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v6 = *(a2 + 2);
  *(v3 + 13) |= 1u;
  v7 = *(v3 + 2);
  if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 2), v6);
  v5 = *(a2 + 13);
  if ((v5 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  v10 = *(a2 + 4);
  *(v3 + 13) |= 4u;
  v11 = *(v3 + 4);
  if (v11 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
  {
    operator new();
  }

  this = std::string::operator=(*(v3 + 4), v10);
  if ((*(a2 + 13) & 8) != 0)
  {
LABEL_21:
    v12 = *(a2 + 5);
    *(v3 + 13) |= 8u;
    v13 = *(v3 + 5);
    if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    std::string::operator=(*(v3 + 5), v12);
  }

LABEL_24:
  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((v3 + 8), (a2 + 8));
}

void sub_1868D1804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void addr_obj::VenueDecoratorProto::~VenueDecoratorProto(addr_obj::VenueDecoratorProto *this)
{
  *this = &unk_1EF7E01A0;
  addr_obj::VenueDecoratorProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::VenueDecoratorProto::~VenueDecoratorProto(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t addr_obj::VenueDecoratorProto::SharedDtor(addr_obj::VenueDecoratorProto *this)
{
  v2 = *(this + 2);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 2);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  v5 = *(this + 3);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  v8 = *(this + 4);
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  if (v8 != v9)
  {
    v10 = *(this + 4);
    if (v10)
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v9 = MEMORY[0x18CFD1E40](v10, 0x1012C40EC159624);
    }
  }

  v11 = *(this + 5);
  v12 = AddrObjGoogle::protobuf::internal::kEmptyString(v9);
  if (v11 != v12)
  {
    v13 = *(this + 5);
    if (v13)
    {
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      v12 = MEMORY[0x18CFD1E40](v13, 0x1012C40EC159624);
    }
  }

  return addr_obj::VenueDecoratorProto::default_instance_(v12);
}

uint64_t addr_obj::VenueDecoratorProto::default_instance(addr_obj::VenueDecoratorProto *this)
{
  v1 = addr_obj::VenueDecoratorProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::VenueDecoratorProto::default_instance_(v1);
}

uint64_t *addr_obj::VenueDecoratorProto::Clear(uint64_t *this)
{
  v1 = this;
  if (*(this + 52))
  {
    if (*(this + 52))
    {
      v2 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v2 != this)
      {
        v3 = v1[2];
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

    if ((*(v1 + 52) & 2) != 0)
    {
      v4 = v1[3];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v4 != this)
      {
        v5 = v1[3];
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 52) & 4) != 0)
    {
      v6 = v1[4];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v6 != this)
      {
        v7 = v1[4];
        if (*(v7 + 23) < 0)
        {
          **v7 = 0;
          *(v7 + 8) = 0;
        }

        else
        {
          *v7 = 0;
          *(v7 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 52) & 8) != 0)
    {
      v8 = v1[5];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v8 != this)
      {
        v9 = v1[5];
        if (*(v9 + 23) < 0)
        {
          **v9 = 0;
          *(v9 + 8) = 0;
        }

        else
        {
          *v9 = 0;
          *(v9 + 23) = 0;
        }
      }
    }
  }

  v11 = v1[1];
  v10 = v1 + 1;
  *(v10 + 11) = 0;
  if (v11)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v10);
  }

  return this;
}

uint64_t addr_obj::VenueDecoratorProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v6 = *(a2 + 1);
        if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
        {
          this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          v7 = this;
          *(a2 + 8) = this;
          if (!this)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = v7;
          *(a2 + 1) = v6 + 1;
          if (!v7)
          {
            return 1;
          }
        }

        v8 = v7 >> 3;
        v9 = v7 & 7;
        if (v7 >> 3 <= 2)
        {
          break;
        }

        if (v8 != 3)
        {
          if (v8 == 4 && v9 == 2)
          {
            goto LABEL_42;
          }

          goto LABEL_20;
        }

        if (v9 != 2)
        {
          goto LABEL_20;
        }

LABEL_35:
        *(v5 + 52) |= 4u;
        v14 = *(v5 + 32);
        if (v14 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 32));
        if (!this)
        {
          return this;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 34)
        {
          *(a2 + 1) = v15 + 1;
LABEL_42:
          *(v5 + 52) |= 8u;
          v16 = *(v5 + 40);
          if (v16 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 40));
          if (!this)
          {
            return this;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            this = 1;
            *(a2 + 36) = 1;
            return this;
          }
        }
      }

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_20;
      }

      *(v5 + 52) |= 1u;
      v10 = *(v5 + 16);
      if (v10 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
      if (!this)
      {
        return this;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 18)
      {
        *(a2 + 1) = v11 + 1;
LABEL_28:
        *(v5 + 52) |= 2u;
        v12 = *(v5 + 24);
        if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 24));
        if (!this)
        {
          return this;
        }

        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_35;
        }
      }
    }

    if (v8 == 2 && v9 == 2)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v9 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t **addr_obj::VenueDecoratorProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 13);
  if (v5)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, *(v4 + 32), a2);
      if ((*(v4 + 52) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(2, *(v4 + 24), a2);
  v5 = *(v4 + 52);
  if ((v5 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v5 & 8) != 0)
  {
LABEL_5:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(4, *(v4 + 40), a2);
  }

LABEL_6:
  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::VenueDecoratorProto::SerializeWithCachedSizesToArray(addr_obj::VenueDecoratorProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 13);
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
    v6 = *(this + 13);
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
  v6 = *(this + 13);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_42;
  }

LABEL_30:
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
  if ((*(this + 13) & 8) != 0)
  {
LABEL_42:
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
  }

LABEL_54:
  v34 = *(this + 1);
  v33 = (this + 8);
  v32 = v34;
  if (!v34 || *v32 == v32[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v33, v4, a3, a4);
}

uint64_t addr_obj::VenueDecoratorProto::ByteSize(addr_obj::VenueDecoratorProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 2);
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
    v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 13);
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
    v12 = *(this + 3);
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
      v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v3 = *(this + 13);
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
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  v18 = *(this + 4);
  v19 = *(v18 + 23);
  v20 = v19;
  v21 = *(v18 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v22 = *(v18 + 23);
  }

  else
  {
    v22 = v21;
  }

  if (v22 >= 0x80)
  {
    v23 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
    v19 = *(v18 + 23);
    v21 = *(v18 + 8);
    v3 = *(this + 13);
    v20 = *(v18 + 23);
  }

  else
  {
    v23 = 1;
  }

  if (v20 < 0)
  {
    v19 = v21;
  }

  v4 = (v4 + v23 + v19 + 1);
  if ((v3 & 8) != 0)
  {
LABEL_36:
    v24 = *(this + 5);
    v25 = *(v24 + 23);
    v26 = v25;
    v27 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v28 = *(v24 + 23);
    }

    else
    {
      v28 = v27;
    }

    if (v28 >= 0x80)
    {
      v29 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
      v25 = *(v24 + 23);
      v27 = *(v24 + 8);
      v26 = *(v24 + 23);
    }

    else
    {
      v29 = 1;
    }

    if (v26 < 0)
    {
      v25 = v27;
    }

    v4 = (v4 + v29 + v25 + 1);
  }

LABEL_45:
  v30 = *(this + 1);
  if (v30 && *v30 != v30[1])
  {
    v4 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v4;
  }

  *(this + 12) = v4;
  return v4;
}

void addr_obj::VenueDecoratorProto::MergeFrom(addr_obj::VenueDecoratorProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 4134);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::VenueDecoratorProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D23D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::VenueDecoratorProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::VenueDecoratorProto::GetMetadata(addr_obj::VenueDecoratorProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9053F8;
}

void sub_1868D2514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::VenueFieldProto::MergeFrom(addr_obj::VenueFieldProto *this, const addr_obj::VenueFieldProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 4406);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v8, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 4);
      *(this + 7) |= 1u;
      *(this + 4) = v6;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 5);
      *(this + 7) |= 2u;
      *(this + 5) = v7;
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1868D25E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void addr_obj::VenueFieldProto::~VenueFieldProto(addr_obj::VenueFieldProto *this)
{
  *this = &unk_1EF7E0250;
  addr_obj::VenueFieldProto::default_instance_(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::VenueFieldProto::~VenueFieldProto(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t addr_obj::VenueFieldProto::default_instance(addr_obj::VenueFieldProto *this)
{
  v1 = addr_obj::VenueFieldProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::VenueFieldProto::default_instance_(v1);
}

uint64_t **addr_obj::VenueFieldProto::Clear(addr_obj::VenueFieldProto *this)
{
  if (*(this + 28))
  {
    *(this + 2) = 0;
  }

  v2 = *(this + 1);
  result = (this + 8);
  *(result + 5) = 0;
  if (v2)
  {
    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t addr_obj::VenueFieldProto::MergePartialFromCodedStream(addr_obj::VenueFieldProto *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
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

      if (TagFallback >> 3 == 5)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v16 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16);
        if (!result)
        {
          return result;
        }

        v9 = v16;
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 > 6)
      {
        AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint((this + 8), 1, v9);
      }

      else
      {
        *(this + 7) |= 1u;
        *(this + 4) = v9;
      }

      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v12 < v10 && *v12 == 40)
      {
        v11 = v12 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v10 || (v13 = *v11, v13 < 0))
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 7) |= 2u;
        if (v14 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if (!AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

uint64_t **addr_obj::VenueFieldProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 7);
  if (v6)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 4), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 20), a2, a4);
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

const AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::VenueFieldProto::SerializeWithCachedSizesToArray(addr_obj::VenueFieldProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 28))
  {
    v5 = *(this + 4);
    *a2 = 8;
    if ((v5 & 0x80000000) != 0)
    {
      v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, a2 + 1, a3);
    }

    else
    {
      if (v5 <= 0x7F)
      {
        *(a2 + 1) = v5;
        a2 = (a2 + 2);
        goto LABEL_8;
      }

      v6 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v5, a2 + 1, a3);
    }

    a2 = v6;
  }

LABEL_8:
  if ((*(this + 28) & 2) != 0)
  {
    v7 = *(this + 5);
    *a2 = 40;
    if (v7 > 0x7F)
    {
      a2 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v7;
      a2 = (a2 + 2);
    }
  }

  v10 = *(this + 1);
  v9 = (this + 8);
  v8 = v10;
  if (!v10 || *v8 == v8[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v9, a2, a3, a4);
}

uint64_t addr_obj::VenueFieldProto::ByteSize(addr_obj::VenueFieldProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 28);
  if (v3)
  {
    if ((*(this + 28) & 1) == 0)
    {
      v4 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_17;
      }

LABEL_13:
      v6 = *(this + 5);
      if (v6 >= 0x80)
      {
        v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      }

      else
      {
        v7 = 2;
      }

      v4 = (v7 + v4);
      goto LABEL_17;
    }

    v5 = *(this + 4);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    if (v5 < 0x80)
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    if ((*(this + 7) & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_17:
  v8 = *(this + 1);
  if (v8 && *v8 != v8[1])
  {
    v4 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v4;
  }

  *(this + 6) = v4;
  return v4;
}

void addr_obj::VenueFieldProto::MergeFrom(addr_obj::VenueFieldProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 4394);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::VenueFieldProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D2C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::VenueFieldProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::VenueFieldProto::GetMetadata(addr_obj::VenueFieldProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905408;
}

void sub_1868D2D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::VenueTemplateProto::MergeFrom(addr_obj::VenueTemplateProto *this, const addr_obj::VenueTemplateProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 4759);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v17, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(this + 4, *(this + 6) + v5);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v6 = *(a2 + 10);
  if (v6)
  {
    AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(this + 8, *(this + 10) + v6);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, *(a2 + 14) + *(this + 14));
  if (*(a2 + 14) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(a2 + 6) + 8 * v7);
      v9 = *(this + 15);
      v10 = *(this + 14);
      if (v10 >= v9)
      {
        if (v9 == *(this + 16))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v9 + 1);
          v9 = *(this + 15);
        }

        *(this + 15) = v9 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueFieldProto>::New();
      }

      v11 = *(this + 6);
      *(this + 14) = v10 + 1;
      addr_obj::VenueFieldProto::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
    }

    while (v7 < *(a2 + 14));
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, *(a2 + 20) + *(this + 20));
  if (*(a2 + 20) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(*(a2 + 9) + 8 * v12);
      v14 = *(this + 21);
      v15 = *(this + 20);
      if (v15 >= v14)
      {
        if (v14 == *(this + 22))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v14 + 1);
          v14 = *(this + 21);
        }

        *(this + 21) = v14 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueDecoratorProto>::New();
      }

      v16 = *(this + 9);
      *(this + 20) = v15 + 1;
      addr_obj::VenueDecoratorProto::MergeFrom(*(v16 + 8 * v15), v13);
      ++v12;
    }

    while (v12 < *(a2 + 20));
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1868D2FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void addr_obj::VenueTemplateProto::~VenueTemplateProto(addr_obj::VenueTemplateProto *this)
{
  *this = &unk_1EF7E0300;
  addr_obj::VenueTemplateProto::default_instance_(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 9);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 6);
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x18CFD1E20](v2, 0x1000C8052888210);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x18CFD1E20](v3, 0x1000C8052888210);
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::VenueTemplateProto::~VenueTemplateProto(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t addr_obj::VenueTemplateProto::default_instance(addr_obj::VenueTemplateProto *this)
{
  v1 = addr_obj::VenueTemplateProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::VenueTemplateProto::default_instance_(v1);
}

uint64_t **addr_obj::VenueTemplateProto::Clear(addr_obj::VenueTemplateProto *this)
{
  *(this + 6) = 0;
  *(this + 10) = 0;
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 48);
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 72);
  v4 = *(this + 1);
  v3 = this + 8;
  *(v3 + 23) = 0;
  if (v4)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t addr_obj::VenueTemplateProto::MergePartialFromCodedStream(addr_obj::VenueTemplateProto *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
        v6 = *(a2 + 1);
        if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v8 == 3)
        {
          if (v9 != 2)
          {
            goto LABEL_22;
          }

          while (1)
          {
            v23 = *(this + 15);
            v24 = *(this + 14);
            if (v24 >= v23)
            {
              if (v23 == *(this + 16))
              {
                AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v23 + 1);
                v23 = *(this + 15);
              }

              *(this + 15) = v23 + 1;
              AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueFieldProto>::New();
            }

            v25 = *(this + 6);
            *(this + 14) = v24 + 1;
            v26 = *(v25 + 8 * v24);
            v50 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
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

            v30 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v50);
            if (!addr_obj::VenueFieldProto::MergePartialFromCodedStream(v26, a2, v31, v32) || *(a2 + 36) != 1)
            {
              return 0;
            }

            AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v30);
            v33 = *(a2 + 14);
            v34 = __OFSUB__(v33, 1);
            v35 = v33 - 1;
            if (v35 < 0 == v34)
            {
              *(a2 + 14) = v35;
            }

            v17 = *(a2 + 1);
            if (v17 >= *(a2 + 2))
            {
              break;
            }

            v36 = *v17;
            if (v36 != 26)
            {
              if (v36 != 34)
              {
                goto LABEL_1;
              }

              goto LABEL_74;
            }

LABEL_56:
            *(a2 + 1) = v17 + 1;
          }
        }

        else
        {
          if (v8 != 4 || v9 != 2)
          {
            goto LABEL_22;
          }

          while (1)
          {
            v37 = *(this + 21);
            v38 = *(this + 20);
            if (v38 >= v37)
            {
              if (v37 == *(this + 22))
              {
                AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v37 + 1);
                v37 = *(this + 21);
              }

              *(this + 21) = v37 + 1;
              AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueDecoratorProto>::New();
            }

            v39 = *(this + 9);
            *(this + 20) = v38 + 1;
            v40 = *(v39 + 8 * v38);
            v50 = 0;
            v41 = *(a2 + 1);
            if (v41 >= *(a2 + 2) || *v41 < 0)
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
              {
                return 0;
              }
            }

            else
            {
              v50 = *v41;
              *(a2 + 1) = v41 + 1;
            }

            v42 = *(a2 + 14);
            v43 = *(a2 + 15);
            *(a2 + 14) = v42 + 1;
            if (v42 >= v43)
            {
              return 0;
            }

            v44 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v50);
            if (!addr_obj::VenueDecoratorProto::MergePartialFromCodedStream(v40, a2, v45, v46) || *(a2 + 36) != 1)
            {
              return 0;
            }

            AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v44);
            v47 = *(a2 + 14);
            v34 = __OFSUB__(v47, 1);
            v48 = v47 - 1;
            if (v48 < 0 == v34)
            {
              *(a2 + 14) = v48;
            }

            v17 = *(a2 + 1);
            v49 = *(a2 + 2);
            if (v17 >= v49 || *v17 != 34)
            {
              break;
            }

LABEL_74:
            *(a2 + 1) = v17 + 1;
          }

          if (v17 == v49 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v8 != 1)
      {
        if (v8 == 2)
        {
          if ((TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_42;
          }

          if (v9 == 2)
          {
            result = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline(a2, addr_obj::VenueInfoProto_VenueField_IsValid, this + 8);
            if (!result)
            {
              return result;
            }

            goto LABEL_52;
          }
        }

        goto LABEL_22;
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v13 = *(a2 + 1);
      v11 = *(a2 + 2);
      while (1)
      {
        v50 = 0;
        if (v13 >= v11 || (v14 = *v13, (v14 & 0x80000000) != 0))
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
          if (!result)
          {
            return result;
          }

          v14 = v50;
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v14 > 6)
        {
          AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint((this + 8), 1, v14);
        }

        else
        {
          v15 = *(this + 6);
          if (v15 == *(this + 7))
          {
            AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(this + 4, v15 + 1);
            v15 = *(this + 6);
          }

          v16 = *(this + 2);
          *(this + 6) = v15 + 1;
          *(v16 + 4 * v15) = v14;
        }

LABEL_37:
        v17 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v17 >= v11)
        {
          break;
        }

        v18 = *v17;
        if (v18 == 16)
        {
          do
          {
            v12 = v17 + 1;
            *(a2 + 1) = v12;
LABEL_42:
            v50 = 0;
            if (v12 >= v11 || (v19 = *v12, (v19 & 0x80000000) != 0))
            {
              result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
              if (!result)
              {
                return result;
              }

              v19 = v50;
            }

            else
            {
              *(a2 + 1) = v12 + 1;
            }

            if (v19 > 6)
            {
              AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint((this + 8), 2, v19);
            }

            else
            {
              v20 = *(this + 10);
              if (v20 == *(this + 11))
              {
                AddrObjGoogle::protobuf::RepeatedField<int>::Reserve(this + 8, v20 + 1);
                v20 = *(this + 10);
              }

              v21 = *(this + 4);
              *(this + 10) = v20 + 1;
              *(v21 + 4 * v20) = v19;
            }

LABEL_52:
            v17 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v17 >= v11)
            {
              break;
            }

            v22 = *v17;
            if (v22 == 26)
            {
              goto LABEL_56;
            }
          }

          while (v22 == 16);
          goto LABEL_1;
        }

        if (v18 != 8)
        {
          goto LABEL_1;
        }

        v13 = v17 + 1;
        *(a2 + 1) = v13;
      }
    }

    if (v9 == 2)
    {
      result = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline(a2, addr_obj::VenueInfoProto_VenueField_IsValid, this + 4);
      if (!result)
      {
        return result;
      }

      goto LABEL_37;
    }

LABEL_22:
    if (v9 == 4)
    {
      return 1;
    }

    if (!AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

uint64_t **addr_obj::VenueTemplateProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(1, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(2, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(3, *(*(v5 + 48) + 8 * v8++), a2);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v9 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(4, *(*(v5 + 72) + 8 * v9++), a2);
    }

    while (v9 < *(v5 + 80));
  }

  v12 = *(v5 + 8);
  v11 = (v5 + 8);
  v10 = v12;
  if (v12 && *v10 != v10[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v11, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::VenueTemplateProto::SerializeWithCachedSizesToArray(addr_obj::VenueTemplateProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(*(this + 2) + 4 * v6);
      *a2 = 8;
      v8 = a2 + 1;
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      if (v7 > 0x7F)
      {
        v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v8, a3);
        goto LABEL_8;
      }

      *(a2 + 1) = v7;
      a2 = (a2 + 2);
LABEL_9:
      if (++v6 >= *(this + 6))
      {
        goto LABEL_10;
      }
    }

    v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v7, v8, a3);
LABEL_8:
    a2 = v9;
    goto LABEL_9;
  }

LABEL_10:
  if (*(this + 10) >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(*(this + 4) + 4 * v10);
      *a2 = 16;
      v12 = a2 + 1;
      if ((v11 & 0x80000000) != 0)
      {
        break;
      }

      if (v11 > 0x7F)
      {
        v13 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v11, v12, a3);
        goto LABEL_17;
      }

      *(a2 + 1) = v11;
      a2 = (a2 + 2);
LABEL_18:
      if (++v10 >= *(this + 10))
      {
        goto LABEL_19;
      }
    }

    v13 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v12, a3);
LABEL_17:
    a2 = v13;
    goto LABEL_18;
  }

LABEL_19:
  if (*(this + 14) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(this + 6) + 8 * v14);
      *a2 = 26;
      v16 = v15[6];
      if (v16 > 0x7F)
      {
        v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v16, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v16;
        v17 = (a2 + 2);
      }

      a2 = addr_obj::VenueFieldProto::SerializeWithCachedSizesToArray(v15, v17, a3, a4);
      ++v14;
    }

    while (v14 < *(this + 14));
  }

  if (*(this + 20) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(*(this + 9) + 8 * v18);
      *a2 = 34;
      v20 = v19[12];
      if (v20 > 0x7F)
      {
        v21 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v20;
        v21 = (a2 + 2);
      }

      a2 = addr_obj::VenueDecoratorProto::SerializeWithCachedSizesToArray(v19, v21, a3, a4);
      ++v18;
    }

    while (v18 < *(this + 20));
  }

  v24 = *(this + 1);
  v23 = (this + 8);
  v22 = v24;
  if (!v24 || *v22 == v22[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v23, a2, a3, a4);
}

uint64_t addr_obj::VenueTemplateProto::ByteSize(addr_obj::VenueTemplateProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 6);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(*(this + 2) + 4 * v4);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 10;
      }

      else if (v6 >= 0x80)
      {
        v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v3 = *(this + 6);
      }

      else
      {
        v7 = 1;
      }

      v5 += v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v8 = *(this + 10);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(*(this + 4) + 4 * v9);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 10;
      }

      else if (v11 >= 0x80)
      {
        v12 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 10);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = *(this + 14);
  v14 = v3 + v5 + v10 + v8 + v13;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = addr_obj::VenueFieldProto::ByteSize(*(*(this + 6) + 8 * v15), a2);
      v17 = v16;
      if (v16 >= 0x80)
      {
        v18 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      }

      else
      {
        v18 = 1;
      }

      v14 += v17 + v18;
      ++v15;
    }

    while (v15 < *(this + 14));
  }

  v19 = *(this + 20);
  v20 = (v19 + v14);
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = addr_obj::VenueDecoratorProto::ByteSize(*(*(this + 9) + 8 * v21), a2);
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 = (v23 + v20 + v24);
      ++v21;
    }

    while (v21 < *(this + 20));
  }

  v25 = *(this + 1);
  if (v25 && *v25 != v25[1])
  {
    v20 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v20;
  }

  *(this + 24) = v20;
  return v20;
}

void addr_obj::VenueTemplateProto::MergeFrom(addr_obj::VenueTemplateProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 4747);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::VenueTemplateProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D3C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::VenueTemplateProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::VenueTemplateProto::GetMetadata(addr_obj::VenueTemplateProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905418;
}

void sub_1868D3D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::VenueFormatterProto::MergeFrom(addr_obj::VenueFormatterProto *this, const addr_obj::VenueFormatterProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 4966);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, *(a2 + 6) + *(this + 6));
  if (*(a2 + 6) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a2 + 2) + 8 * v5);
      v7 = *(this + 7);
      v8 = *(this + 6);
      if (v8 >= v7)
      {
        if (v7 == *(this + 8))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v7 + 1);
          v7 = *(this + 7);
        }

        *(this + 7) = v7 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueTemplateProto>::New();
      }

      v9 = *(this + 2);
      *(this + 6) = v8 + 1;
      addr_obj::VenueTemplateProto::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 6));
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1868D3ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void addr_obj::VenueFormatterProto::~VenueFormatterProto(addr_obj::VenueFormatterProto *this)
{
  *this = &unk_1EF7E03B0;
  addr_obj::VenueFormatterProto::default_instance_(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 2);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::VenueFormatterProto::~VenueFormatterProto(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t addr_obj::VenueFormatterProto::default_instance(addr_obj::VenueFormatterProto *this)
{
  v1 = addr_obj::VenueFormatterProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::VenueFormatterProto::default_instance_(v1);
}

uint64_t **addr_obj::VenueFormatterProto::Clear(addr_obj::VenueFormatterProto *this)
{
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 16);
  v4 = *(this + 1);
  v3 = this + 8;
  *(v3 + 9) = 0;
  if (v4)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v3);
  }

  return result;
}

uint64_t addr_obj::VenueFormatterProto::MergePartialFromCodedStream(addr_obj::VenueFormatterProto *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v6 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v8 = *(this + 7);
        v9 = *(this + 6);
        if (v9 >= v8)
        {
          if (v8 == *(this + 8))
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v8 + 1);
            v8 = *(this + 7);
          }

          *(this + 7) = v8 + 1;
          AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueTemplateProto>::New();
        }

        v10 = *(this + 2);
        *(this + 6) = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v24 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || *v12 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
          {
            return 0;
          }
        }

        else
        {
          v24 = *v12;
          *(a2 + 1) = v12 + 1;
        }

        v13 = *(a2 + 14);
        v14 = *(a2 + 15);
        *(a2 + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        v15 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v24);
        if (!addr_obj::VenueTemplateProto::MergePartialFromCodedStream(v11, a2, v16, v17) || *(a2 + 36) != 1)
        {
          return 0;
        }

        AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v15);
        v18 = *(a2 + 14);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 == v19)
        {
          *(a2 + 14) = v20;
        }

        v21 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v21 >= v22 || *v21 != 10)
        {
          if (v21 == v22 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v21 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if (!AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }
}

uint64_t **addr_obj::VenueFormatterProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, *(*(v4 + 16) + 8 * v5++), a2);
    }

    while (v5 < *(v4 + 24));
  }

  v8 = *(v4 + 8);
  v7 = (v4 + 8);
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::VenueFormatterProto::SerializeWithCachedSizesToArray(addr_obj::VenueFormatterProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 2) + 8 * v6);
      *a2 = 10;
      v8 = v7[24];
      if (v8 > 0x7F)
      {
        v9 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v8, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v8;
        v9 = (a2 + 2);
      }

      a2 = addr_obj::VenueTemplateProto::SerializeWithCachedSizesToArray(v7, v9, a3, a4);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  v12 = *(this + 1);
  v11 = (this + 8);
  v10 = v12;
  if (!v12 || *v10 == v10[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v11, a2, a3, a4);
}

uint64_t addr_obj::VenueFormatterProto::ByteSize(addr_obj::VenueFormatterProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 6);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = addr_obj::VenueTemplateProto::ByteSize(*(*(this + 2) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(this + 6));
  }

  v8 = *(this + 1);
  if (v8 && *v8 != v8[1])
  {
    v3 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v3;
  }

  *(this + 10) = v3;
  return v3;
}

void addr_obj::VenueFormatterProto::MergeFrom(addr_obj::VenueFormatterProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 4954);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::VenueFormatterProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D4540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::VenueFormatterProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::VenueFormatterProto::GetMetadata(addr_obj::VenueFormatterProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905428;
}

void sub_1868D4680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::VenueInfoProto::~VenueInfoProto(addr_obj::VenueInfoProto *this)
{
  *this = &unk_1EF7E0460;
  addr_obj::VenueInfoProto::default_instance_(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 5);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 4);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::VenueInfoProto::~VenueInfoProto(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t addr_obj::VenueInfoProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v6 = *(a2 + 1);
        if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
        {
          this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          v7 = this;
          *(a2 + 8) = this;
          if (!this)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = v7;
          *(a2 + 1) = v6 + 1;
          if (!v7)
          {
            return 1;
          }
        }

        v8 = v7 & 7;
        if (v7 >> 3 != 2)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_23;
        }

        while (1)
        {
          v14 = v5[13];
          v15 = v5[12];
          if (v15 >= v14)
          {
            if (v14 == v5[14])
            {
              AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(v5 + 10, v14 + 1);
              v14 = v5[13];
            }

            v5[13] = v14 + 1;
            AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::VenueFormatterProto>::New();
          }

          v16 = *(v5 + 5);
          v5[12] = v15 + 1;
          v17 = *(v16 + 8 * v15);
          v28 = 0;
          v18 = *(a2 + 1);
          if (v18 >= *(a2 + 2) || *v18 < 0)
          {
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
            {
              return 0;
            }
          }

          else
          {
            v28 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v19 = *(a2 + 14);
          v20 = *(a2 + 15);
          *(a2 + 14) = v19 + 1;
          if (v19 >= v20)
          {
            return 0;
          }

          v21 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v28);
          if (!addr_obj::VenueFormatterProto::MergePartialFromCodedStream(v17, a2, v22, v23) || *(a2 + 36) != 1)
          {
            return 0;
          }

          this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v21);
          v24 = *(a2 + 14);
          v25 = __OFSUB__(v24, 1);
          v26 = v24 - 1;
          if (v26 < 0 == v25)
          {
            *(a2 + 14) = v26;
          }

          v12 = *(a2 + 1);
          v27 = *(a2 + 2);
          if (v12 >= v27 || *v12 != 18)
          {
            break;
          }

LABEL_42:
          *(a2 + 1) = v12 + 1;
        }

        if (v12 == v27 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          this = 1;
          *(a2 + 36) = 1;
          return this;
        }
      }

      if (v7 >> 3 != 1 || v8 != 2)
      {
        break;
      }

      while (1)
      {
        v9 = v5[7];
        v10 = v5[6];
        if (v10 >= v9)
        {
          if (v9 == v5[8])
          {
            this = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(v5 + 4, v9 + 1);
            v9 = v5[7];
          }

          v5[7] = v9 + 1;
          AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(this);
        }

        v11 = *(v5 + 2);
        v5[6] = v10 + 1;
        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v11 + 8 * v10));
        if (!this)
        {
          return this;
        }

        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2))
        {
          break;
        }

        v13 = *v12;
        if (v13 != 10)
        {
          if (v13 != 18)
          {
            goto LABEL_2;
          }

          goto LABEL_42;
        }

        *(a2 + 1) = v12 + 1;
      }
    }

LABEL_23:
    if (v8 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 2), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t **addr_obj::VenueInfoProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, *(*(v4 + 16) + 8 * v5++), a2);
    }

    while (v5 < *(v4 + 24));
  }

  if (*(v4 + 48) >= 1)
  {
    v6 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(2, *(*(v4 + 40) + 8 * v6++), a2);
    }

    while (v6 < *(v4 + 48));
  }

  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::VenueInfoProto::SerializeWithCachedSizesToArray(addr_obj::VenueInfoProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 2) + 8 * v6);
      *a2 = 10;
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

      a2 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v11, v12, v9, a4);
      ++v6;
    }

    while (v6 < *(this + 6));
  }

  if (*(this + 12) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(*(this + 5) + 8 * v13);
      *a2 = 18;
      v15 = v14[10];
      if (v15 > 0x7F)
      {
        v16 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, a2 + 1, a3);
      }

      else
      {
        *(a2 + 1) = v15;
        v16 = (a2 + 2);
      }

      a2 = addr_obj::VenueFormatterProto::SerializeWithCachedSizesToArray(v14, v16, a3, a4);
      ++v13;
    }

    while (v13 < *(this + 12));
  }

  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, a2, a3, a4);
}

uint64_t addr_obj::VenueInfoProto::ByteSize(addr_obj::VenueInfoProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 6);
  if (v3 < 1)
  {
    v5 = *(this + 6);
  }

  else
  {
    v4 = 0;
    v5 = *(this + 6);
    do
    {
      v6 = *(*(this + 2) + 8 * v4);
      v7 = *(v6 + 23);
      v8 = v7;
      v9 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v9;
      }

      if (v10 >= 0x80)
      {
        v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
        v7 = *(v6 + 23);
        v9 = *(v6 + 8);
        v3 = *(this + 6);
        v8 = *(v6 + 23);
      }

      else
      {
        v11 = 1;
      }

      if (v8 < 0)
      {
        v7 = v9;
      }

      v5 += v11 + v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v12 = *(this + 12);
  v13 = (v12 + v5);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = addr_obj::VenueFormatterProto::ByteSize(*(*(this + 5) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      }

      else
      {
        v17 = 1;
      }

      v13 = (v16 + v13 + v17);
      ++v14;
    }

    while (v14 < *(this + 12));
  }

  v18 = *(this + 1);
  if (v18 && *v18 != v18[1])
  {
    v13 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v13;
  }

  *(this + 16) = v13;
  return v13;
}

void addr_obj::VenueInfoProto::MergeFrom(addr_obj::VenueInfoProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 5232);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::VenueInfoProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D4E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::VenueInfoProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::VenueInfoProto::GetMetadata(addr_obj::VenueInfoProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905438;
}

void sub_1868D4FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::V3AddressObjectProto::MergeFrom(addr_obj::V3AddressObjectProto *this, const addr_obj::V3AddressObjectProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 5456);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 28))
  {
    *(this + 7) |= 1u;
    v5 = *(this + 2);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 2);
    if (!v6)
    {
      v6 = *(addr_obj::V3AddressObjectProto::default_instance_(this) + 16);
    }

    addr_obj::VenueInfoProto::MergeFrom(v5, v6);
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void addr_obj::V3AddressObjectProto::~V3AddressObjectProto(addr_obj::V3AddressObjectProto **this)
{
  *this = &unk_1EF7E0510;
  addr_obj::V3AddressObjectProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 1));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::V3AddressObjectProto::~V3AddressObjectProto(this);

  JUMPOUT(0x18CFD1E40);
}

addr_obj::V3AddressObjectProto *addr_obj::V3AddressObjectProto::SharedDtor(addr_obj::V3AddressObjectProto **this)
{
  result = addr_obj::V3AddressObjectProto::default_instance_(this);
  if (result != this)
  {
    result = this[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

uint64_t **addr_obj::V3AddressObjectProto::Clear(uint64_t **this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = this[2];
    if (this)
    {
      this = addr_obj::VenueInfoProto::Clear(this);
    }
  }

  v3 = v1[1];
  v2 = v1 + 1;
  *(v2 + 5) = 0;
  if (v3)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t addr_obj::V3AddressObjectProto::MergePartialFromCodedStream(addr_obj::V3AddressObjectProto *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 7) |= 1u;
      v8 = *(this + 2);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v19);
      if (!addr_obj::VenueInfoProto::MergePartialFromCodedStream(v8, a2, v13, v14) || *(a2 + 36) != 1)
      {
        return 0;
      }

      AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v12);
      v15 = *(a2 + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(a2 + 14) = v17;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if (!AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t **addr_obj::V3AddressObjectProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 28))
  {
    v5 = this[2];
    if (!v5)
    {
      v5 = *(addr_obj::V3AddressObjectProto::default_instance_(this) + 16);
    }

    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v5, a2);
  }

  v8 = v4[1];
  v7 = v4 + 1;
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::V3AddressObjectProto::SerializeWithCachedSizesToArray(addr_obj::V3AddressObjectProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 28))
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(addr_obj::V3AddressObjectProto::default_instance_(this) + 16);
    }

    *a2 = 10;
    v7 = v6[16];
    if (v7 > 0x7F)
    {
      v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v7;
      v8 = (a2 + 2);
    }

    a2 = addr_obj::VenueInfoProto::SerializeWithCachedSizesToArray(v6, v8, a3, a4);
  }

  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3, a4);
}

uint64_t addr_obj::V3AddressObjectProto::ByteSize(addr_obj::V3AddressObjectProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  if (*(this + 28))
  {
    v4 = *(this + 2);
    if (!v4)
    {
      v4 = *(addr_obj::V3AddressObjectProto::default_instance_(0) + 16);
    }

    v5 = addr_obj::VenueInfoProto::ByteSize(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v8 = *(this + 1);
  if (v8 && *v8 != v8[1])
  {
    v3 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v3;
  }

  *(this + 6) = v3;
  return v3;
}

void addr_obj::V3AddressObjectProto::MergeFrom(addr_obj::V3AddressObjectProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 5444);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::V3AddressObjectProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D570C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::V3AddressObjectProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::V3AddressObjectProto::GetMetadata(addr_obj::V3AddressObjectProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905450;
}

void sub_1868D584C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void addr_obj::V4AddressObjectProto::MergeFrom(addr_obj::V4AddressObjectProto *this, const addr_obj::V4AddressObjectProto *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 5670);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 28))
  {
    *(this + 7) |= 1u;
    v5 = *(this + 2);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 2);
    if (!v6)
    {
      v6 = *(addr_obj::V4AddressObjectProto::default_instance_(this) + 16);
    }

    addr_obj::VenueInfoProto::MergeFrom(v5, v6);
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void addr_obj::V4AddressObjectProto::~V4AddressObjectProto(addr_obj::V4AddressObjectProto **this)
{
  *this = &unk_1EF7E05C0;
  addr_obj::V4AddressObjectProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 1));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::V4AddressObjectProto::~V4AddressObjectProto(this);

  JUMPOUT(0x18CFD1E40);
}

addr_obj::V4AddressObjectProto *addr_obj::V4AddressObjectProto::SharedDtor(addr_obj::V4AddressObjectProto **this)
{
  result = addr_obj::V4AddressObjectProto::default_instance_(this);
  if (result != this)
  {
    result = this[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

uint64_t **addr_obj::V4AddressObjectProto::Clear(uint64_t **this)
{
  v1 = this;
  if (*(this + 28))
  {
    this = this[2];
    if (this)
    {
      this = addr_obj::VenueInfoProto::Clear(this);
    }
  }

  v3 = v1[1];
  v2 = v1 + 1;
  *(v2 + 5) = 0;
  if (v3)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v2);
  }

  return this;
}

uint64_t addr_obj::V4AddressObjectProto::MergePartialFromCodedStream(addr_obj::V4AddressObjectProto *this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 7) |= 1u;
      v8 = *(this + 2);
      if (!v8)
      {
        operator new();
      }

      v19 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
        {
          return 0;
        }
      }

      else
      {
        v19 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v19);
      if (!addr_obj::VenueInfoProto::MergePartialFromCodedStream(v8, a2, v13, v14) || *(a2 + 36) != 1)
      {
        return 0;
      }

      AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v12);
      v15 = *(a2 + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(a2 + 14) = v17;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if (!AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, TagFallback, (this + 8), a4))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t **addr_obj::V4AddressObjectProto::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  if (*(this + 28))
  {
    v5 = this[2];
    if (!v5)
    {
      v5 = *(addr_obj::V4AddressObjectProto::default_instance_(this) + 16);
    }

    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(1, v5, a2);
  }

  v8 = v4[1];
  v7 = v4 + 1;
  v6 = v8;
  if (v8 && *v6 != v6[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v7, a2, a3);
  }

  return this;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::V4AddressObjectProto::SerializeWithCachedSizesToArray(addr_obj::V4AddressObjectProto *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if (*(this + 28))
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(addr_obj::V4AddressObjectProto::default_instance_(this) + 16);
    }

    *a2 = 10;
    v7 = v6[16];
    if (v7 > 0x7F)
    {
      v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, a2 + 1, a3);
    }

    else
    {
      *(a2 + 1) = v7;
      v8 = (a2 + 2);
    }

    a2 = addr_obj::VenueInfoProto::SerializeWithCachedSizesToArray(v6, v8, a3, a4);
  }

  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3, a4);
}

uint64_t addr_obj::V4AddressObjectProto::ByteSize(addr_obj::V4AddressObjectProto *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  if (*(this + 28))
  {
    v4 = *(this + 2);
    if (!v4)
    {
      v4 = *(addr_obj::V4AddressObjectProto::default_instance_(0) + 16);
    }

    v5 = addr_obj::VenueInfoProto::ByteSize(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 = (v6 + v7 + 1);
  }

  else
  {
    v3 = 0;
  }

  v8 = *(this + 1);
  if (v8 && *v8 != v8[1])
  {
    v3 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v3;
  }

  *(this + 6) = v3;
  return v3;
}

void addr_obj::V4AddressObjectProto::MergeFrom(addr_obj::V4AddressObjectProto *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", 5658);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::V4AddressObjectProto::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D5FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::V4AddressObjectProto::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::V4AddressObjectProto::GetMetadata(addr_obj::V4AddressObjectProto *this)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905460;
}

void sub_1868D60E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

unint64_t *addr_obj::Fingerprints::Fingerprints(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  addr_obj::Fingerprints::add(a1, a2, a3);
  return a1;
}

void sub_1868D62A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<addr_obj::Fingerprints::Fingerprint>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void addr_obj::Fingerprints::add(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *a2, *(a2 + 8));
  }

  else
  {
    v5 = *a2;
  }

  v6 = time(0);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a3, *(a3 + 8));
  }

  else
  {
    v7 = *a3;
  }

  addr_obj::getVersion(&__p);
  std::vector<addr_obj::Fingerprints::Fingerprint>::push_back[abi:ne200100](a1, &v5);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void addr_obj::Fingerprints::Fingerprint::~Fingerprint(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

const std::string **addr_obj::Fingerprints::toProto(const std::string **this, addr_obj::AddressObjectProto *a2)
{
  v2 = *this;
  if (*this != this[1])
  {
    v4 = this;
    do
    {
      v5 = *(a2 + 11);
      v6 = *(a2 + 10);
      if (v6 >= v5)
      {
        if (v5 == *(a2 + 12))
        {
          AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2 + 8, v5 + 1);
          v5 = *(a2 + 11);
        }

        *(a2 + 11) = v5 + 1;
        AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::FingerprintProto>::New();
      }

      v7 = *(a2 + 4);
      *(a2 + 10) = v6 + 1;
      v8 = *(v7 + 8 * v6);
      *(v8 + 52) |= 1u;
      v9 = *(v8 + 16);
      if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      v10 = std::string::operator=(*(v8 + 16), v2);
      v11 = *(v8 + 52);
      *(v8 + 24) = v2[1].__r_.__value_.__l.__data_;
      *(v8 + 52) = v11 | 6;
      v12 = *(v8 + 32);
      if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(v10))
      {
        operator new();
      }

      v13 = (v2 + 32);
      v14 = std::string::operator=(*(v8 + 32), v13);
      *(v8 + 52) |= 8u;
      v15 = *(v8 + 40);
      if (v15 == AddrObjGoogle::protobuf::internal::kEmptyString(v14))
      {
        operator new();
      }

      this = std::string::operator=(*(v8 + 40), v13 + 1);
      v2 = v13 + 2;
    }

    while (v2 != v4[1]);
  }

  return this;
}

void std::allocator_traits<std::allocator<addr_obj::Fingerprints::Fingerprint>>::destroy[abi:ne200100]<addr_obj::Fingerprints::Fingerprint,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::vector<addr_obj::Fingerprints::Fingerprint>::__construct_one_at_end[abi:ne200100]<addr_obj::Fingerprints::Fingerprint const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 3);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v6 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 32) = v6;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v7 = *(a2 + 56);
    *(v4 + 72) = *(a2 + 9);
    *(v4 + 56) = v7;
  }

  *(a1 + 8) = v4 + 80;
}

void sub_1868D66D0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E704DAE0, MEMORY[0x1E69E5280]);
}

void addr_obj::geo3::protobuf_AssignDesc_geo3_2dslim_2eproto(addr_obj::geo3 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  addr_obj::geo3::protobuf_AddDesc_geo3_2dslim_2eproto(this, a2, a3, a4);
  v5 = AddrObjGoogle::protobuf::DescriptorPool::generated_pool(v4);
  *(&__p[0].__r_.__value_.__s + 23) = 15;
  strcpy(__p, "geo3-slim.proto");
  FileByName = AddrObjGoogle::protobuf::DescriptorPool::FindFileByName(v5, __p);
  v7 = FileByName;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (FileByName)
  {
    goto LABEL_6;
  }

  AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/geo3-slim.pb.cc", 44);
  v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: file != NULL: ");
  AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v8);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
LABEL_6:
  qword_1EA905480 = *(v7 + 80);
  operator new();
}

uint64_t addr_obj::geo3::protobuf_ShutdownFile_geo3_2dslim_2eproto(addr_obj::geo3 *this)
{
  v1 = addr_obj::geo3::StructuredAddress::default_instance_(this);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  v2 = qword_1EA905488;
  if (qword_1EA905488)
  {
    v2 = (*(*qword_1EA905488 + 8))(qword_1EA905488);
  }

  v3 = addr_obj::geo3::StructuredAddress_SubPremise::default_instance_(v2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = qword_1EA905498;
  if (qword_1EA905498)
  {
    v4 = (*(*qword_1EA905498 + 8))(qword_1EA905498);
  }

  v5 = addr_obj::geo3::Address::default_instance_(v4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  result = qword_1EA9054B0;
  if (qword_1EA9054B0)
  {
    v7 = *(*qword_1EA9054B0 + 8);

    return v7();
  }

  return result;
}

uint64_t addr_obj::geo3::StructuredAddress_SubPremise_SubPremiseType_descriptor(addr_obj::geo3 *this)
{
  v1 = qword_1EA9054C8;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::geo3::protobuf_AssignDesc_geo3_2dslim_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9054C8, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9054A0;
}

void sub_1868D6BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::geo3::StructuredAddress_SubPremise::default_instance(addr_obj::geo3::StructuredAddress_SubPremise *this)
{
  v1 = addr_obj::geo3::StructuredAddress_SubPremise::default_instance_(this);
  if (!v1)
  {
    addr_obj::geo3::protobuf_AddDesc_geo3_2dslim_2eproto(0, v2, v3, v4);
  }

  return addr_obj::geo3::StructuredAddress_SubPremise::default_instance_(v1);
}

uint64_t *addr_obj::geo3::StructuredAddress_SubPremise::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 6) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v3 != this)
      {
        v4 = v1[2];
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }
  }

  v6 = v1[1];
  v5 = v1 + 1;
  *(v5 + 6) = 0;
  if (v6)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v5);
  }

  return this;
}

uint64_t **addr_obj::geo3::StructuredAddress_SubPremise::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(1, *(this + 6), a2, a4);
    v6 = *(v5 + 32);
  }

  if ((v6 & 2) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(2, *(v5 + 16), a2);
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return this;
}

void addr_obj::geo3::StructuredAddress_SubPremise::MergeFrom(addr_obj::geo3::StructuredAddress_SubPremise *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/geo3-slim.pb.cc", 461);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::geo3::StructuredAddress_SubPremise::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D6E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::geo3::StructuredAddress_SubPremise::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::geo3::StructuredAddress_SubPremise::GetMetadata(addr_obj::geo3::StructuredAddress_SubPremise *this)
{
  v1 = qword_1EA9054C8;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::geo3::protobuf_AssignDesc_geo3_2dslim_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9054C8, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905490;
}

void sub_1868D6FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

addr_obj::geo3::StructuredAddress *addr_obj::geo3::StructuredAddress::StructuredAddress(addr_obj::geo3::StructuredAddress *this, const addr_obj::geo3::StructuredAddress *a2)
{
  *this = &unk_1EF7E0858;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 34) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  addr_obj::geo3::StructuredAddress::SharedCtor(this);
  addr_obj::geo3::StructuredAddress::MergeFrom(this, a2);
  return this;
}

void sub_1868D7090()
{
  if (*v4)
  {
    MEMORY[0x18CFD1E20](*v4, 0x1000C8000313F17);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v3);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v1);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v0);
  JUMPOUT(0x1868D7080);
}

uint64_t AddrObjGoogle::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<long long,(AddrObjGoogle::protobuf::internal::WireFormatLite::FieldType)3>(AddrObjGoogle::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v12 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
    if (!result)
    {
      return result;
    }

    v5 = v12;
  }

  else
  {
    v12 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v13 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || (v9 = *v8, (v9 & 0x8000000000000000) != 0))
      {
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v13);
        if (!result)
        {
          return result;
        }

        v9 = v13;
      }

      else
      {
        *(this + 1) = v8 + 1;
      }

      v10 = *(a2 + 2);
      if (v10 == *(a2 + 3))
      {
        AddrObjGoogle::protobuf::RepeatedField<long long>::Reserve(a2, v10 + 1);
        v10 = *(a2 + 2);
      }

      v11 = *a2;
      *(a2 + 2) = v10 + 1;
      *(v11 + 8 * v10) = v9;
    }

    while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t **addr_obj::geo3::StructuredAddress::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 61);
  if (v6)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(1, this[2], a2);
    v6 = *(v5 + 244);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(2, *(v5 + 24), a2);
  v6 = *(v5 + 244);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(3, *(v5 + 32), a2);
  v6 = *(v5 + 244);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(4, *(v5 + 40), a2);
  v6 = *(v5 + 244);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(5, *(v5 + 48), a2);
  v6 = *(v5 + 244);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(6, *(v5 + 56), a2);
  v6 = *(v5 + 244);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(7, *(v5 + 64), a2);
  v6 = *(v5 + 244);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(8, *(v5 + 72), a2);
  v6 = *(v5 + 244);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(9, *(v5 + 80), a2);
  v6 = *(v5 + 244);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(10, *(v5 + 88), a2);
  v6 = *(v5 + 244);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(11, *(v5 + 96), a2);
  v6 = *(v5 + 244);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_52:
  this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(12, *(v5 + 104), a2);
  if ((*(v5 + 244) & 0x1000) != 0)
  {
LABEL_14:
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(13, *(v5 + 112), a2);
  }

LABEL_15:
  if (*(v5 + 128) >= 1)
  {
    v7 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(14, *(*(v5 + 120) + 8 * v7++), a2);
    }

    while (v7 < *(v5 + 128));
  }

  v8 = *(v5 + 244);
  if ((v8 & 0x4000) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(15, *(v5 + 144), a2);
    v8 = *(v5 + 244);
  }

  if ((v8 & 0x8000) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(16, *(v5 + 152), a2);
  }

  if (*(v5 + 168) >= 1)
  {
    v9 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(17, *(*(v5 + 160) + 8 * v9++), a2);
    }

    while (v9 < *(v5 + 168));
  }

  if ((*(v5 + 246) & 2) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(18, *(v5 + 184), a2);
  }

  if (*(v5 + 200) >= 1)
  {
    v10 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(19, *(*(v5 + 192) + 8 * v10++), a2);
    }

    while (v10 < *(v5 + 200));
  }

  if ((*(v5 + 246) & 8) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(20, *(v5 + 216), a2);
  }

  if (*(v5 + 232) >= 1)
  {
    v11 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt64(0x64, *(*(v5 + 224) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 232));
  }

  v14 = *(v5 + 8);
  v13 = (v5 + 8);
  v12 = v14;
  if (v14 && *v12 != v12[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v13, a2, a3);
  }

  return this;
}

void addr_obj::geo3::StructuredAddress::MergeFrom(addr_obj::geo3::StructuredAddress *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/geo3-slim.pb.cc", 1952);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::geo3::StructuredAddress::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D7638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::geo3::StructuredAddress::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::geo3::StructuredAddress::GetMetadata(addr_obj::geo3::StructuredAddress *this)
{
  v1 = qword_1EA9054C8;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::geo3::protobuf_AssignDesc_geo3_2dslim_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9054C8, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA905480;
}

void sub_1868D7770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

addr_obj::geo3::Address *addr_obj::geo3::Address::Address(addr_obj::geo3::Address *this, const addr_obj::geo3::Address *a2)
{
  *this = &unk_1EF7E0908;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  addr_obj::geo3::Address::MergeFrom(this, a2);
  return this;
}

void sub_1868D7800(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t **addr_obj::geo3::Address::SerializeWithCachedSizes(uint64_t **this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2, AddrObjGoogle::protobuf::io::CodedOutputStream *a3, AddrObjGoogle::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 6) >= 1)
  {
    v6 = 0;
    do
    {
      this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteString(11, v5[2][v6++], a2);
    }

    while (v6 < *(v5 + 6));
  }

  v7 = *(v5 + 14);
  if ((v7 & 2) != 0)
  {
    v8 = v5[5];
    if (!v8)
    {
      v8 = *(addr_obj::geo3::Address::default_instance_(this) + 40);
    }

    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(15, v8, a2);
    v7 = *(v5 + 14);
  }

  if ((v7 & 4) != 0)
  {
    this = AddrObjGoogle::protobuf::internal::WireFormatLite::WriteInt32(0x10, *(v5 + 12), a2, a4);
  }

  v11 = v5[1];
  v10 = v5 + 1;
  v9 = v11;
  if (v11 && *v9 != v9[1])
  {

    return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFields(v10, a2, a3);
  }

  return this;
}

void addr_obj::geo3::Address::MergeFrom(addr_obj::geo3::Address *this, const AddrObjGoogle::protobuf::Message *lpsrc)
{
  if (lpsrc == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/geo3-slim.pb.cc", 2437);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v7, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    addr_obj::geo3::Address::MergeFrom(this, v5);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void sub_1868D7A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const AddrObjGoogle::protobuf::Message *addr_obj::geo3::Address::CopyFrom(const AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return this;
}

uint64_t addr_obj::geo3::Address::GetMetadata(addr_obj::geo3::Address *this)
{
  v1 = qword_1EA9054C8;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = addr_obj::geo3::protobuf_AssignDesc_geo3_2dslim_2eproto;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9054C8, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9054A8;
}

void sub_1868D7B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

_DWORD *AddrObjGoogle::protobuf::RepeatedField<long long>::Reserve(_DWORD *result, int a2)
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

uint64_t AddrObjGoogle::protobuf::DynamicMessage::DynamicMessage(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1EF7E0A00;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v3 = *(a2 + 32);
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + *(a2 + 8)));
  v4 = *(*(a1 + 8) + 12);
  if (v4 != -1)
  {
    AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet((a1 + v4));
  }

  if (*(v3 + 44) >= 1)
  {
    v5 = 0;
    for (i = 0; i < *(v3 + 44); ++i)
    {
      v7 = *(v3 + 48);
      v8 = *(a1 + 8);
      v9 = *(*(v8 + 40) + 4 * i);
      v10 = a1 + v9;
      v11 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v7 + v5 + 44)];
      if (v11 > 5)
      {
        if (v11 <= 7)
        {
          if (v11 == 6)
          {
            v18 = v7 + v5;
            if (*(v18 + 48) == 3)
            {
              goto LABEL_30;
            }

            *v10 = *(v18 + 112);
          }

          else
          {
            v15 = v7 + v5;
            if (*(v15 + 48) == 3)
            {
              goto LABEL_30;
            }

            *v10 = *(v15 + 112);
          }
        }

        else
        {
          switch(v11)
          {
            case 8:
              v19 = v7 + v5;
              if (*(v19 + 48) != 3)
              {
                v17 = *(*(v19 + 112) + 16);
                goto LABEL_35;
              }

LABEL_30:
              *(v10 + 8) = 0;
LABEL_31:
              *v10 = 0;
              break;
            case 9:
              if (*(v7 + v5 + 48) == 3)
              {
LABEL_33:
                *v10 = 0;
                *(v10 + 8) = 0;
                *(v10 + 16) = 0;
                break;
              }

              v20 = *(v8 + 56);
              if (v20 != a1 && v20 != 0)
              {
                v14 = *(v20 + v9);
                goto LABEL_21;
              }

              v13 = v7 + v5;
LABEL_20:
              v14 = *(v13 + 112);
LABEL_21:
              *v10 = v14;
              break;
            case 10:
              if (*(v7 + v5 + 48) == 3)
              {
                goto LABEL_33;
              }

              goto LABEL_31;
          }
        }
      }

      else if (v11 <= 2)
      {
        if (v11 == 1)
        {
LABEL_25:
          v16 = v7 + v5;
          if (*(v16 + 48) != 3)
          {
            v17 = *(v16 + 112);
LABEL_35:
            *v10 = v17;
            goto LABEL_36;
          }

          goto LABEL_30;
        }

        if (v11 == 2)
        {
LABEL_19:
          v13 = v7 + v5;
          if (*(v13 + 48) == 3)
          {
            goto LABEL_30;
          }

          goto LABEL_20;
        }
      }

      else
      {
        if (v11 == 3)
        {
          goto LABEL_25;
        }

        if (v11 == 4)
        {
          goto LABEL_19;
        }

        v12 = v7 + v5;
        if (*(v12 + 48) == 3)
        {
          goto LABEL_30;
        }

        *v10 = *(v12 + 112);
      }

LABEL_36:
      v5 += 120;
    }
  }

  return a1;
}

void AddrObjGoogle::protobuf::DynamicMessage::~DynamicMessage(AddrObjGoogle::protobuf::DynamicMessage *this)
{
  *this = &unk_1EF7E0A00;
  v2 = *(this + 1);
  v3 = *(v2 + 32);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + *(v2 + 8)));
  v4 = *(*(this + 1) + 12);
  if (v4 != -1)
  {
    AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet((this + v4));
  }

  if (*(v3 + 44) >= 1)
  {
    v5 = 0;
    for (i = 0; i < *(v3 + 44); ++i)
    {
      v7 = *(v3 + 48);
      v8 = *(this + 1);
      v9 = *(*(v8 + 40) + 4 * i);
      v10 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v7 + v5 + 44)];
      if (*(v7 + v5 + 48) != 3)
      {
        if (v10 == 10)
        {
          v13 = *(v8 + 56);
          if (v13 != this && v13 != 0)
          {
            v15 = *(this + v9);
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }
          }
        }

        else if (v10 == 9)
        {
          v11 = *(this + v9);
          if (v11 && v11 != *(v7 + v5 + 112))
          {
            if (*(v11 + 23) < 0)
            {
              operator delete(*v11);
            }

            MEMORY[0x18CFD1E40](v11, 0x1012C40EC159624);
          }
        }

        goto LABEL_39;
      }

      if (v10 > 5)
      {
        if (v10 <= 7)
        {
          if (v10 != 6)
          {
            if (*(this + v9))
            {
              goto LABEL_38;
            }

            goto LABEL_39;
          }
        }

        else if (v10 != 8)
        {
          if (v10 == 9)
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + v9));
          }

          else if (v10 == 10)
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>((this + v9));
          }

          goto LABEL_39;
        }
      }

      else if (v10 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 != 2)
          {
            goto LABEL_39;
          }

LABEL_32:
          if (*(this + v9))
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      else if (v10 != 3)
      {
        goto LABEL_32;
      }

      if (*(this + v9))
      {
LABEL_38:
        MEMORY[0x18CFD1E20]();
      }

LABEL_39:
      v5 += 120;
    }
  }

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::DynamicMessage::~DynamicMessage(this);

  JUMPOUT(0x18CFD1E40);
}

void AddrObjGoogle::protobuf::DynamicMessage::CrossLinkPrototypes(AddrObjGoogle::protobuf::DynamicMessage *this)
{
  v2 = *(this + 1);
  v3 = v2[7];
  if (v3 != this && v3 != 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/dynamic_message.cc", 397);
    v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: is_prototype(): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v13, v5);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    v2 = *(this + 1);
  }

  v6 = v2[4];
  v7 = *(v6 + 44);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = v2[2];
    do
    {
      v11 = *(v6 + 48);
      if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(v11 + v8 + 44)] == 10 && *(v11 + v8 + 48) != 3)
      {
        v12 = *(*(*(this + 1) + 40) + 4 * v9);
        *(this + v12) = AddrObjGoogle::protobuf::DynamicMessageFactory::GetPrototypeNoLock(v10, *(v11 + v8 + 72));
        v7 = *(v6 + 44);
      }

      ++v9;
      v8 += 120;
    }

    while (v9 < v7);
  }
}

void sub_1868D8260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::DynamicMessageFactory::GetPrototypeNoLock(AddrObjGoogle::protobuf::DynamicMessageFactory *this, const AddrObjGoogle::protobuf::Descriptor *a2)
{
  v9 = a2;
  if (*(this + 16) == 1 && (v3 = *(*(a2 + 2) + 16), v4 = AddrObjGoogle::protobuf::DescriptorPool::generated_pool(this), v3 == v4))
  {
    v8 = *(*AddrObjGoogle::protobuf::MessageFactory::generated_factory(v4) + 16);

    return v8();
  }

  else
  {
    v5 = *(this + 3);
    v10 = &v9;
    v6 = std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>>>::__emplace_unique_key_args<AddrObjGoogle::protobuf::Descriptor const*,std::piecewise_construct_t const&,std::tuple<AddrObjGoogle::protobuf::Descriptor const* const&>,std::tuple<>>(v5, &v9, &unk_187FB793D, &v10)[3];
    if (!v6)
    {
      operator new();
    }

    return *(v6 + 56);
  }
}

uint64_t AddrObjGoogle::protobuf::DynamicMessage::New(AddrObjGoogle::protobuf::DynamicMessage *this)
{
  v2 = operator new(**(this + 1));
  v3 = *(this + 1);
  bzero(v2, *v3);

  return AddrObjGoogle::protobuf::DynamicMessage::DynamicMessage(v2, v3);
}

void AddrObjGoogle::protobuf::DynamicMessageFactory::DynamicMessageFactory(AddrObjGoogle::protobuf::DynamicMessageFactory *this)
{
  *this = &unk_1EF7E0AB0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  operator new();
}

void sub_1868D878C(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::internal::scoped_ptr<AddrObjGoogle::protobuf::DynamicMessageFactory::PrototypeMap>::~scoped_ptr(v1 + 3);
  addr_obj::Localization::getDisplayLanguage(v1);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::DynamicMessageFactory::~DynamicMessageFactory(AddrObjGoogle::protobuf::DynamicMessageFactory *this)
{
  *this = &unk_1EF7E0AB0;
  v2 = (this + 24);
  for (i = *(*(this + 3) + 16); i; i = *i)
  {
    v4 = i[3];
    if (v4)
    {
      AddrObjGoogle::protobuf::DynamicMessage::TypeInfo::~TypeInfo(v4);
      MEMORY[0x18CFD1E40]();
    }
  }

  AddrObjGoogle::protobuf::internal::Mutex::~Mutex((this + 32));
  AddrObjGoogle::protobuf::internal::scoped_ptr<AddrObjGoogle::protobuf::DynamicMessageFactory::PrototypeMap>::~scoped_ptr(v2);

  addr_obj::Localization::getDisplayLanguage(this);
}

{
  AddrObjGoogle::protobuf::DynamicMessageFactory::~DynamicMessageFactory(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::DynamicMessageFactory::GetPrototype(pthread_mutex_t **this, const AddrObjGoogle::protobuf::Descriptor *a2)
{
  AddrObjGoogle::protobuf::internal::Mutex::Lock(this + 4);
  PrototypeNoLock = AddrObjGoogle::protobuf::DynamicMessageFactory::GetPrototypeNoLock(this, a2);
  AddrObjGoogle::protobuf::internal::Mutex::Unlock(this + 4);
  return PrototypeNoLock;
}

void AddrObjGoogle::protobuf::DynamicMessage::TypeInfo::~TypeInfo(AddrObjGoogle::protobuf::DynamicMessage::TypeInfo *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x18CFD1E20](v4, 0x1000C8052888210);
  }
}

uint64_t *AddrObjGoogle::protobuf::internal::scoped_ptr<AddrObjGoogle::protobuf::DynamicMessageFactory::PrototypeMap>::~scoped_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>>>::~__hash_table(v2);
    MEMORY[0x18CFD1E40](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>>>::__emplace_unique_key_args<AddrObjGoogle::protobuf::Descriptor const*,std::piecewise_construct_t const&,std::tuple<AddrObjGoogle::protobuf::Descriptor const* const&>,std::tuple<>>(float *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::DynamicMessage::TypeInfo const*>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void AddrObjGoogle::protobuf::Message::MergeFrom(AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  v4 = (*(*this + 152))(this);
  if ((*(*a2 + 152))(a2) != v4)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message.cc", 65);
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (from.GetDescriptor()) == (descriptor): ");
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, ": Tried to merge from a message with a different type.  to: ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, *(v4 + 8));
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, ", from:");
    v10 = (*(*a2 + 152))(a2);
    v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, *(v10 + 8));
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v12, v11);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::ReflectionOps::Merge(a2, this, v5);
}

void sub_1868D8F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::Message::CopyFrom(AddrObjGoogle::protobuf::Message *this, const AddrObjGoogle::protobuf::Message *a2)
{
  v4 = (*(*this + 152))(this);
  if ((*(*a2 + 152))(a2) != v4)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message.cc", 78);
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (from.GetDescriptor()) == (descriptor): ");
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, ": Tried to copy from a message with a different type.to: ");
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, *(v4 + 8));
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, ", from:");
    v10 = (*(*a2 + 152))(a2);
    v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, *(v10 + 8));
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v12, v11);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  AddrObjGoogle::protobuf::internal::ReflectionOps::Copy(a2, this, v5);
}

void sub_1868D90EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::Message::GetTypeName(AddrObjGoogle::protobuf::Message *this@<X0>, std::string *a2@<X8>)
{
  v3 = *((*(*this + 152))(this) + 8);
  if (*(v3 + 23) < 0)
  {
    v5 = *v3;
    v6 = *(v3 + 1);

    std::string::__init_copy_ctor_external(a2, v5, v6);
  }

  else
  {
    v4 = *v3;
    a2->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&a2->__r_.__value_.__l.__data_ = v4;
  }
}

void AddrObjGoogle::protobuf::Message::FindInitializationErrors(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  LOBYTE(__p) = 0;
  AddrObjGoogle::protobuf::internal::ReflectionOps::FindInitializationErrors(a1, &__p, a2);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1868D91D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::Message::InitializationErrorString(AddrObjGoogle::protobuf::Message *this@<X0>, void *a2@<X8>)
{
  memset(v3, 0, sizeof(v3));
  AddrObjGoogle::protobuf::Message::FindInitializationErrors(this, v3);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  AddrObjGoogle::protobuf::JoinStrings(v3, ", ", a2);
  v4 = v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void sub_1868D9258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::Message::SerializeWithCachedSizes(const FieldDescriptor *this, AddrObjGoogle::protobuf::io::CodedOutputStream *a2)
{
  v4 = (*(*&this->MangledTypeName + 96))(this);

  AddrObjGoogle::protobuf::internal::WireFormat::SerializeWithCachedSizes(this, v4, a2, v5);
}

uint64_t AddrObjGoogle::protobuf::Message::ByteSize(const FieldDescriptor *this, const AddrObjGoogle::protobuf::Message *a2)
{
  v3 = AddrObjGoogle::protobuf::internal::WireFormat::ByteSize(this, a2);
  (*(*&this->MangledTypeName + 136))(this, v3);
  return v3;
}

uint64_t AddrObjGoogle::protobuf::Message::SpaceUsed(AddrObjGoogle::protobuf::Message *this)
{
  v1 = *(*(*(*this + 144))(this) + 32);

  return v1();
}

void AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(const std::string::value_type **this, const AddrObjGoogle::protobuf::Descriptor *a2, const AddrObjGoogle::protobuf::Message *a3)
{
  v5 = qword_1EA9054D0;
  __dmb(0xBu);
  if (v5 != 2)
  {
    v11[0].__r_.__value_.__r.__words[0] = &unk_1EF7E2130;
    v11[0].__r_.__value_.__l.__size_ = sub_1867208B8;
    v11[0].__r_.__value_.__s.__data_[16] = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9054D0, v11);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v11);
  }

  v6 = qword_1EA9054D8;
  addr_obj::Localization::getDisplayLanguage((qword_1EA9054D8 + 48));
  v11[0].__r_.__value_.__r.__words[0] = this;
  v11[0].__r_.__value_.__l.__size_ = a2;
  std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>>>::__emplace_unique_key_args<AddrObjGoogle::protobuf::Descriptor const*,std::pair<AddrObjGoogle::protobuf::Descriptor const* const,AddrObjGoogle::protobuf::Message const*>>((v6 + 56), v11, v11);
  if ((v7 & 1) == 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v11, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message.cc", 296);
    v8 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, "Type is already registered: ");
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v8, this[1]);
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v10, v9);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }
}

void sub_1868D94D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>>>::find<AddrObjGoogle::protobuf::Descriptor const*>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *&v2 <= v3 ? v3 % *&v2 : *a2;
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::find<char const*>(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      v4 = 5 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v4 == v13)
    {
      if (!strcmp(i[2], v2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>>>::__emplace_unique_key_args<AddrObjGoogle::protobuf::Descriptor const*,std::pair<AddrObjGoogle::protobuf::Descriptor const* const,AddrObjGoogle::protobuf::Message const*>>(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

std::string *addr_obj::venue::Decorator::Decorator(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v10;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v11;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    this[3].__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&this[3].__r_.__value_.__l.__data_ = v12;
  }

  return this;
}

void sub_1868D99D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *addr_obj::venue::Decorator::Decorator(std::string *this, const addr_obj::VenueDecoratorProto *a2)
{
  v4 = *(a2 + 2);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    this->__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 3);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *v6, *(v6 + 1));
  }

  else
  {
    v7 = *v6;
    this[1].__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v7;
  }

  v8 = *(a2 + 4);
  if (*(v8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    this[2].__r_.__value_.__r.__words[2] = *(v8 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v9;
  }

  v10 = *(a2 + 5);
  if (*(v10 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    this[3].__r_.__value_.__r.__words[2] = *(v10 + 2);
    *&this[3].__r_.__value_.__l.__data_ = v11;
  }

  return this;
}

void sub_1868D9AF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *addr_obj::venue::Decorator::toProto(std::string *this, addr_obj::VenueDecoratorProto *a2)
{
  v3 = this;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *(a2 + 13) |= 1u;
    v5 = *(a2 + 2);
    if (v5 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(a2 + 2), v3);
  }

  v6 = HIBYTE(v3[1].__r_.__value_.__r.__words[2]);
  if ((v6 & 0x80u) != 0)
  {
    v6 = v3[1].__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    *(a2 + 13) |= 2u;
    v7 = *(a2 + 3);
    if (v7 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(a2 + 3), v3 + 1);
  }

  v8 = HIBYTE(v3[2].__r_.__value_.__r.__words[2]);
  if ((v8 & 0x80u) != 0)
  {
    v8 = v3[2].__r_.__value_.__l.__size_;
  }

  if (v8)
  {
    *(a2 + 13) |= 4u;
    v9 = *(a2 + 4);
    if (v9 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    this = std::string::operator=(*(a2 + 4), v3 + 2);
  }

  v10 = HIBYTE(v3[3].__r_.__value_.__r.__words[2]);
  if ((v10 & 0x80u) != 0)
  {
    v10 = v3[3].__r_.__value_.__l.__size_;
  }

  if (v10)
  {
    *(a2 + 13) |= 8u;
    v11 = *(a2 + 5);
    if (v11 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
    {
      operator new();
    }

    v12 = *(a2 + 5);

    return std::string::operator=(v12, v3 + 3);
  }

  return this;
}

uint64_t addr_obj::venue::Decorator::str(addr_obj::venue::Decorator *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v31);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "venue::Decorator", 16);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ": pre_separator <", 17);
  v5 = *(this + 23);
  if (v5 >= 0)
  {
    v6 = this;
  }

  else
  {
    v6 = *this;
  }

  if (v5 >= 0)
  {
    v7 = *(this + 23);
  }

  else
  {
    v7 = *(this + 1);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ">", 1);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; prefix <", 10);
  v11 = *(this + 47);
  if (v11 >= 0)
  {
    v12 = this + 24;
  }

  else
  {
    v12 = *(this + 3);
  }

  if (v11 >= 0)
  {
    v13 = *(this + 47);
  }

  else
  {
    v13 = *(this + 4);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ">", 1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "; postfix <", 11);
  v17 = *(this + 71);
  if (v17 >= 0)
  {
    v18 = this + 48;
  }

  else
  {
    v18 = *(this + 6);
  }

  if (v17 >= 0)
  {
    v19 = *(this + 71);
  }

  else
  {
    v19 = *(this + 7);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ">", 1);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "; post_separator <", 18);
  v25 = *(this + 9);
  v24 = this + 72;
  v23 = v25;
  v26 = v24[23];
  if (v26 >= 0)
  {
    v27 = v24;
  }

  else
  {
    v27 = v23;
  }

  if (v26 >= 0)
  {
    v28 = v24[23];
  }

  else
  {
    v28 = *(v24 + 1);
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v27, v28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ">", 1);
  std::stringbuf::str();
  v31 = *MEMORY[0x1E69E54E8];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v32 = MEMORY[0x1E69E5548] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v33);
  std::ostream::~ostream();
  return MEMORY[0x18CFD1DA0](&v35);
}

void *addr_obj::venue::operator<<(void *a1, addr_obj::venue::Decorator *this)
{
  addr_obj::venue::Decorator::str(this);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void AddrObjGoogle::protobuf::EncodedDescriptorDatabase::~EncodedDescriptorDatabase(AddrObjGoogle::protobuf::EncodedDescriptorDatabase *this)
{
  *this = &unk_1EF7E0B80;
  v3 = (this + 80);
  v2 = *(this + 10);
  if (v3[1] != v2)
  {
    v4 = 0;
    do
    {
      operator delete(v2[v4++]);
      v2 = *(this + 10);
    }

    while (v4 < (*(this + 11) - v2) >> 3);
  }

  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::destroy(this + 32, *(this + 5));
  std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::destroy(this + 8, *(this + 2));
}

{
  AddrObjGoogle::protobuf::EncodedDescriptorDatabase::~EncodedDescriptorDatabase(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::EncodedDescriptorDatabase::FindFileByName(uint64_t a1, const void **a2, AddrObjGoogle::protobuf::MessageLite *a3)
{
  v5 = std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::find<std::string>(a1 + 8, a2);
  if (a1 + 16 == v5)
  {
    return 0;
  }

  v6 = *(v5 + 56);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v5 + 64);

  return AddrObjGoogle::protobuf::MessageLite::ParseFromArray(a3, v6, v7);
}

char *AddrObjGoogle::protobuf::EncodedDescriptorDatabase::FindFileContainingSymbol(uint64_t a1, const void **a2, AddrObjGoogle::protobuf::MessageLite *a3)
{
  result = AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::FindSymbol(a1 + 8, a2);
  if (result)
  {

    return AddrObjGoogle::protobuf::MessageLite::ParseFromArray(a3, result, v5);
  }

  return result;
}

const void *AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::FindSymbol(uint64_t a1, const void **a2)
{
  LastLessOrEqual = AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::FindLastLessOrEqual(a1, a2);
  if ((a1 + 32) == LastLessOrEqual)
  {
    return 0;
  }

  v5 = LastLessOrEqual;
  if (!AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::IsSubSymbol(a1, LastLessOrEqual + 4, a2))
  {
    return 0;
  }

  else
  {
    return v5[7];
  }
}

char *AddrObjGoogle::protobuf::EncodedDescriptorDatabase::FindFileContainingExtension(uint64_t a1, uint64_t a2, uint64_t a3, AddrObjGoogle::protobuf::MessageLite *a4)
{
  result = AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::FindExtension(a1 + 8, a2, a3);
  if (result)
  {

    return AddrObjGoogle::protobuf::MessageLite::ParseFromArray(a4, result, v6);
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::FindExtension(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
  }

  v9 = a3;
  v5 = std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::find<std::pair<std::string,int>>(a1 + 48, &v8.__r_.__value_.__l.__data_);
  if (a1 + 56 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 64);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1868DA350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::FindAllExtensionNumbers(uint64_t a1, uint64_t a2, const void **a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v27 = 0;
  v6 = (a1 + 56);
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = (a1 + 56);
    do
    {
      v9 = std::less<std::pair<std::string,int>>::operator()[abi:ne200100](a1 + 48, (v7 + 32), &__p.__r_.__value_.__l.__data_);
      if (v9)
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

      if (!v9)
      {
        v8 = v7;
      }

      v7 = *(v7 + v10);
    }

    while (v7);
  }

  else
  {
    v8 = (a1 + 56);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 == v6)
  {
    goto LABEL_44;
  }

  v11 = *(v8 + 55);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = *(v8 + 55);
  }

  else
  {
    v12 = *(v8 + 5);
  }

  v13 = *(a2 + 23);
  v14 = *(a2 + 8);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = *(a2 + 23);
  }

  if (v12 != v14)
  {
LABEL_44:
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v11 >> 63;
    v17 = v13 >> 63;
    do
    {
      v18 = (v16 & 1) != 0 ? *(v8 + 4) : v8 + 8;
      v19 = (v17 & 1) != 0 ? *a2 : a2;
      if (memcmp(v18, v19, v12))
      {
        break;
      }

      std::vector<int>::push_back[abi:ne200100](a3, v8 + 14);
      v20 = *(v8 + 1);
      v21 = v8;
      if (v20)
      {
        do
        {
          v8 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v8 = *(v21 + 2);
          v22 = *v8 == v21;
          v21 = v8;
        }

        while (!v22);
      }

      if (v8 == v6)
      {
        v15 = 1;
        return v15 & 1;
      }

      v23 = *(v8 + 55);
      v16 = v23 >> 63;
      if ((v23 & 0x80000000) == 0)
      {
        v12 = *(v8 + 55);
      }

      else
      {
        v12 = *(v8 + 5);
      }

      v24 = *(a2 + 23);
      v17 = v24 >> 63;
      if ((v24 & 0x80000000) != 0)
      {
        v24 = *(a2 + 8);
      }

      v15 = 1;
    }

    while (v12 == v24);
  }

  return v15 & 1;
}

void sub_1868DA524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<void const*,int>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::find<std::pair<std::string,int>>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::pair<std::string,int>>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::pair<std::string,int>>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

int *addr_obj::V3AddressObjectProto::v3address(addr_obj::V3AddressObjectProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905508, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1EA905508);
    if (v2)
    {
      v3 = addr_obj::V3AddressObjectProto::default_instance(v2);
      dword_1EA9054F8 = 101;
      qword_1EA905500 = v3;
      __cxa_guard_release(&qword_1EA905508);
    }
  }

  return &dword_1EA9054F8;
}

int *addr_obj::V4AddressObjectProto::v4address(addr_obj::V4AddressObjectProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905520, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1EA905520);
    if (v2)
    {
      v3 = addr_obj::V4AddressObjectProto::default_instance(v2);
      dword_1EA905510 = 102;
      qword_1EA905518 = v3;
      __cxa_guard_release(&qword_1EA905520);
    }
  }

  return &dword_1EA905510;
}

uint64_t *AddrObjGoogle::protobuf::Message::DebugString@<X0>(uint64_t *__return_ptr a1@<X8>, AddrObjGoogle::protobuf::Message *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *(v3 + 3) = 0;
  v3[0] = 0;
  return AddrObjGoogle::protobuf::TextFormat::Printer::PrintToString(v3, this, a1);
}

void sub_1868DA878(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::Message::ShortDebugString(std::string *__return_ptr a1@<X8>, AddrObjGoogle::protobuf::Message *this@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v8 = 0;
  v6 = 0;
  v7 = 1;
  AddrObjGoogle::protobuf::TextFormat::Printer::PrintToString(&v6, this, a1);
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v3 & 0x8000000000000000) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
    if (!size)
    {
      return;
    }
  }

  else
  {
    if (!*(&a1->__r_.__value_.__s + 23))
    {
      return;
    }

    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  v5 = size - 1;
  if ((v3 & 0x80000000) != 0)
  {
    if (*(a1->__r_.__value_.__r.__words[0] + v5) != 32)
    {
      return;
    }

    v3 = a1->__r_.__value_.__l.__size_;
    goto LABEL_10;
  }

  if (a1->__r_.__value_.__s.__data_[v5] == 32)
  {
LABEL_10:
    std::string::resize(a1, v3 - 1, 0);
  }
}

void sub_1868DA93C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *AddrObjGoogle::protobuf::TextFormat::Printer::Printer(_DWORD *this)
{
  *(this + 3) = 0;
  *this = 0;
  return this;
}

BOOL AddrObjGoogle::protobuf::TextFormat::Printer::PrintToString(AddrObjGoogle::protobuf::TextFormat::Printer *a1, const AddrObjGoogle::protobuf::Message *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  AddrObjGoogle::protobuf::io::StringOutputStream::StringOutputStream(v7, a3);
  v5 = AddrObjGoogle::protobuf::TextFormat::Printer::Print(a1, a2, v7);
  AddrObjGoogle::protobuf::io::StringOutputStream::~StringOutputStream(v7);
  return v5;
}

void AddrObjGoogle::protobuf::TextFormat::ParseInfoTree::RecordLocation(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = &v19;
  v4 = std::__tree<std::__value_type<AddrObjGoogle::protobuf::FieldDescriptor const*,std::vector<AddrObjGoogle::protobuf::TextFormat::ParseLocation>>,std::__map_value_compare<AddrObjGoogle::protobuf::FieldDescriptor const*,std::__value_type<AddrObjGoogle::protobuf::FieldDescriptor const*,std::vector<AddrObjGoogle::protobuf::TextFormat::ParseLocation>>,std::less<AddrObjGoogle::protobuf::FieldDescriptor const*>,true>,std::allocator<std::__value_type<AddrObjGoogle::protobuf::FieldDescriptor const*,std::vector<AddrObjGoogle::protobuf::TextFormat::ParseLocation>>>>::__emplace_unique_key_args<AddrObjGoogle::protobuf::FieldDescriptor const*,std::piecewise_construct_t const&,std::tuple<AddrObjGoogle::protobuf::FieldDescriptor const* const&>,std::tuple<>>(a1, &v19, &unk_187FB7B13, &v20);
  v5 = v4;
  v7 = v4[6];
  v6 = v4[7];
  if (v7 >= v6)
  {
    v9 = v4[5];
    v10 = (v7 - v9) >> 3;
    if ((v10 + 1) >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - v9;
    v12 = v11 >> 2;
    if (v11 >> 2 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>((v4 + 5), v13);
    }

    v14 = (8 * v10);
    *v14 = a3;
    v8 = 8 * v10 + 8;
    v15 = v4[5];
    v16 = v4[6] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = v5[5];
    v5[5] = v17;
    v5[6] = v8;
    v5[7] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = a3;
    v8 = (v7 + 1);
  }

  v5[6] = v8;
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::Parser(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::Parse(uint64_t a1, uint64_t a2, AddrObjGoogle::protobuf::Message *a3)
{
  (*(*a3 + 32))(a3);
  v6 = (*(*a3 + 152))(a3);
  AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ParserImpl(v12, v6, a2, *a1, *(a1 + 8), *(a1 + 16), 1, *(a1 + 25), v7, v8);
  v10 = AddrObjGoogle::protobuf::TextFormat::Parser::MergeUsingImpl(a1, v9, a3, v12);
  AddrObjGoogle::protobuf::io::Tokenizer::~Tokenizer(&v14);
  addr_obj::Localization::getDisplayLanguage(&v13);
  return v10;
}

void sub_1868DAD14(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::io::Tokenizer::~Tokenizer((v1 + 40));
  addr_obj::Localization::getDisplayLanguage((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::MergeUsingImpl(uint64_t a1, uint64_t a2, AddrObjGoogle::protobuf::Message *a3, uint64_t a4)
{
  while (*(a4 + 40) != 1)
  {
    if ((AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeField(a4, a3) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a4 + 229))
  {
    return 0;
  }

  if ((*(a1 + 24) & 1) == 0 && ((*(*a3 + 40))(a3, a2) & 1) == 0)
  {
    memset(v13, 0, sizeof(v13));
    AddrObjGoogle::protobuf::Message::FindInitializationErrors(a3, v13);
    memset(&v10, 0, sizeof(v10));
    AddrObjGoogle::protobuf::JoinStrings(v13, ", ", &v10);
    v8 = std::string::insert(&v10, 0, "Message missing required fields: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(a4, -1, 0, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    __p[0] = v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    return 0;
  }

  return 1;
}

void sub_1868DAE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  __p = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParseFromString(uint64_t a1, _DWORD *a2, AddrObjGoogle::protobuf::Message *a3)
{
  v5 = *(a2 + 23);
  v6 = a2[2];
  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  AddrObjGoogle::protobuf::io::ArrayInputStream::ArrayInputStream(v10, a2, v7, -1);
  v8 = AddrObjGoogle::protobuf::TextFormat::Parser::Parse(a1, v10, a3);
  AddrObjGoogle::protobuf::io::ArrayInputStream::~ArrayInputStream(v10);
  return v8;
}

void AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(uint64_t *a1, int a2, int a3, const std::string::value_type *a4)
{
  *(a1 + 229) = 1;
  v8 = *a1;
  if (v8)
  {
    v9 = *(*v8 + 16);

    v9();
  }

  else
  {
    if (a2 < 0)
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v20, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/text_format.cc", 251);
      v18 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v20, "Error parsing text-format ");
      v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v18, *(a1[27] + 8));
    }

    else
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v20, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/text_format.cc", 246);
      v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v20, "Error parsing text-format ");
      v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, *(a1[27] + 8));
      v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, ": ");
      v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, a2 + 1);
      v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, ":");
      v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, a3 + 1);
    }

    v16 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, ": ");
    v17 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, a4);
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v19, v17);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }
}

void sub_1868DB0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL AddrObjGoogle::protobuf::TextFormat::Printer::Print(AddrObjGoogle::protobuf::TextFormat::Printer *a1, const AddrObjGoogle::protobuf::Message *a2, uint64_t a3)
{
  AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::TextGenerator(v6, a3, *a1);
  AddrObjGoogle::protobuf::TextFormat::Printer::Print(a1, a2, v6);
  LOBYTE(a2) = v6[0].__r_.__value_.__s.__data_[21];
  AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(v6);
  return (a2 & 1) == 0;
}

void sub_1868DB13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::TextFormat::Printer::Print(AddrObjGoogle::protobuf::TextFormat::Printer *this, const AddrObjGoogle::protobuf::Message *a2, std::string *a3)
{
  v6 = (*(*a2 + 144))(a2);
  __p = 0;
  v11 = 0;
  v12 = 0;
  (*(*v6 + 96))(v6, a2, &__p);
  v7 = __p;
  if (v11 != __p)
  {
    v8 = 0;
    do
    {
      AddrObjGoogle::protobuf::TextFormat::Printer::PrintField(this, a2, v6, v7[v8++], a3);
      v7 = __p;
    }

    while (v8 < (v11 - __p) >> 3);
  }

  v9 = (*(*v6 + 16))(v6, a2);
  AddrObjGoogle::protobuf::TextFormat::Printer::PrintUnknownFields(this, v9, a3);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_1868DB278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::TextFormat::Printer::PrintUnknownFields(AddrObjGoogle::protobuf::TextFormat::Printer *this, uint64_t **a2, std::string *a3)
{
  v6 = 0;
  v7 = 0;
  v46 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v8 = *a2;
    v9 = *a2 ? ((v8[1] - *v8) >> 4) : 0;
    if (v7 >= v9)
    {
      break;
    }

    v10 = *v8;
    AddrObjGoogle::protobuf::SimpleItoa(&v40, (*(*v8 + v6) & 0x1FFFFFFF), a3);
    v11 = *(v10 + v6) >> 29;
    if (v11 <= 1)
    {
      if (v11)
      {
        if ((v42 & 0x80u) == 0)
        {
          v14 = &v40;
        }

        else
        {
          v14 = v40;
        }

        if ((v42 & 0x80u) == 0)
        {
          v15 = v42;
        }

        else
        {
          v15 = v41;
        }

        AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v14, v15);
        AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": 0x", 4);
        v17 = AddrObjGoogle::protobuf::FastHex32ToBuffer(*(v10 + v6 + 8), &__p, v16);
        v18 = strlen(v17);
        AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v17, v18);
        if (*(this + 4))
        {
          v19 = " ";
        }

        else
        {
          v19 = "\n";
        }

        goto LABEL_28;
      }

      if ((v42 & 0x80u) == 0)
      {
        v29 = &v40;
      }

      else
      {
        v29 = v40;
      }

      if ((v42 & 0x80u) == 0)
      {
        v30 = v42;
      }

      else
      {
        v30 = v41;
      }

      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v29, v30);
      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": ", 2);
      AddrObjGoogle::protobuf::SimpleItoa(&__p, *(v10 + v6 + 8), v31);
      if ((v45 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v45 & 0x80u) == 0)
      {
        v33 = v45;
      }

      else
      {
        v33 = v44;
      }

      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, p_p, v33);
      if (v45 < 0)
      {
        operator delete(__p);
      }

      if (*(this + 4))
      {
        v34 = " ";
      }

      else
      {
        v34 = "\n";
      }

      v35 = 1;
      goto LABEL_69;
    }

    if (v11 == 2)
    {
      if ((v42 & 0x80u) == 0)
      {
        v20 = &v40;
      }

      else
      {
        v20 = v40;
      }

      if ((v42 & 0x80u) == 0)
      {
        v21 = v42;
      }

      else
      {
        v21 = v41;
      }

      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v20, v21);
      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": 0x", 4);
      v23 = AddrObjGoogle::protobuf::FastHex64ToBuffer(*(v10 + v6 + 8), &__p, v22);
      v24 = strlen(v23);
      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v23, v24);
      if (*(this + 4))
      {
        v19 = " ";
      }

      else
      {
        v19 = "\n";
      }

LABEL_28:
      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v19, 1);
      goto LABEL_82;
    }

    if (v11 != 3)
    {
      if (v11 != 4)
      {
        goto LABEL_82;
      }

      if ((v42 & 0x80u) == 0)
      {
        v12 = &v40;
      }

      else
      {
        v12 = v40;
      }

      if ((v42 & 0x80u) == 0)
      {
        v13 = v42;
      }

      else
      {
        v13 = v41;
      }

      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v12, v13);
      if (*(this + 4) == 1)
      {
        AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " { ", 3);
      }

      else
      {
        AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " {\n", 3);
        std::string::append(a3 + 1, "  ");
      }

      AddrObjGoogle::protobuf::TextFormat::Printer::PrintUnknownFields(this, *(v10 + v6 + 8), a3);
      if (*(this + 4))
      {
        v35 = 2;
        v34 = "} ";
      }

      else
      {
        AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Outdent(a3);
        v35 = 2;
        v34 = "}\n";
      }

LABEL_69:
      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v34, v35);
      goto LABEL_82;
    }

    if ((v42 & 0x80u) == 0)
    {
      v25 = &v40;
    }

    else
    {
      v25 = v40;
    }

    if ((v42 & 0x80u) == 0)
    {
      v26 = v42;
    }

    else
    {
      v26 = v41;
    }

    AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v25, v26);
    v27 = *(v10 + v6 + 8);
    AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(&v39);
    v28 = *(v27 + 23);
    if (v28 < 0)
    {
      if (!v27[1])
      {
        goto LABEL_80;
      }
    }

    else if (!*(v27 + 23))
    {
      goto LABEL_80;
    }

    if (v28 >= 0)
    {
      v36 = v27;
    }

    else
    {
      v36 = *v27;
    }

    if (v28 >= 0)
    {
      v37 = *(v27 + 23);
    }

    else
    {
      v37 = *(v27 + 2);
    }

    if (!AddrObjGoogle::protobuf::UnknownFieldSet::ParseFromArray(&v39, v36, v37))
    {
LABEL_80:
      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, ": ", 3);
      AddrObjGoogle::protobuf::CEscape();
    }

    if (*(this + 4) == 1)
    {
      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " { ", 3);
    }

    else
    {
      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, " {\n", 3);
      std::string::append(a3 + 1, "  ");
    }

    AddrObjGoogle::protobuf::TextFormat::Printer::PrintUnknownFields(this, &v39, a3);
    if (*(this + 4))
    {
      v38 = "} ";
    }

    else
    {
      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Outdent(a3);
      v38 = "}\n";
    }

    AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a3, v38, 2);
    AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(&v39);
LABEL_82:
    if (v42 < 0)
    {
      operator delete(v40);
    }

    ++v7;
    v6 += 16;
  }
}

void sub_1868DB780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Printer::PrintField(AddrObjGoogle::protobuf::TextFormat::Printer *a1, uint64_t a2, uint64_t *a3, uint64_t a4, std::string *a5)
{
  v10 = *(a4 + 48);
  if (*(a1 + 5) != 1)
  {
    if (v10 == 3)
    {
      goto LABEL_8;
    }

LABEL_9:
    result = (*(*a3 + 40))(a3, a2, a4);
    goto LABEL_10;
  }

  if (v10 != 3)
  {
    goto LABEL_9;
  }

  if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 44)] - 9 < 2)
  {
LABEL_8:
    result = (*(*a3 + 48))(a3, a2, a4);
LABEL_10:
    v14 = result;
    if (result < 1)
    {
      return result;
    }

    v15 = 0;
    while (1)
    {
      AddrObjGoogle::protobuf::TextFormat::Printer::PrintFieldName(result, v12, v13, a4, a5);
      if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 44)] == 10)
      {
        v16 = a5;
        if (*(a1 + 4) != 1)
        {
          AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a5, " {\n", 3);
          std::string::append(a5 + 1, "  ");
          goto LABEL_18;
        }

        v17 = " { ";
        v18 = 3;
      }

      else
      {
        v16 = a5;
        v17 = ": ";
        v18 = 2;
      }

      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(v16, v17, v18);
LABEL_18:
      if (*(a4 + 48) == 3)
      {
        v19 = v15;
      }

      else
      {
        v19 = 0xFFFFFFFFLL;
      }

      AddrObjGoogle::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, a3, a4, v19, a5);
      v20 = a5;
      if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 44)] == 10)
      {
        if (*(a1 + 4))
        {
          v21 = "} ";
        }

        else
        {
          AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Outdent(a5);
          v20 = a5;
          v21 = "}\n";
        }

        v22 = 2;
      }

      else
      {
        if (*(a1 + 4))
        {
          v21 = " ";
        }

        else
        {
          v21 = "\n";
        }

        v22 = 1;
      }

      result = AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(v20, v21, v22);
      if (v14 == ++v15)
      {
        return result;
      }
    }
  }

  return AddrObjGoogle::protobuf::TextFormat::Printer::PrintShortRepeatedField(a1, a2, a3, a4, a5);
}

void AddrObjGoogle::protobuf::TextFormat::Printer::PrintFieldValueToString(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 23) < 0)
  {
    **a5 = 0;
    *(a5 + 8) = 0;
  }

  else
  {
    *a5 = 0;
    *(a5 + 23) = 0;
  }

  AddrObjGoogle::protobuf::io::StringOutputStream::StringOutputStream(v11, a5);
  AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::TextGenerator(v10, v11, *a1);
  v9 = (*(*a2 + 144))(a2);
  AddrObjGoogle::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, v9, a3, a4, v10);
  AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::~TextGenerator(v10);
  AddrObjGoogle::protobuf::io::StringOutputStream::~StringOutputStream(v11);
}

void AddrObjGoogle::protobuf::TextFormat::Printer::PrintFieldValue(AddrObjGoogle::protobuf::TextFormat::Printer *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator *a6)
{
  v7 = AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a4 + 44)];
  if (v7 <= 5)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v19 = *a3;
        if (*(a4 + 48) == 3)
        {
          v20 = (*(v19 + 280))(a3, a2, a4, a5);
        }

        else
        {
          v20 = (*(v19 + 104))(a3, a2, a4);
        }

        AddrObjGoogle::protobuf::SimpleItoa(&v39, v20, v21);
        if (v41 >= 0)
        {
          v34 = &v39;
        }

        else
        {
          v34 = v39;
        }

        if (v41 >= 0)
        {
          v35 = HIBYTE(v41);
        }

        else
        {
          v35 = v40;
        }
      }

      else
      {
        if (v7 != 2)
        {
          return;
        }

        v14 = *a3;
        if (*(a4 + 48) == 3)
        {
          v15 = (*(v14 + 288))(a3, a2, a4, a5);
        }

        else
        {
          v15 = (*(v14 + 112))(a3, a2, a4);
        }

        AddrObjGoogle::protobuf::SimpleItoa(&v39, v15, v16);
        if (v41 >= 0)
        {
          v34 = &v39;
        }

        else
        {
          v34 = v39;
        }

        if (v41 >= 0)
        {
          v35 = HIBYTE(v41);
        }

        else
        {
          v35 = v40;
        }
      }
    }

    else if (v7 == 3)
    {
      v25 = *a3;
      if (*(a4 + 48) == 3)
      {
        v26 = (*(v25 + 296))(a3, a2, a4, a5);
      }

      else
      {
        v26 = (*(v25 + 120))(a3, a2, a4);
      }

      AddrObjGoogle::protobuf::SimpleItoa(&v39, v26, v27);
      if (v41 >= 0)
      {
        v34 = &v39;
      }

      else
      {
        v34 = v39;
      }

      if (v41 >= 0)
      {
        v35 = HIBYTE(v41);
      }

      else
      {
        v35 = v40;
      }
    }

    else if (v7 == 4)
    {
      v30 = *a3;
      if (*(a4 + 48) == 3)
      {
        v31 = (*(v30 + 304))(a3, a2, a4, a5);
      }

      else
      {
        v31 = (*(v30 + 128))(a3, a2, a4);
      }

      AddrObjGoogle::protobuf::SimpleItoa(&v39, v31, v32);
      if (v41 >= 0)
      {
        v34 = &v39;
      }

      else
      {
        v34 = v39;
      }

      if (v41 >= 0)
      {
        v35 = HIBYTE(v41);
      }

      else
      {
        v35 = v40;
      }
    }

    else
    {
      v8 = *a3;
      if (*(a4 + 48) == 3)
      {
        (*(v8 + 320))(a3, a2, a4, a5);
      }

      else
      {
        v10 = (*(v8 + 144))(a3, a2, a4);
      }

      AddrObjGoogle::protobuf::SimpleDtoa(&v39, v10, v9);
      if (v41 >= 0)
      {
        v34 = &v39;
      }

      else
      {
        v34 = v39;
      }

      if (v41 >= 0)
      {
        v35 = HIBYTE(v41);
      }

      else
      {
        v35 = v40;
      }
    }

    goto LABEL_95;
  }

  if (v7 <= 7)
  {
    if (v7 == 6)
    {
      v22 = *a3;
      if (*(a4 + 48) == 3)
      {
        (*(v22 + 312))(a3, a2, a4, a5);
      }

      else
      {
        v24 = (*(v22 + 136))(a3, a2, a4);
      }

      AddrObjGoogle::protobuf::SimpleFtoa(&v39, v24, v23);
      if (v41 >= 0)
      {
        v34 = &v39;
      }

      else
      {
        v34 = v39;
      }

      if (v41 >= 0)
      {
        v35 = HIBYTE(v41);
      }

      else
      {
        v35 = v40;
      }

LABEL_95:
      AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a6, v34, v35);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(v39);
      }

      return;
    }

    v17 = *a3;
    if (*(a4 + 48) == 3)
    {
      v18 = (*(v17 + 328))(a3, a2, a4, a5);
    }

    else
    {
      v18 = (*(v17 + 152))(a3, a2, a4);
    }

    if (v18)
    {
      v36 = "true";
    }

    else
    {
      v36 = "false";
    }

    if (v18)
    {
      v37 = 4;
    }

    else
    {
      v37 = 5;
    }
  }

  else
  {
    if (v7 != 8)
    {
      if (v7 == 9)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v33 = *a3;
        if (*(a4 + 48) == 3)
        {
          (*(v33 + 360))(a3, a2, a4, a5, &v39);
        }

        else
        {
          (*(v33 + 184))(a3, a2, a4, &v39);
        }

        AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a6, "", 1);
        if (*(a1 + 6) == 1)
        {
          AddrObjGoogle::protobuf::strings::Utf8SafeCEscape();
        }

        AddrObjGoogle::protobuf::CEscape();
      }

      if (v7 == 10)
      {
        v12 = *a3;
        if (*(a4 + 48) == 3)
        {
          v13 = (*(v12 + 352))(a3, a2, a4, a5);
        }

        else
        {
          v13 = (*(v12 + 176))(a3, a2, a4, 0);
        }

        AddrObjGoogle::protobuf::TextFormat::Printer::Print(a1, v13, a6);
      }

      return;
    }

    v28 = *a3;
    if (*(a4 + 48) == 3)
    {
      v29 = (*(v28 + 344))(a3, a2, a4, a5);
    }

    else
    {
      v29 = (*(v28 + 168))(a3, a2, a4);
    }

    v38 = *(*v29 + 23);
    if (v38 >= 0)
    {
      v36 = *v29;
    }

    else
    {
      v36 = **v29;
    }

    if (v38 >= 0)
    {
      v37 = *(*v29 + 23);
    }

    else
    {
      v37 = *(*v29 + 2);
    }
  }

  AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a6, v36, v37);
}

void sub_1868DC2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Printer::PrintShortRepeatedField(AddrObjGoogle::protobuf::TextFormat::Printer *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator *a5)
{
  AddrObjGoogle::protobuf::TextFormat::Printer::PrintFieldName(a1, a2, a3, a4, a5);
  v10 = (*(*a3 + 48))(a3, a2, a4);
  AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a5, ": [", 3);
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if (v11)
      {
        AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a5, ", ", 2);
      }

      AddrObjGoogle::protobuf::TextFormat::Printer::PrintFieldValue(a1, a2, a3, a4, v11, a5);
      v11 = (v11 + 1);
    }

    while (v10 != v11);
  }

  if (*(a1 + 4))
  {
    v12 = "] ";
  }

  else
  {
    v12 = "]\n";
  }

  return AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(a5, v12, 2);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Printer::PrintFieldName(int a1, int a2, int a3, uint64_t *a4, AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator *this)
{
  v6 = a4;
  if (*(a4 + 52) == 1)
  {
    AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(this, "[", 1);
    if (*(*(v6[7] + 32) + 64) == 1 && *(v6 + 11) == 11 && *(v6 + 12) == 1 && v6[8] == v6[9])
    {
      v6 = v6[9];
    }

    v7 = v6[1];
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = v6[1];
    }

    else
    {
      v9 = *v7;
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(this, v9, v10);
    v11 = "]";
    v12 = this;
    v13 = 1;
  }

  else
  {
    if (*(a4 + 11) == 10)
    {
      v14 = *a4[9];
    }

    else
    {
      v14 = *a4;
    }

    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = *v14;
    }

    if (v15 >= 0)
    {
      v13 = *(v14 + 23);
    }

    else
    {
      v13 = *(v14 + 8);
    }

    v12 = this;
  }

  return AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Print(v12, v11, v13);
}

void AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator::Outdent(AddrObjGoogle::protobuf::TextFormat::Printer::TextGenerator *this)
{
  v1 = *(this + 47);
  if ((v1 & 0x80000000) == 0)
  {
    if (*(this + 47) && v1 >= 2 * *(this + 12))
    {
      v2 = *(this + 47);
      goto LABEL_8;
    }

LABEL_7:
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v6, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/text_format.cc", 948);
    v3 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v6, " Outdent() without matching Indent().");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v5, v3);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    return;
  }

  v2 = *(this + 4);
  if (!v2 || v2 < 2 * *(this + 12))
  {
    goto LABEL_7;
  }

LABEL_8:
  v4 = (this + 24);

  std::string::resize(v4, v2 - 2, 0);
}

void sub_1868DC634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::TextFormat::PrintFieldValueToString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 3) = 0;
  v4[0] = 0;
  AddrObjGoogle::protobuf::TextFormat::Printer::PrintFieldValueToString(v4, a1, a2, a3, a4);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ParserImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, double a9, __n128 a10)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = &unk_1EF7E0BF8;
  *(a1 + 32) = a1;
  AddrObjGoogle::protobuf::io::Tokenizer::Tokenizer(a1 + 40, a3, a1 + 24, a9, a10);
  *(a1 + 216) = a2;
  *(a1 + 224) = a7;
  *(a1 + 228) = a8;
  *(a1 + 229) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = 1;
  AddrObjGoogle::protobuf::io::Tokenizer::Next((a1 + 40));
  return a1;
}

void sub_1868DC724(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::io::Tokenizer::~Tokenizer((v2 + 40));
  addr_obj::Localization::getDisplayLanguage(v1);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ParserErrorCollector::~ParserErrorCollector(AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ParserErrorCollector *this)
{
  addr_obj::Localization::getDisplayLanguage(this);

  JUMPOUT(0x18CFD1E40);
}

void AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportWarning(uint64_t *a1, int a2, int a3, const std::string::value_type *a4)
{
  v8 = *a1;
  if (v8)
  {
    v9 = *(*v8 + 24);

    v9();
  }

  else
  {
    if (a2 < 0)
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v20, 1, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/text_format.cc", 268);
      v18 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v20, "Warning parsing text-format ");
      v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v18, *(a1[27] + 8));
    }

    else
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v20, 1, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/text_format.cc", 263);
      v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v20, "Warning parsing text-format ");
      v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, *(a1[27] + 8));
      v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, ": ");
      v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, a2 + 1);
      v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, ":");
      v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, a3 + 1);
    }

    v16 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, ": ");
    v17 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, a4);
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v19, v17);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }
}

void sub_1868DC8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeField(AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl *this, AddrObjGoogle::protobuf::Message *a2)
{
  v4 = (*(*a2 + 144))(a2);
  v5 = (*(*a2 + 152))(a2);
  memset(&v70, 0, sizeof(v70));
  v6 = *(this + 9);
  std::string::basic_string[abi:ne200100]<0>(__p, "[");
  v7 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
  v8 = v7;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
LABEL_3:
    if (!AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &v70))
    {
      goto LABEL_138;
    }

    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, ".");
      v9 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (!v9)
      {
        break;
      }

      memset(__p, 0, 24);
      if (!AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, __p))
      {
        if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_138;
        }

        v15 = __p[0].__r_.__value_.__r.__words[0];
        goto LABEL_103;
      }

      std::string::append(&v70, ".");
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p[0].__r_.__value_.__l.__size_;
      }

      std::string::append(&v70, v10, size);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "]");
    v13 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
    v14 = v13;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if ((v14 & 1) == 0)
      {
        goto LABEL_138;
      }
    }

    else if ((v13 & 1) == 0)
    {
      goto LABEL_138;
    }

    v16 = *(this + 1);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16, a2, &v70);
    }

    else
    {
      v17 = (*(*v4 + 528))(v4, &v70);
    }

    FieldByName = v17;
    if (v17)
    {
LABEL_96:
      if (*(this + 56) == 1 && *(FieldByName + 48) != 3 && (*(*v4 + 40))(v4, a2, FieldByName))
      {
        std::operator+<char>();
        v46 = std::string::append(&v69, " is specified multiple times.");
        v47 = *&v46->__r_.__value_.__l.__data_;
        __p[0].__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
        *&__p[0].__r_.__value_.__l.__data_ = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
        AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18), *(this + 19), __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v69.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_138;
        }

        v15 = v69.__r_.__value_.__r.__words[0];
        goto LABEL_103;
      }

      if (AddrObjGoogle::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByName + 44)] == 10)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, ":");
        AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if ((AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldMessage(this, a2, v4, FieldByName) & 1) == 0)
        {
          goto LABEL_138;
        }

        goto LABEL_125;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, ":");
      v48 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v48)
      {
        if (*(FieldByName + 48) == 3)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "[");
          v49 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (v49)
          {
            while ((AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldValue(this, a2, v4, FieldByName) & 1) != 0)
            {
              std::string::basic_string[abi:ne200100]<0>(__p, "]");
              v50 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if (v50)
              {
                goto LABEL_125;
              }

              std::string::basic_string[abi:ne200100]<0>(__p, ",");
              v51 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::Consume(this, __p);
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              v52 = 0;
              if ((v51 & 1) == 0)
              {
                goto LABEL_139;
              }
            }

            goto LABEL_138;
          }
        }

        if (AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeFieldValue(this, a2, v4, FieldByName))
        {
LABEL_125:
          std::string::basic_string[abi:ne200100]<0>(__p, ";");
          if ((AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p) & 1) == 0)
          {
            std::string::basic_string[abi:ne200100]<0>(&v69, ",");
            AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, &v69);
            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v69.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          if (*(*(FieldByName + 96) + 46) == 1)
          {
            std::operator+<char>();
            v53 = std::string::append(&v69, "");
            v54 = *&v53->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v54;
            v53->__r_.__value_.__l.__size_ = 0;
            v53->__r_.__value_.__r.__words[2] = 0;
            v53->__r_.__value_.__r.__words[0] = 0;
            AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportWarning(this, *(this + 18), *(this + 19), __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v69.__r_.__value_.__l.__data_);
            }
          }

          v55 = *(this + 2);
          if (v55)
          {
            AddrObjGoogle::protobuf::TextFormat::ParseInfoTree::RecordLocation(v55, FieldByName, v6);
          }

          v52 = 1;
          goto LABEL_139;
        }
      }

LABEL_138:
      v52 = 0;
      goto LABEL_139;
    }

    if (*(this + 228))
    {
      std::operator+<char>();
      v57 = std::string::append(&v67, " is not defined or is not an extension of ");
      v58 = *&v57->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v58;
      v57->__r_.__value_.__l.__size_ = 0;
      v57->__r_.__value_.__r.__words[2] = 0;
      v57->__r_.__value_.__r.__words[0] = 0;
      v59 = *(v5 + 8);
      v60 = *(v59 + 23);
      if (v60 >= 0)
      {
        v30 = *(v5 + 8);
      }

      else
      {
        v30 = *v59;
      }

      if (v60 >= 0)
      {
        v31 = *(v59 + 23);
      }

      else
      {
        v31 = *(v59 + 8);
      }

      goto LABEL_66;
    }

    std::operator+<char>();
    v62 = std::string::append(&v67, " is not defined or is not an extension of ");
    v63 = *&v62->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v63;
    v62->__r_.__value_.__l.__size_ = 0;
    v62->__r_.__value_.__r.__words[2] = 0;
    v62->__r_.__value_.__r.__words[0] = 0;
    v64 = *(v5 + 8);
    v65 = *(v64 + 23);
    if (v65 >= 0)
    {
      v40 = *(v5 + 8);
    }

    else
    {
      v40 = *v64;
    }

    if (v65 >= 0)
    {
      v41 = *(v64 + 23);
    }

    else
    {
      v41 = *(v64 + 8);
    }

LABEL_85:
    v42 = std::string::append(&v68, v40, v41);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    v44 = std::string::append(&v69, ".");
    v45 = *&v44->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportError(this, *(this + 18), *(this + 19), __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_138;
    }

    v15 = v67.__r_.__value_.__r.__words[0];
LABEL_103:
    operator delete(v15);
    goto LABEL_138;
  }

  if (!AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ConsumeIdentifier(this, &v70))
  {
    goto LABEL_138;
  }

  FieldByName = AddrObjGoogle::protobuf::Descriptor::FindFieldByName(v5, &v70);
  if (FieldByName)
  {
    goto LABEL_167;
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    __p[0] = v70;
  }

  v18 = (__p + HIBYTE(__p[0].__r_.__value_.__r.__words[2]));
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = __p;
  }

  else
  {
    v18 = (__p[0].__r_.__value_.__r.__words[0] + __p[0].__r_.__value_.__l.__size_);
    v19 = __p[0].__r_.__value_.__r.__words[0];
  }

  while (v19 != v18)
  {
    v20 = v19->__r_.__value_.__s.__data_[0];
    if ((v20 - 65) <= 0x19)
    {
      v19->__r_.__value_.__s.__data_[0] = v20 | 0x20;
    }

    v19 = (v19 + 1);
  }

  v21 = AddrObjGoogle::protobuf::Descriptor::FindFieldByName(v5, __p);
  if (v21)
  {
    if (*(v21 + 44) == 10)
    {
      FieldByName = v21;
    }

    else
    {
      FieldByName = 0;
    }
  }

  else
  {
    FieldByName = 0;
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (FieldByName)
  {
LABEL_167:
    if (*(FieldByName + 44) != 10)
    {
      goto LABEL_96;
    }

    v22 = **(FieldByName + 72);
    v23 = *(v22 + 23);
    if (v23 >= 0)
    {
      v24 = *(v22 + 23);
    }

    else
    {
      v24 = *(v22 + 8);
    }

    v25 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v70.__r_.__value_.__l.__size_;
    }

    if (v24 == v25)
    {
      v26 = v23 >= 0 ? **(FieldByName + 72) : *v22;
      v27 = (v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v70 : v70.__r_.__value_.__r.__words[0];
      if (!memcmp(v26, v27, v24))
      {
        goto LABEL_96;
      }
    }
  }

  if ((*(this + 228) & 1) == 0)
  {
    std::operator+<char>();
    v38 = std::string::append(&v67, " has no field named ");
    v39 = *&v38->__r_.__value_.__l.__data_;
    v68.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
    *&v68.__r_.__value_.__l.__data_ = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v70;
    }

    else
    {
      v40 = v70.__r_.__value_.__r.__words[0];
    }

    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v41 = v70.__r_.__value_.__l.__size_;
    }

    goto LABEL_85;
  }

  std::operator+<char>();
  v28 = std::string::append(&v67, " has no field named ");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v68.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v68.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v70;
  }

  else
  {
    v30 = v70.__r_.__value_.__r.__words[0];
  }

  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v70.__r_.__value_.__l.__size_;
  }

LABEL_66:
  v32 = std::string::append(&v68, v30, v31);
  v33 = *&v32->__r_.__value_.__l.__data_;
  v69.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v69.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v69, ".");
  v35 = *&v34->__r_.__value_.__l.__data_;
  __p[0].__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&__p[0].__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::ReportWarning(this, *(this + 18), *(this + 19), __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if ((*(this + 228) & 1) == 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/text_format.cc", 383);
    v36 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: allow_unknown_field_: ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v69, v36);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, ":");
  if (AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::TryConsume(this, __p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v69, "{");
    if (AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, &v69))
    {
      v37 = 0;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v68, "<");
      v37 = !AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::LookingAt(this, &v68);
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v37 = 0;
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    v61 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::SkipFieldValue(this);
  }

  else
  {
    v61 = AddrObjGoogle::protobuf::TextFormat::Parser::ParserImpl::SkipFieldMessage(this);
  }

  v52 = v61;
LABEL_139:
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  return v52;
}