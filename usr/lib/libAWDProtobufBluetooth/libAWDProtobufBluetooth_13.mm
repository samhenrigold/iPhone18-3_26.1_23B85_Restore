uint64_t awd::metrics::BluetoothLEScan::ByteSize(awd::metrics::BluetoothLEScan *this, unint64_t a2)
{
  v3 = *(this + 63);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 63);
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
    v3 = *(this + 63);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 63);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
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
    v3 = *(this + 63);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 63);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(this + 8);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 63);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 9);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 63);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 63);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 63);
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_60;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 63);
  }

  else
  {
    v22 = 2;
  }

  v4 = (v22 + v4);
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 63);
  }

  else
  {
    v24 = 2;
  }

  v4 = (v24 + v4);
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

LABEL_64:
  v25 = *(this + 14);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 63);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_72;
  }

LABEL_68:
  v27 = *(this + 15);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 63);
  }

  else
  {
    v28 = 2;
  }

  v4 = (v28 + v4);
  if ((v3 & 0x2000) == 0)
  {
LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_72:
  v29 = *(this + 16);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 63);
  }

  else
  {
    v30 = 2;
  }

  v4 = (v30 + v4);
  if ((v3 & 0x4000) == 0)
  {
LABEL_50:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v31 = *(this + 17);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 63);
  }

  else
  {
    v32 = 2;
  }

  v4 = (v32 + v4);
  if ((v3 & 0x8000) != 0)
  {
LABEL_80:
    v33 = *(this + 18);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 63);
    }

    else
    {
      v34 = 3;
    }

    v4 = (v34 + v4);
  }

LABEL_84:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_126;
  }

  if ((v3 & 0x10000) != 0)
  {
    v35 = *(this + 19);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v3 = *(this + 63);
    }

    else
    {
      v36 = 3;
    }

    v4 = (v36 + v4);
    if ((v3 & 0x20000) == 0)
    {
LABEL_87:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_102;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

  v37 = *(this + 20);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v38 = 3;
  }

  v4 = (v38 + v4);
  if ((v3 & 0x40000) == 0)
  {
LABEL_88:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_106;
  }

LABEL_102:
  v39 = *(this + 21);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v40 = 3;
  }

  v4 = (v40 + v4);
  if ((v3 & 0x80000) == 0)
  {
LABEL_89:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_110;
  }

LABEL_106:
  v41 = *(this + 22);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v42 = 3;
  }

  v4 = (v42 + v4);
  if ((v3 & 0x100000) == 0)
  {
LABEL_90:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_114;
  }

LABEL_110:
  v43 = *(this + 23);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v44 = 3;
  }

  v4 = (v44 + v4);
  if ((v3 & 0x200000) == 0)
  {
LABEL_91:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_118;
  }

LABEL_114:
  v45 = *(this + 24);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v46 = 3;
  }

  v4 = (v46 + v4);
  if ((v3 & 0x400000) == 0)
  {
LABEL_92:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_122;
  }

LABEL_118:
  v47 = *(this + 25);
  if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v48 = 3;
  }

  v4 = (v48 + v4);
  if ((v3 & 0x800000) != 0)
  {
LABEL_122:
    v49 = *(this + 26);
    if (v49 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
      v3 = *(this + 63);
    }

    else
    {
      v50 = 3;
    }

    v4 = (v50 + v4);
  }

LABEL_126:
  if (!HIBYTE(v3))
  {
    goto LABEL_168;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v51 = *(this + 27);
    if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
      v3 = *(this + 63);
    }

    else
    {
      v52 = 3;
    }

    v4 = (v52 + v4);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_129:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_144;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_129;
  }

  v53 = *(this + 28);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v54 = 3;
  }

  v4 = (v54 + v4);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_130:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_148;
  }

LABEL_144:
  v55 = *(this + 29);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v56 = 3;
  }

  v4 = (v56 + v4);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_131:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_152;
  }

LABEL_148:
  v57 = *(this + 30);
  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v58 = 3;
  }

  v4 = (v58 + v4);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_132:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_156;
  }

LABEL_152:
  v59 = *(this + 31);
  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v60 = 3;
  }

  v4 = (v60 + v4);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_133:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_160;
  }

LABEL_156:
  v61 = *(this + 32);
  if (v61 >= 0x80)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v62 = 3;
  }

  v4 = (v62 + v4);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_134:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_164;
  }

LABEL_160:
  v63 = *(this + 33);
  if (v63 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
    v3 = *(this + 63);
  }

  else
  {
    v64 = 3;
  }

  v4 = (v64 + v4);
  if ((v3 & 0x80000000) != 0)
  {
LABEL_164:
    v65 = *(this + 34);
    if (v65 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
    }

    else
    {
      v66 = 3;
    }

    v4 = (v66 + v4);
  }

