id sub_2392A9444(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v29[0]) = 0;
    v19 = sub_2393C5ED0(a2, v29);
    *a3 = v19;
    a3[1] = v20;
    if (v19)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v29[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x1902000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v32);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v32, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v29, v32);
      while (sub_238EA1A80(v29) && sub_2392C7F5C(v29))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v29[11] length:v29[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A749D8;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v30];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v26);
        v24 = 0;
        v25 = 0;
        sub_2393C5BDC(v26, &v31);
        v27[0] = 0;
        v28 = 0;
        while (sub_238EA1A80(&v24) && sub_2392C8000(&v24))
        {
          v14 = objc_opt_new();
          v16 = v14;
          if (v27[0] == 1)
          {
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v27, v15)->super.isa)}];
            [v16 setMfgCode:v17];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v28];
          [v16 setValue:v18];

          [v13 addObject:v16];
        }

        if (v24 != 33 && v24)
        {
          v22 = v25;
          *a3 = v24;
          a3[1] = v22;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v29[0]) != 33 && LODWORD(v29[0]))
      {
        v21 = v29[1];
        *a3 = v29[0];
        a3[1] = v21;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392A97CC(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x191A000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v8 = 0;
    v5 = sub_238EFFAE8(a2, &v8);
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

id sub_2392A9860(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
      LOBYTE(v12) = 0;
      v4 = sub_238F1439C(a2, &v12);
      goto LABEL_3;
    case 1:
    case 2:
    case 3:
    case 8:
    case 9:
    case 11:
      LOBYTE(v12) = 0;
      v4 = sub_238EFD7D0(a2, &v12);
      goto LABEL_3;
    case 4:
    case 7:
      LOBYTE(v12) = 0;
      v4 = sub_238EFF894(a2, &v12);
      goto LABEL_3;
    case 5:
    case 6:
      LOBYTE(v12) = 0;
      v7 = sub_2393C5CE4(a2, &v12);
      *a3 = v7;
      a3[1] = v8;
      if (v7)
      {
        goto LABEL_4;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithBool:v12];
      break;
    case 10:
      LOBYTE(v12) = 0;
      v4 = sub_238EA4D5C(a2, &v12);
LABEL_3:
      *a3 = v4;
      a3[1] = v5;
      if (v4)
      {
        goto LABEL_4;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
      break;
    case 12:
      v12 = 0;
      v9 = sub_2393C5FC8(a2, &v12);
      *a3 = v9;
      a3[1] = v10;
      if (v9)
      {
LABEL_4:
        v6 = 0;
      }

      else
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      }

      break;
    default:
      v6 = 0;
      *a3 = 0x19B6000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v6;
}

id sub_2392A99E0(unsigned int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 1)
  {
    if (a1 != 2 && a1 != 3)
    {
      goto LABEL_9;
    }
  }

  else if (a1 >= 2)
  {
LABEL_9:
    v6 = 0;
    *a3 = 0x19EF000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_10;
  }

  v8 = 0;
  v4 = sub_238F37278(a2, &v8);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  }

LABEL_10:

  return v6;
}

id sub_2392A9A98(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v29[0]) = 0;
    v19 = sub_2393C5ED0(a2, v29);
    *a3 = v19;
    a3[1] = v20;
    if (v19)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v29[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x1A3E000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v32);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v32, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v29, v32);
      while (sub_238EA1A80(v29) && sub_2392C7F5C(v29))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v29[11] length:v29[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A749E8;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v30];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v26);
        v24 = 0;
        v25 = 0;
        sub_2393C5BDC(v26, &v31);
        v27[0] = 0;
        v28 = 0;
        while (sub_238EA1A80(&v24) && sub_2392C8000(&v24))
        {
          v14 = objc_opt_new();
          v16 = v14;
          if (v27[0] == 1)
          {
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v27, v15)->super.isa)}];
            [v16 setMfgCode:v17];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v28];
          [v16 setValue:v18];

          [v13 addObject:v16];
        }

        if (v24 != 33 && v24)
        {
          v22 = v25;
          *a3 = v24;
          a3[1] = v22;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v29[0]) != 33 && LODWORD(v29[0]))
      {
        v21 = v29[1];
        *a3 = v29[0];
        a3[1] = v21;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392A9E20(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1 <= 1)
      {
        LODWORD(v18) = 0;
        v8 = sub_2393C5FC8(a2, &v18);
        *a3 = v8;
        a3[1] = v9;
        if (!v8)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
          goto LABEL_15;
        }

LABEL_13:
        v12 = 0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_12:
    LOBYTE(v18) = 0;
    v10 = sub_2393C5ED0(a2, &v18);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v18];
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a1 <= 5)
  {
    goto LABEL_12;
  }

  if (a1 != 6)
  {
    if (a1 != 7)
    {
      if (a1 == 8)
      {
        LOWORD(v18) = 0;
        v5 = sub_2393C5F70(a2, &v18);
        *a3 = v5;
        a3[1] = v6;
        if (!v5)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v18];
LABEL_15:
          v12 = v7;
          goto LABEL_21;
        }

        goto LABEL_13;
      }

LABEL_20:
      v12 = 0;
      *a3 = 0x1ABD000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  sub_2393C5AAC(v21);
  sub_2393C5ADC(v21, 0, 0);
  v13 = sub_238F36BB4(v21, a2);
  v12 = 0;
  *a3 = v13;
  a3[1] = v14;
  if (!v13)
  {
    v12 = objc_opt_new();
    sub_2393C5AAC(v20);
    v18 = 0;
    v19 = 0;
    sub_2393C5BDC(v20, v21);
    while (sub_238DD5C4C(&v18))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v20[36]];
      [v12 addObject:v15];
    }

    if (v18 != 33 && v18)
    {
      v17 = v19;
      *a3 = v18;
      a3[1] = v17;

      goto LABEL_13;
    }
  }

LABEL_21:

  return v12;
}

MTROperationalStateClusterErrorStateStruct *sub_2392AA068(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      sub_2393C5AAC(v43);
      sub_2393C5ADC(v43, 0, 0);
      v21 = sub_238F36BB4(v43, a2);
      v15 = 0;
      *a3 = v21;
      a3[1] = v22;
      if (v21)
      {
        goto LABEL_52;
      }

      v15 = objc_opt_new();
      sub_2393C5AAC(v39);
      v37 = 0;
      v38 = 0;
      sub_2393C5BDC(v39, v43);
      LOBYTE(v41) = 0;
      LOBYTE(v42[0]) = 0;
      while (sub_238EA1A80(&v37) && sub_2392C7EAC(&v37))
      {
        v23 = objc_opt_new();
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v41];
        [v23 setOperationalStateID:v24];

        if (LOBYTE(v42[0]) == 1)
        {
          v26 = sub_238DE36B8(v42, v25);
          v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v26 length:v26[1] encoding:4];
          [v23 setOperationalStateLabel:v27];

          v28 = [v23 operationalStateLabel];

          if (!v28)
          {
            *a3 = xmmword_278A74A08;

            goto LABEL_50;
          }
        }

        else
        {
          [v23 setOperationalStateLabel:0];
        }

        [v15 addObject:v23];
      }

      goto LABEL_38;
    }

    if (a1 == 4)
    {
      LOBYTE(v37) = 0;
      v31 = sub_238EA4D5C(a2, &v37);
      *a3 = v31;
      a3[1] = v32;
      if (v31)
      {
        goto LABEL_51;
      }

      goto LABEL_36;
    }

    if (a1 != 5)
    {
      goto LABEL_31;
    }

    LOBYTE(v37) = 0;
    LOBYTE(v38) = 0;
    v40[0] = 0;
    v8 = sub_238F357FC(&v37, a2);
    *a3 = v8;
    a3[1] = v9;
    if (v8)
    {
      goto LABEL_51;
    }

    v10 = objc_opt_new();
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v37];
    [v10 setErrorStateID:v11];

    if (v38 == 1)
    {
      v13 = sub_239289A18(&v38, v12);
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v13 length:v13[1] encoding:4];
      [v10 setErrorStateLabel:v14];

      v15 = [v10 errorStateLabel];

      if (!v15)
      {
        v17 = &xmmword_278A74A18;
LABEL_45:
        *a3 = *v17;
LABEL_48:

        goto LABEL_52;
      }
    }

    else
    {
      [v10 setErrorStateLabel:0];
    }

    if (v40[0] == 1)
    {
      v34 = sub_239289A18(v40, v16);
      v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v34 length:v34[1] encoding:4];
      [v10 setErrorStateDetails:v35];

      v15 = [v10 errorStateDetails];

      if (!v15)
      {
        v17 = &xmmword_278A74A28;
        goto LABEL_45;
      }
    }

    else
    {
      [v10 setErrorStateDetails:0];
    }

    v15 = v10;
    goto LABEL_48;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        LOBYTE(v37) = 0;
        BYTE4(v37) = 0;
        v5 = sub_238EFDEB0(a2, &v37);
        *a3 = v5;
        a3[1] = v6;
        if (!v5 && BYTE4(v37) == 1)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37];
LABEL_37:
          v15 = v7;
          goto LABEL_52;
        }

        goto LABEL_51;
      }

LABEL_31:
      v15 = 0;
      *a3 = 0x1B5B000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_52;
    }

    LOWORD(v37) = 0;
    v29 = sub_238F00228(a2, &v37);
    *a3 = v29;
    a3[1] = v30;
    if (v29 || BYTE1(v37) != 1)
    {
LABEL_51:
      v15 = 0;
      goto LABEL_52;
    }

LABEL_36:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v37];
    goto LABEL_37;
  }

  v43[0] = 0;
  v44 = 0;
  v18 = sub_238EFE808(a2, v43);
  *a3 = v18;
  a3[1] = v19;
  if (v18 || v44 != 1)
  {
    goto LABEL_51;
  }

  v15 = objc_opt_new();
  if ((v44 & 1) == 0)
  {
    sub_238EA195C();
  }

  sub_2393C5AAC(v39);
  v37 = 0;
  v38 = 0;
  sub_2393C5BDC(v39, v43);
  v41 = 0;
  v42[0] = 0;
  while (sub_238E43364(&v37))
  {
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v41 length:v42[0] encoding:4];
    if (!v20)
    {
      *a3 = xmmword_278A749F8;
      goto LABEL_50;
    }

    [v15 addObject:v20];
  }

LABEL_38:
  if (v37 != 33 && v37)
  {
    v33 = v38;
    *a3 = v37;
    a3[1] = v33;
LABEL_50:

    goto LABEL_51;
  }

LABEL_52:

  return v15;
}

MTRRVCOperationalStateClusterErrorStateStruct *sub_2392AA60C(int a1, uint64_t a2, void *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      sub_2393C5AAC(v43);
      sub_2393C5ADC(v43, 0, 0);
      v21 = sub_238F36BB4(v43, a2);
      v15 = 0;
      *a3 = v21;
      a3[1] = v22;
      if (v21)
      {
        goto LABEL_52;
      }

      v15 = objc_opt_new();
      sub_2393C5AAC(v39);
      v37 = 0;
      v38 = 0;
      sub_2393C5BDC(v39, v43);
      LOBYTE(v41) = 0;
      LOBYTE(v42[0]) = 0;
      while (sub_238EA1A80(&v37) && sub_2392C7EAC(&v37))
      {
        v23 = objc_opt_new();
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v41];
        [v23 setOperationalStateID:v24];

        if (LOBYTE(v42[0]) == 1)
        {
          v26 = sub_238DE36B8(v42, v25);
          v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v26 length:v26[1] encoding:4];
          [v23 setOperationalStateLabel:v27];

          v28 = [v23 operationalStateLabel];

          if (!v28)
          {
            *a3 = xmmword_278A74A48;

            goto LABEL_50;
          }
        }

        else
        {
          [v23 setOperationalStateLabel:0];
        }

        [v15 addObject:v23];
      }

      goto LABEL_38;
    }

    if (a1 == 4)
    {
      LOBYTE(v37) = 0;
      v31 = sub_2393C5ED0(a2, &v37);
      *a3 = v31;
      a3[1] = v32;
      if (v31)
      {
        goto LABEL_51;
      }

      goto LABEL_36;
    }

    if (a1 != 5)
    {
      goto LABEL_31;
    }

    LOBYTE(v37) = 0;
    LOBYTE(v38) = 0;
    v40[0] = 0;
    v8 = sub_238F357FC(&v37, a2);
    *a3 = v8;
    a3[1] = v9;
    if (v8)
    {
      goto LABEL_51;
    }

    v10 = objc_opt_new();
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v37];
    [v10 setErrorStateID:v11];

    if (v38 == 1)
    {
      v13 = sub_239289A18(&v38, v12);
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v13 length:v13[1] encoding:4];
      [v10 setErrorStateLabel:v14];

      v15 = [v10 errorStateLabel];

      if (!v15)
      {
        v17 = &xmmword_278A74A58;
LABEL_45:
        *a3 = *v17;
LABEL_48:

        goto LABEL_52;
      }
    }

    else
    {
      [v10 setErrorStateLabel:0];
    }

    if (v40[0] == 1)
    {
      v34 = sub_239289A18(v40, v16);
      v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v34 length:v34[1] encoding:4];
      [v10 setErrorStateDetails:v35];

      v15 = [v10 errorStateDetails];

      if (!v15)
      {
        v17 = &xmmword_278A74A68;
        goto LABEL_45;
      }
    }

    else
    {
      [v10 setErrorStateDetails:0];
    }

    v15 = v10;
    goto LABEL_48;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        LOBYTE(v37) = 0;
        BYTE4(v37) = 0;
        v5 = sub_238EFDEB0(a2, &v37);
        *a3 = v5;
        a3[1] = v6;
        if (!v5 && BYTE4(v37) == 1)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37];
LABEL_37:
          v15 = v7;
          goto LABEL_52;
        }

        goto LABEL_51;
      }

LABEL_31:
      v15 = 0;
      *a3 = 0x1BF9000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_52;
    }

    LOWORD(v37) = 0;
    v29 = sub_238F00228(a2, &v37);
    *a3 = v29;
    a3[1] = v30;
    if (v29 || BYTE1(v37) != 1)
    {
LABEL_51:
      v15 = 0;
      goto LABEL_52;
    }

LABEL_36:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v37];
    goto LABEL_37;
  }

  v43[0] = 0;
  v44 = 0;
  v18 = sub_238EFE808(a2, v43);
  *a3 = v18;
  a3[1] = v19;
  if (v18 || v44 != 1)
  {
    goto LABEL_51;
  }

  v15 = objc_opt_new();
  if ((v44 & 1) == 0)
  {
    sub_238EA195C();
  }

  sub_2393C5AAC(v39);
  v37 = 0;
  v38 = 0;
  sub_2393C5BDC(v39, v43);
  v41 = 0;
  v42[0] = 0;
  while (sub_238E43364(&v37))
  {
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v41 length:v42[0] encoding:4];
    if (!v20)
    {
      *a3 = xmmword_278A74A38;
      goto LABEL_50;
    }

    [v15 addObject:v20];
  }

LABEL_38:
  if (v37 != 33 && v37)
  {
    v33 = v38;
    *a3 = v37;
    a3[1] = v33;
LABEL_50:

    goto LABEL_51;
  }

LABEL_52:

  return v15;
}

id sub_2392AABB0(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 2)
  {
    sub_2393C5AAC(v21);
    sub_2393C5ADC(v21, 0, 0);
    v22 = 0;
    v8 = sub_238F36BB4(v21, a2);
    v7 = 0;
    *a3 = v8;
    a3[1] = v9;
    if (!v8)
    {
      v7 = objc_opt_new();
      v24[0] = v22;
      if (v22 == 1)
      {
        v24[1] = v23;
      }

      sub_238EA4630(v19, v21, v24);
      *(v20 + 3) = 0;
      v20[0] = 0;
      while (sub_2392C8050(v19))
      {
        v10 = objc_opt_new();
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v20[0])];
        [v10 setSceneCount:v11];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v20[0])];
        [v10 setCurrentScene:v12];

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v20[0])];
        [v10 setCurrentGroup:v13];

        v14 = [MEMORY[0x277CCABB0] numberWithBool:LOBYTE(v20[1])];
        [v10 setSceneValid:v14];

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v20[1])];
        [v10 setRemainingCapacity:v15];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v20[1])];
        [v10 setFabricIndex:v16];

        [v7 addObject:v10];
      }

      if (LODWORD(v19[0]) != 33 && LODWORD(v19[0]))
      {
        v17 = v19[1];
        *a3 = v19[0];
        a3[1] = v17;

        goto LABEL_4;
      }
    }
  }

  else if (a1 == 1)
  {
    LOWORD(v19[0]) = 0;
    v5 = sub_2393C5F70(a2, v19);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
LABEL_4:
      v7 = 0;
      goto LABEL_16;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:LOWORD(v19[0])];
  }

  else
  {
    v7 = 0;
    *a3 = 0x1C31000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

LABEL_16:

  return v7;
}

id sub_2392AAE7C(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          LOBYTE(v24) = 0;
          v5 = sub_238EFD7D0(a2, &v24);
          goto LABEL_22;
        }

LABEL_20:
        v8 = 0;
        *a3 = 0x1C9A000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_34;
      }

      LOBYTE(v24) = 0;
      v5 = sub_238EFF894(a2, &v24);
    }

    else
    {
      LOBYTE(v24) = 0;
      v5 = sub_2393C5ED0(a2, &v24);
    }

LABEL_22:
    *a3 = v5;
    a3[1] = v6;
    if (!v5)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  if (a1 == 3)
  {
    LOBYTE(v24) = 0;
    v17 = sub_2393C5CE4(a2, &v24);
    *a3 = v17;
    a3[1] = v18;
    if (!v17)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithBool:v24];
LABEL_24:
      v8 = v19;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (a1 == 4)
  {
    LOBYTE(v24) = 0;
    BYTE4(v24) = 0;
    v20 = sub_238EFDEB0(a2, &v24);
    *a3 = v20;
    a3[1] = v21;
    if (!v20 && BYTE4(v24) == 1)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
      goto LABEL_24;
    }

LABEL_33:
    v8 = 0;
    goto LABEL_34;
  }

  if (a1 != 5)
  {
    goto LABEL_20;
  }

  sub_2393C5AAC(v30);
  sub_2393C5ADC(v30, 0, 0);
  v7 = sub_238F36BB4(v30, a2);
  v8 = 0;
  *a3 = v7;
  a3[1] = v9;
  if (!v7)
  {
    v8 = objc_opt_new();
    sub_2393C5AAC(v26);
    v24 = 0;
    v25 = 0;
    sub_2393C5BDC(v26, v30);
    LOBYTE(v27) = 0;
    v28 = 0;
    v29 = 0;
    while (1)
    {
      v10 = sub_238EA1A80(&v24);
      LODWORD(v11) = v24;
      if (v24)
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      v11 = sub_238F00004(&v27, v26);
      v24 = v11;
      v25 = v12;
      if (v11)
      {
        break;
      }

      v13 = objc_opt_new();
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v27];
      [v13 setProductIdentifierType:v14];

      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28 length:v29 encoding:4];
      [v13 setProductIdentifierValue:v15];

      v16 = [v13 productIdentifierValue];

      if (!v16)
      {
        *a3 = xmmword_278A74A78;

        goto LABEL_32;
      }

      [v8 addObject:v13];
    }

    if (v11 != 33 && v24)
    {
      v22 = v25;
      *a3 = v24;
      a3[1] = v22;
LABEL_32:

      goto LABEL_33;
    }
  }

