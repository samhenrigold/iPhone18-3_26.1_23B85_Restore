id sub_2392B6248(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2 && a1 != 3)
      {
LABEL_10:
        v15 = 0;
        v7 = sub_2393C5FC8(a2, &v15);
        *a3 = v7;
        a3[1] = v8;
        if (!v7)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_17:
      LOBYTE(v15) = 0;
      v16 = 0;
      v12 = sub_238F05664(a2, &v15);
      *a3 = v12;
      a3[1] = v13;
      if (!v12 && v16 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    if (a1 <= 1)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (a1 <= 7)
  {
    if (a1 != 5)
    {
      if (a1 != 6)
      {
        v15 = 0;
        v4 = sub_2393C6020(a2, &v15);
        *a3 = v4;
        a3[1] = v6;
        if (!v4)
        {
LABEL_19:
          LODWORD(v5) = v15;
          v9 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (a1 == 8)
  {
    LOBYTE(v15) = 0;
    v10 = sub_238F056F8(a2, &v15);
    goto LABEL_22;
  }

  if (a1 == 9)
  {
    LOBYTE(v15) = 0;
    v10 = sub_238EFD7D0(a2, &v15);
    goto LABEL_22;
  }

  if (a1 != 10)
  {
LABEL_28:
    v9 = 0;
    *a3 = 0x3E9E000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_24;
  }

  LOBYTE(v15) = 0;
  v10 = sub_238F000A4(a2, &v15);
LABEL_22:
  *a3 = v10;
  a3[1] = v11;
  if (v10)
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15];
LABEL_24:

  return v9;
}

MTRDataTypeMeasurementAccuracyStruct *sub_2392B63F8(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    LOWORD(v33) = 0;
    v29 = sub_238F00228(a2, &v33);
    *a3 = v29;
    a3[1] = v30;
    if (v29 || BYTE1(v33) != 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v33];
    }
  }

  else if (a1)
  {
    v6 = 0;
    *a3 = 0x3EF9000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    sub_2393C5AAC(v48);
    sub_2393C5ADC(v48, 0, 0);
    v5 = sub_238F35AA0(&v44, a2);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v8 = objc_opt_new();
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v44];
      [v8 setMeasurementType:v9];

      v10 = [MEMORY[0x277CCABB0] numberWithBool:v45];
      [v8 setMeasured:v10];

      v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v46];
      [v8 setMinMeasuredValue:v11];

      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v47];
      [v8 setMaxMeasuredValue:v12];

      v13 = objc_opt_new();
      sub_2393C5AAC(v35);
      v33 = 0;
      v34 = 0;
      sub_2393C5BDC(v35, v48);
      v39[0] = 0;
      v40[0] = 0;
      v41[0] = 0;
      v42[0] = 0;
      v43[0] = 0;
      v36 = 0;
      v37 = 0;
      v38[0] = 0;
      while (sub_238EA1A80(&v33) && sub_2392C8270(&v33))
      {
        v14 = objc_opt_new();
        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v36];
        [v14 setRangeMin:v15];

        v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v37];
        [v14 setRangeMax:v16];

        if (v38[0] == 1)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v38, v17)->super.isa)}];
          [v14 setPercentMax:v18];
        }

        else
        {
          [v14 setPercentMax:0];
        }

        if (v39[0] == 1)
        {
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v39, v19)->super.isa)}];
          [v14 setPercentMin:v20];
        }

        else
        {
          [v14 setPercentMin:0];
        }

        if (v40[0] == 1)
        {
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v40, v21)->super.isa)}];
          [v14 setPercentTypical:v22];
        }

        else
        {
          [v14 setPercentTypical:0];
        }

        if (v41[0] == 1)
        {
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v41, v23)}];
          [v14 setFixedMax:v24];
        }

        else
        {
          [v14 setFixedMax:0];
        }

        if (v42[0] == 1)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v42, v25)}];
          [v14 setFixedMin:v26];
        }

        else
        {
          [v14 setFixedMin:0];
        }

        if (v43[0] == 1)
        {
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v43, v27)}];
          [v14 setFixedTypical:v28];
        }

        else
        {
          [v14 setFixedTypical:0];
        }

        [v13 addObject:v14];
      }

      if (v33 == 33 || !v33)
      {
        [v8 setAccuracyRanges:v13];

        v6 = v8;
      }

      else
      {
        v31 = v34;
        *a3 = v33;
        a3[1] = v31;

        v6 = 0;
      }
    }
  }

  return v6;
}

id sub_2392B6918(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
    v7 = sub_238EFD658(a2, &v10);
    *a3 = v7;
    a3[1] = v8;
    if (!v7 && v11 == 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (!a1)
  {
    LOBYTE(v10) = 0;
    v12 = 0;
    v4 = sub_238F10D4C(a2, &v10);
    *a3 = v4;
    a3[1] = v5;
    if (!v4 && v12 == 1)
    {
      v6 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:v11];
      goto LABEL_11;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 0;
  *a3 = 0x3F24000000B5;
  a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
LABEL_11:

  return v6;
}

id sub_2392B6A04(int a1, uint64_t a2, void *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      LOBYTE(v20) = 0;
      v15 = sub_2393C5CE4(a2, &v20);
      *a3 = v15;
      a3[1] = v16;
      if (!v15)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithBool:v20];
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (a1 == 4 || a1 == 5)
    {
      LOBYTE(v20) = 0;
      BYTE8(v20) = 0;
      v8 = sub_238EFD658(a2, &v20);
      *a3 = v8;
      a3[1] = v9;
      if (!v8 && BYTE8(v20) == 1)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
        goto LABEL_24;
      }

LABEL_21:
      v11 = 0;
      goto LABEL_27;
    }

LABEL_18:
    v11 = 0;
    *a3 = 0x3F80000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_27;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v20 = 0uLL;
      if (sub_2393C5C40(a2) != 16)
      {
        v11 = 0;
        *a3 = 0x500000002BLL;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Decode.h";
        goto LABEL_27;
      }

      v17 = sub_2393C60CC(a2, &v20);
      *a3 = v17;
      a3[1] = v18;
      if (!v17)
      {
        v7 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:?];
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (a1 == 2)
    {
      LOWORD(v20) = 0;
      v5 = sub_2393C5F70(a2, &v20);
      *a3 = v5;
      a3[1] = v6;
      if (!v5)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v20];
LABEL_24:
        v11 = v7;
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v20 = 0uLL;
  v10 = sub_2393C61E0(a2, &v20);
  v11 = 0;
  *a3 = v10;
  a3[1] = v12;
  if (!v10)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v20 length:*(&v20 + 1) encoding:4];
    v11 = v13;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      *a3 = xmmword_278A74BD8;
    }
  }

LABEL_27:

  return v11;
}

id sub_2392B6C08(int a1, uint64_t a2, void *a3)
{
  if (a1 == 2)
  {
    LOBYTE(v24) = 0;
    v20 = sub_2393C5ED0(a2, &v24);
    *a3 = v20;
    a3[1] = v21;
    if (!v20)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
      goto LABEL_17;
    }

LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  if (a1 != 1)
  {
    if (a1)
    {
      v9 = 0;
      *a3 = 0x3FCA000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_25;
    }

    LOBYTE(v24) = 0;
    v26[0] = 0;
    v5 = sub_238F10D4C(a2, &v24);
    *a3 = v5;
    a3[1] = v6;
    if (!v5 && v26[0] == 1)
    {
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:v25];
LABEL_17:
      v9 = v7;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  sub_2393C5AAC(v30);
  sub_2393C5ADC(v30, 0, 0);
  v8 = sub_238F36BB4(v30, a2);
  v9 = 0;
  *a3 = v8;
  a3[1] = v10;
  if (!v8)
  {
    v9 = objc_opt_new();
    sub_2393C5AAC(v26);
    v24 = 0;
    v25 = 0;
    sub_2393C5BDC(v26, v30);
    *(&v29 + 1) = 0;
    v27 = 0u;
    v28 = 0u;
    LOWORD(v29) = 0;
    while (1)
    {
      v11 = sub_238EA1A80(&v24);
      LODWORD(v12) = v24;
      if (v24)
      {
        v11 = 0;
      }

      if (!v11)
      {
        break;
      }

      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v12 = sub_238F2CDF8(&v27, v26);
      v24 = v12;
      v25 = v13;
      if (v12)
      {
        break;
      }

      v14 = objc_opt_new();
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:?];
      [v14 setExtendedPanID:v15];

      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28 length:4 encoding:?];
      [v14 setNetworkName:v16];

      v17 = [v14 networkName];

      if (!v17)
      {
        *a3 = xmmword_278A74BE8;

        goto LABEL_23;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v29];
      [v14 setChannel:v18];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v29 + 1)];
      [v14 setActiveTimestamp:v19];

      [v9 addObject:v14];
    }

    if (v12 != 33 && v24)
    {
      v22 = v25;
      *a3 = v24;
      a3[1] = v22;
LABEL_23:

      goto LABEL_24;
    }
  }

LABEL_25:

  return v9;
}

id sub_2392B6F3C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    v13 = 0uLL;
    if (sub_2393C5C40(a2) == 16)
    {
      v10 = sub_2393C60CC(a2, &v13);
      *a3 = v10;
      a3[1] = v11;
      if (v10)
      {
        v6 = 0;
      }

      else
      {
        v6 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:?];
      }
    }

    else
    {
      v6 = 0;
      *a3 = 0x500000002BLL;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Decode.h";
    }
  }

  else if (a1)
  {
    v6 = 0;
    *a3 = 0x3FF2000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v13 = 0uLL;
    v5 = sub_2393C61E0(a2, &v13);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v13 length:*(&v13 + 1) encoding:4];
      v6 = v8;
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        *a3 = xmmword_278A74BF8;
      }
    }
  }

  return v6;
}

MTRChannelClusterChannelInfoStruct *sub_2392B7078(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 2)
  {
    LOBYTE(v62) = 0;
    v74 = 0;
    v39 = sub_238F05914(a2, &v62);
    *a3 = v39;
    a3[1] = v40;
    if (!v39)
    {
      if (v74)
      {
        v32 = objc_opt_new();
        if (v74 != 1)
        {
          goto LABEL_88;
        }

        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v62];
        [v32 setMajorNumber:v41];

        if (v74 != 1)
        {
          goto LABEL_88;
        }

        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v62)];
        [v32 setMinorNumber:v42];

        if (v74 != 1)
        {
          goto LABEL_88;
        }

        if (v63 == 1)
        {
          v44 = sub_239289A18(&v63, v43);
          v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v44 length:v44[1] encoding:4];
          [v32 setName:v45];

          v7 = [v32 name];

          if (!v7)
          {
            v38 = &xmmword_278A74C78;
            goto LABEL_70;
          }
        }

        else
        {
          [v32 setName:0];
        }

        if (v74 != 1)
        {
          goto LABEL_88;
        }

        if (v65[0] == 1)
        {
          v48 = sub_239289A18(v65, v46);
          v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v48 length:v48[1] encoding:4];
          [v32 setCallSign:v49];

          v7 = [v32 callSign];

          if (!v7)
          {
            v38 = &xmmword_278A74C88;
            goto LABEL_70;
          }
        }

        else
        {
          [v32 setCallSign:0];
        }

        if (v74 != 1)
        {
          goto LABEL_88;
        }

        if (v67[0] == 1)
        {
          v51 = sub_239289A18(v67, v50);
          v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v51 length:v51[1] encoding:4];
          [v32 setAffiliateCallSign:v52];

          v7 = [v32 affiliateCallSign];

          if (!v7)
          {
            v38 = &xmmword_278A74C98;
            goto LABEL_70;
          }
        }

        else
        {
          [v32 setAffiliateCallSign:0];
        }

        if (v74 != 1)
        {
          goto LABEL_88;
        }

        if (v69[0] == 1)
        {
          v54 = sub_239289A18(v69, v53);
          v55 = sub_2392C6E08(*v54, v54[1]);
          [v32 setIdentifier:v55];

          v7 = [v32 identifier];

          if (!v7)
          {
            v38 = &xmmword_278A74CA8;
            goto LABEL_70;
          }
        }

        else
        {
          [v32 setIdentifier:0];
        }

        if ((v74 & 1) == 0)
        {
LABEL_88:
          sub_238EA195C();
        }

        if (v73[0] != 1)
        {
          [v32 setType:0];
          goto LABEL_83;
        }

        v59 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_2392C86E0(v73, v56)}];
        [v32 setType:v59];
        goto LABEL_78;
      }

LABEL_45:
      v32 = 0;
LABEL_83:
      v32 = v32;
      v7 = v32;
      goto LABEL_84;
    }

LABEL_81:
    v7 = 0;
    goto LABEL_85;
  }

  if (a1 == 1)
  {
    LOBYTE(v62) = 0;
    v68 = 0;
    v30 = sub_238F05874(a2, &v62);
    *a3 = v30;
    a3[1] = v31;
    if (!v30)
    {
      if (v68)
      {
        v32 = objc_opt_new();
        if (v68 != 1)
        {
          goto LABEL_89;
        }

        v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v62 length:v63 encoding:4];
        [v32 setOperatorName:v33];

        v7 = [v32 operatorName];

        if (!v7)
        {
          v38 = &xmmword_278A74C48;
          goto LABEL_70;
        }

        if (v68 != 1)
        {
          goto LABEL_89;
        }

        if (v64[0] == 1)
        {
          v35 = sub_239289A18(v64, v34);
          v36 = sub_2392C6E08(*v35, v35[1]);
          [v32 setLineupName:v36];

          v7 = [v32 lineupName];

          if (!v7)
          {
            v38 = &xmmword_278A74C58;
LABEL_70:
            *a3 = *v38;
LABEL_84:

            goto LABEL_85;
          }
        }

        else
        {
          [v32 setLineupName:0];
        }

        if (v68 != 1)
        {
          goto LABEL_89;
        }

        if (v66[0] == 1)
        {
          v57 = sub_239289A18(v66, v37);
          v58 = sub_2392C6E08(*v57, v57[1]);
          [v32 setPostalCode:v58];

          v7 = [v32 postalCode];

          if (!v7)
          {
            v38 = &xmmword_278A74C68;
            goto LABEL_70;
          }
        }

        else
        {
          [v32 setPostalCode:0];
        }

        if ((v68 & 1) == 0)
        {
LABEL_89:
          sub_238EA195C();
        }

        v59 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v67[8]];
        [v32 setLineupInfoType:v59];
LABEL_78:

        goto LABEL_83;
      }

      goto LABEL_45;
    }

    goto LABEL_81;
  }

  if (a1)
  {
    v7 = 0;
    *a3 = 0x40B0000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v79);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v79, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C8AC0(&v62, v79);
      while (sub_238EA1A80(&v62) && sub_2392C8B18(&v62))
      {
        v9 = objc_opt_new();
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v70];
        [v9 setMajorNumber:v10];

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v71];
        [v9 setMinorNumber:v11];

        if (v72[0] == 1)
        {
          v13 = sub_238DE36B8(v72, v12);
          v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v13 length:v13[1] encoding:4];
          [v9 setName:v14];

          v15 = [v9 name];

          if (!v15)
          {
            v60 = &xmmword_278A74C08;
            goto LABEL_79;
          }
        }

        else
        {
          [v9 setName:0];
        }

        if (v75[0] == 1)
        {
          v17 = sub_238DE36B8(v75, v16);
          v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v17 length:v17[1] encoding:4];
          [v9 setCallSign:v18];

          v19 = [v9 callSign];

          if (!v19)
          {
            v60 = &xmmword_278A74C18;
            goto LABEL_79;
          }
        }

        else
        {
          [v9 setCallSign:0];
        }

        if (v76[0] == 1)
        {
          v21 = sub_238DE36B8(v76, v20);
          v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v21 length:v21[1] encoding:4];
          [v9 setAffiliateCallSign:v22];

          v23 = [v9 affiliateCallSign];

          if (!v23)
          {
            v60 = &xmmword_278A74C28;
            goto LABEL_79;
          }
        }

        else
        {
          [v9 setAffiliateCallSign:0];
        }

        if (v77[0] == 1)
        {
          v25 = sub_238DE36B8(v77, v24);
          v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v25 length:v25[1] encoding:4];
          [v9 setIdentifier:v26];

          v27 = [v9 identifier];

          if (!v27)
          {
            v60 = &xmmword_278A74C38;
LABEL_79:
            *a3 = *v60;

LABEL_80:
            goto LABEL_81;
          }
        }

        else
        {
          [v9 setIdentifier:0];
        }

        if (v78[0] == 1)
        {
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v78, v28)->super.isa)}];
          [v9 setType:v29];
        }

        else
        {
          [v9 setType:0];
        }

        [v7 addObject:v9];
      }

      if (v62 != 33 && v62)
      {
        v47 = v63;
        *a3 = v62;
        a3[1] = v47;
        goto LABEL_80;
      }
    }
  }

LABEL_85:

  return v7;
}

id sub_2392B79C8(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v19) = 0;
    v15 = sub_2393C5ED0(a2, &v19);
    *a3 = v15;
    a3[1] = v16;
    if (v15)
    {
LABEL_19:
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v19];
    }
  }

  else if (a1)
  {
    v6 = 0;
    *a3 = 0x40E9000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v25);
    sub_2393C5ADC(v25, 0, 0);
    v5 = sub_238F36BB4(v25, a2);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v6 = objc_opt_new();
      sub_2393C5AAC(v21);
      v19 = 0;
      v20 = 0;
      sub_2393C5BDC(v21, v25);
      LOBYTE(v22) = 0;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v8 = sub_238EA1A80(&v19);
        LODWORD(v9) = v19;
        if (v19)
        {
          v8 = 0;
        }

        if (!v8)
        {
          break;
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        v9 = sub_238F013DC(&v22, v21);
        v19 = v9;
        v20 = v10;
        if (v9)
        {
          break;
        }

        v11 = objc_opt_new();
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v22];
        [v11 setIdentifier:v12];

        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v23 length:v24 encoding:4];
        [v11 setName:v13];

        v14 = [v11 name];

        if (!v14)
        {
          *a3 = xmmword_278A74CB8;

          goto LABEL_18;
        }

        [v6 addObject:v11];
      }

      if (v9 != 33 && v19)
      {
        v17 = v20;
        *a3 = v19;
        a3[1] = v17;
LABEL_18:

        goto LABEL_19;
      }
    }
  }

  return v6;
}

MTRMediaPlaybackClusterPlaybackPositionStruct *sub_2392B7C48(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        LOBYTE(v87) = 0;
        v46 = sub_238EA4D5C(a2, &v87);
        *a3 = v46;
        a3[1] = v47;
        if (v46)
        {
          goto LABEL_120;
        }

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v87];
        goto LABEL_58;
      }

      if (a1 != 1)
      {
        goto LABEL_103;
      }
    }

    else if (a1 != 2)
    {
      if (a1 == 3)
      {
        LOBYTE(v87) = 0;
        LOBYTE(v90) = 0;
        v48 = sub_238F1DF30(a2, &v87);
        *a3 = v48;
        a3[1] = v49;
        if (!v48 && (v90 & 1) != 0)
        {
          v8 = objc_opt_new();
          if (v90 != 1 || ([MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v87], v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "setUpdatedAt:", v50), v50, (v90 & 1) == 0))
          {
            sub_238EA195C();
          }

          if ((v89 & 1) == 0)
          {
            [v8 setPosition:0];
            goto LABEL_121;
          }

          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v88];
          [v8 setPosition:v6];
          goto LABEL_127;
        }

        goto LABEL_120;
      }

      LODWORD(v87) = 0;
      v22 = sub_2393C6020(a2, &v87);
      *a3 = v22;
      a3[1] = v24;
      if (v22)
      {
        goto LABEL_120;
      }

      LODWORD(v23) = v87;
      v25 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
LABEL_58:
      v8 = v25;
      goto LABEL_121;
    }

LABEL_53:
    LOBYTE(v87) = 0;
    LOBYTE(v88) = 0;
    v44 = sub_238EFD658(a2, &v87);
    *a3 = v44;
    a3[1] = v45;
    if (v44 || v88 != 1)
    {
      goto LABEL_120;
    }

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v87];
    goto LABEL_58;
  }

  if (a1 <= 7)
  {
    if (a1 != 5 && a1 != 6)
    {
      LOBYTE(v87) = 0;
      v93 = 0;
      v4 = sub_238F1DFC8(a2, &v87);
      *a3 = v4;
      a3[1] = v5;
      if (!v4)
      {
        if (v93)
        {
          v6 = objc_opt_new();
          if (v93 != 1)
          {
            goto LABEL_131;
          }

          v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v87 length:v88 encoding:4];
          [v6 setId:v7];

          v8 = [v6 id];

          if (!v8)
          {
            v21 = &xmmword_278A74CC8;
            goto LABEL_126;
          }

          if (v93 != 1)
          {
            goto LABEL_131;
          }

          if (v92)
          {
            v9 = objc_opt_new();
            [v6 setTrackAttributes:v9];

            if (v93 != 1 || v92 != 1)
            {
              goto LABEL_131;
            }

            v10 = sub_2392C6E08(v89, v90);
            v11 = [v6 trackAttributes];
            [v11 setLanguageCode:v10];

            v12 = [v6 trackAttributes];
            v13 = [v12 languageCode];

            if (!v13)
            {
              v8 = 0;
              v21 = &xmmword_278A74CD8;
              goto LABEL_126;
            }

            if (v93 != 1 || v92 != 1)
            {
              goto LABEL_131;
            }

            if (v91[0] == 1 && (sub_239289A18(v91, v14)[16] & 1) != 0)
            {
              if (v93 == 1 && v92 == 1)
              {
                v16 = sub_239289A18(v91, v15);
                if (v16[16])
                {
                  v17 = sub_2392C6E08(*v16, *(v16 + 1));
                  v18 = [v6 trackAttributes];
                  [v18 setDisplayName:v17];

                  v19 = [v6 trackAttributes];
                  v20 = [v19 displayName];

                  if (!v20)
                  {
                    v8 = 0;
                    v21 = &xmmword_278A74CE8;
LABEL_126:
                    *a3 = *v21;
                    goto LABEL_127;
                  }

                  goto LABEL_105;
                }
              }

LABEL_131:
              sub_238EA195C();
            }

LABEL_128:
            v85 = [v6 trackAttributes];
            [v85 setDisplayName:0];

            goto LABEL_105;
          }

LABEL_112:
          [v6 setTrackAttributes:0];
          goto LABEL_105;
        }

        goto LABEL_104;
      }

      goto LABEL_120;
    }

    goto LABEL_53;
  }

  if (a1 == 8)
  {
    v100[0] = 0;
    v101 = 0;
    v66 = sub_238EFE808(a2, v100);
    *a3 = v66;
    a3[1] = v67;
    if (!v66 && v101 == 1)
    {
      v8 = objc_opt_new();
      if ((v101 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2393C5AAC(&v89);
      v87 = 0;
      v88 = 0;
      sub_2393C5BDC(&v89, v100);
      v99 = 0;
      v94 = 0;
      v95 = 0;
      LOBYTE(v96) = 0;
      while (1)
      {
        if (!sub_238EA1A80(&v87) || !sub_2392C8B78(&v87))
        {
          goto LABEL_106;
        }

        v28 = objc_opt_new();
        v68 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v94 length:v95 encoding:4];
        [v28 setId:v68];

        v69 = [v28 id];

        if (!v69)
        {
          break;
        }

        if (v99)
        {
          v70 = objc_opt_new();
          [v28 setTrackAttributes:v70];

          if ((v99 & 1) == 0)
          {
            goto LABEL_129;
          }

          v71 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v96 length:v97 encoding:4];
          v72 = [v28 trackAttributes];
          [v72 setLanguageCode:v71];

          v73 = [v28 trackAttributes];
          v74 = [v73 languageCode];

          if (!v74)
          {
            v86 = &xmmword_278A74D08;
            goto LABEL_118;
          }

          if (v99 != 1)
          {
            goto LABEL_129;
          }

          if (v98[0] == 1 && (sub_238DE36B8(v98, v75)[16] & 1) != 0)
          {
            if (v99 != 1 || (v77 = sub_238DE36B8(v98, v76), v77[16] != 1))
            {
LABEL_129:
              sub_238EA195C();
            }

            v78 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v77 length:*(v77 + 1) encoding:4];
            v79 = [v28 trackAttributes];
            [v79 setDisplayName:v78];

            v80 = [v28 trackAttributes];
            v81 = [v80 displayName];

            if (!v81)
            {
              v86 = &xmmword_278A74D18;
LABEL_118:
              *a3 = *v86;

              goto LABEL_119;
            }
          }

          else
          {
            v82 = [v28 trackAttributes];
            [v82 setDisplayName:0];
          }
        }

        else
        {
          [v28 setTrackAttributes:0];
        }

        [v8 addObject:{v28, v87}];
      }

      v86 = &xmmword_278A74CF8;
      goto LABEL_118;
    }

    goto LABEL_120;
  }

  if (a1 == 9)
  {
    LOBYTE(v87) = 0;
    v93 = 0;
    v51 = sub_238F1DFC8(a2, &v87);
    *a3 = v51;
    a3[1] = v52;
    if (!v51)
    {
      if (v93)
      {
        v6 = objc_opt_new();
        if (v93 == 1)
        {
          v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v87 length:v88 encoding:4];
          [v6 setId:v53];

          v8 = [v6 id];

          if (!v8)
          {
            v21 = &xmmword_278A74D28;
            goto LABEL_126;
          }

          if (v93 == 1)
          {
            if ((v92 & 1) == 0)
            {
              goto LABEL_112;
            }

            v54 = objc_opt_new();
            [v6 setTrackAttributes:v54];

            if (v93 == 1 && v92 == 1)
            {
              v55 = sub_2392C6E08(v89, v90);
              v56 = [v6 trackAttributes];
              [v56 setLanguageCode:v55];

              v57 = [v6 trackAttributes];
              v58 = [v57 languageCode];

              if (!v58)
              {
                v8 = 0;
                v21 = &xmmword_278A74D38;
                goto LABEL_126;
              }

              if (v93 == 1 && v92 == 1)
              {
                if (v91[0] != 1 || (sub_239289A18(v91, v59)[16] & 1) == 0)
                {
                  goto LABEL_128;
                }

                if (v93 == 1 && v92 == 1)
                {
                  v61 = sub_239289A18(v91, v60);
                  if (v61[16])
                  {
                    v62 = sub_2392C6E08(*v61, *(v61 + 1));
                    v63 = [v6 trackAttributes];
                    [v63 setDisplayName:v62];

                    v64 = [v6 trackAttributes];
                    v65 = [v64 displayName];

                    if (!v65)
                    {
                      v8 = 0;
                      v21 = &xmmword_278A74D48;
                      goto LABEL_126;
                    }

LABEL_105:
                    v6 = v6;
                    v8 = v6;
LABEL_127:

                    goto LABEL_121;
                  }
                }
              }
            }
          }
        }

        sub_238EA195C();
      }

LABEL_104:
      v6 = 0;
      goto LABEL_105;
    }

