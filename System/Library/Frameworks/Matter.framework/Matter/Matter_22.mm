id sub_2392C6D74(int a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x58BE000000B5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRAttributeTLVValueDecoder.mm";
  }

  else
  {
    v8 = 0;
    v5 = sub_2393C5CE4(a2, &v8);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    }
  }

  return v4;
}

id sub_2392C6E08(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a1 length:a2 encoding:4];

  return v2;
}

BOOL sub_2392C6E58(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  v3 = sub_238F0E2EC(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C6EA8(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 92) = 0;
  *(a1 + 88) = 0;
  v3 = sub_238F0E428(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

_BYTE *sub_2392C6EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[0] = *(a1 + 72);
  if (v3[0] == 1)
  {
    v3[1] = *(a1 + 73);
  }

  result = sub_238EA4630(a2, a1, v3);
  result[96] = 0;
  result[112] = 0;
  result[116] = 0;
  result[120] = 0;
  result[128] = 0;
  return result;
}

BOOL sub_2392C6F54(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_2392C6FA8(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 128) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_2392C6FA8(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v3 = sub_238F02198(a1 + 96, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C7004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[0] = *(a1 + 72);
  if (v3[0] == 1)
  {
    v3[1] = *(a1 + 73);
  }

  result = sub_238EA4630(a2, a1, v3);
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 176) = 0;
  *(result + 184) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0;
  return result;
}

BOOL sub_2392C7060(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    *(a1 + 249) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 96) = 0u;
    v3 = sub_238EFE664((a1 + 96), a1 + 16);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v3)
    {
      return 0;
    }

    else
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 264) = sub_238DE36D8((a1 + 88), v4)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_2392C70EC(uint64_t *a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      a1[11] = 0;
      v3 = sub_2393C5F2C((a1 + 2), a1 + 11);
      *a1 = v3;
      a1[1] = v4;
      return v3 == 0;
    }
  }

  return result;
}

BOOL sub_2392C7140(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0;
    v3 = sub_238EFE9C4(a1 + 96, a1 + 16);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v3)
    {
      return 0;
    }

    else
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 112) = sub_238DE36D8((a1 + 88), v4)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_2392C71B8(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 96) = 0;
      *(a1 + 88) = 0;
      v3 = sub_238EFDE10((a1 + 88), a1 + 16);
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

uint64_t sub_2392C7210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = *(a1 + 72);
  if (v4[0] == 1)
  {
    v4[1] = *(a1 + 73);
  }

  sub_238EA4630(a2, a1, v4);
  *(a2 + 96) = 0;
  *(a2 + 100) = 0;
  sub_2393C5AAC(a2 + 104);
  result = sub_2393C5ADC(a2 + 104, 0, 0);
  *(a2 + 176) = 0;
  return result;
}