LABEL_34:

  return v8;
}

id sub_2392AB1BC(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          LOBYTE(v24) = 0;
          v5 = sub_238EFD7D0(a2, &v24);
          goto LABEL_22;
        }

LABEL_20:
        v8 = 0;
        *a3 = 0x1D03000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_34;
      }

      LOBYTE(v24) = 0;
      v5 = sub_238EFF894(a2, &v24);
    }

    else
    {
      LOBYTE(v24) = 0;
      v5 = sub_2393C5ED0(a2, &v24);
    }

LABEL_22:
    *a3 = v5;
    a3[1] = v6;
    if (!v5)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  if (a1 == 3)
  {
    LOBYTE(v24) = 0;
    v17 = sub_2393C5CE4(a2, &v24);
    *a3 = v17;
    a3[1] = v18;
    if (!v17)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithBool:v24];
LABEL_24:
      v8 = v19;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (a1 == 4)
  {
    LOBYTE(v24) = 0;
    BYTE4(v24) = 0;
    v20 = sub_238EFDEB0(a2, &v24);
    *a3 = v20;
    a3[1] = v21;
    if (!v20 && BYTE4(v24) == 1)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
      goto LABEL_24;
    }

LABEL_33:
    v8 = 0;
    goto LABEL_34;
  }

  if (a1 != 5)
  {
    goto LABEL_20;
  }

  sub_2393C5AAC(v30);
  sub_2393C5ADC(v30, 0, 0);
  v7 = sub_238F36BB4(v30, a2);
  v8 = 0;
  *a3 = v7;
  a3[1] = v9;
  if (!v7)
  {
    v8 = objc_opt_new();
    sub_2393C5AAC(v26);
    v24 = 0;
    v25 = 0;
    sub_2393C5BDC(v26, v30);
    LOBYTE(v27) = 0;
    v28 = 0;
    v29 = 0;
    while (1)
    {
      v10 = sub_238EA1A80(&v24);
      LODWORD(v11) = v24;
      if (v24)
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      v11 = sub_238F00004(&v27, v26);
      v24 = v11;
      v25 = v12;
      if (v11)
      {
        break;
      }

      v13 = objc_opt_new();
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v27];
      [v13 setProductIdentifierType:v14];

      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28 length:v29 encoding:4];
      [v13 setProductIdentifierValue:v15];

      v16 = [v13 productIdentifierValue];

      if (!v16)
      {
        *a3 = xmmword_278A74A88;

        goto LABEL_32;
      }

      [v8 addObject:v13];
    }

    if (v11 != 33 && v24)
    {
      v22 = v25;
      *a3 = v24;
      a3[1] = v22;
LABEL_32:

      goto LABEL_33;
    }
  }

LABEL_34:

  return v8;
}

id sub_2392AB4FC(int a1, uint64_t a2, void *a3)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          v24 = 0;
          v12 = sub_238F36E54(a2, &v24);
          *a3 = v12;
          a3[1] = v13;
          if (!v12)
          {
            v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v24];
            goto LABEL_29;
          }

          goto LABEL_25;
        }

LABEL_26:
        v14 = 0;
        *a3 = 0x1D68000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_29;
      }

      v25 = 0;
      v21 = sub_238EA4DB4(a2, &v25);
      *a3 = v21;
      a3[1] = v22;
      if (!v21)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v25;
        goto LABEL_28;
      }
    }

    else if (a1 == 4)
    {
      v27 = 0;
      v17 = sub_238EA4DB4(a2, &v27);
      *a3 = v17;
      a3[1] = v18;
      if (!v17)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v27;
        goto LABEL_28;
      }
    }

    else
    {
      v26 = 0;
      v8 = sub_238EA4DB4(a2, &v26);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v26;
        goto LABEL_28;
      }
    }

LABEL_25:
    v14 = 0;
    goto LABEL_29;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v29 = 0;
      v19 = sub_2393C5ED0(a2, &v29);
      *a3 = v19;
      a3[1] = v20;
      if (!v19)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v29;
        goto LABEL_28;
      }
    }

    else
    {
      v28 = 0;
      v10 = sub_238EA4DB4(a2, &v28);
      *a3 = v10;
      a3[1] = v11;
      if (!v10)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v28;
        goto LABEL_28;
      }
    }

    goto LABEL_25;
  }

  if (!a1)
  {
    v31 = 0;
    v15 = sub_2393C5ED0(a2, &v31);
    *a3 = v15;
    a3[1] = v16;
    if (!v15)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v31;
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (a1 != 1)
  {
    goto LABEL_26;
  }

  v30 = 0;
  v4 = sub_2393C5ED0(a2, &v30);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_25;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = v30;
LABEL_28:
  v14 = [v6 numberWithUnsignedChar:v7];
LABEL_29:

  return v14;
}

id sub_2392AB700(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (a1 > 1)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (a1 == 2)
      {
        LOBYTE(v16) = 0;
        v17 = 0;
        v13 = sub_238EFD658(a2, &v16);
        *a3 = v13;
        a3[1] = v14;
        if (!v13 && v17 == 1)
        {
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (a1 != 3)
      {
        goto LABEL_8;
      }
    }

    LOBYTE(v16) = 0;
    BYTE4(v16) = 0;
    v9 = sub_238EFDEB0(a2, &v16);
    *a3 = v9;
    a3[1] = v10;
    if (!v9 && BYTE4(v16) == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a1 <= 7)
  {
    if (a1 != 5)
    {
      LOWORD(v16) = 0;
      v4 = sub_238F00228(a2, &v16);
LABEL_9:
      *a3 = v4;
      a3[1] = v5;
      if (v4 || BYTE1(v16) != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

LABEL_8:
    LOWORD(v16) = 0;
    v4 = sub_238F0C9D0(a2, &v16);
    goto LABEL_9;
  }

  switch(a1)
  {
    case 8:
      goto LABEL_15;
    case 9:
      LOWORD(v16) = 0;
      v11 = sub_238F36E54(a2, &v16);
      *a3 = v11;
      a3[1] = v12;
      if (!v11)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
        goto LABEL_27;
      }

      goto LABEL_26;
    case 10:
LABEL_15:
      LOBYTE(v16) = 0;
      v6 = sub_2393C5ED0(a2, &v16);
      *a3 = v6;
      a3[1] = v7;
      if (v6)
      {
LABEL_26:
        v8 = 0;
        goto LABEL_27;
      }

LABEL_16:
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
      goto LABEL_27;
  }

LABEL_30:
  v8 = 0;
  *a3 = 0x1E0E000000B5;
  a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
LABEL_27:

  return v8;
}

id sub_2392AB8E8(int a1, uint64_t a2, unint64_t *a3)
{
  switch(a1)
  {
    case 0:
      LOBYTE(v70) = 0;
      v55 = sub_238EFD7D0(a2, &v70);
      goto LABEL_65;
    case 1:
      LOBYTE(v70) = 0;
      v55 = sub_2393C5ED0(a2, &v70);
LABEL_65:
      *a3 = v55;
      a3[1] = v56;
      if (v55)
      {
        goto LABEL_90;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v70];
      goto LABEL_67;
    case 2:
      sub_2393C5AAC(v96);
      sub_2393C5ADC(v8, 0, 0);
      v9 = sub_238F36BB4(v96, a2);
      v10 = 0;
      *a3 = v9;
      a3[1] = v11;
      if (v9)
      {
        goto LABEL_91;
      }

      v10 = objc_opt_new();
      sub_2392C8168(&v70, v96);
      break;
    case 3:
      sub_2393C5AAC(&v84);
      sub_2393C5ADC(&v84, 0, 0);
      v33 = sub_238F36BB4(&v84, a2);
      v10 = 0;
      *a3 = v33;
      a3[1] = v34;
      if (v33)
      {
        goto LABEL_91;
      }

      v10 = objc_opt_new();
      sub_2392C82D8(&v70, &v84);
      while (sub_238EA1A80(&v70) && sub_2392C8340(&v70))
      {
        v35 = objc_opt_new();
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v72];
        [v35 setMeasurementType:v36];

        v37 = [MEMORY[0x277CCABB0] numberWithLongLong:v74];
        [v35 setMin:v37];

        v38 = [MEMORY[0x277CCABB0] numberWithLongLong:v75];
        [v35 setMax:v38];

        if (v76[0] == 1)
        {
          v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v76, v39)}];
          [v35 setStartTimestamp:v40];
        }

        else
        {
          [v35 setStartTimestamp:0];
        }

        if (v77[0] == 1)
        {
          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v77, v41)}];
          [v35 setEndTimestamp:v42];
        }

        else
        {
          [v35 setEndTimestamp:0];
        }

        if (v78[0] == 1)
        {
          v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v78, v43)}];
          [v35 setMinTimestamp:v44];
        }

        else
        {
          [v35 setMinTimestamp:0];
        }

        if (v79[0] == 1)
        {
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v79, v45)}];
          [v35 setMaxTimestamp:v46];
        }

        else
        {
          [v35 setMaxTimestamp:0];
        }

        if (v80[0] == 1)
        {
          v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v80, v47)}];
          [v35 setStartSystime:v48];
        }

        else
        {
          [v35 setStartSystime:0];
        }

        if (v81[0] == 1)
        {
          v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v81, v49)}];
          [v35 setEndSystime:v50];
        }

        else
        {
          [v35 setEndSystime:0];
        }

        if (v82[0] == 1)
        {
          v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v82, v51)}];
          [v35 setMinSystime:v52];
        }

        else
        {
          [v35 setMinSystime:0];
        }

        if (v83[0] == 1)
        {
          v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v83, v53)}];
          [v35 setMaxSystime:v54];
        }

        else
        {
          [v35 setMaxSystime:0];
        }

        [v10 addObject:v35];
      }

      goto LABEL_86;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 17:
    case 18:
      LOBYTE(v70) = 0;
      LOBYTE(v71) = 0;
      v5 = sub_238F0C244(a2, &v70);
      *a3 = v5;
      a3[1] = v6;
      if (v5 || v71 != 1)
      {
        goto LABEL_90;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v70];
LABEL_67:
      v10 = v7;
      goto LABEL_91;
    case 15:
      LOBYTE(v84) = 0;
      v87 = 0;
      v57 = sub_238EFE808(a2, &v84);
      *a3 = v57;
      a3[1] = v58;
      if (v57 || v87 != 1)
      {
        goto LABEL_90;
      }

      v10 = objc_opt_new();
      if ((v87 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C80C8(&v84, &v70);
      while (sub_2392C8110(&v70))
      {
        v59 = objc_opt_new();
        v60 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v72];
        [v59 setOrder:v60];

        if (v75)
        {
          v61 = [MEMORY[0x277CCABB0] numberWithLongLong:v74];
          [v59 setMeasurement:v61];
        }

        else
        {
          [v59 setMeasurement:0];
        }

        [v10 addObject:v59];
      }

      goto LABEL_86;
    case 16:
      LOBYTE(v84) = 0;
      v87 = 0;
      v62 = sub_238EFE808(a2, &v84);
      *a3 = v62;
      a3[1] = v63;
      if (v62 || v87 != 1)
      {
        goto LABEL_90;
      }

      v10 = objc_opt_new();
      if ((v87 & 1) == 0)
      {
        sub_238EA195C();
      }

      sub_2392C80C8(&v84, &v70);
      while (sub_2392C8110(&v70))
      {
        v64 = objc_opt_new();
        v65 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v72];
        [v64 setOrder:v65];

        if (v75)
        {
          v66 = [MEMORY[0x277CCABB0] numberWithLongLong:v74];
          [v64 setMeasurement:v66];
        }

        else
        {
          [v64 setMeasurement:0];
        }

        [v10 addObject:v64];
      }

      goto LABEL_86;
    default:
      v10 = 0;
      *a3 = 0x1FCF000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_91;
  }

  while (sub_238EA1A80(&v70) && sub_2392C81CC(&v70))
  {
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v72];
    [v12 setMeasurementType:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:v73];
    [v12 setMeasured:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v74];
    [v12 setMinMeasuredValue:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v75];
    [v12 setMaxMeasuredValue:v16];

    v17 = objc_opt_new();
    sub_2393C5AAC(v86);
    v84 = 0;
    v85 = 0;
    sub_2393C5BDC(v86, v76);
    v91[0] = 0;
    v92[0] = 0;
    v93[0] = 0;
    v94[0] = 0;
    v95[0] = 0;
    v88 = 0;
    v89 = 0;
    v90[0] = 0;
    while (sub_238EA1A80(&v84) && sub_2392C8270(&v84))
    {
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v88];
      [v18 setRangeMin:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v89];
      [v18 setRangeMax:v20];

      if (v90[0] == 1)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v90, v21)->super.isa)}];
        [v18 setPercentMax:v22];
      }

      else
      {
        [v18 setPercentMax:0];
      }

      if (v91[0] == 1)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v91, v23)->super.isa)}];
        [v18 setPercentMin:v24];
      }

      else
      {
        [v18 setPercentMin:0];
      }

      if (v92[0] == 1)
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v92, v25)->super.isa)}];
        [v18 setPercentTypical:v26];
      }

      else
      {
        [v18 setPercentTypical:0];
      }

      if (v93[0] == 1)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v93, v27)}];
        [v18 setFixedMax:v28];
      }

      else
      {
        [v18 setFixedMax:0];
      }

      if (v94[0] == 1)
      {
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v94, v29)}];
        [v18 setFixedMin:v30];
      }

      else
      {
        [v18 setFixedMin:0];
      }

      if (v95[0] == 1)
      {
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v95, v31)}];
        [v18 setFixedTypical:v32];
      }

      else
      {
        [v18 setFixedTypical:0];
      }

      [v17 addObject:v18];
    }

    if (v84 != 33 && v84)
    {
      v69 = v85;
      *a3 = v84;
      a3[1] = v69;

      goto LABEL_89;
    }

    [v12 setAccuracyRanges:v17];

    [v10 addObject:v12];
  }

LABEL_86:
  if (v70 == 33 || !v70)
  {
    goto LABEL_91;
  }

  v67 = v71;
  *a3 = v70;
  a3[1] = v67;
LABEL_89:

LABEL_90:
  v10 = 0;
LABEL_91:

  return v10;
}

MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *sub_2392AC470(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      LOBYTE(v105) = 0;
      LOBYTE(v113) = 0;
      v43 = sub_238F14CF8(a2, &v105);
      *a3 = v43;
      a3[1] = v44;
      if (!v43 && (v113 & 1) != 0)
      {
        v7 = objc_opt_new();
        if (v113 != 1)
        {
          goto LABEL_177;
        }

        v45 = [MEMORY[0x277CCABB0] numberWithLongLong:v105];
        [v7 setEnergy:v45];

        if (v113 != 1)
        {
          goto LABEL_177;
        }

        if (v106 == 1)
        {
          v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(&v106, v46)}];
          [v7 setStartTimestamp:v47];
        }

        else
        {
          [v7 setStartTimestamp:0];
        }

        if (v113 != 1)
        {
          goto LABEL_177;
        }

        if (v107[0] == 1)
        {
          v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(v107, v48)}];
          [v7 setEndTimestamp:v76];
        }

        else
        {
          [v7 setEndTimestamp:0];
        }

        if (v113 != 1)
        {
          goto LABEL_177;
        }

        if (v108[0] == 1)
        {
          v84 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_239289A18(v108, v77)}];
          [v7 setStartSystime:v84];
        }

        else
        {
          [v7 setStartSystime:0];
        }

        if (v113 != 1)
        {
          goto LABEL_177;
        }

        if (v109[0] == 1)
        {
          v92 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_239289A18(v109, v85)}];
          [v7 setEndSystime:v92];
        }

        else
        {
          [v7 setEndSystime:0];
        }

        if (v113 != 1)
        {
          goto LABEL_177;
        }

        if (v111[0] == 1)
        {
          v100 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_239289A18(v111, v93)}];
          [v7 setApparentEnergy:v100];
        }

        else
        {
          [v7 setApparentEnergy:0];
        }

        if ((v113 & 1) == 0)
        {
LABEL_177:
          sub_238EA195C();
        }

        if (v112[0] == 1)
        {
          goto LABEL_173;
        }

        goto LABEL_175;
      }

      goto LABEL_64;
    }

    if (a1 == 4)
    {
      LOBYTE(v105) = 0;
      LOBYTE(v113) = 0;
      v55 = sub_238F14CF8(a2, &v105);
      *a3 = v55;
      a3[1] = v56;
      if (!v55 && (v113 & 1) != 0)
      {
        v7 = objc_opt_new();
        if (v113 != 1)
        {
          goto LABEL_180;
        }

        v57 = [MEMORY[0x277CCABB0] numberWithLongLong:v105];
        [v7 setEnergy:v57];

        if (v113 != 1)
        {
          goto LABEL_180;
        }

        if (v106 == 1)
        {
          v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(&v106, v58)}];
          [v7 setStartTimestamp:v59];
        }

        else
        {
          [v7 setStartTimestamp:0];
        }

        if (v113 != 1)
        {
          goto LABEL_180;
        }

        if (v107[0] == 1)
        {
          v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(v107, v60)}];
          [v7 setEndTimestamp:v82];
        }

        else
        {
          [v7 setEndTimestamp:0];
        }

        if (v113 != 1)
        {
          goto LABEL_180;
        }

        if (v108[0] == 1)
        {
          v90 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_239289A18(v108, v83)}];
          [v7 setStartSystime:v90];
        }

        else
        {
          [v7 setStartSystime:0];
        }

        if (v113 != 1)
        {
          goto LABEL_180;
        }

        if (v109[0] == 1)
        {
          v98 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_239289A18(v109, v91)}];
          [v7 setEndSystime:v98];
        }

        else
        {
          [v7 setEndSystime:0];
        }

        if (v113 != 1)
        {
          goto LABEL_180;
        }

        if (v111[0] == 1)
        {
          v104 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_239289A18(v111, v99)}];
          [v7 setApparentEnergy:v104];
        }

        else
        {
          [v7 setApparentEnergy:0];
        }

        if ((v113 & 1) == 0)
        {
LABEL_180:
          sub_238EA195C();
        }

        if (v112[0] == 1)
        {
          goto LABEL_173;
        }

        goto LABEL_175;
      }

      goto LABEL_64;
    }

    if (a1 != 5)
    {
      goto LABEL_51;
    }

    LOBYTE(v105) = 0;
    v112[0] = 0;
    v12 = sub_238F14D9C(a2, &v105);
    *a3 = v12;
    a3[1] = v13;
    if (v12 || (v112[0] & 1) == 0)
    {
      goto LABEL_64;
    }

    v7 = objc_opt_new();
    if (v112[0] == 1)
    {
      if (v105 == 1 && sub_2392C83B0(&v105, v14)[4] == 1)
      {
        if (v112[0] != 1)
        {
          goto LABEL_181;
        }

        v16 = MEMORY[0x277CCABB0];
        v17 = sub_2392C83B0(&v105, v15);
        if (v17[4] != 1)
        {
          goto LABEL_181;
        }

        v18 = [v16 numberWithUnsignedInt:*v17];
        [v7 setImportedResetTimestamp:v18];
      }

      else
      {
        [v7 setImportedResetTimestamp:0];
      }

      if (v112[0] != 1)
      {
        goto LABEL_181;
      }

      if (BYTE4(v106) == 1 && sub_2392C83B0(&v106 + 4, v19)[4] == 1)
      {
        if (v112[0] != 1)
        {
          goto LABEL_181;
        }

        v64 = MEMORY[0x277CCABB0];
        v65 = sub_2392C83B0(&v106 + 4, v63);
        if (v65[4] != 1)
        {
          goto LABEL_181;
        }

        v66 = [v64 numberWithUnsignedInt:*v65];
        [v7 setExportedResetTimestamp:v66];
      }

      else
      {
        [v7 setExportedResetTimestamp:0];
      }

      if (v112[0] != 1)
      {
        goto LABEL_181;
      }

      if (v108[0] == 1 && sub_239289A18(v108, v67)[8] == 1)
      {
        if (v112[0] != 1)
        {
          goto LABEL_181;
        }

        v69 = MEMORY[0x277CCABB0];
        v70 = sub_239289A18(v108, v68);
        if (v70[8] != 1)
        {
          goto LABEL_181;
        }

        v71 = [v69 numberWithUnsignedLongLong:*v70];
        [v7 setImportedResetSystime:v71];
      }

      else
      {
        [v7 setImportedResetSystime:0];
      }

      if (v112[0] == 1)
      {
        if (v110[0] != 1 || sub_239289A18(v110, v72)[8] != 1)
        {
          [v7 setExportedResetSystime:0];
          goto LABEL_65;
        }

        if (v112[0] == 1)
        {
          v74 = MEMORY[0x277CCABB0];
          v75 = sub_239289A18(v110, v73);
          if (v75[8])
          {
            v22 = [v74 numberWithUnsignedLongLong:*v75];
            [v7 setExportedResetSystime:v22];
LABEL_174:

            goto LABEL_65;
          }
        }
      }
    }