LABEL_168:
  v67 = *(this + 64);
  if (!v67)
  {
    goto LABEL_210;
  }

  if (v67)
  {
    v68 = *(this + 35);
    if (v68 >= 0x80)
    {
      v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
      v67 = *(this + 64);
    }

    else
    {
      v69 = 3;
    }

    v4 = (v69 + v4);
    if ((v67 & 2) == 0)
    {
LABEL_171:
      if ((v67 & 4) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_186;
    }
  }

  else if ((v67 & 2) == 0)
  {
    goto LABEL_171;
  }

  v70 = *(this + 36);
  if (v70 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v71 = 3;
  }

  v4 = (v71 + v4);
  if ((v67 & 4) == 0)
  {
LABEL_172:
    if ((v67 & 8) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_190;
  }

LABEL_186:
  v72 = *(this + 37);
  if (v72 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v73 = 3;
  }

  v4 = (v73 + v4);
  if ((v67 & 8) == 0)
  {
LABEL_173:
    if ((v67 & 0x10) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_194;
  }

LABEL_190:
  v74 = *(this + 38);
  if (v74 >= 0x80)
  {
    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v75 = 3;
  }

  v4 = (v75 + v4);
  if ((v67 & 0x10) == 0)
  {
LABEL_174:
    if ((v67 & 0x20) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_198;
  }

LABEL_194:
  v76 = *(this + 39);
  if (v76 >= 0x80)
  {
    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v77 = 3;
  }

  v4 = (v77 + v4);
  if ((v67 & 0x20) == 0)
  {
LABEL_175:
    if ((v67 & 0x40) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_202;
  }

LABEL_198:
  v78 = *(this + 40);
  if (v78 >= 0x80)
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v79 = 3;
  }

  v4 = (v79 + v4);
  if ((v67 & 0x40) == 0)
  {
LABEL_176:
    if ((v67 & 0x80) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_206;
  }

LABEL_202:
  v80 = *(this + 41);
  if (v80 >= 0x80)
  {
    v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v81 = 3;
  }

  v4 = (v81 + v4);
  if ((v67 & 0x80) != 0)
  {
LABEL_206:
    v82 = *(this + 42);
    if (v82 >= 0x80)
    {
      v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82) + 2;
      v67 = *(this + 64);
    }

    else
    {
      v83 = 3;
    }

    v4 = (v83 + v4);
  }

LABEL_210:
  if ((v67 & 0xFF00) == 0)
  {
    goto LABEL_252;
  }

  if ((v67 & 0x100) != 0)
  {
    v84 = *(this + 43);
    if (v84 >= 0x80)
    {
      v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84) + 2;
      v67 = *(this + 64);
    }

    else
    {
      v85 = 3;
    }

    v4 = (v85 + v4);
    if ((v67 & 0x200) == 0)
    {
LABEL_213:
      if ((v67 & 0x400) == 0)
      {
        goto LABEL_214;
      }

      goto LABEL_228;
    }
  }

  else if ((v67 & 0x200) == 0)
  {
    goto LABEL_213;
  }

  v86 = *(this + 44);
  if (v86 >= 0x80)
  {
    v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v87 = 3;
  }

  v4 = (v87 + v4);
  if ((v67 & 0x400) == 0)
  {
LABEL_214:
    if ((v67 & 0x800) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_232;
  }

LABEL_228:
  v88 = *(this + 45);
  if (v88 >= 0x80)
  {
    v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v89 = 3;
  }

  v4 = (v89 + v4);
  if ((v67 & 0x800) == 0)
  {
LABEL_215:
    if ((v67 & 0x1000) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_236;
  }

LABEL_232:
  v90 = *(this + 46);
  if (v90 >= 0x80)
  {
    v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v91 = 3;
  }

  v4 = (v91 + v4);
  if ((v67 & 0x1000) == 0)
  {
LABEL_216:
    if ((v67 & 0x2000) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_240;
  }

LABEL_236:
  v92 = *(this + 47);
  if (v92 >= 0x80)
  {
    v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v93 = 3;
  }

  v4 = (v93 + v4);
  if ((v67 & 0x2000) == 0)
  {
LABEL_217:
    if ((v67 & 0x4000) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_244;
  }

LABEL_240:
  v94 = *(this + 48);
  if (v94 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v94) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v95 = 3;
  }

  v4 = (v95 + v4);
  if ((v67 & 0x4000) == 0)
  {
LABEL_218:
    if ((v67 & 0x8000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_248;
  }

LABEL_244:
  v96 = *(this + 49);
  if (v96 >= 0x80)
  {
    v97 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v97 = 3;
  }

  v4 = (v97 + v4);
  if ((v67 & 0x8000) != 0)
  {
LABEL_248:
    v98 = *(this + 50);
    if (v98 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98) + 2;
      v67 = *(this + 64);
    }

    else
    {
      v99 = 3;
    }

    v4 = (v99 + v4);
  }

LABEL_252:
  if ((v67 & 0xFF0000) == 0)
  {
    goto LABEL_294;
  }

  if ((v67 & 0x10000) != 0)
  {
    v100 = *(this + 51);
    if (v100 >= 0x80)
    {
      v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100) + 2;
      v67 = *(this + 64);
    }

    else
    {
      v101 = 3;
    }

    v4 = (v101 + v4);
    if ((v67 & 0x20000) == 0)
    {
LABEL_255:
      if ((v67 & 0x40000) == 0)
      {
        goto LABEL_256;
      }

      goto LABEL_270;
    }
  }

  else if ((v67 & 0x20000) == 0)
  {
    goto LABEL_255;
  }

  v102 = *(this + 52);
  if (v102 >= 0x80)
  {
    v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v102) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v103 = 3;
  }

  v4 = (v103 + v4);
  if ((v67 & 0x40000) == 0)
  {
LABEL_256:
    if ((v67 & 0x80000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_274;
  }

LABEL_270:
  v104 = *(this + 53);
  if (v104 >= 0x80)
  {
    v105 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v105 = 3;
  }

  v4 = (v105 + v4);
  if ((v67 & 0x80000) == 0)
  {
LABEL_257:
    if ((v67 & 0x100000) == 0)
    {
      goto LABEL_258;
    }

    goto LABEL_278;
  }

LABEL_274:
  v106 = *(this + 54);
  if (v106 >= 0x80)
  {
    v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v107 = 3;
  }

  v4 = (v107 + v4);
  if ((v67 & 0x100000) == 0)
  {
LABEL_258:
    if ((v67 & 0x200000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_282;
  }

LABEL_278:
  v108 = *(this + 55);
  if (v108 >= 0x80)
  {
    v109 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v109 = 3;
  }

  v4 = (v109 + v4);
  if ((v67 & 0x200000) == 0)
  {
LABEL_259:
    if ((v67 & 0x400000) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_286;
  }

LABEL_282:
  v110 = *(this + 56);
  if (v110 >= 0x80)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v111 = 3;
  }

  v4 = (v111 + v4);
  if ((v67 & 0x400000) == 0)
  {
LABEL_260:
    if ((v67 & 0x800000) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_290;
  }

LABEL_286:
  v112 = *(this + 57);
  if (v112 >= 0x80)
  {
    v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v113 = 3;
  }

  v4 = (v113 + v4);
  if ((v67 & 0x800000) != 0)
  {
LABEL_290:
    v114 = *(this + 58);
    if (v114 >= 0x80)
    {
      v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114) + 2;
      v67 = *(this + 64);
    }

    else
    {
      v115 = 3;
    }

    v4 = (v115 + v4);
  }

LABEL_294:
  if (!HIBYTE(v67))
  {
    goto LABEL_311;
  }

  if ((v67 & 0x1000000) != 0)
  {
    v116 = *(this + 59);
    if (v116 >= 0x80)
    {
      v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116) + 2;
      v67 = *(this + 64);
    }

    else
    {
      v117 = 3;
    }

    v4 = (v117 + v4);
    if ((v67 & 0x2000000) == 0)
    {
LABEL_297:
      if ((v67 & 0x4000000) == 0)
      {
        goto LABEL_311;
      }

      goto LABEL_307;
    }
  }

  else if ((v67 & 0x2000000) == 0)
  {
    goto LABEL_297;
  }

  v118 = *(this + 60);
  if (v118 >= 0x80)
  {
    v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v118) + 2;
    v67 = *(this + 64);
  }

  else
  {
    v119 = 3;
  }

  v4 = (v119 + v4);
  if ((v67 & 0x4000000) != 0)
  {
LABEL_307:
    v120 = *(this + 61);
    if (v120 >= 0x80)
    {
      v121 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120) + 2;
    }

    else
    {
      v121 = 3;
    }

    v4 = (v121 + v4);
  }

LABEL_311:
  *(this + 62) = v4;
  return v4;
}

void awd::metrics::BluetoothLEScan::CheckTypeAndMergeFrom(awd::metrics::BluetoothLEScan *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothLEScan::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLEScan::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLEScan::CopyFrom(awd::metrics::BluetoothLEScan *this, const awd::metrics::BluetoothLEScan *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLEScan::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLEScan::Swap(uint64_t this, awd::metrics::BluetoothLEScan *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 84);
    *(this + 84) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v2;
    LODWORD(v2) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v2;
    LODWORD(v2) = *(this + 100);
    *(this + 100) = *(a2 + 25);
    *(a2 + 25) = v2;
    LODWORD(v2) = *(this + 104);
    *(this + 104) = *(a2 + 26);
    *(a2 + 26) = v2;
    LODWORD(v2) = *(this + 108);
    *(this + 108) = *(a2 + 27);
    *(a2 + 27) = v2;
    LODWORD(v2) = *(this + 112);
    *(this + 112) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 116);
    *(this + 116) = *(a2 + 29);
    *(a2 + 29) = v2;
    LODWORD(v2) = *(this + 120);
    *(this + 120) = *(a2 + 30);
    *(a2 + 30) = v2;
    LODWORD(v2) = *(this + 124);
    *(this + 124) = *(a2 + 31);
    *(a2 + 31) = v2;
    LODWORD(v2) = *(this + 128);
    *(this + 128) = *(a2 + 32);
    *(a2 + 32) = v2;
    LODWORD(v2) = *(this + 132);
    *(this + 132) = *(a2 + 33);
    *(a2 + 33) = v2;
    LODWORD(v2) = *(this + 136);
    *(this + 136) = *(a2 + 34);
    *(a2 + 34) = v2;
    LODWORD(v2) = *(this + 140);
    *(this + 140) = *(a2 + 35);
    *(a2 + 35) = v2;
    LODWORD(v2) = *(this + 144);
    *(this + 144) = *(a2 + 36);
    *(a2 + 36) = v2;
    LODWORD(v2) = *(this + 148);
    *(this + 148) = *(a2 + 37);
    *(a2 + 37) = v2;
    LODWORD(v2) = *(this + 152);
    *(this + 152) = *(a2 + 38);
    *(a2 + 38) = v2;
    LODWORD(v2) = *(this + 156);
    *(this + 156) = *(a2 + 39);
    *(a2 + 39) = v2;
    LODWORD(v2) = *(this + 160);
    *(this + 160) = *(a2 + 40);
    *(a2 + 40) = v2;
    LODWORD(v2) = *(this + 164);
    *(this + 164) = *(a2 + 41);
    *(a2 + 41) = v2;
    LODWORD(v2) = *(this + 168);
    *(this + 168) = *(a2 + 42);
    *(a2 + 42) = v2;
    LODWORD(v2) = *(this + 172);
    *(this + 172) = *(a2 + 43);
    *(a2 + 43) = v2;
    LODWORD(v2) = *(this + 176);
    *(this + 176) = *(a2 + 44);
    *(a2 + 44) = v2;
    LODWORD(v2) = *(this + 180);
    *(this + 180) = *(a2 + 45);
    *(a2 + 45) = v2;
    LODWORD(v2) = *(this + 184);
    *(this + 184) = *(a2 + 46);
    *(a2 + 46) = v2;
    LODWORD(v2) = *(this + 188);
    *(this + 188) = *(a2 + 47);
    *(a2 + 47) = v2;
    LODWORD(v2) = *(this + 192);
    *(this + 192) = *(a2 + 48);
    *(a2 + 48) = v2;
    LODWORD(v2) = *(this + 196);
    *(this + 196) = *(a2 + 49);
    *(a2 + 49) = v2;
    LODWORD(v2) = *(this + 200);
    *(this + 200) = *(a2 + 50);
    *(a2 + 50) = v2;
    LODWORD(v2) = *(this + 204);
    *(this + 204) = *(a2 + 51);
    *(a2 + 51) = v2;
    LODWORD(v2) = *(this + 208);
    *(this + 208) = *(a2 + 52);
    *(a2 + 52) = v2;
    LODWORD(v2) = *(this + 212);
    *(this + 212) = *(a2 + 53);
    *(a2 + 53) = v2;
    LODWORD(v2) = *(this + 216);
    *(this + 216) = *(a2 + 54);
    *(a2 + 54) = v2;
    LODWORD(v2) = *(this + 220);
    *(this + 220) = *(a2 + 55);
    *(a2 + 55) = v2;
    LODWORD(v2) = *(this + 224);
    *(this + 224) = *(a2 + 56);
    *(a2 + 56) = v2;
    LODWORD(v2) = *(this + 228);
    *(this + 228) = *(a2 + 57);
    *(a2 + 57) = v2;
    LODWORD(v2) = *(this + 232);
    *(this + 232) = *(a2 + 58);
    *(a2 + 58) = v2;
    LODWORD(v2) = *(this + 236);
    *(this + 236) = *(a2 + 59);
    *(a2 + 59) = v2;
    LODWORD(v2) = *(this + 240);
    *(this + 240) = *(a2 + 60);
    *(a2 + 60) = v2;
    LODWORD(v2) = *(this + 244);
    *(this + 244) = *(a2 + 61);
    *(a2 + 61) = v2;
    LODWORD(v2) = *(this + 252);
    *(this + 252) = *(a2 + 63);
    *(a2 + 63) = v2;
    LODWORD(v2) = *(this + 256);
    *(this + 256) = *(a2 + 64);
    *(a2 + 64) = v2;
    LODWORD(v2) = *(this + 248);
    *(this + 248) = *(a2 + 62);
    *(a2 + 62) = v2;
  }

  return this;
}

double awd::metrics::BluetoothLEConnectionScan::SharedCtor(awd::metrics::BluetoothLEConnectionScan *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothLEConnectionScan *awd::metrics::BluetoothLEConnectionScan::BluetoothLEConnectionScan(awd::metrics::BluetoothLEConnectionScan *this, const awd::metrics::BluetoothLEConnectionScan *a2)
{
  *this = &unk_2A1D4C9A8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::BluetoothLEConnectionScan::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLEConnectionScan::MergeFrom(awd::metrics::BluetoothLEConnectionScan *this, const awd::metrics::BluetoothLEConnectionScan *a2)
{
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
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 9) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 5);
    *(this + 9) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 6);
    *(this + 9) |= 8u;
    *(this + 6) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 7);
    *(this + 9) |= 0x10u;
    *(this + 7) = v5;
  }
}

void sub_2963C1750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLEConnectionScan::~BluetoothLEConnectionScan(awd::metrics::BluetoothLEConnectionScan *this)
{
  *this = &unk_2A1D4C9A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C9A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C9A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLEConnectionScan::default_instance(awd::metrics::BluetoothLEConnectionScan *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLEConnectionScan::default_instance_;
  if (!awd::metrics::BluetoothLEConnectionScan::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLEConnectionScan::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLEConnectionScan::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLEConnectionScan::MergePartialFromCodedStream(awd::metrics::BluetoothLEConnectionScan *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          v8 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v13 >= v8 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          if (v10 >= v8 || (v16 = *v10, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 9) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            if (v11 >= v8 || (v18 = *v11, v18 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v18;
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 9) |= 4u;
            if (v19 < v8 && *v19 == 32)
            {
              v12 = v19 + 1;
              *(a2 + 1) = v12;
              goto LABEL_48;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_48:
      if (v12 >= v8 || (v20 = *v12, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v20;
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 9) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        if (v9 >= v8 || (v22 = *v9, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v22;
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 9) |= 0x10u;
        if (v23 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
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

uint64_t awd::metrics::BluetoothLEConnectionScan::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[9];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
    if ((v5[9] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[9];
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
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothLEConnectionScan::ByteSize(awd::metrics::BluetoothLEConnectionScan *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_27;
  }

  if (*(this + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 9);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 9);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 9);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_13:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
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
    v3 = *(this + 9);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_23:
    v11 = *(this + 7);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
  }

LABEL_27:
  *(this + 8) = v4;
  return v4;
}

void awd::metrics::BluetoothLEConnectionScan::CheckTypeAndMergeFrom(awd::metrics::BluetoothLEConnectionScan *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothLEConnectionScan::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLEConnectionScan::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLEConnectionScan::CopyFrom(awd::metrics::BluetoothLEConnectionScan *this, const awd::metrics::BluetoothLEConnectionScan *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLEConnectionScan::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLEConnectionScan::Swap(uint64_t this, awd::metrics::BluetoothLEConnectionScan *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

double awd::metrics::BluetoothPageScanDevice::SharedCtor(awd::metrics::BluetoothPageScanDevice *this)
{
  *(this + 1) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

awd::metrics::BluetoothPageScanDevice *awd::metrics::BluetoothPageScanDevice::BluetoothPageScanDevice(awd::metrics::BluetoothPageScanDevice *this, const awd::metrics::BluetoothPageScanDevice *a2)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *this = &unk_2A1D4CA20;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothPageScanDevice::MergeFrom(this, a2);
  return this;
}

void sub_2963C1F90(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

std::string *awd::metrics::BluetoothPageScanDevice::MergeFrom(awd::metrics::BluetoothPageScanDevice *this, const awd::metrics::BluetoothPageScanDevice *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 16), a2 + 16);
  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 40), a2 + 40);
  v5 = *(a2 + 31);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (v5)
  {
    v9 = *(a2 + 1);
    *(this + 31) |= 1u;
    *(this + 1) = v9;
    v5 = *(a2 + 31);
    if ((v5 & 8) == 0)
    {
LABEL_6:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 16);
  *(this + 31) |= 8u;
  *(this + 16) = v10;
  v5 = *(a2 + 31);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_27:
    v12 = *(a2 + 18);
    *(this + 31) |= 0x20u;
    *(this + 18) = v12;
    v5 = *(a2 + 31);
    if ((v5 & 0x40) == 0)
    {
LABEL_9:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  v11 = *(a2 + 17);
  *(this + 31) |= 0x10u;
  *(this + 17) = v11;
  v5 = *(a2 + 31);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  v13 = *(a2 + 19);
  *(this + 31) |= 0x40u;
  *(this + 19) = v13;
  v5 = *(a2 + 31);
  if ((v5 & 0x80) != 0)
  {
LABEL_10:
    v6 = *(a2 + 20);
    *(this + 31) |= 0x80u;
    *(this + 20) = v6;
    v5 = *(a2 + 31);
  }

LABEL_11:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v5 & 0x100) != 0)
  {
    v14 = *(a2 + 21);
    *(this + 31) |= 0x100u;
    *(this + 21) = v14;
    v5 = *(a2 + 31);
    if ((v5 & 0x200) == 0)
    {
LABEL_14:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a2 + 22);
  *(this + 31) |= 0x200u;
  *(this + 22) = v15;
  v5 = *(a2 + 31);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 23);
  *(this + 31) |= 0x400u;
  *(this + 23) = v16;
  v5 = *(a2 + 31);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 24);
  *(this + 31) |= 0x800u;
  *(this + 24) = v17;
  v5 = *(a2 + 31);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(a2 + 25);
  *(this + 31) |= 0x1000u;
  *(this + 25) = v18;
  v5 = *(a2 + 31);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v19 = *(a2 + 26);
  *(this + 31) |= 0x2000u;
  *(this + 26) = v19;
  v5 = *(a2 + 31);
  if ((v5 & 0x4000) == 0)
  {
LABEL_19:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_36:
  v20 = *(a2 + 27);
  *(this + 31) |= 0x4000u;
  *(this + 27) = v20;
  v5 = *(a2 + 31);
  if ((v5 & 0x8000) != 0)
  {
LABEL_20:
    v7 = *(a2 + 28);
    *(this + 31) |= 0x8000u;
    *(this + 28) = v7;
    v5 = *(a2 + 31);
  }

LABEL_21:
  if ((v5 & 0x10000) != 0)
  {
    v8 = *(a2 + 29);
    *(this + 31) |= 0x10000u;
    *(this + 29) = v8;
  }

  return result;
}

void sub_2963C2230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothPageScanDevice::~BluetoothPageScanDevice(awd::metrics::BluetoothPageScanDevice *this)
{
  *this = &unk_2A1D4CA20;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothPageScanDevice::~BluetoothPageScanDevice(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothPageScanDevice::default_instance(awd::metrics::BluetoothPageScanDevice *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothPageScanDevice::default_instance_;
  if (!awd::metrics::BluetoothPageScanDevice::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothPageScanDevice::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothPageScanDevice::Clear(awd::metrics::BluetoothPageScanDevice *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 8) = 0;
    *(this + 9) = 0;
    *(this + 20) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 100) = 0u;
    *(this + 84) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 29) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 16);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  *(this + 31) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothPageScanDevice::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
LABEL_2:
  while (2)
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
    switch(v6 >> 3)
    {
      case 1u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 < v8)
        {
          v10 = *v9;
          if ((v10 & 0x8000000000000000) == 0)
          {
            *(v4 + 8) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
LABEL_49:
            *(v4 + 124) |= 1u;
            if (v11 >= v8 || *v11 != 18)
            {
              continue;
            }

            goto LABEL_51;
          }
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v4 + 8));
        if (this)
        {
          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_49;
        }

        break;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_43;
        }

LABEL_52:
        v27 = *(v4 + 28);
        v28 = *(v4 + 24);
        if (v28 >= v27)
        {
          if (v27 == *(v4 + 32))
          {
            this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 16));
            v27 = *(v4 + 28);
          }

          *(v4 + 28) = v27 + 1;
          v29 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
          v30 = *(v4 + 16);
          v31 = *(v4 + 24);
          *(v4 + 24) = v31 + 1;
          *(v30 + 8 * v31) = v29;
        }

        else
        {
          *(v4 + 24) = v28 + 1;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!this)
        {
          return this;
        }

        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2))
        {
          continue;
        }

        v32 = *v11;
        if (v32 == 18)
        {
LABEL_51:
          *(a2 + 1) = v11 + 1;
          goto LABEL_52;
        }

        if (v32 != 26)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v11 + 1;
LABEL_62:
          v33 = *(v4 + 52);
          v34 = *(v4 + 48);
          if (v34 >= v33)
          {
            if (v33 == *(v4 + 56))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 40));
              v33 = *(v4 + 52);
            }

            *(v4 + 52) = v33 + 1;
            v35 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v36 = *(v4 + 40);
            v37 = *(v4 + 48);
            *(v4 + 48) = v37 + 1;
            *(v36 + 8 * v37) = v35;
          }

          else
          {
            *(v4 + 48) = v34 + 1;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v11 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v11 >= v12)
          {
            goto LABEL_2;
          }

          v38 = *v11;
        }

        while (v38 == 26);
        if (v38 != 32)
        {
          continue;
        }

        v20 = v11 + 1;
        *(a2 + 1) = v20;
LABEL_72:
        if (v20 >= v12 || (v39 = *v20, v39 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 64));
          if (!this)
          {
            return this;
          }

          v40 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 64) = v39;
          v40 = v20 + 1;
          *(a2 + 1) = v40;
        }

        *(v4 + 124) |= 8u;
        if (v40 >= v12 || *v40 != 40)
        {
          continue;
        }

        v16 = v40 + 1;
        *(a2 + 1) = v16;
