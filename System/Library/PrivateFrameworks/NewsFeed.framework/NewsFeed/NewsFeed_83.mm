void sub_1D62A2750(uint64_t *a1)
{
  v4 = type metadata accessor for FormatPropertyDefinition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 80);
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      if ((v9 & 1) == 0)
      {
        v10 = *(v1 + 48);
        v11 = *(v10 + 32);
        v15[0] = *(v10 + 16);
        v15[1] = v11;
        v16[0] = *(v10 + 48);
        *(v16 + 15) = *(v10 + 63);
        sub_1D628DEA4(a1, *v16);
      }
    }

    else
    {
      v12 = *(v1 + 32);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = 0;
        while (v14 < *(v12 + 16))
        {
          sub_1D62B50EC(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v8, type metadata accessor for FormatPropertyDefinition);
          sub_1D629E924(a1);
          if (v2)
          {
            sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
            return;
          }

          ++v14;
          sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
          if (v13 == v14)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1D62A2920(uint64_t *a1)
{
  v4 = type metadata accessor for FormatPropertyDefinition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      if ((v9 & 1) == 0)
      {
        v10 = v1[2];
        v11 = v1[3];
        v13 = v1[4];
        v12 = v1[5];

        sub_1D626C9C8(a1, v10, v11, v13, v12, v14, v15);
        sub_1D5E32940(v10, v11, v13, v12, 0);
      }
    }

    else
    {
      v16 = *v1;
      v17 = *(*v1 + 16);
      if (v17)
      {
        v18 = 0;
        while (v18 < *(v16 + 16))
        {
          sub_1D62B50EC(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v8, type metadata accessor for FormatPropertyDefinition);
          sub_1D629E924(a1);
          if (v2)
          {
            sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
            return;
          }

          ++v18;
          sub_1D62B51D0(v8, type metadata accessor for FormatPropertyDefinition);
          if (v17 == v18)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1D62A2B14(uint64_t a1, __n128 a2)
{
  v5 = *(v2 + 104);
  if (((v5 >> 12) & 3) != 0)
  {
    v7 = *(v2 + 56);
    v6 = *(v2 + 64);
    v9 = *(v2 + 72);
    v8 = *(v2 + 80);
    v10 = *(v2 + 88);
    v18 = *(v2 + 96);
    v11 = *v2;
    v12 = *(v2 + 8);
    v13 = *(v2 + 16);
    v14 = *(v2 + 24);
    v15 = *(v2 + 32);
    v16 = *(v2 + 40);
    v17 = *(v2 + 48);
    sub_1D5E1DA6C(*v2, v12, v13, v14, v15, v16, v17);
    sub_1D690A374(a1);
    sub_1D5E1DE98(v11, v12, v13, v14, v15, v16, v17);
    if (!v3)
    {
      sub_1D5E1DA6C(v7, v6, v9, v8, v10, v18, v5 & 0xFFFFCFFF);
      sub_1D690A374(a1);
      sub_1D5E1DE98(v7, v6, v9, v8, v10, v18, v5 & 0xCFFF);
    }
  }

  else
  {
    sub_1D690A374(a1);
  }
}

void sub_1D62A2C6C(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v17 = *(v1 + 104);
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = *(v1 + 48);
  sub_1D5E1DA6C(*v1, v11, v12, v13, v14, v15, v16);
  sub_1D690A374(a1);
  sub_1D5E1DE98(v10, v11, v12, v13, v14, v15, v16);
  if (!v2)
  {
    sub_1D5E1DA6C(v4, v5, v6, v7, v8, v9, v17);
    sub_1D690A374(a1);
    sub_1D5E1DE98(v4, v5, v6, v7, v8, v9, v17);
  }
}

void sub_1D62A2DA8(uint64_t *a1)
{
  v4 = *(v1 + 8);

  sub_1D6298B34(a1);

  if (!v2)
  {

    sub_1D627496C(a1, v4);
  }
}

double sub_1D62A2E44(uint64_t a1)
{
  if ((~*(v1 + 8) & 0xF000000000000007) != 0)
  {

    sub_1D62895DC(a1);
  }

  return result;
}

void sub_1D62A2F14()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v5 = *(v0 + 72);
  v24 = *(v0 + 80);
  v23 = *(v0 + 88);
  v6 = *(v0 + 96);
  if (v1 != 255 && (v1 & 1) != 0)
  {
    v20 = *(v0 + 96);
    v7 = *(v0 + 8);
    v8 = *(v0 + 16);
    v19 = *(v0 + 32);
    sub_1D6189668(v7, v8, v1);
    sub_1D6189668(v7, v8, v1);
    v9 = sub_1D5E26E28(&unk_1F5113158);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v8;
    *(v10 + 32) = v9;
    *(v10 + 40) = 0;
    sub_1D6C4D24C(v10 | 0x3000000000000000);
    v11 = v8;
    v6 = v20;
    sub_1D60107F0(v7, v11, v1);

    v2 = v19;
  }

  if (v4 != 255 && (v4 & 1) != 0)
  {
    v12 = v2;
    sub_1D6189668(v2, v3, v4);
    sub_1D6189668(v12, v3, v4);
    v13 = sub_1D5E26E28(&unk_1F5113180);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v3;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    sub_1D6C4D24C(v14 | 0x3000000000000000);
    sub_1D60107F0(v12, v3, v4);
  }

  if (v5 != 255 && (v5 & 1) != 0)
  {
    sub_1D6189668(v22, v21, v5);
    sub_1D6189668(v22, v21, v5);
    v15 = sub_1D5E26E28(&unk_1F51131A8);
    v16 = swift_allocObject();
    *(v16 + 16) = v22;
    *(v16 + 24) = v21;
    *(v16 + 32) = v15;
    *(v16 + 40) = 0;
    sub_1D6C4D24C(v16 | 0x3000000000000000);
    sub_1D60107F0(v22, v21, v5);
  }

  if (v6 != 255 && (v6 & 1) != 0)
  {
    sub_1D6189668(v24, v23, v6);
    sub_1D6189668(v24, v23, v6);
    v17 = sub_1D5E26E28(&unk_1F51131D0);
    v18 = swift_allocObject();
    *(v18 + 16) = v24;
    *(v18 + 24) = v23;
    *(v18 + 32) = v17;
    *(v18 + 40) = 0;
    sub_1D6C4D24C(v18 | 0x3000000000000000);
    sub_1D60107F0(v24, v23, v6);
  }
}

void sub_1D62A324C()
{
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  if (*(v0 + 24))
  {
    if ((v4 & 1) == 0)
    {
      return;
    }

    sub_1D60AFDB4(*v0, *(v0 + 8), v4, 1);
    v5 = sub_1D5E26E28(&unk_1F5113298);
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    *(v6 + 32) = v5;
    *(v6 + 40) = 0;
  }

  else
  {
    v9[0] = *v0;
    v9[1] = v2;
    v9[2] = v4;
    v10 = 0;
    sub_1D60AFDB4(v3, v2, v4, 0);
    v7 = sub_1D703E0C8(v9, &v10);
    if (v1)
    {
      return;
    }

    v8 = v7;
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    *(v6 + 32) = v8;
    *(v6 + 40) = 0;
  }

  sub_1D6C4D24C(v6 | 0x3000000000000000);
}

double sub_1D62A337C(uint64_t *a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);

  sub_1D6287A8C(a1);

  if (!v2)
  {
    if (v4 >= 3)
    {
      sub_1D6273544(a1, v4);
    }

    if (v5)
    {
      sub_1D62938C4(a1);
    }

    if (v8)
    {
      sub_1D5C75A4C(v6, v7, 1);
      v10 = sub_1D5E26E28(&unk_1F51133B0);
      v11 = swift_allocObject();
      *(v11 + 16) = v6;
      *(v11 + 24) = v7;
      *(v11 + 32) = v10;
      *(v11 + 40) = 0;
      sub_1D6C4D24C(v11 | 0x3000000000000000);
    }
  }

  return result;
}

double sub_1D62A34F8(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 112);
  v19[2] = *(v1 + 96);
  v19[3] = v7;
  v19[4] = *(v1 + 128);
  v20 = *(v1 + 144);
  v8 = *(v1 + 80);
  v19[0] = *(v1 + 64);
  v19[1] = v8;
  v9 = *(v1 + 152);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v4)
    {
      sub_1D6273544(a1, v4);
    }

    if ((~v5 & 0xF000000000000007) != 0)
    {

      sub_1D62891F0(a1, v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (v6)
    {
      sub_1D626FA1C(a1, v6);
    }

    if (v20 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v19, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if ((~v9 & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }
  }

  return result;
}

void sub_1D62A3700(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 104);
  v17[2] = *(v1 + 88);
  v17[3] = v6;
  v17[4] = *(v1 + 120);
  v18 = *(v1 + 136);
  v7 = *(v1 + 72);
  v17[0] = *(v1 + 56);
  v17[1] = v7;
  v8 = *(v1 + 144);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if ((~v5 & 0xF000000000000007) != 0)
    {

      sub_1D62891F0(a1, v9, v10, v11, v12, v13, v14, v15, v16);
    }

    if (v4)
    {
      sub_1D626FA1C(a1, v4);
    }

    if (v18 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v17, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if (v8)
    {
      sub_1D6273544(a1, v8);
    }
  }
}

double sub_1D62A3874(uint64_t a1)
{
  if (*v1 >> 62 == 1)
  {
    v2 = *v1 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = *(v2 + 0x10);
    v4 = *(v2 + 0x18);
    sub_1D5EB1500(*(v2 + 16));

    sub_1D6288D68(a1, v3, v4);
    sub_1D5EB15C4(v3);
  }

  return result;
}

void sub_1D62A38F4(void *a1)
{
  v3 = *(v1 + 144);
  v9[8] = *(v1 + 128);
  v9[9] = v3;
  v10 = *(v1 + 160);
  v4 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v4;
  v5 = *(v1 + 112);
  v9[6] = *(v1 + 96);
  v9[7] = v5;
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v6;
  v7 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v7;
  v8 = sub_1D62B4E2C(v9);
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      sub_1D5D04BC4(v9);
      sub_1D62914C8(a1);
    }
  }

  else
  {
    sub_1D5D04BC4(v9);
  }
}

void sub_1D62A39C8(uint64_t *a1)
{
  if (*(v1 + 17) <= 2u)
  {
    if (!*(v1 + 17))
    {

      sub_1D6290ACC(a1);

      return;
    }

    if (*(v1 + 17) == 1)
    {
      v2 = *(v1 + 8);
      if (!v2)
      {
        return;
      }
    }

    else
    {
      v2 = *v1;
    }

    sub_1D6273544(a1, v2);
  }
}

double sub_1D62A3A64(uint64_t a1, __n128 a2)
{
  v5 = *v2;
  v6 = *v2 >> 62;
  if (v6)
  {
    if (v6 != 1)
    {
      v7 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = *(v7 + 24);
      v17[0] = *(v7 + 16);
      swift_retain_n();

      sub_1D62A3A64(a1, v9);
      if (v3)
      {
      }

      else
      {

        sub_1D62844E8(a1, v8, sub_1D62A3A64);
      }
    }
  }

  else if (*(v5 + 40))
  {
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    v13 = *(v5 + 32);
    v17[0] = v12;
    v17[1] = v11;
    v17[2] = v13;
    v18 = 6;
    sub_1D62B6164(v12, v11, v13, 1);
    sub_1D62B6164(v12, v11, v13, 1);
    v14 = sub_1D703E0C8(v17, &v18);
    if (v3)
    {
      return sub_1D62B61A8(v12, v11, v13, 1);
    }

    else
    {
      v15 = v14;
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = v11;
      *(v16 + 32) = v15;
      *(v16 + 40) = 0;

      sub_1D6C4D24C(v16 | 0x3000000000000000);
      sub_1D62B61A8(v12, v11, v13, 1);
    }
  }

  return result;
}

double sub_1D62A3C60(uint64_t a1)
{
  v2 = *v1;
  if (*v1 >= 2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    sub_1D5D0A57C(v3);

    sub_1D6288CD4(a1, v3, v4);
    sub_1D5D0A58C(v3);
  }

  return result;
}

double sub_1D62A3CD8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 96);

  sub_1D626FB44(a1, v4);

  return result;
}

double sub_1D62A3D94(char **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1D5CF6D20(a1, a2, a3, a4);
  if (!v5)
  {
    sub_1D5CFF904(a1, a2, a4);

    sub_1D5D07D58(a1, a2);
  }

  return result;
}

void sub_1D62A3E3C(char **a1, __int128 *a2, void *a3, uint64_t a4)
{
  v9 = a2[5];
  v29[4] = a2[4];
  v29[5] = v9;
  v29[6] = a2[6];
  v10 = a2[1];
  v29[0] = *a2;
  v29[1] = v10;
  v11 = a2[3];
  v29[2] = a2[2];
  v29[3] = v11;
  v12 = *v4;
  v13 = *(*v4 + 32);
  v23 = *(*v4 + 16);
  v24 = v13;
  *v25 = *(v12 + 48);
  *&v25[15] = *(v12 + 63);
  sub_1D5CF6D20(a1, a2, a3, a4);
  if (!v5)
  {
    v14 = v4[1];
    v15 = a2[5];
    v26 = a2[4];
    v27 = v15;
    v28 = a2[6];
    v16 = a2[1];
    v23 = *a2;
    v24 = v16;
    v17 = a2[3];
    *v25 = a2[2];
    *&v25[16] = v17;
    v18 = a3[2];
    v19 = a3[3];
    v20 = a3[4];
    v21 = type metadata accessor for FormatCommandValue.CaseValue(0, v18, v19, v20);
    sub_1D72229B8(a1, &v23, v14, v21, &off_1F51420B8);
    v22 = type metadata accessor for FormatCommandValue.DefaultValue(0, v18, v19, v20);
    sub_1D62A44B8(a1, v29, v22);
  }
}

double sub_1D62A3F74(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v16[4] = a2[4];
  v16[5] = v3;
  v16[6] = a2[6];
  v4 = a2[1];
  v16[0] = *a2;
  v16[1] = v4;
  v5 = a2[3];
  v6 = *v2;
  v7 = *v2 >> 62;
  v16[2] = a2[2];
  v16[3] = v5;
  if (v7 == 1)
  {
    v8 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[4];

    sub_1D5CF6C3C(a1, v16, v9, v10, v11, v13, v14);
  }

  return *&v5;
}