LABEL_181:
    sub_238EA195C();
  }

  if (!a1)
  {
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    sub_2393C5AAC(v125);
    sub_2393C5ADC(v125, 0, 0);
    v20 = sub_238F35690(&v121, a2);
    v7 = 0;
    *a3 = v20;
    a3[1] = v21;
    if (v20)
    {
      goto LABEL_65;
    }

    v22 = objc_opt_new();
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v121];
    [v22 setMeasurementType:v23];

    v24 = [MEMORY[0x277CCABB0] numberWithBool:v122];
    [v22 setMeasured:v24];

    v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v123];
    [v22 setMinMeasuredValue:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v124];
    [v22 setMaxMeasuredValue:v26];

    v27 = objc_opt_new();
    sub_2393C5AAC(v107);
    v105 = 0;
    v106 = 0;
    sub_2393C5BDC(v107, v125);
    v116[0] = 0;
    v117[0] = 0;
    v118[0] = 0;
    v119[0] = 0;
    v120[0] = 0;
    v113 = 0;
    v114 = 0;
    v115[0] = 0;
    while (sub_238EA1A80(&v105) && sub_2392C8270(&v105))
    {
      v28 = objc_opt_new();
      v29 = [MEMORY[0x277CCABB0] numberWithLongLong:v113];
      [v28 setRangeMin:v29];

      v30 = [MEMORY[0x277CCABB0] numberWithLongLong:v114];
      [v28 setRangeMax:v30];

      if (v115[0] == 1)
      {
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v115, v31)->super.isa)}];
        [v28 setPercentMax:v32];
      }

      else
      {
        [v28 setPercentMax:0];
      }

      if (v116[0] == 1)
      {
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v116, v33)->super.isa)}];
        [v28 setPercentMin:v34];
      }

      else
      {
        [v28 setPercentMin:0];
      }

      if (v117[0] == 1)
      {
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v117, v35)->super.isa)}];
        [v28 setPercentTypical:v36];
      }

      else
      {
        [v28 setPercentTypical:0];
      }

      if (v118[0] == 1)
      {
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v118, v37)}];
        [v28 setFixedMax:v38];
      }

      else
      {
        [v28 setFixedMax:0];
      }

      if (v119[0] == 1)
      {
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v119, v39)}];
        [v28 setFixedMin:v40];
      }

      else
      {
        [v28 setFixedMin:0];
      }

      if (v120[0] == 1)
      {
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_238DE36B8(v120, v41)}];
        [v28 setFixedTypical:v42];
      }

      else
      {
        [v28 setFixedTypical:0];
      }

      [v27 addObject:v28];
    }

    if (v105 == 33 || !v105)
    {
      [v22 setAccuracyRanges:v27];

      v7 = v22;
    }

    else
    {
      v62 = v106;
      *a3 = v105;
      a3[1] = v62;

      v7 = 0;
    }

    goto LABEL_174;
  }

  if (a1 == 1)
  {
    LOBYTE(v105) = 0;
    LOBYTE(v113) = 0;
    v49 = sub_238F14CF8(a2, &v105);
    *a3 = v49;
    a3[1] = v50;
    if (!v49 && (v113 & 1) != 0)
    {
      v7 = objc_opt_new();
      if (v113 != 1)
      {
        goto LABEL_179;
      }

      v51 = [MEMORY[0x277CCABB0] numberWithLongLong:v105];
      [v7 setEnergy:v51];

      if (v113 != 1)
      {
        goto LABEL_179;
      }

      if (v106 == 1)
      {
        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(&v106, v52)}];
        [v7 setStartTimestamp:v53];
      }

      else
      {
        [v7 setStartTimestamp:0];
      }

      if (v113 != 1)
      {
        goto LABEL_179;
      }

      if (v107[0] == 1)
      {
        v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(v107, v54)}];
        [v7 setEndTimestamp:v80];
      }

      else
      {
        [v7 setEndTimestamp:0];
      }

      if (v113 != 1)
      {
        goto LABEL_179;
      }

      if (v108[0] == 1)
      {
        v88 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_239289A18(v108, v81)}];
        [v7 setStartSystime:v88];
      }

      else
      {
        [v7 setStartSystime:0];
      }

      if (v113 != 1)
      {
        goto LABEL_179;
      }

      if (v109[0] == 1)
      {
        v96 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_239289A18(v109, v89)}];
        [v7 setEndSystime:v96];
      }

      else
      {
        [v7 setEndSystime:0];
      }

      if (v113 != 1)
      {
        goto LABEL_179;
      }

      if (v111[0] == 1)
      {
        v103 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_239289A18(v111, v97)}];
        [v7 setApparentEnergy:v103];
      }

      else
      {
        [v7 setApparentEnergy:0];
      }

      if ((v113 & 1) == 0)
      {
LABEL_179:
        sub_238EA195C();
      }

      if (v112[0] == 1)
      {
        goto LABEL_173;
      }

      goto LABEL_175;
    }

LABEL_64:
    v7 = 0;
    goto LABEL_65;
  }

  if (a1 != 2)
  {
LABEL_51:
    v7 = 0;
    *a3 = 0x2106000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_65;
  }

  LOBYTE(v105) = 0;
  LOBYTE(v113) = 0;
  v5 = sub_238F14CF8(a2, &v105);
  *a3 = v5;
  a3[1] = v6;
  if (v5 || (v113 & 1) == 0)
  {
    goto LABEL_64;
  }

  v7 = objc_opt_new();
  if (v113 != 1)
  {
    goto LABEL_178;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v105];
  [v7 setEnergy:v8];

  if (v113 != 1)
  {
    goto LABEL_178;
  }

  if (v106 == 1)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(&v106, v9)}];
    [v7 setStartTimestamp:v10];
  }

  else
  {
    [v7 setStartTimestamp:0];
  }

  if (v113 != 1)
  {
    goto LABEL_178;
  }

  if (v107[0] == 1)
  {
    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(v107, v11)}];
    [v7 setEndTimestamp:v78];
  }

  else
  {
    [v7 setEndTimestamp:0];
  }

  if (v113 != 1)
  {
    goto LABEL_178;
  }

  if (v108[0] == 1)
  {
    v86 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_239289A18(v108, v79)}];
    [v7 setStartSystime:v86];
  }

  else
  {
    [v7 setStartSystime:0];
  }

  if (v113 != 1)
  {
    goto LABEL_178;
  }

  if (v109[0] == 1)
  {
    v94 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*sub_239289A18(v109, v87)}];
    [v7 setEndSystime:v94];
  }

  else
  {
    [v7 setEndSystime:0];
  }

  if (v113 != 1)
  {
    goto LABEL_178;
  }

  if (v111[0] == 1)
  {
    v102 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_239289A18(v111, v95)}];
    [v7 setApparentEnergy:v102];
  }

  else
  {
    [v7 setApparentEnergy:0];
  }

  if ((v113 & 1) == 0)
  {
LABEL_178:
    sub_238EA195C();
  }

  if (v112[0] == 1)
  {
LABEL_173:
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_239289A18(v112, v101)}];
    [v7 setReactiveEnergy:v22];
    goto LABEL_174;
  }

LABEL_175:
  [v7 setReactiveEnergy:0];
LABEL_65:

  return v7;
}

id sub_2392AD6E4(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          v23 = 0;
          v4 = sub_2393C5F70(a2, &v23);
          *a3 = v4;
          a3[1] = v5;
          if (!v4)
          {
            v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v23];
            goto LABEL_23;
          }

          goto LABEL_20;
        }

LABEL_16:
        v6 = 0;
        *a3 = 0x2155000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_23;
      }

      v24 = 0;
      v15 = sub_238EA4DB4(a2, &v24);
      *a3 = v15;
      a3[1] = v16;
      if (!v15)
      {
        v9 = MEMORY[0x277CCABB0];
        v10 = v24;
        goto LABEL_22;
      }

LABEL_20:
      v6 = 0;
      goto LABEL_23;
    }

    v25 = 0;
    v11 = sub_238EA4DB4(a2, &v25);
    *a3 = v11;
    a3[1] = v12;
    if (v11)
    {
      goto LABEL_20;
    }

    v9 = MEMORY[0x277CCABB0];
    v10 = v25;
    goto LABEL_22;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      v21 = 0;
      v17 = sub_2393C5ED0(a2, &v21);
      *a3 = v17;
      a3[1] = v18;
      if (!v17)
      {
        v9 = MEMORY[0x277CCABB0];
        v10 = v21;
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (a1 != 5)
    {
      goto LABEL_16;
    }

    v20 = 0;
    v7 = sub_238EFF894(a2, &v20);
    *a3 = v7;
    a3[1] = v8;
    if (v7)
    {
      goto LABEL_20;
    }

    v9 = MEMORY[0x277CCABB0];
    v10 = v20;
LABEL_22:
    v6 = [v9 numberWithUnsignedChar:v10];
    goto LABEL_23;
  }

  v22 = 0;
  v13 = sub_2393C5DA0(a2, &v22);
  v6 = 0;
  *a3 = v13;
  a3[1] = v14;
  if (!v13)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
  }

LABEL_23:

  return v6;
}

MTRDataTypeCurrencyStruct *sub_2392AD888(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v64) = 0;
      v35 = sub_238EFF894(a2, &v64);
      *a3 = v35;
      a3[1] = v36;
      if (!v35)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v64];
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if (a1 == 1)
    {
      LOBYTE(v64) = 0;
      BYTE4(v64) = 0;
      v5 = sub_238F0ABF0(a2, &v64);
      *a3 = v5;
      a3[1] = v6;
      if (!v5 && (v64 & 0x100000000) != 0)
      {
        v7 = objc_opt_new();
        if (BYTE4(v64) != 1 || ([MEMORY[0x277CCABB0] numberWithUnsignedShort:v64], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setCurrency:", v8), v8, (v64 & 0x100000000) == 0))
        {
          sub_238EA195C();
        }

        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v64)];
        [v7 setDecimalPoints:v9];
        goto LABEL_99;
      }

LABEL_57:
      v7 = 0;
      goto LABEL_58;
    }

LABEL_45:
    v7 = 0;
    *a3 = 0x2225000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_58;
  }

  if (a1 == 2)
  {
    LOBYTE(v64) = 0;
    v76 = 0;
    v37 = sub_238F0AC84(a2, &v64);
    *a3 = v37;
    a3[1] = v38;
    if (v37)
    {
      goto LABEL_57;
    }

    if (v76)
    {
      v9 = objc_opt_new();
      if (v76 != 1)
      {
        goto LABEL_102;
      }

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v64];
      [v9 setPeriodStart:v39];

      if (v76 != 1)
      {
        goto LABEL_102;
      }

      if (v65)
      {
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v64)];
        [v9 setPeriodEnd:v40];
      }

      else
      {
        [v9 setPeriodEnd:0];
      }

      if (v76 != 1)
      {
        goto LABEL_102;
      }

      if (v66[0] == 1)
      {
        v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_239289A18(v66, v41)}];
        [v9 setPrice:v44];
      }

      else
      {
        [v9 setPrice:0];
      }

      if (v76 != 1)
      {
        goto LABEL_102;
      }

      if (v67[0] == 1)
      {
        v46 = [MEMORY[0x277CCABB0] numberWithShort:{*sub_2392C83D0(v67, v45)}];
        [v9 setPriceLevel:v46];
      }

      else
      {
        [v9 setPriceLevel:0];
      }

      if (v76 != 1)
      {
        goto LABEL_102;
      }

      if (v68[0] == 1)
      {
        v48 = sub_239289A18(v68, v47);
        v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v48 length:v48[1] encoding:4];
        [v9 setDescriptionString:v49];

        v7 = [v9 descriptionString];

        if (!v7)
        {
          *a3 = xmmword_278A74A98;
LABEL_99:

          goto LABEL_58;
        }
      }

      else
      {
        [v9 setDescriptionString:0];
      }

      if ((v76 & 1) == 0)
      {
LABEL_102:
        sub_238EA195C();
      }

      if (v69[0] == 1)
      {
        v51 = objc_opt_new();
        if ((v76 & 1) == 0)
        {
          sub_238EA195C();
        }

        v52 = sub_239289A18(v69, v50);
        sub_2393C5AAC(v81);
        v79 = 0;
        v80 = 0;
        sub_2393C5BDC(v81, v52);
        v82 = 0;
        v83 = 0;
        v84[0] = 0;
        v85[0] = 0;
        while (sub_238EA1A80(&v79) && sub_238EA2704(&v79))
        {
          v53 = objc_opt_new();
          v54 = [MEMORY[0x277CCABB0] numberWithLongLong:v82];
          [v53 setPrice:v54];

          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v83];
          [v53 setSource:v55];

          if (v84[0] == 1)
          {
            v57 = sub_238DE36B8(v84, v56);
            v58 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v57 length:v57[1] encoding:4];
            [v53 setDescriptionString:v58];

            v59 = [v53 descriptionString];

            if (!v59)
            {
              *a3 = xmmword_278A74AA8;

              goto LABEL_100;
            }
          }

          else
          {
            [v53 setDescriptionString:0];
          }

          if (v85[0] == 1)
          {
            v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v85, v60)}];
            [v53 setTariffComponentID:v61];
          }

          else
          {
            [v53 setTariffComponentID:0];
          }

          [v51 addObject:v53];
        }

        if (v79 == 33 || !v79)
        {
          [v9 setComponents:v51];

          goto LABEL_98;
        }

        v62 = v80;
        *a3 = v79;
        a3[1] = v62;
LABEL_100:

        v7 = 0;
        goto LABEL_99;
      }

      [v9 setComponents:0];
    }

    else
    {
      v9 = 0;
    }

LABEL_98:
    v9 = v9;
    v7 = v9;
    goto LABEL_99;
  }

  if (a1 != 3)
  {
    goto LABEL_45;
  }

  sub_2393C5AAC(v78);
  sub_2393C5ADC(v78, 0, 0);
  v10 = sub_238F36BB4(v78, a2);
  v7 = 0;
  *a3 = v10;
  a3[1] = v11;
  if (!v10)
  {
    v7 = objc_opt_new();
    sub_238EA275C(&v64, v78);
    while (sub_238EA1A80(&v64) && sub_238EA27B8(&v64))
    {
      v12 = objc_opt_new();
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v70];
      [v12 setPeriodStart:v13];

      if (v72)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v71];
        [v12 setPeriodEnd:v14];
      }

      else
      {
        [v12 setPeriodEnd:0];
      }

      if (v73[0] == 1)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(v73, v15)}];
        [v12 setPrice:v16];
      }

      else
      {
        [v12 setPrice:0];
      }

      if (v74[0] == 1)
      {
        v18 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(v74, v17)->super.isa)}];
        [v12 setPriceLevel:v18];
      }

      else
      {
        [v12 setPriceLevel:0];
      }

      if (v75[0] == 1)
      {
        v20 = sub_238DE36B8(v75, v19);
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v20 length:v20[1] encoding:4];
        [v12 setDescriptionString:v21];

        v22 = [v12 descriptionString];

        if (!v22)
        {
          *a3 = xmmword_278A74AB8;
          goto LABEL_55;
        }
      }

      else
      {
        [v12 setDescriptionString:0];
      }

      if (v77[0] == 1)
      {
        v23 = objc_opt_new();
        v25 = sub_238DE36B8(v77, v24);
        sub_2393C5AAC(v81);
        v79 = 0;
        v80 = 0;
        sub_2393C5BDC(v81, v25);
        v82 = 0;
        v83 = 0;
        v84[0] = 0;
        v85[0] = 0;
        while (sub_238EA1A80(&v79) && sub_238EA2704(&v79))
        {
          v26 = objc_opt_new();
          v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v82];
          [v26 setPrice:v27];

          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v83];
          [v26 setSource:v28];

          if (v84[0] == 1)
          {
            v30 = sub_238DE36B8(v84, v29);
            v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v30 length:v30[1] encoding:4];
            [v26 setDescriptionString:v31];

            v32 = [v26 descriptionString];

            if (!v32)
            {
              *a3 = xmmword_278A74AC8;

              goto LABEL_54;
            }
          }

          else
          {
            [v26 setDescriptionString:0];
          }

          if (v85[0] == 1)
          {
            v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v85, v33)}];
            [v26 setTariffComponentID:v34];
          }

          else
          {
            [v26 setTariffComponentID:0];
          }

          [v23 addObject:v26];
        }

        if (v79 == 33 || !v79)
        {
          [v12 setComponents:v23];

          goto LABEL_44;
        }

        v63 = v80;
        *a3 = v79;
        a3[1] = v63;
LABEL_54:

LABEL_55:
LABEL_56:

        goto LABEL_57;
      }

      [v12 setComponents:0];
LABEL_44:
      [v7 addObject:v12];
    }

    if (v64 != 33 && v64)
    {
      v43 = v65;
      *a3 = v64;
      a3[1] = v43;
      goto LABEL_56;
    }
  }

LABEL_58:

  return v7;
}

