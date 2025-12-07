void sub_1D625ADCC(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    sub_1D620B270(a1, a2, v6);
  }
}

void sub_1D625AE14(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (*v2 >= 3)
  {
    v5 = v2[1];
    sub_1D620B270(a1, a2, v4);
    if (!v3)
    {
      sub_1D620B270(a1, a2, v5);
    }
  }
}

double sub_1D625AE80(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  v7 = v2[2];
  if ((~*v2 & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(a1, a2), , !v3))
  {
    if ((~v6 & 0xF000000000000007) == 0 || (, FormatFloat.bind(binder:context:)(a1, a2), , !v3))
    {
      if ((~v7 & 0xF000000000000007) != 0)
      {

        FormatFloat.bind(binder:context:)(a1, a2);
      }
    }
  }

  return result;
}

double FormatLayeredMediaNode.bind(binder:context:)(unint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = v3;
  v8 = v3[4];
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (!v3[5])
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v10 = v8 & 0x7FFFFFFFFFFFFFFFLL;
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);

  sub_1D6248FB8(a1, a2, v11, v12);
  if (v4)
  {

    return result;
  }

  if (v5[5])
  {
LABEL_3:
    FormatLayeredMediaNodeStyle.bind(binder:context:)(a1, a2);
    if (v4)
    {
      return result;
    }
  }

LABEL_8:
  v13 = v5[6];
  if (v13)
  {
    swift_beginAccess();
    v14 = *(v13 + 72);
    if (v14)
    {

      sub_1D621397C(a1, a2, v14);
      if (v4)
      {
LABEL_13:

        return result;
      }
    }

    swift_beginAccess();
    v15 = *(v13 + 88);

    sub_1D621D544(a1, a2, v15);
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v21 = v5[7];
  sub_1D5C82CD8(v21);
  FormatSize.bind(binder:context:)(a1, a2);
  sub_1D5C92A8C(v21);
  if (!v4)
  {
    swift_beginAccess();
    v16 = v5[9];

    sub_1D620EA64(a1, a2, v16);

    swift_beginAccess();
    v17 = v5[11];
    if (v17 >> 62 == 1)
    {
      v18 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v5[11]);
      sub_1D5EB1500(v18);

      sub_1D624919C(a1, a2, v18, v19);
      sub_1D5EB15C4(v18);

      result = sub_1D5EB15C4(v17);
    }

    if (v5[16])
    {
      v20 = v5[20];

      sub_1D5DEA234(v20);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v20);
    }
  }

  return result;
}

double sub_1D625B32C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if ((*v3 & 0x8000000000000000) != 0)
  {
    v5 = *v3 & 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(v5 + 0x10);
    v7 = *(v5 + 24);

    a3(a1, a2, v6, v7);
  }

  return result;
}

void FormatLayeredMediaNodeStyle.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D6233270(a1, a2, v6);
  if (v3)
  {

    return;
  }

  v7 = *(v2 + 56);
  if (v7)
  {
    sub_1D620B270(a1, a2, v7);
  }

  if ((~*(v2 + 64) & 0xF000000000000007) != 0)
  {
    *&v32[0] = *(v2 + 64);

    FormatBackground.bind(binder:context:)(a1, a2);
  }

  v8 = *(v2 + 72);
  if (v8)
  {
    sub_1D620E744(a1, a2, v8);
  }

  v9 = *(v2 + 152);
  v33 = *(v2 + 136);
  v34 = v9;
  v35 = *(v2 + 168);
  v36 = *(v2 + 184);
  v10 = v36;
  v11 = *(v2 + 120);
  v32[0] = *(v2 + 104);
  v32[1] = v11;
  if (v36 != 254)
  {
    v17 = *(&v34 + 1);
    v28 = *&v34;
    v18 = *&v35;
    v19 = *(&v33 + 1);
    v37 = v33;
    sub_1D62B5354(v32, &v29, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v10 <= 2)
    {
      if (v10)
      {
        v26 = v19;
        if (v10 == 1)
        {
          v27 = v28;
        }

        else
        {
          sub_1D625E06C(a1, a2, v19, v28);
          v27 = v18;
          v26 = v17;
        }

        sub_1D625E06C(a1, a2, v26, v27);
        sub_1D5D0ABCC(v32, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_11;
      }

      goto LABEL_28;
    }

    v20 = v18;
    if (v10 > 4)
    {
      v21 = v17;
      if (v10 != 5)
      {
LABEL_28:
        sub_1D5D0ABCC(v32, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_11;
      }

      v22 = v19;
      v23 = v28;
      v24 = a1;
      v25 = a2;
    }

    else
    {
      v21 = v17;
      v22 = v19;
      v23 = v28;
      v24 = a1;
      v25 = a2;
      if (v10 != 3)
      {
        goto LABEL_27;
      }
    }

    sub_1D625E06C(v24, v25, v22, v23);
    v23 = v20;
    v22 = v21;
    v24 = a1;
    v25 = a2;
LABEL_27:
    sub_1D625E06C(v24, v25, v22, v23);
    goto LABEL_28;
  }

LABEL_11:
  v12 = *(v2 + 208);
  if (v12 != 255)
  {
    v13 = *(v2 + 200);
    v29 = *(v2 + 192);
    v30 = v13;
    v31 = v12 & 1;
    sub_1D6189668(v29, v13, v12);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v29, v30, v31);
  }

  v14 = *(v2 + 232);
  if (v14 != 255)
  {
    v15 = *(v2 + 224);
    v29 = *(v2 + 216);
    v30 = v15;
    v31 = v14 & 1;
    sub_1D6189668(v29, v15, v14);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v29, v30, v31);
  }

  v16 = *(v2 + 240);
  if (v16)
  {
    sub_1D620E8A0(a1, a2, v16);
  }
}

double sub_1D625B7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if ((*v5 & 0x8000000000000000) != 0)
  {
    v7 = *v5 & 0x7FFFFFFFFFFFFFFFLL;
    v8 = *(v7 + 0x10);
    v9 = *(v7 + 24);

    a5(a1, a2, v8, v9);
  }

  return result;
}

void FormatLayeredMediaNodeStyle.Selector.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 112);
  v37 = *(v2 + 96);
  v38 = v9;
  v39 = *(v2 + 128);
  v40 = *(v2 + 144);
  v10 = *(v2 + 80);
  v36[0] = *(v2 + 64);
  v36[1] = v10;
  v11 = *(v2 + 152);
  v12 = *(v2 + 160);
  v13 = *(v2 + 168);
  v30 = *(v2 + 184);
  v31 = *(v2 + 176);
  v32 = *(v2 + 192);
  v14 = *(v2 + 200);
  if (v6)
  {
    sub_1D620B270(a1, a2, v6);
    if (v3)
    {
      return;
    }
  }

  if ((~v7 & 0xF000000000000007) != 0)
  {
    v33 = v7;

    FormatBackground.bind(binder:context:)(a1, a2);
    if (v3)
    {

      return;
    }
  }

  if (v8)
  {
    sub_1D620E744(a1, a2, v8);
    if (v3)
    {
      return;
    }
  }

  v15 = v3;
  v16 = v40;
  if (v40 != 254)
  {
    v29 = *(&v38 + 1);
    v26 = *&v39;
    v27 = *&v38;
    v28 = *(&v37 + 1);
    v41 = v37;
    sub_1D62B5354(v36, &v33, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);
    if (v3)
    {

      sub_1D5D0ABCC(v36, &qword_1EDF33718, &type metadata for FormatShadow);
      return;
    }

    if (v16 <= 2)
    {
      if (v16)
      {
        if (v16 == 1)
        {
          v19 = v28;
          v20 = v27;
          v21 = a1;
          v22 = a2;
LABEL_31:
          sub_1D625E06C(v21, v22, v19, v20);
          sub_1D5D0ABCC(v36, &qword_1EDF33718, &type metadata for FormatShadow);
          v15 = 0;
          goto LABEL_10;
        }

        v17 = v28;
        v18 = v27;
LABEL_30:
        sub_1D625E06C(a1, a2, v17, v18);
        v20 = v26;
        v19 = v29;
        v21 = a1;
        v22 = a2;
        goto LABEL_31;
      }
    }

    else
    {
      if (v16 <= 4)
      {
        v17 = v28;
        if (v16 == 3)
        {
          v18 = v27;
          goto LABEL_30;
        }

        v23 = v27;
        v24 = a1;
        v25 = a2;
        goto LABEL_33;
      }

      if (v16 == 5)
      {
        sub_1D625E06C(a1, a2, v28, v27);
        v23 = v26;
        v17 = v29;
        v24 = a1;
        v25 = a2;
LABEL_33:
        sub_1D625E06C(v24, v25, v17, v23);
        v15 = 0;
      }
    }

    sub_1D5D0ABCC(v36, &qword_1EDF33718, &type metadata for FormatShadow);
  }

LABEL_10:
  if (v13 != 255)
  {
    v33 = v11;
    v34 = v12;
    v35 = v13 & 1;
    sub_1D6189668(v11, v12, v13);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v33, v34, v35);
    if (v15)
    {
      return;
    }

    v15 = 0;
  }

  if (v32 == 255 || (v33 = v31, v34 = v30, v35 = v32 & 1, sub_1D6189668(v31, v30, v32), sub_1D60ECF10(a2), sub_1D5D2F2C8(v33, v34, v35), !v15))
  {
    if (v14)
    {
      sub_1D620E8A0(a1, a2, v14);
    }
  }
}

void FormatMediaTimingFunction.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32) == 1)
  {
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = *(v2 + 8);
    sub_1D620B270(a1, a2, *v2);
    if (!v3)
    {
      sub_1D620B270(a1, a2, v8);
      sub_1D620B270(a1, a2, v7);
      sub_1D620B270(a1, a2, v6);
    }
  }
}

void sub_1D625BD00(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  sub_1D620B270(a1, a2, *v2);
  if (!v3)
  {
    sub_1D620B270(a1, a2, v6);
    sub_1D620B270(a1, a2, v8);
    sub_1D620B270(a1, a2, v7);
  }
}

void sub_1D625BD7C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 32) == 1)
  {
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = *(v2 + 8);
    sub_1D620B270(a1, a2, *v2);
    if (!v3)
    {
      sub_1D620B270(a1, a2, v8);
      sub_1D620B270(a1, a2, v7);
      sub_1D620B270(a1, a2, v6);
    }
  }
}

void sub_1D625BE1C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v6 = v2[1];
  v8 = v2[3];
  v7 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[8];
  if ((~v6 & 0xF000000000000007) != 0 || (v2[3] & 7) != 7)
  {
    v22 = v2[5];
    v23 = v2[8];
    v14 = *v2;
    v15 = v2[2];
    if ((v8 & 4) != 0)
    {
      sub_1D62B7098(v14, v6, v15, v8);
      FormatTextContent.bind(binder:context:)(a1, a2);
      sub_1D62B7110(v14, v6, v15, v8);
      if (v3)
      {
        return;
      }

      v4 = a2;
    }

    else
    {
      sub_1D62B7098(*v2, v6, v2[2], v8);
      sub_1D6245970(a1, a2, v14, v6, v15, v8);
      sub_1D62B7110(v14, v6, v15, v8);
      if (v3)
      {
        return;
      }

      v4 = a2;
    }

    v9 = v22;
    v11 = v23;
  }

  if ((~(v7 & v10) & 0x3000000000000007) == 0 || ((v10 & 0x2000000000000000) != 0 ? (v21 = v9, sub_1D62B6FC0(v7, v9, v10), FormatSyncImageContent.bind(binder:context:)(a1, v4), v19 = v7, v20 = v21) : (v16 = v9, sub_1D62B6FC0(v7, v9, v10), sub_1D6209F10(a1, v4, v7, v16, v10, v17, v18), v19 = v7, v20 = v16), sub_1D62B7020(v19, v20, v10), !v3))
  {
    sub_1D6223ECC(a1, v4, v11);
  }
}

void FormatMenuTitle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  if ((v3 & 4) != 0)
  {
    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D6245970(a1, a2, *v2, v2[1], v2[2], v3);
  }
}

void FormatMenuImage.bind(binder:context:)(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[2];
  if ((v9 & 0x2000000000000000) != 0)
  {
    FormatSyncImageContent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D6209F10(a1, a2, *v8, v8[1], v9, a7, a8);
  }
}

void FormatMenuGroupData.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 56);
  if (v6 != 255 && (v6 & 1) != 0)
  {
    v15 = *(v2 + 56);
    v10 = *v2;
    v11 = *(v2 + 8);
    v12 = *(*v2 + 24);
    sub_1D5F26358(v10, v11, 1);
    sub_1D621E2E4(a1, a2, v12);
    if (v3)
    {
      sub_1D62B5FEC(v10, v11, v6);
      return;
    }

    sub_1D6251BE4(a1, a2, *(v10 + 32), *(v10 + 40));
    sub_1D62B5FEC(v10, v11, v6);
    v9 = v15;
  }

  if (v8 != 255 && (v8 & 1) != 0)
  {
    v13 = v9;
    v14 = *(v7 + 24);
    sub_1D62B5FC8(v7, 1);
    sub_1D621E140(a1, a2, v14);
    if (v3)
    {
      sub_1D62B5FD4(v7, v8);
      return;
    }

    sub_1D6251AD4(a1, a2, *(v7 + 32));
    sub_1D62B5FD4(v7, v8);
    v9 = v13;
  }

  sub_1D621E474(a1, a2, v9);
}

uint64_t FormatMenuTitleData.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (v2[16] == 1)
  {
    v4 = *v2;
    v5 = *(*v2 + 24);
    v6 = result;
    result = sub_1D621E2E4(result, a2, v5);
    if (!v3)
    {
      return sub_1D6251BE4(v6, a2, *(v4 + 32), *(v4 + 40));
    }
  }

  return result;
}

uint64_t FormatMenuImageData.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (v2[8] == 1)
  {
    v4 = *v2;
    v5 = *(*v2 + 24);
    v6 = result;
    result = sub_1D621E140(result, a2, v5);
    if (!v3)
    {
      return sub_1D6251AD4(v6, a2, *(v4 + 32));
    }
  }

  return result;
}

void sub_1D625C2EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v21 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v29 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      *v30 = v21;
      *&v30[16] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v31 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v22 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v24 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v26[1] = v22;
      v26[2] = v23;
      v26[3] = v24;
      v27 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v26[0] = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D62B72DC(&v28, v25);
      sub_1D625BE1C(a1, a2);
      sub_1D62B7338(&v28);
      return;
    }

    v11 = *(a3 + 32);
    v28 = *(a3 + 16);
    v29 = v11;
    v12 = *(a3 + 64);
    *v30 = *(a3 + 48);
    *&v30[16] = v12;
    v13 = v28;
    v14 = *(&v29 + 1);
    if ((BYTE8(v29) & 4) != 0)
    {
      v25[0] = v28;
      sub_1D5CFBAA8(&v28, v26);
      FormatTextContent.bind(binder:context:)(a1, a2);
      if (!v3)
      {
LABEL_14:
        if ((*&v30[16] & 0x2000000000000000) != 0)
        {
          *&v26[0] = *v30;
          FormatSyncImageContent.bind(binder:context:)(a1, a2);
        }

        else
        {
          sub_1D6209F10(a1, a2, *v30, *&v30[8], *&v30[16], v17, v18);
        }

        sub_1D625CCA8(a1, a2, *&v30[24]);
      }
    }

    else
    {
      v16 = *(&v28 + 1);
      v15 = v29;
      sub_1D5CFBAA8(&v28, v26);
      sub_1D6245970(a1, a2, v13, v16, v15, v14);
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    sub_1D5D08954(&v28);
    return;
  }

  if (v6 == 2)
  {
    v19 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D62433FC(a1, a2, v19, v20);
  }

  else if (v6 == 3)
  {
    v7 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v9 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v10 = *(v7 + 32);
    v28 = *(v7 + 16);
    v29 = v10;
    *v30 = *(v7 + 48);
    *&v30[15] = *(v7 + 63);

    FormatCommandBinding.bind(binder:context:)(a1, a2);
    if (!v3)
    {
      sub_1D62218D8(a1, a2, v8);
      sub_1D625C2EC(a1, a2, v9);
    }
  }
}

void sub_1D625C590(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  if ((v6 & 4) != 0)
  {
    FormatTextContent.bind(binder:context:)(a1, a2);
    if (v3)
    {
      return;
    }
  }

  else
  {
    sub_1D6245970(a1, a2, *v2, v2[1], v2[2], v6);
    if (v3)
    {
      return;
    }
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    FormatSyncImageContent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D6209F10(a1, a2, v7, v8, v9, v11, v12);
  }

  sub_1D625CCA8(a1, a2, v10);
}

void FormatMenuGroupableData.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 61;
  if (v5 <= 2)
  {
    if (v5)
    {
      v8 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
      if (v5 == 1)
      {
        v9 = v8[2];
        v22[0] = v8[1];
        v22[1] = v9;
        v10 = v8[4];
        v22[2] = v8[3];
        v22[3] = v10;
        v11 = v8[2];
        v21[4] = v8[1];
        v21[5] = v11;
        v12 = v8[4];
        v21[6] = v8[3];
        v21[7] = v12;
        sub_1D62B6004(v22, v21);
        FormatMenuGroupData.bind(binder:context:)(a1, a2);
        sub_1D62B6060(v22);
        return;
      }

      v19 = *(v8 + 2);
      v20 = *(v19 + 24);

      sub_1D621DA6C(a1, a2, v20);
      if (!v3)
      {
        sub_1D6251838(a1, a2, *(v19 + 32));
      }

      goto LABEL_19;
    }

    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    v15 = *(v4 + 32);
    v16 = *(v4 + 40);
    v17 = *(v4 + 48);
    if (v15)
    {
      v23 = *(v4 + 32);
      v18 = v14[3];
      sub_1D5F26358(v14, v13, 1);
      sub_1D62B5FC8(v16, v17);

      sub_1D621E2E4(a1, a2, v18);
      if (v3)
      {
        sub_1D5F26348(v14, v13, 1);
        sub_1D5FC4E9C(v16, v17);
LABEL_19:

        return;
      }

      sub_1D6251BE4(a1, a2, v14[4], v14[5]);
      v15 = v23;
      if (!v17)
      {
LABEL_18:
        sub_1D5F26348(v14, v13, v15);
        sub_1D5FC4E9C(v16, 0);
        goto LABEL_19;
      }
    }

    else
    {
      sub_1D5F26358(*(v4 + 16), *(v4 + 24), 0);
      sub_1D62B5FC8(v16, v17);

      if (!v17)
      {
        goto LABEL_18;
      }
    }

    sub_1D621E140(a1, a2, *(v16 + 24));
    if (!v3)
    {
      sub_1D6251AD4(a1, a2, *(v16 + 32));
    }

    sub_1D5F26348(v14, v13, v15);
    sub_1D5FC4E9C(v16, 1);
    goto LABEL_19;
  }
}

uint64_t FormatMenuItemData.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  if (*(v2 + 16) == 1)
  {
    v8 = *v2;
    result = sub_1D621E2E4(result, a2, v8[3]);
    if (v3)
    {
      return result;
    }

    result = sub_1D6251BE4(v5, a2, v8[4], v8[5]);
  }

  if (v7)
  {
    result = sub_1D621E140(v5, a2, *(v6 + 24));
    if (!v3)
    {
      return sub_1D6251AD4(v5, a2, *(v6 + 32));
    }
  }

  return result;
}

void FormatSyncImageContent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *v2 >> 62;
  if (!v7)
  {
    v15 = *(v6 + 80);
    v29[3] = *(v6 + 64);
    v29[4] = v15;
    v29[5] = *(v6 + 96);
    v30 = *(v6 + 112);
    v16 = *(v6 + 32);
    v29[0] = *(v6 + 16);
    v29[1] = v16;
    v29[2] = *(v6 + 48);
    v17 = *(v6 + 96);
    v26 = *(v6 + 80);
    v27 = v17;
    v28 = *(v6 + 112);
    v18 = *(v6 + 32);
    v22 = *(v6 + 16);
    v23 = v18;
    v19 = *(v6 + 64);
    v24 = *(v6 + 48);
    v25 = v19;
    sub_1D5D0322C(v29, v21);
    FormatSymbolImage.bind(binder:context:)(a1, a2);
    sub_1D5D07BBC(v29);
    return;
  }

  v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  if (v7 == 1)
  {
    v10 = *(v8 + 48);
    v9 = *(v8 + 56);
    v11 = *(v8 + 64);
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        return;
      }

      sub_1D5E433E0(v10, v9, 2u);
      sub_1D620B270(a1, a2, v10);
      if (!v3)
      {
        sub_1D620B270(a1, a2, v9);
      }

      v12 = v10;
      v13 = v9;
      v14 = 2;
    }

    else if (v11)
    {
      sub_1D5E433E0(v10, v9, 1u);
      sub_1D620B270(a1, a2, v10);
      v12 = v10;
      v13 = v9;
      v14 = 1;
    }

    else
    {
      sub_1D5E433E0(v10, v9, 0);
      sub_1D620B270(a1, a2, v10);
      v12 = v10;
      v13 = v9;
      v14 = 0;
    }

    sub_1D5E4342C(v12, v13, v14);
  }

  else
  {
    v20 = *(v8 + 24);
    *&v29[0] = *(v8 + 16);
    swift_retain_n();

    FormatSyncImageContent.bind(binder:context:)(a1, a2);
    if (v3)
    {
    }

    else
    {

      sub_1D622B230(a1, a2, v20);
    }
  }
}

void sub_1D625CC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7[2];
  if ((v8 & 0x2000000000000000) != 0)
  {
    FormatSyncImageContent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D6209F10(a1, a2, *v7, v7[1], v8, a6, a7);
  }
}

uint64_t sub_1D625CC50(uint64_t result, uint64_t a2)
{
  if (v2[8] == 1)
  {
    v4 = *v2;
    v5 = *(*v2 + 24);
    v6 = result;
    result = sub_1D621E140(result, a2, v5);
    if (!v3)
    {
      return sub_1D6251AD4(v6, a2, *(v4 + 32));
    }
  }

  return result;
}

void sub_1D625CCA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *(v12 + 24);

      sub_1D6245CC4(a1, a2, v13, v14);
    }

    return;
  }

  if (!v10)
  {
    v11 = swift_projectBox();
    sub_1D62B50EC(v11, v9, type metadata accessor for FormatCommandOpenURL);
    sub_1D5F86DA0(a2);
    sub_1D62B51D0(v9, type metadata accessor for FormatCommandOpenURL);
    return;
  }

  v15 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v16 = *(v15 + 32);
  v29[0] = *(v15 + 16);
  v29[1] = v16;
  v17 = *(v15 + 48);
  *&v30[15] = *(v15 + 63);
  *v30 = v17;
  v18 = v29[0];
  if (v30[18])
  {
    v19 = 8;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 & 0xFFFFFFF8 | (*&v30[16] >> 11) & 7;
  if (v20 > 4)
  {
    if (v20 > 6)
    {
      if (v20 != 7)
      {
        return;
      }

      v25 = v29[0];
      v26 = v16;
      v27 = *v30;
      v28 = *&v30[16] & 0xC7FF;

      sub_1D62B5248(v29, v24);
      FormatString.bind(binder:context:)(a1, a2);
LABEL_39:
      sub_1D5D085FC(v29);
      goto LABEL_40;
    }

    if (v20 == 5)
    {
      return;
    }

    if (BYTE8(v16) >> 6 && BYTE8(v16) >> 6 != 1)
    {
      v23 = BYTE8(v16) & 0x3F;
      if (v23 > 1)
      {
LABEL_27:
        if (v23 == 2)
        {
          return;
        }

        goto LABEL_45;
      }

      goto LABEL_44;
    }

LABEL_32:
    v21 = v16;
    if (v16 > 1u)
    {
LABEL_36:
      if (v21 == 2)
      {
        return;
      }

LABEL_45:
      sub_1D5D085FC(v29);
      return;
    }

    if (!v16)
    {
      goto LABEL_45;
    }

    if ((~*&v29[0] & 0xF000000000000007) == 0)
    {
      return;
    }

    *&v25 = *&v29[0];

    sub_1D62B5248(v29, v24);
    sub_1D5CFCFAC(v18);
    FormatTextContent.bind(binder:context:)(a1, a2);
    goto LABEL_48;
  }

  if (v20 > 1)
  {
    if (v20 != 3)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v20)
  {
    return;
  }

  v22 = (DWORD2(v16) >> 3) & 7;
  if (v22 > 1)
  {
    if (v22 == 2 || v22 == 3)
    {
      goto LABEL_13;
    }

    if (BYTE8(v16) >> 6 && BYTE8(v16) >> 6 != 1)
    {
      v23 = BYTE8(v16) & 7;
      if (v23 > 1)
      {
        goto LABEL_27;
      }

LABEL_44:
      if (!v23)
      {
        goto LABEL_45;
      }

      if ((~*(&v29[0] + 1) & 0xF000000000000007) == 0)
      {
        return;
      }

      *&v25 = *(&v29[0] + 1);

      sub_1D62B5248(v29, v24);
      sub_1D5CFCFAC(*(&v18 + 1));
      FormatTextContent.bind(binder:context:)(a1, a2);
LABEL_48:

      goto LABEL_39;
    }

    goto LABEL_32;
  }

  if (v22)
  {
    goto LABEL_45;
  }

LABEL_13:
  v21 = v16;
  if (v16 > 1u)
  {
    goto LABEL_36;
  }

  if (!v16)
  {
    goto LABEL_45;
  }

  if ((~*&v29[0] & 0xF000000000000007) != 0)
  {
    *&v25 = *&v29[0];

    sub_1D62B5248(v29, v24);
    sub_1D5CFCFAC(v18);
    FormatTextContent.bind(binder:context:)(a1, a2);
    sub_1D5D085FC(v29);

LABEL_40:
  }
}