void sub_1D62A4030(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v9[6] = a2[6];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  if ((*v2 & 0x8000000000000000) != 0)
  {
    v8 = *(*((*v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 24);

    sub_1D6E63B28(a1, v9, v8);
    if (!v3)
    {

      sub_1D62A4030(a1, v9);
    }
  }
}

double sub_1D62A40F4(uint64_t a1, _OWORD *a2, __n128 a3)
{
  sub_1D6E63B28(a1, a2, *(v3 + 24));
  if (!v4)
  {

    sub_1D62A4030(a1, a2);
  }

  return result;
}

uint64_t sub_1D62A4164(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[3];
  v8 = a2[5];
  v26 = a2[4];
  v27 = v8;
  v9 = a2[5];
  v28 = a2[6];
  v10 = a2[1];
  v23[0] = *a2;
  v23[1] = v10;
  v11 = a2[3];
  v13 = *a2;
  v12 = a2[1];
  v24 = a2[2];
  v25 = v11;
  v22[4] = v26;
  v22[5] = v9;
  v22[6] = a2[6];
  v22[0] = v13;
  v22[1] = v12;
  v14 = *v4;
  v15 = v4[3];
  v22[2] = v24;
  v22[3] = v7;
  v16 = *(v14 + 80);
  v17 = type metadata accessor for FormatCommandActionValue.CaseValue(0, v16, a3, a4);
  result = sub_1D72229B8(a1, v22, v15, v17, &off_1F51420D8);
  if (!v5)
  {
    v21 = type metadata accessor for FormatCommandActionValue.DefaultValue(0, v16, v19, v20);
    return sub_1D62A44B8(a1, v23, v21);
  }

  return result;
}

double sub_1D62A4264(uint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v9[6] = a2[6];
  v4 = a2[1];
  v9[0] = *a2;
  v9[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  if ((*v2 & 0x8000000000000000) != 0)
  {

    sub_1D62A40F4(a1, v9, v7);
  }

  return *&v5;
}

void sub_1D62A42E0()
{
  nullsub_1();
  if (!v0)
  {
    nullsub_1();
    nullsub_1();
  }
}

uint64_t sub_1D62A4398(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[5];
  v12[4] = a2[4];
  v12[5] = v6;
  v12[6] = a2[6];
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v9 = *v4;
  v10 = type metadata accessor for FormatEquationToken(0, *(a3 + 16), *(a3 + 24), a4);
  return sub_1D72229B8(a1, v12, v9, v10, &off_1F5141078);
}

uint64_t sub_1D62A441C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[5];
  v12[4] = a2[4];
  v12[5] = v6;
  v12[6] = a2[6];
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v9 = *v4;
  v10 = type metadata accessor for FormatSwitchListValue.CaseValue(0, *(a3 + 16), *(a3 + 24), a4);
  return sub_1D72229B8(a1, v12, v9, v10, &off_1F5142048);
}

uint64_t sub_1D62A44B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v6[5];
  v23 = v6[4];
  v24 = v7;
  v25 = v6[6];
  v8 = v6[1];
  v19 = *v6;
  v20 = v8;
  v9 = v6[3];
  v21 = v6[2];
  v22 = v9;
  (*(v10 + 16))(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v4);
  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (swift_dynamicCast())
  {
    v12 = *(&v17 + 1);
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    v15[4] = v23;
    v15[5] = v24;
    v15[6] = v25;
    v15[0] = v19;
    v15[1] = v20;
    v15[2] = v21;
    v15[3] = v22;
    (*(v13 + 8))(a1, v15, v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    return sub_1D5BFB774(&v16, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }
}

double sub_1D62A467C(uint64_t a1, __int128 *a2)
{
  v6 = a2[5];
  v25[4] = a2[4];
  v25[5] = v6;
  v25[6] = a2[6];
  v7 = a2[1];
  v25[0] = *a2;
  v25[1] = v7;
  v8 = a2[3];
  v9 = *v2;
  v10 = *v2 >> 62;
  v25[2] = a2[2];
  v25[3] = v8;
  if (!v10)
  {

    sub_1D62A4818(a1, a2);
    goto LABEL_5;
  }

  v11 = v9 & 0x3FFFFFFFFFFFFFFFLL;
  if (v10 == 1)
  {

    sub_1D62A49E0(a1, a2);
LABEL_5:

    return result;
  }

  v13 = *(v11 + 16);
  v14 = *(v13 + 16);

  sub_1D6E6120C(a1, v25, v14);
  if (!v3)
  {
    v15 = *(v13 + 120);
    v21[5] = *(v13 + 104);
    v21[6] = v15;
    v22[0] = *(v13 + 136);
    *(v22 + 9) = *(v13 + 145);
    v16 = *(v13 + 56);
    v21[1] = *(v13 + 40);
    v21[2] = v16;
    v17 = *(v13 + 88);
    v21[3] = *(v13 + 72);
    v21[4] = v17;
    v21[0] = *(v13 + 24);
    memmove(__dst, (v13 + 24), 0x89uLL);
    if (sub_1D60486AC(__dst) != 1)
    {
      v19[6] = __dst[6];
      v20[0] = v24[0];
      *(v20 + 9) = *(v24 + 9);
      v19[2] = __dst[2];
      v19[3] = __dst[3];
      v19[4] = __dst[4];
      v19[5] = __dst[5];
      v19[0] = __dst[0];
      v19[1] = __dst[1];
      sub_1D62B5354(v21, &v18, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
      sub_1D62B49F0(v19);
    }
  }

  return result;
}

void sub_1D62A4818(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v30[6] = a2[4];
  v30[7] = v4;
  v30[8] = a2[6];
  v5 = a2[1];
  v30[2] = *a2;
  v30[3] = v5;
  v6 = a2[3];
  v30[4] = a2[2];
  v30[5] = v6;
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (*(v2 + 64) == 4)
  {
    v9 = *(v2 + 56);
    v31 = *(v2 + 16);
    v32 = v7;
    v33 = v8;
    v34 = *(v2 + 40);
    v35 = v9;
    sub_1D6E7425C();
    if (v3)
    {
      return;
    }
  }

  else
  {
    nullsub_1();
    if (v3)
    {
      return;
    }
  }

  v10 = *(v2 + 200);
  v11 = *(v2 + 232);
  v21[6] = *(v2 + 216);
  v22[0] = v11;
  *(v22 + 9) = *(v2 + 241);
  v12 = *(v2 + 136);
  v13 = *(v2 + 168);
  v21[2] = *(v2 + 152);
  v21[3] = v13;
  v21[4] = *(v2 + 184);
  v21[5] = v10;
  v21[0] = *(v2 + 120);
  v21[1] = v12;
  v14 = *(v2 + 200);
  v15 = *(v2 + 232);
  v29 = *(v2 + 216);
  v30[0] = v15;
  *(v30 + 9) = *(v2 + 241);
  v16 = *(v2 + 136);
  v17 = *(v2 + 168);
  v25 = *(v2 + 152);
  v26 = v17;
  v27 = *(v2 + 184);
  v28 = v14;
  v23 = *(v2 + 120);
  v24 = v16;
  if (sub_1D60486AC(&v23) != 1)
  {
    v19[6] = v29;
    v20[0] = v30[0];
    *(v20 + 9) = *(v30 + 9);
    v19[2] = v25;
    v19[3] = v26;
    v19[4] = v27;
    v19[5] = v28;
    v19[0] = v23;
    v19[1] = v24;
    sub_1D62B5354(v21, &v18, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
    sub_1D62B49F0(v19);
  }
}

void sub_1D62A49E0(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v36[6] = a2[4];
  v36[7] = v4;
  v36[8] = a2[6];
  v5 = a2[1];
  v36[2] = *a2;
  v36[3] = v5;
  v6 = a2[3];
  v36[4] = a2[2];
  v36[5] = v6;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  if (*(v2 + 64) == 4)
  {
    v11 = *(v2 + 48);
    v10 = *(v2 + 56);
    v43 = v2;
    v12 = *(v2 + 40);
    v37 = v7;
    v38 = v8;
    v39 = v9;
    v40 = v12;
    v41 = v11;
    v42 = v10;
    v13 = v7;
    v14 = v9;
    v15 = v8;
    sub_1D5D615EC(v7, v8);
    sub_1D5D615EC(v14, v12);
    sub_1D5D615EC(v11, v10);
    sub_1D6E7425C();
    sub_1D62B4A44(v13, v15, v14, v12, v11, v10, 4u);
    if (v3)
    {
      return;
    }

    v2 = v43;
  }

  else
  {
    nullsub_1();
    if (v3)
    {
      return;
    }
  }

  v16 = *(v2 + 232);
  v17 = *(v2 + 264);
  v27[6] = *(v2 + 248);
  v28[0] = v17;
  *(v28 + 9) = *(v2 + 273);
  v18 = *(v2 + 168);
  v19 = *(v2 + 200);
  v27[2] = *(v2 + 184);
  v27[3] = v19;
  v27[4] = *(v2 + 216);
  v27[5] = v16;
  v27[0] = *(v2 + 152);
  v27[1] = v18;
  v20 = *(v2 + 232);
  v21 = *(v2 + 264);
  v35 = *(v2 + 248);
  v36[0] = v21;
  *(v36 + 9) = *(v2 + 273);
  v22 = *(v2 + 168);
  v23 = *(v2 + 200);
  v31 = *(v2 + 184);
  v32 = v23;
  v33 = *(v2 + 216);
  v34 = v20;
  v29 = *(v2 + 152);
  v30 = v22;
  if (sub_1D60486AC(&v29) != 1)
  {
    v25[6] = v35;
    v26[0] = v36[0];
    *(v26 + 9) = *(v36 + 9);
    v25[2] = v31;
    v25[3] = v32;
    v25[4] = v33;
    v25[5] = v34;
    v25[0] = v29;
    v25[1] = v30;
    sub_1D62B5354(v27, &v24, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
    sub_1D62B49F0(v25);
  }
}

void sub_1D62A4C28(uint64_t a1, __int128 *a2)
{
  v4 = a2[5];
  v28[4] = a2[4];
  v28[5] = v4;
  v28[6] = a2[6];
  v5 = a2[1];
  v28[0] = *a2;
  v28[1] = v5;
  v6 = a2[3];
  v28[2] = a2[2];
  v28[3] = v6;
  sub_1D6E6120C(a1, v28, *(v2 + 16));
  if (!v3)
  {
    v7 = *(v2 + 104);
    v8 = *(v2 + 136);
    v18[6] = *(v2 + 120);
    v19[0] = v8;
    *(v19 + 9) = *(v2 + 145);
    v9 = *(v2 + 40);
    v10 = *(v2 + 72);
    v18[2] = *(v2 + 56);
    v18[3] = v10;
    v18[4] = *(v2 + 88);
    v18[5] = v7;
    v18[0] = *(v2 + 24);
    v18[1] = v9;
    v11 = *(v2 + 104);
    v12 = *(v2 + 136);
    v26 = *(v2 + 120);
    v27[0] = v12;
    *(v27 + 9) = *(v2 + 145);
    v13 = *(v2 + 40);
    v14 = *(v2 + 72);
    v22 = *(v2 + 56);
    v23 = v14;
    v24 = *(v2 + 88);
    v25 = v11;
    v20 = *(v2 + 24);
    v21 = v13;
    if (sub_1D60486AC(&v20) != 1)
    {
      v16[6] = v26;
      v17[0] = v27[0];
      *(v17 + 9) = *(v27 + 9);
      v16[2] = v22;
      v16[3] = v23;
      v16[4] = v24;
      v16[5] = v25;
      v16[0] = v20;
      v16[1] = v21;
      sub_1D62B5354(v18, &v15, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
      sub_1D62B49F0(v16);
    }
  }
}

uint64_t sub_1D62A4DC4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v38 = a3;
  v4 = v3;
  v36 = a1;
  v6 = *(a3 + 16);
  v7 = sub_1D726393C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v36 - v17;
  v19 = a2[5];
  v56 = a2[4];
  v57 = v19;
  v58 = a2[6];
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = a2[3];
  v54 = a2[2];
  v55 = v21;
  v59 = *(v8 + 16);
  v59(&v36 - v17, v4, v7);
  v41 = *(*(v6 - 8) + 48);
  v22 = v41(v18, 1, v6);
  v40 = v8;
  if (v22 == 1)
  {
    (*(v8 + 8))(v18, v7);
LABEL_7:
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v23 = v40;
    v24 = v4;
    goto LABEL_8;
  }

  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v23 = v40;
  v24 = v4;
  if (!*(&v50 + 1))
  {
LABEL_8:
    sub_1D5BFB774(&v49, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
    v29 = v38;
    goto LABEL_9;
  }

  v25 = v51;
  v26 = *(&v50 + 1);
  __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v27 = v39;
  (*(v25 + 8))(v36, &v42, v26, v25);
  result = __swift_destroy_boxed_opaque_existential_1(&v49);
  v39 = v27;
  v29 = v38;
  if (v27)
  {
    return result;
  }

  v23 = v40;
LABEL_9:
  v59(v14, v24 + *(v29 + 36), v7);
  if (v41(v14, 1, v6) == 1)
  {
    (*(v23 + 8))(v14, v7);
LABEL_15:
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_16;
  }

  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v30 = *(&v50 + 1);
  if (!*(&v50 + 1))
  {
LABEL_16:
    sub_1D5BFB774(&v49, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
    goto LABEL_17;
  }

  v31 = v51;
  __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v32 = v39;
  (*(v31 + 8))(v36, &v42, v30, v31);
  result = __swift_destroy_boxed_opaque_existential_1(&v49);
  if (v32)
  {
    return result;
  }

LABEL_17:
  v33 = v37;
  v59(v37, v24 + *(v29 + 40), v7);
  if (v41(v33, 1, v6) == 1)
  {
    (*(v40 + 8))(v33, v7);
  }

  else
  {
    sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
    if (swift_dynamicCast())
    {
      v34 = *(&v50 + 1);
      if (*(&v50 + 1))
      {
        v35 = v51;
        __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        v46 = v56;
        v47 = v57;
        v48 = v58;
        v42 = v52;
        v43 = v53;
        v44 = v54;
        v45 = v55;
        (*(v35 + 8))(v36, &v42, v34, v35);
        return __swift_destroy_boxed_opaque_existential_1(&v49);
      }

      return sub_1D5BFB774(&v49, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
    }
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  return sub_1D5BFB774(&v49, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
}

void sub_1D62A5318(uint64_t a1, _OWORD *a2)
{
  if (*(v2 + 48) == 4)
  {
    sub_1D6E7425C();
  }

  else
  {
    nullsub_1();
  }
}

void sub_1D62A5420(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v10[4] = a2[4];
  v10[5] = v5;
  v10[6] = a2[6];
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  swift_beginAccess();
  v8 = *(v2 + 72);
  if (!v8 || (, sub_1D6E6120C(a1, v10, v8), , !v3))
  {
    swift_beginAccess();
    v9 = *(v2 + 88);

    sub_1D6E71B64(a1, v10, v9);
  }
}

void sub_1D62A5524(uint64_t result, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  v6 = *(v2 + 40);
  if (v6)
  {
    sub_1D6E6120C(result, v7, v6);
  }
}

double sub_1D62A5570(char **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1 && (a4 & 0xF000000000000007) != 0xF000000000000007)
  {

    sub_1D5CFEE30(a1, a2);
  }

  return result;
}

__n128 sub_1D62A55F4(char **result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v7 = v4[2];
  v6 = v4[3];
  v8 = v4[4];
  v9 = *(v4 + 40);
  v10 = (v9 >> 1) & 0xF;
  if (v10 <= 3)
  {
    if (v10 >= 2)
    {
      if (v10 == 2)
      {
        v12.n128_f64[0] = sub_1D62A98C8(result, a2, a3, a4);
      }

      else
      {
        v23 = *v4;
        v24 = v5;
        v25 = v7;
        v26 = v6;
        v13 = a2[5];
        v20 = a2[4];
        v21 = v13;
        v22 = a2[6];
        v14 = a2[1];
        v16 = *a2;
        v17 = v14;
        v15 = a2[3];
        v18 = a2[2];
        v19 = v15;
        sub_1D6AC6E60(result, &v16, a3, a4);
      }
    }
  }

  else if (v10 - 4 >= 4 && v10 == 8)
  {
    *&v16 = *v4;
    *(&v16 + 1) = v5;
    *&v17 = v7;
    *(&v17 + 1) = v6;
    *&v18 = v8;
    BYTE8(v18) = v9 & 1;
    v12.n128_f64[0] = sub_1D62A99A4(result, a2, a3, a4);
  }

  return v12;
}

uint64_t sub_1D62A56C4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[3];
  v8 = a2[5];
  v25 = a2[4];
  v26 = v8;
  v9 = a2[5];
  v27 = a2[6];
  v10 = a2[1];
  v22[0] = *a2;
  v22[1] = v10;
  v11 = a2[3];
  v13 = *a2;
  v12 = a2[1];
  v23 = a2[2];
  v24 = v11;
  v21[4] = v25;
  v21[5] = v9;
  v21[6] = a2[6];
  v21[0] = v13;
  v21[1] = v12;
  v14 = *v4;
  v21[2] = v23;
  v21[3] = v7;
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v17 = type metadata accessor for FormatSwitchValue.CaseValue(0, v15, v16, a4);
  result = sub_1D72229B8(a1, v21, v14, v17, &off_1F5142038);
  if (!v5)
  {
    v20 = type metadata accessor for FormatSwitchValue.DefaultValue(0, v15, v16, v19);
    return sub_1D62A44B8(a1, v22, v20);
  }

  return result;
}

double sub_1D62A57B8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{

  sub_1D62AF89C(a1, a2);

  if (!v4)
  {

    sub_1D62AF89C(a1, a2);
  }

  return result;
}

double sub_1D62A5850(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{

  sub_1D62ACFC0(a1, a2);

  if (!v4)
  {

    sub_1D62ACFC0(a1, a2);
  }

  return result;
}

double sub_1D62A58E8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{

  sub_1D62AFC20(a1, a2);

  if (!v4)
  {

    sub_1D62AFC20(a1, a2);
  }

  return result;
}

uint64_t sub_1D62A5980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v29 = a3;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v11[5];
  v44 = v11[4];
  v45 = v12;
  v46 = v11[6];
  v13 = v11[1];
  v40 = *v11;
  v41 = v13;
  v14 = v11[3];
  v42 = v11[2];
  v43 = v14;
  v15 = *(v6 + 16);
  v47 = v17;
  v15(&v26 - v16, v17, v5);
  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (swift_dynamicCast())
  {
    v26 = v15;
    v28 = v3;
    v18 = *(&v38 + 1);
    v19 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v20 = *(v19 + 8);
    v27 = v4;
    v21 = v28;
    v20(v4, &v30, v18, v19);
    result = __swift_destroy_boxed_opaque_existential_1(&v37);
    if (v21)
    {
      return result;
    }

    v4 = v27;
    v26(v8, v47 + *(v29 + 36), v5);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1D5BFB774(&v37, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
    v15(v8, v47 + *(v29 + 36), v5);
  }

  if (swift_dynamicCast())
  {
    v23 = v4;
    v24 = *(&v38 + 1);
    v25 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    (*(v25 + 8))(v23, &v30, v24, v25);
    return __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    return sub_1D5BFB774(&v37, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }
}

void sub_1D62A5C6C(char **a1, __n128 *a2)
{

  sub_1D5CF94EC(a1, a2, v5, v6);

  if (!v2)
  {
    sub_1D5CF8420(a1, a2);
  }
}

void sub_1D62A5CE4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  if (a3 >= 2)
  {
    v8 = a4;
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    sub_1D5D0A57C(v9);

    sub_1D62A5CE4(a1, a2, v9, v10, v11);
    sub_1D5D0A58C(v9);

    if (v5)
    {
      return;
    }

    a4 = v8;
  }

  sub_1D6E5D26C(a1, a2, a4);
}

void sub_1D62A5D84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  if (a3 >> 62 == 1)
  {
    v8 = a4;
    v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v9);

    sub_1D62A5D84(a1, a2, v9, v10, v11);
    sub_1D5EB15C4(v9);

    if (v5)
    {
      return;
    }

    a4 = v8;
  }

  sub_1D6E5EA3C(a1, a2, a4);
}

void sub_1D62A5E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_2;
  }

  v5 = a4;
  v6 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v7 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v8 = a1;
  v9 = a2;

  sub_1D62A5E2C(v8, v9, v6, v7);

  if (!v4)
  {
    a4 = v5;
    a2 = v9;
    a1 = v8;
LABEL_2:
    sub_1D6E5FC70(a1, a2, a4);
  }
}

uint64_t sub_1D62A5EDC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);

  if (swift_dynamicCast())
  {
    v8 = *(&v16 + 1);
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    v10 = a2[5];
    v14[4] = a2[4];
    v14[5] = v10;
    v14[6] = a2[6];
    v11 = a2[1];
    v14[0] = *a2;
    v14[1] = v11;
    v12 = a2[3];
    v14[2] = a2[2];
    v14[3] = v12;
    (*(v9 + 8))(a1, v14, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(&v15);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1D5BFB774(&v15, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }

  return sub_1D6E60D7C(a1, a2, a4);
}

uint64_t sub_1D62A60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return a6(a1, a2, a4);
  }

  v11 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

  a5(a1, a2, v11, v12);

  if (!v6)
  {
    return a6(a1, a2, a4);
  }

  return result;
}

void sub_1D62A61D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v9[5];
  v33 = v9[4];
  v34 = v10;
  v35 = v9[6];
  v11 = v9[1];
  v29 = *v9;
  v30 = v11;
  v12 = v9[3];
  v31 = v9[2];
  v32 = v12;
  (*(v13 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v7);
  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (swift_dynamicCast())
  {
    v14 = *(&v27 + 1);
    v15 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    (*(v15 + 8))(a1, &v19, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(&v26);
    if (v4)
    {
      return;
    }
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1D5BFB774(&v26, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }

  v16 = sub_1D61834A8(a3);
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v18 = type metadata accessor for FormatSelectorValueSelector(0, v7, *(a3 + 24), v17);

  sub_1D72229B8(a1, &v19, v16, v18, &off_1F5141928);
}

void sub_1D62A6440(char **a1, __int128 *a2)
{
  v5 = *v2;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v11[6] = a2[6];
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  swift_beginAccess();
  v9 = *(v5 + 48);

  sub_1D5CF6244(a1, v11, v9);

  if (!v3)
  {
    swift_beginAccess();
    v10 = *(v5 + 32);

    sub_1D5CF6090(a1, v11, v10);
  }
}

uint64_t sub_1D62A6528(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  return sub_1D5CF8C68(a1, v7, *v2);
}

uint64_t sub_1D62A6570(uint64_t result, __int128 *a2)
{
  if (!v3)
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 104);
    v6 = *(v2 + 168);
    if (*(v2 + 96))
    {
      v7 = a2[5];
      v19 = a2[4];
      v20 = v7;
      v21 = a2[6];
      v8 = a2[1];
      v15 = *a2;
      v16 = v8;
      v9 = a2[3];
      v10 = a2;
      v17 = a2[2];
      v18 = v9;
      v11 = result;
      sub_1D5CF8C68(result, &v15, v4);
    }

    else
    {
      *&v15 = *(v2 + 32);
      v11 = result;
      v10 = a2;
      sub_1D5CF9A24(result, a2);
    }

    if (v6)
    {
      v12 = v10[5];
      v19 = v10[4];
      v20 = v12;
      v21 = v10[6];
      v13 = v10[1];
      v15 = *v10;
      v16 = v13;
      v14 = v10[3];
      v17 = v10[2];
      v18 = v14;
      return sub_1D5CF8C68(v11, &v15, v5);
    }

    else
    {
      *&v15 = v5;
      return sub_1D5CF9A24(v11, v10);
    }
  }

  return result;
}

void sub_1D62A6658(unint64_t a1, _OWORD *a2)
{
  v6 = *(v2 + 8);

  sub_1D5CF94EC(a1, a2);

  if (!v3)
  {
    if (v6)
    {
      sub_1D5CF8420(a1, a2);
    }
  }
}

void sub_1D62A66D4(uint64_t a1, __int128 *a2)
{
  v6 = *v2;
  v7 = *(v2 + 11);
  v8 = *(v2 + 15);
  v29 = *(v2 + 13);
  v30[0] = v8;
  *(v30 + 9) = *(v2 + 129);
  v9 = *(v2 + 3);
  v10 = *(v2 + 7);
  v25 = *(v2 + 5);
  v26 = v10;
  v27 = *(v2 + 9);
  v28 = v7;
  v23 = *(v2 + 1);
  v24 = v9;
  v22 = v6;

  sub_1D62ACFC0(a1, a2);
  if (v3)
  {
  }

  else
  {

    v20 = v29;
    v21[0] = v30[0];
    *(v21 + 9) = *(v30 + 9);
    v16 = v25;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v14 = v23;
    v15 = v24;
    if (sub_1D60486AC(&v14) != 1)
    {
      v12[6] = v20;
      v13[0] = v21[0];
      *(v13 + 9) = *(v21 + 9);
      v12[2] = v16;
      v12[3] = v17;
      v12[4] = v18;
      v12[5] = v19;
      v12[0] = v14;
      v12[1] = v15;
      sub_1D62B5354(&v23, &v11, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
      sub_1D62B49F0(v12);
    }
  }
}

__n128 sub_1D62A6830(uint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  sub_1D6E610B8(a1, v7, *v2);
  return result;
}

uint64_t sub_1D62A68B8(uint64_t result, uint64_t a2)
{
  v4 = v2[1];
  v5 = v2[2];
  if (*v2 >> 62 == 1)
  {
    v6 = result;
    v7 = a2;
    result = sub_1D62A8874(result, a2);
    if (v3)
    {
      return result;
    }

    a2 = v7;
    result = v6;
  }

  if ((v4 & 0xFE) != 0xC && (v5 & 0xC000000000000000) == 0x4000000000000000)
  {
    return sub_1D62A8874(result, a2);
  }

  return result;
}

uint64_t sub_1D62A696C(uint64_t result, uint64_t a2)
{
  if ((*v2 & 0xFELL) != 0xC && (v2[1] & 0xC000000000000000) == 0x4000000000000000)
  {
    return sub_1D62A8874(result, a2);
  }

  return result;
}

uint64_t sub_1D62A69C8(uint64_t result, uint64_t a2)
{
  if (*(v2 + 8) >> 62 == 1)
  {
    return sub_1D62A8874(result, a2);
  }

  return result;
}

double sub_1D62A6A30(char **a1, __int128 *a2, __n128 a3)
{
  v6 = *v3;
  v7 = *(v3 + 40);
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  sub_1D62B4B68(*v3, v12, v13, v14, v15, v7, a3);
  v10 = sub_1D62A55F4(a1, a2, v8, v9);
  return sub_1D62B4C5C(v6, v12, v13, v14, v15, v7, v10);
}

void sub_1D62A6B10(char **a1, __int128 *a2)
{
  v5 = *v2;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v11[6] = a2[6];
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  swift_beginAccess();
  v9 = *(v5 + 40);

  sub_1D5CF6244(a1, v11, v9);

  if (!v3)
  {
    swift_beginAccess();
    v10 = *(v5 + 32);

    sub_1D5CF6090(a1, v11, v10);
  }
}

double sub_1D62A6BF8(char **a1, __int128 *a2)
{
  v4 = *v2;
  v5 = a2[5];
  v10[4] = a2[4];
  v10[5] = v5;
  v10[6] = a2[6];
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  swift_beginAccess();
  v8 = *(v4 + 56);

  sub_1D5CF6244(a1, v10, v8);

  return result;
}

double sub_1D62A6C94(uint64_t a1, __int128 *a2)
{

  sub_1D5CF9A24(a1, a2);

  return result;
}

double sub_1D62A6CF8(char **a1, __int128 *a2)
{

  sub_1D5CF4F50(a1, a2);

  return result;
}

uint64_t sub_1D62A6D68()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    v4 = v0 + 32;
    v2 = *(v0 + 32);
    v3 = *(v4 + 8);
    sub_1D5E433CC(v2, v3, v1);
    return sub_1D5E43440(v2, v3, v1);
  }

  return result;
}

void sub_1D62A6DE8(uint64_t result, uint64_t a2)
{
  v3 = v2[1];
  v9 = *v2;
  v10 = v3;
  v4 = v2[3];
  v11 = v2[2];
  v12 = v4;
  v13 = *(v2 + 64);
  if (v13 > 1u)
  {
    if (v13 != 2)
    {
      return;
    }

    v6 = v10;
    v7 = v10 & 0xF000000000000007;
  }

  else
  {
    if (!v13)
    {
      if ((v9 & 0xF000000000000007) != 0x7000000000000007)
      {
        v5 = (v9 >> 57) & 0x78 | v9 & 7;
        if (v5 == 95 || v5 == 127)
        {
          sub_1D614F7CC(&v9);
          return;
        }

        if (v9 >> 62 == 3)
        {
          goto LABEL_17;
        }
      }

      return;
    }

    v6 = *(&v12 + 1);
    v7 = *(&v12 + 1) & 0xB000000000000007 | 0x4000000000000000;
  }

  if (v7 != 0x7000000000000007 && ((v6 >> 57) & 0xF8 | v6 & 7 | 0x20) != 0x7F && v6 >> 62 == 3)
  {
LABEL_17:
    sub_1D62B3700(result, a2);
  }
}

double sub_1D62A6F08(uint64_t a1, __int128 *a2)
{
  if (!*(v2 + 56) && (*(v2 + 48) & 0xF000000000000007) != 0xD000000000000007 && (*v2 & 0xF000000000000007) != 0xF000000000000007)
  {

    sub_1D5CF9A24(a1, a2);
  }

  return result;
}

double sub_1D62A6FB0(uint64_t a1, __int128 *a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {

    sub_1D5CF9A24(a1, a2);
  }

  return result;
}

void sub_1D62A7020(char **a1, __int128 *a2)
{
  v20[0] = *v2;
  v6 = v20[0];
  *(v20 + 9) = *(v2 + 9);
  *v18 = v6;
  *&v18[9] = *(v20 + 9);
  v7 = a2[5];
  v15 = a2[4];
  v16 = v7;
  v17 = a2[6];
  v8 = a2[1];
  v11 = *a2;
  v12 = v8;
  v9 = a2[3];
  v13 = a2[2];
  v14 = v9;
  sub_1D62B745C(v20, &v10);
  sub_1D607AC1C(a1);
  sub_1D5F57FEC(*v18, *&v18[8], *&v18[16], v18[24]);
  if (!v3)
  {
    v19 = *(v2 + 32);
    *&v11 = v19;
    sub_1D62B74B8(&v19, v18);
    sub_1D5D0350C(a1, a2);
  }
}

void sub_1D62A7114(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_retain_n();

  sub_1D5CF9A24(a1, a2);
  if (v5)
  {
  }

  else
  {

    sub_1D6E6415C(a1, a2, a4);

    sub_1D5CF9A24(a1, a2);
  }
}

uint64_t sub_1D62A7208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 24);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15[5];
  v46 = v15[4];
  v47 = v16;
  v48 = v15[6];
  v17 = v15[1];
  v42 = *v15;
  v43 = v17;
  v18 = v15[3];
  v44 = v15[2];
  v45 = v18;
  v20 = *(v19 + 16);
  v49 = v21;
  v20(v14, v21, v10);
  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (swift_dynamicCast())
  {
    v29 = v6;
    v22 = *(&v40 + 1);
    v23 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v24 = *(v23 + 8);
    v30 = v5;
    v24(v5, &v32, v22, v23);
    result = __swift_destroy_boxed_opaque_existential_1(&v39);
    if (v3)
    {
      return result;
    }

    v6 = v29;
    v5 = v30;
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1D5BFB774(&v39, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }

  (*(v31 + 16))(v8, v49 + *(a3 + 52), v6);
  if (swift_dynamicCast())
  {
    v26 = *(&v40 + 1);
    v27 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v45;
    (*(v27 + 8))(v5, &v32, v26, v27);
    return __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    return sub_1D5BFB774(&v39, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }
}

double sub_1D62A755C(uint64_t a1, _OWORD *a2)
{
  v3 = *v2 >> 61;
  if (v3 <= 1)
  {
    return sub_1D62A7800(a1, a2);
  }

  if (v3 == 2)
  {

    sub_1D62A755C(a1, a2);
  }

  else if (v3 != 3)
  {
    return sub_1D62A7684(a1, a2);
  }

  return result;
}

double sub_1D62A7620(uint64_t a1, __int128 *a2)
{

  sub_1D5CF9A24(a1, a2);

  return result;
}

double sub_1D62A7684(uint64_t a1, _OWORD *a2)
{

  sub_1D5CF9A24(a1, a2);

  if (!v2)
  {

    sub_1D62A755C(a1, a2);
  }

  return result;
}

void sub_1D62A7718(uint64_t a1, __int128 *a2)
{
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v10[6] = a2[6];
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v8 = a2[3];
  v10[2] = a2[2];
  v10[3] = v8;
  v9 = v2[1];
  v11 = *v2;

  sub_1D62A755C(a1, a2);

  if (!v3)
  {
    sub_1D6E6415C(a1, v10, v9);
  }
}

double sub_1D62A7800(uint64_t a1, uint64_t a2)
{

  sub_1D62A755C(a1, a2);

  if (!v2)
  {

    sub_1D62A755C(a1, a2);
  }

  return result;
}

void sub_1D62A7894(uint64_t a1, __int128 *a2)
{
  v4 = a2[5];
  v14[4] = a2[4];
  v14[5] = v4;
  v14[6] = a2[6];
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  v6 = a2[3];
  v7 = *v2;
  v8 = *v2 >> 61;
  v14[2] = a2[2];
  v14[3] = v6;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      sub_1D5CF9A24(a1, a2);
    }

    else if (v8 == 4)
    {

      sub_1D5CF9A24(a1, a2);
    }
  }

  else if (v8 >= 2)
  {
    v9 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    sub_1D62A755C(a1, a2);
    if (v3)
    {
    }

    else
    {

      sub_1D6E6415C(a1, v14, v9);
    }
  }
}

void sub_1D62A7A54(uint64_t a1, __n128 *a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      sub_1D62AC794(a1, a2);
      return;
    }

    if ((*(a3 + 48) & 1) == 0)
    {
      return;
    }

    v7 = *(a3 + 40);
    v8 = *(v7 + 24);

    sub_1D6E6399C(a1, a2, v8);
    if (!v3)
    {
      sub_1D62A7BBC(a1, a2, *(v7 + 32));
    }
  }

  else if (v6 == 2)
  {
    v9 = *(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 24);

    sub_1D6E6198C(a1, a2, v9);
    if (!v3)
    {

      sub_1D62ACC30(a1, a2);
    }
  }

  else if (v6 == 3)
  {
    return;
  }
}

