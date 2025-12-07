uint64_t awd::metrics::LocationEmergencySessionStatistics::ByteSize(awd::metrics::LocationEmergencySessionStatistics *this, unint64_t a2)
{
  v3 = *(this + 118);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_43;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 118);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(this + 2);
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
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    v7 = *(v6 + 23);
    v9 = *(v6 + 8);
    v3 = *(this + 118);
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

  v4 += v11 + v7 + 1;
LABEL_16:
  v12 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v12 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v12 += 9;
  }

  if ((v3 & 0x10) != 0)
  {
    v5 = v12 + 9;
  }

  else
  {
    v5 = v12;
  }

  if ((v3 & 0x20) != 0)
  {
    v13 = *(this + 12);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v3 = *(this + 118);
    }

    else
    {
      v14 = 2;
    }

    v5 = (v14 + v5);
    if ((v3 & 0x40) == 0)
    {
LABEL_25:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 0x40) == 0)
  {
    goto LABEL_25;
  }

  v15 = *(this + 13);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 118);
  }

  else
  {
    v16 = 2;
  }

  v5 = (v16 + v5);
  if ((v3 & 0x80) != 0)
  {
LABEL_37:
    v17 = *(this + 14);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v3 = *(this + 118);
    }

    else
    {
      v18 = 2;
    }

    v5 = (v18 + v5);
  }

LABEL_43:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_53;
  }

  if ((v3 & 0x100) != 0)
  {
    v21 = *(this + 15);
    if ((v21 & 0x80000000) != 0)
    {
      v22 = 11;
    }

    else if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v3 = *(this + 118);
    }

    else
    {
      v22 = 2;
    }

    v5 = (v22 + v5);
    if ((v3 & 0x200) == 0)
    {
LABEL_46:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_97;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_46;
  }

  v27 = *(this + 16);
  if ((v27 & 0x80000000) != 0)
  {
    v28 = 11;
  }

  else if (v27 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
    v3 = *(this + 118);
  }

  else
  {
    v28 = 2;
  }

  v5 = (v28 + v5);
  if ((v3 & 0x400) == 0)
  {
LABEL_47:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_115;
  }

LABEL_97:
  v32 = *(this + 17);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 11;
  }

  else if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
    v3 = *(this + 118);
  }

  else
  {
    v33 = 2;
  }

  v5 = (v33 + v5);
  if ((v3 & 0x800) == 0)
  {
LABEL_48:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_121;
  }

LABEL_115:
  v38 = *(this + 18);
  if ((v38 & 0x80000000) != 0)
  {
    v39 = 11;
  }

  else if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 1;
    v3 = *(this + 118);
  }

  else
  {
    v39 = 2;
  }

  v5 = (v39 + v5);
  if ((v3 & 0x1000) == 0)
  {
LABEL_49:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_127;
  }

LABEL_121:
  v40 = *(this + 19);
  if ((v40 & 0x80000000) != 0)
  {
    v41 = 11;
  }

  else if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 1;
    v3 = *(this + 118);
  }

  else
  {
    v41 = 2;
  }

  v5 = (v41 + v5);
  if ((v3 & 0x2000) == 0)
  {
LABEL_50:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_133;
  }

LABEL_127:
  v42 = *(this + 20);
  if ((v42 & 0x80000000) != 0)
  {
    v43 = 11;
  }

  else if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 1;
    v3 = *(this + 118);
  }

  else
  {
    v43 = 2;
  }

  v5 = (v43 + v5);
  if ((v3 & 0x4000) == 0)
  {
LABEL_51:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_133:
  v44 = *(this + 21);
  if ((v44 & 0x80000000) != 0)
  {
    v45 = 12;
  }

  else if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v3 = *(this + 118);
  }

  else
  {
    v45 = 3;
  }

  v5 = (v45 + v5);
  if ((v3 & 0x8000) != 0)
  {
LABEL_52:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 11)) + 2;
    v3 = *(this + 118);
  }

LABEL_53:
  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      LODWORD(v5) = v5 + 10;
    }

    if ((v3 & 0x20000) != 0)
    {
      v19 = *(this + 26);
      if ((v19 & 0x80000000) != 0)
      {
        v20 = 12;
      }

      else if (v19 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 2;
        v3 = *(this + 118);
      }

      else
      {
        v20 = 3;
      }

      LODWORD(v5) = v20 + v5;
    }

    v23 = v5 + 6;
    if ((v3 & 0x40000) == 0)
    {
      v23 = v5;
    }

    if ((v3 & 0x80000) != 0)
    {
      v24 = v23 + 6;
    }

    else
    {
      v24 = v23;
    }

    if ((v3 & 0x100000) != 0)
    {
      v25 = *(this + 29);
      if ((v25 & 0x80000000) != 0)
      {
        v26 = 12;
      }

      else if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 2;
        v3 = *(this + 118);
      }

      else
      {
        v26 = 3;
      }

      v24 += v26;
    }

    v29 = v24 + 3;
    if ((v3 & 0x200000) == 0)
    {
      v29 = v24;
    }

    if ((v3 & 0x400000) != 0)
    {
      v5 = v29 + 3;
    }

    else
    {
      v5 = v29;
    }

    if ((v3 & 0x800000) != 0)
    {
      v30 = *(this + 32);
      if ((v30 & 0x80000000) != 0)
      {
        v31 = 12;
      }

      else if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
        v3 = *(this + 118);
      }

      else
      {
        v31 = 3;
      }

      v5 = (v31 + v5);
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
      v35 = v34 + 10;
    }

    else
    {
      v35 = v34;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v36 = *(this + 36);
      if ((v36 & 0x80000000) != 0)
      {
        v37 = 12;
      }

      else if (v36 >= 0x80)
      {
        v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
        v3 = *(this + 118);
      }

      else
      {
        v37 = 3;
      }

      v35 += v37;
    }

    if ((v3 & 0x8000000) != 0)
    {
      v46 = *(this + 37);
      if ((v46 & 0x80000000) != 0)
      {
        v47 = 12;
      }

      else if (v46 >= 0x80)
      {
        v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
        v3 = *(this + 118);
      }

      else
      {
        v47 = 3;
      }

      v35 += v47;
    }

    v48 = v35 + 3;
    if ((v3 & 0x10000000) == 0)
    {
      v48 = v35;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v48 += 3;
    }

    if ((v3 & 0x40000000) != 0)
    {
      v5 = v48 + 3;
    }

    else
    {
      v5 = v48;
    }

    if ((v3 & 0x80000000) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 19)) + 2;
    }
  }

  v49 = *(this + 119);
  if (v49)
  {
    if (v49)
    {
      LODWORD(v5) = v5 + 3;
    }

    if ((v49 & 2) != 0)
    {
      v50 = *(this + 40);
      if ((v50 & 0x80000000) != 0)
      {
        v51 = 12;
      }

      else if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
        v49 = *(this + 119);
      }

      else
      {
        v51 = 3;
      }

      LODWORD(v5) = v51 + v5;
    }

    if ((v49 & 4) != 0)
    {
      v52 = *(this + 42);
      if (v52 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
        v49 = *(this + 119);
      }

      else
      {
        v53 = 3;
      }

      LODWORD(v5) = v53 + v5;
    }

    v54 = v5 + 3;
    if ((v49 & 8) == 0)
    {
      v54 = v5;
    }

    if ((v49 & 0x10) != 0)
    {
      v5 = v54 + 3;
    }

    else
    {
      v5 = v54;
    }

    if ((v49 & 0x20) != 0)
    {
      v55 = *(this + 43);
      if ((v55 & 0x80000000) != 0)
      {
        v56 = 12;
      }

      else if (v55 >= 0x80)
      {
        v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
        v49 = *(this + 119);
      }

      else
      {
        v56 = 3;
      }

      v5 = (v56 + v5);
      if ((v49 & 0x40) == 0)
      {
LABEL_181:
        if ((v49 & 0x80) == 0)
        {
          goto LABEL_199;
        }

        goto LABEL_195;
      }
    }

    else if ((v49 & 0x40) == 0)
    {
      goto LABEL_181;
    }

    v57 = *(this + 44);
    if ((v57 & 0x80000000) != 0)
    {
      v58 = 12;
    }

    else if (v57 >= 0x80)
    {
      v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57) + 2;
      v49 = *(this + 119);
    }

    else
    {
      v58 = 3;
    }

    v5 = (v58 + v5);
    if ((v49 & 0x80) != 0)
    {
LABEL_195:
      v59 = *(this + 45);
      if (v59 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
        v49 = *(this + 119);
      }

      else
      {
        v60 = 3;
      }

      v5 = (v60 + v5);
    }
  }

LABEL_199:
  if ((v49 & 0xFF00) == 0)
  {
    goto LABEL_251;
  }

  if ((v49 & 0x100) != 0)
  {
    v5 = (v5 + 3);
  }

  else
  {
    v5 = v5;
  }

  if ((v49 & 0x200) != 0)
  {
    v61 = *(this + 46);
    if (v61 >= 0x80)
    {
      v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
      v49 = *(this + 119);
    }

    else
    {
      v62 = 3;
    }

    v5 = (v62 + v5);
    if ((v49 & 0x400) == 0)
    {
LABEL_205:
      if ((v49 & 0x800) == 0)
      {
        goto LABEL_206;
      }

      goto LABEL_221;
    }
  }

  else if ((v49 & 0x400) == 0)
  {
    goto LABEL_205;
  }

  v63 = *(this + 47);
  if ((v63 & 0x80000000) != 0)
  {
    v64 = 12;
  }

  else if (v63 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
    v49 = *(this + 119);
  }

  else
  {
    v64 = 3;
  }

  v5 = (v64 + v5);
  if ((v49 & 0x800) == 0)
  {
LABEL_206:
    if ((v49 & 0x1000) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_227;
  }

LABEL_221:
  v65 = *(this + 48);
  if ((v65 & 0x80000000) != 0)
  {
    v66 = 12;
  }

  else if (v65 >= 0x80)
  {
    v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
    v49 = *(this + 119);
  }

  else
  {
    v66 = 3;
  }

  v5 = (v66 + v5);
  if ((v49 & 0x1000) == 0)
  {
LABEL_207:
    if ((v49 & 0x2000) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_233;
  }

LABEL_227:
  v67 = *(this + 49);
  if ((v67 & 0x80000000) != 0)
  {
    v68 = 12;
  }

  else if (v67 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67) + 2;
    v49 = *(this + 119);
  }

  else
  {
    v68 = 3;
  }

  v5 = (v68 + v5);
  if ((v49 & 0x2000) == 0)
  {
LABEL_208:
    if ((v49 & 0x4000) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_239;
  }

LABEL_233:
  v69 = *(this + 50);
  if ((v69 & 0x80000000) != 0)
  {
    v70 = 12;
  }

  else if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
    v49 = *(this + 119);
  }

  else
  {
    v70 = 3;
  }

  v5 = (v70 + v5);
  if ((v49 & 0x4000) == 0)
  {
LABEL_209:
    if ((v49 & 0x8000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_245;
  }

LABEL_239:
  v71 = *(this + 51);
  if ((v71 & 0x80000000) != 0)
  {
    v72 = 12;
  }

  else if (v71 >= 0x80)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
    v49 = *(this + 119);
  }

  else
  {
    v72 = 3;
  }

  v5 = (v72 + v5);
  if ((v49 & 0x8000) != 0)
  {
LABEL_245:
    v73 = *(this + 52);
    if ((v73 & 0x80000000) != 0)
    {
      v74 = 12;
    }

    else if (v73 >= 0x80)
    {
      v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73) + 2;
      v49 = *(this + 119);
    }

    else
    {
      v74 = 3;
    }

    v5 = (v74 + v5);
  }

LABEL_251:
  if ((v49 & 0xFF0000) != 0)
  {
    v75 = v5 + 3;
    if ((v49 & 0x10000) == 0)
    {
      v75 = v5;
    }

    if ((v49 & 0x20000) != 0)
    {
      v75 += 3;
    }

    if ((v49 & 0x40000) != 0)
    {
      v75 += 10;
    }

    if ((v49 & 0x80000) != 0)
    {
      v75 += 10;
    }

    if ((v49 & 0x100000) != 0)
    {
      v75 += 10;
    }

    if ((v49 & 0x200000) != 0)
    {
      v75 += 10;
    }

    if ((v49 & 0x400000) != 0)
    {
      v5 = v75 + 10;
    }

    else
    {
      v5 = v75;
    }

    if ((v49 & 0x800000) != 0)
    {
      v76 = *(this + 64);
      if ((v76 & 0x80000000) != 0)
      {
        v77 = 12;
      }

      else if (v76 >= 0x80)
      {
        v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76) + 2;
        v49 = *(this + 119);
      }

      else
      {
        v77 = 3;
      }

      v5 = (v77 + v5);
    }
  }

  if (!HIBYTE(v49))
  {
    goto LABEL_334;
  }

  if ((v49 & 0x1000000) != 0)
  {
    v78 = *(this + 65);
    if ((v78 & 0x80000000) != 0)
    {
      v79 = 12;
    }

    else if (v78 >= 0x80)
    {
      v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78) + 2;
      v49 = *(this + 119);
    }

    else
    {
      v79 = 3;
    }

    LODWORD(v5) = v79 + v5;
  }

  if ((v49 & 0x2000000) != 0)
  {
    v5 = (v5 + 3);
  }

  else
  {
    v5 = v5;
  }

  if ((v49 & 0x4000000) != 0)
  {
    v80 = *(this + 66);
    if ((v80 & 0x80000000) != 0)
    {
      v81 = 12;
    }

    else if (v80 >= 0x80)
    {
      v81 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80) + 2;
      v49 = *(this + 119);
    }

    else
    {
      v81 = 3;
    }

    v5 = (v81 + v5);
    if ((v49 & 0x8000000) == 0)
    {
LABEL_287:
      if ((v49 & 0x10000000) == 0)
      {
        goto LABEL_288;
      }

      goto LABEL_304;
    }
  }

  else if ((v49 & 0x8000000) == 0)
  {
    goto LABEL_287;
  }

  v82 = *(this + 67);
  if ((v82 & 0x80000000) != 0)
  {
    v83 = 12;
  }

  else if (v82 >= 0x80)
  {
    v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82) + 2;
    v49 = *(this + 119);
  }

  else
  {
    v83 = 3;
  }

  v5 = (v83 + v5);
  if ((v49 & 0x10000000) == 0)
  {
LABEL_288:
    if ((v49 & 0x20000000) == 0)
    {
      goto LABEL_289;
    }

LABEL_310:
    v86 = *(this + 69);
    if ((v86 & 0x80000000) != 0)
    {
      v87 = 12;
    }

    else if (v86 >= 0x80)
    {
      v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v86) + 2;
      v49 = *(this + 119);
    }

    else
    {
      v87 = 3;
    }

    v5 = (v87 + v5);
    if ((v49 & 0x40000000) == 0)
    {
LABEL_290:
      if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_334;
      }

      goto LABEL_325;
    }

    goto LABEL_316;
  }