id sub_2392AE350(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    sub_2393C5AAC(&v34);
    sub_2393C5ADC(&v34, 0, 0);
    v28 = sub_238F36BB4(&v34, a2);
    v7 = 0;
    *a3 = v28;
    a3[1] = v29;
    if (!v28)
    {
      v7 = objc_opt_new();
      sub_2393C5AAC(v41);
      v39 = 0;
      v40 = 0;
      sub_2393C5BDC(v41, &v34);
      v42 = 0;
      v43 = 0;
      while (sub_238EA1A80(&v39) && sub_238EA49F4(&v39))
      {
        v30 = [MEMORY[0x277CBEA90] dataWithBytes:v42 length:v43];
        [v7 addObject:v30];
      }

LABEL_37:
      if (v39 != 33 && v39)
      {
        v31 = v40;
        *a3 = v39;
        a3[1] = v31;
LABEL_43:

        v7 = 0;
      }
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x229C000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v52);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v52, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2393C5AAC(v41);
      v39 = 0;
      v40 = 0;
      sub_2393C5BDC(v41, v52);
      LOBYTE(v45) = 0;
      v46 = 0;
      LOBYTE(v47) = 0;
      v48 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v49 = 0;
      v50 = 0;
      v51[0] = 0;
      while (1)
      {
        if (!sub_238EA1A80(&v39) || !sub_2392C83F0(&v39))
        {
          goto LABEL_37;
        }

        v9 = objc_opt_new();
        v10 = [MEMORY[0x277CBEA90] dataWithBytes:v42 length:v43];
        [v9 setMessageID:v10];

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v44];
        [v9 setPriority:v11];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v44)];
        [v9 setMessageControl:v12];

        if (v46)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v45];
          [v9 setStartTime:v13];
        }

        else
        {
          [v9 setStartTime:0];
        }

        if (v48)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v47];
          [v9 setDuration:v14];
        }

        else
        {
          [v9 setDuration:0];
        }

        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v49 length:v50 encoding:4];
        [v9 setMessageText:v15];

        v16 = [v9 messageText];

        if (!v16)
        {
          break;
        }

        if (v51[0] == 1)
        {
          v17 = objc_opt_new();
          v19 = sub_238DE36B8(v51, v18);
          sub_2393C5AAC(v36);
          v34 = 0;
          v35 = 0;
          sub_2393C5BDC(v36, v19);
          v37[0] = 0;
          v38[0] = 0;
          while (sub_238EA1A80(&v34) && sub_2392C84A0(&v34))
          {
            v20 = objc_opt_new();
            v22 = v20;
            if (v37[0] == 1)
            {
              v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v37, v21)}];
              [v22 setMessageResponseID:v23];
            }

            else
            {
              [v20 setMessageResponseID:0];
            }

            if (v38[0] == 1)
            {
              v25 = sub_238DE36B8(v38, v24);
              v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v25 length:v25[1] encoding:4];
              [v22 setLabel:v26];

              v27 = [v22 label];

              if (!v27)
              {
                *a3 = xmmword_278A74AE8;

                goto LABEL_40;
              }
            }

            else
            {
              [v22 setLabel:0];
            }

            [v17 addObject:v22];
          }

          if (v34 == 33 || !v34)
          {
            [v9 setResponses:v17];

            goto LABEL_30;
          }

          v33 = v35;
          *a3 = v34;
          a3[1] = v33;
LABEL_40:

          goto LABEL_42;
        }

        [v9 setResponses:0];
LABEL_30:
        [v7 addObject:v9];
      }

      *a3 = xmmword_278A74AD8;
LABEL_42:

      goto LABEL_43;
    }
  }

  return v7;
}

id sub_2392AE8E8(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          LOBYTE(v96) = 0;
          v4 = sub_2393C5CE4(a2, &v96);
          *a3 = v4;
          a3[1] = v5;
          if (!v4)
          {
            v6 = [MEMORY[0x277CCABB0] numberWithBool:v96];
LABEL_31:
            v21 = v6;
            goto LABEL_126;
          }

          goto LABEL_33;
        }

LABEL_34:
        v21 = 0;
        *a3 = 0x23A7000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_126;
      }

      LOBYTE(v96) = 0;
      v23 = sub_238F0E6BC(a2, &v96);
LABEL_29:
      *a3 = v23;
      a3[1] = v24;
      if (!v23)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v96];
        goto LABEL_31;
      }

LABEL_33:
      v21 = 0;
      goto LABEL_126;
    }

    if (a1 == 2)
    {
      LOBYTE(v96) = 0;
      v23 = sub_238F000A4(a2, &v96);
      goto LABEL_29;
    }

LABEL_22:
    v96 = 0;
    v20 = sub_2393C5DA0(a2, &v96);
    v21 = 0;
    *a3 = v20;
    a3[1] = v22;
    if (v20)
    {
      goto LABEL_126;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v96];
    goto LABEL_31;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      goto LABEL_22;
    }

    LOBYTE(v114) = 0;
    v124 = 0;
    v7 = sub_238F0E718(a2, &v114);
    *a3 = v7;
    a3[1] = v8;
    if (v7)
    {
      goto LABEL_33;
    }

    if (v124)
    {
      v9 = objc_opt_new();
      v10 = v9;
      if (v124 != 1)
      {
        goto LABEL_132;
      }

      if (v122)
      {
        v11 = objc_opt_new();
        if ((v124 & 1) == 0 || v122 != 1)
        {
          sub_238EA195C();
        }

        sub_2392C84F0(&v114, &v96);
        while (1)
        {
          v12 = sub_238EA1A80(&v96);
          LODWORD(v13) = v96;
          if (v96)
          {
            v12 = 0;
          }

          if (!v12)
          {
            break;
          }

          v99 = 0;
          v100 = 0;
          v101 = 0;
          v13 = sub_238F0F3BC(&v99, &v98);
          v96 = v13;
          v97 = v14;
          if (v13)
          {
            break;
          }

          v15 = objc_opt_new();
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v99];
          [v15 setMinPower:v16];

          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v100];
          [v15 setMaxPower:v17];

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v101];
          [v15 setMinDuration:v18];

          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v101)];
          [v15 setMaxDuration:v19];

          [v11 addObject:v15];
        }

        if (v13 != 33 && v96)
        {
          v83 = v97;
          *a3 = v96;
          a3[1] = v83;

          v21 = 0;
LABEL_125:

          goto LABEL_126;
        }

        [v10 setPowerAdjustCapability:v11];
      }

      else
      {
        [v9 setPowerAdjustCapability:0];
      }

      if ((v124 & 1) == 0)
      {
LABEL_132:
        sub_238EA195C();
      }

      v84 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v123];
      [v10 setCause:v84];
    }

    else
    {
      v10 = 0;
    }

    v10 = v10;
    v21 = v10;
    goto LABEL_125;
  }

  if (a1 != 6)
  {
    if (a1 != 7)
    {
      goto LABEL_34;
    }

    LOBYTE(v96) = 0;
    v23 = sub_238EA4D5C(a2, &v96);
    goto LABEL_29;
  }

  LOBYTE(v114) = 0;
  v126 = 0;
  v25 = sub_238F0E7BC(a2, &v114);
  *a3 = v25;
  a3[1] = v26;
  if (v25)
  {
    goto LABEL_33;
  }

  if ((v126 & 1) == 0)
  {
    v29 = 0;
LABEL_116:
    v82 = v29;
    v21 = v82;
    goto LABEL_117;
  }

  v87 = objc_opt_new();
  if (v126 != 1)
  {
    goto LABEL_131;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v114];
  [v87 setForecastID:v27];

  if (v126 != 1)
  {
    goto LABEL_131;
  }

  if (v116)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v115];
    [v87 setActiveSlotNumber:v28];
  }

  else
  {
    [v87 setActiveSlotNumber:0];
  }

  if (v126 != 1)
  {
    goto LABEL_131;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v117];
  [v87 setStartTime:v30];

  if (v126 != 1)
  {
    goto LABEL_131;
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v118];
  [v87 setEndTime:v31];

  if (v126 != 1)
  {
    goto LABEL_131;
  }

  if (v119[0] == 1 && (sub_2392C83B0(v119, v32)[4] & 1) != 0)
  {
    if (v126 != 1)
    {
      goto LABEL_131;
    }

    v34 = MEMORY[0x277CCABB0];
    v35 = sub_2392C83B0(v119, v33);
    if (v35[4] != 1)
    {
      goto LABEL_131;
    }

    v36 = [v34 numberWithUnsignedInt:*v35];
    [v87 setEarliestStartTime:v36];
  }

  else
  {
    [v87 setEarliestStartTime:{0, v87}];
  }

  if (v126 != 1)
  {
    goto LABEL_131;
  }

  if (v120[0] == 1)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238F41E94(v120, v37)}];
    [v87 setLatestEndTime:v38];
  }

  else
  {
    [v87 setLatestEndTime:0];
  }

  if (v126 != 1)
  {
LABEL_131:
    sub_238EA195C();
  }

  v39 = [MEMORY[0x277CCABB0] numberWithBool:v120[8]];
  [v87 setIsPausable:v39];

  v40 = objc_opt_new();
  if ((v126 & 1) == 0)
  {
    sub_238EA195C();
  }

  sub_2392C8534(&v96, &v121);
  while (1)
  {
    if (!sub_238EA1A80(&v96) || !sub_2392C85AC(&v96))
    {
      if (v96 != 33 && v96)
      {
        v80 = v97;
        *a3 = v96;
        a3[1] = v80;
        goto LABEL_130;
      }

      [v87 setSlots:{v40, v87}];

      if (v126)
      {
        v81 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v125];
        [v88 setForecastUpdateReason:v81];

        v29 = v88;
        goto LABEL_116;
      }

      goto LABEL_131;
    }

    v41 = objc_opt_new();
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v99];
    [v41 setMinDuration:v42];

    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v99)];
    [v41 setMaxDuration:v43];

    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v100];
    [v41 setDefaultDuration:v44];

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v100)];
    [v41 setElapsedSlotTime:v45];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v101];
    [v41 setRemainingSlotTime:v46];

    if (BYTE4(v101) == 1)
    {
      v48 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(&v101 + 4, v47)->super.isa)}];
      [v41 setSlotIsPausable:v48];
    }

    else
    {
      [v41 setSlotIsPausable:0];
    }

    if (v102[0] == 1)
    {
      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v102, v49)}];
      [v41 setMinPauseDuration:v50];
    }

    else
    {
      [v41 setMinPauseDuration:0];
    }

    if (v103[0] == 1)
    {
      v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v103, v51)}];
      [v41 setMaxPauseDuration:v52];
    }

    else
    {
      [v41 setMaxPauseDuration:0];
    }

    if (v104[0] == 1)
    {
      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v104, v53)->super.isa)}];
      [v41 setManufacturerESAState:v54];
    }

    else
    {
      [v41 setManufacturerESAState:0];
    }

    if (v105[0] == 1)
    {
      v56 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(v105, v55)}];
      [v41 setNominalPower:v56];
    }

    else
    {
      [v41 setNominalPower:0];
    }

    if (v106[0] == 1)
    {
      v58 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(v106, v57)}];
      [v41 setMinPower:v58];
    }

    else
    {
      [v41 setMinPower:0];
    }

    if (v107[0] == 1)
    {
      v60 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(v107, v59)}];
      [v41 setMaxPower:v60];
    }

    else
    {
      [v41 setMaxPower:0];
    }

    if (v108[0] == 1)
    {
      v62 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(v108, v61)}];
      [v41 setNominalEnergy:v62];
    }

    else
    {
      [v41 setNominalEnergy:0];
    }

    if (v109[0] != 1)
    {
      [v41 setCosts:0];
      goto LABEL_98;
    }

    v63 = objc_opt_new();
    v65 = sub_238DE36B8(v109, v64);
    sub_2393C5AAC(v91);
    v89 = 0;
    v90 = 0;
    sub_2393C5BDC(v91, v65);
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95[0] = 0;
    while (sub_238EA1A80(&v89) && sub_2392C8630(&v89))
    {
      v66 = objc_opt_new();
      v67 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v92];
      [v66 setCostType:v67];

      v68 = [MEMORY[0x277CCABB0] numberWithInt:v93];
      [v66 setValue:v68];

      v69 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v94];
      [v66 setDecimalPoints:v69];

      if (v95[0] == 1)
      {
        v71 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v95, v70)->super.isa)}];
        [v66 setCurrency:v71];
      }

      else
      {
        [v66 setCurrency:0];
      }

      [v63 addObject:{v66, v87}];
    }

    if (v89 != 33 && v89)
    {
      break;
    }

    [v41 setCosts:{v63, v87}];

LABEL_98:
    if (v110[0] == 1)
    {
      v73 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(v110, v72)}];
      [v41 setMinPowerAdjustment:v73];
    }

    else
    {
      [v41 setMinPowerAdjustment:0];
    }

    if (v111[0] == 1)
    {
      v75 = [MEMORY[0x277CCABB0] numberWithLongLong:{*sub_238DE36B8(v111, v74)}];
      [v41 setMaxPowerAdjustment:v75];
    }

    else
    {
      [v41 setMaxPowerAdjustment:0];
    }

    if (v112[0] == 1)
    {
      v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v112, v76)}];
      [v41 setMinDurationAdjustment:v77];
    }

    else
    {
      [v41 setMinDurationAdjustment:0];
    }

    if (v113[0] == 1)
    {
      v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*sub_238DE3698(v113, v78)}];
      [v41 setMaxDurationAdjustment:v79];
    }

    else
    {
      [v41 setMaxDurationAdjustment:0];
    }

    [v40 addObject:{v41, v87}];
  }

  v86 = v90;
  *a3 = v89;
  a3[1] = v86;

LABEL_130:
  v21 = 0;
  v82 = v87;
LABEL_117:

LABEL_126:

  return v21;
}

id sub_2392AF6D0(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 47)
  {
    switch(a1)
    {
      case 0:
        LOWORD(v22) = 0;
        v13 = sub_238F161A0(a2, &v22);
        goto LABEL_24;
      case 1:
        LOBYTE(v22) = 0;
        v15 = sub_238F01014(a2, &v22);
        goto LABEL_29;
      case 2:
        LOBYTE(v22) = 0;
        v15 = sub_238F16258(a2, &v22);
LABEL_29:
        *a3 = v15;
        a3[1] = v16;
        if (!v15)
        {
          goto LABEL_30;
        }

        goto LABEL_36;
      case 3:
      case 4:
      case 35:
      case 36:
        goto LABEL_7;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        v22 = 0;
        v4 = sub_2393C5DA0(a2, &v22);
        v5 = 0;
        *a3 = v4;
        a3[1] = v6;
        if (!v4)
        {
          goto LABEL_21;
        }

        goto LABEL_37;
      case 10:
        LODWORD(v22) = 0;
        v17 = sub_2393C5FC8(a2, &v22);
        *a3 = v17;
        a3[1] = v18;
        if (!v17)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      case 37:
        goto LABEL_19;
      case 38:
        goto LABEL_22;
      case 39:
        LOBYTE(v22) = 0;
        BYTE2(v22) = 0;
        v19 = sub_238EFD714(a2, &v22);
        *a3 = v19;
        a3[1] = v20;
        if (v19 || BYTE2(v22) != 1)
        {
          goto LABEL_36;
        }

        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22];
        goto LABEL_37;
      default:
        goto LABEL_40;
    }
  }

  if (a1 > 63)
  {
    if (a1 <= 65)
    {
LABEL_7:
      LOBYTE(v22) = 0;
      BYTE4(v22) = 0;
      v7 = sub_238EFDEB0(a2, &v22);
      *a3 = v7;
      a3[1] = v8;
      if (!v7 && BYTE4(v22) == 1)
      {
LABEL_32:
        v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v22];
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (a1 == 66 || a1 == 67)
    {
LABEL_19:
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v11 = sub_238F0C244(a2, &v22);
      *a3 = v11;
      a3[1] = v12;
      if (!v11 && v23 == 1)
      {
LABEL_21:
        v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_40:
    v5 = 0;
    *a3 = 0x24F2000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_37;
  }

  if (a1 == 48)
  {
LABEL_22:
    LOWORD(v22) = 0;
    v13 = sub_238F00228(a2, &v22);
LABEL_24:
    *a3 = v13;
    a3[1] = v14;
    if (!v13 && BYTE1(v22) == 1)
    {
LABEL_30:
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v22];
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (a1 == 49)
  {
    goto LABEL_19;
  }

  if (a1 != 50)
  {
    goto LABEL_40;
  }

  LOBYTE(v22) = 0;
  v24 = 0;
  v9 = sub_238F0BA3C(a2, &v22);
  *a3 = v9;
  a3[1] = v10;
  if (v9 || v24 != 1)
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  v5 = sub_2392C6E08(v22, v23);
  if (!v5)
  {
    *a3 = xmmword_278A74AF8;
  }

LABEL_37:

  return v5;
}

id sub_2392AF978(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
LABEL_5:
        LOBYTE(v32) = 0;
        v5 = sub_2393C5ED0(a2, &v32);
        *a3 = v5;
        a3[1] = v6;
        if (!v5)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v32];
          goto LABEL_43;
        }

LABEL_42:
        v7 = 0;
        goto LABEL_43;
      }

LABEL_9:
      v7 = 0;
      *a3 = 0x2579000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_43;
    }

    sub_2393C5AAC(v37);
    sub_2393C5ADC(v37, 0, 0);
    v22 = sub_238F36BB4(v37, a2);
    v7 = 0;
    *a3 = v22;
    a3[1] = v23;
    if (v22)
    {
      goto LABEL_43;
    }

    v7 = objc_opt_new();
    sub_2393C5AAC(v34);
    v32 = 0;
    v33 = 0;
    sub_2393C5BDC(v34, v37);
    v35[0] = 0;
    v36[0] = 0;
    while (sub_238EA1A80(&v32) && sub_2392C7EAC(&v32))
    {
      v16 = objc_opt_new();
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v35[0]];
      [v16 setStep:v24];

      if (v36[0] == 1)
      {
        v26 = sub_238DE36B8(v36, v25);
        v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v26 length:v26[1] encoding:4];
        [v16 setLabel:v27];

        v28 = [v16 label];

        if (!v28)
        {
          v30 = &xmmword_278A74B08;
LABEL_40:
          *a3 = *v30;

          goto LABEL_41;
        }
      }

      else
      {
        [v16 setLabel:0];
      }

      [v7 addObject:{v16, v32}];
    }

LABEL_35:
    if (v32 == 33)
    {
      goto LABEL_43;
    }

LABEL_38:
    if (!v32)
    {
      goto LABEL_43;
    }

    v29 = v33;
    *a3 = v32;
    a3[1] = v29;