uint64_t sub_1D62A7BBC(uint64_t a1, _OWORD *a2, void *a3)
{
  v14 = a3;
  sub_1D62B7E2C();
  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  v6 = a3;
  if (swift_dynamicCast())
  {
    v7 = *(&v16 + 1);
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    v9 = a2[5];
    v13[4] = a2[4];
    v13[5] = v9;
    v13[6] = a2[6];
    v10 = a2[1];
    v13[0] = *a2;
    v13[1] = v10;
    v11 = a2[3];
    v13[2] = a2[2];
    v13[3] = v11;
    (*(v8 + 8))(a1, v13, v7, v8);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_1D5BFB774(&v15, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }
}

uint64_t sub_1D62A7D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v7[5];
  v24 = v7[4];
  v25 = v8;
  v26 = v7[6];
  v9 = v7[1];
  v20 = *v7;
  v21 = v9;
  v10 = v7[3];
  v22 = v7[2];
  v23 = v10;
  (*(v12 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v11 + 28), v5);
  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (swift_dynamicCast())
  {
    v13 = *(&v18 + 1);
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    v16[4] = v24;
    v16[5] = v25;
    v16[6] = v26;
    v16[0] = v20;
    v16[1] = v21;
    v16[2] = v22;
    v16[3] = v23;
    (*(v14 + 8))(a1, v16, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    return sub_1D5BFB774(&v17, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }
}

double sub_1D62A7EF0(char **a1, __int128 *a2)
{
  if (*(v2 + 16) == 1 && (*v2 & 0xF000000000000007) != 0xF000000000000007)
  {

    sub_1D5CFEE30(a1, a2);
  }

  return result;
}

double sub_1D62A7F6C(char **a1, __int128 *a2)
{
  v3 = *(v2 + 24);
  if (v3 >> 6 > 1)
  {
    v6 = v3 & 0x3F;
    v4 = *(v2 + 8) & 0xF000000000000007;
    v5 = v6 == 1;
  }

  else
  {
    v4 = *v2 & 0xF000000000000007;
    v5 = *(v2 + 16) == 1;
  }

  if (v5 && v4 != 0xF000000000000007)
  {

    sub_1D5CFEE30(a1, a2);
  }

  return result;
}

double sub_1D62A8028(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
    v3 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

    sub_1D5CF6C3C(a1, a2, v3, v4, v5, v8, v9);
  }

  return result;
}

uint64_t sub_1D62A80E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v7[5];
  v24 = v7[4];
  v25 = v8;
  v26 = v7[6];
  v9 = v7[1];
  v20 = *v7;
  v21 = v9;
  v10 = v7[3];
  v22 = v7[2];
  v23 = v10;
  (*(v12 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v11 + 44), v5);
  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (swift_dynamicCast())
  {
    v13 = *(&v18 + 1);
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    v16[4] = v24;
    v16[5] = v25;
    v16[6] = v26;
    v16[0] = v20;
    v16[1] = v21;
    v16[2] = v22;
    v16[3] = v23;
    (*(v14 + 8))(a1, v16, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    return sub_1D5BFB774(&v17, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }
}

void sub_1D62A82C0(char **a1, __int128 *a2)
{
  v6 = type metadata accessor for FormatPropertyDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 16);
  if (v12)
  {
    v13 = 0;
    while (v13 < *(v11 + 16))
    {
      sub_1D62B50EC(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v10, type metadata accessor for FormatPropertyDefinition);
      sub_1D62B0384(a1, a2);
      if (v3)
      {
        sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
        return;
      }

      ++v13;
      sub_1D62B51D0(v10, type metadata accessor for FormatPropertyDefinition);
      if (v12 == v13)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D62A8450(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v39[4] = a2[4];
  v39[5] = v7;
  v39[6] = a2[6];
  v8 = a2[1];
  v39[0] = *a2;
  v39[1] = v8;
  v9 = a2[3];
  v39[2] = a2[2];
  v39[3] = v9;
  v33 = v2[7];
  sub_1D5C82CD8(v33);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v33);
  }

  else
  {
    sub_1D5C92A8C(v33);
    swift_beginAccess();
    v16 = v2[9];

    sub_1D5CF9258(a1, v39, v16, v17, v18, v19, v20, v21);

    v22 = v4[10];
    if (v22)
    {
      v23 = *(v22 + 56);
      if (v23)
      {
        sub_1D5CF6244(a1, v39, v23);
      }

      swift_beginAccess();
      v24 = *(v22 + 64);

      sub_1D6E71448(a1, v39, v24);
    }

    v25 = v4[11];
    if (v25)
    {
      swift_beginAccess();
      v26 = *(v25 + 72);
      if (v26)
      {

        sub_1D6E6120C(a1, v39, v26);
      }

      swift_beginAccess();
      v27 = *(v25 + 88);

      sub_1D6E71B64(a1, v39, v27);
    }

    swift_beginAccess();
    v28 = v4[13];
    if (v28 >> 62 == 1)
    {
      v29 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[13]);
      sub_1D5EB1500(v29);

      sub_1D62A5D84(a1, v39, v29, v30, v31);
      sub_1D5EB15C4(v29);

      sub_1D5EB15C4(v28);
    }

    v32 = v4[15];
    if (v32)
    {
      v34 = v4[16];
      v35 = v4[17];
      v36 = v4[18];
      v37 = v4[19];
      v38 = v4[20];
      sub_1D62A42E0();
      sub_1D5EB1D80(v32, v34, v35, v36, v37, v38);

      sub_1D5CBF568(v37);
    }
  }
}

double sub_1D62A8774(char **a1, __int128 *a2)
{
  v5 = *v2;
  v6 = a2[5];
  v12[4] = a2[4];
  v12[5] = v6;
  v12[6] = a2[6];
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v9 = *(v5 + 56);
  if (!v9 || (sub_1D5CF6244(a1, v12, v9), !v3))
  {
    swift_beginAccess();
    v11 = *(v5 + 64);

    sub_1D6E71448(a1, v12, v11);
  }

  return result;
}

void sub_1D62A8828(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  v6 = *(v2 + 24);
  if (v6)
  {
    sub_1D5CF6244(a1, v7, v6);
  }
}

uint64_t sub_1D62A8874(uint64_t result, uint64_t a2)
{
  if (*(v2 + 8) >> 62 == 1)
  {
    return sub_1D62A8874(result, a2);
  }

  return result;
}

uint64_t sub_1D62A88BC(uint64_t result, uint64_t a2)
{
  if (*v2 >> 62 == 1)
  {
    return sub_1D62A8874(result, a2);
  }

  return result;
}

void sub_1D62A8924(char **a1, __int128 *a2)
{
  v6 = a2[5];
  v14[4] = a2[4];
  v14[5] = v6;
  v14[6] = a2[6];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v9 = *(v2 + 80);
  v10 = *(v2 + 96);
  v11 = *(v2 + 106);
  v12 = *(v2 + 104);

  sub_1D5CF8944(a1, a2);

  if (!v3)
  {

    sub_1D5CF6244(a1, v14, v9);

    v13 = v12 | (v11 << 16);
    if (BYTE2(v13) != 255)
    {
      sub_1D610CA74(v10, v12 | (v11 << 16), SBYTE2(v13), sub_1D610CA28, sub_1D610CA5C);
      sub_1D62A8A9C();
      sub_1D610CA74(v10, v12 | (v11 << 16), SBYTE2(v13), sub_1D60CF6A8, sub_1D60CF6DC);
    }
  }
}

void sub_1D62A8A9C()
{
  v1 = *(v0 + 10);
  if (*(v0 + 10))
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    if (v1 == 1)
    {
      if ((v3 & 0x100) != 0 && v3 != 0xFF)
      {
        v4 = v2;
        v5 = v3;
        v6 = 1;
LABEL_10:
        sub_1D610CA74(v4, v5, v6, sub_1D610CA28, sub_1D610CA5C);
        sub_1D60CF6C8(v2, v3);
      }
    }

    else if (v3 >> 8 <= 0xFE && (v3 & 0x100) != 0 && v3 != 0xFF)
    {
      v4 = v2;
      v5 = v3;
      v6 = 2;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1D62A8BE8(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v18[4] = a2[4];
  v18[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v18[0] = *a2;
  v18[1] = v7;
  v8 = a2[3];
  v18[2] = a2[2];
  v18[3] = v8;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[3];
  v19[2] = v2[2];
  v19[3] = v11;
  v19[1] = v10;
  v18[6] = v6;
  v19[0] = v9;
  v12 = v2[4];
  v13 = v2[5];
  v14 = v2[7];
  v19[6] = v2[6];
  v19[7] = v14;
  v19[4] = v12;
  v19[5] = v13;
  v15 = sub_1D6011280(v19);
  v16 = sub_1D5D756C8(v19);
  if (v15 == 1)
  {
    return sub_1D5CF8C68(a1, v18, *(v16 + 112));
  }

  else
  {
    return sub_1D62A6528(a1, a2);
  }
}

uint64_t sub_1D62A8CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16[5];
  v33 = v16[4];
  v34 = v17;
  v35 = v16[6];
  v18 = v16[1];
  v29 = *v16;
  v30 = v18;
  v19 = v16[3];
  v31 = v16[2];
  v32 = v19;
  (*(v20 + 16))(v15, v21);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    (*(v5 + 32))(v11, v15, v4);
    (*(v5 + 16))(v7, v11, v4);
    sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
    if (swift_dynamicCast())
    {
      v23 = *(&v27 + 1);
      v24 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      v25[4] = v33;
      v25[5] = v34;
      v25[6] = v35;
      v25[0] = v29;
      v25[1] = v30;
      v25[2] = v31;
      v25[3] = v32;
      (*(v24 + 8))(a1, v25, v23, v24);
      (*(v5 + 8))(v11, v4);
      return __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      (*(v5 + 8))(v11, v4);
      return sub_1D5BFB774(&v26, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
    }
  }

  return result;
}

void sub_1D62A9004(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[2];
  v31[3] = a2[3];
  v31[4] = v7;
  v10 = a2[6];
  v31[5] = v8;
  v31[6] = v10;
  v11 = a2[1];
  v31[0] = *a2;
  v31[1] = v11;
  v31[2] = v9;
  swift_beginAccess();
  v30 = v2[8];
  sub_1D5C82CD8(v30);
  sub_1D5CF9048(a1, a2, v12, v13, v14, v15, v16, v17);
  if (v3)
  {
    sub_1D5C92A8C(v30);
  }

  else
  {
    sub_1D5C92A8C(v30);
    swift_beginAccess();
    v18 = v2[11];

    sub_1D5CF9258(a1, v31, v18, v19, v20, v21, v22, v23);

    swift_beginAccess();
    sub_1D62A920C();
    v24 = v4[13];
    if (v24)
    {
      v25 = v4[17];
      v32 = v4[18];
      v27 = v4[15];
      v26 = v4[16];
      v28 = v4[14];
      sub_1D62A42E0();
      sub_1D5EB1D80(v24, v28, v27, v26, v25, v32);

      sub_1D5CBF568(v25);
    }

    swift_beginAccess();
    v29 = v4[19];

    sub_1D5CF6090(a1, v31, v29);
  }
}

void sub_1D62A920C()
{
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  nullsub_1();
  if (!v0)
  {
    swift_beginAccess();
    nullsub_1();
    swift_beginAccess();
  }
}

char **sub_1D62A9398(char **result, __int128 *a2)
{
  if (*v2)
  {
    return sub_1D5CFCC3C(result, a2);
  }

  return result;
}

char **sub_1D62A93D8(char **result, __int128 *a2)
{
  if (*(v2 + 24) < 0)
  {
    return sub_1D5CFCC3C(result, a2);
  }

  return result;
}

double sub_1D62A9404(char **a1, __int128 *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  sub_1D6057D14(v6, v7, v8, v9);
  sub_1D62A93D8(a1, a2);
  return sub_1D6057D74(v6, v7, v8, v9);
}

double sub_1D62A9520(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v16[4] = a2[4];
  v16[5] = v5;
  v16[6] = a2[6];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  v7 = a2[3];
  v16[2] = a2[2];
  v16[3] = v7;
  v8 = v2[8];
  if (!v8 || (v10 = v2[12], v9 = v2[13], v12 = v2[10], v11 = v2[11], v13 = v2[9], sub_1D62A42E0(), sub_1D5EB1D80(v8, v13, v12, v11, v10, v9), , , , , sub_1D5CBF568(v10), , !v3))
  {
    swift_beginAccess();
    v15 = v2[7];

    sub_1D5CF6090(a1, v16, v15);
  }

  return result;
}

double sub_1D62A967C(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 80);
  if (v5 <= -2049)
  {
    v7 = 1 << ((*(v2 + 64) >> 7) & 0x7E | ((*(v2 + 64) & 8) != 0));
    if ((v7 & 0x3EE2) != 0 || (v7 & 0x4119) == 0 && ((1 << (*(v2 + 64) >> 4)) & 0xDF6) != 0)
    {
      sub_1D60107DC(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v5);
    }
  }

  if ((~v6 & 0xF000000000000007) != 0)
  {

    sub_1D5CF9A24(a1, a2);
  }

  return result;
}

double sub_1D62A978C(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v13[4] = a2[4];
  v13[5] = v5;
  v13[6] = a2[6];
  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = v2[10];
  v9 = v2[11];
  v11 = v2[14];
  v10 = v2[15];

  sub_1D5CF4060(a1, v13, v9);

  if (!v3)
  {

    sub_1D5CF6244(a1, v13, v11);

    sub_1D5CFD3E0(a1, v13, v10);

    sub_1D5CF6090(a1, v13, v8);
  }

  return result;
}

double sub_1D62A98C8(char **result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  v8 = *(v4 + 40);
  v9 = v8 >> 5;
  if (v8 >> 5 > 3)
  {
    if (v8 >> 5 <= 5)
    {
      goto LABEL_6;
    }

    if (v9 == 6)
    {
      return sub_1D62A99A4(result, a2, a3, a4);
    }
  }

  else
  {
    if (v8 >> 5 <= 1)
    {
      if (!v9)
      {
        return v13;
      }

LABEL_6:
      v21 = *v4;
      v22 = v5;
      v23 = v6;
      v24 = v7;
      v10 = a2[5];
      v18 = a2[4];
      v19 = v10;
      v20 = a2[6];
      v11 = a2[1];
      v14 = *a2;
      v15 = v11;
      v12 = a2[3];
      v16 = a2[2];
      v17 = v12;
      sub_1D6AC6E60(result, &v14, a3, a4);
      return v13;
    }

    if (v9 != 2)
    {
      *&v14 = *v4;
      *(&v14 + 1) = v5;
      LOWORD(v15) = v6;
      sub_1D62B2B9C(result, a2);
    }
  }

  return v13;
}

double sub_1D62A99A4(char **a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (*(v4 + 40))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFFE | (v5 >> 1) & 1;
  if (!v9)
  {
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    v5 &= ~2uLL;
LABEL_7:
    v28 = *v4;
    v29 = v5;
    v30 = v7;
    v31 = v6;
    v10 = a2[5];
    v25 = a2[4];
    v26 = v10;
    v27 = a2[6];
    v11 = a2[1];
    v21 = *a2;
    v22 = v11;
    v12 = a2[3];
    v23 = a2[2];
    v24 = v12;
    sub_1D6AC6E60(a1, &v21, v6, a4);
    return result;
  }

  v14 = *(v4 + 32);
  v28 = *(v4 + 8);
  v29 = v7;
  v30 = v6;
  v31 = v14;
  v15 = a2[5];
  v25 = a2[4];
  v26 = v15;
  v27 = a2[6];
  v16 = a2[1];
  v21 = *a2;
  v22 = v16;
  v17 = a2[3];
  v23 = a2[2];
  v24 = v17;
  sub_1D5F58484(v5, v7);
  sub_1D6AC6E60(a1, &v21, v19, v20);
  return sub_1D5F580D0(v28, v29, v30, v31);
}

void sub_1D62A9AB4(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v38[4] = a2[4];
  v38[5] = v5;
  v38[6] = a2[6];
  v6 = a2[1];
  v38[0] = *a2;
  v38[1] = v6;
  v7 = a2[3];
  v38[2] = a2[2];
  v38[3] = v7;
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D6E71844(a1, v38, v8);

  if (!v3)
  {
    v9 = *(v2 + 64);
    if (v9)
    {
      sub_1D5D0AE64(a1, v38, v9);
    }

    v37 = *(v2 + 176);
    v10 = *(v2 + 144);
    v34 = *(v2 + 128);
    v35 = v10;
    v36 = *(v2 + 160);
    v11 = *(v2 + 112);
    v33[0] = *(v2 + 96);
    v33[1] = v11;
    if (v37 != 254)
    {
      *&v22 = v34;
      swift_retain_n();
      sub_1D5CF9A24(a1, v38);

      sub_1D5D0ABCC(v33, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v12 = *(v2 + 232);
    v13 = *(v2 + 248);
    v14 = *(v2 + 200);
    v22 = *(v2 + 184);
    v23 = v14;
    v24 = *(v2 + 216);
    v25 = v12;
    v15 = *(v2 + 296);
    v16 = *(v2 + 328);
    v30 = *(v2 + 312);
    v31 = v16;
    v17 = *(v2 + 264);
    v18 = *(v2 + 280);
    v26 = v13;
    v27 = v17;
    v32 = *(v2 + 344);
    v28 = v18;
    v29 = v15;
    if (sub_1D60081E0(&v22) != 1)
    {
      v20[8] = v30;
      v20[9] = v31;
      v21 = v32;
      v20[4] = v26;
      v20[5] = v27;
      v20[6] = v28;
      v20[7] = v29;
      v20[0] = v22;
      v20[1] = v23;
      v20[2] = v24;
      v20[3] = v25;
      v19 = sub_1D62B4E2C(v20);
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          sub_1D5D04BC4(v20);
          sub_1D62A967C(a1, v38);
        }
      }

      else
      {
        sub_1D5D04BC4(v20);
      }
    }
  }
}

double sub_1D62A9CF8(char **a1, __int128 *a2)
{
  v4 = v2;
  v6 = a2[5];
  v27[4] = a2[4];
  v27[5] = v6;
  v27[6] = a2[6];
  v7 = a2[1];
  v27[0] = *a2;
  v27[1] = v7;
  v8 = a2[3];
  v27[2] = a2[2];
  v27[3] = v8;
  if (!*(v2 + 16) || (sub_1D62A9EC8(a1, a2), !v3))
  {
    v10 = *(v2 + 24);
    if (!v10)
    {
      goto LABEL_8;
    }

    v11 = v3;
    swift_beginAccess();
    v12 = *(v10 + 72);
    if (v12)
    {

      sub_1D6E6120C(a1, v27, v12);

      if (v3)
      {
        return result;
      }

      v11 = 0;
    }

    swift_beginAccess();
    v13 = *(v10 + 88);

    v3 = v11;
    sub_1D6E71B64(a1, v27, v13);

    if (!v11)
    {
LABEL_8:
      swift_beginAccess();
      v26 = *(v4 + 32);
      sub_1D5C82CD8(v26);
      sub_1D5CF9048(a1, v27, v14, v15, v16, v17, v18, v19);
      sub_1D5C92A8C(v26);
      if (!v3)
      {
        swift_beginAccess();
        v20 = *(v4 + 40);

        sub_1D5CF9258(a1, v27, v20, v21, v22, v23, v24, v25);
      }
    }
  }

  return result;
}

void sub_1D62A9EC8(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v25 = a2[4];
  v26 = v5;
  v27 = a2[6];
  v6 = a2[1];
  v21 = *a2;
  v22 = v6;
  v7 = a2[3];
  v23 = a2[2];
  v24 = v7;
  swift_beginAccess();
  v8 = *(v2 + 48);

  sub_1D6E714FC(a1, &v21, v8);
  if (v3)
  {
  }

  else
  {

    v9 = *(v2 + 56);
    v20 = *(v2 + 120);
    v10 = *(v2 + 72);
    v19[0] = v9;
    v19[1] = v10;
    v11 = *(v2 + 104);
    v19[2] = *(v2 + 88);
    v19[3] = v11;
    v12 = v9;
    if (v20 <= 1u)
    {
      if (v20)
      {
        v13 = *(v2 + 72);
        v14 = *(v2 + 104);
        v30 = *(v2 + 88);
        v31 = v14;
        LOBYTE(v32) = *(v2 + 120);
        v28 = *(v2 + 56);
        v29 = v13;
        sub_1D619916C(&v28, v18);
        sub_1D6E610B8(a1, &v21, v12);
        sub_1D5D0ABCC(v19, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
      }
    }

    else if (v20 == 2)
    {
      v32 = v25;
      v33 = v26;
      v34 = v27;
      v28 = v21;
      v29 = v22;
      v30 = v23;
      v31 = v24;
      sub_1D5CF8C68(a1, &v28, *&v19[0]);
    }

    else if (v20 == 3)
    {
      sub_1D5D0ABCC(v19, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    }

    v15 = *(v2 + 128);
    if (v15)
    {
      sub_1D5D0AE64(a1, &v21, v15);
    }

    LOBYTE(v33) = *(v2 + 216);
    v16 = *(v2 + 184);
    v30 = *(v2 + 168);
    v31 = v16;
    v32 = *(v2 + 200);
    v17 = *(v2 + 152);
    v28 = *(v2 + 136);
    v29 = v17;
    if (v33 != 254)
    {
      v18[0] = v30;
      swift_retain_n();
      sub_1D5CF9A24(a1, &v21);

      sub_1D5D0ABCC(&v28, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }
}

void sub_1D62AA134(uint64_t result, __int128 *a2)
{
  v3 = a2[5];
  v6[4] = a2[4];
  v6[5] = v3;
  v6[6] = a2[6];
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = a2[3];
  v6[2] = a2[2];
  v6[3] = v5;
  if (*(v2 + 64) > 1u)
  {
    if (*(v2 + 64) == 2)
    {
      sub_1D62A6528(result, a2);
    }
  }

  else if (*(v2 + 64))
  {
    sub_1D6E610B8(result, v6, *v2);
  }
}

double sub_1D62AA1CC(uint64_t a1, __int128 *a2)
{

  sub_1D5CF9A24(a1, a2);

  return result;
}

uint64_t sub_1D62AA254(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v23[4] = a2[4];
  v23[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v23[0] = *a2;
  v23[1] = v7;
  v8 = a2[3];
  v23[2] = a2[2];
  v23[3] = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 32);
  v23[6] = v6;
  v24[0] = v9;
  v11 = *(v2 + 48);
  v12 = *(v2 + 64);
  v25 = *(v2 + 80);
  v24[2] = v11;
  v24[3] = v12;
  v24[1] = v10;
  v13 = *(v2 + 88);
  v30 = *(v2 + 176);
  v14 = *(v2 + 160);
  v28 = *(v2 + 144);
  v29 = v14;
  v15 = *(v2 + 128);
  v26[1] = *(v2 + 112);
  v27 = v15;
  v26[0] = *(v2 + 96);
  v16 = *&v24[0];
  if (v25 <= 1u)
  {
    if (v25)
    {
      v17 = *(v2 + 64);
      v33 = *(v2 + 48);
      v34 = v17;
      LOBYTE(v35) = *(v2 + 80);
      v18 = *(v2 + 32);
      v31 = *(v2 + 16);
      v32 = v18;
      sub_1D619916C(&v31, v22);
      sub_1D6E610B8(v4, v23, v16);
      result = sub_1D5D0ABCC(v24, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
      if (v3)
      {
        return result;
      }
    }
  }

  else if (v25 == 2)
  {
    v19 = a2[5];
    v35 = a2[4];
    v36 = v19;
    v37 = a2[6];
    v20 = a2[1];
    v31 = *a2;
    v32 = v20;
    v21 = a2[3];
    v33 = a2[2];
    v34 = v21;
    result = sub_1D5CF8C68(result, &v31, *&v24[0]);
    if (v3)
    {
      return result;
    }
  }

  if (!v13 || (result = sub_1D5D0AE64(v4, v23, v13), !v3))
  {
    if (v30 != 254)
    {
      *&v31 = v27;
      swift_retain_n();
      sub_1D5CF9A24(v4, v23);

      return sub_1D5D0ABCC(v26, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }

  return result;
}

void sub_1D62AA454(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v34[4] = a2[4];
  v34[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v34[0] = *a2;
  v34[1] = v7;
  v8 = a2[3];
  v34[2] = a2[2];
  v34[3] = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 48);
  v11 = *(v2 + 64);
  v34[6] = v6;
  v35[0] = v10;
  v12 = *(v2 + 80);
  v13 = *(v2 + 96);
  v14 = *(v2 + 112);
  v39 = *(v2 + 128);
  v37 = v13;
  v38 = v14;
  v35[1] = v11;
  v36 = v12;
  if (!v9 || (sub_1D5D0AE64(a1, v34, v9), !v3))
  {
    if (v39 != 254)
    {
      *&v23 = v36;
      swift_retain_n();
      sub_1D5CF9A24(a1, v34);

      if (v3)
      {
        sub_1D5D0ABCC(v35, &qword_1EDF33718, &type metadata for FormatShadow);
        return;
      }

      sub_1D5D0ABCC(v35, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v15 = *(v2 + 296);
    v31 = *(v2 + 280);
    v32 = v15;
    v33 = *(v2 + 312);
    v16 = *(v2 + 232);
    v27 = *(v2 + 216);
    v28 = v16;
    v17 = *(v2 + 264);
    v29 = *(v2 + 248);
    v30 = v17;
    v18 = *(v2 + 168);
    v23 = *(v2 + 152);
    v24 = v18;
    v19 = *(v2 + 200);
    v25 = *(v2 + 184);
    v26 = v19;
    if (sub_1D60081E0(&v23) != 1)
    {
      v21[8] = v31;
      v21[9] = v32;
      v22 = v33;
      v21[4] = v27;
      v21[5] = v28;
      v21[6] = v29;
      v21[7] = v30;
      v21[0] = v23;
      v21[1] = v24;
      v21[2] = v25;
      v21[3] = v26;
      v20 = sub_1D62B4E2C(v21);
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          sub_1D5D04BC4(v21);
          sub_1D62A967C(a1, v34);
        }
      }

      else
      {
        sub_1D5D04BC4(v21);
      }
    }
  }
}

void sub_1D62AA658(unint64_t a1, __int128 *a2)
{
  v4 = a2[5];
  v16[4] = a2[4];
  v16[5] = v4;
  v16[6] = a2[6];
  v5 = a2[1];
  v16[0] = *a2;
  v16[1] = v5;
  v6 = a2[3];
  v7 = *v2;
  v8 = *v2 >> 61;
  v16[2] = a2[2];
  v16[3] = v6;
  if (v8 <= 3)
  {
    if (v8 != 2)
    {
      return;
    }

    v9 = *(*((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 24);

    sub_1D6E73DD0(a1, v16, v9);
    if (!v3)
    {

      sub_1D62AA658(a1, v16);
    }

    goto LABEL_13;
  }

  if (v8 == 4)
  {
    sub_1D62AA658(a1, a2);
    if (!v3)
    {
      sub_1D62AA658(a1, a2);
    }
  }

  else if (v8 == 5)
  {
    v11 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D62AA658(a1, a2);
    if (!v3)
    {
      if (v11)
      {

        sub_1D5CF8420(a1, a2);
LABEL_13:
      }
    }
  }
}

void sub_1D62AA7E4(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v36[4] = a2[4];
  v36[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v36[0] = *a2;
  v36[1] = v7;
  v8 = a2[3];
  v36[2] = a2[2];
  v36[3] = v8;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[3];
  v37[2] = v2[2];
  v37[3] = v11;
  v36[6] = v6;
  v37[0] = v9;
  v37[1] = v10;
  v12 = v2[4];
  v13 = v2[5];
  v14 = v2[6];
  v15 = v2[7];
  v38 = *(v2 + 128);
  v37[6] = v14;
  v37[7] = v15;
  v37[4] = v12;
  v37[5] = v13;
  v16 = sub_1D5F78DC4(v37);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = sub_1D5DEA32C(v37);
      v32 = *(v17 + 80);
      v33 = *(v17 + 96);
      v34 = *(v17 + 112);
      v35 = *(v17 + 128);
      v28 = *(v17 + 16);
      v29 = *(v17 + 32);
      v30 = *(v17 + 48);
      v31 = *(v17 + 64);
      v27 = *v17;
      sub_1D62AA984(a1, a2);
    }

    else
    {
      sub_1D5DEA32C(v37);
    }
  }

  else
  {
    v18 = sub_1D5DEA32C(v37);
    sub_1D5F78F40(v18, v26);
    v31 = v26[4];
    v32 = v26[5];
    v33 = v26[6];
    v34 = v26[7];
    v27 = v26[0];
    v28 = v26[1];
    v29 = v26[2];
    v30 = v26[3];
    v19 = sub_1D6011280(&v27);
    v20 = sub_1D5D756C8(&v27);
    if (v19 == 1)
    {
      v21 = v20[14];
      v22 = v36;
    }

    else
    {
      v21 = *v20;
      v23 = a2[5];
      v39[4] = a2[4];
      v39[5] = v23;
      v39[6] = a2[6];
      v24 = a2[1];
      v39[0] = *a2;
      v39[1] = v24;
      v25 = a2[3];
      v39[2] = a2[2];
      v39[3] = v25;
      v22 = v39;
    }

    sub_1D5CF8C68(a1, v22, v21);
  }
}

void sub_1D62AA984(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v44[4] = a2[4];
  v44[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v44[0] = *a2;
  v44[1] = v7;
  v8 = a2[3];
  v44[2] = a2[2];
  v44[3] = v8;
  v9 = *v2;
  v10 = *(v2 + 16);
  v44[6] = v6;
  v45 = v9;
  v11 = *(v2 + 32);
  v12 = *(v2 + 64);
  v48 = *(v2 + 48);
  v49 = v12;
  v14 = *(v2 + 16);
  v13 = *(v2 + 32);
  v15 = *v2;
  v46 = v10;
  v47 = v13;
  v16 = *(v2 + 96);
  v52 = *(v2 + 112);
  v17 = *(v2 + 96);
  v18 = *(v2 + 64);
  v50 = *(v2 + 80);
  v51 = v17;
  v19 = *(v2 + 112);
  v54[6] = v16;
  v54[7] = v19;
  v54[2] = v11;
  v54[3] = v48;
  v53 = *(v2 + 128);
  v55 = *(v2 + 128);
  v54[4] = v18;
  v54[5] = v50;
  v54[0] = v15;
  v54[1] = v14;
  if (sub_1D6011234(v54) == 1)
  {
    v33[0] = *sub_1D5D756B8(v54);
    v37 = v47;
    v38 = v48;
    v35 = v45;
    v36 = v46;
    v43 = v53;
    v41 = v51;
    v42 = v52;
    v39 = v49;
    v40 = v50;
    sub_1D5D756B8(&v35);

    sub_1D5CF9A24(a1, a2);
  }

  else
  {
    v20 = sub_1D5D756B8(v54);
    v21 = v20[3];
    v23 = *v20;
    v22 = v20[1];
    v34[2] = v20[2];
    v34[3] = v21;
    v34[0] = v23;
    v34[1] = v22;
    v24 = v20[7];
    v26 = v20[4];
    v25 = v20[5];
    v34[6] = v20[6];
    v34[7] = v24;
    v34[4] = v26;
    v34[5] = v25;
    if (sub_1D6011280(v34) == 1)
    {
      v27 = *(sub_1D5D756C8(v34) + 112);
      v43 = v53;
      v41 = v51;
      v42 = v52;
      v37 = v47;
      v38 = v48;
      v39 = v49;
      v40 = v50;
      v35 = v45;
      v36 = v46;
      v28 = sub_1D5D756B8(&v35);
      sub_1D62B73AC(v28, v33);
      sub_1D5CF8C68(a1, v44, v27);
      sub_1D62B7408(&v45);
    }

    else
    {
      v29 = *sub_1D5D756C8(v34);
      v30 = a2[5];
      v39 = a2[4];
      v40 = v30;
      v41 = a2[6];
      v31 = a2[1];
      v35 = *a2;
      v36 = v31;
      v32 = a2[3];
      v37 = a2[2];
      v38 = v32;
      sub_1D5CF8C68(a1, &v35, v29);
    }
  }
}

uint64_t sub_1D62AABD4(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v24[4] = a2[4];
  v24[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v24[0] = *a2;
  v24[1] = v7;
  v8 = a2[3];
  v24[2] = a2[2];
  v24[3] = v8;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[3];
  v27 = v2[2];
  v28 = v11;
  v12 = v2[2];
  v13 = *v2;
  v26 = v2[1];
  v24[6] = v6;
  v25 = v9;
  v14 = v2[5];
  v15 = v2[7];
  v31 = v2[6];
  v32 = v15;
  v16 = v2[3];
  v17 = v2[5];
  v29 = v2[4];
  v30 = v17;
  v33[2] = v12;
  v33[3] = v16;
  v33[0] = v13;
  v33[1] = v10;
  v18 = v2[7];
  v33[6] = v31;
  v33[7] = v18;
  v33[4] = v29;
  v33[5] = v14;
  if (sub_1D6011280(v33) == 1)
  {
    v19 = *(sub_1D5D756C8(v33) + 112);
    v23[4] = v29;
    v23[5] = v30;
    v23[6] = v31;
    v23[7] = v32;
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    v23[3] = v28;
    v20 = sub_1D5D756C8(v23);
    sub_1D60865E4(v20, &v22);
    sub_1D5CF8C68(a1, v24, v19);
    return sub_1D62B7E78(&v25);
  }

  else
  {
    sub_1D5D756C8(v33);
    return sub_1D62A6528(a1, a2);
  }
}

uint64_t sub_1D62AAD28(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v11[6] = a2[6];
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  sub_1D5F78F40(v2, v12);
  sub_1D5F78F40(v12, v13);
  v14[4] = v13[4];
  v14[5] = v13[5];
  v14[6] = v13[6];
  v14[7] = v13[7];
  v14[0] = v13[0];
  v14[1] = v13[1];
  v14[2] = v13[2];
  v14[3] = v13[3];
  v8 = sub_1D6011280(v14);
  v9 = sub_1D5D756C8(v14);
  if (v8 == 1)
  {
    return sub_1D5CF8C68(a1, v11, *(v9 + 112));
  }

  else
  {
    return sub_1D62A6528(a1, a2);
  }
}

double sub_1D62AAE6C(uint64_t a1, _OWORD *a2)
{
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v11[6] = a2[6];
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v9 = *v2;
  v8 = v2[1];
  if (!v9 || (, sub_1D6E5FB2C(a1, v11, v9), , !v3))
  {
    if (v8)
    {

      sub_1D6E5FB2C(a1, v11, v8);
    }
  }

  return *&v7;
}

double sub_1D62AAF1C(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v9[6] = a2[6];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v7 = *v2;

  sub_1D6E5FB2C(a1, v9, v7);

  return result;
}

unint64_t sub_1D62AAFCC(unint64_t result, _OWORD *a2)
{
  v3 = a2[5];
  v10[4] = a2[4];
  v10[5] = v3;
  v10[6] = a2[6];
  v4 = a2[1];
  v10[0] = *a2;
  v10[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = *v2;
  if (*v2 >= 3)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = result;
    sub_1D5D0AFBC(v7);
    sub_1D5D0AFBC(v8);
    sub_1D5D0AFDC(v9, v10, v7, v8);
    sub_1D5D0AFCC(v7);
    return sub_1D5D0AFCC(v8);
  }

  return result;
}

void sub_1D62AB09C(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v40[4] = a2[4];
  v40[5] = v7;
  v40[6] = a2[6];
  v8 = a2[1];
  v40[0] = *a2;
  v40[1] = v8;
  v9 = a2[3];
  v40[2] = a2[2];
  v40[3] = v9;
  v34 = v2[4];
  sub_1D5C82CD8(v34);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v34);
  }

  else
  {
    sub_1D5C92A8C(v34);
    swift_beginAccess();
    v16 = v2[6];

    sub_1D5CF9258(a1, v40, v16, v17, v18, v19, v20, v21);

    if (v4[7])
    {
      sub_1D62AD47C(a1, v40, sub_1D6E7109C);
    }

    v22 = v4[8];
    if (v22)
    {
      swift_beginAccess();
      v23 = *(v22 + 72);
      if (v23)
      {

        sub_1D6E6120C(a1, v40, v23);
      }

      swift_beginAccess();
      v24 = *(v22 + 88);

      sub_1D6E71B64(a1, v40, v24);
    }

    v25 = v4[9];
    if (v25 < 0)
    {
      v31 = v25 & 0x7FFFFFFFFFFFFFFFLL;
      v32 = *(v31 + 16);
      v33 = *(v31 + 24);

      sub_1D62A6198(a1, v40, v32, v33);
    }

    swift_beginAccess();
    v26 = v4[11];
    if (v26 >> 62 == 1)
    {
      v27 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[11]);
      sub_1D5EB1500(v27);

      sub_1D62A5D84(a1, v40, v27, v28, v29);
      sub_1D5EB15C4(v27);

      sub_1D5EB15C4(v26);
    }

    v30 = v4[17];
    if (v30)
    {
      v35 = v4[18];
      v36 = v4[19];
      v37 = v4[20];
      v38 = v4[21];
      v39 = v4[22];
      sub_1D62A42E0();
      sub_1D5EB1D80(v30, v35, v36, v37, v38, v39);

      sub_1D5CBF568(v38);
    }
  }
}

uint64_t sub_1D62AB410(uint64_t result, __int128 *a2)
{
  v4 = result;
  v5 = a2[5];
  v15[4] = a2[4];
  v15[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v15[0] = *a2;
  v15[1] = v7;
  v8 = a2[3];
  v15[2] = a2[2];
  v15[3] = v8;
  v9 = *(v2 + 24);
  v10 = *(v2 + 56);
  v11 = *(v2 + 72);
  v15[6] = v6;
  v16[0] = v10;
  v12 = *(v2 + 88);
  v13 = *(v2 + 104);
  v14 = *(v2 + 120);
  v17 = *(v2 + 136);
  v16[3] = v13;
  v16[4] = v14;
  v16[1] = v11;
  v16[2] = v12;
  if (!v9 || (result = sub_1D5D0AE64(result, v15, v9), !v3))
  {
    if (v17 != 254)
    {
      swift_retain_n();
      sub_1D5CF9A24(v4, v15);

      return sub_1D5D0ABCC(v16, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }

  return result;
}

double sub_1D62AB510(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v13[4] = a2[4];
  v13[5] = v5;
  v13[6] = a2[6];
  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = v2[9];
  v9 = v2[11];
  v11 = v2[13];
  v10 = v2[14];
  if (!v2[10] || (sub_1D5D0578C(a1, a2), !v3))
  {

    sub_1D5CF4060(a1, v13, v9);

    if (!v3)
    {

      sub_1D5CF6244(a1, v13, v11);

      sub_1D5CFD3E0(a1, v13, v10);

      sub_1D5CF6090(a1, v13, v8);
    }
  }

  return result;
}

void sub_1D62AB64C(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v11[6] = a2[6];
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  swift_beginAccess();
  v8 = v2[7];

  sub_1D5CF6244(a1, v11, v8);

  if (!v3)
  {
    swift_beginAccess();
    v9 = v2[8];

    sub_1D5CF4060(a1, v11, v9);

    swift_beginAccess();
    v10 = v2[9];

    sub_1D5CF6090(a1, v11, v10);
  }
}

uint64_t sub_1D62AB7B8(char **a1, __int128 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatItemNodeAction(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62B50EC(v3, v9, type metadata accessor for FormatItemNodeAction);
  result = swift_getEnumCaseMultiPayload();
  if ((result - 2) >= 6)
  {
    if (result)
    {
      return sub_1D62B51D0(v9, type metadata accessor for FormatItemNodeAction);
    }

    else
    {
      v13 = *v9;
      v20 = *(v9 + 1);
      v21 = v13;
      v14 = *(v9 + 2);
      v15 = *(v9 + 3);
      v16 = *(v9 + 4);
      v19 = *(v9 + 5);
      v17 = v9[50];
      v30 = v17;
      v18 = *(v9 + 24);
      v22 = v13;
      v23 = v20;
      v24 = v14;
      v25 = v15;
      v26 = v16;
      v27 = v19;
      v28 = v18;
      v29 = v17;
      sub_1D5CF6D20(a1, a2, v11, v12);
      return sub_1D5E1DCFC(v21, v20, v14, v15, v16, v19, v18, v17, sub_1D5E1DE10, sub_1D5E1DE10, sub_1D5E1DE98);
    }
  }

  return result;
}

void sub_1D62AB9E4(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = type metadata accessor for FormatItemNodeAction(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v35 - v14;
  v42 = *(v4 + 80);
  v16 = *(v4 + 32);
  v41[0] = *(v4 + 16);
  v41[1] = v16;
  v17 = *(v4 + 64);
  v41[2] = *(v4 + 48);
  v41[3] = v17;
  if ((v42 & 0xFE) != 0x7E)
  {
    v18 = *&v41[0];
    if ((*&v41[0] & 0xF000000000000007) != 0xF000000000000007)
    {
      v35 = v8;
      v36 = v11;
      v37 = v7;
      v43 = *&v41[0];
      sub_1D62B5354(v41, v38, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      sub_1D5CFCFAC(v18);
      sub_1D5CF9A24(a1, a2);

      sub_1D5D0ABCC(v41, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      if (v3)
      {
        return;
      }

      v11 = v36;
      v7 = v37;
      v8 = v35;
    }
  }

  if (!*(v4 + 144) && (*(v4 + 136) & 0xF000000000000007) != 0xD000000000000007)
  {
    v19 = v8;
    v20 = *(v4 + 88);
    if ((v20 & 0xF000000000000007) != 0xF000000000000007)
    {
      v37 = v7;
      v38[0] = v20;

      sub_1D5CF9A24(a1, a2);

      if (v3)
      {
        return;
      }

      v7 = v37;
    }

    v8 = v19;
  }

  v21 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  sub_1D5C00D70(v4 + *(v21 + 28), v15, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    sub_1D5B6EF64(v15, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  }

  else
  {
    sub_1D62B50EC(v15, v11, type metadata accessor for FormatItemNodeAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 6)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D62B51D0(v11, type metadata accessor for FormatItemNodeAction);
      }

      else
      {
        v25 = *v11;
        v26 = *(v11 + 1);
        v27 = a1;
        v29 = *(v11 + 2);
        v28 = *(v11 + 3);
        v30 = *(v11 + 5);
        v36 = *(v11 + 4);
        v37 = v28;
        v35 = v30;
        v31 = v11[50];
        LOBYTE(v43) = v31;
        v32 = a2;
        v33 = *(v11 + 24);
        v38[0] = v25;
        v38[1] = v26;
        v34 = v25;
        v38[2] = v29;
        v38[3] = v28;
        v38[4] = v36;
        v38[5] = v30;
        v39 = v33;
        v40 = v31;
        sub_1D5CF6D20(v27, v32, v23, v24);
        sub_1D5E1DCFC(v34, v26, v29, v37, v36, v35, v33, v31, sub_1D5E1DE10, sub_1D5E1DE10, sub_1D5E1DE98);
      }
    }

    sub_1D62B51D0(v15, type metadata accessor for FormatItemNodeAction);
  }
}

double sub_1D62ABE28(char **a1, __int128 *a2)
{
  v4 = v2;
  v6 = a2[5];
  v40[4] = a2[4];
  v40[5] = v6;
  v40[6] = a2[6];
  v7 = a2[1];
  v40[0] = *a2;
  v40[1] = v7;
  v8 = a2[3];
  v40[2] = a2[2];
  v40[3] = v8;
  v9 = v2[4];
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (!v2[5])
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v11 = v9 & 0x7FFFFFFFFFFFFFFFLL;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  sub_1D62A6054(a1, v40, v12, v13);
  if (v3)
  {

    return result;
  }

  if (v4[5])
  {
LABEL_3:
    sub_1D5D0B200(a1, v40);
    if (v3)
    {
      return result;
    }
  }

LABEL_8:
  v14 = v4[6];
  if (v14)
  {
    swift_beginAccess();
    v15 = *(v14 + 72);
    if (v15)
    {

      sub_1D6E6120C(a1, v40, v15);
      if (v3)
      {
LABEL_13:

        return result;
      }
    }

    swift_beginAccess();
    v16 = *(v14 + 88);

    sub_1D6E71B64(a1, v40, v16);
    if (v3)
    {
      goto LABEL_13;
    }
  }

  v34 = v4[7];
  sub_1D5C82CD8(v34);
  sub_1D5CF9048(a1, v40, v17, v18, v19, v20, v21, v22);
  if (v3)
  {
    sub_1D5C92A8C(v34);
  }

  else
  {
    sub_1D5C92A8C(v34);
    swift_beginAccess();
    v23 = v4[9];

    sub_1D5CF9258(a1, v40, v23, v24, v25, v26, v27, v28);

    swift_beginAccess();
    v29 = v4[11];
    if (v29 >> 62 == 1)
    {
      v30 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((v29 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[11]);
      sub_1D5EB1500(v30);

      sub_1D62A5D84(a1, v40, v30, v31, v32);
      sub_1D5EB15C4(v30);

      result = sub_1D5EB15C4(v29);
    }

    v33 = v4[16];
    if (v33)
    {
      v35 = v4[17];
      v36 = v4[18];
      v37 = v4[19];
      v38 = v4[20];
      v39 = v4[21];
      sub_1D62A42E0();
      sub_1D5EB1D80(v33, v35, v36, v37, v38, v39);

      sub_1D5CBF568(v38);
    }
  }

  return result;
}

double sub_1D62AC1A8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _OWORD *, uint64_t, uint64_t))
{
  v6 = a2[5];
  v15[4] = a2[4];
  v15[5] = v6;
  v15[6] = a2[6];
  v7 = a2[1];
  v15[0] = *a2;
  v15[1] = v7;
  v8 = a2[3];
  v15[2] = a2[2];
  v15[3] = v8;
  if ((*v5 & 0x8000000000000000) != 0)
  {
    v10 = *v5 & 0x7FFFFFFFFFFFFFFFLL;
    v11 = *(v10 + 0x10);
    v12 = *(v10 + 24);

    a5(a1, v15, v11, v12);
  }

  return *&v8;
}

void sub_1D62AC270(unint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v24[4] = a2[4];
  v24[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v24[0] = *a2;
  v24[1] = v7;
  v8 = a2[3];
  v24[2] = a2[2];
  v24[3] = v8;
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = *(v2 + 64);
  v12 = *(v2 + 80);
  v24[6] = v6;
  v25[0] = v11;
  v13 = *(v2 + 96);
  v14 = *(v2 + 112);
  v15 = *(v2 + 128);
  v26 = *(v2 + 144);
  v25[3] = v14;
  v25[4] = v15;
  v25[1] = v12;
  v25[2] = v13;
  v16 = *(v2 + 200);
  if ((~v10 & 0xF000000000000007) == 0 || (, sub_1D5D0491C(a1, a2, v18, v19, v20, v21, v22, v23), , !v3))
  {
    if (!v9 || (sub_1D5D0AE64(a1, v24, v9), !v3))
    {
      if (v26 != 254)
      {
        swift_retain_n();
        sub_1D5CF9A24(a1, v24);

        if (v3)
        {
          sub_1D5D0ABCC(v25, &qword_1EDF33718, &type metadata for FormatShadow);
          return;
        }

        sub_1D5D0ABCC(v25, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if (v16)
      {
        sub_1D6E5E92C(a1, v24, v16);
      }
    }
  }
}

void sub_1D62AC3E8(char **result, __int128 *a2)
{
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v10[6] = a2[6];
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v7 = *v2;
  v8 = v2[1];
  if (*v2)
  {
    v9 = result;
    sub_1D6E73EF0(result, v10, v7);
    if (v3)
    {
      return;
    }

    result = v9;
  }

  if (v8)
  {
    sub_1D5CF9E40(result, v10, v8);
  }
}

void sub_1D62AC458(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v18[4] = a2[4];
  v18[5] = v5;
  v18[6] = a2[6];
  v6 = a2[1];
  v18[0] = *a2;
  v18[1] = v6;
  v7 = a2[3];
  v18[2] = a2[2];
  v18[3] = v7;
  v8 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v12 = v2[4];
  v13 = v2[5];
  v14 = v2[6];
  v15 = v2[8];
  if ((~v9 & 0xF000000000000007) != 0 || (v2[3] & 7) != 7)
  {
    v17 = v2[8];
    if ((v10 & 4) != 0)
    {
      v19 = *v2;
      sub_1D5CFEE30(a1, a2);
      if (v3)
      {
        return;
      }
    }

    else
    {
      sub_1D62B7098(v8, v9, v11, v10);
      sub_1D5CFE5E0(a1, v18, v8);
      if (v3)
      {
        sub_1D62B7110(v8, v9, v11, v10);
        return;
      }

      sub_1D5CF9308(a1, v18, v9, v11, v10, sub_1D5CFF794, sub_1D5CFEE30);
      sub_1D62B7110(v8, v9, v11, v10);
    }

    v15 = v17;
  }

  if ((~(v12 & v14) & 0x3000000000000007) != 0)
  {
    v16 = v15;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v19 = v12;
      sub_1D5D07D58(a1, v18);
      if (v3)
      {
        return;
      }
    }

    else
    {
      sub_1D62B6FC0(v12, v13, v14);
      sub_1D62A3D94(a1, v18, v12, v13, v14);
      sub_1D62B7020(v12, v13, v14);
      if (v3)
      {
        return;
      }
    }

    v15 = v16;
  }

  sub_1D5CF9E40(a1, v18, v15);
}

void sub_1D62AC654(char **a1, __int128 *a2)
{
  v4 = a2[5];
  v12[4] = a2[4];
  v12[5] = v4;
  v12[6] = a2[6];
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[3];
  v12[2] = a2[2];
  v12[3] = v6;
  v7 = *v2;
  v8 = v2[3];
  if ((v8 & 4) != 0)
  {
    sub_1D5CFEE30(a1, a2);
  }

  else
  {
    v9 = v2[1];
    v10 = v2[2];
    sub_1D5CFE5E0(a1, v12, v7);
    if (!v3)
    {
      sub_1D5CF9308(a1, v12, v9, v10, v8, sub_1D5CFF794, sub_1D5CFEE30);
    }
  }
}

void sub_1D62AC710(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  v6 = v2[2];
  if ((v6 & 0x2000000000000000) != 0)
  {
    sub_1D5D07D58(a1, a2);
  }

  else
  {
    sub_1D62A3D94(a1, v7, *v2, v2[1], v6);
  }
}

void sub_1D62AC794(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v13[4] = a2[4];
  v13[5] = v4;
  v13[6] = a2[6];
  v5 = a2[1];
  v13[0] = *a2;
  v13[1] = v5;
  v6 = a2[3];
  v13[2] = a2[2];
  v13[3] = v6;
  v7 = *(v2 + 32);
  v8 = *(v2 + 56);
  if (v7 != 255 && (v7 & 1) != 0)
  {
    v9 = *(v2 + 56);
    v10 = *(v2 + 24);
    v11 = *(v10 + 24);
    v12 = a1;
    sub_1D62B5FC8(v10, 1);
    sub_1D6E6399C(v12, v13, v11);
    if (v3)
    {
      sub_1D62B5FD4(v10, v7);
      return;
    }

    sub_1D62A7BBC(v12, v13, *(v10 + 32));
    sub_1D62B5FD4(v10, v7);
    a1 = v12;
    v8 = v9;
  }

  sub_1D6E63788(a1, v13, v8);
}

void sub_1D62AC8A8(char **a1, __int128 *a2, unint64_t a3)
{
  v5 = a2[5];
  v18[4] = a2[4];
  v18[5] = v5;
  v18[6] = a2[6];
  v6 = a2[1];
  v18[0] = *a2;
  v18[1] = v6;
  v7 = a2[3];
  v8 = a3 >> 61;
  v18[2] = a2[2];
  v18[3] = v7;
  if ((a3 >> 61) <= 1)
  {
    if (v8)
    {
      sub_1D62AC458(a1, a2);
    }

    else
    {
      sub_1D62ACA70(a1, a2);
    }
  }

  else if (v8 == 2)
  {
    v15 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D6E6994C(a1, v18, v15, v17);
    if (!v3)
    {
      sub_1D62AC8A8(a1, v18, v16);
    }
  }

  else if (v8 == 3)
  {
    v9 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

    v14 = sub_1D5CF6D20(a1, a2, v12, v13);
    if (!v3)
    {
      sub_1D6E6738C(a1, v18, v9, v14);
      sub_1D62AC8A8(a1, v18, v10);
    }
  }
}

void sub_1D62ACA70(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v18[4] = a2[4];
  v18[5] = v5;
  v18[6] = a2[6];
  v6 = a2[1];
  v18[0] = *a2;
  v18[1] = v6;
  v7 = a2[3];
  v18[2] = a2[2];
  v18[3] = v7;
  v8 = *v2;
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  if ((v9 & 4) != 0)
  {
    v19 = *v2;
    sub_1D5CFEE30(a1, a2);
    if (v3)
    {
      return;
    }

    if ((v12 & 0x2000000000000000) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = v2[7];
    v14 = v2[1];
    v15 = v2[2];

    sub_1D5CFE5E0(a1, v18, v8);
    if (v3)
    {
      sub_1D62B7130(v8, v14, v15, v9);
      return;
    }

    sub_1D5CF9308(a1, v18, v14, v15, v9, sub_1D5CFF794, sub_1D5CFEE30);
    sub_1D62B7130(v8, v14, v15, v9);
    v13 = v17;
    if ((v12 & 0x2000000000000000) != 0)
    {
LABEL_8:
      v19 = v10;
      sub_1D5D07D58(a1, v18);
      goto LABEL_9;
    }
  }

  sub_1D62A3D94(a1, v18, v10, v11, v12);
LABEL_9:
  sub_1D62ACE6C(a1, v18, v13, v16);
}

double sub_1D62ACC30(uint64_t a1, __n128 *a2)
{
  v4 = a2[5];
  v15[4] = a2[4];
  v15[5] = v4;
  v15[6] = a2[6];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  v6 = a2[3];
  v7 = *v2;
  v8 = *v2 >> 61;
  v15[2] = a2[2];
  v15[3] = v6;
  if (v8 <= 2)
  {
    if (v8)
    {
      v9 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      if (v8 == 1)
      {
        sub_1D62AC794(a1, a2);
      }

      else
      {
        v12 = *(*(v9 + 16) + 24);

        sub_1D6E6198C(a1, v15, v12);
        if (!v3)
        {

          sub_1D62ACC30(a1, v15);
        }
      }
    }

    else if (*(v7 + 48))
    {
      v10 = *(v7 + 40);
      sub_1D6E6399C(a1, v15, *(v10 + 24));
      if (!v3)
      {
        sub_1D62A7BBC(a1, v15, *(v10 + 32));
      }
    }
  }

  return v6.n128_f64[0];
}

uint64_t sub_1D62ACD64(uint64_t result, __n128 *a2)
{
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v9[6] = a2[6];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  if (*(v2 + 32) == 1)
  {
    v7 = *(v2 + 24);
    v8 = result;
    result = sub_1D6E6399C(result, v9, *(v7 + 24));
    if (!v3)
    {
      return sub_1D62A7BBC(v8, v9, *(v7 + 32));
    }
  }

  return result;
}

uint64_t sub_1D62ACDF4(uint64_t result, __n128 *a2)
{
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v9[6] = a2[6];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  if (*(v2 + 8) == 1)
  {
    v7 = *v2;
    v8 = result;
    result = sub_1D6E6399C(result, v9, *(v7 + 24));
    if (!v3)
    {
      return sub_1D62A7BBC(v8, v9, *(v7 + 32));
    }
  }

  return result;
}

double sub_1D62ACE6C(char **a1, __int128 *a2, unint64_t a3, uint64_t a4)
{
  v5 = a2[5];
  v14[4] = a2[4];
  v14[5] = v5;
  v14[6] = a2[6];
  v6 = a2[1];
  v14[0] = *a2;
  v14[1] = v6;
  v7 = a2[3];
  v8 = a3 >> 62;
  v14[2] = a2[2];
  v14[3] = v7;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D5D07FF0(a1, v14, v9);
      if (!v4)
      {
        sub_1D5D0868C(a1, v14, v10, v12);
      }
    }
  }

  else if (v8)
  {
    *&v7 = sub_1D5CF6D20(a1, a2, a3, a4);
  }

  return *&v7;
}

void sub_1D62ACFC0(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v15[4] = a2[4];
  v15[5] = v5;
  v15[6] = a2[6];
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 62;
  v15[2] = a2[2];
  v15[3] = v7;
  if (v9)
  {
    v10 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    if (v9 == 1)
    {
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);

      sub_1D62A5850(a1, v15, v11, v12);
    }

    else
    {
      v13 = *(v10 + 24);
      swift_retain_n();

      sub_1D62ACFC0(a1, a2);
      if (v3)
      {

        return;
      }

      sub_1D6E71FD0(a1, v15, v13);
    }
  }

  else if (*(v8 + 16) >> 62 == 3)
  {
    sub_1D62B3700(a1, a2);
  }
}

void sub_1D62AD138(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v60[4] = a2[4];
  v60[5] = v7;
  v60[6] = a2[6];
  v8 = a2[1];
  v60[0] = *a2;
  v60[1] = v8;
  v9 = a2[3];
  v60[2] = a2[2];
  v60[3] = v9;
  *&v51 = *(v2 + 32);
  sub_1D5C82CD8(v51);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v51);
  }

  else
  {
    sub_1D5C92A8C(v51);
    swift_beginAccess();
    v16 = *(v2 + 48);

    sub_1D5CF9258(a1, v60, v16, v17, v18, v19, v20, v21);

    if (*(v4 + 56))
    {
      sub_1D62AD47C(a1, v60, sub_1D6E73BCC);
    }

    v59 = *(v4 + 64);

    sub_1D62ACFC0(a1, v60);

    v22 = *(v4 + 152);
    v23 = *(v4 + 184);
    v49[6] = *(v4 + 168);
    v50[0] = v23;
    *(v50 + 9) = *(v4 + 193);
    v24 = *(v4 + 88);
    v25 = *(v4 + 120);
    v49[2] = *(v4 + 104);
    v49[3] = v25;
    v49[4] = *(v4 + 136);
    v49[5] = v22;
    v49[0] = *(v4 + 72);
    v49[1] = v24;
    v26 = *(v4 + 152);
    v27 = *(v4 + 184);
    v57 = *(v4 + 168);
    v58[0] = v27;
    *(v58 + 9) = *(v4 + 193);
    v28 = *(v4 + 88);
    v29 = *(v4 + 120);
    v53 = *(v4 + 104);
    v54 = v29;
    v55 = *(v4 + 136);
    v56 = v26;
    v51 = *(v4 + 72);
    v52 = v28;
    if (sub_1D60486AC(&v51) != 1)
    {
      v47 = v57;
      v48[0] = v58[0];
      *(v48 + 9) = *(v58 + 9);
      v43 = v53;
      v44 = v54;
      v45 = v55;
      v46 = v56;
      v41 = v51;
      v42 = v52;
      sub_1D62B5354(v49, &v40, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
      sub_1D62B49F0(&v41);
    }

    swift_beginAccess();
    v30 = *(v4 + 232);
    if (v30 >> 62 == 1)
    {
      v31 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v4 + 232));
      sub_1D5EB1500(v31);

      sub_1D62A5D84(a1, v60, v31, v32, v33);
      sub_1D5EB15C4(v31);

      sub_1D5EB15C4(v30);
    }

    v34 = *(v4 + 272);
    if (v34)
    {
      v35 = *(v4 + 280);
      v36 = *(v4 + 288);
      v38 = *(v4 + 296);
      v37 = *(v4 + 304);
      v39 = *(v4 + 312);
      *&v41 = v34;
      *(&v41 + 1) = v35;
      *&v42 = v36;
      *(&v42 + 1) = v38;
      *&v43 = v37;
      *(&v43 + 1) = v39;
      sub_1D62A42E0();
      sub_1D5EB1D80(v34, v35, v36, v38, v37, v39);

      sub_1D5CBF568(v37);
    }
  }
}

void sub_1D62AD47C(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *, uint64_t))
{
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[2];
  v18[3] = a2[3];
  v18[4] = v7;
  v10 = a2[6];
  v18[5] = v8;
  v18[6] = v10;
  v11 = a2[1];
  v18[0] = *a2;
  v18[1] = v11;
  v18[2] = v9;
  swift_beginAccess();
  v12 = *(v3 + 48);

  a3(a1, v18, v12);

  if (!v4)
  {
    v13 = *(v3 + 64);
    if (v13)
    {
      sub_1D5D0AE64(a1, v18, v13);
    }

    v17 = *(v3 + 176);
    v14 = *(v3 + 144);
    v16[2] = *(v3 + 128);
    v16[3] = v14;
    v16[4] = *(v3 + 160);
    v15 = *(v3 + 112);
    v16[0] = *(v3 + 96);
    v16[1] = v15;
    if (v17 != 254)
    {
      swift_retain_n();
      sub_1D5CF9A24(a1, v18);

      sub_1D5D0ABCC(v16, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }
}

uint64_t sub_1D62AD630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v29 = a3;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v11[5];
  v44 = v11[4];
  v45 = v12;
  v46 = v11[6];
  v13 = v11[1];
  v40 = *v11;
  v41 = v13;
  v14 = v11[3];
  v42 = v11[2];
  v43 = v14;
  v15 = *(v6 + 16);
  v47 = v17;
  v15(&v26 - v16, v17, v5);
  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (swift_dynamicCast())
  {
    v26 = v15;
    v28 = v3;
    v18 = *(&v38 + 1);
    v19 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v20 = *(v19 + 8);
    v27 = v4;
    v21 = v28;
    v20(v4, &v30, v18, v19);
    result = __swift_destroy_boxed_opaque_existential_1(&v37);
    if (v21)
    {
      return result;
    }

    v4 = v27;
    v26(v8, v47 + *(v29 + 52), v5);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1D5BFB774(&v37, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
    v15(v8, v47 + *(v29 + 52), v5);
  }

  if (swift_dynamicCast())
  {
    v23 = v4;
    v24 = *(&v38 + 1);
    v25 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    (*(v25 + 8))(v23, &v30, v24, v25);
    return __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    return sub_1D5BFB774(&v37, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }
}

uint64_t sub_1D62AD91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v9[0] = *(a3 + 16);
  v9[1] = v6;
  v7 = type metadata accessor for FormatRange(0, v9);
  result = sub_1D62AD630(a1, a2, v7);
  if (!v3)
  {
    return sub_1D62AD630(a1, a2, v7);
  }

  return result;
}

void sub_1D62AD9A8(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v16[4] = a2[4];
  v16[5] = v5;
  v16[6] = a2[6];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  v7 = a2[3];
  v16[2] = a2[2];
  v16[3] = v7;
  swift_beginAccess();
  v8 = *(v2 + 88);

  sub_1D5CF6244(a1, v16, v8);

  if (!v3)
  {
    swift_beginAccess();
    v9 = *(v2 + 96);
    if (v9 >> 62)
    {
      goto LABEL_17;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v10)
    {
      v11 = 0;
      v17 = v9 & 0xC000000000000001;
      do
      {
        if (v17)
        {
          v12 = MEMORY[0x1DA6FB460](v11, v9);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_13:
            __break(1u);

            break;
          }
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v10 = sub_1D7263BFC();
            goto LABEL_4;
          }

          v12 = *(v9 + 8 * v11 + 32);

          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_13;
          }
        }

        swift_beginAccess();
        v14 = *(v12 + 40);

        sub_1D5CF6244(a1, v16, v14);

        swift_beginAccess();
        v15 = *(v12 + 32);

        sub_1D5CF6090(a1, v16, v15);

        ++v11;
      }

      while (v13 != v10);
    }
  }
}

void sub_1D62ADBBC(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v36[4] = a2[4];
  v36[5] = v7;
  v36[6] = a2[6];
  v8 = a2[1];
  v36[0] = *a2;
  v36[1] = v8;
  v9 = a2[3];
  v36[2] = a2[2];
  v36[3] = v9;
  swift_beginAccess();
  v30 = v2[4];
  sub_1D5C82CD8(v30);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v30);
  }

  else
  {
    sub_1D5C92A8C(v30);
    swift_beginAccess();
    v16 = v2[6];

    sub_1D5CF9258(a1, v36, v16, v17, v18, v19, v20, v21);

    sub_1D6E672BC(a1, v36, v4[9]);
    swift_beginAccess();
    v22 = v4[11];
    if (v22 >> 62 == 1)
    {
      v23 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[11]);
      sub_1D5EB1500(v23);

      sub_1D62A5D84(a1, v36, v23, v24, v25);
      sub_1D5EB15C4(v23);

      sub_1D5EB15C4(v22);
    }

    v26 = v4[13];
    if (v26)
    {
      swift_beginAccess();
      v27 = *(v26 + 72);
      if (v27)
      {

        sub_1D6E6120C(a1, v36, v27);
      }

      swift_beginAccess();
      v28 = *(v26 + 88);

      sub_1D6E71B64(a1, v36, v28);
    }

    v29 = v4[15];
    if (v29)
    {
      v31 = v4[16];
      v32 = v4[17];
      v33 = v4[18];
      v34 = v4[19];
      v35 = v4[20];
      sub_1D62A42E0();
      sub_1D5EB1D80(v29, v31, v32, v33, v34, v35);

      sub_1D5CBF568(v34);
    }
  }
}

void sub_1D62ADE80(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v36[4] = a2[4];
  v36[5] = v7;
  v36[6] = a2[6];
  v8 = a2[1];
  v36[0] = *a2;
  v36[1] = v8;
  v9 = a2[3];
  v36[2] = a2[2];
  v36[3] = v9;
  v30 = v2[4];
  sub_1D5C82CD8(v30);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v30);
  }

  else
  {
    sub_1D5C92A8C(v30);
    swift_beginAccess();
    v16 = v2[6];

    sub_1D5CF9258(a1, v36, v16, v17, v18, v19, v20, v21);

    if (v4[7])
    {
      sub_1D62AF268(a1, v36, sub_1D6E7124C);
    }

    v22 = v4[8];
    if (v22)
    {
      swift_beginAccess();
      v23 = *(v22 + 72);
      if (v23)
      {

        sub_1D6E6120C(a1, v36, v23);
      }

      swift_beginAccess();
      v24 = *(v22 + 88);

      sub_1D6E71B64(a1, v36, v24);
    }

    sub_1D62AF89C(a1, v36);

    swift_beginAccess();
    v25 = v4[11];
    if (v25 >> 62 == 1)
    {
      v26 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[11]);
      sub_1D5EB1500(v26);

      sub_1D62A5D84(a1, v36, v26, v27, v28);
      sub_1D5EB15C4(v26);

      sub_1D5EB15C4(v25);
    }

    v29 = v4[29];
    if (v29)
    {
      v31 = v4[30];
      v32 = v4[31];
      v33 = v4[32];
      v34 = v4[33];
      v35 = v4[34];
      sub_1D62A42E0();
      sub_1D5EB1D80(v29, v31, v32, v33, v34, v35);

      sub_1D5CBF568(v34);
    }
  }
}

void sub_1D62AE178(char **a1, __int128 *a2)
{
  v6 = a2[5];
  v37[4] = a2[4];
  v37[5] = v6;
  v37[6] = a2[6];
  v7 = a2[1];
  v37[0] = *a2;
  v37[1] = v7;
  v8 = a2[3];
  v37[2] = a2[2];
  v37[3] = v8;
  v9 = v2[2];
  v35 = v2[6];
  v36 = v2[4];
  v33 = v2[12];
  v34 = v2[11];
  v10 = v2[13];
  v11 = v2[14];
  v12 = v2[15];
  v13 = v2[16];
  sub_1D5C82CD8(v9);
  v38 = a1;
  sub_1D5CF9048(a1, a2, v14, v15, v16, v17, v18, v19);
  if (v3)
  {
    sub_1D5C92A8C(v9);
    return;
  }

  v20 = v12;
  sub_1D5C92A8C(v9);

  v21 = v38;
  sub_1D5CF9258(v38, v37, v36, v22, v23, v24, v25, v26);

  if (v35 >> 62)
  {
    if (v35 >> 62 != 1)
    {
      v31 = v33;
      v30 = v34;
      if (v35 == 0x8000000000000000)
      {
        v32 = 0x8000000000000000;
      }

      else
      {
        v32 = 0x8000000000000008;
      }

      sub_1D5EB15C4(v32);
      goto LABEL_11;
    }

    v28 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v35);
    sub_1D5EB1500(v28);

    sub_1D62A5D84(v21, v37, v28, v27, v29);
    sub_1D5EB15C4(v28);

    sub_1D5EB15C4(v35);
  }

  v30 = v34;
  v31 = v33;
LABEL_11:
  if (v30)
  {
    sub_1D62A42E0();
    sub_1D5EB1D80(v30, v31, v10, v11, v20, v13);

    sub_1D5CBF568(v20);
  }
}

void sub_1D62AE39C(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v45[4] = a2[4];
  v45[5] = v7;
  v45[6] = a2[6];
  v8 = a2[1];
  v45[0] = *a2;
  v45[1] = v8;
  v9 = a2[3];
  v45[2] = a2[2];
  v45[3] = v9;
  v39 = *(v2 + 32);
  sub_1D5C82CD8(v39);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(v39);
  }

  else
  {
    sub_1D5C92A8C(v39);
    swift_beginAccess();
    v16 = *(v2 + 48);

    sub_1D5CF9258(a1, v45, v16, v17, v18, v19, v20, v21);

    if (*(v4 + 56))
    {
      sub_1D62AF268(a1, v45, sub_1D6E71048);
    }

    v22 = *(v4 + 64);
    if (v22)
    {
      swift_beginAccess();
      v23 = *(v22 + 72);
      if (v23)
      {

        sub_1D6E6120C(a1, v45, v23);
      }

      swift_beginAccess();
      v24 = *(v22 + 88);

      sub_1D6E71B64(a1, v45, v24);
    }

    v25 = *(v4 + 72);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);

      sub_1D6E60F24(a1, v45, v26);
      sub_1D62B28C0(a1, v45, v27);
    }

    sub_1D5CF94EC(a1, v45, v28, v29);

    if (*(v4 + 88))
    {
      sub_1D5CF8420(a1, v45);
    }

    if (*(v4 + 112) != 1)
    {
      v31 = *(v4 + 128);
      v30 = *(v4 + 136);
      v32 = *(v4 + 104);
      v33 = *(v4 + 144) & 1;

      sub_1D5DEA234(v32);

      v46 = v30;
      sub_1D5C75A4C(v31, v30, v33);
      sub_1D62B39B0(a1, v45);

      sub_1D5CBF568(v32);

      sub_1D5D2F2C8(v31, v46, v33);
    }

    swift_beginAccess();
    v34 = *(v4 + 192);
    if (v34 >> 62 == 1)
    {
      v35 = *((v34 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v34 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v4 + 192));
      sub_1D5EB1500(v35);

      sub_1D62A5D84(a1, v45, v35, v36, v37);
      sub_1D5EB15C4(v35);

      sub_1D5EB15C4(v34);
    }

    v38 = *(v4 + 272);
    if (v38)
    {
      v40 = *(v4 + 280);
      v41 = *(v4 + 288);
      v42 = *(v4 + 296);
      v43 = *(v4 + 304);
      v44 = *(v4 + 312);
      sub_1D62A42E0();
      sub_1D5EB1D80(v38, v40, v41, v42, v43, v44);

      sub_1D5CBF568(v43);
    }
  }
}