LABEL_304:
  v84 = *(this + 68);
  if ((v84 & 0x80000000) != 0)
  {
    v85 = 12;
  }

  else if (v84 >= 0x80)
  {
    v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84) + 2;
    v49 = *(this + 119);
  }

  else
  {
    v85 = 3;
  }

  v5 = (v85 + v5);
  if ((v49 & 0x20000000) != 0)
  {
    goto LABEL_310;
  }

LABEL_289:
  if ((v49 & 0x40000000) == 0)
  {
    goto LABEL_290;
  }

LABEL_316:
  v88 = *(this + 35);
  v89 = *(v88 + 23);
  v90 = v89;
  v91 = *(v88 + 8);
  if ((v89 & 0x80u) == 0)
  {
    v92 = *(v88 + 23);
  }

  else
  {
    v92 = v91;
  }

  if (v92 >= 0x80)
  {
    v93 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92);
    v89 = *(v88 + 23);
    v91 = *(v88 + 8);
    v49 = *(this + 119);
    v90 = *(v88 + 23);
  }

  else
  {
    v93 = 1;
  }

  if (v90 < 0)
  {
    v89 = v91;
  }

  v5 = (v5 + v93 + v89 + 2);
  if ((v49 & 0x80000000) != 0)
  {
LABEL_325:
    v94 = *(this + 36);
    v95 = *(v94 + 23);
    v96 = v95;
    v97 = *(v94 + 8);
    if ((v95 & 0x80u) == 0)
    {
      v98 = *(v94 + 23);
    }

    else
    {
      v98 = v97;
    }

    if (v98 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v98);
      v95 = *(v94 + 23);
      v97 = *(v94 + 8);
      v96 = *(v94 + 23);
    }

    else
    {
      v99 = 1;
    }

    if (v96 < 0)
    {
      v95 = v97;
    }

    v5 = (v5 + v99 + v95 + 2);
  }

LABEL_334:
  v100 = *(this + 120);
  if (!v100)
  {
    goto LABEL_374;
  }

  if (v100)
  {
    v101 = *(this + 74);
    if (v101 >= 0x80)
    {
      v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101) + 2;
      v100 = *(this + 120);
    }

    else
    {
      v102 = 3;
    }

    LODWORD(v5) = v102 + v5;
  }

  if ((v100 & 2) != 0)
  {
    v103 = *(this + 75);
    if (v103 >= 0x80)
    {
      v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v103) + 2;
      v100 = *(this + 120);
    }

    else
    {
      v104 = 3;
    }

    LODWORD(v5) = v104 + v5;
  }

  v105 = v5 + 3;
  if ((v100 & 4) == 0)
  {
    v105 = v5;
  }

  if ((v100 & 8) != 0)
  {
    v105 += 3;
  }

  if ((v100 & 0x10) != 0)
  {
    v5 = v105 + 3;
  }

  else
  {
    v5 = v105;
  }

  if ((v100 & 0x20) != 0)
  {
    v106 = *(this + 77);
    if ((v106 & 0x80000000) != 0)
    {
      v107 = 12;
    }

    else if (v106 >= 0x80)
    {
      v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v106) + 2;
      v100 = *(this + 120);
    }

    else
    {
      v107 = 3;
    }

    v5 = (v107 + v5);
    if ((v100 & 0x40) == 0)
    {
LABEL_354:
      if ((v100 & 0x80) == 0)
      {
        goto LABEL_374;
      }

      goto LABEL_368;
    }
  }

  else if ((v100 & 0x40) == 0)
  {
    goto LABEL_354;
  }

  v108 = *(this + 78);
  if ((v108 & 0x80000000) != 0)
  {
    v109 = 12;
  }

  else if (v108 >= 0x80)
  {
    v109 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108) + 2;
    v100 = *(this + 120);
  }

  else
  {
    v109 = 3;
  }

  v5 = (v109 + v5);
  if ((v100 & 0x80) != 0)
  {
LABEL_368:
    v110 = *(this + 79);
    if ((v110 & 0x80000000) != 0)
    {
      v111 = 12;
    }

    else if (v110 >= 0x80)
    {
      v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110) + 2;
      v100 = *(this + 120);
    }

    else
    {
      v111 = 3;
    }

    v5 = (v111 + v5);
  }

LABEL_374:
  if ((v100 & 0xFF00) != 0)
  {
    if ((v100 & 0x100) != 0)
    {
      v112 = *(this + 80);
      if (v112 >= 0x80)
      {
        v113 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112) + 2;
        v100 = *(this + 120);
      }

      else
      {
        v113 = 3;
      }

      LODWORD(v5) = v113 + v5;
    }

    if ((v100 & 0x200) != 0)
    {
      v114 = *(this + 81);
      if (v114 >= 0x80)
      {
        v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114) + 2;
        v100 = *(this + 120);
      }

      else
      {
        v115 = 3;
      }

      LODWORD(v5) = v115 + v5;
    }

    v116 = v5 + 3;
    if ((v100 & 0x400) == 0)
    {
      v116 = v5;
    }

    if ((v100 & 0x800) != 0)
    {
      v116 += 3;
    }

    if ((v100 & 0x1000) != 0)
    {
      v116 += 3;
    }

    if ((v100 & 0x2000) != 0)
    {
      v116 += 3;
    }

    if ((v100 & 0x4000) != 0)
    {
      v5 = v116 + 3;
    }

    else
    {
      v5 = v116;
    }

    if ((v100 & 0x8000) != 0)
    {
      v117 = *(this + 83);
      if ((v117 & 0x80000000) != 0)
      {
        v118 = 12;
      }

      else if (v117 >= 0x80)
      {
        v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117) + 2;
        v100 = *(this + 120);
      }

      else
      {
        v118 = 3;
      }

      v5 = (v118 + v5);
    }
  }

  if ((v100 & 0xFF0000) != 0)
  {
    if ((v100 & 0x10000) != 0)
    {
      v119 = *(this + 84);
      if ((v119 & 0x80000000) != 0)
      {
        v120 = 12;
      }

      else if (v119 >= 0x80)
      {
        v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v119) + 2;
        v100 = *(this + 120);
      }

      else
      {
        v120 = 3;
      }

      LODWORD(v5) = v120 + v5;
    }

    if ((v100 & 0x20000) != 0)
    {
      v121 = *(this + 85);
      if ((v121 & 0x80000000) != 0)
      {
        v122 = 12;
      }

      else if (v121 >= 0x80)
      {
        v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121) + 2;
        v100 = *(this + 120);
      }

      else
      {
        v122 = 3;
      }

      LODWORD(v5) = v122 + v5;
    }

    v123 = v5 + 3;
    if ((v100 & 0x40000) == 0)
    {
      v123 = v5;
    }

    if ((v100 & 0x80000) != 0)
    {
      v123 += 3;
    }

    if ((v100 & 0x100000) != 0)
    {
      v5 = v123 + 3;
    }

    else
    {
      v5 = v123;
    }

    if ((v100 & 0x200000) != 0)
    {
      v124 = *(this + 87);
      if ((v124 & 0x80000000) != 0)
      {
        v125 = 12;
      }

      else if (v124 >= 0x80)
      {
        v125 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v124) + 2;
        v100 = *(this + 120);
      }

      else
      {
        v125 = 3;
      }

      v5 = (v125 + v5);
      if ((v100 & 0x400000) == 0)
      {
LABEL_427:
        if ((v100 & 0x800000) == 0)
        {
          goto LABEL_445;
        }

        goto LABEL_439;
      }
    }

    else if ((v100 & 0x400000) == 0)
    {
      goto LABEL_427;
    }

    v126 = *(this + 88);
    if (v126 >= 0x80)
    {
      v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v126) + 2;
      v100 = *(this + 120);
    }

    else
    {
      v127 = 3;
    }

    v5 = (v127 + v5);
    if ((v100 & 0x800000) != 0)
    {
LABEL_439:
      v128 = *(this + 89);
      if ((v128 & 0x80000000) != 0)
      {
        v129 = 12;
      }

      else if (v128 >= 0x80)
      {
        v129 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v128) + 2;
        v100 = *(this + 120);
      }

      else
      {
        v129 = 3;
      }

      v5 = (v129 + v5);
    }
  }

LABEL_445:
  if (!HIBYTE(v100))
  {
    goto LABEL_503;
  }

  if ((v100 & 0x1000000) != 0)
  {
    v130 = *(this + 90);
    if ((v130 & 0x80000000) != 0)
    {
      v131 = 12;
    }

    else if (v130 >= 0x80)
    {
      v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v130) + 2;
      v100 = *(this + 120);
    }

    else
    {
      v131 = 3;
    }

    v5 = (v131 + v5);
    if ((v100 & 0x2000000) == 0)
    {
LABEL_448:
      if ((v100 & 0x4000000) == 0)
      {
        goto LABEL_449;
      }

      goto LABEL_467;
    }
  }

  else if ((v100 & 0x2000000) == 0)
  {
    goto LABEL_448;
  }

  v132 = *(this + 91);
  if ((v132 & 0x80000000) != 0)
  {
    v133 = 12;
  }

  else if (v132 >= 0x80)
  {
    v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v132) + 2;
    v100 = *(this + 120);
  }

  else
  {
    v133 = 3;
  }

  v5 = (v133 + v5);
  if ((v100 & 0x4000000) == 0)
  {
LABEL_449:
    if ((v100 & 0x8000000) == 0)
    {
      goto LABEL_450;
    }

    goto LABEL_473;
  }

LABEL_467:
  v134 = *(this + 92);
  if ((v134 & 0x80000000) != 0)
  {
    v135 = 12;
  }

  else if (v134 >= 0x80)
  {
    v135 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v134) + 2;
    v100 = *(this + 120);
  }

  else
  {
    v135 = 3;
  }

  v5 = (v135 + v5);
  if ((v100 & 0x8000000) == 0)
  {
LABEL_450:
    if ((v100 & 0x10000000) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_479;
  }

LABEL_473:
  v136 = *(this + 93);
  if ((v136 & 0x80000000) != 0)
  {
    v137 = 12;
  }

  else if (v136 >= 0x80)
  {
    v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v136) + 2;
    v100 = *(this + 120);
  }

  else
  {
    v137 = 3;
  }

  v5 = (v137 + v5);
  if ((v100 & 0x10000000) == 0)
  {
LABEL_451:
    if ((v100 & 0x20000000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_485;
  }

LABEL_479:
  v138 = *(this + 94);
  if ((v138 & 0x80000000) != 0)
  {
    v139 = 12;
  }

  else if (v138 >= 0x80)
  {
    v139 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v138) + 2;
    v100 = *(this + 120);
  }

  else
  {
    v139 = 3;
  }

  v5 = (v139 + v5);
  if ((v100 & 0x20000000) == 0)
  {
LABEL_452:
    if ((v100 & 0x40000000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_491;
  }

LABEL_485:
  v140 = *(this + 95);
  if ((v140 & 0x80000000) != 0)
  {
    v141 = 12;
  }

  else if (v140 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v140) + 2;
    v100 = *(this + 120);
  }

  else
  {
    v141 = 3;
  }

  v5 = (v141 + v5);
  if ((v100 & 0x40000000) == 0)
  {
LABEL_453:
    if ((v100 & 0x80000000) == 0)
    {
      goto LABEL_503;
    }

    goto LABEL_497;
  }

LABEL_491:
  v142 = *(this + 96);
  if ((v142 & 0x80000000) != 0)
  {
    v143 = 12;
  }

  else if (v142 >= 0x80)
  {
    v143 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v142) + 2;
    v100 = *(this + 120);
  }

  else
  {
    v143 = 3;
  }

  v5 = (v143 + v5);
  if ((v100 & 0x80000000) != 0)
  {
LABEL_497:
    v144 = *(this + 97);
    if ((v144 & 0x80000000) != 0)
    {
      v145 = 12;
    }

    else if (v144 >= 0x80)
    {
      v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v144) + 2;
    }

    else
    {
      v145 = 3;
    }

    v5 = (v145 + v5);
  }

LABEL_503:
  v146 = *(this + 121);
  if (!v146)
  {
    goto LABEL_567;
  }

  if (v146)
  {
    v147 = *(this + 98);
    if ((v147 & 0x80000000) != 0)
    {
      v148 = 12;
    }

    else if (v147 >= 0x80)
    {
      v148 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147) + 2;
      v146 = *(this + 121);
    }

    else
    {
      v148 = 3;
    }

    v5 = (v148 + v5);
    if ((v146 & 2) == 0)
    {
LABEL_506:
      if ((v146 & 4) == 0)
      {
        goto LABEL_507;
      }

      goto LABEL_525;
    }
  }

  else if ((v146 & 2) == 0)
  {
    goto LABEL_506;
  }

  v149 = *(this + 99);
  if ((v149 & 0x80000000) != 0)
  {
    v150 = 12;
  }

  else if (v149 >= 0x80)
  {
    v150 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v149) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v150 = 3;
  }

  v5 = (v150 + v5);
  if ((v146 & 4) == 0)
  {
LABEL_507:
    if ((v146 & 8) == 0)
    {
      goto LABEL_508;
    }

    goto LABEL_531;
  }

LABEL_525:
  v151 = *(this + 100);
  if ((v151 & 0x80000000) != 0)
  {
    v152 = 12;
  }

  else if (v151 >= 0x80)
  {
    v152 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v152 = 3;
  }

  v5 = (v152 + v5);
  if ((v146 & 8) == 0)
  {
LABEL_508:
    if ((v146 & 0x10) == 0)
    {
      goto LABEL_509;
    }

    goto LABEL_537;
  }

