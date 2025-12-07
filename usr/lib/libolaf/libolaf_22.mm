uint64_t asn1PD_SupportedWcdmaInfo(uint64_t a1, _BYTE *a2)
{
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_5:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    return v5;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_5;
  }

  if (!v9)
  {
    return 0;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

  return v5;
}

uint64_t asn1PD_SupportedWLANApsChannel11a(uint64_t a1, _BYTE *a2)
{
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_33:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  a2[1] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[2] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[3] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[4] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[5] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[6] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[7] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[8] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[9] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[10] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[11] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[12] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[13] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[14] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  a2[15] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_33;
  }

  return v4;
}

uint64_t asn1PD_SupportedWLANApsChannel11bg(uint64_t a1, _BYTE *a2)
{
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_29:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  a2[1] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[2] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[3] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[4] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[5] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[6] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[7] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[8] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[9] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[10] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[11] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[12] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  a2[13] = Asn1Coder::GetBitFromBuffer(a1);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
    goto LABEL_29;
  }

  return v4;
}

uint64_t asn1PD_SupportedWLANApsList(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v36 = 0;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
LABEL_7:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    return v5;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
    goto LABEL_7;
  }

  *(a2 + 1) = Asn1Coder::GetBitFromBuffer(a1);
  LOBYTE(v5) = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a1 + 16);
    goto LABEL_7;
  }

  v5 = Asn1Coder::DecodeInteger(a1, 1, 0x80u, &v36);
  v35 = v9;
  v11 = (a2 + 8);
  std::vector<ASN1T_SupportedWLANApData>::clear[abi:ne200100]((a2 + 8));
  if (!v5 && v36)
  {
    v12 = 0;
    while (1)
    {
      v42 = 0;
      v44 = 0;
      v45 = 0;
      __p = 0;
      v46 = -1;
      v13 = Asn1Coder::GetBitFromBuffer(a1);
      v14 = *(a1 + 16);
      if (*(a1 + 16) || (v15 = v13, v42 = 48, Asn1Coder::GetBitStringFromBuffer(a1, 0x30u, &__p, 0), v14 = *(a1 + 16), *(a1 + 16)))
      {
        SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
        goto LABEL_28;
      }

      LOBYTE(v37) = 0;
      v16 = Asn1Coder::GetBitFromBuffer(a1);
      v14 = *(a1 + 16);
      if (*(a1 + 16))
      {
        break;
      }

      if (v16)
      {
        v17 = Asn1Coder::DecodeEnumerationExtension(a1, &v37);
      }

      else
      {
        v17 = Asn1Coder::DecodeInteger(a1, 0, 2u, &v37);
      }

      v14 = v17;
      if (v17)
      {
        SuplAsn1Logger::TraceError(v17, *(a1 + 8), *(a1 + 12));
        goto LABEL_27;
      }

      if (v37 >= 3u)
      {
        v14 = 4;
        *(a1 + 16) = 4;
        SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
        goto LABEL_27;
      }

      v46 = v37;
      if (v15)
      {
        v18 = Asn1Coder::SkipSequenceExtension(a1);
        v14 = v18;
        if (v18)
        {
          SuplAsn1Logger::TraceError(v18, *(a1 + 8), *(a1 + 12));
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_28:
      v20 = *(a2 + 16);
      v19 = *(a2 + 24);
      if (v20 >= v19)
      {
        v22 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - *v11) >> 3);
        v23 = v22 + 1;
        if (v22 + 1 > 0x666666666666666)
        {
          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        v24 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - *v11) >> 3);
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x333333333333333)
        {
          v25 = 0x666666666666666;
        }

        else
        {
          v25 = v23;
        }

        v41 = a2 + 8;
        if (v25)
        {
          if (v25 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v26 = 40 * v22;
        v37 = 0;
        v38 = v26;
        v39 = v26;
        v40 = 0;
        *v26 = v42;
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        *(v26 + 8) = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v26 + 8), __p, v44, v44 - __p);
        *(v26 + 32) = v46;
        v21 = v39 + 40;
        v39 += 40;
        v28 = *(a2 + 8);
        v27 = *(a2 + 16);
        v29 = v38 + v28 - v27;
        if (v28 != v27)
        {
          v30 = *(a2 + 8);
          v31 = v38 + v28 - v27;
          do
          {
            *v31 = *v30;
            *(v31 + 16) = 0;
            *(v31 + 24) = 0;
            *(v31 + 8) = 0;
            *(v31 + 8) = *(v30 + 8);
            *(v31 + 24) = *(v30 + 24);
            *(v30 + 8) = 0;
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            *(v31 + 32) = *(v30 + 32);
            v30 += 40;
            v31 += 40;
          }

          while (v30 != v27);
          do
          {
            v32 = *(v28 + 8);
            if (v32)
            {
              *(v28 + 16) = v32;
              operator delete(v32);
            }

            v28 += 40;
          }

          while (v28 != v27);
          v28 = *v11;
          v21 = v39;
        }

        *(a2 + 8) = v29;
        *(a2 + 16) = v21;
        v33 = *(a2 + 24);
        *(a2 + 24) = v40;
        v39 = v28;
        v40 = v33;
        v37 = v28;
        v38 = v28;
        std::__split_buffer<ASN1T_SupportedWLANApData>::~__split_buffer(&v37);
      }

      else
      {
        *v20 = v42;
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        *(v20 + 8) = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v20 + 8), __p, v44, v44 - __p);
        *(v20 + 32) = v46;
        v21 = v20 + 40;
        *(a2 + 16) = v20 + 40;
      }

      *(a2 + 16) = v21;
      if (v14)
      {
        SuplAsn1Logger::TraceError(v14, *(a1 + 8), *(a1 + 12));
        LOBYTE(v5) = v14;
      }

      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        return v5;
      }

      if (++v12 >= v36)
      {
        goto LABEL_57;
      }
    }

    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
LABEL_27:
    SuplAsn1Logger::TraceError(v14, *(a1 + 8), *(a1 + 12));
    goto LABEL_28;
  }

  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = v5;
    goto LABEL_7;
  }

LABEL_57:
  if (*a2)
  {
    v34 = asn1PD_SupportedWLANApsChannel11a(a1, (a2 + 32));
    LOBYTE(v5) = v34;
    if (v34)
    {
      goto LABEL_64;
    }
  }

  if (*(a2 + 1))
  {
    v34 = asn1PD_SupportedWLANApsChannel11bg(a1, (a2 + 48));
    LOBYTE(v5) = v34;
    if (v34)
    {
      goto LABEL_64;
    }
  }

  if (!v35)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  v34 = Asn1Coder::SkipSequenceExtension(a1);
  LOBYTE(v5) = v34;
  if (v34)
  {
LABEL_64:
    SuplAsn1Logger::TraceError(v34, *(a1 + 8), *(a1 + 12));
  }

  return v5;
}

uint64_t asn1PD_SupportedWLANInfo(uint64_t a1, _BYTE *a2)
{
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_27:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    return v5;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[1] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[2] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[3] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[4] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[5] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[6] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[7] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[8] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[9] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[10] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  a2[11] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_27;
  }

  if (!v9)
  {
    return 0;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (!v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_27;
  }

  return v5;
}

uint64_t asn1PD_SupportedNetworkInformation(uint64_t a1, _BYTE *a2)
{
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_11:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    return v5;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[1] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[2] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[3] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  if (*a2)
  {
    v8 = asn1PD_SupportedWLANInfo(a1, a2 + 4);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  if (a2[1])
  {
    v8 = asn1PD_SupportedWLANApsList(a1, (a2 + 16));
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  a2[80] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[81] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  if (a2[2])
  {
    v8 = asn1PD_SupportedWcdmaInfo(a1, a2 + 82);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_11;
    }
  }

  a2[83] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[84] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[85] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[86] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[87] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[88] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[89] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[90] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  a2[91] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_11;
  }

  if (v9)
  {
    Asn1Coder::SkipSequenceExtension(a1);
  }

  return 0;
}

uint64_t asn1PD_GNSSPosTechnology(uint64_t a1, _BYTE *a2)
{
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_15:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    return v5;
  }

  v9 = BitFromBuffer;
  *a2 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[1] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[2] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[3] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_15;
  }

  a2[4] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
LABEL_14:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_15;
  }

  a2[5] = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    goto LABEL_14;
  }

  if (!v9)
  {
    return 0;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_15;
  }

  return v5;
}

uint64_t asn1PE_MCC_MNC_Digit(uint64_t a1, unsigned __int8 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 0, 9, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_CellGlobalIdEUTRA(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = *(a1 + 16);
LABEL_25:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 12);
    v10 = *(a1 + 16);
LABEL_24:
    SuplAsn1Logger::TraceError(v10, v8, v9);
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
    goto LABEL_25;
  }

  if (*a2)
  {
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    if (v12 - v11 != 3)
    {
      *(a1 + 16) = 4;
      SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
      v4 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        LODWORD(v15) = *(a1 + 16);
LABEL_23:
        SuplAsn1Logger::TraceError(v15, v13, v14);
        v8 = *(a1 + 8);
        v9 = *(a1 + 12);
        v10 = v4;
        goto LABEL_24;
      }

      v11 = *(a2 + 1);
      v12 = *(a2 + 2);
    }

    if (v12 != v11)
    {
      v16 = 0;
      while (1)
      {
        v15 = asn1PE_MCC_MNC_Digit(a1, *(v11 + v16));
        if (v15)
        {
          break;
        }

        ++v16;
        v11 = *(a2 + 1);
        if (v16 >= *(a2 + 2) - v11)
        {
          goto LABEL_14;
        }
      }

      v4 = v15;
      v13 = *(a1 + 8);
      v14 = *(a1 + 12);
      goto LABEL_23;
    }
  }

LABEL_14:
  v15 = Asn1Coder::EncodeInteger(a1, 2, 3, *(a2 + 10) - *(a2 + 8));
  if (v15)
  {
    v4 = v15;
    v13 = *(a1 + 8);
    v14 = *(a1 + 12);
    goto LABEL_23;
  }

  v17 = *(a2 + 4);
  if (*(a2 + 5) != v17)
  {
    v18 = 0;
    while (1)
    {
      v15 = asn1PE_MCC_MNC_Digit(a1, *(v17 + v18));
      if (v15)
      {
        break;
      }

      ++v18;
      v17 = *(a2 + 4);
      if (v18 >= *(a2 + 5) - v17)
      {
        goto LABEL_20;
      }
    }

    v4 = v15;
    v13 = *(a1 + 8);
    v14 = *(a1 + 12);
    goto LABEL_23;
  }

LABEL_20:
  v19 = Asn1Coder::EncodeBitString(a1, 0, 0, 28, a2 + 7, 1);
  v4 = v19;
  if (v19)
  {
    SuplAsn1Logger::TraceError(v19, *(a1 + 8), *(a1 + 12));
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    v7 = v4;
    goto LABEL_25;
  }

  return v4;
}

uint64_t asn1PE_TrackingAreaCode(uint64_t a1, void *a2)
{
  v3 = Asn1Coder::EncodeBitString(a1, 0, 0, 16, a2, 1);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_PhysCellId(uint64_t a1, unsigned __int16 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 0, 503, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_RSRP_Range(uint64_t a1, unsigned __int8 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 0, 97, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_RSRQ_Range(uint64_t a1, unsigned __int8 a2)
{
  v3 = Asn1Coder::EncodeInteger(a1, 0, 34, a2);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  return v4;
}

uint64_t asn1PE_MeasResultListEUTRA(uint64_t a1, uint64_t *a2)
{
  v4 = Asn1Coder::EncodeInteger(a1, 1, 8, -286331153 * ((a2[1] - *a2) >> 3));
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_31;
  }

  v8 = *a2;
  if (a2[1] == *a2)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    Asn1Coder::AddBitToBuffer(a1, *(v8 + v9));
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v18 = *(a1 + 8);
      v19 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_30;
    }

    v11 = asn1PE_PhysCellId(a1, *(v8 + v9 + 2));
    if (v11)
    {
      v5 = v11;
      v18 = *(a1 + 8);
      v19 = *(a1 + 12);
      goto LABEL_30;
    }

    if (*(v8 + v9))
    {
      v12 = asn1PE_CellGlobalIdEUTRA(a1, (v8 + v9 + 8));
      if (v12)
      {
        v5 = v12;
        v22 = *(a1 + 8);
        v23 = *(a1 + 12);
      }

      else
      {
        v12 = asn1PE_TrackingAreaCode(a1, (v8 + v9 + 88));
        if (!v12)
        {
          goto LABEL_10;
        }

        v5 = v12;
        v22 = *(a1 + 8);
        v23 = *(a1 + 12);
      }

      SuplAsn1Logger::TraceError(v12, v22, v23);
      v18 = *(a1 + 8);
      v19 = *(a1 + 12);
      LODWORD(v11) = v5;
      goto LABEL_30;
    }

LABEL_10:
    Asn1Coder::AddBitToBuffer(a1, 0);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v20 = *(a1 + 8);
      v21 = *(a1 + 12);
      LODWORD(v15) = *(a1 + 16);
      goto LABEL_28;
    }

    v13 = v8 + v9;
    Asn1Coder::AddBitToBuffer(a1, *(v13 + 114) < 0x62u);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v20 = *(a1 + 8);
      v21 = *(a1 + 12);
      LODWORD(v15) = *(a1 + 16);
      goto LABEL_28;
    }

    Asn1Coder::AddBitToBuffer(a1, *(v13 + 115) < 0x23u);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v20 = *(a1 + 8);
      v21 = *(a1 + 12);
      LODWORD(v15) = *(a1 + 16);
      goto LABEL_28;
    }

    v14 = *(v13 + 114);
    if (v14 <= 0x61)
    {
      v15 = asn1PE_RSRP_Range(a1, v14);
      if (v15)
      {
        break;
      }
    }

    v16 = *(v13 + 115);
    if (v16 < 0x23)
    {
      v17 = asn1PE_RSRQ_Range(a1, v16);
      if (v17)
      {
        v5 = v17;
        goto LABEL_29;
      }
    }

    ++v10;
    v8 = *a2;
    v9 += 120;
    if (v10 >= 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3))
    {
      return 0;
    }
  }

  v5 = v15;
  v20 = *(a1 + 8);
  v21 = *(a1 + 12);
LABEL_28:
  SuplAsn1Logger::TraceError(v15, v20, v21);
LABEL_29:
  v18 = *(a1 + 8);
  v19 = *(a1 + 12);
  LODWORD(v11) = v5;
LABEL_30:
  SuplAsn1Logger::TraceError(v11, v18, v19);
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  LODWORD(v4) = v5;
LABEL_31:
  SuplAsn1Logger::TraceError(v4, v6, v7);
  return v5;
}

uint64_t asn1PE_LteCellInformation(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_17:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    return v4;
  }

  Asn1Coder::AddBitToBuffer(a1, *a2);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[1]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[2]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  Asn1Coder::AddBitToBuffer(a1, a2[3]);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
    goto LABEL_17;
  }

  v7 = asn1PE_CellGlobalIdEUTRA(a1, a2 + 8);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  v7 = asn1PE_PhysCellId(a1, *(a2 + 44));
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  v7 = asn1PE_TrackingAreaCode(a1, a2 + 12);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  if (*a2)
  {
    v7 = asn1PE_RSRP_Range(a1, a2[120]);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_17;
    }
  }

  if (a2[1])
  {
    v7 = asn1PE_RSRQ_Range(a1, a2[121]);
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_17;
    }
  }

  if (a2[2])
  {
    v7 = Asn1Coder::EncodeInteger(a1, 0, 1282, *(a2 + 61));
    if (v7)
    {
      v4 = v7;
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      goto LABEL_17;
    }
  }

  if (!a2[3])
  {
    return 0;
  }

  v7 = asn1PE_MeasResultListEUTRA(a1, a2 + 16);
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_17;
  }

  return v4;
}

uint64_t asn1PE_CellInfo_VER2(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeChoiceExtension(a1, 0);
  v14[0] = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_25:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    return v5;
  }

  v4 = Asn1Coder::EncodeOpenTypeFieldStart(a1, v14);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_25;
  }

  Asn1Coder::AddBitToBuffer(a1, 0);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = *(a1 + 16);
    goto LABEL_25;
  }

  v4 = Asn1Coder::EncodeInteger(a1, 0, 5, **(a2 + 128) - 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_25;
  }

  v8 = *(a2 + 128);
  v9 = *v8;
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
      goto LABEL_23;
    }

    if (v9 == 2)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
      goto LABEL_23;
    }

LABEL_22:
    v5 = 4;
    *(a1 + 16) = 4;
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    v12 = 4;
    goto LABEL_23;
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
      goto LABEL_23;
    }

    if (v9 == 5)
    {
      v5 = 1;
      *(a1 + 16) = 1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v12 = 1;
LABEL_23:
      SuplAsn1Logger::TraceError(v12, v10, v11);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v5 = asn1PE_LteCellInformation(a1, v8 + 8);
  if (v5)
  {
LABEL_24:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_25;
  }

  v4 = Asn1Coder::EncodeOpenTypeFieldEnd(a1, v14);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_25;
  }

  return v5;
}

uint64_t std::__split_buffer<ASN1T_SupportedWLANApData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 32);
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_01TriggerProdIndReq(NSObject **this)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga22_01TriggerProdIndReq");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (!gnssTest::ZxFactoryHandler::Ga23_34BuildZxProdIndProdMsg(this + 140, &v25) || v26 == v25)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga22_01TriggerProdIndReq");
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
    }

    v13 = 8;
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
    v22 = 0;
    v23 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v25, v26, v26 - v25);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v24);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v26 - v25), v25);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = &v24;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v5 = v24.__r_.__value_.__r.__words[0];
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReq,%s\n", v4, "ADP", 68, "Ga22_01TriggerProdIndReq", v26 - v25, v5);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
    }

    if (gnssOsa_SemWaitTimeOut(this[10], 0xC8u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = *&g_MacClockTicksToMsRelation;
        v9 = __error();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v8 * v7), "ADP", 69, "Ga22_01TriggerProdIndReq", 1543, *v9);
        LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga22_01TriggerProdIndReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
      }

      v13 = 6;
    }

    else if (gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this) == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "Ga22_01TriggerProdIndReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
      }

      v13 = 1;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "Ga22_01TriggerProdIndReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
      }

      v13 = 8;
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  return v13;
}

void sub_29966B2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(gnssTest::GnssAdaptDeviceTest *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 8;
  v1 = *(this + 9);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_34GetStatusCodeEv_block_invoke;
  block[3] = &unk_29EF6B1F0;
  block[4] = &v5;
  block[5] = this;
  dispatch_sync(v1, block);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void gnssTest::GnssAdaptDeviceTest::Ga22_02HandleProdIndicationRsp(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_02HandleProdIndicationRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  memset(&v26, 0, sizeof(v26));
  v24 = 0;
  v25 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v26);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = &v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v26.__r_.__value_.__r.__words[0];
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxRsp,%s\n", v6, "ADP", 68, "Ga22_02HandleProdIndicationRsp", *(a2 + 8) - *a2, v7);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  if (gnssTest::ZxFactoryHandler::Ga23_15ParseZxProdModeIndProdMsg(a1 + 140, a2))
  {
    v9 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v28 = 0x40000000;
    v29 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v30 = &__block_descriptor_tmp_98_0;
    v31 = a1;
    v32 = 1;
    dispatch_sync(v9, __str);
    if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = *&g_MacClockTicksToMsRelation;
      v12 = __error();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v11 * v10), "ADP", 87, "Ga22_02HandleProdIndicationRsp", 1542, *v12);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
LABEL_21:
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga22_02HandleProdIndicationRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
    }
  }

  else
  {
    v14 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v28 = 0x40000000;
    v29 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v30 = &__block_descriptor_tmp_98_0;
    v31 = a1;
    v32 = 8;
    dispatch_sync(v14, __str);
    if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = *&g_MacClockTicksToMsRelation;
      v17 = __error();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v16 * v15), "ADP", 87, "Ga22_02HandleProdIndicationRsp", 1542, *v17);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Prod Ind Rsp\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga22_02HandleProdIndicationRsp", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      goto LABEL_21;
    }
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_29966B9B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_03TriggerCpMeRomCsReq(NSObject **this)
{
  v50 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  if (gnssTest::ZxFactoryHandler::Ga23_03BuildZxCpRomCSProdMsg(this + 140, &v46) && v47 != v46)
  {
    memset(&v45, 0, sizeof(v45));
    v43 = 0;
    v44 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v46, v47, v47 - v46);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v45);
    if (__p)
    {
      v43 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = &v45;
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v5 = v45.__r_.__value_.__r.__words[0];
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CPCS,Size,%u,ZxReq,%s\n", v4, "ADP", 68, "Ga22_03TriggerCpMeRomCsReq", v47 - v46, v5);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
    }

    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v47 - v46), v46);
    if (gnssOsa_SemWaitTimeOut(this[10], 0x12Cu))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = *&g_MacClockTicksToMsRelation;
        v9 = __error();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v8 * v7), "ADP", 69, "Ga22_03TriggerCpMeRomCsReq", 1543, *v9);
        LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
      }