void sub_1D62AE81C(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[5];
  v44[4] = a2[4];
  v44[5] = v7;
  v44[6] = a2[6];
  v8 = a2[1];
  v44[0] = *a2;
  v44[1] = v8;
  v9 = a2[3];
  v44[2] = a2[2];
  v44[3] = v9;
  swift_beginAccess();
  *&v42[0] = *(v2 + 32);
  sub_1D5C82CD8(*&v42[0]);
  sub_1D5CF9048(a1, a2, v10, v11, v12, v13, v14, v15);
  if (v3)
  {
    sub_1D5C92A8C(*&v42[0]);
  }

  else
  {
    sub_1D5C92A8C(*&v42[0]);
    swift_beginAccess();
    v16 = *(v2 + 48);

    sub_1D5CF9258(a1, v44, v16, v17, v18, v19, v20, v21);

    v22 = *(v4 + 72);
    v23 = *(v4 + 104);
    v42[2] = *(v4 + 88);
    v43[0] = v23;
    *(v43 + 15) = *(v4 + 119);
    v42[0] = *(v4 + 56);
    v42[1] = v22;
    v24 = *(v4 + 72);
    v25 = *(v4 + 104);
    v40 = *(v4 + 88);
    v41[0] = v25;
    *(v41 + 15) = *(v4 + 119);
    v38 = *(v4 + 56);
    v39 = v24;
    sub_1D62B62D8(v42, v36);
    sub_1D62B0188(a1, v44);
    v36[1] = v39;
    v36[2] = v40;
    v37[0] = v41[0];
    *(v37 + 15) = *(v41 + 15);
    v36[0] = v38;
    sub_1D62B6334(v36);
    swift_beginAccess();
    if (*(v4 + 136))
    {

      sub_1D62AF450(a1, v44);
    }

    swift_beginAccess();
    swift_beginAccess();
    v26 = *(v4 + 208);
    if (v26 >> 62 == 1)
    {
      v27 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v4 + 208));
      sub_1D5EB1500(v27);

      sub_1D62A5D84(a1, v44, v27, v28, v29);
      sub_1D5EB15C4(v27);

      sub_1D5EB15C4(v26);
    }

    v30 = *(v4 + 256);
    if (v30)
    {
      v31 = *(v4 + 264);
      v32 = *(v4 + 272);
      v33 = *(v4 + 280);
      v34 = *(v4 + 288);
      v35 = *(v4 + 296);
      sub_1D62A42E0();
      sub_1D5EB1D80(v30, v31, v32, v33, v34, v35);

      sub_1D5CBF568(v34);
    }
  }
}