LABEL_80:
        if (v16 >= v12 || (v41 = *v16, v41 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 68));
          if (!this)
          {
            return this;
          }

          v42 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 68) = v41;
          v42 = v16 + 1;
          *(a2 + 1) = v42;
        }

        *(v4 + 124) |= 0x10u;
        if (v42 >= v12 || *v42 != 48)
        {
          continue;
        }

        v22 = v42 + 1;
        *(a2 + 1) = v22;
LABEL_88:
        if (v22 >= v12 || (v43 = *v22, v43 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 72));
          if (!this)
          {
            return this;
          }

          v44 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 72) = v43;
          v44 = v22 + 1;
          *(a2 + 1) = v44;
        }

        *(v4 + 124) |= 0x20u;
        if (v44 >= v12 || *v44 != 56)
        {
          continue;
        }

        v24 = v44 + 1;
        *(a2 + 1) = v24;
LABEL_96:
        if (v24 >= v12 || (v45 = *v24, v45 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 76));
          if (!this)
          {
            return this;
          }

          v46 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 76) = v45;
          v46 = v24 + 1;
          *(a2 + 1) = v46;
        }

        *(v4 + 124) |= 0x40u;
        if (v46 >= v12 || *v46 != 64)
        {
          continue;
        }

        v21 = v46 + 1;
        *(a2 + 1) = v21;
LABEL_104:
        if (v21 >= v12 || (v47 = *v21, v47 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 80));
          if (!this)
          {
            return this;
          }

          v48 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 80) = v47;
          v48 = v21 + 1;
          *(a2 + 1) = v48;
        }

        *(v4 + 124) |= 0x80u;
        if (v48 >= v12 || *v48 != 72)
        {
          continue;
        }

        v26 = v48 + 1;
        *(a2 + 1) = v26;
LABEL_112:
        if (v26 >= v12 || (v49 = *v26, v49 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 84));
          if (!this)
          {
            return this;
          }

          v50 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 84) = v49;
          v50 = v26 + 1;
          *(a2 + 1) = v50;
        }

        *(v4 + 124) |= 0x100u;
        if (v50 >= v12 || *v50 != 80)
        {
          continue;
        }

        v18 = v50 + 1;
        *(a2 + 1) = v18;
LABEL_120:
        if (v18 >= v12 || (v51 = *v18, v51 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 88));
          if (!this)
          {
            return this;
          }

          v52 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 88) = v51;
          v52 = v18 + 1;
          *(a2 + 1) = v52;
        }

        *(v4 + 124) |= 0x200u;
        if (v52 >= v12 || *v52 != 88)
        {
          continue;
        }

        v25 = v52 + 1;
        *(a2 + 1) = v25;
LABEL_128:
        if (v25 >= v12 || (v53 = *v25, v53 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 92));
          if (!this)
          {
            return this;
          }

          v54 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 92) = v53;
          v54 = v25 + 1;
          *(a2 + 1) = v54;
        }

        *(v4 + 124) |= 0x400u;
        if (v54 >= v12 || *v54 != 96)
        {
          continue;
        }

        v15 = v54 + 1;
        *(a2 + 1) = v15;
LABEL_136:
        if (v15 >= v12 || (v55 = *v15, v55 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 96));
          if (!this)
          {
            return this;
          }

          v56 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 96) = v55;
          v56 = v15 + 1;
          *(a2 + 1) = v56;
        }

        *(v4 + 124) |= 0x800u;
        if (v56 >= v12 || *v56 != 104)
        {
          continue;
        }

        v17 = v56 + 1;
        *(a2 + 1) = v17;
LABEL_144:
        if (v17 >= v12 || (v57 = *v17, v57 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 100));
          if (!this)
          {
            return this;
          }

          v58 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 100) = v57;
          v58 = v17 + 1;
          *(a2 + 1) = v58;
        }

        *(v4 + 124) |= 0x1000u;
        if (v58 >= v12 || *v58 != 112)
        {
          continue;
        }

        v23 = v58 + 1;
        *(a2 + 1) = v23;
LABEL_152:
        if (v23 >= v12 || (v59 = *v23, v59 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 104));
          if (!this)
          {
            return this;
          }

          v60 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 104) = v59;
          v60 = v23 + 1;
          *(a2 + 1) = v60;
        }

        *(v4 + 124) |= 0x2000u;
        if (v60 >= v12 || *v60 != 120)
        {
          continue;
        }

        v14 = v60 + 1;
        *(a2 + 1) = v14;
LABEL_160:
        if (v14 >= v12 || (v61 = *v14, v61 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 108));
          if (!this)
          {
            return this;
          }

          v62 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 108) = v61;
          v62 = (v14 + 1);
          *(a2 + 1) = v62;
        }

        *(v4 + 124) |= 0x4000u;
        if (v12 - v62 < 2 || *v62 != 128 || v62[1] != 1)
        {
          continue;
        }

        v19 = (v62 + 2);
        *(a2 + 1) = v19;
LABEL_169:
        if (v19 >= v12 || (v63 = *v19, v63 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 112));
          if (!this)
          {
            return this;
          }

          v64 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 112) = v63;
          v64 = (v19 + 1);
          *(a2 + 1) = v64;
        }

        *(v4 + 124) |= 0x8000u;
        if (v12 - v64 < 2 || *v64 != 136 || v64[1] != 1)
        {
          continue;
        }

        v13 = (v64 + 2);
        *(a2 + 1) = v13;
LABEL_178:
        if (v13 >= v12 || (v65 = *v13, v65 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 116));
          if (!this)
          {
            return this;
          }

          v66 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(v4 + 116) = v65;
          v66 = v13 + 1;
          *(a2 + 1) = v66;
        }

        *(v4 + 124) |= 0x10000u;
        if (v66 != v12 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        this = 1;
        *(a2 + 36) = 1;
        return this;
      case 3u:
        if (v7 == 2)
        {
          goto LABEL_62;
        }

        goto LABEL_43;
      case 4u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_72;
      case 5u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_80;
      case 6u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v22 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_88;
      case 7u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_96;
      case 8u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v21 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_104;
      case 9u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_112;
      case 0xAu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_120;
      case 0xBu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v25 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_128;
      case 0xCu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_136;
      case 0xDu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_144;
      case 0xEu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v23 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_152;
      case 0xFu:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_160;
      case 0x10u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v19 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_169;
      case 0x11u:
        if ((v6 & 7) != 0)
        {
          goto LABEL_43;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_178;
      default:
LABEL_43:
        if (v7 == 4)
        {
          return 1;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
        if (this)
        {
          continue;
        }

        return 0;
    }

    return this;
  }
}

uint64_t awd::metrics::BluetoothPageScanDevice::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 124))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (v5[6] >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v6;
    }

    while (v6 < v5[6]);
  }

  if (v5[12] >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v7;
    }

    while (v7 < v5[12]);
  }

  v8 = v5[31];
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[16], a2, a4);
    v8 = v5[31];
    if ((v8 & 0x10) == 0)
    {
LABEL_11:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[17], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x20) == 0)
  {
LABEL_12:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[18], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x40) == 0)
  {
LABEL_13:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[19], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x80) == 0)
  {
LABEL_14:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[20], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x100) == 0)
  {
LABEL_15:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[21], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x200) == 0)
  {
LABEL_16:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[22], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x400) == 0)
  {
LABEL_17:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[23], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x800) == 0)
  {
LABEL_18:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v5[24], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x1000) == 0)
  {
LABEL_19:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, v5[25], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x2000) == 0)
  {
LABEL_20:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, v5[26], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x4000) == 0)
  {
LABEL_21:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

LABEL_36:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v5[28], a2, a4);
    if ((v5[31] & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, v5[27], a2, a4);
  v8 = v5[31];
  if ((v8 & 0x8000) != 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((v8 & 0x10000) == 0)
  {
    return this;
  }

LABEL_37:
  v9 = v5[29];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v9, a2, a4);
}

uint64_t awd::metrics::BluetoothPageScanDevice::ByteSize(awd::metrics::BluetoothPageScanDevice *this, unint64_t a2)
{
  v3 = *(this + 31);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_32;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 31);
    if ((v3 & 8) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 8) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 16);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 31);
  }

  else
  {
    v6 = 2;
  }

  v4 += v6;
LABEL_11:
  if ((v3 & 0x10) != 0)
  {
    v7 = *(this + 17);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 31);
    }

    else
    {
      v8 = 2;
    }

    v4 += v8;
    if ((v3 & 0x20) == 0)
    {
LABEL_13:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 18);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 31);
  }

  else
  {
    v10 = 2;
  }

  v4 += v10;
  if ((v3 & 0x40) == 0)
  {
LABEL_14:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_24:
  v11 = *(this + 19);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 31);
  }

  else
  {
    v12 = 2;
  }

  v4 += v12;
  if ((v3 & 0x80) != 0)
  {
LABEL_28:
    v13 = *(this + 20);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v3 = *(this + 31);
    }

    else
    {
      v14 = 2;
    }

    v4 += v14;
  }

LABEL_32:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_41;
  }

  if ((v3 & 0x100) != 0)
  {
    v15 = *(this + 21);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v3 = *(this + 31);
    }

    else
    {
      v16 = 2;
    }

    v4 += v16;
    if ((v3 & 0x200) == 0)
    {
LABEL_35:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_51;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_35;
  }

  v17 = *(this + 22);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(this + 31);
  }

  else
  {
    v18 = 2;
  }

  v4 += v18;
  if ((v3 & 0x400) == 0)
  {
LABEL_36:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_55;
  }

LABEL_51:
  v19 = *(this + 23);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v3 = *(this + 31);
  }

  else
  {
    v20 = 2;
  }

  v4 += v20;
  if ((v3 & 0x800) == 0)
  {
LABEL_37:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_59;
  }

LABEL_55:
  v21 = *(this + 24);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 31);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x1000) == 0)
  {
LABEL_38:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_63;
  }

LABEL_59:
  v23 = *(this + 25);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 31);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v3 & 0x2000) == 0)
  {
LABEL_39:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_67;
  }

LABEL_63:
  v25 = *(this + 26);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 31);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x4000) == 0)
  {
LABEL_40:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_71;
  }

LABEL_67:
  v27 = *(this + 27);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 31);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v3 & 0x8000) == 0)
  {
LABEL_41:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_75;
  }

LABEL_71:
  v29 = *(this + 28);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
    v3 = *(this + 31);
  }

  else
  {
    v30 = 3;
  }

  v4 += v30;
  if ((v3 & 0x10000) != 0)
  {
LABEL_75:
    v31 = *(this + 29);
    if (v31 >= 0x80)
    {
      v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 2;
    }

    else
    {
      v32 = 3;
    }

    v4 += v32;
  }