LABEL_531:
  v153 = *(this + 101);
  if ((v153 & 0x80000000) != 0)
  {
    v154 = 12;
  }

  else if (v153 >= 0x80)
  {
    v154 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v153) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v154 = 3;
  }

  v5 = (v154 + v5);
  if ((v146 & 0x10) == 0)
  {
LABEL_509:
    if ((v146 & 0x20) == 0)
    {
      goto LABEL_510;
    }

    goto LABEL_543;
  }

LABEL_537:
  v155 = *(this + 104);
  if ((v155 & 0x80000000) != 0)
  {
    v156 = 12;
  }

  else if (v155 >= 0x80)
  {
    v156 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v156 = 3;
  }

  v5 = (v156 + v5);
  if ((v146 & 0x20) == 0)
  {
LABEL_510:
    if ((v146 & 0x40) == 0)
    {
      goto LABEL_511;
    }

    goto LABEL_552;
  }

LABEL_543:
  v157 = *(this + 51);
  v158 = *(v157 + 23);
  v159 = v158;
  v160 = *(v157 + 8);
  if ((v158 & 0x80u) == 0)
  {
    v161 = *(v157 + 23);
  }

  else
  {
    v161 = v160;
  }

  if (v161 >= 0x80)
  {
    v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161);
    v158 = *(v157 + 23);
    v160 = *(v157 + 8);
    v146 = *(this + 121);
    v159 = *(v157 + 23);
  }

  else
  {
    v162 = 1;
  }

  if (v159 < 0)
  {
    v158 = v160;
  }

  v5 = (v5 + v162 + v158 + 2);
  if ((v146 & 0x40) == 0)
  {
LABEL_511:
    if ((v146 & 0x80) == 0)
    {
      goto LABEL_567;
    }

    goto LABEL_561;
  }

LABEL_552:
  v163 = *(this + 53);
  v164 = *(v163 + 23);
  v165 = v164;
  v166 = *(v163 + 8);
  if ((v164 & 0x80u) == 0)
  {
    v167 = *(v163 + 23);
  }

  else
  {
    v167 = v166;
  }

  if (v167 >= 0x80)
  {
    v168 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v167);
    v164 = *(v163 + 23);
    v166 = *(v163 + 8);
    v146 = *(this + 121);
    v165 = *(v163 + 23);
  }

  else
  {
    v168 = 1;
  }

  if (v165 < 0)
  {
    v164 = v166;
  }

  v5 = (v5 + v168 + v164 + 2);
  if ((v146 & 0x80) != 0)
  {
LABEL_561:
    v169 = *(this + 105);
    if ((v169 & 0x80000000) != 0)
    {
      v170 = 12;
    }

    else if (v169 >= 0x80)
    {
      v170 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v169) + 2;
      v146 = *(this + 121);
    }

    else
    {
      v170 = 3;
    }

    v5 = (v170 + v5);
  }

LABEL_567:
  if ((v146 & 0xFF00) == 0)
  {
    goto LABEL_576;
  }

  if ((v146 & 0x100) != 0)
  {
    v171 = *(this + 108);
    if ((v171 & 0x80000000) != 0)
    {
      v172 = 12;
    }

    else if (v171 >= 0x80)
    {
      v172 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v171) + 2;
      v146 = *(this + 121);
    }

    else
    {
      v172 = 3;
    }

    v5 = (v172 + v5);
    if ((v146 & 0x200) == 0)
    {
LABEL_570:
      if ((v146 & 0x400) == 0)
      {
        goto LABEL_571;
      }

      goto LABEL_590;
    }
  }

  else if ((v146 & 0x200) == 0)
  {
    goto LABEL_570;
  }

  v173 = *(this + 109);
  if ((v173 & 0x80000000) != 0)
  {
    v174 = 12;
  }

  else if (v173 >= 0x80)
  {
    v174 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v173) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v174 = 3;
  }

  v5 = (v174 + v5);
  if ((v146 & 0x400) == 0)
  {
LABEL_571:
    if ((v146 & 0x800) == 0)
    {
      goto LABEL_572;
    }

    goto LABEL_596;
  }

LABEL_590:
  v175 = *(this + 110);
  if ((v175 & 0x80000000) != 0)
  {
    v176 = 12;
  }

  else if (v175 >= 0x80)
  {
    v176 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v175) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v176 = 3;
  }

  v5 = (v176 + v5);
  if ((v146 & 0x800) == 0)
  {
LABEL_572:
    if ((v146 & 0x1000) == 0)
    {
      goto LABEL_573;
    }

    goto LABEL_602;
  }

LABEL_596:
  v177 = *(this + 111);
  if ((v177 & 0x80000000) != 0)
  {
    v178 = 12;
  }

  else if (v177 >= 0x80)
  {
    v178 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v177) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v178 = 3;
  }

  v5 = (v178 + v5);
  if ((v146 & 0x1000) == 0)
  {
LABEL_573:
    if ((v146 & 0x2000) == 0)
    {
      goto LABEL_574;
    }

    goto LABEL_608;
  }

LABEL_602:
  v179 = *(this + 112);
  if ((v179 & 0x80000000) != 0)
  {
    v180 = 12;
  }

  else if (v179 >= 0x80)
  {
    v180 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v179) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v180 = 3;
  }

  v5 = (v180 + v5);
  if ((v146 & 0x2000) == 0)
  {
LABEL_574:
    if ((v146 & 0x4000) == 0)
    {
      goto LABEL_575;
    }

    goto LABEL_614;
  }

LABEL_608:
  v181 = *(this + 113);
  if ((v181 & 0x80000000) != 0)
  {
    v182 = 12;
  }

  else if (v181 >= 0x80)
  {
    v182 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v181) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v182 = 3;
  }

  v5 = (v182 + v5);
  if ((v146 & 0x4000) == 0)
  {
LABEL_575:
    if ((v146 & 0x8000) == 0)
    {
      goto LABEL_576;
    }

    goto LABEL_620;
  }

LABEL_614:
  v183 = *(this + 114);
  if ((v183 & 0x80000000) != 0)
  {
    v184 = 12;
  }

  else if (v183 >= 0x80)
  {
    v184 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v183) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v184 = 3;
  }

  v5 = (v184 + v5);
  if ((v146 & 0x8000) == 0)
  {
LABEL_576:
    if ((v146 & 0x10000) == 0)
    {
      goto LABEL_632;
    }

    goto LABEL_626;
  }

LABEL_620:
  v185 = *(this + 115);
  if ((v185 & 0x80000000) != 0)
  {
    v186 = 12;
  }

  else if (v185 >= 0x80)
  {
    v186 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v185) + 2;
    v146 = *(this + 121);
  }

  else
  {
    v186 = 3;
  }

  v5 = (v186 + v5);
  if ((v146 & 0x10000) != 0)
  {
LABEL_626:
    v187 = *(this + 116);
    if ((v187 & 0x80000000) != 0)
    {
      v188 = 12;
    }

    else if (v187 >= 0x80)
    {
      v188 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v187) + 2;
    }

    else
    {
      v188 = 3;
    }

    v5 = (v188 + v5);
  }

LABEL_632:
  *(this + 117) = v5;
  return v5;
}

void awd::metrics::LocationEmergencySessionStatistics::CheckTypeAndMergeFrom(std::string *this, std::string *lpsrc)
{
  {
    awd::metrics::LocationEmergencySessionStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationEmergencySessionStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationEmergencySessionStatistics::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    (*(this->__r_.__value_.__r.__words[0] + 32))(this);

    awd::metrics::LocationEmergencySessionStatistics::MergeFrom(this, a2);
  }
}

double awd::metrics::LocationEmergencySessionStatistics::Swap(awd::metrics::LocationEmergencySessionStatistics *this, awd::metrics::LocationEmergencySessionStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v7;
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
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v2;
    v8 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v8;
    v9 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v9;
    LODWORD(v8) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v8;
    LODWORD(v9) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v9;
    LODWORD(v9) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v9;
    LODWORD(v8) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v8;
    LOBYTE(v8) = *(this + 132);
    *(this + 132) = *(a2 + 132);
    *(a2 + 132) = v8;
    LOBYTE(v8) = *(this + 133);
    *(this + 133) = *(a2 + 133);
    *(a2 + 133) = v8;
    LODWORD(v8) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v8;
    v10 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v10;
    v11 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v11;
    LODWORD(v8) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v8;
    LODWORD(v8) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v8;
    LOBYTE(v8) = *(this + 134);
    *(this + 134) = *(a2 + 134);
    *(a2 + 134) = v8;
    LOBYTE(v8) = *(this + 135);
    *(this + 135) = *(a2 + 135);
    *(a2 + 135) = v8;
    LOBYTE(v8) = *(this + 164);
    *(this + 164) = *(a2 + 164);
    *(a2 + 164) = v8;
    v12 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v12;
    LOBYTE(v12) = *(this + 165);
    *(this + 165) = *(a2 + 165);
    *(a2 + 165) = v12;
    LODWORD(v12) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v12;
    LODWORD(v12) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v12;
    LOBYTE(v12) = *(this + 166);
    *(this + 166) = *(a2 + 166);
    *(a2 + 166) = v12;
    LOBYTE(v12) = *(this + 167);
    *(this + 167) = *(a2 + 167);
    *(a2 + 167) = v12;
    LODWORD(v12) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v12;
    LODWORD(v12) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v12;
    LODWORD(v12) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v12;
    LOBYTE(v12) = *(this + 212);
    *(this + 212) = *(a2 + 212);
    *(a2 + 212) = v12;
    LODWORD(v12) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v12;
    LODWORD(v12) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v12;
    LODWORD(v12) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v12;
    LODWORD(v12) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v12;
    LODWORD(v12) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v12;
    LODWORD(v12) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v12;
    LODWORD(v12) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v12;
    LOBYTE(v12) = *(this + 213);
    *(this + 213) = *(a2 + 213);
    *(a2 + 213) = v12;
    LOBYTE(v12) = *(this + 214);
    *(this + 214) = *(a2 + 214);
    *(a2 + 214) = v12;
    v13 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v13;
    v14 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v14;
    v15 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v15;
    v16 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v16;
    result = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = result;
    LODWORD(v12) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v12;
    LODWORD(v12) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v12;
    LOBYTE(v12) = *(this + 215);
    *(this + 215) = *(a2 + 215);
    *(a2 + 215) = v12;
    LODWORD(v12) = *(this + 66);
    *(this + 66) = *(a2 + 66);
    *(a2 + 66) = v12;
    LODWORD(v12) = *(this + 67);
    *(this + 67) = *(a2 + 67);
    *(a2 + 67) = v12;
    LODWORD(v12) = *(this + 68);
    *(this + 68) = *(a2 + 68);
    *(a2 + 68) = v12;
    LODWORD(v12) = *(this + 69);
    *(this + 69) = *(a2 + 69);
    *(a2 + 69) = v12;
    v18 = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v18;
    v19 = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v19;
    LODWORD(v19) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v19;
    LODWORD(v19) = *(this + 75);
    *(this + 75) = *(a2 + 75);
    *(a2 + 75) = v19;
    LOBYTE(v19) = *(this + 304);
    *(this + 304) = *(a2 + 304);
    *(a2 + 304) = v19;
    LOBYTE(v19) = *(this + 305);
    *(this + 305) = *(a2 + 305);
    *(a2 + 305) = v19;
    LOBYTE(v19) = *(this + 306);
    *(this + 306) = *(a2 + 306);
    *(a2 + 306) = v19;
    LODWORD(v19) = *(this + 77);
    *(this + 77) = *(a2 + 77);
    *(a2 + 77) = v19;
    LODWORD(v19) = *(this + 78);
    *(this + 78) = *(a2 + 78);
    *(a2 + 78) = v19;
    LODWORD(v19) = *(this + 79);
    *(this + 79) = *(a2 + 79);
    *(a2 + 79) = v19;
    LODWORD(v19) = *(this + 80);
    *(this + 80) = *(a2 + 80);
    *(a2 + 80) = v19;
    LODWORD(v19) = *(this + 81);
    *(this + 81) = *(a2 + 81);
    *(a2 + 81) = v19;
    LOBYTE(v19) = *(this + 307);
    *(this + 307) = *(a2 + 307);
    *(a2 + 307) = v19;
    LOBYTE(v19) = *(this + 328);
    *(this + 328) = *(a2 + 328);
    *(a2 + 328) = v19;
    LOBYTE(v19) = *(this + 329);
    *(this + 329) = *(a2 + 329);
    *(a2 + 329) = v19;
    LOBYTE(v19) = *(this + 330);
    *(this + 330) = *(a2 + 330);
    *(a2 + 330) = v19;
    LOBYTE(v19) = *(this + 331);
    *(this + 331) = *(a2 + 331);
    *(a2 + 331) = v19;
    LODWORD(v19) = *(this + 83);
    *(this + 83) = *(a2 + 83);
    *(a2 + 83) = v19;
    LODWORD(v19) = *(this + 84);
    *(this + 84) = *(a2 + 84);
    *(a2 + 84) = v19;
    LODWORD(v19) = *(this + 85);
    *(this + 85) = *(a2 + 85);
    *(a2 + 85) = v19;
    LOBYTE(v19) = *(this + 344);
    *(this + 344) = *(a2 + 344);
    *(a2 + 344) = v19;
    LOBYTE(v19) = *(this + 345);
    *(this + 345) = *(a2 + 345);
    *(a2 + 345) = v19;
    LOBYTE(v19) = *(this + 346);
    *(this + 346) = *(a2 + 346);
    *(a2 + 346) = v19;
    LODWORD(v19) = *(this + 87);
    *(this + 87) = *(a2 + 87);
    *(a2 + 87) = v19;
    LODWORD(v19) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v19;
    LODWORD(v19) = *(this + 89);
    *(this + 89) = *(a2 + 89);
    *(a2 + 89) = v19;
    LODWORD(v19) = *(this + 90);
    *(this + 90) = *(a2 + 90);
    *(a2 + 90) = v19;
    LODWORD(v19) = *(this + 91);
    *(this + 91) = *(a2 + 91);
    *(a2 + 91) = v19;
    LODWORD(v19) = *(this + 92);
    *(this + 92) = *(a2 + 92);
    *(a2 + 92) = v19;
    LODWORD(v19) = *(this + 93);
    *(this + 93) = *(a2 + 93);
    *(a2 + 93) = v19;
    LODWORD(v19) = *(this + 94);
    *(this + 94) = *(a2 + 94);
    *(a2 + 94) = v19;
    LODWORD(v19) = *(this + 95);
    *(this + 95) = *(a2 + 95);
    *(a2 + 95) = v19;
    LODWORD(v19) = *(this + 96);
    *(this + 96) = *(a2 + 96);
    *(a2 + 96) = v19;
    LODWORD(v19) = *(this + 97);
    *(this + 97) = *(a2 + 97);
    *(a2 + 97) = v19;
    LODWORD(v19) = *(this + 98);
    *(this + 98) = *(a2 + 98);
    *(a2 + 98) = v19;
    LODWORD(v19) = *(this + 99);
    *(this + 99) = *(a2 + 99);
    *(a2 + 99) = v19;
    LODWORD(v19) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v19;
    LODWORD(v19) = *(this + 101);
    *(this + 101) = *(a2 + 101);
    *(a2 + 101) = v19;
    LODWORD(v19) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v19;
    v20 = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v20;
    v21 = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v21;
    LODWORD(v21) = *(this + 105);
    *(this + 105) = *(a2 + 105);
    *(a2 + 105) = v21;
    LODWORD(v21) = *(this + 108);
    *(this + 108) = *(a2 + 108);
    *(a2 + 108) = v21;
    LODWORD(v21) = *(this + 109);
    *(this + 109) = *(a2 + 109);
    *(a2 + 109) = v21;
    LODWORD(v21) = *(this + 110);
    *(this + 110) = *(a2 + 110);
    *(a2 + 110) = v21;
    LODWORD(v21) = *(this + 111);
    *(this + 111) = *(a2 + 111);
    *(a2 + 111) = v21;
    LODWORD(v21) = *(this + 112);
    *(this + 112) = *(a2 + 112);
    *(a2 + 112) = v21;
    LODWORD(v21) = *(this + 113);
    *(this + 113) = *(a2 + 113);
    *(a2 + 113) = v21;
    LODWORD(v21) = *(this + 114);
    *(this + 114) = *(a2 + 114);
    *(a2 + 114) = v21;
    LODWORD(v21) = *(this + 115);
    *(this + 115) = *(a2 + 115);
    *(a2 + 115) = v21;
    LODWORD(v21) = *(this + 116);
    *(this + 116) = *(a2 + 116);
    *(a2 + 116) = v21;
    LODWORD(v21) = *(this + 118);
    *(this + 118) = *(a2 + 118);
    *(a2 + 118) = v21;
    LODWORD(v21) = *(this + 119);
    *(this + 119) = *(a2 + 119);
    *(a2 + 119) = v21;
    LODWORD(v21) = *(this + 120);
    *(this + 120) = *(a2 + 120);
    *(a2 + 120) = v21;
    LODWORD(v21) = *(this + 121);
    *(this + 121) = *(a2 + 121);
    *(a2 + 121) = v21;
    LODWORD(v21) = *(this + 117);
    *(this + 117) = *(a2 + 117);
    *(a2 + 117) = v21;
  }

  return result;
}