uint64_t sub_1D625D0BC(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  if (*(v2 + 16) == 1)
  {
    v8 = *v2;
    result = sub_1D621E2E4(result, a2, v8[3]);
    if (v3)
    {
      return result;
    }

    result = sub_1D6251BE4(v5, a2, v8[4], v8[5]);
  }

  if (v7)
  {
    result = sub_1D621E140(v5, a2, *(v6 + 24));
    if (!v3)
    {
      return sub_1D6251AD4(v5, a2, *(v6 + 32));
    }
  }

  return result;
}

void sub_1D625D158(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  if ((v3 & 4) != 0)
  {
    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D6245970(a1, a2, *v2, v2[1], v2[2], v3);
  }
}

uint64_t sub_1D625D198(uint64_t result, uint64_t a2)
{
  if (v2[16] == 1)
  {
    v4 = *v2;
    v5 = *(*v2 + 24);
    v6 = result;
    result = sub_1D621E2E4(result, a2, v5);
    if (!v3)
    {
      return sub_1D6251BE4(v6, a2, *(v4 + 32), *(v4 + 40));
    }
  }

  return result;
}

void FormatMicaNodeContent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *v2 >> 62;
  if (!v7)
  {
    v11 = *(v6 + 16);
    if ((v11 >> 62) < 2)
    {
      return;
    }

    if (v11 >> 62 == 2)
    {
      v12 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v15 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);

      sub_1D5D27950(v12, v13, v14, v15);
      sub_1D6089844(a2);
      sub_1D5D28C84(v12, v13, v14, v15);
      goto LABEL_15;
    }

    v17 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    FormatURL.bind(binder:context:)(a1, a2);
    if (!v3)
    {

      sub_1D620FAB4(a1, a2, v17);

      swift_bridgeObjectRelease_n();
      goto LABEL_15;
    }

LABEL_13:

    return;
  }

  v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  if (v7 != 1)
  {
    v16 = *(v8 + 24);
    swift_retain_n();

    FormatMicaNodeContent.bind(binder:context:)(a1, a2);
    if (!v3)
    {

      sub_1D62336A0(a1, a2, v16);

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v9 = *(v8 + 16);
  v10 = *(v8 + 24);

  sub_1D6248C08(a1, a2, v9, v10);

LABEL_15:
}

void FormatMicaNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *&v51 = *(v2 + 32);
  sub_1D5C82CD8(v51);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v51);
  }

  else
  {
    sub_1D5C92A8C(v51);
    swift_beginAccess();
    v7 = *(v2 + 48);

    sub_1D620EA64(a1, a2, v7);

    if (*(v4 + 56))
    {
      FormatMicaNodeStyle.bind(binder:context:)(a1, a2);
    }

    v59 = *(v4 + 64);

    FormatMicaNodeContent.bind(binder:context:)(a1, a2);

    v8 = *(v4 + 152);
    v9 = *(v4 + 184);
    v49 = *(v4 + 168);
    v50[0] = v9;
    *(v50 + 9) = *(v4 + 193);
    v10 = *(v4 + 88);
    v11 = *(v4 + 120);
    v45 = *(v4 + 104);
    v46 = v11;
    v47 = *(v4 + 136);
    v48 = v8;
    v43 = *(v4 + 72);
    v44 = v10;
    v12 = *(v4 + 152);
    v13 = *(v4 + 184);
    v57 = *(v4 + 168);
    v58[0] = v13;
    *(v58 + 9) = *(v4 + 193);
    v14 = *(v4 + 88);
    v15 = *(v4 + 120);
    v53 = *(v4 + 104);
    v54 = v15;
    v55 = *(v4 + 136);
    v56 = v12;
    v51 = *(v4 + 72);
    v52 = v14;
    if (sub_1D60486AC(&v51) != 1)
    {
      v33 = v57;
      v34[0] = v58[0];
      *(v34 + 9) = *(v58 + 9);
      v29 = v53;
      v30 = v54;
      v31 = v55;
      v32 = v56;
      v27 = v51;
      v28 = v52;
      v41 = v49;
      v42[0] = v50[0];
      *(v42 + 9) = *(v50 + 9);
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      v35 = v43;
      v36 = v44;
      sub_1D62B4994(&v35, v25);
      FormatMediaTiming.bind(binder:context:)(a1, a2);
      v25[6] = v33;
      v26[0] = v34[0];
      *(v26 + 9) = *(v34 + 9);
      v25[2] = v29;
      v25[3] = v30;
      v25[4] = v31;
      v25[5] = v32;
      v25[0] = v27;
      v25[1] = v28;
      sub_1D62B49F0(v25);
    }

    swift_beginAccess();
    v16 = *(v4 + 232);
    if (v16 >> 62 == 1)
    {
      v17 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v4 + 232));
      sub_1D5EB1500(v17);

      sub_1D624919C(a1, a2, v17, v18);
      sub_1D5EB15C4(v17);

      sub_1D5EB15C4(v16);
    }

    v19 = *(v4 + 272);
    if (v19)
    {
      v21 = *(v4 + 304);
      v20 = *(v4 + 312);
      v23 = *(v4 + 288);
      v22 = *(v4 + 296);
      v24 = *(v4 + 280);
      *&v35 = v19;
      *(&v35 + 1) = v24;
      *&v36 = v23;
      *(&v36 + 1) = v22;
      *&v37 = v21;
      *(&v37 + 1) = v20;

      sub_1D5DEA234(v21);
      v60 = v20;

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v21);
    }
  }
}

void sub_1D625D82C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v8 = *(v3 + 48);

  a3(a1, a2, v8);
  if (v4)
  {

    return;
  }

  v9 = *(v3 + 56);
  if (v9)
  {
    sub_1D620B270(a1, a2, v9);
  }

  v10 = *(v3 + 64);
  if (v10)
  {
    sub_1D620E744(a1, a2, v10);
  }

  v11 = *(v3 + 144);
  v23 = *(v3 + 128);
  v24 = v11;
  v25 = *(v3 + 160);
  v26 = *(v3 + 176);
  v12 = v26;
  v13 = *(v3 + 112);
  v22[0] = *(v3 + 96);
  v22[1] = v13;
  if (v26 != 254)
  {
    v14 = *(&v24 + 1);
    v20 = *&v24;
    v15 = *&v25;
    v16 = *(&v23 + 1);
    v27 = v23;
    sub_1D62B5354(v22, v21, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v12 <= 2)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v18 = v16;
          v19 = v20;
        }

        else
        {
          sub_1D625E06C(a1, a2, v16, v20);
          v19 = v15;
          v18 = v14;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (v12 <= 4)
      {
        v17 = v15;
        v18 = v16;
        v19 = v20;
        if (v12 != 3)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v17 = v15;
      if (v12 == 5)
      {
        v18 = v16;
        v19 = v20;
LABEL_18:
        sub_1D625E06C(a1, a2, v18, v19);
        v19 = v17;
        v18 = v14;
LABEL_20:
        sub_1D625E06C(a1, a2, v18, v19);
      }
    }

    sub_1D5D0ABCC(v22, &qword_1EDF33718, &type metadata for FormatShadow);
  }
}

void FormatMicaNodeArchive.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      sub_1D5D27950(v10, v11, v12, v13);
      sub_1D6089844(a2);
      sub_1D5D28C84(v10, v11, v12, v13);
    }

    else
    {
      v9 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      FormatURL.bind(binder:context:)(a1, a2);
      if (v3)
      {
      }

      else
      {

        sub_1D620FAB4(a1, a2, v9);
        swift_bridgeObjectRelease_n();
      }
    }
  }
}

void FormatURL.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2 >> 62;
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      sub_1D5D27950(v10, v11, v12, v13);
      sub_1D6089844(a2);
      sub_1D5D28C84(v10, v11, v12, v13);
    }

    else
    {
      v9 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      FormatURL.bind(binder:context:)(a1, a2);
      if (v3)
      {
      }

      else
      {

        sub_1D620FAB4(a1, a2, v9);

        swift_bridgeObjectRelease_n();
      }
    }
  }
}

void FormatMicaNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 104);
  v21 = *(v2 + 88);
  v22 = v8;
  v23 = *(v2 + 120);
  v24 = *(v2 + 136);
  v9 = *(v2 + 72);
  v20[0] = *(v2 + 56);
  v20[1] = v9;
  if (!v6 || (sub_1D620B270(a1, a2, v6), !v3))
  {
    if (!v7 || (sub_1D620E744(a1, a2, v7), !v3))
    {
      v10 = v24;
      if (v24 != 254)
      {
        v11 = *(&v22 + 1);
        v18 = *&v22;
        v12 = *&v23;
        v13 = *(&v21 + 1);
        v25 = v21;
        sub_1D62B5354(v20, v19, &qword_1EDF33718, &type metadata for FormatShadow);

        FormatColor.bind(binder:context:)(a1, a2);
        if (v3)
        {

          goto LABEL_20;
        }

        if (v10 <= 2)
        {
          if (!v10)
          {
            goto LABEL_20;
          }

          v14 = v13;
          v15 = v18;
          if (v10 != 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v10 > 4)
          {
            if (v10 != 5)
            {
              goto LABEL_20;
            }

            v14 = v13;
            v15 = v18;
            goto LABEL_18;
          }

          v14 = v13;
          v15 = v18;
          if (v10 == 3)
          {
LABEL_18:
            sub_1D625E06C(a1, a2, v14, v15);
            v15 = v12;
            v14 = v11;
            v16 = a1;
            v17 = a2;
            goto LABEL_19;
          }
        }

        v16 = a1;
        v17 = a2;
LABEL_19:
        sub_1D625E06C(v16, v17, v14, v15);
LABEL_20:
        sub_1D5D0ABCC(v20, &qword_1EDF33718, &type metadata for FormatShadow);
      }
    }
  }
}

uint64_t FormatMotion.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  if (v6 > 2)
  {
    v7 = *v2;
    v8 = *(v2 + 8);
    if (v6 == 4)
    {
      return sub_1D625E06C(result, a2, v7, v8);
    }
  }

  else
  {
    if (!*(v2 + 40))
    {
      return result;
    }

    v7 = *v2;
    v8 = *(v2 + 8);
    if (v6 == 1)
    {
      return sub_1D625E06C(result, a2, v7, v8);
    }
  }

  v9 = result;
  v10 = a2;
  result = sub_1D625E06C(result, a2, v7, v8);
  if (v3)
  {
    return result;
  }

  v8 = v5;
  v7 = v4;
  result = v9;
  a2 = v10;
  return sub_1D625E06C(result, a2, v7, v8);
}

uint64_t sub_1D625E06C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v7 = *(&v13 + 1);
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v8 + 8))(a1, a2, v7, v8);
    result = __swift_destroy_boxed_opaque_existential_1(&v12);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D5BFB774(&v12, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  if (swift_dynamicCast())
  {
    v10 = *(&v13 + 1);
    v11 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v11 + 8))(a1, a2, v10, v11);
    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_1D5BFB774(&v12, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

uint64_t FormatRange.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v28 = a3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v13 = *(v7 + 16);
  v13(&v25 - v14, v3, v6, v12);
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v25 = v13;
    v27 = v3;
    v15 = v4;
    v16 = *(&v30 + 1);
    v17 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    v18 = *(v17 + 8);
    v26 = v5;
    v19 = v32;
    v18(v5, v15, v16, v17);
    result = __swift_destroy_boxed_opaque_existential_1(&v29);
    if (v19)
    {
      return result;
    }

    v32 = 0;
    v4 = v15;
    v5 = v26;
    v25(v9, v27 + *(v28 + 52), v6);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_1D5BFB774(&v29, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    (v13)(v9, v3 + *(v28 + 52), v6);
  }

  if (swift_dynamicCast())
  {
    v21 = v5;
    v22 = v4;
    v23 = *(&v30 + 1);
    v24 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    (*(v24 + 8))(v21, v22, v23, v24);
    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    return sub_1D5BFB774(&v29, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

uint64_t FormatTranslate.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v9[0] = *(a3 + 16);
  v9[1] = v6;
  v7 = type metadata accessor for FormatRange(0, v9);
  result = FormatRange.bind(binder:context:)(a1, a2, v7);
  if (!v3)
  {
    return FormatRange.bind(binder:context:)(a1, a2, v7);
  }

  return result;
}

uint64_t FormatMotion.TranslateWithScale.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  result = sub_1D625E06C(a1, a2, *v2, v2[1]);
  if (!v3)
  {
    return sub_1D625E06C(a1, a2, v6, v7);
  }

  return result;
}

uint64_t sub_1D625E598(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  if (v6 > 2)
  {
    v7 = *v2;
    v8 = *(v2 + 8);
    if (v6 == 4)
    {
      return sub_1D625E06C(result, a2, v7, v8);
    }
  }

  else
  {
    if (!*(v2 + 40))
    {
      return result;
    }

    v7 = *v2;
    v8 = *(v2 + 8);
    if (v6 == 1)
    {
      return sub_1D625E06C(result, a2, v7, v8);
    }
  }

  v9 = result;
  v10 = a2;
  result = sub_1D625E06C(result, a2, v7, v8);
  if (v3)
  {
    return result;
  }

  v8 = v5;
  v7 = v4;
  result = v9;
  a2 = v10;
  return sub_1D625E06C(result, a2, v7, v8);
}

uint64_t sub_1D625E624(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  result = sub_1D625E06C(a1, a2, *v2, v2[1]);
  if (!v3)
  {
    return sub_1D625E06C(a1, a2, v6, v7);
  }

  return result;
}

void FormatNode.bindChildren(binder:context:)(unint64_t a1, void *a2)
{
  v3 = *v2;
  switch((*v2 >> 58) & 0x3C | (*v2 >> 1) & 3)
  {
    case 2uLL:
    case 3uLL:

      FormatHOverlayNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 4uLL:

      FormatViewNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 5uLL:

      FormatTextNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 6uLL:

      FormatImageNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 7uLL:

      FormatItemNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 8uLL:

      FormatSpaceNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 9uLL:

      FormatSnippetNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0xAuLL:

      FormatSupplementaryNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0xBuLL:

      FormatSwitchNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0xCuLL:

      FormatSlotNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0xDuLL:

      FormatAccessibilityNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0xEuLL:

      FormatButtonNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0xFuLL:

      FormatGroupNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x10uLL:

      FormatWebEmbedNode.bind(binder:context:)(a1, a2, v17);
      goto LABEL_41;
    case 0x11uLL:

      FormatFrameNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x12uLL:

      FormatRepeatNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x13uLL:

      FormatOptionsNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x14uLL:

      FormatStateViewNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x15uLL:

      FormatCustomNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x16uLL:

      sub_1D6EBCF50(a2);
      goto LABEL_41;
    case 0x17uLL:

      FormatAdMetricsNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x18uLL:

      FormatMicaNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x19uLL:

      FormatLayeredMediaNode.bind(binder:context:)(a1, a2, v18);
      goto LABEL_41;
    case 0x1AuLL:

      FormatVideoNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x1BuLL:

      FormatIssueCoverNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x1CuLL:
      v19 = v3 & 0xFFFFFFFFFFFFFF9;
      v20 = *(v19 + 112);
      v43 = *(v19 + 96);
      v44 = v20;
      v45 = *(v19 + 128);
      v46 = *(v19 + 144);
      v21 = *(v19 + 48);
      v39 = *(v19 + 32);
      v40 = v21;
      v22 = *(v19 + 80);
      v41 = *(v19 + 64);
      v42 = v22;
      v38 = *(v19 + 16);
      v23 = *(v19 + 128);
      v35 = *(v19 + 112);
      v36 = v23;
      v37 = *(v19 + 144);
      v24 = *(v19 + 64);
      v31 = *(v19 + 48);
      v32 = v24;
      v25 = *(v19 + 96);
      v33 = *(v19 + 80);
      v34 = v25;
      v26 = *(v19 + 32);
      v29 = *(v19 + 16);
      v30 = v26;
      sub_1D62B60B4(&v38, v27);
      FormatShareAttributionNode.bind(binder:context:)(a1, a2);
      sub_1D62B6110(&v38);
      return;
    case 0x1DuLL:

      FormatBlockNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x1EuLL:

      FormatGeometryNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x1FuLL:

      FormatVideoPlayerNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x20uLL:

      FormatProgressViewNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x21uLL:

      FormatItemBindingsNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x22uLL:

      FormatAuxiliaryNode.bind(binder:context:)(a1);
      goto LABEL_41;
    case 0x23uLL:
      v14 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v15 = sub_1D6C1BF20(a2);
      swift_beginAccess();
      v16 = *(v14 + 48);

      sub_1D6215F90(a1, v15, v16);

      return;
    case 0x24uLL:

      FormatVariableNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x25uLL:
      v6 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v7 = *(v6 + 112);
      v8 = *(v6 + 144);
      v42 = *(v6 + 128);
      v43 = v8;
      *&v44 = *(v6 + 160);
      v9 = *(v6 + 80);
      v38 = *(v6 + 64);
      v39 = v9;
      v10 = *(v6 + 112);
      v12 = *(v6 + 64);
      v11 = *(v6 + 80);
      v40 = *(v6 + 96);
      v41 = v10;
      v13 = *(v6 + 144);
      v33 = v42;
      v34 = v13;
      v29 = v12;
      v30 = v11;
      *&v35 = *(v6 + 160);
      v31 = v40;
      v32 = v7;

      sub_1D5C5C4CC(&v38, v27);
      FormatSourceMapNode.bind(binder:context:)(a1, a2);

      v27[4] = v33;
      v27[5] = v34;
      v28 = v35;
      v27[0] = v29;
      v27[1] = v30;
      v27[2] = v31;
      v27[3] = v32;
      sub_1D5C5C540(v27);
      return;
    case 0x26uLL:

      FormatPuzzleEmbedNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x27uLL:

      FormatSponsoredBannerNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    case 0x28uLL:

      FormatFlexBoxNode.bind(binder:context:)(a1, a2);
      goto LABEL_41;
    default:

      FormatHBoxNode.bind(binder:context:)(a1, a2);
LABEL_41:

      return;
  }
}

void sub_1D625EDB8(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v10 = *(v2 + 64);
  sub_1D5C82CD8(v10);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v10);
  }

  else
  {
    sub_1D5C92A8C(v10);
    swift_beginAccess();
    v7 = *(v2 + 88);

    sub_1D620EA64(a1, a2, v7);

    swift_beginAccess();
    v11 = *(v4 + 112);
    v12 = *(v4 + 120);
    v13 = *(v4 + 128);
    sub_1D5C75A4C(v11, v12, v13);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v11, v12, v13);
    if (*(v4 + 136))
    {
      v8 = *(v4 + 168);

      sub_1D5DEA234(v8);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v8);
    }

    swift_beginAccess();
    v9 = *(v4 + 96);

    sub_1D6215F90(a1, a2, v9);
  }
}

void sub_1D625EFD4(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v10 = *(v2 + 88);
  sub_1D5C82CD8(v10);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v10);
  }

  else
  {
    sub_1D5C92A8C(v10);
    swift_beginAccess();
    v7 = *(v2 + 96);

    sub_1D620EA64(a1, a2, v7);

    swift_beginAccess();
    v11 = *(v4 + 120);
    v12 = *(v4 + 128);
    v13 = *(v4 + 136);
    sub_1D5C75A4C(v11, v12, v13);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v11, v12, v13);
    if (*(v4 + 144))
    {
      v8 = *(v4 + 176);

      sub_1D5DEA234(v8);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v8);
    }

    swift_beginAccess();
    v9 = *(v4 + 104);

    sub_1D6215F90(a1, a2, v9);
  }
}

void FormatViewNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v15 = v2[4];
  sub_1D5C82CD8(v15);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v15);
  }

  else
  {
    sub_1D5C92A8C(v15);
    swift_beginAccess();
    v7 = v2[6];

    sub_1D620EA64(a1, a2, v7);

    if (v4[7])
    {
      FormatViewNodeStyle.bind(binder:context:)(a1, a2);
    }

    v8 = v4[8];
    if (v8)
    {
      swift_beginAccess();
      v9 = *(v8 + 72);
      if (v9)
      {

        sub_1D621397C(a1, a2, v9);
      }

      swift_beginAccess();
      v10 = *(v8 + 88);

      sub_1D621D544(a1, a2, v10);
    }

    swift_beginAccess();
    v11 = v4[10];
    if (v11 >> 62 == 1)
    {
      v12 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[10]);
      sub_1D5EB1500(v12);

      sub_1D624919C(a1, a2, v12, v13);
      sub_1D5EB15C4(v12);

      sub_1D5EB15C4(v11);
    }

    if (v4[17])
    {
      v14 = v4[21];

      sub_1D5DEA234(v14);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v14);
    }
  }
}

void FormatTextNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v17 = *(v2 + 32);
  sub_1D5D085B4(v17);
  FormatTextSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5D05694(v17);
  }

  else
  {
    sub_1D5D05694(v17);
    swift_beginAccess();
    v7 = *(v2 + 48);

    sub_1D620EA64(a1, a2, v7);

    if (*(v4 + 56))
    {
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }

    v8 = *(v4 + 64);
    if (v8)
    {
      swift_beginAccess();
      v9 = *(v8 + 72);
      if (v9)
      {

        sub_1D621397C(a1, a2, v9);
      }

      swift_beginAccess();
      v10 = *(v8 + 88);

      sub_1D621D544(a1, a2, v10);
    }

    FormatTextContent.bind(binder:context:)(a1, a2);

    if ((*(v4 + 130) >> 1) <= 0x7Eu)
    {
      v11 = *(v4 + 128) | (*(v4 + 130) << 16);
      v18 = *(v4 + 80);
      v19 = *(v4 + 88);
      v20 = *(v4 + 96);
      v21 = *(v4 + 104);
      v22 = *(v4 + 112);
      v23 = *(v4 + 120);
      sub_1D5D0A5BC(v18, v19, v20, v21, v22, v23, v11);
      FormatComputedInvalidation.bind(binder:context:)(a1, a2);
      sub_1D5D0A678(v18, v19, v20, v21, v22, v23, v11);
    }

    swift_beginAccess();
    v12 = *(v4 + 144);
    if (v12 >> 62 == 1)
    {
      v13 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v4 + 144));
      sub_1D5EB1500(v13);

      sub_1D624919C(a1, a2, v13, v14);
      sub_1D5EB15C4(v13);

      sub_1D5EB15C4(v12);
    }

    swift_beginAccess();
    v15 = *(v4 + 184);

    sub_1D6230F7C(a1, a2, v15);

    if (*(v4 + 208))
    {
      v16 = *(v4 + 240);

      sub_1D5DEA234(v16);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v16);
    }
  }
}

void FormatSpaceNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v9 = *(v2 + 32);
  sub_1D5C82CD8(v9);
  FormatSize.bind(binder:context:)(a1, a2);
  sub_1D5C92A8C(v9);
  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v2 + 40);

    sub_1D620EA64(a1, a2, v7);

    if (*(v4 + 48))
    {
      v8 = *(v4 + 80);

      sub_1D5DEA234(v8);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v8);
    }
  }
}

void FormatWebEmbedNode.bind(binder:context:)(unint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = v3;
  v8 = v3[4];
  if (v8 >> 62)
  {
    if (v8 >> 62 != 1)
    {
      v9 = v8 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);

      sub_1D62493D8(a1, a2, v10, v11, v12);
      if (v4)
      {

        return;
      }
    }
  }

  else
  {
    v22 = *(v8 + 16);
    v24 = *(v8 + 24);
    v25 = *(v8 + 32);
    v26 = *(v8 + 40);
    sub_1D62B6164(v22, v24, v25, v26);
    sub_1D69BBC64(a2);
    sub_1D62B61A8(v22, v24, v25, v26);
    if (v4)
    {
      return;
    }
  }

  v23 = v5[8];
  sub_1D5C82CD8(v23);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v4)
  {
    sub_1D5C92A8C(v23);
    return;
  }

  sub_1D5C92A8C(v23);
  swift_beginAccess();
  v13 = v5[10];

  sub_1D620EA64(a1, a2, v13);

  swift_beginAccess();
  v14 = v5[13];
  if (v14 >> 62 == 1)
  {
    v15 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v5[13]);
    sub_1D5EB1500(v15);

    sub_1D624919C(a1, a2, v15, v16);
    sub_1D5EB15C4(v15);

    sub_1D5EB15C4(v14);
  }

  if (v5[20])
  {
    v17 = v5[24];

    sub_1D5DEA234(v17);

    FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

    sub_1D5CBF568(v17);
  }

  v18 = v5[26];
  if (!v18)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if (v18 == 1)
  {
    v21 = 1;
    goto LABEL_22;
  }

  if (v18 != 2)
  {
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    sub_1D5D0A59C(v18);
    sub_1D5D0A57C(v19);

    sub_1D62490FC(a1, a2, v19, v20);
    sub_1D5D0A58C(v19);

    v21 = v18;
LABEL_22:
    sub_1D5D0A5AC(v21);
  }
}

void FormatVideoNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  *&v34 = *(v2 + 32);
  sub_1D5C82CD8(v34);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v34);
  }

  else
  {
    sub_1D5C92A8C(v34);
    swift_beginAccess();
    v7 = *(v2 + 48);

    sub_1D620EA64(a1, a2, v7);

    if (*(v4 + 56))
    {
      FormatVideoNodeStyle.bind(binder:context:)(a1, a2);
    }

    v8 = *(v4 + 64);
    if (v8)
    {
      swift_beginAccess();
      v9 = *(v8 + 72);
      if (v9)
      {

        sub_1D621397C(a1, a2, v9);
      }

      swift_beginAccess();
      v10 = *(v8 + 88);

      sub_1D621D544(a1, a2, v10);
    }

    *&v34 = *(v4 + 72);

    FormatVideoNodeContent.bind(binder:context:)(a1, a2);

    swift_beginAccess();
    v11 = *(v4 + 88);
    if (v11 >> 62 == 1)
    {
      v12 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v4 + 88));
      sub_1D5EB1500(v12);

      sub_1D624919C(a1, a2, v12, v13);
      sub_1D5EB15C4(v12);

      sub_1D5EB15C4(v11);
    }

    v14 = *(v4 + 208);
    v38 = *(v4 + 192);
    v39 = v14;
    v40 = *(v4 + 224);
    v15 = *(v4 + 144);
    v34 = *(v4 + 128);
    v35 = v15;
    v16 = *(v4 + 176);
    v36 = *(v4 + 160);
    v37 = v16;
    if (BYTE8(v35) != 254)
    {
      v27 = *(v4 + 128);
      *&v28 = *(v4 + 144);
      *(&v28 + 1) = *(&v35 + 1);
      v17 = *(v4 + 208);
      v31 = *(v4 + 192);
      v32 = v17;
      v33 = *(v4 + 224);
      v18 = *(v4 + 176);
      v29 = *(v4 + 160);
      v30 = v18;
      sub_1D62B5354(&v34, v25, &qword_1EC8854C8, &type metadata for FormatVideoProperties);
      sub_1D62B5550(a2);
      v25[4] = v31;
      v25[5] = v32;
      v26 = v33;
      v25[0] = v27;
      v25[1] = v28;
      v25[2] = v29;
      v25[3] = v30;
      sub_1D62B61EC(v25);
    }

    v19 = *(v4 + 232);
    if (v19)
    {
      v21 = *(v4 + 264);
      v20 = *(v4 + 272);
      v22 = *(v4 + 248);
      v23 = *(v4 + 256);
      v24 = *(v4 + 240);
      *&v27 = v19;
      *(&v27 + 1) = v24;
      *&v28 = v22;
      *(&v28 + 1) = v23;
      *&v29 = v21;
      *(&v29 + 1) = v20;
      v41 = v20;

      sub_1D5DEA234(v21);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v21);
    }
  }
}

double FormatShareAttributionNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[4];
  v15 = v2[6];
  v13 = v2[11];
  v7 = v2[15];
  v14 = v2[2];
  sub_1D5C82CD8(v14);
  FormatSize.bind(binder:context:)(a1, a2);
  sub_1D5C92A8C(v14);
  if (!v3)
  {

    sub_1D620EA64(a1, a2, v6);

    if (!(v15 >> 62))
    {
      goto LABEL_5;
    }

    if (v15 >> 62 == 1)
    {
      v9 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v15);
      sub_1D5EB1500(v9);

      sub_1D624919C(a1, a2, v9, v10);
      sub_1D5EB15C4(v9);

      result = sub_1D5EB15C4(v15);
LABEL_5:
      v11 = v7;
      if (!v13)
      {
        return result;
      }

      goto LABEL_6;
    }

    v11 = v7;
    if (v15 == 0x8000000000000000)
    {
      v12 = 0x8000000000000000;
    }

    else
    {
      v12 = 0x8000000000000008;
    }

    result = sub_1D5EB15C4(v12);
    if (v13)
    {
LABEL_6:

      sub_1D5DEA234(v11);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v11);
    }
  }

  return result;
}

void FormatVideoPlayerNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v25 = *(v2 + 32);
  sub_1D5C82CD8(v25);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v25);
  }

  else
  {
    sub_1D5C92A8C(v25);
    swift_beginAccess();
    v7 = *(v2 + 48);

    sub_1D620EA64(a1, a2, v7);

    if (*(v4 + 56))
    {
      FormatVideoPlayerNodeStyle.bind(binder:context:)(a1, a2);
    }

    v8 = *(v4 + 64);
    if (v8)
    {
      swift_beginAccess();
      v9 = *(v8 + 72);
      if (v9)
      {

        sub_1D621397C(a1, a2, v9);
      }

      swift_beginAccess();
      v10 = *(v8 + 88);

      sub_1D621D544(a1, a2, v10);
    }

    v11 = *(v4 + 72);
    if (v11 < 0)
    {
      v14 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      v26 = *(v14 + 16);
      v28 = *(v14 + 24);
      v30 = *(v14 + 32);
      v32 = *(v14 + 40);
      sub_1D62B6240(v26, v28, v30, v32);
      sub_1D6C09C54(a2);
      sub_1D62B628C(v26, v28, v30, v32);
    }

    else
    {
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);

      sub_1D6242FE8(a1, a2, v12, v13);
    }

    FormatAsyncImageContent.bind(binder:context:)(a1, a2, v15);

    if (*(v4 + 88))
    {
      FormatImageNodeStyle.bind(binder:context:)(a1, a2);
    }

    if (*(v4 + 112) != 1)
    {
      v17 = *(v4 + 128);
      v16 = *(v4 + 136);
      v18 = *(v4 + 104);
      v19 = *(v4 + 144) & 1;

      sub_1D5DEA234(v18);

      sub_1D5C75A4C(v17, v16, v19);
      FormatVideoPlayerOverlayContent.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v18);

      sub_1D5D2F2C8(v17, v16, v19);
    }

    if (*(v4 + 176))
    {
      sub_1D60ECF10(a2);
    }

    else
    {
      sub_1D7245EF4(a2);
    }

    swift_beginAccess();
    v20 = *(v4 + 192);
    if (v20 >> 62 == 1)
    {
      v21 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *((v20 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v4 + 192));
      sub_1D5EB1500(v21);

      sub_1D624919C(a1, a2, v21, v22);
      sub_1D5EB15C4(v21);

      sub_1D5EB15C4(v20);
    }

    swift_beginAccess();
    v23 = *(v4 + 264);
    if (v23 != 255)
    {
      v27 = *(v4 + 248);
      v29 = *(v4 + 256);
      v31 = v23 & 1;
      sub_1D6189668(v27, v29, v23);
      sub_1D60ECF10(a2);
      sub_1D5D2F2C8(v27, v29, v31);
    }

    if (*(v4 + 272))
    {
      v24 = *(v4 + 304);

      sub_1D5DEA234(v24);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v24);
    }
  }
}

void FormatProgressViewNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  *&v46[0] = *(v2 + 32);
  sub_1D5C82CD8(*&v46[0]);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(*&v46[0]);
  }

  else
  {
    sub_1D5C92A8C(*&v46[0]);
    swift_beginAccess();
    v7 = *(v2 + 48);

    sub_1D620EA64(a1, a2, v7);

    v8 = *(v4 + 72);
    v9 = *(v4 + 104);
    v46[2] = *(v4 + 88);
    v47[0] = v9;
    *(v47 + 15) = *(v4 + 119);
    v46[0] = *(v4 + 56);
    v46[1] = v8;
    v10 = *(v4 + 72);
    v11 = *(v4 + 104);
    v44 = *(v4 + 88);
    v45[0] = v11;
    *(v45 + 15) = *(v4 + 119);
    v42 = *(v4 + 56);
    v43 = v10;
    sub_1D62B62D8(v46, v40);
    FormatProgressViewNodeContent.bind(binder:context:)(a1, a2);
    v40[2] = v44;
    v41[0] = v45[0];
    *(v41 + 15) = *(v45 + 15);
    v40[0] = v42;
    v40[1] = v43;
    sub_1D62B6334(v40);
    swift_beginAccess();
    if (*(v4 + 136))
    {

      FormatProgressViewNodeStyle.bind(binder:context:)(a1, a2);
    }

    swift_beginAccess();
    v12 = *(v4 + 160);
    v37 = *(v4 + 144);
    v38 = v12;
    *v39 = *(v4 + 176);
    *&v39[9] = *(v4 + 185);
    v13 = v12;
    v14 = v39[24] >> 6;
    if (v14)
    {
      if (v14 == 1)
      {
        v25[4] = v37;
        v26 = v38;
        v27 = BYTE8(v12);
        v30 = HIBYTE(v38);
        v29 = *(&v38 + 13);
        v28 = *(&v38 + 9);
        v31 = *v39;
        v32 = *&v39[16];
        v33 = v39[24] & 0x3F;
        *&v36[9] = *(v4 + 185);
        v15 = *(v4 + 160);
        v34 = *(v4 + 144);
        v35 = v15;
        *v36 = *(v4 + 176);
        v36[24] &= 0x3Fu;
        sub_1D62B6388(&v34, v25);
        FormatProgressCircleOptions.bind(binder:context:)(a1, a2);
        sub_1D62B63E4(&v37);
      }
    }

    else
    {
      v34 = v37;
      *&v35 = v38;
      BYTE8(v35) = BYTE8(v38) & 1;
      *v36 = *v39;
      *&v36[16] = *&v39[16];

      sub_1D5C75A4C(*(&v37 + 1), v13, BYTE8(v38) & 1);

      FormatProgressPieOptions.bind(binder:context:)(a1, a2);
      sub_1D62B63E4(&v37);
    }

    swift_beginAccess();
    v16 = *(v4 + 208);
    if (v16 >> 62 == 1)
    {
      v17 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v4 + 208));
      sub_1D5EB1500(v17);

      sub_1D624919C(a1, a2, v17, v18);
      sub_1D5EB15C4(v17);

      sub_1D5EB15C4(v16);
    }

    v19 = *(v4 + 256);
    if (v19)
    {
      v21 = *(v4 + 288);
      v20 = *(v4 + 296);
      v23 = *(v4 + 272);
      v22 = *(v4 + 280);
      v24 = *(v4 + 264);
      *&v34 = v19;
      *(&v34 + 1) = v24;
      *&v35 = v23;
      *(&v35 + 1) = v22;
      *v36 = v21;
      *&v36[8] = v20;

      sub_1D5DEA234(v21);
      v48 = v20;

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v21);
    }
  }
}

void FormatPuzzleEmbedNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v16 = v2[6];
  sub_1D5C82CD8(v16);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v16);
  }

  else
  {
    sub_1D5C92A8C(v16);
    swift_beginAccess();
    v7 = v2[8];

    sub_1D620EA64(a1, a2, v7);

    v8 = v4[9];
    if (v8 < 0)
    {
      v13 = v8 & 0x7FFFFFFFFFFFFFFFLL;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);

      sub_1D6248FF8(a1, a2, v14, v15);
    }

    swift_beginAccess();
    v9 = v4[20];
    if (v9 >> 62 == 1)
    {
      v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[20]);
      sub_1D5EB1500(v10);

      sub_1D624919C(a1, a2, v10, v11);
      sub_1D5EB15C4(v10);

      sub_1D5EB15C4(v9);
    }

    if (v4[28])
    {
      v12 = v4[32];

      sub_1D5DEA234(v12);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v12);
    }
  }
}

void FormatSponsoredBannerNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v12 = *(v2 + 32);
  sub_1D5C82CD8(v12);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v12);
  }

  else
  {
    sub_1D5C92A8C(v12);
    swift_beginAccess();
    v7 = *(v2 + 48);

    sub_1D620EA64(a1, a2, v7);

    swift_beginAccess();
    v8 = v4[7];
    if (v8 >> 62 == 1)
    {
      v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[7]);
      sub_1D5EB1500(v9);

      sub_1D624919C(a1, a2, v9, v10);
      sub_1D5EB15C4(v9);

      sub_1D5EB15C4(v8);
    }

    swift_beginAccess();
    if (v4[12])
    {

      FormatSponsoredBannerNodeStyle.bind(binder:context:)(a1, a2);
    }

    if (v4[13])
    {
      v11 = v4[17];

      sub_1D5DEA234(v11);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v11);
    }
  }
}

void FormatNodeStyle.bind(binder:context:)(unint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = v3;
  v6 = *v3;
  switch(v5[6] >> 59)
  {
    case 1:
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 2:
      FormatImageNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 3:
      FormatItemNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 4:
    case 0x10:
      return;
    case 5:
      v19 = *(v6 + 56);
      if (!v19)
      {
        v20 = a1;
        v21 = a2;
LABEL_26:
        swift_beginAccess();
        v22 = *(v6 + 64);

        sub_1D621A990(v20, v21, v22);
        goto LABEL_27;
      }

      v20 = a1;
      v21 = a2;
      sub_1D6213004(a1, a2, v19);
      if (!v4)
      {
        goto LABEL_26;
      }

      return;
    case 6:
      swift_beginAccess();
      v13 = *(v6 + 56);

      v14 = a1;
      v15 = a1;
      v16 = a2;
      sub_1D621AA44(v15, a2, v13, v17);

      if (!v4 && *(v6 + 74) != 255)
      {
        v18 = *(v6 + 72) | (*(v6 + 74) << 16);
        v23 = *(v6 + 64);
        sub_1D610CA74(v23, v18, SBYTE2(v18), sub_1D610CA28, sub_1D610CA5C);
        FormatSupplementaryNodePinTrait.bind(binder:context:)(v14, v16);
        sub_1D610CA74(v23, v18, SBYTE2(v18), sub_1D60CF6A8, sub_1D60CF6DC);
      }

      return;
    case 7:
      FormatMicaNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 8:
      FormatLayeredMediaNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 9:
      FormatVideoNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 0xALL:
      FormatIssueCoverNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 0xBLL:
      FormatGroupNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 0xCLL:
      FormatGroupNodeMaskStyle.bind(binder:context:)(a1, a2);
      return;
    case 0xDLL:
      swift_beginAccess();
      v9 = *(v6 + 72);
      if (!v9)
      {
        goto LABEL_7;
      }

      sub_1D621397C(a1, a2, v9);
      if (!v4)
      {

LABEL_7:
        swift_beginAccess();
        v10 = *(v6 + 88);

        sub_1D621D544(a1, a2, v10);
      }

LABEL_27:

      return;
    case 0xELL:
      FormatVideoPlayerNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 0xFLL:
      FormatProgressViewNodeStyle.bind(binder:context:)(a1, a2);
      return;
    case 0x11:
      FormatSponsoredBannerNodeStyle.bind(binder:context:)(a1, a2);
      return;
    default:
      FormatViewNodeStyle.bind(binder:context:)(a1, a2);
      return;
  }
}

void FormatViewNodeStyle.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  sub_1D62180F8(a1, a2, v6);
  if (v3)
  {

    return;
  }

  v7 = *(v2 + 56);
  if (v7)
  {
    sub_1D620B270(a1, a2, v7);
  }

  if ((~*(v2 + 64) & 0xF000000000000007) != 0)
  {
    *&v20[0] = *(v2 + 64);

    FormatBackground.bind(binder:context:)(a1, a2);
  }

  v8 = *(v2 + 72);
  if (v8)
  {
    sub_1D620E744(a1, a2, v8);
  }

  v9 = *(v2 + 152);
  v21 = *(v2 + 136);
  v22 = v9;
  v23 = *(v2 + 168);
  v24 = *(v2 + 184);
  v10 = v24;
  v11 = *(v2 + 120);
  v20[0] = *(v2 + 104);
  v20[1] = v11;
  if (v24 != 254)
  {
    v12 = *(&v22 + 1);
    v18 = *&v22;
    v13 = *&v23;
    v14 = *(&v21 + 1);
    v25 = v21;
    sub_1D62B5354(v20, v19, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v10 <= 2)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          v16 = v14;
          v17 = v18;
        }

        else
        {
          sub_1D625E06C(a1, a2, v14, v18);
          v17 = v13;
          v16 = v12;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (v10 <= 4)
      {
        v15 = v13;
        v16 = v14;
        v17 = v18;
        if (v10 != 3)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      v15 = v13;
      if (v10 == 5)
      {
        v16 = v14;
        v17 = v18;
LABEL_20:
        sub_1D625E06C(a1, a2, v16, v17);
        v17 = v15;
        v16 = v12;
LABEL_22:
        sub_1D625E06C(a1, a2, v16, v17);
      }
    }

    sub_1D5D0ABCC(v20, &qword_1EDF33718, &type metadata for FormatShadow);
  }
}

void FormatSupplementaryNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 56);

  sub_1D621AA44(a1, a2, v6, v7);

  if (!v3 && *(v2 + 74) != 255)
  {
    v8 = *(v2 + 72) | (*(v2 + 74) << 16);
    v9 = *(v2 + 64);
    sub_1D610CA74(v9, v8, SBYTE2(v8), sub_1D610CA28, sub_1D610CA5C);
    FormatSupplementaryNodePinTrait.bind(binder:context:)(a1, a2);
    sub_1D610CA74(v9, v8, SBYTE2(v8), sub_1D60CF6A8, sub_1D60CF6DC);
  }
}

void sub_1D626190C(unint64_t a1, uint64_t a2, void (*a3)(__int128 *, __int128 *), uint64_t (*a4)(__int128 *))
{
  swift_beginAccess();
  v10 = *(v4 + 48);

  sub_1D6232A3C(a1, a2, v10, a3, a4);
  if (v5)
  {

    return;
  }

  v11 = *(v4 + 56);
  if (v11)
  {
    sub_1D620B270(a1, a2, v11);
  }

  if ((~*(v4 + 64) & 0xF000000000000007) != 0)
  {
    *&v27[0] = *(v4 + 64);

    FormatBackground.bind(binder:context:)(a1, a2);
  }

  v12 = *(v4 + 72);
  if (v12)
  {
    sub_1D620E744(a1, a2, v12);
  }

  v13 = *(v4 + 152);
  v28 = *(v4 + 136);
  v29 = v13;
  v30 = *(v4 + 168);
  v31 = *(v4 + 184);
  v14 = v31;
  v15 = *(v4 + 120);
  v27[0] = *(v4 + 104);
  v27[1] = v15;
  if (v31 != 254)
  {
    v16 = *(&v29 + 1);
    v25 = *&v29;
    v17 = *&v30;
    v18 = *(&v28 + 1);
    v32 = v28;
    sub_1D62B5354(v27, v26, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);

    if (v14 <= 2)
    {
      if (v14)
      {
        v23 = v18;
        if (v14 == 1)
        {
          v24 = v25;
LABEL_25:
          sub_1D625E06C(a1, a2, v23, v24);
          sub_1D5D0ABCC(v27, &qword_1EDF33718, &type metadata for FormatShadow);
          goto LABEL_11;
        }

LABEL_24:
        sub_1D625E06C(a1, a2, v18, v25);
        v24 = v17;
        v23 = v16;
        goto LABEL_25;
      }
    }

    else
    {
      if (v14 <= 4)
      {
        v19 = v18;
        v20 = v25;
        v21 = a1;
        v22 = a2;
        if (v14 == 3)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      if (v14 == 5)
      {
        sub_1D625E06C(a1, a2, v18, v25);
        v20 = v17;
        v19 = v16;
        v21 = a1;
        v22 = a2;
LABEL_22:
        sub_1D625E06C(v21, v22, v19, v20);
      }
    }

    sub_1D5D0ABCC(v27, &qword_1EDF33718, &type metadata for FormatShadow);
  }

LABEL_11:
  if ((~*(v4 + 192) & 0xF000000000000007) != 0)
  {
    v26[0] = *(v4 + 192);

    FormatColor.bind(binder:context:)(a1, a2);
  }
}

double FormatProgressViewNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[6];

  sub_1D621D5F8(a1, a2, v6);

  if (!v3)
  {
    v8 = v2[7];
    if (v8)
    {
      sub_1D620B270(a1, a2, v8);
    }

    if ((~v2[8] & 0xF000000000000007) != 0)
    {

      FormatColor.bind(binder:context:)(a1, a2);
    }

    if ((~v2[9] & 0xF000000000000007) != 0)
    {

      FormatColor.bind(binder:context:)(a1, a2);
    }
  }

  return result;
}

void FormatSponsoredBannerNodeStyle.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[6];

  sub_1D621D854(a1, a2, v6);

  if (!v3)
  {
    if ((~v2[7] & 0xF000000000000007) != 0)
    {

      FormatColor.bind(binder:context:)(a1, a2);
    }

    if ((~v2[8] & 0xF000000000000007) != 0)
    {

      FormatColor.bind(binder:context:)(a1, a2);
    }

    v7 = v2[10];
    if (v7)
    {
      if (v7 == 1)
      {
        v10 = 1;
      }

      else
      {
        if (v7 == 2)
        {
          return;
        }

        v8 = *(v7 + 16);
        v9 = *(v7 + 24);
        sub_1D5D0A59C(v7);
        sub_1D5D0A57C(v8);
        sub_1D5D0A57C(v9);
        sub_1D6248A90(a1, a2, v8, v9);
        sub_1D5D0A58C(v8);
        sub_1D5D0A58C(v9);
        v10 = v7;
      }
    }

    else
    {
      v10 = 0;
    }

    sub_1D5D0A5AC(v10);
  }
}

double sub_1D6261F40(uint64_t a1, uint64_t a2)
{

  FormatExpression.bind(binder:context:)(a1, a2);

  return result;
}

void FormatNumber.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      sub_1D62B41FC(a2, *v2);
    }
  }

  else
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

void sub_1D6261FE4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      sub_1D62B41FC(a2, *v2);
    }
  }

  else
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