LABEL_16:
      v13 = 6;
      goto LABEL_17;
    }

    StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this);
    if (StatusCode != 1)
    {
      v13 = StatusCode;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CP-ME ROM CS\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "Ga22_03TriggerCpMeRomCsReq", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v21, 0, 1);
      }

      goto LABEL_17;
    }

    v47 = v46;
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      *v45.__r_.__value_.__l.__data_ = 0;
      v45.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v45.__r_.__value_.__s.__data_[0] = 0;
      *(&v45.__r_.__value_.__s + 23) = 0;
    }

    if (!gnssTest::ZxFactoryHandler::Ga23_05BuildZxMeRomCSProdMsg(this + 140, &v46) || v47 == v46)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v31 = mach_continuous_time();
        v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Build CPCS\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 69, "Ga22_03TriggerCpMeRomCsReq", 775);
        LbsOsaTrace_WriteLog(0x18u, __str, v32, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v33 = mach_continuous_time();
        v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v34, 5, 1);
      }
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v39, v46, v47, v47 - v46);
      gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &v39, &v45);
      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v23 = &v45;
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v45.__r_.__value_.__r.__words[0];
        }

        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MECS,Size,%u,ZxReq,%s\n", v22, "ADP", 68, "Ga22_03TriggerCpMeRomCsReq", v47 - v46, v23);
        LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
      }

      gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v47 - v46), v46);
      if (gnssOsa_SemWaitTimeOut(this[10], 0x12Cu))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = *&g_MacClockTicksToMsRelation;
          v27 = __error();
          v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v26 * v25), "ADP", 69, "Ga22_03TriggerCpMeRomCsReq", 1543, *v27);
          LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
        }

        goto LABEL_16;
      }

      if (gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this) == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v35 = mach_continuous_time();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
          LbsOsaTrace_WriteLog(0x18u, __str, v36, 5, 1);
        }

        v13 = 1;
        goto LABEL_17;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v37 = mach_continuous_time();
        v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
        LbsOsaTrace_WriteLog(0x18u, __str, v38, 5, 1);
      }
    }

    v13 = 8;
LABEL_17:
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    goto LABEL_24;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Build CPCS\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga22_03TriggerCpMeRomCsReq", 775);
    LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "Ga22_03TriggerCpMeRomCsReq");
    LbsOsaTrace_WriteLog(0x18u, __str, v17, 5, 1);
  }

  v13 = 8;
LABEL_24:
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v13;
}

void sub_29966C3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_04HandleCpMeRomCsRsp(uint64_t a1, uint64_t a2, int a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga22_04HandleCpMeRomCsRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  memset(&v25, 0, sizeof(v25));
  v23 = 0;
  v24 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v25);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v9 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RomCSType,%u,Size,%u,ZxRsp,%s\n", v8, "ADP", 68, "Ga22_04HandleCpMeRomCsRsp", a3, *(a2 + 8) - *a2, v9);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
  }

  if (a3 == 1)
  {
    v11 = gnssTest::ZxFactoryHandler::Ga23_06ParseZxMeRomCSProdMsg(a1 + 140, a2);
  }

  else
  {
    if (a3)
    {
      goto LABEL_19;
    }

    v11 = gnssTest::ZxFactoryHandler::Ga23_04ParseZxCpRomCSProdMsg(a1 + 140, a2);
  }

  if ((v11 & 1) == 0)
  {
LABEL_19:
    v17 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v27 = 0x40000000;
    v28 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v29 = &__block_descriptor_tmp_98_0;
    v30 = a1;
    v31 = 8;
    dispatch_sync(v17, __str);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rom Resp,RomCSType,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga22_04HandleCpMeRomCsRsp", 784, a3);
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v12 = *(a1 + 72);
  *__str = MEMORY[0x29EDCA5F8];
  v27 = 0x40000000;
  v28 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
  v29 = &__block_descriptor_tmp_98_0;
  v30 = a1;
  v31 = 1;
  dispatch_sync(v12, __str);
  if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = *&g_MacClockTicksToMsRelation;
    v15 = __error();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v14 * v13), "ADP", 87, "Ga22_04HandleCpMeRomCsRsp", 1542, *v15);
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
LABEL_22:
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga22_04HandleCpMeRomCsRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
  }

LABEL_23:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_29966C960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL gnssTest::GnssAdaptDeviceTest::Ga22_05ValidateBands(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 0;
  v12 = *MEMORY[0x29EDCA608];
  if (a2 <= 3)
  {
    if (a2 - 2 >= 2)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return v3;
        }

        v3 = (a3 - 1) < 0x20;
        if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          return v3;
        }

LABEL_23:
        bzero(__str, 0x410uLL);
        v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Band,%u,PRN,%d\n", v9);
        goto LABEL_24;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Band,%u,PRN,Fcn,%d,%d\n", v8, "ADP");
        goto LABEL_15;
      }

      return 0;
    }

LABEL_13:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Band,%u,PRN,%d,Fcn,%d\n", v4, "ADP");
LABEL_15:
      LbsOsaTrace_WriteLog(0x18u, __str, v5, 0, 1);
      return 0;
    }

    return 0;
  }

  if (a2 > 0xA)
  {
LABEL_17:
    if (a2 == 4)
    {
      v3 = (a3 + 7) < 0xE;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_19;
      }
    }

    return v3;
  }

  if (((1 << a2) & 0x6C0) != 0)
  {
    goto LABEL_13;
  }

  if (a2 == 5)
  {
    v3 = (a3 - 1) < 0x25;
    if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      return v3;
    }

    goto LABEL_23;
  }

  if (a2 != 8)
  {
    goto LABEL_17;
  }

  v3 = (a3 - 1) < 0x24;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
LABEL_19:
    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Band,%u,Fcn,%d\n", v6);
LABEL_24:
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  return v3;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_07IsFeatureSupported(gnssTest::GnssAdaptDeviceTest *a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v8 = 4;
  gnssTest::GnssAdaptDeviceTest::Ga21_01GetPlatformType(a1, &v8);
  v3 = a2 == 3 && v8 == 1;
  v4 = !v3;
  if (v3 && LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unsupported Pltfm\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "Ga22_07IsFeatureSupported", 264);
    LbsOsaTrace_WriteLog(0x18u, __str, v6, 0, 1);
  }

  return v4;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_08InjectLtlTable(gnssTest::GnssAdaptDeviceTest *this)
{
  v32 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga22_08InjectLtlTable");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  v4 = *(this + 9);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest21Ga22_08InjectLtlTableEv_block_invoke;
  block[3] = &unk_29EF6AE30;
  block[4] = &v26;
  block[5] = this;
  dispatch_sync(v4, block);
  if (*(v27 + 24) == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "Ga22_08InjectLtlTable");
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
    }

LABEL_6:
    v7 = 1;
    goto LABEL_25;
  }

  memcpy(__dst, &unk_2997604D0, sizeof(__dst));
  if (off_2A1939588)
  {
    off_2A1939588(818, __dst);
  }

  if (gnssOsa_SemWaitTimeOut(*(this + 10), 0x12Cu))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = *&g_MacClockTicksToMsRelation;
      v10 = __error();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v9 * v8), "ADP", 69, "Ga22_08InjectLtlTable", 1543, *v10);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "Ga22_08InjectLtlTable");
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 5, 1);
    }

    v7 = 6;
  }

  else
  {
    v14 = *(this + 9);
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 0x40000000;
    v24[2] = ___ZN8gnssTest19GnssAdaptDeviceTest21Ga22_08InjectLtlTableEv_block_invoke_2;
    v24[3] = &unk_29EF6AE58;
    v24[4] = &v26;
    v24[5] = this;
    dispatch_sync(v14, v24);
    if (v27[3])
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL Injected Successfully\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "Ga22_08InjectLtlTable");
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga22_08InjectLtlTable");
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }

      goto LABEL_6;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LTL Load Failed\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga22_08InjectLtlTable", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga22_08InjectLtlTable");
      LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
    }

    v7 = 8;
  }

LABEL_25:
  _Block_object_dispose(&v26, 8);
  return v7;
}

void sub_29966D3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_09ReportInitStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v16[4] = *MEMORY[0x29EDCA608];
  v11 = 0;
  v12 = &v11;
  v13 = 0x4802000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16[3] = 0;
  v5 = *(a1 + 72);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_09ReportInitStatusENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN4gnss6ResultE_block_invoke;
  block[3] = &unk_29EF6AE80;
  block[4] = &v11;
  block[5] = a1;
  dispatch_sync(v5, block);
  std::string::basic_string[abi:ne200100]<0>(__p, "Ga22_09ReportInitStatus");
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, (v12 + 5));
  gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(a1, __p, v3, v10);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  _Block_object_dispose(&v11, 8);
  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
}

void sub_29966D644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a26, 8);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26 + 40);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __Block_byref_object_dispose__2(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1);
}

void *___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_09ReportInitStatusENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN4gnss6ResultE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*(*(a1 + 32) + 8) + 40);

  return std::function<void ()(gnss::Result)>::operator=(v2, v1 + 152);
}

double gnssTest::GnssAdaptDeviceTest::Ga22_11TestStatusResponse(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s,%u\n", v8, "ADP", 73, "Ga22_11TestStatusResponse", a2, a3);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 4, 1);
  }

  v10 = *(a1 + 72);
  *__str = MEMORY[0x29EDCA5F8];
  v18 = 0x40000000;
  v19 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
  v20 = &__block_descriptor_tmp_98_0;
  v21 = a1;
  v22 = 0;
  dispatch_sync(v10, __str);
  if (*(a4 + 24))
  {
    v11 = *(a1 + 64);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest25Ga22_11TestStatusResponseENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN4gnss6ResultENS1_8functionIFvS9_EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_25_2;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a4);
    v16[8] = a3;
    dispatch_async(v11, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Status CB\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga22_11TestStatusResponse", 258);
    LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
  }

  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest25Ga22_11TestStatusResponseENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN4gnss6ResultENS1_8functionIFvS9_EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_13HandleLtlRsp(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_13HandleLtlRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  memset(&v26, 0, sizeof(v26));
  v24 = 0;
  v25 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v26);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = &v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v26.__r_.__value_.__r.__words[0];
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxRsp,%s\n", v6, "ADP", 68, "Ga22_13HandleLtlRsp", *(a2 + 8) - *a2, v7);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  v9 = gnssTest::ZxFactoryHandler::Ga23_35ParseLtlRespMsg(a1 + 140, a2);
  v10 = *(a1 + 72);
  if (v9)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest19Ga22_13HandleLtlRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2;
    block[3] = &__block_descriptor_tmp_28;
    block[4] = a1;
    dispatch_sync(v10, block);
    v11 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v28 = 0x40000000;
    v29 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v30 = &__block_descriptor_tmp_98_0;
    v31 = a1;
    v32 = 1;
    dispatch_sync(v11, __str);
  }

  else
  {
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 0x40000000;
    v22[2] = ___ZN8gnssTest19GnssAdaptDeviceTest19Ga22_13HandleLtlRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke;
    v22[3] = &__block_descriptor_tmp_26;
    v22[4] = a1;
    dispatch_sync(v10, v22);
    v12 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v28 = 0x40000000;
    v29 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v30 = &__block_descriptor_tmp_98_0;
    v31 = a1;
    v32 = 8;
    dispatch_sync(v12, __str);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Parse LTL\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga22_13HandleLtlRsp", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
    }
  }

  if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = *&g_MacClockTicksToMsRelation;
    v17 = __error();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v16 * v15), "ADP", 87, "Ga22_13HandleLtlRsp", 1542, *v17);
    LbsOsaTrace_WriteLog(0x18u, __str, v18, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "Ga22_13HandleLtlRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_29966DF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_14TriggerCwModulated(NSObject **a1, int a2, int a3, int a4, int a5, int a6, double a7)
{
  v47 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga22_14TriggerCwModulated");
    LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  memset(&v42, 0, sizeof(v42));
  if (!gnssTest::ZxFactoryHandler::Ga23_07BuildZxMeCwModProdMsg(a1 + 140, &v43, a3, a4, a5, a6, a7) || v44 == v43)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "ADP", 68, "Ga22_14TriggerCwModulated");
      LbsOsaTrace_WriteLog(0x18u, __str, v27, 5, 1);
    }

    v25 = 0;
  }

  else
  {
    __p = 0;
    v40 = 0;
    v41 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v43, v44, v44 - v43);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v42);
    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v17 = &v42;
      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = v42.__r_.__value_.__r.__words[0];
      }

      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReq,%s\n", v16, "ADP", 68, "Ga22_14TriggerCwModulated", v44 - v43, v17);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
    }

    v19 = 1000 * a2;
    if (!a2)
    {
      v19 = 20000;
    }

    v20 = v19 / (a6 + 100);
    if (v20)
    {
      v21 = 0;
      while (1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Iteration,%u,%u\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga22_14TriggerCwModulated", v20, v21 + 1);
          LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
        }

        gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(a1, (v44 - v43), v43);
        if (gnssOsa_SemWaitTimeOut(a1[10], a6 + 100))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v31 = mach_continuous_time();
            v32 = *&g_MacClockTicksToMsRelation;
            v33 = __error();
            v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v32 * v31), "ADP", 69, "Ga22_14TriggerCwModulated", 1543, *v33);
            LbsOsaTrace_WriteLog(0x18u, __str, v34, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v35 = mach_continuous_time();
            v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 68, "Ga22_14TriggerCwModulated");
            LbsOsaTrace_WriteLog(0x18u, __str, v36, 5, 1);
          }

          v25 = 6;
          goto LABEL_24;
        }

        StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(a1);
        if (StatusCode != 1)
        {
          break;
        }

        if (v20 == ++v21)
        {
          v25 = 1;
          goto LABEL_30;
        }
      }

      v25 = StatusCode;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v37 = mach_continuous_time();
        v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Test Completed with Failure\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 69, "Ga22_14TriggerCwModulated", 257);
        LbsOsaTrace_WriteLog(0x18u, __str, v38, 0, 1);
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }

    v25 = 0;
LABEL_30:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
LABEL_31:
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga22_14TriggerCwModulated");
      LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
    }
  }

LABEL_24:
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v25;
}

void sub_29966E6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_15HandleCwModulatedRsp(NSObject **a1, uint64_t a2, int a3)
{
  v46 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga22_15HandleCwModulatedRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v7, 5, 1);
  }

  memset(&v39, 0, sizeof(v39));
  v37 = 0;
  v38 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v39);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v9 = &v39;
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v39.__r_.__value_.__r.__words[0];
    }

    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxRsp,%s\n", v8, "ADP", 68, "Ga22_15HandleCwModulatedRsp", *(a2 + 8) - *a2, v9);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 5, 1);
  }

  if (*(a2 + 8) - *a2 > 8uLL)
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0x7FF8000000000000;
    if (gnssTest::ZxFactoryHandler::Ga23_08ParseZxMeCwModProdMsg(a1 + 140, a2, &v33, a3))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CN0,%f,Power,%f,FreqOffsetHz,%f,band,%u,fcn,%d,prn,%d\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "Ga22_15HandleCwModulatedRsp", *(&v33 + 1), *&v34, *(&v34 + 1), v33, DWORD1(v33), DWORD1(v33));
        LbsOsaTrace_WriteLog(0x18u, __str, v21, 4, 1);
      }

      if ((*(&v33 + 1) < 26.0 || *&v34 < -160.0 || fabs(*(&v34 + 1)) > 3200.0) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Meas are out of range\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 87, "Ga22_15HandleCwModulatedRsp", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 2, 1);
      }

      operator new();
    }

    v24 = a1[9];
    *__str = MEMORY[0x29EDCA5F8];
    v41 = 0x40000000;
    v42 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v43 = &__block_descriptor_tmp_98_0;
    v44 = a1;
    v45 = 8;
    dispatch_sync(v24, __str);
    if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v26 = *&g_MacClockTicksToMsRelation;
      v27 = __error();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v26 * v25), "ADP", 87, "Ga22_15HandleCwModulatedRsp", 1542, *v27);
      LbsOsaTrace_WriteLog(0x18u, __str, v28, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CWMod Invalid Pl\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "Ga22_15HandleCwModulatedRsp", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v31 = mach_continuous_time();
      v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "Ga22_15HandleCwModulatedRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
    }
  }

  else
  {
    v11 = a1[9];
    *__str = MEMORY[0x29EDCA5F8];
    v41 = 0x40000000;
    v42 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v43 = &__block_descriptor_tmp_98_0;
    v44 = a1;
    v45 = 8;
    dispatch_sync(v11, __str);
    if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = *&g_MacClockTicksToMsRelation;
      v14 = __error();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v13 * v12), "ADP", 87, "Ga22_15HandleCwModulatedRsp", 1542, *v14);
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CWMod Invalid Pl\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "Ga22_15HandleCwModulatedRsp", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "Ga22_15HandleCwModulatedRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
    }
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }
}

void sub_29966F1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = *(a2 + 64);
  if (!v3)
  {
    v2 = result + 64;
    goto LABEL_5;
  }

  if (v3 != a2 + 40)
  {
    *(result + 64) = v3;
LABEL_5:
    *v2 = 0;
    return result;
  }

  *(result + 64) = result + 40;
  return (*(**v2 + 24))();
}

void sub_29966F2FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t __Block_byref_object_dispose__35(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v1);
}

void *___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_15HandleCwModulatedRspERNSt3__16vectorIhNS1_9allocatorIhEEEE17e_Ga_CharTestType_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*(*(a1 + 32) + 8) + 40);

  return std::function<void ()(std::vector<gnssTest::RfMeasurement>)>::operator=(v2, v1 + 184);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_15HandleCwModulatedRspERNSt3__16vectorIhNS1_9allocatorIhEEEE17e_Ga_CharTestType_block_invoke_2(void *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(&__p, v1, a1[6], 0xCCCCCCCCCCCCCCCDLL * ((a1[6] - v1) >> 3));
  v3 = *(v2 + 64);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void __copy_helper_block_e8_40c66_ZTSNSt3__16vectorIN8gnssTest13RfMeasurementENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = (a1 + 40);
  v3[2] = 0;
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);

  std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(v3, v4, v5, 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3));
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__16vectorIN8gnssTest13RfMeasurementENS_9allocatorIS2_EEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_16TriggerCommPing(gnssTest::GnssAdaptDeviceTest *this, unsigned int a2)
{
  v50 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_16TriggerCommPing");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v6 = *(this + 9);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_16TriggerCommPingEj_block_invoke;
  block[3] = &__block_descriptor_tmp_38;
  block[4] = this;
  dispatch_sync(v6, block);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (gnssTest::ZxFactoryHandler::Ga23_16BuildZxPingProdMsg(this + 140, &v45, 0) && v46 != v45)
  {
    memset(&v44, 0, sizeof(v44));
    v42 = 0;
    v43 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v45, v46, v46 - v45);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v44);
    if (__p)
    {
      v42 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v8 = &v44;
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = v44.__r_.__value_.__r.__words[0];
      }

      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReqCP,%s\n", v7, "ADP", 68, "Ga22_16TriggerCommPing", v46 - v45, v8);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
    }

    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v46 - v45), v45);
    v10 = a2 >> 1;
    if (gnssOsa_SemWaitTimeOut(*(this + 10), v10))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = *&g_MacClockTicksToMsRelation;
        v13 = __error();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v12 * v11), "ADP", 69, "Ga22_16TriggerCommPing", 1543, *v13);
        LbsOsaTrace_WriteLog(0x18u, __str, v14, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "Ga22_16TriggerCommPing");
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 5, 1);
      }
    }

    else
    {
      v46 = v45;
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        *v44.__r_.__value_.__l.__data_ = 0;
        v44.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v44.__r_.__value_.__s.__data_[0] = 0;
        *(&v44.__r_.__value_.__s + 23) = 0;
      }

      if (!gnssTest::ZxFactoryHandler::Ga23_16BuildZxPingProdMsg(this + 140, &v45, 1) || v46 == v45)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ping ME\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 69, "Ga22_16TriggerCommPing", 775);
          LbsOsaTrace_WriteLog(0x18u, __str, v32, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v33 = mach_continuous_time();
          v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "Ga22_16TriggerCommPing");
          LbsOsaTrace_WriteLog(0x18u, __str, v34, 5, 1);
        }

        StatusCode = 0;
        goto LABEL_43;
      }

      v38 = 0;
      v39 = 0;
      v40 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v38, v45, v46, v46 - v45);
      gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &v38, &v44);
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v23 = &v44;
        if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v44.__r_.__value_.__r.__words[0];
        }

        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReqME,%s\n", v22, "ADP", 68, "Ga22_16TriggerCommPing", v46 - v45, v23);
        LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
      }

      gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v46 - v45), v45);
      if (!gnssOsa_SemWaitTimeOut(*(this + 10), v10))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "Ga22_16TriggerCommPing");
          LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
        }

        StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this);
        goto LABEL_43;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = *&g_MacClockTicksToMsRelation;
        v27 = __error();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v26 * v25), "ADP", 69, "Ga22_16TriggerCommPing", 1543, *v27);
        LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v29 = mach_continuous_time();
        v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga22_16TriggerCommPing");
        LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
      }
    }

    StatusCode = 6;
LABEL_43:
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    goto LABEL_45;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Build Ping Msg\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga22_16TriggerCommPing", 775);
    LbsOsaTrace_WriteLog(0x18u, __str, v19, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga22_16TriggerCommPing");
    LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
  }

  StatusCode = 0;