double awd::metrics::LocationMapMatching::SharedCtor(awd::metrics::LocationMapMatching *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

awd::metrics::LocationMapMatching *awd::metrics::LocationMapMatching::LocationMapMatching(awd::metrics::LocationMapMatching *this, const awd::metrics::LocationMapMatching *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4ED50;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  awd::metrics::LocationMapMatching::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMapMatching::MergeFrom(awd::metrics::LocationMapMatching *this, const awd::metrics::LocationMapMatching *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 10);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 10) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 6);
    *(this + 10) |= 4u;
    *(this + 6) = v9;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_16:
    v10 = *(a2 + 7);
    *(this + 10) |= 8u;
    *(this + 7) = v10;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = v5;
  }
}

void sub_296411254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMapMatching::~LocationMapMatching(awd::metrics::LocationMapMatching *this)
{
  *this = &unk_2A1D4ED50;
  awd::metrics::LocationMapMatching::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4ED50;
  awd::metrics::LocationMapMatching::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4ED50;
  awd::metrics::LocationMapMatching::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMapMatching::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationMapMatching::default_instance(awd::metrics::LocationMapMatching *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMapMatching::default_instance_;
  if (!awd::metrics::LocationMapMatching::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMapMatching::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMapMatching::Clear(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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

    *(this + 24) = 0;
    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::LocationMapMatching::MergePartialFromCodedStream(awd::metrics::LocationMapMatching *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x29EDC9758];
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

          v12 = *(this + 10);
          goto LABEL_33;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v16 >= v15 || (v17 = *v16, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v17;
          v18 = v16 + 1;
          *(a2 + 1) = v18;
        }

        v12 = *(this + 10) | 1;
        *(this + 10) = v12;
        if (v18 < v15 && *v18 == 18)
        {
          *(a2 + 1) = v18 + 1;
LABEL_33:
          *(this + 10) = v12 | 2;
          if (*(this + 2) == v5)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v19 < v10 && *v19 == 24)
          {
            v13 = v19 + 1;
            *(a2 + 1) = v13;
LABEL_39:
            v29 = 0;
            if (v13 >= v10 || (v20 = *v13, (v20 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29);
              if (!result)
              {
                return result;
              }

              v20 = v29;
              v21 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v21 = v13 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 6) = v20;
            *(this + 10) |= 4u;
            if (v21 < v10 && *v21 == 32)
            {
              v14 = v21 + 1;
              *(a2 + 1) = v14;
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
        v10 = *(a2 + 2);
        goto LABEL_39;
      }

      if (v8 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_22;
      }

      v14 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_47:
      v28 = 0;
      if (v14 >= v10 || (v22 = *v14, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
        if (!result)
        {
          return result;
        }

        v22 = v28;
        v23 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v23 = v14 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 7) = v22;
      *(this + 10) |= 8u;
      if (v23 < v10 && *v23 == 40)
      {
        v11 = v23 + 1;
        *(a2 + 1) = v11;
LABEL_55:
        v27 = 0;
        if (v11 >= v10 || (v24 = *v11, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
          if (!result)
          {
            return result;
          }

          v24 = v27;
          v25 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v25 = v11 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 8) = v24;
        *(this + 10) |= 0x10u;
        if (v25 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_55;
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

uint64_t awd::metrics::LocationMapMatching::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, v5[7], a2, a4);
    if ((v5[10] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, v5[6], a2, a4);
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

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, v7, a2, a4);
}

uint64_t awd::metrics::LocationMapMatching::ByteSize(awd::metrics::LocationMapMatching *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_38;
  }

  if (*(this + 40))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 10);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_16;
    }
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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v3 = *(this + 10);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v4 + v10 + v6 + 1);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(this + 6);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v3 = *(this + 10);
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v13 = *(this + 7);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 10);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x10) != 0)
  {
LABEL_32:
    v15 = *(this + 8);
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

    v4 = (v16 + v4);
  }

LABEL_38:
  *(this + 9) = v4;
  return v4;
}

void awd::metrics::LocationMapMatching::CheckTypeAndMergeFrom(awd::metrics::LocationMapMatching *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationMapMatching::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMapMatching::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMapMatching::CopyFrom(awd::metrics::LocationMapMatching *this, const awd::metrics::LocationMapMatching *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMapMatching::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMapMatching::Swap(uint64_t this, awd::metrics::LocationMapMatching *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return this;
}

double awd::metrics::LocationRealTimeHarvest::SharedCtor(awd::metrics::LocationRealTimeHarvest *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationRealTimeHarvest *awd::metrics::LocationRealTimeHarvest::LocationRealTimeHarvest(awd::metrics::LocationRealTimeHarvest *this, const awd::metrics::LocationRealTimeHarvest *a2)
{
  *this = &unk_2A1D4EDC8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  awd::metrics::LocationRealTimeHarvest::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationRealTimeHarvest::MergeFrom(awd::metrics::LocationRealTimeHarvest *this, const awd::metrics::LocationRealTimeHarvest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v6 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 13);
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

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 13) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 13);
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
    v8 = *(a2 + 3);
    *(this + 13) |= 4u;
    *(this + 3) = v8;
    v4 = *(a2 + 13);
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
    v9 = *(a2 + 4);
    *(this + 13) |= 8u;
    *(this + 4) = v9;
    if ((*(a2 + 13) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = v5;
  }
}

void sub_296411D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationRealTimeHarvest::~LocationRealTimeHarvest(awd::metrics::LocationRealTimeHarvest *this)
{
  *this = &unk_2A1D4EDC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EDC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EDC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationRealTimeHarvest::default_instance(awd::metrics::LocationRealTimeHarvest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationRealTimeHarvest::default_instance_;
  if (!awd::metrics::LocationRealTimeHarvest::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationRealTimeHarvest::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationRealTimeHarvest::Clear(uint64_t this)
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

uint64_t awd::metrics::LocationRealTimeHarvest::MergePartialFromCodedStream(awd::metrics::LocationRealTimeHarvest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        *(this + 13) |= 1u;
        if (v15 < v8 && *v15 == 16)
        {
          v10 = v15 + 1;
          *(a2 + 1) = v10;
LABEL_32:
          v25 = 0;
          if (v10 >= v8 || (v16 = *v10, (v16 & 0x8000000000000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v25);
            if (!result)
            {
              return result;
            }

            v16 = v25;
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v17 = v10 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 2) = v16;
          *(this + 13) |= 2u;
          if (v17 < v8 && *v17 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_40:
            v25 = 0;
            if (v11 >= v8 || (v18 = *v11, (v18 & 0x8000000000000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v25);
              if (!result)
              {
                return result;
              }

              v18 = v25;
              v19 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v19 = v11 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 3) = v18;
            *(this + 13) |= 4u;
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v20;
        v21 = v12 + 1;
        *(a2 + 1) = v21;
      }

      *(this + 13) |= 8u;
      if (v21 < v8 && *v21 == 40)
      {
        v9 = v21 + 1;
        *(a2 + 1) = v9;
LABEL_56:
        if (v9 >= v8 || (v22 = *v9, v22 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v22;
          v23 = v9 + 1;
          *(a2 + 1) = v23;
        }

        *(this + 13) |= 0x10u;
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

uint64_t awd::metrics::LocationRealTimeHarvest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
    if ((*(v5 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
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
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v7, a2, a4);
}

uint64_t awd::metrics::LocationRealTimeHarvest::ByteSize(awd::metrics::LocationRealTimeHarvest *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_12;
  }

  if (*(this + 52))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 13);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((*(this + 52) & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v3 = *(this + 13);
  }

LABEL_8:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    if ((*(this + 13) & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  v3 = *(this + 13);
  if ((v3 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v3 & 0x10) != 0)
  {
LABEL_11:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  }

LABEL_12:
  *(this + 12) = v4;
  return v4;
}

void awd::metrics::LocationRealTimeHarvest::CheckTypeAndMergeFrom(awd::metrics::LocationRealTimeHarvest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationRealTimeHarvest::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationRealTimeHarvest::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationRealTimeHarvest::CopyFrom(awd::metrics::LocationRealTimeHarvest *this, const awd::metrics::LocationRealTimeHarvest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationRealTimeHarvest::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationRealTimeHarvest::Swap(uint64_t this, awd::metrics::LocationRealTimeHarvest *a2)
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
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

double awd::metrics::LocationSecondaryDeviceRequest::SharedCtor(awd::metrics::LocationSecondaryDeviceRequest *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationSecondaryDeviceRequest *awd::metrics::LocationSecondaryDeviceRequest::LocationSecondaryDeviceRequest(awd::metrics::LocationSecondaryDeviceRequest *this, const awd::metrics::LocationSecondaryDeviceRequest *a2)
{
  *this = &unk_2A1D4EE40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  awd::metrics::LocationSecondaryDeviceRequest::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationSecondaryDeviceRequest::MergeFrom(awd::metrics::LocationSecondaryDeviceRequest *this, const awd::metrics::LocationSecondaryDeviceRequest *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 13);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 4);
  *(this + 13) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 13);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 5);
  *(this + 13) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 6);
  *(this + 13) |= 8u;
  *(this + 6) = v10;
  v4 = *(a2 + 13);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 8);
    *(this + 13) |= 0x20u;
    *(this + 8) = v12;
    v4 = *(a2 + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 7);
  *(this + 13) |= 0x10u;
  *(this + 7) = v11;
  v4 = *(a2 + 13);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 9);
  *(this + 13) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 13);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 13) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 13);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 11);
    *(this + 13) |= 0x100u;
    *(this + 11) = v6;
  }
}

void sub_2964126E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationSecondaryDeviceRequest::~LocationSecondaryDeviceRequest(awd::metrics::LocationSecondaryDeviceRequest *this)
{
  *this = &unk_2A1D4EE40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EE40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EE40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationSecondaryDeviceRequest::default_instance(awd::metrics::LocationSecondaryDeviceRequest *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationSecondaryDeviceRequest::default_instance_;
  if (!awd::metrics::LocationSecondaryDeviceRequest::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationSecondaryDeviceRequest::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationSecondaryDeviceRequest::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::LocationSecondaryDeviceRequest::MergePartialFromCodedStream(awd::metrics::LocationSecondaryDeviceRequest *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v16 = *(a2 + 1);
            v8 = *(a2 + 2);
LABEL_54:
            if (v16 >= v8 || (v22 = *v16, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v22;
              v23 = v16 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 13) |= 4u;
            if (v23 < v8 && *v23 == 32)
            {
              v11 = v23 + 1;
              *(a2 + 1) = v11;
LABEL_62:
              if (v11 >= v8 || (v24 = *v11, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v24;
                v25 = v11 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 13) |= 8u;
              if (v25 < v8 && *v25 == 40)
              {
                v18 = v25 + 1;
                *(a2 + 1) = v18;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v10 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
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

            *(this + 13) |= 1u;
            if (v15 < v8 && *v15 == 16)
            {
              v10 = v15 + 1;
              *(a2 + 1) = v10;
LABEL_46:
              if (v10 >= v8 || (v20 = *v10, v20 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v21 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v20;
                v21 = v10 + 1;
                *(a2 + 1) = v21;
              }

              *(this + 13) |= 2u;
              if (v21 < v8 && *v21 == 24)
              {
                v16 = v21 + 1;
                *(a2 + 1) = v16;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_70:
        if (v18 >= v8 || (v26 = *v18, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v26;
          v27 = v18 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 13) |= 0x10u;
        if (v27 < v8 && *v27 == 48)
        {
          v12 = v27 + 1;
          *(a2 + 1) = v12;
LABEL_78:
          if (v12 >= v8 || (v28 = *v12, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v28;
            v29 = v12 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 13) |= 0x20u;
          if (v29 < v8 && *v29 == 56)
          {
            v17 = v29 + 1;
            *(a2 + 1) = v17;
LABEL_86:
            if (v17 >= v8 || (v30 = *v17, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v31 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v30;
              v31 = v17 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 13) |= 0x40u;
            if (v31 < v8 && *v31 == 64)
            {
              v19 = v31 + 1;
              *(a2 + 1) = v19;
              goto LABEL_94;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_86;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_94:
      if (v19 >= v8 || (v32 = *v19, v32 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
        if (!result)
        {
          return result;
        }

        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 10) = v32;
        v33 = v19 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 13) |= 0x80u;
      if (v33 < v8 && *v33 == 72)
      {
        v9 = v33 + 1;
        *(a2 + 1) = v9;
LABEL_102:
        if (v9 >= v8 || (v34 = *v9, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v34;
          v35 = v9 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 13) |= 0x100u;
        if (v35 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_102;
    }

LABEL_37:
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

uint64_t awd::metrics::LocationSecondaryDeviceRequest::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[13];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[13];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
    if ((v5[13] & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[13];
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = v5[11];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t awd::metrics::LocationSecondaryDeviceRequest::ByteSize(awd::metrics::LocationSecondaryDeviceRequest *this, unint64_t a2)
{
  v3 = *(this + 13);
  if (!v3)
  {
    v4 = 0;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 13);
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v6 = 2;
  }

  v4 = (v6 + v4);
LABEL_12:
  if ((v3 & 4) != 0)
  {
    v7 = *(this + 5);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 13);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_14:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_14;
  }

  v9 = *(this + 6);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v10 = 2;
  }

  v4 = (v10 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_15:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_28:
  v11 = *(this + 7);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_16:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_32:
  v13 = *(this + 8);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_17:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_36:
  v15 = *(this + 9);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x80) == 0)
  {
LABEL_18:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

LABEL_40:
  v17 = *(this + 10);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(this + 13);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x100) != 0)
  {
LABEL_44:
    v19 = *(this + 11);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
  }

LABEL_48:
  *(this + 12) = v4;
  return v4;
}

void awd::metrics::LocationSecondaryDeviceRequest::CheckTypeAndMergeFrom(awd::metrics::LocationSecondaryDeviceRequest *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::LocationSecondaryDeviceRequest::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationSecondaryDeviceRequest::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationSecondaryDeviceRequest::CopyFrom(awd::metrics::LocationSecondaryDeviceRequest *this, const awd::metrics::LocationSecondaryDeviceRequest *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationSecondaryDeviceRequest::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationSecondaryDeviceRequest::Swap(uint64_t this, awd::metrics::LocationSecondaryDeviceRequest *a2)
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
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
  }

  return this;
}

uint64_t awd::metrics::CompassSession_Rotation::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::CompassSession_Rotation *awd::metrics::CompassSession_Rotation::CompassSession_Rotation(awd::metrics::CompassSession_Rotation *this, const awd::metrics::CompassSession_Rotation *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4EEB8;
  *(this + 6) = 0;
  awd::metrics::CompassSession_Rotation::MergeFrom(this, a2);
  return this;
}

float awd::metrics::CompassSession_Rotation::MergeFrom(awd::metrics::CompassSession_Rotation *this, const awd::metrics::CompassSession_Rotation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 24);
  if (v5)
  {
    if (*(a2 + 24))
    {
      result = *(a2 + 2);
      *(this + 6) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = result;
    if ((*(a2 + 6) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = result;
  }

  return result;
}

void sub_296413338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CompassSession_Rotation::~CompassSession_Rotation(awd::metrics::CompassSession_Rotation *this)
{
  *this = &unk_2A1D4EEB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EEB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EEB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::CompassSession_Rotation::default_instance(awd::metrics::CompassSession_Rotation *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CompassSession_Rotation::default_instance_;
  if (!awd::metrics::CompassSession_Rotation::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::CompassSession_Rotation::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::CompassSession_Rotation::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(awd::metrics::CompassSession_Rotation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v8 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v12;
        *(this + 6) |= 4u;
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

      if (v7 != 1 || v8 != 5)
      {
        goto LABEL_20;
      }

      v14 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v14) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v14;
      *(this + 6) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 21)
      {
        *(a2 + 1) = v9 + 1;
LABEL_15:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v13;
        *(this + 6) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 29)
        {
          *(a2 + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 5)
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

uint64_t awd::metrics::CompassSession_Rotation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 24);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v4 + 12), a3);
    if ((*(v4 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v4 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v6, a3);
}

uint64_t awd::metrics::CompassSession_Rotation::ByteSize(awd::metrics::CompassSession_Rotation *this)
{
  v1 = *(this + 24);
  if (*(this + 24))
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 5) = v1;
  return v1;
}

float awd::metrics::CompassSession_Rotation::CheckTypeAndMergeFrom(awd::metrics::CompassSession_Rotation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::CompassSession_Rotation::CheckTypeAndMergeFrom();
  }

  return awd::metrics::CompassSession_Rotation::MergeFrom(this, lpsrc);
}

float awd::metrics::CompassSession_Rotation::CopyFrom(awd::metrics::CompassSession_Rotation *this, const awd::metrics::CompassSession_Rotation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::CompassSession_Rotation::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::CompassSession_Rotation::Swap(awd::metrics::CompassSession_Rotation *this, awd::metrics::CompassSession_Rotation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return result;
}

double awd::metrics::CompassSession::SharedCtor(awd::metrics::CompassSession *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0xFFFFFFFF00000000;
  *(this + 18) = 0;
  *(this + 212) = 0;
  *(this + 204) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0;
  return result;
}

awd::metrics::CompassSession *awd::metrics::CompassSession::CompassSession(awd::metrics::CompassSession *this, const awd::metrics::CompassSession *a2)
{
  *this = &unk_2A1D4EF30;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0xFFFFFFFF00000000;
  *(this + 18) = 0;
  *(this + 212) = 0;
  *(this + 204) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0;
  awd::metrics::CompassSession::MergeFrom(this, a2);
  return this;
}

void awd::metrics::CompassSession::MergeFrom(awd::metrics::CompassSession *this, const awd::metrics::CompassSession *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v52);
  }

  v4 = *(a2 + 53);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v14 = *(a2 + 1);
    *(this + 53) |= 1u;
    *(this + 1) = v14;
    v4 = *(a2 + 53);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_62;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v15 = *(a2 + 2);
  *(this + 53) |= 2u;
  v16 = *(this + 2);
  if (v16 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v16, v15);
  v4 = *(a2 + 53);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  v17 = *(a2 + 3);
  *(this + 53) |= 4u;
  *(this + 3) = v17;
  v4 = *(a2 + 53);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  v18 = *(a2 + 8);
  *(this + 53) |= 8u;
  *(this + 8) = v18;
  v4 = *(a2 + 53);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_65:
    v20 = *(a2 + 10);
    *(this + 53) |= 0x20u;
    *(this + 10) = v20;
    v4 = *(a2 + 53);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_64:
  v19 = *(a2 + 9);
  *(this + 53) |= 0x10u;
  *(this + 9) = v19;
  v4 = *(a2 + 53);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_65;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_66:
  v21 = *(a2 + 11);
  *(this + 53) |= 0x40u;
  *(this + 11) = v21;
  v4 = *(a2 + 53);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 12);
    *(this + 53) |= 0x80u;
    *(this + 12) = v5;
    v4 = *(a2 + 53);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 13);
    *(this + 53) |= 0x100u;
    *(this + 13) = v6;
    v4 = *(a2 + 53);
  }

  if ((v4 & 0x200) != 0)
  {
    *(this + 53) |= 0x200u;
    v22 = *(this + 7);
    if (!v22)
    {
      operator new();
    }

    v23 = *(a2 + 7);
    if (!v23)
    {
      v23 = *(awd::metrics::CompassSession::default_instance_ + 56);
    }

    awd::metrics::CompassSession_Rotation::MergeFrom(v22, v23);
    v4 = *(a2 + 53);
    if ((v4 & 0x400) == 0)
    {
LABEL_18:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_78;
    }
  }

  else if ((v4 & 0x400) == 0)
  {
    goto LABEL_18;
  }

  *(this + 53) |= 0x400u;
  v24 = *(this + 8);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    v25 = *(awd::metrics::CompassSession::default_instance_ + 64);
  }

  awd::metrics::CompassSession_Rotation::MergeFrom(v24, v25);
  v4 = *(a2 + 53);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_83;
  }

LABEL_78:
  *(this + 53) |= 0x800u;
  v26 = *(this + 9);
  if (!v26)
  {
    operator new();
  }

  v27 = *(a2 + 9);
  if (!v27)
  {
    v27 = *(awd::metrics::CompassSession::default_instance_ + 72);
  }

  awd::metrics::CompassSession_Rotation::MergeFrom(v26, v27);
  v4 = *(a2 + 53);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_88;
  }

LABEL_83:
  *(this + 53) |= 0x1000u;
  v28 = *(this + 10);
  if (!v28)
  {
    operator new();
  }

  v29 = *(a2 + 10);
  if (!v29)
  {
    v29 = *(awd::metrics::CompassSession::default_instance_ + 80);
  }

  awd::metrics::CompassSession_Rotation::MergeFrom(v28, v29);
  v4 = *(a2 + 53);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_93;
  }

LABEL_88:
  *(this + 53) |= 0x2000u;
  v30 = *(this + 11);
  if (!v30)
  {
    operator new();
  }

  v31 = *(a2 + 11);
  if (!v31)
  {
    v31 = *(awd::metrics::CompassSession::default_instance_ + 88);
  }

  awd::metrics::CompassSession_Rotation::MergeFrom(v30, v31);
  v4 = *(a2 + 53);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_93:
  *(this + 53) |= 0x4000u;
  v32 = *(this + 12);
  if (!v32)
  {
    operator new();
  }

  v33 = *(a2 + 12);
  if (!v33)
  {
    v33 = *(awd::metrics::CompassSession::default_instance_ + 96);
  }

  awd::metrics::CompassSession_Rotation::MergeFrom(v32, v33);
  v4 = *(a2 + 53);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v7 = *(a2 + 26);
    *(this + 53) |= 0x8000u;
    *(this + 26) = v7;
    v4 = *(a2 + 53);
  }

LABEL_24:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_34;
  }

  if ((v4 & 0x10000) != 0)
  {
    v34 = *(a2 + 27);
    *(this + 53) |= 0x10000u;
    *(this + 27) = v34;
    v4 = *(a2 + 53);
    if ((v4 & 0x20000) == 0)
    {
LABEL_27:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_101;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_27;
  }

  v35 = *(a2 + 28);
  *(this + 53) |= 0x20000u;
  *(this + 28) = v35;
  v4 = *(a2 + 53);
  if ((v4 & 0x40000) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_102;
  }

LABEL_101:
  v36 = *(a2 + 29);
  *(this + 53) |= 0x40000u;
  *(this + 29) = v36;
  v4 = *(a2 + 53);
  if ((v4 & 0x80000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_103;
  }

LABEL_102:
  v37 = *(a2 + 30);
  *(this + 53) |= 0x80000u;
  *(this + 30) = v37;
  v4 = *(a2 + 53);
  if ((v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_104;
  }

LABEL_103:
  v38 = *(a2 + 31);
  *(this + 53) |= 0x100000u;
  *(this + 31) = v38;
  v4 = *(a2 + 53);
  if ((v4 & 0x200000) == 0)
  {
LABEL_31:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_105;
  }

LABEL_104:
  v39 = *(a2 + 34);
  *(this + 53) |= 0x200000u;
  *(this + 34) = v39;
  v4 = *(a2 + 53);
  if ((v4 & 0x400000) == 0)
  {
LABEL_32:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_105:
  v40 = *(a2 + 16);
  *(this + 53) |= 0x400000u;
  *(this + 16) = v40;
  v4 = *(a2 + 53);
  if ((v4 & 0x800000) != 0)
  {
LABEL_33:
    v8 = *(a2 + 18);
    *(this + 53) |= 0x800000u;
    *(this + 18) = v8;
    v4 = *(a2 + 53);
  }

LABEL_34:
  if (!HIBYTE(v4))
  {
    goto LABEL_45;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v9 = *(a2 + 35);
    if ((v9 + 1) >= 8)
    {
      awd::metrics::CompassSession::MergeFrom();
    }

    *(this + 53) |= 0x1000000u;
    *(this + 35) = v9;
    v4 = *(a2 + 53);
  }

  if ((v4 & 0x2000000) != 0)
  {
    v45 = *(a2 + 38);
    *(this + 53) |= 0x2000000u;
    *(this + 38) = v45;
    v4 = *(a2 + 53);
    if ((v4 & 0x4000000) == 0)
    {
LABEL_40:
      if ((v4 & 0x8000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_114;
    }
  }

  else if ((v4 & 0x4000000) == 0)
  {
    goto LABEL_40;
  }

  v46 = *(a2 + 39);
  *(this + 53) |= 0x4000000u;
  *(this + 39) = v46;
  v4 = *(a2 + 53);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_115;
  }

LABEL_114:
  v47 = *(a2 + 40);
  *(this + 53) |= 0x8000000u;
  *(this + 40) = v47;
  v4 = *(a2 + 53);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_116;
  }

LABEL_115:
  v48 = *(a2 + 41);
  *(this + 53) |= 0x10000000u;
  *(this + 41) = v48;
  v4 = *(a2 + 53);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_117:
    v50 = *(a2 + 43);
    *(this + 53) |= 0x40000000u;
    *(this + 43) = v50;
    if ((*(a2 + 53) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_118;
  }

LABEL_116:
  v49 = *(a2 + 42);
  *(this + 53) |= 0x20000000u;
  *(this + 42) = v49;
  v4 = *(a2 + 53);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_117;
  }

LABEL_44:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_118:
  v51 = *(a2 + 44);
  *(this + 53) |= 0x80000000;
  *(this + 44) = v51;
LABEL_45:
  LOBYTE(v10) = *(a2 + 216);
  if (!v10)
  {
    return;
  }

  if (*(a2 + 216))
  {
    v11 = *(a2 + 45);
    *(this + 54) |= 1u;
    *(this + 45) = v11;
    v10 = *(a2 + 54);
  }

  if ((v10 & 2) != 0)
  {
    v12 = *(a2 + 46);
    if (v12 >= 3)
    {
      awd::metrics::CompassSession::MergeFrom();
    }

    *(this + 54) |= 2u;
    *(this + 46) = v12;
    v10 = *(a2 + 54);
  }

  if ((v10 & 4) != 0)
  {
    v41 = *(a2 + 47);
    *(this + 54) |= 4u;
    *(this + 47) = v41;
    v10 = *(a2 + 54);
    if ((v10 & 8) == 0)
    {
LABEL_53:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_109;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_53;
  }

  v42 = *(a2 + 48);
  *(this + 54) |= 8u;
  *(this + 48) = v42;
  v10 = *(a2 + 54);
  if ((v10 & 0x10) == 0)
  {
LABEL_54:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_110;
  }

LABEL_109:
  v43 = *(a2 + 49);
  *(this + 54) |= 0x10u;
  *(this + 49) = v43;
  v10 = *(a2 + 54);
  if ((v10 & 0x20) == 0)
  {
LABEL_55:
    if ((v10 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_56;
  }

LABEL_110:
  v44 = *(a2 + 200);
  *(this + 54) |= 0x20u;
  *(this + 200) = v44;
  if ((*(a2 + 54) & 0x40) != 0)
  {
LABEL_56:
    v13 = *(a2 + 51);
    *(this + 54) |= 0x40u;
    *(this + 51) = v13;
  }
}

void sub_29641416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CompassSession::~CompassSession(awd::metrics::CompassSession *this)
{
  *this = &unk_2A1D4EF30;
  awd::metrics::CompassSession::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EF30;
  awd::metrics::CompassSession::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EF30;
  awd::metrics::CompassSession::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::CompassSession::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  if (awd::metrics::CompassSession::default_instance_ != v1)
  {
    v4 = v1[7];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[8];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[9];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[10];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[11];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    this = v1[12];
    if (this)
    {
      v9 = *(*this + 8);

      return v9();
    }
  }

  return this;
}

uint64_t awd::metrics::CompassSession::default_instance(awd::metrics::CompassSession *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CompassSession::default_instance_;
  if (!awd::metrics::CompassSession::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::CompassSession::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::CompassSession::Clear(uint64_t this)
{
  v1 = *(this + 212);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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

    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 48) = 0;
    *(this + 40) = 0;
    v1 = *(this + 212);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    if ((v1 & 0x200) != 0)
    {
      v3 = *(this + 56);
      if (v3)
      {
        if (*(v3 + 24))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    if ((v1 & 0x400) != 0)
    {
      v4 = *(this + 64);
      if (v4)
      {
        if (*(v4 + 24))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    if ((v1 & 0x800) != 0)
    {
      v5 = *(this + 72);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    if ((v1 & 0x1000) != 0)
    {
      v6 = *(this + 80);
      if (v6)
      {
        if (*(v6 + 24))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        *(v6 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    if ((v1 & 0x2000) != 0)
    {
      v7 = *(this + 88);
      if (v7)
      {
        if (*(v7 + 24))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        *(v7 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    if ((v1 & 0x4000) != 0)
    {
      v8 = *(this + 96);
      if (v8)
      {
        if (*(v8 + 24))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
        }

        *(v8 + 24) = 0;
        v1 = *(this + 212);
      }
    }

    *(this + 104) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 144) = 0;
    *(this + 108) = 0u;
    *(this + 124) = 0u;
  }

  if (HIBYTE(v1))
  {
    *(this + 140) = -1;
    *(this + 160) = 0;
    *(this + 168) = 0;
    *(this + 152) = 0;
    *(this + 176) = 0;
  }

  if (*(this + 216))
  {
    *(this + 204) = 0;
    *(this + 188) = 0;
    *(this + 180) = 0;
    *(this + 193) = 0;
  }

  *(this + 212) = 0;
  return this;
}

uint64_t awd::metrics::CompassSession::MergePartialFromCodedStream(awd::metrics::CompassSession *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          goto LABEL_86;
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

        *(this + 53) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v26 = v11 + 1;
          *(a2 + 1) = v26;
          goto LABEL_95;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v26 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_95:
        if (v26 >= v8 || (v42 = *v26, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v42;
          v43 = v26 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 53) |= 4u;
        if (v43 >= v8 || *v43 != 56)
        {
          continue;
        }

        v27 = v43 + 1;
        *(a2 + 1) = v27;
LABEL_103:
        v144 = 0;
        if (v27 >= v8 || (v44 = *v27, (v44 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144);
          if (!result)
          {
            return result;
          }

          v44 = v144;
          v45 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v45 = v27 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 8) = v44;
        *(this + 53) |= 8u;
        if (v45 >= v8 || *v45 != 64)
        {
          continue;
        }

        v30 = v45 + 1;
        *(a2 + 1) = v30;
LABEL_111:
        v144 = 0;
        if (v30 >= v8 || (v46 = *v30, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144);
          if (!result)
          {
            return result;
          }

          v46 = v144;
          v47 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v47 = v30 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 10) = v46;
        v28 = *(this + 53) | 0x20;
        *(this + 53) = v28;
        if (v47 >= v8 || *v47 != 74)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_119:
        *(this + 53) = v28 | 2;
        if (*(this + 2) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v48 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v48 >= v18 || *v48 != 80)
        {
          continue;
        }

        v29 = v48 + 1;
        *(a2 + 1) = v29;
LABEL_125:
        v144 = 0;
        if (v29 >= v18 || (v49 = *v29, (v49 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144);
          if (!result)
          {
            return result;
          }

          v49 = v144;
          v50 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v50 = v29 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 9) = v49;
        *(this + 53) |= 0x10u;
        if (v50 >= v18 || *v50 != 88)
        {
          continue;
        }

        v33 = v50 + 1;
        *(a2 + 1) = v33;
LABEL_133:
        v144 = 0;
        if (v33 >= v18 || (v51 = *v33, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144);
          if (!result)
          {
            return result;
          }

          v51 = v144;
          v52 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v52 = v33 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 11) = v51;
        *(this + 53) |= 0x40u;
        if (v52 >= v18 || *v52 != 96)
        {
          continue;
        }

        v34 = v52 + 1;
        *(a2 + 1) = v34;
LABEL_141:
        v144 = 0;
        if (v34 >= v18 || (v53 = *v34, (v53 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144);
          if (!result)
          {
            return result;
          }

          v53 = v144;
          v54 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v54 = v34 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 12) = v53;
        *(this + 53) |= 0x80u;
        if (v54 >= v18 || *v54 != 104)
        {
          continue;
        }

        v19 = v54 + 1;
        *(a2 + 1) = v19;
LABEL_149:
        v144 = 0;
        if (v19 >= v18 || (v55 = *v19, (v55 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144);
          if (!result)
          {
            return result;
          }

          v55 = v144;
          v56 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          v56 = v19 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 13) = v55;
        v36 = *(this + 53) | 0x100;
        *(this + 53) = v36;
        if (v56 >= v18 || *v56 != 114)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_157:
        *(this + 53) = v36 | 0x200;
        v57 = *(this + 7);
        if (!v57)
        {
          operator new();
        }

        v144 = 0;
        v58 = *(a2 + 1);
        if (v58 >= *(a2 + 2) || *v58 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144))
          {
            return 0;
          }
        }

        else
        {
          v144 = *v58;
          *(a2 + 1) = v58 + 1;
        }

        v59 = *(a2 + 14);
        v60 = *(a2 + 15);
        *(a2 + 14) = v59 + 1;
        if (v59 >= v60)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v57, a2, v61) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v62 = *(a2 + 14);
        v63 = __OFSUB__(v62, 1);
        v64 = v62 - 1;
        if (v64 < 0 == v63)
        {
          *(a2 + 14) = v64;
        }

        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 != 122)
        {
          continue;
        }

        *(a2 + 1) = v65 + 1;
LABEL_171:
        *(this + 53) |= 0x400u;
        v66 = *(this + 8);
        if (!v66)
        {
          operator new();
        }

        v144 = 0;
        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144))
          {
            return 0;
          }
        }

        else
        {
          v144 = *v67;
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
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v66, a2, v70) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v71 = *(a2 + 14);
        v63 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v63)
        {
          *(a2 + 14) = v72;
        }

        v73 = *(a2 + 1);
        if (*(a2 + 4) - v73 <= 1 || *v73 != 130 || v73[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v73 + 2;
LABEL_186:
        *(this + 53) |= 0x800u;
        v74 = *(this + 9);
        if (!v74)
        {
          operator new();
        }

        v144 = 0;
        v75 = *(a2 + 1);
        if (v75 >= *(a2 + 2) || *v75 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144))
          {
            return 0;
          }
        }

        else
        {
          v144 = *v75;
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
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v74, a2, v78) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v79 = *(a2 + 14);
        v63 = __OFSUB__(v79, 1);
        v80 = v79 - 1;
        if (v80 < 0 == v63)
        {
          *(a2 + 14) = v80;
        }

        v81 = *(a2 + 1);
        if (*(a2 + 4) - v81 <= 1 || *v81 != 138 || v81[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v81 + 2;
LABEL_201:
        *(this + 53) |= 0x1000u;
        v82 = *(this + 10);
        if (!v82)
        {
          operator new();
        }

        v144 = 0;
        v83 = *(a2 + 1);
        if (v83 >= *(a2 + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144))
          {
            return 0;
          }
        }

        else
        {
          v144 = *v83;
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
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v82, a2, v86) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v87 = *(a2 + 14);
        v63 = __OFSUB__(v87, 1);
        v88 = v87 - 1;
        if (v88 < 0 == v63)
        {
          *(a2 + 14) = v88;
        }

        v89 = *(a2 + 1);
        if (*(a2 + 4) - v89 <= 1 || *v89 != 146 || v89[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v89 + 2;
LABEL_216:
        *(this + 53) |= 0x2000u;
        v90 = *(this + 11);
        if (!v90)
        {
          operator new();
        }

        v144 = 0;
        v91 = *(a2 + 1);
        if (v91 >= *(a2 + 2) || *v91 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144))
          {
            return 0;
          }
        }

        else
        {
          v144 = *v91;
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
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v90, a2, v94) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v95 = *(a2 + 14);
        v63 = __OFSUB__(v95, 1);
        v96 = v95 - 1;
        if (v96 < 0 == v63)
        {
          *(a2 + 14) = v96;
        }

        v97 = *(a2 + 1);
        if (*(a2 + 4) - v97 <= 1 || *v97 != 154 || v97[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v97 + 2;
LABEL_231:
        *(this + 53) |= 0x4000u;
        v98 = *(this + 12);
        if (!v98)
        {
          operator new();
        }

        v144 = 0;
        v99 = *(a2 + 1);
        if (v99 >= *(a2 + 2) || *v99 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144))
          {
            return 0;
          }
        }

        else
        {
          v144 = *v99;
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
        if (!awd::metrics::CompassSession_Rotation::MergePartialFromCodedStream(v98, a2, v102) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v103 = *(a2 + 14);
        v63 = __OFSUB__(v103, 1);
        v104 = v103 - 1;
        if (v104 < 0 == v63)
        {
          *(a2 + 14) = v104;
        }

        v105 = *(a2 + 1);
        if (*(a2 + 4) - v105 <= 1 || *v105 != 165 || v105[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v105 + 2;
LABEL_246:
        v144 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v144) & 1) == 0)
        {
          return 0;
        }

        *(this + 26) = v144;
        *(this + 53) |= 0x8000u;
        v106 = *(a2 + 1);
        if (*(a2 + 4) - v106 < 2 || *v106 != 173 || v106[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v106 + 2;
LABEL_251:
        v144 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v144) & 1) == 0)
        {
          return 0;
        }

        *(this + 27) = v144;
        *(this + 53) |= 0x10000u;
        v107 = *(a2 + 1);
        if (*(a2 + 4) - v107 < 2 || *v107 != 181 || v107[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v107 + 2;
LABEL_256:
        v144 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v144) & 1) == 0)
        {
          return 0;
        }

        *(this + 28) = v144;
        *(this + 53) |= 0x20000u;
        v108 = *(a2 + 1);
        if (*(a2 + 4) - v108 < 2 || *v108 != 189 || v108[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v108 + 2;
LABEL_261:
        v144 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v144) & 1) == 0)
        {
          return 0;
        }

        *(this + 29) = v144;
        *(this + 53) |= 0x40000u;
        v109 = *(a2 + 1);
        if (*(a2 + 4) - v109 < 2 || *v109 != 197 || v109[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v109 + 2;
LABEL_266:
        v144 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v144) & 1) == 0)
        {
          return 0;
        }

        *(this + 30) = v144;
        *(this + 53) |= 0x80000u;
        v110 = *(a2 + 1);
        if (*(a2 + 4) - v110 < 2 || *v110 != 205 || v110[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v110 + 2;
LABEL_271:
        v144 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v144) & 1) == 0)
        {
          return 0;
        }

        *(this + 31) = v144;
        *(this + 53) |= 0x100000u;
        v111 = *(a2 + 1);
        if (*(a2 + 4) - v111 < 2 || *v111 != 213 || v111[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v111 + 2;
LABEL_276:
        v144 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v144) & 1) == 0)
        {
          return 0;
        }

        *(this + 34) = v144;
        *(this + 53) |= 0x200000u;
        v112 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v20 - v112 < 2 || *v112 != 216 || v112[1] != 1)
        {
          continue;
        }

        v23 = (v112 + 2);
        *(a2 + 1) = v23;
LABEL_281:
        if (v23 >= v20 || (v113 = *v23, v113 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v114 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v113;
          v114 = (v23 + 1);
          *(a2 + 1) = v114;
        }

        *(this + 53) |= 0x400000u;
        if (v20 - v114 < 2 || *v114 != 224 || v114[1] != 1)
        {
          continue;
        }

        v21 = (v114 + 2);
        *(a2 + 1) = v21;
LABEL_290:
        if (v21 >= v20 || (v115 = *v21, v115 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v116 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v115;
          v116 = (v21 + 1);
          *(a2 + 1) = v116;
        }

        *(this + 53) |= 0x800000u;
        if (v20 - v116 < 2 || *v116 != 232 || v116[1] != 1)
        {
          continue;
        }

        v31 = (v116 + 2);
        *(a2 + 1) = v31;
LABEL_299:
        v144 = 0;
        if (v31 >= v20 || (v117 = *v31, (v117 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144);
          if (!result)
          {
            return result;
          }

          v117 = v144;
        }

        else
        {
          *(a2 + 1) = v31 + 1;
        }

        if (v117 + 1 <= 7)
        {
          *(this + 53) |= 0x1000000u;
          *(this + 35) = v117;
        }

        v118 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v14 - v118 < 2 || *v118 != 240 || v118[1] != 1)
        {
          continue;
        }

        v15 = (v118 + 2);
        *(a2 + 1) = v15;
LABEL_310:
        if (v15 >= v14 || (v119 = *v15, v119 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
          if (!result)
          {
            return result;
          }

          v120 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 38) = v119;
          v120 = (v15 + 1);
          *(a2 + 1) = v120;
        }

        *(this + 53) |= 0x2000000u;
        if (v14 - v120 < 2 || *v120 != 248 || v120[1] != 1)
        {
          continue;
        }

        v39 = (v120 + 2);
        *(a2 + 1) = v39;
LABEL_319:
        if (v39 >= v14 || (v121 = *v39, v121 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
          if (!result)
          {
            return result;
          }

          v122 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 39) = v121;
          v122 = (v39 + 1);
          *(a2 + 1) = v122;
        }

        *(this + 53) |= 0x4000000u;
        if (v14 - v122 < 2 || *v122 != 128 || v122[1] != 2)
        {
          continue;
        }

        v38 = (v122 + 2);
        *(a2 + 1) = v38;
LABEL_328:
        if (v38 >= v14 || (v123 = *v38, v123 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 40);
          if (!result)
          {
            return result;
          }

          v124 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 40) = v123;
          v124 = (v38 + 1);
          *(a2 + 1) = v124;
        }

        *(this + 53) |= 0x8000000u;
        if (v14 - v124 < 2 || *v124 != 136 || v124[1] != 2)
        {
          continue;
        }

        v22 = (v124 + 2);
        *(a2 + 1) = v22;
LABEL_337:
        if (v22 >= v14 || (v125 = *v22, v125 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 41);
          if (!result)
          {
            return result;
          }

          v126 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 41) = v125;
          v126 = (v22 + 1);
          *(a2 + 1) = v126;
        }

        *(this + 53) |= 0x10000000u;
        if (v14 - v126 < 2 || *v126 != 144 || v126[1] != 2)
        {
          continue;
        }

        v24 = (v126 + 2);
        *(a2 + 1) = v24;
LABEL_346:
        if (v24 >= v14 || (v127 = *v24, v127 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v128 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v127;
          v128 = (v24 + 1);
          *(a2 + 1) = v128;
        }

        *(this + 53) |= 0x20000000u;
        if (v14 - v128 < 2 || *v128 != 152 || v128[1] != 2)
        {
          continue;
        }

        v35 = (v128 + 2);
        *(a2 + 1) = v35;
LABEL_355:
        if (v35 >= v14 || (v129 = *v35, v129 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
          if (!result)
          {
            return result;
          }

          v130 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 43) = v129;
          v130 = (v35 + 1);
          *(a2 + 1) = v130;
        }

        *(this + 53) |= 0x40000000u;
        if (v14 - v130 < 2 || *v130 != 160 || v130[1] != 2)
        {
          continue;
        }

        v25 = (v130 + 2);
        *(a2 + 1) = v25;
LABEL_364:
        if (v25 >= v14 || (v131 = *v25, v131 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 44);
          if (!result)
          {
            return result;
          }

          v132 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 44) = v131;
          v132 = (v25 + 1);
          *(a2 + 1) = v132;
        }

        *(this + 53) |= 0x80000000;
        if (v14 - v132 < 2 || *v132 != 173 || v132[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v132 + 2;
LABEL_373:
        v144 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v144) & 1) == 0)
        {
          return 0;
        }

        *(this + 45) = v144;
        *(this + 54) |= 1u;
        v133 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v16 - v133 < 2 || *v133 != 176 || v133[1] != 2)
        {
          continue;
        }

        v17 = (v133 + 2);
        *(a2 + 1) = v17;
LABEL_378:
        v144 = 0;
        if (v17 >= v16 || (v134 = *v17, (v134 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144);
          if (!result)
          {
            return result;
          }

          v134 = v144;
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v134 <= 2)
        {
          *(this + 54) |= 2u;
          *(this + 46) = v134;
        }

        v135 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v135 < 2 || *v135 != 184 || v135[1] != 2)
        {
          continue;
        }

        v37 = (v135 + 2);
        *(a2 + 1) = v37;
LABEL_389:
        v144 = 0;
        if (v37 >= v12 || (v136 = *v37, (v136 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144);
          if (!result)
          {
            return result;
          }

          v136 = v144;
          v137 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v137 = (v37 + 1);
          *(a2 + 1) = v137;
        }

        *(this + 47) = v136;
        *(this + 54) |= 4u;
        if (v12 - v137 < 2 || *v137 != 192 || v137[1] != 2)
        {
          continue;
        }

        v40 = (v137 + 2);
        *(a2 + 1) = v40;
LABEL_398:
        if (v40 >= v12 || (v138 = *v40, v138 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
          if (!result)
          {
            return result;
          }

          v139 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 48) = v138;
          v139 = (v40 + 1);
          *(a2 + 1) = v139;
        }

        *(this + 54) |= 8u;
        if (v12 - v139 < 2 || *v139 != 200 || v139[1] != 2)
        {
          continue;
        }

        v13 = (v139 + 2);
        *(a2 + 1) = v13;
LABEL_407:
        if (v13 >= v12 || (v140 = *v13, v140 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
          if (!result)
          {
            return result;
          }

          v141 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 49) = v140;
          v141 = (v13 + 1);
          *(a2 + 1) = v141;
        }

        *(this + 54) |= 0x10u;
        if (v12 - v141 < 2 || *v141 != 208 || v141[1] != 2)
        {
          continue;
        }

        v32 = (v141 + 2);
        *(a2 + 1) = v32;
LABEL_416:
        v144 = 0;
        if (v32 >= v12 || (v142 = *v32, (v142 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v144);
          if (!result)
          {
            return result;
          }

          v142 = v144;
          v143 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v143 = (v32 + 1);
          *(a2 + 1) = v143;
        }

        *(this + 200) = v142 != 0;
        *(this + 54) |= 0x20u;
        if (v12 - v143 < 2 || *v143 != 221 || v143[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v143 + 2;
LABEL_425:
        v144 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v144))
        {
          *(this + 51) = v144;
          *(this + 54) |= 0x40u;
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
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_103;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v30 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_111;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_86;
        }

        v28 = *(this + 53);
        goto LABEL_119;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v29 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_125;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v33 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_133;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v34 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_149;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_86;
        }

        v36 = *(this + 53);
        goto LABEL_157;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_86;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_186;
        }

        goto LABEL_86;
      case 0x11u:
        if (v7 == 2)
        {
          goto LABEL_201;
        }

        goto LABEL_86;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_216;
        }

        goto LABEL_86;
      case 0x13u:
        if (v7 == 2)
        {
          goto LABEL_231;
        }

        goto LABEL_86;
      case 0x14u:
        if (v7 == 5)
        {
          goto LABEL_246;
        }

        goto LABEL_86;
      case 0x15u:
        if (v7 == 5)
        {
          goto LABEL_251;
        }

        goto LABEL_86;
      case 0x16u:
        if (v7 == 5)
        {
          goto LABEL_256;
        }

        goto LABEL_86;
      case 0x17u:
        if (v7 == 5)
        {
          goto LABEL_261;
        }

        goto LABEL_86;
      case 0x18u:
        if (v7 == 5)
        {
          goto LABEL_266;
        }

        goto LABEL_86;
      case 0x19u:
        if (v7 == 5)
        {
          goto LABEL_271;
        }

        goto LABEL_86;
      case 0x1Au:
        if (v7 == 5)
        {
          goto LABEL_276;
        }

        goto LABEL_86;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v23 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_281;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_290;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v31 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_299;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_310;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v39 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_319;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v38 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_328;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v22 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_337;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v24 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_346;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v35 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_355;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v25 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_364;
      case 0x25u:
        if (v7 == 5)
        {
          goto LABEL_373;
        }

        goto LABEL_86;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_378;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v37 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_389;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v40 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_398;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_407;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_86;
        }

        v32 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_416;
      case 0x2Bu:
        if (v7 == 5)
        {
          goto LABEL_425;
        }

        goto LABEL_86;
      default:
LABEL_86:
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

uint64_t awd::metrics::CompassSession::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 212);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 212);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 212);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xA, *(v5 + 36), a2, a4);
  v6 = *(v5 + 212);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 44), a2, a4);
  v6 = *(v5 + 212);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xC, *(v5 + 48), a2, a4);
  v6 = *(v5 + 212);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 52), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_50:
  v8 = *(v5 + 56);
  if (!v8)
  {
    v8 = *(awd::metrics::CompassSession::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v8, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_53:
  v9 = *(v5 + 64);
  if (!v9)
  {
    v9 = *(awd::metrics::CompassSession::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v9, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_56:
  v10 = *(v5 + 72);
  if (!v10)
  {
    v10 = *(awd::metrics::CompassSession::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v10, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_59:
  v11 = *(v5 + 80);
  if (!v11)
  {
    v11 = *(awd::metrics::CompassSession::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v11, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_62:
  v12 = *(v5 + 88);
  if (!v12)
  {
    v12 = *(awd::metrics::CompassSession::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v12, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

LABEL_65:
  v13 = *(v5 + 96);
  if (!v13)
  {
    v13 = *(awd::metrics::CompassSession::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v13, a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x14, a2, *(v5 + 104), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x15, a2, *(v5 + 108), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x16, a2, *(v5 + 112), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x17, a2, *(v5 + 116), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x18, a2, *(v5 + 120), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x19, a2, *(v5 + 124), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1A, a2, *(v5 + 136), a3);
  v6 = *(v5 + 212);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1B, *(v5 + 128), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x1C, *(v5 + 144), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x1D, *(v5 + 140), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 152), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 156), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 160), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 164), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_83:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 172), a2, a4);
    if ((*(v5 + 212) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(v5 + 168), a2, a4);
  v6 = *(v5 + 212);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_83;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 176), a2, a4);
LABEL_33:
  v7 = *(v5 + 216);
  if (v7)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x25, a2, *(v5 + 180), a3);
    v7 = *(v5 + 216);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_87;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x26, *(v5 + 184), a2, a4);
  v7 = *(v5 + 216);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x27, *(v5 + 188), a2, a4);
  v7 = *(v5 + 216);
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 192), a2, a4);
  v7 = *(v5 + 216);
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

LABEL_90:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2A, *(v5 + 200), a2, a4);
    if ((*(v5 + 216) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_91;
  }

LABEL_89:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(v5 + 196), a2, a4);
  v7 = *(v5 + 216);
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_90;
  }

LABEL_39:
  if ((v7 & 0x40) == 0)
  {
    return this;
  }

LABEL_91:
  v14 = *(v5 + 204);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2B, a2, v14, a3);
}

uint64_t awd::metrics::CompassSession::ByteSize(awd::metrics::CompassSession *this, unint64_t a2)
{
  v3 = *(this + 53);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_54;
  }

  if (v3)
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v3 = *(this + 53);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
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
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v3 = *(this + 53);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v4 + v10 + v6 + 1);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v3 = *(this + 53);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(this + 8);
  if ((v11 & 0x80000000) != 0)
  {
    v12 = 11;
  }

  else if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_30:
  v13 = *(this + 9);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 11;
  }

  else if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_20:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_36:
  v15 = *(this + 10);
  if ((v15 & 0x80000000) != 0)
  {
    v16 = 11;
  }

  else if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_21:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  v17 = *(this + 11);
  if ((v17 & 0x80000000) != 0)
  {
    v18 = 11;
  }

  else if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(this + 53);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_48:
    v19 = *(this + 12);
    if ((v19 & 0x80000000) != 0)
    {
      v20 = 11;
    }

    else if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
      v3 = *(this + 53);
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
  }

LABEL_54:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_126;
  }

  if ((v3 & 0x100) != 0)
  {
    v21 = *(this + 13);
    if ((v21 & 0x80000000) != 0)
    {
      v22 = 11;
    }

    else if (v21 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
      v3 = *(this + 53);
    }

    else
    {
      v22 = 2;
    }

    LODWORD(v4) = v22 + v4;
    if ((v3 & 0x200) == 0)
    {
LABEL_57:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_78;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v23 = *(this + 7);
  if (!v23)
  {
    v23 = *(awd::metrics::CompassSession::default_instance_ + 56);
  }

  v24 = *(v23 + 24);
  if (*(v23 + 24))
  {
    v25 = (v24 << 31 >> 31) & 5;
    if ((v24 & 2) != 0)
    {
      v25 += 5;
    }

    if ((v24 & 4) != 0)
    {
      v24 = v25 + 5;
    }

    else
    {
      v24 = v25;
    }
  }

  *(v23 + 20) = v24;
  LODWORD(v4) = v4 + v24 + 2;
  v3 = *(this + 53);
  if ((v3 & 0x400) == 0)
  {
LABEL_58:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_87;
  }

LABEL_78:
  v26 = *(this + 8);
  if (!v26)
  {
    v26 = *(awd::metrics::CompassSession::default_instance_ + 64);
  }

  v27 = *(v26 + 24);
  if (*(v26 + 24))
  {
    v28 = (v27 << 31 >> 31) & 5;
    if ((v27 & 2) != 0)
    {
      v28 += 5;
    }

    if ((v27 & 4) != 0)
    {
      v27 = v28 + 5;
    }

    else
    {
      v27 = v28;
    }
  }

  *(v26 + 20) = v27;
  LODWORD(v4) = v4 + v27 + 2;
  v3 = *(this + 53);
  if ((v3 & 0x800) == 0)
  {
LABEL_59:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_96;
  }

LABEL_87:
  v29 = *(this + 9);
  if (!v29)
  {
    v29 = *(awd::metrics::CompassSession::default_instance_ + 72);
  }

  v30 = *(v29 + 24);
  if (*(v29 + 24))
  {
    v31 = (v30 << 31 >> 31) & 5;
    if ((v30 & 2) != 0)
    {
      v31 += 5;
    }

    if ((v30 & 4) != 0)
    {
      v30 = v31 + 5;
    }

    else
    {
      v30 = v31;
    }
  }

  *(v29 + 20) = v30;
  LODWORD(v4) = v4 + v30 + 3;
  v3 = *(this + 53);
  if ((v3 & 0x1000) == 0)
  {
LABEL_60:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

LABEL_105:
    v35 = *(this + 11);
    if (!v35)
    {
      v35 = *(awd::metrics::CompassSession::default_instance_ + 88);
    }

    v36 = *(v35 + 24);
    if (*(v35 + 24))
    {
      v37 = (v36 << 31 >> 31) & 5;
      if ((v36 & 2) != 0)
      {
        v37 += 5;
      }

      if ((v36 & 4) != 0)
      {
        v36 = v37 + 5;
      }

      else
      {
        v36 = v37;
      }
    }

    *(v35 + 20) = v36;
    LODWORD(v4) = v4 + v36 + 3;
    v3 = *(this + 53);
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_114;
  }

LABEL_96:
  v32 = *(this + 10);
  if (!v32)
  {
    v32 = *(awd::metrics::CompassSession::default_instance_ + 80);
  }

  v33 = *(v32 + 24);
  if (*(v32 + 24))
  {
    v34 = (v33 << 31 >> 31) & 5;
    if ((v33 & 2) != 0)
    {
      v34 += 5;
    }

    if ((v33 & 4) != 0)
    {
      v33 = v34 + 5;
    }

    else
    {
      v33 = v34;
    }
  }

  *(v32 + 20) = v33;
  LODWORD(v4) = v4 + v33 + 3;
  v3 = *(this + 53);
  if ((v3 & 0x2000) != 0)
  {
    goto LABEL_105;
  }

LABEL_61:
  if ((v3 & 0x4000) != 0)
  {
LABEL_114:
    v38 = *(this + 12);
    if (!v38)
    {
      v38 = *(awd::metrics::CompassSession::default_instance_ + 96);
    }

    v39 = *(v38 + 24);
    if (*(v38 + 24))
    {
      v40 = (v39 << 31 >> 31) & 5;
      if ((v39 & 2) != 0)
      {
        v40 += 5;
      }

      if ((v39 & 4) != 0)
      {
        v39 = v40 + 5;
      }

      else
      {
        v39 = v40;
      }
    }

    *(v38 + 20) = v39;
    LODWORD(v4) = v4 + v39 + 3;
    v3 = *(this + 53);
  }

LABEL_123:
  if ((v3 & 0x8000) != 0)
  {
    v4 = (v4 + 6);
  }

  else
  {
    v4 = v4;
  }

LABEL_126:
  if ((v3 & 0xFF0000) != 0)
  {
    v41 = v4 + 6;
    if ((v3 & 0x10000) == 0)
    {
      v41 = v4;
    }

    if ((v3 & 0x20000) != 0)
    {
      v41 += 6;
    }

    if ((v3 & 0x40000) != 0)
    {
      v41 += 6;
    }

    if ((v3 & 0x80000) != 0)
    {
      v41 += 6;
    }

    if ((v3 & 0x100000) != 0)
    {
      v41 += 6;
    }

    if ((v3 & 0x200000) != 0)
    {
      v4 = v41 + 6;
    }

    else
    {
      v4 = v41;
    }

    if ((v3 & 0x400000) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 16)) + 2;
      v3 = *(this + 53);
    }

    if ((v3 & 0x800000) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 18)) + 2;
      v3 = *(this + 53);
    }
  }

  if (!HIBYTE(v3))
  {
    goto LABEL_188;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v42 = *(this + 35);
    if ((v42 & 0x80000000) != 0)
    {
      v43 = 12;
    }

    else if (v42 >= 0x80)
    {
      v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
      v3 = *(this + 53);
    }

    else
    {
      v43 = 3;
    }

    v4 = (v43 + v4);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_147:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_164;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_147;
  }

  v44 = *(this + 38);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v45 = 3;
  }

  v4 = (v45 + v4);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_148:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_168;
  }