double sub_1D62AEB40(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v16[4] = a2[4];
  v16[5] = v5;
  v16[6] = a2[6];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  v7 = a2[3];
  v16[2] = a2[2];
  v16[3] = v7;
  swift_beginAccess();
  v8 = v2[4];

  sub_1D5CF5C18(a1, v16, v8);

  if (!v3)
  {
    v10 = v2[5];
    if (v10)
    {
      v12 = v2[9];
      v11 = v2[10];
      v14 = v2[7];
      v13 = v2[8];
      v15 = v2[6];
      sub_1D62A42E0();
      sub_1D5EB1D80(v10, v15, v14, v13, v12, v11);

      sub_1D5CBF568(v12);
    }
  }

  return result;
}

void sub_1D62AEC78(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[2];
  v39[3] = a2[3];
  v39[4] = v7;
  v10 = a2[6];
  v39[5] = v8;
  v39[6] = v10;
  v11 = a2[1];
  v39[0] = *a2;
  v39[1] = v11;
  v39[2] = v9;
  swift_beginAccess();
  v33 = v2[6];
  sub_1D5C82CD8(v33);
  sub_1D5CF9048(a1, a2, v12, v13, v14, v15, v16, v17);
  if (v3)
  {
    sub_1D5C92A8C(v33);
  }

  else
  {
    sub_1D5C92A8C(v33);
    swift_beginAccess();
    v18 = v2[8];

    sub_1D5CF9258(a1, v39, v18, v19, v20, v21, v22, v23);

    v24 = v4[9];
    if (v24 < 0)
    {
      v30 = v24 & 0x7FFFFFFFFFFFFFFFLL;
      v31 = *(v30 + 16);
      v32 = *(v30 + 24);

      sub_1D62A6094(a1, v39, v31, v32);
    }

    swift_beginAccess();
    v25 = v4[20];
    if (v25 >> 62 == 1)
    {
      v26 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[20]);
      sub_1D5EB1500(v26);

      sub_1D62A5D84(a1, v39, v26, v27, v28);
      sub_1D5EB15C4(v26);

      sub_1D5EB15C4(v25);
    }

    v29 = v4[28];
    if (v29)
    {
      v34 = v4[29];
      v35 = v4[30];
      v36 = v4[31];
      v37 = v4[32];
      v38 = v4[33];
      sub_1D62A42E0();
      sub_1D5EB1D80(v29, v34, v35, v36, v37, v38);

      sub_1D5CBF568(v37);
    }
  }
}