LABEL_79:
  v33 = *(this + 6);
  v34 = v33 + v4;
  if (v33 >= 1)
  {
    for (i = 0; i < v33; ++i)
    {
      v36 = *(*(this + 2) + 8 * i);
      v37 = *(v36 + 23);
      v38 = v37;
      v39 = *(v36 + 8);
      if ((v37 & 0x80u) == 0)
      {
        v40 = *(v36 + 23);
      }

      else
      {
        v40 = v39;
      }

      if (v40 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
        v37 = *(v36 + 23);
        v39 = *(v36 + 8);
        v33 = *(this + 6);
        v38 = *(v36 + 23);
      }

      else
      {
        v41 = 1;
      }

      if (v38 < 0)
      {
        v37 = v39;
      }

      v34 += v41 + v37;
    }
  }

  v42 = *(this + 12);
  v43 = (v42 + v34);
  if (v42 >= 1)
  {
    for (j = 0; j < v42; ++j)
    {
      v45 = *(*(this + 5) + 8 * j);
      v46 = *(v45 + 23);
      v47 = v46;
      v48 = *(v45 + 8);
      if ((v46 & 0x80u) == 0)
      {
        v49 = *(v45 + 23);
      }

      else
      {
        v49 = v48;
      }

      if (v49 >= 0x80)
      {
        v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
        v46 = *(v45 + 23);
        v48 = *(v45 + 8);
        v42 = *(this + 12);
        v47 = *(v45 + 23);
      }

      else
      {
        v50 = 1;
      }

      if (v47 < 0)
      {
        v46 = v48;
      }

      v43 = (v50 + v43 + v46);
    }
  }

  *(this + 30) = v43;
  return v43;
}

std::string *awd::metrics::BluetoothPageScanDevice::CheckTypeAndMergeFrom(awd::metrics::BluetoothPageScanDevice *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothPageScanDevice::CheckTypeAndMergeFrom();
  }

  return awd::metrics::BluetoothPageScanDevice::MergeFrom(this, lpsrc);
}

std::string *awd::metrics::BluetoothPageScanDevice::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(this->__r_.__value_.__r.__words[0] + 32))(this);

    return awd::metrics::BluetoothPageScanDevice::MergeFrom(v4, a2);
  }

  return this;
}

awd::metrics::BluetoothPageScanDevice *awd::metrics::BluetoothPageScanDevice::Swap(awd::metrics::BluetoothPageScanDevice *this, awd::metrics::BluetoothPageScanDevice *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 16);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = v5;
    v6 = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v6;
    v7 = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v7;
    v8 = *(v3 + 19);
    *(v3 + 19) = *(a2 + 19);
    *(a2 + 19) = v8;
    v9 = *(v3 + 20);
    *(v3 + 20) = *(a2 + 20);
    *(a2 + 20) = v9;
    v10 = *(v3 + 21);
    *(v3 + 21) = *(a2 + 21);
    *(a2 + 21) = v10;
    v11 = *(v3 + 22);
    *(v3 + 22) = *(a2 + 22);
    *(a2 + 22) = v11;
    v12 = *(v3 + 23);
    *(v3 + 23) = *(a2 + 23);
    *(a2 + 23) = v12;
    v13 = *(v3 + 24);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 24) = v13;
    v14 = *(v3 + 25);
    *(v3 + 25) = *(a2 + 25);
    *(a2 + 25) = v14;
    v15 = *(v3 + 26);
    *(v3 + 26) = *(a2 + 26);
    *(a2 + 26) = v15;
    v16 = *(v3 + 27);
    *(v3 + 27) = *(a2 + 27);
    *(a2 + 27) = v16;
    v17 = *(v3 + 28);
    *(v3 + 28) = *(a2 + 28);
    *(a2 + 28) = v17;
    v18 = *(v3 + 29);
    *(v3 + 29) = *(a2 + 29);
    *(a2 + 29) = v18;
    v19 = *(v3 + 31);
    *(v3 + 31) = *(a2 + 31);
    *(a2 + 31) = v19;
    v20 = *(v3 + 30);
    *(v3 + 30) = *(a2 + 30);
    *(a2 + 30) = v20;
  }

  return this;
}

void *awd::metrics::BluetoothExposureNotificationState::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::BluetoothExposureNotificationState *awd::metrics::BluetoothExposureNotificationState::BluetoothExposureNotificationState(awd::metrics::BluetoothExposureNotificationState *this, const awd::metrics::BluetoothExposureNotificationState *a2)
{
  *this = &unk_2A1D4CA98;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::BluetoothExposureNotificationState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothExposureNotificationState::MergeFrom(awd::metrics::BluetoothExposureNotificationState *this, const awd::metrics::BluetoothExposureNotificationState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 7);
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

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v7;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 5);
    *(this + 7) |= 4u;
    *(this + 5) = v5;
  }
}