LABEL_120:
    v8 = 0;
    goto LABEL_121;
  }

  if (a1 != 10)
  {
LABEL_103:
    v8 = 0;
    *a3 = 0x4233000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_121;
  }

  v100[0] = 0;
  v101 = 0;
  v26 = sub_238EFE808(a2, v100);
  *a3 = v26;
  a3[1] = v27;
  if (v26 || v101 != 1)
  {
    goto LABEL_120;
  }

  v8 = objc_opt_new();
  if ((v101 & 1) == 0)
  {
    sub_238EA195C();
  }

  sub_2393C5AAC(&v89);
  v87 = 0;
  v88 = 0;
  sub_2393C5BDC(&v89, v100);
  v99 = 0;
  v94 = 0;
  v95 = 0;
  LOBYTE(v96) = 0;
  while (sub_238EA1A80(&v87) && sub_2392C8B78(&v87))
  {
    v28 = objc_opt_new();
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v94 length:v95 encoding:4];
    [v28 setId:v29];

    v30 = [v28 id];

    if (!v30)
    {
      v86 = &xmmword_278A74D58;
      goto LABEL_118;
    }

    if (v99)
    {
      v31 = objc_opt_new();
      [v28 setTrackAttributes:v31];

      if ((v99 & 1) == 0)
      {
        goto LABEL_130;
      }

      v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v96 length:v97 encoding:4];
      v33 = [v28 trackAttributes];
      [v33 setLanguageCode:v32];

      v34 = [v28 trackAttributes];
      v35 = [v34 languageCode];

      if (!v35)
      {
        v86 = &xmmword_278A74D68;
        goto LABEL_118;
      }

      if (v99 != 1)
      {
        goto LABEL_130;
      }

      if (v98[0] == 1 && (sub_238DE36B8(v98, v36)[16] & 1) != 0)
      {
        if (v99 != 1 || (v38 = sub_238DE36B8(v98, v37), v38[16] != 1))
        {
LABEL_130:
          sub_238EA195C();
        }

        v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v38 length:*(v38 + 1) encoding:4];
        v40 = [v28 trackAttributes];
        [v40 setDisplayName:v39];

        v41 = [v28 trackAttributes];
        v42 = [v41 displayName];

        if (!v42)
        {
          v86 = &xmmword_278A74D78;
          goto LABEL_118;
        }
      }

      else
      {
        v43 = [v28 trackAttributes];
        [v43 setDisplayName:0];
      }
    }

    else
    {
      [v28 setTrackAttributes:0];
    }

    [v8 addObject:{v28, v87}];
  }

LABEL_106:
  if (v87 != 33 && v87)
  {
    v83 = v88;
    *a3 = v87;
    a3[1] = v83;
LABEL_119:

    goto LABEL_120;
  }

LABEL_121:

  return v8;
}

id sub_2392B8A58(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v23) = 0;
    v18 = sub_2393C5ED0(a2, &v23);
    *a3 = v18;
    a3[1] = v19;
    if (v18)
    {
LABEL_22:
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
    }
  }

  else if (a1)
  {
    v6 = 0;
    *a3 = 0x4273000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v27);
    sub_2393C5ADC(v27, 0, 0);
    v5 = sub_238F36BB4(v27, a2);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v6 = objc_opt_new();
      sub_2393C5AAC(v25);
      v23 = 0;
      v24 = 0;
      sub_2393C5BDC(v25, v27);
      LOWORD(v26[0]) = 0;
      memset(&v26[1], 0, 32);
      while (1)
      {
        v8 = sub_238EA1A80(&v23);
        LODWORD(v9) = v23;
        if (v23)
        {
          v8 = 0;
        }

        if (!v8)
        {
          break;
        }

        memset(v26, 0, sizeof(v26));
        v9 = sub_238F1DC5C(v26, v25);
        v23 = v9;
        v24 = v10;
        if (v9)
        {
          break;
        }

        v11 = objc_opt_new();
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v26[0])];
        [v11 setIndex:v12];

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v26[0])];
        [v11 setInputType:v13];

        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*&v26[1] length:4 encoding:?];
        [v11 setName:v14];

        v15 = [v11 name];

        if (!v15)
        {
          v21 = &xmmword_278A74D88;
          goto LABEL_20;
        }

        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*&v26[3] length:4 encoding:?];
        [v11 setDescriptionString:v16];

        v17 = [v11 descriptionString];

        if (!v17)
        {
          v21 = &xmmword_278A74D98;
LABEL_20:
          *a3 = *v21;

LABEL_21:
          goto LABEL_22;
        }

        [v6 addObject:v11];
      }

      if (v9 != 33 && v23)
      {
        v20 = v24;
        *a3 = v23;
        a3[1] = v20;
        goto LABEL_21;
      }
    }
  }

  return v6;
}

id sub_2392B8D74(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    LODWORD(v13) = 0;
    v9 = sub_238F37278(a2, &v13);
    *a3 = v9;
    a3[1] = v10;
    if (v9)
    {
LABEL_16:
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
    }
  }

  else if (a1)
  {
    v6 = 0;
    *a3 = 0x42C4000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v18);
    sub_2393C5ADC(v18, 0, 0);
    v5 = sub_238F36BB4(v18, a2);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v6 = objc_opt_new();
      sub_2393C5AAC(v15);
      v13 = 0;
      v14 = 0;
      sub_2393C5BDC(v15, v18);
      v16 = 0;
      v17 = 0;
      while (sub_238E43364(&v13))
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v16 length:v17 encoding:4];
        if (!v8)
        {
          *a3 = xmmword_278A74DA8;
          goto LABEL_15;
        }

        [v6 addObject:v8];
      }

      if (v13 != 33 && v13)
      {
        v11 = v14;
        *a3 = v13;
        a3[1] = v11;
LABEL_15:

        goto LABEL_16;
      }
    }
  }

  return v6;
}

id sub_2392B8F30(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v20) = 0;
    v16 = sub_2393C5ED0(a2, &v20);
    *a3 = v16;
    a3[1] = v17;
    if (v16)
    {
LABEL_19:
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
    }
  }

  else if (a1)
  {
    v6 = 0;
    *a3 = 0x42FE000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v26);
    sub_2393C5ADC(v26, 0, 0);
    v5 = sub_238F36BB4(v26, a2);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v6 = objc_opt_new();
      sub_2393C5AAC(v22);
      v20 = 0;
      v21 = 0;
      sub_2393C5BDC(v22, v26);
      LOWORD(v23) = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v8 = sub_238EA1A80(&v20);
        LODWORD(v9) = v20;
        if (v20)
        {
          v8 = 0;
        }

        if (!v8)
        {
          break;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v9 = sub_238F0151C(&v23, v22);
        v20 = v9;
        v21 = v10;
        if (v9)
        {
          break;
        }

        v11 = objc_opt_new();
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
        [v11 setIndex:v12];

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v23)];
        [v11 setOutputType:v13];

        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v24 length:v25 encoding:4];
        [v11 setName:v14];

        v15 = [v11 name];

        if (!v15)
        {
          *a3 = xmmword_278A74DB8;

          goto LABEL_18;
        }

        [v6 addObject:v11];
      }

      if (v9 != 33 && v20)
      {
        v18 = v21;
        *a3 = v20;
        a3[1] = v18;
LABEL_18:

        goto LABEL_19;
      }
    }
  }

  return v6;
}

MTRApplicationLauncherClusterApplicationEPStruct *sub_2392B91DC(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v23) = 0;
    v27 = 0;
    v9 = sub_238F00BC8(a2, &v23);
    *a3 = v9;
    a3[1] = v10;
    if (v9)
    {
LABEL_8:
      v6 = 0;
      goto LABEL_25;
    }

    if (v27)
    {
      v11 = objc_opt_new();
      v12 = objc_opt_new();
      [v11 setApplication:v12];

      if (v27 != 1)
      {
        goto LABEL_28;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v23];
      v14 = [v11 application];
      [v14 setCatalogVendorID:v13];

      if (v27 != 1)
      {
        goto LABEL_28;
      }

      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v24 length:v25 encoding:4];
      v16 = [v11 application];
      [v16 setApplicationID:v15];

      v17 = [v11 application];
      v18 = [v17 applicationID];

      if (!v18)
      {
        v6 = 0;
        *a3 = xmmword_278A74DC8;
LABEL_24:

        goto LABEL_25;
      }

      if ((v27 & 1) == 0)
      {
LABEL_28:
        sub_238EA195C();
      }

      if (v26[0] == 1)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*sub_238EAB248(v26, v19)}];
        [v11 setEndpoint:v20];
      }

      else
      {
        [v11 setEndpoint:0];
      }
    }

    else
    {
      v11 = 0;
    }

    v11 = v11;
    v6 = v11;
    goto LABEL_24;
  }

  if (a1)
  {
    v6 = 0;
    *a3 = 0x4341000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v29);
    sub_2393C5ADC(v29, 0, 0);
    v5 = sub_238F36BB4(v29, a2);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v6 = objc_opt_new();
      sub_2393C5AAC(&v25);
      v23 = 0;
      v24 = 0;
      sub_2393C5BDC(&v25, v29);
      while (sub_238DD5C4C(&v23))
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v28];
        [v6 addObject:v8];
      }

      if (v23 != 33 && v23)
      {
        v21 = v24;
        *a3 = v23;
        a3[1] = v21;

        goto LABEL_8;
      }
    }
  }

LABEL_25:

  return v6;
}

MTRApplicationBasicClusterApplicationStruct *sub_2392B9524(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          LOWORD(v33) = 0;
          v5 = sub_238F36E54(a2, &v33);
          v7 = 0;
          if (v5)
          {
            v8 = v6;
          }

          else
          {
            v8 = 0;
          }

          if (v5)
          {
            v9 = v5;
          }

          else
          {
            v9 = 0;
          }

          *a3 = v9;
          a3[1] = v8;
          if (v9)
          {
            goto LABEL_50;
          }

          goto LABEL_40;
        }

LABEL_39:
        v7 = 0;
        *a3 = 0x43CB000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_50;
      }

      v33 = 0uLL;
      v18 = sub_2393C61E0(a2, &v33);
      v7 = 0;
      *a3 = v18;
      a3[1] = v19;
      if (v18)
      {
        goto LABEL_50;
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v33 length:*(&v33 + 1) encoding:4];
      if (!v7)
      {
        v20 = &xmmword_278A74DD8;
LABEL_46:
        *a3 = *v20;
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    if (a1 == 2)
    {
      v33 = 0uLL;
      v26 = sub_2393C61E0(a2, &v33);
      v7 = 0;
      *a3 = v26;
      a3[1] = v27;
      if (v26)
      {
        goto LABEL_50;
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v33 length:*(&v33 + 1) encoding:4];
      if (!v7)
      {
        v20 = &xmmword_278A74DE8;
        goto LABEL_46;
      }

LABEL_38:
      v30 = v7;
LABEL_47:

      goto LABEL_50;
    }

    LOWORD(v33) = 0;
    v13 = sub_2393C5F70(a2, &v33);
    *a3 = v13;
    a3[1] = v14;
    if (!v13)
    {
LABEL_40:
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v33];
      goto LABEL_41;
    }

LABEL_19:
    v7 = 0;
    goto LABEL_50;
  }

  if (a1 > 5)
  {
    if (a1 == 6)
    {
      v33 = 0uLL;
      v28 = sub_2393C61E0(a2, &v33);
      v7 = 0;
      *a3 = v28;
      a3[1] = v29;
      if (v28)
      {
        goto LABEL_50;
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v33 length:*(&v33 + 1) encoding:4];
      if (!v7)
      {
        v20 = &xmmword_278A74E08;
        goto LABEL_46;
      }

      goto LABEL_38;
    }

    if (a1 != 7)
    {
      goto LABEL_39;
    }

    sub_2393C5AAC(v36);
    sub_2393C5ADC(v36, 0, 0);
    v15 = sub_238F36BB4(v36, a2);
    v7 = 0;
    *a3 = v15;
    a3[1] = v16;
    if (v15)
    {
      goto LABEL_50;
    }

    v7 = objc_opt_new();
    sub_2393C5AAC(v34);
    v33 = 0uLL;
    sub_2393C5BDC(v34, v36);
    while (sub_238EA1A80(&v33) && sub_2392C8BD0(&v33))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v35];
      [v7 addObject:v17];
    }

    if (v33 == 33 || !v33)
    {
      goto LABEL_50;
    }

    v31 = *(&v33 + 1);
    *a3 = v33;
    a3[1] = v31;

    goto LABEL_19;
  }

  if (a1 != 4)
  {
    LOBYTE(v33) = 0;
    v10 = sub_238EA4D5C(a2, &v33);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v33];
LABEL_41:
      v7 = v12;
      goto LABEL_50;
    }

    goto LABEL_19;
  }

  LOWORD(v33) = 0;
  *(&v33 + 1) = 0;
  v34[0] = 0;
  v21 = sub_238F19BB4(&v33, a2);
  v7 = 0;
  *a3 = v21;
  a3[1] = v22;
  if (!v21)
  {
    v23 = objc_opt_new();
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v33];
    [v23 setCatalogVendorID:v24];

    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(&v33 + 1) length:v34[0] encoding:4];
    [v23 setApplicationID:v25];

    v7 = [v23 applicationID];

    if (v7)
    {
      v7 = v23;
    }

    else
    {
      *a3 = xmmword_278A74DF8;
    }
  }

LABEL_50:

  return v7;
}

id sub_2392B9970(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 != 7)
        {
          goto LABEL_40;
        }

LABEL_29:
        LOBYTE(v37) = 0;
        v23 = sub_2393C5CE4(a2, &v37);
        *a3 = v23;
        a3[1] = v24;
        if (!v23)
        {
          v25 = [MEMORY[0x277CCABB0] numberWithBool:v37];
LABEL_33:
          v6 = v25;
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    else if (a1 == 4)
    {
      v37 = 0uLL;
      v28 = sub_2393C61E0(a2, &v37);
      v6 = 0;
      *a3 = v28;
      a3[1] = v29;
      if (v28)
      {
        goto LABEL_52;
      }

      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v37 length:*(&v37 + 1) encoding:4];
      if (v6)
      {
LABEL_39:
        v33 = v6;
LABEL_48:

        goto LABEL_52;
      }

      v30 = &xmmword_278A74E68;
LABEL_47:
      *a3 = *v30;
      goto LABEL_48;
    }

    LODWORD(v37) = 0;
    v26 = sub_2393C5FC8(a2, &v37);
    *a3 = v26;
    a3[1] = v27;
    if (!v26)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37];
      goto LABEL_33;
    }

LABEL_51:
    v6 = 0;
    goto LABEL_52;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      sub_2393C5AAC(v42);
      sub_2393C5ADC(v42, 0, 0);
      v15 = sub_238F36BB4(v42, a2);
      v6 = 0;
      *a3 = v15;
      a3[1] = v16;
      if (!v15)
      {
        v6 = objc_opt_new();
        sub_2393C5AAC(v38);
        v37 = 0uLL;
        sub_2393C5BDC(v38, v42);
        v39 = 0;
        v40 = 0;
        v41[0] = 0;
        while (1)
        {
          if (!sub_2392C8C2C(&v37))
          {
            goto LABEL_41;
          }

          v8 = objc_opt_new();
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v39 length:v40 encoding:4];
          [v8 setRatingName:v17];

          v18 = [v8 ratingName];

          if (!v18)
          {
            break;
          }

          if (v41[0] == 1)
          {
            v20 = sub_238DE36B8(v41, v19);
            v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v20 length:v20[1] encoding:4];
            [v8 setRatingNameDesc:v21];

            v22 = [v8 ratingNameDesc];

            if (!v22)
            {
              v35 = &xmmword_278A74E58;
LABEL_49:
              *a3 = *v35;

              goto LABEL_50;
            }
          }

          else
          {
            [v8 setRatingNameDesc:0];
          }

          [v6 addObject:v8];
        }

        v35 = &xmmword_278A74E48;
        goto LABEL_49;
      }

      goto LABEL_52;
    }

    v37 = 0uLL;
    v31 = sub_2393C61E0(a2, &v37);
    v6 = 0;
    *a3 = v31;
    a3[1] = v32;
    if (v31)
    {
      goto LABEL_52;
    }

    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v37 length:*(&v37 + 1) encoding:4];
    if (v6)
    {
      goto LABEL_39;
    }

    v30 = &xmmword_278A74E38;
    goto LABEL_47;
  }

  if (!a1)
  {
    goto LABEL_29;
  }

  if (a1 != 1)
  {
LABEL_40:
    v6 = 0;
    *a3 = 0x4485000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_52;
  }

  sub_2393C5AAC(v42);
  sub_2393C5ADC(v42, 0, 0);
  v5 = sub_238F36BB4(v42, a2);
  v6 = 0;
  *a3 = v5;
  a3[1] = v7;
  if (!v5)
  {
    v6 = objc_opt_new();
    sub_2393C5AAC(v38);
    v37 = 0uLL;
    sub_2393C5BDC(v38, v42);
    v39 = 0;
    v40 = 0;
    v41[0] = 0;
    while (sub_2392C8C2C(&v37))
    {
      v8 = objc_opt_new();
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v39 length:v40 encoding:4];
      [v8 setRatingName:v9];

      v10 = [v8 ratingName];

      if (!v10)
      {
        v35 = &xmmword_278A74E18;
        goto LABEL_49;
      }

      if (v41[0] == 1)
      {
        v12 = sub_238DE36B8(v41, v11);
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v12 length:v12[1] encoding:4];
        [v8 setRatingNameDesc:v13];

        v14 = [v8 ratingNameDesc];

        if (!v14)
        {
          v35 = &xmmword_278A74E28;
          goto LABEL_49;
        }
      }

      else
      {
        [v8 setRatingNameDesc:0];
      }

      [v6 addObject:v8];
    }

LABEL_41:
    if (v37 != 33 && v37)
    {
      v34 = *(&v37 + 1);
      *a3 = v37;
      a3[1] = v34;
LABEL_50:

      goto LABEL_51;
    }
  }

LABEL_52:

  return v6;
}

MTRZoneManagementClusterTwoDCartesianVertexStruct *sub_2392B9EB8(unsigned int a1, uint64_t a2, void *a3)
{
  if (a1 <= 2)
  {
    if (a1 >= 2)
    {
      if (a1 == 2)
      {
        sub_2393C5AAC(v74);
        sub_2393C5ADC(v5, 0, 0);
        v6 = sub_238F36BB4(v74, a2);
        v7 = 0;
        *a3 = v6;
        a3[1] = v8;
        if (v6)
        {
          goto LABEL_50;
        }

        v7 = objc_opt_new();
        sub_2393C5AAC(v72);
        v70 = 0;
        v71 = 0;
        sub_2393C5BDC(v72, v74);
        LODWORD(v73[0]) = 0;
        LOBYTE(v73[1]) = 0;
        while (sub_238EA1A80(&v70) && sub_2392C8C88(&v70))
        {
          v9 = objc_opt_new();
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v73[0])];
          [v9 setZoneID:v10];

          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v73[0])];
          [v9 setZoneType:v11];

          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE3(v73[0])];
          [v9 setZoneSource:v12];

          if (LOBYTE(v73[1]) == 1)
          {
            v13 = objc_opt_new();
            [v9 setTwoDCartesianZone:v13];

            v15 = sub_238DE36B8(&v73[1], v14);
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v15 length:v15[1] encoding:4];
            v17 = [v9 twoDCartesianZone];
            [v17 setName:v16];

            v18 = [v9 twoDCartesianZone];
            v19 = [v18 name];

            if (!v19)
            {
              v65 = &xmmword_278A74E78;
              goto LABEL_55;
            }

            v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(&v73[1], v20)[16]}];
            v22 = [v9 twoDCartesianZone];
            [v22 setUse:v21];

            v23 = objc_opt_new();
            v25 = sub_238DE36B8(&v73[1], v24);
            sub_2393C5AAC(v68);
            v66 = 0;
            v67 = 0;
            sub_2393C5BDC(v68, (v25 + 24));
            v69 = 0;
            while (1)
            {
              v26 = sub_238EA1A80(&v66);
              LODWORD(v27) = v66;
              if (v66)
              {
                v26 = 0;
              }

              if (!v26)
              {
                break;
              }

              v69 = 0;
              v27 = sub_238F01D20(&v69, v68);
              v66 = v27;
              v67 = v28;
              if (v27)
              {
                break;
              }

              v29 = objc_opt_new();
              v30 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v69];
              [v29 setX:v30];

              v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v69)];
              [v29 setY:v31];

              [v23 addObject:v29];
            }

            if (v27 != 33 && v66)
            {
              v64 = v67;
              *a3 = v66;
              a3[1] = v64;

LABEL_56:
              goto LABEL_57;
            }

            v32 = [v9 twoDCartesianZone];
            [v32 setVertices:v23];

            if (sub_238DE36B8(&v73[1], v33)[96] == 1)
            {
              v35 = sub_238DE36B8(&v73[1], v34);
              v37 = sub_238DE36B8(v35 + 96, v36);
              v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v37 length:v37[1] encoding:4];
              v39 = [v9 twoDCartesianZone];
              [v39 setColor:v38];

              v40 = [v9 twoDCartesianZone];
              v41 = [v40 color];

              if (!v41)
              {
                v65 = &xmmword_278A74E88;
LABEL_55:
                *a3 = *v65;
                goto LABEL_56;
              }
            }

            else
            {
              v42 = [v9 twoDCartesianZone];
              [v42 setColor:0];
            }
          }

          else
          {
            [v9 setTwoDCartesianZone:0];
          }

          [v7 addObject:v9];
        }

        if (v70 == 33)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

LABEL_34:
      v7 = 0;
      *a3 = 0x4541000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_50;
    }

LABEL_31:
    LOBYTE(v70) = 0;
    v47 = sub_2393C5ED0(a2, &v70);
    *a3 = v47;
    a3[1] = v48;
    if (v47)
    {
LABEL_32:
      v7 = 0;
      goto LABEL_50;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v70];
    goto LABEL_50;
  }

  if (a1 > 4)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        LODWORD(v70) = 0;
        v43 = sub_238F01D20(&v70, a2);
        *a3 = v43;
        a3[1] = v44;
        if (!v43)
        {
          v7 = objc_opt_new();
          v45 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v70];
          [v7 setX:v45];

          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v70)];
          [v7 setY:v46];

          goto LABEL_50;
        }

        goto LABEL_32;
      }

      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (a1 != 3)
  {
    goto LABEL_31;
  }

  sub_2393C5AAC(&v66);
  sub_2393C5ADC(&v66, 0, 0);
  v49 = sub_238F36BB4(&v66, a2);
  v7 = 0;
  *a3 = v49;
  a3[1] = v50;
  if (v49)
  {
    goto LABEL_50;
  }

  v7 = objc_opt_new();
  sub_2393C5AAC(v72);
  v70 = 0;
  v71 = 0;
  sub_2393C5BDC(v72, &v66);
  LOWORD(v73[0]) = 0;
  memset(v73 + 4, 0, 17);
  while (1)
  {
    v51 = sub_238EA1A80(&v70);
    LODWORD(v52) = v70;
    if (v70)
    {
      v51 = 0;
    }

    if (!v51)
    {
      break;
    }

    v73[0] = 0;
    v73[1] = 0;
    *(&v73[1] + 5) = 0;
    v52 = sub_238F34F38(v73, v72);
    v70 = v52;
    v71 = v53;
    if (v52)
    {
      break;
    }

    v54 = objc_opt_new();
    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v73[0])];
    [v54 setZoneID:v55];

    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v73[0])];
    [v54 setInitialDuration:v56];

    v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v73[1])];
    [v54 setAugmentationDuration:v57];

    v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v73[1])];
    [v54 setMaxDuration:v58];

    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v73[2])];
    [v54 setBlindDuration:v59];

    if (BYTE4(v73[2]) == 1)
    {
      v61 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(&v73[2] + 4, v60)->super.isa)}];
      [v54 setSensitivity:v61];
    }

    else
    {
      [v54 setSensitivity:0];
    }

    [v7 addObject:v54];
  }

  if (v52 == 33)
  {
    goto LABEL_50;
  }

LABEL_48:
  if (v70)
  {
    v62 = v71;
    *a3 = v70;
    a3[1] = v62;
LABEL_57:

    goto LABEL_32;
  }

LABEL_50:

  return v7;
}