LABEL_164:
  v46 = *(this + 39);
  if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v47 = 3;
  }

  v4 = (v47 + v4);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_149:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_172;
  }

LABEL_168:
  v48 = *(this + 40);
  if (v48 >= 0x80)
  {
    v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v49 = 3;
  }

  v4 = (v49 + v4);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_150:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_176:
    v52 = *(this + 42);
    if (v52 >= 0x80)
    {
      v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
      v3 = *(this + 53);
    }

    else
    {
      v53 = 3;
    }

    v4 = (v53 + v4);
    if ((v3 & 0x40000000) == 0)
    {
LABEL_152:
      if ((v3 & 0x80000000) == 0)
      {
        goto LABEL_188;
      }

      goto LABEL_184;
    }

    goto LABEL_180;
  }

LABEL_172:
  v50 = *(this + 41);
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v51 = 3;
  }

  v4 = (v51 + v4);
  if ((v3 & 0x20000000) != 0)
  {
    goto LABEL_176;
  }

LABEL_151:
  if ((v3 & 0x40000000) == 0)
  {
    goto LABEL_152;
  }

LABEL_180:
  v54 = *(this + 43);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v3 = *(this + 53);
  }

  else
  {
    v55 = 3;
  }

  v4 = (v55 + v4);
  if ((v3 & 0x80000000) != 0)
  {
LABEL_184:
    v56 = *(this + 44);
    if (v56 >= 0x80)
    {
      v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
    }

    else
    {
      v57 = 3;
    }

    v4 = (v57 + v4);
  }