void sub_2963C3648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationState::~BluetoothExposureNotificationState(awd::metrics::BluetoothExposureNotificationState *this)
{
  *this = &unk_2A1D4CA98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CA98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CA98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationState::default_instance(awd::metrics::BluetoothExposureNotificationState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationState::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationState::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationState::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_33;
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
      if (v11 < v8 && *v11 == 16)
      {
        v12 = v11 + 1;
        *(a2 + 1) = v12;
LABEL_25:
        if (v12 >= v8 || (v14 = *v12, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v14;
          v15 = v12 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 7) |= 2u;
        if (v15 < v8 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_33:
          if (v13 >= v8 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 7) |= 4u;
          if (v17 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v8 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
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

uint64_t awd::metrics::BluetoothExposureNotificationState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothExposureNotificationState::ByteSize(awd::metrics::BluetoothExposureNotificationState *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (*(this + 28))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 7);
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 7);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_11:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
  }

LABEL_16:
  *(this + 6) = v4;
  return v4;
}

void awd::metrics::BluetoothExposureNotificationState::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothExposureNotificationState::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationState::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationState::CopyFrom(awd::metrics::BluetoothExposureNotificationState *this, const awd::metrics::BluetoothExposureNotificationState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationState::Swap(uint64_t this, awd::metrics::BluetoothExposureNotificationState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

void *awd::metrics::BluetoothExposureNotificationOnboarding::SharedCtor(void *this)
{
  this[3] = 0;
  this[1] = 0;
  *(this + 14) = 0;
  return this;
}

awd::metrics::BluetoothExposureNotificationOnboarding *awd::metrics::BluetoothExposureNotificationOnboarding::BluetoothExposureNotificationOnboarding(awd::metrics::BluetoothExposureNotificationOnboarding *this, const awd::metrics::BluetoothExposureNotificationOnboarding *a2)
{
  *(this + 3) = 0;
  *this = &unk_2A1D4CB10;
  *(this + 1) = 0;
  *(this + 14) = 0;
  awd::metrics::BluetoothExposureNotificationOnboarding::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothExposureNotificationOnboarding::MergeFrom(awd::metrics::BluetoothExposureNotificationOnboarding *this, const awd::metrics::BluetoothExposureNotificationOnboarding *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 7);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 20);
    *(this + 7) |= 4u;
    *(this + 20) = v8;
    if ((*(a2 + 7) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 21);
    *(this + 7) |= 8u;
    *(this + 21) = v5;
  }
}

void sub_2963C3DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationOnboarding::~BluetoothExposureNotificationOnboarding(awd::metrics::BluetoothExposureNotificationOnboarding *this)
{
  *this = &unk_2A1D4CB10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CB10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CB10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::default_instance(awd::metrics::BluetoothExposureNotificationOnboarding *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationOnboarding::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationOnboarding::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationOnboarding::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 14) = 0;
    *(this + 8) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationOnboarding *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v11 >= v8 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 7) |= 1u;
      if (v13 < v8 && *v13 == 16)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v15;
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 7) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_37:
          v23 = 0;
          if (v14 >= v8 || (v17 = *v14, (v17 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
            if (!result)
            {
              return result;
            }

            v17 = v23;
            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 20) = v17 != 0;
          *(this + 7) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_45:
            v22 = 0;
            if (v10 >= v8 || (v19 = *v10, (v19 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
              if (!result)
              {
                return result;
              }

              v19 = v22;
              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 21) = v19 != 0;
            *(this + 7) |= 8u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 28) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 21);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::ByteSize(awd::metrics::BluetoothExposureNotificationOnboarding *this, unint64_t a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v3 = *(this + 7);
      if ((v3 & 2) == 0)
      {
LABEL_11:
        result = ((v3 >> 1) & 2) + v4 + ((v3 >> 2) & 2);
        goto LABEL_12;
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

    v6 = *(this + 4);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v3 = *(this + 7);
    }

    else
    {
      v7 = 2;
    }

    v4 += v7;
    goto LABEL_11;
  }

  result = 0;
LABEL_12:
  *(this + 6) = result;
  return result;
}

void awd::metrics::BluetoothExposureNotificationOnboarding::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationOnboarding *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothExposureNotificationOnboarding::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationOnboarding::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationOnboarding::CopyFrom(awd::metrics::BluetoothExposureNotificationOnboarding *this, const awd::metrics::BluetoothExposureNotificationOnboarding *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationOnboarding::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::Swap(uint64_t this, awd::metrics::BluetoothExposureNotificationOnboarding *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LOBYTE(v2) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

double awd::metrics::BluetoothAccessoryBatteryHealth::SharedCtor(awd::metrics::BluetoothAccessoryBatteryHealth *this)
{
  *(this + 50) = 0;
  *(this + 204) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  return result;
}

awd::metrics::BluetoothAccessoryBatteryHealth *awd::metrics::BluetoothAccessoryBatteryHealth::BluetoothAccessoryBatteryHealth(awd::metrics::BluetoothAccessoryBatteryHealth *this, const awd::metrics::BluetoothAccessoryBatteryHealth *a2)
{
  *this = &unk_2A1D4CB88;
  *(this + 72) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  awd::metrics::BluetoothAccessoryBatteryHealth::MergeFrom(this, a2);
  return this;
}

void sub_2963C4554(_Unwind_Exception *a1)
{
  v4 = *(v1 + 23);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  awd::metrics::BluetoothAccessoryBatteryHealth::BluetoothAccessoryBatteryHealth(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryBatteryHealth::MergeFrom(awd::metrics::BluetoothAccessoryBatteryHealth *this, const awd::metrics::BluetoothAccessoryBatteryHealth *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v47);
  }

  v4 = *(a2 + 20);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 20) + v4);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v5 = *(a2 + 48);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 46, *(this + 48) + v5);
    memcpy((*(this + 23) + 4 * *(this + 48)), *(a2 + 23), 4 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v6 = *(a2 + 51);
  if (!v6)
  {
    goto LABEL_17;
  }

  if (v6)
  {
    v12 = *(a2 + 1);
    *(this + 51) |= 1u;
    *(this + 1) = v12;
    v6 = *(a2 + 51);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_58;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(a2 + 4);
  *(this + 51) |= 2u;
  *(this + 4) = v13;
  v6 = *(a2 + 51);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  v14 = *(a2 + 5);
  *(this + 51) |= 4u;
  *(this + 5) = v14;
  v6 = *(a2 + 51);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  v15 = *(a2 + 6);
  *(this + 51) |= 8u;
  *(this + 6) = v15;
  v6 = *(a2 + 51);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_61:
    v17 = *(a2 + 8);
    *(this + 51) |= 0x20u;
    *(this + 8) = v17;
    v6 = *(a2 + 51);
    if ((v6 & 0x40) == 0)
    {
LABEL_15:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_62;
  }

LABEL_60:
  v16 = *(a2 + 7);
  *(this + 51) |= 0x10u;
  *(this + 7) = v16;
  v6 = *(a2 + 51);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_61;
  }

LABEL_14:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_62:
  v18 = *(a2 + 9);
  *(this + 51) |= 0x40u;
  *(this + 9) = v18;
  v6 = *(a2 + 51);
  if ((v6 & 0x80) != 0)
  {
LABEL_16:
    v7 = *(a2 + 10);
    *(this + 51) |= 0x80u;
    *(this + 10) = v7;
    v6 = *(a2 + 51);
  }

LABEL_17:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_27;
  }

  if ((v6 & 0x100) != 0)
  {
    v19 = *(a2 + 11);
    *(this + 51) |= 0x100u;
    *(this + 11) = v19;
    v6 = *(a2 + 51);
    if ((v6 & 0x200) == 0)
    {
LABEL_20:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v20 = *(a2 + 12);
  *(this + 51) |= 0x200u;
  *(this + 12) = v20;
  v6 = *(a2 + 51);
  if ((v6 & 0x400) == 0)
  {
LABEL_21:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  v21 = *(a2 + 13);
  *(this + 51) |= 0x400u;
  *(this + 13) = v21;
  v6 = *(a2 + 51);
  if ((v6 & 0x800) == 0)
  {
LABEL_22:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  v22 = *(a2 + 14);
  *(this + 51) |= 0x800u;
  *(this + 14) = v22;
  v6 = *(a2 + 51);
  if ((v6 & 0x1000) == 0)
  {
LABEL_23:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  v23 = *(a2 + 15);
  *(this + 51) |= 0x1000u;
  *(this + 15) = v23;
  v6 = *(a2 + 51);
  if ((v6 & 0x2000) == 0)
  {
LABEL_24:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  v24 = *(a2 + 16);
  *(this + 51) |= 0x2000u;
  *(this + 16) = v24;
  v6 = *(a2 + 51);
  if ((v6 & 0x4000) == 0)
  {
LABEL_25:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_70:
  v25 = *(a2 + 17);
  *(this + 51) |= 0x4000u;
  *(this + 17) = v25;
  v6 = *(a2 + 51);
  if ((v6 & 0x8000) != 0)
  {
LABEL_26:
    v8 = *(a2 + 22);
    *(this + 51) |= 0x8000u;
    *(this + 22) = v8;
    v6 = *(a2 + 51);
  }

LABEL_27:
  if ((v6 & 0x1FE0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v6 & 0x20000) != 0)
  {
    v26 = *(a2 + 23);
    *(this + 51) |= 0x20000u;
    *(this + 23) = v26;
    v6 = *(a2 + 51);
    if ((v6 & 0x40000) == 0)
    {
LABEL_30:
      if ((v6 & 0x80000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_74;
    }
  }

  else if ((v6 & 0x40000) == 0)
  {
    goto LABEL_30;
  }

  v27 = *(a2 + 24);
  *(this + 51) |= 0x40000u;
  *(this + 24) = v27;
  v6 = *(a2 + 51);
  if ((v6 & 0x80000) == 0)
  {
LABEL_31:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  v28 = *(a2 + 25);
  *(this + 51) |= 0x80000u;
  *(this + 25) = v28;
  v6 = *(a2 + 51);
  if ((v6 & 0x100000) == 0)
  {
LABEL_32:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  v29 = *(a2 + 26);
  *(this + 51) |= 0x100000u;
  *(this + 26) = v29;
  v6 = *(a2 + 51);
  if ((v6 & 0x200000) == 0)
  {
LABEL_33:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  v30 = *(a2 + 27);
  *(this + 51) |= 0x200000u;
  *(this + 27) = v30;
  v6 = *(a2 + 51);
  if ((v6 & 0x400000) == 0)
  {
LABEL_34:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_77:
  v31 = *(a2 + 28);
  *(this + 51) |= 0x400000u;
  *(this + 28) = v31;
  v6 = *(a2 + 51);
  if ((v6 & 0x800000) != 0)
  {
LABEL_35:
    v9 = *(a2 + 29);
    *(this + 51) |= 0x800000u;
    *(this + 29) = v9;
    v6 = *(a2 + 51);
  }

LABEL_36:
  if (!HIBYTE(v6))
  {
    goto LABEL_45;
  }

  if ((v6 & 0x1000000) != 0)
  {
    v39 = *(a2 + 30);
    *(this + 51) |= 0x1000000u;
    *(this + 30) = v39;
    v6 = *(a2 + 51);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_39:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_89;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_39;
  }

  v40 = *(a2 + 31);
  *(this + 51) |= 0x2000000u;
  *(this + 31) = v40;
  v6 = *(a2 + 51);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_40:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  v41 = *(a2 + 32);
  *(this + 51) |= 0x4000000u;
  *(this + 32) = v41;
  v6 = *(a2 + 51);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  v42 = *(a2 + 33);
  *(this + 51) |= 0x8000000u;
  *(this + 33) = v42;
  v6 = *(a2 + 51);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  v43 = *(a2 + 34);
  *(this + 51) |= 0x10000000u;
  *(this + 34) = v43;
  v6 = *(a2 + 51);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_93:
    v45 = *(a2 + 36);
    *(this + 51) |= 0x40000000u;
    *(this + 36) = v45;
    if ((*(a2 + 51) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_92:
  v44 = *(a2 + 35);
  *(this + 51) |= 0x20000000u;
  *(this + 35) = v44;
  v6 = *(a2 + 51);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_93;
  }

LABEL_44:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_94:
  v46 = *(a2 + 37);
  *(this + 51) |= 0x80000000;
  *(this + 37) = v46;
LABEL_45:
  LOBYTE(v10) = *(a2 + 208);
  if (!v10)
  {
    return;
  }

  if (*(a2 + 208))
  {
    v32 = *(a2 + 38);
    *(this + 52) |= 1u;
    *(this + 38) = v32;
    v10 = *(a2 + 52);
    if ((v10 & 2) == 0)
    {
LABEL_48:
      if ((v10 & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_81;
    }
  }

  else if ((*(a2 + 208) & 2) == 0)
  {
    goto LABEL_48;
  }

  v33 = *(a2 + 39);
  *(this + 52) |= 2u;
  *(this + 39) = v33;
  v10 = *(a2 + 52);
  if ((v10 & 4) == 0)
  {
LABEL_49:
    if ((v10 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_82;
  }

LABEL_81:
  v34 = *(a2 + 40);
  *(this + 52) |= 4u;
  *(this + 40) = v34;
  v10 = *(a2 + 52);
  if ((v10 & 8) == 0)
  {
LABEL_50:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_83;
  }

LABEL_82:
  v35 = *(a2 + 41);
  *(this + 52) |= 8u;
  *(this + 41) = v35;
  v10 = *(a2 + 52);
  if ((v10 & 0x10) == 0)
  {
LABEL_51:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_84;
  }

LABEL_83:
  v36 = *(a2 + 42);
  *(this + 52) |= 0x10u;
  *(this + 42) = v36;
  v10 = *(a2 + 52);
  if ((v10 & 0x20) == 0)
  {
LABEL_52:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_85;
  }

LABEL_84:
  v37 = *(a2 + 43);
  *(this + 52) |= 0x20u;
  *(this + 43) = v37;
  v10 = *(a2 + 52);
  if ((v10 & 0x40) == 0)
  {
LABEL_53:
    if ((v10 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_54;
  }

LABEL_85:
  v38 = *(a2 + 44);
  *(this + 52) |= 0x40u;
  *(this + 44) = v38;
  if ((*(a2 + 52) & 0x80) != 0)
  {
LABEL_54:
    v11 = *(a2 + 45);
    *(this + 52) |= 0x80u;
    *(this + 45) = v11;
  }
}

void sub_2963C4B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryBatteryHealth::~BluetoothAccessoryBatteryHealth(awd::metrics::BluetoothAccessoryBatteryHealth *this)
{
  *this = &unk_2A1D4CB88;
  v2 = *(this + 23);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryBatteryHealth::~BluetoothAccessoryBatteryHealth(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::default_instance(awd::metrics::BluetoothAccessoryBatteryHealth *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryBatteryHealth::default_instance_;
  if (!awd::metrics::BluetoothAccessoryBatteryHealth::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryBatteryHealth::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::Clear(uint64_t this)
{
  v1 = *(this + 204);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 88) = 0;
    *(this + 44) = 0;
    *(this + 60) = 0;
    *(this + 52) = 0;
    *(this + 68) = 0;
  }

  if ((v1 & 0x1FE0000) != 0)
  {
    *(this + 100) = 0;
    *(this + 92) = 0;
    *(this + 116) = 0;
    *(this + 108) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 136) = 0u;
    *(this + 120) = 0u;
  }

  if (*(this + 208))
  {
    *(this + 168) = 0u;
    *(this + 152) = 0u;
  }

  *(this + 80) = 0;
  *(this + 192) = 0;
  *(this + 204) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryBatteryHealth *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
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

        *(this + 51) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v30 = v11 + 1;
          *(a2 + 1) = v30;
          goto LABEL_105;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v30 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_105:
        if (v30 >= v8 || (v54 = *v30, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v54;
          v55 = v30 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 51) |= 2u;
        if (v55 >= v8 || *v55 != 24)
        {
          continue;
        }

        v26 = v55 + 1;
        *(a2 + 1) = v26;
LABEL_113:
        if (v26 >= v8 || (v56 = *v26, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v56;
          v57 = v26 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 51) |= 4u;
        if (v57 >= v8 || *v57 != 32)
        {
          continue;
        }

        v28 = v57 + 1;
        *(a2 + 1) = v28;
LABEL_121:
        if (v28 >= v8 || (v58 = *v28, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v58;
          v59 = v28 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 51) |= 8u;
        if (v59 >= v8 || *v59 != 40)
        {
          continue;
        }

        v21 = v59 + 1;
        *(a2 + 1) = v21;
LABEL_129:
        if (v21 >= v8 || (v60 = *v21, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v60;
          v61 = v21 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 51) |= 0x10u;
        if (v61 >= v8 || *v61 != 48)
        {
          continue;
        }

        v34 = v61 + 1;
        *(a2 + 1) = v34;
LABEL_137:
        if (v34 >= v8 || (v62 = *v34, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v62;
          v63 = v34 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 51) |= 0x20u;
        if (v63 >= v8 || *v63 != 56)
        {
          continue;
        }

        v37 = v63 + 1;
        *(a2 + 1) = v37;
LABEL_145:
        if (v37 >= v8 || (v64 = *v37, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v64;
          v65 = v37 + 1;
          *(a2 + 1) = v65;
        }

        *(this + 51) |= 0x40u;
        if (v65 >= v8 || *v65 != 64)
        {
          continue;
        }

        v29 = v65 + 1;
        *(a2 + 1) = v29;
LABEL_153:
        if (v29 >= v8 || (v66 = *v29, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v66;
          v67 = v29 + 1;
          *(a2 + 1) = v67;
        }

        *(this + 51) |= 0x80u;
        if (v67 >= v8 || *v67 != 72)
        {
          continue;
        }

        v40 = v67 + 1;
        *(a2 + 1) = v40;
LABEL_161:
        if (v40 >= v8 || (v68 = *v40, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v68;
          v69 = v40 + 1;
          *(a2 + 1) = v69;
        }

        *(this + 51) |= 0x100u;
        if (v69 >= v8 || *v69 != 80)
        {
          continue;
        }

        v23 = v69 + 1;
        *(a2 + 1) = v23;
LABEL_169:
        if (v23 >= v8 || (v70 = *v23, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v70;
          v71 = v23 + 1;
          *(a2 + 1) = v71;
        }

        *(this + 51) |= 0x200u;
        if (v71 >= v8 || *v71 != 88)
        {
          continue;
        }

        v39 = v71 + 1;
        *(a2 + 1) = v39;
LABEL_177:
        if (v39 >= v8 || (v72 = *v39, v72 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v73 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v72;
          v73 = v39 + 1;
          *(a2 + 1) = v73;
        }

        *(this + 51) |= 0x400u;
        if (v73 >= v8 || *v73 != 96)
        {
          continue;
        }

        v20 = v73 + 1;
        *(a2 + 1) = v20;
LABEL_185:
        if (v20 >= v8 || (v74 = *v20, v74 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v75 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v74;
          v75 = v20 + 1;
          *(a2 + 1) = v75;
        }

        *(this + 51) |= 0x800u;
        if (v75 >= v8 || *v75 != 104)
        {
          continue;
        }

        v22 = v75 + 1;
        *(a2 + 1) = v22;
LABEL_193:
        if (v22 >= v8 || (v76 = *v22, v76 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v77 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v76;
          v77 = v22 + 1;
          *(a2 + 1) = v77;
        }

        *(this + 51) |= 0x1000u;
        if (v77 >= v8 || *v77 != 112)
        {
          continue;
        }

        v36 = v77 + 1;
        *(a2 + 1) = v36;
LABEL_201:
        if (v36 >= v8 || (v78 = *v36, v78 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v79 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v78;
          v79 = v36 + 1;
          *(a2 + 1) = v79;
        }

        *(this + 51) |= 0x2000u;
        if (v79 >= v8 || *v79 != 120)
        {
          continue;
        }

        v18 = v79 + 1;
        *(a2 + 1) = v18;
LABEL_209:
        if (v18 >= v8 || (v80 = *v18, v80 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v81 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v80;
          v81 = (v18 + 1);
          *(a2 + 1) = v81;
        }

        *(this + 51) |= 0x4000u;
        if (v8 - v81 < 2 || *v81 != 128 || v81[1] != 1)
        {
          continue;
        }

        v27 = (v81 + 2);
        *(a2 + 1) = v27;
LABEL_218:
        if (v27 >= v8 || (v82 = *v27, v82 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v83 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v82;
          v83 = (v27 + 1);
          *(a2 + 1) = v83;
        }

        *(this + 51) |= 0x8000u;
        if (v8 - v83 >= 2 && *v83 == 136 && v83[1] == 1)
        {
          goto LABEL_226;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_113;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_121;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_129;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v34 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_137;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v37 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_145;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_153;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v40 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_161;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_169;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v39 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_177;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_185;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_193;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v36 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_201;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_209;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_218;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 9);
            if (!result)
            {
              return result;
            }

            goto LABEL_245;
          }

LABEL_94:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v52 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v151 = 0;
            if (v52 >= v8 || *v52 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v151))
              {
                return 0;
              }
            }

            else
            {
              v151 = *v52;
              *(a2 + 1) = v52 + 1;
            }

            v84 = *(this + 20);
            if (v84 == *(this + 21))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v84 + 1);
              v84 = *(this + 20);
            }

            v85 = v151;
            v86 = *(this + 9);
            *(this + 20) = v84 + 1;
            *(v86 + 4 * v84) = v85;
            v87 = *(this + 21) - *(this + 20);
            if (v87 >= 1)
            {
              v88 = v87 + 1;
              do
              {
                v89 = *(a2 + 1);
                v90 = *(a2 + 2);
                if (v90 - v89 < 2 || *v89 != 136 || v89[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v89 + 2;
                if ((v89 + 2) >= v90 || v89[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v151))
                  {
                    return 0;
                  }
                }

                else
                {
                  v151 = v89[2];
                  *(a2 + 1) = v89 + 3;
                }

                v91 = *(this + 20);
                if (v91 >= *(this + 21))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v152);
                  v91 = *(this + 20);
                }

                v92 = v151;
                v93 = *(this + 9);
                *(this + 20) = v91 + 1;
                *(v93 + 4 * v91) = v92;
                --v88;
              }

              while (v88 > 1);
            }

LABEL_245:
            v83 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v8 - v83 < 2)
            {
              goto LABEL_1;
            }

            v94 = *v83;
            if (v94 == 144)
            {
              break;
            }

            if (v94 != 136 || v83[1] != 1)
            {
              goto LABEL_1;
            }

LABEL_226:
            v52 = (v83 + 2);
            *(a2 + 1) = v52;
          }

          if (v83[1] == 1)
          {
            v32 = (v83 + 2);
            *(a2 + 1) = v32;
LABEL_252:
            if (v32 >= v8 || (v95 = *v32, v95 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
              if (!result)
              {
                return result;
              }

              v96 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 23) = v95;
              v96 = (v32 + 1);
              *(a2 + 1) = v96;
            }

            *(this + 51) |= 0x20000u;
            if (v8 - v96 >= 2 && *v96 == 152 && v96[1] == 1)
            {
              v38 = (v96 + 2);
              *(a2 + 1) = v38;
LABEL_261:
              if (v38 >= v8 || (v97 = *v38, v97 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
                if (!result)
                {
                  return result;
                }

                v98 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 24) = v97;
                v98 = (v38 + 1);
                *(a2 + 1) = v98;
              }

              *(this + 51) |= 0x40000u;
              if (v8 - v98 >= 2 && *v98 == 160 && v98[1] == 1)
              {
                v46 = (v98 + 2);
                *(a2 + 1) = v46;
LABEL_270:
                if (v46 >= v8 || (v99 = *v46, v99 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
                  if (!result)
                  {
                    return result;
                  }

                  v100 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 25) = v99;
                  v100 = (v46 + 1);
                  *(a2 + 1) = v100;
                }

                *(this + 51) |= 0x80000u;
                if (v8 - v100 >= 2 && *v100 == 168 && v100[1] == 1)
                {
                  v33 = (v100 + 2);
                  *(a2 + 1) = v33;
LABEL_279:
                  if (v33 >= v8 || (v101 = *v33, v101 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
                    if (!result)
                    {
                      return result;
                    }

                    v102 = *(a2 + 1);
                    v8 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 26) = v101;
                    v102 = (v33 + 1);
                    *(a2 + 1) = v102;
                  }

                  *(this + 51) |= 0x100000u;
                  if (v8 - v102 >= 2 && *v102 == 176 && v102[1] == 1)
                  {
                    v35 = (v102 + 2);
                    *(a2 + 1) = v35;
LABEL_288:
                    if (v35 >= v8 || (v103 = *v35, v103 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
                      if (!result)
                      {
                        return result;
                      }

                      v104 = *(a2 + 1);
                      v8 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 27) = v103;
                      v104 = (v35 + 1);
                      *(a2 + 1) = v104;
                    }

                    *(this + 51) |= 0x200000u;
                    if (v8 - v104 >= 2 && *v104 == 184 && v104[1] == 1)
                    {
                      v43 = (v104 + 2);
                      *(a2 + 1) = v43;
LABEL_297:
                      if (v43 >= v8 || (v105 = *v43, v105 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
                        if (!result)
                        {
                          return result;
                        }

                        v106 = *(a2 + 1);
                        v8 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 28) = v105;
                        v106 = (v43 + 1);
                        *(a2 + 1) = v106;
                      }

                      *(this + 51) |= 0x400000u;
                      if (v8 - v106 >= 2 && *v106 == 192 && v106[1] == 1)
                      {
                        v47 = (v106 + 2);
                        *(a2 + 1) = v47;
LABEL_306:
                        if (v47 >= v8 || (v107 = *v47, v107 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
                          if (!result)
                          {
                            return result;
                          }

                          v108 = *(a2 + 1);
                          v8 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 29) = v107;
                          v108 = (v47 + 1);
                          *(a2 + 1) = v108;
                        }

                        *(this + 51) |= 0x800000u;
                        if (v8 - v108 >= 2 && *v108 == 200 && v108[1] == 1)
                        {
                          v25 = (v108 + 2);
                          *(a2 + 1) = v25;
LABEL_315:
                          if (v25 >= v8 || (v109 = *v25, v109 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                            if (!result)
                            {
                              return result;
                            }

                            v110 = *(a2 + 1);
                            v8 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 30) = v109;
                            v110 = (v25 + 1);
                            *(a2 + 1) = v110;
                          }

                          *(this + 51) |= 0x1000000u;
                          if (v8 - v110 >= 2 && *v110 == 208 && v110[1] == 1)
                          {
                            v24 = (v110 + 2);
                            *(a2 + 1) = v24;
LABEL_324:
                            if (v24 >= v8 || (v111 = *v24, v111 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                              if (!result)
                              {
                                return result;
                              }

                              v112 = *(a2 + 1);
                              v8 = *(a2 + 2);
                            }

                            else
                            {
                              *(this + 31) = v111;
                              v112 = (v24 + 1);
                              *(a2 + 1) = v112;
                            }

                            *(this + 51) |= 0x2000000u;
                            if (v8 - v112 >= 2 && *v112 == 216 && v112[1] == 1)
                            {
                              v51 = (v112 + 2);
                              *(a2 + 1) = v51;
LABEL_333:
                              if (v51 >= v8 || (v113 = *v51, v113 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                                if (!result)
                                {
                                  return result;
                                }

                                v114 = *(a2 + 1);
                                v8 = *(a2 + 2);
                              }

                              else
                              {
                                *(this + 32) = v113;
                                v114 = (v51 + 1);
                                *(a2 + 1) = v114;
                              }

                              *(this + 51) |= 0x4000000u;
                              if (v8 - v114 >= 2 && *v114 == 224 && v114[1] == 1)
                              {
                                v15 = (v114 + 2);
                                *(a2 + 1) = v15;
LABEL_342:
                                if (v15 >= v8 || (v115 = *v15, v115 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v116 = *(a2 + 1);
                                  v8 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 33) = v115;
                                  v116 = (v15 + 1);
                                  *(a2 + 1) = v116;
                                }

                                *(this + 51) |= 0x8000000u;
                                if (v8 - v116 >= 2 && *v116 == 232 && v116[1] == 1)
                                {
                                  v48 = (v116 + 2);
                                  *(a2 + 1) = v48;
LABEL_351:
                                  if (v48 >= v8 || (v117 = *v48, v117 < 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v118 = *(a2 + 1);
                                    v8 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *(this + 34) = v117;
                                    v118 = (v48 + 1);
                                    *(a2 + 1) = v118;
                                  }

                                  *(this + 51) |= 0x10000000u;
                                  if (v8 - v118 >= 2 && *v118 == 240 && v118[1] == 1)
                                  {
                                    v49 = (v118 + 2);
                                    *(a2 + 1) = v49;
LABEL_360:
                                    if (v49 >= v8 || (v119 = *v49, v119 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v120 = *(a2 + 1);
                                      v8 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 35) = v119;
                                      v120 = (v49 + 1);
                                      *(a2 + 1) = v120;
                                    }

                                    *(this + 51) |= 0x20000000u;
                                    if (v8 - v120 >= 2 && *v120 == 248 && v120[1] == 1)
                                    {
                                      v41 = (v120 + 2);
                                      *(a2 + 1) = v41;
LABEL_369:
                                      if (v41 >= v8 || (v121 = *v41, v121 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v122 = *(a2 + 1);
                                        v8 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 36) = v121;
                                        v122 = (v41 + 1);
                                        *(a2 + 1) = v122;
                                      }

                                      *(this + 51) |= 0x40000000u;
                                      if (v8 - v122 >= 2 && *v122 == 128 && v122[1] == 2)
                                      {
                                        v31 = (v122 + 2);
                                        *(a2 + 1) = v31;
LABEL_378:
                                        if (v31 >= v8 || (v123 = *v31, v123 < 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 37);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v124 = *(a2 + 1);
                                          v8 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *(this + 37) = v123;
                                          v124 = (v31 + 1);
                                          *(a2 + 1) = v124;
                                        }

                                        *(this + 51) |= 0x80000000;
                                        if (v8 - v124 >= 2 && *v124 == 136 && v124[1] == 2)
                                        {
                                          v42 = (v124 + 2);
                                          *(a2 + 1) = v42;
LABEL_387:
                                          if (v42 >= v8 || (v125 = *v42, v125 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v126 = *(a2 + 1);
                                            v8 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *(this + 38) = v125;
                                            v126 = (v42 + 1);
                                            *(a2 + 1) = v126;
                                          }

                                          *(this + 52) |= 1u;
                                          if (v8 - v126 >= 2 && *v126 == 144 && v126[1] == 2)
                                          {
                                            v19 = (v126 + 2);
                                            *(a2 + 1) = v19;
LABEL_396:
                                            if (v19 >= v8 || (v127 = *v19, v127 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v128 = *(a2 + 1);
                                              v8 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *(this + 39) = v127;
                                              v128 = (v19 + 1);
                                              *(a2 + 1) = v128;
                                            }

                                            *(this + 52) |= 2u;
                                            if (v8 - v128 >= 2 && *v128 == 152 && v128[1] == 2)
                                            {
                                              v16 = (v128 + 2);
                                              *(a2 + 1) = v16;
LABEL_405:
                                              if (v16 >= v8 || (v129 = *v16, v129 < 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 40);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v130 = *(a2 + 1);
                                                v8 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *(this + 40) = v129;
                                                v130 = (v16 + 1);
                                                *(a2 + 1) = v130;
                                              }

                                              *(this + 52) |= 4u;
                                              if (v8 - v130 >= 2 && *v130 == 160 && v130[1] == 2)
                                              {
                                                v13 = (v130 + 2);
                                                *(a2 + 1) = v13;
LABEL_414:
                                                if (v13 >= v8 || (v131 = *v13, v131 < 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 41);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v132 = *(a2 + 1);
                                                  v8 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *(this + 41) = v131;
                                                  v132 = (v13 + 1);
                                                  *(a2 + 1) = v132;
                                                }

                                                *(this + 52) |= 8u;
                                                if (v8 - v132 >= 2 && *v132 == 168 && v132[1] == 2)
                                                {
                                                  v14 = (v132 + 2);
                                                  *(a2 + 1) = v14;
LABEL_423:
                                                  if (v14 >= v8 || (v133 = *v14, v133 < 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v134 = *(a2 + 1);
                                                    v8 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *(this + 42) = v133;
                                                    v134 = (v14 + 1);
                                                    *(a2 + 1) = v134;
                                                  }

                                                  *(this + 52) |= 0x10u;
                                                  if (v8 - v134 >= 2 && *v134 == 176 && v134[1] == 2)
                                                  {
                                                    v12 = (v134 + 2);
                                                    *(a2 + 1) = v12;
LABEL_432:
                                                    if (v12 >= v8 || (v135 = *v12, v135 < 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v136 = *(a2 + 1);
                                                      v8 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      *(this + 43) = v135;
                                                      v136 = (v12 + 1);
                                                      *(a2 + 1) = v136;
                                                    }

                                                    *(this + 52) |= 0x20u;
                                                    if (v8 - v136 >= 2 && *v136 == 184 && v136[1] == 2)
                                                    {
                                                      v50 = (v136 + 2);
                                                      *(a2 + 1) = v50;
LABEL_441:
                                                      if (v50 >= v8 || (v137 = *v50, v137 < 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 44);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v138 = *(a2 + 1);
                                                      }

                                                      else
                                                      {
                                                        *(this + 44) = v137;
                                                        v138 = (v50 + 1);
                                                        *(a2 + 1) = v138;
                                                      }

                                                      *(this + 52) |= 0x40u;
                                                      v44 = *(a2 + 2);
                                                      if (v44 - v138 >= 2 && *v138 == 192 && v138[1] == 2)
                                                      {
                                                        v45 = (v138 + 2);
                                                        *(a2 + 1) = v45;
LABEL_450:
                                                        if (v45 >= v44 || (v139 = *v45, v139 < 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v140 = *(a2 + 1);
                                                          v44 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *(this + 45) = v139;
                                                          v140 = (v45 + 1);
                                                          *(a2 + 1) = v140;
                                                        }

                                                        *(this + 52) |= 0x80u;
                                                        if (v44 - v140 >= 2 && *v140 == 200 && v140[1] == 2)
                                                        {
                                                          goto LABEL_458;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        continue;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v32 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_252;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v38 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_261;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v46 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_270;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_279;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v35 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_288;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v43 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_297;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v47 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_306;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_315;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_324;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v51 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_333;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_342;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v48 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_351;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v49 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_360;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v41 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_369;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v31 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_378;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v42 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_387;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_396;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_405;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_414;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_423;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_432;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v50 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_441;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v45 = *(a2 + 1);
        v44 = *(a2 + 2);
        goto LABEL_450;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 != 2)
          {
            goto LABEL_94;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 23);
          if (!result)
          {
            return result;
          }

LABEL_477:
          v140 = *(a2 + 1);
          v44 = *(a2 + 2);
          if (v44 - v140 >= 2 && *v140 == 200 && v140[1] == 2)
          {
LABEL_458:
            v53 = (v140 + 2);
            *(a2 + 1) = v53;
            goto LABEL_459;
          }

          if (v140 == v44 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        v53 = *(a2 + 1);
        v44 = *(a2 + 2);
LABEL_459:
        v151 = 0;
        if (v53 < v44 && (*v53 & 0x80000000) == 0)
        {
          v151 = *v53;
          *(a2 + 1) = v53 + 1;
          goto LABEL_463;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v151))
        {
LABEL_463:
          v141 = *(this + 48);
          if (v141 == *(this + 49))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 46, v141 + 1);
            v141 = *(this + 48);
          }

          v142 = v151;
          v143 = *(this + 23);
          *(this + 48) = v141 + 1;
          *(v143 + 4 * v141) = v142;
          v144 = *(this + 49) - *(this + 48);
          if (v144 >= 1)
          {
            v145 = v144 + 1;
            do
            {
              v146 = *(a2 + 1);
              v147 = *(a2 + 2);
              if (v147 - v146 < 2 || *v146 != 200 || v146[1] != 2)
              {
                break;
              }

              *(a2 + 1) = v146 + 2;
              if ((v146 + 2) >= v147 || v146[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v151))
                {
                  return 0;
                }
              }

              else
              {
                v151 = v146[2];
                *(a2 + 1) = v146 + 3;
              }

              v148 = *(this + 48);
              if (v148 >= *(this + 49))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v152);
                v148 = *(this + 48);
              }

              v149 = v151;
              v150 = *(this + 23);
              *(this + 48) = v148 + 1;
              *(v150 + 4 * v148) = v149;
              --v145;
            }

            while (v145 > 1);
          }

          goto LABEL_477;
        }

        return 0;
      default:
        goto LABEL_94;
    }
  }
}

void sub_2963C6350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 204);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 204);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  if ((*(v5 + 204) & 0x8000) != 0)
  {
LABEL_17:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
  }

LABEL_18:
  if (*(v5 + 80) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(*(v5 + 72) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 80));
  }

  v8 = *(v5 + 204);
  if ((v8 & 0x20000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 92), a2, a4);
    v8 = *(v5 + 204);
    if ((v8 & 0x40000) == 0)
    {
LABEL_23:
      if ((v8 & 0x80000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_67;
    }
  }

  else if ((v8 & 0x40000) == 0)
  {
    goto LABEL_23;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 96), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x80000) == 0)
  {
LABEL_24:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 100), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x100000) == 0)
  {
LABEL_25:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 104), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x200000) == 0)
  {
LABEL_26:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 108), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x400000) == 0)
  {
LABEL_27:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 112), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x800000) == 0)
  {
LABEL_28:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 116), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x1000000) == 0)
  {
LABEL_29:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 120), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_30:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 124), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 128), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x8000000) == 0)
  {
LABEL_32:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 132), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x10000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 136), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x20000000) == 0)
  {
LABEL_34:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_78:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 144), a2, a4);
    if ((*(v5 + 204) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 140), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_78;
  }

LABEL_35:
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 148), a2, a4);
LABEL_36:
  v9 = *(v5 + 208);
  if (v9)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 152), a2, a4);
    v9 = *(v5 + 208);
    if ((v9 & 2) == 0)
    {
LABEL_38:
      if ((v9 & 4) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_82;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_38;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(v5 + 156), a2, a4);
  v9 = *(v5 + 208);
  if ((v9 & 4) == 0)
  {
LABEL_39:
    if ((v9 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 160), a2, a4);
  v9 = *(v5 + 208);
  if ((v9 & 8) == 0)
  {
LABEL_40:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 164), a2, a4);
  v9 = *(v5 + 208);
  if ((v9 & 0x10) == 0)
  {
LABEL_41:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 168), a2, a4);
  v9 = *(v5 + 208);
  if ((v9 & 0x20) == 0)
  {
LABEL_42:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, *(v5 + 172), a2, a4);
  v9 = *(v5 + 208);
  if ((v9 & 0x40) == 0)
  {
LABEL_43:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_86:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 176), a2, a4);
  if ((*(v5 + 208) & 0x80) != 0)
  {
LABEL_44:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 180), a2, a4);
  }

LABEL_45:
  if (*(v5 + 192) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(*(v5 + 184) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 192));
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::ByteSize(awd::metrics::BluetoothAccessoryBatteryHealth *this, unint64_t a2)
{
  v3 = *(this + 51);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_42;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 51);
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
    v3 = *(this + 51);
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
      v3 = *(this + 51);
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

      goto LABEL_26;
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
    v3 = *(this + 51);
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

    goto LABEL_30;
  }

LABEL_26:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 51);
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
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(this + 8);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 51);
  }

  else
  {
    v14 = 2;
  }

  v4 += v14;
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 9);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 51);
  }

  else
  {
    v16 = 2;
  }

  v4 += v16;
  if ((v3 & 0x80) != 0)
  {
LABEL_38:
    v17 = *(this + 10);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 51);
    }

    else
    {
      v18 = 2;
    }

    v4 += v18;
  }

LABEL_42:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v3 & 0x100) != 0)
  {
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 51);
    }

    else
    {
      v20 = 2;
    }

    v4 += v20;
    if ((v3 & 0x200) == 0)
    {
LABEL_45:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_60;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(this + 12);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v3 = *(this + 51);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x400) == 0)
  {
LABEL_46:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v23 = *(this + 13);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v3 = *(this + 51);
  }

  else
  {
    v24 = 2;
  }

  v4 += v24;
  if ((v3 & 0x800) == 0)
  {
LABEL_47:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

LABEL_64:
  v25 = *(this + 14);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v3 = *(this + 51);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x1000) == 0)
  {
LABEL_48:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_72;
  }

LABEL_68:
  v27 = *(this + 15);
  if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 51);
  }

  else
  {
    v28 = 2;
  }

  v4 += v28;
  if ((v3 & 0x2000) == 0)
  {
LABEL_49:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_72:
  v29 = *(this + 16);
  if (v29 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 1;
    v3 = *(this + 51);
  }

  else
  {
    v30 = 2;
  }

  v4 += v30;
  if ((v3 & 0x4000) == 0)
  {
LABEL_50:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v31 = *(this + 17);
  if (v31 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
    v3 = *(this + 51);
  }

  else
  {
    v32 = 2;
  }

  v4 += v32;
  if ((v3 & 0x8000) != 0)
  {
LABEL_80:
    v33 = *(this + 22);
    if (v33 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 2;
      v3 = *(this + 51);
    }

    else
    {
      v34 = 3;
    }

    v4 += v34;
  }

LABEL_84:
  if ((v3 & 0x1FE0000) == 0)
  {
    goto LABEL_121;
  }

  if ((v3 & 0x20000) != 0)
  {
    v35 = *(this + 23);
    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35) + 2;
      v3 = *(this + 51);
    }

    else
    {
      v36 = 3;
    }

    v4 += v36;
    if ((v3 & 0x40000) == 0)
    {
LABEL_87:
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_101;
    }
  }

  else if ((v3 & 0x40000) == 0)
  {
    goto LABEL_87;
  }

  v37 = *(this + 24);
  if (v37 >= 0x80)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v38 = 3;
  }

  v4 += v38;
  if ((v3 & 0x80000) == 0)
  {
LABEL_88:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_105;
  }

LABEL_101:
  v39 = *(this + 25);
  if (v39 >= 0x80)
  {
    v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v40 = 3;
  }

  v4 += v40;
  if ((v3 & 0x100000) == 0)
  {
LABEL_89:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_109;
  }

LABEL_105:
  v41 = *(this + 26);
  if (v41 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v42 = 3;
  }

  v4 += v42;
  if ((v3 & 0x200000) == 0)
  {
LABEL_90:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_113;
  }

LABEL_109:
  v43 = *(this + 27);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v44 = 3;
  }

  v4 += v44;
  if ((v3 & 0x400000) == 0)
  {
LABEL_91:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_117;
  }

LABEL_113:
  v45 = *(this + 28);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v46 = 3;
  }

  v4 += v46;
  if ((v3 & 0x800000) != 0)
  {
LABEL_117:
    v47 = *(this + 29);
    if (v47 >= 0x80)
    {
      v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
      v3 = *(this + 51);
    }

    else
    {
      v48 = 3;
    }

    v4 += v48;
  }

LABEL_121:
  if (!HIBYTE(v3))
  {
    goto LABEL_163;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v49 = *(this + 30);
    if (v49 >= 0x80)
    {
      v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
      v3 = *(this + 51);
    }

    else
    {
      v50 = 3;
    }

    v4 += v50;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_124:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_139;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_124;
  }

  v51 = *(this + 31);
  if (v51 >= 0x80)
  {
    v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v52 = 3;
  }

  v4 += v52;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_125:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_143;
  }

LABEL_139:
  v53 = *(this + 32);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v54 = 3;
  }

  v4 += v54;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_126:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_147;
  }

LABEL_143:
  v55 = *(this + 33);
  if (v55 >= 0x80)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v56 = 3;
  }

  v4 += v56;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_127:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_151;
  }

LABEL_147:
  v57 = *(this + 34);
  if (v57 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v58 = 3;
  }

  v4 += v58;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_128:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_155;
  }

LABEL_151:
  v59 = *(this + 35);
  if (v59 >= 0x80)
  {
    v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v60 = 3;
  }

  v4 += v60;
  if ((v3 & 0x40000000) == 0)
  {
LABEL_129:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_159;
  }

LABEL_155:
  v61 = *(this + 36);
  if (v61 >= 0x80)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
    v3 = *(this + 51);
  }

  else
  {
    v62 = 3;
  }

  v4 += v62;
  if ((v3 & 0x80000000) != 0)
  {
LABEL_159:
    v63 = *(this + 37);
    if (v63 >= 0x80)
    {
      v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
    }

    else
    {
      v64 = 3;
    }

    v4 += v64;
  }