double FormatOption.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatOptionValue.bind(binder:context:)(a1, a2);

  return result;
}

void FormatOptionValue.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v92 = a1;
  v3 = sub_1D72585BC();
  v91 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CF4A48(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v91 - v10;
  v12 = sub_1D725891C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8E028(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v2;
  switch(*v2 >> 60)
  {
    case 1uLL:
      v55 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

      swift_bridgeObjectRetain_n();
      v56 = v94;
      sub_1D620F94C(v92, v93, v55);

      swift_bridgeObjectRelease_n();
      if (!v56)
      {
        goto LABEL_23;
      }

      return;
    case 2uLL:
      v44 = v19;
      v45 = swift_projectBox();
      sub_1D62B50EC(v45, v21, sub_1D5C8E028);
      (*(v13 + 16))(v16, v21, v12);
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v46 = *(&v96 + 1);
        v47 = v97;
        __swift_project_boxed_opaque_existential_1(&v95, *(&v96 + 1));
        v49 = v92;
        v48 = v93;
        v50 = v94;
        (*(v47 + 8))(v92, v93, v46, v47);
        if (v50)
        {
          __swift_destroy_boxed_opaque_existential_1(&v95);
LABEL_48:
          sub_1D62B51D0(v21, sub_1D5C8E028);
          return;
        }

        __swift_destroy_boxed_opaque_existential_1(&v95);
      }

      else
      {
        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        sub_1D5BFB774(&v95, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        v48 = v93;
        v50 = v94;
        v49 = v92;
      }

      sub_1D623CA14(v49, v48, *&v21[*(v44 + 36)]);
      if (v50)
      {
        goto LABEL_48;
      }

      v94 = 0;
      sub_1D62B51D0(v21, sub_1D5C8E028);
      return;
    case 3uLL:
      v51 = v22 & 0xFFFFFFFFFFFFFFFLL;
      v52 = *(v51 + 16);
      v53 = *(v51 + 24);

      v26 = v94;
      sub_1D6249984(v92, v93, v53, v52);
      goto LABEL_18;
    case 4uLL:
      v28 = v22 & 0xFFFFFFFFFFFFFFFLL;
      v30 = *(v28 + 16);
      v29 = *(v28 + 24);

      v31 = v30;
      v26 = v94;
      sub_1D6249AA0(v92, v93, v31, v29);
      goto LABEL_18;
    case 5uLL:
      v57 = (v22 & 0xFFFFFFFFFFFFFFFLL);
      v59 = v57[2];
      v58 = v57[3];
      v60 = v57[4];

      v61 = v59;
      v62 = v94;
      sub_1D6249BB8(v92, v93, v61, v58, v60);
      v54 = v62;

      goto LABEL_22;
    case 6uLL:
      v67 = swift_projectBox();
      sub_1D62B7198(v67, v11, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
      (*(v91 + 16))(v6, v11, v3);
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v68 = *(&v96 + 1);
        v69 = v97;
        __swift_project_boxed_opaque_existential_1(&v95, *(&v96 + 1));
        v71 = v92;
        v70 = v93;
        v72 = v94;
        (*(v69 + 8))(v92, v93, v68, v69);
        if (v72)
        {
          __swift_destroy_boxed_opaque_existential_1(&v95);
LABEL_52:
          sub_1D62B7204(v11, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
          return;
        }

        __swift_destroy_boxed_opaque_existential_1(&v95);
      }

      else
      {
        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        sub_1D5BFB774(&v95, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        v70 = v93;
        v72 = v94;
        v71 = v92;
      }

      sub_1D623C484(v71, v70, *&v11[*(v8 + 36)]);
      if (v72)
      {
        goto LABEL_52;
      }

      v94 = 0;
      sub_1D62B7204(v11, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
      return;
    case 7uLL:
      *&v95 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v73 = v94;
      FormatColor.bind(binder:context:)(v92, v93);
      if (!v73)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    case 8uLL:
      v40 = v22 & 0xFFFFFFFFFFFFFFFLL;
      v41 = *(v40 + 16);
      v42 = *(v40 + 24);

      v43 = v94;
      sub_1D6250710(v92, v93, v41, v42, FormatOptionValue.bind(binder:context:));
      if (v43)
      {

        goto LABEL_32;
      }

      v94 = 0;

      goto LABEL_57;
    case 9uLL:
      *&v95 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v73 = v94;
      FormatAsyncImageContent.bind(binder:context:)(v92, v93, v74);
      if (v73)
      {
        goto LABEL_32;
      }

LABEL_34:
      v94 = v73;
      goto LABEL_57;
    case 0xAuLL:
      *&v95 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v27 = v94;
      FormatVideoNodeContent.bind(binder:context:)(v92, v93);
      if (v27)
      {
        goto LABEL_32;
      }

      v94 = 0;
      goto LABEL_57;
    case 0xBuLL:
      return;
    case 0xCuLL:
      v32 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if ((v32 >> 61) > 2)
      {
        if (v32 >> 61 == 3)
        {
          v76 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v77 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v78 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
          *&v95 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v75 = v95;
          *(&v95 + 1) = v76;
          *&v96 = v77;
          BYTE8(v96) = v78;

          sub_1D5F58038(v75, v76, v77, v78);
          v79 = v94;
          sub_1D607B228(v93);
          if (v79)
          {
            sub_1D5F57FEC(v75, v76, v77, v78);
            goto LABEL_32;
          }

          v94 = 0;
          sub_1D5F57FEC(v75, v76, v77, v78);
        }

        else
        {
          v86 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v98[0] = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v98[1] = v86;
          v99 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);

          sub_1D62B50EC(v98, &v95, sub_1D62B5154);
          v87 = v94;
          sub_1D6250408(v92, v93);
          if (v87)
          {
            sub_1D62B51D0(v98, sub_1D62B5154);
            goto LABEL_32;
          }

          v94 = 0;
          sub_1D62B51D0(v98, sub_1D62B5154);
        }
      }

      else
      {
        if ((v32 >> 61) < 2)
        {
          return;
        }

        v33 = *((v32 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v34 = v92;
        if ((v33 >> 62) < 2)
        {
          return;
        }

        if (v33 >> 62 == 2)
        {
          v36 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v37 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v38 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          *&v95 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v35 = v95;
          *(&v95 + 1) = v36;
          *&v96 = v37;
          BYTE8(v96) = v38;

          swift_retain_n();
          sub_1D5D27950(v35, v36, v37, v38);
          v39 = v94;
          sub_1D6089844(v93);
          v94 = v39;

          sub_1D5D28C84(v35, v36, v37, v38);

          goto LABEL_57;
        }

        v88 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v95 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        swift_retain_n();
        v90 = v93;
        v89 = v94;
        FormatURL.bind(binder:context:)(v34, v93);
        if (v89)
        {

          return;
        }

        sub_1D620FAB4(v34, v90, v88);
        v94 = 0;

        swift_bridgeObjectRelease_n();
      }

      goto LABEL_57;
    case 0xDuLL:
      v63 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (v63 < 0)
      {
        v80 = v63 & 0x7FFFFFFFFFFFFFFFLL;
        v82 = *(v80 + 24);
        v83 = *(v80 + 32);
        v84 = *(v80 + 40);
        *&v95 = *(v80 + 16);
        v81 = v95;
        *(&v95 + 1) = v82;
        *&v96 = v83;
        BYTE8(v96) = v84;

        sub_1D62B6240(v81, v82, v83, v84);
        v85 = v94;
        sub_1D6C09C54(v93);
        if (v85)
        {
          sub_1D62B628C(v81, v82, v83, v84);
LABEL_32:
        }

        else
        {
          v94 = 0;
          sub_1D62B628C(v81, v82, v83, v84);
LABEL_57:
        }
      }

      else
      {
        v64 = *(v63 + 16);
        v65 = *(v63 + 24);

        v66 = v94;
        sub_1D6242FE8(v92, v93, v64, v65);
        if (!v66)
        {
          v94 = 0;
        }
      }

      return;
    default:
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);

      v25 = v23;
      v26 = v94;
      sub_1D6249860(v92, v93, v25, v24);
LABEL_18:
      v54 = v26;
LABEL_22:

      v56 = v54;
      if (!v54)
      {
LABEL_23:
        v94 = v56;
      }

      return;
  }
}

double sub_1D6262BF0(uint64_t a1, uint64_t a2)
{

  FormatOptionValue.bind(binder:context:)(a1, a2);

  return result;
}

void FormatOptionCompareValue.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 16) & 1) == 0)
  {
    FormatOptionValue.bind(binder:context:)(a1, a2);
  }
}

void sub_1D6262C88(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 16) & 1) == 0)
  {
    FormatOptionValue.bind(binder:context:)(a1, a2);
  }
}

void FormatOptionExpression.Compare.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    FormatOptionValue.bind(binder:context:)(a1, a2);
  }
}

uint64_t sub_1D6262D48(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 32);
  if ((v3 & 0x80000000) == 0 && (v3 & 1) == 0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = result;

    FormatOptionValue.bind(binder:context:)(v6, a2);
    return sub_1D5C581A4(v4, v5, 0);
  }

  return result;
}

void sub_1D6262DC0(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    FormatOptionValue.bind(binder:context:)(a1, a2);
  }
}

void FormatVideoNodeContent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *v2 >> 61;
  if (v7 <= 1)
  {
    if (v7)
    {
      v28 = v6 & 0x1FFFFFFFFFFFFFFFLL;
      v29 = *(v28 + 16);
      v30 = *(v28 + 24);

      sub_1D6247DA4(a1, a2, v29, v30);
    }

    else
    {
      v11 = *(v6 + 208);
      v43 = *(v6 + 192);
      v44 = v11;
      v12 = *(v6 + 240);
      v45 = *(v6 + 224);
      v46 = v12;
      v13 = *(v6 + 144);
      v39 = *(v6 + 128);
      v40 = v13;
      v14 = *(v6 + 176);
      v41 = *(v6 + 160);
      v42 = v14;
      v15 = *(v6 + 80);
      v35 = *(v6 + 64);
      v36 = v15;
      v16 = *(v6 + 112);
      v37 = *(v6 + 96);
      v38 = v16;
      v17 = *(v6 + 32);
      v32 = *(v6 + 16);
      v33 = v17;
      v34 = *(v6 + 48);
      v18 = *(v6 + 224);
      v31[27] = *(v6 + 208);
      v31[28] = v18;
      v31[29] = *(v6 + 240);
      v19 = *(v6 + 160);
      v31[23] = *(v6 + 144);
      v31[24] = v19;
      v20 = *(v6 + 192);
      v31[25] = *(v6 + 176);
      v31[26] = v20;
      v21 = *(v6 + 96);
      v31[19] = *(v6 + 80);
      v31[20] = v21;
      v22 = *(v6 + 128);
      v31[21] = *(v6 + 112);
      v31[22] = v22;
      v23 = *(v6 + 32);
      v31[15] = *(v6 + 16);
      v31[16] = v23;
      v24 = *(v6 + 64);
      v31[17] = *(v6 + 48);
      v31[18] = v24;
      sub_1D5EEBE38(&v32, v31);
      FormatRemoteVideo.bind(binder:context:)(a1, a2);
      sub_1D5EEBE94(&v32);
    }
  }

  else
  {
    v8 = (v6 & 0x1FFFFFFFFFFFFFFFLL);
    if (v7 == 2)
    {
      v25 = v8[2];
      v26 = v8[3];

      sub_1D6248B70(a1, a2, v25, v26);
    }

    else
    {
      if (v7 == 3)
      {
        v9 = v8[3];
        v10 = v8[4];
        *&v32 = v8[2];
        *(&v32 + 1) = v9;
        *&v33 = v10;

        sub_1D71580D8(a2);

        return;
      }

      v27 = v8[3];
      *&v32 = v8[2];
      swift_retain_n();

      FormatVideoNodeContent.bind(binder:context:)(a1, a2);
      if (v3)
      {

        return;
      }

      sub_1D6231208(a1, a2, v27);
    }
  }
}

void FormatVideoPlayerContent.bind(binder:context:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *v3;
  if (*v3 < 0)
  {
    v9 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    v13 = *(v9 + 40);
    sub_1D62B6240(v10, v11, v12, v13);
    sub_1D6C09C54(a2);
    sub_1D62B628C(v10, v11, v12, v13);
  }

  else
  {
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);

    sub_1D6242FE8(a1, a2, v7, v8);
  }
}

void FormatOptionsNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[4];

  sub_1D623D0C4(a1, a2, v6);

  if (!v3)
  {
    if (v2[6])
    {
      v7 = v2[10];

      sub_1D5DEA234(v7);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v7);
    }

    swift_beginAccess();
    v8 = v2[5];

    sub_1D6215F90(a1, a2, v8);
  }
}

uint64_t FormatOptionsNodeStatement.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v5;
  v11[0] = *(v2 + 48);
  *(v11 + 15) = *(v2 + 63);
  sub_1D5CF5DBC(v10, v8);
  FormatOptionsNodeStatementValue.bind(binder:context:)(a1, a2);
  v6 = *(v2 + 32);
  v8[0] = *(v2 + 16);
  v8[1] = v6;
  v9[0] = *(v2 + 48);
  *(v9 + 15) = *(v2 + 63);
  return sub_1D5CF603C(v8);
}

double FormatOptionsNodeStatementValue.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = ((4 * *(v2 + 50)) | (v10 >> 11) & 3);
  if (v11 <= 3)
  {
    if (((4 * *(v2 + 50)) | (v10 >> 11) & 3) > 1u)
    {
      if (v11 == 2)
      {
        v32 = *v2;
        v33 = v5;
        v34 = v7;
        v35 = v6;
        v36 = v9;
        v37 = v8;
        v38 = v10 & 0xE7FF;
        FormatString.bind(binder:context:)(a1, a2);
      }
    }

    else if ((4 * *(v2 + 50)) | (v10 >> 11) & 3)
    {
      sub_1D620B270(a1, a2, v4);
    }

    else
    {
      sub_1D62B41FC(a2, *v2);
    }
  }

  else if (((4 * *(v2 + 50)) | (v10 >> 11) & 3) <= 5u)
  {
    if (v11 == 4)
    {
      v32 = *v2;
      v33 = v5;
      v34 = v7;
      v35 = v6;
      v36 = v9;
      v37 = v8;
      v38 = v10;
      FormatOptionsNodeStatementBinding.bind(binder:context:)(a1, a2);
    }

    else
    {

      sub_1D620F94C(a1, a2, v9);
    }
  }

  else if (v11 == 6)
  {
    if ((v4 >> 62) - 2 >= 2)
    {
      if (v4 >> 62)
      {
        v26 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5F33D5C(v25);
        sub_1D620B270(a1, a2, v26);
        if (!v3)
        {
          v32 = v25;
          sub_1D5F33D5C(v25);
          FormatDateTime.bind(binder:context:)(a1, a2);
          sub_1D5F33D8C(v25);
        }

        return sub_1D5F33D8C(v25);
      }

      else
      {
        v17 = *(v4 + 24);
        v18 = *(v4 + 32);
        v19 = *(v4 + 40);
        v32 = *(v4 + 16);
        v33 = v17;
        v34 = v18;
        LOBYTE(v35) = v19;
        sub_1D5D27950(v32, v17, v18, v19);
        sub_1D6D9914C(a2);
        sub_1D5D28C84(v32, v17, v18, v19);
      }
    }
  }

  else if (v11 == 7)
  {
    if ((v4 >> 62) >= 2)
    {
      if (v4 >> 62 == 3)
      {
        v12 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v32 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        FormatURL.bind(binder:context:)(a1, a2);
        if (v3)
        {
        }

        else
        {

          sub_1D620FAB4(a1, a2, v12);
          swift_bridgeObjectRelease_n();
        }
      }

      else
      {
        v29 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v30 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v31 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v32 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v33 = v29;
        v34 = v30;
        LOBYTE(v35) = v31;
        sub_1D5D27950(v32, v29, v30, v31);
        sub_1D6089844(a2);
        sub_1D5D28C84(v32, v29, v30, v31);
      }
    }
  }

  else
  {
    v20 = *(v4 + 32);
    v39[0] = *(v4 + 16);
    v39[1] = v20;
    v40[0] = *(v4 + 48);
    *(v40 + 11) = *(v4 + 59);
    sub_1D62B6438(v39, &v32, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    sub_1D6240FD0(a1, a2);
    sub_1D62B6514(v39);
  }

  return result;
}

uint64_t sub_1D6263738(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v5;
  v11[0] = *(v2 + 48);
  *(v11 + 15) = *(v2 + 63);
  sub_1D5CF5DBC(v10, v8);
  FormatOptionsNodeStatementValue.bind(binder:context:)(a1, a2);
  v6 = *(v2 + 32);
  v8[0] = *(v2 + 16);
  v8[1] = v6;
  v9[0] = *(v2 + 48);
  *(v9 + 15) = *(v2 + 63);
  return sub_1D5CF603C(v8);
}

void FormatOptionsNodeStatementBinding.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 48);
  v5 = v4 >> 13;
  if (v4 >> 13 > 1)
  {
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v5 == 2)
    {
      *&v13 = *v2;
      *(&v13 + 1) = v3;
      *&v14 = v7;
      *(&v14 + 1) = v6;
      v15 = *(v2 + 32);
      v16 = v4 & 0x1FFF;
      FormatTextNodeBinding.bind(binder:context:)(a1, a2);
    }

    else
    {
      *&v13 = *v2;
      *(&v13 + 1) = v3;
      *&v14 = v7;
      BYTE8(v14) = v6;
      if (v5 == 3)
      {
        sub_1D6089844(a2);
      }

      else
      {
        sub_1D6D9914C(a2);
      }
    }

    return;
  }

  if (!v5)
  {
    v8 = v3 >> 12;
    if (((1 << v8) & 0x1D7) == 0)
    {
      if (v8 != 3)
      {
        if ((v3 & 0x80) == 0)
        {
          return;
        }

        v9 = a1;
        v10 = a2;
        goto LABEL_16;
      }

      if ((v3 & 0x80) != 0 && ((v3 >> 7) & 0x1E | (v3 >> 5) & 1) == 8)
      {
        v9 = a1;
        v10 = a2;
LABEL_16:
        v17 = v3 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        if (swift_dynamicCast())
        {
          v11 = *(&v14 + 1);
          v12 = v15;
          __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
          (*(v12 + 8))(v9, v10, v11, v12);
          __swift_destroy_boxed_opaque_existential_1(&v13);
        }

        else
        {
          *&v15 = 0;
          v13 = 0u;
          v14 = 0u;
          sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }
      }
    }
  }
}

void FormatOsloSheetPurchaseDataModel.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v4 = *(v2 + 16);
  if ((v4 & 0xF000000000000007) != 0x7000000000000007)
  {
    v5 = v4 >> 62;
    if (((v4 >> 57) & 0xF8 | v4 & 7 | 0x20) != 0x7F && v5 >= 2)
    {
      if (v5 == 2)
      {
        v8 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v10 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v11 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        sub_1D614F63C(v4);
        sub_1D5D27950(v8, v9, v10, v11);
        sub_1D6089844(a2);
        sub_1D5D28C84(v8, v9, v10, v11);
      }

      else
      {
        v12 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        sub_1D614F63C(v4);
        swift_retain_n();

        FormatURL.bind(binder:context:)(result, a2);
        if (v3)
        {
        }

        else
        {

          sub_1D620FAB4(result, a2, v12);
          swift_bridgeObjectRelease_n();
        }
      }

      sub_1D614F680(v4);
    }
  }
}

void FormatPostPurchase.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2 >> 62;
  if (((*v2 >> 57) & 0xF8 | *v2 & 7 | 0x20) != 0x7F && v4 >= 2)
  {
    if (v4 == 2)
    {
      v9 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v11 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v12 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      sub_1D5D27950(v9, v10, v11, v12);
      sub_1D6089844(a2);
      sub_1D5D28C84(v9, v10, v11, v12);
    }

    else
    {
      v7 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      FormatURL.bind(binder:context:)(a1, a2);
      if (v3)
      {
      }

      else
      {

        sub_1D620FAB4(a1, a2, v7);
        swift_bridgeObjectRelease_n();
      }
    }
  }
}

double sub_1D6263CF8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if ((v3 & 0xF000000000000007) != 0x7000000000000007 && ((v3 >> 57) & 0xF8 | v3 & 7 | 0x20) != 0x7F)
  {
    sub_1D614F658(v3);
    FormatURL.bind(binder:context:)(result, a2);
    return sub_1D614F680(v3);
  }

  return v6;
}

void FormatPercentFillSizing.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  sub_1D620B270(a1, a2, *v2);
  if (!v3 && v6 >= 2)
  {
    sub_1D620B270(a1, a2, v6);
  }
}

void FormatPercentFillSpacing.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*v2 >= 2)
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

void sub_1D6263E08(uint64_t a1, uint64_t a2)
{
  v6 = v2[1];
  sub_1D620B270(a1, a2, *v2);
  if (!v3 && v6 >= 2)
  {
    sub_1D620B270(a1, a2, v6);
  }
}

void sub_1D6263E58(uint64_t a1, uint64_t a2)
{
  if (((*v2 >> 57) & 0xF8 | *v2 & 7 | 0x20) != 0x7F)
  {
    FormatURL.bind(binder:context:)(a1, a2);
  }
}

double sub_1D6263EA0(uint64_t a1, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {

    FormatColor.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D6263F10(uint64_t a1, uint64_t a2)
{
  v11 = *(v2 + 65);
  if (v11 == 2)
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v5 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v6 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        (*(v6 + 8))(a1, a2, v5, v6);
        return __swift_destroy_boxed_opaque_existential_1(&v8);
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
}

uint64_t sub_1D6264030(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E6969530];
  sub_1D5B54684(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  sub_1D5B5714C(0);
  sub_1D5C00D70(v2 + *(v10 + 52), v9, &qword_1EDF45B00, v5);
  v11 = sub_1D725891C();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_1D5B6EF64(v9, &qword_1EDF45B00, MEMORY[0x1E6969530]);
LABEL_6:
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    (*(v13 + 8))(a1, a2, v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  return sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
}

uint64_t sub_1D6264224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 80))
  {
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  else
  {
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v6 = *(&v10 + 1);
      if (*(&v10 + 1))
      {
        v7 = v11;
        __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
        (*(v7 + 8))(a1, a2, v6, v7);
        return __swift_destroy_boxed_opaque_existential_1(&v9);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  return sub_1D5BFB774(&v9, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
}

uint64_t sub_1D626434C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 80))
  {
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);

    if (swift_dynamicCast())
    {
      v5 = *(&v9 + 1);
      if (*(&v9 + 1))
      {
        v6 = v10;
        __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
        (*(v6 + 8))(a1, a2, v5, v6);
        return __swift_destroy_boxed_opaque_existential_1(&v8);
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  return sub_1D5BFB774(&v8, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
}

uint64_t sub_1D6264474(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E6968FB0];
  sub_1D5B54684(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  sub_1D5CF4A48(0, &qword_1EDF43F78, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5C00D70(v2 + *(v10 + 52), v9, &qword_1EDF45B40, v5);
  v11 = sub_1D72585BC();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_1D5B6EF64(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_6:
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    (*(v13 + 8))(a1, a2, v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  return sub_1D5BFB774(&v15, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
}

uint64_t FormatPrimitivePropertyDefinition.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = sub_1D726393C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, v3 + *(a3 + 52), v8, v11);
  if ((*(*(v7 - 8) + 48))(v13, 1, v7) == 1)
  {
    (*(v9 + 8))(v13, v8);
LABEL_6:
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    return sub_1D5BFB774(&v17, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v14 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v15 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    (*(v15 + 8))(a1, a2, v14, v15);
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  return sub_1D5BFB774(&v17, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
}

double FormatProgressCircleOptions.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 40);
  v13 = *(v2 + 32);
  v11 = *(v2 + 48);

  sub_1D620B270(a1, a2, v6);

  if (!v3)
  {
    sub_1D5C75A4C(v7, v8, v9);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v7, v8, v9);

    sub_1D620B270(a1, a2, v13);

    sub_1D620B270(a1, a2, v10);

    sub_1D620B270(a1, a2, v11);
  }

  return result;
}

void FormatProgressKind.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      FormatProgressCircleOptions.bind(binder:context:)(a1, a2);
    }
  }

  else
  {
    FormatProgressPieOptions.bind(binder:context:)(a1, a2);
  }
}

double FormatProgressPieOptions.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 40);
  v13 = *(v2 + 32);
  v11 = *(v2 + 48);

  sub_1D620B270(a1, a2, v6);

  if (!v3)
  {
    sub_1D5C75A4C(v7, v8, v9);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v7, v8, v9);
    if (v13)
    {
      sub_1D620B270(a1, a2, v13);
    }

    sub_1D620B270(a1, a2, v10);

    sub_1D620B270(a1, a2, v11);
  }

  return result;
}