BOOL sub_2392C7284(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_2392C73D8(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 176) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_2392C72D8(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  sub_2393C5AAC(a1 + 96);
  sub_2393C5ADC(a1 + 96, 0, 0);
  return a1;
}

BOOL sub_2392C7338(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_2393C5AAC(&v9 + 8);
  sub_2393C5ADC(&v9 + 8, 0, 0);
  v5 = v9;
  *(a1 + 104) = v10;
  v6 = v12;
  *(a1 + 120) = v11;
  *(a1 + 136) = v6;
  *(a1 + 152) = v13;
  *(a1 + 88) = v5;
  v7 = sub_238EFE0AC(a1 + 88, a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

BOOL sub_2392C73D8(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v15 = v1;
  v16 = v2;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_2393C5AAC(&v9 + 8);
  sub_2393C5ADC(&v9 + 8, 0, 0);
  *(a1 + 176) = 0;
  v5 = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v5;
  *(a1 + 160) = v13;
  v6 = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v6;
  v7 = sub_238EFE2BC(a1 + 96, a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

uint64_t sub_2392C7478(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_2393C5AAC(a1 + 120);
  sub_2393C5ADC(a1 + 120, 0, 0);
  return a1;
}

BOOL sub_2392C74DC(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  sub_2393C5AAC(&v9);
  sub_2393C5ADC(&v9, 0, 0);
  v5 = v9;
  *(a1 + 136) = v10;
  v6 = v12;
  *(a1 + 152) = v11;
  *(a1 + 168) = v6;
  *(a1 + 184) = v13;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = v5;
  v7 = sub_238EFFCB0(a1 + 88, a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

uint64_t sub_2392C758C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[0] = *(a1 + 72);
  if (v3[0] == 1)
  {
    v3[1] = *(a1 + 73);
  }

  result = sub_238EA4630(a2, a1, v3);
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 106) = 0;
  return result;
}

BOOL sub_2392C75DC(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_2392C7630(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 106) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_2392C7630(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 106) = 0;
  v3 = sub_238F23DA8(a1 + 96, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C7684(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  *(a1 + 144) = 0;
  v3 = sub_238F20BE8(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C76E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2393C5AAC((a2 + 2));
  *a2 = 0;
  a2[1] = 0;
  result = sub_2393C5BDC((a2 + 2), a1);
  a2[11] = 0;
  a2[12] = 0;
  return result;
}

uint64_t sub_2392C7720(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 101) = 0;
  sub_2393C5AAC(a1 + 128);
  sub_2393C5ADC(a1 + 128, 0, 0);
  sub_2393C5AAC(a1 + 200);
  sub_2393C5ADC(a1 + 200, 0, 0);
  *(a1 + 272) = 0;
  return a1;
}

uint64_t sub_2392C77A0(uint64_t a1)
{
  sub_2393C5AAC(a1);
  sub_2393C5ADC(v2, 0, 0);
  return a1;
}

BOOL sub_2392C77D4(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v20 = v1;
  v21 = v2;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  sub_2393C5AAC(&v11 + 8);
  sub_2393C5ADC(&v11 + 8, 0, 0);
  sub_2393C5AAC(&v16);
  sub_2393C5ADC(&v16, 0, 0);
  v5 = v18;
  *(a1 + 216) = v17;
  *(a1 + 232) = v5;
  *(a1 + 248) = v19[0];
  v6 = v14;
  *(a1 + 152) = v13;
  *(a1 + 168) = v6;
  v7 = v16;
  *(a1 + 184) = v15;
  *(a1 + 200) = v7;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v8 = v12;
  *(a1 + 120) = v11;
  BYTE8(v19[1]) = 0;
  *(a1 + 136) = v8;
  *(a1 + 257) = *(v19 + 9);
  v9 = sub_238F1914C(a1 + 88, a1 + 16);
  *a1 = v9;
  *(a1 + 8) = v10;
  return v9 == 0;
}

BOOL sub_2392C78C8(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3 = sub_238F28A3C(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C7924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2393C5AAC(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  result = sub_2393C5BDC(a2 + 16, a1);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_2392C7968(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 119) = 0;
  return a1;
}

uint64_t sub_2392C79BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[0] = *(a1 + 72);
  if (v3[0] == 1)
  {
    v3[1] = *(a1 + 73);
  }

  result = sub_238EA4630(a2, a1, v3);
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 160) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

BOOL sub_2392C7A14(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_2392C7B1C(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 160) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

double sub_2392C7A68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = *(a1 + 72);
  if (v4[0] == 1)
  {
    v4[1] = *(a1 + 73);
  }

  v2 = sub_238EA4630(a2, a1, v4);
  *(v2 + 176) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  result = 0.0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0;
  return result;
}

BOOL sub_2392C7AC8(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_2392C7B7C(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 176) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_2392C7B1C(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  v3 = sub_238F22940(a1 + 96, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C7B7C(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 176) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 96) = 0u;
  v3 = sub_238F226D8(a1 + 96, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C7BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[0] = *(a1 + 72);
  if (v3[0] == 1)
  {
    v3[1] = *(a1 + 73);
  }

  result = sub_238EA4630(a2, a1, v3);
  *(result + 90) = 0;
  *(result + 94) = 0;
  return result;
}

BOOL sub_2392C7C24(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_2392C7D40(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 94) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_2392C7C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = *(a1 + 72);
  if (v4[0] == 1)
  {
    v4[1] = *(a1 + 73);
  }

  sub_238EA4630(a2, a1, v4);
  *(a2 + 96) = 0;
  sub_2393C5AAC(a2 + 104);
  result = sub_2393C5ADC(a2 + 104, 0, 0);
  *(a2 + 176) = 0;
  *(a2 + 200) = 0;
  return result;
}

BOOL sub_2392C7CEC(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_2392C7D90(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 200) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_2392C7D40(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 90) = 0;
  *(a1 + 94) = 0;
  v3 = sub_238F1984C(a1 + 90, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C7D90(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v16 = v1;
  v17 = v2;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_2393C5AAC(&v9 + 8);
  sub_2393C5ADC(&v9 + 8, 0, 0);
  v5 = v12;
  *(a1 + 128) = v11;
  *(a1 + 144) = v5;
  *(a1 + 160) = v13;
  v6 = v10;
  *(a1 + 96) = v9;
  *(a1 + 112) = v6;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  v7 = sub_238F1966C(a1 + 96, a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

BOOL sub_2392C7E34(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0;
    v3 = sub_238F1A5F4(a1 + 96, a1 + 16);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v3)
    {
      return 0;
    }

    else
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 113) = sub_238DE36D8((a1 + 88), v4)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_2392C7EAC(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v3 = sub_238F10038(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C7EFC(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_2393C5AAC(a1 + 112);
  sub_2393C5ADC(a1 + 112, 0, 0);
  return a1;
}

BOOL sub_2392C7F5C(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v15 = v1;
  v16 = v2;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  sub_2393C5AAC(&v10 + 8);
  sub_2393C5ADC(&v10 + 8, 0, 0);
  v5 = v12;
  *(a1 + 120) = v11;
  *(a1 + 136) = v5;
  v6 = v14;
  *(a1 + 152) = v13;
  *(a1 + 168) = v6;
  v7 = v10;
  *(a1 + 88) = 0u;
  *(a1 + 104) = v7;
  v8 = sub_238F1F9E0(a1 + 88, a1 + 16);
  *a1 = v8;
  *(a1 + 8) = v9;
  return v8 == 0;
}

BOOL sub_2392C8000(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  v3 = sub_238F350A4(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C8050(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    *(a1 + 96) = 0;
    *(a1 + 94) = 0;
    *(a1 + 90) = 0;
    v3 = sub_238F27980(a1 + 90, a1 + 16);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v3)
    {
      return 0;
    }

    else
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 96) = sub_238DE36D8((a1 + 88), v4)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_2392C80C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2393C5AAC(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  result = sub_2393C5BDC(a2 + 16, a1);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return result;
}

BOOL sub_2392C8110(unint64_t *a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      a1[12] = 0;
      a1[13] = 0;
      a1[11] = 0;
      v3 = sub_238F15B4C(a1 + 88, (a1 + 2));
      *a1 = v3;
      a1[1] = v4;
      return v3 == 0;
    }
  }

  return result;
}

uint64_t sub_2392C8168(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_2393C5AAC(a1 + 112);
  sub_2393C5ADC(a1 + 112, 0, 0);
  return a1;
}

BOOL sub_2392C81CC(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v15 = v1;
  v16 = v2;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  sub_2393C5AAC(&v10 + 8);
  sub_2393C5ADC(&v10 + 8, 0, 0);
  v5 = v12;
  *(a1 + 120) = v11;
  *(a1 + 136) = v5;
  v6 = v14;
  *(a1 + 152) = v13;
  *(a1 + 168) = v6;
  v7 = v10;
  *(a1 + 88) = 0u;
  *(a1 + 104) = v7;
  v8 = sub_238F35690((a1 + 88), a1 + 16);
  *a1 = v8;
  *(a1 + 8) = v9;
  return v8 == 0;
}

BOOL sub_2392C8270(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  v3 = sub_238F353A0(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C82D8(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a1;
}

BOOL sub_2392C8340(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  v3 = sub_238F15D50(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

_BYTE *sub_2392C83B0(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952D1DC();
  }

  return a1 + 4;
}

_BYTE *sub_2392C83D0(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952D1DC();
  }

  return a1 + 2;
}

BOOL sub_2392C83F0(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 116) = 0;
  *(a1 + 108) = 0;
  *(a1 + 121) = 0;
  *(a1 + 144) = 0;
  *(a1 + 129) = 0u;
  *(a1 + 152) = 0;
  v3 = sub_238F1EBA8((a1 + 88), a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C84A0(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v3 = sub_238F1F09C(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C84F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2393C5AAC((a2 + 2));
  *a2 = 0;
  a2[1] = 0;
  result = sub_2393C5BDC((a2 + 2), a1);
  a2[11] = 0;
  a2[12] = 0;
  a2[13] = 0;
  return result;
}

uint64_t sub_2392C8534(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 101) = 0;
  return a1;
}

BOOL sub_2392C85AC(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 96) = 0;
  *(a1 + 101) = 0;
  *(a1 + 88) = 0;
  v3 = sub_238F0F79C(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C8630(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 98) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  v3 = sub_238F0F234(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C8684(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 102) = 0;
  *(a1 + 104) = 0;
  *(a1 + 106) = 0;
  return a1;
}

_BYTE *sub_2392C86E0(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952D1DC();
  }

  return a1 + 1;
}

uint64_t sub_2392C8700(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 139) = 0;
  return a1;
}

BOOL sub_2392C875C(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 108) = 0;
  v3 = sub_238F283F0(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C87B4(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  return a1;
}

uint64_t sub_2392C87F8(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  return a1;
}

BOOL sub_2392C8854(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  v3 = sub_238F2B464(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C88B8(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  sub_2393C5AAC(a1 + 168);
  sub_2393C5ADC(a1 + 168, 0, 0);
  *(a1 + 240) = 0;
  return a1;
}

BOOL sub_2392C8928(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  sub_2393C5AAC(&v10);
  sub_2393C5ADC(&v10, 0, 0);
  WORD4(v13[1]) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 97) = *(v9 + 9);
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  v5 = v10;
  *(a1 + 184) = v11;
  v6 = v13[0];
  *(a1 + 200) = v12;
  *(a1 + 216) = v6;
  *(a1 + 226) = *(v13 + 10);
  *(a1 + 168) = v5;
  v7 = sub_238F2B260(a1 + 88, a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

BOOL sub_2392C8A14(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  *(a1 + 126) = 0;
  v3 = sub_238F2AF94(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C8A74(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  return a1;
}

uint64_t sub_2392C8AC0(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  return a1;
}

BOOL sub_2392C8B18(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  v3 = sub_238F06590(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C8B78(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v3 = a1 + 88;
  if (*(v3 + 64))
  {
    *(a1 + 152) = 0;
  }

  v4 = sub_238F1E808(v3, a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  return v4 == 0;
}

BOOL sub_2392C8BD0(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  v3 = sub_238F36E54(a1 + 16, (a1 + 88));
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  return v6 == 0;
}

BOOL sub_2392C8C2C(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 88) = 0;
      v3 = sub_238F063FC(a1 + 88, a1 + 16);
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

BOOL sub_2392C8C88(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v3 = sub_238F34D50(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C8CD8(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v3 = sub_238EFF894(a1 + 16, (a1 + 88));
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

uint64_t sub_2392C8D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2393C5AAC(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  result = sub_2393C5BDC(a2 + 16, a1);
  *(a2 + 96) = 0;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_2392C8D70(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  *(a1 + 96) = 0;
  return a1;
}

BOOL sub_2392C8DBC(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v3 = sub_238F04A78(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C8E0C(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 116) = 0;
  *(a1 + 118) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 111) = 0;
  return a1;
}

BOOL sub_2392C8E60(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 116) = 0;
  *(a1 + 118) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 111) = 0;
  *(a1 + 88) = 0;
  v3 = sub_238F04574(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C8EBC(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 92) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return a1;
}

uint64_t sub_2392C8F0C(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  *(a1 + 108) = 0;
  *(a1 + 92) = 0;
  *(a1 + 99) = 0;
  return a1;
}

BOOL sub_2392C8F60(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 108) = 0;
  *(a1 + 96) = 0;
  *(a1 + 103) = 0;
  *(a1 + 88) = 0;
  v3 = sub_238F0482C(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C8FB8(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  v3 = sub_238F033B0(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C9014(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  v3 = sub_238F03100((a1 + 88), a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C9064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[0] = *(a1 + 72);
  if (v3[0] == 1)
  {
    v3[1] = *(a1 + 73);
  }

  result = sub_238EA4630(a2, a1, v3);
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 114) = 0;
  *(result + 116) = 0;
  *(result + 118) = 0;
  *(result + 120) = 0;
  *(result + 122) = 0;
  *(result + 124) = 0;
  return result;
}

BOOL sub_2392C90CC(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    *(a1 + 118) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0;
    v3 = sub_238F36740(a1 + 96, a1 + 16);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v3)
    {
      return 0;
    }

    else
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 125) = sub_238DE36D8((a1 + 88), v4)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_2392C9144(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 94) = 0;
  *(a1 + 98) = 0;
  *(a1 + 102) = 0;
  return a1;
}

BOOL sub_2392C9198(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 94) = 0;
  *(a1 + 98) = 0;
  *(a1 + 102) = 0;
  v3 = sub_238F0C4BC(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C91F4(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  sub_2393C5AAC(a1 + 96);
  sub_2393C5ADC(a1 + 96, 0, 0);
  return a1;
}

BOOL sub_2392C9254(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_2393C5AAC(&v9 + 8);
  sub_2393C5ADC(&v9 + 8, 0, 0);
  v5 = v9;
  *(a1 + 104) = v10;
  v6 = v12;
  *(a1 + 120) = v11;
  *(a1 + 136) = v6;
  *(a1 + 152) = v13;
  *(a1 + 88) = v5;
  v7 = sub_238F0C640(a1 + 88, a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

uint64_t sub_2392C92F4(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  sub_2393C5AAC(a1 + 96);
  sub_2393C5ADC(a1 + 96, 0, 0);
  return a1;
}

BOOL sub_2392C9354(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_2393C5AAC(&v9 + 8);
  sub_2393C5ADC(&v9 + 8, 0, 0);
  v5 = v9;
  *(a1 + 104) = v10;
  v6 = v12;
  *(a1 + 120) = v11;
  *(a1 + 136) = v6;
  *(a1 + 152) = v13;
  *(a1 + 88) = v5;
  v7 = sub_238F0C368(a1 + 88, a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

BOOL sub_2392C93F4(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_2393C5AAC(&v9 + 8);
  sub_2393C5ADC(&v9 + 8, 0, 0);
  v5 = v9;
  *(a1 + 104) = v10;
  v6 = v12;
  *(a1 + 120) = v11;
  *(a1 + 136) = v6;
  *(a1 + 152) = v13;
  *(a1 + 88) = v5;
  v7 = sub_238F0C790(a1 + 88, a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

uint64_t sub_2392C9494(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 144) = 0;
  *(a1 + 146) = 0;
  *(a1 + 150) = 0;
  *(a1 + 160) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 256) = 0;
  return a1;
}

BOOL sub_2392C94FC(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 144) = 0;
  *(a1 + 146) = 0;
  *(a1 + 150) = 0;
  *(a1 + 160) = 0;
  *(a1 + 224) = 0;
  *(a1 + 256) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v3 = sub_238F0C09C(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C956C(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  sub_2393C5AAC(a1 + 112);
  sub_2393C5ADC(a1 + 112, 0, 0);
  sub_2393C5AAC(a1 + 184);
  sub_2393C5ADC(a1 + 184, 0, 0);
  return a1;
}

BOOL sub_2392C95E4(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v22 = v1;
  v23 = v2;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  sub_2393C5AAC(&v12 + 8);
  sub_2393C5ADC(&v12 + 8, 0, 0);
  sub_2393C5AAC(&v17);
  sub_2393C5ADC(&v17, 0, 0);
  v5 = v17;
  *(a1 + 200) = v18;
  v6 = v20;
  *(a1 + 216) = v19;
  *(a1 + 232) = v6;
  v7 = v13;
  *(a1 + 136) = v14;
  v8 = v16;
  *(a1 + 152) = v15;
  *(a1 + 168) = v8;
  *(a1 + 184) = v5;
  v9 = v12;
  *(a1 + 88) = 0u;
  *(a1 + 104) = v9;
  *(a1 + 248) = v21;
  *(a1 + 120) = v7;
  v10 = sub_238F0CAFC(a1 + 88, a1 + 16);
  *a1 = v10;
  *(a1 + 8) = v11;
  return v10 == 0;
}

uint64_t sub_2392C96CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = *(a1 + 72);
  if (v4[0] == 1)
  {
    v4[1] = *(a1 + 73);
  }

  sub_238EA4630(a2, a1, v4);
  *(a2 + 96) = 0;
  *(a2 + 120) = 0;
  *(a2 + 136) = 0;
  sub_2393C5AAC(a2 + 144);
  sub_2393C5ADC(a2 + 144, 0, 0);
  sub_2393C5AAC(a2 + 216);
  result = sub_2393C5ADC(a2 + 216, 0, 0);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  return result;
}

BOOL sub_2392C9760(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_2392C9890(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 296) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

double sub_2392C97B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = *(a1 + 72);
  if (v4[0] == 1)
  {
    v4[1] = *(a1 + 73);
  }

  v2 = sub_238EA4630(a2, a1, v4);
  *(v2 + 130) = 0;
  *(v2 + 132) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  result = 0.0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0;
  return result;
}

BOOL sub_2392C9814(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    *(a1 + 144) = 0;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 96) = 0u;
    v3 = sub_238F14AC8(a1 + 96, a1 + 16);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v3)
    {
      return 0;
    }

    else
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 144) = sub_238DE36D8((a1 + 88), v4)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_2392C9890(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v9 = v1;
  v10 = v2;
  memset(v8, 0, sizeof(v8));
  sub_2393C5AAC(&v8[1]);
  sub_2393C5ADC(&v8[1], 0, 0);
  sub_2393C5AAC(&v8[5] + 8);
  sub_2393C5ADC(&v8[5] + 8, 0, 0);
  *&v8[10] = 0;
  BYTE8(v8[10]) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 248) = *(&v8[7] + 8);
  v5 = *(&v8[9] + 8);
  *(a1 + 264) = *(&v8[8] + 8);
  *(a1 + 280) = v5;
  *(a1 + 296) = BYTE8(v8[10]);
  *(a1 + 184) = *(&v8[3] + 8);
  *(a1 + 200) = *(&v8[4] + 8);
  *(a1 + 216) = *(&v8[5] + 8);
  *(a1 + 232) = *(&v8[6] + 8);
  *(a1 + 136) = *(v8 + 8);
  *(a1 + 152) = *(&v8[1] + 8);
  *(a1 + 168) = *(&v8[2] + 8);
  v6 = sub_238F1481C(a1 + 96, a1 + 16);
  *a1 = v6;
  *(a1 + 8) = v7;
  return v6 == 0;
}

uint64_t sub_2392C99C8(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return a1;
}

uint64_t sub_2392C9A44(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 114) = 0;
  *(a1 + 116) = 0;
  *(a1 + 118) = 0;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  *(a1 + 124) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  return a1;
}

BOOL sub_2392C9AA8(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 104) = 0;
  *(a1 + 88) = 0uLL;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  v3 = sub_238F1C0CC(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_2392C9B3C(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v3 = sub_238F1C224(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C9B8C(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  return a1;
}

BOOL sub_2392C9BF0(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v3 = sub_238F1C6B8(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C9C58(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 280) = 0;
  return a1;
}

BOOL sub_2392C9CC0(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 90) = 0u;
  *(a1 + 105) = 0u;
  *(a1 + 121) = 0;
  *(a1 + 128) = 0;
  v3 = sub_238F1C390(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_2392C9D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[0] = *(a1 + 72);
  if (v3[0] == 1)
  {
    v3[1] = *(a1 + 73);
  }

  result = sub_238EA4630(a2, a1, v3);
  *(result + 96) = 0;
  *(result + 126) = 0;
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 117) = 0;
  return result;
}

BOOL sub_2392C9DC4(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    *(a1 + 128) = 0;
    *(a1 + 112) = 0u;
    *(a1 + 96) = 0u;
    v3 = sub_238F2F020(a1 + 96, a1 + 16);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v3)
    {
      return 0;
    }

    else
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 129) = sub_238DE36D8((a1 + 88), v4)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

void *sub_2392C9E40(void *a1, uint64_t a2)
{
  sub_2393C5AAC((a1 + 2));
  *a1 = 0;
  a1[1] = 0;
  sub_2393C5BDC((a1 + 2), a2);
  sub_2393C5AAC((a1 + 11));
  sub_2393C5ADC((a1 + 11), 0, 0);
  a1[20] = 0;
  return a1;
}

BOOL sub_2392C9E9C(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_2393C5AAC(&v9);
  sub_2393C5ADC(&v9, 0, 0);
  *(&v13 + 1) = 0;
  v5 = v9;
  *(a1 + 104) = v10;
  v6 = v12;
  *(a1 + 120) = v11;
  *(a1 + 136) = v6;
  *(a1 + 88) = v5;
  *(a1 + 152) = v13;
  v7 = sub_238F0AA14(a1 + 88, a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

uint64_t sub_2392C9F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = *(a1 + 72);
  if (v4[0] == 1)
  {
    v4[1] = *(a1 + 73);
  }

  sub_238EA4630(a2, a1, v4);
  *(a2 + 96) = 0;
  *(a2 + 99) = 0;
  *(a2 + 101) = 0;
  *(a2 + 164) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 119) = 0;
  sub_2393C5AAC(a2 + 184);
  result = sub_2393C5ADC(a2 + 184, 0, 0);
  *(a2 + 256) = 0;
  return result;
}

BOOL sub_2392C9FD4(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_2392CA370(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 256) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_2392CA028(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 184) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 328) = 0;
  *(a1 + 408) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 568) = 0;
  return a1;
}

BOOL sub_2392CA0A8(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v58 = v1;
  v59 = v2;
  bzero(v23, 0x238uLL);
  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v24;
  *(a1 + 120) = v25;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  sub_2392CA28C(a1 + 184, v26);
  v5 = v27;
  *(a1 + 256) = v27;
  if (v5 == 1)
  {
    *(a1 + 312) = v31;
    v6 = v29;
    *(a1 + 264) = v28;
    *(a1 + 280) = v6;
    *(a1 + 296) = v30;
    v7 = v32;
    *(a1 + 320) = v32;
    if (v7 == 1)
    {
      *(a1 + 321) = v33;
      v32 = 0;
    }

    v27 = 0;
  }

  v8 = v34;
  *(a1 + 328) = v34;
  if (v8 == 1)
  {
    *(a1 + 336) = 0;
    *(a1 + 400) = 0;
    if (v41 == 1)
    {
      v9 = v35;
      *(a1 + 384) = v38;
      v10 = v36;
      v11 = v37;
      *(a1 + 336) = v9;
      *(a1 + 352) = v10;
      *(a1 + 368) = v11;
      v12 = v39;
      *(a1 + 392) = v39;
      if (v12 == 1)
      {
        *(a1 + 393) = v40;
        v39 = 0;
      }

      *(a1 + 400) = 1;
    }

    v34 = 0;
  }

  v13 = v45[0];
  *(a1 + 440) = v44;
  *(a1 + 456) = v13;
  *(a1 + 465) = *(v45 + 9);
  v14 = v43;
  *(a1 + 408) = v42;
  *(a1 + 424) = v14;
  v15 = v46;
  *(a1 + 488) = v46;
  if (v15 == 1)
  {
    *(a1 + 560) = v51;
    v16 = v50;
    *(a1 + 528) = v49;
    *(a1 + 544) = v16;
    v17 = v48;
    *(a1 + 496) = v47;
    *(a1 + 512) = v17;
  }

  v18 = v52;
  *(a1 + 568) = v52;
  if (v18 == 1)
  {
    v19 = v56;
    *(a1 + 608) = v55;
    *(a1 + 624) = v19;
    *(a1 + 640) = v57;
    v20 = v54;
    *(a1 + 576) = v53;
    *(a1 + 592) = v20;
  }

  v21 = sub_238F31104(a1 + 88, a1 + 16);
  *a1 = v21;
  *(a1 + 8) = v22;
  return v21 == 0;
}

uint64_t sub_2392CA28C(uint64_t result, __int128 *a2)
{
  if (*(result + 64) == *(a2 + 64))
  {
    if (*(result + 64))
    {
      v2 = *a2;
      v3 = a2[1];
      *(result + 32) = *(a2 + 4);
      *result = v2;
      *(result + 16) = v3;
      *(result + 40) = *(a2 + 40);
      v4 = *(a2 + 44);
      *(result + 52) = *(a2 + 13);
      *(result + 44) = v4;
      LODWORD(v4) = *(a2 + 56);
      *(result + 56) = v4;
      if (v4 == 1)
      {
        *(result + 57) = *(a2 + 57);
        *(a2 + 56) = 0;
      }
    }
  }

  else if (*(result + 64))
  {
    *(result + 64) = 0;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(result + 48) = *(a2 + 6);
    *(result + 16) = v6;
    *(result + 32) = v7;
    *result = v5;
    *(result + 56) = 0;
    v8 = *(a2 + 56);
    *(result + 56) = v8;
    if (v8 == 1)
    {
      *(result + 57) = *(a2 + 57);
      *(a2 + 56) = 0;
    }

    *(result + 64) = 1;
  }

  return result;
}

uint64_t sub_2392CA338(uint64_t a1)
{
  sub_2393C5AAC(a1);
  sub_2393C5ADC(v2, 0, 0);
  *(a1 + 72) = 0;
  return a1;
}

BOOL sub_2392CA370(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v8 = v1;
  v9 = v2;
  memset(&v7[5], 0, 88);
  memset(v7, 0, 56);
  sub_2393C5AAC(&v7[5] + 8);
  sub_2393C5ADC(&v7[5] + 8, 0, 0);
  LOBYTE(v7[10]) = 0;
  *(a1 + 96) = 0;
  *(a1 + 97) = 0;
  *(a1 + 99) = 0;
  *(a1 + 101) = 0;
  *(a1 + 104) = *(v7 + 8);
  *(a1 + 120) = *(&v7[1] + 8);
  *(a1 + 136) = *(&v7[2] + 8);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 172) = 0;
  *(a1 + 176) = v7[5];
  if (LOBYTE(v7[5]) == 1)
  {
    *(a1 + 177) = BYTE1(v7[5]);
  }

  *(a1 + 200) = *(&v7[6] + 8);
  *(a1 + 216) = *(&v7[7] + 8);
  *(a1 + 232) = *(&v7[8] + 8);
  *(a1 + 241) = *(&v7[9] + 1);
  *(a1 + 184) = *(&v7[5] + 8);
  v5 = sub_238F320D4(a1 + 96, a1 + 16);
  *a1 = v5;
  *(a1 + 8) = v6;
  return v5 == 0;
}

uint64_t sub_2392CA4C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  objc_initWeak(a1, a2);
  *(a1 + 8) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

void sub_2392CA514(uint64_t a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROperationalBrowser.mm", 45);
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_2392CA560(a1);
    v2 = *(a1 + 32);
  }

  *(a1 + 32) = v2 + 1;
}

void sub_2392CA560(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROperationalBrowser.mm", 66);
  v2 = *(a1 + 24);
  v3 = sub_2393D9044(9u);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 134217984;
      v19 = a1;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%p already has a persistent operational browse running", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "%p already has a persistent operational browse running");
    }
  }

  else
  {
    if (v4)
    {
      *buf = 134217984;
      v19 = a1;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%p trying to start persistent operational browse", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "%p trying to start persistent operational browse", a1);
    }

    Connection = DNSServiceCreateConnection((a1 + 16));
    if (Connection)
    {
      v6 = Connection;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v19 = a1;
        v20 = 1024;
        LODWORD(v21) = v6;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%p failed to create connection for persistent operational browse: %d", buf, 0x12u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9, 1, "%p failed to create connection for persistent operational browse: %d");
      }
    }

    else
    {
      v7 = DNSServiceSetDispatchQueue(*(a1 + 16), *(a1 + 8));
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v19 = a1;
          v20 = 1024;
          LODWORD(v21) = v8;
          _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%p failed to set up dispatch queue properly for persistent operational browse: %d", buf, 0x12u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "%p failed to set up dispatch queue properly for persistent operational browse: %d", a1, v8);
        }

        DNSServiceRefDeallocate(*(a1 + 16));
      }

      else
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v10 = *(a1 + 40);
        *(a1 + 40) = v9;

        v11 = 0;
        *(a1 + 24) = 1;
        do
        {
          v12 = off_278A750E8[v11];
          sdRef = *(a1 + 16);
          v13 = DNSServiceBrowse(&sdRef, 0x4000u, 0, "_matter._tcp", v12, sub_2392CAA38, a1);
          if (v13)
          {
            v14 = v13;
            if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218498;
              if (v12)
              {
                v15 = v12;
              }

              else
              {
                v15 = "(null)";
              }

              v19 = a1;
              v20 = 2080;
              v21 = v15;
              v22 = 1024;
              v23 = v14;
              _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%p failed to start persistent operational browse for %s domain: %d", buf, 0x1Cu);
            }

            if (sub_2393D5398(1u))
            {
              if (v12)
              {
                v16 = v12;
              }

              else
              {
                v16 = "(null)";
              }

              sub_2393D5320(9, 1, "%p failed to start persistent operational browse for %s domain: %d", a1, v16, v14);
            }
          }

          ++v11;
        }

        while (v11 != 2);
      }
    }
  }
}

void sub_2392CA900(uint64_t a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROperationalBrowser.mm", 55);
  v2 = *(a1 + 32);
  if (v2 == 1)
  {
    sub_2392CA950(a1);
    v2 = *(a1 + 32);
  }

  *(a1 + 32) = v2 - 1;
}

void sub_2392CA950(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v5 = a1;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "%p stopping persistent operational browse", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "%p stopping persistent operational browse", a1);
  }

  if (*(a1 + 24) == 1)
  {
    v3 = *(a1 + 40);
    *(a1 + 40) = 0;

    DNSServiceRefDeallocate(*(a1 + 16));
    *(a1 + 24) = 0;
  }
}

void sub_2392CAA38(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROperationalBrowser.mm", 114);
  if (a4)
  {
    v12 = sub_2393D9044(9u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = a4;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Operational browse failure: %d", &buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Operational browse failure: %d", a4);
    }

    sub_2392CA950(a8);
    if ((*(a8 + 25) & 1) == 0)
    {
      sub_2392CA560(a8);
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
    if ((a2 & 2) != 0)
    {
      [*(a8 + 40) addObject:v24];
      if ((a2 & 1) == 0)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = *(a8 + 40);
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v32 count:16];
        if (v15)
        {
          v16 = *v26;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v25 + 1) + 8 * i);
              buf = 0uLL;
              v19 = v18;
              v20 = sub_23948BE88([v18 UTF8String], &buf);
              v21 = sub_2393D9044(9u);
              v22 = v21;
              if (v20)
              {
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *v29 = 138412290;
                  v30 = v18;
                  _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Invalid instance name: '%@'\n", v29, 0xCu);
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(9, 1, "Invalid instance name: '%@'\n", v18);
                }
              }

              else
              {
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *v29 = 138412290;
                  v30 = v18;
                  _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_DEFAULT, "Notifying controller factory about new operational instance: '%@'", v29, 0xCu);
                }

                if (sub_2393D5398(2u))
                {
                  sub_2393D5320(9, 2, "Notifying controller factory about new operational instance: '%@'", v18);
                }

                WeakRetained = objc_loadWeakRetained(a8);
                sub_238DCB940(WeakRetained, &buf);
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v25 objects:v32 count:16];
          }

          while (v15);
        }

        [*(a8 + 40) removeAllObjects];
      }
    }

    else
    {
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v24;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Matter operational instance advertisement removed: '%@'\n", &buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "Matter operational instance advertisement removed: '%@'\n", v24);
      }

      [*(a8 + 40) removeObject:v24];
    }
  }
}

uint64_t sub_2392CAE00(uint64_t a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROperationalBrowser.mm", 163);
  *(a1 + 25) = 1;
  sub_2392CA950(a1);

  objc_destroyWeak(a1);
  return a1;
}

BOOL sub_2392CAE64(uint64_t a1, uint64_t a2)
{
  v2 = sub_2393C4890(a1, a2);
  if ((byte_27DF77640 & 1) == 0)
  {
    byte_27DF77640 = 1;
    byte_27DF77630 = 0;
    dword_27DF77634 = 29;
    qword_27DF77638 = 0;
    qword_27DF77628 = &unk_284BB70F8;
  }

  return sub_2393C49D4(v2, &qword_27DF77628);
}

uint64_t *sub_2392CAEDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2393C4890(a1, a2);
  if ((byte_27DF77640 & 1) == 0)
  {
    byte_27DF77640 = 1;
    byte_27DF77630 = 0;
    dword_27DF77634 = 29;
    qword_27DF77638 = 0;
    qword_27DF77628 = &unk_284BB70F8;
  }

  return sub_2393C48C8(v2, &qword_27DF77628);
}

unint64_t sub_2392CAF6C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(a2 + 2);
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v30 = *a2;
        v52 = 12;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v31 = sub_2394C7C20();
        v32 = sub_2394C9128(v31);
        v6 = (*(*v32 + 48))(v32, v30, &v52);
        if (v6)
        {
          goto LABEL_34;
        }

        *(a3 + 68) = 1;
        v6 = sub_2393C4D64(a3);
        if (v6)
        {
          goto LABEL_34;
        }

        v57 = a3;
        sub_2393C7B90(v58);
        sub_238DB91E0(&v52, &v59);
        if (v60)
        {
          v43 = v59;
          v44 = 12 * v60;
          do
          {
            v51 = *v43;
            v6 = sub_2392CB948(v57, v58, &v51);
            if (v6)
            {
              goto LABEL_87;
            }

            v43 += 6;
            v44 -= 12;
          }

          while (v44);
        }
      }

      else
      {
        v5 = 0;
        LODWORD(v6) = 0;
        if (v4 != 2)
        {
          return v6 | v5;
        }

        v12 = *a2;
        v52 = 4;
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v13 = sub_2394C7C20();
        v14 = sub_2394C9128(v13);
        v6 = (*(*v14 + 40))(v14, v12, &v52);
        if (v6)
        {
          goto LABEL_34;
        }

        *(a3 + 68) = 1;
        v6 = sub_2393C4D64(a3);
        if (v6)
        {
          goto LABEL_34;
        }

        v57 = a3;
        sub_2393C7B90(v58);
        sub_238DB91E0(&v52, &v59);
        if (v60)
        {
          v15 = v59;
          v16 = 4 * v60;
          while (1)
          {
            v51 = *v15;
            v6 = sub_2392CB948(v57, v58, &v51);
            if (v6)
            {
              break;
            }

            v15 += 2;
            v16 -= 4;
            if (!v16)
            {
              goto LABEL_68;
            }
          }

LABEL_87:
          sub_2393D6E84(&v61);
          sub_2393C4E54(a3);
          goto LABEL_34;
        }
      }

LABEL_68:
      sub_2393D6E84(&v61);
      sub_2393C4E54(a3);
LABEL_69:
      v6 = 0;
      *(a3 + 74) = -1;
      *(a3 + 76) = 0;
      goto LABEL_34;
    }

    v18 = *a2;
    v52 = 8;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v19 = sub_2394C7C20();
    v20 = sub_2394C9128(v19);
    v6 = (*(*v20 + 32))(v20, v18, &v52);
    if (v6)
    {
LABEL_34:
      sub_2393D6B1C(&v52);
      v5 = v6 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }

    sub_238DB91E0(&v52, &v59);
    *(a3 + 68) = 1;
    v21 = sub_2393C4D64(a3);
    if (!v21)
    {
      v57 = a3;
      sub_2393C7B90(v58);
      if (!v60)
      {
LABEL_74:
        sub_2393C4E54(a3);
        v22 = 0;
        LODWORD(v21) = 0;
        *(a3 + 74) = -1;
        *(a3 + 76) = 0;
        goto LABEL_75;
      }

      v45 = v59;
      v46 = &v59[4 * v60];
      while (1)
      {
        LODWORD(v51) = *v45;
        WORD2(v51) = *(v45 + 4);
        v21 = sub_2392CB848(v57, v58, &v51);
        if (v21)
        {
          break;
        }

        v45 += 4;
        if (v45 == v46)
        {
          goto LABEL_74;
        }
      }

      sub_2393C4E54(a3);
    }

    v22 = v21 & 0xFFFFFFFF00000000;
LABEL_75:
    v6 = v21 | v22;
    sub_2393D6E84(&v61);
    goto LABEL_34;
  }

  if (v4 > 65531)
  {
    if (v4 == 65532)
    {
      v28 = *a2;
      LOBYTE(v57) = 0;
      BYTE2(v57) = 0;
      WORD2(v57) = 0;
      LOBYTE(v58[0]) = 0;
      v52 = sub_238F40F9C(v28, 0, &v57) == 0;
      *(a3 + 68) = 1;
      v17 = &v52;
    }

    else
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65533)
      {
        return v6 | v5;
      }

      v57 = 3;
      *(a3 + 68) = 1;
      v17 = &v57;
    }

    v29 = sub_238DC7424(a3, v17);
    LODWORD(v6) = v29;
    v5 = v29 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  if (v4 == 3)
  {
    v23 = *a2;
    v52 = 6;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v24 = sub_2394C7C20();
    v25 = sub_2394C9128(v24);
    v26 = (*(*v25 + 16))(v25, &v52);
    LODWORD(v6) = v26;
    if (v26)
    {
      v27 = v26 & 0xFFFFFFFF00000000;
LABEL_84:
      sub_2393D6B1C(&v52);
      LODWORD(v6) = v27 | v6;
      v5 = v27 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }

    sub_238DB91E0(&v52, &v59);
    if (v23)
    {
      if (!v60)
      {
        goto LABEL_61;
      }

      v34 = 0;
      v35 = 1;
      do
      {
        if (*sub_2392CB9E0(&v59, v34) == v23)
        {
          break;
        }

        v34 = v35;
      }

      while (v60 > v35++);
      if (v60 <= v34)
      {
LABEL_61:
        v27 = 0x9C00000000;
        LODWORD(v6) = 216;
LABEL_83:
        sub_2393D6E84(&v61);
        goto LABEL_84;
      }

      v37 = *(sub_2392CB9E0(&v59, v34) + 4);
      if (v37 != 1)
      {
        if (v37 != 2)
        {
          LODWORD(v6) = 0;
          v27 = 0;
          goto LABEL_83;
        }

        *(a3 + 68) = 1;
        v6 = sub_2393C4D64(a3);
        if (v6)
        {
          goto LABEL_82;
        }

        v57 = a3;
        sub_2393C7B90(v58);
        if (v60)
        {
          v38 = v59;
          v39 = &v59[3 * v60];
          do
          {
            if (v38)
            {
              v40 = v38[1];
              if (v40 == v23)
              {
LABEL_49:
                v51 = *v38;
                v6 = sub_2392CB948(v57, v58, &v51);
                if (v6)
                {
                  goto LABEL_50;
                }
              }

              else if (v60)
              {
                while (v40 != 0xFFFF)
                {
                  v41 = 6 * v60;
                  v42 = v59 + 1;
                  while (*(v42 - 1) != v40)
                  {
                    v42 += 3;
                    v41 -= 6;
                    if (!v41)
                    {
                      goto LABEL_59;
                    }
                  }

                  v40 = *v42;
                  if (v40 == v23)
                  {
                    goto LABEL_49;
                  }
                }
              }
            }

LABEL_59:
            v38 += 3;
          }

          while (v38 != v39);
        }

LABEL_81:
        sub_2393C4E54(a3);
        v6 = 0;
        *(a3 + 74) = -1;
        *(a3 + 76) = 0;
        goto LABEL_82;
      }

      *(a3 + 68) = 1;
      v6 = sub_2393C4D64(a3);
      if (v6)
      {
        goto LABEL_82;
      }

      v57 = a3;
      sub_2393C7B90(v58);
      if (!v60)
      {
        goto LABEL_81;
      }

      v49 = v59 + 1;
      v50 = 6 * v60;
      while (1)
      {
        if (*v49 == v23)
        {
          v51 = *(v49 - 1);
          v6 = sub_2392CB948(v57, v58, &v51);
          if (v6)
          {
            break;
          }
        }

        v49 += 3;
        v50 -= 6;
        if (!v50)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
      *(a3 + 68) = 1;
      v6 = sub_2393C4D64(a3);
      if (v6)
      {
        goto LABEL_82;
      }

      v57 = a3;
      sub_2393C7B90(v58);
      if (!v60)
      {
        goto LABEL_81;
      }

      v47 = v59;
      v48 = 6 * v60;
      while (1)
      {
        if (*v47)
        {
          v51 = *v47;
          v6 = sub_2392CB948(v57, v58, &v51);
          if (v6)
          {
            break;
          }
        }

        v47 += 3;
        v48 -= 6;
        if (!v48)
        {
          goto LABEL_81;
        }
      }
    }

LABEL_50:
    sub_2393C4E54(a3);
LABEL_82:
    v27 = v6 & 0xFFFFFFFF00000000;
    goto LABEL_83;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 4)
  {
    v7 = *a2;
    v52 = 40;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v8 = sub_2394C7C20();
    v9 = sub_2394C9128(v8);
    v6 = (*(*v9 + 24))(v9, v7, &v52);
    if (v6)
    {
      goto LABEL_34;
    }

    *(a3 + 68) = 1;
    v6 = sub_2393C4D64(a3);
    if (v6)
    {
      goto LABEL_34;
    }

    v57 = a3;
    sub_2393C7B90(v58);
    sub_238DB91E0(&v52, &v59);
    if (v60)
    {
      v10 = v59;
      v11 = 40 * v60;
      while (1)
      {
        v6 = sub_2392CBA0C(v57, v58, v10);
        if (v6)
        {
          break;
        }

        v10 += 40;
        v11 -= 40;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      sub_2393D6E84(&v61);
      sub_2393C4E54(a3);
      goto LABEL_34;
    }

LABEL_11:
    sub_2393D6E84(&v61);
    sub_2393C4E54(a3);
    goto LABEL_69;
  }

  return v6 | v5;
}

void sub_2392CB7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2393D6E84((v3 - 72));
  sub_2393D6B1C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2392CB848(uint64_t a1, __int128 *a2, unsigned int *a3)
{
  if (!sub_2393C4EF0(a1, a2))
  {
    return 0;
  }

  if (*(a1 + 70) == 1)
  {
    v6 = sub_238F0E280(a3, *(*a1 + 176), 0x100uLL);
  }

  else
  {
    v6 = sub_2392CB8E0(a1, a3);
  }

  v8 = v6;
  sub_2393C4F30(a1, v6, v7, a2);
  return v8;
}

uint64_t sub_2392CB8E0(unsigned __int16 *a1, unsigned int *a2)
{
  result = sub_2393C4C40(&v5, *a1, a1 + 20, *(a1 + 16));
  if (!result)
  {
    result = sub_238F0E280(a2, *(*a1 + 176), 2uLL);
    if (!result)
    {
      return sub_2393C4D18(&v5, *a1);
    }
  }

  return result;
}

unint64_t sub_2392CB948(uint64_t a1, __int128 *a2, unint64_t *a3)
{
  if (!sub_2393C4EF0(a1, a2))
  {
    return 0;
  }

  if (*(a1 + 70) == 1)
  {
    v6 = sub_2393C8154(*(*a1 + 176), 0x100uLL, *a3);
  }

  else
  {
    v6 = sub_238DC7424(a1, a3);
  }

  v8 = v6;
  sub_2393C4F30(a1, v6, v7, a2);
  return v8;
}

unint64_t sub_2392CB9E0(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C3F0();
  }

  return *a1 + 6 * a2;
}

unint64_t sub_2392CBA0C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (!sub_2393C4EF0(a1, a2))
  {
    return 0;
  }

  if (*(a1 + 70) == 1)
  {
    v6 = sub_238F0E38C(a3, *(*a1 + 176), 0x100uLL);
  }

  else
  {
    v6 = sub_2392CBAA4(a1, a3);
  }

  v8 = v6;
  sub_2393C4F30(a1, v6, v7, a2);
  return v8;
}

uint64_t sub_2392CBAA4(unsigned __int16 *a1, uint64_t a2)
{
  result = sub_2393C4C40(&v5, *a1, a1 + 20, *(a1 + 16));
  if (!result)
  {
    result = sub_238F0E38C(a2, *(*a1 + 176), 2uLL);
    if (!result)
    {
      return sub_2393C4D18(&v5, *a1);
    }
  }

  return result;
}

uint64_t sub_2392CC3D0(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = v2[1];
      if (*(a1 + 48) == 1)
      {
        (*(**v2 + 24))();
        v2 = *a1;
      }

      v2[1] = 0;
      *a1 = v3;
      v2 = v3;
    }

    while (v3);
  }

  return a1;
}

unint64_t sub_2392CC450(uint64_t a1, void *a2)
{
  if (a2[1])
  {
    v2 = 0x3000000000;
LABEL_3:
    v3 = 47;
    return v3 | v2;
  }

  if (!*a2)
  {
    v2 = 0x3100000000;
    goto LABEL_3;
  }

  v7 = (*(**a2 + 32))(*a2);
  if (!v8)
  {
    v2 = 0x3400000000;
    goto LABEL_3;
  }

  v9 = v7;
  v10 = (v7 + 8 * v8);
  v3 = 47;
  do
  {
    if (*v9 == -1 || (v11 = *(v9 + 1), v11 > 0xFFF4FFFF))
    {
      v2 = 0x3800000000;
      return v3 | v2;
    }

    if (v11 >= 0x8000)
    {
      v2 = 0x3800000000;
      if (v11 < 0x10000 || (v11 + 1024) > 0x3FEu)
      {
        return v3 | v2;
      }
    }

    if (sub_2392CC5DC(a1, v9))
    {
      v2 = 0x3C00000000;
      v3 = 26;
      return v3 | v2;
    }

    v9 += 4;
  }

  while (v9 != v10);
  if (*(a1 + 48) == 1 && (v12 = (*(**a2 + 16))(*a2, a1 + 16), (v3 = v12) != 0))
  {
    v2 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    a2[1] = *a1;
    *a1 = a2;
  }

  return v3 | v2;
}

uint64_t sub_2392CC5DC(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 8);
  if (v4 && sub_238EA5554(v4, a2))
  {
    return *(a1 + 8);
  }

  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (!sub_238EA5554(*v6, a2))
  {
    v6 = v6[1];
    if (!v6)
    {
      return 0;
    }
  }

  result = *v6;
  *(a1 + 8) = *v6;
  return result;
}

uint64_t sub_2392CC654(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2 == a2)
    {
      v5 = 0;
LABEL_9:
      v7 = v5 + 1;
      if (!v5)
      {
        v7 = a1;
      }

      *v7 = v2[1];
      if (*(a1 + 8) == a2)
      {
        *(a1 + 8) = 0;
      }

      v2[1] = 0;
      if (*(a1 + 48) == 1)
      {
        (*(*v3 + 24))(v3);
      }

      v6 = 0;
      v4 = 0;
    }

    else
    {
      v4 = 216;
      while (1)
      {
        v5 = v2;
        v2 = v2[1];
        if (!v2)
        {
          break;
        }

        v3 = *v2;
        if (*v2 == a2)
        {
          goto LABEL_9;
        }
      }

      v6 = 0x7100000000;
    }
  }

  else
  {
    v6 = 0x7100000000;
    v4 = 216;
  }

  return v4 | v6;
}