LABEL_41:

    goto LABEL_42;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    sub_2393C5AAC(v37);
    sub_2393C5ADC(v37, 0, 0);
    v14 = sub_238F36BB4(v37, a2);
    v7 = 0;
    *a3 = v14;
    a3[1] = v15;
    if (v14)
    {
      goto LABEL_43;
    }

    v7 = objc_opt_new();
    sub_2393C5AAC(v34);
    v32 = 0;
    v33 = 0;
    sub_2393C5BDC(v34, v37);
    v35[0] = 0;
    v36[0] = 0;
    while (sub_238EA1A80(&v32) && sub_2392C7EAC(&v32))
    {
      v16 = objc_opt_new();
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v35[0]];
      [v16 setStep:v17];

      if (v36[0] == 1)
      {
        v19 = sub_238DE36B8(v36, v18);
        v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v19 length:v19[1] encoding:4];
        [v16 setLabel:v20];

        v21 = [v16 label];

        if (!v21)
        {
          v30 = &xmmword_278A74B18;
          goto LABEL_40;
        }
      }

      else
      {
        [v16 setLabel:0];
      }

      [v7 addObject:{v16, v32}];
    }

    goto LABEL_35;
  }

  sub_2393C5AAC(v37);
  sub_2393C5ADC(v37, 0, 0);
  v8 = sub_238F36BB4(v37, a2);
  v7 = 0;
  *a3 = v8;
  a3[1] = v9;
  if (!v8)
  {
    v7 = objc_opt_new();
    sub_2393C5AAC(v34);
    v32 = 0;
    v33 = 0;
    sub_2393C5BDC(v34, v37);
    while (1)
    {
      v10 = sub_238EA1A80(&v32);
      LODWORD(v11) = v32;
      if (v32)
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      v35[0] = 0;
      v11 = sub_238EA4D5C(v34, v35);
      v32 = v11;
      v33 = v12;
      if (v11)
      {
        break;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v35[0]];
      [v7 addObject:v13];
    }

    if (v11 != 33)
    {
      goto LABEL_38;
    }
  }

LABEL_43:

  return v7;
}

id sub_2392AFE60(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    sub_2393C5AAC(v18);
    sub_2393C5ADC(v18, 0, 0);
    v9 = sub_238F36BB4(v18, a2);
    v6 = 0;
    *a3 = v9;
    a3[1] = v10;
    if (v9)
    {
      goto LABEL_15;
    }

    v6 = objc_opt_new();
    sub_2393C5AAC(v16);
    v14 = 0;
    v15 = 0;
    sub_2393C5BDC(v16, v18);
    while (sub_238DD5C4C(&v14))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
      [v6 addObject:v11];
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0;
      *a3 = 0x25BA000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_15;
    }

    sub_2393C5AAC(v18);
    sub_2393C5ADC(v18, 0, 0);
    v5 = sub_238F36BB4(v18, a2);
    v6 = 0;
    *a3 = v5;
    a3[1] = v7;
    if (v5)
    {
      goto LABEL_15;
    }

    v6 = objc_opt_new();
    sub_2393C5AAC(v16);
    v14 = 0;
    v15 = 0;
    sub_2393C5BDC(v16, v18);
    while (sub_238DD5C4C(&v14))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
      [v6 addObject:v8];
    }
  }

  if (v14 != 33 && v14)
  {
    v12 = v15;
    *a3 = v14;
    a3[1] = v12;

    v6 = 0;
  }

LABEL_15:

  return v6;
}

id sub_2392B0070(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v29[0]) = 0;
    v19 = sub_2393C5ED0(a2, v29);
    *a3 = v19;
    a3[1] = v20;
    if (v19)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v29[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x2609000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v32);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v32, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v29, v32);
      while (sub_238EA1A80(v29) && sub_2392C7F5C(v29))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v29[11] length:v29[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A74B28;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v30];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v26);
        v24 = 0;
        v25 = 0;
        sub_2393C5BDC(v26, &v31);
        v27[0] = 0;
        v28 = 0;
        while (sub_238EA1A80(&v24) && sub_2392C8000(&v24))
        {
          v14 = objc_opt_new();
          v16 = v14;
          if (v27[0] == 1)
          {
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v27, v15)->super.isa)}];
            [v16 setMfgCode:v17];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v28];
          [v16 setValue:v18];

          [v13 addObject:v16];
        }

        if (v24 != 33 && v24)
        {
          v22 = v25;
          *a3 = v24;
          a3[1] = v22;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v29[0]) != 33 && LODWORD(v29[0]))
      {
        v21 = v29[1];
        *a3 = v29[0];
        a3[1] = v21;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392B03F8(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v29[0]) = 0;
    v19 = sub_2393C5ED0(a2, v29);
    *a3 = v19;
    a3[1] = v20;
    if (v19)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v29[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x2658000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v32);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v32, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v29, v32);
      while (sub_238EA1A80(v29) && sub_2392C7F5C(v29))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v29[11] length:v29[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A74B38;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v30];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v26);
        v24 = 0;
        v25 = 0;
        sub_2393C5BDC(v26, &v31);
        v27[0] = 0;
        v28 = 0;
        while (sub_238EA1A80(&v24) && sub_2392C8000(&v24))
        {
          v14 = objc_opt_new();
          v16 = v14;
          if (v27[0] == 1)
          {
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v27, v15)->super.isa)}];
            [v16 setMfgCode:v17];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v28];
          [v16 setValue:v18];

          [v13 addObject:v16];
        }

        if (v24 != 33 && v24)
        {
          v22 = v25;
          *a3 = v24;
          a3[1] = v22;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v29[0]) != 33 && LODWORD(v29[0]))
      {
        v21 = v29[1];
        *a3 = v29[0];
        a3[1] = v21;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

id sub_2392B0780(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 1)
  {
    LOBYTE(v29[0]) = 0;
    v19 = sub_2393C5ED0(a2, v29);
    *a3 = v19;
    a3[1] = v20;
    if (v19)
    {
LABEL_28:
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:LOBYTE(v29[0])];
    }
  }

  else if (a1)
  {
    v7 = 0;
    *a3 = 0x26A7000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    sub_2393C5AAC(v32);
    sub_2393C5ADC(v5, 0, 0);
    v6 = sub_238F36BB4(v32, a2);
    v7 = 0;
    *a3 = v6;
    a3[1] = v8;
    if (!v6)
    {
      v7 = objc_opt_new();
      sub_2392C7EFC(v29, v32);
      while (sub_238EA1A80(v29) && sub_2392C7F5C(v29))
      {
        v9 = objc_opt_new();
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v29[11] length:v29[12] encoding:4];
        [v9 setLabel:v10];

        v11 = [v9 label];

        if (!v11)
        {
          *a3 = xmmword_278A74B48;
          goto LABEL_26;
        }

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v30];
        [v9 setMode:v12];

        v13 = objc_opt_new();
        sub_2393C5AAC(v26);
        v24 = 0;
        v25 = 0;
        sub_2393C5BDC(v26, &v31);
        v27[0] = 0;
        v28 = 0;
        while (sub_238EA1A80(&v24) && sub_2392C8000(&v24))
        {
          v14 = objc_opt_new();
          v16 = v14;
          if (v27[0] == 1)
          {
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(v27, v15)->super.isa)}];
            [v16 setMfgCode:v17];
          }

          else
          {
            [v14 setMfgCode:0];
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v28];
          [v16 setValue:v18];

          [v13 addObject:v16];
        }

        if (v24 != 33 && v24)
        {
          v22 = v25;
          *a3 = v24;
          a3[1] = v22;

LABEL_26:
LABEL_27:

          goto LABEL_28;
        }

        [v9 setModeTags:v13];

        [v7 addObject:v9];
      }

      if (LODWORD(v29[0]) != 33 && LODWORD(v29[0]))
      {
        v21 = v29[1];
        *a3 = v29[0];
        a3[1] = v21;
        goto LABEL_27;
      }
    }
  }

  return v7;
}

MTRElectricalGridConditionsClusterElectricalGridConditionsStruct *sub_2392B0B08(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      if (a1)
      {
        v7 = 0;
        *a3 = 0x2700000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_28;
      }

      LOWORD(v30) = 0;
      v5 = sub_238F076A4(a2, &v30);
      *a3 = v5;
      a3[1] = v6;
      if (!v5 && BYTE1(v30) == 1)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithBool:v30];
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    LOBYTE(v30) = 0;
    v34 = 0;
    v8 = sub_238F154C4(a2, &v30);
    *a3 = v8;
    a3[1] = v9;
    if (!v8 && (v34 & 1) != 0)
    {
      v7 = objc_opt_new();
      if (v34 != 1)
      {
        goto LABEL_37;
      }

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30];
      [v7 setPeriodStart:v10];

      if (v34 != 1)
      {
        goto LABEL_37;
      }

      if (v31)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v30)];
        [v7 setPeriodEnd:v11];
      }

      else
      {
        [v7 setPeriodEnd:0];
      }

      if (v34 != 1 || ([MEMORY[0x277CCABB0] numberWithShort:SWORD2(v31)], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setGridCarbonIntensity:", v26), v26, v34 != 1) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedChar:", BYTE6(v31)), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setGridCarbonLevel:", v27), v27, v34 != 1) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithShort:", v32), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setLocalCarbonIntensity:", v28), v28, (v34 & 1) == 0))
      {
LABEL_37:
        sub_238EA195C();
      }

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v33];
      [v7 setLocalCarbonLevel:v29];

      goto LABEL_28;
    }

LABEL_27:
    v7 = 0;
    goto LABEL_28;
  }

  sub_2393C5AAC(v36);
  sub_2393C5ADC(v36, 0, 0);
  v12 = sub_238F36BB4(v36, a2);
  v7 = 0;
  *a3 = v12;
  a3[1] = v13;
  if (!v12)
  {
    v7 = objc_opt_new();
    sub_2392C8684(&v30, v36);
    while (1)
    {
      v14 = sub_238EA1A80(&v30);
      LODWORD(v15) = v30;
      if (v30)
      {
        v14 = 0;
      }

      if (!v14)
      {
        break;
      }

      memset(v35, 0, 19);
      v15 = sub_238F15778(v35, &v32);
      v30 = v15;
      v31 = v16;
      if (v15)
      {
        break;
      }

      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v35[0]];
      [v17 setPeriodStart:v18];

      if (v35[2])
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v35[1]];
        [v17 setPeriodEnd:v19];
      }

      else
      {
        [v17 setPeriodEnd:0];
      }

      v20 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(v35[3])];
      [v17 setGridCarbonIntensity:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v35[3])];
      [v17 setGridCarbonLevel:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(v35[4])];
      [v17 setLocalCarbonIntensity:v22];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v35[4])];
      [v17 setLocalCarbonLevel:v23];

      [v7 addObject:v17];
    }

    if (v15 != 33 && v30)
    {
      v24 = v31;
      *a3 = v30;
      a3[1] = v24;

      goto LABEL_27;
    }
  }

LABEL_28:

  return v7;
}

id sub_2392B0F7C(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 127)
  {
    switch(a1)
    {
      case 0:
        LOWORD(v39) = 0;
        v32 = sub_238F10BDC(a2, &v39);
        goto LABEL_68;
      case 1:
        LOBYTE(v39) = 0;
        v5 = sub_238F07BEC(a2, &v39);
        goto LABEL_4;
      case 2:
      case 40:
      case 41:
      case 42:
      case 43:
      case 50:
      case 51:
        LOBYTE(v39) = 0;
        v10 = sub_2393C5CE4(a2, &v39);
        *a3 = v10;
        a3[1] = v11;
        if (v10)
        {
          goto LABEL_70;
        }

        v7 = [MEMORY[0x277CCABB0] numberWithBool:v39];
        goto LABEL_58;
      case 3:
        LOWORD(v39) = 0;
        v32 = sub_238F10C94(a2, &v39);
LABEL_68:
        *a3 = v32;
        a3[1] = v33;
        if (v32 || BYTE1(v39) != 1)
        {
          goto LABEL_70;
        }

        goto LABEL_5;
      case 4:
      case 5:
      case 35:
        LODWORD(v39) = 0;
        v12 = sub_2393C5FC8(a2, &v39);
        *a3 = v12;
        a3[1] = v13;
        if (v12)
        {
          goto LABEL_70;
        }

        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v39];
        goto LABEL_58;
      case 6:
      case 17:
      case 18:
      case 19:
      case 53:
        goto LABEL_18;
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 28:
      case 34:
      case 36:
      case 48:
      case 49:
        goto LABEL_3;
      case 27:
      case 44:
        LOBYTE(v39) = 0;
        v5 = sub_238EA4DB4(a2, &v39);
        goto LABEL_4;
      case 33:
        v39 = 0uLL;
        v35 = sub_2393C61E0(a2, &v39);
        v16 = 0;
        *a3 = v35;
        a3[1] = v36;
        if (!v35)
        {
          v37 = sub_2392C6E08(v39, *(&v39 + 1));
          v16 = v37;
          if (v37)
          {
            v38 = v37;
          }

          else
          {
            *a3 = xmmword_278A74B58;
          }
        }

        goto LABEL_71;
      case 37:
        LOBYTE(v39) = 0;
        v5 = sub_238F000A4(a2, &v39);
        goto LABEL_4;
      case 38:
      case 39:
        LOWORD(v39) = 0;
        v8 = sub_238F36E54(a2, &v39);
        goto LABEL_19;
      default:
        goto LABEL_77;
    }
  }

  if (a1 > 323551231)
  {
    if (a1 > 323551235)
    {
      if (a1 > 323551237)
      {
        if (a1 != 323551238)
        {
          if (a1 != 323551239 && a1 != 323551240)
          {
            goto LABEL_77;
          }

          goto LABEL_18;
        }

LABEL_3:
        LOBYTE(v39) = 0;
        v5 = sub_2393C5ED0(a2, &v39);
LABEL_4:
        *a3 = v5;
        a3[1] = v6;
        if (!v5)
        {
LABEL_5:
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v39];
LABEL_58:
          v16 = v7;
          goto LABEL_71;
        }

LABEL_70:
        v16 = 0;
        goto LABEL_71;
      }

      if (a1 != 323551236)
      {
        sub_2392C77A0(v43);
        v18 = sub_238F36BB4(v43, a2);
        *a3 = v18;
        a3[1] = v19;
        if (v18)
        {
          goto LABEL_70;
        }

        v16 = objc_opt_new();
        sub_2392C76E0(v43, &v39);
        while (sub_238EA1A80(&v39) && sub_238EA49F4(&v39))
        {
          v20 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v42];
          [v16 addObject:v20];
        }

        goto LABEL_59;
      }

      goto LABEL_41;
    }

    if (a1 <= 323551233)
    {
LABEL_41:
      LOBYTE(v39) = 0;
      v40 = 0;
      v21 = sub_238F10D4C(a2, &v39);
      *a3 = v21;
      a3[1] = v22;
      if (v21 || v40 != 1)
      {
        goto LABEL_70;
      }

LABEL_57:
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:?];
      goto LABEL_58;
    }

    if (a1 != 323551234)
    {
      sub_2392C77A0(v43);
      v26 = sub_238F36BB4(v43, a2);
      *a3 = v26;
      a3[1] = v27;
      if (v26)
      {
        goto LABEL_70;
      }

      v16 = objc_opt_new();
      sub_2392C76E0(v43, &v39);
      while (sub_238EA1A80(&v39) && sub_238EA49F4(&v39))
      {
        v28 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v42];
        [v16 addObject:v28];
      }

      goto LABEL_59;
    }

LABEL_56:
    v39 = 0uLL;
    v29 = sub_238EFEA98(a2, &v39);
    v16 = 0;
    *a3 = v29;
    a3[1] = v30;
    if (v29)
    {
      goto LABEL_71;
    }

    goto LABEL_57;
  }

  if (a1 <= 131)
  {
    if (a1 <= 129)
    {
      goto LABEL_41;
    }

    if (a1 != 130)
    {
      sub_2392C77A0(v43);
      v23 = sub_238F36BB4(v43, a2);
      *a3 = v23;
      a3[1] = v24;
      if (v23)
      {
        goto LABEL_70;
      }

      v16 = objc_opt_new();
      sub_2392C76E0(v43, &v39);
      while (sub_238EA1A80(&v39) && sub_238EA49F4(&v39))
      {
        v25 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v42];
        [v16 addObject:v25];
      }

      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (a1 > 133)
  {
    if (a1 != 134)
    {
      if (a1 != 135 && a1 != 136)
      {
LABEL_77:
        v16 = 0;
        *a3 = 0x29C0000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_71;
      }

LABEL_18:
      LOWORD(v39) = 0;
      v8 = sub_2393C5F70(a2, &v39);
LABEL_19:
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v39];
        goto LABEL_58;
      }

      goto LABEL_70;
    }

    goto LABEL_3;
  }

  if (a1 == 132)
  {
    goto LABEL_41;
  }

  sub_2392C77A0(v43);
  v14 = sub_238F36BB4(v43, a2);
  *a3 = v14;
  a3[1] = v15;
  if (v14)
  {
    goto LABEL_70;
  }

  v16 = objc_opt_new();
  sub_2392C76E0(v43, &v39);
  while (sub_238EA1A80(&v39) && sub_238EA49F4(&v39))
  {
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v42];
    [v16 addObject:v17];
  }

LABEL_59:
  if (v39 != 33 && v39)
  {
    v31 = *(&v39 + 1);
    *a3 = v39;
    a3[1] = v31;

    goto LABEL_70;
  }

LABEL_71:

  return v16;
}

id sub_2392B1608(int a1, uint64_t a2, unint64_t *a3)
{
  switch(a1)
  {
    case 0:
      LOBYTE(v14) = 0;
      v11 = sub_238F34384(a2, &v14);
      goto LABEL_16;
    case 1:
    case 2:
    case 5:
    case 6:
    case 16:
    case 17:
    case 18:
    case 19:
      v14 = 0;
      v4 = sub_2393C5F70(a2, &v14);
      goto LABEL_3;
    case 3:
    case 4:
    case 11:
    case 12:
    case 14:
    case 15:
      LOBYTE(v14) = 0;
      v15 = 0;
      v6 = sub_238EFD714(a2, &v14);
      *a3 = v6;
      a3[1] = v7;
      if (!v6 && v15 == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    case 7:
    case 10:
    case 23:
      LOBYTE(v14) = 0;
      v11 = sub_238EA4DB4(a2, &v14);
      goto LABEL_16;
    case 8:
    case 9:
      v14 = 0;
      v9 = sub_238F00228(a2, &v14);
      *a3 = v9;
      a3[1] = v10;
      if (!v9 && HIBYTE(v14) == 1)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    case 13:
      LOBYTE(v14) = 0;
      v11 = sub_238F343E0(a2, &v14);
LABEL_16:
      *a3 = v11;
      a3[1] = v12;
      if (v11)
      {
        goto LABEL_17;
      }

LABEL_10:
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
      break;
    case 26:
      v14 = 0;
      v4 = sub_238F36E54(a2, &v14);
LABEL_3:
      *a3 = v4;
      a3[1] = v5;
      if (v4)
      {
LABEL_17:
        v8 = 0;
      }

      else
      {
LABEL_7:
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v14];
      }

      break;
    default:
      v8 = 0;
      *a3 = 0x2ADF000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v8;
}

MTRClosureControlClusterOverallTargetStateStruct *sub_2392B17A8(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 != 4)
      {
        if (a1 != 5)
        {
          goto LABEL_27;
        }

        LOBYTE(v47) = 0;
        v12 = sub_238EA4DB4(a2, &v47);
        goto LABEL_29;
      }

      LOBYTE(v47) = 0;
      LOBYTE(v48) = 0;
      v25 = sub_238F07260(a2, &v47);
      *a3 = v25;
      a3[1] = v26;
      if (v25 || (v48 & 1) == 0)
      {
        goto LABEL_43;
      }

      v6 = objc_opt_new();
      if (v48 == 1)
      {
        if (v47 == 1 && sub_2392C86E0(&v47, v27)[1] == 1)
        {
          if (v48 != 1)
          {
            goto LABEL_77;
          }

          v29 = MEMORY[0x277CCABB0];
          v30 = sub_2392C86E0(&v47, v28);
          if (v30[1] != 1)
          {
            goto LABEL_77;
          }

          v31 = [v29 numberWithUnsignedChar:*v30];
          [v6 setPosition:v31];
        }

        else
        {
          [v6 setPosition:0];
        }

        if (v48 != 1)
        {
          goto LABEL_77;
        }

        if (BYTE3(v47) == 1 && sub_2392C86E0(&v47 + 3, v32)[1] == 1)
        {
          if (v48 != 1)
          {
            goto LABEL_77;
          }

          v41 = MEMORY[0x277CCABB0];
          v42 = sub_2392C86E0(&v47 + 3, v40);
          if (v42[1] != 1)
          {
            goto LABEL_77;
          }

          v43 = [v41 numberWithBool:*v42];
          [v6 setLatch:v43];
        }

        else
        {
          [v6 setLatch:0];
        }

        if (v48)
        {
          if (BYTE6(v47) != 1)
          {
            [v6 setSpeed:0];
            goto LABEL_44;
          }

          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_2392C86E0(&v47 + 6, v44)}];
          [v6 setSpeed:v46];
          goto LABEL_73;
        }
      }