LABEL_188:
  LOBYTE(v58) = *(this + 216);
  if (!v58)
  {
    goto LABEL_221;
  }

  if (*(this + 216))
  {
    LODWORD(v4) = v4 + 6;
  }

  if ((*(this + 216) & 2) != 0)
  {
    v59 = *(this + 46);
    if ((v59 & 0x80000000) != 0)
    {
      v60 = 12;
    }

    else if (v59 >= 0x80)
    {
      v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59) + 2;
      v58 = *(this + 54);
    }

    else
    {
      v60 = 3;
    }

    LODWORD(v4) = v60 + v4;
    if ((v58 & 4) == 0)
    {
LABEL_193:
      if ((v58 & 8) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_208;
    }
  }

  else if ((*(this + 216) & 4) == 0)
  {
    goto LABEL_193;
  }

  v61 = *(this + 47);
  if ((v61 & 0x80000000) != 0)
  {
    v62 = 12;
  }

  else if (v61 >= 0x80)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 2;
    v58 = *(this + 54);
  }

  else
  {
    v62 = 3;
  }

  LODWORD(v4) = v62 + v4;
  if ((v58 & 8) == 0)
  {
LABEL_194:
    if ((v58 & 0x10) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_212;
  }

LABEL_208:
  v63 = *(this + 48);
  if (v63 >= 0x80)
  {
    v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63) + 2;
    v58 = *(this + 54);
  }

  else
  {
    v64 = 3;
  }

  LODWORD(v4) = v64 + v4;
  if ((v58 & 0x10) != 0)
  {
LABEL_212:
    v65 = *(this + 49);
    if (v65 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
      v58 = *(this + 54);
    }

    else
    {
      v66 = 3;
    }

    LODWORD(v4) = v66 + v4;
  }