uint64_t sub_2392CC738(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 16) == *a2 && *(a1 + 24) == a2[1] && *(a1 + 32) == a2[2] && *(a1 + 40) == a2[3])
    {
LABEL_18:
      v15 = 0;
      v14 = 0;
      return v14 | v15;
    }

    sub_2392CC9A0(a1);
    if (*(a1 + 48))
    {
      *(a1 + 48) = 0;
    }
  }

  v4 = *(a2 + 1);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v4;
  *(a1 + 48) = 1;
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v6 = 0;
  do
  {
    if ((*(**v5 + 16))(*v5, a1 + 16))
    {
      *buf = (*(**v5 + 32))();
      v18 = v7;
      v8 = sub_2392CCA1C(buf, 0);
      v9 = *v8;
      v10 = *(v8 + 1);
      v11 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sub_2393C9138();
        *buf = 67109890;
        *&buf[4] = v9;
        LOWORD(v18) = 1024;
        *(&v18 + 2) = HIWORD(v10);
        HIWORD(v18) = 1024;
        v19 = v10;
        v20 = 2080;
        v21 = v12;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Cluster %u/0x%04X_%04X startup failed: %s", buf, 0x1Eu);
      }

      v6 = 1;
      if (sub_2393D5398(1u))
      {
        v13 = sub_2393C9138();
        sub_2393D5320(13, 1, "Cluster %u/0x%04X_%04X startup failed: %s", v9, HIWORD(v10), v10, v13);
      }
    }

    v5 = v5[1];
  }

  while (v5);
  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = 0xAF00000000;
  v15 = 41;
  return v14 | v15;
}

uint64_t sub_2392CC9A0(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = result;
    v2 = *result;
    if (!*result)
    {
      goto LABEL_5;
    }

    do
    {
      result = (*(**v2 + 24))();
      v2 = v2[1];
    }

    while (v2);
    if (*(v1 + 48))
    {
LABEL_5:
      *(v1 + 48) = 0;
    }
  }

  return result;
}

unint64_t sub_2392CCA1C(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952D45C();
  }

  return *a1 + 8 * a2;
}

unint64_t sub_2392CCA44(uint64_t a1, void *a2)
{
  v4 = (*(**a2 + 32))();
  v13[0] = v4;
  v13[1] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = 8 * v5;
    v8 = 47;
    while (1)
    {
      v9 = *v6;
      if (v9 != *sub_2392CCA1C(v13, 0))
      {
        break;
      }

      v6 += 4;
      v7 -= 8;
      if (!v7)
      {
        v10 = sub_2392CC450(a1, a2);
        v11 = v10 & 0xFFFFFFFF00000000;
        v8 = v10;
        return v8 | v11;
      }
    }

    v11 = 0x2700000000;
  }

  else
  {
    v11 = 0x2100000000;
    v8 = 47;
  }

  return v8 | v11;
}

unsigned __int16 *sub_2392CCB40(unsigned __int16 *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = a2;
    v4 = result;
    v5 = 0;
    do
    {
      v8[0] = (*(**v2 + 32))(*v2, a2);
      v8[1] = a2;
      if (a2 && (result = sub_2392CCA1C(v8, 0), *result != v3))
      {
        v6 = v2[1];
        v5 = v2;
      }

      else
      {
        result = *v2;
        if (*(v4 + 1) == *v2)
        {
          *(v4 + 1) = 0;
        }

        v6 = v2[1];
        v7 = (v5 + 1);
        if (!v5)
        {
          v7 = v4;
        }

        *v7 = v6;
        v2[1] = 0;
        if (*(v4 + 48) == 1)
        {
          result = (*(*result + 24))(result);
        }
      }

      v2 = v6;
    }

    while (v6);
  }

  return result;
}

void sub_2392CD568(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF77650);

  _Unwind_Resume(a1);
}

id sub_2392CD914(unsigned __int16 *a1, uint64_t a2, unint64_t *a3)
{
  sub_2393C5AAC(v10);
  v6 = sub_2393C1A44(a2, a1, v10);
  *a3 = v6;
  a3[1] = v7;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_23929E56C(a1, v10, a3);
  }

  return v8;
}

void sub_2392CE320(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392CE3D4(void *a1, void *a2)
{
  v6 = a2;
  v3 = [a1 objectForKeyedSubscript:@"fabricFiltered"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  [v6 setFilterByFabric:v5];
}

void sub_2392CE5C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392CE8BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2392CE8EC()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = &unk_27DF77000;
  if ((atomic_load_explicit(&qword_27DF77660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF77660))
  {
    v3 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:7];
    qword_27DF77658 = [v3 setWithArray:{v4, v5, v6, v7, v8, v9, v10}];

    __cxa_guard_release(&qword_27DF77660);
    v0 = &unk_27DF77000;
  }

  v1 = v0[203];

  return v1;
}

unint64_t sub_2392CEB30(_BYTE *a1, uint64_t a2, void *a3)
{
  v6 = (a1[1] & 7) + 1;
  if ((a1[1] & 7) == 7)
  {
    v7 = -1;
  }

  else
  {
    v7 = ~(-1 << (8 * v6));
  }

  v12 = 0;
  if (sub_2393C5C40(a2) == 20)
  {
    v12 = v7;
    v8 = v7;
  }

  else
  {
    v9 = sub_2393C5F2C(a2, &v12);
    if (v9)
    {
      v10 = v9 & 0xFFFFFFFF00000000;
      return v10 | v9;
    }

    v8 = v12;
    if (v12 > v7 || *a1 == 1 && v12 == v7)
    {
      v10 = 0xAB00000000;
      LODWORD(v9) = 1415;
      return v10 | v9;
    }
  }

  sub_2393D5D60(a3, v8, v6);
  LODWORD(v9) = 0;
  v10 = 0;
  return v10 | v9;
}

unint64_t sub_2392CEC18(_BYTE *a1, uint64_t a2, void *a3)
{
  v6 = (a1[1] & 7u) + 1;
  v7 = -1 << (8 * ((a1[1] & 7u) + 1) - 1);
  if ((a1[1] & 7) == 7)
  {
    v8 = 0x8000000000000000;
  }

  else
  {
    v8 = -1 << (8 * ((a1[1] & 7u) + 1) - 1);
  }

  v15 = 0;
  if (sub_2393C5C40(a2) == 20)
  {
    v15 = v8;
    v9 = v8;
LABEL_6:
    sub_2393D5D98(a3, v9, v6);
    LODWORD(v10) = 0;
    v11 = 0;
    return v11 | v10;
  }

  v10 = sub_2393C5DA0(a2, &v15);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFF00000000;
    return v11 | v10;
  }

  v9 = v15;
  v14 = v6 != 8 && v15 > ~v7;
  v11 = 0xCA00000000;
  LODWORD(v10) = 1415;
  if (v15 >= v8 && !v14)
  {
    if (*a1 == 1 && v15 == v8)
    {
      v11 = 0xCA00000000;
      LODWORD(v10) = 1415;
      return v11 | v10;
    }

    goto LABEL_6;
  }

  return v11 | v10;
}