MTRCameraAVStreamManagementClusterVideoSensorParamsStruct *sub_2392BA740(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
    case 26:
    case 27:
    case 28:
    case 30:
    case 31:
    case 32:
      LOBYTE(v146) = 0;
      v8 = sub_2393C5ED0(a2, &v146);
      goto LABEL_67;
    case 1:
    case 6:
    case 11:
      LODWORD(v146) = 0;
      v10 = sub_2393C5FC8(a2, &v146);
      *a3 = v10;
      a3[1] = v11;
      if (v10)
      {
        goto LABEL_68;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v146];
      goto LABEL_70;
    case 2:
      *(&v146 + 3) = 0;
      LODWORD(v146) = 0;
      v103 = sub_238F05380(&v146, a2);
      *a3 = v103;
      a3[1] = v104;
      if (v103)
      {
        goto LABEL_68;
      }

      v15 = objc_opt_new();
      v105 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v146];
      [v15 setSensorWidth:v105];

      v106 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v146)];
      [v15 setSensorHeight:v106];

      v107 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v146)];
      [v15 setMaxFPS:v107];

      if (BYTE6(v146) == 1)
      {
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*sub_238EAB248(&v146 + 6, v108)}];
        [v15 setMaxHDRFPS:v44];
LABEL_119:
      }

      else
      {
        [v15 setMaxHDRFPS:0];
      }

      break;
    case 3:
    case 13:
    case 19:
    case 20:
    case 21:
    case 25:
    case 29:
    case 33:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
      LOBYTE(v146) = 0;
      v5 = sub_2393C5CE4(a2, &v146);
      *a3 = v5;
      a3[1] = v6;
      if (v5)
      {
        goto LABEL_68;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithBool:v146];
      goto LABEL_70;
    case 4:
      LODWORD(v146) = 0;
      v100 = sub_238F01D20(&v146, a2);
      *a3 = v100;
      a3[1] = v101;
      if (v100)
      {
        goto LABEL_68;
      }

      v15 = objc_opt_new();
      v102 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v146];
      [v15 setWidth:v102];

      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v146)];
      [v15 setHeight:v44];
      goto LABEL_119;
    case 5:
      sub_2393C5AAC(&v142);
      sub_2393C5ADC(&v142, 0, 0);
      v88 = sub_238F36BB4(&v142, a2);
      v15 = 0;
      *a3 = v88;
      a3[1] = v89;
      if (v88)
      {
        break;
      }

      v15 = objc_opt_new();
      sub_2392C8D70(&v146, &v142);
      while (1)
      {
        v90 = sub_238EA1A80(&v146);
        LODWORD(v51) = v146;
        if (v146)
        {
          v90 = 0;
        }

        if (!v90)
        {
          break;
        }

        LODWORD(v151) = 0;
        v150 = 0;
        v51 = sub_238F04C14(&v150, v148);
        v146 = v51;
        v147 = v91;
        if (v51)
        {
          break;
        }

        v92 = objc_opt_new();
        v93 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v150];
        [v92 setCodec:v93];

        v94 = objc_opt_new();
        [v92 setResolution:v94];

        v95 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v150)];
        v96 = [v92 resolution];
        [v96 setWidth:v95];

        v97 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v150)];
        v98 = [v92 resolution];
        [v98 setHeight:v97];

        v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v151];
        [v92 setMinBitRate:v99];

        [v15 addObject:v92];
      }

      goto LABEL_88;
    case 7:
      LOBYTE(v146) = 0;
      sub_2393C5AAC(&v147);
      sub_2393C5ADC(&v147, 0, 0);
      sub_2393C5AAC(&v149);
      sub_2393C5ADC(&v149, 0, 0);
      sub_2393C5AAC(v157);
      sub_2393C5ADC(v157, 0, 0);
      v131 = sub_238F04FC4(&v146, a2);
      v15 = 0;
      *a3 = v131;
      a3[1] = v132;
      if (v131)
      {
        break;
      }

      v44 = objc_opt_new();
      v133 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v146];
      [v44 setMaxNumberOfChannels:v133];

      v46 = objc_opt_new();
      sub_2393C5AAC(v144);
      v142 = 0;
      v143 = 0;
      sub_2393C5BDC(v144, &v147);
      while (sub_2392C8CD8(&v142))
      {
        v134 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v145];
        [v46 addObject:v134];
      }

      if (v142 != 33)
      {
        v136 = v142;
        if (v142)
        {
          goto LABEL_117;
        }
      }

      [v44 setSupportedCodecs:{v46, v142}];

      v46 = objc_opt_new();
      sub_2393C5AAC(v144);
      v142 = 0;
      v143 = 0;
      sub_2393C5BDC(v144, &v149);
      while (sub_238E72E88(&v142))
      {
        v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v145];
        [v46 addObject:v138];
      }

      if (v142 != 33)
      {
        v136 = v142;
        if (v142)
        {
          goto LABEL_117;
        }
      }

      [v44 setSupportedSampleRates:v46];

      v46 = objc_opt_new();
      sub_2393C5AAC(v144);
      v142 = 0;
      v143 = 0;
      sub_2393C5BDC(v144, v157);
      while (sub_238E0D91C(&v142))
      {
        v140 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v145];
        [v46 addObject:v140];
      }

      if (v142 != 33)
      {
        v136 = v142;
        if (v142)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_118;
    case 8:
      LOBYTE(v146) = 0;
      sub_2393C5AAC(&v147);
      sub_2393C5ADC(&v147, 0, 0);
      sub_2393C5AAC(&v149);
      sub_2393C5ADC(&v149, 0, 0);
      sub_2393C5AAC(v157);
      sub_2393C5ADC(v157, 0, 0);
      v42 = sub_238F04FC4(&v146, a2);
      v15 = 0;
      *a3 = v42;
      a3[1] = v43;
      if (v42)
      {
        break;
      }

      v44 = objc_opt_new();
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v146];
      [v44 setMaxNumberOfChannels:v45];

      v46 = objc_opt_new();
      sub_2393C5AAC(v144);
      v142 = 0;
      v143 = 0;
      sub_2393C5BDC(v144, &v147);
      while (sub_2392C8CD8(&v142))
      {
        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v145];
        [v46 addObject:v47];
      }

      if (v142 != 33)
      {
        v136 = v142;
        if (v142)
        {
          goto LABEL_117;
        }
      }

      [v44 setSupportedCodecs:{v46, v142}];

      v46 = objc_opt_new();
      sub_2393C5AAC(v144);
      v142 = 0;
      v143 = 0;
      sub_2393C5BDC(v144, &v149);
      while (sub_238E72E88(&v142))
      {
        v137 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v145];
        [v46 addObject:v137];
      }

      if (v142 != 33)
      {
        v136 = v142;
        if (v142)
        {
          goto LABEL_117;
        }
      }

      [v44 setSupportedSampleRates:v46];

      v46 = objc_opt_new();
      sub_2393C5AAC(v144);
      v142 = 0;
      v143 = 0;
      sub_2393C5BDC(v144, v157);
      while (sub_238E0D91C(&v142))
      {
        v139 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v145];
        [v46 addObject:v139];
      }

      if (v142 != 33 && (v136 = v142, v142))
      {
LABEL_117:
        v141 = v143;
        *a3 = v136;
        a3[1] = v141;

        v15 = 0;
      }

      else
      {
LABEL_118:
        [v44 setSupportedBitDepths:v46];

        v15 = v44;
      }

      goto LABEL_119;
    case 9:
    case 22:
    case 23:
      LOBYTE(v146) = 0;
      v8 = sub_238EFD7D0(a2, &v146);
      goto LABEL_67;
    case 10:
      sub_2393C5AAC(&v142);
      sub_2393C5ADC(&v142, 0, 0);
      v118 = sub_238F36BB4(&v142, a2);
      v15 = 0;
      *a3 = v118;
      a3[1] = v119;
      if (v118)
      {
        break;
      }

      v15 = objc_opt_new();
      sub_2392C8D2C(&v142, &v146);
      while (sub_238EA1A80(&v146) && sub_2392C8DBC(&v146))
      {
        v120 = objc_opt_new();
        v121 = objc_opt_new();
        [v120 setResolution:v121];

        v122 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v150];
        v123 = [v120 resolution];
        [v123 setWidth:v122];

        v124 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v150)];
        v125 = [v120 resolution];
        [v125 setHeight:v124];

        v126 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v150)];
        [v120 setMaxFrameRate:v126];

        v127 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v150)];
        [v120 setImageCodec:v127];

        v128 = [MEMORY[0x277CCABB0] numberWithBool:HIBYTE(v150)];
        [v120 setRequiresEncodedPixels:v128];

        if (v151 == 1)
        {
          v130 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(&v151, v129)->super.isa)}];
          [v120 setRequiresHardwareEncoder:v130];
        }

        else
        {
          [v120 setRequiresHardwareEncoder:0];
        }

        [v15 addObject:v120];
      }

      goto LABEL_82;
    case 12:
    case 34:
      LOWORD(v146) = 0;
      v12 = sub_2393C5F70(a2, &v146);
      *a3 = v12;
      a3[1] = v13;
      if (v12)
      {
        goto LABEL_68;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v146];
      goto LABEL_70;
    case 14:
      sub_2393C5AAC(&v142);
      sub_2393C5ADC(&v142, 0, 0);
      v109 = sub_238F36BB4(&v142, a2);
      v15 = 0;
      *a3 = v109;
      a3[1] = v110;
      if (v109)
      {
        break;
      }

      v15 = objc_opt_new();
      sub_2393C5AAC(v148);
      v146 = 0;
      v147 = 0;
      sub_2393C5BDC(v148, &v142);
      while (sub_238E8A35C(&v146))
      {
        v111 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v150];
        [v15 addObject:v111];
      }

      goto LABEL_82;
    case 15:
      sub_2393C5AAC(&v142);
      sub_2393C5ADC(&v142, 0, 0);
      v62 = sub_238F36BB4(&v142, a2);
      v15 = 0;
      *a3 = v62;
      a3[1] = v63;
      if (v62)
      {
        break;
      }

      v15 = objc_opt_new();
      sub_2392C8E0C(&v146, &v142);
      while (sub_238EA1A80(&v146) && sub_2392C8E60(&v146))
      {
        v64 = objc_opt_new();
        v65 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v150];
        [v64 setVideoStreamID:v65];

        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v150)];
        [v64 setStreamUsage:v66];

        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE3(v150)];
        [v64 setVideoCodec:v67];

        v68 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v150)];
        [v64 setMinFrameRate:v68];

        v69 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v150)];
        [v64 setMaxFrameRate:v69];

        v70 = objc_opt_new();
        [v64 setMinResolution:v70];

        v71 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v151];
        v72 = [v64 minResolution];
        [v72 setWidth:v71];

        v73 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v151)];
        v74 = [v64 minResolution];
        [v74 setHeight:v73];

        v75 = objc_opt_new();
        [v64 setMaxResolution:v75];

        v76 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v151)];
        v77 = [v64 maxResolution];
        [v77 setWidth:v76];

        v78 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v151)];
        v79 = [v64 maxResolution];
        [v79 setHeight:v78];

        v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v152];
        [v64 setMinBitRate:v80];

        v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v153];
        [v64 setMaxBitRate:v81];

        v82 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v154];
        [v64 setKeyFrameInterval:v82];

        if (v155[0] == 1)
        {
          v84 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(v155, v83)->super.isa)}];
          [v64 setWatermarkEnabled:v84];
        }

        else
        {
          [v64 setWatermarkEnabled:0];
        }

        if (v156[0] == 1)
        {
          v86 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(v156, v85)->super.isa)}];
          [v64 setOsdEnabled:v86];
        }

        else
        {
          [v64 setOsdEnabled:0];
        }

        v87 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v156[2]];
        [v64 setReferenceCount:v87];

        [v15 addObject:v64];
      }

      goto LABEL_82;
    case 16:
      sub_2393C5AAC(&v142);
      sub_2393C5ADC(&v142, 0, 0);
      v48 = sub_238F36BB4(&v142, a2);
      v15 = 0;
      *a3 = v48;
      a3[1] = v49;
      if (v48)
      {
        break;
      }

      v15 = objc_opt_new();
      sub_2392C8EBC(&v146, &v142);
      while (1)
      {
        v50 = sub_238EA1A80(&v146);
        LODWORD(v51) = v146;
        if (v146)
        {
          v50 = 0;
        }

        if (!v50)
        {
          break;
        }

        v150 = 0;
        v151 = 0;
        LOWORD(v152) = 0;
        v51 = sub_238F051B4(&v150, v148);
        v146 = v51;
        v147 = v52;
        if (v51)
        {
          break;
        }

        v53 = objc_opt_new();
        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v150];
        [v53 setAudioStreamID:v54];

        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v150)];
        [v53 setStreamUsage:v55];

        v56 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE3(v150)];
        [v53 setAudioCodec:v56];

        v57 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v150)];
        [v53 setChannelCount:v57];

        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v151];
        [v53 setSampleRate:v58];

        v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v151)];
        [v53 setBitRate:v59];

        v60 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v152];
        [v53 setBitDepth:v60];

        v61 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v152)];
        [v53 setReferenceCount:v61];

        [v15 addObject:v53];
      }

LABEL_88:
      if (v51 != 33)
      {
        goto LABEL_89;
      }

      break;
    case 17:
      sub_2393C5AAC(&v142);
      sub_2393C5ADC(&v142, 0, 0);
      v14 = sub_238F36BB4(&v142, a2);
      v15 = 0;
      *a3 = v14;
      a3[1] = v16;
      if (v14)
      {
        break;
      }

      v15 = objc_opt_new();
      sub_2392C8F0C(&v146, &v142);
      while (sub_238EA1A80(&v146) && sub_2392C8F60(&v146))
      {
        v17 = objc_opt_new();
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v150];
        [v17 setSnapshotStreamID:v18];

        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v150)];
        [v17 setImageCodec:v19];

        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v150)];
        [v17 setFrameRate:v20];

        v21 = objc_opt_new();
        [v17 setMinResolution:v21];

        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v150)];
        v23 = [v17 minResolution];
        [v23 setWidth:v22];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v151];
        v25 = [v17 minResolution];
        [v25 setHeight:v24];

        v26 = objc_opt_new();
        [v17 setMaxResolution:v26];

        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v151)];
        v28 = [v17 maxResolution];
        [v28 setWidth:v27];

        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v151)];
        v30 = [v17 maxResolution];
        [v30 setHeight:v29];

        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v151)];
        [v17 setQuality:v31];

        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v151)];
        [v17 setReferenceCount:v32];

        v33 = [MEMORY[0x277CCABB0] numberWithBool:v152];
        [v17 setEncodedPixels:v33];

        v34 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v152)];
        [v17 setHardwareEncoder:v34];

        if (BYTE2(v152) == 1)
        {
          v36 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(&v152 + 2, v35)->super.isa)}];
          [v17 setWatermarkEnabled:v36];
        }

        else
        {
          [v17 setWatermarkEnabled:0];
        }

        if (v153 == 1)
        {
          v38 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(&v153, v37)->super.isa)}];
          [v17 setOsdEnabled:v38];
        }

        else
        {
          [v17 setOsdEnabled:0];
        }

        [v15 addObject:v17];
      }

      goto LABEL_82;
    case 18:
      sub_2393C5AAC(&v142);
      sub_2393C5ADC(&v142, 0, 0);
      v39 = sub_238F36BB4(&v142, a2);
      v15 = 0;
      *a3 = v39;
      a3[1] = v40;
      if (v39)
      {
        break;
      }

      v15 = objc_opt_new();
      sub_2393C5AAC(v148);
      v146 = 0;
      v147 = 0;
      sub_2393C5BDC(v148, &v142);
      while (sub_238E8A35C(&v146))
      {
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v150];
        [v15 addObject:v41];
      }

LABEL_82:
      if (v146 == 33)
      {
        break;
      }

LABEL_89:
      if (v146)
      {
        v135 = v147;
        *a3 = v146;
        a3[1] = v135;

LABEL_68:
        v15 = 0;
      }

      break;
    case 24:
      v146 = 0;
      v112 = sub_238F364E0(&v146, a2);
      v15 = 0;
      *a3 = v112;
      a3[1] = v113;
      if (v112)
      {
        break;
      }

      v15 = objc_opt_new();
      v114 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v146];
      [v15 setX1:v114];

      v115 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v146)];
      [v15 setY1:v115];

      v116 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v146)];
      [v15 setX2:v116];

      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v146)];
      [v15 setY2:v44];
      goto LABEL_119;
    case 40:
      LOBYTE(v146) = 0;
      v8 = sub_238EA4D5C(a2, &v146);
LABEL_67:
      *a3 = v8;
      a3[1] = v9;
      if (v8)
      {
        goto LABEL_68;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v146];
LABEL_70:
      v15 = v7;
      break;
    default:
      v15 = 0;
      *a3 = 0x4832000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v15;
}

id sub_2392BC01C(int a1, uint64_t a2, void *a3)
{
  if (a1 > 4)
  {
    if (a1 <= 8)
    {
      LOWORD(v51) = 0;
      v8 = sub_2393C5E20(a2, &v51);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithShort:v51];
        goto LABEL_17;
      }

LABEL_15:
      v10 = 0;
      goto LABEL_52;
    }

    if (a1 == 9)
    {
      LOBYTE(v51) = 0;
      v5 = sub_238EFF894(a2, &v51);
      goto LABEL_12;
    }

LABEL_41:
    v10 = 0;
    *a3 = 0x48F7000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_52;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v51) = 0;
      BYTE4(v51) = 0;
      LOBYTE(v52) = 0;
      v11 = sub_238F02D54(&v51, a2);
      *a3 = v11;
      a3[1] = v12;
      if (!v11)
      {
        v13 = objc_opt_new();
        v10 = v13;
        if (v51 == 1)
        {
          v15 = [MEMORY[0x277CCABB0] numberWithShort:{*sub_2392C83D0(&v51, v14)}];
          [v10 setPan:v15];
        }

        else
        {
          [v13 setPan:0];
        }

        if (BYTE4(v51) == 1)
        {
          v47 = [MEMORY[0x277CCABB0] numberWithShort:{*sub_2392C83D0(&v51 + 4, v16)}];
          [v10 setTilt:v47];
        }

        else
        {
          [v10 setTilt:0];
        }

        if (v52 == 1)
        {
          v49 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_2392C86E0(&v52, v48)}];
          [v10 setZoom:v49];
        }

        else
        {
          [v10 setZoom:0];
        }

        goto LABEL_52;
      }

      goto LABEL_15;
    }

    if (a1 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

  if (a1 == 2)
  {
    sub_2393C5AAC(v60);
    sub_2393C5ADC(v60, 0, 0);
    v17 = sub_238F36BB4(v60, a2);
    v10 = 0;
    *a3 = v17;
    a3[1] = v18;
    if (v17)
    {
      goto LABEL_52;
    }

    v10 = objc_opt_new();
    sub_2393C5AAC(v53);
    v51 = 0;
    v52 = 0;
    sub_2393C5BDC(v53, v60);
    LOBYTE(v54) = 0;
    v58[0] = 0;
    v59[0] = 0;
    *&v55[6] = 0;
    v56 = 0;
    v57[0] = 0;
    while (sub_238EA1A80(&v51) && sub_2392C8FB8(&v51))
    {
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v54];
      [v19 setPresetID:v20];

      v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*&v55[6] length:v56 encoding:4];
      [v19 setName:v21];

      v22 = [v19 name];

      if (!v22)
      {
        *a3 = xmmword_278A74E98;

        goto LABEL_56;
      }

      v23 = objc_opt_new();
      [v19 setSettings:v23];

      if (v57[0] == 1)
      {
        v25 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(v57, v24)->super.isa)}];
        v26 = [v19 settings];
        [v26 setPan:v25];
      }

      else
      {
        v25 = [v19 settings];
        [v25 setPan:0];
      }

      if (v58[0] == 1)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(v58, v27)->super.isa)}];
        v29 = [v19 settings];
        [v29 setTilt:v28];
      }

      else
      {
        v28 = [v19 settings];
        [v28 setTilt:0];
      }

      if (v59[0] == 1)
      {
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v59, v30)->super.isa)}];
        v32 = [v19 settings];
        [v32 setZoom:v31];
      }

      else
      {
        v31 = [v19 settings];
        [v31 setZoom:0];
      }

      [v10 addObject:v19];
    }

    goto LABEL_42;
  }

  if (a1 != 3)
  {
LABEL_11:
    LOBYTE(v51) = 0;
    v5 = sub_2393C5ED0(a2, &v51);
LABEL_12:
    *a3 = v5;
    a3[1] = v6;
    if (!v5)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v51];
LABEL_17:
      v10 = v7;
      goto LABEL_52;
    }

    goto LABEL_15;
  }

  sub_2393C5AAC(v60);
  sub_2393C5ADC(v60, 0, 0);
  v33 = sub_238F36BB4(v60, a2);
  v10 = 0;
  *a3 = v33;
  a3[1] = v34;
  if (!v33)
  {
    v10 = objc_opt_new();
    sub_2393C5AAC(v53);
    v51 = 0;
    v52 = 0;
    sub_2393C5BDC(v53, v60);
    v54 = 0;
    *v55 = 0;
    while (sub_238EA1A80(&v51) && sub_2392C9014(&v51))
    {
      v35 = objc_opt_new();
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v54];
      [v35 setVideoStreamID:v36];

      v37 = objc_opt_new();
      [v35 setViewport:v37];

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v55];
      v39 = [v35 viewport];
      [v39 setX1:v38];

      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&v55[2]];
      v41 = [v35 viewport];
      [v41 setY1:v40];

      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&v55[4]];
      v43 = [v35 viewport];
      [v43 setX2:v42];

      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*&v55[6]];
      v45 = [v35 viewport];
      [v45 setY2:v44];

      [v10 addObject:v35];
    }

LABEL_42:
    if (v51 != 33 && v51)
    {
      v46 = v52;
      *a3 = v51;
      a3[1] = v46;
LABEL_56:

      goto LABEL_15;
    }
  }

LABEL_52:

  return v10;
}

id sub_2392BC824(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x492E000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v30);
    sub_2393C5ADC(v30, 0, 0);
    v30[72] = 0;
    v6 = sub_238F36BB4(v30, a2);
    v4 = 0;
    *a3 = v6;
    a3[1] = v7;
    if (!v6)
    {
      v4 = objc_opt_new();
      sub_2392C9064(v30, v19);
      while (sub_2392C90CC(v19))
      {
        v8 = objc_opt_new();
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v20];
        [v8 setId:v9];

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
        [v8 setPeerNodeID:v10];

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22];
        [v8 setPeerEndpointID:v11];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
        [v8 setStreamUsage:v12];

        if (v25)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
          [v8 setVideoStreamID:v13];
        }

        else
        {
          [v8 setVideoStreamID:0];
        }

        if (v27)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v26];
          [v8 setAudioStreamID:v14];
        }

        else
        {
          [v8 setAudioStreamID:0];
        }

        v15 = [MEMORY[0x277CCABB0] numberWithBool:v28];
        [v8 setMetadataEnabled:v15];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v8 setFabricIndex:v16];

        [v4 addObject:v8];
      }

      if (LODWORD(v19[0]) != 33 && LODWORD(v19[0]))
      {
        v17 = v19[1];
        *a3 = v19[0];
        a3[1] = v17;

        v4 = 0;
      }
    }
  }

  return v4;
}

id sub_2392BCAE4(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x4965000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v30);
    sub_2393C5ADC(v30, 0, 0);
    v30[72] = 0;
    v6 = sub_238F36BB4(v30, a2);
    v4 = 0;
    *a3 = v6;
    a3[1] = v7;
    if (!v6)
    {
      v4 = objc_opt_new();
      sub_2392C9064(v30, v19);
      while (sub_2392C90CC(v19))
      {
        v8 = objc_opt_new();
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v20];
        [v8 setId:v9];

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
        [v8 setPeerNodeID:v10];

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22];
        [v8 setPeerEndpointID:v11];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
        [v8 setStreamUsage:v12];

        if (v25)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
          [v8 setVideoStreamID:v13];
        }

        else
        {
          [v8 setVideoStreamID:0];
        }

        if (v27)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v26];
          [v8 setAudioStreamID:v14];
        }

        else
        {
          [v8 setAudioStreamID:0];
        }

        v15 = [MEMORY[0x277CCABB0] numberWithBool:v28];
        [v8 setMetadataEnabled:v15];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v8 setFabricIndex:v16];

        [v4 addObject:v8];
      }

      if (LODWORD(v19[0]) != 33 && LODWORD(v19[0]))
      {
        v17 = v19[1];
        *a3 = v19[0];
        a3[1] = v17;

        v4 = 0;
      }
    }
  }

  return v4;
}