void sub_1D62AEEDC(char **a1, __int128 *a2)
{
  v4 = v2;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[2];
  v35[3] = a2[3];
  v35[4] = v7;
  v10 = a2[6];
  v35[5] = v8;
  v35[6] = v10;
  v11 = a2[1];
  v35[0] = *a2;
  v35[1] = v11;
  v35[2] = v9;
  v29 = *(v2 + 32);
  sub_1D5C82CD8(v29);
  sub_1D5CF9048(a1, a2, v12, v13, v14, v15, v16, v17);
  if (v3)
  {
    sub_1D5C92A8C(v29);
  }

  else
  {
    sub_1D5C92A8C(v29);
    swift_beginAccess();
    v18 = *(v2 + 48);

    sub_1D5CF9258(a1, v35, v18, v19, v20, v21, v22, v23);

    swift_beginAccess();
    v24 = v4[7];
    if (v24 >> 62 == 1)
    {
      v25 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[7]);
      sub_1D5EB1500(v25);

      sub_1D62A5D84(a1, v35, v25, v26, v27);
      sub_1D5EB15C4(v25);

      sub_1D5EB15C4(v24);
    }

    swift_beginAccess();
    if (v4[12])
    {

      sub_1D62AF578(a1, v35);
    }

    v28 = v4[13];
    if (v28)
    {
      v30 = v4[14];
      v31 = v4[15];
      v32 = v4[16];
      v33 = v4[17];
      v34 = v4[18];
      sub_1D62A42E0();
      sub_1D5EB1D80(v28, v30, v31, v32, v33, v34);

      sub_1D5CBF568(v33);
    }
  }
}

void sub_1D62AF134(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 56);

  sub_1D6E782FC(a1, v4);

  if (!v2 && *(v1 + 74) != 255)
  {
    v5 = *(v1 + 72) | (*(v1 + 74) << 16);
    v6 = *(v1 + 64);
    sub_1D610CA74(v6, v5, SBYTE2(v5), sub_1D610CA28, sub_1D610CA5C);
    sub_1D62A8A9C();
    sub_1D610CA74(v6, v5, SBYTE2(v5), sub_1D60CF6A8, sub_1D60CF6DC);
  }
}

double sub_1D62AF268(unint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *, uint64_t))
{
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[2];
  v26[3] = a2[3];
  v26[4] = v7;
  v10 = a2[6];
  v26[5] = v8;
  v26[6] = v10;
  v11 = a2[1];
  v26[0] = *a2;
  v26[1] = v11;
  v26[2] = v9;
  swift_beginAccess();
  v12 = *(v3 + 48);

  a3(a1, v26, v12);

  if (!v4)
  {
    if ((~*(v3 + 64) & 0xF000000000000007) != 0)
    {
      *&v24[0] = *(v3 + 64);

      sub_1D5D0491C(a1, v26, v14, v15, v16, v17, v18, v19);
    }

    v20 = *(v3 + 72);
    if (v20)
    {
      sub_1D5D0AE64(a1, v26, v20);
    }

    v25 = *(v3 + 184);
    v21 = *(v3 + 152);
    v24[2] = *(v3 + 136);
    v24[3] = v21;
    v24[4] = *(v3 + 168);
    v13 = *(v3 + 104);
    v22 = *(v3 + 120);
    v24[0] = v13;
    v24[1] = v22;
    if (v25 != 254)
    {
      swift_retain_n();
      sub_1D5CF9A24(a1, v26);

      sub_1D5D0ABCC(v24, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if ((~*(v3 + 192) & 0xF000000000000007) != 0)
    {

      sub_1D5CF9A24(a1, v26);
    }
  }

  return *&v13;
}

double sub_1D62AF450(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v10[4] = a2[4];
  v10[5] = v5;
  v10[6] = a2[6];
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  swift_beginAccess();
  v8 = v2[6];

  sub_1D6E70E54(a1, v10, v8);

  if (!v3)
  {
    if ((~v2[8] & 0xF000000000000007) != 0)
    {
      v11 = v2[8];

      sub_1D5CF9A24(a1, v10);
    }

    if ((~v2[9] & 0xF000000000000007) != 0)
    {
      v11 = v2[9];

      sub_1D5CF9A24(a1, v10);
    }
  }

  return result;
}

void sub_1D62AF578(unint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v13[4] = a2[4];
  v13[5] = v5;
  v13[6] = a2[6];
  v6 = a2[1];
  v13[0] = *a2;
  v13[1] = v6;
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  swift_beginAccess();
  v8 = v2[6];

  sub_1D6E70BF8(a1, v13, v8);

  if (!v3)
  {
    if ((~v2[7] & 0xF000000000000007) != 0)
    {
      v14 = v2[7];

      sub_1D5CF9A24(a1, v13);
    }

    if ((~v2[8] & 0xF000000000000007) != 0)
    {
      v14 = v2[8];

      sub_1D5CF9A24(a1, v13);
    }

    v9 = v2[10];
    if (v9 >= 2)
    {
      if (v9 == 2)
      {
        return;
      }

      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = v9;
      sub_1D5D0A59C(v9);
      sub_1D5D0A57C(v10);
      sub_1D5D0A57C(v11);
      sub_1D6248A90(a1, v13, v10, v11);
      sub_1D5D0A58C(v10);
      sub_1D5D0A58C(v11);
      v9 = v12;
    }

    sub_1D5D0A5AC(v9);
  }
}

double sub_1D62AF734(char **a1, __int128 *a2)
{

  sub_1D5CF6528(a1, a2, v4, v5, v6, v7, v8, v9);

  return result;
}

double sub_1D62AF798(char **a1, __int128 *a2)
{

  sub_1D5CF41D4(a1, a2);

  return result;
}

void sub_1D62AF7FC(char **a1, __int128 *a2)
{
  if ((*(v2 + 16) & 1) == 0)
  {
    sub_1D5CF41D4(a1, a2);
  }
}

void sub_1D62AF830(char **a1, __int128 *a2)
{
  v3 = *(v2 + 32);
  if ((v3 & 0x80000000) == 0 && (v3 & 1) == 0)
  {
    sub_1D5CF41D4(a1, a2);
  }
}

void sub_1D62AF868(char **a1, __int128 *a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    sub_1D5CF41D4(a1, a2);
  }
}

void sub_1D62AF89C(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v16[4] = a2[4];
  v16[5] = v5;
  v16[6] = a2[6];
  v6 = a2[1];
  v16[0] = *a2;
  v16[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 61;
  v16[2] = a2[2];
  v16[3] = v7;
  if (v9 <= 1)
  {
    if (v9)
    {
      v15 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      sub_1D6E70AB4(a1, v16, v15);
      if (v3)
      {
      }

      else
      {

        sub_1D62AF89C(a1, v16);
      }
    }

    else
    {
      sub_1D62B0A6C(a1, a2);
    }
  }

  else
  {
    if (v9 == 2)
    {
      v12 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);

      sub_1D62A57B8(a1, v16, v13, v14);
    }

    else
    {
      if (v9 == 3)
      {
        return;
      }

      v10 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      sub_1D62AF89C(a1, a2);
      if (v3)
      {

        return;
      }

      sub_1D6E705CC(a1, v16, v10);
    }
  }
}

uint64_t sub_1D62AFAEC(char **a1, __int128 *a2)
{
  v5 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v5;
  v11[0] = *(v2 + 48);
  *(v11 + 15) = *(v2 + 63);
  sub_1D5CF5DBC(v10, v8);
  sub_1D5CF5E6C(a1, a2);
  v6 = *(v2 + 32);
  v8[0] = *(v2 + 16);
  v8[1] = v6;
  v9[0] = *(v2 + 48);
  *(v9 + 15) = *(v2 + 63);
  return sub_1D5CF603C(v8);
}

void sub_1D62AFBA8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if ((v3 & 0xF000000000000007) != 0x7000000000000007 && ((v3 >> 57) & 0xF8 | v3 & 7 | 0x20) != 0x7F && v3 >> 62 == 3)
  {
    sub_1D62B3700(result, a2);
  }
}

double sub_1D62AFC20(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v40[4] = a2[4];
  v40[5] = v4;
  v40[6] = a2[6];
  v5 = a2[1];
  v40[0] = *a2;
  v40[1] = v5;
  v6 = a2[3];
  v40[2] = a2[2];
  v40[3] = v6;
  v7 = *v2;
  if (*v2 < 0)
  {
    v21 = v7 & 0x7FFFFFFFFFFFFFFFLL;
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);

    sub_1D62A58E8(a1, v40, v22, v23);
  }

  else
  {
    v8 = *(v7 + 96);
    v36 = *(v7 + 80);
    v37 = v8;
    v38 = *(v7 + 112);
    v39 = *(v7 + 128);
    v9 = *(v7 + 32);
    v32 = *(v7 + 16);
    v33 = v9;
    v10 = *(v7 + 64);
    v34 = *(v7 + 48);
    v35 = v10;
    v11 = *(a1 + 8);
    sub_1D5D093E8(&v32, &v25);
    sub_1D5D093E8(&v32, &v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D5D095A0(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1D5D095A0((v12 > 1), v13 + 1, 1, v11);
    }

    sub_1D5D09904(&v32);
    v29 = v36;
    v30 = v37;
    *v31 = v38;
    *&v31[16] = v39;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    sub_1D5D09958(&v25);
    *(v11 + 2) = v13 + 1;
    v14 = &v11[128 * v13];
    v15 = v25;
    v16 = v26;
    v17 = v28;
    *(v14 + 4) = v27;
    *(v14 + 5) = v17;
    *(v14 + 2) = v15;
    *(v14 + 3) = v16;
    v18 = v29;
    v19 = v30;
    v20 = *v31;
    *(v14 + 137) = *&v31[9];
    *(v14 + 7) = v19;
    *(v14 + 8) = v20;
    *(v14 + 6) = v18;
    *(a1 + 8) = v11;
  }

  return *&v18;
}

double sub_1D62AFDDC(uint64_t a1, _OWORD *a2)
{

  sub_1D62AFC20(a1, a2);

  return result;
}

void sub_1D62AFE58(uint64_t result, uint64_t a2)
{
  if (((*v2 >> 57) & 0xF8 | *v2 & 7 | 0x20) != 0x7F && *v2 >> 62 == 3)
  {
    sub_1D62B3700(result, a2);
  }
}