unint64_t sub_2392CED28(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  if (sub_2393C5C40(a2) == 20)
  {
    if (a3 == 1)
    {
      sub_2393D5D60(a5, 0xFFFFuLL, 2);
    }

    else if (!a3)
    {
      sub_2393D5D3C(a5, 255);
    }

    v12 = 0;
    v11 = 0;
  }

  else
  {
    v9 = sub_2393C5CB8(a2);
    if (sub_2393C5C40(a2) == a4)
    {
      if (a3)
      {
        v10 = 65534;
      }

      else
      {
        v10 = 254;
      }

      if (v9 <= v10)
      {
        if (a3 == 1)
        {
          sub_2393D5D60(a5, v9, 2);
        }

        else if (!a3)
        {
          sub_2393D5D3C(a5, v9);
        }

        v15 = 0;
        v14 = sub_2393C6160(a2, &v15);
        if (v14)
        {
          v11 = v14 & 0xFFFFFFFF00000000;
        }

        else
        {
          sub_2393D5CDC(a5, v15, v9);
          LODWORD(v14) = 0;
          v11 = 0;
        }

        v12 = v14;
      }

      else
      {
        v11 = 0xE700000000;
        v12 = 47;
      }
    }

    else
    {
      v11 = 0xE600000000;
      v12 = 38;
    }
  }

  return v11 | v12;
}

uint64_t sub_2392CEE80(_BYTE *a1, uint64_t a2)
{
  v3 = a1;
  v28 = *MEMORY[0x277D85DE8];
  if ((*a1 & 1) == 0)
  {
    a1 = sub_2393C5C40(a2);
    if (a1 == 20)
    {
      return 0x10000000026;
    }
  }

  v5 = *(v3 + 1);
  v7 = *v5;
  v6 = v5[1];
  v24 = v7;
  v25 = v6;
  v26 = 0;
  if (!v7)
  {
    v25 = 0;
  }

  v8 = v3[1];
  if (v8 > 0x27)
  {
    if (v3[1] <= 0x38u)
    {
      if (v8 - 40 < 8)
      {
        v9 = sub_2392CEC18(v3, a2, &v24);
        if (!v9)
        {
          goto LABEL_49;
        }

        goto LABEL_35;
      }

LABEL_36:
      v21 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v8;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Attribute type 0x%x not handled", buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(13, 1, "Attribute type 0x%x not handled", v3[1]);
      }

      v20 = 0x15600000000;
      LODWORD(v9) = 1281;
      return v20 | v9;
    }

    if (v3[1] <= 0x41u)
    {
      switch(v8)
      {
        case '9':
          *buf = 0;
          if (sub_2393C5C40(a2) == 20)
          {
            *buf = 2143289344;
          }

          else
          {
            v9 = sub_2393C6020(a2, buf);
            if (v9)
            {
              goto LABEL_35;
            }
          }

          v22 = 4;
          break;
        case ':':
          *buf = 0;
          if (sub_2393C5C40(a2) == 20)
          {
            *buf = 0x7FF8000000000000;
          }

          else
          {
            v9 = sub_2393C6064(a2, buf);
            if (v9)
            {
              goto LABEL_35;
            }
          }

          v22 = 8;
          break;
        case 'A':
          v16 = a2;
          v17 = 0;
          goto LABEL_29;
        default:
          goto LABEL_36;
      }

      sub_2393D5CDC(&v24, buf, v22);
      goto LABEL_49;
    }

    switch(v8)
    {
      case 'B':
        v16 = a2;
        v17 = 0;
        break;
      case 'C':
        v16 = a2;
        v17 = 1;
LABEL_29:
        v19 = 16;
        goto LABEL_34;
      case 'D':
        v16 = a2;
        v17 = 1;
        break;
      default:
        goto LABEL_36;
    }

    v19 = 12;
LABEL_34:
    v9 = sub_2392CED28(a1, v16, v17, v19, &v24);
    if (!v9)
    {
      goto LABEL_49;
    }

    goto LABEL_35;
  }

  if (v8 - 32 >= 8)
  {
    if (v8 == 16)
    {
      if (sub_2393C5C40(a2) == 20)
      {
        v18 = -1;
      }

      else
      {
        buf[0] = 0;
        v9 = sub_2393C5CE4(a2, buf);
        if (v9)
        {
          goto LABEL_35;
        }

        v18 = buf[0];
      }

      sub_2393D5D3C(&v24, v18);
      goto LABEL_49;
    }

    goto LABEL_36;
  }

  v9 = sub_2392CEB30(v3, a2, &v24);
  if (!v9)
  {
LABEL_49:
    if (v25 >= v26)
    {
      sub_238DB8498(*(v3 + 1), v26, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, buf[0]);
      LODWORD(v9) = 0;
      v20 = 0;
    }

    else
    {
      v20 = 0x15C00000000;
      LODWORD(v9) = 11;
    }

    return v20 | v9;
  }

LABEL_35:
  v20 = v9 & 0xFFFFFFFF00000000;
  return v20 | v9;
}

unint64_t sub_2392CF198(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a1[1];
  v9 = (v8 - 214) > 0x21 || ((1 << (v8 + 42)) & 0x2000001FFLL) == 0;
  if (v9 && (v8 - 40) >= 8)
  {
    v12 = 0;
    v10 = (v8 & 7) + 1;
    if (v10 == 8)
    {
      v11 = -1;
    }

    else
    {
      v11 = ~(-1 << (8 * v10));
    }
  }

  else
  {
    v10 = (v8 & 7) + 1;
    if (v10 == 8)
    {
      v11 = 0x8000000000000000;
    }

    else
    {
      v11 = -1 << (8 * v10 - 1);
    }

    v12 = 1;
  }

  v13 = v10;
  if (*(sub_2393D5B20(a4, v18, v10) + 24))
  {
    return *(a4 + 24);
  }

  if (v12)
  {
    v15 = v18[(v13 - 1)] >> 7;
  }

  else
  {
    v15 = 0;
  }

  do
  {
    v15 = v18[v13 - 1] | (v15 << 8);
  }

  while (v13-- > 1);
  if (*a1 == 1 && v15 == v11)
  {
    return sub_2393C8948(a2, a3);
  }

  if (v12)
  {
    return sub_2393C8284(a2, a3, v15);
  }

  return sub_2393C8154(a2, a3, v15);
}

unint64_t sub_2392CF318(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 1);
  v8 = *v6;
  v7 = v6[1];
  v17[0] = v8;
  v17[1] = v8;
  v19 = 0;
  v20 = 0;
  v18 = v7;
  if (!v8)
  {
    v18 = 0;
  }

  v9 = a1[1];
  if (v9 > 0x38)
  {
    if (a1[1] <= 0x41u)
    {
      switch(v9)
      {
        case '9':
          if (!*(sub_2393D5B20(v17, buf, 4uLL) + 24))
          {
            v10 = sub_2393C8344(a2, a3, *buf);
            goto LABEL_6;
          }

          break;
        case ':':
          if (!*(sub_2393D5B20(v17, buf, 8uLL) + 24))
          {
            v10 = sub_2393C8354(a2, a3, *buf);
            goto LABEL_6;
          }

          break;
        case 'A':
          v13 = *a1;
          v14 = 0;
          goto LABEL_30;
        default:
          goto LABEL_32;
      }

      v10 = v19;
      goto LABEL_6;
    }

    switch(v9)
    {
      case 'B':
        v13 = *a1;
        v14 = 0;
        break;
      case 'C':
        v13 = *a1;
        v14 = 1;
LABEL_30:
        v15 = 16;
        goto LABEL_31;
      case 'D':
        v13 = *a1;
        v14 = 1;
        break;
      default:
        goto LABEL_32;
    }

    v15 = 12;
LABEL_31:
    v10 = sub_2392CF5F8(v14, v15, a2, a3, v17, v13);
    goto LABEL_6;
  }

  if (v9 - 32 < 0x10)
  {
    v10 = sub_2392CF198(a1, a2, a3, v17);
LABEL_6:
    v11 = v10 & 0xFFFFFFFF00000000;
    return v10 | v11;
  }

  if (!a1[1])
  {
    goto LABEL_38;
  }

  if (v9 == 16)
  {
    buf[0] = 0;
    sub_2393D5964(v17, buf);
    v10 = v19;
    if (v19)
    {
      goto LABEL_6;
    }

    if (buf[0] < 2u)
    {
      v10 = sub_2393C7E38(a2, a3, buf[0] != 0);
      goto LABEL_6;
    }

    if (buf[0] != 255)
    {
      v11 = 0x1C000000000;
      goto LABEL_43;
    }

    if (*a1 != 1)
    {
      v11 = 0x1BC00000000;
LABEL_43:
      LODWORD(v10) = 47;
      return v10 | v11;
    }

LABEL_38:
    v10 = sub_2393C8948(a2, a3);
    goto LABEL_6;
  }

LABEL_32:
  v16 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Attribute type 0x%x not handled", buf, 8u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(13, 1, "Attribute type 0x%x not handled", a1[1]);
  }

  v11 = 0x20100000000;
  LODWORD(v10) = 1281;
  return v10 | v11;
}

unint64_t sub_2392CF5F8(int a1, int a2, uint64_t a3, unint64_t a4, void *a5, int a6)
{
  if (a1)
  {
    v19 = 0;
    sub_2393D5A0C(a5, &v19);
    v11 = a5[3];
    if (!v11)
    {
      v12 = v19;
      if (v19 == 0xFFFF)
      {
        if (!a6)
        {
          v11 = 0x7E00000000;
LABEL_20:
          v17 = 47;
          return v11 & 0xFFFFFFFF00000000 | v17;
        }

LABEL_17:
        v11 = sub_2393C8948(a3, a4);
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v20 = 0;
    sub_2393D5964(a5, &v20);
    v11 = a5[3];
    if (!v11)
    {
      v12 = v20;
      if (v20 == 255)
      {
        if (!a6)
        {
          v11 = 0x7000000000;
          goto LABEL_20;
        }

        goto LABEL_17;
      }

LABEL_8:
      v13 = v12;
      v14 = a5[2];
      if (v14 >= v12)
      {
        v15 = a5[1];
        a5[1] = &v15[v12];
        v16 = v14 - v12;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        a5[3] = 0x6600000019;
        a5[4] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/lib/support/BufferReader.h";
        v11 = 0x6600000019;
      }

      a5[2] = v16;
      if (!v11)
      {
        if (a2 == 12)
        {
          v11 = sub_2393C8548(a3, a4, v15, v13);
        }

        else
        {
          v11 = sub_2393C83AC(a3, a4, v15, v13);
        }
      }
    }
  }

LABEL_12:
  v17 = v11;
  return v11 & 0xFFFFFFFF00000000 | v17;
}

void sub_2392D012C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  if (v8)
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v5 = a1[4];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    v7 = [v5 baseDeviceForNodeID:v6];

    (*(a1[5] + 16))();
  }
}

uint64_t sub_2392D0334(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2392D034C(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = [*(a1 + 32) controllerXPCID];

  if (!v3)
  {
    dispatch_group_enter(v2);
    v4 = [*(a1 + 32) xpcConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2392D04C0;
    v12[3] = &unk_278A75150;
    v5 = *(a1 + 56);
    v12[4] = *(a1 + 32);
    v14 = v5;
    v13 = v2;
    [v4 getProxyHandleWithCompletion:v12];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2392D0730;
  v9[3] = &unk_278A75178;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = v7;
  v11 = v8;
  dispatch_group_notify(v2, v6, v9);
}

void sub_2392D04C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 proxy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2392D0640;
    v12[3] = &unk_278A75128;
    v9 = *(a1 + 48);
    v12[4] = *(a1 + 32);
    v15 = v9;
    v13 = v7;
    v14 = *(a1 + 40);
    [v8 getAnyDeviceControllerWithCompletion:v12];
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "XPC disconnected while retrieving any shared remote controller", v11, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "XPC disconnected while retrieving any shared remote controller");
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void sub_2392D0640(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch any shared remote controller", v8, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Failed to fetch any shared remote controller");
    }
  }

  else
  {
    [*(a1 + 32) setControllerXPCID:v5];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_2392D0730(uint64_t a1)
{
  v2 = [*(a1 + 32) controllerXPCID];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) controllerXPCID];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:1 userInfo:0];
    (*(v3 + 16))(v3, 0, 0);
  }
}

void sub_2392D0AFC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2392D0BC8()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("org.csa-iot.matter.framework.xpc.workqueue", v2);
  v1 = qword_27DF77668;
  qword_27DF77668 = v0;
}

uint64_t sub_2392D0C3C(uint64_t a1, uint64_t a2)
{
  v4 = +[MTRDeviceControllerFactory sharedInstance];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v7 = [v4 neededReadPrivilegeForClusterID:v5 attributeID:v6];

  if (v7)
  {
    v8 = [v7 unsignedLongLongValue];
    if (v8 <= 5)
    {
      v9 = 0x100804100110uLL >> (8 * v8);
    }

    else
    {
      v9 = 16;
    }
  }

  else if (WORD1(a2) || a2 - 61440 >= 0xFFF)
  {
    if (a2 < 0x10000 && a1 == 29)
    {
      v9 = 1;
    }

    else
    {
      v9 = 16;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

unint64_t sub_2392D0D70()
{
  result = sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/ServerEndpoint/MTRServerAccessControl.mm", 209);
  if ((byte_27DF77690 & 1) == 0)
  {
    byte_27DF77690 = 1;

    return sub_2392D0DC8(qword_27DF77678);
  }

  return result;
}

unint64_t sub_2392D0DC8(void *a1)
{
  a1[1] = sub_2392D0F58;
  *a1 = &unk_284BB7178;
  v2 = a1 + 2;
  a1[2] = &unk_284BB71E0;
  v3 = sub_23949D748();

  return sub_23949C364(v3, v2, a1);
}

uint64_t sub_2392D0E6C(uint64_t a1, int a2, uint64_t a3)
{
  v13[0] = 8;
  memset(&v13[1], 0, 24);
  v14 = 0;
  v5 = (*(a1 + 8))();
  (*(*v5 + 32))(v5, a3, v13);
  sub_238DB91E0(v13, &v10);
  if (v11)
  {
    v6 = v10;
    v7 = 8 * v11;
    while (*v6 != a2)
    {
      v6 += 2;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    sub_2393D6E84(&v12);
    v8 = 1;
  }

  else
  {
LABEL_5:
    sub_2393D6E84(&v12);
    v8 = 0;
  }

  sub_2393D6B1C(v13);
  return v8;
}

void sub_2392D0F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2393D6B1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2392D0F58(uint64_t a1)
{
  v1 = sub_2394C7C20();

  return sub_2394C9128(v1);
}

uint64_t sub_2392D1050(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, unsigned int a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a3 + 2)];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a3];
  v9 = [MTRClusterPath clusterPathWithEndpointID:v7 clusterID:v8];

  v36 = v9;
  v10 = +[MTRDeviceControllerFactory sharedInstance];
  v11 = [v10 accessGrantsForFabricIndex:*a2 clusterPath:v9];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v13)
  {
    goto LABEL_63;
  }

  v14 = *v38;
  do
  {
    v15 = 0;
    do
    {
      if (*v38 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v37 + 1) + 8 * v15);
      v17 = [v16 subjectID];
      v18 = v17 == 0;

      if (v18)
      {
        v22 = a2[1] == 64;

        goto LABEL_23;
      }

      v19 = [v16 subjectID];
      v20 = [v19 unsignedLongLongValue];

      if (v20 - 1 <= 0xFFFFFFEFFFFFFFFELL)
      {
        v22 = a2[1] == 64 && *(a2 + 1) == v20;
LABEL_22:

LABEL_23:
        if (!v22)
        {
          goto LABEL_59;
        }

        goto LABEL_24;
      }

      if (v20 > 0xFFFFFFFFFFFEFFFFLL)
      {
        v22 = a2[1] == 128 && *(a2 + 1) == v20;
        goto LABEL_22;
      }

      if (HIDWORD(v20) != 4294967293)
      {
        v29 = sub_2393D9044(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v43 = v20;
          _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "Unexpected grant subject: 0x%llx", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "Unexpected grant subject: 0x%llx", v20);
        }

LABEL_45:

        goto LABEL_59;
      }

      v27 = 0;
      while (1)
      {
        v28 = *&a2[v27 + 16];
        if (v28)
        {
          if ((v20 - 1) < v28 && HIWORD(v28) == WORD1(v20))
          {
            break;
          }
        }

        v27 += 4;
        if (v27 == 12)
        {
          goto LABEL_45;
        }
      }

LABEL_24:
      v24 = [v16 grantedPrivilege];
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
          if (a4 == 1)
          {
LABEL_64:
            v30 = 0;
            v31 = 0;
            goto LABEL_65;
          }
        }

        else
        {
          if (v24 != 2)
          {
LABEL_55:
            v32 = sub_2393D9044(0);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v33 = [v16 grantedPrivilege];
              *buf = 67109120;
              LODWORD(v43) = v33;
              _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_ERROR, "Unknown granted privilege %u, ignoring", buf, 8u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1, "Unknown granted privilege %u, ignoring", [v16 grantedPrivilege]);
            }

            goto LABEL_59;
          }

          if (a4 - 1 < 2)
          {
            goto LABEL_64;
          }
        }
      }

      else if (v24 == 3)
      {
        v30 = 0;
        v31 = 0;
        if (a4 == 1 || a4 == 4)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v24 == 4)
        {
          if (a4 > 8)
          {
            goto LABEL_59;
          }

          v25 = 1 << a4;
          v26 = 274;
        }

        else
        {
          if (v24 != 5)
          {
            goto LABEL_55;
          }

          if (a4 > 0x10)
          {
            goto LABEL_59;
          }

          v25 = 1 << a4;
          v26 = 65814;
        }

        if ((v25 & v26) != 0)
        {
          goto LABEL_64;
        }
      }

LABEL_59:
      ++v15;
    }

    while (v15 != v13);
    v34 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
    v13 = v34;
  }

  while (v34);
LABEL_63:
  v30 = 0x6800000000;
  v31 = 165;
LABEL_65:

  return v31 | v30;
}

uint64_t sub_2392D1AAC(uint64_t a1, void *a2)
{
  *a1 = &unk_284BB72A8;
  *(a1 + 32) = xmmword_2395C13C0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  objc_initWeak((a1 + 80), a2);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return a1;
}

uint64_t sub_2392D1B1C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = 0x3600000000;
  v13 = 47;
  if (v9 && v10)
  {
    a1[1] = a2;
    if ([v9 length] == 16)
    {
      memcpy(a1 + 2, [v9 bytes], objc_msgSend(v9, "length"));
      v14 = [v10 copy];
      v15 = a1[8];
      a1[8] = v14;

      v16 = [v11 copy];
      v17 = a1[9];
      a1[9] = v16;

      v12 = 0;
      v13 = 0;
    }

    else
    {
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTROperationalCredentialsDelegate::init provided IPK is wrong size", v20, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTROperationalCredentialsDelegate::init provided IPK is wrong size");
      }

      v12 = 0x3D00000000;
      v13 = 47;
    }
  }

  return v13 | v12;
}

unint64_t sub_2392D1CA0(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!a1[1])
  {
    return 0x4D00000003;
  }

  v12 = objc_alloc(MEMORY[0x277CCA970]);
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = [MEMORY[0x277CBEAA8] distantFuture];
  v15 = [v12 initWithStartDate:v13 endDate:v14];

  v16 = a1[9];
  if (!v16)
  {
    v16 = a1[8];
  }

  v17 = sub_2392D1DC8(a1[1], v16, a2, a3, a4, a5, v15, a6);

  return v17;
}

unint64_t sub_2392D1DC8(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v15 = a2;
  v16 = a7;
  v53[0] = 0;
  v17 = [v16 startDate];
  v18 = sub_2392D2158(v17, v53 + 1);

  if ((v18 & 1) == 0)
  {
    v24 = sub_2393D9044(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Failed in computing certificate validity start date", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Failed in computing certificate validity start date");
    }

    v25 = 0x5C00000000;
    goto LABEL_15;
  }

  v19 = [v16 endDate];
  v20 = sub_2392D22FC(v19, v53);

  if ((v20 & 1) == 0)
  {
    v26 = sub_2393D9044(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Failed in computing certificate validity end date", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Failed in computing certificate validity end date");
    }

    v25 = 0x6100000000;