id sub_2392BCDA4(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    sub_2393C5AAC(v253);
    sub_2393C5ADC(v14, 0, 0);
    v253[72] = 0;
    v15 = sub_238F36BB4(v253, a2);
    v6 = 0;
    *a3 = v15;
    a3[1] = v16;
    if (v15)
    {
      goto LABEL_84;
    }

    v6 = objc_opt_new();
    sub_238E71468(&v247, v253);
    while (sub_238E714BC(&v247))
    {
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v250[4]];
      [v17 setConnectionID:v18];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v251];
      [v17 setTransportStatus:v19];

      if (v252[0] == 1)
      {
        v20 = objc_opt_new();
        [v17 setTransportOptions:v20];

        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_238DE36B8(v252, v21)}];
        v23 = [v17 transportOptions];
        [v23 setStreamUsage:v22];

        if (sub_238DE36B8(v252, v24)[2] == 1 && (v26 = sub_238DE36B8(v252, v25), (BYTE2(sub_238E0A934(v26 + 2, v27)->super.isa) & 1) != 0))
        {
          v29 = MEMORY[0x277CCABB0];
          v30 = sub_238DE36B8(v252, v28);
          v32 = sub_238E0A934(v30 + 2, v31);
          if ((BYTE2(v32->super.isa) & 1) == 0)
          {
            goto LABEL_88;
          }

          v33 = [v29 numberWithUnsignedShort:LOWORD(v32->super.isa)];
          v34 = [v17 transportOptions];
          [v34 setVideoStreamID:v33];
        }

        else
        {
          v33 = [v17 transportOptions];
          [v33 setVideoStreamID:0];
        }

        if (sub_238DE36B8(v252, v35)[8] == 1 && (v37 = sub_238DE36B8(v252, v36), (BYTE2(sub_238E0A934(v37 + 8, v38)->super.isa) & 1) != 0))
        {
          v40 = MEMORY[0x277CCABB0];
          v41 = sub_238DE36B8(v252, v39);
          v43 = sub_238E0A934(v41 + 8, v42);
          if (BYTE2(v43->super.isa) != 1)
          {
            goto LABEL_88;
          }

          v44 = [v40 numberWithUnsignedShort:LOWORD(v43->super.isa)];
          v45 = [v17 transportOptions];
          [v45 setAudioStreamID:v44];
        }

        else
        {
          v44 = [v17 transportOptions];
          [v44 setAudioStreamID:0];
        }

        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*(sub_238DE36B8(v252, v46) + 7)}];
        v48 = [v17 transportOptions];
        [v48 setEndpointID:v47];

        v50 = sub_238DE36B8(v252, v49);
        v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v50 + 2) length:*(v50 + 3) encoding:4];
        v52 = [v17 transportOptions];
        [v52 setUrl:v51];

        v53 = [v17 transportOptions];
        v54 = [v53 url];

        if (!v54)
        {
          v238 = &xmmword_278A74EA8;
          goto LABEL_81;
        }

        v55 = objc_opt_new();
        v56 = [v17 transportOptions];
        [v56 setTriggerOptions:v55];

        v58 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(v252, v57)[32]}];
        v59 = [v17 transportOptions];
        v60 = [v59 triggerOptions];
        [v60 setTriggerType:v58];

        if (sub_238DE36B8(v252, v61)[40] == 1 && (v63 = sub_238DE36B8(v252, v62), (sub_238DE36B8(v63 + 40, v64)[72] & 1) != 0))
        {
          v65 = objc_opt_new();
          v67 = sub_238DE36B8(v252, v66);
          v69 = sub_238DE36B8(v67 + 40, v68);
          if ((v69[72] & 1) == 0)
          {
            sub_238EA195C();
          }

          sub_2393C5AAC(v243);
          v241 = 0;
          v242 = 0;
          sub_2393C5BDC(v243, v69);
          LOBYTE(v244) = 0;
          v245 = 0;
          v246[0] = 0;
          while (sub_238EA1A80(&v241) && sub_238EA45DC(&v241))
          {
            v70 = objc_opt_new();
            v71 = v70;
            if (v245)
            {
              v72 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v244];
              [v71 setZone:v72];
            }

            else
            {
              [v70 setZone:0];
            }

            if (v246[0] == 1)
            {
              v74 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v246, v73)->super.isa)}];
              [v71 setSensitivity:v74];
            }

            else
            {
              [v71 setSensitivity:0];
            }

            [v65 addObject:v71];
          }

          if (v241 != 33 && v241)
          {
            v240 = v242;
            *a3 = v241;
            a3[1] = v240;

            goto LABEL_82;
          }

          v75 = [v17 transportOptions];
          v76 = [v75 triggerOptions];
          [v76 setMotionZones:v65];
        }

        else
        {
          v65 = [v17 transportOptions];
          v75 = [v65 triggerOptions];
          [v75 setMotionZones:0];
        }

        if (sub_238DE36B8(v252, v77)[128] == 1 && (v79 = sub_238DE36B8(v252, v78), (BYTE1(sub_238DE36D8(v79 + 128, v80)->super.isa) & 1) != 0))
        {
          v82 = MEMORY[0x277CCABB0];
          v83 = sub_238DE36B8(v252, v81);
          v85 = sub_238DE36D8(v83 + 128, v84);
          if (v85[1] != 1)
          {
LABEL_88:
            sub_238EA195C();
          }

          v86 = [v82 numberWithUnsignedChar:*v85];
          v87 = [v17 transportOptions];
          v88 = [v87 triggerOptions];
          [v88 setMotionSensitivity:v86];
        }

        else
        {
          v86 = [v17 transportOptions];
          v87 = [v86 triggerOptions];
          [v87 setMotionSensitivity:0];
        }

        if (sub_238DE36B8(v252, v89)[132] == 1)
        {
          v90 = objc_opt_new();
          v91 = [v17 transportOptions];
          v92 = [v91 triggerOptions];
          [v92 setMotionTimeControl:v90];

          v93 = MEMORY[0x277CCABB0];
          v95 = sub_238DE36B8(v252, v94);
          v97 = [v93 numberWithUnsignedShort:{*sub_238DE3698(v95 + 132, v96)}];
          v98 = [v17 transportOptions];
          v99 = [v98 triggerOptions];
          v100 = [v99 motionTimeControl];
          [v100 setInitialDuration:v97];

          v101 = MEMORY[0x277CCABB0];
          v103 = sub_238DE36B8(v252, v102);
          v105 = [v101 numberWithUnsignedShort:{*(sub_238DE3698(v103 + 132, v104) + 1)}];
          v106 = [v17 transportOptions];
          v107 = [v106 triggerOptions];
          v108 = [v107 motionTimeControl];
          [v108 setAugmentationDuration:v105];

          v109 = MEMORY[0x277CCABB0];
          v111 = sub_238DE36B8(v252, v110);
          v113 = [v109 numberWithUnsignedInt:{*(sub_238DE3698(v111 + 132, v112) + 1)}];
          v114 = [v17 transportOptions];
          v115 = [v114 triggerOptions];
          v116 = [v115 motionTimeControl];
          [v116 setMaxDuration:v113];

          v117 = MEMORY[0x277CCABB0];
          v119 = sub_238DE36B8(v252, v118);
          v121 = [v117 numberWithUnsignedShort:{*(sub_238DE3698(v119 + 132, v120) + 4)}];
          v122 = [v17 transportOptions];
          v123 = [v122 triggerOptions];
          v124 = [v123 motionTimeControl];
          [v124 setBlindDuration:v121];
        }

        else
        {
          v121 = [v17 transportOptions];
          v122 = [v121 triggerOptions];
          [v122 setMotionTimeControl:0];
        }

        if (sub_238DE36B8(v252, v125)[148] == 1)
        {
          v127 = MEMORY[0x277CCABB0];
          v128 = sub_238DE36B8(v252, v126);
          v130 = [v127 numberWithUnsignedShort:{LOWORD(sub_238E0A934(v128 + 148, v129)->super.isa)}];
          v131 = [v17 transportOptions];
          v132 = [v131 triggerOptions];
          [v132 setMaxPreRollLen:v130];
        }

        else
        {
          v130 = [v17 transportOptions];
          v131 = [v130 triggerOptions];
          [v131 setMaxPreRollLen:0];
        }

        v134 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(v252, v133)[152]}];
        v135 = [v17 transportOptions];
        [v135 setIngestMethod:v134];

        v136 = objc_opt_new();
        v137 = [v17 transportOptions];
        [v137 setContainerOptions:v136];

        v139 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(v252, v138)[160]}];
        v140 = [v17 transportOptions];
        v141 = [v140 containerOptions];
        [v141 setContainerType:v139];

        if (sub_238DE36B8(v252, v142)[168] == 1)
        {
          v143 = objc_opt_new();
          v144 = [v17 transportOptions];
          v145 = [v144 containerOptions];
          [v145 setCmafContainerOptions:v143];

          v146 = MEMORY[0x277CCABB0];
          v148 = sub_238DE36B8(v252, v147);
          v150 = [v146 numberWithUnsignedChar:{*sub_238DE36B8(v148 + 168, v149)}];
          v151 = [v17 transportOptions];
          v152 = [v151 containerOptions];
          v153 = [v152 cmafContainerOptions];
          [v153 setCmafInterface:v150];

          v154 = MEMORY[0x277CCABB0];
          v156 = sub_238DE36B8(v252, v155);
          v158 = [v154 numberWithUnsignedShort:{*(sub_238DE36B8(v156 + 168, v157) + 1)}];
          v159 = [v17 transportOptions];
          v160 = [v159 containerOptions];
          v161 = [v160 cmafContainerOptions];
          [v161 setSegmentDuration:v158];

          v162 = MEMORY[0x277CCABB0];
          v164 = sub_238DE36B8(v252, v163);
          v166 = [v162 numberWithUnsignedShort:{*(sub_238DE36B8(v164 + 168, v165) + 2)}];
          v167 = [v17 transportOptions];
          v168 = [v167 containerOptions];
          v169 = [v168 cmafContainerOptions];
          [v169 setChunkDuration:v166];

          v170 = MEMORY[0x277CCABB0];
          v172 = sub_238DE36B8(v252, v171);
          v174 = [v170 numberWithUnsignedChar:{sub_238DE36B8(v172 + 168, v173)[6]}];
          v175 = [v17 transportOptions];
          v176 = [v175 containerOptions];
          v177 = [v176 cmafContainerOptions];
          [v177 setSessionGroup:v174];

          v179 = sub_238DE36B8(v252, v178);
          v181 = sub_238DE36B8(v179 + 168, v180);
          v182 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(v181 + 1) length:*(v181 + 2) encoding:4];
          v183 = [v17 transportOptions];
          v184 = [v183 containerOptions];
          v185 = [v184 cmafContainerOptions];
          [v185 setTrackName:v182];

          v186 = [v17 transportOptions];
          v187 = [v186 containerOptions];
          v188 = [v187 cmafContainerOptions];
          v189 = [v188 trackName];

          if (!v189)
          {
            v238 = &xmmword_278A74EB8;
LABEL_81:
            *a3 = *v238;
LABEL_82:

            goto LABEL_83;
          }

          v191 = sub_238DE36B8(v252, v190);
          if (sub_238DE36B8(v191 + 168, v192)[24] == 1)
          {
            v194 = sub_238DE36B8(v252, v193);
            v196 = sub_238DE36B8(v194 + 168, v195);
            v198 = sub_238DE36B8(v196 + 24, v197);
            v199 = [MEMORY[0x277CBEA90] dataWithBytes:*v198 length:v198[1]];
            v200 = [v17 transportOptions];
            v201 = [v200 containerOptions];
            v202 = [v201 cmafContainerOptions];
            [v202 setCencKey:v199];
          }

          else
          {
            v199 = [v17 transportOptions];
            v200 = [v199 containerOptions];
            v201 = [v200 cmafContainerOptions];
            [v201 setCencKey:0];
          }

          v206 = sub_238DE36B8(v252, v205);
          if (sub_238DE36B8(v206 + 168, v207)[48] == 1)
          {
            v209 = sub_238DE36B8(v252, v208);
            v211 = sub_238DE36B8(v209 + 168, v210);
            v213 = sub_238DE36B8(v211 + 48, v212);
            v214 = [MEMORY[0x277CBEA90] dataWithBytes:*v213 length:v213[1]];
            v215 = [v17 transportOptions];
            v216 = [v215 containerOptions];
            v217 = [v216 cmafContainerOptions];
            [v217 setCencKeyID:v214];
          }

          else
          {
            v214 = [v17 transportOptions];
            v215 = [v214 containerOptions];
            v216 = [v215 cmafContainerOptions];
            [v216 setCencKeyID:0];
          }

          v219 = sub_238DE36B8(v252, v218);
          if (sub_238DE36B8(v219 + 168, v220)[72] == 1)
          {
            v222 = MEMORY[0x277CCABB0];
            v223 = sub_238DE36B8(v252, v221);
            v225 = sub_238DE36B8(v223 + 168, v224);
            v203 = [v222 numberWithBool:{LOBYTE(sub_238DE36D8(v225 + 72, v226)->super.isa)}];
            v204 = [v17 transportOptions];
            v227 = [v204 containerOptions];
            v228 = [v227 cmafContainerOptions];
            [v228 setMetadataEnabled:v203];
          }

          else
          {
            v203 = [v17 transportOptions];
            v204 = [v203 containerOptions];
            v227 = [v204 cmafContainerOptions];
            [v227 setMetadataEnabled:0];
          }
        }

        else
        {
          v203 = [v17 transportOptions];
          v204 = [v203 containerOptions];
          [v204 setCmafContainerOptions:0];
        }

        if (sub_238DE36B8(v252, v229)[256] == 1)
        {
          v231 = MEMORY[0x277CCABB0];
          v232 = sub_238DE36B8(v252, v230);
          v234 = [v231 numberWithUnsignedInt:{*sub_238DE3698(v232 + 256, v233)}];
          v235 = [v17 transportOptions];
          [v235 setExpiryTime:v234];
        }

        else
        {
          v234 = [v17 transportOptions];
          [v234 setExpiryTime:0];
        }
      }

      else
      {
        [v17 setTransportOptions:0];
      }

      v236 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v252[272]];
      [v17 setFabricIndex:v236];

      [v6 addObject:v17];
    }

    if (v247 == 33)
    {
      goto LABEL_84;
    }

LABEL_77:
    if (v247)
    {
      v237 = v248;
      *a3 = v247;
      a3[1] = v237;
LABEL_83:

      v6 = 0;
    }

    goto LABEL_84;
  }

  if (a1)
  {
    v6 = 0;
    *a3 = 0x4A2B000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_84;
  }

  sub_2393C5AAC(&v241);
  sub_2393C5ADC(&v241, 0, 0);
  v5 = sub_238F36BB4(&v241, a2);
  v6 = 0;
  *a3 = v5;
  a3[1] = v7;
  if (!v5)
  {
    v6 = objc_opt_new();
    sub_2393C5AAC(v249);
    v247 = 0;
    v248 = 0;
    sub_2393C5BDC(v249, &v241);
    v250[0] = 0;
    while (1)
    {
      v8 = sub_238EA1A80(&v247);
      LODWORD(v9) = v247;
      if (v247)
      {
        v8 = 0;
      }

      if (!v8)
      {
        break;
      }

      v250[0] = 0;
      v9 = sub_238F261E0(v250, v249);
      v247 = v9;
      v248 = v10;
      if (v9)
      {
        break;
      }

      v11 = objc_opt_new();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v250[0])];
      [v11 setContainerFormat:v12];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v250[0])];
      [v11 setIngestMethod:v13];

      [v6 addObject:v11];
    }

    if (v9 != 33)
    {
      goto LABEL_77;
    }
  }

LABEL_84:

  return v6;
}

id sub_2392BE208(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 2)
  {
    LOBYTE(v22) = 0;
    v18 = sub_2393C5CE4(a2, &v22);
    *a3 = v18;
    a3[1] = v19;
    if (!v18)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithBool:v22];
      goto LABEL_16;
    }

LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if (a1 == 1)
  {
    LOBYTE(v22) = 0;
    v15 = sub_2393C5ED0(a2, &v22);
    *a3 = v15;
    a3[1] = v16;
    if (!v15)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v22];
LABEL_16:
      v6 = v17;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (a1)
  {
    v6 = 0;
    *a3 = 0x4A6F000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v28);
    sub_2393C5ADC(v28, 0, 0);
    v5 = sub_238F36BB4(v28, a2);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (!v5)
    {
      v6 = objc_opt_new();
      sub_2393C5AAC(v24);
      v22 = 0;
      v23 = 0;
      sub_2393C5BDC(v24, v28);
      LOBYTE(v25) = 0;
      v26 = 0;
      v27 = 0;
      while (1)
      {
        v8 = sub_238EA1A80(&v22);
        LODWORD(v9) = v22;
        if (v22)
        {
          v8 = 0;
        }

        if (!v8)
        {
          break;
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        v9 = sub_238F013DC(&v25, v24);
        v22 = v9;
        v23 = v10;
        if (v9)
        {
          break;
        }

        v11 = objc_opt_new();
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v25];
        [v11 setChimeID:v12];

        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v26 length:v27 encoding:4];
        [v11 setName:v13];

        v14 = [v11 name];

        if (!v14)
        {
          *a3 = xmmword_278A74EC8;

          goto LABEL_22;
        }

        [v6 addObject:v11];
      }

      if (v9 != 33 && v22)
      {
        v20 = v23;
        *a3 = v22;
        a3[1] = v20;
LABEL_22:

        goto LABEL_23;
      }
    }
  }

LABEL_24:

  return v6;
}

MTRCommodityTariffClusterDayEntryStruct *sub_2392BE4C0(int a1, uint64_t a2, unint64_t *a3)
{
  switch(a1)
  {
    case 0:
      LOBYTE(v318) = 0;
      v325 = 0;
      v182 = sub_238F0B57C(a2, &v318);
      *a3 = v182;
      a3[1] = v183;
      if (v182)
      {
        goto LABEL_353;
      }

      if ((v325 & 1) == 0)
      {
        goto LABEL_298;
      }

      v184 = objc_opt_new();
      v106 = v184;
      if (v325 != 1)
      {
        goto LABEL_362;
      }

      if (v320[0])
      {
        v185 = sub_2392C6E08(v318, v319);
        [v106 setTariffLabel:v185];

        v9 = [v106 tariffLabel];

        if (!v9)
        {
          v186 = &xmmword_278A74ED8;
LABEL_312:
          *a3 = *v186;
LABEL_346:

          goto LABEL_354;
        }
      }

      else
      {
        [v184 setTariffLabel:0];
      }

      if (v325 != 1)
      {
        goto LABEL_362;
      }

      if (v323)
      {
        v299 = sub_2392C6E08(v321, v322);
        [v106 setProviderName:v299];

        v9 = [v106 providerName];

        if (!v9)
        {
          v186 = &xmmword_278A74EE8;
          goto LABEL_312;
        }
      }

      else
      {
        [v106 setProviderName:0];
      }

      if (v325 != 1)
      {
        goto LABEL_362;
      }

      if (v324[0] == 1 && sub_2392C83D0(v324, v300)[4] == 1)
      {
        v304 = objc_opt_new();
        [v106 setCurrency:v304];

        if (v325 != 1)
        {
          goto LABEL_362;
        }

        v306 = MEMORY[0x277CCABB0];
        v307 = sub_2392C83D0(v324, v305);
        if (v307[4] != 1)
        {
          goto LABEL_362;
        }

        v308 = [v306 numberWithUnsignedShort:*v307];
        v309 = [v106 currency];
        [v309 setCurrency:v308];

        if (v325 != 1)
        {
          goto LABEL_362;
        }

        v311 = MEMORY[0x277CCABB0];
        v312 = sub_2392C83D0(v324, v310);
        if (v312[4] != 1)
        {
          goto LABEL_362;
        }

        v313 = [v311 numberWithUnsignedChar:v312[2]];
        v314 = [v106 currency];
        [v314 setDecimalPoints:v313];
      }

      else
      {
        [v106 setCurrency:0];
      }

      if (v325)
      {
        if (v324[9])
        {
          v109 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v324[8]];
          [v106 setBlockMode:v109];
LABEL_344:
        }

        else
        {
          [v106 setBlockMode:0];
        }

LABEL_345:
        v106 = v106;
        v9 = v106;
        goto LABEL_346;
      }

LABEL_362:
      sub_238EA195C();
    case 1:
      LOWORD(v318) = 0;
      v187 = sub_238F0A8F8(a2, &v318);
      goto LABEL_270;
    case 2:
    case 10:
    case 12:
      LOBYTE(v318) = 0;
      BYTE4(v318) = 0;
      v4 = sub_238EFDEB0(a2, &v318);
      *a3 = v4;
      a3[1] = v5;
      if (v4 || BYTE4(v318) != 1)
      {
        goto LABEL_353;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v318];
      goto LABEL_273;
    case 3:
      LOBYTE(v339) = 0;
      v342 = 0;
      v198 = sub_238EFE808(a2, &v339);
      *a3 = v198;
      a3[1] = v199;
      if (v198 || v342 != 1)
      {
        goto LABEL_353;
      }

      v9 = objc_opt_new();
      if ((v342 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C9144(&v318, &v339);
      while (sub_238EA1A80(&v318) && sub_2392C9198(&v318))
      {
        v200 = objc_opt_new();
        v201 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v326];
        [v200 setDayEntryID:v201];

        v202 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v326)];
        [v200 setStartTime:v202];

        if (BYTE6(v326) == 1)
        {
          v204 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(&v326 + 6, v203)->super.isa)}];
          [v200 setDuration:v204];
        }

        else
        {
          [v200 setDuration:0];
        }

        if (BYTE2(v327) == 1)
        {
          v206 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(&v327 + 2, v205)->super.isa)}];
          [v200 setRandomizationOffset:v206];
        }

        else
        {
          [v200 setRandomizationOffset:0];
        }

        if (BYTE6(v327) == 1)
        {
          v208 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(&v327 + 6, v207)->super.isa)}];
          [v200 setRandomizationType:v208];
        }

        else
        {
          [v200 setRandomizationType:0];
        }

        [v9 addObject:v200];
      }

      goto LABEL_294;
    case 4:
      v345[0] = 0;
      v346 = 0;
      v280 = sub_238EFE808(a2, v345);
      *a3 = v280;
      a3[1] = v281;
      if (v280 || v346 != 1)
      {
        goto LABEL_353;
      }

      v9 = objc_opt_new();
      if ((v346 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C91F4(&v318, v345);
      while (2)
      {
        if (!sub_238EA1A80(&v318) || !sub_2392C9254(&v318))
        {
          goto LABEL_294;
        }

        v10 = objc_opt_new();
        v282 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v326];
        [v10 setDayPatternID:v282];

        v283 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v326)];
        [v10 setDaysOfWeek:v283];

        v193 = objc_opt_new();
        sub_2393C5AAC(v341);
        v339 = 0;
        v340 = 0;
        sub_2393C5BDC(v341, &v327);
        while (sub_238E72E88(&v339))
        {
          v284 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v344];
          [v193 addObject:v284];
        }

        if (v339 == 33 || (v195 = v339, !v339))
        {
          [v10 setDayEntryIDs:v193];

          [v9 addObject:v10];
          continue;
        }

        goto LABEL_306;
      }

    case 5:
      v345[0] = 0;
      v346 = 0;
      v189 = sub_238EFE808(a2, v345);
      *a3 = v189;
      a3[1] = v190;
      if (v189 || v346 != 1)
      {
        goto LABEL_353;
      }

      v9 = objc_opt_new();
      if ((v346 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C92F4(&v318, v345);
      while (2)
      {
        if (!sub_238EA1A80(&v318) || !sub_2392C9354(&v318))
        {
          goto LABEL_294;
        }

        v191 = objc_opt_new();
        v10 = v191;
        if ((v326 & 0x100000000) != 0)
        {
          v192 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v326];
          [v10 setStartDate:v192];
        }

        else
        {
          [v191 setStartDate:0];
        }

        v193 = objc_opt_new();
        sub_2393C5AAC(v341);
        v339 = 0;
        v340 = 0;
        sub_2393C5BDC(v341, &v327);
        while (sub_238E72E88(&v339))
        {
          v194 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v344];
          [v193 addObject:v194];
        }

        if (v339 == 33 || (v195 = v339, !v339))
        {
          [v10 setDayPatternIDs:v193];

          [v9 addObject:v10];
          continue;
        }

        goto LABEL_306;
      }

    case 6:
      v345[0] = 0;
      v346 = 0;
      v290 = sub_238EFE808(a2, v345);
      *a3 = v290;
      a3[1] = v291;
      if (v290 || v346 != 1)
      {
        goto LABEL_353;
      }

      v9 = objc_opt_new();
      if ((v346 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C91F4(&v318, v345);
      while (2)
      {
        if (!sub_238EA1A80(&v318) || !sub_2392C93F4(&v318))
        {
          goto LABEL_294;
        }

        v10 = objc_opt_new();
        v292 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v326];
        [v10 setDate:v292];

        v293 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v326)];
        [v10 setDayType:v293];

        v193 = objc_opt_new();
        sub_2393C5AAC(v341);
        v339 = 0;
        v340 = 0;
        sub_2393C5BDC(v341, &v327);
        while (sub_238E72E88(&v339))
        {
          v294 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v344];
          [v193 addObject:v294];
        }

        if (v339 == 33 || (v195 = v339, !v339))
        {
          [v10 setDayEntryIDs:v193];

          [v9 addObject:v10];
          continue;
        }

        break;
      }