LABEL_45:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  return StatusCode;
}

void sub_29966FE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_16TriggerCommPingEj_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 111) < 0)
  {
    **(v1 + 88) = 0;
    *(v1 + 96) = 0;
  }

  else
  {
    *(v1 + 88) = 0;
    *(v1 + 111) = 0;
  }

  return result;
}

void gnssTest::GnssAdaptDeviceTest::Ga22_17HandleCommPingRsp(NSObject **a1, void *a2)
{
  v77 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_17HandleCommPingRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x4002000000;
  v60 = __Block_byref_object_copy__43;
  v61 = __Block_byref_object_dispose__44;
  __p = 0;
  v63 = 0;
  v64 = 0;
  v6 = a1[9];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke;
  block[3] = &unk_29EF6AF30;
  block[4] = &v57;
  block[5] = a1;
  dispatch_sync(v6, block);
  v55 = 0;
  if (gnssTest::ZxFactoryHandler::Ga23_21ParseZxPingProdMsg(a1 + 140, a2, (v58 + 5), &v55))
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x2000000000;
    v54 = 0;
    if (v55 == 1)
    {
      v19 = a1[9];
      v49[0] = MEMORY[0x29EDCA5F8];
      v49[1] = 0x40000000;
      v49[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3;
      v49[3] = &unk_29EF6AF80;
      v49[4] = &v51;
      v49[5] = a1;
      dispatch_sync(v19, v49);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ME Ping response\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga22_17HandleCommPingRsp");
        LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
      }
    }

    else if (v55)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unknown CPU Type\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "Ga22_17HandleCommPingRsp", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
      }
    }

    else
    {
      v54 = 1;
      v7 = a1[9];
      v50[0] = MEMORY[0x29EDCA5F8];
      v50[1] = 0x40000000;
      v50[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2;
      v50[3] = &unk_29EF6AF58;
      v50[4] = &v57;
      v50[5] = a1;
      dispatch_sync(v7, v50);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CP Ping response\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga22_17HandleCommPingRsp");
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v25 = (v58 + 5);
      if (*(v58 + 63) < 0)
      {
        v25 = *v25;
      }

      v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FW Ver Resp,%s\n", v24, "ADP", 68, "Ga22_17HandleCommPingRsp", v25);
      LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
    }

    if (*(v52 + 24) == 1 && v55 == 1)
    {
      *(v52 + 24) = 0;
      v65 = 0;
      v66 = &v65;
      v67 = 0x4802000000;
      v68 = __Block_byref_object_copy__53;
      v69 = __Block_byref_object_dispose__54;
      v70[3] = 0;
      v27 = a1[9];
      v48[0] = MEMORY[0x29EDCA5F8];
      v48[1] = 0x40000000;
      v48[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_55;
      v48[3] = &unk_29EF6AFA8;
      v48[4] = &v65;
      v48[5] = a1;
      dispatch_sync(v27, v48);
      v28 = v66[8];
      if (v28)
      {
        v29 = a1[8];
        v47[0] = MEMORY[0x29EDCA5F8];
        v47[1] = 0x40000000;
        v47[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2_58;
        v47[3] = &unk_29EF6AFD0;
        v47[4] = &v65;
        v47[5] = &v57;
        dispatch_async(v29, v47);
        v30 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v72 = 0x40000000;
        v73 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
        v74 = &__block_descriptor_tmp_98_0;
        v75 = a1;
        v76 = 1;
        dispatch_sync(v30, __str);
      }

      else
      {
        v32 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v72 = 0x40000000;
        v73 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
        v74 = &__block_descriptor_tmp_98_0;
        v75 = a1;
        v76 = 0;
        dispatch_sync(v32, __str);
        if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v33 = mach_continuous_time();
          v34 = *&g_MacClockTicksToMsRelation;
          v35 = __error();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v34 * v33), "ADP", 87, "Ga22_17HandleCommPingRsp", 1542, *v35);
          LbsOsaTrace_WriteLog(0x18u, __str, v36, 2, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Ver Report CB\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 69, "Ga22_17HandleCommPingRsp", 516);
          LbsOsaTrace_WriteLog(0x18u, __str, v38, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v39 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 68, "Ga22_17HandleCommPingRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v40, 5, 1);
        }
      }

      _Block_object_dispose(&v65, 8);
      std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v70);
      if (!v28)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v31 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v72 = 0x40000000;
      v73 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
      v74 = &__block_descriptor_tmp_98_0;
      v75 = a1;
      v76 = 8;
      dispatch_sync(v31, __str);
    }

    if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v41 = mach_continuous_time();
      v42 = *&g_MacClockTicksToMsRelation;
      v43 = __error();
      v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v42 * v41), "ADP", 87, "Ga22_17HandleCommPingRsp", 1542, *v43);
      LbsOsaTrace_WriteLog(0x18u, __str, v44, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v45 = mach_continuous_time();
      v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 68, "Ga22_17HandleCommPingRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v46, 5, 1);
    }

LABEL_41:
    _Block_object_dispose(&v51, 8);
    goto LABEL_42;
  }

  v10 = a1[9];
  *__str = MEMORY[0x29EDCA5F8];
  v72 = 0x40000000;
  v73 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
  v74 = &__block_descriptor_tmp_98_0;
  v75 = a1;
  v76 = 8;
  dispatch_sync(v10, __str);
  if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = *&g_MacClockTicksToMsRelation;
    v13 = __error();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v12 * v11), "ADP", 87, "Ga22_17HandleCommPingRsp", 1542, *v13);
    LbsOsaTrace_WriteLog(0x18u, __str, v14, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ping Rsp\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "Ga22_17HandleCommPingRsp", 776);
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga22_17HandleCommPingRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
  }

LABEL_42:
  _Block_object_dispose(&v57, 8);
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p);
  }
}

void sub_299670B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61, char a62)
{
  _Block_object_dispose(&a62, 8);
  std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v62 + 40);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a51, 8);
  if (a61 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__43(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__44(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    v1 = *(a1 + 40);

    operator delete(v1);
  }
}

std::string *___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*(*(a1 + 32) + 8) + 40);

  return std::string::operator=(v2, (v1 + 88));
}

std::string *___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = std::string::operator=((v1 + 88), (*(*(a1 + 32) + 8) + 40));
  *(v1 + 138) = 1;
  return result;
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 138);
  *(v1 + 138) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = *(a2 + 64);
  if (!v3)
  {
    v2 = result + 64;
    goto LABEL_5;
  }

  if (v3 != a2 + 40)
  {
    *(result + 64) = v3;
LABEL_5:
    *v2 = 0;
    return result;
  }

  *(result + 64) = result + 40;
  return (*(**v2 + 24))();
}

void sub_299670EAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t __Block_byref_object_dispose__54(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v1);
}

void *___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_55(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*(*(a1 + 32) + 8) + 40);

  return std::function<void ()(std::string const&,std::string const&)>::operator=(v2, v1 + 216);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_17HandleCommPingRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2_58(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 32) + 8);
  v2 = *(*(a1 + 40) + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "NA");
  v3 = *(v1 + 64);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, v2 + 40, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_18ValidatePowerMode(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a2 < 5)
  {
    if (a2 - 1 >= 3)
    {
      return 1;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PwrMode,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga22_18ValidatePowerMode", 514, a2);
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 0, 1);
    }

    return 4;
  }
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_19TriggerPowerMode(NSObject **a1, unsigned int a2)
{
  v38 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_19TriggerPowerMode");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  *__str = 0;
  gnssTest::GnssAdaptDeviceTest::Ga21_01GetPlatformType(a1, __str);
  if (!gnssTest::ZxFactoryHandler::Ga23_11BuildZxMePowerProdMsg(a1 + 140, &v34, a2, (*__str - 1) < 3) || v35 == v34)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PwrMode\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "Ga22_19TriggerPowerMode", 775);
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga22_19TriggerPowerMode");
      LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
    }

    StatusCode = 0;
  }

  else
  {
    memset(&v33, 0, sizeof(v33));
    v31 = 0;
    v32 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v34, v35, v35 - v34);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v33);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = &v33;
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v33.__r_.__value_.__r.__words[0];
      }

      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReq,%s\n", v6, "ADP", 68, "Ga22_19TriggerPowerMode", v35 - v34, v7);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
    }

    v9 = a1[9];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_19TriggerPowerModeENS_9PowerModeE_block_invoke;
    block[3] = &__block_descriptor_tmp_63;
    block[4] = a1;
    v29 = a2;
    dispatch_sync(v9, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PowerTestState START\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "Ga22_19TriggerPowerMode");
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 5, 1);
    }

    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(a1, (v35 - v34), v34);
    if (gnssOsa_SemWaitTimeOut(a1[10], 0xC8u))
    {
      gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(a1);
      v12 = a1[9];
      v27[0] = MEMORY[0x29EDCA5F8];
      v27[1] = 0x40000000;
      v27[2] = ___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_19TriggerPowerModeENS_9PowerModeE_block_invoke_2;
      v27[3] = &__block_descriptor_tmp_65;
      v27[4] = a1;
      dispatch_sync(v12, v27);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = *&g_MacClockTicksToMsRelation;
        v15 = __error();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v14 * v13), "ADP", 69, "Ga22_19TriggerPowerMode", 1543, *v15);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga22_19TriggerPowerMode");
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }

      StatusCode = 6;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 68, "Ga22_19TriggerPowerMode");
        LbsOsaTrace_WriteLog(0x18u, __str, v25, 5, 1);
      }

      StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(a1);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return StatusCode;
}

void sub_2996717B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest23Ga22_19TriggerPowerModeENS_9PowerModeE_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 132) = 256;
  *(v1 + 124) = *(result + 40);
  return result;
}

void gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(NSObject **this)
{
  v23 = *MEMORY[0x29EDCA608];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 68, "Ga22_27GnssStopFWTest");
    LbsOsaTrace_WriteLog(0x18u, __str, v3, 5, 1);
  }

  if (gnssTest::ZxFactoryHandler::Ga23_24BuildZxStopProdMsg(this + 140, &v19) && v20 != v19)
  {
    memset(&v18, 0, sizeof(v18));
    v16 = 0;
    v17 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v19, v20, v20 - v19);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v18);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = &v18;
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v5 = v18.__r_.__value_.__r.__words[0];
      }

      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReq,%s\n", v4, "ADP", 68, "Ga22_27GnssStopFWTest", v20 - v19, v5);
      LbsOsaTrace_WriteLog(0x18u, __str, v6, 5, 1);
    }

    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v20 - v19), v19);
    if (gnssOsa_SemWaitTimeOut(this[10], 0x7D0u))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StopTest\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga22_27GnssStopFWTest", 1543);
        LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        goto LABEL_22;
      }
    }

    else if (!LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "Ga22_27GnssStopFWTest");
    LbsOsaTrace_WriteLog(0x18u, __str, v14, 5, 1);
LABEL_22:
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    goto LABEL_24;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Stop Zx mesg\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "Ga22_27GnssStopFWTest", 775);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "Ga22_27GnssStopFWTest");
    LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
  }

LABEL_24:
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_299671D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_20HandleMePowerModeRsp(NSObject **a1, uint64_t a2)
{
  v57 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_20HandleMePowerModeRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  memset(&v50, 0, sizeof(v50));
  v48 = 0;
  v49 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v50);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = &v50;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v50.__r_.__value_.__r.__words[0];
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxRsp,%s\n", v6, "ADP", 68, "Ga22_20HandleMePowerModeRsp", *(a2 + 8) - *a2, v7);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  v46 = 0;
  *__str = 0;
  gnssTest::GnssAdaptDeviceTest::Ga21_01GetPlatformType(a1, __str);
  if (gnssTest::ZxFactoryHandler::Ga23_12ParseZxMePowerProdMsg(a1 + 140, a2, &v46, (*__str - 1) < 3))
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2000000000;
    v45 = 0;
    v9 = a1[9];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_20HandleMePowerModeRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke;
    block[3] = &unk_29EF6B038;
    block[4] = &v42;
    block[5] = a1;
    v41 = v46;
    dispatch_sync(v9, block);
    if (v46 == *(v43 + 6))
    {
      if (v46)
      {
        if (v46 == 4 && LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CurPowState LP entered\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "Ga22_20HandleMePowerModeRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v11, 4, 1);
        }
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CurPowState Normal\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 73, "Ga22_20HandleMePowerModeRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 4, 1);
        }

        v27 = a1[9];
        v39[0] = MEMORY[0x29EDCA5F8];
        v39[1] = 0x40000000;
        v39[2] = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_20HandleMePowerModeRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2;
        v39[3] = &__block_descriptor_tmp_70;
        v39[4] = a1;
        dispatch_sync(v27, v39);
      }

      v28 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v52 = 0x40000000;
      v53 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
      v54 = &__block_descriptor_tmp_98_0;
      v55 = a1;
      v56 = 1;
      dispatch_sync(v28, __str);
      if (!gnssOsa_SemRelease(a1[10]))
      {
        v31 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v52 = 0x40000000;
        v53 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
        v54 = &__block_descriptor_tmp_98_0;
        v55 = a1;
        v56 = 8;
        dispatch_sync(v31, __str);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v32 = mach_continuous_time();
          v33 = *&g_MacClockTicksToMsRelation;
          v34 = __error();
          v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v33 * v32), "ADP", 87, "Ga22_20HandleMePowerModeRsp", 1542, *v34);
          LbsOsaTrace_WriteLog(0x18u, __str, v35, 2, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 68, "Ga22_20HandleMePowerModeRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v37, 5, 1);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v21 = a1[9];
      v38[0] = MEMORY[0x29EDCA5F8];
      v38[1] = 0x40000000;
      v38[2] = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_20HandleMePowerModeRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3;
      v38[3] = &__block_descriptor_tmp_71_0;
      v38[4] = a1;
      dispatch_sync(v21, v38);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v22 = mach_continuous_time();
        v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PwrModeRsp\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 69, "Ga22_20HandleMePowerModeRsp", 1302);
        LbsOsaTrace_WriteLog(0x18u, __str, v23, 0, 1);
      }

      v24 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v52 = 0x40000000;
      v53 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
      v54 = &__block_descriptor_tmp_98_0;
      v55 = a1;
      v56 = 8;
      dispatch_sync(v24, __str);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga22_20HandleMePowerModeRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
    }

LABEL_35:
    _Block_object_dispose(&v42, 8);
    goto LABEL_36;
  }

  v12 = a1[9];
  *__str = MEMORY[0x29EDCA5F8];
  v52 = 0x40000000;
  v53 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
  v54 = &__block_descriptor_tmp_98_0;
  v55 = a1;
  v56 = 8;
  dispatch_sync(v12, __str);
  if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = *&g_MacClockTicksToMsRelation;
    v15 = __error();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v14 * v13), "ADP", 87, "Ga22_20HandleMePowerModeRsp", 1542, *v15);
    LbsOsaTrace_WriteLog(0x18u, __str, v16, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Parse Pwr Mode Rsp\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga22_20HandleMePowerModeRsp", 776);
    LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "Ga22_20HandleMePowerModeRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
  }

LABEL_36:
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_2996727AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  _Block_object_dispose(&a33, 8);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_20HandleMePowerModeRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 124);
  *(v1 + 128) = *(result + 48);
  return result;
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_21TriggerApSignalGpio(gnssTest::GnssAdaptDeviceTest *this, int a2)
{
  v49 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_21TriggerApSignalGpio");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v6 = *(this + 9);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest26Ga22_21TriggerApSignalGpioEj_block_invoke;
  block[3] = &__block_descriptor_tmp_73;
  block[4] = this;
  dispatch_sync(v6, block);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (!gnssTest::ZxFactoryHandler::Ga23_22BuildZxApSignalGpioProdMsg(this + 140, &v44, 100) || v45 == v44)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPIO Enc\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "Ga22_21TriggerApSignalGpio", 775);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga22_21TriggerApSignalGpio");
      LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
    }

    v16 = 0;
  }

  else
  {
    memset(&v43, 0, sizeof(v43));
    v41 = 0;
    v42 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v44, v45, v45 - v44);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v43);
    if (__p)
    {
      v41 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v8 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v8 = v43.__r_.__value_.__r.__words[0];
      }

      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeoutMs,%u,Size,%u,ZxReq,%s\n", v7, "ADP", 68, "Ga22_21TriggerApSignalGpio", a2, v45 - v44, v8);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
    }

    if (a2 < 200)
    {
      v10 = 0;
LABEL_23:
      v36 = 0;
      v37 = &v36;
      v38 = 0x2000000000;
      v39 = 0;
      v17 = *(this + 9);
      v35[0] = MEMORY[0x29EDCA5F8];
      v35[1] = 0x40000000;
      v35[2] = ___ZN8gnssTest19GnssAdaptDeviceTest26Ga22_21TriggerApSignalGpioEj_block_invoke_2;
      v35[3] = &unk_29EF6B0C0;
      v35[4] = &v36;
      v35[5] = this;
      dispatch_sync(v17, v35);
      if (v10 == *(v37 + 6))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 68, "Ga22_21TriggerApSignalGpio");
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 5, 1);
        }

        v16 = 1;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Wake cnt mismatch WakeReq,%u,ApWakeEvt,%u\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 69, "Ga22_21TriggerApSignalGpio", 770, v10, *(v37 + 6));
          LbsOsaTrace_WriteLog(0x18u, __str, v21, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 68, "Ga22_21TriggerApSignalGpio");
          LbsOsaTrace_WriteLog(0x18u, __str, v23, 5, 1);
        }

        v16 = 8;
      }

      _Block_object_dispose(&v36, 8);
    }

    else
    {
      v10 = a2 / 200;
      v11 = v10;
      while (1)
      {
        gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v45 - v44), v44);
        if (gnssOsa_SemWaitTimeOut(*(this + 10), 0xC8u))
        {
          break;
        }

        if (gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this) != 1)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v30 = mach_continuous_time();
            v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPIO Rsp Fail\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "Ga22_21TriggerApSignalGpio", 257);
            LbsOsaTrace_WriteLog(0x18u, __str, v31, 0, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 68, "Ga22_21TriggerApSignalGpio");
            LbsOsaTrace_WriteLog(0x18u, __str, v33, 5, 1);
          }

          v16 = 8;
          goto LABEL_43;
        }

        if (!--v11)
        {
          goto LABEL_23;
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = *&g_MacClockTicksToMsRelation;
        v26 = __error();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v25 * v24), "ADP", 69, "Ga22_21TriggerApSignalGpio", 1543, *v26);
        LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 68, "Ga22_21TriggerApSignalGpio");
        LbsOsaTrace_WriteLog(0x18u, __str, v29, 5, 1);
      }

      v16 = 6;
    }

LABEL_43:
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  return v16;
}

void sub_299673180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_22HandleApSignalGpioRsp(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_22HandleApSignalGpioRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  memset(&v26, 0, sizeof(v26));
  v24 = 0;
  v25 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v26);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = &v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v26.__r_.__value_.__r.__words[0];
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxRsp,%s\n", v6, "ADP", 68, "Ga22_22HandleApSignalGpioRsp", *(a2 + 8) - *a2, v7);
    LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
  }

  if (gnssTest::ZxFactoryHandler::Ga23_23ParseZxApSignalGpioProdMsg((a1 + 140), a2))
  {
    v9 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v28 = 0x40000000;
    v29 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v30 = &__block_descriptor_tmp_98_0;
    v31 = a1;
    v32 = 1;
    dispatch_sync(v9, __str);
    if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = *&g_MacClockTicksToMsRelation;
      v12 = __error();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v11 * v10), "ADP", 87, "Ga22_22HandleApSignalGpioRsp", 1542, *v12);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
LABEL_21:
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga22_22HandleApSignalGpioRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
    }
  }

  else
  {
    v14 = *(a1 + 72);
    *__str = MEMORY[0x29EDCA5F8];
    v28 = 0x40000000;
    v29 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
    v30 = &__block_descriptor_tmp_98_0;
    v31 = a1;
    v32 = 8;
    dispatch_sync(v14, __str);
    if (!gnssOsa_SemRelease(*(a1 + 80)) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = *&g_MacClockTicksToMsRelation;
      v17 = __error();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v16 * v15), "ADP", 87, "Ga22_22HandleApSignalGpioRsp", 1542, *v17);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AP Sig GPIO\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "Ga22_22HandleApSignalGpioRsp", 776);
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      goto LABEL_21;
    }
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_299673848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_23FactoryGpioNotif (gnssTest::GnssAdaptDeviceTest *a1)
{
  v1 = a1;
  v12 = *MEMORY[0x29EDCA608];
  GnssAdaptDeviceTestInstance = gnssTest::GnssAdaptDeviceTest::Ga21_06GetGnssAdaptDeviceTestInstance(a1);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Notif event,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga22_24HandleGpioNotif", v1);
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 4, 1);
  }

  v5 = *(GnssAdaptDeviceTestInstance + 56);
  *__str = MEMORY[0x29EDCA5F8];
  v7 = 0x40000000;
  v8 = ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_24HandleGpioNotifEN7GnssHal16GpioNotificationE_block_invoke;
  v9 = &__block_descriptor_tmp_84;
  v10 = GnssAdaptDeviceTestInstance;
  v11 = v1;
  dispatch_async(v5, __str);
}

double ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_24HandleGpioNotifEN7GnssHal16GpioNotificationE_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga22_24HandleGpioNotif_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v5 = *(a1 + 40);
  if ((v5 - 2) >= 4 && v5 != 0)
  {
    if (v5 == 1)
    {
      v10 = *(v2 + 72);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_24HandleGpioNotifEN7GnssHal16GpioNotificationE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_82;
      block[4] = v2;
      v14 = 1;
      dispatch_sync(v10, block);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpioNotif,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 87, "Ga22_24HandleGpioNotif_block_invoke", 770, *(a1 + 40));
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 2, 1);
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "Ga22_24HandleGpioNotif_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 5, 1);
  }

  return result;
}

void ___ZN8gnssTest19GnssAdaptDeviceTest22Ga22_24HandleGpioNotifEN7GnssHal16GpioNotificationE_block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  if (*(v1 + 133) == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Pwr Mode GPIO event,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "Ga22_24HandleGpioNotif_block_invoke_2", *(a1 + 40));
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 4, 1);
    }

    *(v1 + 132) = 1;
  }

  else
  {
    ++*(v1 + 112);
  }
}

uint64_t gnssTest::GnssAdaptDeviceTest::Ga22_25TriggerTimeMark(gnssTest::GnssAdaptDeviceTest *this, unsigned int a2)
{
  v37 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_25TriggerTimeMark");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (!gnssTest::ZxFactoryHandler::Ga23_24BuildZxTimeMarkProdMsg(this + 140, &v28) || v29 == v28)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Timemark\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 69, "Ga22_25TriggerTimeMark", 775);
      LbsOsaTrace_WriteLog(0x18u, __str, v18, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "Ga22_25TriggerTimeMark");
      LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
    }

    StatusCode = 8;
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
    v25 = 0;
    v26 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v28, v29, v29 - v28);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(this + 140, &__p, &v27);
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = &v27;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v27.__r_.__value_.__r.__words[0];
      }

      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Size,%u,ZxReq,%s\n", v6, "ADP", 68, "Ga22_25TriggerTimeMark", v29 - v28, v7);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 5, 1);
    }

    v9 = *(this + 9);
    *__str = MEMORY[0x29EDCA5F8];
    v32 = 0x40000000;
    v33 = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_35UpdateTimeMarkStatusEb_block_invoke;
    v34 = &__block_descriptor_tmp_100_0;
    v35 = this;
    v36 = 0;
    dispatch_sync(v9, __str);
    gnssTest::GnssAdaptDeviceTest::Ga24_01SendDataToChip(this, (v29 - v28), v28);
    if (gnssOsa_SemWaitTimeOut(*(this + 10), a2))
    {
      gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(this);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = *&g_MacClockTicksToMsRelation;
        v12 = __error();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v11 * v10), "ADP", 69, "Ga22_25TriggerTimeMark", 1543, *v12);
        LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "Ga22_25TriggerTimeMark");
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 5, 1);
      }

      StatusCode = 6;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga22_25TriggerTimeMark");
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
      }

      StatusCode = gnssTest::GnssAdaptDeviceTest::Ga22_34GetStatusCode(this);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return StatusCode;
}

void sub_2996742CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void gnssTest::GnssAdaptDeviceTest::Ga22_26HandleTimeMarkRsp(NSObject **a1, uint64_t a2)
{
  v76 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 5, 1);
  }

  v69 = 0;
  v68 = 0;
  if (gnssTest::ZxFactoryHandler::Ga23_25ParseZxTimeMarkProdMsg(a1 + 140, a2, &v69, &v68))
  {
    memset(&v66, 0, sizeof(v66));
    v64 = 0;
    v65 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    gnssTest::ZxHandler::Ga23_00GetZxBufAsStr(a1 + 140, &__p, &v66);
    if (__p)
    {
      v64 = __p;
      operator delete(__p);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v7 = &v66;
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v66.__r_.__value_.__r.__words[0];
      }

      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TTick,%u,SubMsCount,%u,Size,%u,ZxRsp,%s\n", v6, "ADP", 73, "Ga22_26HandleTimeMarkRsp", v69, v68, *(a2 + 8) - *a2, v7);
      LbsOsaTrace_WriteLog(0x18u, __str, v8, 4, 1);
    }

    v59 = 0;
    v60 = &v59;
    v61 = 0x2000000000;
    v62 = 0;
    v9 = a1[9];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_2;
    block[3] = &unk_29EF6B148;
    block[4] = &v59;
    block[5] = a1;
    dispatch_sync(v9, block);
    if (v60[3])
    {
      v10 = a1[6];
      v55[0] = MEMORY[0x29EDCA5F8];
      v55[1] = 0x40000000;
      v55[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_5;
      v55[3] = &__block_descriptor_tmp_94;
      v55[4] = a1;
      dispatch_async(v10, v55);
      v11 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v71 = 0x40000000;
      v72 = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_35UpdateTimeMarkStatusEb_block_invoke;
      v73 = &__block_descriptor_tmp_100_0;
      v74 = a1;
      LOBYTE(v75) = 0;
      dispatch_sync(v11, __str);
      v12 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v71 = 0x40000000;
      v72 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
      v73 = &__block_descriptor_tmp_98_0;
      v74 = a1;
      v75 = 1;
      dispatch_sync(v12, __str);
      if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = *&g_MacClockTicksToMsRelation;
        v15 = __error();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v14 * v13), "ADP", 87, "Ga22_26HandleTimeMarkRsp", 1542, *v15);
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 2, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeMark Success\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }
    }

    else
    {
      if (v68 && v69)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeMark failed\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
        }

        v31 = a1[6];
        v57[0] = MEMORY[0x29EDCA5F8];
        v57[1] = 0x40000000;
        v57[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3;
        v57[3] = &__block_descriptor_tmp_91;
        v57[4] = a1;
        dispatch_async(v31, v57);
        v32 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v71 = 0x40000000;
        v72 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
        v73 = &__block_descriptor_tmp_98_0;
        v74 = a1;
        v75 = 8;
        dispatch_sync(v32, __str);
        if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v33 = mach_continuous_time();
          v34 = *&g_MacClockTicksToMsRelation;
          v35 = __error();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v34 * v33), "ADP", 87, "Ga22_26HandleTimeMarkRsp", 1542, *v35);
          LbsOsaTrace_WriteLog(0x18u, __str, v36, 2, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimemarkRsp\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 69, "Ga22_26HandleTimeMarkRsp", 776);
          LbsOsaTrace_WriteLog(0x18u, __str, v38, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v39 = mach_continuous_time();
          v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v40, 5, 1);
        }

        goto LABEL_37;
      }

      v41 = a1[9];
      *__str = MEMORY[0x29EDCA5F8];
      v71 = 0x40000000;
      v72 = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_35UpdateTimeMarkStatusEb_block_invoke;
      v73 = &__block_descriptor_tmp_100_0;
      v74 = a1;
      LOBYTE(v75) = 1;
      dispatch_sync(v41, __str);
      if ((Hal25_TriggerTimeMarkStrobe(0) & 1) == 0)
      {
        v44 = a1[6];
        v56[0] = MEMORY[0x29EDCA5F8];
        v56[1] = 0x40000000;
        v56[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_4;
        v56[3] = &__block_descriptor_tmp_92;
        v56[4] = a1;
        dispatch_async(v44, v56);
        v45 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v71 = 0x40000000;
        v72 = ___ZN8gnssTest19GnssAdaptDeviceTest27Ga22_35UpdateTimeMarkStatusEb_block_invoke;
        v73 = &__block_descriptor_tmp_100_0;
        v74 = a1;
        LOBYTE(v75) = 0;
        dispatch_sync(v45, __str);
        v46 = a1[9];
        *__str = MEMORY[0x29EDCA5F8];
        v71 = 0x40000000;
        v72 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
        v73 = &__block_descriptor_tmp_98_0;
        v74 = a1;
        v75 = 8;
        dispatch_sync(v46, __str);
        if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v47 = mach_continuous_time();
          v48 = *&g_MacClockTicksToMsRelation;
          v49 = __error();
          v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v48 * v47), "ADP", 87, "Ga22_26HandleTimeMarkRsp", 1542, *v49);
          LbsOsaTrace_WriteLog(0x18u, __str, v50, 2, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v51 = mach_continuous_time();
          v52 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Timemark Hal Trigger\n", (*&g_MacClockTicksToMsRelation * v51), "ADP", 69, "Ga22_26HandleTimeMarkRsp", 776);
          LbsOsaTrace_WriteLog(0x18u, __str, v52, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v53 = mach_continuous_time();
          v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v53), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
          LbsOsaTrace_WriteLog(0x18u, __str, v54, 5, 1);
        }

        goto LABEL_37;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v42 = mach_continuous_time();
      v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v42), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
      LbsOsaTrace_WriteLog(0x18u, __str, v43, 5, 1);
    }

LABEL_37:
    _Block_object_dispose(&v59, 8);
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    return;
  }

  v19 = a1[6];
  v67[0] = MEMORY[0x29EDCA5F8];
  v67[1] = 0x40000000;
  v67[2] = ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke;
  v67[3] = &__block_descriptor_tmp_86;
  v67[4] = a1;
  dispatch_async(v19, v67);
  v20 = a1[9];
  *__str = MEMORY[0x29EDCA5F8];
  v71 = 0x40000000;
  v72 = ___ZN8gnssTest19GnssAdaptDeviceTest20Ga22_33SetStatusCodeEN4gnss6ResultE_block_invoke;
  v73 = &__block_descriptor_tmp_98_0;
  v74 = a1;
  v75 = 8;
  dispatch_sync(v20, __str);
  if (!gnssOsa_SemRelease(a1[10]) && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = *&g_MacClockTicksToMsRelation;
    v23 = __error();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx m_HandleSem,%d\n", (v22 * v21), "ADP", 87, "Ga22_26HandleTimeMarkRsp", 1542, *v23);
    LbsOsaTrace_WriteLog(0x18u, __str, v24, 2, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v25 = mach_continuous_time();
    v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TimemarkRsp\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "Ga22_26HandleTimeMarkRsp", 776);
    LbsOsaTrace_WriteLog(0x18u, __str, v26, 0, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v27 = mach_continuous_time();
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 68, "Ga22_26HandleTimeMarkRsp");
    LbsOsaTrace_WriteLog(0x18u, __str, v28, 5, 1);
  }
}

void sub_2996750B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  _Block_object_dispose(&a38, 8);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);

  gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(v1);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);

  gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(v1);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);

  gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(v1);
}

void ___ZN8gnssTest19GnssAdaptDeviceTest24Ga22_26HandleTimeMarkRspERNSt3__16vectorIhNS1_9allocatorIhEEEE_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);

  gnssTest::GnssAdaptDeviceTest::Ga22_27GnssStopFWTest(v1);
}

void std::vector<gnssTest::RfMeasurement>::__init_with_size[abi:ne200100]<gnssTest::RfMeasurement*,gnssTest::RfMeasurement*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      operator new();
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2996754D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double gnss::GnssAdaptDevice::Ga06_00GnssPeriodicFixCB(gnss::GnssAdaptDevice *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v81 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v7 = DeviceInstance;
    v8 = *a3;
    v9 = a3[1];
    v10 = *(a3 + 4);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Result,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "Ga06_01ReportPvtm", v4, v10);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 4, 1);
    }

    if (v4)
    {
      if (v4 == 8)
      {
        v13 = *(v7 + 288);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 0x40000000;
        block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke;
        block[3] = &__block_descriptor_tmp_12;
        block[4] = v7;
        v74 = 8;
        dispatch_async(v13, block);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PVTM Resp,%u\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 69, "Ga06_01ReportPvtm", 769, v4);
        LbsOsaTrace_WriteLog(0x18u, __str, v15, 0, 1);
      }
    }

    else if (v10 == 2)
    {
      if (v8)
      {
        operator new();
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v41 = mach_continuous_time();
        v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NavData\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 69, "Ga06_01ReportPvtm", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v42, 0, 1);
      }
    }

    else if (v10 == 4)
    {
      if (v9)
      {
        v16 = &v49;
        v49 = 0;
        v50 = &v49;
        v51 = 0x13802000000;
        v52 = __Block_byref_object_copy__3;
        v53 = __Block_byref_object_dispose__3;
        v57 = 0;
        v60 = 0;
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v54 = 0u;
        v55 = 0u;
        memset(v56, 0, sizeof(v56));
        *v58 = 0;
        *(&v58[2] + 1) = 0;
        *&v58[7] = 0;
        v59 = 0;
        v62 = 0;
        v61 = 0;
        *(&v63[1] + 3) = 0;
        *v63 = 0;
        *&v63[5] = 0;
        *&v63[7] = 0;
        v64 = 0;
        *(v66 + 6) = 0;
        v65 = 0;
        v66[0] = 0;
        v67 = 0u;
        v68 = 0u;
        memset(v69, 0, sizeof(v69));
        v57 = *(v9 + 32);
        v17 = v57;
        if (v57)
        {
          v18 = operator new[](176 * v57, MEMORY[0x29EDC9418]);
          if (!v18)
          {
            *v58 = 0;
            snprintf(block, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_01ReportPvtm", 101, "Memory allocation failed for SigMeas ");
            if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v43 = mach_continuous_time();
              v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v43), "OSA", 69, "Ga06_01ReportPvtm", block);
              LbsOsaTrace_WriteLog(0xEu, __str, v44, 0, 1);
            }

            if (gp_Logger)
            {
              (*(*gp_Logger + 48))(gp_Logger);
            }

            __assert_rtn("Ga06_01ReportPvtm", "ga06GnssPvtmUtils.cpp", 101, "false && Memory allocation failed for SigMeas ");
          }

          v19 = v18;
          do
          {
            *v19 = 0xFFFF;
            *(v19 + 2) = 0;
            *(v19 + 37) = 0;
            *(v19 + 15) = 0;
            v19[128] = 0;
            *(v19 + 170) = 0;
            *(v19 + 2) = 0;
            *(v19 + 3) = 0;
            *(v19 + 1) = 0;
            v19[32] = 0;
            *(v19 + 40) = 0uLL;
            *(v19 + 56) = 0uLL;
            v19[72] = 0;
            *(v19 + 5) = 0uLL;
            *(v19 + 6) = 0uLL;
            *(v19 + 111) = 0;
            *(v19 + 136) = 0uLL;
            *(v19 + 152) = 0uLL;
            v19[168] = 0;
            v19 += 176;
          }

          while (v19 != &v18[176 * v17]);
          *v58 = v18;
          memcpy_s("Ga06_01ReportPvtm", 108, v18, 176 * v17, *(v9 + 9), 176 * *(v9 + 32));
          v16 = v50;
        }

        v20 = *(v9 + 120);
        *(v16 + 140) = v20;
        if (v20)
        {
          v21 = operator new[](104 * v20, MEMORY[0x29EDC9418]);
          if (!v21)
          {
            v16[36] = 0;
            snprintf(block, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_01ReportPvtm", 118, "Memory allocation failed for SVUsage");
            if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v45 = mach_continuous_time();
              v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v45), "OSA", 69, "Ga06_01ReportPvtm", block);
              LbsOsaTrace_WriteLog(0xEu, __str, v46, 0, 1);
            }

            if (gp_Logger)
            {
              (*(*gp_Logger + 48))(gp_Logger);
            }

            __assert_rtn("Ga06_01ReportPvtm", "ga06GnssPvtmUtils.cpp", 118, "false && Memory allocation failed for SVUsage");
          }

          v22 = v21;
          do
          {
            *v22 = 0;
            v22[2] = 0;
            *(v22 + 1) = 0;
            *(v22 + 2) = 0;
            *(v22 + 12) = 0;
            *(v22 + 2) = 0uLL;
            *(v22 + 3) = 0uLL;
            *(v22 + 4) = 0uLL;
            *(v22 + 5) = 0uLL;
            *(v22 + 12) = 0;
            v22 += 104;
          }

          while (v22 != &v21[104 * v20]);
          v16[36] = v21;
          memcpy_s("Ga06_01ReportPvtm", 127, v21, 104 * *(v16 + 140), *(v9 + 31), (104 * v20));
          v16 = v50;
        }

        v23 = *(v9 + 128);
        *(v16 + 148) = v23;
        if (v23)
        {
          v24 = operator new[](312 * v23, MEMORY[0x29EDC9418]);
          if (!v24)
          {
            v16[38] = 0;
            snprintf(block, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_01ReportPvtm", 137, "Memory allocation failed for SVState");
            if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v47 = mach_continuous_time();
              v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v47), "OSA", 69, "Ga06_01ReportPvtm", block);
              LbsOsaTrace_WriteLog(0xEu, __str, v48, 0, 1);
            }

            if (gp_Logger)
            {
              (*(*gp_Logger + 48))(gp_Logger);
            }

            __assert_rtn("Ga06_01ReportPvtm", "ga06GnssPvtmUtils.cpp", 137, "false && Memory allocation failed for SVState");
          }

          v25 = v24;
          do
          {
            *v25 = 0;
            *(v25 + 1) = 0;
            v25[4] = 0;
            v25[8] = 0;
            *(v25 + 21) = 0;
            *(v25 + 88) = 0;
            *(v25 + 178) = 0;
            *(v25 + 1) = 0uLL;
            *(v25 + 2) = 0uLL;
            *(v25 + 3) = 0uLL;
            *(v25 + 4) = 0uLL;
            *(v25 + 5) = 0uLL;
            *(v25 + 6) = 0uLL;
            *(v25 + 7) = 0uLL;
            *(v25 + 8) = 0uLL;
            *(v25 + 9) = 0uLL;
            *(v25 + 157) = 0;
            *(v25 + 200) = 0uLL;
            *(v25 + 216) = 0uLL;
            *(v25 + 232) = 0uLL;
            *(v25 + 248) = 0uLL;
            v26 = v25 + 312;
            *(v25 + 184) = 0uLL;
            v27 = v25 + 184;
            v27[5] = 0uLL;
            v27[6] = 0uLL;
            v27[7] = 0uLL;
            v25 = v26;
          }

          while (v26 != &v24[312 * v23]);
          v16[38] = v24;
          memcpy_s("Ga06_01ReportPvtm", 148, v24, 312 * *(v16 + 148), *(v9 + 33), (312 * v23));
          v16 = v50;
        }

        v28 = *v9;
        v29 = v9[1];
        v30 = v9[2];
        *(v16 + 84) = *(v9 + 44);
        *(v16 + 9) = v30;
        *(v16 + 7) = v29;
        *(v16 + 5) = v28;
        v31 = v9[9];
        v32 = v9[10];
        v33 = v9[8];
        *(v16 + 19) = v9[7];
        *(v16 + 25) = v32;
        *(v16 + 23) = v31;
        *(v16 + 21) = v33;
        v34 = v9[13];
        v35 = v9[14];
        v36 = v9[12];
        *(v16 + 27) = v9[11];
        *(v16 + 33) = v35;
        *(v16 + 31) = v34;
        *(v16 + 29) = v36;
        v37 = v9[5];
        *(v16 + 17) = v9[6];
        *(v16 + 15) = v37;
        v38 = *(v7 + 288);
        *__str = MEMORY[0x29EDCA5F8];
        v76 = 0x40000000;
        v77 = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_14;
        v78 = &unk_29EF6B258;
        v80 = v7;
        v79 = &v49;
        dispatch_async(v38, __str);
        _Block_object_dispose(&v49, 8);
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v39 = mach_continuous_time();
        v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MeasData\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 69, "Ga06_01ReportPvtm", 770);
        LbsOsaTrace_WriteLog(0x18u, __str, v40, 0, 1);
      }
    }
  }

  return result;
}

void sub_299676070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Positioning Session Aborted,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga06_01ReportPvtm_block_invoke", 1025, *(a1 + 40));
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 0, 1);
  }

  *(v2 + 89) = 0;
}

void *__Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 40);
  v3 = (a2 + 40);

  return memcpy(v2, v3, 0x110uLL);
}