LABEL_163:
  LOBYTE(v65) = *(this + 208);
  if (!v65)
  {
    goto LABEL_205;
  }

  if (*(this + 208))
  {
    v66 = *(this + 38);
    if (v66 >= 0x80)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v66) + 2;
      v65 = *(this + 52);
    }

    else
    {
      v67 = 3;
    }

    v4 += v67;
    if ((v65 & 2) == 0)
    {
LABEL_166:
      if ((v65 & 4) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_181;
    }
  }

  else if ((*(this + 208) & 2) == 0)
  {
    goto LABEL_166;
  }

  v68 = *(this + 39);
  if (v68 >= 0x80)
  {
    v69 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 2;
    v65 = *(this + 52);
  }

  else
  {
    v69 = 3;
  }

  v4 += v69;
  if ((v65 & 4) == 0)
  {
LABEL_167:
    if ((v65 & 8) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_185;
  }

LABEL_181:
  v70 = *(this + 40);
  if (v70 >= 0x80)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v70) + 2;
    v65 = *(this + 52);
  }

  else
  {
    v71 = 3;
  }

  v4 += v71;
  if ((v65 & 8) == 0)
  {
LABEL_168:
    if ((v65 & 0x10) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_189;
  }

LABEL_185:
  v72 = *(this + 41);
  if (v72 >= 0x80)
  {
    v73 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72) + 2;
    v65 = *(this + 52);
  }

  else
  {
    v73 = 3;
  }

  v4 += v73;
  if ((v65 & 0x10) == 0)
  {
LABEL_169:
    if ((v65 & 0x20) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_193;
  }

LABEL_189:
  v74 = *(this + 42);
  if (v74 >= 0x80)
  {
    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v74) + 2;
    v65 = *(this + 52);
  }

  else
  {
    v75 = 3;
  }

  v4 += v75;
  if ((v65 & 0x20) == 0)
  {
LABEL_170:
    if ((v65 & 0x40) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_197;
  }

LABEL_193:
  v76 = *(this + 43);
  if (v76 >= 0x80)
  {
    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 2;
    v65 = *(this + 52);
  }

  else
  {
    v77 = 3;
  }

  v4 += v77;
  if ((v65 & 0x40) == 0)
  {
LABEL_171:
    if ((v65 & 0x80) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_201;
  }

LABEL_197:
  v78 = *(this + 44);
  if (v78 >= 0x80)
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78) + 2;
    v65 = *(this + 52);
  }

  else
  {
    v79 = 3;
  }

  v4 += v79;
  if ((v65 & 0x80) != 0)
  {
LABEL_201:
    v80 = *(this + 45);
    if (v80 >= 0x80)
    {
      v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80) + 2;
    }

    else
    {
      v81 = 3;
    }

    v4 += v81;
  }