LABEL_306:
      v298 = v340;
      *a3 = v195;
      a3[1] = v298;

      goto LABEL_351;
    case 7:
      LOBYTE(v339) = 0;
      v343 = 0;
      v104 = sub_238F0B618(a2, &v339);
      *a3 = v104;
      a3[1] = v105;
      if (v104)
      {
        goto LABEL_353;
      }

      if ((v343 & 1) == 0)
      {
        goto LABEL_298;
      }

      v106 = objc_opt_new();
      if (v343 != 1 || ([MEMORY[0x277CCABB0] numberWithUnsignedInt:v339], v107 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v106, "setDate:", v107), v107, (v343 & 1) == 0))
      {
        sub_238EA195C();
      }

      v108 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v339)];
      [v106 setDayType:v108];

      v109 = objc_opt_new();
      if ((v343 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2393C5AAC(v320);
      v318 = 0;
      v319 = 0;
      sub_2393C5BDC(v320, &v340);
      while (sub_238E72E88(&v318))
      {
        v110 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v326];
        [v109 addObject:v110];
      }

      if (v318 == 33)
      {
        goto LABEL_301;
      }

      v296 = v318;
      if (!v318)
      {
        goto LABEL_301;
      }

      goto LABEL_304;
    case 8:
      LOBYTE(v339) = 0;
      v343 = 0;
      v285 = sub_238F0B618(a2, &v339);
      *a3 = v285;
      a3[1] = v286;
      if (v285)
      {
        goto LABEL_353;
      }

      if ((v343 & 1) == 0)
      {
LABEL_298:
        v106 = 0;
        goto LABEL_345;
      }

      v106 = objc_opt_new();
      if (v343 != 1 || ([MEMORY[0x277CCABB0] numberWithUnsignedInt:v339], v287 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v106, "setDate:", v287), v287, (v343 & 1) == 0))
      {
        sub_238EA195C();
      }

      v288 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v339)];
      [v106 setDayType:v288];

      v109 = objc_opt_new();
      if ((v343 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2393C5AAC(v320);
      v318 = 0;
      v319 = 0;
      sub_2393C5BDC(v320, &v340);
      while (sub_238E72E88(&v318))
      {
        v289 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v326];
        [v109 addObject:v289];
      }

      if (v318 == 33 || (v296 = v318, !v318))
      {
LABEL_301:
        [v106 setDayEntryIDs:{v109, v318}];
        goto LABEL_344;
      }

LABEL_304:
      v297 = v319;
      *a3 = v296;
      a3[1] = v297;

      v9 = 0;
      goto LABEL_346;
    case 9:
      LOBYTE(v318) = 0;
      v320[0] = 0;
      v90 = sub_238F0B6A4(a2, &v318);
      *a3 = v90;
      a3[1] = v91;
      if (v90 || (v320[0] & 1) == 0)
      {
        goto LABEL_353;
      }

      v9 = objc_opt_new();
      if (v320[0] != 1)
      {
        goto LABEL_360;
      }

      v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v318];
      [v9 setDayEntryID:v92];

      if (v320[0] != 1)
      {
        goto LABEL_360;
      }

      v93 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v318)];
      [v9 setStartTime:v93];

      if (v320[0] != 1)
      {
        goto LABEL_360;
      }

      if (BYTE6(v318) == 1)
      {
        v95 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*sub_238EAB248(&v318 + 6, v94)}];
        [v9 setDuration:v95];
      }

      else
      {
        [v9 setDuration:0];
      }

      if (v320[0] != 1)
      {
        goto LABEL_360;
      }

      if (BYTE2(v319) == 1)
      {
        v301 = [MEMORY[0x277CCABB0] numberWithShort:{*sub_2392C83D0(&v319 + 2, v96)}];
        [v9 setRandomizationOffset:v301];
      }

      else
      {
        [v9 setRandomizationOffset:0];
      }

      if ((v320[0] & 1) == 0)
      {
LABEL_360:
        sub_238EA195C();
      }

      if (BYTE6(v319) == 1)
      {
        goto LABEL_324;
      }

      goto LABEL_329;
    case 11:
      LOBYTE(v318) = 0;
      v320[0] = 0;
      v97 = sub_238F0B6A4(a2, &v318);
      *a3 = v97;
      a3[1] = v98;
      if (v97 || (v320[0] & 1) == 0)
      {
        goto LABEL_353;
      }

      v9 = objc_opt_new();
      if (v320[0] != 1)
      {
        goto LABEL_361;
      }

      v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v318];
      [v9 setDayEntryID:v99];

      if (v320[0] != 1)
      {
        goto LABEL_361;
      }

      v100 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v318)];
      [v9 setStartTime:v100];

      if (v320[0] != 1)
      {
        goto LABEL_361;
      }

      if (BYTE6(v318) == 1)
      {
        v102 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{*sub_238EAB248(&v318 + 6, v101)}];
        [v9 setDuration:v102];
      }

      else
      {
        [v9 setDuration:0];
      }

      if (v320[0] != 1)
      {
        goto LABEL_361;
      }

      if (BYTE2(v319) == 1)
      {
        v303 = [MEMORY[0x277CCABB0] numberWithShort:{*sub_2392C83D0(&v319 + 2, v103)}];
        [v9 setRandomizationOffset:v303];
      }

      else
      {
        [v9 setRandomizationOffset:0];
      }

      if ((v320[0] & 1) == 0)
      {
LABEL_361:
        sub_238EA195C();
      }

      if (BYTE6(v319) == 1)
      {
LABEL_324:
        v106 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_2392C86E0(&v319 + 6, v302)}];
        [v9 setRandomizationType:v106];
        goto LABEL_346;
      }

LABEL_329:
      [v9 setRandomizationType:0];
      goto LABEL_354;
    case 13:
      LOBYTE(v339) = 0;
      v342 = 0;
      v209 = sub_238EFE808(a2, &v339);
      *a3 = v209;
      a3[1] = v210;
      if (v209 || v342 != 1)
      {
        goto LABEL_353;
      }

      v9 = objc_opt_new();
      if ((v342 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C9494(&v318, &v339);
      while (2)
      {
        if (!sub_238EA1A80(&v318) || !sub_2392C94FC(&v318))
        {
          goto LABEL_294;
        }

        v10 = objc_opt_new();
        v211 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v326];
        [v10 setTariffComponentID:v211];

        if (v327 == 1 && (sub_238DE36B8(&v327, v212)[32] & 1) != 0)
        {
          v213 = objc_opt_new();
          [v10 setPrice:v213];

          v214 = MEMORY[0x277CCABB0];
          v216 = sub_238DE36B8(&v327, v215);
          if ((v216[32] & 1) == 0)
          {
            break;
          }

          v217 = [v214 numberWithUnsignedChar:*v216];
          v218 = [v10 price];
          [v218 setPriceType:v217];

          v220 = sub_238DE36B8(&v327, v219);
          if (v220[32] != 1)
          {
            break;
          }

          if (v220[8] == 1)
          {
            v222 = MEMORY[0x277CCABB0];
            v223 = sub_238DE36B8(&v327, v221);
            if (v223[32] != 1)
            {
              break;
            }

            v225 = [v222 numberWithLongLong:{*sub_238DE36B8(v223 + 8, v224)}];
            v226 = [v10 price];
            [v226 setPrice:v225];
          }

          else
          {
            v225 = [v10 price];
            [v225 setPrice:0];
          }

          v229 = sub_238DE36B8(&v327, v228);
          if (v229[32] != 1)
          {
            break;
          }

          if (v229[24] == 1)
          {
            v231 = MEMORY[0x277CCABB0];
            v232 = sub_238DE36B8(&v327, v230);
            if (v232[32] != 1)
            {
              break;
            }

            v234 = [v231 numberWithShort:{SLOWORD(sub_238E0A934(v232 + 24, v233)->super.isa)}];
            v235 = [v10 price];
            [v235 setPriceLevel:v234];
          }

          else
          {
            v234 = [v10 price];
            [v234 setPriceLevel:0];
          }
        }

        else
        {
          [v10 setPrice:0];
        }

        if (v330[0] == 1)
        {
          v236 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(v330, v227)->super.isa)}];
          [v10 setFriendlyCredit:v236];
        }

        else
        {
          [v10 setFriendlyCredit:0];
        }

        if (v331[0] == 1)
        {
          v237 = objc_opt_new();
          [v10 setAuxiliaryLoad:v237];

          v239 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v331, v238)->super.isa)}];
          v240 = [v10 auxiliaryLoad];
          [v240 setNumber:v239];

          v242 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{BYTE1(sub_238DE36D8(v331, v241)->super.isa)}];
          v243 = [v10 auxiliaryLoad];
          [v243 setRequiredState:v242];
        }

        else
        {
          [v10 setAuxiliaryLoad:0];
        }

        if (v332[0] == 1)
        {
          v244 = objc_opt_new();
          [v10 setPeakPeriod:v244];

          v246 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238E0A934(v332, v245)->super.isa)}];
          v247 = [v10 peakPeriod];
          [v247 setSeverity:v246];

          v249 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{WORD1(sub_238E0A934(v332, v248)->super.isa)}];
          v250 = [v10 peakPeriod];
          [v250 setPeakPeriod:v249];
        }

        else
        {
          [v10 setPeakPeriod:0];
        }

        if (v333[0] == 1)
        {
          v251 = objc_opt_new();
          [v10 setPowerThreshold:v251];

          if (*sub_238DE36B8(v333, v252) == 1)
          {
            v254 = MEMORY[0x277CCABB0];
            v255 = sub_238DE36B8(v333, v253);
            v257 = [v254 numberWithLongLong:{*sub_238DE36B8(v255, v256)}];
            v258 = [v10 powerThreshold];
            [v258 setPowerThreshold:v257];
          }

          else
          {
            v257 = [v10 powerThreshold];
            [v257 setPowerThreshold:0];
          }

          if (sub_238DE36B8(v333, v259)[16] == 1)
          {
            v261 = MEMORY[0x277CCABB0];
            v262 = sub_238DE36B8(v333, v260);
            v264 = [v261 numberWithLongLong:{*sub_238DE36B8(v262 + 16, v263)}];
            v265 = [v10 powerThreshold];
            [v265 setApparentPowerThreshold:v264];
          }

          else
          {
            v264 = [v10 powerThreshold];
            [v264 setApparentPowerThreshold:0];
          }

          if (sub_238DE36B8(v333, v266)[33])
          {
            v268 = MEMORY[0x277CCABB0];
            v269 = sub_238DE36B8(v333, v267);
            if (v269[33] != 1)
            {
              break;
            }

            v270 = [v268 numberWithUnsignedChar:v269[32]];
            v271 = [v10 powerThreshold];
            [v271 setPowerThresholdSource:v270];
          }

          else
          {
            v270 = [v10 powerThreshold];
            [v270 setPowerThresholdSource:0];
          }
        }

        else
        {
          [v10 setPowerThreshold:0];
        }

        if (v336)
        {
          v272 = [MEMORY[0x277CCABB0] numberWithLongLong:v335];
          [v10 setThreshold:v272];
        }

        else
        {
          [v10 setThreshold:0];
        }

        if (v337[0] != 1 || (sub_238DE36B8(v337, v273)[16] & 1) == 0)
        {
          [v10 setLabel:0];
          goto LABEL_253;
        }

        v275 = sub_238DE36B8(v337, v274);
        if (v275[16] == 1)
        {
          v276 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v275 length:*(v275 + 1) encoding:4];
          [v10 setLabel:v276];

          v277 = [v10 label];

          if (!v277)
          {
            v316 = &xmmword_278A74EF8;
LABEL_350:
            *a3 = *v316;
LABEL_351:

            goto LABEL_352;
          }

LABEL_253:
          if (v338[0] == 1)
          {
            v279 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(v338, v278)->super.isa)}];
            [v10 setPredicted:v279];
          }

          else
          {
            [v10 setPredicted:0];
          }

          [v9 addObject:v10];

          continue;
        }

        break;
      }

      sub_238EA195C();
    case 14:
      v345[0] = 0;
      v346 = 0;
      v80 = sub_238EFE808(a2, v345);
      *a3 = v80;
      a3[1] = v81;
      if (v80 || v346 != 1)
      {
        goto LABEL_353;
      }

      v9 = objc_opt_new();
      if ((v346 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C956C(&v318, v345);
      while (2)
      {
        if (!sub_238EA1A80(&v318) || !sub_2392C95E4(&v318))
        {
          goto LABEL_294;
        }

        v82 = objc_opt_new();
        v83 = v82;
        if (v328)
        {
          v84 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v326 length:v327 encoding:4];
          [v83 setLabel:v84];

          v85 = [v83 label];

          if (!v85)
          {
            *a3 = xmmword_278A74F08;
            goto LABEL_349;
          }
        }

        else
        {
          [v82 setLabel:0];
        }

        v86 = objc_opt_new();
        sub_2393C5AAC(v341);
        v339 = 0;
        v340 = 0;
        sub_2393C5BDC(v341, &v329);
        while (sub_238E72E88(&v339))
        {
          v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v344];
          [v86 addObject:v87];
        }

        if (v339 == 33 || (v88 = v339, !v339))
        {
          [v83 setDayEntryIDs:v86];

          v86 = objc_opt_new();
          sub_2393C5AAC(v341);
          v339 = 0;
          v340 = 0;
          sub_2393C5BDC(v341, &v334);
          while (sub_238E72E88(&v339))
          {
            v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v344];
            [v86 addObject:v89];
          }

          if (v339 == 33 || (v88 = v339, !v339))
          {
            [v83 setTariffComponentIDs:v86];

            [v9 addObject:v83];
            continue;
          }
        }

        break;
      }

      v315 = v340;
      *a3 = v88;
      a3[1] = v315;

LABEL_349:
      goto LABEL_352;
    case 15:
      LOBYTE(v339) = 0;
      v342 = 0;
      v111 = sub_238EFE808(a2, &v339);
      *a3 = v111;
      a3[1] = v112;
      if (v111 || v342 != 1)
      {
        goto LABEL_353;
      }

      v9 = objc_opt_new();
      if ((v342 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C9494(&v318, &v339);
      while (2)
      {
        if (!sub_238EA1A80(&v318) || !sub_2392C94FC(&v318))
        {
          goto LABEL_294;
        }

        v10 = objc_opt_new();
        v113 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v326];
        [v10 setTariffComponentID:v113];

        if (v327 == 1 && (sub_238DE36B8(&v327, v114)[32] & 1) != 0)
        {
          v115 = objc_opt_new();
          [v10 setPrice:v115];

          v116 = MEMORY[0x277CCABB0];
          v118 = sub_238DE36B8(&v327, v117);
          if ((v118[32] & 1) == 0)
          {
            break;
          }

          v119 = [v116 numberWithUnsignedChar:*v118];
          v120 = [v10 price];
          [v120 setPriceType:v119];

          v122 = sub_238DE36B8(&v327, v121);
          if (v122[32] != 1)
          {
            break;
          }

          if (v122[8] == 1)
          {
            v124 = MEMORY[0x277CCABB0];
            v125 = sub_238DE36B8(&v327, v123);
            if (v125[32] != 1)
            {
              break;
            }

            v127 = [v124 numberWithLongLong:{*sub_238DE36B8(v125 + 8, v126)}];
            v128 = [v10 price];
            [v128 setPrice:v127];
          }

          else
          {
            v127 = [v10 price];
            [v127 setPrice:0];
          }

          v131 = sub_238DE36B8(&v327, v130);
          if (v131[32] != 1)
          {
            break;
          }

          if (v131[24] == 1)
          {
            v133 = MEMORY[0x277CCABB0];
            v134 = sub_238DE36B8(&v327, v132);
            if (v134[32] != 1)
            {
              break;
            }

            v136 = [v133 numberWithShort:{SLOWORD(sub_238E0A934(v134 + 24, v135)->super.isa)}];
            v137 = [v10 price];
            [v137 setPriceLevel:v136];
          }

          else
          {
            v136 = [v10 price];
            [v136 setPriceLevel:0];
          }
        }

        else
        {
          [v10 setPrice:0];
        }

        if (v330[0] == 1)
        {
          v138 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(v330, v129)->super.isa)}];
          [v10 setFriendlyCredit:v138];
        }

        else
        {
          [v10 setFriendlyCredit:0];
        }

        if (v331[0] == 1)
        {
          v139 = objc_opt_new();
          [v10 setAuxiliaryLoad:v139];

          v141 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v331, v140)->super.isa)}];
          v142 = [v10 auxiliaryLoad];
          [v142 setNumber:v141];

          v144 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{BYTE1(sub_238DE36D8(v331, v143)->super.isa)}];
          v145 = [v10 auxiliaryLoad];
          [v145 setRequiredState:v144];
        }

        else
        {
          [v10 setAuxiliaryLoad:0];
        }

        if (v332[0] == 1)
        {
          v146 = objc_opt_new();
          [v10 setPeakPeriod:v146];

          v148 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238E0A934(v332, v147)->super.isa)}];
          v149 = [v10 peakPeriod];
          [v149 setSeverity:v148];

          v151 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{WORD1(sub_238E0A934(v332, v150)->super.isa)}];
          v152 = [v10 peakPeriod];
          [v152 setPeakPeriod:v151];
        }

        else
        {
          [v10 setPeakPeriod:0];
        }

        if (v333[0] == 1)
        {
          v153 = objc_opt_new();
          [v10 setPowerThreshold:v153];

          if (*sub_238DE36B8(v333, v154) == 1)
          {
            v156 = MEMORY[0x277CCABB0];
            v157 = sub_238DE36B8(v333, v155);
            v159 = [v156 numberWithLongLong:{*sub_238DE36B8(v157, v158)}];
            v160 = [v10 powerThreshold];
            [v160 setPowerThreshold:v159];
          }

          else
          {
            v159 = [v10 powerThreshold];
            [v159 setPowerThreshold:0];
          }

          if (sub_238DE36B8(v333, v161)[16] == 1)
          {
            v163 = MEMORY[0x277CCABB0];
            v164 = sub_238DE36B8(v333, v162);
            v166 = [v163 numberWithLongLong:{*sub_238DE36B8(v164 + 16, v165)}];
            v167 = [v10 powerThreshold];
            [v167 setApparentPowerThreshold:v166];
          }

          else
          {
            v166 = [v10 powerThreshold];
            [v166 setApparentPowerThreshold:0];
          }

          if (sub_238DE36B8(v333, v168)[33])
          {
            v170 = MEMORY[0x277CCABB0];
            v171 = sub_238DE36B8(v333, v169);
            if (v171[33] != 1)
            {
              break;
            }

            v172 = [v170 numberWithUnsignedChar:v171[32]];
            v173 = [v10 powerThreshold];
            [v173 setPowerThresholdSource:v172];
          }

          else
          {
            v172 = [v10 powerThreshold];
            [v172 setPowerThresholdSource:0];
          }
        }

        else
        {
          [v10 setPowerThreshold:0];
        }

        if (v336)
        {
          v174 = [MEMORY[0x277CCABB0] numberWithLongLong:v335];
          [v10 setThreshold:v174];
        }

        else
        {
          [v10 setThreshold:0];
        }

        if (v337[0] != 1 || (sub_238DE36B8(v337, v175)[16] & 1) == 0)
        {
          [v10 setLabel:0];
          goto LABEL_156;
        }

        v177 = sub_238DE36B8(v337, v176);
        if (v177[16] == 1)
        {
          v178 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v177 length:*(v177 + 1) encoding:4];
          [v10 setLabel:v178];

          v179 = [v10 label];

          if (!v179)
          {
            v316 = &xmmword_278A74F18;
            goto LABEL_350;
          }

LABEL_156:
          if (v338[0] == 1)
          {
            v181 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(v338, v180)->super.isa)}];
            [v10 setPredicted:v181];
          }

          else
          {
            [v10 setPredicted:0];
          }

          [v9 addObject:v10];

          continue;
        }

        break;
      }

      sub_238EA195C();
    case 16:
      LOBYTE(v339) = 0;
      v342 = 0;
      v7 = sub_238EFE808(a2, &v339);
      *a3 = v7;
      a3[1] = v8;
      if (v7 || v342 != 1)
      {
        goto LABEL_353;
      }

      v9 = objc_opt_new();
      if ((v342 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C9494(&v318, &v339);
      while (2)
      {
        if (sub_238EA1A80(&v318) && sub_2392C94FC(&v318))
        {
          v10 = objc_opt_new();
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v326];
          [v10 setTariffComponentID:v11];

          if (v327 == 1 && (sub_238DE36B8(&v327, v12)[32] & 1) != 0)
          {
            v13 = objc_opt_new();
            [v10 setPrice:v13];

            v14 = MEMORY[0x277CCABB0];
            v16 = sub_238DE36B8(&v327, v15);
            if ((v16[32] & 1) == 0)
            {
              goto LABEL_357;
            }

            v17 = [v14 numberWithUnsignedChar:*v16];
            v18 = [v10 price];
            [v18 setPriceType:v17];

            v20 = sub_238DE36B8(&v327, v19);
            if (v20[32] != 1)
            {
              goto LABEL_357;
            }

            if (v20[8] == 1)
            {
              v22 = MEMORY[0x277CCABB0];
              v23 = sub_238DE36B8(&v327, v21);
              if (v23[32] != 1)
              {
                goto LABEL_357;
              }

              v25 = [v22 numberWithLongLong:{*sub_238DE36B8(v23 + 8, v24)}];
              v26 = [v10 price];
              [v26 setPrice:v25];
            }

            else
            {
              v25 = [v10 price];
              [v25 setPrice:0];
            }

            v29 = sub_238DE36B8(&v327, v28);
            if (v29[32] != 1)
            {
              goto LABEL_357;
            }

            if (v29[24] == 1)
            {
              v31 = MEMORY[0x277CCABB0];
              v32 = sub_238DE36B8(&v327, v30);
              if (v32[32] != 1)
              {
                goto LABEL_357;
              }

              v34 = [v31 numberWithShort:{SLOWORD(sub_238E0A934(v32 + 24, v33)->super.isa)}];
              v35 = [v10 price];
              [v35 setPriceLevel:v34];
            }

            else
            {
              v34 = [v10 price];
              [v34 setPriceLevel:0];
            }
          }

          else
          {
            [v10 setPrice:0];
          }

          if (v330[0] == 1)
          {
            v36 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(v330, v27)->super.isa)}];
            [v10 setFriendlyCredit:v36];
          }

          else
          {
            [v10 setFriendlyCredit:0];
          }

          if (v331[0] == 1)
          {
            v37 = objc_opt_new();
            [v10 setAuxiliaryLoad:v37];

            v39 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v331, v38)->super.isa)}];
            v40 = [v10 auxiliaryLoad];
            [v40 setNumber:v39];

            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{BYTE1(sub_238DE36D8(v331, v41)->super.isa)}];
            v43 = [v10 auxiliaryLoad];
            [v43 setRequiredState:v42];
          }

          else
          {
            [v10 setAuxiliaryLoad:0];
          }

          if (v332[0] == 1)
          {
            v44 = objc_opt_new();
            [v10 setPeakPeriod:v44];

            v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238E0A934(v332, v45)->super.isa)}];
            v47 = [v10 peakPeriod];
            [v47 setSeverity:v46];

            v49 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{WORD1(sub_238E0A934(v332, v48)->super.isa)}];
            v50 = [v10 peakPeriod];
            [v50 setPeakPeriod:v49];
          }

          else
          {
            [v10 setPeakPeriod:0];
          }

          if (v333[0] == 1)
          {
            v51 = objc_opt_new();
            [v10 setPowerThreshold:v51];

            if (*sub_238DE36B8(v333, v52) == 1)
            {
              v54 = MEMORY[0x277CCABB0];
              v55 = sub_238DE36B8(v333, v53);
              v57 = [v54 numberWithLongLong:{*sub_238DE36B8(v55, v56)}];
              v58 = [v10 powerThreshold];
              [v58 setPowerThreshold:v57];
            }

            else
            {
              v57 = [v10 powerThreshold];
              [v57 setPowerThreshold:0];
            }

            if (sub_238DE36B8(v333, v59)[16] == 1)
            {
              v61 = MEMORY[0x277CCABB0];
              v62 = sub_238DE36B8(v333, v60);
              v64 = [v61 numberWithLongLong:{*sub_238DE36B8(v62 + 16, v63)}];
              v65 = [v10 powerThreshold];
              [v65 setApparentPowerThreshold:v64];
            }

            else
            {
              v64 = [v10 powerThreshold];
              [v64 setApparentPowerThreshold:0];
            }

            if (sub_238DE36B8(v333, v66)[33])
            {
              v68 = MEMORY[0x277CCABB0];
              v69 = sub_238DE36B8(v333, v67);
              if (v69[33] != 1)
              {
                goto LABEL_357;
              }

              v70 = [v68 numberWithUnsignedChar:v69[32]];
              v71 = [v10 powerThreshold];
              [v71 setPowerThresholdSource:v70];
            }

            else
            {
              v70 = [v10 powerThreshold];
              [v70 setPowerThresholdSource:0];
            }
          }

          else
          {
            [v10 setPowerThreshold:0];
          }

          if (v336)
          {
            v72 = [MEMORY[0x277CCABB0] numberWithLongLong:v335];
            [v10 setThreshold:v72];
          }

          else
          {
            [v10 setThreshold:0];
          }

          if (v337[0] != 1 || (sub_238DE36B8(v337, v73)[16] & 1) == 0)
          {
            [v10 setLabel:0];
            goto LABEL_57;
          }

          v75 = sub_238DE36B8(v337, v74);
          if (v75[16] == 1)
          {
            v76 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v75 length:*(v75 + 1) encoding:4];
            [v10 setLabel:v76];

            v77 = [v10 label];

            if (!v77)
            {
              v316 = &xmmword_278A74F28;
              goto LABEL_350;
            }

LABEL_57:
            if (v338[0] == 1)
            {
              v79 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(v338, v78)->super.isa)}];
              [v10 setPredicted:v79];
            }

            else
            {
              [v10 setPredicted:0];
            }

            [v9 addObject:v10];

            continue;
          }

LABEL_357:
          sub_238EA195C();
        }

        break;
      }

LABEL_294:
      if (v318 == 33 || !v318)
      {
        goto LABEL_354;
      }

      v295 = v319;
      *a3 = v318;
      a3[1] = v295;
LABEL_352:

LABEL_353:
      v9 = 0;
LABEL_354:

      return v9;
    case 17:
      LOBYTE(v318) = 0;
      BYTE2(v318) = 0;
      v196 = sub_238F0B738(a2, &v318);
      *a3 = v196;
      a3[1] = v197;
      if (v196 || BYTE2(v318) != 1)
      {
        goto LABEL_353;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithShort:v318];
      goto LABEL_273;
    case 18:
      LOWORD(v318) = 0;
      v187 = sub_238F0B7F4(a2, &v318);
LABEL_270:
      *a3 = v187;
      a3[1] = v188;
      if (v187 || BYTE1(v318) != 1)
      {
        goto LABEL_353;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v318];
LABEL_273:
      v9 = v6;
      goto LABEL_354;
    default:
      v9 = 0;
      *a3 = 0x4DEB000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_354;
  }
}