LABEL_15:
    v23 = 172;
    goto LABEL_22;
  }

  sub_23949ECF0(v52);
  v21 = v15;
  sub_238DB6950(buf, [v21 bytes], objc_msgSend(v21, "length"));
  v28 = a8;

  v51[0] = *buf;
  v22 = sub_2394A09DC(v51, v52);
  v23 = v22;
  if (!v22)
  {
    sub_23949ECF0(v51);
    v22 = sub_23949EE3C(v51, 789, a4);
    v23 = v22;
    if (!v22)
    {
      v22 = sub_23949EE3C(v51, 785, a3);
      v23 = v22;
      if (!v22)
      {
        v22 = sub_23949EEE8(v51, a5);
        v23 = v22;
        if (!v22)
        {
          *buf = 1;
          *&buf[8] = HIDWORD(v53[0]);
          *&buf[12] = v53[0];
          v36 = v51[6];
          v37 = v51[7];
          v38 = v51[8];
          v39 = v51[9];
          v32 = v51[2];
          v33 = v51[3];
          v34 = v51[4];
          v35 = v51[5];
          v30 = v51[0];
          v31 = v51[1];
          v46 = v52[6];
          v47 = v52[7];
          v48 = v52[8];
          v49 = v52[9];
          v42 = v52[2];
          v43 = v52[3];
          v44 = v52[4];
          v45 = v52[5];
          v40 = v52[0];
          v41 = v52[1];
          v50 = 0;
          v22 = sub_2394AE594(buf, a6, a1, v28);
          nullsub_56();
          nullsub_56();
          v23 = v22;
        }
      }
    }

    nullsub_56();
  }

  v25 = v22 & 0xFFFFFFFF00000000;
  nullsub_56();
LABEL_22:

  return v25 | v23;
}

void sub_2392D20E8(_Unwind_Exception *a1)
{
  nullsub_56();
  nullsub_56();
  nullsub_56();
  nullsub_56();

  _Unwind_Resume(a1);
}

uint64_t sub_2392D2158(void *a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = sub_2392214D0(v3, a2);
  if ((v4 & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x277CBEA80]);
    v6 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v7 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    v8 = [v6 componentsInTimeZone:v7 fromDate:v3];

    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v12 = [v8 year];
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Year %lu is out of range for Matter epoch time.  Please use [NSDate distantFuture] to represent never expires.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Year %lu is out of range for Matter epoch time.  Please use [NSDate distantFuture] to represent never expires.", [v8 year]);
    }
  }

  return v4;
}

uint64_t sub_2392D22FC(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [v3 isEqualToDate:v4];

  if (v5)
  {
    *a2 = 0;
    v6 = 1;
  }

  else
  {
    v6 = sub_2392D2158(v3, a2);
  }

  return v6;
}

unint64_t sub_2392D2398(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  if (*(a1 + 96))
  {
    return sub_2392D23A8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return sub_2392D2910(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

unint64_t sub_2392D23A8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v77 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROperationalCredentialsDelegate.mm", 128);
  if (!*(a1 + 88))
  {
    return 0x8200000003;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    *(a1 + 112) = a8;
    v16 = [MTROperationalCSRInfo alloc];
    v17 = [MEMORY[0x277CBEA90] dataWithBytes:*a3 length:a3[1]];
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:*a2 length:a2[1]];
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:*a4 length:a4[1]];
    v20 = [(MTROperationalCSRInfo *)v16 initWithCSRNonce:v17 csrElementsTLV:v18 attestationSignature:v19];

    v74 = 0uLL;
    v73 = 0uLL;
    v72 = 0;
    v70 = 0;
    v71 = 0;
    v67 = 0;
    v68[0] = 0;
    *(v68 + 7) = 0;
    sub_2393C5AAC(v69);
    v69[18] = 21;
    sub_23929093C(*(a1 + 88), v75);
    if (v75[0])
    {
      v22 = sub_239289A18(v75, v21);
      LOBYTE(to) = v22[424];
      if (to == 1)
      {
        v65 = *(v22 + 27);
      }

      v24 = sub_238DE36B8(&to, v23);
      v25 = sub_2394A5BF0(v24, &v74, &v73, &v72, &v70, v66);
      v26 = v25;
      if (v25)
      {
        v27 = v25 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (v71)
        {
          v53 = [MEMORY[0x277CBEA90] dataWithBytes:v70 length:?];
        }

        else
        {
          v53 = 0;
        }

        v30 = [MTRDeviceAttestationInfo alloc];
        v52 = [MEMORY[0x277CBEA90] dataWithBytes:*a5 length:a5[1]];
        v32 = sub_239289A18(v75, v31);
        LOBYTE(to) = v32[152];
        if (to == 1)
        {
          v65 = *(v32 + 10);
        }

        v34 = sub_238DE36B8(&to, v33);
        v51 = [MEMORY[0x277CBEA90] dataWithBytes:*v34 length:v34[1]];
        v36 = sub_239289A18(v75, v35);
        v62[0] = v36[424];
        if (v62[0] == 1)
        {
          v63 = *(v36 + 27);
        }

        v38 = sub_238DE36B8(v62, v37);
        v39 = [MEMORY[0x277CBEA90] dataWithBytes:*v38 length:v38[1]];
        v41 = sub_239289A18(v75, v40);
        v60[0] = v41[448];
        if (v60[0] == 1)
        {
          v61 = *(v41 + 456);
        }

        v43 = sub_238DE36B8(v60, v42);
        v44 = [MEMORY[0x277CBEA90] dataWithBytes:*v43 length:v43[1]];
        v45 = [MEMORY[0x277CBEA90] dataWithBytes:*a6 length:a6[1]];
        v46 = [MEMORY[0x277CBEA90] dataWithBytes:*a7 length:a7[1]];
        v47 = [MEMORY[0x277CBEA90] dataWithBytes:v74 length:?];
        v48 = [(MTRDeviceAttestationInfo *)v30 initWithDeviceAttestationChallenge:v52 nonce:v51 elementsTLV:v39 elementsSignature:v44 deviceAttestationCertificate:v45 productAttestationIntermediateCertificate:v46 certificationDeclaration:v47 firmwareInfo:v53];

        objc_copyWeak(&to, (a1 + 80));
        v49 = *(a1 + 104);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2392D2BA0;
        block[3] = &unk_278A751F0;
        v59[1] = a1;
        v56 = v20;
        v57 = v48;
        v58 = WeakRetained;
        v50 = v48;
        objc_copyWeak(v59, &to);
        dispatch_async(v49, block);
        objc_destroyWeak(v59);

        objc_destroyWeak(&to);
        v26 = 0;
        v27 = 0;
      }
    }

    else
    {
      v27 = 0x9500000000;
      v26 = 3;
    }

    if (v75[0] == 1)
    {
      sub_239293190(v76);
    }

    v29 = v26;
  }

  else
  {
    v27 = 0x8500000000;
    v29 = 3;
  }

  return v27 | v29;
}

void sub_2392D2828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a55 == 1)
  {
    sub_239293190(&STACK[0x2F8]);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2392D2910(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38[10] = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    v11 = *(a1 + 40);
    *(a1 + 56) = 0;
  }

  else
  {
    v11 = *(a1 + 32);
    if (!v11)
    {
      return 0xFF00000003;
    }
  }

  sub_2393C5AAC(v36);
  sub_2393C5ADC(v36, *a2, a2[1]);
  if (sub_2393C5C40(v36) == -1 && (v12 = sub_2393C6B34(v36), v13 = v12, v12) || (v12 = sub_2393C7078(v36, 21, 256), v13 = v12, v12) || (v35 = 0, v12 = sub_2393C6A2C(v36, &v35), v13 = v12, v12) || (v12 = sub_2393C7114(v36, 16, 1), v13 = v12, v12) || (v14 = v37, v15 = sub_2393C5CB8(v36), sub_238DB6950(v34, v14, v15), sub_2393C6A98(v36, v35), v38[0] = &unk_284BB9138, v12 = sub_2393F9A14(v34[0], v34[1], v38), v13 = v12, v12))
  {
    v20 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:600];
    v17 = v16;
    sub_238DB9BD8(v33, [v16 mutableBytes], 600);
    v18 = sub_2392D1CA0(a1, v11, *(a1 + 48), &unk_2395C13D0, v38, v33);
    v19 = v18;
    if (v18)
    {
      v20 = v18 & 0xFFFFFFFF00000000;
    }

    else
    {
      v24 = a8 + 24;
      v22 = *(a8 + 24);
      v23 = *(v24 + 8);
      sub_238DB6950(v32, v33[0], v33[1]);
      v31[0] = sub_2392D31C0(a1);
      v31[1] = v25;
      v30[0] = sub_2392D323C(a1);
      v30[1] = v26;
      v28[0] = 1;
      v29 = a1 + 16;
      v27[0] = 0;
      v23(v22, 0, 0, v32, v31, v30, v28, v27);
      v20 = 0;
      v19 = 0;
    }

    v13 = v19;
  }

  return v13 | v20;
}

void sub_2392D2BA0(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1[12];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392D2C70;
  v6[3] = &unk_278A751C8;
  v7[1] = v1;
  objc_copyWeak(v7, (a1 + 56));
  [v2 issueOperationalCertificateForRequest:v3 attestationInfo:v4 controller:v5 completion:v6];
  objc_destroyWeak(v7);
}

void sub_2392D2C70(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained isRunning] & 1) != 0)
  {
    sub_2392D2D1C(v6, v9, v5);
  }
}

void sub_2392D2D1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2392D2E1C;
  v10[3] = &unk_278A75218;
  v12 = v6;
  v13 = a1;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  [WeakRetained asyncGetCommissionerOnMatterQueue:v10 errorHandler:0];
}

void sub_2392D2E1C(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROperationalCredentialsDelegate.mm", 197);
  v5 = *(v4 + 112);
  if (v5)
  {
    *(v4 + 112) = 0;
    if (*(v4 + 88) == a2)
    {
      if (*(a1 + 32))
      {
        sub_23929093C(a2, v37);
        if (LOBYTE(v37[0]) == 1)
        {
          v7 = sub_239289A18(v37, v6);
          if (v7[384] == 1)
          {
            *(&v36 + 1) = sub_238DE36D8(v7 + 384, v8);
            LOBYTE(v36) = 1;
            v10 = *sub_238DE36B8(&v36, v9);
          }

          else
          {
            v10 = v4 + 16;
          }

          v15 = [*(a1 + 32) adminSubject];
          v16 = v15 == 0;

          if (v16)
          {
            v20 = sub_239289A18(v37, v17);
            v19 = v20[408];
            if (v19 == 1)
            {
              v16 = *(v20 + 52);
            }
          }

          else
          {
            v18 = [*(a1 + 32) adminSubject];
            v16 = [v18 unsignedLongLongValue];

            v19 = 1;
          }

          v35 = 0uLL;
          v21 = [*(a1 + 32) intermediateCertificate];
          v22 = v21 == 0;

          if (!v22)
          {
            v23 = [*(a1 + 32) intermediateCertificate];
            v24 = v23;
            sub_238DB6950(&v36, [v23 bytes], objc_msgSend(v23, "length"));

            v35 = v36;
          }

          v25 = *(v5 + 24);
          v26 = *(v5 + 32);
          v27 = [*(a1 + 32) operationalCertificate];
          v28 = v27;
          sub_238DB6950(&v36, [v27 bytes], objc_msgSend(v27, "length"));

          v34 = v36;
          v29 = [*(a1 + 32) rootCertificate];
          v30 = v29;
          sub_238DB6950(&v36, [v29 bytes], objc_msgSend(v29, "length"));

          v33 = v36;
          LOBYTE(v36) = 1;
          *(&v36 + 1) = v10;
          v31[0] = v19;
          if (v19)
          {
            v32 = v16;
          }

          v26(v25, 0, 0, &v34, &v35, &v33, &v36, v31);

          if (v37[0])
          {
            sub_239293190(v38);
          }
        }
      }

      else
      {
        v11 = *(v5 + 24);
        v12 = *(v5 + 32);
        v13 = sub_23921D408(MTRError, *(a1 + 40));
        v37[0] = 0;
        v37[1] = 0;
        v36 = 0uLL;
        v35 = 0uLL;
        LOBYTE(v34) = 0;
        LOBYTE(v33) = 0;
        v12(v11, v13, v14, v37, &v36, &v35, &v34, &v33);
      }
    }
  }
}

void sub_2392D312C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a20 == 1)
  {
    sub_239293190(&a65);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2392D31C0(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_238DB6950(&v4, [v2 bytes], objc_msgSend(v2, "length"));

  return v4;
}

uint64_t sub_2392D323C(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_238DB6950(&v3, [v1 bytes], objc_msgSend(v1, "length"));

  return v3;
}

unint64_t sub_2392D32A8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  *a5 = 0;
  v65[1] = &unk_284BB9138;
  v66 = 0;
  v65[0] = &unk_284BA8C20;
  v67 = 0;
  v68 = &unk_284BB9138;
  v13 = sub_238DC3B28(v65, v9);
  v14 = v13;
  if (!v13)
  {
    sub_23949ECF0(&v54);
    v16 = sub_2392D3704(v10);
    v14 = sub_23949EE3C(&v54, 788, v16);
    if (v14)
    {
      goto LABEL_4;
    }

    if (!v11)
    {
      goto LABEL_10;
    }

    v18 = [v11 unsignedLongLongValue];
    if (!v18)
    {
      v15 = 0x15C00000000;
      LODWORD(v14) = 47;
      goto LABEL_5;
    }

    v14 = sub_23949EE3C(&v54, 789, v18);
    if (v14)
    {
LABEL_4:
      v15 = v14 & 0xFFFFFFFF00000000;
    }

    else
    {
LABEL_10:
      v53 = 0;
      v19 = [v12 startDate];
      v20 = sub_2392D2158(v19, &v53 + 1);

      if (v20)
      {
        v21 = [v12 endDate];
        v22 = sub_2392D22FC(v21, &v53);

        if (v22)
        {
          v36 = v60;
          v37 = v61;
          v38 = v62;
          v39 = v63;
          v32 = v56;
          v33 = v57;
          v34 = v58;
          v35 = v59;
          v30 = v54;
          v31 = v55;
          v46 = v60;
          v47 = v61;
          v48 = v62;
          v49 = v63;
          v42 = v56;
          v43 = v57;
          v44 = v58;
          v45 = v59;
          v51 = buf;
          v52 = 600;
          v27 = 0;
          v28 = HIDWORD(v53);
          v29 = v53;
          v40 = v54;
          v41 = v55;
          v50 = 0;
          v23 = sub_2394AE338(&v27, v65, &v51);
          LODWORD(v14) = v23;
          if (v23)
          {
            v15 = v23 & 0xFFFFFFFF00000000;
          }

          else
          {
            sub_238DB6950(v26, v51, v52);
            [MEMORY[0x277CBEA90] dataWithBytes:v26[0] length:v26[1]];
            LODWORD(v14) = 0;
            *a5 = v15 = 0;
          }

          nullsub_56();
          nullsub_56();
          goto LABEL_5;
        }

        v25 = sub_2393D9044(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Failed in computing certificate validity end date", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "Failed in computing certificate validity end date");
        }

        v15 = 0x16900000000;
      }

      else
      {
        v24 = sub_2393D9044(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Failed in computing certificate validity start date", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "Failed in computing certificate validity start date");
        }

        v15 = 0x16400000000;
      }

      LODWORD(v14) = 172;
    }

LABEL_5:
    nullsub_56();
    v14 = v14;
    goto LABEL_6;
  }

  v15 = v13 & 0xFFFFFFFF00000000;
LABEL_6:

  sub_2393F96B4(v65);
  return v15 | v14;
}

void sub_2392D3684(_Unwind_Exception *a1)
{
  nullsub_56();
  nullsub_56();
  nullsub_56();

  sub_2393F96B4(&STACK[0x4A0]);
  _Unwind_Resume(a1);
}

uint64_t sub_2392D3704(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedLongLongValue];
  }

  else
  {
    v4 = arc4random();
    v3 = arc4random() | (v4 << 32);
  }

  return v3;
}

unint64_t sub_2392D3768(void *a1, void *a2, __SecKey *a3, void *a4, void *a5, void *a6, void *a7)
{
  v72 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a2;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  *a7 = 0;
  if (![MTRCertificates keypair:v13 matchesCertificate:v14])
  {
    v22 = 0x17C00000000;
    v19 = 47;
    goto LABEL_7;
  }

  v68[1] = &unk_284BB9138;
  v69 = 0;
  v68[0] = &unk_284BA8C20;
  v70 = 0;
  v71 = &unk_284BB9138;
  v18 = sub_238DC3B28(v68, v13);
  v19 = v18;
  if (!v18)
  {
    v20 = v14;
    v21 = v20;
    sub_238DB6950(buf, [v20 bytes], objc_msgSend(v20, "length"));

    v65 = *buf;
    v67[0] = &unk_284BB9138;
    v18 = sub_238DC4310(a3, v67);
    v19 = v18;
    if (!v18)
    {
      sub_23949ECF0(v64);
      v24 = sub_2394A09DC(&v65, v64);
      v19 = v24;
      if (v24)
      {
        v22 = v24 & 0xFFFFFFFF00000000;
LABEL_13:
        nullsub_56();
        goto LABEL_5;
      }

      sub_23949ECF0(v63);
      v25 = sub_2392D3704(v15);
      v26 = sub_23949EE3C(v63, 787, v25);
      if (v26)
      {
        goto LABEL_11;
      }

      if (!v16)
      {
        goto LABEL_17;
      }

      v27 = [v16 unsignedLongLongValue];
      if (!v27)
      {
        v22 = 0x18E00000000;
        LODWORD(v26) = 47;
        goto LABEL_12;
      }

      v26 = sub_23949EE3C(v63, 789, v27);
      if (v26)
      {
LABEL_11:
        v22 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
LABEL_17:
        v62 = 0;
        v28 = [v17 startDate];
        v29 = sub_2392D2158(v28, &v62 + 1);

        if (v29)
        {
          v30 = [v17 endDate];
          v31 = sub_2392D22FC(v30, &v62);

          if (v31)
          {
            v60 = buf;
            v61 = 600;
            v36 = 0;
            v37 = HIDWORD(v62);
            v38 = v62;
            v45 = v63[6];
            v46 = v63[7];
            v47 = v63[8];
            v48 = v63[9];
            v41 = v63[2];
            v42 = v63[3];
            v43 = v63[4];
            v44 = v63[5];
            v39 = v63[0];
            v40 = v63[1];
            v55 = v64[6];
            v56 = v64[7];
            v57 = v64[8];
            v58 = v64[9];
            v51 = v64[2];
            v52 = v64[3];
            v53 = v64[4];
            v54 = v64[5];
            v49 = v64[0];
            v50 = v64[1];
            v59 = 0;
            v32 = sub_2394AE410(&v36, v67, v68, &v60);
            LODWORD(v26) = v32;
            if (v32)
            {
              v22 = v32 & 0xFFFFFFFF00000000;
            }

            else
            {
              sub_238DB6950(v35, v60, v61);
              [MEMORY[0x277CBEA90] dataWithBytes:v35[0] length:v35[1]];
              LODWORD(v26) = 0;
              *a7 = v22 = 0;
            }

            nullsub_56();
            nullsub_56();
            goto LABEL_12;
          }

          v34 = sub_2393D9044(0);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "Failed in computing certificate validity end date", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, "Failed in computing certificate validity end date");
          }

          v22 = 0x19B00000000;
        }

        else
        {
          v33 = sub_2393D9044(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_ERROR, "Failed in computing certificate validity start date", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, "Failed in computing certificate validity start date");
          }

          v22 = 0x19600000000;
        }

        LODWORD(v26) = 172;
      }