uint64_t *___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_14(uint64_t a1)
{
  v1 = a1;
  v257 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v235 = 0;
  v236 = &v235;
  v237 = 0x3002000000;
  v238 = __Block_byref_object_copy__15;
  v239 = __Block_byref_object_dispose__16;
  v240 = 0;
  v3 = *(v2 + 280);
  v217 = v2;
  if ((v3 & 2) != 0)
  {
    v219 = *(v2 + 280);
    v4 = *(*(a1 + 32) + 8);
    v5 = operator new(0x88uLL, MEMORY[0x29EDC9418]);
    if (!v5)
    {
      v229 = 0;
      snprintf(v254, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_04GetMeasReport", 525, "Memory allocation failed for Measurement Report");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v203 = mach_continuous_time();
        v204 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v203), "OSA", 69, "Ga06_04GetMeasReport", v254);
        LbsOsaTrace_WriteLog(0xEu, __str, v204, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_04GetMeasReport", "ga06GnssPvtmUtils.cpp", 525, "false && Memory allocation failed for Measurement Report");
    }

    *v5 = -1;
    _Q0 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v5 + 1) = _Q0;
    *(v5 + 3) = _Q0;
    *(v5 + 20) = 0;
    v216 = _Q0;
    *(v5 + 3) = _Q0;
    v7 = vneg_f32(0x3F0000003FLL);
    v5[8] = v7;
    *(v5 + 18) = 2143289344;
    v5[10] = 0x8000000000000000;
    __asm { FMOV            V0.2S, #-1.0 }

    v5[11] = _Q0.i64[0];
    v5[12] = 0x7FF8000000000000;
    *(v5 + 26) = -1082130432;
    v5[15] = 0;
    v5[16] = 0;
    v5[14] = 0;
    v229 = v5;
    v12 = &unk_2A1939000;
    if (*(v4 + 104))
    {
      v13 = 0;
      if (*(v4 + 104) >= 0x100u)
      {
        v14 = 256;
      }

      else
      {
        v14 = *(v4 + 104);
      }

      v220 = v14;
      v15.i64[0] = 0x3F0000003FLL;
      v15.i64[1] = 0x3F0000003FLL;
      v215 = vnegq_f32(v15);
      while (1)
      {
        *v243 = 0;
        *&v243[4] = 0;
        v243[6] = 127;
        *&v243[8] = 0;
        *&v243[15] = 0;
        memset(&v243[24], 255, 24);
        *&v244 = 0x7FF8000000000000;
        DWORD2(v244) = -1082130432;
        v245 = xmmword_299760840;
        v246 = xmmword_299760840;
        v247 = xmmword_299760840;
        v248[0] = 1;
        *&v248[8] = -1;
        *&v248[16] = -1;
        *&v248[24] = xmmword_299760840;
        v248[40] = 0;
        v249 = 0;
        v250 = -1.0;
        v251 = 0;
        v16 = *(v4 + 112);
        if (!v16)
        {
          std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v249, 0);
          goto LABEL_144;
        }

        if (*(v4 + 104) <= v13)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v21 = mach_continuous_time();
            v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Indx\n", (v12[200] * v21), "ADP", 69, "Ga06_05GetMeasSvId", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
          }

          goto LABEL_132;
        }

        v17 = (v16 + 176 * v13);
        v18 = *(v17 + 2);
        if (v18 <= 3)
        {
          break;
        }

        if (v18 - 5 < 2)
        {
          v19 = *(v16 + 176 * v13 + 4);
          if ((v19 - 1) > 0x3E)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v35 = mach_continuous_time();
              v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BEID SvID,%d\n", (v12[200] * v35), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 112) + 176 * v13 + 4));
              LbsOsaTrace_WriteLog(0x18u, __str, v36, 2, 1);
            }

            goto LABEL_132;
          }

          v20 = 4;
          goto LABEL_24;
        }

        if (v18 - 7 < 2)
        {
          v19 = *(v16 + 176 * v13 + 4);
          if ((v19 - 1) > 0x31)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v33 = mach_continuous_time();
              v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GAL SvId,%d\n", (v12[200] * v33), "ADP", 87, "Ga06_05GetMeasSvId", 772, *(*(v4 + 112) + 176 * v13 + 4));
              LbsOsaTrace_WriteLog(0x18u, __str, v34, 2, 1);
            }

            goto LABEL_132;
          }

          v20 = 8;
          goto LABEL_24;
        }

        if (v18 != 4)
        {
          goto LABEL_54;
        }

        v28 = v17[2];
        if ((v28 + 7) > 0xDu)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v41 = mach_continuous_time();
            v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLON SvID,%d\n", (v12[200] * v41), "ADP", 87, "Ga06_05GetMeasSvId", 772, *(*(v4 + 112) + 176 * v13 + 4));
            LbsOsaTrace_WriteLog(0x18u, __str, v42, 2, 1);
          }

          goto LABEL_132;
        }

        *v243 = 2;
        v243[6] = v28;
        v29 = *v17;
        if ((v29 & 0x8000000000000000) == 0 && *(v4 + 280) > v29)
        {
          v30 = *(v4 + 288);
          if (v30)
          {
            if (*(v30 + 104 * *v17 + 1) - 25 <= 0xFFFFFFE7)
            {
              if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v31 = mach_continuous_time();
                v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLON SlotNum,%u\n", (v12[200] * v31), "ADP", 87, "Ga06_05GetMeasSvId", 772, *(*(v4 + 288) + 104 * v29 + 1));
                LbsOsaTrace_WriteLog(0x18u, __str, v32, 2, 1);
              }

              goto LABEL_132;
            }

            v243[4] = *(v30 + 104 * *v17 + 1);
            v67 = *(v30 + 104 * v29 + 2);
            if (v67 <= 2)
            {
              v243[5] = v67 >= 2;
              goto LABEL_26;
            }

            if (v67 == 3)
            {
              v110 = 2;
              goto LABEL_140;
            }

            if (v67 == 4)
            {
              v110 = 3;
LABEL_140:
              v243[5] = v110;
              goto LABEL_26;
            }

            v243[5] = 0;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v111 = mach_continuous_time();
              v112 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GLON SlotNum,%u\n", (v12[200] * v111), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 288) + 104 * v29 + 2));
              LbsOsaTrace_WriteLog(0x18u, __str, v112, 2, 1);
            }
          }
        }

LABEL_26:
        v23 = *(v4 + 112);
        if (!v23)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SVMeasElem\n", (v12[200] * v26), "ADP", 69, "Ga06_06GetMeasSyncState", 513);
            LbsOsaTrace_WriteLog(0x18u, __str, v27, 0, 1);
          }

          goto LABEL_132;
        }

        v24 = v23 + 176 * v13;
        v25 = *(v24 + 2);
        if (v25 > 4)
        {
          if (*(v24 + 2) <= 6u)
          {
            if (v25 == 5)
            {
              goto LABEL_69;
            }

            if (v25 == 6)
            {
              LOBYTE(v25) = 7;
              goto LABEL_69;
            }
          }

          else
          {
            switch(v25)
            {
              case 7u:
                LOBYTE(v25) = 8;
LABEL_69:
                v243[8] = v25;
LABEL_70:
                v243[9] = *(v24 + 32) & 1;
                v243[10] = (*(v24 + 32) & 2) != 0;
                v243[11] = (*(v24 + 32) & 4) != 0;
                v243[12] = (*(v24 + 32) & 8) != 0;
                goto LABEL_74;
              case 8u:
                v243[8] = 9;
                goto LABEL_74;
              case 9u:
                goto LABEL_61;
            }
          }
        }

        else
        {
          if (*(v24 + 2) <= 1u)
          {
            if (!*(v24 + 2))
            {
LABEL_61:
              v243[8] = 0;
              goto LABEL_74;
            }

            v243[8] = 1;
            goto LABEL_70;
          }

          switch(v25)
          {
            case 2u:
              v243[8] = 2;
              v243[9] = *(v24 + 32) & 1;
              v243[10] = *(v24 + 32) & 1;
              goto LABEL_67;
            case 3u:
              goto LABEL_69;
            case 4u:
              v243[8] = 4;
              *&v243[9] = *(v24 + 32) & 1;
LABEL_67:
              v243[11] = (*(v24 + 32) & 2) != 0;
              v243[12] = (*(v24 + 32) & 4) != 0;
              v243[13] = (*(v24 + 32) & 8) != 0;
              goto LABEL_74;
          }
        }

        v243[8] = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v43 = mach_continuous_time();
          v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Meas SigId,%u\n", (v12[200] * v43), "ADP", 87, "Ga06_06GetMeasSyncState", 770, *(v24 + 2));
          LbsOsaTrace_WriteLog(0x18u, __str, v44, 2, 1);
        }

LABEL_74:
        v45 = *(v4 + 112);
        v46 = v45 + 176 * v13;
        *&v243[24] = *(v46 + 8);
        *&v243[40] = *(v46 + 24);
        HIBYTE(v251) = *(v46 + 118);
        *&v244 = *(v46 + 40);
        v47 = *(v46 + 48);
        *(&v244 + 2) = v47;
        v245 = *(v46 + 80);
        v48 = *(v46 + 104);
        if (v48 > 0.0)
        {
          *&v246 = *(v46 + 96);
          *(&v246 + 1) = v48;
        }

        if (*(v46 + 128) == 2)
        {
          *&v248[8] = vcvtq_u64_f64(*(v46 + 136));
          *&v248[24] = *(v45 + 176 * v13 + 152);
          v248[40] = 0;
        }

        v49 = v45 + 176 * v13;
        v50 = *(v49 + 56);
        v250 = v50;
        v51 = *(v49 + 168);
        if (v51)
        {
          if (v51 == 1)
          {
            LOBYTE(v251) = 1;
          }

          else if (v51 == 2)
          {
            LOBYTE(v251) = 2;
          }

          else
          {
            LOBYTE(v251) = 0;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v52 = mach_continuous_time();
              v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Multipath Ind,%d\n", (v12[200] * v52), "ADP", 87, "Ga06_04GetMeasReport", 770, *(*(v4 + 112) + 176 * v13 + 168));
              LbsOsaTrace_WriteLog(0x18u, __str, v53, 2, 1);
            }
          }
        }

        else
        {
          LOBYTE(v251) = 0;
        }

        if ((v219 & 4) == 0)
        {
          goto LABEL_113;
        }

        v54 = operator new(0x98uLL, MEMORY[0x29EDC9418]);
        if (!v54)
        {
          v223 = 0;
          snprintf(v254, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_07GetMeasExtn", 1151, "Memory allocation failed for MeasExtn");
          if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v201 = mach_continuous_time();
            v202 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v201), "OSA", 69, "Ga06_07GetMeasExtn", v254);
            LbsOsaTrace_WriteLog(0xEu, __str, v202, 0, 1);
          }

          if (gp_Logger)
          {
            (*(*gp_Logger + 48))(gp_Logger);
          }

          __assert_rtn("Ga06_07GetMeasExtn", "ga06GnssPvtmUtils.cpp", 1151, "false && Memory allocation failed for MeasExtn");
        }

        v55 = v54;
        *v54 = v7;
        *(v54 + 8) = v216;
        v54[24] = 0;
        *(v54 + 2) = v215;
        *(v54 + 3) = v215;
        *(v54 + 8) = 0xFFFF7FC00000;
        v54[72] = 0;
        v54[76] = 0;
        v54[80] = 0;
        v54[84] = 0;
        v54[88] = 0;
        *(v54 + 46) = 0;
        v54[124] = 0;
        *(v54 + 17) = 0;
        *(v54 + 18) = 0;
        *(v54 + 16) = 0;
        *(v54 + 12) = 0;
        *(v54 + 13) = 0;
        v54[120] = 0;
        *(v54 + 14) = 0;
        v223 = v54;
        if (*(v4 + 104) <= v13)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v65 = mach_continuous_time();
            v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Indx\n", (v12[200] * v65), "ADP", 69, "Ga06_07GetMeasExtn", 514);
            LbsOsaTrace_WriteLog(0x18u, __str, v66, 0, 1);
          }

          v55 = 0;
          goto LABEL_112;
        }

        v56 = *(v4 + 112) + 176 * v13;
        *(v54 + 34) = *(v56 + 114);
        *v54 = 0;
        v57 = *(v56 + 64);
        *(v54 + 1) = v57;
        *(v54 + 35) = *(v56 + 74);
        v54[72] = *(v56 + 72);
        v54[92] = gnss::GnssAdaptDevice::Ga06_17GetDetectionMethod(*(v56 + 112));
        *(v55 + 93) = gnss::GnssAdaptDevice::Ga06_17GetDetectionMethod(*(*(v4 + 112) + 176 * v13 + 113));
        v58 = (*(v4 + 112) + 176 * v13);
        LOWORD(v59) = v58[85];
        *&v60 = v59 * 0.001;
        *(v55 + 76) = *&v60;
        *(v55 + 80) = 1;
        LOWORD(v60) = v58[86];
        *(v55 + 84) = v60 * 0.001;
        *(v55 + 88) = 1;
        v61 = *v58;
        if ((v61 & 0x8000000000000000) == 0 && *(v4 + 280) > v61)
        {
          v62 = *(v4 + 288);
          if (v62)
          {
            v63 = v62 + 104 * v61;
            *(v55 + 8) = *(v63 + 8);
            *(v55 + 16) = *(v63 + 80);
            v64 = *(v63 + 24);
            if (v64 <= 1)
            {
              if (v64)
              {
                LOBYTE(v64) = 2;
                goto LABEL_102;
              }

              *(v55 + 24) = 0;
            }

            else
            {
              switch(v64)
              {
                case 2:
                  *(v55 + 24) = 1;
                  break;
                case 3:
                  *(v55 + 24) = 3;
                  break;
                case 4:
LABEL_102:
                  *(v55 + 24) = v64;
                  break;
                default:
                  *(v55 + 24) = 0;
                  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
                  {
                    bzero(__str, 0x410uLL);
                    v108 = mach_continuous_time();
                    v109 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ToTsource,%u\n", (v12[200] * v108), "ADP", 87, "Ga06_07GetMeasExtn", 770, *(*(v4 + 288) + 104 * v61 + 24));
                    LbsOsaTrace_WriteLog(0x18u, __str, v109, 2, 1);
                  }

                  break;
              }
            }

            v68 = (*(v4 + 288) + 104 * v61);
            v69 = v68[6].f64[0];
            if (v69 >= 3.40282347e38)
            {
              v69 = 3.40282347e38;
            }

            v70 = v69;
            *(v55 + 64) = v70;
            v71 = vcvt_hight_f32_f64(vcvt_f32_f64(v68[2]), v68[3]);
            v72 = vcvt_hight_f32_f64(vcvt_f32_f64(v68[4]), v68[5]);
            v73 = vtrn2q_s32(vextq_s8(v72, v71, 4uLL), v71);
            v74 = vtrn2q_s32(vextq_s8(v71, v72, 4uLL), v72);
            *(v55 + 32) = vextq_s8(v73, v73, 8uLL);
            *(v55 + 48) = vextq_s8(v74, v74, 8uLL);
          }
        }

        v223 = 0;
LABEL_112:
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v223, 0);
        v242 = 0;
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v249, v55);
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v242, 0);
LABEL_113:
        v75 = v229;
        v77 = v229[15];
        v76 = v229[16];
        if (v77 >= v76)
        {
          v87 = v229[14];
          v88 = 0x2E8BA2E8BA2E8BA3 * ((v77 - v87) >> 4) + 1;
          if (v88 > 0x1745D1745D1745DLL)
          {
            std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
          }

          v89 = 0x2E8BA2E8BA2E8BA3 * ((v76 - v87) >> 4);
          if (2 * v89 > v88)
          {
            v88 = 2 * v89;
          }

          if (v89 >= 0xBA2E8BA2E8BA2ELL)
          {
            v90 = 0x1745D1745D1745DLL;
          }

          else
          {
            v90 = v88;
          }

          if (v90)
          {
            if (v90 <= 0x1745D1745D1745DLL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v91 = *v248;
          v92 = 16 * ((v77 - v87) >> 4);
          *(v92 + 96) = v247;
          *(v92 + 112) = v91;
          *(v92 + 128) = *&v248[16];
          *(v92 + 137) = *&v248[25];
          v93 = v244;
          *(v92 + 32) = *&v243[32];
          *(v92 + 48) = v93;
          v94 = v246;
          *(v92 + 64) = v245;
          *(v92 + 80) = v94;
          v95 = *&v243[16];
          *v92 = *v243;
          *(v92 + 16) = v95;
          v96 = v249;
          v249 = 0;
          *(v92 + 160) = v96;
          *(v92 + 168) = v250;
          v97 = v92 - (v77 - v87);
          *(v92 + 172) = v251;
          if (v87 != v77)
          {
            v98 = v87;
            v99 = v92 - (v77 - v87);
            do
            {
              v100 = *(v98 + 1);
              *v99 = *v98;
              *(v99 + 16) = v100;
              v101 = *(v98 + 2);
              v102 = *(v98 + 3);
              v103 = *(v98 + 5);
              *(v99 + 64) = *(v98 + 4);
              *(v99 + 80) = v103;
              *(v99 + 32) = v101;
              *(v99 + 48) = v102;
              v104 = *(v98 + 6);
              v105 = *(v98 + 7);
              v106 = *(v98 + 8);
              *(v99 + 137) = *(v98 + 137);
              *(v99 + 112) = v105;
              *(v99 + 128) = v106;
              *(v99 + 96) = v104;
              v107 = v98[20];
              v98[20] = 0;
              *(v99 + 160) = v107;
              LODWORD(v107) = *(v98 + 42);
              *(v99 + 172) = *(v98 + 86);
              *(v99 + 168) = v107;
              v98 += 22;
              v99 += 176;
            }

            while (v98 != v77);
            do
            {
              std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](v87 + 20, 0);
              v87 += 22;
            }

            while (v87 != v77);
            v87 = v75[14];
          }

          v86 = v92 + 176;
          v75[14] = v97;
          v75[15] = v86;
          v75[16] = 0;
          v1 = a1;
          v12 = &unk_2A1939000;
          if (v87)
          {
            operator delete(v87);
          }
        }

        else
        {
          v78 = *&v243[16];
          *v77 = *v243;
          *(v77 + 16) = v78;
          v79 = *&v243[32];
          v80 = v244;
          v81 = v246;
          *(v77 + 64) = v245;
          *(v77 + 80) = v81;
          *(v77 + 32) = v79;
          *(v77 + 48) = v80;
          v82 = v247;
          v83 = *v248;
          v84 = *&v248[16];
          *(v77 + 137) = *&v248[25];
          *(v77 + 112) = v83;
          *(v77 + 128) = v84;
          *(v77 + 96) = v82;
          v85 = v249;
          v249 = 0;
          *(v77 + 160) = v85;
          *&v85 = v250;
          *(v77 + 172) = v251;
          *(v77 + 168) = v85;
          v86 = v77 + 176;
          v1 = a1;
          v12 = &unk_2A1939000;
        }

        v75[15] = v86;
LABEL_132:
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v249, 0);
        if (++v13 == v220)
        {
          goto LABEL_144;
        }
      }

      if (v18 - 1 < 3)
      {
        v19 = *(v16 + 176 * v13 + 4);
        if ((v19 - 1) <= 0x1F)
        {
          *v243 = 1;
LABEL_25:
          v243[4] = v19;
          goto LABEL_26;
        }

        if ((v19 - 193) > 9)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v39 = mach_continuous_time();
            v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PRN,%d,Signal,%u\n", (v12[200] * v39), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 112) + 176 * v13 + 4), *(*(v4 + 112) + 176 * v13 + 2));
            LbsOsaTrace_WriteLog(0x18u, __str, v40, 2, 1);
          }

          goto LABEL_132;
        }

        v20 = 16;
LABEL_24:
        *v243 = v20;
        goto LABEL_25;
      }

      if (!*(v17 + 2))
      {
        *v243 = 0;
        goto LABEL_26;
      }

LABEL_54:
      *v243 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v37 = mach_continuous_time();
        v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SigID,%u\n", (v12[200] * v37), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 112) + 176 * v13 + 2));
        LbsOsaTrace_WriteLog(0x18u, __str, v38, 2, 1);
      }

      goto LABEL_26;
    }