id sub_2392C1030(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    sub_2393C5AAC(&v46);
    sub_2393C5ADC(&v46, 0, 0);
    v48[56] = 0;
    v27 = sub_238F36BB4(&v46, a2);
    v7 = 0;
    *a3 = v27;
    a3[1] = v28;
    if (v27)
    {
      goto LABEL_49;
    }

    v7 = objc_opt_new();
    sub_2392C97B4(&v46, v51);
    while (sub_2392C9814(v51))
    {
      v11 = objc_opt_new();
      v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v52[0] length:v52[1] encoding:4];
      [v11 setUniqueLocationID:v29];

      v30 = [v11 uniqueLocationID];

      if (!v30)
      {
        v45 = &xmmword_278A74F58;
        goto LABEL_46;
      }

      v31 = objc_opt_new();
      [v11 setLocationDescriptor:v31];

      v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v52[2] length:v53 encoding:4];
      v33 = [v11 locationDescriptor];
      [v33 setLocationName:v32];

      v34 = [v11 locationDescriptor];
      v35 = [v34 locationName];

      if (!v35)
      {
        v45 = &xmmword_278A74F68;
        goto LABEL_46;
      }

      if (v55)
      {
        v36 = [MEMORY[0x277CCABB0] numberWithShort:v54];
        v37 = [v11 locationDescriptor];
        [v37 setFloorNumber:v36];
      }

      else
      {
        v36 = [v11 locationDescriptor];
        [v36 setFloorNumber:0];
      }

      if (v57)
      {
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v56];
        v39 = [v11 locationDescriptor];
        [v39 setAreaType:v38];
      }

      else
      {
        v38 = [v11 locationDescriptor];
        [v38 setAreaType:0];
      }

      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v58];
      [v11 setLocationDescriptorLastEdit:v40];

      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v59[0]];
      [v11 setFabricIndex:v41];

      [v7 addObject:v11];
    }
  }

  else
  {
    if (a1)
    {
      v7 = 0;
      *a3 = 0x4E7F000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_49;
    }

    sub_2393C5AAC(v62);
    sub_2393C5ADC(v5, 0, 0);
    v62[72] = 0;
    v6 = sub_238F36BB4(v62, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (v6)
    {
      goto LABEL_49;
    }

    v7 = objc_opt_new();
    sub_2392C96CC(v62, v51);
    while (2)
    {
      if (sub_2392C9760(v51))
      {
        v9 = objc_opt_new();
        v11 = v9;
        if (LOBYTE(v52[0]) == 1)
        {
          v12 = sub_238DE36B8(v52, v10);
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v12 length:v12[1] encoding:4];
          [v11 setDeviceName:v13];

          v14 = [v11 deviceName];

          if (!v14)
          {
            v45 = &xmmword_278A74F38;
LABEL_46:
            *a3 = *v45;
            goto LABEL_47;
          }
        }

        else
        {
          [v9 setDeviceName:0];
        }

        if (v53 == 1)
        {
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(&v53, v15)}];
          [v11 setDeviceNameLastEdit:v16];
        }

        else
        {
          [v11 setDeviceNameLastEdit:0];
        }

        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v58];
        [v11 setBridgedEndpoint:v17];

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v58)];
        [v11 setOriginalEndpoint:v18];

        v19 = objc_opt_new();
        sub_2393C5AAC(v48);
        v46 = 0;
        v47 = 0;
        sub_2393C5BDC(v48, v59);
        LODWORD(v49) = 0;
        WORD2(v49) = 0;
        while (sub_238EA1A80(&v46) && sub_2392C6E58(&v46))
        {
          v20 = objc_opt_new();
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v49];
          [v20 setDeviceType:v21];

          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v49)];
          [v20 setRevision:v22];

          [v19 addObject:v20];
        }

        if (v46 == 33 || (v23 = v46, !v46))
        {
          [v11 setDeviceTypes:v19];

          v19 = objc_opt_new();
          sub_2393C5AAC(v48);
          v46 = 0;
          v47 = 0;
          sub_2393C5BDC(v48, v60);
          v49 = 0;
          v50 = 0;
          while (sub_238E43364(&v46))
          {
            v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v49 length:v50 encoding:4];
            if (!v24)
            {
              *a3 = xmmword_278A74F48;
              goto LABEL_40;
            }

            [v19 addObject:v24];
          }

          if (v46 == 33 || (v23 = v46, !v46))
          {
            [v11 setUniqueLocationIDs:v19];

            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v60[9]];
            [v11 setUniqueLocationIDsLastEdit:v25];

            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v61];
            [v11 setFabricIndex:v26];

            [v7 addObject:v11];
            continue;
          }
        }

        v44 = v47;
        *a3 = v23;
        a3[1] = v44;
LABEL_40:

LABEL_47:
        goto LABEL_48;
      }

      break;
    }
  }

  if (LODWORD(v51[0]) != 33 && LODWORD(v51[0]))
  {
    v42 = v51[1];
    *a3 = v51[0];
    a3[1] = v42;
LABEL_48:

    v7 = 0;
  }

LABEL_49:

  return v7;
}

id sub_2392C17D8(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x4E97000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v8 = 0;
    v5 = sub_238F37278(a2, &v8);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    }
  }

  return v4;
}

MTRJointFabricDatastoreClusterDatastoreStatusEntryStruct *sub_2392C186C(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
      v181 = 0uLL;
      if (sub_2393C5C40(a2) == 16)
      {
        v4 = sub_2393C60CC(a2, &v181);
        *a3 = v4;
        a3[1] = v5;
        if (v4)
        {
          goto LABEL_165;
        }

        v6 = [MEMORY[0x277CBEA90] dataWithBytes:v181 length:?];
        goto LABEL_100;
      }

      v8 = 0;
      *a3 = 0x500000002BLL;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Decode.h";
      goto LABEL_166;
    case 1:
      *&v181 = 0;
      v101 = sub_2393C5F2C(a2, &v181);
      v8 = 0;
      *a3 = v101;
      a3[1] = v102;
      if (!v101)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v181];
        goto LABEL_100;
      }

      goto LABEL_166;
    case 2:
      LOWORD(v181) = 0;
      v83 = sub_238F36E54(a2, &v181);
      v8 = 0;
      if (v83)
      {
        v85 = v84;
      }

      else
      {
        v85 = 0;
      }

      if (v83)
      {
        v86 = v83;
      }

      else
      {
        v86 = 0;
      }

      *a3 = v86;
      a3[1] = v85;
      if (!v86)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v181];
LABEL_100:
        v8 = v6;
      }

      goto LABEL_166;
    case 3:
      v181 = 0uLL;
      v87 = sub_2393C61E0(a2, &v181);
      v8 = 0;
      *a3 = v87;
      a3[1] = v88;
      if (!v87)
      {
        v89 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v181 length:*(&v181 + 1) encoding:4];
        v8 = v89;
        if (v89)
        {
          v90 = v89;
        }

        else
        {
          *a3 = xmmword_278A74F78;
        }
      }

      goto LABEL_166;
    case 4:
      sub_2393C5AAC(&v175);
      sub_2393C5ADC(&v175, 0, 0);
      v23 = sub_238F36BB4(&v175, a2);
      v8 = 0;
      *a3 = v23;
      a3[1] = v24;
      if (!v23)
      {
        v8 = objc_opt_new();
        sub_2392C99C8(&v181, &v175);
        while (1)
        {
          v25 = sub_238EA1A80(&v181);
          LODWORD(v11) = v181;
          if (v181)
          {
            v25 = 0;
          }

          if (!v25)
          {
            break;
          }

          LOBYTE(v190) = 0;
          v189 = 0u;
          v188 = 0u;
          v187 = 0u;
          v186 = 0u;
          v185 = 0u;
          memset(v184, 0, sizeof(v184));
          v183 = 0u;
          v11 = sub_238F1CF7C(&v183, v182);
          *&v181 = v11;
          *(&v181 + 1) = v26;
          if (v11)
          {
            break;
          }

          v27 = objc_opt_new();
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v183];
          [v27 setGroupKeySetID:v28];

          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v183)];
          [v27 setGroupKeySecurityPolicy:v29];

          if (v184[1])
          {
            v30 = [MEMORY[0x277CBEA90] dataWithBytes:*(&v183 + 1) length:v184[0]];
            [v27 setEpochKey0:v30];
          }

          else
          {
            [v27 setEpochKey0:0];
          }

          if (v184[3])
          {
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v184[2]];
            [v27 setEpochStartTime0:v31];
          }

          else
          {
            [v27 setEpochStartTime0:0];
          }

          if (v186)
          {
            v32 = [MEMORY[0x277CBEA90] dataWithBytes:v185 length:?];
            [v27 setEpochKey1:v32];
          }

          else
          {
            [v27 setEpochKey1:0];
          }

          if (v187)
          {
            v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v186 + 1)];
            [v27 setEpochStartTime1:v33];
          }

          else
          {
            [v27 setEpochStartTime1:0];
          }

          if (BYTE8(v188))
          {
            v34 = [MEMORY[0x277CBEA90] dataWithBytes:*(&v187 + 1) length:v188];
            [v27 setEpochKey2:v34];
          }

          else
          {
            [v27 setEpochKey2:0];
          }

          if (BYTE8(v189))
          {
            v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v189];
            [v27 setEpochStartTime2:v35];
          }

          else
          {
            [v27 setEpochStartTime2:0];
          }

          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v190];
          [v27 setGroupKeyMulticastPolicy:v36];

          [v8 addObject:v27];
        }

        goto LABEL_118;
      }

      goto LABEL_166;
    case 5:
      sub_2393C5AAC(&v175);
      sub_2393C5ADC(&v175, 0, 0);
      v103 = sub_238F36BB4(&v175, a2);
      v8 = 0;
      *a3 = v103;
      a3[1] = v104;
      if (!v103)
      {
        v8 = objc_opt_new();
        sub_2392C9A44(&v181, &v175);
        while (1)
        {
          v105 = sub_238EA1A80(&v181);
          LODWORD(v11) = v181;
          if (v181)
          {
            v105 = 0;
          }

          if (!v105)
          {
            goto LABEL_118;
          }

          memset(v184, 0, 21);
          v183 = 0u;
          v11 = sub_238F1CD44(&v183, v182);
          *&v181 = v11;
          *(&v181 + 1) = v106;
          if (v11)
          {
            goto LABEL_118;
          }

          v42 = objc_opt_new();
          v107 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v183];
          [v42 setGroupID:v107];

          v108 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(&v183 + 1) length:v184[0] encoding:4];
          [v42 setFriendlyName:v108];

          v109 = [v42 friendlyName];

          if (!v109)
          {
            v171 = &xmmword_278A74F88;
            goto LABEL_162;
          }

          if ((v184[1] & 0x10000) != 0)
          {
            v110 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v184[1])];
            [v42 setGroupKeySetID:v110];
          }

          else
          {
            [v42 setGroupKeySetID:0];
          }

          if ((v184[1] & 0x1000000000000) != 0)
          {
            v111 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v184[1])];
            [v42 setGroupCAT:v111];
          }

          else
          {
            [v42 setGroupCAT:0];
          }

          if ((v184[2] & 0x10000) != 0)
          {
            v112 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v184[2])];
            [v42 setGroupCATVersion:v112];
          }

          else
          {
            [v42 setGroupCATVersion:0];
          }

          v113 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v184[2])];
          [v42 setGroupPermission:v113];

          [v8 addObject:v42];
        }
      }

      goto LABEL_166;
    case 6:
      sub_2393C5AAC(&v175);
      sub_2393C5ADC(&v175, 0, 0);
      v127 = sub_238F36BB4(&v175, a2);
      v8 = 0;
      *a3 = v127;
      a3[1] = v128;
      if (!v127)
      {
        v8 = objc_opt_new();
        sub_2393C5AAC(v182);
        v181 = 0uLL;
        sub_2393C5BDC(v182, &v175);
        HIDWORD(v184[1]) = 0;
        LOBYTE(v184[2]) = 0;
        v184[0] = 0;
        v183 = 0uLL;
        LOBYTE(v184[1]) = 0;
        while (sub_238EA1A80(&v181) && sub_2392C9AA8(&v181))
        {
          v42 = objc_opt_new();
          v129 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v183];
          [v42 setNodeID:v129];

          v130 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(&v183 + 1) length:v184[0] encoding:4];
          [v42 setFriendlyName:v130];

          v131 = [v42 friendlyName];

          if (!v131)
          {
            v171 = &xmmword_278A74F98;
            goto LABEL_162;
          }

          v132 = objc_opt_new();
          [v42 setCommissioningStatusEntry:v132];

          v133 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v184[1])];
          v134 = [v42 commissioningStatusEntry];
          [v134 setState:v133];

          v135 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v184[1])];
          v136 = [v42 commissioningStatusEntry];
          [v136 setUpdateTimestamp:v135];

          v137 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v184[2])];
          v138 = [v42 commissioningStatusEntry];
          [v138 setFailureCode:v137];

          [v8 addObject:v42];
        }

        goto LABEL_149;
      }

      goto LABEL_166;
    case 7:
      sub_2393C5AAC(&v175);
      sub_2393C5ADC(&v175, 0, 0);
      v91 = sub_238F36BB4(&v175, a2);
      v8 = 0;
      *a3 = v91;
      a3[1] = v92;
      if (!v91)
      {
        v8 = objc_opt_new();
        sub_2393C5AAC(v182);
        v181 = 0uLL;
        sub_2393C5BDC(v182, &v175);
        v184[2] = 0;
        v184[3] = 0;
        v184[0] = 0;
        v183 = 0uLL;
        LOWORD(v184[1]) = 0;
        while (1)
        {
          v93 = sub_238EA1A80(&v181);
          LODWORD(v11) = v181;
          if (v181)
          {
            v93 = 0;
          }

          if (!v93)
          {
            goto LABEL_118;
          }

          memset(v184, 0, sizeof(v184));
          v183 = 0u;
          v11 = sub_238F1CB48(&v183, v182);
          *&v181 = v11;
          *(&v181 + 1) = v94;
          if (v11)
          {
            goto LABEL_118;
          }

          v95 = objc_opt_new();
          v96 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v183];
          [v95 setNodeID:v96];

          v97 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(&v183 + 1) length:v184[0] encoding:4];
          [v95 setFriendlyName:v97];

          v98 = [v95 friendlyName];

          if (!v98)
          {
            *a3 = xmmword_278A74FA8;

            goto LABEL_164;
          }

          v99 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v184[1])];
          [v95 setVendorID:v99];

          v100 = [MEMORY[0x277CBEA90] dataWithBytes:v184[2] length:v184[3]];
          [v95 setIcac:v100];

          [v8 addObject:v95];
        }
      }

      goto LABEL_166;
    case 8:
      LOBYTE(v181) = 0;
      DWORD1(v181) = 0;
      BYTE8(v181) = 0;
      v166 = sub_238F1BE54(&v181, a2);
      *a3 = v166;
      a3[1] = v167;
      if (v166)
      {
        goto LABEL_165;
      }

      v8 = objc_opt_new();
      v168 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v181];
      [v8 setState:v168];

      v169 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD1(v181)];
      [v8 setUpdateTimestamp:v169];

      v170 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE8(v181)];
      [v8 setFailureCode:v170];

      goto LABEL_166;
    case 9:
      sub_2393C5AAC(&v175);
      sub_2393C5ADC(&v175, 0, 0);
      v70 = sub_238F36BB4(&v175, a2);
      v8 = 0;
      *a3 = v70;
      a3[1] = v71;
      if (!v70)
      {
        v8 = objc_opt_new();
        sub_2393C5AAC(v182);
        v181 = 0uLL;
        sub_2393C5BDC(v182, &v175);
        LODWORD(v184[0]) = 0;
        BYTE4(v184[0]) = 0;
        *&v183 = 0;
        *(&v183 + 5) = 0;
        while (sub_238EA1A80(&v181) && sub_2392C9B3C(&v181))
        {
          v72 = objc_opt_new();
          v73 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v183];
          [v72 setNodeID:v73];

          v74 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD4(v183)];
          [v72 setEndpointID:v74];

          v75 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD5(v183)];
          [v72 setGroupID:v75];

          v76 = objc_opt_new();
          [v72 setStatusEntry:v76];

          v77 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE12(v183)];
          v78 = [v72 statusEntry];
          [v78 setState:v77];

          v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v184[0])];
          v80 = [v72 statusEntry];
          [v80 setUpdateTimestamp:v79];

          v81 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v184[0])];
          v82 = [v72 statusEntry];
          [v82 setFailureCode:v81];

          [v8 addObject:v72];
        }

        goto LABEL_149;
      }

      goto LABEL_166;
    case 10:
      sub_2393C5AAC(&v175);
      sub_2393C5ADC(&v175, 0, 0);
      v139 = sub_238F36BB4(&v175, a2);
      v8 = 0;
      *a3 = v139;
      a3[1] = v140;
      if (!v139)
      {
        v8 = objc_opt_new();
        sub_2392C9B8C(&v181, &v175);
        while (sub_238EA1A80(&v181) && sub_2392C9BF0(&v181))
        {
          v141 = objc_opt_new();
          v142 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v183];
          [v141 setNodeID:v142];

          v143 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD4(v183)];
          [v141 setEndpointID:v143];

          v144 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD5(v183)];
          [v141 setListID:v144];

          v145 = objc_opt_new();
          [v141 setBinding:v145];

          if (LOBYTE(v184[0]) == 1)
          {
            v147 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v184, v146)}];
            v148 = [v141 binding];
            [v148 setNode:v147];
          }

          else
          {
            v147 = [v141 binding];
            [v147 setNode:0];
          }

          if (LOBYTE(v184[2]) == 1)
          {
            v150 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(&v184[2], v149)->super.isa)}];
            v151 = [v141 binding];
            [v151 setGroup:v150];
          }

          else
          {
            v150 = [v141 binding];
            [v150 setGroup:0];
          }

          if (BYTE4(v184[2]) == 1)
          {
            v153 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(&v184[2] + 4, v152)->super.isa)}];
            v154 = [v141 binding];
            [v154 setEndpoint:v153];
          }

          else
          {
            v153 = [v141 binding];
            [v153 setEndpoint:0];
          }

          if (LOBYTE(v184[3]) == 1)
          {
            v156 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(&v184[3], v155)}];
            v157 = [v141 binding];
            [v157 setCluster:v156];
          }

          else
          {
            v156 = [v141 binding];
            [v156 setCluster:0];
          }

          v158 = objc_opt_new();
          [v141 setStatusEntry:v158];

          v159 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v185];
          v160 = [v141 statusEntry];
          [v160 setState:v159];

          v161 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD1(v185)];
          v162 = [v141 statusEntry];
          [v162 setUpdateTimestamp:v161];

          v163 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE8(v185)];
          v164 = [v141 statusEntry];
          [v164 setFailureCode:v163];

          [v8 addObject:v141];
        }

        goto LABEL_149;
      }

      goto LABEL_166;
    case 11:
      sub_2393C5AAC(&v175);
      sub_2393C5ADC(&v175, 0, 0);
      v7 = sub_238F36BB4(&v175, a2);
      v8 = 0;
      *a3 = v7;
      a3[1] = v9;
      if (!v7)
      {
        v8 = objc_opt_new();
        sub_2393C5AAC(v182);
        v181 = 0uLL;
        sub_2393C5BDC(v182, &v175);
        *&v183 = 0;
        WORD4(v183) = 0;
        BYTE12(v183) = 0;
        LODWORD(v184[0]) = 0;
        BYTE4(v184[0]) = 0;
        while (1)
        {
          v10 = sub_238EA1A80(&v181);
          LODWORD(v11) = v181;
          if (v181)
          {
            v10 = 0;
          }

          if (!v10)
          {
            break;
          }

          v183 = 0uLL;
          v184[0] = 0;
          v11 = sub_238F1BF90(&v183, v182);
          *&v181 = v11;
          *(&v181 + 1) = v12;
          if (v11)
          {
            break;
          }

          v13 = objc_opt_new();
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v183];
          [v13 setNodeID:v14];

          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD4(v183)];
          [v13 setGroupKeySetID:v15];

          v16 = objc_opt_new();
          [v13 setStatusEntry:v16];

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE12(v183)];
          v18 = [v13 statusEntry];
          [v18 setState:v17];

          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v184[0])];
          v20 = [v13 statusEntry];
          [v20 setUpdateTimestamp:v19];

          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v184[0])];
          v22 = [v13 statusEntry];
          [v22 setFailureCode:v21];

          [v8 addObject:v13];
        }

        goto LABEL_118;
      }

      goto LABEL_166;
    case 12:
      sub_2393C5AAC(v195);
      sub_2393C5ADC(v37, 0, 0);
      v38 = sub_238F36BB4(v195, a2);
      v8 = 0;
      *a3 = v38;
      a3[1] = v39;
      if (v38)
      {
        goto LABEL_166;
      }

      v8 = objc_opt_new();
      sub_2392C9C58(&v181, v195);
      while (2)
      {
        v40 = sub_238EA1A80(&v181);
        LODWORD(v11) = v181;
        if (v181)
        {
          v40 = 0;
        }

        if (v40)
        {
          v194 = 0;
          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          v185 = 0u;
          v183 = 0u;
          memset(v184, 0, sizeof(v184));
          v11 = sub_238F1C9D4(&v183, v182);
          *&v181 = v11;
          *(&v181 + 1) = v41;
          if (!v11)
          {
            v42 = objc_opt_new();
            v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v183];
            [v42 setNodeID:v43];

            v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD4(v183)];
            [v42 setListID:v44];

            v45 = objc_opt_new();
            [v42 setAclEntry:v45];

            v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v184[0])];
            v47 = [v42 aclEntry];
            [v47 setPrivilege:v46];

            v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v184[0])];
            v49 = [v42 aclEntry];
            [v49 setAuthMode:v48];

            if (v188)
            {
              v50 = objc_opt_new();
              if ((v188 & 1) == 0)
              {
                sub_238EA195C();
              }

              sub_2393C5AAC(v177);
              v175 = 0;
              v176 = 0;
              sub_2393C5BDC(v177, &v184[1]);
              while (sub_2392C70EC(&v175))
              {
                v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v178];
                [v50 addObject:v51];
              }

              if (v175 != 33)
              {
                v52 = v175;
                if (v175)
                {
                  goto LABEL_169;
                }
              }

              v53 = [v42 aclEntry];
              [v53 setSubjects:v50];
            }

            else
            {
              v50 = [v42 aclEntry];
              [v50 setSubjects:0];
            }

            if ((v193 & 1) == 0)
            {
              v50 = [v42 aclEntry];
              [v50 setTargets:0];
LABEL_73:

              v63 = objc_opt_new();
              [v42 setStatusEntry:v63];

              v64 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE8(v193)];
              v65 = [v42 statusEntry];
              [v65 setState:v64];

              v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v193)];
              v67 = [v42 statusEntry];
              [v67 setUpdateTimestamp:v66];

              v68 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v194];
              v69 = [v42 statusEntry];
              [v69 setFailureCode:v68];

              [v8 addObject:v42];
              continue;
            }

            v50 = objc_opt_new();
            if ((v193 & 1) == 0)
            {
              sub_238EA195C();
            }

            sub_2393C5AAC(v177);
            v175 = 0;
            v176 = 0;
            sub_2393C5BDC(v177, &v188 + 8);
            LOBYTE(v178) = 0;
            BYTE4(v178) = 0;
            LOBYTE(v179) = 0;
            BYTE2(v179) = 0;
            BYTE4(v179) = 0;
            LOBYTE(v180) = 0;
            while (1)
            {
              v54 = sub_238EA1A80(&v175);
              LODWORD(v55) = v175;
              if (v175)
              {
                v54 = 0;
              }

              if (!v54)
              {
                break;
              }

              v178 = 0;
              v179 = 0;
              v180 = 0;
              v55 = sub_238EFE418(&v178, v177);
              v175 = v55;
              v176 = v56;
              if (v55)
              {
                break;
              }

              v57 = objc_opt_new();
              v58 = v57;
              if ((v178 & 0x100000000) != 0)
              {
                v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v178];
                [v58 setCluster:v59];
              }

              else
              {
                [v57 setCluster:0];
              }

              if ((v179 & 0x10000) != 0)
              {
                v60 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v179];
                [v58 setEndpoint:v60];
              }

              else
              {
                [v58 setEndpoint:0];
              }

              if (v180)
              {
                v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v179)];
                [v58 setDeviceType:v61];
              }

              else
              {
                [v58 setDeviceType:0];
              }

              [v50 addObject:v58];
            }

            if (v55 == 33 || (v52 = v175, !v175))
            {
              v62 = [v42 aclEntry];
              [v62 setTargets:v50];

              goto LABEL_73;
            }

LABEL_169:
            v173 = v176;
            *a3 = v52;
            a3[1] = v173;

            goto LABEL_163;
          }
        }

        break;
      }

LABEL_118:
      if (v11 != 33)
      {
        goto LABEL_150;
      }

      goto LABEL_166;
    case 13:
      sub_2393C5AAC(&v175);
      sub_2393C5ADC(&v175, 0, 0);
      v114 = sub_238F36BB4(&v175, a2);
      v8 = 0;
      *a3 = v114;
      a3[1] = v115;
      if (v114)
      {
        goto LABEL_166;
      }

      v8 = objc_opt_new();
      sub_2393C5AAC(v182);
      v181 = 0uLL;
      sub_2393C5BDC(v182, &v175);
      LOWORD(v183) = 0;
      HIDWORD(v184[2]) = 0;
      LOBYTE(v184[3]) = 0;
      memset(v184, 0, 17);
      *(&v183 + 1) = 0;
      while (2)
      {
        if (sub_238EA1A80(&v181) && sub_2392C9CC0(&v181))
        {
          v42 = objc_opt_new();
          v116 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v183];
          [v42 setEndpointID:v116];

          v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v183 + 1)];
          [v42 setNodeID:v117];

          v118 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v184[0] length:v184[1] encoding:4];
          [v42 setFriendlyName:v118];

          v119 = [v42 friendlyName];

          if (v119)
          {
            v120 = objc_opt_new();
            [v42 setStatusEntry:v120];

            v121 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v184[2])];
            v122 = [v42 statusEntry];
            [v122 setState:v121];

            v123 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v184[2])];
            v124 = [v42 statusEntry];
            [v124 setUpdateTimestamp:v123];

            v125 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v184[3])];
            v126 = [v42 statusEntry];
            [v126 setFailureCode:v125];

            [v8 addObject:v42];
            continue;
          }

          v171 = &xmmword_278A74FB8;