uint64_t sub_1D62AFEBC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v29 = a1;
  v6 = *(a3 + 16);
  v7 = sub_1D726393C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v18 - v10;
  v12 = a2[5];
  v26 = a2[4];
  v27 = v12;
  v28 = a2[6];
  v13 = a2[1];
  v22 = *a2;
  v23 = v13;
  v14 = a2[3];
  v24 = a2[2];
  v25 = v14;
  (*(v8 + 16))(v18 - v10, v3 + *(a3 + 52), v7);
  if ((*(*(v6 - 8) + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
LABEL_6:
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    return sub_1D5BFB774(&v19, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }

  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v15 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v16 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    v18[4] = v26;
    v18[5] = v27;
    v18[6] = v28;
    v18[0] = v22;
    v18[1] = v23;
    v18[2] = v24;
    v18[3] = v25;
    (*(v16 + 8))(v29, v18, v15, v16);
    return __swift_destroy_boxed_opaque_existential_1(&v19);
  }

  return sub_1D5BFB774(&v19, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
}

uint64_t sub_1D62B0188(char **a1, __int128 *a2)
{
  v4 = *(v2 + 64) | (*(v2 + 66) << 16);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v14 = *(v2 + 56);
  sub_1D5D0A5BC(v9, v10, v11, v12, v13, v14, v4);
  sub_1D5D0A61C(a1, a2, v5, v6);
  return sub_1D5D0A678(v9, v10, v11, v12, v13, v14, v4);
}

double sub_1D62B02BC(uint64_t a1, __int128 *a2)
{
  v6 = *(v2 + 32);
  if ((~*(v2 + 24) & 0xF000000000000007) == 0 || (, sub_1D5CF9A24(a1, a2), , !v3))
  {
    if ((~v6 & 0xF000000000000007) != 0)
    {

      sub_1D5CF9A24(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1D62B0384(char **a1, __int128 *a2)
{
  v41[0] = a1;
  v3 = v2;
  sub_1D5C5A0E0(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v41 - v7;
  sub_1D5C5A0E0(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v41 - v11;
  sub_1D5C5A0E0(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v41 - v15;
  sub_1D5C5A0E0(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v41 - v19;
  sub_1D5C5A0E0(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = v41 - v23;
  v25 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2[5];
  v42[4] = a2[4];
  v42[5] = v29;
  v42[6] = a2[6];
  v30 = a2[1];
  v42[0] = *a2;
  v42[1] = v30;
  v31 = a2[3];
  v42[2] = a2[2];
  v42[3] = v31;
  sub_1D62B50EC(v3, v28, type metadata accessor for FormatPropertyDefinition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D62B6DB8(v28, v24);
      if ((~*(v24 + 9) & 0xF000000000000007) != 0)
      {
        v43 = *(v24 + 9);

        sub_1D5CF9A24(v41[0], a2);
      }

      return sub_1D62B6E54(v24);
    }

    return sub_1D62B51D0(v28, type metadata accessor for FormatPropertyDefinition);
  }

  if (EnumCaseMultiPayload > 8)
  {
    v36 = v41[1];
    if (EnumCaseMultiPayload == 9)
    {
      sub_1D62B6808(v28, v16);
      if ((~*(v16 + 9) & 0xF000000000000007) != 0)
      {
        v43 = *(v16 + 9);

        sub_1D62AF89C(v41[0], a2);
      }

      return sub_1D62B68A4(v16);
    }

    else if (EnumCaseMultiPayload == 10)
    {
      sub_1D62B66D8(v28, v12);
      if ((~*(v12 + 9) & 0xF000000000000007) != 0)
      {
        v43 = *(v12 + 9);

        sub_1D5D0350C(v41[0], a2);
      }

      return sub_1D62B6774(v12);
    }

    else
    {
      sub_1D62B65A8(v28, v8);
      v37 = *(v8 + 9);
      if ((~v37 & 0xF000000000000007) == 0 || v37 < 0)
      {
        return sub_1D62B6644(v8);
      }

      else
      {
        v38 = *(v37 + 16);
        v39 = *(v37 + 24);
        sub_1D612612C(*(v8 + 9));

        v40 = v41[0];
        sub_1D6E60F24(v41[0], v42, v38);
        if (!v36)
        {
          sub_1D62B28C0(v40, v42, v39);
        }

        sub_1D62B6644(v8);

        return sub_1D5BD9F54(v37);
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      return sub_1D62B51D0(v28, type metadata accessor for FormatPropertyDefinition);
    }

    sub_1D62B6938(v28, v20);
    if ((~*(v20 + 9) & 0xF000000000000007) != 0)
    {
      v43 = *(v20 + 9);

      sub_1D5CF94EC(v41[0], a2, v34, v35);
    }

    return sub_1D62B69D4(v20);
  }
}

void sub_1D62B0914(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 56);
  if ((v3 & 0xF000000000000007) != 0x7000000000000007 && ((v3 >> 57) & 0xF8 | v3 & 7 | 0x20) != 0x7F && v3 >> 62 == 3)
  {
    sub_1D62B3700(result, a2);
  }
}

uint64_t sub_1D62B0A0C(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  return sub_1D5CF8C68(a1, v7, *(v2 + 112));
}

void sub_1D62B0A6C(uint64_t result, _OWORD *a2)
{
  v5 = a2[6];
  v98[5] = a2[5];
  v98[6] = v5;
  v6 = a2[2];
  v98[1] = a2[1];
  v98[2] = v6;
  v7 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  v14 = v2[6];
  v13 = v2[7];
  v16 = v2[8];
  v15 = v2[9];
  v18 = v2[10];
  v17 = v2[11];
  v20 = v2[12];
  v19 = v2[13];
  v21 = v2[14];
  v99 = v2[15];
  v22 = v2[16];
  v84 = v2[17];
  v80 = v2[18];
  v82 = v2[19];
  v81 = v2[20];
  v85 = v2[21];
  v79 = v2[22];
  v78 = v2[23];
  v75 = v2[24];
  v76 = v2[25];
  v77 = v2[26];
  v23 = v2[28];
  v74 = v2[27];
  v24 = v2[29];
  v25 = a2[4];
  v98[3] = a2[3];
  v98[4] = v25;
  v98[0] = *a2;
  v96 = v19;
  v97 = v21;
  v94 = v17;
  v95 = v20;
  v92 = v15;
  v93 = v18;
  v90 = v9;
  v91 = v16;
  v83 = v22;
  if (v7 >> 62 == 3)
  {
    v86 = v10;
    v88 = v11;
    v26 = v12;
    v27 = v14;
    v73 = v13;
    v28 = v23;
    v29 = v24;
    v30 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v30;
    v24 = v29;
    v23 = v28;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v9 = v90;
    v16 = v91;
    v13 = v73;
    v14 = v27;
    v12 = v26;
    v10 = v86;
    v11 = v88;
  }

  if (v8 >> 62 == 3)
  {
    v87 = v10;
    v89 = v11;
    v31 = v12;
    v32 = v14;
    v33 = v24;
    v34 = v23;
    v35 = v13;
    v36 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v36;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v9 = v90;
    v16 = v91;
    v13 = v35;
    v23 = v34;
    v24 = v33;
    v14 = v32;
    v12 = v31;
    v10 = v87;
    v11 = v89;
  }

  v37 = v99;
  if (v10 >> 62 == 3)
  {
    v38 = v11;
    v39 = v12;
    v40 = v14;
    v41 = v24;
    v42 = v23;
    v43 = v13;
    v44 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v44;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v9 = v90;
    v16 = v91;
    v13 = v43;
    v23 = v42;
    v24 = v41;
    v14 = v40;
    v12 = v39;
    v11 = v38;
    v37 = v99;
  }

  if (v9 >> 62 == 3 && (v9 & 0xF000000000000007) != 0xF000000000000007)
  {
    v45 = v11;
    v46 = v13;
    v47 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v47;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v16 = v91;
    v13 = v46;
    v11 = v45;
  }

  if (v11 >> 62 == 3 && (v11 & 0xF000000000000007) != 0xF000000000000007)
  {
    v48 = v12;
    v49 = v13;
    v50 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v50;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v16 = v91;
    v13 = v49;
    v12 = v48;
  }

  if (v12 >> 62 == 3 && (v12 & 0xF000000000000007) != 0xF000000000000007)
  {
    v51 = v14;
    v52 = v13;
    v53 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v53;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v16 = v91;
    v13 = v52;
    v14 = v51;
  }

  if (v14 >> 62 == 3 && (v14 & 0xF000000000000007) != 0xF000000000000007)
  {
    v54 = v13;
    v55 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v55;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v16 = v91;
    v13 = v54;
  }

  if (v13 >> 62 == 3 && (v13 & 0xF000000000000007) != 0xF000000000000007)
  {
    v56 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v56;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
    v16 = v91;
  }

  if (v16 >> 62 == 3 && (v16 & 0xF000000000000007) != 0xF000000000000007)
  {
    v57 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v57;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v15 = v92;
    v18 = v93;
  }

  if (v15 >> 62 == 3 && (v15 & 0xF000000000000007) != 0xF000000000000007)
  {
    v58 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v58;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
    v18 = v93;
  }

  if (v18 >> 62 == 3 && (v18 & 0xF000000000000007) != 0xF000000000000007)
  {
    v59 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v59;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v17 = v94;
    v20 = v95;
  }

  if (v17 >> 62 == 3 && (v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    v60 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v60;
    v37 = v99;
    v19 = v96;
    v21 = v97;
    v20 = v95;
  }

  if (v20 >> 62 == 3 && (v20 & 0xF000000000000007) != 0xF000000000000007)
  {
    v61 = result;
    sub_1D62B3700(result, a2);
    if (v3)
    {
      return;
    }

    result = v61;
    v37 = v99;
    v19 = v96;
    v21 = v97;
  }

  if (v19 >> 62 == 3 && (v19 & 0xF000000000000007) != 0xF000000000000007)
  {
    v62 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }

    result = v62;
    v37 = v99;
    v21 = v97;
  }

  if (v21 >> 62 == 3 && (v21 & 0xF000000000000007) != 0xF000000000000007)
  {
    v63 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }

    result = v63;
    v37 = v99;
  }

  if (v37 >> 62 == 3 && (v37 & 0xF000000000000007) != 0xF000000000000007)
  {
    v64 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }

    result = v64;
  }

  if (v83 >> 62 == 3 && (v83 & 0xF000000000000007) != 0xF000000000000007)
  {
    v65 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }

    result = v65;
  }

  if (v84 >> 62 == 3 && (v84 & 0xF000000000000007) != 0xF000000000000007)
  {
    v66 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }

    result = v66;
  }

  if (v80 >> 62 == 3 && (v80 & 0xF000000000000007) != 0xF000000000000007)
  {
    v67 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }

    result = v67;
  }

  if (v82 >> 62 == 3 && (v82 & 0xF000000000000007) != 0xF000000000000007)
  {
    v68 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }

    result = v68;
  }

  if (v81 >> 62 == 3 && (v81 & 0xF000000000000007) != 0xF000000000000007)
  {
    v69 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }

    result = v69;
  }

  if (v85 >> 62 == 3 && (v85 & 0xF000000000000007) != 0xF000000000000007)
  {
    v70 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }

    result = v70;
  }

  if (v79 >> 62 == 3 && (v79 & 0xF000000000000007) != 0xF000000000000007)
  {
    v71 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }

    result = v71;
  }

  if (v78 >> 62 != 3 || (v78 & 0xF000000000000007) == 0xF000000000000007)
  {
    v72 = result;
  }

  else
  {
    v72 = result;
    sub_1D62B3700(result, v98);
    if (v3)
    {
      return;
    }
  }

  if (v75 >> 62 != 3 || (v75 & 0xF000000000000007) == 0xF000000000000007 || (sub_1D62B3700(v72, v98), !v3))
  {
    if (v76 >> 62 != 3 || (v76 & 0xF000000000000007) == 0xF000000000000007 || (sub_1D62B3700(v72, v98), !v3))
    {
      if (v77 >> 62 != 3 || (v77 & 0xF000000000000007) == 0xF000000000000007 || (sub_1D62B3700(v72, v98), !v3))
      {
        if (v74 >> 62 != 3 || (v74 & 0xF000000000000007) == 0xF000000000000007 || (sub_1D62B3700(v72, v98), !v3))
        {
          if (v23 >> 62 != 3 || (v23 & 0xF000000000000007) == 0xF000000000000007 || (sub_1D62B3700(v72, v98), !v3))
          {
            if (v24 >> 62 == 3 && (v24 & 0xF000000000000007) != 0xF000000000000007)
            {
              sub_1D62B3700(v72, v98);
            }
          }
        }
      }
    }
  }
}

double sub_1D62B14EC(char **a1, __int128 *a2)
{
  v4 = *v2;
  v5 = a2[5];
  v10[4] = a2[4];
  v10[5] = v5;
  v10[6] = a2[6];
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  swift_beginAccess();
  v8 = *(v4 + 48);

  sub_1D5CF6090(a1, v10, v8);

  return result;
}

uint64_t sub_1D62B15A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v7[5];
  v24 = v7[4];
  v25 = v8;
  v26 = v7[6];
  v9 = v7[1];
  v20 = *v7;
  v21 = v9;
  v10 = v7[3];
  v22 = v7[2];
  v23 = v10;
  (*(v12 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(v11 + 36), v5);
  sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  if (swift_dynamicCast())
  {
    v13 = *(&v18 + 1);
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    v16[4] = v24;
    v16[5] = v25;
    v16[6] = v26;
    v16[0] = v20;
    v16[1] = v21;
    v16[2] = v22;
    v16[3] = v23;
    (*(v14 + 8))(a1, v16, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    return sub_1D5BFB774(&v17, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
  }
}

unint64_t sub_1D62B17B0(unint64_t a1, __int128 *a2)
{
  v7 = *v2;
  v6 = v2[1];
  sub_1D5C82CD8(*v2);
  sub_1D5CF9048(a1, a2, v8, v9, v10, v11, v12, v13);
  result = sub_1D5C92A8C(v7);
  if (!v3 && (~v6 & 0xF000000000000007) != 0)
  {
    sub_1D5C82CD8(v6);
    sub_1D5CF9048(a1, a2, v15, v16, v17, v18, v19, v20);
    return sub_1D5C92A8C(v6);
  }

  return result;
}

void sub_1D62B187C(char **a1, __int128 *a2)
{
  v5 = *v2;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v11[6] = a2[6];
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  swift_beginAccess();
  v9 = *(v5 + 56);

  sub_1D5CF6244(a1, v11, v9);

  if (!v3)
  {
    swift_beginAccess();
    v10 = *(v5 + 40);

    sub_1D5CF6090(a1, v11, v10);
  }
}

void sub_1D62B1964(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v11[6] = a2[6];
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  swift_beginAccess();
  v8 = v2[9];

  sub_1D5CF6244(a1, v11, v8);

  if (!v3)
  {
    swift_beginAccess();
    v9 = v2[11];

    sub_1D5CFD3E0(a1, v11, v9);

    swift_beginAccess();
    v10 = v2[8];

    sub_1D5CF6090(a1, v11, v10);
  }
}

void sub_1D62B1AD0(char **a1, __int128 *a2)
{
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v11[6] = a2[6];
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = *v2;
  if (*v2 < 0)
  {
    v10 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D5D0A0A0(a1, v11, v10);
  }

  else if (*(v7 + 40))
  {
    v9 = *(v7 + 24);
    v8 = *(v7 + 32);
    sub_1D5F586D0(v9, v8, 1);
    sub_1D62A5EDC(a1, v11, v9, v8);
    sub_1D5F5870C(v9, v8, 1);
  }
}

uint64_t sub_1D62B1BE0(uint64_t result, _OWORD *a2)
{
  v3 = a2[5];
  v10[4] = a2[4];
  v10[5] = v3;
  v10[6] = a2[6];
  v4 = a2[1];
  v10[0] = *a2;
  v10[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  if (*(v2 + 24) == 1)
  {
    v8 = v2 + 8;
    v7 = *(v2 + 8);
    v6 = *(v8 + 8);
    v9 = result;
    sub_1D5F586D0(v7, v6, 1);
    sub_1D62A5EDC(v9, v10, v7, v6);
    return sub_1D5F5870C(v7, v6, 1);
  }

  return result;
}

uint64_t sub_1D62B1C84(uint64_t result, _OWORD *a2)
{
  v3 = a2[5];
  v6[4] = a2[4];
  v6[5] = v3;
  v6[6] = a2[6];
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = a2[3];
  v6[2] = a2[2];
  v6[3] = v5;
  if (*(v2 + 16) == 1)
  {
    return sub_1D62A5EDC(result, v6, *v2, *(v2 + 8));
  }

  return result;
}

double sub_1D62B1CD8(char **a1, __int128 *a2)
{
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v9[6] = a2[6];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v7 = *(v2 + 8);

  sub_1D5CF6244(a1, v9, v7);

  return result;
}

uint64_t sub_1D62B1D70(uint64_t a1, __int128 *a2)
{
  v3 = *v2;
  if ((*(v2 + 64) & 1) == 0)
  {
    return sub_1D5CF9A24(a1, a2);
  }

  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v8[6] = a2[6];
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  return sub_1D5CF8C68(a1, v8, v3);
}

void sub_1D62B1E50(unint64_t a1, __int128 *a2)
{
  v6 = a2[5];
  v14[4] = a2[4];
  v14[5] = v6;
  v14[6] = a2[6];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v9 = v2[3];
  v10 = v2[5];
  if ((~v2[2] & 0xF000000000000007) == 0 || (v15 = v2[2], , sub_1D5CF9A24(a1, a2), , !v3))
  {
    if ((~v9 & 0xF000000000000007) == 0 || (v15 = v9, , sub_1D5CF9A24(a1, a2), , !v3))
    {
      if (v10 >= 2)
      {
        if (v10 == 2)
        {
          return;
        }

        v12 = *(v10 + 16);
        v13 = *(v10 + 24);
        sub_1D5D0A59C(v10);
        sub_1D5D0A57C(v12);
        sub_1D5D0A57C(v13);
        sub_1D6248A90(a1, v14, v12, v13);
        sub_1D5D0A58C(v12);
        sub_1D5D0A58C(v13);
        v11 = v10;
      }

      else
      {
        v11 = v10;
      }

      sub_1D5D0A5AC(v11);
    }
  }
}

unint64_t sub_1D62B1FD0(unint64_t result, _OWORD *a2)
{
  v3 = a2[5];
  v10[4] = a2[4];
  v10[5] = v3;
  v10[6] = a2[6];
  v4 = a2[1];
  v10[0] = *a2;
  v10[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = *v2;
  if (*v2 >= 2)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = result;
    sub_1D5D0A57C(v7);
    sub_1D5D0A57C(v8);
    sub_1D6248A90(v9, v10, v7, v8);
    sub_1D5D0A58C(v7);
    return sub_1D5D0A58C(v8);
  }

  return result;
}

double sub_1D62B20A4(char **result, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  if ((*(v2 + 48) & 1) == 0)
  {
    *&v5 = sub_1D62A3D50(result, v7, *(v2 + 16), *(v2 + 24));
  }

  return *&v5;
}

double sub_1D62B20F8(char **result, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  if ((*(v2 + 32) & 1) == 0)
  {
    *&v5 = sub_1D62A3D50(result, v7, *v2, *(v2 + 8));
  }

  return *&v5;
}

double sub_1D62B2170(char **a1, __int128 *a2)
{
  v4 = a2[5];
  v9[4] = a2[4];
  v9[5] = v4;
  v9[6] = a2[6];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v7 = *(v2 + 32);

  sub_1D5CF6090(a1, v9, v7);

  return result;
}

double sub_1D62B21E4(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v12[6] = a2[6];
  v6 = a2[1];
  v12[0] = *a2;
  v12[1] = v6;
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v9 = v2[6];
  v8 = v2[7];
  v10 = v2[8];

  sub_1D5CF4060(a1, v12, v9);

  if (!v3)
  {

    sub_1D5CFD3E0(a1, v12, v8);

    sub_1D5CF6244(a1, v12, v10);
  }

  return result;
}

double sub_1D62B22DC(char **a1, __int128 *a2)
{
  v5 = a2[5];
  v18[4] = a2[4];
  v18[5] = v5;
  v18[6] = a2[6];
  v6 = a2[1];
  v18[0] = *a2;
  v18[1] = v6;
  v7 = a2[3];
  v18[2] = a2[2];
  v18[3] = v7;
  v9 = v2[6];
  v8 = v2[7];
  v10 = v2[8];
  v12 = v2[11];
  v11 = v2[12];
  if (v8)
  {
    swift_beginAccess();
    v13 = *(v8 + 56);

    sub_1D6E782FC(a1, v13);

    if (v3)
    {
      return result;
    }

    v15 = *(v8 + 74);
    if (v15 != 255)
    {
      v19 = v9;
      v16 = *(v8 + 72) | (v15 << 16);
      v17 = *(v8 + 64);
      sub_1D610CA74(v17, v16, SBYTE2(v16), sub_1D610CA28, sub_1D610CA5C);
      sub_1D62A8A9C();
      sub_1D610CA74(v17, v16, SBYTE2(v16), sub_1D60CF6A8, sub_1D60CF6DC);
      v9 = v19;
    }
  }

  sub_1D5CF4060(a1, v18, v10);

  if (!v3)
  {

    sub_1D5CF6244(a1, v18, v12);

    sub_1D5CFD3E0(a1, v18, v11);

    sub_1D5CF6090(a1, v18, v9);
  }

  return result;
}

unint64_t sub_1D62B2544()
{
  if (*(v0 + 9) == 1)
  {
    v1 = *(v0 + 8);
    if (v1 != 255)
    {
      v2 = *v0;
      sub_1D610CA28(v2, v1, 1);
      return sub_1D60CF6C8(v2, v1);
    }
  }

  return result;
}

void sub_1D62B25FC(__n128 a1)
{
  v2 = *(v1 + 32) | (*(v1 + 34) << 16);
  v3 = WORD1(v2);
  if (*(v1 + 34) != 255 && v3 != 0)
  {
    v5 = *(v1 + 24);
    if (v3 == 1)
    {
      if ((v2 & 0x100) != 0 && v2 != 0xFF)
      {
        v6 = v5;
        v7 = v2;
LABEL_15:
        sub_1D62B7DCC(v6, v7);
        sub_1D60CF6C8(v5, v2);
      }
    }

    else if (BYTE1(v2) <= 0xFEu && (v2 & 0x100) != 0)
    {
      if (v2 != 0xFF)
      {
        v6 = v5;
        v7 = v2;
        goto LABEL_15;
      }

      sub_1D62B6F70(v5, v2);
    }
  }
}

void sub_1D62B272C(char **a1, __int128 *a2)
{
  v6 = a2[5];
  v16[4] = a2[4];
  v16[5] = v6;
  v16[6] = a2[6];
  v7 = a2[1];
  v16[0] = *a2;
  v16[1] = v7;
  v8 = a2[3];
  v16[2] = a2[2];
  v16[3] = v8;

  sub_1D5CF6528(a1, a2, v9, v10, v11, v12, v13, v14);

  if (!v3)
  {
    swift_beginAccess();
    v15 = *(v2 + 24);

    sub_1D5CF6090(a1, v16, v15);
  }
}

double sub_1D62B2824(char **a1, __int128 *a2)
{
  v4 = *v2;
  v5 = a2[5];
  v10[4] = a2[4];
  v10[5] = v5;
  v10[6] = a2[6];
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  swift_beginAccess();
  v8 = *(v4 + 16);

  sub_1D5CF6090(a1, v10, v8);

  return result;
}

double sub_1D62B28C0(char **a1, __int128 *a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 16);
    v7 = *(a3 + 24);

    sub_1D6E60F24(a1, a2, v6);
    if (!v3)
    {
      sub_1D62B28C0(a1, a2, v7);
    }
  }

  return result;
}

void sub_1D62B2978(char **a1, __int128 *a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11[5];
  v31 = v11[4];
  v32 = v12;
  v33 = v11[6];
  v13 = v11[1];
  v27 = *v11;
  v28 = v13;
  v14 = v11[3];
  v29 = v11[2];
  v30 = v14;
  *&v23[0] = *v3;

  sub_1D5CF6528(a1, a2, v15, v16, v17, v18, v19, v20);

  if (!v4)
  {
    (*(v34 + 16))(v10, &v3[*(a3 + 36)], v8);
    sub_1D5B49474(0, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
    if (swift_dynamicCast())
    {
      v21 = *(&v25 + 1);
      v22 = v26;
      __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
      v23[4] = v31;
      v23[5] = v32;
      v23[6] = v33;
      v23[0] = v27;
      v23[1] = v28;
      v23[2] = v29;
      v23[3] = v30;
      (*(v22 + 8))(a1, v23, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(&v24);
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_1D5BFB774(&v24, &qword_1EC8854E8, &qword_1EC8854E0, &protocol descriptor for FormatPrefetchable);
    }
  }
}

void sub_1D62B2B9C(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v25[4] = a2[4];
  v25[5] = v3;
  v25[6] = a2[6];
  v4 = a2[1];
  v25[0] = *a2;
  v25[1] = v4;
  v5 = a2[3];
  v25[2] = a2[2];
  v25[3] = v5;
  if (!*(v2 + 17))
  {
    v6 = *v2;
    v7 = *v2 >> 61;
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v11 = a2[5];
        v22 = a2[4];
        v23 = v11;
        v24 = a2[6];
        v12 = a2[1];
        v18 = *a2;
        v19 = v12;
        v13 = a2[3];
        v20 = a2[2];
        v21 = v13;
        sub_1D607AC1C(a1);
      }

      else
      {
        v14 = *(v2 + 8);
        v15 = *(v2 + 16);
        v16 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v26[0] = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v26[1] = v16;
        v27 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        sub_1D5F586A4(v6, v14, v15, 0);
        sub_1D62B50EC(v26, &v18, sub_1D62B5154);
        sub_1D62A7020(a1, v25);
        sub_1D62B51D0(v26, sub_1D62B5154);
        sub_1D5F5816C(v6, v14, v15, 0);
      }
    }

    else if (v7 >= 2)
    {
      v8 = a2[5];
      v22 = a2[4];
      v23 = v8;
      v24 = a2[6];
      v9 = a2[1];
      v18 = *a2;
      v19 = v9;
      v10 = a2[3];
      v20 = a2[2];
      v21 = v10;
      sub_1D5FD7C7C(a1);
    }
  }
}

double sub_1D62B2D84(char **a1, __int128 *a2)
{

  sub_1D5D0350C(a1, a2);

  return result;
}

void sub_1D62B2DE8(uint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v15[4] = a2[4];
  v15[5] = v5;
  v15[6] = a2[6];
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  v7 = a2[3];
  v8 = *v2;
  v9 = *v2 >> 62;
  v15[2] = a2[2];
  v15[3] = v7;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      return;
    }

    v11 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    sub_1D5F33D5C(v12);

    sub_1D5F33D5C(v12);
    sub_1D62B2DE8(a1, a2);
    sub_1D5F33D8C(v12);
    if (v3)
    {

      sub_1D5F33D8C(v12);
      return;
    }

    sub_1D6E6EB3C(a1, v15, v13);
    sub_1D5F33D8C(v12);
  }

  else
  {
    if (v9)
    {
      sub_1D5CF9A24(a1, a2);
      return;
    }

    v10 = *(v8 + 16);

    sub_1D5CF8C68(a1, v15, v10);
  }
}

double sub_1D62B2F7C(char **result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (((*(v4 + 8) >> 59) & 2 | (*(v4 + 8) >> 2) & 1) <= 2)
  {
    return sub_1D62B2FF8(result, a2);
  }

  return v5;
}

double sub_1D62B2FF8(char **a1, __int128 *a2)
{

  sub_1D5D0350C(a1, a2);

  return result;
}

double sub_1D62B3074(char **a1, __int128 *a2)
{
  if ((~*v2 & 0xF000000000000007) != 0)
  {

    sub_1D5CFEE30(a1, a2);
  }

  return result;
}

void sub_1D62B3108(uint64_t a1, _OWORD *a2)
{
  v6 = *(v2 + 8);

  sub_1D5CFEE30(a1, a2);

  if (!v3 && v6 >> 62 == 3)
  {
    sub_1D62B3700(a1, a2);
  }
}

double sub_1D62B31DC(char **a1, __int128 *a2)
{

  sub_1D5CFEE30(a1, a2);

  if (!v2)
  {

    sub_1D5D05600(a1, a2);
  }

  return result;
}