LABEL_12:
      nullsub_56();
      v19 = v26;
      goto LABEL_13;
    }
  }

  v22 = v18 & 0xFFFFFFFF00000000;
LABEL_5:

  sub_2393F96B4(v68);
LABEL_7:

  return v22 | v19;
}

void sub_2392D3C28(_Unwind_Exception *a1)
{
  nullsub_56();
  nullsub_56();
  nullsub_56();
  nullsub_56();

  sub_2393F96B4(&STACK[0x598]);
  _Unwind_Resume(a1);
}

unint64_t sub_2392D3CD8(void *a1, void *a2, __SecKey *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v16 = a2;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v30 = a7;
  *a8 = 0;
  if (![MTRCertificates keypair:v15 matchesCertificate:v16])
  {
    v20 = v17;
    v21 = 0x1AF00000000;
    goto LABEL_5;
  }

  if ([v19 count] > 3)
  {
    v20 = v17;
    v21 = 0x1B300000000;
LABEL_5:
    v22 = 47;
    goto LABEL_6;
  }

  v24 = [v17 unsignedLongLongValue];
  if (!v24)
  {
    v20 = v17;
    v21 = 0x1B700000000;
    goto LABEL_5;
  }

  v25 = [v18 unsignedLongLongValue];
  if ((v25 - 1) >= 0xFFFFFFEFFFFFFFFFLL)
  {
    v20 = v17;
    v21 = 0x1BA00000000;
    goto LABEL_5;
  }

  v29 = v25;
  v20 = v17;
  v38[1] = &unk_284BB9138;
  v39 = 0;
  v38[0] = &unk_284BA8C20;
  v40 = 0;
  v41 = &unk_284BB9138;
  v26 = sub_238DC3B28(v38, v15);
  v22 = v26;
  if (v26 || (v37[0] = &unk_284BB9138, v26 = sub_238DC4310(a3, v37), v22 = v26, v26) || (v34 = 0, v35 = 0, v19) && (v26 = sub_239221084(v19, &v34), v22 = v26, v26))
  {
    v21 = v26 & 0xFFFFFFFF00000000;
  }

  else
  {
    v32 = &v36;
    v33 = 600;
    v27 = sub_2392D1DC8(v38, v16, v29, v24, &v34, v37, v30, &v32);
    if (v27)
    {
      v21 = v27 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_238DB6950(v31, v32, v33);
      v28 = [MEMORY[0x277CBEA90] dataWithBytes:v31[0] length:v31[1]];
      v27 = v28;
      LODWORD(v27) = 0;
      v21 = 0;
      *a8 = v28;
    }

    v22 = v27;
  }

  sub_2393F96B4(v38);
LABEL_6:

  return v21 | v22;
}

void sub_2392D3FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_2393F96B4(&STACK[0x2E8]);

  _Unwind_Resume(a1);
}

void sub_2392D4030(uint64_t a1)
{
  sub_2392D40E0(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2392D4068(uint64_t result, uint64_t a2)
{
  *(result + 40) = a2;
  *(result + 56) = 1;
  return result;
}

unint64_t sub_2392D4080(uint64_t a1, char **a2)
{
  if (a2[1] == 32)
  {
    v2 = sub_2393F888C(*a2, 0x20uLL);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    if (!v2)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0x5600000000;
    v4 = 47;
  }

  return v3 | v4;
}

uint64_t sub_2392D40E0(uint64_t a1)
{
  *a1 = &unk_284BB72A8;

  objc_destroyWeak((a1 + 80));
  sub_2393F9144(a1 + 16, 16);
  return a1;
}

uint64_t sub_2392D45D0(uint64_t result)
{
  if (result)
  {
    qword_27DF77698 = result;
  }

  return result;
}

id sub_2392D45E0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 4);
  if (v3 > 256)
  {
    if (v3 <= 1282)
    {
      if (v3 > 1028)
      {
        if (v3 > 1067)
        {
          if (v3 <= 1071)
          {
            if (v3 > 1069)
            {
              v4 = 0;
              if (v3 == 1070)
              {
                v5 = 0x12D7000000B6;
              }

              else
              {
                v5 = 0x12E4000000B6;
              }
            }

            else
            {
              v4 = 0;
              if (v3 == 1068)
              {
                v5 = 0x12BD000000B6;
              }

              else
              {
                v5 = 0x12CA000000B6;
              }
            }

            goto LABEL_209;
          }

          if (v3 > 1105)
          {
            if (v3 == 1106)
            {
              v4 = 0;
              v5 = 0x130B000000B6;
              goto LABEL_209;
            }

            if (v3 == 1107)
            {
              v4 = 0;
              v5 = 0x1318000000B6;
              goto LABEL_209;
            }
          }

          else
          {
            if (v3 == 1072)
            {
              v4 = 0;
              v5 = 0x12F1000000B6;
              goto LABEL_209;
            }

            if (v3 == 1105)
            {
              v4 = 0;
              v5 = 0x12FE000000B6;
              goto LABEL_209;
            }
          }
        }

        else if (v3 > 1042)
        {
          if (v3 > 1065)
          {
            v4 = 0;
            if (v3 == 1066)
            {
              v5 = 0x12A3000000B6;
            }

            else
            {
              v5 = 0x12B0000000B6;
            }

            goto LABEL_209;
          }

          if (v3 == 1043)
          {
            v4 = 0;
            v5 = 0x1289000000B6;
            goto LABEL_209;
          }

          if (v3 == 1045)
          {
            v4 = 0;
            v5 = 0x1296000000B6;
            goto LABEL_209;
          }
        }

        else if (v3 > 1035)
        {
          if (v3 == 1036)
          {
            v4 = 0;
            v5 = 0x126F000000B6;
            goto LABEL_209;
          }

          if (v3 == 1037)
          {
            v4 = 0;
            v5 = 0x127C000000B6;
            goto LABEL_209;
          }
        }

        else
        {
          if (v3 == 1029)
          {
            v4 = 0;
            v5 = 0x1244000000B6;
            goto LABEL_209;
          }

          if (v3 == 1030)
          {
            v4 = sub_2392DD268(*(a1 + 8), a2, a3);
            goto LABEL_210;
          }
        }

        goto LABEL_98;
      }

      if (v3 <= 513)
      {
        if (v3 <= 260)
        {
          switch(v3)
          {
            case 257:
              v4 = sub_2392DB700(*(a1 + 8), a2, a3);
              goto LABEL_210;
            case 258:
              v4 = 0;
              v5 = 0xF9D000000B6;
              goto LABEL_209;
            case 260:
              v4 = sub_2392DC61C(*(a1 + 8), a2, a3);
              goto LABEL_210;
          }

          goto LABEL_98;
        }

        if (v3 > 511)
        {
          if (v3 == 512)
          {
            sub_2392DC904(*(a1 + 8), a2, a3);
          }

          else
          {
            sub_2392DCB6C(*(a1 + 8), a2, a3);
          }
          v4 = ;
          goto LABEL_210;
        }

        if (v3 == 261)
        {
          v4 = 0;
          v5 = 0x1004000000B6;
          goto LABEL_209;
        }

        if (v3 != 336)
        {
          goto LABEL_98;
        }

        v4 = 0;
        v5 = 0x1011000000B6;
      }

      else if (v3 > 1023)
      {
        if (v3 > 1026)
        {
          v4 = 0;
          if (v3 == 1027)
          {
            v5 = 0x122A000000B6;
          }

          else
          {
            v5 = 0x1237000000B6;
          }

          goto LABEL_209;
        }

        if (v3 == 1024)
        {
          v4 = 0;
          v5 = 0x1210000000B6;
          goto LABEL_209;
        }

        if (v3 != 1026)
        {
          goto LABEL_98;
        }

        v4 = 0;
        v5 = 0x121D000000B6;
      }

      else
      {
        if (v3 > 767)
        {
          if (v3 == 768)
          {
            v4 = 0;
            v5 = 0x11F6000000B6;
            goto LABEL_209;
          }

          if (v3 == 769)
          {
            v4 = 0;
            v5 = 0x1203000000B6;
            goto LABEL_209;
          }

          goto LABEL_98;
        }

        if (v3 == 514)
        {
          v4 = 0;
          v5 = 0x11DC000000B6;
          goto LABEL_209;
        }

        if (v3 != 516)
        {
          goto LABEL_98;
        }

        v4 = 0;
        v5 = 0x11E9000000B6;
      }
    }

    else
    {
      if (v3 <= 1361)
      {
        switch(v3)
        {
          case 1283:
            v4 = 0;
            v5 = 0x1325000000B6;
            goto LABEL_209;
          case 1284:
            v4 = 0;
            v5 = 0x1332000000B6;
            goto LABEL_209;
          case 1285:
            v4 = sub_2392DD340(*(a1 + 8), a2, a3);
            goto LABEL_210;
          case 1286:
            v4 = sub_2392DD648(*(a1 + 8), a2, a3);
            goto LABEL_210;
          case 1287:
            v4 = 0;
            v5 = 0x13CD000000B6;
            goto LABEL_209;
          case 1288:
            v4 = 0;
            v5 = 0x13DA000000B6;
            goto LABEL_209;
          case 1289:
            v4 = 0;
            v5 = 0x13E7000000B6;
            goto LABEL_209;
          case 1290:
            v4 = 0;
            v5 = 0x13F4000000B6;
            goto LABEL_209;
          case 1291:
            v4 = 0;
            v5 = 0x1401000000B6;
            goto LABEL_209;
          case 1292:
            v4 = 0;
            v5 = 0x140E000000B6;
            goto LABEL_209;
          case 1293:
            v4 = 0;
            v5 = 0x141B000000B6;
            goto LABEL_209;
          case 1294:
            v4 = sub_2392DD94C(*(a1 + 8), a2, a3);
            goto LABEL_210;
          case 1295:
            v4 = sub_2392DDA78(*(a1 + 8), a2, a3);
            goto LABEL_210;
          case 1296:
            v4 = 0;
            v5 = 0x1467000000B6;
            goto LABEL_209;
          default:
            if (v3 == 1360)
            {
              v4 = sub_2392DDAF8(*(a1 + 8), a2, a3);
              goto LABEL_210;
            }

            if (v3 != 1361)
            {
              goto LABEL_98;
            }

            v4 = 0;
            v5 = 0x14AD000000B6;
            break;
        }

        goto LABEL_209;
      }

      if (v3 <= 1873)
      {
        if (v3 <= 1365)
        {
          if (v3 > 1363)
          {
            if (v3 != 1364)
            {
              v4 = sub_2392DDC98(*(a1 + 8), a2, a3);
              goto LABEL_210;
            }

            v4 = 0;
            v5 = 0x14D4000000B6;
          }

          else
          {
            v4 = 0;
            if (v3 == 1362)
            {
              v5 = 0x14BA000000B6;
            }

            else
            {
              v5 = 0x14C7000000B6;
            }
          }

          goto LABEL_209;
        }

        if (v3 > 1871)
        {
          if (v3 != 1872)
          {
            v4 = sub_2392DDEE0(*(a1 + 8), a2, a3);
            goto LABEL_210;
          }

          v4 = 0;
          v5 = 0x1546000000B6;
          goto LABEL_209;
        }

        if (v3 == 1366)
        {
          v4 = 0;
          v5 = 0x152C000000B6;
          goto LABEL_209;
        }

        if (v3 == 1792)
        {
          v4 = 0;
          v5 = 0x1539000000B6;
          goto LABEL_209;
        }

LABEL_98:
        v4 = 0;
        v5 = 0x1840000000B6;
        goto LABEL_209;
      }

      if (v3 > 2821)
      {
        if (v3 > 323615743)
        {
          if (v3 == 323615744)
          {
            v4 = 0;
            v5 = 0x15CD000000B6;
            goto LABEL_209;
          }

          if (v3 == 323615747)
          {
            v4 = 0;
            v5 = 0x15D9000000B6;
            goto LABEL_209;
          }
        }

        else
        {
          if (v3 == 2822)
          {
            v4 = 0;
            v5 = 0x15B4000000B6;
            goto LABEL_209;
          }

          if (v3 == 2823)
          {
            v4 = 0;
            v5 = 0x15C1000000B6;
            goto LABEL_209;
          }
        }

        goto LABEL_98;
      }

      if (v3 > 2048)
      {
        if (v3 == 2049)
        {
          v4 = 0;
          v5 = 0x159A000000B6;
          goto LABEL_209;
        }

        if (v3 == 2050)
        {
          v4 = 0;
          v5 = 0x15A7000000B6;
          goto LABEL_209;
        }

        goto LABEL_98;
      }

      if (v3 == 1874)
      {
        v4 = 0;
        v5 = 0x1580000000B6;
        goto LABEL_209;
      }

      if (v3 != 1875)
      {
        goto LABEL_98;
      }

      v4 = 0;
      v5 = 0x158D000000B6;
    }

LABEL_209:
    *a3 = v5;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_210;
  }

  switch(v3)
  {
    case 3:
      v4 = 0;
      v5 = 0x2F000000B6;
      goto LABEL_209;
    case 4:
      v4 = 0;
      v5 = 0x3C000000B6;
      goto LABEL_209;
    case 5:
    case 7:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 38:
    case 39:
    case 58:
    case 61:
    case 66:
    case 67:
    case 68:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 88:
    case 90:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 146:
    case 147:
    case 150:
    case 154:
      goto LABEL_98;
    case 6:
      v4 = 0;
      v5 = 0x49000000B6;
      goto LABEL_209;
    case 8:
      v4 = 0;
      v5 = 0x56000000B6;
      goto LABEL_209;
    case 28:
      v4 = 0;
      v5 = 0x63000000B6;
      goto LABEL_209;
    case 29:
      v4 = 0;
      v5 = 0x70000000B6;
      goto LABEL_209;
    case 30:
      v4 = 0;
      v5 = 0x7D000000B6;
      goto LABEL_209;
    case 31:
      v4 = sub_2392D519C(*(a1 + 8), a2, a3);
      break;
    case 37:
      v4 = sub_2392D5AD0(*(a1 + 8), a2, a3);
      break;
    case 40:
      v4 = sub_2392D5D10(*(a1 + 8), a2, a3);
      break;
    case 41:
      v4 = 0;
      v5 = 0x1FA000000B6;
      goto LABEL_209;
    case 42:
      v4 = sub_2392D5EDC(*(a1 + 8), a2, a3);
      break;
    case 43:
      v4 = 0;
      v5 = 0x276000000B6;
      goto LABEL_209;
    case 44:
      v4 = 0;
      v5 = 0x283000000B6;
      goto LABEL_209;
    case 45:
      v4 = 0;
      v5 = 0x290000000B6;
      goto LABEL_209;
    case 46:
      v4 = 0;
      v5 = 0x29D000000B6;
      goto LABEL_209;
    case 47:
      v4 = sub_2392D6214(*(a1 + 8), a2, a3);
      break;
    case 48:
      v4 = 0;
      v5 = 0x353000000B6;
      goto LABEL_209;
    case 49:
      v4 = 0;
      v5 = 0x360000000B6;
      goto LABEL_209;
    case 50:
      v4 = 0;
      v5 = 0x36D000000B6;
      goto LABEL_209;
    case 51:
      v4 = sub_2392D67C0(*(a1 + 8), a2, a3);
      break;
    case 52:
      v4 = sub_2392D6DF0(*(a1 + 8), a2, a3);
      break;
    case 53:
      v4 = sub_2392D6FA8(*(a1 + 8), a2, a3);
      break;
    case 54:
      v4 = sub_2392D7284(*(a1 + 8), a2, a3);
      break;
    case 55:
      v4 = 0;
      v5 = 0x500000000B6;
      goto LABEL_209;
    case 56:
      v4 = sub_2392D7450(*(a1 + 8), a2, a3);
      break;
    case 57:
      v4 = sub_2392D76A4(*(a1 + 8), a2, a3);
      break;
    case 59:
      v4 = sub_2392D7894(*(a1 + 8), a2, a3);
      break;
    case 60:
      v4 = 0;
      v5 = 0x64F000000B6;
      goto LABEL_209;
    case 62:
      v4 = 0;
      v5 = 0x65C000000B6;
      goto LABEL_209;
    case 63:
      v4 = 0;
      v5 = 0x669000000B6;
      goto LABEL_209;
    case 64:
      v4 = 0;
      v5 = 0x676000000B6;
      goto LABEL_209;
    case 65:
      v4 = 0;
      v5 = 0x683000000B6;
      goto LABEL_209;
    case 69:
      v4 = sub_2392D7C1C(*(a1 + 8), a2, a3);
      break;
    case 70:
      v4 = 0;
      v5 = 0x6AE000000B6;
      goto LABEL_209;
    case 71:
      v4 = 0;
      v5 = 0x6BB000000B6;
      goto LABEL_209;
    case 72:
      v4 = sub_2392D7CF4(*(a1 + 8), a2, a3);
      break;
    case 73:
      v4 = 0;
      v5 = 0x726000000B6;
      goto LABEL_209;
    case 74:
      v4 = 0;
      v5 = 0x733000000B6;
      goto LABEL_209;
    case 80:
      v4 = 0;
      v5 = 0x740000000B6;
      goto LABEL_209;
    case 81:
      v4 = 0;
      v5 = 0x74D000000B6;
      goto LABEL_209;
    case 82:
      v4 = 0;
      v5 = 0x75A000000B6;
      goto LABEL_209;
    case 83:
      v4 = 0;
      v5 = 0x767000000B6;
      goto LABEL_209;
    case 84:
      v4 = 0;
      v5 = 0x774000000B6;
      goto LABEL_209;
    case 85:
      v4 = 0;
      v5 = 0x781000000B6;
      goto LABEL_209;
    case 86:
      v4 = 0;
      v5 = 0x78E000000B6;
      goto LABEL_209;
    case 87:
      v4 = sub_2392D8084(*(a1 + 8), a2, a3);
      break;
    case 89:
      v4 = 0;
      v5 = 0x7C8000000B6;
      goto LABEL_209;
    case 91:
      v4 = 0;
      v5 = 0x7D5000000B6;
      goto LABEL_209;
    case 92:
      v4 = sub_2392D81E8(*(a1 + 8), a2, a3);
      break;
    case 93:
      v4 = sub_2392D8538(*(a1 + 8), a2, a3);
      break;
    case 94:
      v4 = 0;
      v5 = 0x8B3000000B6;
      goto LABEL_209;
    case 95:
      v4 = 0;
      v5 = 0x8C0000000B6;
      goto LABEL_209;
    case 96:
      v4 = sub_2392D869C(*(a1 + 8), a2, a3);
      break;
    case 97:
      v4 = sub_2392D8A2C(*(a1 + 8), a2, a3);
      break;
    case 98:
      v4 = 0;
      v5 = 0x989000000B6;
      goto LABEL_209;
    case 113:
      v4 = 0;
      v5 = 0x996000000B6;
      goto LABEL_209;
    case 114:
      v4 = 0;
      v5 = 0x9A3000000B6;
      goto LABEL_209;
    case 128:
      v4 = sub_2392D8DBC(*(a1 + 8), a2, a3);
      break;
    case 129:
      v4 = sub_2392D8F58(*(a1 + 8), a2, a3);
      break;
    case 144:
      v4 = sub_2392D90F4(*(a1 + 8), a2, a3);
      break;
    case 145:
      v4 = sub_2392D958C(*(a1 + 8), a2, a3);
      break;
    case 148:
      v4 = sub_2392DA150(*(a1 + 8), a2, a3);
      break;
    case 149:
      v4 = sub_2392DA430(*(a1 + 8), a2, a3);
      break;
    case 151:
      v4 = sub_2392DA96C(*(a1 + 8), a2, a3);
      break;
    case 152:
      v4 = sub_2392DAC94(*(a1 + 8), a2, a3);
      break;
    case 153:
      v4 = sub_2392DAE90(*(a1 + 8), a2, a3);
      break;
    case 155:
      v4 = 0;
      v5 = 0xD61000000B6;
      goto LABEL_209;
    case 156:
      v4 = 0;
      v5 = 0xD6E000000B6;
      goto LABEL_209;
    case 157:
      v4 = 0;
      v5 = 0xD7B000000B6;
      goto LABEL_209;
    case 158:
      v4 = 0;
      v5 = 0xD88000000B6;
      goto LABEL_209;
    case 159:
      v4 = 0;
      v5 = 0xD95000000B6;
      goto LABEL_209;
    case 160:
      v4 = sub_2392DB4BC(*(a1 + 8), a2, a3);
      break;
    default:
      if (v3 == -918523)
      {
        v4 = sub_2392DE048(*(a1 + 8), a2, a3);
      }

      else
      {
        if (v3 != -918496)
        {
          goto LABEL_98;
        }

        v4 = sub_2392DE868(*(a1 + 8), a2, a3);
      }

      break;
  }

LABEL_210:

  return v4;
}