LABEL_144:
    v113 = v229;
    *v229 = *(v4 + 40);
    *(v113 + 8) = *(v4 + 64);
    *(v113 + 24) = *(v4 + 80);
    *(v113 + 48) = *(v4 + 48);
    if (*(v4 + 256) <= 0.0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v120 = mach_continuous_time();
        v121 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GpsBiasUncns is unknown\n", (v12[200] * v120), "ADP", 68, "Ga06_04GetMeasReport");
        LbsOsaTrace_WriteLog(0x18u, __str, v121, 5, 1);
      }
    }

    else
    {
      *(v113 + 80) = *(v4 + 240);
      if (fabs(*(v4 + 248)) > 0.5 && LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v114 = mach_continuous_time();
        v115 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GpsBiassubns,%f\n", (v12[200] * v114), "ADP", 87, "Ga06_04GetMeasReport", 514, *(v4 + 248));
        LbsOsaTrace_WriteLog(0x18u, __str, v115, 2, 1);
      }

      v116 = *(v4 + 248);
      *(v113 + 88) = v116;
      v117 = *(v4 + 256);
      if (v117 <= 3.40282347e38)
      {
        v122 = v117;
        *(v113 + 92) = v122;
      }

      else
      {
        *(v113 + 92) = 2139095039;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v118 = mach_continuous_time();
          v119 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RxGpsBiasUncns larger than float max,limiting to float max,%f\n", (v12[200] * v118), "ADP", 68, "Ga06_04GetMeasReport", *(v4 + 256));
          LbsOsaTrace_WriteLog(0x18u, __str, v119, 5, 1);
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v123 = mach_continuous_time();
        v124 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: OffsetNs,%lld,SubOffsetNs,%f,OffsetUncNs,%f\n", (v12[200] * v123), "ADP", 68, "Ga06_04GetMeasReport", *(v113 + 80), *(v113 + 88), *(v113 + 92));
        LbsOsaTrace_WriteLog(0x18u, __str, v124, 5, 1);
      }
    }

    *(v113 + 96) = *(v4 + 264);
    v125 = *(v4 + 272);
    if (v125 <= 3.40282347e38)
    {
      v128 = v125;
      *(v113 + 104) = v128;
    }

    else
    {
      *(v113 + 104) = 2139095039;
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v126 = mach_continuous_time();
        v127 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RxGpsFrqUncppb larger than float max,limiting to float max,%f\n", (v12[200] * v126), "ADP", 68, "Ga06_04GetMeasReport", *(v4 + 272));
        LbsOsaTrace_WriteLog(0x18u, __str, v127, 5, 1);
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v129 = mach_continuous_time();
      v130 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DriftPpb,%f,DriftUncPpb,%f\n", (v12[200] * v129), "ADP", 68, "Ga06_04GetMeasReport", *(v113 + 96), *(v113 + 104));
      LbsOsaTrace_WriteLog(0x18u, __str, v130, 5, 1);
    }

    v229 = 0;
    std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v229, 0);
    *&v241 = 0;
    std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](v236 + 5, v113);
    std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v241, 0);
    v3 = *(v2 + 280);
  }

  *v243 = 0;
  *&v243[8] = v243;
  *&v243[16] = 0x4002000000;
  *&v243[24] = __Block_byref_object_copy__17;
  *&v243[32] = __Block_byref_object_dispose__18;
  *&v243[40] = 0;
  v244 = 0uLL;
  if ((v3 & 0x10) == 0)
  {
    goto LABEL_212;
  }

  v131 = *(*(v1 + 32) + 8);
  v132 = *(v131 + 296);
  if (!*(v131 + 296))
  {
    v159 = 0;
    v158 = 0;
    v155 = v243;
    v1 = a1;
    goto LABEL_211;
  }

  v221 = 0;
  __src = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = *(v131 + 304);
  do
  {
    if (!*(v136 + 312 * v135 + 176))
    {
      goto LABEL_206;
    }

    v137 = 0;
    do
    {
      v138 = v137;
      v139 = *(v136 + 312 * v135 + v137 + 178);
      if (v139 <= 3)
      {
        if (*(v136 + 312 * v135 + v137 + 178) > 1u)
        {
          if (v139 == 2)
          {
            v140 = 2;
          }

          else
          {
            v140 = 3;
          }
        }

        else
        {
          if (!*(v136 + 312 * v135 + v137 + 178))
          {
            goto LABEL_204;
          }

          v140 = 1;
        }
      }

      else if (*(v136 + 312 * v135 + v137 + 178) <= 5u)
      {
        if (v139 == 4)
        {
          v140 = 4;
        }

        else
        {
          v140 = 5;
        }
      }

      else
      {
        switch(v139)
        {
          case 6u:
            v139 = 7;
            v140 = 6;
            break;
          case 7u:
            v139 = 8;
            v140 = 7;
            break;
          case 8u:
            v139 = 9;
            v140 = 8;
            break;
          default:
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v141 = mach_continuous_time();
              v142 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx BandID,%u\n", (*&g_MacClockTicksToMsRelation * v141), "ADP", 87, "Ga06_08GetBandCorrection", 770, v139);
              LbsOsaTrace_WriteLog(0x18u, __str, v142, 2, 1);
            }

            v139 = 0;
            v140 = 0;
            break;
        }
      }

      v143 = 1 << v140;
      v136 = *(v131 + 304);
      if ((v143 & v134) == 0)
      {
        v144 = v136 + 312 * v135 + 8 * v138;
        v145 = *(v144 + 216) * 3.33564095;
        v146 = *(v144 + 248) * 3.33564095;
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v147 = mach_continuous_time();
          v148 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: BAND,%u,RfTimeBiasNs,%f,RfTimeBiasUncNs,%f\n", (*&g_MacClockTicksToMsRelation * v147), "ADP", 73, "Ga06_08GetBandCorrection", v139, v145, v146);
          LbsOsaTrace_WriteLog(0x18u, __str, v148, 4, 1);
        }

        v149 = v133 - __src;
        v150 = 0xAAAAAAAAAAAAAAABLL * (v149 >> 3) + 1;
        if (v150 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * (-__src >> 3) > v150)
        {
          v150 = 0x5555555555555556 * (-__src >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-__src >> 3) >= 0x555555555555555)
        {
          v151 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v151 = v150;
        }

        if (v151)
        {
          if (v151 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v152 = 8 * (v149 >> 3);
        *v152 = v145;
        *(v152 + 8) = v146;
        *(v152 + 12) = 2143289344;
        *(v152 + 16) = v139;
        v153 = v152 + 24;
        v154 = (v152 + 24 * (v149 / -24));
        memcpy(v154, __src, v149);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v154;
        v134 |= v143;
        v136 = *(v131 + 304);
        v221 = v153;
        v133 = v153;
      }

LABEL_204:
      v137 = v138 + 1;
    }

    while (*(v136 + 312 * v135 + 176) > (v138 + 1));
    v132 = *(v131 + 296);
LABEL_206:
    ++v135;
  }

  while (v135 < v132);
  v155 = *&v243[8];
  v157 = (*&v243[8] + 40);
  v156 = *(*&v243[8] + 40);
  v2 = v217;
  if (v156)
  {
    *(*&v243[8] + 48) = v156;
    operator delete(v156);
    *v157 = 0;
    v157[1] = 0;
    v157[2] = 0;
  }

  v1 = a1;
  v159 = v221;
  v158 = __src;
LABEL_211:
  v155[5] = v158;
  v155[6] = v159;
  v155[7] = 0;
  v3 = *(v2 + 280);
LABEL_212:
  v229 = 0;
  v230 = &v229;
  v231 = 0x3002000000;
  v232 = __Block_byref_object_copy__19;
  v233 = __Block_byref_object_dispose__20;
  v234 = 0;
  if ((v3 & 0x20) != 0)
  {
    v160 = *(*(v1 + 32) + 8);
    v161 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (!v161)
    {
      v223 = 0;
      snprintf(v254, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_09GetTimeConv", 1384, "Memory allocation failed for TimeConversion");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v205 = mach_continuous_time();
        v206 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v205), "OSA", 69, "Ga06_09GetTimeConv", v254);
        LbsOsaTrace_WriteLog(0xEu, __str, v206, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_09GetTimeConv", "ga06GnssPvtmUtils.cpp", 1384, "false && Memory allocation failed for TimeConversion");
    }

    v162 = v161;
    v161[4] = 0;
    *v161 = 0u;
    *(v161 + 1) = 0u;
    v223 = v161;
    v163 = operator new(0x40uLL, MEMORY[0x29EDC9418]);
    if (!v163)
    {
      snprintf(v254, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_10GetTimeConvGPS", 1414, "Memory allocation failed for GpsTimeInfo");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v207 = mach_continuous_time();
        v208 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v207), "OSA", 69, "Ga06_10GetTimeConvGPS", v254);
        LbsOsaTrace_WriteLog(0xEu, __str, v208, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_10GetTimeConvGPS", "ga06GnssPvtmUtils.cpp", 1414, "false && Memory allocation failed for GpsTimeInfo");
    }

    v164 = v163;
    *(v163 + 10) = 0;
    *(v163 + 2) = 0;
    v163[12] = 0x8000;
    *(v163 + 4) = 0;
    *(v163 + 20) = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v163 + 7) = 0x7FF8000000000000;
    *v163 = *(v160 + 120);
    v165 = *(v160 + 134);
    v163[4] = v165;
    v166 = *(v160 + 130);
    if (*(v160 + 130) && (v167 = *(v160 + 132), *(v160 + 132)) && (v168 = *(v160 + 133), *(v160 + 133)))
    {
      if (v165 == v168)
      {
        *(v163 + 10) = 1;
      }

      else
      {
        *(v163 + 10) = 2;
        *(v163 + 2) = 604800000000000 * v166 + 86400000000000 * v167;
        v163[12] = v168;
      }
    }

    else
    {
      *(v163 + 10) = 0;
    }

    *(v163 + 4) = 604800000000000 * *(v160 + 136) + 1000000000 * *(v160 + 140);
    *(v163 + 20) = *(v160 + 144);
    *(v163 + 7) = *(v160 + 160);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v169 = mach_continuous_time();
      v170 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Week,%u,CurLeapSec,%d,NewLeapSecKnwdg,%hhu,TimeOfChangeNs,%llu,NewLeapSec,%d,TimeNs,%llu,OffsetNs,%f,DriftPpb,%f,AccelPpbPerSec,%f\n", (*&g_MacClockTicksToMsRelation * v169), "ADP", 68, "Ga06_10GetTimeConvGPS", *v164, v164[4], *(v164 + 10), *(v164 + 2), v164[12], *(v164 + 4), *(v164 + 5), *(v164 + 6), *(v164 + 7));
      LbsOsaTrace_WriteLog(0x18u, __str, v170, 5, 1);
    }

    v171 = *v162;
    *v162 = v164;
    if (v171)
    {
      MEMORY[0x29C29EB20](v171, 0x1000C4079AA8B5ELL);
    }

    v172 = operator new(0x18uLL, MEMORY[0x29EDC9418]);
    if (!v172)
    {
      snprintf(v254, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_11GetTimeConvGlonass", 1480, "Memory allocation failed for GlonTimeInfo");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v209 = mach_continuous_time();
        v210 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v209), "OSA", 69, "Ga06_11GetTimeConvGlonass", v254);
        LbsOsaTrace_WriteLog(0xEu, __str, v210, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_11GetTimeConvGlonass", "ga06GnssPvtmUtils.cpp", 1480, "false && Memory allocation failed for GlonTimeInfo");
    }

    v173 = v172;
    v174 = *(v160 + 124);
    *v172 = v174;
    v175 = *(v160 + 122);
    v172[1] = v175;
    *(v172 + 1) = 126230400000000000 * v174 + 86400000000000 * v175;
    *(v172 + 2) = -*(v160 + 184);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v176 = mach_continuous_time();
      v177 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 4YrPeriod,%u,Day,%u,CollecnTimeNs,%llu,OffsetNs,%f\n", (*&g_MacClockTicksToMsRelation * v176), "ADP", 68, "Ga06_11GetTimeConvGlonass", *v173, v173[1], *(v173 + 1), *(v173 + 2));
      LbsOsaTrace_WriteLog(0x18u, __str, v177, 5, 1);
    }

    v178 = v162[1];
    v162[1] = v173;
    if (v178)
    {
      MEMORY[0x29C29EB20](v178, 0x1000C40D315E998);
    }

    v179 = operator new(0x20uLL, MEMORY[0x29EDC9418]);
    if (!v179)
    {
      snprintf(v254, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_12GetTimeConvBeidou", 1515, "Memory allocation failed for BeidouTimeInfo");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v211 = mach_continuous_time();
        v212 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v211), "OSA", 69, "Ga06_12GetTimeConvBeidou", v254);
        LbsOsaTrace_WriteLog(0xEu, __str, v212, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_12GetTimeConvBeidou", "ga06GnssPvtmUtils.cpp", 1515, "false && Memory allocation failed for BeidouTimeInfo");
    }

    v180 = v179;
    *v179 = *(v160 + 126);
    *(v179 + 1) = 604800000000000 * *(v160 + 216) + 1000000000 * *(v160 + 220);
    *(v179 + 1) = *(v160 + 224);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v181 = mach_continuous_time();
      v182 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Week,%u,GpsTimeNs,%llu,OffsetNs,%f,DriftPpb,%f\n", (*&g_MacClockTicksToMsRelation * v181), "ADP", 73, "Ga06_12GetTimeConvBeidou", *v180, *(v180 + 1), *(v180 + 2), *(v180 + 3));
      LbsOsaTrace_WriteLog(0x18u, __str, v182, 4, 1);
    }

    v183 = v162[2];
    v162[2] = v180;
    if (v183)
    {
      MEMORY[0x29C29EB20](v183, 0x1000C4095D96C66);
    }

    v184 = operator new(0x20uLL, MEMORY[0x29EDC9418]);
    if (!v184)
    {
      snprintf(v254, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_13GetTimeConvGalileo", 1550, "Memory allocation failed for GalTimeInfo");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v213 = mach_continuous_time();
        v214 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v213), "OSA", 69, "Ga06_13GetTimeConvGalileo", v254);
        LbsOsaTrace_WriteLog(0xEu, __str, v214, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_13GetTimeConvGalileo", "ga06GnssPvtmUtils.cpp", 1550, "false && Memory allocation failed for GalTimeInfo");
    }

    v185 = v184;
    *v184 = *(v160 + 128);
    *(v184 + 1) = 604800000000000 * *(v160 + 192) + 1000000000 * *(v160 + 196);
    *(v184 + 1) = *(v160 + 200);
    v2 = v217;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v186 = mach_continuous_time();
      v187 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Week,%u,TimeNs,%llu,OffsetNs,%f,DriftPpb,%f\n", (*&g_MacClockTicksToMsRelation * v186), "ADP", 73, "Ga06_13GetTimeConvGalileo", *v185, *(v185 + 1), *(v185 + 2), *(v185 + 3));
      LbsOsaTrace_WriteLog(0x18u, __str, v187, 4, 1);
    }

    v188 = v162[3];
    v162[3] = v185;
    if (v188)
    {
      MEMORY[0x29C29EB20](v188, 0x1000C4095D96C66);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v189 = mach_continuous_time();
      v190 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time info populated\n", (*&g_MacClockTicksToMsRelation * v189), "ADP", 68, "Ga06_09GetTimeConv");
      LbsOsaTrace_WriteLog(0x18u, __str, v190, 5, 1);
    }

    v223 = 0;
    std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v223, 0);
    v242 = 0;
    std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](v230 + 5, v162);
    std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v242, 0);
    v3 = *(v217 + 280);
  }

  v223 = 0;
  v224 = &v223;
  v225 = 0x4002000000;
  v226 = __Block_byref_object_copy__21;
  v227 = __Block_byref_object_dispose__22;
  memset(v228, 0, sizeof(v228));
  if ((v3 & 8) != 0)
  {
    if (*(*(*(v1 + 32) + 8) + 296) >= 0x100u)
    {
      v192 = 256;
    }

    else
    {
      v192 = *(*(*(v1 + 32) + 8) + 296);
    }

    if (*(*(*(v1 + 32) + 8) + 296))
    {
      v256 = v228;
      std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::SvInfo>>(v192);
    }

    v191 = -252645135 * ((v224[6] - v224[5]) >> 3);
    v2 = v217;
    v1 = a1;
  }

  else
  {
    v191 = 0;
  }

  v193 = *(*(v1 + 32) + 8);
  v194 = v193[14];
  if (v194)
  {
    MEMORY[0x29C29EAF0](v194, 0x1000C807B0C7242);
    v193 = *(*(v1 + 32) + 8);
  }

  v195 = v193[36];
  if (v195)
  {
    MEMORY[0x29C29EAF0](v195, 0x1000C80F973AAC2);
    v193 = *(*(v1 + 32) + 8);
  }

  v196 = v193[38];
  if (v196)
  {
    MEMORY[0x29C29EAF0](v196, 0x1000C80E6928973);
    v193 = *(*(v1 + 32) + 8);
  }

  v193[14] = 0;
  *(*(*(v1 + 32) + 8) + 288) = 0;
  *(*(*(v1 + 32) + 8) + 304) = 0;
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v254, v2 + 312);
  v197 = *(v2 + 296);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_23;
  block[3] = &unk_2A1F89D60;
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v253, v254);
  block[4] = &v235;
  block[5] = &v223;
  block[6] = v243;
  block[7] = &v229;
  dispatch_async(v197, block);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v198 = mach_continuous_time();
    v199 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Meas update,SvInfo Size,%u\n", (*&g_MacClockTicksToMsRelation * v198), "ADP", 73, "Ga06_01ReportPvtm_block_invoke", v191);
    LbsOsaTrace_WriteLog(0x18u, __str, v199, 4, 1);
  }

  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v253);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v254);
  _Block_object_dispose(&v223, 8);
  *__str = v228;
  std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](__str);
  _Block_object_dispose(&v229, 8);
  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v234, 0);
  _Block_object_dispose(v243, 8);
  if (*&v243[40])
  {
    *&v244 = *&v243[40];
    operator delete(*&v243[40]);
  }

  _Block_object_dispose(&v235, 8);
  return std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v240, 0);
}

void sub_29967991C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&a33, 0);
  std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100]((v52 + 160), 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a41, 0);
  _Block_object_dispose(&a47, 8);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a52, 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t *__Block_byref_object_dispose__16(uint64_t a1, __n128 a2)
{
  v2 = (a1 + 40);

  return std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](v2, 0);
}

__n128 __Block_byref_object_copy__17(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__18(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t **__Block_byref_object_dispose__20(uint64_t a1, __n128 a2)
{
  v2 = (a1 + 40);

  return std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](v2, 0);
}

__n128 __Block_byref_object_copy__21(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__22(uint64_t a1)
{
  v1[1] = *MEMORY[0x29EDCA608];
  v1[0] = (a1 + 40);
  std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_23(void *a1)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v1 = *(a1[4] + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v12 = v2;
  v13[0] = 0;
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
  v10 = 0;
  v11 = v6;
  v7 = a1[11];
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v7 + 48))(v7, v13, &v12, v3 + 40, v4 + 40, &v11, &v10);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    MEMORY[0x29C29EB20](v8, 0x1000C400A747E1ELL);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v11, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v12, 0);
  result = v13[0];
  v13[0] = 0;
  if (result)
  {
    return MEMORY[0x29C29EB20](result, 0x1000C4043D32D5CLL);
  }

  return result;
}

void sub_299679F84(_Unwind_Exception *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a14, uint64_t a15)
{
  if (a11)
  {
    MEMORY[0x29C29EB20](a11, 0x1000C400A747E1ELL, a4, a5, a6, a7, a8, a9, a2);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&a12, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a14, 0);
  v15 = a15;
  a15 = 0;
  if (v15)
  {
    MEMORY[0x29C29EB20](v15, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_64c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 64;
  v3 = a2 + 64;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_64c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  v1 = a1 + 64;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_2(void *a1)
{
  v90 = *MEMORY[0x29EDCA608];
  v1 = a1[4];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3002000000;
  v77 = __Block_byref_object_copy__30;
  v78 = __Block_byref_object_dispose__31;
  v79 = 0;
  if ((*(v1 + 280) & 1) == 0)
  {
    goto LABEL_148;
  }

  v3 = a1[5];
  v2 = a1[6];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = operator new(0xC8uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    snprintf(v83, 0x400uLL, "ASSERT,%s,%d,%s", "Ga06_02GetPvtmInfo", 265, "Memory allocation failed for FixData");
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v67 = mach_continuous_time();
      v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v67), "OSA", 69, "Ga06_02GetPvtmInfo", v83);
      LbsOsaTrace_WriteLog(0xEu, __str, v68, 0, 1);
    }

    if (gp_Logger)
    {
      (*(*gp_Logger + 48))(gp_Logger);
    }

    __assert_rtn("Ga06_02GetPvtmInfo", "ga06GnssPvtmUtils.cpp", 265, "false && Memory allocation failed for FixData");
  }

  v5 = v4;
  *(v4 + 2) = -1082130432;
  v4[12] = 0;
  *(v4 + 4) = 0;
  *(v4 + 3) = -1;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v4 + 4) = 0u;
  *(v4 + 5) = _Q1;
  *(v4 + 6) = _Q1;
  *(v4 + 14) = 0;
  v11 = v4 + 112;
  *(v4 + 32) = 0;
  *(v4 + 15) = 0;
  *(v4 + 136) = _Q1;
  *(v4 + 152) = xmmword_299760840;
  *(v4 + 168) = _Q1;
  *(v4 + 23) = 0;
  *(v4 + 48) = 0;
  *v4 = vcvtad_u64_f64(*(v3 + 5) * 1000000000.0) + 604800000000000 * *(v3 + 14);
  v12 = *(v3 + 4) * 1000000000.0;
  if (v12 <= 3.40282347e38)
  {
    v13 = v12;
    if (!*(v3 + 9))
    {
      v13 = 3.4028e38;
    }
  }

  else
  {
    v13 = 3.4028e38;
  }

  *(v4 + 2) = v13;
  if (*(v3 + 10) == 1)
  {
    v14 = *(v3 + 9);
  }

  else
  {
    v14 = 0;
  }

  v4[12] = v14 & 1;
  v15 = *(v3 + 8);
  if (v15 > 2147483650.0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UtcCorr,%.9f\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 69, "Ga06_02GetPvtmInfo", 770, v15);
      LbsOsaTrace_WriteLog(0x18u, __str, v17, 0, 1);
    }

    MEMORY[0x29C29EB20](v5, 0x1000C4043D32D5CLL);
    v5 = 0;
    goto LABEL_141;
  }

  v18 = -0.5;
  if (v15 > 0.0)
  {
    v18 = 0.5;
  }

  *(v4 + 4) = (v15 + v18);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0);
  v69 = v2;
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LeapSec BeforeRound,%.9f,AfterRound,%d\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 68, "Ga06_02GetPvtmInfo", v15, *(v5 + 4));
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v21, 5, 1);
  }

  v22 = v15 - v15;
  if (v22 > 0.0000005 && v22 < 0.9999995)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UtcCorr beyond 500ns from seconds boundary,%.9f\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 87, "Ga06_02GetPvtmInfo", 770, v15);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v24, 2, 1);
    }
  }

  *(v5 + 3) = 1000000 * *v3;
  *(v5 + 3) = *(v3 + 26);
  v25 = *(v3 + 15);
  *(v5 + 8) = v25;
  *(v5 + 9) = v25 - *(v3 + 16);
  *(v5 + 5) = *(v3 + 12);
  *(v5 + 6) = *(v3 + 13);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = 0;
  v27 = 0;
  v28 = v3 + 77;
  do
  {
    if (*(v3 + v26 + 5688) != 1)
    {
      goto LABEL_42;
    }

    v29 = *(v28 + v26);
    if (v29 > 2)
    {
      switch(v29)
      {
        case 3u:
          v27 |= 0x10u;
          goto LABEL_42;
        case 5u:
          v27 |= 4u;
          goto LABEL_42;
        case 6u:
          v27 |= 8u;
          goto LABEL_42;
      }
    }

    else
    {
      if (!*(v28 + v26))
      {
        goto LABEL_42;
      }

      if (v29 == 1)
      {
        v27 |= 1u;
        goto LABEL_42;
      }

      if (v29 == 2)
      {
        v27 |= 2u;
        goto LABEL_42;
      }
    }

    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstType,%u\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 87, "Ga06_03GetConstlUsedInFix", 770, v29);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v31, 2, 1);
    }