LABEL_216:
  v67 = v4 + 3;
  if ((v58 & 0x20) == 0)
  {
    v67 = v4;
  }

  if ((v58 & 0x40) != 0)
  {
    v4 = v67 + 6;
  }

  else
  {
    v4 = v67;
  }

LABEL_221:
  *(this + 52) = v4;
  return v4;
}

void awd::metrics::CompassSession::CheckTypeAndMergeFrom(awd::metrics::CompassSession *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    awd::metrics::CompassSession::CheckTypeAndMergeFrom();
  }

  awd::metrics::CompassSession::MergeFrom(this, lpsrc);
}

void awd::metrics::CompassSession::CopyFrom(awd::metrics::CompassSession *this, const awd::metrics::CompassSession *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::CompassSession::MergeFrom(this, a2);
  }
}

float awd::metrics::CompassSession::Swap(awd::metrics::CompassSession *this, awd::metrics::CompassSession *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    LODWORD(v5) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v9;
    v10 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v10;
    v11 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v11;
    v12 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v12;
    v13 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v13;
    v14 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v14;
    v15 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v15;
    v16 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v16;
    v17 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v17;
    v18 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v18;
    v19 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v19;
    v20 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v20;
    LODWORD(v20) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v20;
    LODWORD(v20) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v20;
    LODWORD(v20) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v20;
    LODWORD(v20) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v20;
    LODWORD(v20) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v20;
    LODWORD(v20) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v20;
    LODWORD(v20) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v20;
    LODWORD(v20) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v20;
    v21 = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v21;
    LODWORD(v20) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v20;
    LODWORD(v20) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v20;
    LODWORD(v20) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v20;
    LODWORD(v20) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v20;
    LOBYTE(v20) = *(this + 200);
    *(this + 200) = *(a2 + 200);
    *(a2 + 200) = v20;
    result = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = result;
    LODWORD(v20) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v20;
    LODWORD(v20) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v20;
    LODWORD(v20) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v20;
  }

  return result;
}