double sub_1D6264C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (!(v3 >> 6))
  {
    return FormatProgressPieOptions.bind(binder:context:)(a1, a2);
  }

  if (v3 >> 6 == 1)
  {
    return FormatProgressCircleOptions.bind(binder:context:)(a1, a2);
  }

  return result;
}

void FormatProgressViewNodeContent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 66);
  v9 = *(v2 + 64);
  if ((*(v2 + 8) & 1) == 0)
  {
    v23 = *(v2 + 40);
    v10 = *v2;
    v11 = a1;
    v12 = a2;
    sub_1D620B270(a1, a2, v10);
    if (v3)
    {
      return;
    }

    a2 = v12;
    a1 = v11;
    LOBYTE(v7) = v23;
  }

  v13 = v9 | (v8 << 16);
  if ((v13 & 0x80000000) == 0)
  {
    sub_1D620B270(a1, a2, v4);
    return;
  }

  v14 = (v13 >> 13) & 8 | (v13 >> 11) & 7;
  if (v14 > 3)
  {
    if (((1 << v14) & 0x330) != 0)
    {
      return;
    }

    if (v14 != 6)
    {
      FormatString.bind(binder:context:)(a1, a2);
      return;
    }

    if (v7 >> 6 && v7 >> 6 != 1)
    {
      if ((v7 & 0x3F) == 1 && (v5 & 0xF000000000000007) != 0xF000000000000007)
      {
        goto LABEL_16;
      }

      return;
    }

    goto LABEL_24;
  }

  if ((v14 - 1) < 2)
  {
    return;
  }

  if (v14)
  {
    goto LABEL_24;
  }

  v18 = (v7 >> 3) & 7;
  if (v18 <= 1)
  {
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v6 == 1;
    }

    if (!v21 || (v4 & 0xF000000000000007) == 0xF000000000000007)
    {
      return;
    }

LABEL_26:
    v19 = a1;
    v20 = a2;

    FormatTextContent.bind(binder:context:)(v19, v20);

    return;
  }

  if (v18 == 2 || v18 == 3 || !(v7 >> 6) || v7 >> 6 == 1)
  {
LABEL_24:
    if (v6 != 1 || (v4 & 0xF000000000000007) == 0xF000000000000007)
    {
      return;
    }

    goto LABEL_26;
  }

  if ((v7 & 7) == 1 && (v5 & 0xF000000000000007) != 0xF000000000000007)
  {
LABEL_16:
    v16 = a1;
    v17 = a2;

    FormatTextContent.bind(binder:context:)(v16, v17);
  }
}

void FormatProgressViewNodeDuration.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 8) & 1) == 0)
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

void FormatProgressViewNodeProgress.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (((*(v2 + 48) | (*(v2 + 50) << 16)) & 0x800000) != 0)
  {
    FormatCommandBinding.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

void sub_1D626501C(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 8) & 1) == 0)
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

void sub_1D6265040(uint64_t a1, uint64_t a2)
{
  if (((*(v2 + 48) | (*(v2 + 50) << 16)) & 0x800000) != 0)
  {
    FormatCommandBinding.bind(binder:context:)(a1, a2);
  }

  else
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

double FormatProgressViewNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  if (!v6 || (sub_1D620B270(a1, a2, v6), !v3))
  {
    if ((~v7 & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(a1, a2), , !v3))
    {
      if ((~v8 & 0xF000000000000007) != 0)
      {

        FormatColor.bind(binder:context:)(a1, a2);
      }
    }
  }

  return result;
}

uint64_t FormatPropertyDefinition.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v73 = a1;
  sub_1D5C5A0E0(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v71 = &v69 - v4;
  sub_1D5C5A0E0(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v72 = &v69 - v7;
  sub_1D5C5A0E0(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v70 = &v69 - v10;
  sub_1D5C5A0E0(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v69 = &v69 - v13;
  sub_1D5CF4A48(0, &qword_1EDF43F78, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v69 - v16;
  sub_1D5B4B554(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v69 - v20;
  sub_1D5B4B554(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v69 - v24;
  sub_1D5C5A0E0(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v69 - v28;
  sub_1D5B5714C(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C5A0E0(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v69 - v36;
  sub_1D5B4B554(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = &v69 - v40;
  v42 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v69 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62B50EC(v75, v45, type metadata accessor for FormatPropertyDefinition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v55 = v45;
        v56 = v70;
        sub_1D62B6808(v55, v70);
        if ((~*(v56 + 72) & 0xF000000000000007) != 0)
        {
          v76 = *(v56 + 72);

          FormatVideoNodeContent.bind(binder:context:)(v73, v74);
        }

        return sub_1D62B68A4(v56);
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v48 = v72;
        sub_1D62B66D8(v45, v72);
        v49 = *(v48 + 72);
        if ((~v49 & 0xF000000000000007) != 0 && (v50 = v49 >> 61, (v49 >> 61) > 1))
        {
          if (v50 == 2)
          {
            v76 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            sub_1D5D04BD4(v49);
            swift_retain_n();

            FormatURL.bind(binder:context:)(v73, v74);

            sub_1D62B6774(v48);
          }

          else if (v50 == 3)
          {
            v52 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v53 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v54 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v76 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v51 = v76;
            v77 = v52;
            v78 = v53;
            v79 = v54;
            sub_1D5D04BD4(v49);
            sub_1D5F58038(v51, v52, v53, v54);
            sub_1D607B228(v74);
            sub_1D62B6774(v48);
            sub_1D5F57FEC(v51, v52, v53, v54);
          }

          else
          {
            v68 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v80[0] = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v80[1] = v68;
            v81 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            sub_1D5D04BD4(v49);
            sub_1D62B50EC(v80, &v76, sub_1D62B5154);
            sub_1D6250408(v73, v74);
            sub_1D62B6774(v48);
            sub_1D62B51D0(v80, sub_1D62B5154);
          }

          return sub_1D5C8500C(v49);
        }

        else
        {
          return sub_1D62B6774(v48);
        }
      }

      else
      {
        v60 = v71;
        sub_1D62B65A8(v45, v71);
        v61 = *(v60 + 72);
        if ((~v61 & 0xF000000000000007) != 0)
        {
          if (v61 < 0)
          {
            v65 = *((v61 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
            v66 = *((v61 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
            v67 = *((v61 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
            v76 = *((v61 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
            v64 = v76;
            v77 = v65;
            v78 = v66;
            v79 = v67;
            sub_1D612612C(v61);
            sub_1D62B6240(v64, v65, v66, v67);
            sub_1D6C09C54(v74);
            sub_1D62B628C(v64, v65, v66, v67);
          }

          else
          {
            v62 = *(v61 + 16);
            v63 = *(v61 + 24);
            sub_1D612612C(*(v60 + 72));

            sub_1D6242FE8(v73, v74, v62, v63);
          }

          sub_1D5BD9F54(v61);
        }

        return sub_1D62B6644(v60);
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      sub_1D5CAD9A4(v45, v21);
      sub_1D626434C(v73, v74);
      return sub_1D62B6AE8(v21);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      sub_1D62B6A68(v45, v17);
      sub_1D6264474(v73, v74);
      return sub_1D62B7204(v17, &qword_1EDF43F78, type metadata accessor for FormatPrimitivePropertyDefinition);
    }

    else
    {
      v57 = v45;
      v58 = v69;
      sub_1D62B6938(v57, v69);
      if ((~*(v58 + 72) & 0xF000000000000007) != 0)
      {
        v76 = *(v58 + 72);

        FormatAsyncImageContent.bind(binder:context:)(v73, v74, v59);
      }

      return sub_1D62B69D4(v58);
    }
  }

  else if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return sub_1D62B51D0(v45, type metadata accessor for FormatPropertyDefinition);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1D62B6C88(v45, v29);
      sub_1D6264224(v73, v74, MEMORY[0x1E69E7DE0]);
      return sub_1D62B6D24(v29);
    }

    else
    {
      sub_1D62B6B70(v45, v25);
      sub_1D6264224(v73, v74, MEMORY[0x1E69E6530]);
      return sub_1D62B6C00(v25);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D62B6DB8(v45, v37);
      if ((~*(v37 + 9) & 0xF000000000000007) != 0)
      {
        v76 = *(v37 + 9);

        FormatColor.bind(binder:context:)(v73, v74);
      }

      return sub_1D62B6E54(v37);
    }

    else
    {
      sub_1D5D5E33C(v45, v33, sub_1D5B5714C);
      sub_1D6264030(v73, v74);
      return sub_1D62B51D0(v33, sub_1D5B5714C);
    }
  }

  else
  {
    sub_1D5CAE630(v45, v41);
    sub_1D6263F10(v73, v74);
    return sub_1D62B6EE8(v41);
  }
}

void FormatPublisherLogoSize.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 >= 3)
  {
    sub_1D620B270(a1, a2, v3);
  }
}

void sub_1D6265C58(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 >= 3)
  {
    sub_1D620B270(a1, a2, v3);
  }
}

void FormatPurchaseLandingPage.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  sub_1D5E1DA6C(*v2, v8, v9, v10, v11, v12, v13);
  FormatString.bind(binder:context:)(a1, a2);
  sub_1D5E1DE98(v7, v8, v9, v10, v11, v12, v13);
  if (!v3 && (v6 & 0xF000000000000007) != 0x7000000000000007 && ((v6 >> 57) & 0xF8 | v6 & 7 | 0x20) != 0x7F)
  {
    sub_1D614F658(v6);
    FormatURL.bind(binder:context:)(a1, a2);
    sub_1D614F680(v6);
  }
}

double sub_1D6265E58(uint64_t a1, uint64_t a2)
{

  FormatURL.bind(binder:context:)(a1, a2);

  return result;
}

void FormatRemoteVideo.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v40 = v2[3];
  v41 = v2[4];
  v37 = v2[5];
  v35 = v2[6];
  v38 = v2[7];
  v34 = v2[8];
  v42 = v2[9];
  v33 = v2[10];
  v43 = v2[11];
  v32 = v2[12];
  v39 = v2[13];
  v36 = v2[15];
  v30 = v2[17];
  v31 = v2[14];
  v28 = v2[18];
  v29 = v2[16];
  v26 = v2[19];
  v27 = v2[20];
  v24 = v2[22];
  v25 = v2[21];
  v6 = v2[25];
  v22 = v2[24];
  v23 = v2[23];
  v7 = v2[26];
  v8 = v2[27];
  v10 = v2[28];
  v9 = v2[29];

  FormatURL.bind(binder:context:)(a1, a2);
  if (v3)
  {

    return;
  }

  v21 = v7;
  v19 = v10;
  v20 = v8;

  FormatURL.bind(binder:context:)(a1, a2);
  v11 = a2;

  FormatURL.bind(binder:context:)(a1, a2);

  if ((~v40 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, a2);
    v13 = v42;
    v12 = v43;

    if ((~v41 & 0xF000000000000007) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:

    FormatURL.bind(binder:context:)(a1, v11);
    v14 = v39;

    goto LABEL_9;
  }

  v13 = v42;
  v12 = v43;
  if ((~v41 & 0xF000000000000007) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v14 = v39;
LABEL_9:
  v15 = v38;
  if ((~v37 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);

    v15 = v38;
  }

  if ((~v35 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
    v16 = v36;

    v15 = v38;
  }

  else
  {
    v16 = v36;
  }

  if ((~v15 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);

    v14 = v39;
  }

  if ((~v34 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v13 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v33 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v12 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v32 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v14 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v31 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v16 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v29 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v30 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v28 & 0xF000000000000007) != 0)
  {

    v17 = a1;
    v18 = v11;
    FormatURL.bind(binder:context:)(a1, v11);
  }

  else
  {
    v17 = a1;
    v18 = v11;
  }

  if ((~v26 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }

  if ((~v27 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }

  if ((~v25 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }

  if ((~v24 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }

  if ((~v23 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }

  if ((~v22 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }

  if ((~v6 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }

  if ((~v21 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }

  if ((~v20 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }

  if ((~v19 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }

  if ((~v9 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(v17, v18);
  }
}

double FormatRepeatNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  if (*(v2 + 40) != 1 || (sub_1D62B41FC(a2, *(v2 + 32)), !v3))
  {
    v7 = *(v2 + 48);
    if (!v7 || (sub_1D62B41FC(a2, v7), !v3))
    {
      v8 = *(v2 + 56);
      if (!v8 || (sub_1D62B41FC(a2, v8), !v3))
      {
        v9 = *(v2 + 64);
        if (!v9 || (sub_1D62B41FC(a2, v9), !v3))
        {
          swift_beginAccess();
          v10 = *(v2 + 88);

          sub_1D6215F90(a1, a2, v10);
        }
      }
    }
  }

  return result;
}

void FormatRepeatNodeIteration.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8) == 1)
  {
    sub_1D62B41FC(a2, *v2);
  }
}

void sub_1D626693C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8) == 1)
  {
    sub_1D62B41FC(a2, *v2);
  }
}

double FormatResetNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);

  sub_1D6215F90(a1, a2, v5);

  return result;
}

uint64_t sub_1D6266A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v10 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v9 + 36), v6, v7);
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v11 = *(&v15 + 1);
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    (*(v12 + 8))(a1, a2, v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    return sub_1D5BFB774(&v14, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

unint64_t FormatSponsoredBannerSizing.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  sub_1D5C82CD8(*v2);
  FormatSize.bind(binder:context:)(a1, a2);
  result = sub_1D5C92A8C(v7);
  if (!v3 && (~v6 & 0xF000000000000007) != 0)
  {
    sub_1D5C82CD8(v6);
    FormatSize.bind(binder:context:)(a1, a2);
    return sub_1D5C92A8C(v6);
  }

  return result;
}

void FormatSlotNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 56);

  sub_1D6213004(a1, a2, v6);

  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v2 + 40);

    sub_1D6215F90(a1, a2, v7);
  }
}

void FormatSnippet.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[9];

  sub_1D6213004(a1, a2, v6);

  if (!v3)
  {
    swift_beginAccess();
    v7 = v2[11];

    sub_1D62212CC(a1, a2, v7);

    swift_beginAccess();
    v8 = v2[8];

    sub_1D6215F90(a1, a2, v8);
  }
}

double FormatSnippetNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 88);

  sub_1D6213004(a1, a2, v5);

  return result;
}

void FormatSourceItem.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2 < 0)
  {
    v8 = *((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D623D6A4(a1, a2, v8);
  }

  else if (*(v5 + 40))
  {
    v7 = *(v5 + 24);
    v6 = *(v5 + 32);
    sub_1D5F586D0(v7, v6, 1);
    sub_1D6249244(a1, a2, v7, v6);
    sub_1D5F5870C(v7, v6, 1);
  }
}

uint64_t FormatSourceItemTip.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 24) == 1)
  {
    v5 = v2 + 8;
    v4 = *(v2 + 8);
    v3 = *(v5 + 8);
    v6 = result;
    sub_1D5F586D0(v4, v3, 1);
    sub_1D6249244(v6, a2, v4, v3);
    return sub_1D5F5870C(v4, v3, 1);
  }

  return result;
}

uint64_t FormatSourceItemTipTraits.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16) == 1)
  {
    return sub_1D6249244(result, a2, *v2, *(v2 + 8));
  }

  return result;
}

uint64_t sub_1D62670BC(uint64_t result, uint64_t a2)
{
  if (*(v2 + 24) == 1)
  {
    v5 = v2 + 8;
    v4 = *(v2 + 8);
    v3 = *(v5 + 8);
    v6 = result;
    sub_1D5F586D0(v4, v3, 1);
    sub_1D6249244(v6, a2, v4, v3);
    return sub_1D5F5870C(v4, v3, 1);
  }

  return result;
}

uint64_t sub_1D6267144(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16) == 1)
  {
    return sub_1D6249244(result, a2, *v2, *(v2 + 8));
  }

  return result;
}

double sub_1D626716C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);

  sub_1D6213004(a1, a2, v5);

  return result;
}

void FormatSplitBackgroundInsets.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];

  sub_1D620B270(a1, a2, v7);

  if (!v3)
  {

    sub_1D620B270(a1, a2, v6);
  }
}

void FormatSplitBackgroundSide.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 64))
  {
    v5 = *(v2 + 48);
    v4 = *(v2 + 56);
    sub_1D6212DD8(a1, a2, *v2);
    if (!v3)
    {
      if (v5)
      {

        sub_1D620B270(a1, a2, v5);
        sub_1D620B270(a1, a2, v4);
        sub_1D5CDE22C(v5, v4);
      }
    }
  }

  else
  {
    FormatColor.bind(binder:context:)(a1, a2);
  }
}

void sub_1D6267350(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];

  sub_1D620B270(a1, a2, v7);

  if (!v3)
  {

    sub_1D620B270(a1, a2, v6);
  }
}

void sub_1D62673DC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 64))
  {
    v5 = *(v2 + 48);
    v4 = *(v2 + 56);
    sub_1D6212DD8(a1, a2, *v2);
    if (!v3)
    {
      if (v5)
      {

        sub_1D620B270(a1, a2, v5);
        sub_1D620B270(a1, a2, v4);
        sub_1D5CDE22C(v5, v4);
      }
    }
  }

  else
  {
    FormatColor.bind(binder:context:)(a1, a2);
  }
}

unint64_t FormatSponsoredBannerUserInterfaceStyle.bind(binder:context:)(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 2)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = result;
    sub_1D5D0A57C(v4);
    sub_1D5D0A57C(v5);
    sub_1D6248A90(v6, a2, v4, v5);
    sub_1D5D0A58C(v4);
    return sub_1D5D0A58C(v5);
  }

  return result;
}

void FormatSponsoredBannerNodeStyle.Selector.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[5];
  if ((~v2[2] & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(a1, a2), , !v3))
  {
    if ((~v6 & 0xF000000000000007) == 0 || (, FormatColor.bind(binder:context:)(a1, a2), , !v3))
    {
      if (v7)
      {
        if (v7 != 1)
        {
          if (v7 != 2)
          {
            v8 = *(v7 + 16);
            v9 = *(v7 + 24);
            sub_1D5D0A59C(v7);
            sub_1D5D0A57C(v8);
            sub_1D5D0A57C(v9);
            sub_1D6248A90(a1, a2, v8, v9);
            sub_1D5D0A58C(v8);
            sub_1D5D0A58C(v9);
            sub_1D5D0A5AC(v7);
          }

          return;
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      sub_1D5D0A5AC(v10);
    }
  }
}

unint64_t sub_1D62676DC(unint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 2)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = result;
    sub_1D5D0A57C(v4);
    sub_1D5D0A57C(v5);
    sub_1D6248A90(v6, a2, v4, v5);
    sub_1D5D0A58C(v4);
    return sub_1D5D0A58C(v5);
  }

  return result;
}

uint64_t sub_1D6267764(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 < 0)
  {
    return sub_1D6240020(result, a2, *v2, v3 & 0x3F, &type metadata for FormatTagBinding.Bool);
  }

  return result;
}

uint64_t sub_1D626779C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if ((v3 & 0xC0) == 0x80)
  {
    return sub_1D6240020(result, a2, *v2, v3 & 0x3F, &type metadata for FormatTagBinding.Color);
  }

  return result;
}

uint64_t sub_1D6267804(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3 < 0)
  {
    return sub_1D6240020(result, a2, *v2, v3 & 0x3F, &type metadata for FormatTagBinding.Text);
  }

  return result;
}

void FormatStateMachineDefinition.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = *(v2 + 24);
    FormatCommandBinding.bind(binder:context:)(a1, a2);
    if (!v3)
    {
      sub_1D620BE38(a1, a2, v8);
      sub_1D6EAF39C(a1, a2, v6, v7);
    }
  }
}

void FormatStateMachineInput.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    v8 = *(v2 + 8);
    FormatCommandBinding.bind(binder:context:)(a1, a2);
    if (!v3)
    {
      sub_1D620BE38(a1, a2, v8);
      sub_1D6EAF39C(a1, a2, v6, v7);
    }
  }
}

void sub_1D626796C(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = *(v2 + 24);
    FormatCommandBinding.bind(binder:context:)(a1, a2);
    if (!v3)
    {
      sub_1D620BE38(a1, a2, v8);
      sub_1D6EAF39C(a1, a2, v6, v7);
    }
  }
}

void sub_1D6267A04(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    v8 = *(v2 + 8);
    FormatCommandBinding.bind(binder:context:)(a1, a2);
    if (!v3)
    {
      sub_1D620BE38(a1, a2, v8);
      sub_1D6EAF39C(a1, a2, v6, v7);
    }
  }
}

void FormatStateViewNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v15 = v2[4];
  sub_1D5C82CD8(v15);
  FormatSize.bind(binder:context:)(a1, a2);
  if (v3)
  {
    sub_1D5C92A8C(v15);
  }

  else
  {
    sub_1D5C92A8C(v15);
    swift_beginAccess();
    v7 = v2[6];

    sub_1D620EA64(a1, a2, v7);

    sub_1D6221808(a1, a2, v4[9]);
    swift_beginAccess();
    v8 = v4[11];
    if (v8 >> 62 == 1)
    {
      v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[11]);
      sub_1D5EB1500(v9);

      sub_1D624919C(a1, a2, v9, v10);
      sub_1D5EB15C4(v9);

      sub_1D5EB15C4(v8);
    }

    v11 = v4[13];
    if (v11)
    {
      swift_beginAccess();
      v12 = *(v11 + 72);
      if (v12)
      {

        sub_1D621397C(a1, a2, v12);
      }

      swift_beginAccess();
      v13 = *(v11 + 88);

      sub_1D621D544(a1, a2, v13);
    }

    if (v4[15])
    {
      v14 = v4[19];

      sub_1D5DEA234(v14);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v14);
    }
  }
}

double sub_1D6267D84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 32);

  a3(a1, a2, v7);

  return result;
}

double sub_1D6267E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(v5 + 32);

  a5(a1, a2, v9);

  return result;
}

void FormatString.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 48) < 0)
  {
    FormatTextNodeBinding.bind(binder:context:)(a1, a2);
  }
}

void sub_1D6267EC0(unint64_t a1, uint64_t a2)
{

  FormatAsyncImageContent.bind(binder:context:)(a1, a2, v5);

  if (!v2)
  {
    FormatImageNodeStyle.bind(binder:context:)(a1, a2);
  }
}

double FormatSupplementary.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v7 = v2[6];
  v6 = v2[7];
  v8 = v2[8];
  v9 = v2[11];
  v10 = v2[12];
  if (v6)
  {
    swift_beginAccess();
    v11 = *(v6 + 56);

    sub_1D621AA44(a1, a2, v11, v12);

    if (v3)
    {
      return result;
    }

    if (*(v6 + 74) != 255)
    {
      v14 = *(v6 + 72) | (*(v6 + 74) << 16);
      v15 = *(v6 + 64);
      sub_1D610CA74(v15, v14, SBYTE2(v14), sub_1D610CA28, sub_1D610CA5C);
      FormatSupplementaryNodePinTrait.bind(binder:context:)(a1, a2);
      sub_1D610CA74(v15, v14, SBYTE2(v14), sub_1D60CF6A8, sub_1D60CF6DC);
    }
  }

  sub_1D62160B4(a1, a2, v8);

  if (!v3)
  {

    sub_1D6213004(a1, a2, v9);

    sub_1D62212CC(a1, a2, v10);

    sub_1D6215F90(a1, a2, v7);
  }

  return result;
}

void FormatSupplementaryNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v11 = v2[6];
  sub_1D5C82CD8(v11);
  FormatSize.bind(binder:context:)(a1, a2);
  sub_1D5C92A8C(v11);
  if (!v3)
  {
    swift_beginAccess();
    v7 = v2[8];

    sub_1D620EA64(a1, a2, v7);

    swift_beginAccess();
    v8 = v4[9];

    sub_1D62160B4(a1, a2, v8);

    swift_beginAccess();
    v9 = v4[11];

    sub_1D6213004(a1, a2, v9);

    if (v4[15])
    {
      v10 = v4[19];

      sub_1D5DEA234(v10);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v10);
    }
  }
}

void FormatSupplementaryNodePinDistance.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if ((*(v2 + 9) & 1) == 0)
  {
    sub_1D620B270(a1, a2, v3);
    return;
  }

  v4 = *(v2 + 8);
  if (v4 <= 1)
  {
    if (*(v2 + 8))
    {
      if (v3)
      {
        if (v3 == 1)
        {
          v5 = 1;
          v6 = 1;
        }

        else
        {
          v18 = v3;
          sub_1D610CA34(v3, 1u);
          sub_1D620B270(a1, a2, v18);
          v5 = v18;
          v6 = 1;
          LOBYTE(v3) = 1;
        }

        goto LABEL_24;
      }

      v5 = 0;
      v6 = 1;
    }

    else
    {
      if (v3)
      {
        if (v3 == 1)
        {
          v5 = 1;
          v6 = 0;
        }

        else
        {
          v15 = v3;
          sub_1D610CA34(v3, 0);
          sub_1D620B270(a1, a2, v15);
          v5 = v15;
          v6 = 0;
          LOBYTE(v3) = 1;
        }

        goto LABEL_24;
      }

      v5 = 0;
      v6 = 0;
    }
  }

  else if (v4 == 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v5 = 1;
        v6 = 2;
      }

      else
      {
        v9 = v3;
        sub_1D610CA34(v3, 2u);
        sub_1D620B270(a1, a2, v9);
        v5 = v9;
        v6 = 2;
        LOBYTE(v3) = 1;
      }

      goto LABEL_24;
    }

    v5 = 0;
    v6 = 2;
  }

  else
  {
    if (v4 != 3)
    {
      return;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        v5 = 1;
        v6 = 3;
      }

      else
      {
        v12 = v3;
        sub_1D610CA34(v3, 3u);
        sub_1D620B270(a1, a2, v12);
        v5 = v12;
        v6 = 3;
        LOBYTE(v3) = 1;
      }

      goto LABEL_24;
    }

    v5 = 0;
    v6 = 3;
  }

  LOBYTE(v3) = 1;
LABEL_24:
  sub_1D60CF6A8(v5, v6, v3);
}

void FormatSupplementaryNodePinDistanceAdjustment.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8) <= 1u)
  {
    if (v3 < 2)
    {
      return;
    }

LABEL_5:
    sub_1D620B270(a1, a2, v3);
    return;
  }

  if (v3 >= 2)
  {
    goto LABEL_5;
  }
}

void sub_1D62685C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8) <= 1u)
  {
    if (v3 < 2)
    {
      return;
    }

LABEL_5:
    sub_1D620B270(a1, a2, v3);
    return;
  }

  if (v3 >= 2)
  {
    goto LABEL_5;
  }
}

void FormatSupplementaryNodePinTrait.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 10))
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    if (*(v2 + 10) == 1)
    {
      if ((v5 & 0x100) == 0)
      {
        sub_1D620B270(a1, a2, *v2);
        return;
      }

      v12 = *(v2 + 8);
      if (v12 <= 1)
      {
        if (*(v2 + 8))
        {
          if (v4)
          {
            if (v4 != 1)
            {
              v13 = a1;
              v14 = v4;
              v15 = v5;
              v16 = 1;
              goto LABEL_40;
            }

LABEL_30:
            v18 = 1;
LABEL_35:
            sub_1D610CA74(1, v5, v18, sub_1D60CF6A8, sub_1D60CF6DC);
            return;
          }
        }

        else if (v4)
        {
          if (v4 != 1)
          {
            v13 = a1;
            v14 = v4;
            v15 = v5;
            v16 = 0;
            goto LABEL_40;
          }

          goto LABEL_30;
        }
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 != 3)
          {
            return;
          }

          if (v4)
          {
            if (v4 != 1)
            {
              v13 = a1;
              v14 = v4;
              v15 = v5;
              v16 = 3;
LABEL_40:
              sub_1D610CA28(v14, v16, 1);
              sub_1D620B270(v13, a2, v4);
              v9 = v4;
              v10 = v15;
              v11 = 1;
              goto LABEL_41;
            }

            goto LABEL_30;
          }

          goto LABEL_31;
        }

        if (v4)
        {
          if (v4 != 1)
          {
            v13 = a1;
            v14 = v4;
            v15 = v5;
            v16 = 2;
            goto LABEL_40;
          }

          goto LABEL_30;
        }
      }

LABEL_31:
      v19 = 1;
LABEL_37:
      sub_1D610CA74(0, v5, v19, sub_1D60CF6A8, sub_1D60CF6DC);
      return;
    }

    if (v5 >> 8 > 0xFE)
    {
      return;
    }

    if ((v5 & 0x100) == 0)
    {
      v6 = a1;
      v7 = v4;
      v8 = v5;
LABEL_8:
      sub_1D610CA5C(v7, v5);
      sub_1D620B270(v6, a2, v4);
      v9 = v4;
      v10 = v8;
      goto LABEL_9;
    }

    v17 = *(v2 + 8);
    if (v17 <= 2)
    {
      if (v4)
      {
        if (v4 == 1)
        {
          v18 = 2;
          goto LABEL_35;
        }

        v21 = v5;
        sub_1D610CA5C(v4, v5);
        sub_1D620B270(a1, a2, v4);
        v9 = v4;
        v10 = v21;
LABEL_9:
        v11 = 2;
LABEL_41:
        sub_1D610CA74(v9, v10, v11, sub_1D60CF6A8, sub_1D60CF6DC);
        return;
      }
    }

    else
    {
      if (v17 != 3)
      {
        return;
      }

      if (v4)
      {
        if (v4 == 1)
        {
          sub_1D610CA74(1, v5, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          return;
        }

        v6 = a1;
        v7 = v4;
        v8 = v5;
        goto LABEL_8;
      }
    }

    v19 = 2;
    goto LABEL_37;
  }
}

uint64_t FormatSupplementaryNodeStyle.Selector.bind(binder:context:)(uint64_t result, uint64_t a2, __n128 a3)
{
  v5 = *(v3 + 32) | (*(v3 + 34) << 16);
  v6 = WORD1(v5);
  if (*(v3 + 34) != 255 && v6 != 0)
  {
    v8 = *(v3 + 24);
    if (v6 == 1)
    {
      if ((v5 & 0x100) == 0)
      {
        v9 = result;
        sub_1D610CA74(v8, v5, 1, sub_1D610CA28, sub_1D610CA5C);
        sub_1D620B270(v9, a2, v8);
LABEL_25:
        v15 = v8;
        return sub_1D62B6F70(v15, v5);
      }

      if (v5 < 4u)
      {
        if (v8)
        {
          if (v8 != 1)
          {
            v13 = result;
            sub_1D610CA74(v8, v5, 1, sub_1D610CA28, sub_1D610CA5C);
            sub_1D620B270(v13, a2, v8);
            goto LABEL_25;
          }

LABEL_22:
          sub_1D62B6F70(1, v5);
          v15 = 1;
          return sub_1D62B6F70(v15, v5);
        }

LABEL_23:
        sub_1D62B6F70(0, v5);
        return sub_1D62B6F70(0, v5);
      }
    }

    else if (BYTE1(v5) != 255)
    {
      if ((v5 & 0x100) != 0)
      {
        if (v5 < 4u)
        {
          if (!v8)
          {
            goto LABEL_23;
          }

          if (v8 == 1)
          {
            goto LABEL_22;
          }

          v16 = result;
          sub_1D610CA74(v8, v5, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D620B270(v16, a2, v8);
          if (v4)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        v11 = result;
        sub_1D610CA74(v8, v5, 2, sub_1D610CA28, sub_1D610CA5C);
        sub_1D620B270(v11, a2, v8);
        if (v4)
        {
          goto LABEL_25;
        }
      }
    }

    return sub_1D62B6F70(v8, v5);
  }

  return result;
}

uint64_t FormatSwitchListValue.bindChildren(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = type metadata accessor for FormatSwitchListValue.CaseValue(0, *(a3 + 16), *(a3 + 24), a4);
  return Array<A>.bind(binder:context:)(a1, a2, v7, v8, &off_1F5142218);
}

double FormatSwitchNode.bindChildren(binder:context:)(unint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 32);
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6FB460](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = i;

      FormatExpression.bind(binder:context:)(a1, a2);

      if (v17)
      {

        return result;
      }

      swift_beginAccess();
      v10 = *(v7 + 24);

      sub_1D6215F90(a1, a2, v10);
      v17 = 0;

      ++v6;
      i = v9;
      if (v8 == v9)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v12 = v15[5];
  if (!v12 || (swift_beginAccess(), v13 = *(v12 + 16), , sub_1D6215F90(a1, a2, v13), , !v17))
  {
    if (v15[9])
    {
      v14 = v15[13];

      sub_1D5DEA234(v14);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v14);
    }
  }

  return result;
}

double FormatSwitchNodeDefault.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);

  sub_1D6215F90(a1, a2, v5);

  return result;
}

void FormatSwitchNodeCase.bind(binder:context:)(unint64_t a1, uint64_t a2)
{

  FormatExpression.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    swift_beginAccess();
    v6 = *(v2 + 24);

    sub_1D6215F90(a1, a2, v6);
  }
}

void sub_1D62690E4(unint64_t a1, uint64_t a2)
{
  v6 = *v2;

  FormatExpression.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v6 + 24);

    sub_1D6215F90(a1, a2, v7);
  }
}

double sub_1D6269198(unint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 16);

  sub_1D6215F90(a1, a2, v6);

  return result;
}

uint64_t FormatSwitchValue.bindChildren(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = type metadata accessor for FormatSwitchValue.CaseValue(0, v9, v10, a4);
  result = Array<A>.bind(binder:context:)(a1, a2, v8, v11, &off_1F5142208);
  if (!v5)
  {
    v14 = type metadata accessor for FormatSwitchValue.DefaultValue(0, v9, v10, v13);
    return FormatValue.bind(binder:context:)(a1, a2, v14);
  }

  return result;
}

void sub_1D62692C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = *v3;

  FormatExpression.bind(binder:context:)(a1, a2);

  if (!v4)
  {
    (*(v9 + 16))(v11, &v3[*(a3 + 36)], v8);
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v12 = *(&v15 + 1);
      v13 = v16;
      __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
      (*(v13 + 8))(a1, a2, v12, v13);
      __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      sub_1D5BFB774(&v14, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }
  }
}

void FormatSymbolConfig.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 17) <= 2u)
  {
    v3 = *(v2 + 8);
    if (!*(v2 + 17))
    {
      FormatSymbolConfig.Font.bind(binder:context:)(a1, a2);
      return;
    }

    if (*(v2 + 17) == 1)
    {
      if (!v3)
      {
        return;
      }
    }

    else
    {
      v3 = *v2;
    }

    sub_1D620B270(a1, a2, v3);
  }
}

void FormatSymbolConfig.Font.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2 >> 61;
  if (v6 > 2)
  {
    v11 = v5 & 0x1FFFFFFFFFFFFFFFLL;
    if (v6 == 3)
    {
      v12 = *(v11 + 24);
      v13 = *(v11 + 32);
      v14 = *(v11 + 40);
      v19 = *(v11 + 16);
      v20 = v12;
      v21 = v13;
      v22 = v14;
      sub_1D5F58038(v19, v12, v13, v14);
      sub_1D607B228(a2);
      sub_1D5F57FEC(v19, v12, v13, v14);
    }

    else
    {
      v15 = *(v11 + 32);
      v23[0] = *(v11 + 16);
      v23[1] = v15;
      v24 = *(v11 + 48);
      sub_1D62B50EC(v23, &v19, sub_1D62B5154);
      sub_1D6250408(a1, a2);
      sub_1D62B51D0(v23, sub_1D62B5154);
    }
  }

  else if (v6 >= 2)
  {
    v7 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    if ((v7 >> 62) >= 2)
    {
      if (v7 >> 62 == 2)
      {
        v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v10 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v8 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v20 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v21 = v9;
        v22 = v10;

        swift_retain_n();
        sub_1D5D27950(v8, v20, v9, v10);
        sub_1D6089844(a2);

        sub_1D5D28C84(v8, v20, v9, v10);
      }

      else
      {
        v17 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v19 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        swift_retain_n();
        FormatURL.bind(binder:context:)(a1, a2);
        if (v3)
        {

          return;
        }

        sub_1D620FAB4(a1, a2, v17);

        swift_bridgeObjectRelease_n();
      }
    }
  }
}

void FormatSymbolConfig.TextStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3)
  {
    sub_1D620B270(a1, a2, v3);
  }
}

double sub_1D62697F0(uint64_t a1, uint64_t a2)
{

  FormatFont.bind(binder:context:)(a1, a2);

  return result;
}

void sub_1D6269854(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (v3)
  {
    sub_1D620B270(a1, a2, v3);
  }
}

double sub_1D6269874(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{

  a3(a1, a2);

  if (!v3)
  {

    a3(a1, a2);
  }

  return result;
}

void FormatSymbolImageColor.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2 >> 62;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      sub_1D5F33D5C(v9);

      sub_1D6249738(a1, a2, v9, v10);
      sub_1D5F33D8C(v9);
    }
  }

  else if (v6)
  {

    FormatColor.bind(binder:context:)(a1, a2);
  }

  else
  {
    v7 = *(v5 + 16);

    sub_1D6212DD8(a1, a2, v7);
  }
}

double FormatTagMoreActions.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {

    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

double sub_1D6269AD0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == 1 && (*v2 & 0xF000000000000007) != 0xF000000000000007)
  {

    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

void FormatTagIconStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  FormatFont.bind(binder:context:)(a1, a2);

  if (!v3)
  {

    sub_1D620B270(a1, a2, v6);

    sub_1D620B270(a1, a2, v7);
  }
}

double sub_1D6269C44(uint64_t a1, uint64_t a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {

    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t FormatTemperatureFormat.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  sub_1D5C75A4C(*v2, v6, v7);
  sub_1D60ECF10(a2);
  return sub_1D5D2F2C8(v5, v6, v7);
}

uint64_t sub_1D6269D58(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  sub_1D5C75A4C(*v2, v6, v7);
  sub_1D60ECF10(a2);
  return sub_1D5D2F2C8(v5, v6, v7);
}

void sub_1D6269E4C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v10 = *(v4 + 8);

  a3(a1, a2);

  if (!v5)
  {
    a4(a1, a2, v10);
  }
}

void FormatTextNodeAttachment.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);

  FormatSyncImageContent.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    sub_1D5C75A4C(v6, v7, v8);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v6, v7, v8);
  }
}

void FormatTextNodeNumber.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      sub_1D62B41FC(a2, *v2);
    }
  }

  else
  {
    sub_1D620B270(a1, a2, *v2);
  }
}

void FormatTextNodeLink.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  FormatTextContent.bind(binder:context:)(a1, a2);

  if (!v3 && (v6 >> 62) >= 2)
  {
    if (v6 >> 62 == 2)
    {
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v10 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v11 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      sub_1D5D27950(v8, v9, v10, v11);
      sub_1D6089844(a2);
      sub_1D5D28C84(v8, v9, v10, v11);
    }

    else
    {
      v7 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      FormatURL.bind(binder:context:)(a1, a2);

      sub_1D620FAB4(a1, a2, v7);
      swift_bridgeObjectRelease_n();
    }
  }
}

double FormatTextNodeDateTimeFormat.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D5F33D5C(*v2);
  FormatDateTime.bind(binder:context:)(a1, a2);
  return sub_1D5F33D8C(v5);
}

void FormatTextSize.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2 >> 61;
  if (v6 > 2)
  {
    if (v6 > 4)
    {
      if (v6 != 5)
      {
        return;
      }

      goto LABEL_10;
    }

    v7 = v5 & 0x1FFFFFFFFFFFFFFFLL;
    if (v6 != 3)
    {
LABEL_10:

      FormatTextContent.bind(binder:context:)(a1, a2);

      return;
    }

LABEL_8:
    v10 = *(v7 + 16);

    sub_1D6233590(a1, a2, v10);

    return;
  }

  if (v6)
  {
    v7 = v5 & 0x1FFFFFFFFFFFFFFFLL;
    if (v6 == 1)
    {
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);

      sub_1D5D085B4(v9);
      sub_1D6248054(a1, a2, v8, v9);

      sub_1D5D05694(v9);
      return;
    }

    goto LABEL_8;
  }

  v11 = *(v5 + 16);
  sub_1D5C82CD8(v11);
  FormatSize.bind(binder:context:)(a1, a2);
  sub_1D5C92A8C(v11);
}

double FormatTextNodeAlternative.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatTextContent.bind(binder:context:)(a1, a2);

  if (!v2)
  {

    FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
  }

  return result;
}

void FormatTextNodeAlternativeLogic.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2 >> 62;
  if (v6 > 1)
  {
    if (v6 == 2)
    {

      swift_retain_n();
      FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    else
    {

      swift_retain_n();
      FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
      if (!v3)
      {
LABEL_10:

        FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
      }
    }

    return;
  }

  if (v6)
  {
    v7 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D620B270(a1, a2, v7);
  }

  else
  {
    swift_retain_n();

    FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
  }
}

double FormatTextNodeAlternativeLogic.AlternativeLogic.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);

  return result;
}

double FormatTextNodeAlternativeLogic.LogicalOperator.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);

  if (!v2)
  {

    FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);
  }

  return result;
}

double sub_1D626A6C4(uint64_t a1, uint64_t a2)
{

  FormatTextNodeAlternativeLogic.bind(binder:context:)(a1, a2);

  return result;
}

double sub_1D626A758(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D5F33D5C(*v2);
  FormatDateTime.bind(binder:context:)(a1, a2);
  return sub_1D5F33D8C(v5);
}

void sub_1D626A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v12 = *(v6 + 8);

  a5(a1, a2);

  if (!v7)
  {
    a6(a1, a2, v12);
  }
}

void FormatTextNodeFormat.Token.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);

  FormatTextContent.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    if (v6)
    {
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }
  }
}

void sub_1D626A910(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);

  FormatTextContent.bind(binder:context:)(a1, a2);

  if (!v3)
  {
    if (v6)
    {
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }
  }
}

double FormatUnderline.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((~*(v2 + 8) & 0xF000000000000007) != 0)
  {

    FormatColor.bind(binder:context:)(a1, a2);
  }

  return result;
}

void FormatTextNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 152);
  v8 = *(v2 + 208);
  v62 = *(v2 + 192);
  v63 = v8;
  v64 = *(v2 + 224);
  v65 = *(v2 + 240);
  v9 = *(v2 + 176);
  v61[0] = *(v2 + 160);
  v61[1] = v9;
  v10 = *(v2 + 472);
  v66 = *(v2 + 480);
  v32 = *(v2 + 504);
  v33 = *(v2 + 488);
  v34 = *(v2 + 520);
  v35 = *(v2 + 496);
  if ((~v6 & 0xF000000000000007) != 0)
  {
    *&v53 = v6;

    FormatFont.bind(binder:context:)(a1, a2);
    v11 = v3;
    if (v3)
    {

      return;
    }
  }

  else
  {
    v11 = v3;
  }

  v12 = *(v2 + 104);
  v57 = *(v2 + 88);
  v58 = v12;
  v13 = *(v2 + 136);
  v59 = *(v2 + 120);
  v60 = v13;
  v14 = *(v2 + 40);
  v53 = *(v2 + 24);
  v54 = v14;
  v15 = *(v2 + 72);
  v55 = *(v2 + 56);
  v56 = v15;
  if (sub_1D5CFD0B8(&v53) != 1)
  {
    v48 = v57;
    v49 = v58;
    v50 = v59;
    v51 = v60;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v16 = *(v2 + 24);
    v17 = *(v2 + 40);
    v18 = *(v2 + 72);
    v52[2] = *(v2 + 56);
    v52[3] = v18;
    v52[0] = v16;
    v52[1] = v17;
    v19 = *(v2 + 88);
    v20 = *(v2 + 104);
    v21 = *(v2 + 136);
    v52[6] = *(v2 + 120);
    v52[7] = v21;
    v52[4] = v19;
    v52[5] = v20;
    sub_1D5CFD190(v52, &v36);
    FormatFill.bind(binder:context:)(a1, a2);
    if (v11)
    {
      v40 = v48;
      v41 = v49;
      v42 = v50;
      v43 = v51;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v39 = v47;
      sub_1D5CFD368(&v36);
      return;
    }

    v40 = v48;
    v41 = v49;
    v42 = v50;
    v43 = v51;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    sub_1D5CFD368(&v36);
  }

  v22 = v11;
  if (v7)
  {
    sub_1D620E744(a1, a2, v7);
    if (v11)
    {
      return;
    }
  }

  v23 = v65;
  if (v65 != 254)
  {
    v25 = v63;
    v26 = *&v64;
    v27 = *(&v62 + 1);
    *&v52[0] = v62;
    swift_retain_n();
    FormatColor.bind(binder:context:)(a1, a2);
    if (v11)
    {

      sub_1D5D0ABCC(v61, &qword_1EDF33718, &type metadata for FormatShadow);
      return;
    }

    if (v23 <= 2)
    {
      if (v23)
      {
        if (v23 == 1)
        {
          sub_1D625E06C(a1, a2, v27, *&v25);
          sub_1D5D0ABCC(v61, &qword_1EDF33718, &type metadata for FormatShadow);
          goto LABEL_13;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v23 <= 4)
      {
        v28 = v27;
        v29 = *&v25;
        v30 = a1;
        v31 = a2;
        if (v23 != 3)
        {
LABEL_36:
          sub_1D625E06C(v30, v31, v28, v29);
          goto LABEL_38;
        }

LABEL_35:
        sub_1D625E06C(a1, a2, v27, *&v25);
        v29 = v26;
        v28 = *(&v25 + 1);
        v30 = a1;
        v31 = a2;
        goto LABEL_36;
      }

      if (v23 == 5)
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    sub_1D5D0ABCC(v61, &qword_1EDF33718, &type metadata for FormatShadow);
    v22 = 0;
  }

LABEL_13:
  if (!v10 || (sub_1D620B270(a1, a2, v10), !v22))
  {
    v24 = v66;
    if (v66 != 9)
    {
      if ((~v33 & 0xF000000000000007) != 0)
      {
        *&v52[0] = v33;
        sub_1D62B5D18(v66, v33);
        sub_1D5CFCFAC(v33);
        FormatColor.bind(binder:context:)(a1, a2);

        sub_1D62B5D00(v24, v33);
        if (v22)
        {
          return;
        }
      }

      else
      {
        sub_1D62B5D00(v66, v33);
      }
    }

    if (v35 != 9)
    {
      if ((~v32 & 0xF000000000000007) != 0)
      {
        *&v52[0] = v32;
        sub_1D62B5D18(v35, v32);
        sub_1D5CFCFAC(v32);
        FormatColor.bind(binder:context:)(a1, a2);

        sub_1D62B5D00(v35, v32);
        if (v22)
        {
          return;
        }
      }

      else
      {
        sub_1D62B5D00(v35, v32);
      }
    }

    if (v34)
    {
      sub_1D620B270(a1, a2, v34);
    }
  }
}

void FormatType.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for FormatPropertyDefinition(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 80);
  if (v13 >> 6)
  {
    v15 = *(v5 + 32);
    v14 = *(v5 + 40);
    v16 = *(v5 + 48);
    v38 = *(v5 + 56);
    v18 = *(v5 + 64);
    v17 = *(v5 + 72);
    if (v13 >> 6 == 1)
    {
      if (v13)
      {
        return;
      }

      v19 = *(v16 + 32);
      v35 = *(v16 + 16);
      v36 = v19;
      v37[0] = *(v16 + 48);
      *(v37 + 15) = *(v16 + 63);
      v20 = v14;

      v34 = v16;
      sub_1D618ECBC(v16, v38, v18, v17, 0);
      FormatCommandBinding.bind(binder:context:)(a1, a2);
      if (v4)
      {
        v21 = v15;
        v22 = v20;
        v23 = v34;
      }

      else
      {
        v29 = v20;
        v30 = v34;
        sub_1D620BE38(a1, a2, v38);
        sub_1D6EAF39C(a1, a2, v18, v17);
        v21 = v15;
        v22 = v29;
        v23 = v30;
      }

      v28 = v38;
      v26 = v18;
      v27 = v17;
      goto LABEL_16;
    }

    v31 = v14;
    v32 = v18;
    v33 = v17;
    v34 = v16;
    v24 = *(v15 + 16);

    if (!v24)
    {
LABEL_13:
      v21 = v15;
      v22 = v31;
      v26 = v32;
      v27 = v33;
      v23 = v34;
      v28 = v38;
LABEL_16:
      sub_1D60CF6F4(v21, v22, v23, v28, v26, v27, v13);
      return;
    }

    v25 = 0;
    while (v25 < *(v15 + 16))
    {
      sub_1D62B50EC(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v12, type metadata accessor for FormatPropertyDefinition);
      FormatPropertyDefinition.bind(binder:context:)(a1, a2);
      if (v4)
      {
        sub_1D62B51D0(v12, type metadata accessor for FormatPropertyDefinition);
        goto LABEL_13;
      }

      ++v25;
      sub_1D62B51D0(v12, type metadata accessor for FormatPropertyDefinition);
      if (v24 == v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void FormatTypeDefinition.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatPropertyDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 48);
  if (v11 >> 6)
  {
    if (v11 >> 6 == 1)
    {
      if ((v11 & 1) == 0)
      {
        v12 = v2[2];
        v13 = v2[3];
        v14 = v2[4];
        v15 = v2[5];
        v16 = *(v12 + 32);
        v20[0] = *(v12 + 16);
        v20[1] = v16;
        v21[0] = *(v12 + 48);
        *(v21 + 15) = *(v12 + 63);
        FormatCommandBinding.bind(binder:context:)(a1, a2);
        if (!v3)
        {
          sub_1D620BE38(a1, a2, v13);
          sub_1D6EAF39C(a1, a2, v14, v15);
        }
      }
    }

    else
    {
      v17 = *v2;
      v18 = *(*v2 + 16);
      if (v18)
      {
        v19 = 0;
        while (v19 < *(v17 + 16))
        {
          sub_1D62B50EC(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, type metadata accessor for FormatPropertyDefinition);
          FormatPropertyDefinition.bind(binder:context:)(a1, a2);
          if (v3)
          {
            sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
            return;
          }

          ++v19;
          sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
          if (v18 == v19)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1D626B3F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  v11 = *(v2 + 80);
  sub_1D618EC0C(v5, v6, v7, v8, v9, v10, v11);
  FormatTypeDefinition.bind(binder:context:)(a1, a2);
  sub_1D60CF6F4(v5, v6, v7, v8, v9, v10, v11);
}

void sub_1D626B4BC(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for FormatPropertyDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 48);
  if (v11 >> 6)
  {
    if (v11 >> 6 == 1)
    {
      if ((v11 & 1) == 0)
      {
        v13 = v2[2];
        v12 = v2[3];
        v15 = v2[4];
        v14 = v2[5];
        v16 = *(v13 + 32);
        v20[0] = *(v13 + 16);
        v20[1] = v16;
        v21[0] = *(v13 + 48);
        *(v21 + 15) = *(v13 + 63);

        FormatCommandBinding.bind(binder:context:)(a1, a2);
        if (!v3)
        {
          sub_1D620BE38(a1, a2, v12);
          sub_1D6EAF39C(a1, a2, v15, v14);
        }

        sub_1D5E32940(v13, v12, v15, v14, 0);
      }
    }

    else
    {
      v17 = *v2;
      v18 = *(*v2 + 16);
      if (v18)
      {
        v19 = 0;
        while (v19 < *(v17 + 16))
        {
          sub_1D62B50EC(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v10, type metadata accessor for FormatPropertyDefinition);
          FormatPropertyDefinition.bind(binder:context:)(a1, a2);
          if (v3)
          {
            sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
            return;
          }

          ++v19;
          sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
          if (v18 == v19)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

void FormatURLComponents.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  FormatURL.bind(binder:context:)(a1, a2);

  if (!v3)
  {

    sub_1D620FAB4(a1, a2, v6);
  }
}

void FormatURLComponent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 104);
  if (((v6 >> 12) & 3) != 0)
  {
    v8 = *(v2 + 56);
    v7 = *(v2 + 64);
    v10 = *(v2 + 72);
    v9 = *(v2 + 80);
    v11 = *(v2 + 88);
    v12 = *v2;
    v19 = *(v2 + 96);
    v13 = *(v2 + 8);
    v14 = *(v2 + 16);
    v15 = *(v2 + 24);
    v16 = *(v2 + 32);
    v17 = *(v2 + 40);
    v18 = *(v2 + 48);
    sub_1D5E1DA6C(*v2, v13, v14, v15, v16, v17, v18);
    FormatString.bind(binder:context:)(a1, a2);
    sub_1D5E1DE98(v12, v13, v14, v15, v16, v17, v18);
    if (!v3)
    {
      sub_1D5E1DA6C(v8, v7, v10, v9, v11, v19, v6 & 0xFFFFCFFF);
      FormatString.bind(binder:context:)(a1, a2);
      sub_1D5E1DE98(v8, v7, v10, v9, v11, v19, v6 & 0xCFFF);
    }
  }

  else
  {
    FormatString.bind(binder:context:)(a1, a2);
  }
}

void FormatURLComponentQueryParameter.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(v2 + 72);
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  v19 = *(v2 + 96);
  v11 = *(v2 + 104);
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  v16 = *(v2 + 32);
  v17 = *(v2 + 40);
  v18 = *(v2 + 48);
  sub_1D5E1DA6C(*v2, v13, v14, v15, v16, v17, v18);
  FormatString.bind(binder:context:)(a1, a2);
  sub_1D5E1DE98(v12, v13, v14, v15, v16, v17, v18);
  if (!v3)
  {
    sub_1D5E1DA6C(v6, v7, v8, v9, v10, v19, v11);
    FormatString.bind(binder:context:)(a1, a2);
    sub_1D5E1DE98(v6, v7, v8, v9, v10, v19, v11);
  }
}

void sub_1D626BA5C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  FormatURL.bind(binder:context:)(a1, a2);

  if (!v3)
  {

    sub_1D620FAB4(a1, a2, v6);
  }
}

double sub_1D626BB04(uint64_t a1, uint64_t a2)
{
  if ((~*(v2 + 8) & 0xF000000000000007) != 0)
  {

    FormatColor.bind(binder:context:)(a1, a2);
  }

  return result;
}

void FormatVariableNode.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = v2[4];

  sub_1D623D0C4(a1, a2, v6);

  if (!v3)
  {
    if (v2[5])
    {
      v7 = v2[9];

      sub_1D5DEA234(v7);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v7);
    }
  }
}

void FormatVideoPlayerLive.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    sub_1D60ECF10(a2);
  }

  else
  {
    sub_1D7245EF4(a2);
  }
}

void sub_1D626BDD4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    sub_1D60ECF10(a2);
  }

  else
  {
    sub_1D7245EF4(a2);
  }
}

void FormatVideoPlayerOverlayContent.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);

  FormatAsyncImageContent.bind(binder:context:)(a1, a2, v11);

  if (!v3)
  {
    if (v6 >= 3)
    {
      sub_1D620B270(a1, a2, v6);
    }

    if (v7)
    {
      FormatImageNodeStyle.bind(binder:context:)(a1, a2);
    }

    sub_1D5C75A4C(v8, v9, v10);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v8, v9, v10);
  }
}

void sub_1D626BF84(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 112);
  v22 = *(v2 + 96);
  v23 = v9;
  v24 = *(v2 + 128);
  v25 = *(v2 + 144);
  v10 = *(v2 + 80);
  v21[0] = *(v2 + 64);
  v21[1] = v10;
  v11 = *(v2 + 152);
  if (!v6 || (sub_1D620B270(a1, a2, v6), !v3))
  {
    if ((~v7 & 0xF000000000000007) != 0)
    {
      v20[0] = v7;

      FormatBackground.bind(binder:context:)(a1, a2);
      if (v3)
      {

        return;
      }
    }

    if (!v8 || (sub_1D620E744(a1, a2, v8), !v3))
    {
      v12 = v25;
      if (v25 == 254)
      {
        goto LABEL_10;
      }

      v19 = v23;
      v13 = *&v24;
      v14 = *(&v22 + 1);
      v26 = v22;
      sub_1D62B5354(v21, v20, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(a1, a2);
      if (v3)
      {

        sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
        return;
      }

      if (v12 <= 2)
      {
        if (v12)
        {
          v15 = v14;
          v16 = *&v19;
          v17 = a1;
          v18 = a2;
          if (v12 == 1)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }
      }

      else
      {
        if (v12 <= 4)
        {
          v15 = v14;
          v16 = *&v19;
          v17 = a1;
          v18 = a2;
          if (v12 != 3)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        if (v12 == 5)
        {
          v15 = v14;
          v16 = *&v19;
          v17 = a1;
          v18 = a2;
LABEL_24:
          sub_1D625E06C(v17, v18, v15, v16);
          v16 = v13;
          v15 = *(&v19 + 1);
          v17 = a1;
          v18 = a2;
LABEL_26:
          sub_1D625E06C(v17, v18, v15, v16);
          sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_10:
          if ((~v11 & 0xF000000000000007) != 0)
          {
            v20[0] = v11;

            FormatColor.bind(binder:context:)(a1, a2);
          }

          return;
        }
      }

      sub_1D5D0ABCC(v21, &qword_1EDF33718, &type metadata for FormatShadow);
      goto LABEL_10;
    }
  }
}

void FormatViewNodeStyle.Selector.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 104);
  v23 = *(v2 + 88);
  v24 = v8;
  v25 = *(v2 + 120);
  v26 = *(v2 + 136);
  v9 = *(v2 + 72);
  v22[0] = *(v2 + 56);
  v22[1] = v9;
  v10 = *(v2 + 144);
  if ((~v7 & 0xF000000000000007) != 0)
  {
    v21[0] = v7;

    FormatBackground.bind(binder:context:)(a1, a2);
    if (v3)
    {

      return;
    }
  }

  if (!v6 || (sub_1D620E744(a1, a2, v6), !v3))
  {
    v11 = v26;
    if (v26 == 254)
    {
      goto LABEL_8;
    }

    v12 = *(&v24 + 1);
    v19 = v10;
    v20 = *&v24;
    v13 = *&v25;
    v14 = *(&v23 + 1);
    v27 = v23;
    sub_1D62B5354(v22, v21, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(a1, a2);
    if (v3)
    {

      sub_1D5D0ABCC(v22, &qword_1EDF33718, &type metadata for FormatShadow);
      return;
    }

    if (v11 <= 2)
    {
      if (v11)
      {
        v15 = v14;
        v16 = v20;
        v17 = a1;
        v18 = a2;
        if (v11 == 1)
        {
          sub_1D625E06C(a1, a2, v14, v20);
          sub_1D5D0ABCC(v22, &qword_1EDF33718, &type metadata for FormatShadow);
          v10 = v19;
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (v11 <= 4)
      {
        v15 = v14;
        v16 = v20;
        v17 = a1;
        v18 = a2;
        if (v11 != 3)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      if (v11 == 5)
      {
        v15 = v14;
        v16 = v20;
        v17 = a1;
        v18 = a2;
LABEL_22:
        sub_1D625E06C(v17, v18, v15, v16);
        v16 = v13;
        v15 = v12;
        v17 = a1;
        v18 = a2;
LABEL_24:
        sub_1D625E06C(v17, v18, v15, v16);
        sub_1D5D0ABCC(v22, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_25;
      }
    }

    sub_1D5D0ABCC(v22, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_25:
    v10 = v19;
LABEL_8:
    if (v10)
    {
      sub_1D620B270(a1, a2, v10);
    }
  }
}

double sub_1D626C58C(uint64_t a1, uint64_t a2)
{
  if (*v2 >> 62 == 1)
  {
    v3 = *v2 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = *(v3 + 0x10);
    v5 = *(v3 + 0x18);
    sub_1D5EB1500(*(v3 + 16));

    sub_1D624919C(a1, a2, v4, v5);
    sub_1D5EB15C4(v4);
  }

  return result;
}

void sub_1D626C61C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);
  v11[8] = *(v2 + 128);
  v11[9] = v5;
  v12 = *(v2 + 160);
  v6 = *(v2 + 80);
  v11[4] = *(v2 + 64);
  v11[5] = v6;
  v7 = *(v2 + 112);
  v11[6] = *(v2 + 96);
  v11[7] = v7;
  v8 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v8;
  v9 = *(v2 + 48);
  v11[2] = *(v2 + 32);
  v11[3] = v9;
  v10 = sub_1D62B4E2C(v11);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      sub_1D5D04BC4(v11);
      FormatGlassEffect.bind(binder:context:)(a1, a2);
    }
  }

  else
  {
    sub_1D5D04BC4(v11);
  }
}

void sub_1D626C700(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 17) <= 2u)
  {
    v3 = *(v2 + 8);
    if (!*(v2 + 17))
    {
      FormatSymbolConfig.Font.bind(binder:context:)(a1, a2);
      return;
    }

    if (*(v2 + 17) == 1)
    {
      if (!v3)
      {
        return;
      }
    }

    else
    {
      v3 = *v2;
    }

    sub_1D620B270(a1, a2, v3);
  }
}

void FormatWebEmbedNodeContent.bind(binder:context:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *v3;
  v6 = *v3 >> 62;
  if (v6)
  {
    if (v6 != 1)
    {
      v7 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);

      sub_1D62493D8(a1, a2, v8, v9, v11);
    }
  }

  else
  {
    v12 = *(v5 + 16);
    v13 = *(v5 + 24);
    v14 = *(v5 + 32);
    v15 = *(v5 + 40);
    sub_1D62B6164(v12, v13, v14, v15);
    sub_1D69BBC64(a2);
    sub_1D62B61A8(v12, v13, v14, v15);
  }
}

double FormatWebEmbedNodeRendering.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 2)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    sub_1D5D0A57C(v4);

    sub_1D62490FC(a1, a2, v4, v5);
    sub_1D5D0A58C(v4);
  }

  return result;
}

double sub_1D626C940(unint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*v2 >= 2)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    sub_1D5D0A57C(v4);

    sub_1D62490FC(a1, a2, v4, v5);
    sub_1D5D0A58C(v4);
  }

  return result;
}

double sub_1D626CA0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1D628DEA4(a1, *(a2 + 48));
  if (!v7)
  {
    sub_1D6277BD0(a1, a3);

    sub_1D6EFC7A4(a1);
  }

  return result;
}

double sub_1D626CAA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1D628DEA4(a1, *(a2 + 48));
  if (!v7)
  {
    sub_1D6281C84(a1, a3);

    sub_1D6297BE8(a1);
  }

  return result;
}

double sub_1D626CB38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1D628DEA4(a1, *(a2 + 48));
  if (!v7)
  {
    sub_1D62827E8(a1, a3);

    sub_1D6E5C118(a1);
  }

  return result;
}

double sub_1D626CBD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1D628DEA4(a1, *(a2 + 48));
  if (!v7)
  {
    sub_1D62847D0(a1, a3);

    sub_1D6287A8C(a1);
  }

  return result;
}

void sub_1D626CC64(uint64_t *a1, void *a2)
{

  sub_1D628CE04(a1);

  if (!v3)
  {
    v6 = *(v2 + 8);
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[4];
    v10 = type metadata accessor for FormatCommandValue.CaseValue(0, v7, v8, v9);
    sub_1D69F81A0(a1, v6, v10, &off_1F5142168);
    v11 = type metadata accessor for FormatCommandValue.DefaultValue(0, v7, v8, v9);
    sub_1D6285A8C(a1, v11);
  }
}

uint64_t sub_1D626CD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[3];
  v8 = *(*v4 + 80);
  v9 = type metadata accessor for FormatCommandActionValue.CaseValue(0, v8, a3, a4);
  result = sub_1D69F81A0(a1, v7, v9, &off_1F5142188);
  if (!v5)
  {
    v13 = type metadata accessor for FormatCommandActionValue.DefaultValue(0, v8, v11, v12);
    return sub_1D6285A8C(a1, v13);
  }

  return result;
}

double sub_1D626CE00(uint64_t a1)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v4 = *((*v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *(v4 + 24);

    sub_1D627981C(a1, v5);
    if (!v2)
    {
      sub_1D628E5E4(a1, *(v4 + 32));
    }
  }

  return result;
}

void sub_1D626CE84(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  v16 = *(v1 + 32);
  v17 = *(v1 + 40);
  sub_1D5D07778(v16, v17);
  sub_1D626D094(a1, v5);
  sub_1D5D06D9C(v16, v17);
  if (!v2)
  {
    swift_beginAccess();
    v7 = *(v1 + 98);
    if ((v7 >> 1) <= 0x7Eu)
    {
      v9 = *(v1 + 96) | (*(v1 + 98) << 16);
      v10 = v3[6];
      v11 = v3[7];
      v12 = v3[8];
      v14 = v3[10];
      v13 = v3[11];
      if (((v7 << 16) & 0x800000) != 0)
      {
        sub_1D628DEA4(a1, v6);
      }

      else
      {
        v15 = v3[9];
        sub_1D5D0A5BC(v3[6], v3[7], v3[8], v15, v14, v13, v9);
        sub_1D6273544(a1, v10);
        sub_1D5C67600(v10, v11, v12, v15, v14, v13, v9);
      }
    }

    if (v3[13])
    {
      v8 = v3[17];

      sub_1D5DEA234(v8);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v8);
    }
  }
}

void sub_1D626D094(uint64_t *result, __n128 a2)
{
  if (*(v2 + 8))
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (((*v2 >> 60) & 3 | v3) <= 5)
  {
    sub_1D6EFC7A4(result);
  }
}

void sub_1D626D110(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(v1 + 48) | (*(v1 + 50) << 16);
  if ((v3 & 0x80000000) == 0)
  {
    sub_1D6273544(a1, v2);
    return;
  }

  v4 = *(v1 + 24);
  v5 = (v3 >> 13) & 8 | (v3 >> 11) & 7;
  if (v5 > 3)
  {
    if (((1 << v5) & 0x330) != 0)
    {
      return;
    }

    if (v5 != 6)
    {
      sub_1D690A374(a1);
      return;
    }

    if (v4 >> 6 && v4 >> 6 != 1)
    {
      v6 = v4 & 0x3F;
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  if ((v5 - 1) < 2)
  {
    return;
  }

  if (v5)
  {
    goto LABEL_22;
  }

  v9 = (v4 >> 3) & 7;
  if (v9 <= 1)
  {
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v1 + 16) == 1;
    }

    if (!v10 || (v2 & 0xF000000000000007) == 0xF000000000000007)
    {
      return;
    }

LABEL_24:
    v8 = a1;
    goto LABEL_25;
  }

  if (v9 == 2 || v9 == 3 || !(v4 >> 6) || v4 >> 6 == 1)
  {
LABEL_22:
    if (*(v1 + 16) != 1 || (v2 & 0xF000000000000007) == 0xF000000000000007)
    {
      return;
    }

    goto LABEL_24;
  }

  v6 = v4 & 7;
LABEL_10:
  if (v6 == 1 && (*(v1 + 8) & 0xF000000000000007) != 0xF000000000000007)
  {
    v8 = a1;
LABEL_25:

    sub_1D6E5C118(v8);
  }
}

double sub_1D626D2A0(void *a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v8 = v1[5];

  sub_1D62744A4(a1, v4);
  if (v2)
  {
  }

  else
  {
    sub_1D62843FC(a1, v5, sub_1D62744A4);

    sub_1D62744A4(a1, v6);
    sub_1D62843FC(a1, v7, sub_1D62744A4);

    sub_1D5DEA234(v9);

    if (v9 >= 3)
    {
      sub_1D6273544(a1, v9);
    }

    sub_1D6284208(a1, v8);
    sub_1D5CBF568(v9);
  }

  return result;
}

void sub_1D626D484(uint64_t *a1)
{
  v3 = v1;
  v10 = *(v1 + 48);
  sub_1D5C82CD8(v10);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v10);
  if (!v2)
  {
    swift_beginAccess();
    v5 = *(v1 + 64);

    sub_1D6274044(a1, v5);

    swift_beginAccess();
    v6 = v3[10];
    if (v6 >> 62 == 1)
    {
      v7 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[10]);
      sub_1D5EB1500(v7);

      sub_1D6288D68(a1, v7, v8);
      sub_1D5EB15C4(v7);

      sub_1D5EB15C4(v6);
    }

    if (v3[12])
    {
      v9 = v3[16];

      sub_1D5DEA234(v9);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v9);
    }
  }
}

void sub_1D626D654(uint64_t *a1)
{
  v3 = *v1;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
      v8 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);

      sub_1D5C07390(v10);
      sub_1D6273544(a1, v9);
      if (v2)
      {
        goto LABEL_9;
      }

      if (v10)
      {
        if (v10 == 1)
        {

          sub_1D5C08648(1uLL);
        }

        else
        {
          sub_1D6273544(a1, v10);
LABEL_9:

          sub_1D5C08648(v10);
        }
      }

      else
      {

        sub_1D5C08648(0);
      }

      return;
    case 2uLL:
      v6 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v7 = *(v6 + 24);
      v23 = *(v6 + 16);
      sub_1D5D0A048(v23);
      sub_1D628FBC4(a1);
      sub_1D5D09FB0(v23);
      if (!v2)
      {
        sub_1D5D0A048(v7);
        sub_1D628FBC4(a1);
        sub_1D5D09FB0(v7);
      }

      return;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xCuLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      v3 &= 0xFFFFFFFFFFFFFFBuLL;
      goto LABEL_3;
    case 9uLL:
      v20 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v21 = *(v20 + 24);
      if (*(v20 + 16))
      {

        sub_1D6290E24(a1);
        if (v2)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      sub_1D62744A4(a1, v21);
LABEL_32:

      return;
    case 0xAuLL:
      sub_1D6273544(a1, *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
      return;
    case 0xBuLL:
    case 0x15uLL:
    case 0x16uLL:
      return;
    case 0xDuLL:
      v14 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      sub_1D6273544(a1, v14);
      goto LABEL_4;
    case 0xEuLL:
      v18 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v19 = *(v18 + 24);
      if (v19)
      {
        if (v19 == 1)
        {
          v22 = 1;
        }

        else
        {
          if (v19 == 2)
          {
            sub_1D5CBF568(2uLL);
            return;
          }

          sub_1D5DEA234(*(v18 + 24));
          sub_1D6273544(a1, v19);
          v22 = v19;
        }
      }

      else
      {
        v22 = 0;
      }

      sub_1D5CBF568(v22);
      return;
    case 0xFuLL:
      sub_1D629FB8C(a1);
      return;
    case 0x10uLL:
      v11 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);

      sub_1D5C82CD8(v12);
      sub_1D6285038(a1, v13);
      if (!v2)
      {
        sub_1D5C82CD8(v12);
        sub_1D626D654(a1);
        sub_1D5C92A8C(v12);
      }

      sub_1D5C92A8C(v12);
      return;
    case 0x14uLL:
      v15 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);

      sub_1D6273544(a1, v16);
      if (!v2)
      {
        sub_1D6273544(a1, v17);
      }

      goto LABEL_4;
    default:
LABEL_3:
      v5 = *(v3 + 16);

      sub_1D6273544(a1, v5);
LABEL_4:

      return;
  }
}

void sub_1D626DA28(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatOption(0) - 8;
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    while (1)
    {
      sub_1D62B50EC(v11, v9, type metadata accessor for FormatOption);
      v13[1] = *(v9 + 2);

      sub_1D629C93C(a1);
      if (v2)
      {
        break;
      }

      sub_1D62B51D0(v9, type metadata accessor for FormatOption);
      v11 += v12;
      if (!--v10)
      {
        return;
      }
    }

    sub_1D62B51D0(v9, type metadata accessor for FormatOption);
  }
}