LABEL_42:
    ++v26;
  }

  while (v26 != 128);
  *v11 = v27;
  v2 = v69;
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  v32 = *(v3 + 304);
  if (v32 <= 1)
  {
    if (!*(v3 + 304))
    {
      *(v5 + 29) = 0;
      goto LABEL_56;
    }

    if (v32 != 1)
    {
      goto LABEL_159;
    }

    v33 = 10;
LABEL_55:
    *(v5 + 29) = v33;
    goto LABEL_56;
  }

  switch(v32)
  {
    case 2u:
      v33 = 25;
      goto LABEL_55;
    case 3u:
      v33 = 50;
      goto LABEL_55;
    case 4u:
      v33 = 75;
      goto LABEL_55;
  }

LABEL_159:
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v65 = mach_continuous_time();
    v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Rel,%hhu\n", (*&g_MacClockTicksToMsRelation * v65), "ADP", 87, "Ga06_02GetPvtmInfo", 770, *(v3 + 304));
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v66, 2, 1);
  }

LABEL_56:
  v34 = v3[75];
  if (!v34)
  {
    *(v5 + 15) = 0;
    goto LABEL_103;
  }

  if ((v34 & 1) == 0)
  {
    if ((v34 & 2) == 0)
    {
      goto LABEL_59;
    }

LABEL_82:
    *(v5 + 15) |= 1uLL;
    if ((v34 & 4) != 0)
    {
      goto LABEL_83;
    }

LABEL_60:
    if ((v34 & 0x40) == 0)
    {
      goto LABEL_61;
    }

LABEL_84:
    *(v5 + 15) |= 8uLL;
    if ((v34 & 0x80) != 0)
    {
      goto LABEL_85;
    }

LABEL_62:
    if ((v34 & 0x100) == 0)
    {
      goto LABEL_63;
    }

LABEL_86:
    *(v5 + 15) |= 0x400uLL;
    if ((v34 & 0x200) != 0)
    {
      goto LABEL_87;
    }

LABEL_64:
    if ((v34 & 0x400) == 0)
    {
      goto LABEL_65;
    }

LABEL_88:
    *(v5 + 15) |= 0x1000uLL;
    if ((v34 & 0x800) != 0)
    {
      goto LABEL_89;
    }

LABEL_66:
    if ((v34 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

LABEL_90:
    *(v5 + 15) |= 0x2000uLL;
    if ((v34 & 0x2000) != 0)
    {
      goto LABEL_91;
    }

LABEL_68:
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

LABEL_92:
    *(v5 + 15) |= 0x200uLL;
    if ((v34 & 0x8000) != 0)
    {
      goto LABEL_93;
    }

LABEL_70:
    if ((v34 & 0x10000) == 0)
    {
      goto LABEL_71;
    }

LABEL_94:
    *(v5 + 15) |= 0x8000uLL;
    if ((v34 & 0x20000) != 0)
    {
      goto LABEL_95;
    }

LABEL_72:
    if ((v34 & 0x40000) == 0)
    {
      goto LABEL_73;
    }

LABEL_96:
    *(v5 + 15) |= 0x10000uLL;
    if ((v34 & 0x1000000) != 0)
    {
      goto LABEL_97;
    }

LABEL_74:
    if ((v34 & 0x2000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_98:
    *(v5 + 15) |= 0x40uLL;
    if ((v34 & 0x4000000) != 0)
    {
      goto LABEL_99;
    }

LABEL_76:
    if ((v34 & 0x10000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_100:
    *(v5 + 15) |= 0x40000uLL;
    if ((v34 & 0x20000000) != 0)
    {
      goto LABEL_101;
    }

LABEL_78:
    if ((v34 & 0x40000000) == 0)
    {
      goto LABEL_103;
    }

LABEL_102:
    *(v5 + 15) |= 0x100000uLL;
    goto LABEL_103;
  }

  *(v5 + 15) |= 2uLL;
  if ((v34 & 2) != 0)
  {
    goto LABEL_82;
  }

LABEL_59:
  if ((v34 & 4) == 0)
  {
    goto LABEL_60;
  }

LABEL_83:
  *(v5 + 15) |= 4uLL;
  if ((v34 & 0x40) != 0)
  {
    goto LABEL_84;
  }

LABEL_61:
  if ((v34 & 0x80) == 0)
  {
    goto LABEL_62;
  }

LABEL_85:
  *(v5 + 15) |= 0x10uLL;
  if ((v34 & 0x100) != 0)
  {
    goto LABEL_86;
  }

LABEL_63:
  if ((v34 & 0x200) == 0)
  {
    goto LABEL_64;
  }

LABEL_87:
  *(v5 + 15) |= 0x800uLL;
  if ((v34 & 0x400) != 0)
  {
    goto LABEL_88;
  }

LABEL_65:
  if ((v34 & 0x800) == 0)
  {
    goto LABEL_66;
  }

LABEL_89:
  *(v5 + 15) |= 0x200000uLL;
  if ((v34 & 0x1000) != 0)
  {
    goto LABEL_90;
  }

LABEL_67:
  if ((v34 & 0x2000) == 0)
  {
    goto LABEL_68;
  }

LABEL_91:
  *(v5 + 15) |= 0x100uLL;
  if ((v34 & 0x4000) != 0)
  {
    goto LABEL_92;
  }

LABEL_69:
  if ((v34 & 0x8000) == 0)
  {
    goto LABEL_70;
  }

LABEL_93:
  *(v5 + 15) |= 0x4000uLL;
  if ((v34 & 0x10000) != 0)
  {
    goto LABEL_94;
  }

LABEL_71:
  if ((v34 & 0x20000) == 0)
  {
    goto LABEL_72;
  }

LABEL_95:
  *(v5 + 15) |= 0x20000uLL;
  if ((v34 & 0x40000) != 0)
  {
    goto LABEL_96;
  }

LABEL_73:
  if ((v34 & 0x1000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_97:
  *(v5 + 15) |= 0x20uLL;
  if ((v34 & 0x2000000) != 0)
  {
    goto LABEL_98;
  }

LABEL_75:
  if ((v34 & 0x4000000) == 0)
  {
    goto LABEL_76;
  }

LABEL_99:
  *(v5 + 15) |= 0x80uLL;
  if ((v34 & 0x10000000) != 0)
  {
    goto LABEL_100;
  }

LABEL_77:
  if ((v34 & 0x20000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_101:
  *(v5 + 15) |= 0x80000uLL;
  if ((v34 & 0x40000000) != 0)
  {
    goto LABEL_102;
  }

LABEL_103:
  v35 = *(v3 + 293);
  if (v35 <= 1)
  {
    if (!*(v3 + 293))
    {
      *(v5 + 32) = 0;
      goto LABEL_108;
    }

    if (v35 == 1)
    {
      goto LABEL_107;
    }
  }

  else if (v35 == 2 || v35 == 3 || v35 == 4)
  {
LABEL_107:
    *(v5 + 32) = v35;
    goto LABEL_108;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v41 = mach_continuous_time();
    v42 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssContent,%hhu\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 87, "Ga06_02GetPvtmInfo", 770, *(v3 + 293));
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v42, 2, 1);
  }

LABEL_108:
  *(v5 + 17) = *(v3 + 17);
  *(v5 + 18) = *(v3 + 28);
  *(v5 + 19) = *(v3 + 19);
  *(v5 + 20) = *(v3 + 29);
  v36 = *(v3 + 18);
  if (v36 < 0.0 || v36 >= 360.0 || (v37 = *(v3 + 30), v37 <= 0.0))
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v38 = mach_continuous_time();
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Course,%f,Uncertainty,%f\n", (*&g_MacClockTicksToMsRelation * v38), "ADP", 69, "Ga06_02GetPvtmInfo", 515, *(v3 + 18), *(v3 + 30));
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x18u, __str, v39, 0, 1);
    }
  }

  else
  {
    *(v5 + 21) = v36;
    *(v5 + 22) = v37;
  }

  *(v5 + 23) = gnss::GnssAdaptDevice::Ga06_18GetGnssSpoofingFlag(IsLoggingAllowed, v3[74]);
  v40 = *(v3 + 305);
  if (v40 > 1)
  {
    if (v40 != 2 && v40 != 3)
    {
      goto LABEL_125;
    }

    goto LABEL_120;
  }

  if (!*(v3 + 305))
  {
    *(v5 + 48) = 0;
    goto LABEL_128;
  }

  if (v40 == 1)
  {
LABEL_120:
    *(v5 + 48) = v40;
    goto LABEL_128;
  }

LABEL_125:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v43 = mach_continuous_time();
    v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EstimationTech,%u\n", (*&g_MacClockTicksToMsRelation * v43), "ADP", 87, "Ga06_02GetPvtmInfo", 770, *(v3 + 305));
    LbsOsaTrace_WriteLog(0x18u, __str, v44, 2, 1);
  }

LABEL_128:
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v45 = mach_continuous_time();
    v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: spoofingFlags,%llu,Rel,%u,AssisUsed,%llu,GnssContentInFix,%u,EstimTech,%u\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 73, "Ga06_02GetPvtmInfo", *(v5 + 23), *(v5 + 29), *(v5 + 15), *(v5 + 32), *(v5 + 48));
    LbsOsaTrace_WriteLog(0x18u, __str, v46, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v47 = mach_continuous_time();
    v48 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Lat,%f,Lon,%f,Alt,%f\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 73, "Ga06_02GetPvtmInfo", *(v5 + 6), *(v5 + 7), *(v5 + 8));
    LbsOsaTrace_WriteLog(0x18u, __str, v48, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v49 = mach_continuous_time();
    v50 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimeNS,%llu,TimeUncNs,%f,LeapStart,%d,ClkNs,%llu\n", (*&g_MacClockTicksToMsRelation * v49), "ADP", 73, "Ga06_02GetPvtmInfo", *v5, *(v5 + 2), *(v5 + 4), *(v5 + 3));
    LbsOsaTrace_WriteLog(0x18u, __str, v50, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v51 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (v5[12])
    {
      v52 = 84;
    }

    else
    {
      v52 = 70;
    }

    v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LeapSecValid,%c,VUnc,%f,HMajUnc,%f,HMinUnc,%f,HAzmBrg,%f,HS,%f,HSpeedUnc,%f,VVel,%f,VVelUnc,%f\n", v51, "ADP", 73, "Ga06_02GetPvtmInfo", v52, *(v5 + 10), *(v5 + 11), *(v5 + 12), *(v5 + 13), *(v5 + 17), *(v5 + 18), *(v5 + 19), *(v5 + 20));
    LbsOsaTrace_WriteLog(0x18u, __str, v53, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v54 = mach_continuous_time();
    v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: U,%f,S,%u,C,%f,CUnc,%f\n", (*&g_MacClockTicksToMsRelation * v54), "ADP", 73, "Ga06_02GetPvtmInfo", *(v5 + 9), *(v5 + 28), *(v5 + 21), *(v5 + 22));
    LbsOsaTrace_WriteLog(0x18u, __str, v55, 4, 1);
  }

LABEL_141:
  v56 = v75[5];
  v75[5] = v5;
  if (v56)
  {
    MEMORY[0x29C29EB20](v56, 0x1000C4043D32D5CLL);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v75[5])
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v57 = mach_continuous_time();
      v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Reporting PVTM\n", (*&g_MacClockTicksToMsRelation * v57), "ADP", 68, "Ga06_01ReportPvtm_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v58, 5, 1);
    }

LABEL_148:
    *v83 = 0;
    v84 = v83;
    v85 = 0x4002000000;
    v86 = __Block_byref_object_copy__21;
    v87 = __Block_byref_object_dispose__22;
    memset(v88, 0, 24);
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x4002000000;
    v70[3] = __Block_byref_object_copy__17;
    v70[4] = __Block_byref_object_dispose__18;
    __p = 0;
    v72 = 0;
    v73 = 0;
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v82, v1 + 312);
    v59 = *(v1 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_2_34;
    block[3] = &unk_2A1F89D98;
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v81, v82);
    block[4] = &v74;
    block[5] = v83;
    block[6] = v70;
    dispatch_async(v59, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v60 = mach_continuous_time();
      v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PVT update Sent out\n", (*&g_MacClockTicksToMsRelation * v60), "ADP", 77, "Ga06_01ReportPvtm_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v61, 3, 1);
    }

    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v81);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v82);
    _Block_object_dispose(v70, 8);
    if (__p)
    {
      v72 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(v83, 8);
    *__str = v88;
    std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](__str);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v63 = mach_continuous_time();
    v64 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Fix\n", (*&g_MacClockTicksToMsRelation * v63), "ADP", 69, "Ga06_01ReportPvtm_block_invoke", 770);
    LbsOsaTrace_WriteLog(0x18u, __str, v64, 0, 1);
  }

  _Block_object_dispose(&v74, 8);
  result = v79;
  v79 = 0;
  if (result)
  {
    return MEMORY[0x29C29EB20](result, 0x1000C4043D32D5CLL);
  }

  return result;
}

void sub_29967B274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  MEMORY[0x29C29EB20](v37, 0x1000C4043D32D5CLL, a3, a4, a5, a6, a7, a8);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Block_object_dispose(&a32, 8);
  v39 = a37;
  a37 = 0;
  if (v39)
  {
    MEMORY[0x29C29EB20](v39, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__31(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    JUMPOUT(0x29C29EB20);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_2_34(void *a1)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v1 = *(a1[4] + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v10 = 0;
  v11[0] = v2;
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  v8 = 0;
  v9 = 0;
  v5 = a1[10];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, v11, &v10, v3 + 40, v4 + 40, &v9, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    MEMORY[0x29C29EB20](v6, 0x1000C400A747E1ELL);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v9, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v10, 0);
  result = v11[0];
  v11[0] = 0;
  if (result)
  {
    return MEMORY[0x29C29EB20](result, 0x1000C4043D32D5CLL);
  }

  return result;
}

void sub_29967B58C(_Unwind_Exception *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a14, uint64_t a15)
{
  if (a11)
  {
    MEMORY[0x29C29EB20](a11, 0x1000C400A747E1ELL, a4, a5, a6, a7, a8, a9, a2);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&a12, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a14, 0);
  v15 = a15;
  a15 = 0;
  if (v15)
  {
    MEMORY[0x29C29EB20](v15, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_56c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 56;
  v3 = a2 + 56;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_56c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  v1 = a1 + 56;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v1);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrI19s_Gnm_AppCStructNavEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrI19s_Gnm_AppCStructNavEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t gnss::GnssAdaptDevice::Ga06_18GetGnssSpoofingFlag(gnss::GnssAdaptDevice *this, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = a2 & 0x20F | (((a2 >> 4) & 1) << 6) | (a2 >> 4) & 0x10 | (a2 >> 3) & 0x80 | (a2 >> 7) & 0x20 | (a2 >> 5) & 0x100;
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnsAsstSpoofMask,%u,Spoofing Flag,%llu\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 73, "Ga06_18GetGnssSpoofingFlag", a2, v3);
    LbsOsaTrace_WriteLog(0x18u, __str, v5, 4, 1);
  }

  return v3;
}

uint64_t gnss::GnssAdaptDevice::Ga06_17GetDetectionMethod(uint64_t result)
{
  v6 = *MEMORY[0x29EDCA608];
  if (result >= 5)
  {
    v1 = result;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Default MeasModelCode,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 87, "Ga06_17GetDetectionMethod", 770, v1);
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 2, 1);
      return 0;
    }
  }

  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga06_19GetSvHealthAndIntegrity(uint64_t result)
{
  v6 = *MEMORY[0x29EDCA608];
  if (result >= 3)
  {
    v1 = result;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HealthUnknown,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 87, "Ga06_19GetSvHealthAndIntegrity", 770, v1);
      LbsOsaTrace_WriteLog(0x18u, __str, v4, 2, 1);
      return 0;
    }
  }

  return result;
}

void gnss::GnssAdaptDevice::Ga06_15GnssRegisterNmeaCB(gnss::GnssAdaptDevice *a1, const void *a2, unsigned __int16 a3)
{
  v5 = a1;
  v21 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    if (v5)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Report Err,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga06_16ReportNmea", 769, v5);
        LbsOsaTrace_WriteLog(0x18u, __str, v8, 0, 1);
      }
    }

    else if (a2)
    {
      v9 = DeviceInstance;
      if (a3 >= 0x17uLL)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      __dst.__r_.__value_.__s.__data_[a3] = 0;
      v12 = *(v9 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v16 = 1174405120;
      v17 = ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke;
      v18 = &__block_descriptor_tmp_108;
      v19 = v9;
      v13 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __dst;
      }

      dispatch_async(v12, __str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v13 < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NMEA Payload\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 87, "Ga06_16ReportNmea", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v11, 2, 1);
    }
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v61[6] = 0;
  v3 = MEMORY[0x29EDC95A0] + 64;
  v61[0] = MEMORY[0x29EDC95A0] + 64;
  v4 = *(MEMORY[0x29EDC9530] + 16);
  v57[0] = *(MEMORY[0x29EDC9530] + 8);
  *(v57 + *(v57[0] - 24)) = v4;
  v57[1] = 0;
  v5 = (v57 + *(v57[0] - 24));
  std::ios_base::init(v5, &v58);
  v6 = MEMORY[0x29EDC95A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v57[0] = v6;
  v61[0] = v3;
  std::stringbuf::basic_stringbuf[abi:ne200100](&v58, (a1 + 40), 8);
  v47 = 0;
  v48 = &v47;
  v49 = 0x4002000000;
  v50 = __Block_byref_object_copy__103;
  v51 = __Block_byref_object_dispose__104;
  memset(v52, 0, 24);
  memset(&v46, 0, sizeof(v46));
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v57, &v46);
  if ((*(&v59[1].__locale_ + *(v57[0] - 24)) & 5) != 0)
  {
    first = 0;
  }

  else
  {
    first = v57;
  }

  v8 = v48;
  v53 = first;
  v43 = a1;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
    first = v53;
  }

  else
  {
    v54 = v46;
  }

  size = v54.__r_.__value_.__l.__size_;
  v10 = v54.__r_.__value_.__r.__words[0];
  v62[0] = v54.__r_.__value_.__r.__words[2];
  *(v62 + 3) = *(&v54.__r_.__value_.__r.__words[2] + 3);
  v11 = SHIBYTE(v54.__r_.__value_.__r.__words[2]);
  memset(&v54, 0, sizeof(v54));
  v55 = first;
  v44 = v10;
  v45 = v11;
  if (v11 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v10, size);
    first = v55;
    size = __p.__r_.__value_.__l.__size_;
    v12 = __p.__r_.__value_.__r.__words[0];
    LOBYTE(v11) = *(&__p.__r_.__value_.__s + 23);
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = __PAIR128__(size, v10);
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v62[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v62 + 3);
    v12 = v10;
  }

  LODWORD(v63) = __p.__r_.__value_.__r.__words[2];
  *(&v63 + 3) = *(&__p.__r_.__value_.__r.__words[2] + 3);
  memset(&__p, 0, sizeof(__p));
  v73.__first_ = first;
  if ((v11 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&v73.__begin_, v12, size);
    first = v73.__first_;
    begin = v73.__begin_;
    value_high = HIBYTE(v73.__end_cap_.__value_);
  }

  else
  {
    v73.__begin_ = v12;
    v73.__end_ = size;
    LODWORD(v73.__end_cap_.__value_) = v63;
    *(&v73.__end_cap_.__value_ + 3) = *(&v63 + 3);
    value_high = v11;
    begin = v12;
  }

  v69[1] = v73.__end_;
  *(&v69[1] + 7) = *(&v73.__end_ + 7);
  *__str = first;
  v69[0] = begin;
  HIBYTE(v69[2]) = value_high;
  v69[3] = 0;
  if ((v11 & 0x80) != 0)
  {
    operator delete(v12);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __s = *v69;
  v63 = first;
  v65 = v69[2];
  memset(v69, 0, 24);
  v71 = 0;
  v72 = 0;
  v70 = 0;
  if (first)
  {
    v15 = v8 + 5;
    while (1)
    {
      v17 = v8[6];
      v16 = v8[7];
      if (v17 >= v16)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v15) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v15) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        v73.__end_cap_.__value_ = (v8 + 5);
        if (v22)
        {
          if (v22 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v24 = (24 * v19);
        v73.__first_ = 0;
        v73.__begin_ = v24;
        value = 0;
        v73.__end_ = v24;
        v73.__end_cap_.__value_ = 0;
        if (SHIBYTE(v65) < 0)
        {
          std::string::__init_copy_ctor_external(v24, __s, *(&__s + 1));
          v24 = v73.__begin_;
          end = v73.__end_;
          value = v73.__end_cap_.__value_;
        }

        else
        {
          *&v24->__r_.__value_.__l.__data_ = __s;
          v24->__r_.__value_.__r.__words[2] = v65;
          end = v24;
        }

        v23 = end + 1;
        v27 = v8[5];
        v28 = v8[6] - v27;
        v29 = v24 - v28;
        memcpy(v24 - v28, v27, v28);
        v30 = v8[5];
        v8[5] = v29;
        v8[6] = v23;
        v31 = v8[7];
        v8[7] = value;
        v73.__end_ = v30;
        v73.__end_cap_.__value_ = v31;
        v73.__first_ = v30;
        v73.__begin_ = v30;
        std::__split_buffer<std::string>::~__split_buffer(&v73);
      }

      else
      {
        if (SHIBYTE(v65) < 0)
        {
          std::string::__init_copy_ctor_external(v8[6], __s, *(&__s + 1));
        }

        else
        {
          v18 = __s;
          *(v17 + 16) = v65;
          *v17 = v18;
        }

        v23 = (v17 + 24);
        v8[6] = v17 + 24;
      }

      v8[6] = v23;
      v32 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v63, &__s);
      if ((*(v32 + *(*v32 - 24) + 32) & 5) != 0)
      {
        break;
      }

      if (!v63)
      {
        goto LABEL_41;
      }
    }

    v63 = 0;
  }