LABEL_205:
  v82 = *(this + 20);
  if (v82 < 1)
  {
    v84 = 0;
  }

  else
  {
    v83 = 0;
    v84 = 0;
    do
    {
      v85 = *(*(this + 9) + 4 * v83);
      if (v85 >= 0x80)
      {
        v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85);
        v82 = *(this + 20);
      }

      else
      {
        v86 = 1;
      }

      v84 += v86;
      ++v83;
    }

    while (v83 < v82);
  }

  v87 = *(this + 48);
  if (v87 < 1)
  {
    v89 = 0;
  }

  else
  {
    v88 = 0;
    v89 = 0;
    do
    {
      v90 = *(*(this + 23) + 4 * v88);
      if (v90 >= 0x80)
      {
        v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90);
        v87 = *(this + 48);
      }

      else
      {
        v91 = 1;
      }

      v89 += v91;
      ++v88;
    }

    while (v88 < v87);
  }

  result = (v84 + v4 + v89 + 2 * (v87 + v82));
  *(this + 50) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryBatteryHealth::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryBatteryHealth *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::BluetoothAccessoryBatteryHealth::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryBatteryHealth::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryBatteryHealth::CopyFrom(awd::metrics::BluetoothAccessoryBatteryHealth *this, const awd::metrics::BluetoothAccessoryBatteryHealth *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryBatteryHealth::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryBatteryHealth::Swap(awd::metrics::BluetoothAccessoryBatteryHealth *this, awd::metrics::BluetoothAccessoryBatteryHealth *a2)
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
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v4 = *(a2 + 10);
    *(a2 + 9) = v3;
    v5 = *(this + 10);
    *(this + 10) = v4;
    *(a2 + 10) = v5;
    LODWORD(v3) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v3;
    LODWORD(v3) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v3;
    LODWORD(v3) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v3;
    LODWORD(v3) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LODWORD(v3) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v3;
    LODWORD(v3) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v3;
    LODWORD(v3) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v3;
    LODWORD(v3) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v3;
    LODWORD(v3) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v3;
    LODWORD(v3) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v3;
    LODWORD(v3) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v3;
    LODWORD(v3) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v3;
    LODWORD(v3) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v3;
    LODWORD(v3) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v3;
    LODWORD(v3) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v3;
    LODWORD(v3) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v3;
    LODWORD(v3) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v3;
    LODWORD(v3) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v3;
    v6 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    result = *(a2 + 24);
    *(a2 + 23) = v6;
    v8 = *(this + 24);
    *(this + 24) = result;
    *(a2 + 24) = v8;
    LODWORD(v6) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v6;
    LODWORD(v6) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v6;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryOhdSensors::SharedCtor(awd::metrics::BluetoothAccessoryOhdSensors *this)
{
  *(this + 23) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 26) = 0;
  *(this + 108) = 0;
  *(this + 228) = 0;
  *(this + 220) = 0;
  *(this + 59) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryOhdSensors *awd::metrics::BluetoothAccessoryOhdSensors::BluetoothAccessoryOhdSensors(awd::metrics::BluetoothAccessoryOhdSensors *this, const awd::metrics::BluetoothAccessoryOhdSensors *a2)
{
  *this = &unk_2A1D4CC00;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 152) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 108) = 0;
  *(this + 220) = 0u;
  *(this + 236) = 0u;
  *(this + 252) = 0u;
  *(this + 67) = 0;
  awd::metrics::BluetoothAccessoryOhdSensors::MergeFrom(this, a2);
  return this;
}