LABEL_162:
          *a3 = *v171;
LABEL_163:

          goto LABEL_164;
        }

        break;
      }

LABEL_149:
      if (v181 == 33)
      {
        goto LABEL_166;
      }

LABEL_150:
      if (v181)
      {
        v165 = *(&v181 + 1);
        *a3 = v181;
        a3[1] = v165;
LABEL_164:

LABEL_165:
        v8 = 0;
      }

LABEL_166:

      return v8;
    default:
      v8 = 0;
      *a3 = 0x508E000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_166;
  }
}

id sub_2392C35B8(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x50AA000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v8 = 0;
    v5 = sub_238F00228(a2, &v8);
    *a3 = v5;
    a3[1] = v6;
    if (v5 || HIBYTE(v8) != 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
    }
  }

  return v4;
}

id sub_2392C3658(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        sub_2393C5AAC(v42);
        sub_2393C5ADC(v14, 0, 0);
        v42[72] = 0;
        v15 = sub_238F36BB4(v42, a2);
        v6 = 0;
        *a3 = v15;
        a3[1] = v16;
        if (v15)
        {
          goto LABEL_38;
        }

        v6 = objc_opt_new();
        sub_238E8477C(v38, v42);
        while (sub_238E847D0(v38))
        {
          v17 = objc_opt_new();
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v39];
          [v17 setCcdid:v18];

          if (v40[0] == 1 && (sub_238DE36B8(v40, v19)[16] & 1) != 0)
          {
            v21 = sub_238DE36B8(v40, v20);
            if ((v21[16] & 1) == 0)
            {
              sub_238EA195C();
            }

            v22 = [MEMORY[0x277CBEA90] dataWithBytes:*v21 length:*(v21 + 1)];
            [v17 setClientCertificate:v22];
          }

          else
          {
            [v17 setClientCertificate:0];
          }

          if (v41[0] == 1)
          {
            v23 = objc_opt_new();
            v25 = sub_238DE36B8(v41, v24);
            sub_2393C5AAC(v35);
            v33 = 0;
            v34 = 0;
            sub_2393C5BDC(v35, v25);
            v36 = 0;
            v37 = 0;
            while (sub_238EA1A80(&v33) && sub_238EA49F4(&v33))
            {
              v26 = [MEMORY[0x277CBEA90] dataWithBytes:v36 length:v37];
              [v23 addObject:v26];
            }

            if (v33 != 33 && v33)
            {
              v32 = v34;
              *a3 = v33;
              a3[1] = v32;

              goto LABEL_42;
            }

            [v17 setIntermediateCertificates:v23];
          }

          else
          {
            [v17 setIntermediateCertificates:0];
          }

          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v41[80]];
          [v17 setFabricIndex:v27];

          [v6 addObject:v17];
        }

LABEL_35:
        if (LODWORD(v38[0]) != 33 && LODWORD(v38[0]))
        {
          v30 = v38[1];
          *a3 = v38[0];
          a3[1] = v30;
LABEL_42:

          goto LABEL_32;
        }

        goto LABEL_38;
      }

LABEL_33:
      v6 = 0;
      *a3 = 0x5127000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_38;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_2393C5AAC(&v33);
      sub_2393C5ADC(&v33, 0, 0);
      v35[56] = 0;
      v5 = sub_238F36BB4(&v33, a2);
      v6 = 0;
      *a3 = v5;
      a3[1] = v7;
      if (v5)
      {
        goto LABEL_38;
      }

      v6 = objc_opt_new();
      sub_238E8175C(v38, &v33);
      while (sub_238E817AC(v38))
      {
        v8 = objc_opt_new();
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v39];
        [v8 setCaid:v9];

        if (v40[0] == 1)
        {
          v11 = sub_238DE36B8(v40, v10);
          v12 = [MEMORY[0x277CBEA90] dataWithBytes:*v11 length:v11[1]];
          [v8 setCertificate:v12];
        }

        else
        {
          [v8 setCertificate:0];
        }

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v40[24]];
        [v8 setFabricIndex:v13];

        [v6 addObject:v8];
      }

      goto LABEL_35;
    }

    goto LABEL_33;
  }

  LOBYTE(v38[0]) = 0;
  v28 = sub_2393C5ED0(a2, v38);
  *a3 = v28;
  a3[1] = v29;
  if (v28)
  {
LABEL_32:
    v6 = 0;
    goto LABEL_38;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v38[0])];
LABEL_38:

  return v6;
}

id sub_2392C3B08(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    sub_2393C5AAC(v30);
    sub_2393C5ADC(v30, 0, 0);
    v30[72] = 0;
    v8 = sub_238F36BB4(v30, a2);
    v7 = 0;
    *a3 = v8;
    a3[1] = v9;
    if (v8)
    {
      goto LABEL_17;
    }

    v7 = objc_opt_new();
    sub_2392C9D6C(v30, v20);
    while (sub_2392C9DC4(v20))
    {
      v10 = objc_opt_new();
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v21];
      [v10 setEndpointID:v11];

      v12 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:v23];
      [v10 setHostname:v12];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
      [v10 setPort:v13];

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v25];
      [v10 setCaid:v14];

      if (v27)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v26];
        [v10 setCcdid:v15];
      }

      else
      {
        [v10 setCcdid:0];
      }

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v28];
      [v10 setStatus:v16];

      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
      [v10 setFabricIndex:v17];

      [v7 addObject:v10];
    }

    if (LODWORD(v20[0]) == 33 || !LODWORD(v20[0]))
    {
      goto LABEL_17;
    }

    v18 = v20[1];
    *a3 = v20[0];
    a3[1] = v18;

    goto LABEL_4;
  }

  if (a1)
  {
    v7 = 0;
    *a3 = 0x5164000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v5 = sub_2393C5ED0(a2, v20);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
LABEL_4:
      v7 = 0;
      goto LABEL_17;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v20[0])];
  }

LABEL_17:

  return v7;
}

MTRDataTypePowerThresholdStruct *sub_2392C3DD0(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      LOWORD(v23) = 0;
      v18 = sub_238F0C9D0(a2, &v23);
      *a3 = v18;
      a3[1] = v19;
      if (!v18 && BYTE1(v23) == 1)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (a1 != 1)
    {
LABEL_32:
      v8 = 0;
      *a3 = 0x51DA000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_29;
    }

    LOBYTE(v23) = 0;
    v25[0] = 0;
    v11 = sub_238F0BA3C(a2, &v23);
    *a3 = v11;
    a3[1] = v12;
    if (v11 || v25[0] != 1)
    {
      goto LABEL_28;
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v23 length:v24 encoding:4];
    if (v8)
    {
      goto LABEL_29;
    }

    v13 = &xmmword_278A74FC8;
LABEL_24:
    *a3 = *v13;
    goto LABEL_29;
  }

  if (a1 == 2)
  {
    LOBYTE(v23) = 0;
    v25[0] = 0;
    v14 = sub_238F0BA3C(a2, &v23);
    *a3 = v14;
    a3[1] = v15;
    if (v14 || v25[0] != 1)
    {
      goto LABEL_28;
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v23 length:v24 encoding:4];
    if (v8)
    {
      goto LABEL_29;
    }

    v13 = &xmmword_278A74FD8;
    goto LABEL_24;
  }

  if (a1 == 3)
  {
    LOBYTE(v23) = 0;
    v25[0] = 0;
    v16 = sub_238F0BA3C(a2, &v23);
    *a3 = v16;
    a3[1] = v17;
    if (v16 || v25[0] != 1)
    {
      goto LABEL_28;
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v23 length:v24 encoding:4];
    if (v8)
    {
      goto LABEL_29;
    }

    v13 = &xmmword_278A74FE8;
    goto LABEL_24;
  }

  if (a1 != 4)
  {
    goto LABEL_32;
  }

  LOBYTE(v23) = 0;
  v26 = 0;
  v4 = sub_238F1F2A4(a2, &v23);
  *a3 = v4;
  a3[1] = v5;
  if (v4 || (v26 & 1) == 0)
  {
LABEL_28:
    v8 = 0;
    goto LABEL_29;
  }

  v6 = objc_opt_new();
  v8 = v6;
  if (v26 != 1)
  {
    goto LABEL_42;
  }

  if (v23 == 1)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_239289A18(&v23, v7)}];
    [v8 setPowerThreshold:v9];
  }

  else
  {
    [v6 setPowerThreshold:0];
  }

  if (v26 != 1)
  {
    goto LABEL_42;
  }

  if (v25[0] == 1)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_239289A18(v25, v10)}];
    [v8 setApparentPowerThreshold:v21];
  }

  else
  {
    [v8 setApparentPowerThreshold:0];
  }

  if ((v26 & 1) == 0)
  {
LABEL_42:
    sub_238EA195C();
  }

  if (v25[17])
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v25[16]];
    [v8 setPowerThresholdSource:v22];
  }

  else
  {
    [v8 setPowerThresholdSource:0];
  }

LABEL_29:

  return v8;
}

void sub_2392C410C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2392C4134(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        LOBYTE(v24[0]) = 0;
        BYTE2(v24[0]) = 0;
        v7 = sub_238EFD714(a2, v24);
        *a3 = v7;
        a3[1] = v8;
        if (!v7 && BYTE2(v24[0]) == 1)
        {
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v24[0])];
          goto LABEL_28;
        }

        goto LABEL_34;
      }

      goto LABEL_12;
    }

    LOWORD(v24[0]) = 0;
    v16 = sub_238F0A8F8(a2, v24);
    *a3 = v16;
    a3[1] = v17;
    if (!v16 && BYTE1(v24[0]) == 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v24[0])];
      goto LABEL_28;
    }

LABEL_34:
    v9 = 0;
    goto LABEL_35;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      LOBYTE(v24[0]) = 0;
      BYTE4(v24[0]) = 0;
      v4 = sub_238EFDEB0(a2, v24);
      *a3 = v4;
      a3[1] = v5;
      if (!v4 && BYTE4(v24[0]) == 1)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(v24[0])];
LABEL_28:
        v9 = v6;
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_12:
    v9 = 0;
    *a3 = 0x5243000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_35;
  }

  v26[0] = 0;
  v27 = 0;
  v10 = sub_238EFE808(a2, v26);
  *a3 = v10;
  a3[1] = v11;
  if (v10 || v27 != 1)
  {
    goto LABEL_34;
  }

  v9 = objc_opt_new();
  if ((v27 & 1) == 0)
  {
    sub_238EA195C();
  }

  sub_2392C9E40(v24, v26);
  while (sub_238EA1A80(v24) && sub_2392C9E9C(v24))
  {
    v12 = objc_opt_new();
    v13 = objc_opt_new();
    sub_2393C5AAC(v23);
    v21 = 0;
    v22 = 0;
    sub_2393C5BDC(v23, v25);
    while (sub_238E72E88(&v21))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v23[18]];
      [v13 addObject:v14];
    }

    if (v21 != 33 && v21)
    {
      v19 = v22;
      *a3 = v21;
      a3[1] = v19;

      goto LABEL_33;
    }

    [v12 setTariffComponentIDs:v13];

    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v25[9]];
    [v12 setQuantity:v15];

    [v9 addObject:v12];
  }

  if (LODWORD(v24[0]) != 33 && LODWORD(v24[0]))
  {
    v18 = v24[1];
    *a3 = v24[0];
    a3[1] = v18;
LABEL_33:

    goto LABEL_34;
  }

LABEL_35:

  return v9;
}

id sub_2392C4470(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    v12 = 0;
    v8 = sub_2393C5CE4(a2, &v12);
    *a3 = v8;
    a3[1] = v9;
    if (!v8)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v12;
      goto LABEL_9;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_10;
  }

  if (a1)
  {
    v10 = 0;
    *a3 = 0x5265000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_10;
  }

  v13 = 0;
  v4 = sub_2393C5CE4(a2, &v13);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = v13;
LABEL_9:
  v10 = [v6 numberWithBool:v7];
LABEL_10:

  return v10;
}

id sub_2392C4534(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x527C000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v8 = 0;
    v5 = sub_238EA4DB4(a2, &v8);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
    }
  }

  return v4;
}