double sub_1D62B3288(uint64_t a1, uint64_t a2)
{

  sub_1D5D05600(a1, a2);

  if (!v2)
  {

    sub_1D5D05600(a1, a2);
  }

  return result;
}

double sub_1D62B3334(uint64_t a1, uint64_t a2)
{

  sub_1D5D05600(a1, a2);

  return result;
}

double sub_1D62B33B0(char **a1, __int128 *a2)
{

  sub_1D5D07D58(a1, a2);

  return result;
}

void sub_1D62B3454(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _OWORD *, __n128), void (*a6)(uint64_t, _OWORD *, uint64_t, __n128))
{
  v12 = a2[5];
  v16[4] = a2[4];
  v16[5] = v12;
  v16[6] = a2[6];
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  v14 = a2[3];
  v16[2] = a2[2];
  v16[3] = v14;
  v15 = v6[1];
  v17 = *v6;

  (a5)(a1, a2);

  if (!v7)
  {
    (a6)(a1, v16, v15);
  }
}

void sub_1D62B350C(char **a1, __int128 *a2)
{
  v6 = *(v2 + 24);

  sub_1D5CFEE30(a1, a2);

  if (!v3)
  {
    if (v6)
    {
      sub_1D5CFCC3C(a1, a2);
    }
  }
}

void sub_1D62B3600(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v6 = *(v2 + 80);
  v7[2] = a2[2];
  v7[3] = v5;
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      if ((v6 & 1) == 0)
      {
        sub_1D62A3D50(a1, v7, *(v2 + 48), *(v2 + 56));
      }
    }

    else
    {
      sub_1D62A82C0(a1, a2);
    }
  }
}

void sub_1D62B3680(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v6 = *(v2 + 48);
  v7[2] = a2[2];
  v7[3] = v5;
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      if ((v6 & 1) == 0)
      {
        sub_1D62A3D50(a1, v7, *(v2 + 16), *(v2 + 24));
      }
    }

    else
    {
      sub_1D62A82C0(a1, a2);
    }
  }
}

void sub_1D62B3700(uint64_t a1, uint64_t a2)
{
  if (*v2 >> 62 != 3 || (sub_1D62B3700(a1, a2), !v3))
  {
    nullsub_1();
  }
}

void sub_1D62B3764(uint64_t a1, uint64_t a2)
{
  if (*v2 >> 62 == 3)
  {
    sub_1D62B3700(a1, a2);
  }
}

double sub_1D62B37DC(uint64_t a1, __int128 *a2)
{
  if ((~*(v2 + 8) & 0xF000000000000007) != 0)
  {

    sub_1D5CF9A24(a1, a2);
  }

  return result;
}

void sub_1D62B38FC(char **a1, __int128 *a2)
{
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v11[6] = a2[6];
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = *v2;
  if ((*v2 & 0x8000000000000000) == 0)
  {
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);

    sub_1D6E60F24(a1, v11, v9);
    if (!v3)
    {
      sub_1D62B28C0(a1, v11, v10);
    }
  }
}

void sub_1D62B39B0(char **a1, __n128 *a2)
{
  v6 = *(v2 + 16);

  sub_1D5CF94EC(a1, a2, v7, v8);

  if (!v3)
  {
    if (v6)
    {
      sub_1D5CF8420(a1, a2);
    }
  }
}

double sub_1D62B3A8C(unint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v25[4] = a2[4];
  v25[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v25[0] = *a2;
  v25[1] = v7;
  v8 = a2[3];
  v25[2] = a2[2];
  v25[3] = v8;
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = *(v2 + 64);
  v12 = *(v2 + 80);
  v25[6] = v6;
  v26[0] = v11;
  v13 = *(v2 + 96);
  v14 = *(v2 + 112);
  v15 = *(v2 + 128);
  v27 = *(v2 + 144);
  v26[3] = v14;
  v26[4] = v15;
  v26[1] = v12;
  v26[2] = v13;
  v16 = *(v2 + 152);
  if ((~v10 & 0xF000000000000007) == 0 || (, sub_1D5D0491C(a1, a2, v18, v19, v20, v21, v22, v23), , !v3))
  {
    if (!v9 || (sub_1D5D0AE64(a1, v25, v9), !v3))
    {
      if (v27 != 254)
      {
        swift_retain_n();
        sub_1D5CF9A24(a1, v25);

        if (v3)
        {
          sub_1D5D0ABCC(v26, &qword_1EDF33718, &type metadata for FormatShadow);
          return *&v13;
        }

        sub_1D5D0ABCC(v26, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if ((~v16 & 0xF000000000000007) != 0)
      {

        sub_1D5CF9A24(a1, v25);
      }
    }
  }

  return *&v13;
}

void sub_1D62B3C70(unint64_t a1, __int128 *a2)
{
  v5 = a2[5];
  v23[4] = a2[4];
  v23[5] = v5;
  v6 = a2[6];
  v7 = a2[1];
  v23[0] = *a2;
  v23[1] = v7;
  v8 = a2[3];
  v23[2] = a2[2];
  v23[3] = v8;
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 56);
  v12 = *(v2 + 72);
  v23[6] = v6;
  v24[0] = v11;
  v13 = *(v2 + 88);
  v14 = *(v2 + 104);
  v15 = *(v2 + 120);
  v25 = *(v2 + 136);
  v24[3] = v14;
  v24[4] = v15;
  v24[1] = v12;
  v24[2] = v13;
  if ((~v10 & 0xF000000000000007) == 0 || (, sub_1D5D0491C(a1, a2, v17, v18, v19, v20, v21, v22), , !v3))
  {
    if (!v9 || (sub_1D5D0AE64(a1, v23, v9), !v3))
    {
      if (v25 != 254)
      {
        swift_retain_n();
        sub_1D5CF9A24(a1, v23);

        sub_1D5D0ABCC(v24, &qword_1EDF33718, &type metadata for FormatShadow);
      }
    }
  }
}

double sub_1D62B3DBC(uint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v14[4] = a2[4];
  v14[5] = v3;
  v14[6] = a2[6];
  v4 = a2[1];
  v14[0] = *a2;
  v14[1] = v4;
  v5 = a2[3];
  v6 = *v2;
  v7 = *v2 >> 62;
  v14[2] = a2[2];
  v14[3] = v5;
  if (v7 == 1)
  {
    v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    sub_1D5EB1500(v9);

    sub_1D62A5D84(a1, v14, v9, v10, v12);
    sub_1D5EB15C4(v9);
  }

  return *&v5;
}

void sub_1D62B3E68(uint64_t a1, __int128 *a2)
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
      sub_1D62A967C(a1, a2);
    }
  }

  else
  {
    sub_1D5D04BC4(v11);
  }
}

double sub_1D62B3FAC(uint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v10[4] = a2[4];
  v10[5] = v3;
  v10[6] = a2[6];
  v4 = a2[1];
  v10[0] = *a2;
  v10[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  if ((*v2 & 0x8000000000000000) != 0)
  {
    v6 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D62A5E2C(a1, v10, v6, v7);
  }

  return *&v5;
}

double sub_1D62B4048(unint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v12[4] = a2[4];
  v12[5] = v3;
  v12[6] = a2[6];
  v4 = a2[1];
  v12[0] = *a2;
  v12[1] = v4;
  v5 = a2[3];
  v12[2] = a2[2];
  v12[3] = v5;
  v6 = *v2;
  if (*v2 >= 2)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    sub_1D5D0A57C(v7);

    sub_1D62A5CE4(a1, v12, v7, v8, v10);
    sub_1D5D0A58C(v7);
  }

  return *&v5;
}

uint64_t sub_1D62B40EC(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16) & 1;
  sub_1D5C75A4C(*v1, v5, v6);
  sub_1D60ECF10(a1);
  return sub_1D5D2F2C8(v4, v5, v6);
}

uint64_t sub_1D62B416C(uint64_t a1)
{
  result = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  if (v5 < 4 && v4 <= 0xFD)
  {
    v6 = *v1;
    v7 = *(v1 + 8);
    v8 = *(v1 + 16);
    sub_1D5E1DCBC(result, v7, v4);
    sub_1D62B40EC(a1);
    return sub_1D5E1E15C(v6, v7, v8);
  }

  return result;
}

void sub_1D62B41FC(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v3 = type metadata accessor for FormatOption(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v52 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v51 = v50 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v50 - v12);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v56 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v55 = v50 - v19;
  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = (a2 + 49);
    v53 = (v4 + 56);
    v54 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
    while (1)
    {
      if (*v21)
      {
        goto LABEL_4;
      }

      v22 = *(v21 - 17);
      v23 = *(v21 - 9);
      v24 = *(v21 - 1);
      if ((v24 & 1) == 0)
      {
        sub_1D5E04C68(*(v21 - 17), v23, *(v21 - 1), 0);
        goto LABEL_4;
      }

      v25 = *(v21 - 9);
      sub_1D5C75A4C(*(v21 - 17), v23, 1);
      v58 = sub_1D5E26E28(&unk_1F50F6620);
      v26 = *(v57 + v54);
      v27 = *(v26 + 16);
      swift_beginAccess();
      v28 = *(*(v27 + 16) + 16);
      v59 = v25;
      if (v28)
      {
        sub_1D5B69D90(v22, v25);
        if (v29)
        {
          break;
        }
      }

      swift_endAccess();
      swift_beginAccess();
      if (*(*(v26 + 24) + 16))
      {
        sub_1D5B69D90(v22, v59);
        if (v34)
        {
          swift_endAccess();
          v33 = v56;
          sub_1D5D25108(v56);
          goto LABEL_13;
        }
      }

      swift_endAccess();
      v39 = *v53;
      v40 = v56;
      (*v53)(v56, 1, 1, v3);

      sub_1D5B6EF64(v40, &qword_1EDF337F0, type metadata accessor for FormatOption);
      if ((*(v57 + 48) & 1) == 0)
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        v48 = v59;
        *v49 = v22;
        v49[1] = v48;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return;
      }

      sub_1D5E04C68(v22, v59, v24, 0);
      v41 = v55;
      v39(v55, 1, 1, v3);
      sub_1D5B6EF64(v41, &qword_1EDF337F0, type metadata accessor for FormatOption);
LABEL_4:
      v21 += 24;
      if (!--v20)
      {
        return;
      }
    }

    swift_endAccess();
    v30 = v52;
    sub_1D5D25108(v52);
    v31 = v30;
    v32 = v51;
    sub_1D5D5E33C(v31, v51, type metadata accessor for FormatOption);
    v33 = v56;
    sub_1D5D5E33C(v32, v56, type metadata accessor for FormatOption);
LABEL_13:
    v35 = *v53;
    (*v53)(v33, 0, 1, v3);
    v36 = sub_1D5D5E33C(v33, v13, type metadata accessor for FormatOption);
    v60 = v13[2];
    FormatOptionValue.type.getter(v36, &v61);
    v37 = v58;
    if ((sub_1D6183C84(v61, v58) & 1) == 0)
    {
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      v50[1] = swift_allocError();
      v43 = v42;
      v44 = *v13;
      v45 = v13[1];
      v60 = v13[2];

      FormatOptionValue.type.getter(v46, &v61);
      v47 = v61;
      *v43 = v44;
      *(v43 + 8) = v45;
      *(v43 + 16) = v47;
      *(v43 + 24) = v37;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D5E04C68(v22, v59, v24, 0);
      sub_1D62B51D0(v13, type metadata accessor for FormatOption);
      return;
    }

    sub_1D5E04C68(v22, v59, v24, 0);
    v38 = v55;
    sub_1D5D5E33C(v13, v55, type metadata accessor for FormatOption);
    v35(v38, 0, 1, v3);
    sub_1D5B6EF64(v38, &qword_1EDF337F0, type metadata accessor for FormatOption);
    goto LABEL_4;
  }
}

void sub_1D62B4820(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = (a2 + 48); ; i += 3)
    {
      v6 = *i;

      sub_1D62B41FC(a1, v6);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return;
      }
    }
  }
}

unint64_t sub_1D62B48BC(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D5C82CD8(result);
  }

  return result;
}

unint64_t sub_1D62B48D0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D5C92A8C(result);
  }

  return result;
}

void sub_1D62B4A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 5u)
  {
    if (a7 > 8u)
    {
      if (a7 != 9 && a7 != 10 && a7 != 11)
      {
        return;
      }
    }

    else if (a7 != 6 && a7 != 7 && a7 != 8)
    {
      return;
    }

    goto LABEL_15;
  }

  if (a7 < 4u)
  {
    goto LABEL_15;
  }

  if (a7 == 4)
  {
    sub_1D5CDE22C(a1, a2);
    sub_1D5CDE22C(a3, a4);
    sub_1D5CDE22C(a5, a6);
    return;
  }

  if (a7 == 5)
  {
LABEL_15:
  }
}

double sub_1D62B4B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1D618909C(a1, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1D62B4B68(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, __n128 a7)
{
  v7 = (a6 >> 1) & 0xF;
  if (v7 > 6)
  {
    if (v7 == 7)
    {
    }

    else if (v7 == 8)
    {
      return sub_1D62B4DD8(result, a2, a3, a4, a5, a6 & 1, sub_1D5F58484);
    }
  }

  else if (v7 == 2)
  {
    return sub_1D62B4D50(result, a2, a3, a4, a5, a6 & 0xE1, sub_1D5F58484, sub_1D5F586A4, sub_1D5F58484);
  }

  else if (v7 == 3)
  {

    return sub_1D5F58484(result, a2);
  }

  return result;
}

double sub_1D62B4C5C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, __n128 a7)
{
  v7 = (a6 >> 1) & 0xF;
  if (v7 > 6)
  {
    if (v7 == 7)
    {
    }

    else if (v7 == 8)
    {
      sub_1D62B4DD8(a1, a2, a3, a4, a5, a6 & 1, sub_1D5F580D0);
    }
  }

  else if (v7 == 2)
  {
    sub_1D62B4D50(a1, a2, a3, a4, a5, a6 & 0xE1, sub_1D5F580D0, sub_1D5F5816C, sub_1D5F580D0);
  }

  else if (v7 == 3)
  {

    return sub_1D5F580D0(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1D62B4D50(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t (*a7)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t), uint64_t (*a9)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a6 >> 5;
  if (v10 > 3)
  {
    if (v10 != 4 && v10 != 5)
    {
      if (v10 == 6)
      {
        return sub_1D62B4DD8(result, a2, a3, a4, a5, a6 & 1, a9);
      }

      return result;
    }

    goto LABEL_11;
  }

  if (v10 == 1)
  {
LABEL_11:

    return a7(result, a2, a3, a4, a5);
  }

  if (v10 == 3)
  {

    return a8(result, a2, a3, a3 >> 8, a5);
  }

  return result;
}

uint64_t sub_1D62B4DD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 & 0xFFFFFFFE | (a2 >> 1) & 1;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      return (a7)(a2, a3, a4, a5);
    }
  }

  else if (v8)
  {
    return a7(result, a2 & 0xFFFFFFFFFFFFFFFDLL, a3, a4, a5);
  }

  else
  {
    return (a7)(result);
  }

  return result;
}

uint64_t sub_1D62B4E2C(uint64_t a1)
{
  v1 = *(a1 + 136) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

void sub_1D62B5004(uint64_t a1)
{
  if (!qword_1EC8854B0)
  {
    v4[0] = &type metadata for FormatColorBinding;
    v4[1] = &type metadata for FormatColor;
    v4[2] = sub_1D62B5080();
    v4[3] = sub_1D5B5706C();
    v2 = type metadata accessor for FormatUnboundValue(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8854B0);
    }
  }
}

unint64_t sub_1D62B5080()
{
  result = qword_1EC8854B8;
  if (!qword_1EC8854B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8854B8);
  }

  return result;
}

double sub_1D62B50D4(char a1)
{
  if ((a1 & 0xFE) != 0xCLL)
  {
  }

  return result;
}

uint64_t sub_1D62B50EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D62B5154(uint64_t a1)
{
  if (!qword_1EC8854C0)
  {
    v4[0] = &type metadata for FormatBindingFont;
    v4[1] = &type metadata for FormatFont;
    v4[2] = sub_1D607B620();
    v4[3] = sub_1D5B55668();
    v2 = type metadata accessor for FormatUnboundValue(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8854C0);
    }
  }
}

uint64_t sub_1D62B51D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D62B5230(char a1, uint64_t a2)
{
  if ((a1 & 0xFE) != 0xCLL)
  {
  }

  return result;
}

uint64_t sub_1D62B5354(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5D0ACAC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D62B53D4(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    return sub_1D5D04BD4(result);
  }

  return result;
}

void sub_1D62B53F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == 1)
  {

    sub_1D62B54C8(result);
  }

  else if (!a8)
  {
    sub_1D62B545C(result, a2, a3, a4, a5, a6, a7, sub_1D5C84FF4, sub_1D5C8500C);
  }
}

void sub_1D62B545C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)(uint64_t))
{
  if ((a7 & 0xF000000000000007) != 0xD000000000000007)
  {
    a8(a1);

    a9(a7);
  }
}

uint64_t sub_1D62B54C8(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    return sub_1D5C8500C(result);
  }

  return result;
}

void sub_1D62B54E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == 1)
  {

    sub_1D62B53D4(a1);
  }

  else if (!a8)
  {
    sub_1D62B545C(a1, a2, a3, a4, a5, a6, a7, sub_1D5CFCFAC, sub_1D5D04BD4);
  }
}

uint64_t sub_1D62B5550(uint64_t result)
{
  v3 = result;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = *(v1 + 80);
  v16 = *(v1 + 96);
  if (v4 == 255 || (v13 = *(v1 + 8), v14 = *(v1 + 16), v15 = v4 & 1, sub_1D5C75A4C(v13, v14, v4 & 1), sub_1D60ECF10(v3), result = sub_1D5D2F2C8(v13, v14, v15), !v2))
  {
    if (v7 == 255 || (sub_1D5C75A4C(v5, v6, v7 & 1), sub_1D60ECF10(v3), result = sub_1D5D2F2C8(v5, v6, v7 & 1), !v2))
    {
      if (v10 == 255 || (sub_1D5C75A4C(v8, v9, v10 & 1), sub_1D60ECF10(v3), result = sub_1D5D2F2C8(v8, v9, v10 & 1), !v2))
      {
        if (v16 != 255)
        {
          sub_1D5C75A4C(v12, v11, v16 & 1);
          sub_1D60ECF10(v3);
          return sub_1D5D2F2C8(v12, v11, v16 & 1);
        }
      }
    }
  }

  return result;
}

void sub_1D62B56CC(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v3 = type metadata accessor for FormatOption(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v52 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v51 - v12;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v60 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = *(a2 + 16);
  if (v20)
  {
    v58 = (v4 + 56);
    v59 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
    v21 = (a2 + 64);
    v54 = v13;
    v56 = &v51 - v19;
    v57 = v3;
    do
    {
      if (*v21 != 1)
      {
        goto LABEL_4;
      }

      v22 = *(v21 - 3);
      v23 = *(v21 - 2);
      v24 = *(v21 - 1);

      sub_1D5C75A4C(v23, v24, 1);
      v62 = sub_1D5E26E28(&unk_1F50F6E98);
      v25 = *(v61 + v59);
      v26 = *(v25 + 16);
      swift_beginAccess();
      if (*(*(v26 + 16) + 16) && (sub_1D5B69D90(v23, v24), (v27 & 1) != 0))
      {
        v55 = v22;
        swift_endAccess();
        v28 = v53;
        sub_1D5D25108(v53);
        v29 = v28;
        v30 = v52;
        sub_1D5D5E33C(v29, v52, type metadata accessor for FormatOption);
        v31 = v60;
        sub_1D5D5E33C(v30, v60, type metadata accessor for FormatOption);
        v32 = v58;
      }

      else
      {
        swift_endAccess();
        swift_beginAccess();
        v32 = v58;
        if (!*(*(v25 + 24) + 16) || (sub_1D5B69D90(v23, v24), (v33 & 1) == 0))
        {
          v40 = v24;
          swift_endAccess();
          v41 = *v32;
          v42 = v60;
          v43 = v57;
          (*v32)(v60, 1, 1, v57);

          sub_1D5B6EF64(v42, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(v61 + 48) & 1) == 0)
          {
            type metadata accessor for FormatLayoutError(0);
            sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
            swift_allocError();
            *v50 = v23;
            v50[1] = v40;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D5D2F2C8(v23, v40, 1);
            return;
          }

          sub_1D5D2F2C8(v23, v40, 1);
          v39 = v56;
          v41(v56, 1, 1, v43);
          goto LABEL_3;
        }

        v55 = v22;
        swift_endAccess();
        v31 = v60;
        sub_1D5D25108(v60);
      }

      v34 = *v32;
      v35 = v57;
      (*v32)(v31, 0, 1, v57);
      v36 = v54;
      v37 = sub_1D5D5E33C(v31, v54, type metadata accessor for FormatOption);
      v63 = v36[2];
      FormatOptionValue.type.getter(v37, &v64);
      v38 = v62;
      if ((sub_1D6183C84(v64, v62) & 1) == 0)
      {
        v61 = type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v45 = v44;
        v46 = *v36;
        v47 = v36[1];
        v63 = v36[2];

        FormatOptionValue.type.getter(v48, &v64);
        v49 = v64;
        *v45 = v46;
        *(v45 + 8) = v47;
        *(v45 + 16) = v49;
        *(v45 + 24) = v38;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5D2F2C8(v23, v24, 1);
        sub_1D62B51D0(v36, type metadata accessor for FormatOption);
        return;
      }

      sub_1D5D2F2C8(v23, v24, 1);
      v39 = v56;
      sub_1D5D5E33C(v36, v56, type metadata accessor for FormatOption);
      v34(v39, 0, 1, v35);
LABEL_3:
      sub_1D5B6EF64(v39, &qword_1EDF337F0, type metadata accessor for FormatOption);
LABEL_4:
      v21 += 40;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_1D62B5D00(uint64_t result, uint64_t a2)
{
  if (result != 9)
  {
    return sub_1D5C84FF4(a2);
  }

  return result;
}

uint64_t sub_1D62B5D18(uint64_t result, uint64_t a2)
{
  if (result != 9)
  {
    return sub_1D5CFCFAC(a2);
  }

  return result;
}

uint64_t sub_1D62B5D30(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_1D62B5D44(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1D62B5D88(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1D62B5DD0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

double sub_1D62B5E14(unint64_t result, uint64_t a2)
{
  if (result != 3)
  {
    return sub_1D62B5E24(result);
  }

  return v2;
}

double sub_1D62B5E24(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

void sub_1D62B5FC8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    v2 = a1;
  }
}

void sub_1D62B5FD4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D5FC4E9C(a1, a2 & 1);
  }
}

void sub_1D62B5FEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1D5F26348(a1, a2, a3 & 1);
  }
}

uint64_t sub_1D62B6164(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

double sub_1D62B61A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D62B6240(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return result;
}

double sub_1D62B628C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return result;
}

uint64_t sub_1D62B6438(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C5A0E0(0, a3, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D62B64C0()
{
  result = qword_1EDF1F870;
  if (!qword_1EDF1F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F870);
  }

  return result;
}

uint64_t sub_1D62B6514(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF2ED78, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B65A8(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6644(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B66D8(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B6774(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6808(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B68A4(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6938(uint64_t a1, uint64_t a2)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62B69D4(uint64_t a1)
{
  sub_1D5C5A0E0(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62B6A68(uint64_t a1, uint64_t a2)
{
  sub_1D5CF4A48(0, &qword_1EDF43F78, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}