LABEL_77:
      sub_238EA195C();
    }

    LOBYTE(v47) = 0;
    BYTE2(v48) = 0;
    v17 = sub_238F071C8(a2, &v47);
    *a3 = v17;
    a3[1] = v18;
    if (v17 || (v48 & 0x10000) == 0)
    {
      goto LABEL_43;
    }

    v6 = objc_opt_new();
    if (BYTE2(v48) == 1)
    {
      if (v47 == 1 && sub_2392C86E0(&v47, v19)[1] == 1)
      {
        if (BYTE2(v48) != 1)
        {
          goto LABEL_76;
        }

        v21 = MEMORY[0x277CCABB0];
        v22 = sub_2392C86E0(&v47, v20);
        if (v22[1] != 1)
        {
          goto LABEL_76;
        }

        v23 = [v21 numberWithUnsignedChar:*v22];
        [v6 setPosition:v23];
      }

      else
      {
        [v6 setPosition:0];
      }

      if (BYTE2(v48) != 1)
      {
        goto LABEL_76;
      }

      if (BYTE3(v47) == 1 && sub_2392C86E0(&v47 + 3, v24)[1] == 1)
      {
        if (BYTE2(v48) != 1)
        {
          goto LABEL_76;
        }

        v36 = MEMORY[0x277CCABB0];
        v37 = sub_2392C86E0(&v47 + 3, v35);
        if (v37[1] != 1)
        {
          goto LABEL_76;
        }

        v38 = [v36 numberWithBool:*v37];
        [v6 setLatch:v38];
      }

      else
      {
        [v6 setLatch:0];
      }

      if (BYTE2(v48) == 1)
      {
        if (BYTE6(v47) == 1)
        {
          v45 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_2392C86E0(&v47 + 6, v39)}];
          [v6 setSpeed:v45];
        }

        else
        {
          [v6 setSpeed:0];
        }

        if ((v48 & 0x10000) != 0)
        {
          if ((v48 & 0x100) == 0)
          {
            [v6 setSecureState:0];
            goto LABEL_44;
          }

          v46 = [MEMORY[0x277CCABB0] numberWithBool:v48];
          [v6 setSecureState:v46];
LABEL_73:

          goto LABEL_44;
        }
      }
    }

LABEL_76:
    sub_238EA195C();
  }

  if (!a1)
  {
    LOBYTE(v47) = 0;
    BYTE4(v47) = 0;
    v14 = sub_238EFDEB0(a2, &v47);
    *a3 = v14;
    a3[1] = v15;
    if (v14 || BYTE4(v47) != 1)
    {
      goto LABEL_43;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v47];
    goto LABEL_31;
  }

  if (a1 == 1)
  {
    LOBYTE(v47) = 0;
    v12 = sub_238F056F8(a2, &v47);
LABEL_29:
    *a3 = v12;
    a3[1] = v13;
    if (v12)
    {
LABEL_43:
      v6 = 0;
      goto LABEL_44;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v47];
LABEL_31:
    v6 = v16;
    goto LABEL_44;
  }

  if (a1 != 2)
  {
LABEL_27:
    v6 = 0;
    *a3 = 0x2B7C000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_44;
  }

  sub_2393C5AAC(v51);
  sub_2393C5ADC(v51, 0, 0);
  v5 = sub_238F36BB4(v51, a2);
  v6 = 0;
  *a3 = v5;
  a3[1] = v7;
  if (!v5)
  {
    v6 = objc_opt_new();
    sub_2393C5AAC(v49);
    v47 = 0;
    v48 = 0;
    sub_2393C5BDC(v49, v51);
    while (1)
    {
      v8 = sub_238EA1A80(&v47);
      LODWORD(v9) = v47;
      if (v47)
      {
        v8 = 0;
      }

      if (!v8)
      {
        break;
      }

      v50[0] = 0;
      v9 = sub_238F000A4(v49, v50);
      v47 = v9;
      v48 = v10;
      if (v9)
      {
        break;
      }

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v50[0]];
      [v6 addObject:v11];
    }

    if (v9 != 33 && v47)
    {
      v33 = v48;
      *a3 = v47;
      a3[1] = v33;

      goto LABEL_43;
    }
  }

LABEL_44:

  return v6;
}

void sub_2392B1D78(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

MTRClosureDimensionClusterRangePercent100thsStruct *sub_2392B1DD0(int a1, uint64_t a2, void *a3)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      if (a1 != 9)
      {
        if (a1 == 10)
        {
          LOBYTE(v43) = 0;
          v4 = sub_238F000A4(a2, &v43);
        }

        else
        {
          if (a1 != 11)
          {
LABEL_51:
            v8 = 0;
            *a3 = 0x2C4B000000B5;
            a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
            goto LABEL_52;
          }

          LOBYTE(v43) = 0;
          v4 = sub_238EA4DB4(a2, &v43);
        }

        goto LABEL_47;
      }
    }

    else
    {
      if (a1 == 6)
      {
        v43 = 0;
        v22 = sub_238F01D20(&v43, a2);
        *a3 = v22;
        a3[1] = v23;
        if (v22)
        {
          goto LABEL_48;
        }

        v8 = objc_opt_new();
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v43];
        [v8 setMin:v24];

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v43)];
        [v8 setMax:v10];
LABEL_34:

        goto LABEL_52;
      }

      if (a1 == 7)
      {
        LOBYTE(v43) = 0;
        v4 = sub_238F07BEC(a2, &v43);
        goto LABEL_47;
      }
    }

    LOBYTE(v43) = 0;
    v4 = sub_238F07C44(a2, &v43);
    goto LABEL_47;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      goto LABEL_22;
    }

    if (a1 != 4)
    {
      LOBYTE(v43) = 0;
      v44 = 0;
      v6 = sub_238F07B58(a2, &v43);
      *a3 = v6;
      a3[1] = v7;
      if (v6 || (v44 & 1) == 0)
      {
        goto LABEL_48;
      }

      v8 = objc_opt_new();
      if (v44 != 1 || ([MEMORY[0x277CCABB0] numberWithShort:v43], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "setMin:", v9), v9, (v44 & 1) == 0))
      {
        sub_238EA195C();
      }

      v10 = [MEMORY[0x277CCABB0] numberWithShort:SHIWORD(v43)];
      [v8 setMax:v10];
      goto LABEL_34;
    }

    LOBYTE(v43) = 0;
    v4 = sub_238EFF894(a2, &v43);
LABEL_47:
    *a3 = v4;
    a3[1] = v5;
    if (!v4)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v43];
      goto LABEL_50;
    }

LABEL_48:
    v8 = 0;
    goto LABEL_52;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        goto LABEL_51;
      }

LABEL_22:
      LOWORD(v43) = 0;
      v11 = sub_2393C5F70(a2, &v43);
      *a3 = v11;
      a3[1] = v12;
      if (!v11)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v43];
LABEL_50:
        v8 = v13;
        goto LABEL_52;
      }

      goto LABEL_48;
    }

    LOBYTE(v43) = 0;
    v47 = 0;
    v25 = sub_238F07AC0(a2, &v43);
    *a3 = v25;
    a3[1] = v26;
    if (v25 || (v47 & 1) == 0)
    {
      goto LABEL_48;
    }

    v8 = objc_opt_new();
    if (v47 == 1)
    {
      if (v43 == 1 && sub_2392C83D0(&v43, v27)[2] == 1)
      {
        if (v47 != 1)
        {
          goto LABEL_80;
        }

        v29 = MEMORY[0x277CCABB0];
        v30 = sub_2392C83D0(&v43, v28);
        if (v30[2] != 1)
        {
          goto LABEL_80;
        }

        v31 = [v29 numberWithUnsignedShort:*v30];
        [v8 setPosition:v31];
      }

      else
      {
        [v8 setPosition:0];
      }

      if (v47 != 1)
      {
        goto LABEL_80;
      }

      if (v45[0] == 1 && sub_2392C86E0(v45, v32)[1] == 1)
      {
        if (v47 != 1)
        {
          goto LABEL_80;
        }

        v40 = MEMORY[0x277CCABB0];
        v41 = sub_2392C86E0(v45, v39);
        if (v41[1] != 1)
        {
          goto LABEL_80;
        }

        v42 = [v40 numberWithBool:*v41];
        [v8 setLatch:v42];
      }

      else
      {
        [v8 setLatch:0];
      }

      if (v47)
      {
        if (v46[0] == 1)
        {
          goto LABEL_72;
        }

        goto LABEL_77;
      }
    }

LABEL_80:
    sub_238EA195C();
  }

  LOBYTE(v43) = 0;
  v47 = 0;
  v14 = sub_238F07AC0(a2, &v43);
  *a3 = v14;
  a3[1] = v15;
  if (v14 || (v47 & 1) == 0)
  {
    goto LABEL_48;
  }

  v8 = objc_opt_new();
  if (v47 != 1)
  {
    goto LABEL_79;
  }

  if (v43 == 1 && sub_2392C83D0(&v43, v16)[2] == 1)
  {
    if (v47 != 1)
    {
      goto LABEL_79;
    }

    v18 = MEMORY[0x277CCABB0];
    v19 = sub_2392C83D0(&v43, v17);
    if (v19[2] != 1)
    {
      goto LABEL_79;
    }

    v20 = [v18 numberWithUnsignedShort:*v19];
    [v8 setPosition:v20];
  }

  else
  {
    [v8 setPosition:0];
  }

  if (v47 != 1)
  {
    goto LABEL_79;
  }

  if (v45[0] == 1 && sub_2392C86E0(v45, v21)[1] == 1)
  {
    if (v47 == 1)
    {
      v35 = MEMORY[0x277CCABB0];
      v36 = sub_2392C86E0(v45, v34);
      if (v36[1] == 1)
      {
        v37 = [v35 numberWithBool:*v36];
        [v8 setLatch:v37];

        goto LABEL_70;
      }
    }

LABEL_79:
    sub_238EA195C();
  }

  [v8 setLatch:0];
LABEL_70:
  if ((v47 & 1) == 0)
  {
    goto LABEL_79;
  }

  if (v46[0] == 1)
  {
LABEL_72:
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{*sub_2392C86E0(v46, v38)}];
    [v8 setSpeed:v10];
    goto LABEL_34;
  }

LABEL_77:
  [v8 setSpeed:0];
LABEL_52:

  return v8;
}

void sub_2392B2400(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2392B2458(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          sub_2393C5AAC(v74);
          sub_2393C5ADC(v74, 0, 0);
          v5 = sub_238F36BB4(v74, a2);
          v6 = 0;
          *a3 = v5;
          a3[1] = v7;
          if (v5)
          {
            goto LABEL_79;
          }

          v6 = objc_opt_new();
          sub_2393C5AAC(v69);
          v67 = 0;
          v68 = 0;
          sub_2393C5BDC(v69, v74);
          while (sub_238E72E88(&v67))
          {
            v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v70];
            [v6 addObject:v8];
          }

          goto LABEL_70;
        }

LABEL_61:
        v6 = 0;
        *a3 = 0x2D20000000B5;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
        goto LABEL_79;
      }

      sub_2393C5AAC(v74);
      sub_2393C5ADC(v74, 0, 0);
      v57 = sub_238F36BB4(v74, a2);
      v6 = 0;
      *a3 = v57;
      a3[1] = v58;
      if (v57)
      {
        goto LABEL_79;
      }

      v6 = objc_opt_new();
      sub_2393C5AAC(v69);
      v67 = 0;
      v68 = 0;
      sub_2393C5BDC(v69, v74);
      LODWORD(v70) = 0;
      *(&v70 + 1) = 0;
      *&v71 = 0;
      while (1)
      {
        v59 = sub_238EA1A80(&v67);
        LODWORD(v29) = v67;
        if (v67)
        {
          v59 = 0;
        }

        if (!v59)
        {
          break;
        }

        v70 = 0uLL;
        *&v71 = 0;
        v29 = sub_238F28294(&v70, v69);
        v67 = v29;
        v68 = v60;
        if (v29)
        {
          break;
        }

        v61 = objc_opt_new();
        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v70];
        [v61 setMapID:v62];

        v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(&v70 + 1) length:v71 encoding:4];
        [v61 setName:v63];

        v64 = [v61 name];

        if (!v64)
        {
          *a3 = xmmword_278A74B78;

          goto LABEL_77;
        }

        [v6 addObject:v61];
      }
    }

    else
    {
      sub_2393C5AAC(v74);
      sub_2393C5ADC(v74, 0, 0);
      v26 = sub_238F36BB4(v74, a2);
      v6 = 0;
      *a3 = v26;
      a3[1] = v27;
      if (v26)
      {
        goto LABEL_79;
      }

      v6 = objc_opt_new();
      sub_2392C8700(&v67, v74);
      while (1)
      {
        v28 = sub_238EA1A80(&v67);
        LODWORD(v29) = v67;
        if (v67)
        {
          v28 = 0;
        }

        if (!v28)
        {
          break;
        }

        v73 = 0;
        v72 = 0u;
        v71 = 0u;
        v70 = 0u;
        v29 = sub_238F28170(&v70, v69);
        v67 = v29;
        v68 = v30;
        if (v29)
        {
          break;
        }

        v31 = objc_opt_new();
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v70];
        [v31 setAreaID:v32];

        if (BYTE8(v70))
        {
          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD1(v70)];
          [v31 setMapID:v33];
        }

        else
        {
          [v31 setMapID:0];
        }

        v34 = objc_opt_new();
        [v31 setAreaInfo:v34];

        if (BYTE8(v72))
        {
          v35 = objc_opt_new();
          v36 = [v31 areaInfo];
          [v36 setLocationInfo:v35];

          if ((BYTE8(v72) & 1) == 0)
          {
            goto LABEL_82;
          }

          v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v71 length:*(&v71 + 1) encoding:4];
          v38 = [v31 areaInfo];
          v39 = [v38 locationInfo];
          [v39 setLocationName:v37];

          v40 = [v31 areaInfo];
          v41 = [v40 locationInfo];
          v42 = [v41 locationName];

          if (!v42)
          {
            *a3 = xmmword_278A74B68;

            goto LABEL_77;
          }

          if (BYTE8(v72) != 1)
          {
            goto LABEL_82;
          }

          if (BYTE2(v72))
          {
            v43 = [MEMORY[0x277CCABB0] numberWithShort:v72];
            v44 = [v31 areaInfo];
            v45 = [v44 locationInfo];
            [v45 setFloorNumber:v43];
          }

          else
          {
            v43 = [v31 areaInfo];
            v44 = [v43 locationInfo];
            [v44 setFloorNumber:0];
          }

          if (BYTE8(v72) != 1)
          {
LABEL_82:
            sub_238EA195C();
          }

          if (BYTE5(v72))
          {
            v46 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v72)];
            v47 = [v31 areaInfo];
            v48 = [v47 locationInfo];
            [v48 setAreaType:v46];
          }

          else
          {
            v46 = [v31 areaInfo];
            v47 = [v46 locationInfo];
            [v47 setAreaType:0];
          }
        }

        else
        {
          v46 = [v31 areaInfo];
          [v46 setLocationInfo:0];
        }

        if ((v73 & 0x1000000) != 0)
        {
          v49 = objc_opt_new();
          v50 = [v31 areaInfo];
          [v50 setLandmarkInfo:v49];

          if (BYTE3(v73) != 1)
          {
            goto LABEL_82;
          }

          v51 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v73];
          v52 = [v31 areaInfo];
          v53 = [v52 landmarkInfo];
          [v53 setLandmarkTag:v51];

          if (BYTE3(v73) != 1)
          {
            goto LABEL_82;
          }

          if ((v73 & 0x10000) != 0)
          {
            v54 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v73)];
            v55 = [v31 areaInfo];
            v56 = [v55 landmarkInfo];
            [v56 setRelativePositionTag:v54];
          }

          else
          {
            v54 = [v31 areaInfo];
            v55 = [v54 landmarkInfo];
            [v55 setRelativePositionTag:0];
          }
        }

        else
        {
          v54 = [v31 areaInfo];
          [v54 setLandmarkInfo:0];
        }

        [v6 addObject:v31];
      }
    }

    if (v29 == 33)
    {
      goto LABEL_79;
    }

    goto LABEL_73;
  }

  if (a1 == 3 || a1 == 4)
  {
    LOBYTE(v67) = 0;
    BYTE4(v67) = 0;
    v24 = sub_238EFDEB0(a2, &v67);
    *a3 = v24;
    a3[1] = v25;
    if (!v24 && BYTE4(v67) == 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v67];
      goto LABEL_79;
    }

LABEL_78:
    v6 = 0;
    goto LABEL_79;
  }

  if (a1 != 5)
  {
    goto LABEL_61;
  }

  sub_2393C5AAC(v74);
  sub_2393C5ADC(v74, 0, 0);
  v9 = sub_238F36BB4(v74, a2);
  v6 = 0;
  *a3 = v9;
  a3[1] = v10;
  if (v9)
  {
    goto LABEL_79;
  }

  v6 = objc_opt_new();
  sub_2393C5AAC(v69);
  v67 = 0;
  v68 = 0;
  sub_2393C5BDC(v69, v74);
  LODWORD(v70) = 0;
  BYTE4(v70) = 0;
  BYTE8(v70) = 0;
  BYTE4(v71) = 0;
  while (sub_238EA1A80(&v67) && sub_2392C875C(&v67))
  {
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v70];
    [v11 setAreaID:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE4(v70)];
    [v11 setStatus:v13];

    if (BYTE8(v70) == 1 && (sub_238DE3698(&v70 + 8, v14)[4] & 1) != 0)
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = sub_238DE3698(&v70 + 8, v15);
      if ((v17[4] & 1) == 0)
      {
        goto LABEL_83;
      }

      v18 = [v16 numberWithUnsignedInt:*v17];
      [v11 setTotalOperationalTime:v18];
    }

    else
    {
      [v11 setTotalOperationalTime:{0, v67}];
    }

    if (BYTE4(v71) == 1 && (sub_238DE3698(&v71 + 4, v19)[4] & 1) != 0)
    {
      v21 = MEMORY[0x277CCABB0];
      v22 = sub_238DE3698(&v71 + 4, v20);
      if (v22[4] != 1)
      {
LABEL_83:
        sub_238EA195C();
      }

      v23 = [v21 numberWithUnsignedInt:*v22];
      [v11 setEstimatedTime:v23];
    }

    else
    {
      [v11 setEstimatedTime:{0, v67}];
    }

    [v6 addObject:{v11, v67}];
  }