id sub_2392C45C8(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 253)
  {
    switch(a1)
    {
      case 0:
      case 48:
      case 49:
      case 50:
        goto LABEL_16;
      case 1:
        LOBYTE(v322) = 0;
        v39 = sub_238EA4DB4(a2, &v322);
        goto LABEL_46;
      case 2:
        LOWORD(v322) = 0;
        v17 = sub_238F36E54(a2, &v322);
        goto LABEL_91;
      case 3:
        LODWORD(v322) = 0;
        v41 = sub_238F37278(a2, &v322);
        goto LABEL_100;
      case 4:
        v322 = 0;
        v5 = sub_238F38F00(a2, &v322);
        goto LABEL_4;
      case 5:
      case 21:
      case 38:
        goto LABEL_45;
      case 6:
      case 22:
      case 40:
        LOWORD(v322) = 0;
        v17 = sub_2393C5F70(a2, &v322);
LABEL_91:
        *a3 = v17;
        a3[1] = v18;
        if (!v17)
        {
          goto LABEL_264;
        }

        goto LABEL_329;
      case 7:
      case 8:
      case 33:
        goto LABEL_49;
      case 9:
      case 10:
      case 11:
      case 12:
      case 32:
        v322 = 0;
        v5 = sub_2393C5F2C(a2, &v322);
LABEL_4:
        v7 = 0;
        *a3 = v5;
        a3[1] = v6;
        if (!v5)
        {
          goto LABEL_11;
        }

        goto LABEL_330;
      case 13:
      case 39:
        LOBYTE(v322) = 0;
        v25 = sub_2393C5D48(a2, &v322);
        *a3 = v25;
        a3[1] = v26;
        if (!v25)
        {
          goto LABEL_36;
        }

        goto LABEL_329;
      case 14:
      case 41:
        LOWORD(v322) = 0;
        v27 = sub_2393C5E20(a2, &v322);
        *a3 = v27;
        a3[1] = v28;
        if (!v27)
        {
          goto LABEL_43;
        }

        goto LABEL_329;
      case 15:
      case 16:
        LODWORD(v322) = 0;
        v29 = sub_2393C5E78(a2, &v322);
        *a3 = v29;
        a3[1] = v30;
        if (!v29)
        {
          goto LABEL_40;
        }

        goto LABEL_329;
      case 17:
      case 18:
      case 19:
      case 20:
        v322 = 0;
        v13 = sub_2393C5DA0(a2, &v322);
        v7 = 0;
        *a3 = v13;
        a3[1] = v14;
        if (!v13)
        {
          goto LABEL_22;
        }

        goto LABEL_330;
      case 23:
        LODWORD(v322) = 0;
        v72 = sub_2393C6020(a2, &v322);
        *a3 = v72;
        a3[1] = v74;
        if (!v72)
        {
          goto LABEL_268;
        }

        goto LABEL_329;
      case 24:
        v322 = 0;
        v70 = sub_2393C6064(a2, &v322);
        v7 = 0;
        *a3 = v70;
        a3[1] = v71;
        if (!v70)
        {
          goto LABEL_282;
        }

        goto LABEL_330;
      case 25:
      case 29:
        v322 = 0;
        *&v323 = 0;
        v23 = sub_238EFEA98(a2, &v322);
        v7 = 0;
        *a3 = v23;
        a3[1] = v24;
        if (!v23)
        {
          goto LABEL_27;
        }

        goto LABEL_330;
      case 26:
        sub_2392C77A0(&v318);
        v67 = sub_238F36BB4(&v318, a2);
        *a3 = v67;
        a3[1] = v68;
        if (v67)
        {
          goto LABEL_329;
        }

        v7 = objc_opt_new();
        sub_2393C5AAC(&v323 + 8);
        v322 = 0;
        *&v323 = 0;
        sub_2393C5BDC(&v323 + 8, &v318);
        while (sub_238E0D91C(&v322))
        {
          v69 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v330];
          [v7 addObject:v69];
        }

        goto LABEL_231;
      case 27:
        sub_2392C77A0(&v318);
        v61 = sub_238F36BB4(&v318, a2);
        *a3 = v61;
        a3[1] = v62;
        if (v61)
        {
          goto LABEL_329;
        }

        v7 = objc_opt_new();
        sub_2392C76E0(&v318, &v322);
        while (sub_238EA1A80(&v322) && sub_238EA49F4(&v322))
        {
          v63 = [MEMORY[0x277CBEA90] dataWithBytes:v330 length:v331];
          [v7 addObject:v63];
        }

        goto LABEL_231;
      case 28:
        sub_2392C77A0(&v318);
        v49 = sub_238F36BB4(&v318, a2);
        *a3 = v49;
        a3[1] = v50;
        if (v49)
        {
          goto LABEL_329;
        }

        v7 = objc_opt_new();
        sub_2392C84F0(&v318, &v322);
        while (1)
        {
          v51 = sub_238EA1A80(&v322);
          LODWORD(v52) = v322;
          if (v322)
          {
            v51 = 0;
          }

          if (!v51)
          {
            break;
          }

          v330 = 0;
          v331 = 0;
          v332 = 0;
          v52 = sub_238F325F4(&v330, &v323 + 8);
          v322 = v52;
          *&v323 = v53;
          if (v52)
          {
            break;
          }

          v54 = objc_opt_new();
          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v330];
          [v54 setMember1:v55];

          v56 = [MEMORY[0x277CBEA90] dataWithBytes:v331 length:v332];
          [v54 setMember2:v56];

          [v7 addObject:v54];
        }

        if (v52 != 33)
        {
          goto LABEL_287;
        }

        goto LABEL_330;
      case 30:
        v322 = 0;
        *&v323 = 0;
        v88 = sub_2393C61E0(a2, &v322);
        v7 = 0;
        *a3 = v88;
        a3[1] = v89;
        if (v88)
        {
          goto LABEL_330;
        }

        v7 = sub_2392C6E08(v322, v323);
        if (v7)
        {
          goto LABEL_205;
        }

        v90 = &xmmword_278A74FF8;
        goto LABEL_292;
      case 31:
        v322 = 0;
        *&v323 = 0;
        v236 = sub_2393C61E0(a2, &v322);
        v7 = 0;
        *a3 = v236;
        a3[1] = v237;
        if (v236)
        {
          goto LABEL_330;
        }

        v7 = sub_2392C6E08(v322, v323);
        if (v7)
        {
LABEL_205:
          v238 = v7;
        }

        else
        {
          v90 = &xmmword_278A75008;
LABEL_292:
          *a3 = *v90;
        }

        goto LABEL_330;
      case 34:
        LOWORD(v322) = 0;
        v57 = sub_238F36E54(a2, &v322);
        v7 = 0;
        if (v57)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        if (v57)
        {
          v60 = v57;
        }

        else
        {
          v60 = 0;
        }

        *a3 = v60;
        a3[1] = v59;
        if (!v60)
        {
          goto LABEL_264;
        }

        goto LABEL_330;
      case 35:
        sub_2392C77A0(v317);
        v91 = sub_238F36BB4(v317, a2);
        *a3 = v91;
        a3[1] = v92;
        if (v91)
        {
          goto LABEL_329;
        }

        v7 = objc_opt_new();
        sub_2392CA028(&v322, v317);
        while (2)
        {
          if (!sub_238EA1A80(&v322) || !sub_2392CA0A8(&v322))
          {
            goto LABEL_231;
          }

          v93 = objc_opt_new();
          v94 = v93;
          if ((v330 & 0x10000) != 0)
          {
            v95 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v330];
            [v94 setNullableInt:v95];
          }

          else
          {
            [v93 setNullableInt:0];
          }

          if (BYTE4(v330) == 1)
          {
            v97 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(&v330 + 4, v96)->super.isa)}];
            [v94 setOptionalInt:v97];
          }

          else
          {
            [v94 setOptionalInt:0];
          }

          if (v331 == 1 && (BYTE2(sub_238E0A934(&v331, v98)->super.isa) & 1) != 0)
          {
            v100 = MEMORY[0x277CCABB0];
            v101 = sub_238E0A934(&v331, v99);
            if ((BYTE2(v101->super.isa) & 1) == 0)
            {
              break;
            }

            v102 = [v100 numberWithUnsignedShort:LOWORD(v101->super.isa)];
            [v94 setNullableOptionalInt:v102];
          }

          else
          {
            [v94 setNullableOptionalInt:0];
          }

          if (v334)
          {
            v103 = sub_2392C6E08(v332, v333);
            [v94 setNullableString:v103];

            v104 = [v94 nullableString];

            if (!v104)
            {
              v315 = &xmmword_278A75018;
LABEL_326:
              *a3 = *v315;
LABEL_327:

LABEL_328:
              goto LABEL_329;
            }
          }

          else
          {
            [v94 setNullableString:0];
          }

          if (LOBYTE(v337[0]) == 1)
          {
            v106 = sub_238DE36B8(v337, v105);
            v107 = sub_2392C6E08(*v106, v106[1]);
            [v94 setOptionalString:v107];

            v108 = [v94 optionalString];

            if (!v108)
            {
              v315 = &xmmword_278A75028;
              goto LABEL_326;
            }
          }

          else
          {
            [v94 setOptionalString:0];
          }

          if (v338 == 1 && (sub_238DE36B8(&v338, v109)[16] & 1) != 0)
          {
            v111 = sub_238DE36B8(&v338, v110);
            if (v111[16] != 1)
            {
              break;
            }

            v112 = sub_2392C6E08(*v111, *(v111 + 1));
            [v94 setNullableOptionalString:v112];

            v113 = [v94 nullableOptionalString];

            if (!v113)
            {
              v315 = &xmmword_278A75038;
              goto LABEL_326;
            }
          }

          else
          {
            [v94 setNullableOptionalString:0];
          }

          if (v352)
          {
            v114 = objc_opt_new();
            [v94 setNullableStruct:v114];

            if (v352 != 1)
            {
              break;
            }

            v115 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v343[0]];
            v116 = [v94 nullableStruct];
            [v116 setA:v115];

            if (v352 != 1)
            {
              break;
            }

            v117 = [MEMORY[0x277CCABB0] numberWithBool:v343[1]];
            v118 = [v94 nullableStruct];
            [v118 setB:v117];

            if (v352 != 1)
            {
              break;
            }

            v119 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v343[2]];
            v120 = [v94 nullableStruct];
            [v120 setC:v119];

            if (v352 != 1)
            {
              break;
            }

            v121 = [MEMORY[0x277CBEA90] dataWithBytes:v344 length:v345];
            v122 = [v94 nullableStruct];
            [v122 setD:v121];

            if (v352 != 1)
            {
              break;
            }

            v123 = sub_2392C6E08(v346, v347);
            v124 = [v94 nullableStruct];
            [v124 setE:v123];

            v125 = [v94 nullableStruct];
            v126 = [v125 e];

            if (!v126)
            {
              v315 = &xmmword_278A75048;
              goto LABEL_326;
            }

            if (v352 != 1)
            {
              break;
            }

            v127 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v348];
            v128 = [v94 nullableStruct];
            [v128 setF:v127];

            if (v352 != 1)
            {
              break;
            }

            LODWORD(v129) = v349;
            v130 = [MEMORY[0x277CCABB0] numberWithFloat:v129];
            v131 = [v94 nullableStruct];
            [v131 setG:v130];

            if (v352 != 1)
            {
              break;
            }

            v132 = [MEMORY[0x277CCABB0] numberWithDouble:v350];
            v133 = [v94 nullableStruct];
            [v133 setH:v132];

            if (v352 != 1)
            {
              break;
            }

            if (v351[0] == 1)
            {
              v135 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v351, v134)->super.isa)}];
              v136 = [v94 nullableStruct];
              [v136 setI:v135];
            }

            else
            {
              v135 = [v94 nullableStruct];
              [v135 setI:0];
            }
          }

          else
          {
            [v94 setNullableStruct:0];
          }

          if (v353[0] == 1)
          {
            v137 = objc_opt_new();
            [v94 setOptionalStruct:v137];

            v139 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_238DE36B8(v353, v138)}];
            v140 = [v94 optionalStruct];
            [v140 setA:v139];

            v142 = [MEMORY[0x277CCABB0] numberWithBool:{sub_238DE36B8(v353, v141)[1]}];
            v143 = [v94 optionalStruct];
            [v143 setB:v142];

            v145 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(v353, v144)[2]}];
            v146 = [v94 optionalStruct];
            [v146 setC:v145];

            v148 = sub_238DE36B8(v353, v147);
            v149 = [MEMORY[0x277CBEA90] dataWithBytes:*(v148 + 1) length:*(v148 + 2)];
            v150 = [v94 optionalStruct];
            [v150 setD:v149];

            v152 = sub_238DE36B8(v353, v151);
            v153 = sub_2392C6E08(*(v152 + 3), *(v152 + 4));
            v154 = [v94 optionalStruct];
            [v154 setE:v153];

            v155 = [v94 optionalStruct];
            v156 = [v155 e];

            if (!v156)
            {
              v315 = &xmmword_278A75058;
              goto LABEL_326;
            }

            v158 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{sub_238DE36B8(v353, v157)[40]}];
            v159 = [v94 optionalStruct];
            [v159 setF:v158];

            v160 = MEMORY[0x277CCABB0];
            LODWORD(v162) = *(sub_238DE36B8(v353, v161) + 11);
            v163 = [v160 numberWithFloat:v162];
            v164 = [v94 optionalStruct];
            [v164 setG:v163];

            v166 = [MEMORY[0x277CCABB0] numberWithDouble:{*(sub_238DE36B8(v353, v165) + 6)}];
            v167 = [v94 optionalStruct];
            [v167 setH:v166];

            if (sub_238DE36B8(v353, v168)[56] == 1)
            {
              v170 = MEMORY[0x277CCABB0];
              v171 = sub_238DE36B8(v353, v169);
              v173 = [v170 numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v171 + 56, v172)->super.isa)}];
              v174 = [v94 optionalStruct];
              [v174 setI:v173];
            }

            else
            {
              v173 = [v94 optionalStruct];
              [v173 setI:0];
            }
          }

          else
          {
            [v94 setOptionalStruct:0];
          }

          if (v354[0] != 1 || (sub_238DE36B8(v354, v175)[64] & 1) == 0)
          {
            [v94 setNullableOptionalStruct:0];
            goto LABEL_175;
          }

          v176 = objc_opt_new();
          [v94 setNullableOptionalStruct:v176];

          v177 = MEMORY[0x277CCABB0];
          v179 = sub_238DE36B8(v354, v178);
          if (v179[64] == 1)
          {
            v180 = [v177 numberWithUnsignedChar:*v179];
            v181 = [v94 nullableOptionalStruct];
            [v181 setA:v180];

            v182 = MEMORY[0x277CCABB0];
            v184 = sub_238DE36B8(v354, v183);
            if (v184[64] == 1)
            {
              v185 = [v182 numberWithBool:v184[1]];
              v186 = [v94 nullableOptionalStruct];
              [v186 setB:v185];

              v187 = MEMORY[0x277CCABB0];
              v189 = sub_238DE36B8(v354, v188);
              if (v189[64] == 1)
              {
                v190 = [v187 numberWithUnsignedChar:v189[2]];
                v191 = [v94 nullableOptionalStruct];
                [v191 setC:v190];

                v193 = sub_238DE36B8(v354, v192);
                if (v193[64] == 1)
                {
                  v194 = [MEMORY[0x277CBEA90] dataWithBytes:*(v193 + 1) length:*(v193 + 2)];
                  v195 = [v94 nullableOptionalStruct];
                  [v195 setD:v194];

                  v197 = sub_238DE36B8(v354, v196);
                  if (v197[64] == 1)
                  {
                    v198 = sub_2392C6E08(*(v197 + 3), *(v197 + 4));
                    v199 = [v94 nullableOptionalStruct];
                    [v199 setE:v198];

                    v200 = [v94 nullableOptionalStruct];
                    v201 = [v200 e];

                    if (!v201)
                    {
                      v315 = &xmmword_278A75068;
                      goto LABEL_326;
                    }

                    v203 = MEMORY[0x277CCABB0];
                    v204 = sub_238DE36B8(v354, v202);
                    if (v204[64] == 1)
                    {
                      v205 = [v203 numberWithUnsignedChar:v204[40]];
                      v206 = [v94 nullableOptionalStruct];
                      [v206 setF:v205];

                      v207 = MEMORY[0x277CCABB0];
                      v209 = sub_238DE36B8(v354, v208);
                      if (v209[64] == 1)
                      {
                        LODWORD(v210) = *(v209 + 11);
                        v211 = [v207 numberWithFloat:v210];
                        v212 = [v94 nullableOptionalStruct];
                        [v212 setG:v211];

                        v213 = MEMORY[0x277CCABB0];
                        v215 = sub_238DE36B8(v354, v214);
                        if (*(v215 + 64) == 1)
                        {
                          v216 = [v213 numberWithDouble:v215[6]];
                          v217 = [v94 nullableOptionalStruct];
                          [v217 setH:v216];

                          v219 = sub_238DE36B8(v354, v218);
                          if (v219[64] == 1)
                          {
                            if (v219[56] != 1)
                            {
                              v224 = [v94 nullableOptionalStruct];
                              [v224 setI:0];
                              goto LABEL_174;
                            }

                            v221 = MEMORY[0x277CCABB0];
                            v222 = sub_238DE36B8(v354, v220);
                            if (v222[64] == 1)
                            {
                              v224 = [v221 numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v222 + 56, v223)->super.isa)}];
                              v225 = [v94 nullableOptionalStruct];
                              [v225 setI:v224];

LABEL_174:
LABEL_175:
                              if (v356)
                              {
                                v226 = objc_opt_new();
                                if ((v356 & 1) == 0)
                                {
                                  sub_238EA195C();
                                }

                                sub_2393C5AAC(v320);
                                v318 = 0;
                                v319 = 0;
                                sub_2393C5BDC(v320, &v355);
                                while (sub_238E8A35C(&v318))
                                {
                                  v227 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v321];
                                  [v226 addObject:v227];
                                }

                                if (v318 != 33)
                                {
                                  v228 = v318;
                                  if (v318)
                                  {
                                    goto LABEL_308;
                                  }
                                }

                                [v94 setNullableList:v226];
                              }

                              else
                              {
                                [v94 setNullableList:0];
                              }

                              if (v357[0] == 1)
                              {
                                v226 = objc_opt_new();
                                v230 = sub_238DE36B8(v357, v229);
                                sub_2393C5AAC(v320);
                                v318 = 0;
                                v319 = 0;
                                sub_2393C5BDC(v320, v230);
                                while (sub_238E8A35C(&v318))
                                {
                                  v231 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v321];
                                  [v226 addObject:v231];
                                }

                                if (v318 != 33)
                                {
                                  v228 = v318;
                                  if (v318)
                                  {
                                    goto LABEL_308;
                                  }
                                }

                                [v94 setOptionalList:v226];
                              }

                              else
                              {
                                [v94 setOptionalList:0];
                              }

                              if (v358[0] != 1 || (sub_238DE36B8(v358, v232)[72] & 1) == 0)
                              {
                                [v94 setNullableOptionalList:0];
LABEL_202:
                                [v7 addObject:v94];

                                continue;
                              }

                              v226 = objc_opt_new();
                              v234 = sub_238DE36B8(v358, v233);
                              if ((v234[72] & 1) == 0)
                              {
                                sub_238EA195C();
                              }

                              sub_2393C5AAC(v320);
                              v318 = 0;
                              v319 = 0;
                              sub_2393C5BDC(v320, v234);
                              while (sub_238E8A35C(&v318))
                              {
                                v235 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v321];
                                [v226 addObject:v235];
                              }

                              if (v318 == 33 || (v228 = v318, !v318))
                              {
                                [v94 setNullableOptionalList:v226];

                                goto LABEL_202;
                              }

LABEL_308:
                              v311 = v319;
                              *a3 = v228;
                              a3[1] = v311;

                              goto LABEL_327;
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

          break;
        }

        sub_238EA195C();
      case 36:
        LOBYTE(v322) = 0;
        v39 = sub_238EA4D5C(a2, &v322);
        goto LABEL_46;
      case 37:
        LOWORD(v322) = 0;
        BYTE2(v322) = 0;
        v326 = 0;
        v327 = 0.0;
        v328[0] = 0;
        v323 = 0u;
        v324 = 0u;
        v325 = 0;
        v75 = sub_238F31D84(&v322, a2);
        v7 = 0;
        *a3 = v75;
        a3[1] = v76;
        if (v75)
        {
          goto LABEL_330;
        }

        v45 = objc_opt_new();
        v77 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v322];
        [v45 setA:v77];

        v78 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v322)];
        [v45 setB:v78];

        v79 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v322)];
        [v45 setC:v79];

        v80 = [MEMORY[0x277CBEA90] dataWithBytes:v323 length:?];
        [v45 setD:v80];

        v81 = sub_2392C6E08(v324, *(&v324 + 1));
        [v45 setE:v81];

        v7 = [v45 e];

        if (!v7)
        {
          v307 = &xmmword_278A75078;
          goto LABEL_311;
        }

        v82 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v325];
        [v45 setF:v82];

        LODWORD(v83) = v326;
        v84 = [MEMORY[0x277CCABB0] numberWithFloat:v83];
        [v45 setG:v84];

        v85 = [MEMORY[0x277CCABB0] numberWithDouble:v327];
        [v45 setH:v85];

        if (v328[0] == 1)
        {
          v87 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_2392C86E0(v328, v86)}];
          [v45 setI:v87];
          goto LABEL_301;
        }

        [v45 setI:0];
        goto LABEL_304;
      case 42:
        sub_2392C77A0(&v318);
        v64 = sub_238F36BB4(&v318, a2);
        *a3 = v64;
        a3[1] = v65;
        if (v64)
        {
          goto LABEL_329;
        }

        v7 = objc_opt_new();
        sub_2392C76E0(&v318, &v322);
        while (sub_238EA1A80(&v322) && sub_238EA49F4(&v322))
        {
          v66 = [MEMORY[0x277CBEA90] dataWithBytes:v330 length:v331];
          [v7 addObject:v66];
        }

        goto LABEL_231;
      case 43:
        sub_2392CA338(v317);
        v239 = sub_238F36BB4(v317, a2);
        *a3 = v239;
        a3[1] = v240;
        if (v239)
        {
          goto LABEL_329;
        }

        v7 = objc_opt_new();
        sub_2392C9F3C(v317, &v322);
        while (2)
        {
          if (!sub_2392C9FD4(&v322))
          {
LABEL_231:
            if (v322 == 33)
            {
              goto LABEL_330;
            }

LABEL_287:
            if (v322)
            {
              v305 = v323;
              *a3 = v322;
              a3[1] = v305;
              goto LABEL_328;
            }

            goto LABEL_330;
          }

          v94 = objc_opt_new();
          v241 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v331];
          [v94 setFabricSensitiveInt8u:v241];

          if (BYTE1(v331) == 1)
          {
            v243 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(&v331 + 1, v242)->super.isa)}];
            [v94 setOptionalFabricSensitiveInt8u:v243];
          }

          else
          {
            [v94 setOptionalFabricSensitiveInt8u:0];
          }

          if ((v331 & 0x100000000) != 0)
          {
            v244 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE3(v331)];
            [v94 setNullableFabricSensitiveInt8u:v244];
          }

          else
          {
            [v94 setNullableFabricSensitiveInt8u:0];
          }

          if (BYTE5(v331) == 1 && (BYTE1(sub_238DE36D8(&v331 + 5, v245)->super.isa) & 1) != 0)
          {
            v247 = MEMORY[0x277CCABB0];
            v248 = sub_238DE36D8(&v331 + 5, v246);
            if ((v248[1] & 1) == 0)
            {
              sub_238EA195C();
            }

            v249 = [v247 numberWithUnsignedChar:*v248];
            [v94 setNullableOptionalFabricSensitiveInt8u:v249];
          }

          else
          {
            [v94 setNullableOptionalFabricSensitiveInt8u:0];
          }

          v250 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v332 length:v333 encoding:4];
          [v94 setFabricSensitiveCharString:v250];

          v251 = [v94 fabricSensitiveCharString];

          if (!v251)
          {
            v315 = &xmmword_278A75088;
            goto LABEL_326;
          }

          v252 = objc_opt_new();
          [v94 setFabricSensitiveStruct:v252];

          v253 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v334];
          v254 = [v94 fabricSensitiveStruct];
          [v254 setA:v253];

          v255 = [MEMORY[0x277CCABB0] numberWithBool:v335];
          v256 = [v94 fabricSensitiveStruct];
          [v256 setB:v255];

          v257 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v336];
          v258 = [v94 fabricSensitiveStruct];
          [v258 setC:v257];

          v259 = [MEMORY[0x277CBEA90] dataWithBytes:v337[0] length:v337[1]];
          v260 = [v94 fabricSensitiveStruct];
          [v260 setD:v259];

          v261 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v337[2] length:v338 encoding:4];
          v262 = [v94 fabricSensitiveStruct];
          [v262 setE:v261];

          v263 = [v94 fabricSensitiveStruct];
          v264 = [v263 e];

          if (!v264)
          {
            v315 = &xmmword_278A75098;
            goto LABEL_326;
          }

          v265 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v339];
          v266 = [v94 fabricSensitiveStruct];
          [v266 setF:v265];

          LODWORD(v267) = v340;
          v268 = [MEMORY[0x277CCABB0] numberWithFloat:v267];
          v269 = [v94 fabricSensitiveStruct];
          [v269 setG:v268];

          v270 = [MEMORY[0x277CCABB0] numberWithDouble:v341];
          v271 = [v94 fabricSensitiveStruct];
          [v271 setH:v270];

          if (v342[0] == 1)
          {
            v273 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v342, v272)->super.isa)}];
            v274 = [v94 fabricSensitiveStruct];
            [v274 setI:v273];
          }

          else
          {
            v273 = [v94 fabricSensitiveStruct];
            [v273 setI:0];
          }

          v226 = objc_opt_new();
          sub_2393C5AAC(v320);
          v318 = 0;
          v319 = 0;
          sub_2393C5BDC(v320, v343);
          while (sub_238E0D91C(&v318))
          {
            v275 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v321];
            [v226 addObject:v275];
          }

          if (v318 == 33 || (v228 = v318, !v318))
          {
            [v94 setFabricSensitiveInt8uList:v226];

            v276 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v353[0]];
            [v94 setFabricIndex:v276];

            [v7 addObject:v94];
            continue;
          }

          goto LABEL_308;
        }

      case 44:
      case 45:
      case 46:
      case 47:
        goto LABEL_50;
      case 51:
        LOBYTE(v322) = 0;
        v39 = sub_238EFD7D0(a2, &v322);
        goto LABEL_46;
      case 52:
        BYTE12(v323) = 0;
        LOBYTE(v324) = 0;
        v322 = 0;
        *&v323 = 0;
        BYTE8(v323) = 0;
        v43 = sub_238F36378(&v322, a2);
        v7 = 0;
        *a3 = v43;
        a3[1] = v44;
        if (v43)
        {
          goto LABEL_330;
        }

        v45 = objc_opt_new();
        v46 = sub_2392C6E08(v322, v323);
        [v45 setName:v46];

        v7 = [v45 name];

        if (!v7)
        {
          v307 = &xmmword_278A750A8;
          goto LABEL_311;
        }

        if (BYTE12(v323))
        {
          v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v323)];
          [v45 setMyBitmap:v47];
        }

        else
        {
          [v45 setMyBitmap:0];
        }

        if (v324 == 1 && sub_2392C86E0(&v324, v48)[1] == 1)
        {
          v309 = MEMORY[0x277CCABB0];
          v310 = sub_2392C86E0(&v324, v308);
          if ((v310[1] & 1) == 0)
          {
            sub_238EA195C();
          }

          v87 = [v309 numberWithUnsignedChar:*v310];
          [v45 setMyEnum:v87];
LABEL_301:
        }

        else
        {
          [v45 setMyEnum:0];
        }

LABEL_304:
        v306 = v45;
        goto LABEL_305;
      default:
        if (a1 == -897279)
        {
          goto LABEL_45;
        }

        goto LABEL_50;
    }
  }

  if (a1 > 12288)
  {
    switch(a1)
    {
      case 16384:
        LOWORD(v322) = 0;
        v290 = sub_238F076A4(a2, &v322);
        *a3 = v290;
        a3[1] = v291;
        if (v290 || BYTE1(v322) != 1)
        {
          goto LABEL_329;
        }

        goto LABEL_17;
      case 16385:
        LOWORD(v322) = 0;
        v19 = sub_238F2F824(a2, &v322);
        goto LABEL_237;
      case 16386:
        LOBYTE(v322) = 0;
        BYTE2(v322) = 0;
        v21 = sub_238F2988C(a2, &v322);
        goto LABEL_262;
      case 16387:
        LOBYTE(v322) = 0;
        BYTE4(v322) = 0;
        v33 = sub_238F2F8B4(a2, &v322);
        goto LABEL_241;
      case 16388:
        LOBYTE(v322) = 0;
        LOBYTE(v323) = 0;
        v8 = sub_238F2F948(a2, &v322);
        goto LABEL_9;
      case 16389:
      case 16405:
      case 16422:
        LOWORD(v322) = 0;
        v19 = sub_238F00228(a2, &v322);
        goto LABEL_237;
      case 16390:
      case 16406:
      case 16424:
        LOBYTE(v322) = 0;
        BYTE2(v322) = 0;
        v21 = sub_238EFD714(a2, &v322);
LABEL_262:
        *a3 = v21;
        a3[1] = v22;
        if (v21 || BYTE2(v322) != 1)
        {
          goto LABEL_329;
        }

LABEL_264:
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v322];
        goto LABEL_265;
      case 16391:
      case 16392:
        LOBYTE(v322) = 0;
        BYTE4(v322) = 0;
        v33 = sub_238EFDEB0(a2, &v322);
LABEL_241:
        *a3 = v33;
        a3[1] = v34;
        if (!v33 && BYTE4(v322) == 1)
        {
          goto LABEL_243;
        }

        goto LABEL_329;
      case 16393:
      case 16394:
      case 16395:
      case 16396:
        LOBYTE(v322) = 0;
        LOBYTE(v323) = 0;
        v8 = sub_238EFD658(a2, &v322);
LABEL_9:
        *a3 = v8;
        a3[1] = v9;
        if (v8 || v323 != 1)
        {
          goto LABEL_329;
        }

LABEL_11:
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v322];
        goto LABEL_265;
      case 16397:
      case 16423:
        LOWORD(v322) = 0;
        v31 = sub_238F2C628(a2, &v322);
        *a3 = v31;
        a3[1] = v32;
        if (v31 || BYTE1(v322) != 1)
        {
          goto LABEL_329;
        }

LABEL_36:
        v10 = [MEMORY[0x277CCABB0] numberWithChar:v322];
        goto LABEL_265;
      case 16398:
      case 16425:
        LOBYTE(v322) = 0;
        BYTE2(v322) = 0;
        v37 = sub_238F0B738(a2, &v322);
        *a3 = v37;
        a3[1] = v38;
        if (v37 || BYTE2(v322) != 1)
        {
          goto LABEL_329;
        }

LABEL_43:
        v10 = [MEMORY[0x277CCABB0] numberWithShort:v322];
        goto LABEL_265;
      case 16399:
      case 16400:
        LOBYTE(v322) = 0;
        BYTE4(v322) = 0;
        v35 = sub_238F1FD58(a2, &v322);
        *a3 = v35;
        a3[1] = v36;
        if (v35 || BYTE4(v322) != 1)
        {
          goto LABEL_329;
        }

LABEL_40:
        v10 = [MEMORY[0x277CCABB0] numberWithInt:v322];
        goto LABEL_265;
      case 16401:
      case 16402:
      case 16403:
      case 16404:
        LOBYTE(v322) = 0;
        LOBYTE(v323) = 0;
        v15 = sub_238F0C244(a2, &v322);
        *a3 = v15;
        a3[1] = v16;
        if (v15 || v323 != 1)
        {
          goto LABEL_329;
        }

LABEL_22:
        v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v322];
        goto LABEL_265;
      case 16407:
        LOBYTE(v322) = 0;
        BYTE4(v322) = 0;
        v292 = sub_238F05664(a2, &v322);
        *a3 = v292;
        a3[1] = v293;
        if (v292 || BYTE4(v322) != 1)
        {
          goto LABEL_329;
        }

LABEL_268:
        LODWORD(v73) = v322;
        v10 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
        goto LABEL_265;
      case 16408:
        LOBYTE(v322) = 0;
        LOBYTE(v323) = 0;
        v301 = sub_238F2F9DC(a2, &v322);
        *a3 = v301;
        a3[1] = v302;
        if (v301 || v323 != 1)
        {
          goto LABEL_329;
        }

LABEL_282:
        v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&v322];
        goto LABEL_265;
      case 16409:
        LOBYTE(v322) = 0;
        BYTE8(v323) = 0;
        v303 = sub_238F10D4C(a2, &v322);
        *a3 = v303;
        a3[1] = v304;
        if (v303 || BYTE8(v323) != 1)
        {
          goto LABEL_329;
        }

LABEL_27:
        v10 = [MEMORY[0x277CBEA90] dataWithBytes:v322 length:v323];
        goto LABEL_265;
      case 16410:
      case 16411:
      case 16412:
      case 16413:
      case 16415:
      case 16416:
      case 16417:
      case 16418:
      case 16419:
      case 16427:
      case 16428:
      case 16429:
      case 16430:
      case 16431:
      case 16432:
      case 16433:
      case 16434:
        goto LABEL_50;
      case 16414:
        LOBYTE(v322) = 0;
        BYTE8(v323) = 0;
        v294 = sub_238F0BA3C(a2, &v322);
        *a3 = v294;
        a3[1] = v295;
        if (v294 || BYTE8(v323) != 1)
        {
          goto LABEL_329;
        }

        v7 = sub_2392C6E08(v322, v323);
        if (!v7)
        {
          *a3 = xmmword_278A750B8;
        }

        goto LABEL_330;
      case 16420:
        LOWORD(v322) = 0;
        v19 = sub_238F10BDC(a2, &v322);
        goto LABEL_237;
      case 16421:
        LOBYTE(v322) = 0;
        v329 = 0;
        v277 = sub_238F2FA70(a2, &v322);
        *a3 = v277;
        a3[1] = v278;
        if (v277)
        {
          goto LABEL_329;
        }

        if ((v329 & 1) == 0)
        {
          goto LABEL_289;
        }

        v45 = objc_opt_new();
        if (v329 != 1)
        {
          goto LABEL_334;
        }

        v279 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v322];
        [v45 setA:v279];

        if (v329 != 1)
        {
          goto LABEL_334;
        }

        v280 = [MEMORY[0x277CCABB0] numberWithBool:BYTE1(v322)];
        [v45 setB:v280];

        if (v329 != 1)
        {
          goto LABEL_334;
        }

        v281 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v322)];
        [v45 setC:v281];

        if (v329 != 1)
        {
          goto LABEL_334;
        }

        v282 = [MEMORY[0x277CBEA90] dataWithBytes:v323 length:?];
        [v45 setD:v282];

        if (v329 != 1)
        {
          goto LABEL_334;
        }

        v283 = sub_2392C6E08(v324, *(&v324 + 1));
        [v45 setE:v283];

        v7 = [v45 e];

        if (!v7)
        {
          v307 = &xmmword_278A750C8;
          goto LABEL_311;
        }

        if (v329 != 1 || ([MEMORY[0x277CCABB0] numberWithUnsignedChar:v325], v284 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "setF:", v284), v284, v329 != 1) || (LODWORD(v285) = v326, objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v285), v286 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "setG:", v286), v286, v329 != 1) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v327), v287 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "setH:", v287), v287, (v329 & 1) == 0))
        {
LABEL_334:
          sub_238EA195C();
        }

        if (v328[0] == 1)
        {
          v289 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_2392C86E0(v328, v288)}];
          [v45 setI:v289];
          goto LABEL_320;
        }

        [v45 setI:0];
        goto LABEL_290;
      case 16426:
        goto LABEL_45;
      case 16435:
        LOWORD(v322) = 0;
        v19 = sub_238F0C9D0(a2, &v322);
LABEL_237:
        *a3 = v19;
        a3[1] = v20;
        if (!v19 && BYTE1(v322) == 1)
        {
          goto LABEL_239;
        }

        goto LABEL_329;
      case 16436:
        LOBYTE(v322) = 0;
        BYTE8(v324) = 0;
        v296 = sub_238F2FB0C(a2, &v322);
        *a3 = v296;
        a3[1] = v297;
        if (v296)
        {
          goto LABEL_329;
        }

        if (BYTE8(v324))
        {
          v45 = objc_opt_new();
          if (BYTE8(v324) != 1)
          {
            goto LABEL_338;
          }

          v298 = sub_2392C6E08(v322, v323);
          [v45 setName:v298];

          v7 = [v45 name];

          if (!v7)
          {
            v307 = &xmmword_278A750D8;
LABEL_311:
            *a3 = *v307;
            goto LABEL_312;
          }

          if (BYTE8(v324) != 1)
          {
            goto LABEL_338;
          }

          if (BYTE12(v323))
          {
            v299 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v323)];
            [v45 setMyBitmap:v299];
          }

          else
          {
            [v45 setMyBitmap:0];
          }

          if (BYTE8(v324) != 1)
          {
            goto LABEL_338;
          }

          if (v324 == 1 && sub_2392C86E0(&v324, v300)[1] == 1)
          {
            if (BYTE8(v324) == 1)
            {
              v313 = MEMORY[0x277CCABB0];
              v314 = sub_2392C86E0(&v324, v312);
              if (v314[1])
              {
                v289 = [v313 numberWithUnsignedChar:*v314];
                [v45 setMyEnum:v289];
LABEL_320:

                goto LABEL_290;
              }
            }

LABEL_338:
            sub_238EA195C();
          }

          [v45 setMyEnum:0];
        }

        else
        {
LABEL_289:
          v45 = 0;
        }

LABEL_290:
        v306 = v45;
        v45 = v306;
LABEL_305:
        v7 = v306;
LABEL_312:

        goto LABEL_330;
      default:
        if (a1 != 12289)
        {
          goto LABEL_50;
        }

LABEL_49:
        LODWORD(v322) = 0;
        v41 = sub_2393C5FC8(a2, &v322);
LABEL_100:
        *a3 = v41;
        a3[1] = v42;
        if (v41)
        {
          goto LABEL_329;
        }

LABEL_243:
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v322];
        goto LABEL_265;
    }
  }

  if (a1 != 254 && a1 != 255)
  {
    if (a1 != 12288)
    {
LABEL_50:
      v7 = 0;
      *a3 = 0x58A6000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_330;
    }

LABEL_45:
    LOBYTE(v322) = 0;
    v39 = sub_2393C5ED0(a2, &v322);
LABEL_46:
    *a3 = v39;
    a3[1] = v40;
    if (v39)
    {
      goto LABEL_329;
    }

LABEL_239:
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v322];
LABEL_265:
    v7 = v10;
    goto LABEL_330;
  }

LABEL_16:
  LOBYTE(v322) = 0;
  v11 = sub_2393C5CE4(a2, &v322);
  *a3 = v11;
  a3[1] = v12;
  if (!v11)
  {
LABEL_17:
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v322];
    goto LABEL_265;
  }

LABEL_329:
  v7 = 0;
LABEL_330:

  return v7;
}