MTRAccessControlClusterAccessControlExtensionChangedEvent *sub_2392D519C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 2)
  {
    v55 = 0;
    v56[0] = 0;
    LOBYTE(v61) = 0;
    v64 = 0;
    v11 = sub_238EFDC98(&v55, a2);
    v10 = 0;
    *a3 = v11;
    a3[1] = v12;
    if (v11)
    {
      goto LABEL_84;
    }

    v6 = objc_opt_new();
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v55];
    [v6 setToken:v13];

    if (v56[0] == 1)
    {
      v15 = sub_239289A18(v56, v14);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v15 length:v15[1] encoding:4];
      if (!v10)
      {
        v16 = &xmmword_278A75238;
LABEL_45:
        *a3 = *v16;
LABEL_83:

        goto LABEL_84;
      }
    }

    else
    {
      v10 = 0;
    }

    [v6 setInstruction:v10];

    if (v61 == 1)
    {
      v34 = sub_239289A18(&v61, v33);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v34 length:v34[1] encoding:4];
      if (!v10)
      {
        v16 = &xmmword_278A75248;
        goto LABEL_45;
      }
    }

    else
    {
      v10 = 0;
    }

    [v6 setArlRequestFlowUrl:v10];

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v64];
    [v6 setFabricIndex:v36];
    goto LABEL_82;
  }

  if (a1 != 1)
  {
    if (a1)
    {
      v10 = 0;
      *a3 = 0x15A000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_84;
    }

    LOBYTE(v55) = 0;
    v56[0] = 0;
    LOBYTE(v57) = 0;
    v58 = 0;
    v59 = 0;
    LOBYTE(v60) = 0;
    v69 = 0;
    v70 = 0;
    v4 = sub_238EFD564(&v55, a2);
    *a3 = v4;
    a3[1] = v5;
    if (!v4)
    {
      v6 = objc_opt_new();
      if (v56[0])
      {
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v55];
      }

      else
      {
        v7 = 0;
      }

      [v6 setAdminNodeID:v7];

      if (v58)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v57];
      }

      else
      {
        v19 = 0;
      }

      [v6 setAdminPasscodeID:v19];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v59];
      [v6 setChangeType:v24];

      if (v69)
      {
        v25 = objc_opt_new();
        if (v69 != 1)
        {
          goto LABEL_87;
        }

        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v60];
        [v25 setPrivilege:v26];

        if (v69 != 1)
        {
          goto LABEL_87;
        }

        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v60)];
        [v25 setAuthMode:v27];

        if (v69 != 1)
        {
          goto LABEL_87;
        }

        if (v65)
        {
          v28 = objc_opt_new();
          if ((v69 & 1) == 0 || v65 != 1)
          {
            sub_238EA195C();
          }

          sub_2393C5AAC(v51);
          v49 = 0;
          v50 = 0;
          sub_2393C5BDC(v51, &v61);
          while (1)
          {
            v29 = sub_238EA1A80(&v49);
            LODWORD(v30) = v49;
            if (v49)
            {
              v29 = 0;
            }

            if (!v29)
            {
              break;
            }

            v52 = 0;
            v30 = sub_2393C5F2C(v51, &v52);
            v49 = v30;
            v50 = v31;
            if (v30)
            {
              break;
            }

            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v52];
            [v28 addObject:v32];
          }

          if (v30 != 33)
          {
            v37 = v49;
            if (v49)
            {
              goto LABEL_77;
            }
          }

          [v25 setSubjects:{v28, v49}];
        }

        else
        {
          [v25 setSubjects:0];
        }

        if (v69 != 1)
        {
          goto LABEL_87;
        }

        if (v67)
        {
          v28 = objc_opt_new();
          if ((v69 & 1) == 0 || v67 != 1)
          {
            sub_238EA195C();
          }

          sub_2393C5AAC(v51);
          v49 = 0;
          v50 = 0;
          sub_2393C5BDC(v51, &v66);
          LOBYTE(v52) = 0;
          BYTE4(v52) = 0;
          LOBYTE(v53) = 0;
          BYTE2(v53) = 0;
          BYTE4(v53) = 0;
          LOBYTE(v54) = 0;
          while (1)
          {
            v38 = sub_238EA1A80(&v49);
            LODWORD(v39) = v49;
            if (v49)
            {
              v38 = 0;
            }

            if (!v38)
            {
              break;
            }

            v52 = 0;
            v53 = 0;
            v54 = 0;
            v39 = sub_238EFE418(&v52, v51);
            v49 = v39;
            v50 = v40;
            if (v39)
            {
              break;
            }

            v41 = objc_opt_new();
            v42 = v41;
            if ((v52 & 0x100000000) != 0)
            {
              v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v52];
              [v42 setCluster:v43];
            }

            else
            {
              [v41 setCluster:0];
            }

            if ((v53 & 0x10000) != 0)
            {
              v44 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v53];
              [v42 setEndpoint:v44];
            }

            else
            {
              [v42 setEndpoint:0];
            }

            if (v54)
            {
              v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v53)];
              [v42 setDeviceType:v45];
            }

            else
            {
              [v42 setDeviceType:0];
            }

            [v28 addObject:{v42, v49}];
          }

          if (v39 != 33)
          {
            v37 = v49;
            if (v49)
            {
LABEL_77:
              v46 = v50;
              *a3 = v37;
              a3[1] = v46;

              v10 = 0;
              goto LABEL_83;
            }
          }

          [v25 setTargets:{v28, v49}];
        }

        else
        {
          [v25 setTargets:0];
        }

        if ((v69 & 1) == 0)
        {
LABEL_87:
          sub_238EA195C();
        }

        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v68];
        [v25 setFabricIndex:v47];
      }

      else
      {
        v25 = 0;
      }

      [v6 setLatestValue:v25];

      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v70];
      [v6 setFabricIndex:v36];
LABEL_82:

      v10 = v6;
      goto LABEL_83;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_84;
  }

  LOBYTE(v55) = 0;
  v56[0] = 0;
  LOBYTE(v57) = 0;
  v58 = 0;
  v59 = 0;
  LOBYTE(v60) = 0;
  v63 = 0;
  v64 = 0;
  v8 = sub_238EFDA10(&v55, a2);
  *a3 = v8;
  a3[1] = v9;
  if (v8)
  {
    goto LABEL_8;
  }

  v10 = objc_opt_new();
  if (v56[0])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v55];
  }

  else
  {
    v17 = 0;
  }

  [v10 setAdminNodeID:v17];

  if (v58)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v57];
  }

  else
  {
    v18 = 0;
  }

  [v10 setAdminPasscodeID:v18];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v59];
  [v10 setChangeType:v20];

  if (v63)
  {
    v21 = objc_opt_new();
    if (v63 != 1 || ([MEMORY[0x277CBEA90] dataWithBytes:v60 length:v61], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "setData:", v22), v22, (v63 & 1) == 0))
    {
      sub_238EA195C();
    }

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v62];
    [v21 setFabricIndex:v23];
  }

  else
  {
    v21 = 0;
  }

  [v10 setLatestValue:v21];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v64];
  [v10 setFabricIndex:v35];

LABEL_84:

  return v10;
}

MTRActionsClusterActionFailedEvent *sub_2392D5AD0(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    v16[0] = 0;
    v17 = 0;
    v18 = 0;
    v10 = sub_238EFF7BC(v16, a2);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v6 = objc_opt_new();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16[0]];
      [v6 setActionID:v12];

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
      [v6 setInvokeID:v13];

      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v18];
      [v6 setNewState:v14];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v18)];
      [v6 setError:v9];
      goto LABEL_9;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_10;
  }

  if (a1)
  {
    v6 = 0;
    *a3 = 0x1A2000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_10;
  }

  v16[0] = 0;
  v17 = 0;
  LOBYTE(v18) = 0;
  v4 = sub_238EFF638(v16, a2);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16[0]];
  [v6 setActionID:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
  [v6 setInvokeID:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v18];
  [v6 setNewState:v9];
LABEL_9:

LABEL_10:

  return v6;
}

MTRBasicInformationClusterShutDownEvent *sub_2392D5D10(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = sub_238EFFF1C(&v17, a2);
        *a3 = v4;
        a3[1] = v5;
        if (!v4)
        {
          v6 = objc_opt_new();
          goto LABEL_17;
        }

        goto LABEL_14;
      }

LABEL_10:
      v6 = 0;
      *a3 = 0x1ED000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_17;
    }

    v18 = 0;
    v10 = sub_238F01A6C(&v18, a2);
    *a3 = v10;
    a3[1] = v11;
    if (!v10)
    {
      v6 = objc_opt_new();
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
      [v6 setSoftwareVersion:v9];
      goto LABEL_16;
    }

LABEL_14:
    v6 = 0;
    goto LABEL_17;
  }

  if (a1 == 2)
  {
    v16 = 0;
    v12 = sub_238F012DC(&v16, a2);
    *a3 = v12;
    a3[1] = v13;
    if (!v12)
    {
      v6 = objc_opt_new();
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v16];
      [v6 setFabricIndex:v9];
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    goto LABEL_10;
  }

  v15 = 0;
  v7 = sub_238F01C20(&v15, a2);
  *a3 = v7;
  a3[1] = v8;
  if (v7)
  {
    goto LABEL_14;
  }

  v6 = objc_opt_new();
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v15];
  [v6 setReachableNewValue:v9];
LABEL_16:

LABEL_17:

  return v6;
}

MTROTASoftwareUpdateRequestorClusterDownloadErrorEvent *sub_2392D5EDC(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 2)
  {
    v20 = 0;
    v22 = 0;
    v23 = 0;
    LOBYTE(v24) = 0;
    v25 = 0;
    v13 = sub_238F23BE0(&v20, a2);
    v6 = 0;
    *a3 = v13;
    a3[1] = v14;
    if (v13)
    {
      goto LABEL_22;
    }

    v6 = objc_opt_new();
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v20];
    [v6 setSoftwareVersion:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
    [v6 setBytesDownloaded:v16];

    if ((v23 & 0x100) != 0)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
    }

    else
    {
      v17 = 0;
    }

    [v6 setProgressPercent:v17];

    if (v25)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
    }

    else
    {
      v10 = 0;
    }

    [v6 setPlatformCode:v10];
    goto LABEL_21;
  }

  if (a1 != 1)
  {
    if (a1)
    {
      v6 = 0;
      *a3 = 0x269000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_22;
    }

    LOWORD(v20) = 0;
    BYTE2(v20) = 0;
    LOBYTE(v21) = 0;
    LOBYTE(v22) = 0;
    v4 = sub_238F23994(&v20, a2);
    *a3 = v4;
    a3[1] = v5;
    if (!v4)
    {
      v6 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
      [v6 setPreviousState:v7];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v20)];
      [v6 setNewState:v8];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v20)];
      [v6 setReason:v9];

      if (v22)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
      }

      else
      {
        v10 = 0;
      }

      [v6 setTargetSoftwareVersion:v10];
      goto LABEL_21;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_22;
  }

  v20 = 0;
  LOWORD(v21) = 0;
  v11 = sub_238F0E2EC(&v20, a2);
  *a3 = v11;
  a3[1] = v12;
  if (v11)
  {
    goto LABEL_8;
  }

  v6 = objc_opt_new();
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v20];
  [v6 setSoftwareVersion:v18];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v21];
  [v6 setProductID:v10];
LABEL_21:

LABEL_22:

  return v6;
}

MTRPowerSourceClusterBatChargeFaultChangeEvent *sub_2392D6214(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 2)
  {
    sub_2393C5AAC(v27);
    sub_2393C5ADC(v27, 0, 0);
    sub_2393C5AAC(v28);
    sub_2393C5ADC(v28, 0, 0);
    v14 = sub_238F18B6C(v27, a2);
    v6 = 0;
    *a3 = v14;
    a3[1] = v15;
    if (v14)
    {
      goto LABEL_43;
    }

    v8 = objc_opt_new();
    v9 = objc_opt_new();
    sub_2393C5AAC(v25);
    v23 = 0;
    v24 = 0;
    sub_2393C5BDC(v25, v27);
    while (sub_2392DE9C8(&v23))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
      [v9 addObject:v16];
    }

    if (v23 == 33 || (v17 = v23, !v23))
    {
      [v8 setCurrent:{v9, v23}];

      v9 = objc_opt_new();
      sub_2393C5AAC(v25);
      v23 = 0;
      v24 = 0;
      sub_2393C5BDC(v25, v28);
      while (sub_2392DE9C8(&v23))
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
        [v9 addObject:v19];
      }

      if (v23 == 33)
      {
        goto LABEL_41;
      }

      v17 = v23;
      if (!v23)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        v6 = 0;
        *a3 = 0x346000000B6;
        a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
        goto LABEL_43;
      }

      sub_2393C5AAC(v27);
      sub_2393C5ADC(v27, 0, 0);
      sub_2393C5AAC(v28);
      sub_2393C5ADC(v28, 0, 0);
      v5 = sub_238F18B6C(v27, a2);
      v6 = 0;
      *a3 = v5;
      a3[1] = v7;
      if (v5)
      {
        goto LABEL_43;
      }

      v8 = objc_opt_new();
      v9 = objc_opt_new();
      sub_2393C5AAC(v25);
      v23 = 0;
      v24 = 0;
      sub_2393C5BDC(v25, v27);
      while (sub_2392DE974(&v23))
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
        [v9 addObject:v10];
      }

      if (v23 != 33)
      {
        v17 = v23;
        if (v23)
        {
          goto LABEL_40;
        }
      }

      [v8 setCurrent:{v9, v23}];

      v9 = objc_opt_new();
      sub_2393C5AAC(v25);
      v23 = 0;
      v24 = 0;
      sub_2393C5BDC(v25, v28);
      while (sub_2392DE974(&v23))
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
        [v9 addObject:v20];
      }

      if (v23 != 33)
      {
        v17 = v23;
        if (v23)
        {
          goto LABEL_40;
        }
      }

LABEL_41:
      [v8 setPrevious:v9];

      v6 = v8;
      goto LABEL_42;
    }

    sub_2393C5AAC(v27);
    sub_2393C5ADC(v27, 0, 0);
    sub_2393C5AAC(v28);
    sub_2393C5ADC(v28, 0, 0);
    v11 = sub_238F18B6C(v27, a2);
    v6 = 0;
    *a3 = v11;
    a3[1] = v12;
    if (v11)
    {
      goto LABEL_43;
    }

    v8 = objc_opt_new();
    v9 = objc_opt_new();
    sub_2393C5AAC(v25);
    v23 = 0;
    v24 = 0;
    sub_2393C5BDC(v25, v27);
    while (sub_2392DE974(&v23))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
      [v9 addObject:v13];
    }

    if (v23 == 33 || (v17 = v23, !v23))
    {
      [v8 setCurrent:{v9, v23}];

      v9 = objc_opt_new();
      sub_2393C5AAC(v25);
      v23 = 0;
      v24 = 0;
      sub_2393C5BDC(v25, v28);
      while (sub_2392DE974(&v23))
      {
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
        [v9 addObject:v18];
      }

      if (v23 == 33)
      {
        goto LABEL_41;
      }

      v17 = v23;
      if (!v23)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_40:
  v21 = v24;
  *a3 = v17;
  a3[1] = v21;

  v6 = 0;
LABEL_42:

LABEL_43:

  return v6;
}

MTRGeneralDiagnosticsClusterBootReasonEvent *sub_2392D67C0(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      sub_2393C5AAC(v30);
      sub_2393C5ADC(v30, 0, 0);
      sub_2393C5AAC(v31);
      sub_2393C5ADC(v31, 0, 0);
      v13 = sub_238F18B6C(v30, a2);
      v6 = 0;
      *a3 = v13;
      a3[1] = v14;
      if (v13)
      {
        goto LABEL_48;
      }

      v8 = objc_opt_new();
      v9 = objc_opt_new();
      sub_2393C5AAC(v28);
      v26 = 0;
      v27 = 0;
      sub_2393C5BDC(v28, v30);
      while (sub_2392DE9C8(&v26))
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 addObject:v15];
      }

      if (v26 == 33 || (v20 = v26, !v26))
      {
        [v8 setCurrent:{v9, v26}];

        v9 = objc_opt_new();
        sub_2393C5AAC(v28);
        v26 = 0;
        v27 = 0;
        sub_2393C5BDC(v28, v31);
        while (sub_2392DE9C8(&v26))
        {
          v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
          [v9 addObject:v22];
        }

        if (v26 == 33)
        {
          goto LABEL_46;
        }

        v20 = v26;
        if (!v26)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_45;
    }

    if (a1 == 1)
    {
      sub_2393C5AAC(v30);
      sub_2393C5ADC(v30, 0, 0);
      sub_2393C5AAC(v31);
      sub_2393C5ADC(v31, 0, 0);
      v5 = sub_238F18B6C(v30, a2);
      v6 = 0;
      *a3 = v5;
      a3[1] = v7;
      if (v5)
      {
        goto LABEL_48;
      }

      v8 = objc_opt_new();
      v9 = objc_opt_new();
      sub_2393C5AAC(v28);
      v26 = 0;
      v27 = 0;
      sub_2393C5BDC(v28, v30);
      while (sub_2392DEA1C(&v26))
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 addObject:v10];
      }

      if (v26 == 33 || (v20 = v26, !v26))
      {
        [v8 setCurrent:{v9, v26}];

        v9 = objc_opt_new();
        sub_2393C5AAC(v28);
        v26 = 0;
        v27 = 0;
        sub_2393C5BDC(v28, v31);
        while (sub_2392DEA1C(&v26))
        {
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
          [v9 addObject:v21];
        }

        if (v26 == 33 || (v20 = v26, !v26))
        {
LABEL_46:
          [v8 setPrevious:v9];

          v6 = v8;
          goto LABEL_47;
        }
      }

LABEL_45:
      v24 = v27;
      *a3 = v20;
      a3[1] = v24;

      v6 = 0;
LABEL_47:

      goto LABEL_48;
    }