void sub_2963C75EC(_Unwind_Exception *a1)
{
  v6 = *(v1 + 30);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  awd::metrics::BluetoothAccessoryOhdSensors::BluetoothAccessoryOhdSensors(v1 + 192, v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float awd::metrics::BluetoothAccessoryOhdSensors::MergeFrom(awd::metrics::BluetoothAccessoryOhdSensors *this, const awd::metrics::BluetoothAccessoryOhdSensors *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
  }

  v5 = *(a2 + 28);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 26, *(this + 28) + v5);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v6 = *(a2 + 36);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 34, *(this + 36) + v6);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v7 = *(a2 + 44);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 42, *(this + 44) + v7);
    memcpy((*(this + 21) + 4 * *(this + 44)), *(a2 + 21), 4 * *(a2 + 44));
    *(this + 44) += *(a2 + 44);
  }

  v8 = *(a2 + 50);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 48, *(this + 50) + v8);
    memcpy((*(this + 24) + 4 * *(this + 50)), *(a2 + 24), 4 * *(a2 + 50));
    *(this + 50) += *(a2 + 50);
  }

  v9 = *(a2 + 62);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 60, *(this + 62) + v9);
    memcpy((*(this + 30) + 4 * *(this + 62)), *(a2 + 30), 4 * *(a2 + 62));
    *(this + 62) += *(a2 + 62);
  }

  v10 = *(a2 + 66);
  if (!v10)
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v15 = *(a2 + 1);
    *(this + 66) |= 1u;
    *(this + 1) = v15;
    v10 = *(a2 + 66);
    if ((v10 & 2) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_70;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 4);
  *(this + 66) |= 2u;
  *(this + 4) = v16;
  v10 = *(a2 + 66);
  if ((v10 & 4) == 0)
  {
LABEL_17:
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_71;
  }

LABEL_70:
  v17 = *(a2 + 5);
  *(this + 66) |= 4u;
  *(this + 5) = v17;
  v10 = *(a2 + 66);
  if ((v10 & 8) == 0)
  {
LABEL_18:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_71:
  v18 = *(a2 + 6);
  *(this + 66) |= 8u;
  *(this + 6) = v18;
  v10 = *(a2 + 66);
  if ((v10 & 0x10) == 0)
  {
LABEL_19:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_73:
    v20 = *(a2 + 8);
    *(this + 66) |= 0x20u;
    *(this + 8) = v20;
    v10 = *(a2 + 66);
    if ((v10 & 0x40) == 0)
    {
LABEL_21:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_72:
  v19 = *(a2 + 7);
  *(this + 66) |= 0x10u;
  *(this + 7) = v19;
  v10 = *(a2 + 66);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_73;
  }

LABEL_20:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_74:
  v21 = *(a2 + 9);
  *(this + 66) |= 0x40u;
  *(this + 9) = v21;
  v10 = *(a2 + 66);
  if ((v10 & 0x80) != 0)
  {
LABEL_22:
    v11 = *(a2 + 10);
    *(this + 66) |= 0x80u;
    *(this + 10) = v11;
    v10 = *(a2 + 66);
  }

LABEL_23:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v10 & 0x100) != 0)
  {
    v22 = *(a2 + 11);
    *(this + 66) |= 0x100u;
    *(this + 11) = v22;
    v10 = *(a2 + 66);
    if ((v10 & 0x200) == 0)
    {
LABEL_26:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_78;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v23 = *(a2 + 12);
  *(this + 66) |= 0x200u;
  *(this + 12) = v23;
  v10 = *(a2 + 66);
  if ((v10 & 0x400) == 0)
  {
LABEL_27:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  v24 = *(a2 + 13);
  *(this + 66) |= 0x400u;
  *(this + 13) = v24;
  v10 = *(a2 + 66);
  if ((v10 & 0x800) == 0)
  {
LABEL_28:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  v25 = *(a2 + 14);
  *(this + 66) |= 0x800u;
  *(this + 14) = v25;
  v10 = *(a2 + 66);
  if ((v10 & 0x1000) == 0)
  {
LABEL_29:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  v26 = *(a2 + 15);
  *(this + 66) |= 0x1000u;
  *(this + 15) = v26;
  v10 = *(a2 + 66);
  if ((v10 & 0x2000) == 0)
  {
LABEL_30:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  v27 = *(a2 + 16);
  *(this + 66) |= 0x2000u;
  *(this + 16) = v27;
  v10 = *(a2 + 66);
  if ((v10 & 0x4000) == 0)
  {
LABEL_31:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_82:
  v28 = *(a2 + 17);
  *(this + 66) |= 0x4000u;
  *(this + 17) = v28;
  v10 = *(a2 + 66);
  if ((v10 & 0x8000) != 0)
  {
LABEL_32:
    v12 = *(a2 + 18);
    *(this + 66) |= 0x8000u;
    *(this + 18) = v12;
    v10 = *(a2 + 66);
  }

LABEL_33:
  if ((v10 & 0xFF0000) == 0)
  {
    goto LABEL_42;
  }

  if ((v10 & 0x10000) != 0)
  {
    v29 = *(a2 + 19);
    *(this + 66) |= 0x10000u;
    *(this + 19) = v29;
    v10 = *(a2 + 66);
    if ((v10 & 0x20000) == 0)
    {
LABEL_36:
      if ((v10 & 0x40000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_86;
    }
  }

  else if ((v10 & 0x20000) == 0)
  {
    goto LABEL_36;
  }

  v30 = *(a2 + 20);
  *(this + 66) |= 0x20000u;
  *(this + 20) = v30;
  v10 = *(a2 + 66);
  if ((v10 & 0x40000) == 0)
  {
LABEL_37:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  v31 = *(a2 + 21);
  *(this + 66) |= 0x40000u;
  *(this + 21) = v31;
  v10 = *(a2 + 66);
  if ((v10 & 0x80000) == 0)
  {
LABEL_38:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = *(a2 + 22);
  *(this + 66) |= 0x80000u;
  *(this + 22) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x100000) == 0)
  {
LABEL_39:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = *(a2 + 23);
  *(this + 66) |= 0x100000u;
  *(this + 23) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x200000) == 0)
  {
LABEL_40:
    if ((v10 & 0x400000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_89:
  result = *(a2 + 24);
  *(this + 66) |= 0x200000u;
  *(this + 24) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x400000) != 0)
  {
LABEL_41:
    result = *(a2 + 25);
    *(this + 66) |= 0x400000u;
    *(this + 25) = result;
    v10 = *(a2 + 66);
  }

LABEL_42:
  if (!HIBYTE(v10))
  {
    goto LABEL_50;
  }

  if ((v10 & 0x1000000) != 0)
  {
    result = *(a2 + 30);
    *(this + 66) |= 0x1000000u;
    *(this + 30) = result;
    v10 = *(a2 + 66);
    if ((v10 & 0x2000000) == 0)
    {
LABEL_45:
      if ((v10 & 0x4000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_106;
    }
  }

  else if ((v10 & 0x2000000) == 0)
  {
    goto LABEL_45;
  }

  result = *(a2 + 31);
  *(this + 66) |= 0x2000000u;
  *(this + 31) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x4000000) == 0)
  {
LABEL_46:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_107;
  }

LABEL_106:
  result = *(a2 + 32);
  *(this + 66) |= 0x4000000u;
  *(this + 32) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x8000000) == 0)
  {
LABEL_47:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_108;
  }

LABEL_107:
  result = *(a2 + 33);
  *(this + 66) |= 0x8000000u;
  *(this + 33) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_48:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_109:
    result = *(a2 + 39);
    *(this + 66) |= 0x40000000u;
    *(this + 39) = result;
    if ((*(a2 + 66) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_110;
  }

LABEL_108:
  result = *(a2 + 38);
  *(this + 66) |= 0x20000000u;
  *(this + 38) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_109;
  }

LABEL_49:
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_110:
  result = *(a2 + 40);
  *(this + 66) |= 0x80000000;
  *(this + 40) = result;
LABEL_50:
  v13 = *(a2 + 67);
  if (!v13)
  {
    goto LABEL_58;
  }

  if (v13)
  {
    v32 = *(a2 + 216);
    *(this + 67) |= 1u;
    *(this + 216) = v32;
    v13 = *(a2 + 67);
    if ((v13 & 4) == 0)
    {
LABEL_53:
      if ((v13 & 8) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_93;
    }
  }

  else if ((v13 & 4) == 0)
  {
    goto LABEL_53;
  }

  result = *(a2 + 41);
  *(this + 67) |= 4u;
  *(this + 41) = result;
  v13 = *(a2 + 67);
  if ((v13 & 8) == 0)
  {
LABEL_54:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = *(a2 + 46);
  *(this + 67) |= 8u;
  *(this + 46) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x10) == 0)
  {
LABEL_55:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = *(a2 + 47);
  *(this + 67) |= 0x10u;
  *(this + 47) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x20) == 0)
  {
LABEL_56:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_95:
  result = *(a2 + 52);
  *(this + 67) |= 0x20u;
  *(this + 52) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x80) != 0)
  {
LABEL_57:
    result = *(a2 + 53);
    *(this + 67) |= 0x80u;
    *(this + 53) = result;
    v13 = *(a2 + 67);
  }

LABEL_58:
  if ((v13 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v13 & 0x100) != 0)
  {
    result = *(a2 + 55);
    *(this + 67) |= 0x100u;
    *(this + 55) = result;
    v13 = *(a2 + 67);
    if ((v13 & 0x200) == 0)
    {
LABEL_61:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_99;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_61;
  }

  result = *(a2 + 56);
  *(this + 67) |= 0x200u;
  *(this + 56) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x400) == 0)
  {
LABEL_62:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_100;
  }

LABEL_99:
  result = *(a2 + 57);
  *(this + 67) |= 0x400u;
  *(this + 57) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x800) == 0)
  {
LABEL_63:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_101;
  }

LABEL_100:
  result = *(a2 + 58);
  *(this + 67) |= 0x800u;
  *(this + 58) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x1000) == 0)
  {
LABEL_64:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_102;
  }

LABEL_101:
  result = *(a2 + 59);
  *(this + 67) |= 0x1000u;
  *(this + 59) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x2000) == 0)
  {
LABEL_65:
    if ((v13 & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_66;
  }

LABEL_102:
  result = *(a2 + 64);
  *(this + 67) |= 0x2000u;
  *(this + 64) = result;
  if ((*(a2 + 67) & 0x4000) != 0)
  {
LABEL_66:
    v14 = *(a2 + 217);
    *(this + 67) |= 0x4000u;
    *(this + 217) = v14;
  }

  return result;
}

void sub_2963C7D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryOhdSensors::~BluetoothAccessoryOhdSensors(awd::metrics::BluetoothAccessoryOhdSensors *this)
{
  *this = &unk_2A1D4CC00;
  v2 = *(this + 30);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 24);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 21);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 17);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 13);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryOhdSensors::~BluetoothAccessoryOhdSensors(this);

  JUMPOUT(0x29C259F00);
}