LABEL_70:
  if (v67 != 33)
  {
LABEL_73:
    if (!v67)
    {
      goto LABEL_79;
    }

    v65 = v68;
    *a3 = v67;
    a3[1] = v65;
LABEL_77:

    goto LABEL_78;
  }

LABEL_79:

  return v6;
}

id sub_2392B2EF4(int a1, uint64_t a2, unint64_t *a3)
{
  switch(a1)
  {
    case 0:
    case 3:
    case 4:
    case 5:
    case 6:
    case 11:
    case 12:
    case 19:
      LOBYTE(v16) = 0;
      BYTE2(v16) = 0;
      v4 = sub_238F0B738(a2, &v16);
      *a3 = v4;
      a3[1] = v5;
      if (v4 || BYTE2(v16) != 1)
      {
        goto LABEL_14;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithShort:v16];
      break;
    case 1:
    case 2:
    case 7:
    case 8:
    case 9:
    case 10:
    case 20:
      LOBYTE(v16) = 0;
      BYTE2(v16) = 0;
      v7 = sub_238EFD714(a2, &v16);
      *a3 = v7;
      a3[1] = v8;
      if (v7 || BYTE2(v16) != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    case 16:
      LOWORD(v16) = 0;
      v14 = sub_238F36E54(a2, &v16);
      *a3 = v14;
      a3[1] = v15;
      if (v14)
      {
        goto LABEL_14;
      }

LABEL_20:
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
      break;
    case 17:
    case 32:
      LOBYTE(v16) = 0;
      v11 = sub_238EA4D5C(a2, &v16);
      goto LABEL_13;
    case 18:
    case 33:
      LOBYTE(v16) = 0;
      v11 = sub_238F248DC(a2, &v16);
LABEL_13:
      *a3 = v11;
      a3[1] = v12;
      if (v11)
      {
        goto LABEL_14;
      }

      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
      break;
    case 21:
    case 22:
    case 23:
      LOBYTE(v16) = 0;
      v17 = 0;
      v9 = sub_238EFDEB0(a2, &v16);
      *a3 = v9;
      a3[1] = v10;
      if (v9 || v17 != 1)
      {
LABEL_14:
        v6 = 0;
      }

      else
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
      }

      break;
    default:
      v6 = 0;
      *a3 = 0x2E72000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      break;
  }

  return v6;
}

MTRThermostatClusterThermostatSuggestionStruct *sub_2392B30A0(int a1, uint64_t a2, void *a3)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 49:
    case 70:
      LOBYTE(v115) = 0;
      BYTE2(v115) = 0;
      v13 = sub_238F0B738(a2, &v115);
      *a3 = v13;
      a3[1] = v14;
      if (!v13 && BYTE2(v115) == 1)
      {
        goto LABEL_3;
      }

      goto LABEL_143;
    case 2:
    case 9:
    case 26:
    case 37:
      LOBYTE(v115) = 0;
      v8 = sub_238EA4DB4(a2, &v115);
      goto LABEL_5;
    case 3:
    case 4:
    case 5:
    case 6:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
      LOWORD(v115) = 0;
      v5 = sub_2393C5E20(a2, &v115);
      *a3 = v5;
      a3[1] = v6;
      if (v5)
      {
        goto LABEL_143;
      }

LABEL_3:
      v7 = [MEMORY[0x277CCABB0] numberWithShort:v115];
      goto LABEL_7;
    case 7:
    case 8:
    case 33:
    case 34:
    case 58:
    case 74:
    case 75:
    case 76:
    case 83:
      LOBYTE(v115) = 0;
      v8 = sub_2393C5ED0(a2, &v115);
      goto LABEL_5;
    case 16:
    case 25:
      LOBYTE(v115) = 0;
      v15 = sub_2393C5D48(a2, &v115);
      *a3 = v15;
      a3[1] = v16;
      if (v15)
      {
        goto LABEL_143;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithChar:v115];
      goto LABEL_7;
    case 27:
      LOBYTE(v115) = 0;
      v8 = sub_238F01014(a2, &v115);
      goto LABEL_5;
    case 28:
      LOBYTE(v115) = 0;
      v8 = sub_238F29734(a2, &v115);
      goto LABEL_5;
    case 30:
      LOBYTE(v115) = 0;
      v8 = sub_238F2978C(a2, &v115);
      goto LABEL_5;
    case 32:
      LOBYTE(v115) = 0;
      v8 = sub_238EFFAE8(a2, &v115);
      goto LABEL_5;
    case 35:
      LOBYTE(v115) = 0;
      v8 = sub_238EFF894(a2, &v115);
      goto LABEL_5;
    case 36:
      LOBYTE(v115) = 0;
      BYTE2(v115) = 0;
      v62 = sub_238EFD714(a2, &v115);
      goto LABEL_79;
    case 41:
      LOWORD(v115) = 0;
      v21 = sub_238F36E54(a2, &v115);
      goto LABEL_28;
    case 48:
      LOBYTE(v115) = 0;
      v8 = sub_238EFD7D0(a2, &v115);
      goto LABEL_5;
    case 50:
      LODWORD(v115) = 0;
      v19 = sub_2393C5FC8(a2, &v115);
      goto LABEL_88;
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 77:
      LOWORD(v115) = 0;
      v11 = sub_238F00228(a2, &v115);
      *a3 = v11;
      a3[1] = v12;
      if (v11 || BYTE1(v115) != 1)
      {
        goto LABEL_143;
      }

      goto LABEL_6;
    case 64:
      LOBYTE(v115) = 0;
      v8 = sub_238F000A4(a2, &v115);
      goto LABEL_5;
    case 65:
      LOWORD(v115) = 0;
      v21 = sub_2393C5F70(a2, &v115);
LABEL_28:
      *a3 = v21;
      a3[1] = v22;
      if (!v21)
      {
        goto LABEL_81;
      }

      goto LABEL_143;
    case 66:
    case 67:
      LOBYTE(v115) = 0;
      v8 = sub_238EA4D5C(a2, &v115);
      goto LABEL_5;
    case 68:
      LODWORD(v115) = 0;
      v19 = sub_238F37278(a2, &v115);
LABEL_88:
      *a3 = v19;
      a3[1] = v20;
      if (!v19)
      {
        goto LABEL_89;
      }

      goto LABEL_143;
    case 69:
      LOBYTE(v115) = 0;
      v8 = sub_238EFE758(a2, &v115);
      goto LABEL_5;
    case 71:
      LOBYTE(v115) = 0;
      v8 = sub_238F03FA8(a2, &v115);
LABEL_5:
      *a3 = v8;
      a3[1] = v9;
      if (v8)
      {
        goto LABEL_143;
      }

LABEL_6:
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v115];
      goto LABEL_7;
    case 72:
      sub_2392C77A0(&v106);
      v23 = sub_238F36BB4(&v106, a2);
      *a3 = v23;
      a3[1] = v24;
      if (v23)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      sub_2392C87B4(&v115, &v106);
      while (1)
      {
        v25 = sub_238EA1A80(&v115);
        LODWORD(v26) = v115;
        if (v115)
        {
          v25 = 0;
        }

        if (!v25)
        {
          break;
        }

        LODWORD(v121) = 0;
        v26 = sub_238F2B6A4(&v121, &v117);
        v115 = v26;
        v116 = v27;
        if (v26)
        {
          break;
        }

        v28 = objc_opt_new();
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v121];
        [v28 setPresetScenario:v29];

        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v121)];
        [v28 setNumberOfPresets:v30];

        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v121)];
        [v28 setPresetTypeFeatures:v31];

        [v10 addObject:v28];
      }

      goto LABEL_97;
    case 73:
      sub_2392C77A0(&v106);
      v32 = sub_238F36BB4(&v106, a2);
      *a3 = v32;
      a3[1] = v33;
      if (v32)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      sub_2392C87B4(&v115, &v106);
      while (1)
      {
        v34 = sub_238EA1A80(&v115);
        LODWORD(v26) = v115;
        if (v115)
        {
          v34 = 0;
        }

        if (!v34)
        {
          break;
        }

        LODWORD(v121) = 0;
        v26 = sub_238F2B800(&v121, &v117);
        v115 = v26;
        v116 = v35;
        if (v26)
        {
          break;
        }

        v36 = objc_opt_new();
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v121];
        [v36 setSystemMode:v37];

        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v121)];
        [v36 setNumberOfSchedules:v38];

        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v121)];
        [v36 setScheduleTypeFeatures:v39];

        [v10 addObject:v36];
      }

      goto LABEL_97;
    case 78:
    case 79:
      LOBYTE(v115) = 0;
      LOBYTE(v117) = 0;
      v17 = sub_238F10D4C(a2, &v115);
      *a3 = v17;
      a3[1] = v18;
      if (v17 || v117 != 1)
      {
        goto LABEL_143;
      }

      v7 = [MEMORY[0x277CBEA90] dataWithBytes:v115 length:v116];
      goto LABEL_7;
    case 80:
      sub_2392C77A0(&v106);
      v40 = sub_238F36BB4(&v106, a2);
      *a3 = v40;
      a3[1] = v41;
      if (v40)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      sub_2392C87F8(&v115, &v106);
      while (2)
      {
        if (!sub_238EA1A80(&v115) || !sub_2392C8854(&v115))
        {
          goto LABEL_136;
        }

        v42 = objc_opt_new();
        v43 = v42;
        if (v122)
        {
          v44 = [MEMORY[0x277CBEA90] dataWithBytes:v121 length:?];
          [v43 setPresetHandle:v44];
        }

        else
        {
          [v42 setPresetHandle:0];
        }

        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE8(v122)];
        [v43 setPresetScenario:v45];

        if (v123[0] != 1 || (sub_238DE36B8(v123, v46)[16] & 1) == 0)
        {
          [v43 setName:0];
LABEL_58:
          if (v125[0] == 1)
          {
            v52 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(v125, v51)->super.isa)}];
            [v43 setCoolingSetpoint:v52];
          }

          else
          {
            [v43 setCoolingSetpoint:0];
          }

          if (v126[0] == 1)
          {
            v54 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(v126, v53)->super.isa)}];
            [v43 setHeatingSetpoint:v54];
          }

          else
          {
            [v43 setHeatingSetpoint:0];
          }

          if (v126[5])
          {
            v55 = [MEMORY[0x277CCABB0] numberWithBool:v126[4]];
            [v43 setBuiltIn:v55];
          }

          else
          {
            [v43 setBuiltIn:0];
          }

          [v10 addObject:v43];

          continue;
        }

        break;
      }

      v48 = sub_238DE36B8(v123, v47);
      if ((v48[16] & 1) == 0)
      {
        sub_238EA195C();
      }

      v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v48 length:*(v48 + 1) encoding:4];
      [v43 setName:v49];

      v50 = [v43 name];

      if (v50)
      {
        goto LABEL_58;
      }

      v104 = &xmmword_278A74B88;
LABEL_140:
      *a3 = *v104;
LABEL_141:

LABEL_142:
LABEL_143:
      v10 = 0;
LABEL_144:

      return v10;
    case 81:
      v75 = sub_2392C77A0(v128);
      v76 = sub_238F36BB4(v75, a2);
      *a3 = v76;
      a3[1] = v77;
      if (v76)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      sub_2392C88B8(&v115, v128);
      while (2)
      {
        if (sub_238EA1A80(&v115) && sub_2392C8928(&v115))
        {
          v78 = objc_opt_new();
          v43 = v78;
          if (v122)
          {
            v79 = [MEMORY[0x277CBEA90] dataWithBytes:v121 length:?];
            [v43 setScheduleHandle:v79];
          }

          else
          {
            [v78 setScheduleHandle:0];
          }

          v80 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE8(v122)];
          [v43 setSystemMode:v80];

          if (v123[0] == 1)
          {
            v82 = sub_238DE36B8(v123, v81);
            v83 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v82 length:v82[1] encoding:4];
            [v43 setName:v83];

            v84 = [v43 name];

            if (!v84)
            {
              v104 = &xmmword_278A74B98;
              goto LABEL_140;
            }
          }

          else
          {
            [v43 setName:0];
          }

          if (v124[0] == 1)
          {
            v86 = sub_238DE36B8(v124, v85);
            v87 = [MEMORY[0x277CBEA90] dataWithBytes:*v86 length:v86[1]];
            [v43 setPresetHandle:v87];
          }

          else
          {
            [v43 setPresetHandle:0];
          }

          v88 = objc_opt_new();
          sub_2393C5AAC(v108);
          v106 = 0;
          v107 = 0;
          sub_2393C5BDC(v108, v127);
          v109 = 0;
          v110 = 0;
          v111[0] = 0;
          v112[0] = 0;
          v113[0] = 0;
          v114[0] = 0;
          while (sub_238EA1A80(&v106) && sub_2392C8A14(&v106))
          {
            v89 = objc_opt_new();
            v90 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v109];
            [v89 setDayOfWeek:v90];

            v91 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v110];
            [v89 setTransitionTime:v91];

            if (v111[0] == 1)
            {
              v93 = sub_238DE36B8(v111, v92);
              v94 = [MEMORY[0x277CBEA90] dataWithBytes:*v93 length:v93[1]];
              [v89 setPresetHandle:v94];
            }

            else
            {
              [v89 setPresetHandle:0];
            }

            if (v112[0] == 1)
            {
              v96 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{LOBYTE(sub_238DE36D8(v112, v95)->super.isa)}];
              [v89 setSystemMode:v96];
            }

            else
            {
              [v89 setSystemMode:0];
            }

            if (v113[0] == 1)
            {
              v98 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(v113, v97)->super.isa)}];
              [v89 setCoolingSetpoint:v98];
            }

            else
            {
              [v89 setCoolingSetpoint:0];
            }

            if (v114[0] == 1)
            {
              v100 = [MEMORY[0x277CCABB0] numberWithShort:{SLOWORD(sub_238E0A934(v114, v99)->super.isa)}];
              [v89 setHeatingSetpoint:v100];
            }

            else
            {
              [v89 setHeatingSetpoint:0];
            }

            [v88 addObject:v89];
          }

          if (v106 == 33 || !v106)
          {
            [v43 setTransitions:v88];

            if (v127[73])
            {
              v101 = [MEMORY[0x277CCABB0] numberWithBool:v127[72]];
              [v43 setBuiltIn:v101];
            }

            else
            {
              [v43 setBuiltIn:0];
            }

            [v10 addObject:v43];

            continue;
          }

          v103 = v107;
          *a3 = v106;
          a3[1] = v103;

          goto LABEL_141;
        }

        break;
      }

LABEL_136:
      if (v115 == 33)
      {
        goto LABEL_144;
      }

LABEL_137:
      if (v115)
      {
        v102 = v116;
        *a3 = v115;
        a3[1] = v102;
        goto LABEL_142;
      }

      goto LABEL_144;
    case 82:
      LOBYTE(v115) = 0;
      BYTE4(v115) = 0;
      v64 = sub_238EFDEB0(a2, &v115);
      *a3 = v64;
      a3[1] = v65;
      if (v64 || BYTE4(v115) != 1)
      {
        goto LABEL_143;
      }

LABEL_89:
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v115];
      goto LABEL_7;
    case 84:
      sub_2392C77A0(&v106);
      v66 = sub_238F36BB4(&v106, a2);
      *a3 = v66;
      a3[1] = v67;
      if (v66)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      sub_2392C8A74(&v115, &v106);
      while (1)
      {
        v68 = sub_238EA1A80(&v115);
        LODWORD(v26) = v115;
        if (v115)
        {
          v68 = 0;
        }

        if (!v68)
        {
          break;
        }

        v122 = 0u;
        v121 = 0u;
        v26 = sub_238F2B954(&v121, &v117);
        v115 = v26;
        v116 = v69;
        if (v26)
        {
          break;
        }

        v70 = objc_opt_new();
        v71 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v121];
        [v70 setUniqueID:v71];

        v72 = [MEMORY[0x277CBEA90] dataWithBytes:*(&v121 + 1) length:v122];
        [v70 setPresetHandle:v72];

        v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v122)];
        [v70 setEffectiveTime:v73];

        v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v122)];
        [v70 setExpirationTime:v74];

        [v10 addObject:v70];
      }

LABEL_97:
      if (v26 == 33)
      {
        goto LABEL_144;
      }

      goto LABEL_137;
    case 85:
      LOBYTE(v115) = 0;
      v120 = 0;
      v56 = sub_238F297F4(a2, &v115);
      *a3 = v56;
      a3[1] = v57;
      if (v56 || (v120 & 1) == 0)
      {
        goto LABEL_143;
      }

      v10 = objc_opt_new();
      if (v120 != 1 || ([MEMORY[0x277CCABB0] numberWithUnsignedChar:v115], v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "setUniqueID:", v58), v58, v120 != 1) || (objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", v116, v117), v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "setPresetHandle:", v59), v59, v120 != 1) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v118), v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "setEffectiveTime:", v60), v60, (v120 & 1) == 0))
      {
        sub_238EA195C();
      }

      v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v119];
      [v10 setExpirationTime:v61];

      goto LABEL_144;
    case 86:
      LOBYTE(v115) = 0;
      BYTE2(v115) = 0;
      v62 = sub_238F2988C(a2, &v115);
LABEL_79:
      *a3 = v62;
      a3[1] = v63;
      if (v62 || BYTE2(v115) != 1)
      {
        goto LABEL_143;
      }

LABEL_81:
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v115];
LABEL_7:
      v10 = v7;
      goto LABEL_144;
    default:
      v10 = 0;
      *a3 = 0x323F000000B5;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
      goto LABEL_144;
  }
}

id sub_2392B40F4(int a1, uint64_t a2, void *a3)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          v34 = 0;
          v20 = sub_238EA4DB4(a2, &v34);
          *a3 = v20;
          a3[1] = v21;
          if (!v20)
          {
            v6 = MEMORY[0x277CCABB0];
            v7 = v34;
            goto LABEL_42;
          }

          break;
        case 10:
          v33 = 0;
          v28 = sub_238EA4DB4(a2, &v33);
          *a3 = v28;
          a3[1] = v29;
          if (!v28)
          {
            v6 = MEMORY[0x277CCABB0];
            v7 = v33;
            goto LABEL_42;
          }

          break;
        case 11:
          v32 = 0;
          v12 = sub_238EFF894(a2, &v32);
          *a3 = v12;
          a3[1] = v13;
          if (!v12)
          {
            v6 = MEMORY[0x277CCABB0];
            v7 = v32;
            goto LABEL_42;
          }

          break;
        default:
          goto LABEL_40;
      }
    }

    else if (a1 == 6)
    {
      v37 = 0;
      v16 = sub_2393C5ED0(a2, &v37);
      *a3 = v16;
      a3[1] = v17;
      if (!v16)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v37;
        goto LABEL_42;
      }
    }

    else if (a1 == 7)
    {
      v36 = 0;
      v24 = sub_238EA4DB4(a2, &v36);
      *a3 = v24;
      a3[1] = v25;
      if (!v24)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v36;
        goto LABEL_42;
      }
    }

    else
    {
      v35 = 0;
      v8 = sub_238EA4DB4(a2, &v35);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v35;
        goto LABEL_42;
      }
    }