uint64_t *sub_1D626DB9C(uint64_t *result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = v4 - 1;
    v7 = (a2 + 72);
    v34 = result;
    do
    {
      v44 = v3;
      v8 = *(v7 - 5);
      v9 = *(v7 - 3);
      v10 = *v7;
      v48 = v7[1];
      v12 = v7[2];
      v11 = v7[3];
      v13 = v7[4];
      v14 = v7[5];
      v15 = v7[6];
      v16 = v7[7];
      v39 = v6;
      v42 = v15;
      v43 = v14;
      v40 = v13;
      v41 = v16;
      if (v9)
      {
        v35 = *(v7 - 4);
        v36 = *(v7 - 1);
        v38 = v8;

        v37 = v11;
        sub_1D5CFDAE4(v10, v48, v12, v11, v13, v14, v15, v16);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
          v32 = swift_allocObject();
          swift_beginAccess();
          v33 = v18[2];
          v46[0] = v18[1];
          v46[1] = v33;
          v47[0] = v18[3];
          *(v47 + 14) = *(v18 + 62);
          memmove((v32 + 16), v18 + 1, 0x3EuLL);
          sub_1D5EB9AB0(v46, v45);

          *v5 = v32;
          v18 = v32;
        }

        swift_beginAccess();
        v19 = *(v18 + 3);
        v20 = swift_isUniquelyReferenced_nonNull_native();
        *(v18 + 3) = v19;
        if ((v20 & 1) == 0)
        {
          v19 = sub_1D698F85C(0, *(v19 + 2) + 1, 1, v19);
          *(v18 + 3) = v19;
        }

        v22 = *(v19 + 2);
        v21 = *(v19 + 3);
        if (v22 >= v21 >> 1)
        {
          v19 = sub_1D698F85C((v21 > 1), v22 + 1, 1, v19);
        }

        *(v19 + 2) = v22 + 1;
        v23 = &v19[32 * v22];
        *(v23 + 4) = v35;
        *(v23 + 5) = v9;
        *(v23 + 3) = v36;
        *(v18 + 3) = v19;
        swift_endAccess();
        v24 = v34;
        v25 = v10;
        v26 = v48;
        v27 = v37;
        v28 = v38;
      }

      else
      {
        v28 = v8;

        v29 = v14;
        v30 = v15;
        v31 = v16;
        v25 = v10;
        v24 = v34;
        v26 = v48;
        sub_1D5CFDAE4(v10, v48, v12, v11, v13, v29, v30, v31);
        v27 = v11;
      }

      *&v46[0] = v28;

      sub_1D6299090(v24);
      v3 = v44;

      result = sub_1D5CFDD14(v25, v26, v12, v27, v40, v43, v42, v41);
      if (v44)
      {
        break;
      }

      v5 = v24;
      v6 = v39 - 1;
      v7 += 13;
    }

    while (v39);
  }

  return result;
}

void sub_1D626DEC0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v143 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  v139 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v6);
  v144 = v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v130 - v14;
  v141 = type metadata accessor for FormatItemNodeAction(0);
  v16 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v17);
  v134 = v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v138 = v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v142 = *(a2 + 16);
  if (!v142)
  {
    return;
  }

  v132 = v11;
  v133 = v130 - v24;
  v130[1] = v8;
  v131 = v15;
  v25 = 0;
  v187 = a2 + 32;
  v137 = (v16 + 48);
  v140 = a1;
  v27 = v141;
  v26 = v142;
  while (2)
  {
    v29 = (v187 + (v25 << 6));
    v30 = v29[1];
    v185[0] = *v29;
    v185[1] = v30;
    v31 = v29[3];
    v185[2] = v29[2];
    v186 = v31;
    ++v25;
    v32 = *&v185[0];
    switch(v31 >> 59)
    {
      case 1uLL:

        v28 = v3;
        sub_1D6290E24(a1);
        goto LABEL_4;
      case 2uLL:

        v28 = v3;
        sub_1D62938C4(a1);
        goto LABEL_4;
      case 3uLL:
        v71 = *(*&v185[0] + 64);
        v169 = *(*&v185[0] + 48);
        v170 = v71;
        v72 = *(*&v185[0] + 96);
        v171 = *(*&v185[0] + 80);
        v172 = v72;
        LOBYTE(v173) = *(*&v185[0] + 112);
        v130[0] = v25;
        if ((v173 & 0xFE) == 0x7E)
        {
        }

        else
        {
          v92 = v169;
          if ((~v169 & 0xF000000000000007) != 0)
          {
            *&v154 = v169;
            sub_1D5C8C900(v185, &v158);
            sub_1D62B5354(&v169, &v158, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
            sub_1D5CFCFAC(v92);
            sub_1D62895DC(v140);
            if (v3)
            {
              sub_1D5D0ABCC(&v169, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
              sub_1D5C8C974(v185);

              return;
            }

            sub_1D5D0ABCC(&v169, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
            a1 = v140;
          }

          else
          {

            a1 = v140;
          }
        }

        v96 = *(v32 + 176);
        if (v96 != 255)
        {
          v97 = *(v32 + 136);
          v154 = *(v32 + 120);
          v155 = v97;
          v156[0] = *(v32 + 152);
          *&v156[1] = *(v32 + 168);
          BYTE8(v156[1]) = v96;
          v158 = v154;
          v159 = v97;
          v160 = v156[0];
          *&v161 = *&v156[1];
          BYTE8(v161) = v96;
          sub_1D62B5E68(&v158, &v150);
          sub_1D628D2F4(a1);
          if (v3)
          {
            sub_1D5C8C974(v185);
            v150 = v154;
            v151 = v155;
            v152[0] = v156[0];
            *(v152 + 9) = *(v156 + 9);
            sub_1D62B5EC4(&v150);
            return;
          }

          v150 = v154;
          v151 = v155;
          v152[0] = v156[0];
          *(v152 + 9) = *(v156 + 9);
          sub_1D62B5EC4(&v150);
        }

        v98 = v133;
        sub_1D5C00D70(v32 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v133, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
        v136 = *v137;
        if (v136(v98, 1, v27) == 1)
        {
          sub_1D5B6EF64(v98, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
        }

        else
        {
          sub_1D62B50EC(v98, v134, type metadata accessor for FormatItemNodeAction);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if ((EnumCaseMultiPayload - 2) >= 6)
          {
            if (EnumCaseMultiPayload)
            {
              v122 = v131;
              sub_1D5D5E33C(v134, v131, type metadata accessor for FormatCommandOpenURL);
              sub_1D62B50EC(v122, v132, type metadata accessor for FormatCommandOpenURL);
              if (swift_getEnumCaseMultiPayload() > 1)
              {
                v124 = *v132;
                v123 = v132[1];
                v125 = v132[2];
                *&v158 = *v132;
                *(&v158 + 1) = v123;
                *&v159 = v125;
                LOBYTE(v154) = 6;

                v126 = sub_1D703E0C8(&v158, &v154);
                if (v3)
                {
                  sub_1D62B51D0(v131, type metadata accessor for FormatCommandOpenURL);

                  goto LABEL_140;
                }

                v127 = v126;

                v128 = swift_allocObject();
                *(v128 + 16) = v124;
                *(v128 + 24) = v123;
                *(v128 + 32) = v127;
                *(v128 + 40) = 0;
                v129 = v140;
                sub_1D6C4D24C(v128 | 0x3000000000000000);
                a1 = v129;

                sub_1D62B51D0(v131, type metadata accessor for FormatCommandOpenURL);
                v27 = v141;
              }

              else
              {
                sub_1D62B51D0(v131, type metadata accessor for FormatCommandOpenURL);
                sub_1D62B51D0(v132, type metadata accessor for FormatCommandOpenURL);
              }
            }

            else
            {
              sub_1D62B5F18(v134, &v158);
              sub_1D62B5F18(&v158, &v154);
              sub_1D6295E98(a1);
              v107 = &v158;
              if (v3)
              {
                goto LABEL_138;
              }

              sub_1D62B5F74(&v158);
            }
          }

          sub_1D62B51D0(v133, type metadata accessor for FormatItemNodeAction);
        }

        v100 = *(v32 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
        if (v100 >= 4)
        {
          v101 = a1;
          v102 = *(v32 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
          sub_1D62B5DD0(*(v32 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle));
          sub_1D6273544(v101, v100);
          if (v3)
          {
            sub_1D5C8C974(v185);
            sub_1D62B5E14(v100, v102);
            return;
          }

          sub_1D6273544(v101, v102);
          v3 = 0;
          sub_1D62B5E14(v100, v102);
          a1 = v140;
        }

        v103 = v27;
        v104 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
        swift_beginAccess();
        v105 = *(v32 + v104);
        v106 = *(v105 + 16);

        v135 = v106;
        if (!v106)
        {
LABEL_117:

          sub_1D5C8C974(v185);
          v26 = v142;
          v27 = v103;
          v25 = v130[0];
LABEL_6:
          if (v25 == v26)
          {
            return;
          }

          continue;
        }

        v108 = 0;
        while (v108 < *(v105 + 16))
        {
          v109 = v144;
          sub_1D62B50EC(v105 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v108, v144, type metadata accessor for FormatItemNodeStyle.Selector);
          v110 = *(v109 + 8);
          v145[0] = *v109;
          v145[1] = v110;

          sub_1D6EE4610(a1);
          if (v3)
          {

            sub_1D5C8C974(v185);

            sub_1D62B51D0(v109, type metadata accessor for FormatItemNodeStyle.Selector);
            return;
          }

          LOBYTE(v162) = *(v109 + 80);
          v111 = *(v109 + 32);
          v158 = *(v109 + 16);
          v159 = v111;
          v112 = *(v109 + 64);
          v160 = *(v109 + 48);
          v161 = v112;
          if ((v162 & 0xFE) != 0x7E)
          {
            v113 = v158;
            if ((v158 & 0xF000000000000007) == 0xF000000000000007)
            {
              a1 = v140;
            }

            else
            {
              *&v150 = v158;
              sub_1D62B5354(&v158, &v154, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
              sub_1D5CFCFAC(v113);
              sub_1D62895DC(v140);

              sub_1D5D0ABCC(&v158, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
              a1 = v140;
              v109 = v144;
            }
          }

          v114 = *(v109 + 144);
          if (v114 != 255)
          {
            v115 = *(v109 + 104);
            v150 = *(v109 + 88);
            v151 = v115;
            v152[0] = *(v109 + 120);
            *&v152[1] = *(v109 + 136);
            BYTE8(v152[1]) = v114;
            v154 = v150;
            v155 = v115;
            v156[0] = v152[0];
            *&v156[1] = *&v152[1];
            BYTE8(v156[1]) = v114;
            sub_1D62B5E68(&v154, &v146);
            sub_1D628D2F4(a1);
            v146 = v150;
            v147 = v151;
            v148[0] = v152[0];
            *(v148 + 9) = *(v152 + 9);
            sub_1D62B5EC4(&v146);
          }

          v116 = v138;
          sub_1D5C00D70(v109 + *(v143 + 28), v138, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
          if (v136(v116, 1, v103) == 1)
          {
            sub_1D5B6EF64(v116, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
          }

          else
          {
            sub_1D6295BD4(a1);
            sub_1D62B51D0(v116, type metadata accessor for FormatItemNodeAction);
          }

          v117 = (v144 + *(v143 + 40));
          v118 = *v117;
          v119 = v117[1];
          if (*v117 > 1)
          {
            if (v118 != 2 && v118 != 3)
            {
LABEL_116:
              sub_1D62B5DD0(*v117);
              sub_1D6273544(a1, v118);
              sub_1D6273544(a1, v119);
              v3 = 0;
              sub_1D62B51D0(v144, type metadata accessor for FormatItemNodeStyle.Selector);
              sub_1D62B5E14(v118, v119);
              goto LABEL_114;
            }
          }

          else if (v118 >= 2)
          {
            goto LABEL_116;
          }

          v107 = sub_1D62B51D0(v144, type metadata accessor for FormatItemNodeStyle.Selector);
LABEL_114:
          ++v108;
          v103 = v141;
          if (v135 == v108)
          {
            goto LABEL_117;
          }
        }

        __break(1u);
LABEL_138:
        sub_1D62B5F74(v107);
LABEL_140:
        sub_1D5C8C974(v185);
        sub_1D62B51D0(v133, type metadata accessor for FormatItemNodeAction);
        return;
      case 4uLL:
        swift_beginAccess();
        v68 = *(v32 + 96);
        sub_1D5C8C900(v185, &v169);

        sub_1D626FB44(a1, v68);
        if (!v3)
        {
          goto LABEL_82;
        }

        goto LABEL_132;
      case 5uLL:
        v80 = *(*&v185[0] + 56);
        if (v80)
        {

          sub_1D626DA28(a1, v80);
          if (v3)
          {
LABEL_132:
            sub_1D5C8C974(v185);
            return;
          }
        }

        else
        {
        }

        swift_beginAccess();
        v93 = *(v32 + 64);

        v94 = v3;
        sub_1D626FD48(a1, v93);
        goto LABEL_81;
      case 6uLL:
        swift_beginAccess();
        v83 = *(v32 + 56);
        sub_1D5C8C900(v185, &v169);

        sub_1D626FF20(a1, v83);
        if (v3)
        {
          goto LABEL_130;
        }

        if (*(v32 + 74) == 255)
        {
          goto LABEL_5;
        }

        v84 = *(v32 + 72) | (*(v32 + 74) << 16);
        v85 = a1;
        v86 = *(v32 + 64);
        *&v169 = v86;
        WORD4(v169) = v84;
        BYTE10(v169) = BYTE2(v84);
        sub_1D610CA74(v86, v84, SBYTE2(v84), sub_1D610CA28, sub_1D610CA5C);
        sub_1D628F694(v85);
        sub_1D5C8C974(v185);
        sub_1D610CA74(v86, v84, SBYTE2(v84), sub_1D60CF6A8, sub_1D60CF6DC);
        goto LABEL_64;
      case 7uLL:
        swift_beginAccess();
        v73 = *(v32 + 48);
        sub_1D5C8C900(v185, &v169);

        v74 = v3;
        sub_1D62701B4(a1, v73);
        goto LABEL_66;
      case 8uLL:

        v28 = v3;
        sub_1D6296C18(a1);
        goto LABEL_4;
      case 9uLL:

        v47 = sub_1D62B7AA4;
        v48 = sub_1D62B7B00;
        goto LABEL_33;
      case 0xAuLL:
        swift_beginAccess();
        v87 = *(v32 + 48);
        sub_1D5C8C900(v185, &v169);

        v74 = v3;
        sub_1D6270360(a1, v87);
LABEL_66:
        v3 = v74;
        if (v74)
        {
          goto LABEL_130;
        }

        v88 = *(v32 + 56);
        if (v88)
        {

          sub_1D6273544(a1, v88);
        }

        v89 = *(v32 + 64);
        if (v89)
        {
          sub_1D626FA1C(a1, v89);
        }

        LOBYTE(v174) = *(v32 + 176);
        v90 = *(v32 + 144);
        v171 = *(v32 + 128);
        v172 = v90;
        v173 = *(v32 + 160);
        v91 = *(v32 + 112);
        v169 = *(v32 + 96);
        v170 = v91;
        if (v174 != 254)
        {
          goto LABEL_72;
        }

        goto LABEL_5;
      case 0xBuLL:
        swift_beginAccess();
        v49 = *(v32 + 48);
        sub_1D5C8C900(v185, &v169);

        sub_1D6270510(a1, v49);
        if (v3)
        {
          goto LABEL_130;
        }

        v50 = *(v32 + 56);
        if (v50)
        {

          sub_1D6273544(a1, v50);
        }

        v51 = *(v32 + 64);
        if (v51)
        {
          sub_1D626FA1C(a1, v51);
        }

        v184 = *(v32 + 176);
        v52 = *(v32 + 144);
        v181 = *(v32 + 128);
        v182 = v52;
        v183 = *(v32 + 160);
        v53 = *(v32 + 112);
        v180[0] = *(v32 + 96);
        v180[1] = v53;
        if (v184 != 254)
        {
          *&v169 = v181;
          swift_retain_n();
          sub_1D62895DC(a1);

          sub_1D5D0ABCC(v180, &qword_1EDF33718, &type metadata for FormatShadow);
          v26 = v142;
        }

        v54 = *(v32 + 296);
        v55 = *(v32 + 328);
        v166 = *(v32 + 312);
        v167 = v55;
        v168 = *(v32 + 344);
        v56 = *(v32 + 232);
        v57 = *(v32 + 264);
        v58 = *(v32 + 280);
        v162 = *(v32 + 248);
        v163 = v57;
        v60 = *(v32 + 264);
        v59 = *(v32 + 280);
        v165 = *(v32 + 296);
        v164 = v59;
        v61 = *(v32 + 200);
        v158 = *(v32 + 184);
        v159 = v61;
        v62 = *(v32 + 216);
        v161 = v56;
        v160 = v62;
        v63 = *(v32 + 328);
        v177 = v166;
        v178 = v63;
        v179 = *(v32 + 344);
        v173 = *(v32 + 248);
        v174 = v60;
        v64 = *(v32 + 232);
        v176 = v54;
        v175 = v58;
        v65 = *(v32 + 200);
        v169 = *(v32 + 184);
        v170 = v65;
        v66 = *(v32 + 216);
        v172 = v64;
        v171 = v66;
        if (sub_1D60081E0(&v169) == 1)
        {
          goto LABEL_5;
        }

        v156[6] = v177;
        v156[7] = v178;
        v157 = v179;
        v156[2] = v173;
        v156[3] = v174;
        v156[4] = v175;
        v156[5] = v176;
        v154 = v169;
        v155 = v170;
        v156[0] = v171;
        v156[1] = v172;
        v67 = sub_1D62B4E2C(&v154);
        if (v67 <= 1)
        {
          sub_1D5D04BC4(&v154);
          goto LABEL_5;
        }

        if (v67 != 2)
        {
          goto LABEL_5;
        }

        v121 = sub_1D5D04BC4(&v154);
        v148[5] = *(v121 + 112);
        v148[6] = *(v121 + 128);
        v148[7] = *(v121 + 144);
        v149 = *(v121 + 160);
        v148[1] = *(v121 + 48);
        v148[2] = *(v121 + 64);
        v148[3] = *(v121 + 80);
        v148[4] = *(v121 + 96);
        v146 = *v121;
        v147 = *(v121 + 16);
        v148[0] = *(v121 + 32);
        v150 = v158;
        v151 = v159;
        v152[2] = v162;
        v152[3] = v163;
        v152[0] = v160;
        v152[1] = v161;
        v153 = v168;
        v152[6] = v166;
        v152[7] = v167;
        v152[4] = v164;
        v152[5] = v165;
        sub_1D60864C0(&v150, v145);
        sub_1D62914C8(a1);
        sub_1D5C8C974(v185);
        sub_1D5D0ABCC(&v158, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        goto LABEL_6;
      case 0xCuLL:

        v28 = v3;
        sub_1D673266C(a1);
        goto LABEL_4;
      case 0xDuLL:
        swift_beginAccess();
        v81 = *(v32 + 72);
        if (v81)
        {
          sub_1D5C8C900(v185, &v169);

          sub_1D62707E8(a1, v81, v82);
          if (v3)
          {
            goto LABEL_130;
          }
        }

        else
        {
        }

        swift_beginAccess();
        v95 = *(v32 + 88);

        v94 = v3;
        sub_1D6272D88(a1, v95);
LABEL_81:
        v3 = v94;
        if (v94)
        {
LABEL_130:
          sub_1D5C8C974(v185);

          return;
        }

LABEL_82:

LABEL_5:
        sub_1D5C8C974(v185);
        goto LABEL_6;
      case 0xEuLL:

        v47 = sub_1D62B7C6C;
        v48 = sub_1D62B7CC8;
LABEL_33:
        v28 = v3;
        sub_1D629C434(a1, v47, v48);
LABEL_4:
        v3 = v28;
        if (!v28)
        {
          goto LABEL_5;
        }

        goto LABEL_132;
      case 0xFuLL:
        swift_beginAccess();
        v69 = *(v32 + 48);
        sub_1D5C8C900(v185, &v169);

        sub_1D6272F68(a1, v69);
        if (v3)
        {
          goto LABEL_130;
        }

        v70 = *(v32 + 56);
        if (v70)
        {

          sub_1D6273544(a1, v70);
        }

        if ((~*(v32 + 64) & 0xF000000000000007) != 0)
        {
          *&v169 = *(v32 + 64);

          sub_1D62895DC(a1);
        }

        if ((~*(v32 + 72) & 0xF000000000000007) == 0)
        {
          goto LABEL_41;
        }

        *&v169 = *(v32 + 72);

        sub_1D62895DC(a1);
        sub_1D5C8C974(v185);

        v26 = v142;
        goto LABEL_6;
      case 0x10uLL:
        v46 = *(&v186 + 1);
        sub_1D5C8C900(v185, &v169);

        sub_1D6273154(a1, v46);
        if (v3)
        {
          goto LABEL_130;
        }

        sub_1D5C8C974(v185);

        goto LABEL_6;
      case 0x11uLL:
        swift_beginAccess();
        v75 = *(v32 + 48);
        sub_1D5C8C900(v185, &v169);

        sub_1D627331C(a1, v75);
        if (v3)
        {
          goto LABEL_130;
        }

        if ((~*(v32 + 56) & 0xF000000000000007) != 0)
        {
          *&v169 = *(v32 + 56);

          sub_1D62895DC(a1);
        }

        if ((~*(v32 + 64) & 0xF000000000000007) != 0)
        {
          *&v169 = *(v32 + 64);

          sub_1D62895DC(a1);
        }

        v76 = *(v32 + 80);
        v26 = v142;
        if (v76)
        {
          if (v76 != 1)
          {
            if (v76 == 2)
            {
              goto LABEL_5;
            }

            v77 = a1;
            v79 = *(v76 + 16);
            v78 = *(v76 + 24);
            sub_1D5D0A59C(*(v32 + 80));
            sub_1D5D0A57C(v79);
            sub_1D5D0A57C(v78);
            sub_1D62886C0(v77, v79, v78);
            sub_1D5C8C974(v185);
            sub_1D5D0A58C(v79);
            sub_1D5D0A58C(v78);
            sub_1D5D0A5AC(v76);
LABEL_64:
            a1 = v140;
            v27 = v141;
            v26 = v142;
            goto LABEL_6;
          }

          sub_1D5C8C974(v185);
          v120 = 1;
        }

        else
        {
          sub_1D5C8C974(v185);
          v120 = 0;
        }

        sub_1D5D0A5AC(v120);
        goto LABEL_6;
      default:
        swift_beginAccess();
        v33 = *(v32 + 48);
        sub_1D5C8C900(v185, &v169);

        sub_1D626F824(a1, v33);
        if (v3)
        {
          goto LABEL_130;
        }

        v34 = *(v32 + 56);
        if (v34)
        {

          sub_1D6273544(a1, v34);
        }

        if ((~*(v32 + 64) & 0xF000000000000007) != 0)
        {
          *&v169 = *(v32 + 64);

          sub_1D62891F0(a1, v35, v36, v37, v38, v39, v40, v41, v42);
        }

        v43 = *(v32 + 72);
        if (v43)
        {
          sub_1D626FA1C(a1, v43);
        }

        LOBYTE(v174) = *(v32 + 184);
        v44 = *(v32 + 152);
        v171 = *(v32 + 136);
        v172 = v44;
        v173 = *(v32 + 168);
        v45 = *(v32 + 120);
        v169 = *(v32 + 104);
        v170 = v45;
        if (v174 == 254)
        {
LABEL_41:
          sub_1D5C8C974(v185);
          v26 = v142;
        }

        else
        {
LABEL_72:
          *&v158 = v171;
          swift_retain_n();
          sub_1D62895DC(a1);

          sub_1D5C8C974(v185);
          sub_1D5D0ABCC(&v169, &qword_1EDF33718, &type metadata for FormatShadow);
          v26 = v142;
        }

        goto LABEL_6;
    }
  }
}