double awd::metrics::LocationCompassSaturations::SharedCtor(awd::metrics::LocationCompassSaturations *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationCompassSaturations *awd::metrics::LocationCompassSaturations::LocationCompassSaturations(awd::metrics::LocationCompassSaturations *this, const awd::metrics::LocationCompassSaturations *a2)
{
  *this = &unk_2A1D4EFA8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  awd::metrics::LocationCompassSaturations::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationCompassSaturations::MergeFrom(awd::metrics::LocationCompassSaturations *this, const awd::metrics::LocationCompassSaturations *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 15);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 15);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 15) |= 2u;
  *(this + 2) = v8;
  v4 = *(a2 + 15);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 3);
  *(this + 15) |= 4u;
  *(this + 3) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 8);
  *(this + 15) |= 8u;
  *(this + 8) = v10;
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 10);
    *(this + 15) |= 0x20u;
    *(this + 10) = v12;
    v4 = *(a2 + 15);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 9);
  *(this + 15) |= 0x10u;
  *(this + 9) = v11;
  v4 = *(a2 + 15);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 11);
  *(this + 15) |= 0x40u;
  *(this + 11) = v13;
  v4 = *(a2 + 15);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 12);
    *(this + 15) |= 0x80u;
    *(this + 12) = v5;
    v4 = *(a2 + 15);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 13);
    *(this + 15) |= 0x100u;
    *(this + 13) = v6;
  }
}

void sub_296416FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationCompassSaturations::~LocationCompassSaturations(awd::metrics::LocationCompassSaturations *this)
{
  *this = &unk_2A1D4EFA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EFA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EFA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationCompassSaturations::default_instance(awd::metrics::LocationCompassSaturations *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationCompassSaturations::default_instance_;
  if (!awd::metrics::LocationCompassSaturations::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationCompassSaturations::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationCompassSaturations::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 36) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::LocationCompassSaturations::MergePartialFromCodedStream(awd::metrics::LocationCompassSaturations *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v13 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v17 = *(a2 + 1);
            v11 = *(a2 + 2);
LABEL_54:
            if (v17 >= v11 || (v24 = *v17, v24 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v25 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v24;
              v25 = v17 + 1;
              *(a2 + 1) = v25;
            }

            *(this + 15) |= 4u;
            if (v25 < v11 && *v25 == 32)
            {
              v13 = v25 + 1;
              *(a2 + 1) = v13;
LABEL_62:
              v37 = 0;
              if (v13 >= v11 || (v26 = *v13, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
                if (!result)
                {
                  return result;
                }

                v26 = v37;
                v27 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                v27 = v13 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 8) = v26;
              *(this + 15) |= 8u;
              if (v27 < v11 && *v27 == 40)
              {
                v19 = v27 + 1;
                *(a2 + 1) = v19;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v14 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v14 >= v11 || (v15 = *v14, v15 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v16 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 1) = v15;
              v16 = v14 + 1;
              *(a2 + 1) = v16;
            }

            *(this + 15) |= 1u;
            if (v16 < v11 && *v16 == 16)
            {
              v12 = v16 + 1;
              *(a2 + 1) = v12;
LABEL_46:
              if (v12 >= v11 || (v22 = *v12, v22 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
                if (!result)
                {
                  return result;
                }

                v23 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 2) = v22;
                v23 = v12 + 1;
                *(a2 + 1) = v23;
              }

              *(this + 15) |= 2u;
              if (v23 < v11 && *v23 == 24)
              {
                v17 = v23 + 1;
                *(a2 + 1) = v17;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || v8 != 5)
          {
            goto LABEL_37;
          }

          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_70:
        v37 = 0;
        if (v19 >= v11 || (v28 = *v19, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
          if (!result)
          {
            return result;
          }

          v28 = v37;
          v29 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v29 = v19 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 9) = v28;
        *(this + 15) |= 0x10u;
        if (v29 < v11 && *v29 == 53)
        {
          *(a2 + 1) = v29 + 1;
LABEL_78:
          v37 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v37) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = v37;
          *(this + 15) |= 0x20u;
          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v30 < v9 && *v30 == 56)
          {
            v18 = v30 + 1;
            *(a2 + 1) = v18;
LABEL_82:
            v37 = 0;
            if (v18 >= v9 || (v31 = *v18, (v31 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
              if (!result)
              {
                return result;
              }

              v31 = v37;
              v32 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v32 = v18 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 11) = v31;
            *(this + 15) |= 0x40u;
            if (v32 < v9 && *v32 == 64)
            {
              v20 = v32 + 1;
              *(a2 + 1) = v20;
              goto LABEL_90;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_82;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v20 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_90:
      v37 = 0;
      if (v20 >= v9 || (v33 = *v20, (v33 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37);
        if (!result)
        {
          return result;
        }

        v33 = v37;
        v34 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v34 = v20 + 1;
        *(a2 + 1) = v34;
      }

      *(this + 12) = v33;
      *(this + 15) |= 0x80u;
      if (v34 < v9 && *v34 == 72)
      {
        v10 = v34 + 1;
        *(a2 + 1) = v10;
LABEL_98:
        if (v10 >= v9 || (v35 = *v10, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v35;
          v36 = v10 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 15) |= 0x100u;
        if (v36 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_98;
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