LABEL_39:
    v30 = 0;
    goto LABEL_43;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v40 = 0;
      v18 = sub_2393C5ED0(a2, &v40);
      *a3 = v18;
      a3[1] = v19;
      if (!v18)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v40;
        goto LABEL_42;
      }
    }

    else if (a1 == 4)
    {
      v39 = 0;
      v26 = sub_2393C5ED0(a2, &v39);
      *a3 = v26;
      a3[1] = v27;
      if (!v26)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v39;
        goto LABEL_42;
      }
    }

    else
    {
      v38 = 0;
      v10 = sub_238F00228(a2, &v38);
      *a3 = v10;
      a3[1] = v11;
      if (!v10 && HIBYTE(v38) == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v38;
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

  if (!a1)
  {
    v43 = 0;
    v14 = sub_238EFFAE8(a2, &v43);
    *a3 = v14;
    a3[1] = v15;
    if (!v14)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v43;
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (a1 == 1)
  {
    v42 = 0;
    v22 = sub_238F01014(a2, &v42);
    *a3 = v22;
    a3[1] = v23;
    if (!v22)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v42;
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (a1 != 2)
  {
LABEL_40:
    v30 = 0;
    *a3 = 0x32D8000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_43;
  }

  v41 = 0;
  v4 = sub_238F00228(a2, &v41);
  *a3 = v4;
  a3[1] = v5;
  if (v4 || HIBYTE(v41) != 1)
  {
    goto LABEL_39;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = v41;
LABEL_42:
  v30 = [v6 numberWithUnsignedChar:v7];
LABEL_43:

  return v30;
}

id sub_2392B43C8(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 2)
  {
    v14 = 0;
    v10 = sub_238EFF894(a2, &v14);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v14;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v15 = 0;
    v8 = sub_238F01014(a2, &v15);
    *a3 = v8;
    a3[1] = v9;
    if (!v8)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v15;
      goto LABEL_12;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_13;
  }

  if (a1)
  {
    v12 = 0;
    *a3 = 0x3306000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_13;
  }

  v16 = 0;
  v4 = sub_238EFF894(a2, &v16);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_9;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = v16;
LABEL_12:
  v12 = [v6 numberWithUnsignedChar:v7];
LABEL_13:

  return v12;
}

id sub_2392B44BC(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 >= 0x4000)
  {
    if (a1 > 16389)
    {
      if (a1 > 16395)
      {
        if (a1 != 16396 && a1 != 16397)
        {
          if (a1 == 16400)
          {
            LOBYTE(v20) = 0;
            BYTE2(v20) = 0;
            v12 = sub_238EFD714(a2, &v20);
            *a3 = v12;
            a3[1] = v13;
            if (v12 || BYTE2(v20) != 1)
            {
              goto LABEL_38;
            }

LABEL_5:
            v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v20];
            goto LABEL_40;
          }

LABEL_45:
          v15 = 0;
          *a3 = 0x3580000000B5;
          a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
          goto LABEL_41;
        }

LABEL_3:
        LOWORD(v20) = 0;
        v4 = sub_2393C5F70(a2, &v20);
        goto LABEL_4;
      }

      if (a1 == 16390)
      {
        goto LABEL_3;
      }

      if (a1 == 16394)
      {
        LOWORD(v20) = 0;
        v4 = sub_238F36E54(a2, &v20);
LABEL_4:
        *a3 = v4;
        a3[1] = v5;
        if (v4)
        {
LABEL_38:
          v15 = 0;
          goto LABEL_41;
        }

        goto LABEL_5;
      }

      v9 = 16395;
    }

    else
    {
      if (a1 <= 16386)
      {
        if (a1 != 0x4000)
        {
          if (a1 == 16385)
          {
            LOBYTE(v20) = 0;
            v10 = sub_238EA4D5C(a2, &v20);
            goto LABEL_37;
          }

LABEL_23:
          LOBYTE(v20) = 0;
          v10 = sub_2393C5ED0(a2, &v20);
LABEL_37:
          *a3 = v10;
          a3[1] = v11;
          if (v10)
          {
            goto LABEL_38;
          }

LABEL_39:
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
LABEL_40:
          v15 = v6;
          goto LABEL_41;
        }

        goto LABEL_3;
      }

      if (a1 == 16387)
      {
        goto LABEL_23;
      }

      if (a1 == 16388)
      {
        goto LABEL_3;
      }

      v9 = 16389;
    }

    if (a1 != v9)
    {
      goto LABEL_45;
    }

    goto LABEL_3;
  }

  switch(a1)
  {
    case 0:
    case 1:
      goto LABEL_23;
    case 2:
    case 3:
    case 4:
    case 7:
    case 17:
    case 18:
    case 21:
    case 22:
    case 25:
    case 26:
    case 32:
    case 33:
    case 36:
    case 37:
    case 40:
    case 41:
    case 48:
    case 49:
    case 50:
    case 51:
    case 54:
    case 55:
    case 58:
    case 59:
      goto LABEL_3;
    case 5:
      LOBYTE(v20) = 0;
      v10 = sub_238F000A4(a2, &v20);
      goto LABEL_37;
    case 6:
      v20 = 0uLL;
      v14 = sub_2393C61E0(a2, &v20);
      v15 = 0;
      *a3 = v14;
      a3[1] = v16;
      if (!v14)
      {
        v17 = sub_2392C6E08(v20, *(&v20 + 1));
        v15 = v17;
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          *a3 = xmmword_278A74BA8;
        }
      }

      break;
    case 8:
      LOBYTE(v20) = 0;
      v10 = sub_238EFD7D0(a2, &v20);
      goto LABEL_37;
    case 15:
      LOBYTE(v20) = 0;
      v10 = sub_238EA4DB4(a2, &v20);
      goto LABEL_37;
    case 16:
    case 19:
    case 23:
    case 27:
    case 34:
    case 38:
    case 42:
    case 52:
    case 56:
    case 60:
      LOWORD(v20) = 0;
      v7 = sub_238F00228(a2, &v20);
      *a3 = v7;
      a3[1] = v8;
      if (!v7 && BYTE1(v20) == 1)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    default:
      goto LABEL_45;
  }

LABEL_41:

  return v15;
}

id sub_2392B4774(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 31)
  {
    if (a1 > 15)
    {
      if (a1 > 19)
      {
        if (a1 != 20 && a1 != 21)
        {
          goto LABEL_41;
        }

        LOWORD(v19) = 0;
        v11 = sub_238F00228(a2, &v19);
        *a3 = v11;
        a3[1] = v12;
        if (!v11 && BYTE1(v19) == 1)
        {
          goto LABEL_21;
        }

        goto LABEL_33;
      }

      if (a1 != 16 && a1 != 17)
      {
        goto LABEL_41;
      }

      goto LABEL_19;
    }

    if (a1 >= 2)
    {
      if (a1 == 2)
      {
LABEL_12:
        LOBYTE(v19) = 0;
        v4 = sub_238EA4DB4(a2, &v19);
        goto LABEL_20;
      }

      goto LABEL_41;
    }

    goto LABEL_19;
  }

  if (a1 > 49)
  {
    if (a1 <= 51)
    {
      goto LABEL_30;
    }

    if (a1 == 52)
    {
      goto LABEL_12;
    }

    if (a1 == 53)
    {
LABEL_30:
      LOBYTE(v19) = 0;
      BYTE4(v19) = 0;
      v13 = sub_238EFDEB0(a2, &v19);
      *a3 = v13;
      a3[1] = v14;
      if (!v13 && BYTE4(v19) == 1)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
        goto LABEL_22;
      }

      goto LABEL_33;
    }

LABEL_41:
    v7 = 0;
    *a3 = 0x3645000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_34;
  }

  switch(a1)
  {
    case ' ':
LABEL_19:
      LOBYTE(v19) = 0;
      v4 = sub_2393C5ED0(a2, &v19);
LABEL_20:
      *a3 = v4;
      a3[1] = v5;
      if (!v4)
      {
LABEL_21:
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v19];
LABEL_22:
        v7 = v10;
        goto LABEL_34;
      }

LABEL_33:
      v7 = 0;
      goto LABEL_34;
    case '0':
      v19 = 0uLL;
      v16 = sub_2393C61E0(a2, &v19);
      v7 = 0;
      *a3 = v16;
      a3[1] = v17;
      if (v16)
      {
        goto LABEL_34;
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v19 length:*(&v19 + 1) encoding:4];
      if (!v7)
      {
        v9 = &xmmword_278A74BB8;
        goto LABEL_43;
      }

      break;
    case '1':
      v19 = 0uLL;
      v6 = sub_2393C61E0(a2, &v19);
      v7 = 0;
      *a3 = v6;
      a3[1] = v8;
      if (v6)
      {
        goto LABEL_34;
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v19 length:*(&v19 + 1) encoding:4];
      if (!v7)
      {
        v9 = &xmmword_278A74BC8;
LABEL_43:
        *a3 = *v9;
        goto LABEL_44;
      }

      break;
    default:
      goto LABEL_41;
  }

  v18 = v7;
LABEL_44:

LABEL_34:

  return v7;
}

id sub_2392B49F4(unsigned int a1, uint64_t a2, void *a3)
{
  if (a1 <= 1)
  {
    if (a1 > 1)
    {
      goto LABEL_14;
    }

LABEL_9:
    LOBYTE(v12) = 0;
    v13 = 0;
    v7 = sub_238EFD714(a2, &v12);
    *a3 = v7;
    a3[1] = v8;
    if (v7 || v13 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  switch(a1)
  {
    case 2u:
      goto LABEL_9;
    case 3u:
      v12 = 0;
      v9 = sub_2393C5F70(a2, &v12);
      *a3 = v9;
      a3[1] = v10;
      if (v9)
      {
LABEL_13:
        v6 = 0;
        goto LABEL_15;
      }

LABEL_11:
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
      goto LABEL_15;
    case 4u:
      v12 = 0;
      v4 = sub_238F0A8F8(a2, &v12);
      *a3 = v4;
      a3[1] = v5;
      if (!v4 && HIBYTE(v12) == 1)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v12];
        goto LABEL_15;
      }

      goto LABEL_13;
  }

LABEL_14:
  v6 = 0;
  *a3 = 0x3699000000B5;
  a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
LABEL_15:

  return v6;
}

id sub_2392B4B14(int a1, uint64_t a2, void *a3)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      LOBYTE(v17) = 0;
      v18 = 0;
      v13 = sub_238F0B738(a2, &v17);
      *a3 = v13;
      a3[1] = v14;
      if (!v13 && v18 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v17;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (a1 == 3)
    {
      v16 = 0;
      v8 = sub_2393C5F70(a2, &v16);
      *a3 = v8;
      a3[1] = v9;
      if (!v8)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      LOBYTE(v19) = 0;
      v20 = 0;
      v4 = sub_238F0B738(a2, &v19);
      *a3 = v4;
      a3[1] = v5;
      if (!v4 && v20 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v19;
LABEL_18:
        v10 = [v6 numberWithShort:v7];
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_11:
    v10 = 0;
    *a3 = 0x36DE000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_20;
  }

  LOBYTE(v21) = 0;
  v22 = 0;
  v11 = sub_238F0B738(a2, &v21);
  *a3 = v11;
  a3[1] = v12;
  if (!v11 && v22 == 1)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v21;
    goto LABEL_18;
  }

LABEL_19:
  v10 = 0;
LABEL_20:

  return v10;
}

id sub_2392B4C78(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 15)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          goto LABEL_21;
        }

LABEL_12:
        v12 = 0;
        v7 = sub_2393C5F70(a2, &v12);
        *a3 = v7;
        a3[1] = v8;
        if (!v7)
        {
          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if (a1 >= 2)
    {
      goto LABEL_21;
    }

LABEL_14:
    LOBYTE(v12) = 0;
    v13 = 0;
    v9 = sub_238F0B738(a2, &v12);
    *a3 = v9;
    a3[1] = v10;
    if (!v9 && v13 == 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithShort:v12];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a1 <= 18)
  {
    goto LABEL_14;
  }

  if (a1 == 19)
  {
    goto LABEL_12;
  }

  if (a1 == 20)
  {
    LOBYTE(v12) = 0;
    v4 = sub_2393C5D48(a2, &v12);
    *a3 = v4;
    a3[1] = v5;
    if (!v4)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithChar:v12];
      goto LABEL_18;
    }

LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

LABEL_21:
  v6 = 0;
  *a3 = 0x3766000000B5;
  a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
LABEL_18:

  return v6;
}

id sub_2392B4DD8(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v21) = 0;
      v22 = 0;
      v11 = sub_238EFD714(a2, &v21);
      *a3 = v11;
      a3[1] = v12;
      if (!v11 && v22 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v21;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (a1 == 1)
    {
      LOBYTE(v19) = 0;
      v20 = 0;
      v4 = sub_238EFD714(a2, &v19);
      *a3 = v4;
      a3[1] = v5;
      if (!v4 && v20 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v19;
LABEL_18:
        v10 = [v6 numberWithUnsignedShort:v7];
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_11:
    v10 = 0;
    *a3 = 0x37AB000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_20;
  }

  if (a1 == 2)
  {
    LOBYTE(v17) = 0;
    v18 = 0;
    v13 = sub_238EFD714(a2, &v17);
    *a3 = v13;
    a3[1] = v14;
    if (!v13 && v18 == 1)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v17;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (a1 != 3)
  {
    goto LABEL_11;
  }

  v16 = 0;
  v8 = sub_2393C5F70(a2, &v16);
  *a3 = v8;
  a3[1] = v9;
  if (!v8)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v16;
    goto LABEL_18;
  }

LABEL_19:
  v10 = 0;
LABEL_20:

  return v10;
}

id sub_2392B4F34(int a1, uint64_t a2, void *a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v21) = 0;
      v22 = 0;
      v11 = sub_238EFD714(a2, &v21);
      *a3 = v11;
      a3[1] = v12;
      if (!v11 && v22 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v21;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (a1 == 1)
    {
      LOBYTE(v19) = 0;
      v20 = 0;
      v4 = sub_238EFD714(a2, &v19);
      *a3 = v4;
      a3[1] = v5;
      if (!v4 && v20 == 1)
      {
        v6 = MEMORY[0x277CCABB0];
        v7 = v19;
LABEL_18:
        v10 = [v6 numberWithUnsignedShort:v7];
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_11:
    v10 = 0;
    *a3 = 0x37F0000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
    goto LABEL_20;
  }

  if (a1 == 2)
  {
    LOBYTE(v17) = 0;
    v18 = 0;
    v13 = sub_238EFD714(a2, &v17);
    *a3 = v13;
    a3[1] = v14;
    if (!v13 && v18 == 1)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v17;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (a1 != 3)
  {
    goto LABEL_11;
  }

  v16 = 0;
  v8 = sub_2393C5F70(a2, &v16);
  *a3 = v8;
  a3[1] = v9;
  if (!v8)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v16;
    goto LABEL_18;
  }

LABEL_19:
  v10 = 0;
LABEL_20:

  return v10;
}

MTROccupancySensingClusterHoldTimeLimitsStruct *sub_2392B5090(int a1, uint64_t a2, void *a3)
{
  if (a1 > 17)
  {
    if (a1 <= 33)
    {
      if (a1 != 18)
      {
        if (a1 == 32 || a1 == 33)
        {
          goto LABEL_25;
        }

        goto LABEL_36;
      }
    }

    else if (a1 > 48)
    {
      if (a1 == 49)
      {
        goto LABEL_25;
      }

      if (a1 != 50)
      {
        goto LABEL_36;
      }
    }

    else if (a1 != 34)
    {
      if (a1 == 48)
      {
        goto LABEL_25;
      }

      goto LABEL_36;
    }

    LOBYTE(v16) = 0;
    v10 = sub_2393C5ED0(a2, &v16);
LABEL_29:
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
      goto LABEL_32;
    }

LABEL_30:
    v6 = 0;
    goto LABEL_33;
  }

  if (a1 > 2)
  {
    if (a1 <= 15 && a1 != 3)
    {
      if (a1 == 4)
      {
        v16 = 0;
        v17 = 0;
        v4 = sub_238F21458(&v16, a2);
        *a3 = v4;
        a3[1] = v5;
        if (!v4)
        {
          v6 = objc_opt_new();
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
          [v6 setHoldTimeMin:v7];

          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v16)];
          [v6 setHoldTimeMax:v8];

          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
          [v6 setHoldTimeDefault:v9];

          goto LABEL_33;
        }

        goto LABEL_30;
      }

      goto LABEL_36;
    }

LABEL_25:
    LOWORD(v16) = 0;
    v12 = sub_2393C5F70(a2, &v16);
    *a3 = v12;
    a3[1] = v13;
    if (!v12)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
LABEL_32:
      v6 = v14;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  switch(a1)
  {
    case 0:
      goto LABEL_16;
    case 1:
      LOBYTE(v16) = 0;
      v10 = sub_238EA4D5C(a2, &v16);
      goto LABEL_29;
    case 2:
LABEL_16:
      LOBYTE(v16) = 0;
      v10 = sub_238EA4DB4(a2, &v16);
      goto LABEL_29;
  }

LABEL_36:
  v6 = 0;
  *a3 = 0x389A000000B5;
  a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
LABEL_33:

  return v6;
}

void sub_2392B52EC(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

id sub_2392B5318(int a1, uint64_t a2, void *a3)
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
    *a3 = 0x3934000000B5;
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

id sub_2392B54C8(int a1, uint64_t a2, void *a3)
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
    *a3 = 0x39CE000000B5;
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

id sub_2392B5678(int a1, uint64_t a2, void *a3)
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
    *a3 = 0x3A68000000B5;
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

id sub_2392B5828(int a1, uint64_t a2, void *a3)
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
    *a3 = 0x3B02000000B5;
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

id sub_2392B59D8(int a1, uint64_t a2, void *a3)
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
    *a3 = 0x3B9C000000B5;
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

id sub_2392B5B88(int a1, uint64_t a2, void *a3)
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
    *a3 = 0x3C36000000B5;
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

id sub_2392B5D38(int a1, uint64_t a2, void *a3)
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
    *a3 = 0x3CD0000000B5;
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

id sub_2392B5EE8(int a1, uint64_t a2, void *a3)
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
    *a3 = 0x3D6A000000B5;
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

id sub_2392B6098(int a1, uint64_t a2, void *a3)
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
    *a3 = 0x3E04000000B5;
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