LABEL_41:
  v33 = __s;
  v34 = SHIBYTE(v65);
  __s = 0uLL;
  v65 = 0;
  if (v45 < 0)
  {
    operator delete(v44);
  }

  v35 = MEMORY[0x29EDC9530];
  if (SHIBYTE(v72) < 0)
  {
    operator delete(v70);
  }

  if (SHIBYTE(v69[2]) < 0)
  {
    operator delete(v69[0]);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(v33);
LABEL_47:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](&v73, v2 + 408);
  if (v73.__end_cap_.__value_)
  {
    v36 = *(v2 + 296);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke_2;
    block[3] = &unk_2A1F89E00;
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v67, &v73);
    block[4] = &v47;
    dispatch_async(v36, block);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v37 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v38 = *(v43 + 63);
      if (v38 < 0)
      {
        v38 = *(v43 + 48);
      }

      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NMEA Sent len,%zu\n", v37, "ADP", 77, "Ga06_16ReportNmea_block_invoke", v38);
      LbsOsaTrace_WriteLog(0x18u, __str, v39, 3, 1);
    }

    std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v67);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v40 = mach_continuous_time();
    v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NMEA\n", (*&g_MacClockTicksToMsRelation * v40), "ADP", 69, "Ga06_16ReportNmea_block_invoke", 516);
    LbsOsaTrace_WriteLog(0x18u, __str, v41, 0, 1);
  }

  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](&v73);
  _Block_object_dispose(&v47, 8);
  *__str = v52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__str);
  v57[0] = *v35;
  *(v57 + *(v57[0] - 24)) = v35[3];
  v58 = MEMORY[0x29EDC9570] + 16;
  if (v60 < 0)
  {
    operator delete(v59[7].__locale_);
  }

  v58 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v59);
  std::istream::~istream();
  return MEMORY[0x29C29EAA0](v61);
}

void sub_29967C600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v42 - 136);
  _Block_object_dispose(&a25, 8);
  a33 = a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a33);
  std::istringstream::~istringstream(&a42);
  MEMORY[0x29C29EAA0](a20);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__103(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__104(uint64_t a1)
{
  v1[1] = *MEMORY[0x29EDCA608];
  v1[0] = (a1 + 40);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);

  return v2();
}

uint64_t __copy_helper_block_e8_40c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_40c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    v3 = *(a2 + 48);
    v4 = (a1 + 40);
    v5 = *(a2 + 40);

    std::string::__init_copy_ctor_external(v4, v5, v3);
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    v1 = *(a1 + 40);

    operator delete(v1);
  }
}

void std::vector<gnss::SvPositionAtTime>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    v15 = &v13[-2 * (v8 >> 5)];
    memcpy(v15, v7, v8);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void gnss::SvInfo::~SvInfo(gnss::SvInfo *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    MEMORY[0x29C29EB20](v3, 0x1000C40AC4F46D1);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9530];
  v3 = *MEMORY[0x29EDC9530];
  *a1 = *MEMORY[0x29EDC9530];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t *std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3[1] = *MEMORY[0x29EDCA608];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3[0] = (v2 + 112);
    std::vector<gnss::Measurement>::__destroy_vector::operator()[abi:ne200100](v3);
    return MEMORY[0x29C29EB20](v2, 0x1020C40B6788CC9);
  }

  return result;
}

void std::vector<gnss::Measurement>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 22;
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](v4 - 2, 0);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v2[4] = 0;
    if (v3)
    {
      MEMORY[0x29C29EB20](v3, 0x1000C4095D96C66);
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      MEMORY[0x29C29EB20](v4, 0x1000C4095D96C66);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      MEMORY[0x29C29EB20](v5, 0x1000C4095D96C66);
    }

    v6 = v2[1];
    v2[1] = 0;
    if (v6)
    {
      MEMORY[0x29C29EB20](v6, 0x1000C40D315E998);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      MEMORY[0x29C29EB20](v7, 0x1000C4079AA8B5ELL);
    }

    JUMPOUT(0x29C29EB20);
  }

  return result;
}

void std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 17;
        std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::~__shared_ptr_pointer(std::__shared_weak_count *this)
{

  std::__shared_weak_count::~__shared_weak_count(this);
}

void std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29EB20);
}

uint64_t std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {

    JUMPOUT(0x29C29EB20);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::__on_zero_shared_weak(void *__p)
{

  operator delete(__p);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[16];
    if (v3)
    {
      v2[17] = v3;
      operator delete(v3);
    }

    v4 = v2[12];
    if (v4)
    {
      v2[13] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x29C29EB20);
  }

  return result;
}

void std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    MEMORY[0x29C29EB20](v3, 0x1000C40AC4F46D1);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::SvInfo>>(unint64_t a1)
{
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<gnss::SvInfo>,gnss::SvInfo*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = 0;
      *(a3 + 24) = *(v5 + 3);
      v7 = v5[6];
      *(a3 + 40) = v5[5];
      v5[3] = 0;
      v5[4] = 0;
      v5[5] = 0;
      v5[6] = 0;
      *(a3 + 48) = v7;
      v8 = *(v5 + 7);
      v9 = *(v5 + 9);
      v10 = *(v5 + 11);
      *(a3 + 104) = *(v5 + 52);
      *(a3 + 88) = v10;
      *(a3 + 72) = v9;
      *(a3 + 56) = v8;
      *(a3 + 120) = 0;
      *(a3 + 128) = 0;
      *(a3 + 112) = 0;
      *(a3 + 112) = *(v5 + 7);
      *(a3 + 128) = v5[16];
      v5[14] = 0;
      v5[15] = 0;
      v5[16] = 0;
      v5 += 17;
      a3 += 136;
    }

    while (v5 != a2);
    do
    {
      std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(v4);
      v4 += 17;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<gnss::SvInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  MEMORY[0x29C29E9B0](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x29EDC93D0]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_29967DAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  if (a2)
  {
    std::locale::~locale(&a10);
    __cxa_begin_catch(exception_object);
    v12 = *v10;
    *(v10 + *(*v10 - 24) + 32) |= 1u;
    if ((*(v10 + *(v12 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x29967DA44);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void SuplResponseRecdVer2::UpdateLppADPayload(SuplUtils *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(SuplUtils::GetInstance(a1) + 36))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    if (a3)
    {
      v7 = *(a3 + 32);
      v6 = a3 + 32;
      v5 = v7;
      if (v6 != &v18)
      {
        v8 = *(v6 + 8);
        if (v5 != v8)
        {
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v18, v5, v8, v8 - v5);
          v9 = v18;
          v10 = v19;
          if (v18 != v19)
          {
            v11 = *(a2 + 8);
            __p = 0;
            v22 = 0;
            v23 = 0;
            *(v11 + 656) = 4;
            std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v9, v10, v10 - v9);
            std::vector<ASN1T_PosPayLoad_lpppayload>::push_back[abi:ne200100]((v11 + 744), &__p);
            *(v11 + 736) = 1;
            *(v11 + 2) = 1;
            if (__p)
            {
              v22 = __p;
              operator delete(__p);
            }

LABEL_14:
            if (v18)
            {
              v19 = v18;
              operator delete(v18);
            }

            return;
          }
        }
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(&__p, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "UpdateLppADPayload", 513);
      LbsOsaTrace_WriteLog(0x12u, &__p, v15, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(&__p, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "UpdateLppADPayload", 513);
      LbsOsaTrace_WriteLog(0x12u, &__p, v17, 0, 1);
    }

    goto LABEL_14;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(&__p, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "UpdateLppADPayload", 770);
    LbsOsaTrace_WriteLog(0x12u, &__p, v13, 0, 1);
  }
}

double SuplResponseRecdVer2::UpdateLppCapPayload(SuplResponseRecdVer2 *this, ASN1T_UlpMessage *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  Instance = SuplUtils::GetInstance(this);
  if (*(Instance + 36))
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v4 = SuplLppProvider::GetInstance(Instance);
    if (&v14 == v4 || (v5 = *(v4 + 8), *v4 == v5) || (std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v14, *v4, v5, &v5[-*v4]), v6 = v14, v7 = v15, v14 == v15))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(&__p, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 69, "UpdateLppCapPayload", 513);
        LbsOsaTrace_WriteLog(0x12u, &__p, v11, 0, 1);
      }
    }

    else
    {
      v8 = *(a2 + 1);
      __p = 0;
      v18 = 0;
      v19 = 0;
      *(v8 + 656) = 4;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v6, v7, v7 - v6);
      std::vector<ASN1T_PosPayLoad_lpppayload>::push_back[abi:ne200100]((v8 + 744), &__p);
      *(v8 + 736) = 1;
      *(v8 + 2) = 1;
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(&__p, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "UpdateLppCapPayload", 770);
    LbsOsaTrace_WriteLog(0x12u, &__p, v13, 0, 1);
  }

  return result;
}

uint64_t asn1PD_TriggerType(uint64_t a1, _BYTE *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v12 = 0;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = BitFromBuffer == 0;
  }

  if (v6)
  {
    v10 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v12);
    if (v10)
    {
      v7 = v10;
      v8 = *(a1 + 8);
      v9 = *(a1 + 12);
LABEL_13:
      SuplAsn1Logger::TraceError(v10, v8, v9);
      return v7;
    }
  }

  else
  {
    v10 = Asn1Coder::DecodeEnumerationExtension(a1, &v12);
    if (v10)
    {
      v7 = v10;
      v8 = *(a1 + 8);
      v9 = *(a1 + 12);
      goto LABEL_13;
    }
  }

  if (*a2 > 1u)
  {
    v7 = 4;
    *(a1 + 16) = 4;
    v8 = *(a1 + 8);
    v9 = *(a1 + 12);
    LODWORD(v10) = 4;
    goto LABEL_13;
  }

  v7 = 0;
  *a2 = v12;
  return v7;
}

uint64_t GncP00_04HandleInitInd()
{
  v10 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncP00_04HandleInitInd");
    IsLoggingAllowed = LbsOsaTrace_WriteLog(8u, __str, v2, 4, 1);
  }

  GncP01_00InitPeUpdate(IsLoggingAllowed);
  v3 = 0;
  v8 = 0u;
  memset(v9, 0, 28);
  *__str = 0u;
  v7 = 0u;
  do
  {
    v4 = &__str[v3];
    v4[4] = 0;
    *(v4 + 6) = 0;
    *(v4 + 12) = 0;
    *(v4 + 28) = 0;
    *(v4 + 20) = 0;
    v3 += 36;
    *(v4 + 35) = 0;
  }

  while (v3 != 72);
  unk_2A1939EA0 = v8;
  unk_2A1939EB0 = v9[0];
  unk_2A1939EBC = *(v9 + 12);
  g_GncPCntxtInfo = *__str;
  *algn_2A1939E90 = v7;
  GncP05_30InitConfig();
  g_GnssDataClrMask = 0;
  g_GncPStateInfo = 0u;
  *&byte_2A1939E68 = 0u;
  qword_2A1939E78 = 0;
  g_GncPMeData = 0;
  g_GncPMeData = 0;
  g_GncPMeData = 0;
  g_GncPMeData = 0;
  g_MEResetInfo = 0;
  g_MEResetInfo = 0;
  xofScvs_Init();
  g_OrbitDataAvailable = 0;
  g_BceOrbitDataInjected = 0;
  g_TimeMarkState = 1;
  return 0;
}

uint64_t GncP00_06HandleDeInitInd()
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_DEINIT_IND\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GncP00_06HandleDeInitInd");
    LbsOsaTrace_WriteLog(8u, __str, v1, 4, 1);
  }

  xofSvcs_Deinit();
  g_OrbitDataAvailable = 0;
  g_BceOrbitDataInjected = 0;
  GncP02_13ClearMEBuf();
  if (g_GncPMeData == 1)
  {
    AgpsFsmStopTimer(8789510);
  }

  GncP25_02StopTimemarkSessTimer();
  GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime = 0;
  GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick = 0;
  g_TimeMarkState = 1;
  GncP16_99DeInitStateHndlr();
  if (g_MEResetInfo == 1)
  {
    AgpsFsmStopTimer(8790022);
  }

  gncP01_01DeInitPeUpdate();
  return 0;
}

uint64_t GncP00_03DefaultMessage(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FSM:MID,%x, Srce,%u, Dest,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP00_03DefaultMessage", 520, *(a1 + 1), *a1, a1[1]);
      v4 = 2;
LABEL_6:
      LbsOsaTrace_WriteLog(8u, __str, v3, v4, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncP00_03DefaultMessage", 517);
    v4 = 0;
    goto LABEL_6;
  }

  return 0;
}

void GncP00_01Init(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP00_01Init", 146, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_INIT_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP00_01Init");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(134, 134, 8788995, v1);
  }
}

void GncP00_02DeInit(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP00_02DeInit", 165, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_DEINIT_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP00_02DeInit");
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(134, 134, 8789251, v1);
  }
}

double GncP00_07DestMissingHandler(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncP00_07DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(8u, __str, v4, 4, 1);
  }

  v5 = *(a1 + 4);
  if (v5 == 8786691 || v5 == 8787203 || v5 == 8788739)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      free(v6);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP00_07DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(8u, __str, v8, 4, 1);
  }

  return result;
}

void UNB_TropModel::Set_UNB_TropModel_Params(UNB_TropModel *this, double a2, double a3, int a4)
{
  v6 = a2 <= 18000.0 && a2 >= -500.0;
  *(this + 25) = v6;
  *(this + 2) = a2;
  v7 = fabs(a3);
  if (v7 > 90.0)
  {
    v8 = 0;
    *(this + 24) = 0;
    *(this + 96) = 0;
  }

  else if (vabdd_f64(*(this + 1), a3) > 0.5 || (v8 = *(this + 24), (v8 & 1) == 0))
  {
    v8 = 1;
    *(this + 24) = 1;
    *(this + 27) = 1;
    *(this + 1) = a3;
  }

  if ((a4 - 1) > 0x16D)
  {
    *(this + 26) = 0;
    *(this + 96) = 0;
  }

  else
  {
    if (*this == a4 && *(this + 26) == 1)
    {
      v9 = *(this + 27);
    }

    else
    {
      *(this + 13) = 257;
      *this = a4;
      v9 = 1;
    }

    if (v7 <= 90.0 && (v9 & 1) != 0)
    {
      if (v8)
      {
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenT0, UNB_ZenTa);
        v11 = v10;
        *(this + 7) = v10;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenP0, UNB_ZenPa);
        v13 = v12;
        *(this + 6) = v12;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenW0, UNB_ZenWa);
        *(this + 11) = v14;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenB0, UNB_ZenBa);
        *(this + 8) = v15;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenL0, UNB_ZenLa);
        v17 = v16;
        *(this + 9) = v16;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenW0_T, UNB_ZenWa_T);
        v19 = v18;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenB0_T, UNB_ZenBa_T);
        v21 = v20 * 0.001;
        *(this + 8) = v20 * 0.001;
        v22 = (v13 * 0.00000314 + 1.00062 + (v11 + -273.15) * (v11 + -273.15) * 0.00000056) * (exp(v11 * -0.019121316 + v11 * v11 * 0.000012378847 + 33.9371105 + -6343.1645 / v11) * 0.01 * (v19 * 0.01));
        *(this + 11) = v22;
        *(this + 28) = 0;
        if (v6)
        {
          v23 = v21 * 287.053763;
          v24 = 9.80665 / (v21 * 287.053763);
          v25 = v11 - v21 * a2;
          v26 = v25 / v11;
          v27 = v13 * pow(v26, v24);
          v28 = v17 + 1.0;
          *(this + 11) = v22 * pow(v26, v28 * v24);
          *(this + 6) = v27;
          *(this + 7) = v25;
          v29 = tan(*(this + 1) * 0.0174532925);
          v30 = atan(v29 * 0.99330562);
          *(this + 10) = v25 * (v23 / (v28 * ((cos(v30 + v30) * -0.00266 + 1.0 + a2 * -0.00000028) * -9.784)) + 1.0);
          *(this + 28) = 1;
        }
      }

      *(this + 96) = v8;
      *(this + 27) = 0;
    }
  }

  v31 = (cos(*(this + 1) * 0.0174532925 + *(this + 1) * 0.0174532925) * -0.00266 + 1.0 + a2 * -0.00000028) * 9.784;
  *(this + 4) = v31;
  *(this + 5) = 0.0222765202 / v31;
}

BOOL UNB_TropModel::Get_Zenith_Delays_Meter(UNB_TropModel *this, double a2, double a3, int a4, double *a5, double *a6)
{
  *a5 = 0.0;
  *a6 = 0.0;
  UNB_TropModel::Set_UNB_TropModel_Params(this, a2, a3, a4);
  return UNB_TropModel::Get_Dry_Zenith_Delay(this, a5) && (UNB_TropModel::Get_Wet_Zenith_Delay(this, a6) & 1) != 0;
}

uint64_t UNB_TropModel::Get_Dry_Zenith_Delay(UNB_TropModel *this, double *a2)
{
  *a2 = 0.0;
  if (*(this + 96) != 1 || *(this + 25) != 1)
  {
    return 0;
  }

  v3 = *(this + 5) * *(this + 6);
  *a2 = v3;
  v4 = 1.0;
  if ((*(this + 28) & 1) == 0)
  {
    v5 = *(this + 8);
    v6 = log(1.0 - v5 * *(this + 2) / *(this + 7));
    v4 = exp(v6 * 9.80665 / (v5 * 287.053763));
  }

  *a2 = v3 * v4;
  return 1;
}

uint64_t UNB_TropModel::Get_Wet_Zenith_Delay(UNB_TropModel *this, double *a2)
{
  *a2 = 0.0;
  if (*(this + 96) != 1 || *(this + 25) != 1)
  {
    return 0;
  }

  v3 = 1.0;
  v4 = *(this + 9) + 1.0;
  v5 = (*(this + 10) * 16.5220718 + 377600.0) * 0.000001 * 287.053763 / (*(this + 8) * -287.053763 + *(this + 4) * v4);
  *a2 = v5;
  v6 = v5 * (*(this + 11) / *(this + 7));
  *a2 = v6;
  if ((*(this + 28) & 1) == 0)
  {
    v7 = *(this + 8);
    v8 = log(1.0 - v7 * *(this + 2) / *(this + 7));
    v3 = exp((v4 * 9.80665 / (v7 * 287.053763) + -1.0) * v8);
  }

  *a2 = v6 * v3;
  return 1;
}

void UNB_TropModel::Get_Weather_Param(UNB_TropModel *this, const double *a2, const double *a3)
{
  if (a2 && a3)
  {
    v3 = *this;
    v4 = *(this + 1);
    if (v4 < 0.0)
    {
      v3 = v3 + 182.625;
    }

    cos((v3 + -28.0) * 0.0172024238);
  }
}

uint64_t Gnm15_04HandleNoCostPos(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_NO_COST_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_04HandleNoCostPos");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 20);
    v6 = *(a1 + 12);
    v7 = *(a1 + 24);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v9 = 78;
      if (v6)
      {
        v9 = 89;
      }

      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time,%u,Age,%u,Valid,%c\n", v8, "GNM", 73, "Gnm15_04HandleNoCostPos", v4, v5 != 0, v9);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
    }

    if (!v6 || v7)
    {
      if (v6)
      {
        v15 = v5 != 0;
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm15_02UpdatePosEstimate");
          LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
        }

        memcpy(&unk_2A1939F78, v7, 0x1738uLL);
        dword_2A1939F6C = v4;
        unk_2A1939F70 = v15;
        g_PosEstimate = 1;
      }

      v18 = *(a1 + 24);
      if (v18)
      {
        free(v18);
      }

      *(a1 + 24) = 0;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NavData\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm15_04HandleNoCostPos", 513);
      v13 = 2;
LABEL_14:
      LbsOsaTrace_WriteLog(0xBu, __str, v12, v13, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 69, "Gnm15_04HandleNoCostPos", 517);
    v13 = 0;
    goto LABEL_14;
  }

  return 0;
}