LABEL_12:
    v6 = 0;
    *a3 = 0x427000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_48;
  }

  if (a1 == 2)
  {
    sub_2393C5AAC(v30);
    sub_2393C5ADC(v30, 0, 0);
    sub_2393C5AAC(v31);
    sub_2393C5ADC(v31, 0, 0);
    v16 = sub_238F18B6C(v30, a2);
    v6 = 0;
    *a3 = v16;
    a3[1] = v17;
    if (v16)
    {
      goto LABEL_48;
    }

    v8 = objc_opt_new();
    v9 = objc_opt_new();
    sub_2393C5AAC(v28);
    v26 = 0;
    v27 = 0;
    sub_2393C5BDC(v28, v30);
    while (sub_238E8A35C(&v26))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
      [v9 addObject:v18];
    }

    if (v26 == 33 || (v20 = v26, !v26))
    {
      [v8 setCurrent:{v9, v26}];

      v9 = objc_opt_new();
      sub_2393C5AAC(v28);
      v26 = 0;
      v27 = 0;
      sub_2393C5BDC(v28, v31);
      while (sub_238E8A35C(&v26))
      {
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
        [v9 addObject:v23];
      }

      if (v26 == 33)
      {
        goto LABEL_46;
      }

      v20 = v26;
      if (!v26)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_45;
  }

  if (a1 != 3)
  {
    goto LABEL_12;
  }

  v30[0] = 0;
  v11 = sub_238F18EEC(v30, a2);
  *a3 = v11;
  a3[1] = v12;
  if (v11)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_opt_new();
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v30[0]];
    [v6 setBootReason:v19];
  }

LABEL_48:

  return v6;
}

MTRSoftwareDiagnosticsClusterSoftwareFaultEvent *sub_2392D6DF0(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x45C000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_13;
  }

  v15 = 0;
  v16[0] = 0;
  v17[0] = 0;
  v5 = sub_238F288BC(&v15, a2);
  v4 = 0;
  *a3 = v5;
  a3[1] = v6;
  if (!v5)
  {
    v7 = objc_opt_new();
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    [v7 setId:v8];

    if (v16[0] == 1)
    {
      v10 = sub_239289A18(v16, v9);
      v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v10 length:v10[1] encoding:4];
      if (!v4)
      {
        *a3 = xmmword_278A75258;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v4 = 0;
    }

    [v7 setName:v4];

    if (v17[0] == 1)
    {
      v12 = sub_239289A18(v17, v11);
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:*v12 length:v12[1]];
    }

    else
    {
      v13 = 0;
    }

    [v7 setFaultRecording:v13];

    v4 = v7;
    goto LABEL_12;
  }

LABEL_13:

  return v4;
}

MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent *sub_2392D6FA8(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    sub_2393C5AAC(v21);
    sub_2393C5ADC(v21, 0, 0);
    sub_2393C5AAC(v22);
    sub_2393C5ADC(v22, 0, 0);
    v8 = sub_238F18B6C(v21, a2);
    v7 = 0;
    *a3 = v8;
    a3[1] = v9;
    if (v8)
    {
      goto LABEL_21;
    }

    v10 = objc_opt_new();
    v11 = objc_opt_new();
    sub_2393C5AAC(v19);
    v17 = 0;
    v18 = 0;
    sub_2393C5BDC(v19, v21);
    while (sub_238E8A35C(&v17))
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
      [v11 addObject:v12];
    }

    if (v17 != 33)
    {
      v13 = v17;
      if (v17)
      {
        goto LABEL_18;
      }
    }

    [v10 setCurrent:{v11, v17}];

    v11 = objc_opt_new();
    sub_2393C5AAC(v19);
    v17 = 0;
    v18 = 0;
    sub_2393C5BDC(v19, v22);
    while (sub_238E8A35C(&v17))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v20];
      [v11 addObject:v14];
    }

    if (v17 == 33 || (v13 = v17, !v17))
    {
      [v10 setPrevious:v11];

      v7 = v10;
    }

    else
    {
LABEL_18:
      v15 = v18;
      *a3 = v13;
      a3[1] = v15;

      v7 = 0;
    }
  }

  else
  {
    if (a1)
    {
      v7 = 0;
      *a3 = 0x4AE000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_21;
    }

    v21[0] = 0;
    v5 = sub_238F2C2CC(v21, a2);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v7 = 0;
      goto LABEL_21;
    }

    v7 = objc_opt_new();
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v21[0]];
    [v7 setConnectionStatus:v10];
  }

LABEL_21:

  return v7;
}

MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent *sub_2392D7284(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 2)
  {
    v14 = 0;
    v11 = sub_238F2C2CC(&v14, a2);
    *a3 = v11;
    a3[1] = v12;
    if (!v11)
    {
      v6 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
      [v6 setConnectionStatus:v7];
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v15[0] = 0;
    v16 = 0;
    v8 = sub_238F0BC48(v15, a2);
    *a3 = v8;
    a3[1] = v9;
    if (!v8)
    {
      v6 = objc_opt_new();
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v15[0]];
      [v6 setAssociationFailureCause:v10];

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
      [v6 setStatus:v7];
      goto LABEL_12;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_13;
  }

  if (a1)
  {
    v6 = 0;
    *a3 = 0x4F3000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_13;
  }

  v17 = 0;
  v4 = sub_238F005E4(&v17, a2);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_9;
  }

  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
  [v6 setReasonCode:v7];
LABEL_12:

LABEL_13:

  return v6;
}

MTRTimeSynchronizationClusterDSTStatusEvent *sub_2392D7450(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v18 = sub_238EFFF1C(v21, a2);
      *a3 = v18;
      a3[1] = v19;
      if (!v18)
      {
LABEL_20:
        v8 = objc_opt_new();
        goto LABEL_24;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_24;
    }

    if (a1 == 1)
    {
      v21[0] = 0;
      v6 = sub_238F01C20(v21, a2);
      *a3 = v6;
      a3[1] = v7;
      if (!v6)
      {
        v8 = objc_opt_new();
        v9 = [MEMORY[0x277CCABB0] numberWithBool:v21[0]];
        [v8 setDstOffsetActive:v9];

        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_19:
    v8 = 0;
    *a3 = 0x55E000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_24;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v16 = sub_238EFFF1C(v21, a2);
      *a3 = v16;
      a3[1] = v17;
      if (!v16)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      v4 = sub_238EFFF1C(v21, a2);
      *a3 = v4;
      a3[1] = v5;
      if (!v4)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  *v21 = 0;
  v22[0] = 0;
  v10 = sub_238F2D9D4(v21, a2);
  *a3 = v10;
  a3[1] = v11;
  if (v10)
  {
    goto LABEL_18;
  }

  v12 = objc_opt_new();
  v13 = [MEMORY[0x277CCABB0] numberWithInt:*v21];
  [v12 setOffset:v13];

  if (v22[0] != 1)
  {
    v8 = 0;
    goto LABEL_22;
  }

  v15 = sub_239289A18(v22, v14);
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v15 length:v15[1] encoding:4];
  if (v8)
  {
LABEL_22:
    [v12 setName:v8];

    v8 = v12;
    goto LABEL_23;
  }

  *a3 = xmmword_278A75268;
LABEL_23:

LABEL_24:

  return v8;
}

MTRBridgedDeviceBasicInformationClusterStartUpEvent *sub_2392D76A4(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v21 = 0;
      v14 = sub_238F01A6C(&v21, a2);
      *a3 = v14;
      a3[1] = v15;
      if (!v14)
      {
        v6 = objc_opt_new();
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
        [v6 setSoftwareVersion:v7];
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (a1 != 1)
    {
      goto LABEL_17;
    }

    v8 = sub_238EFFF1C(&v20, a2);
    *a3 = v8;
    a3[1] = v9;
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_12:
    v6 = objc_opt_new();
    goto LABEL_20;
  }

  if (a1 == 2)
  {
    v10 = sub_238EFFF1C(&v19, a2);
    *a3 = v10;
    a3[1] = v11;
    if (v10)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v18 = 0;
    v12 = sub_238F01C20(&v18, a2);
    *a3 = v12;
    a3[1] = v13;
    if (!v12)
    {
      v6 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithBool:v18];
      [v6 setReachableNewValue:v7];
      goto LABEL_19;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_20;
  }

  if (a1 != 128)
  {
LABEL_17:
    v6 = 0;
    *a3 = 0x5B4000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_20;
  }

  v17 = 0;
  v4 = sub_238F01A6C(&v17, a2);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_16;
  }

  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
  [v6 setPromisedActiveDuration:v7];
LABEL_19:

LABEL_20:

  return v6;
}

MTRSwitchClusterSwitchLatchedEvent *sub_2392D7894(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        v29 = 0;
        v13 = sub_238F012DC(&v29, a2);
        *a3 = v13;
        a3[1] = v14;
        if (!v13)
        {
          v6 = objc_opt_new();
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29];
          [v6 setNewPosition:v7];
          goto LABEL_25;
        }

        goto LABEL_23;
      case 1:
        v28 = 0;
        v20 = sub_238F012DC(&v28, a2);
        *a3 = v20;
        a3[1] = v21;
        if (!v20)
        {
          v6 = objc_opt_new();
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v28];
          [v6 setNewPosition:v7];
          goto LABEL_25;
        }

        goto LABEL_23;
      case 2:
        v27 = 0;
        v8 = sub_238F012DC(&v27, a2);
        *a3 = v8;
        a3[1] = v9;
        if (!v8)
        {
          v6 = objc_opt_new();
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v27];
          [v6 setNewPosition:v7];
          goto LABEL_25;
        }

LABEL_23:
        v6 = 0;
        goto LABEL_26;
    }

LABEL_17:
    v6 = 0;
    *a3 = 0x642000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_26;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v24 = 0;
      v17 = sub_238F26560(&v24, a2);
      *a3 = v17;
      a3[1] = v18;
      if (!v17)
      {
        v6 = objc_opt_new();
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
        [v6 setNewPosition:v19];

        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v24)];
        [v6 setCurrentNumberOfPressesCounted:v7];
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (a1 == 6)
    {
      v23 = 0;
      v10 = sub_238F26560(&v23, a2);
      *a3 = v10;
      a3[1] = v11;
      if (!v10)
      {
        v6 = objc_opt_new();
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
        [v6 setPreviousPosition:v12];

        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v23)];
        [v6 setTotalNumberOfPressesCounted:v7];
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (a1 == 3)
  {
    v26 = 0;
    v15 = sub_238F012DC(&v26, a2);
    *a3 = v15;
    a3[1] = v16;
    if (!v15)
    {
      v6 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
      [v6 setPreviousPosition:v7];
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v25 = 0;
  v4 = sub_238F012DC(&v25, a2);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_23;
  }

  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v25];
  [v6 setPreviousPosition:v7];
LABEL_25:

LABEL_26:

  return v6;
}

MTRBooleanStateClusterStateChangeEvent *sub_2392D7C1C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x6A1000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    v9 = 0;
    v5 = sub_238F01C20(&v9, a2);
    *a3 = v5;
    a3[1] = v6;
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v4 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      [v4 setStateValue:v7];
    }
  }

  return v4;
}

MTROvenCavityOperationalStateClusterOperationCompletionEvent *sub_2392D7CF4(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    v32[0] = 0;
    v33[0] = 0;
    v35[0] = 0;
    v15 = sub_238F22D98(v32, a2);
    *a3 = v15;
    a3[1] = v16;
    if (!v15)
    {
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v32[0]];
      [v17 setCompletionErrorCode:v18];

      if (v33[0] == 1 && (sub_2392C83B0(v33, v19)[4] & 1) != 0)
      {
        v21 = MEMORY[0x277CCABB0];
        v22 = sub_2392C83B0(v33, v20);
        if ((v22[4] & 1) == 0)
        {
          sub_238EA195C();
        }

        v23 = [v21 numberWithUnsignedInt:*v22];
      }

      else
      {
        v23 = 0;
      }

      [v17 setTotalOperationalTime:v23];

      if (v35[0] == 1 && (sub_2392C83B0(v35, v24)[4] & 1) != 0)
      {
        v26 = MEMORY[0x277CCABB0];
        v27 = sub_2392C83B0(v35, v25);
        if ((v27[4] & 1) == 0)
        {
          sub_238EA195C();
        }

        v6 = [v26 numberWithUnsignedInt:*v27];
      }

      else
      {
        v6 = 0;
      }

      [v17 setPausedTime:v6];
      goto LABEL_28;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_29;
  }

  if (a1)
  {
    v17 = 0;
    *a3 = 0x719000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_29;
  }

  v32[0] = 0;
  v34[0] = 0;
  v36[0] = 0;
  v4 = sub_238F22C0C(v32, a2);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v32[0]];
  [v7 setErrorStateID:v8];

  if (v34[0] != 1)
  {
    [v7 setErrorStateLabel:0];
LABEL_22:
    if (v36[0] == 1)
    {
      v28 = sub_239289A18(v36, v13);
      v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v28 length:v28[1] encoding:4];
      [v7 setErrorStateDetails:v29];

      v30 = [v7 errorStateDetails];

      if (!v30)
      {
        v14 = &xmmword_278A75288;
        goto LABEL_25;
      }
    }

    else
    {
      [v7 setErrorStateDetails:0];
    }

    [v6 setErrorState:v7];

    v17 = v6;
    goto LABEL_28;
  }

  v10 = sub_239289A18(v34, v9);
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v10 length:v10[1] encoding:4];
  [v7 setErrorStateLabel:v11];

  v12 = [v7 errorStateLabel];

  if (v12)
  {
    goto LABEL_22;
  }

  v14 = &xmmword_278A75278;
LABEL_25:
  *a3 = *v14;

  v17 = 0;
LABEL_28:

LABEL_29:

  return v17;
}

MTRRefrigeratorAlarmClusterNotifyEvent *sub_2392D8084(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x7BB000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v5 = sub_238F106A8(&v12, a2);
    v4 = 0;
    *a3 = v5;
    a3[1] = v6;
    if (!v5)
    {
      v4 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      [v4 setActive:v7];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v12)];
      [v4 setInactive:v8];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
      [v4 setState:v9];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v13)];
      [v4 setMask:v10];
    }
  }

  return v4;
}

MTRSmokeCOAlarmClusterInterconnectSmokeAlarmEvent *sub_2392D81E8(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        v24 = sub_238EFFF1C(&v34, a2);
        *a3 = v24;
        a3[1] = v25;
        if (!v24)
        {
LABEL_32:
          v12 = objc_opt_new();
          goto LABEL_38;
        }
      }

      else if (a1 == 6)
      {
        v18 = sub_238EFFF1C(&v33, a2);
        *a3 = v18;
        a3[1] = v19;
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v4 = sub_238EFFF1C(&v32, a2);
        *a3 = v4;
        a3[1] = v5;
        if (!v4)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_34;
    }

    switch(a1)
    {
      case 8:
        v31 = 0;
        v26 = sub_238F1AC70(&v31, a2);
        *a3 = v26;
        a3[1] = v27;
        if (!v26)
        {
          v12 = objc_opt_new();
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v31];
          [v12 setAlarmSeverityLevel:v13];
          goto LABEL_37;
        }

        break;
      case 9:
        v30 = 0;
        v20 = sub_238F1AC70(&v30, a2);
        *a3 = v20;
        a3[1] = v21;
        if (!v20)
        {
          v12 = objc_opt_new();
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v30];
          [v12 setAlarmSeverityLevel:v13];
          goto LABEL_37;
        }

        break;
      case 10:
        v8 = sub_238EFFF1C(&v29, a2);
        *a3 = v8;
        a3[1] = v9;
        if (!v8)
        {
          goto LABEL_32;
        }

        break;
      default:
        goto LABEL_35;
    }

LABEL_34:
    v12 = 0;
    goto LABEL_38;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v16 = sub_238EFFF1C(&v36, a2);
        *a3 = v16;
        a3[1] = v17;
        if (!v16)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v6 = sub_238EFFF1C(&v35, a2);
        *a3 = v6;
        a3[1] = v7;
        if (!v6)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_34;
    }

    v37 = 0;
    v22 = sub_238F1AC70(&v37, a2);
    *a3 = v22;
    a3[1] = v23;
    if (!v22)
    {
      v12 = objc_opt_new();
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v37];
      [v12 setAlarmSeverityLevel:v13];
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (a1)
  {
    if (a1 != 1)
    {
LABEL_35:
      v12 = 0;
      *a3 = 0x879000000B6;
      a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
      goto LABEL_38;
    }

    v38 = 0;
    v10 = sub_238F1AC70(&v38, a2);
    *a3 = v10;
    a3[1] = v11;
    if (v10)
    {
      goto LABEL_34;
    }

    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v38];
    [v12 setAlarmSeverityLevel:v13];
  }

  else
  {
    v39 = 0;
    v14 = sub_238F1AC70(&v39, a2);
    *a3 = v14;
    a3[1] = v15;
    if (v14)
    {
      goto LABEL_34;
    }

    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v39];
    [v12 setAlarmSeverityLevel:v13];
  }

LABEL_37:

LABEL_38:

  return v12;
}

MTRDishwasherAlarmClusterNotifyEvent *sub_2392D8538(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    v4 = 0;
    *a3 = 0x8A6000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v5 = sub_238F106A8(&v12, a2);
    v4 = 0;
    *a3 = v5;
    a3[1] = v6;
    if (!v5)
    {
      v4 = objc_opt_new();
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      [v4 setActive:v7];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v12)];
      [v4 setInactive:v8];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
      [v4 setState:v9];

      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v13)];
      [v4 setMask:v10];
    }
  }

  return v4;
}

MTROperationalStateClusterOperationCompletionEvent *sub_2392D869C(int a1, uint64_t a2, unint64_t *a3)
{
  if (a1 == 1)
  {
    v32[0] = 0;
    v33[0] = 0;
    v35[0] = 0;
    v15 = sub_238F22D98(v32, a2);
    *a3 = v15;
    a3[1] = v16;
    if (!v15)
    {
      v17 = objc_opt_new();
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v32[0]];
      [v17 setCompletionErrorCode:v18];

      if (v33[0] == 1 && (sub_2392C83B0(v33, v19)[4] & 1) != 0)
      {
        v21 = MEMORY[0x277CCABB0];
        v22 = sub_2392C83B0(v33, v20);
        if ((v22[4] & 1) == 0)
        {
          sub_238EA195C();
        }

        v23 = [v21 numberWithUnsignedInt:*v22];
      }

      else
      {
        v23 = 0;
      }

      [v17 setTotalOperationalTime:v23];

      if (v35[0] == 1 && (sub_2392C83B0(v35, v24)[4] & 1) != 0)
      {
        v26 = MEMORY[0x277CCABB0];
        v27 = sub_2392C83B0(v35, v25);
        if ((v27[4] & 1) == 0)
        {
          sub_238EA195C();
        }

        v6 = [v26 numberWithUnsignedInt:*v27];
      }

      else
      {
        v6 = 0;
      }

      [v17 setPausedTime:v6];
      goto LABEL_28;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_29;
  }

  if (a1)
  {
    v17 = 0;
    *a3 = 0x91E000000B6;
    a3[1] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTREventTLVValueDecoder.mm";
    goto LABEL_29;
  }

  v32[0] = 0;
  v34[0] = 0;
  v36[0] = 0;
  v4 = sub_238F22C0C(v32, a2);
  *a3 = v4;
  a3[1] = v5;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v32[0]];
  [v7 setErrorStateID:v8];

  if (v34[0] != 1)
  {
    [v7 setErrorStateLabel:0];
LABEL_22:
    if (v36[0] == 1)
    {
      v28 = sub_239289A18(v36, v13);
      v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v28 length:v28[1] encoding:4];
      [v7 setErrorStateDetails:v29];

      v30 = [v7 errorStateDetails];

      if (!v30)
      {
        v14 = &xmmword_278A752A8;
        goto LABEL_25;
      }
    }

    else
    {
      [v7 setErrorStateDetails:0];
    }

    [v6 setErrorState:v7];

    v17 = v6;
    goto LABEL_28;
  }

  v10 = sub_239289A18(v34, v9);
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v10 length:v10[1] encoding:4];
  [v7 setErrorStateLabel:v11];

  v12 = [v7 errorStateLabel];

  if (v12)
  {
    goto LABEL_22;
  }

  v14 = &xmmword_278A75298;
LABEL_25:
  *a3 = *v14;

  v17 = 0;
LABEL_28:

LABEL_29:

  return v17;
}