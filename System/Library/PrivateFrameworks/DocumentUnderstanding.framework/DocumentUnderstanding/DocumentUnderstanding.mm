uint64_t sub_232B04D18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232B04D38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_232B04D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232CE9340();
  sub_232B13FB4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_232B12480(v9, a2, v8);
  }

  sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  sub_232B13FB4();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 32) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_232B04E90()
{
  sub_232B13FCC();
  sub_232B13FB4();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
    sub_232B13FB4();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 32) + 8) = v0;
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  sub_232B12504(v7, v0, v0, v6);
}

uint64_t sub_232B04F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232CE9340();
  sub_232B13FB4();
  if (*(v7 + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_232B0501C()
{
  sub_232B13FCC();
  sub_232B13FB4();
  if (*(v5 + 84) == v3)
  {

    sub_232B12504(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_232B050EC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_232B13934(a2);
  *a1 = result;
  return result;
}

uint64_t sub_232B05204(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B052DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B053B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B0546C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B05570()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_232B055C0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_232B24488(a2);
  *a1 = result;
  return result;
}

uint64_t sub_232B055F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232B2464C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_232B05620@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_232B24820(a2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_232B05678()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232B056B0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232B056F8()
{

  sub_232B26D50();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232B05730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B057EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B05898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_232B05944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_232B05A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B05AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B05BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    v9 = a1 + *(a3 + 68);

    return sub_232B12480(v9, a2, v8);
  }
}

uint64_t sub_232B05C34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 68);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B05CE8()
{
  sub_232B3500C();
  result = sub_232B2F16C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B05D3C()
{
  sub_232B3500C();
  result = sub_232B2F258();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B05D90()
{
  sub_232B3500C();
  result = sub_232B2F3BC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B05DE4()
{
  sub_232B3500C();
  result = sub_232B2F450();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B05E38()
{
  sub_232B3500C();
  result = sub_232B2F4E4();
  *v0 = result;
  return result;
}

uint64_t sub_232B05E64()
{
  sub_232B3500C();
  result = sub_232B2F604();
  *v0 = result;
  return result;
}

uint64_t sub_232B05E90()
{
  sub_232B3500C();
  result = sub_232B2F748();
  *v0 = result;
  return result;
}

uint64_t sub_232B05EBC()
{
  sub_232B3500C();
  result = sub_232B2F808();
  *v0 = result;
  return result;
}

uint64_t sub_232B05EE8()
{
  sub_232B3500C();
  result = sub_232B2F8C8();
  *v0 = result;
  return result;
}

uint64_t sub_232B05F14()
{
  sub_232B3500C();
  result = sub_232B2F988();
  *v0 = result;
  return result;
}

uint64_t sub_232B05F68()
{
  sub_232B3500C();
  result = sub_232B2FE90();
  *v0 = result;
  return result;
}

uint64_t sub_232B05F94()
{
  sub_232B3500C();
  result = sub_232B30040();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B0605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

uint64_t sub_232B06134(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B06208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232B38D08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_232B06238@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232B38EF4();
  *a1 = result;
  return result;
}

uint64_t sub_232B062B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B06370(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B06430()
{
  sub_232B3500C();
  result = sub_232B3B354();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B06484()
{
  sub_232B3500C();
  result = sub_232B3B3F0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B064D8()
{
  sub_232B3500C();
  result = sub_232B3B4D4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B0652C()
{
  sub_232B3500C();
  result = sub_232B3B570();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B06580()
{
  sub_232B3500C();
  result = sub_232B3B5D4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B06628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    v9 = a1 + *(a3 + 40);

    return sub_232B12480(v9, a2, v8);
  }
}

uint64_t sub_232B066B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 40);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B06748()
{
  sub_232B3500C();
  result = sub_232B3D80C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B0679C()
{
  sub_232B3500C();
  result = sub_232B3D8F8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B067F0()
{
  sub_232B3500C();
  result = sub_232B3DA5C();
  *v0 = result;
  return result;
}

uint64_t sub_232B0681C()
{
  sub_232B3500C();
  result = sub_232B3DB7C();
  *v0 = result;
  return result;
}

uint64_t sub_232B06848()
{
  sub_232B3500C();
  result = sub_232B3DCC0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B0689C()
{
  sub_232B3500C();
  result = sub_232B3DD54();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B0694C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_232B069F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_232B06AE8()
{
  sub_232B3500C();
  result = sub_232B41CB0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B06B3C()
{
  sub_232B3500C();
  result = sub_232B41DA0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B06B90()
{
  sub_232B3500C();
  result = sub_232B41F04();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B06C34()
{
  sub_232B3500C();
  result = sub_232B420F4();
  *v0 = result;
  return result;
}

void sub_232B06C68()
{
  sub_232B3500C();
  *v0 = sub_232B42350();
  *(v0 + 8) = v1;
}

uint64_t sub_232B06C94()
{
  sub_232B3500C();
  result = sub_232B42490();
  *v0 = result & 1;
  return result;
}

uint64_t sub_232B06CE8()
{
  sub_232B3500C();
  result = sub_232B425B0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_232B06D3C()
{
  sub_232B3500C();
  result = sub_232B4272C();
  *v0 = result;
  return result;
}

uint64_t sub_232B06D68()
{
  sub_232B3500C();
  result = sub_232B4287C();
  *v0 = result;
  return result;
}

uint64_t sub_232B06D94()
{
  sub_232B3500C();
  result = sub_232B4294C();
  *v0 = result;
  return result;
}

uint64_t sub_232B06E14(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_232CE9340();
    sub_232B13FB4();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
      sub_232B13FB4();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
        v11 = a3[8];
      }
    }

    return sub_232B12480(a1 + v11, a2, v10);
  }
}

void *sub_232B06F34(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_232CE9340();
    sub_232B13FB4();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
      sub_232B13FB4();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
        v11 = a4[8];
      }
    }

    return sub_232B12504(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_232B070B4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_232B4AE2C(a2);
  *a1 = result;
  return result;
}

void *sub_232B070E4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_232B4AFD4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_232B07160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232B51734();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_232B07230@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_232B5588C(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_232B072E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232B5644C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_232B0738C()
{
  sub_232B3500C();
  result = sub_232B5A0B4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B073E0()
{
  sub_232B3500C();
  result = sub_232B5A160();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B07434()
{
  sub_232B3500C();
  result = sub_232B5A1C4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B07488()
{
  sub_232B3500C();
  result = sub_232B5A2B4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

id sub_232B07508()
{
  sub_232B3500C();
  result = sub_232B5B704(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B07534()
{
  sub_232B3500C();
  result = sub_232B5B81C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void *sub_232B07560()
{
  sub_232B3500C();
  result = sub_232B5B92C(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B075EC()
{
  sub_232B3500C();
  result = sub_232B5BAC0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_232B07678()
{
  sub_232B3500C();
  sub_232B5BE10(v1);
  *v0 = v2;
}

uint64_t sub_232B076F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_232B60754(*(a1 + 8));
  }

  sub_232CE9340();
  v5 = sub_232B60734(*(a3 + 40));

  return sub_232B12480(v5, v6, v7);
}

void sub_232B0776C()
{
  sub_232B60740();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_232CE9340();
    v5 = sub_232B60734(*(v4 + 40));

    sub_232B12504(v5, v6, v0, v7);
  }
}

uint64_t sub_232B077DC(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_232B60754(*a1);
  }

  sub_232CE9340();
  v5 = sub_232B60734(*(a3 + 20));

  return sub_232B12480(v5, v6, v7);
}

void sub_232B07854()
{
  sub_232B60740();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_232CE9340();
    v5 = sub_232B60734(*(v4 + 20));

    sub_232B12504(v5, v6, v0, v7);
  }
}

uint64_t sub_232B07C30()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

void *sub_232B07EF8()
{
  sub_232B3500C();
  result = sub_232BAE340(v1);
  *v0 = result;
  return result;
}

void *sub_232B07F24()
{
  sub_232B3500C();
  result = sub_232BAE4C8(v1);
  *v0 = result;
  return result;
}

void *sub_232B07F50()
{
  sub_232B3500C();
  result = sub_232BAE650(v1);
  *v0 = result;
  return result;
}

void *sub_232B07F7C()
{
  sub_232B3500C();
  result = sub_232BAE7D8(v1);
  *v0 = result;
  return result;
}

void *sub_232B07FA8()
{
  sub_232B3500C();
  result = sub_232BAE960(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B08028()
{
  sub_232B124A8(&qword_27DDC75D0, &qword_232CFA538);
  sub_232BA5190();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_232B080B0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_232B08100()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232B08138()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232B081F0()
{
  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B08230()
{

  sub_232BC1E0C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232B08274()
{
  swift_unknownObjectRelease();

  sub_232BC1E0C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B082B0()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_232B08308()
{
  sub_232B3500C();
  result = sub_232BC3378(v1);
  *v0 = result & 1;
  return result;
}

void *sub_232B0835C()
{
  sub_232B3500C();
  result = sub_232BC3494(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B08388()
{
  sub_232B3500C();
  result = sub_232BC3600();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_232B083DC()
{
  sub_232B3500C();
  result = sub_232BC36B0(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B08408()
{
  sub_232B3500C();
  result = sub_232BC3874();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_232B0845C()
{
  sub_232B3500C();
  result = sub_232BC39F0(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B08488()
{
  sub_232B3500C();
  result = sub_232BC3B5C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_232B084DC()
{
  sub_232B3500C();
  result = sub_232BC3C0C(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B08508()
{
  sub_232B3500C();
  result = sub_232BC3D78();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_232B0855C()
{
  sub_232B3500C();
  result = sub_232BC3E28(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B08588()
{
  sub_232B3500C();
  result = sub_232BC3F94();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_232B085DC()
{
  sub_232B3500C();
  result = sub_232BC4044(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B08608()
{
  sub_232B3500C();
  result = sub_232BC41B0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_232B0865C()
{
  sub_232B3500C();
  sub_232BC4244();
  *v0 = v1;
}

void *sub_232B08688()
{
  sub_232B3500C();
  result = sub_232BC4320(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B086B4()
{
  sub_232B3500C();
  result = sub_232BC448C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_232B08708()
{
  sub_232B3500C();
  sub_232BC458C();
  *v0 = v1;
}

void *sub_232B08734()
{
  sub_232B3500C();
  result = sub_232BC46F8(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B08760()
{
  sub_232B3500C();
  result = sub_232BC4864();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_232B087B4()
{
  sub_232B3500C();
  result = sub_232BC4914(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B087E0()
{
  sub_232B3500C();
  result = sub_232BC4A80();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_232B08834()
{
  sub_232B3500C();
  result = sub_232BC4B30(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B08860()
{
  sub_232B3500C();
  result = sub_232BC4C9C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_232B088B4()
{
  sub_232B3500C();
  result = sub_232BC4D4C(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B088E0()
{
  sub_232B3500C();
  result = sub_232BC4EB8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B08934()
{
  sub_232B3500C();
  result = sub_232BC4F4C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_232B08988()
{
  sub_232B3500C();
  sub_232BC4FF4();
  *v0 = v1;
}

uint64_t sub_232B089F0()
{

  sub_232BD42B8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232B08A3C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_232B08A8C()
{

  sub_232BD42B8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void *sub_232B08B08@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_232BD890C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_232B08B84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232B08BBC()
{

  sub_232BC1E0C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232B08BF8()
{
  swift_unknownObjectRelease();

  sub_232BC1E0C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B08C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
    v9 = a1 + *(a3 + 36);

    return sub_232B12480(v9, a2, v8);
  }
}

uint64_t sub_232B08CE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
    v8 = v5 + *(a4 + 36);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B08E14()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_232B08E74()
{
  sub_232B3500C();
  result = sub_232BF1EFC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B08EC8()
{
  sub_232B3500C();
  result = sub_232BF1FEC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B08F1C()
{
  sub_232B3500C();
  result = sub_232BF2150();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B08F70()
{
  sub_232B3500C();
  result = sub_232BF21E4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B08FC4()
{
  sub_232B3500C();
  result = sub_232BF2278();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B09018()
{
  sub_232B3500C();
  result = sub_232BF230C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B0906C()
{
  sub_232B3500C();
  result = sub_232BF23A0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B090C0()
{
  sub_232B3500C();
  result = sub_232BF2434();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B09114()
{
  sub_232B3500C();
  result = sub_232BF2510();
  *v0 = result;
  return result;
}

uint64_t sub_232B09140()
{
  sub_232B3500C();
  result = sub_232BF262C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_232B09374()
{
  sub_232B3500C();
  result = sub_232BF2EE8();
  *v0 = result;
  return result;
}

uint64_t sub_232B093A0()
{
  sub_232B3500C();
  result = sub_232BF30BC();
  *v0 = result;
  return result;
}

void *sub_232B093CC()
{
  sub_232B3500C();
  result = sub_232BF31F4();
  *v0 = result;
  return result;
}

void *sub_232B09440()
{
  sub_232B3500C();
  result = sub_232BF7580(v1);
  *v0 = result;
  return result;
}

void *sub_232B0946C()
{
  sub_232B3500C();
  result = sub_232BF7708(v1);
  *v0 = result;
  return result;
}

void *sub_232B09498()
{
  sub_232B3500C();
  result = sub_232BF7890(v1);
  *v0 = result;
  return result;
}

void *sub_232B094C4()
{
  sub_232B3500C();
  result = sub_232BF7A18(v1);
  *v0 = result;
  return result;
}

void *sub_232B094F0()
{
  sub_232B3500C();
  result = sub_232BF7BA0(v1);
  *v0 = result;
  return result;
}

void *sub_232B0951C()
{
  sub_232B3500C();
  result = sub_232BF7D28(v1);
  *v0 = result;
  return result;
}

void *sub_232B09548()
{
  sub_232B3500C();
  result = sub_232BF7EB0(v1);
  *v0 = result;
  return result;
}

void sub_232B09574()
{
  sub_232B3500C();
  sub_232BF807C();
  *v0 = v1;
}

void sub_232B095A0()
{
  sub_232B3500C();
  sub_232BF81F8();
  *v0 = v1;
}

void *sub_232B095CC()
{
  sub_232B3500C();
  result = sub_232BF8330(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B09644()
{
  sub_232B3500C();
  result = sub_232BFFCBC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B09698()
{
  sub_232B3500C();
  result = sub_232BFFD9C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_232B096EC()
{
  sub_232B3500C();
  sub_232BFFF18(v1);
  *v0 = v2;
}

uint64_t sub_232B09718()
{
  sub_232B3500C();
  result = sub_232C00094();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B0976C()
{
  sub_232B3500C();
  result = sub_232C00180();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B097C0()
{
  sub_232B3500C();
  result = sub_232C002CC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_232B09814()
{
  sub_232B3500C();
  sub_232C003F8(v1);
  *v0 = v2;
}

void *sub_232B09840()
{
  sub_232B3500C();
  result = sub_232C005E8(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B0986C()
{
  sub_232B3500C();
  result = sub_232C0075C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_232B098C0()
{
  sub_232B3500C();
  result = sub_232C00854(v1);
  *v0 = result;
  return result;
}

void *sub_232B098EC()
{
  sub_232B3500C();
  result = sub_232C009E4(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B09918()
{
  sub_232B3500C();
  result = sub_232C0427C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B099BC()
{
  sub_232B3500C();
  result = sub_232C049AC(v1);
  *v0 = result & 1;
  return result;
}

void *sub_232B09CA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232C091E8();
  *a1 = result;
  return result;
}

uint64_t sub_232B09D30(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_232CE8AE0();
    sub_232B13FB4();
    if (*(v9 + 84) == a2)
    {
      v10 = *(a3 + 20);
    }

    else
    {
      sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
      v10 = *(a3 + 24);
    }

    v11 = sub_232B60734(v10);

    return sub_232B12480(v11, v12, v13);
  }
}

_BYTE *sub_232B09E00(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_232CE8AE0();
    sub_232B13FB4();
    if (*(v7 + 84) == a3)
    {
      v8 = *(a4 + 20);
    }

    else
    {
      sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
      v8 = *(a4 + 24);
    }

    v9 = sub_232B60734(v8);

    return sub_232B12504(v9, v10, a2, v11);
  }

  return result;
}

uint64_t sub_232B09EC8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
    sub_232B13FB4();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 40);
    }

    else
    {
      sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
      v8 = *(a3 + 48);
    }

    v9 = sub_232B60734(v8);

    return sub_232B12480(v9, v10, v11);
  }
}

uint64_t sub_232B09FA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
    sub_232B13FB4();
    if (*(v7 + 84) == a3)
    {
      v8 = *(a4 + 40);
    }

    else
    {
      sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
      v8 = *(a4 + 48);
    }

    v9 = sub_232B60734(v8);

    return sub_232B12504(v9, v10, a2, v11);
  }

  return result;
}

uint64_t sub_232B0A07C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232C0F6EC();
  *a1 = result;
  return result;
}

uint64_t sub_232B0A0AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232C0F81C();
  *a1 = result;
  return result;
}

void *sub_232B0A0DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232C0F980();
  *a1 = result;
  return result;
}

uint64_t sub_232B0A158()
{
  sub_232B3500C();
  result = sub_232C11FD8(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B0A1A8()
{
  sub_232B3500C();
  result = sub_232C120E4(v1);
  *v0 = result;
  return result;
}

id sub_232B0A1F8()
{
  sub_232B3500C();
  result = sub_232C129FC(v1);
  *v0 = result;
  return result;
}

uint64_t sub_232B0A224()
{
  sub_232B3500C();
  result = sub_232C12BA8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void sub_232B0A2A0()
{
  sub_232B3500C();
  sub_232C12EB0(v1);
  *v0 = v2;
}

void *sub_232B0A3C4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_232C16794(a2);
  *a1 = result;
  return result;
}

uint64_t sub_232B0A440@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232C177F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_232B0A510(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
    v9 = a1 + *(a3 + 24);

    return sub_232B12480(v9, a2, v8);
  }
}

void *sub_232B0A5A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
    v8 = v5 + *(a4 + 24);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B0A6C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return sub_232C21F50(v2);
}

uint64_t sub_232B0A78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      v9 = ((v8 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v9 = -2;
    }

    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B0A854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_232B0A910(uint64_t a1, uint64_t a2, int *a3)
{
  sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  sub_232B13FB4();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return sub_232B12480(v9, a2, v8);
  }

  sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B13FB4();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B13FB4();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[16];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[18] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_232B0AA64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  sub_232B13FB4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
    sub_232B13FB4();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
      sub_232B13FB4();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[18] + 8) = (a2 - 1);
        return;
      }

      v10 = v15;
      v14 = a4[16];
    }

    v11 = a1 + v14;
  }

  sub_232B12504(v11, a2, a2, v10);
}

uint64_t sub_232B0ABE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9700();
    v9 = a1 + *(a3 + 32);

    return sub_232B12480(v9, a2, v8);
  }
}

uint64_t sub_232B0AC68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9700();
    v8 = v5 + *(a4 + 32);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s21DocumentUnderstanding56DocumentUnderstanding_ClientInterface_FoundInEventResultV23FoundInEventResultErrorOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return sub_232C2A538(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DocumentUnderstanding_TopicSetIdentifier.TopicSetName(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_232B0AE28(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return sub_232C2A538(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232B0AE3C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_232B0AE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_232B60754(*(a1 + 16));
  }

  v7 = sub_232CE9340();
  v8 = a1 + *(a3 + 32);

  return sub_232B12480(v8, a2, v7);
}

uint64_t sub_232B0AED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 32);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B0AF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_232B60754(*(a1 + *(a3 + 20)));
  }

  return sub_232B12480(a1, a2, v6);
}

uint64_t sub_232B0AFF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_232B0B10C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232C2C758();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_232B0B13C()
{
  v1 = sub_232B124A8(&qword_27DDC7FD8, &unk_232CFDA10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_232B0B20C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B0B2E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B0B448()
{
  v1 = sub_232B124A8(&qword_27DDC80D8, &unk_232CFE2D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_232B0B4DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232B0B514()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232B0B554()
{

  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232B0B5A4()
{

  sub_232B26D50();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232B0B5D8()
{
  if (v0[3])
  {

    v1 = v0[7];
    if (v1 >> 60 != 15)
    {
      sub_232B41BEC(v0[6], v1);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_232B0B638()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_232B0B678()
{
  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0B70C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232B0B758()
{

  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232B0B794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B0B850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B0B958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_232B0BA04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_232B0BADC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232B0BB38()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_232B41BEC(*(v0 + 40), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_232B0BB98()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232B0BBD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232B0BC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B4D640();
  sub_232CE9340();
  sub_232B13FB4();
  if (*(v7 + 84) != a2)
  {
    return sub_232C6923C(*(a3 + 20));
  }

  return sub_232B12480(v3, a2, v6);
}

void sub_232B0BC9C()
{
  sub_232B13FCC();
  sub_232B13FB4();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_232C69378();

    sub_232B12504(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_232B0BD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B4D640();
  sub_232CE9340();
  sub_232B13FB4();
  if (*(v7 + 84) != a2)
  {
    return sub_232C6923C(*(a3 + 28));
  }

  v8 = v6;
  v9 = v3 + *(a3 + 20);

  return sub_232B12480(v9, a2, v8);
}

void sub_232B0BDBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_232CE9340();
  sub_232B13FB4();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1 + *(a4 + 20);

    sub_232B12504(v11, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }
}

uint64_t sub_232B0BE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B4D640();
  sub_232CE9340();
  sub_232B13FB4();
  if (*(v7 + 84) == a2)
  {

    return sub_232B12480(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_232B0BF0C()
{
  sub_232B13FCC();
  sub_232B13FB4();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_232C69378();

    sub_232B12504(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_232B0BF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 32);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_232CE9340();
    v11 = a1 + *(a3 + 28);

    return sub_232B12480(v11, a2, v10);
  }
}

uint64_t sub_232B0C018(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 32) = a2 + 1;
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 28);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B0C128(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B0C200(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_232B0C2DC()
{
  sub_232B3500C();
  sub_232C6A564(v1, v2);
  *v0 = v3;
}

void sub_232B0C308()
{
  sub_232B3500C();
  sub_232C6A63C(v1, v2);
  *v0 = v3;
}

uint64_t sub_232B0C334()
{
  sub_232B3500C();
  result = sub_232C6A728(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

void sub_232B0C360()
{
  sub_232B3500C();
  sub_232C6A820(v1, v2);
  *v0 = v3;
}

uint64_t sub_232B0C3B4()
{
  MEMORY[0x238393940](v0 + 16);
  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C3F0()
{

  sub_232B41BEC(*(v0 + 40), *(v0 + 48));
  v1 = sub_232C79C10();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C430()
{
  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C464()
{
  swift_unknownObjectRelease();

  sub_232C79CEC();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232B0C4A8()
{
  sub_232B41BEC(*(v0 + 16), *(v0 + 24));

  sub_232C79CEC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C50C()
{
  _Block_release(*(v0 + 16));
  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C548()
{

  v0 = sub_232C79B7C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_232B0C578()
{
  _Block_release(*(v0 + 32));
  v1 = sub_232C79B6C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C5B0()
{
  swift_unknownObjectRelease();
  sub_232B41BEC(*(v0 + 32), *(v0 + 40));

  v1 = sub_232C79C20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C5F4()
{
  swift_unknownObjectRelease();

  sub_232B41BEC(*(v0 + 56), *(v0 + 64));

  v1 = sub_232C79C20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C644()
{
  swift_unknownObjectRelease();

  sub_232B41BEC(*(v0 + 40), *(v0 + 48));

  v1 = sub_232C79C20();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C694()
{
  swift_unknownObjectRelease();

  v1 = sub_232C79C10();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C704(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a3 + 28);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B0C7DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a4 + 28);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B0C8B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B0C988(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B0CA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_232CE9340();

  return sub_232B12480(a1 + v5, a2, v6);
}

uint64_t sub_232B0CAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_232CE9340();

  return sub_232B12504(a1 + v6, a2, a2, v7);
}

uint64_t sub_232B0CB18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    v9 = a1 + *(a3 + 20);

    return sub_232B12480(v9, a2, v8);
  }
}

void *sub_232B0CBA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 20);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B0CC20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B0CCF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B0CDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232CE9340();
    v9 = a1 + *(a3 + 20);

    return sub_232B12480(v9, a2, v8);
  }
}

uint64_t sub_232B0CE54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 20);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

char *sub_232B0D1E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

uint64_t sub_232B0D210(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_232B0D220(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_232B0D268()
{
  sub_232B13FC0();
  result = sub_232B0516C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_232B0D2A4()
{
  v3 = sub_232B13E98();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v6 = sub_232B13ED0();
    v7 = sub_232B0DEDC(v6);
    sub_232B13FA8(v7);
  }

  sub_232B13F34(v5 + 176, v4);
  *(v5 + 176) = v0;
}

uint64_t sub_232B0D30C()
{
  v3 = sub_232B13E98();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v6 = sub_232B13ED0();
    v7 = sub_232B0DEDC(v6);
    sub_232B13FA8(v7);
  }

  sub_232B13F34(v5 + 184, v4);
  *(v5 + 184) = v0;
}

uint64_t sub_232B0D374()
{
  v3 = sub_232B13E98();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v6 = sub_232B13ED0();
    v7 = sub_232B0DEDC(v6);
    sub_232B13FA8(v7);
  }

  sub_232B13F34(v5 + 192, v4);
  *(v5 + 192) = v0;
}

uint64_t sub_232B0D3DC()
{
  v3 = sub_232B13E98();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v6 = sub_232B13ED0();
    v7 = sub_232B0DEDC(v6);
    sub_232B13FA8(v7);
  }

  sub_232B13F34(v5 + 200, v4);
  *(v5 + 200) = v0;
}

uint64_t sub_232B0D444()
{
  v3 = sub_232B13E98();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v6 = sub_232B13ED0();
    v7 = sub_232B0DEDC(v6);
    sub_232B13FA8(v7);
  }

  sub_232B13F34(v5 + 208, v4);
  *(v5 + 208) = v0;
}

uint64_t sub_232B0D4AC()
{
  v3 = sub_232B13E98();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v6 = sub_232B13ED0();
    v7 = sub_232B0DEDC(v6);
    sub_232B13FA8(v7);
  }

  sub_232B13F34(v5 + 312, v4);
  *(v5 + 312) = v0;
}

uint64_t sub_232B0D514@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v2 = *(type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0) + 20);
  if (qword_27DDC62E8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = off_27DDC62F0;
}

uint64_t sub_232B0D590@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v2 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v3 = v2[5];
  v4 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  result = sub_232B12504(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a1 + v2[7]) = 2;
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_232B0D614()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4E48);
  sub_232B135C4(v0, qword_27DDD4E48);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_232CF4C20;
  v4 = v63 + v3;
  v5 = v63 + v3 + v1[14];
  *(v63 + v3) = 1;
  *v5 = "featureCooccurrenceCount";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_232CE95F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "featureEntityCount";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "featureImageCount";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "featureEntityImageRatio";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "featureImageEntityRatio";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "featureDeviceOwner";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "featureImageFaceRatio";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "featureNameMentionsRatio";
  *(v21 + 1) = 24;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "featureUniqueNames";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "featureUniqueFaces";
  *(v25 + 1) = 18;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "featureFaceCount";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "featureSenderFaceCount";
  *(v29 + 1) = 22;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "featureReceiverFaceCount";
  *(v31 + 1) = 24;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "featureTaggerFaceCount";
  *(v33 + 1) = 22;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "featurePronounFaceCount";
  *(v35 + 1) = 23;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "featureTotalConversationThreads";
  *(v37 + 1) = 31;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "featureTotalMessages";
  *(v39 + 1) = 20;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "featureMessagesCountInThreadsForFace";
  *(v41 + 1) = 36;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "featureMessagesCountInThreadsForName";
  *(v43 + 1) = 36;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "featureEntityDistances";
  *(v45 + 1) = 22;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "featureContextTextLengths";
  *(v47 + 1) = 25;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "featureModelConfidence";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "featureModelThreshold";
  *(v51 + 1) = 21;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "featureEcrFaceCount";
  *(v53 + 1) = 19;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "featureEcrEntityDistances";
  *(v55 + 1) = 25;
  v55[16] = 2;
  v8();
  v56 = (v4 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "featureEcrContextTextLengths";
  *(v57 + 1) = 28;
  v57[16] = 2;
  v8();
  v58 = (v4 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "featureTaggerConfidences";
  *(v59 + 1) = 24;
  v59[16] = 2;
  v8();
  v60 = (v4 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "featureEcrConfidences";
  *(v61 + 1) = 21;
  v61[16] = 2;
  v8();
  return sub_232CE9600();
}

void *sub_232B0DE00()
{
  type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
  sub_232B13F50();
  swift_allocObject();
  result = sub_232B0DE3C();
  off_27DDC62F0 = result;
  return result;
}

uint64_t sub_232B0DE3C()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 168) = 1;
  *(v0 + 176) = v2;
  *(v0 + 184) = v2;
  *(v0 + 192) = v2;
  *(v0 + 200) = v2;
  *(v0 + 208) = v2;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = v2;
  *(v0 + 256) = v2;
  *(v0 + 264) = v2;
  *(v0 + 272) = v2;
  *(v0 + 280) = 0;
  *(v0 + 288) = 1;
  *(v0 + 296) = 0;
  *(v0 + 304) = 1;
  *(v0 + 312) = v2;
  *(v0 + 320) = v2;
  *(v0 + 328) = v2;
  *(v0 + 336) = v2;
  *(v0 + 344) = v2;
  return result;
}

uint64_t sub_232B0DEDC(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  *(v1 + 56) = 1;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  *(v1 + 112) = 0;
  *(v1 + 104) = 1;
  *(v1 + 120) = 1;
  *(v1 + 128) = 0;
  *(v1 + 136) = 1;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  *(v1 + 152) = 1;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 176) = MEMORY[0x277D84F90];
  *(v1 + 184) = v3;
  *(v1 + 192) = v3;
  *(v1 + 200) = v3;
  *(v1 + 208) = v3;
  *(v1 + 168) = 1;
  *(v1 + 216) = 0;
  *(v1 + 224) = 1;
  *(v1 + 232) = 0;
  *(v1 + 240) = 1;
  *(v1 + 248) = v3;
  *(v1 + 256) = v3;
  *(v1 + 264) = v3;
  *(v1 + 272) = v3;
  *(v1 + 280) = 0;
  *(v1 + 288) = 1;
  *(v1 + 296) = 0;
  *(v1 + 304) = 1;
  *(v1 + 312) = v3;
  *(v1 + 320) = v3;
  *(v1 + 328) = v3;
  *(v1 + 336) = v3;
  *(v1 + 344) = v3;
  v4 = sub_232B13F74(a1 + 16, v106);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_232B13F08(v4, v105);
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  sub_232B13F74(a1 + 32, v104);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_232B13F5C(v1 + 32, v103);
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  sub_232B13F74(a1 + 48, v102);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  sub_232B13F5C(v1 + 48, v101);
  *(v1 + 48) = v9;
  *(v1 + 56) = v10;
  sub_232B13F74(a1 + 64, v100);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  sub_232B13F5C(v1 + 64, v99);
  *(v1 + 64) = v11;
  *(v1 + 72) = v12;
  sub_232B13F74(a1 + 80, v98);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  sub_232B13F5C(v1 + 80, v97);
  *(v1 + 80) = v13;
  *(v1 + 88) = v14;
  sub_232B13F74(a1 + 96, v96);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  sub_232B13F5C(v1 + 96, v95);
  *(v1 + 96) = v15;
  *(v1 + 104) = v16;
  v17 = sub_232B13F74(a1 + 112, v94);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  sub_232B13F08(v17, v93);
  *(v1 + 112) = v18;
  *(v1 + 120) = v19;
  v20 = sub_232B13F74(a1 + 128, v92);
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  sub_232B13F08(v20, v91);
  *(v1 + 128) = v21;
  *(v1 + 136) = v22;
  v23 = sub_232B13F74(a1 + 144, v90);
  v24 = *(a1 + 144);
  v25 = *(a1 + 152);
  sub_232B13F08(v23, v89);
  *(v1 + 144) = v24;
  *(v1 + 152) = v25;
  v26 = sub_232B13F74(a1 + 160, v88);
  v27 = *(a1 + 160);
  v28 = *(a1 + 168);
  sub_232B13F08(v26, v87);
  *(v1 + 160) = v27;
  *(v1 + 168) = v28;
  sub_232B13F74(a1 + 176, v86);
  v29 = *(a1 + 176);
  sub_232B13F5C(v1 + 176, v85);
  *(v1 + 176) = v29;
  v30 = sub_232B13F74(a1 + 184, v84);
  v31 = *(a1 + 184);
  sub_232B13F08(v30, v83);
  *(v1 + 184) = v31;

  v32 = sub_232B13F74(a1 + 192, v82);
  sub_232B13F08(v32, v81);
  sub_232B13F8C();

  v33 = sub_232B13F74(a1 + 200, v80);
  sub_232B13F08(v33, v79);
  sub_232B13F8C();

  v34 = sub_232B13F74(a1 + 208, v78);
  sub_232B13F08(v34, v77);
  sub_232B13F8C();

  v35 = sub_232B13F74(a1 + 216, v76);
  v36 = *(a1 + 216);
  LOBYTE(v31) = *(a1 + 224);
  sub_232B13F08(v35, v75);
  *(v1 + 216) = v36;
  *(v1 + 224) = v31;
  v37 = sub_232B13F74(a1 + 232, v74);
  v38 = *(a1 + 232);
  LOBYTE(v31) = *(a1 + 240);
  sub_232B13F08(v37, v73);
  *(v1 + 232) = v38;
  *(v1 + 240) = v31;
  v39 = sub_232B13F74(a1 + 248, v72);
  sub_232B13F08(v39, v71);
  sub_232B13F8C();

  sub_232B13F74(a1 + 256, v70);
  v40 = *(a1 + 256);
  sub_232B13F5C(v1 + 256, v69);
  *(v1 + 256) = v40;

  sub_232B13F74(a1 + 264, v68);
  v41 = *(a1 + 264);
  sub_232B13F5C(v1 + 264, v67);
  *(v1 + 264) = v41;

  sub_232B13F74(a1 + 272, v66);
  v42 = *(a1 + 272);
  sub_232B13F5C(v1 + 272, v65);
  *(v1 + 272) = v42;

  sub_232B13F74(a1 + 280, v64);
  v43 = *(a1 + 280);
  LOBYTE(v31) = *(a1 + 288);
  sub_232B13F5C(v1 + 280, v63);
  *(v1 + 280) = v43;
  *(v1 + 288) = v31;
  sub_232B13F74(a1 + 296, v62);
  v44 = *(a1 + 296);
  LOBYTE(v31) = *(a1 + 304);
  sub_232B13F5C(v1 + 296, v61);
  *(v1 + 296) = v44;
  *(v1 + 304) = v31;
  sub_232B13F74(a1 + 312, v60);
  v45 = *(a1 + 312);
  sub_232B13F5C(v1 + 312, v59);
  *(v1 + 312) = v45;

  sub_232B13F74(a1 + 320, v58);
  v46 = *(a1 + 320);
  sub_232B13F5C(v1 + 320, v57);
  *(v1 + 320) = v46;

  sub_232B13F74(a1 + 328, v56);
  v47 = *(a1 + 328);
  sub_232B13F5C(v1 + 328, v55);
  *(v1 + 328) = v47;

  sub_232B13F74(a1 + 336, v54);
  v48 = *(a1 + 336);
  sub_232B13F5C(v1 + 336, v53);
  *(v1 + 336) = v48;

  sub_232B13F74(a1 + 344, v52);
  v49 = *(a1 + 344);

  sub_232B13F5C(v1 + 344, v51);
  *(v1 + 344) = v49;

  return v1;
}

void *sub_232B0E508()
{

  return v0;
}

uint64_t sub_232B0E590()
{
  v0 = sub_232B0E508();

  return MEMORY[0x2821FE8D8](v0, 352, 7);
}

uint64_t sub_232B0E5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v11 = sub_232B13ED0();
    v10 = sub_232B0DEDC(v11);
    *(v4 + v8) = v10;
  }

  return sub_232B0E65C(v10, a1, a2, a3);
}

uint64_t sub_232B0E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B0E9DC(a2, a1, a3, a4);
        break;
      case 2:
        sub_232B0EA60(a2, a1, a3, a4);
        break;
      case 3:
        sub_232B0EAE4(a2, a1, a3, a4);
        break;
      case 4:
        sub_232B0EB68(a2, a1, a3, a4);
        break;
      case 5:
        sub_232B0EBEC(a2, a1, a3, a4);
        break;
      case 6:
        sub_232B0EC70(a2, a1, a3, a4);
        break;
      case 7:
        sub_232B0ECF4(a2, a1, a3, a4);
        break;
      case 8:
        sub_232B0ED78(a2, a1, a3, a4);
        break;
      case 9:
        sub_232B0EDFC(a2, a1, a3, a4);
        break;
      case 10:
        sub_232B0EE80(a2, a1, a3, a4);
        break;
      case 11:
        sub_232B0EF04(a2, a1, a3, a4);
        break;
      case 12:
        sub_232B0EF88(a2, a1, a3, a4);
        break;
      case 13:
        sub_232B0F00C(a2, a1, a3, a4);
        break;
      case 14:
        sub_232B0F090(a2, a1, a3, a4);
        break;
      case 15:
        sub_232B0F114(a2, a1, a3, a4);
        break;
      case 16:
        sub_232B0F198(a2, a1, a3, a4);
        break;
      case 17:
        sub_232B0F21C(a2, a1, a3, a4);
        break;
      case 18:
        sub_232B0F2A0(a2, a1, a3, a4);
        break;
      case 19:
        sub_232B0F324(a2, a1, a3, a4);
        break;
      case 20:
        sub_232B0F3A8(a2, a1, a3, a4);
        break;
      case 21:
        sub_232B0F42C(a2, a1, a3, a4);
        break;
      case 22:
        sub_232B0F4B0(a2, a1, a3, a4);
        break;
      case 23:
        sub_232B0F534(a2, a1, a3, a4);
        break;
      case 24:
        sub_232B0F5B8(a2, a1, a3, a4);
        break;
      case 25:
        sub_232B0F63C(a2, a1, a3, a4);
        break;
      case 26:
        sub_232B0F6C0(a2, a1, a3, a4);
        break;
      case 27:
        sub_232B0F744(a2, a1, a3, a4);
        break;
      case 28:
        sub_232B0F7C8(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B0E9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0ED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0EF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0F21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0F2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0F534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0F5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  result = sub_232B0F8B8(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B0F8B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_232B0FEA8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_232B0FF2C(a1, a2, a3, a4);
    sub_232B0FFB0(a1, a2, a3, a4);
    sub_232B10034(a1, a2, a3, a4);
    sub_232B100B8(a1, a2, a3, a4);
    sub_232B1013C(a1, a2, a3, a4);
    sub_232B101C0(a1, a2, a3, a4);
    sub_232B10244(a1, a2, a3, a4);
    sub_232B102C8(a1, a2, a3, a4);
    sub_232B1034C(a1, a2, a3, a4);
    swift_beginAccess();
    if (*(a1[22] + 16))
    {

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[23] + 16))
    {

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[24] + 16))
    {

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[25] + 16))
    {

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[26] + 16))
    {

      sub_232CE9550();
    }

    sub_232B103D0(a1, a2, a3, a4);
    sub_232B10454(a1, a2, a3, a4);
    swift_beginAccess();
    if (*(a1[31] + 16))
    {

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[32] + 16))
    {

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[33] + 16))
    {

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[34] + 16))
    {

      sub_232CE9550();
    }

    sub_232B104D8(a1, a2, a3, a4);
    sub_232B1055C(a1, a2, a3, a4);
    swift_beginAccess();
    if (*(a1[39] + 16))
    {

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[40] + 16))
    {

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[41] + 16))
    {

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[42] + 16))
    {

      sub_232CE9550();
    }

    result = swift_beginAccess();
    if (*(a1[43] + 16))
    {

      sub_232CE9550();
    }
  }

  return result;
}

uint64_t sub_232B0FEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B0FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 40) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B0FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 56) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B10034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 72) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B100B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 88) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B1013C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B101C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B10244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 136) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B102C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 152) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B1034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 168) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B103D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 224) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B10454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 240) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B104D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 288) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B1055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 304) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B105E0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (sub_232B10684(v5, v6) & 1) == 0)
  {
    return 0;
  }

  sub_232CE9340();
  sub_232B13E80();
  sub_232B12CC8(v7, v8, MEMORY[0x277D216D0]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232B10684(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!*(a2 + 24))
    {
LABEL_99:
      v60 = 0;
      return v60 & 1;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!*(a2 + 40))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v7 != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!*(a2 + 56))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v10 != *(a2 + 48))
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  swift_beginAccess();
  v15 = *(a2 + 72);
  if (v14)
  {
    if (!*(a2 + 72))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v13 != *(a2 + 64))
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  swift_beginAccess();
  v18 = *(a2 + 88);
  if (v17)
  {
    if (!*(a2 + 88))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v16 != *(a2 + 80))
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  swift_beginAccess();
  v21 = *(a2 + 104);
  if (v20)
  {
    if (!*(a2 + 104))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v19 != *(a2 + 96))
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 112);
  v23 = *(a1 + 120);
  swift_beginAccess();
  v24 = *(a2 + 120);
  if (v23)
  {
    if (!*(a2 + 120))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v22 != *(a2 + 112))
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 128);
  v26 = *(a1 + 136);
  swift_beginAccess();
  v27 = *(a2 + 136);
  if (v26)
  {
    if (!*(a2 + 136))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v25 != *(a2 + 128))
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 144);
  v29 = *(a1 + 152);
  swift_beginAccess();
  v30 = *(a2 + 152);
  if (v29)
  {
    if (!*(a2 + 152))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v28 != *(a2 + 144))
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 160);
  v32 = *(a1 + 168);
  swift_beginAccess();
  v33 = *(a2 + 168);
  if (v32)
  {
    if (!*(a2 + 168))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v31 != *(a2 + 160))
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 176);
  swift_beginAccess();
  if ((sub_232B342F4(v34, *(a2 + 176)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v35 = *(a1 + 184);
  swift_beginAccess();
  if ((sub_232B342F4(v35, *(a2 + 184)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v36 = *(a1 + 192);
  swift_beginAccess();
  if ((sub_232B342F4(v36, *(a2 + 192)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v37 = *(a1 + 200);
  swift_beginAccess();
  if ((sub_232B342F4(v37, *(a2 + 200)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v38 = *(a1 + 208);
  swift_beginAccess();
  if ((sub_232B342F4(v38, *(a2 + 208)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v39 = *(a1 + 216);
  v40 = *(a1 + 224);
  swift_beginAccess();
  v41 = *(a2 + 224);
  if (v40)
  {
    if (!*(a2 + 224))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v39 != *(a2 + 216))
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v42 = *(a1 + 232);
  v43 = *(a1 + 240);
  swift_beginAccess();
  v44 = *(a2 + 240);
  if (v43)
  {
    if (!*(a2 + 240))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v42 != *(a2 + 232))
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v45 = *(a1 + 248);
  swift_beginAccess();
  if ((sub_232B342F4(v45, *(a2 + 248)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v46 = *(a1 + 256);
  swift_beginAccess();
  if ((sub_232B342F4(v46, *(a2 + 256)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v47 = *(a1 + 264);
  swift_beginAccess();
  if ((sub_232B342F4(v47, *(a2 + 264)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v48 = *(a1 + 272);
  swift_beginAccess();
  if ((sub_232B342F4(v48, *(a2 + 272)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v49 = *(a1 + 280);
  v50 = *(a1 + 288);
  swift_beginAccess();
  v51 = *(a2 + 288);
  if (v50)
  {
    if (!*(a2 + 288))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v49 != *(a2 + 280))
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v52 = *(a1 + 296);
  v53 = *(a1 + 304);
  swift_beginAccess();
  v54 = *(a2 + 304);
  if (v53)
  {
    if (!*(a2 + 304))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v52 != *(a2 + 296))
    {
      v54 = 1;
    }

    if (v54)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v55 = *(a1 + 312);
  swift_beginAccess();
  if ((sub_232B342F4(v55, *(a2 + 312)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v56 = *(a1 + 320);
  swift_beginAccess();
  if ((sub_232B342F4(v56, *(a2 + 320)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v57 = *(a1 + 328);
  swift_beginAccess();
  if ((sub_232B342F4(v57, *(a2 + 328)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v58 = *(a1 + 336);
  swift_beginAccess();
  if ((sub_232B342F4(v58, *(a2 + 336)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v59 = *(a1 + 344);
  swift_beginAccess();
  v60 = sub_232B342F4(v59, *(a2 + 344));
  return v60 & 1;
}

uint64_t sub_232B10EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B12CC8(&qword_27DDC6578, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures, &unk_232CF5640);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B10F84(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC6558, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures, &unk_232CF5678);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B1104C(uint64_t a1, uint64_t a2)
{
  sub_232B12CC8(&qword_27DDC6558, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures, &unk_232CF5678);

  return sub_232CE9500();
}

uint64_t sub_232B110CC()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4E60);
  sub_232B135C4(v0, qword_27DDD4E60);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF4C30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "features";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "annotation";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "groundTruthAvailable";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "cooccurrenceKey";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B11310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = sub_232B13EE0();
        sub_232B113C0(v6, v7, v8, v9);
        break;
      case 2:
        v18 = sub_232B13EE0();
        sub_232B11474(v18, v19, v20, v21);
        break;
      case 3:
        v10 = sub_232B13EE0();
        sub_232B114D8(v10, v11, v12, v13);
        break;
      case 4:
        v14 = sub_232B13EE0();
        sub_232B1153C(v14, v15, v16, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B113C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  sub_232B12CC8(&qword_27DDC6558, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures, &unk_232CF5678);
  return sub_232CE94C0();
}

uint64_t sub_232B115A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_232B13EF4();
  result = sub_232B11610(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = sub_232B13EF4();
    sub_232B117B0(v9, v10, v11, v12);
    v13 = sub_232B13EF4();
    sub_232B11828(v13, v14, v15, v16);
    v17 = sub_232B13EF4();
    sub_232B118A0(v17, v18, v19, v20);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B11610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  sub_232B13660(a1 + *(v11 + 20), v7);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC64B0, &qword_232CF5D30);
  }

  sub_232B136D0(v7, v10);
  sub_232B12CC8(&qword_27DDC6558, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures, &unk_232CF5678);
  sub_232CE95E0();
  return sub_232B13734(v10);
}

uint64_t sub_232B117B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_232CE9590();
  }

  return result;
}

uint64_t sub_232B11828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232B118A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B11918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_232B124A8(&qword_27DDC65A0, &unk_232CF57D0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v15 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v16 = v15[5];
  v17 = *(v12 + 56);
  sub_232B13660(a1 + v16, v14);
  sub_232B13660(a2 + v16, &v14[v17]);
  sub_232B13FF0(v14);
  if (!v18)
  {
    sub_232B13660(v14, v10);
    sub_232B13FF0(&v14[v17]);
    if (!v18)
    {
      sub_232B136D0(&v14[v17], v7);
      v23 = *(v4 + 20);
      v24 = *&v10[v23];
      v25 = *&v7[v23];
      if (v24 == v25 || (sub_232B10684(v24, v25) & 1) != 0)
      {
        sub_232CE9340();
        sub_232B13E80();
        sub_232B12CC8(v26, v27, MEMORY[0x277D216D0]);
        v28 = sub_232CE9CF0();
        sub_232B13734(v7);
        sub_232B13734(v10);
        sub_232B13790(v14, &qword_27DDC64B0, &qword_232CF5D30);
        if ((v28 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }

      sub_232B13734(v7);
      sub_232B13734(v10);
      v19 = &qword_27DDC64B0;
      v20 = &qword_232CF5D30;
LABEL_10:
      sub_232B13790(v14, v19, v20);
      goto LABEL_11;
    }

    sub_232B13734(v10);
LABEL_9:
    v19 = &qword_27DDC65A0;
    v20 = &unk_232CF57D0;
    goto LABEL_10;
  }

  sub_232B13FF0(&v14[v17]);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_232B13790(v14, &qword_27DDC64B0, &qword_232CF5D30);
LABEL_16:
  v29 = v15[6];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      goto LABEL_11;
    }
  }

  v34 = v15[7];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
  {
    goto LABEL_11;
  }

  v37 = v15[8];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (v41)
    {
      v42 = *v38 == *v40 && v39 == v41;
      if (v42 || (sub_232CEA750() & 1) != 0)
      {
        goto LABEL_37;
      }
    }
  }

  else if (!v41)
  {
LABEL_37:
    sub_232CE9340();
    sub_232B13E80();
    sub_232B12CC8(v43, v44, MEMORY[0x277D216D0]);
    v21 = sub_232CE9CF0();
    return v21 & 1;
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_232B11C90(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_232CEA820();
  a1(0);
  sub_232B12CC8(a2, a3, a4);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B11D38@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9340();
  sub_232B13F24();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t sub_232B11D98(uint64_t a1)
{
  sub_232CE9340();
  sub_232B13F24();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_232B11E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B12CC8(&qword_27DDC6598, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData, &unk_232CF54D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B11EC8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_232CE9610();
  v7 = sub_232B135C4(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_232B11F64(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC6538, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData, &unk_232CF5510);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B1202C(uint64_t a1, uint64_t a2)
{
  sub_232B12CC8(&qword_27DDC6538, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData, &unk_232CF5510);

  return sub_232CE9500();
}

uint64_t sub_232B120A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232CEA820();
  sub_232CE9C90();
  return sub_232CEA850();
}

__n128 sub_232B1212C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_232B12164(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_232B12170(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232B12190(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_232B12268(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_232B12300(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232B124A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_232B1254C(uint64_t a1)
{
  sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232B12684(319);
    if (v2 <= 0x3F)
    {
      sub_232B13A84(319, &qword_27DDC64D0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_232B13A84(319, &qword_27DDC64D8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_232B13A84(319, &qword_2814DFA10, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_232B12684(uint64_t a1)
{
  if (!qword_27DDC64C8)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(255);
    v1 = sub_232CEA350();
    if (!v2)
    {
      atomic_store(v1, &qword_27DDC64C8);
    }
  }
}

uint64_t sub_232B126FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232B1275C(uint64_t a1)
{
  result = sub_232CE9340();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_232B127E0(uint64_t a1, uint64_t a2)
{
  sub_232CE9D50();
  sub_232CEA820();
  sub_232CE9E40();
  v2 = sub_232CEA850();

  return v2;
}

void sub_232B12868(uint64_t a2@<X8>)
{
  sub_232B1289C();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_232B128A4()
{
  sub_232B13FC0();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_232B12970(uint64_t a1, uint64_t a2)
{
  sub_232CEA820();
  swift_getWitnessTable();
  sub_232CE8F90();
  return sub_232CEA850();
}

uint64_t sub_232B129D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232B0516C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_232B12A04(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC65A8, type metadata accessor for DUExtractionAttributeKey, &unk_232CF5390);
  v3 = sub_232B12CC8(&qword_27DDC65B0, type metadata accessor for DUExtractionAttributeKey, &unk_232CF5330);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12AC0(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC65C8, type metadata accessor for NSTextCheckingKey, &unk_232CF5734);
  v3 = sub_232B12CC8(&qword_27DDC65D0, type metadata accessor for NSTextCheckingKey, &unk_232CF50A0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12B7C(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_2814DF970, type metadata accessor for NLLanguage, &unk_232CF5778);
  v3 = sub_232B12CC8(&qword_27DDC65D8, type metadata accessor for NLLanguage, &unk_232CF4F80);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12CC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232B12DA0(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_2814DF900, type metadata accessor for MLModelMetadataKey, &unk_232CF5CBC);
  v3 = sub_232B12CC8(&qword_27DDC6698, type metadata accessor for MLModelMetadataKey, &unk_232CF5C10);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12E5C(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC66A0, type metadata accessor for NLTag, &unk_232CF5A90);
  v3 = sub_232B12CC8(&qword_27DDC66A8, type metadata accessor for NLTag, &unk_232CF5A30);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12F18(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC66B0, type metadata accessor for NLTagScheme, &unk_232CF5938);
  v3 = sub_232B12CC8(&qword_27DDC66B8, type metadata accessor for NLTagScheme, &unk_232CF58D8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12FD4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_232CE8F80();
}

uint64_t sub_232B13040@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_232CE9D20();

  *a2 = v3;
  return result;
}

uint64_t sub_232B13088(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC65B8, type metadata accessor for VNImageOption, &unk_232CF56F0);
  v3 = sub_232B12CC8(&qword_27DDC65C0, type metadata accessor for VNImageOption, &unk_232CF51BC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B135C4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_232B135FC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_232B13660(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B136D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B13734(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B13790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_232B124A8(a2, a3);
  sub_232B13F24();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232B137E8(uint64_t a1, uint64_t a2)
{
  sub_232CE9D50();
  sub_232CE9E40();
}

uint64_t sub_232B1383C(uint64_t a1, id *a2)
{
  v3 = sub_232CE9D40();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_232B138BC(uint64_t a1, id *a2)
{
  result = sub_232CE9D30();
  *a2 = 0;
  return result;
}

uint64_t sub_232B13934(uint64_t a1)
{
  sub_232CE9D50();
  v1 = sub_232CE9D20();

  return v1;
}

void sub_232B13A84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_232B13DEC(uint64_t a1)
{
  v1 = sub_232CE9D50();
  v2 = MEMORY[0x238391D00](v1);

  return v2;
}

uint64_t sub_232B13E98()
{
  type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232B13F08(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232B13F34(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_232B13F5C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232B13F74(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_232B13F8C()
{
  *v1 = v0;
}

uint64_t sub_232B13FCC()
{

  return sub_232CE9340();
}

char *AutonamingModelFeatures.__allocating_init(featureMap:annotation:groundTruthAvailable:cooccurrenceKey:listFeatureMap:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [objc_allocWithZone(v6) init];
  *&v11[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation] = a2;
  v12 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  sub_232B13F5C(&v11[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap], v17);
  *&v11[v12] = a1;
  v13 = v11;

  v13[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable] = a3;
  sub_232B209C8(&v13[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey]);

  v14 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap;
  sub_232B13F5C(&v13[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap], &v16);
  *&v13[v14] = a6;

  return v13;
}

char *sub_232B14100(uint64_t a1)
{
  v286 = a1;
  v1 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  MEMORY[0x28223BE20](v1 - 8);
  v285 = &v247 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v283 = &v247 - v4;
  MEMORY[0x28223BE20](v5);
  v281 = &v247 - v6;
  MEMORY[0x28223BE20](v7);
  v279 = &v247 - v8;
  MEMORY[0x28223BE20](v9);
  v277 = &v247 - v10;
  MEMORY[0x28223BE20](v11);
  v275 = &v247 - v12;
  MEMORY[0x28223BE20](v13);
  v273 = &v247 - v14;
  MEMORY[0x28223BE20](v15);
  v271 = &v247 - v16;
  MEMORY[0x28223BE20](v17);
  v269 = &v247 - v18;
  MEMORY[0x28223BE20](v19);
  v267 = &v247 - v20;
  MEMORY[0x28223BE20](v21);
  v265 = &v247 - v22;
  MEMORY[0x28223BE20](v23);
  v263 = &v247 - v24;
  MEMORY[0x28223BE20](v25);
  v261 = &v247 - v26;
  MEMORY[0x28223BE20](v27);
  v259 = &v247 - v28;
  MEMORY[0x28223BE20](v29);
  v257 = &v247 - v30;
  MEMORY[0x28223BE20](v31);
  v255 = &v247 - v32;
  MEMORY[0x28223BE20](v33);
  v253 = &v247 - v34;
  MEMORY[0x28223BE20](v35);
  v251 = &v247 - v36;
  MEMORY[0x28223BE20](v37);
  v249 = &v247 - v38;
  MEMORY[0x28223BE20](v39);
  v247 = &v247 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v247 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v247 - v45;
  v47 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  MEMORY[0x28223BE20](v47);
  v284 = &v247 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v282 = &v247 - v50;
  MEMORY[0x28223BE20](v51);
  v280 = &v247 - v52;
  MEMORY[0x28223BE20](v53);
  v278 = &v247 - v54;
  MEMORY[0x28223BE20](v55);
  v276 = &v247 - v56;
  MEMORY[0x28223BE20](v57);
  v274 = &v247 - v58;
  MEMORY[0x28223BE20](v59);
  v272 = &v247 - v60;
  MEMORY[0x28223BE20](v61);
  v270 = &v247 - v62;
  MEMORY[0x28223BE20](v63);
  v268 = &v247 - v64;
  MEMORY[0x28223BE20](v65);
  v266 = &v247 - v66;
  MEMORY[0x28223BE20](v67);
  v264 = &v247 - v68;
  MEMORY[0x28223BE20](v69);
  v262 = &v247 - v70;
  MEMORY[0x28223BE20](v71);
  v260 = &v247 - v72;
  MEMORY[0x28223BE20](v73);
  v258 = &v247 - v74;
  MEMORY[0x28223BE20](v75);
  v256 = &v247 - v76;
  MEMORY[0x28223BE20](v77);
  v254 = &v247 - v78;
  MEMORY[0x28223BE20](v79);
  v252 = &v247 - v80;
  MEMORY[0x28223BE20](v81);
  v250 = &v247 - v82;
  MEMORY[0x28223BE20](v83);
  v248 = &v247 - v84;
  MEMORY[0x28223BE20](v85);
  v87 = &v247 - v86;
  MEMORY[0x28223BE20](v88);
  v90 = &v247 - v89;
  MEMORY[0x28223BE20](v91);
  v93 = &v247 - v92;
  v94 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  MEMORY[0x28223BE20](v94);
  v96 = &v247 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = [objc_allocWithZone(type metadata accessor for AutonamingModelFeatures()) init];
  sub_232B20458(v286, v96, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  v98 = &v96[v94[6]];
  if (v98[8])
  {
    v99 = 0;
  }

  else
  {
    v99 = *v98;
  }

  *&v97[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation] = v99;
  v97[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable] = v96[v94[7]] & 1;
  v100 = v94[8];
  v287 = v96;
  v101 = &v96[v100];
  v102 = *(v101 + 1);
  if (v102)
  {
    v103 = *v101;
    v104 = v102;
  }

  else
  {
    v103 = 0;
    v104 = 0xE000000000000000;
  }

  v105 = &v97[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey];
  *v105 = v103;
  *(v105 + 1) = v104;

  v288 = v94[5];
  sub_232B2036C(&v287[v288], v46, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v46, 1, v47) == 1)
  {
    sub_232CE9330();
    v106 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v93[v106] = off_27DDC62F0;
    v107 = sub_232B12480(v46, 1, v47);

    if (v107 != 1)
    {
      sub_232B13790(v46, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v46, v93, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v108 = *&v93[*(v47 + 20)];
  swift_beginAccess();
  if (*(v108 + 24))
  {
    v109 = 0.0;
  }

  else
  {
    v109 = *(v108 + 16);
  }

  sub_232B1F798(v93, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v110 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v310 = *&v97[v110];
  sub_232B1F66C(0x61727563636F6F63, 0xEF746E632065636ELL, v109);
  *&v97[v110] = v310;
  swift_endAccess();
  sub_232B2036C(&v287[v288], v43, &qword_27DDC64B0, &qword_232CF5D30);
  v111 = sub_232B12480(v43, 1, v47);
  v112 = v247;
  if (v111 == 1)
  {
    sub_232CE9330();
    v113 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v90[v113] = off_27DDC62F0;
    v114 = sub_232B12480(v43, 1, v47);

    if (v114 != 1)
    {
      sub_232B13790(v43, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v43, v90, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v115 = *&v90[*(v47 + 20)];
  swift_beginAccess();
  if (*(v115 + 40))
  {
    v116 = 0.0;
  }

  else
  {
    v116 = *(v115 + 32);
  }

  sub_232B1F798(v90, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v309 = *&v97[v110];
  sub_232B1F66C(0x6320797469746E65, 0xEA0000000000746ELL, v116);
  *&v97[v110] = v309;
  swift_endAccess();
  v117 = v287;
  sub_232B2036C(&v287[v288], v112, &qword_27DDC64B0, &qword_232CF5D30);
  v118 = sub_232B12480(v112, 1, v47);
  v119 = v249;
  if (v118 == 1)
  {
    sub_232CE9330();
    v120 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v87[v120] = off_27DDC62F0;
    v121 = sub_232B12480(v112, 1, v47);

    if (v121 != 1)
    {
      sub_232B13790(v112, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v112, v87, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v122 = *&v87[*(v47 + 20)];
  swift_beginAccess();
  if (*(v122 + 56))
  {
    v123 = 0.0;
  }

  else
  {
    v123 = *(v122 + 48);
  }

  sub_232B1F798(v87, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v308 = *&v97[v110];
  sub_232B1F66C(0x6E63206567616D69, 0xE900000000000074, v123);
  *&v97[v110] = v308;
  swift_endAccess();
  sub_232B2036C(v117 + v288, v119, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v119, 1, v47) == 1)
  {
    v124 = v248;
    sub_232CE9330();
    v125 = *(v47 + 20);
    v126 = v255;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v124 + v125) = off_27DDC62F0;
    v127 = sub_232B12480(v119, 1, v47);

    if (v127 != 1)
    {
      sub_232B13790(v119, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v124 = v248;
    sub_232B1F7F0(v119, v248, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v126 = v255;
  }

  v128 = *(v124 + *(v47 + 20));
  swift_beginAccess();
  if (*(v128 + 72))
  {
    v129 = 0.0;
  }

  else
  {
    v129 = *(v128 + 64);
  }

  sub_232B1F798(v124, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v307 = *&v97[v110];
  sub_232B1F66C(0xD000000000000012, 0x8000000232D027C0, v129);
  *&v97[v110] = v307;
  swift_endAccess();
  v130 = v251;
  sub_232B2036C(v117 + v288, v251, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v130, 1, v47) == 1)
  {
    v131 = v250;
    sub_232CE9330();
    v132 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v131 + v132) = off_27DDC62F0;
    v133 = sub_232B12480(v130, 1, v47);

    if (v133 != 1)
    {
      sub_232B13790(v130, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v131 = v250;
    sub_232B1F7F0(v130, v250, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v134 = *(v131 + *(v47 + 20));
  swift_beginAccess();
  if (*(v134 + 88))
  {
    v135 = 0.0;
  }

  else
  {
    v135 = *(v134 + 80);
  }

  sub_232B1F798(v131, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v306 = *&v97[v110];
  sub_232B1F66C(0xD000000000000013, 0x8000000232D027E0, v135);
  *&v97[v110] = v306;
  swift_endAccess();
  v136 = v253;
  sub_232B2036C(v117 + v288, v253, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v136, 1, v47) == 1)
  {
    v137 = v252;
    sub_232CE9330();
    v138 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v137 + v138) = off_27DDC62F0;
    v139 = sub_232B12480(v136, 1, v47);

    v140 = v139 == 1;
    v141 = v254;
    if (!v140)
    {
      sub_232B13790(v136, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v137 = v252;
    sub_232B1F7F0(v136, v252, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v141 = v254;
  }

  v142 = *(v137 + *(v47 + 20));
  swift_beginAccess();
  if (*(v142 + 104))
  {
    v143 = 0.0;
  }

  else
  {
    v143 = *(v142 + 96);
  }

  sub_232B1F798(v137, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v305 = *&v97[v110];
  sub_232B1F66C(0x6F20656369766564, 0xEC00000072656E77, v143);
  *&v97[v110] = v305;
  swift_endAccess();
  sub_232B2036C(v117 + v288, v126, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v126, 1, v47) == 1)
  {
    sub_232CE9330();
    v144 = v141;
    v145 = *(v47 + 20);
    v146 = v257;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v144 + v145) = off_27DDC62F0;
    v147 = sub_232B12480(v126, 1, v47);

    v140 = v147 == 1;
    v141 = v144;
    if (!v140)
    {
      sub_232B13790(v126, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v126, v141, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v146 = v257;
  }

  v148 = *(v141 + *(v47 + 20));
  swift_beginAccess();
  if (*(v148 + 120))
  {
    v149 = 0.0;
  }

  else
  {
    v149 = *(v148 + 112);
  }

  sub_232B1F798(v141, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v304 = *&v97[v110];
  sub_232B1F66C(0x2072657020676D69, 0xEC00000065636166, v149);
  *&v97[v110] = v304;
  swift_endAccess();
  sub_232B2036C(v117 + v288, v146, &qword_27DDC64B0, &qword_232CF5D30);
  v150 = sub_232B12480(v146, 1, v47);
  v151 = v259;
  if (v150 == 1)
  {
    v152 = v256;
    sub_232CE9330();
    v153 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v152 + v153) = off_27DDC62F0;
    v154 = sub_232B12480(v146, 1, v47);

    if (v154 != 1)
    {
      sub_232B13790(v146, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v152 = v256;
    sub_232B1F7F0(v146, v256, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v155 = *(v152 + *(v47 + 20));
  swift_beginAccess();
  if (*(v155 + 136))
  {
    v156 = 0.0;
  }

  else
  {
    v156 = *(v155 + 128);
  }

  sub_232B1F798(v152, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v303 = *&v97[v110];
  sub_232B1F66C(0xD000000000000011, 0x8000000232D02800, v156);
  *&v97[v110] = v303;
  swift_endAccess();
  sub_232B2036C(v117 + v288, v151, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v151, 1, v47) == 1)
  {
    v157 = v258;
    sub_232CE9330();
    v158 = *(v47 + 20);
    v159 = v261;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v157 + v158) = off_27DDC62F0;
    v160 = sub_232B12480(v151, 1, v47);

    if (v160 != 1)
    {
      sub_232B13790(v151, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v157 = v258;
    sub_232B1F7F0(v151, v258, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v159 = v261;
  }

  v161 = *(v157 + *(v47 + 20));
  swift_beginAccess();
  if (*(v161 + 152))
  {
    v162 = 0.0;
  }

  else
  {
    v162 = *(v161 + 144);
  }

  sub_232B1F798(v157, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v302 = *&v97[v110];
  sub_232B1F66C(0x6E20657571696E75, 0xEC00000073656D61, v162);
  *&v97[v110] = v302;
  swift_endAccess();
  sub_232B2036C(v117 + v288, v159, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v159, 1, v47) == 1)
  {
    v163 = v260;
    sub_232CE9330();
    v164 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v163 + v164) = off_27DDC62F0;
    v165 = sub_232B12480(v159, 1, v47);

    v140 = v165 == 1;
    v117 = v287;
    if (!v140)
    {
      sub_232B13790(v159, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v163 = v260;
    sub_232B1F7F0(v159, v260, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v166 = *(v163 + *(v47 + 20));
  swift_beginAccess();
  if (*(v166 + 168))
  {
    v167 = 0.0;
  }

  else
  {
    v167 = *(v166 + 160);
  }

  sub_232B1F798(v163, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v301 = *&v97[v110];
  sub_232B1F66C(0x6620657571696E75, 0xEC00000073656361, v167);
  *&v97[v110] = v301;
  swift_endAccess();
  v168 = v263;
  sub_232B2036C(v117 + v288, v263, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v168, 1, v47) == 1)
  {
    v169 = v262;
    sub_232CE9330();
    v170 = *(v47 + 20);
    v171 = v265;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v169 + v170) = off_27DDC62F0;
    v172 = sub_232B12480(v168, 1, v47);

    if (v172 != 1)
    {
      sub_232B13790(v168, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v169 = v262;
    sub_232B1F7F0(v168, v262, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v171 = v265;
  }

  v173 = *(v169 + *(v47 + 20));
  swift_beginAccess();
  if (*(v173 + 304))
  {
    v174 = 0.0;
  }

  else
  {
    v174 = *(v173 + 296);
  }

  sub_232B1F798(v169, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v300 = *&v97[v110];
  sub_232B1F66C(0x68745F6C65646F6DLL, 0xEF646C6F68736572, v174);
  *&v97[v110] = v300;
  swift_endAccess();
  sub_232B2036C(v117 + v288, v171, &qword_27DDC64B0, &qword_232CF5D30);
  v175 = sub_232B12480(v171, 1, v47);
  v176 = v267;
  if (v175 == 1)
  {
    v177 = v264;
    sub_232CE9330();
    v178 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v177 + v178) = off_27DDC62F0;
    v179 = sub_232B12480(v171, 1, v47);

    v140 = v179 == 1;
    v180 = v266;
    if (!v140)
    {
      sub_232B13790(v171, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v177 = v264;
    sub_232B1F7F0(v171, v264, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v180 = v266;
  }

  v181 = *(v177 + *(v47 + 20));
  swift_beginAccess();
  if (*(v181 + 288))
  {
    v182 = 0.0;
  }

  else
  {
    v182 = *(v181 + 280);
  }

  sub_232B1F798(v177, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v299 = *&v97[v110];
  sub_232B1F66C(0xD000000000000010, 0x8000000232D02820, v182);
  *&v97[v110] = v299;
  swift_endAccess();
  sub_232B2036C(v117 + v288, v176, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v176, 1, v47) == 1)
  {
    sub_232CE9330();
    v183 = v180;
    v184 = *(v47 + 20);
    v185 = v269;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v183 + v184) = off_27DDC62F0;
    v186 = sub_232B12480(v176, 1, v47);

    v140 = v186 == 1;
    v180 = v183;
    if (!v140)
    {
      sub_232B13790(v176, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v176, v180, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v185 = v269;
  }

  v187 = *(v180 + *(v47 + 20));
  swift_beginAccess();
  if (*(v187 + 224))
  {
    v188 = 0.0;
  }

  else
  {
    v188 = *(v187 + 216);
  }

  sub_232B1F798(v180, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v298 = *&v97[v110];
  sub_232B1F66C(0x7268745F766E6F63, 0xEC00000073646165, v188);
  *&v97[v110] = v298;
  swift_endAccess();
  sub_232B2036C(v117 + v288, v185, &qword_27DDC64B0, &qword_232CF5D30);
  v189 = sub_232B12480(v185, 1, v47);
  v190 = v270;
  if (v189 == 1)
  {
    v191 = v268;
    sub_232CE9330();
    v192 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v191 + v192) = off_27DDC62F0;
    v193 = sub_232B12480(v185, 1, v47);

    if (v193 != 1)
    {
      sub_232B13790(v185, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v191 = v268;
    sub_232B1F7F0(v185, v268, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v194 = *(v191 + *(v47 + 20));
  swift_beginAccess();
  if (*(v194 + 240))
  {
    v195 = 0.0;
  }

  else
  {
    v195 = *(v194 + 232);
  }

  sub_232B1F798(v191, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v297 = *&v97[v110];
  sub_232B1F66C(0x736D5F746E756F63, 0xEA00000000007367, v195);
  *&v97[v110] = v297;
  v196 = swift_endAccess();
  MEMORY[0x28223BE20](v196);
  *(&v247 - 2) = v117;
  *(&v247 - 1) = v97;
  sub_232B1D200(sub_232B20524, (&v247 - 4), 1, 11);
  v197 = v117 + v288;
  v198 = v271;
  sub_232B2036C(v197, v271, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v198, 1, v47) == 1)
  {
    sub_232CE9330();
    v199 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v190 + v199) = off_27DDC62F0;
    v200 = sub_232B12480(v198, 1, v47);

    if (v200 != 1)
    {
      sub_232B13790(v198, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v198, v190, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v201 = v277;
  v202 = *(v190 + *(v47 + 20));
  swift_beginAccess();
  v203 = *(v202 + 248);

  sub_232B1F798(v190, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v204 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v296 = *&v97[v204];
  sub_232B1F574(v203, 0xD00000000000001DLL, 0x8000000232D02840);
  *&v97[v204] = v296;
  swift_endAccess();
  v205 = v273;
  sub_232B2036C(&v287[v288], v273, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v205, 1, v47) == 1)
  {
    v206 = v272;
    sub_232CE9330();
    v207 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v206 + v207) = off_27DDC62F0;
    v208 = sub_232B12480(v205, 1, v47);

    if (v208 != 1)
    {
      sub_232B13790(v205, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v206 = v272;
    sub_232B1F7F0(v205, v272, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v209 = *(v206 + *(v47 + 20));
  swift_beginAccess();
  v210 = *(v209 + 256);

  sub_232B1F798(v206, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v295 = *&v97[v204];
  sub_232B1F574(v210, 0xD00000000000001DLL, 0x8000000232D02860);
  *&v97[v204] = v295;
  swift_endAccess();
  v211 = v275;
  sub_232B2036C(&v287[v288], v275, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v211, 1, v47) == 1)
  {
    v212 = v274;
    sub_232CE9330();
    v213 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v212 + v213) = off_27DDC62F0;
    v214 = sub_232B12480(v211, 1, v47);

    if (v214 != 1)
    {
      sub_232B13790(v211, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v212 = v274;
    sub_232B1F7F0(v211, v274, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v215 = *(v212 + *(v47 + 20));
  swift_beginAccess();
  v216 = *(v215 + 264);

  sub_232B1F798(v212, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v294 = *&v97[v204];
  sub_232B1F574(v216, 0xD00000000000001CLL, 0x8000000232D02880);
  *&v97[v204] = v294;
  swift_endAccess();
  sub_232B2036C(&v287[v288], v201, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v201, 1, v47) == 1)
  {
    v217 = v276;
    sub_232CE9330();
    v218 = *(v47 + 20);
    v219 = v284;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v217 + v218) = off_27DDC62F0;
    v220 = sub_232B12480(v201, 1, v47);

    if (v220 != 1)
    {
      sub_232B13790(v201, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v217 = v276;
    sub_232B1F7F0(v201, v276, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v219 = v284;
  }

  v221 = *(v217 + *(v47 + 20));
  swift_beginAccess();
  v222 = *(v221 + 272);

  sub_232B1F798(v217, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v293 = *&v97[v204];
  sub_232B1F574(v222, 0xD000000000000017, 0x8000000232D028A0);
  *&v97[v204] = v293;
  swift_endAccess();
  v223 = v279;
  sub_232B2036C(&v287[v288], v279, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v223, 1, v47) == 1)
  {
    v224 = v278;
    sub_232CE9330();
    v225 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v224 + v225) = off_27DDC62F0;
    v226 = sub_232B12480(v223, 1, v47);

    if (v226 != 1)
    {
      sub_232B13790(v223, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v224 = v278;
    sub_232B1F7F0(v223, v278, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v227 = *(v224 + *(v47 + 20));
  swift_beginAccess();
  v228 = *(v227 + 320);

  sub_232B1F798(v224, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v292 = *&v97[v204];
  sub_232B1F574(v228, 0xD000000000000019, 0x8000000232D028C0);
  *&v97[v204] = v292;
  swift_endAccess();
  v229 = v281;
  sub_232B2036C(&v287[v288], v281, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v229, 1, v47) == 1)
  {
    v230 = v280;
    sub_232CE9330();
    v231 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v230 + v231) = off_27DDC62F0;
    v232 = sub_232B12480(v229, 1, v47);

    if (v232 != 1)
    {
      sub_232B13790(v229, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v230 = v280;
    sub_232B1F7F0(v229, v280, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v233 = *(v230 + *(v47 + 20));
  swift_beginAccess();
  v234 = *(v233 + 328);

  sub_232B1F798(v230, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v291 = *&v97[v204];
  sub_232B1F574(v234, 0xD000000000000014, 0x8000000232D028E0);
  *&v97[v204] = v291;
  swift_endAccess();
  v235 = v283;
  sub_232B2036C(&v287[v288], v283, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v235, 1, v47) == 1)
  {
    v236 = v282;
    sub_232CE9330();
    v237 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v236 + v237) = off_27DDC62F0;
    v238 = sub_232B12480(v235, 1, v47);

    if (v238 != 1)
    {
      sub_232B13790(v235, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v236 = v282;
    sub_232B1F7F0(v235, v282, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v239 = *(v236 + *(v47 + 20));
  swift_beginAccess();
  v240 = *(v239 + 344);

  sub_232B1F798(v236, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v290 = *&v97[v204];
  sub_232B1F574(v240, 0xD000000000000019, 0x8000000232D02900);
  *&v97[v204] = v290;
  swift_endAccess();
  v241 = v285;
  sub_232B2036C(&v287[v288], v285, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v241, 1, v47) == 1)
  {
    sub_232CE9330();
    v242 = *(v47 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v219 + v242) = off_27DDC62F0;
    v243 = sub_232B12480(v241, 1, v47);

    if (v243 != 1)
    {
      sub_232B13790(v241, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v241, v219, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v244 = *(v219 + *(v47 + 20));
  swift_beginAccess();
  v245 = *(v244 + 336);

  sub_232B1F798(v219, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v289 = *&v97[v204];
  sub_232B1F574(v245, 0xD00000000000001CLL, 0x8000000232D02920);
  *&v97[v204] = v289;
  swift_endAccess();
  sub_232B1F798(v286, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  sub_232B1F798(v287, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  return v97;
}

char *sub_232B16C28(uint64_t a1)
{
  v2 = v1;
  v288 = a1;
  v3 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  MEMORY[0x28223BE20](v3 - 8);
  v287 = &v249 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v285 = &v249 - v6;
  MEMORY[0x28223BE20](v7);
  v283 = &v249 - v8;
  MEMORY[0x28223BE20](v9);
  v281 = &v249 - v10;
  MEMORY[0x28223BE20](v11);
  v279 = &v249 - v12;
  MEMORY[0x28223BE20](v13);
  v277 = &v249 - v14;
  MEMORY[0x28223BE20](v15);
  v275 = &v249 - v16;
  MEMORY[0x28223BE20](v17);
  v273 = &v249 - v18;
  MEMORY[0x28223BE20](v19);
  v271 = &v249 - v20;
  MEMORY[0x28223BE20](v21);
  v269 = &v249 - v22;
  MEMORY[0x28223BE20](v23);
  v267 = &v249 - v24;
  MEMORY[0x28223BE20](v25);
  v265 = &v249 - v26;
  MEMORY[0x28223BE20](v27);
  v263 = &v249 - v28;
  MEMORY[0x28223BE20](v29);
  v261 = &v249 - v30;
  MEMORY[0x28223BE20](v31);
  v259 = &v249 - v32;
  MEMORY[0x28223BE20](v33);
  v257 = &v249 - v34;
  MEMORY[0x28223BE20](v35);
  v255 = &v249 - v36;
  MEMORY[0x28223BE20](v37);
  v253 = &v249 - v38;
  MEMORY[0x28223BE20](v39);
  v251 = &v249 - v40;
  MEMORY[0x28223BE20](v41);
  v249 = &v249 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v249 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v249 - v47;
  v49 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  MEMORY[0x28223BE20](v49);
  v286 = &v249 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v284 = &v249 - v52;
  MEMORY[0x28223BE20](v53);
  v282 = &v249 - v54;
  MEMORY[0x28223BE20](v55);
  v280 = &v249 - v56;
  MEMORY[0x28223BE20](v57);
  v278 = &v249 - v58;
  MEMORY[0x28223BE20](v59);
  v276 = &v249 - v60;
  MEMORY[0x28223BE20](v61);
  v274 = &v249 - v62;
  MEMORY[0x28223BE20](v63);
  v272 = &v249 - v64;
  MEMORY[0x28223BE20](v65);
  v270 = &v249 - v66;
  MEMORY[0x28223BE20](v67);
  v268 = &v249 - v68;
  MEMORY[0x28223BE20](v69);
  v266 = &v249 - v70;
  MEMORY[0x28223BE20](v71);
  v264 = &v249 - v72;
  MEMORY[0x28223BE20](v73);
  v262 = &v249 - v74;
  MEMORY[0x28223BE20](v75);
  v260 = &v249 - v76;
  MEMORY[0x28223BE20](v77);
  v258 = &v249 - v78;
  MEMORY[0x28223BE20](v79);
  v256 = &v249 - v80;
  MEMORY[0x28223BE20](v81);
  v254 = &v249 - v82;
  MEMORY[0x28223BE20](v83);
  v252 = &v249 - v84;
  MEMORY[0x28223BE20](v85);
  v250 = &v249 - v86;
  MEMORY[0x28223BE20](v87);
  v89 = &v249 - v88;
  MEMORY[0x28223BE20](v90);
  v92 = &v249 - v91;
  MEMORY[0x28223BE20](v93);
  v95 = &v249 - v94;
  v96 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  MEMORY[0x28223BE20](v96);
  v98 = &v249 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = [objc_allocWithZone(v2) init];
  sub_232B20458(v288, v98, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  v100 = &v98[v96[6]];
  if (v100[8])
  {
    v101 = 0;
  }

  else
  {
    v101 = *v100;
  }

  *&v99[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation] = v101;
  v99[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable] = v98[v96[7]] & 1;
  v102 = v96[8];
  v289 = v98;
  v103 = &v98[v102];
  v104 = *(v103 + 1);
  if (v104)
  {
    v105 = *v103;
    v106 = v104;
  }

  else
  {
    v105 = 0;
    v106 = 0xE000000000000000;
  }

  v107 = &v99[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey];
  *v107 = v105;
  *(v107 + 1) = v106;

  v290 = v96[5];
  sub_232B2036C(&v289[v290], v48, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v48, 1, v49) == 1)
  {
    sub_232CE9330();
    v108 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v95[v108] = off_27DDC62F0;
    v109 = sub_232B12480(v48, 1, v49);

    if (v109 != 1)
    {
      sub_232B13790(v48, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v48, v95, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v110 = *&v95[*(v49 + 20)];
  swift_beginAccess();
  if (*(v110 + 24))
  {
    v111 = 0.0;
  }

  else
  {
    v111 = *(v110 + 16);
  }

  sub_232B1F798(v95, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v112 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v312 = *&v99[v112];
  sub_232B1F66C(0x61727563636F6F63, 0xEF746E632065636ELL, v111);
  *&v99[v112] = v312;
  swift_endAccess();
  sub_232B2036C(&v289[v290], v45, &qword_27DDC64B0, &qword_232CF5D30);
  v113 = sub_232B12480(v45, 1, v49);
  v114 = v249;
  if (v113 == 1)
  {
    sub_232CE9330();
    v115 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v92[v115] = off_27DDC62F0;
    v116 = sub_232B12480(v45, 1, v49);

    if (v116 != 1)
    {
      sub_232B13790(v45, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v45, v92, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v117 = *&v92[*(v49 + 20)];
  swift_beginAccess();
  if (*(v117 + 40))
  {
    v118 = 0.0;
  }

  else
  {
    v118 = *(v117 + 32);
  }

  sub_232B1F798(v92, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v311 = *&v99[v112];
  sub_232B1F66C(0x6320797469746E65, 0xEA0000000000746ELL, v118);
  *&v99[v112] = v311;
  swift_endAccess();
  v119 = v289;
  sub_232B2036C(&v289[v290], v114, &qword_27DDC64B0, &qword_232CF5D30);
  v120 = sub_232B12480(v114, 1, v49);
  v121 = v251;
  if (v120 == 1)
  {
    sub_232CE9330();
    v122 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v89[v122] = off_27DDC62F0;
    v123 = sub_232B12480(v114, 1, v49);

    if (v123 != 1)
    {
      sub_232B13790(v114, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v114, v89, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v124 = *&v89[*(v49 + 20)];
  swift_beginAccess();
  if (*(v124 + 56))
  {
    v125 = 0.0;
  }

  else
  {
    v125 = *(v124 + 48);
  }

  sub_232B1F798(v89, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v310 = *&v99[v112];
  sub_232B1F66C(0x6E63206567616D69, 0xE900000000000074, v125);
  *&v99[v112] = v310;
  swift_endAccess();
  sub_232B2036C(v119 + v290, v121, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v121, 1, v49) == 1)
  {
    v126 = v250;
    sub_232CE9330();
    v127 = *(v49 + 20);
    v128 = v257;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v126 + v127) = off_27DDC62F0;
    v129 = sub_232B12480(v121, 1, v49);

    if (v129 != 1)
    {
      sub_232B13790(v121, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v126 = v250;
    sub_232B1F7F0(v121, v250, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v128 = v257;
  }

  v130 = *(v126 + *(v49 + 20));
  swift_beginAccess();
  if (*(v130 + 72))
  {
    v131 = 0.0;
  }

  else
  {
    v131 = *(v130 + 64);
  }

  sub_232B1F798(v126, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v309 = *&v99[v112];
  sub_232B1F66C(0xD000000000000012, 0x8000000232D027C0, v131);
  *&v99[v112] = v309;
  swift_endAccess();
  v132 = v253;
  sub_232B2036C(v119 + v290, v253, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v132, 1, v49) == 1)
  {
    v133 = v252;
    sub_232CE9330();
    v134 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v133 + v134) = off_27DDC62F0;
    v135 = sub_232B12480(v132, 1, v49);

    if (v135 != 1)
    {
      sub_232B13790(v132, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v133 = v252;
    sub_232B1F7F0(v132, v252, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v136 = *(v133 + *(v49 + 20));
  swift_beginAccess();
  if (*(v136 + 88))
  {
    v137 = 0.0;
  }

  else
  {
    v137 = *(v136 + 80);
  }

  sub_232B1F798(v133, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v308 = *&v99[v112];
  sub_232B1F66C(0xD000000000000013, 0x8000000232D027E0, v137);
  *&v99[v112] = v308;
  swift_endAccess();
  v138 = v255;
  sub_232B2036C(v119 + v290, v255, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v138, 1, v49) == 1)
  {
    v139 = v254;
    sub_232CE9330();
    v140 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v139 + v140) = off_27DDC62F0;
    v141 = sub_232B12480(v138, 1, v49);

    v142 = v141 == 1;
    v143 = v256;
    if (!v142)
    {
      sub_232B13790(v138, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v139 = v254;
    sub_232B1F7F0(v138, v254, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v143 = v256;
  }

  v144 = *(v139 + *(v49 + 20));
  swift_beginAccess();
  if (*(v144 + 104))
  {
    v145 = 0.0;
  }

  else
  {
    v145 = *(v144 + 96);
  }

  sub_232B1F798(v139, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v307 = *&v99[v112];
  sub_232B1F66C(0x6F20656369766564, 0xEC00000072656E77, v145);
  *&v99[v112] = v307;
  swift_endAccess();
  sub_232B2036C(v119 + v290, v128, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v128, 1, v49) == 1)
  {
    sub_232CE9330();
    v146 = v143;
    v147 = *(v49 + 20);
    v148 = v259;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v146 + v147) = off_27DDC62F0;
    v149 = sub_232B12480(v128, 1, v49);

    v142 = v149 == 1;
    v143 = v146;
    if (!v142)
    {
      sub_232B13790(v128, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v128, v143, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v148 = v259;
  }

  v150 = *(v143 + *(v49 + 20));
  swift_beginAccess();
  if (*(v150 + 120))
  {
    v151 = 0.0;
  }

  else
  {
    v151 = *(v150 + 112);
  }

  sub_232B1F798(v143, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v306 = *&v99[v112];
  sub_232B1F66C(0x2072657020676D69, 0xEC00000065636166, v151);
  *&v99[v112] = v306;
  swift_endAccess();
  sub_232B2036C(v119 + v290, v148, &qword_27DDC64B0, &qword_232CF5D30);
  v152 = sub_232B12480(v148, 1, v49);
  v153 = v261;
  if (v152 == 1)
  {
    v154 = v258;
    sub_232CE9330();
    v155 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v154 + v155) = off_27DDC62F0;
    v156 = sub_232B12480(v148, 1, v49);

    if (v156 != 1)
    {
      sub_232B13790(v148, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v154 = v258;
    sub_232B1F7F0(v148, v258, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v157 = *(v154 + *(v49 + 20));
  swift_beginAccess();
  if (*(v157 + 136))
  {
    v158 = 0.0;
  }

  else
  {
    v158 = *(v157 + 128);
  }

  sub_232B1F798(v154, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v305 = *&v99[v112];
  sub_232B1F66C(0xD000000000000011, 0x8000000232D02800, v158);
  *&v99[v112] = v305;
  swift_endAccess();
  sub_232B2036C(v119 + v290, v153, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v153, 1, v49) == 1)
  {
    v159 = v260;
    sub_232CE9330();
    v160 = *(v49 + 20);
    v161 = v263;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v159 + v160) = off_27DDC62F0;
    v162 = sub_232B12480(v153, 1, v49);

    if (v162 != 1)
    {
      sub_232B13790(v153, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v159 = v260;
    sub_232B1F7F0(v153, v260, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v161 = v263;
  }

  v163 = *(v159 + *(v49 + 20));
  swift_beginAccess();
  if (*(v163 + 152))
  {
    v164 = 0.0;
  }

  else
  {
    v164 = *(v163 + 144);
  }

  sub_232B1F798(v159, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v304 = *&v99[v112];
  sub_232B1F66C(0x6E20657571696E75, 0xEC00000073656D61, v164);
  *&v99[v112] = v304;
  swift_endAccess();
  sub_232B2036C(v119 + v290, v161, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v161, 1, v49) == 1)
  {
    v165 = v262;
    sub_232CE9330();
    v166 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v165 + v166) = off_27DDC62F0;
    v167 = sub_232B12480(v161, 1, v49);

    v142 = v167 == 1;
    v119 = v289;
    if (!v142)
    {
      sub_232B13790(v161, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v165 = v262;
    sub_232B1F7F0(v161, v262, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v168 = *(v165 + *(v49 + 20));
  swift_beginAccess();
  if (*(v168 + 168))
  {
    v169 = 0.0;
  }

  else
  {
    v169 = *(v168 + 160);
  }

  sub_232B1F798(v165, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v303 = *&v99[v112];
  sub_232B1F66C(0x6620657571696E75, 0xEC00000073656361, v169);
  *&v99[v112] = v303;
  swift_endAccess();
  v170 = v265;
  sub_232B2036C(v119 + v290, v265, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v170, 1, v49) == 1)
  {
    v171 = v264;
    sub_232CE9330();
    v172 = *(v49 + 20);
    v173 = v267;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v171 + v172) = off_27DDC62F0;
    v174 = sub_232B12480(v170, 1, v49);

    if (v174 != 1)
    {
      sub_232B13790(v170, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v171 = v264;
    sub_232B1F7F0(v170, v264, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v173 = v267;
  }

  v175 = *(v171 + *(v49 + 20));
  swift_beginAccess();
  if (*(v175 + 304))
  {
    v176 = 0.0;
  }

  else
  {
    v176 = *(v175 + 296);
  }

  sub_232B1F798(v171, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v302 = *&v99[v112];
  sub_232B1F66C(0x68745F6C65646F6DLL, 0xEF646C6F68736572, v176);
  *&v99[v112] = v302;
  swift_endAccess();
  sub_232B2036C(v119 + v290, v173, &qword_27DDC64B0, &qword_232CF5D30);
  v177 = sub_232B12480(v173, 1, v49);
  v178 = v269;
  if (v177 == 1)
  {
    v179 = v266;
    sub_232CE9330();
    v180 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v179 + v180) = off_27DDC62F0;
    v181 = sub_232B12480(v173, 1, v49);

    v142 = v181 == 1;
    v182 = v268;
    if (!v142)
    {
      sub_232B13790(v173, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v179 = v266;
    sub_232B1F7F0(v173, v266, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v182 = v268;
  }

  v183 = *(v179 + *(v49 + 20));
  swift_beginAccess();
  if (*(v183 + 288))
  {
    v184 = 0.0;
  }

  else
  {
    v184 = *(v183 + 280);
  }

  sub_232B1F798(v179, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v301 = *&v99[v112];
  sub_232B1F66C(0xD000000000000010, 0x8000000232D02820, v184);
  *&v99[v112] = v301;
  swift_endAccess();
  sub_232B2036C(v119 + v290, v178, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v178, 1, v49) == 1)
  {
    sub_232CE9330();
    v185 = v182;
    v186 = *(v49 + 20);
    v187 = v271;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v185 + v186) = off_27DDC62F0;
    v188 = sub_232B12480(v178, 1, v49);

    v142 = v188 == 1;
    v182 = v185;
    if (!v142)
    {
      sub_232B13790(v178, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v178, v182, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v187 = v271;
  }

  v189 = *(v182 + *(v49 + 20));
  swift_beginAccess();
  if (*(v189 + 224))
  {
    v190 = 0.0;
  }

  else
  {
    v190 = *(v189 + 216);
  }

  sub_232B1F798(v182, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v300 = *&v99[v112];
  sub_232B1F66C(0x7268745F766E6F63, 0xEC00000073646165, v190);
  *&v99[v112] = v300;
  swift_endAccess();
  sub_232B2036C(v119 + v290, v187, &qword_27DDC64B0, &qword_232CF5D30);
  v191 = sub_232B12480(v187, 1, v49);
  v192 = v272;
  if (v191 == 1)
  {
    v193 = v270;
    sub_232CE9330();
    v194 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v193 + v194) = off_27DDC62F0;
    v195 = sub_232B12480(v187, 1, v49);

    if (v195 != 1)
    {
      sub_232B13790(v187, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v193 = v270;
    sub_232B1F7F0(v187, v270, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v196 = *(v193 + *(v49 + 20));
  swift_beginAccess();
  if (*(v196 + 240))
  {
    v197 = 0.0;
  }

  else
  {
    v197 = *(v196 + 232);
  }

  sub_232B1F798(v193, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v299 = *&v99[v112];
  sub_232B1F66C(0x736D5F746E756F63, 0xEA00000000007367, v197);
  *&v99[v112] = v299;
  v198 = swift_endAccess();
  MEMORY[0x28223BE20](v198);
  *(&v249 - 2) = v119;
  *(&v249 - 1) = v99;
  sub_232B1D200(sub_232B20524, (&v249 - 4), 1, 11);
  v199 = v119 + v290;
  v200 = v273;
  sub_232B2036C(v199, v273, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v200, 1, v49) == 1)
  {
    sub_232CE9330();
    v201 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v192 + v201) = off_27DDC62F0;
    v202 = sub_232B12480(v200, 1, v49);

    if (v202 != 1)
    {
      sub_232B13790(v200, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v200, v192, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v203 = v279;
  v204 = *(v192 + *(v49 + 20));
  swift_beginAccess();
  v205 = *(v204 + 248);

  sub_232B1F798(v192, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v206 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v298 = *&v99[v206];
  sub_232B1F574(v205, 0xD00000000000001DLL, 0x8000000232D02840);
  *&v99[v206] = v298;
  swift_endAccess();
  v207 = v275;
  sub_232B2036C(&v289[v290], v275, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v207, 1, v49) == 1)
  {
    v208 = v274;
    sub_232CE9330();
    v209 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v208 + v209) = off_27DDC62F0;
    v210 = sub_232B12480(v207, 1, v49);

    if (v210 != 1)
    {
      sub_232B13790(v207, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v208 = v274;
    sub_232B1F7F0(v207, v274, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v211 = *(v208 + *(v49 + 20));
  swift_beginAccess();
  v212 = *(v211 + 256);

  sub_232B1F798(v208, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v297 = *&v99[v206];
  sub_232B1F574(v212, 0xD00000000000001DLL, 0x8000000232D02860);
  *&v99[v206] = v297;
  swift_endAccess();
  v213 = v277;
  sub_232B2036C(&v289[v290], v277, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v213, 1, v49) == 1)
  {
    v214 = v276;
    sub_232CE9330();
    v215 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v214 + v215) = off_27DDC62F0;
    v216 = sub_232B12480(v213, 1, v49);

    if (v216 != 1)
    {
      sub_232B13790(v213, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v214 = v276;
    sub_232B1F7F0(v213, v276, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v217 = *(v214 + *(v49 + 20));
  swift_beginAccess();
  v218 = *(v217 + 264);

  sub_232B1F798(v214, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v296 = *&v99[v206];
  sub_232B1F574(v218, 0xD00000000000001CLL, 0x8000000232D02880);
  *&v99[v206] = v296;
  swift_endAccess();
  sub_232B2036C(&v289[v290], v203, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v203, 1, v49) == 1)
  {
    v219 = v278;
    sub_232CE9330();
    v220 = *(v49 + 20);
    v221 = v286;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v219 + v220) = off_27DDC62F0;
    v222 = sub_232B12480(v203, 1, v49);

    if (v222 != 1)
    {
      sub_232B13790(v203, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v219 = v278;
    sub_232B1F7F0(v203, v278, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v221 = v286;
  }

  v223 = *(v219 + *(v49 + 20));
  swift_beginAccess();
  v224 = *(v223 + 272);

  sub_232B1F798(v219, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v295 = *&v99[v206];
  sub_232B1F574(v224, 0xD000000000000017, 0x8000000232D028A0);
  *&v99[v206] = v295;
  swift_endAccess();
  v225 = v281;
  sub_232B2036C(&v289[v290], v281, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v225, 1, v49) == 1)
  {
    v226 = v280;
    sub_232CE9330();
    v227 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v226 + v227) = off_27DDC62F0;
    v228 = sub_232B12480(v225, 1, v49);

    if (v228 != 1)
    {
      sub_232B13790(v225, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v226 = v280;
    sub_232B1F7F0(v225, v280, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v229 = *(v226 + *(v49 + 20));
  swift_beginAccess();
  v230 = *(v229 + 320);

  sub_232B1F798(v226, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v294 = *&v99[v206];
  sub_232B1F574(v230, 0xD000000000000019, 0x8000000232D028C0);
  *&v99[v206] = v294;
  swift_endAccess();
  v231 = v283;
  sub_232B2036C(&v289[v290], v283, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v231, 1, v49) == 1)
  {
    v232 = v282;
    sub_232CE9330();
    v233 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v232 + v233) = off_27DDC62F0;
    v234 = sub_232B12480(v231, 1, v49);

    if (v234 != 1)
    {
      sub_232B13790(v231, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v232 = v282;
    sub_232B1F7F0(v231, v282, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v235 = *(v232 + *(v49 + 20));
  swift_beginAccess();
  v236 = *(v235 + 328);

  sub_232B1F798(v232, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v293 = *&v99[v206];
  sub_232B1F574(v236, 0xD000000000000014, 0x8000000232D028E0);
  *&v99[v206] = v293;
  swift_endAccess();
  v237 = v285;
  sub_232B2036C(&v289[v290], v285, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v237, 1, v49) == 1)
  {
    v238 = v284;
    sub_232CE9330();
    v239 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v238 + v239) = off_27DDC62F0;
    v240 = sub_232B12480(v237, 1, v49);

    if (v240 != 1)
    {
      sub_232B13790(v237, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v238 = v284;
    sub_232B1F7F0(v237, v284, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v241 = *(v238 + *(v49 + 20));
  swift_beginAccess();
  v242 = *(v241 + 344);

  sub_232B1F798(v238, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v292 = *&v99[v206];
  sub_232B1F574(v242, 0xD000000000000019, 0x8000000232D02900);
  *&v99[v206] = v292;
  swift_endAccess();
  v243 = v287;
  sub_232B2036C(&v289[v290], v287, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v243, 1, v49) == 1)
  {
    sub_232CE9330();
    v244 = *(v49 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v221 + v244) = off_27DDC62F0;
    v245 = sub_232B12480(v243, 1, v49);

    if (v245 != 1)
    {
      sub_232B13790(v243, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v243, v221, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v246 = *(v221 + *(v49 + 20));
  swift_beginAccess();
  v247 = *(v246 + 336);

  sub_232B1F798(v221, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v291 = *&v99[v206];
  sub_232B1F574(v247, 0xD00000000000001CLL, 0x8000000232D02920);
  *&v99[v206] = v291;
  swift_endAccess();
  sub_232B1F798(v288, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  sub_232B1F798(v289, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  return v99;
}

void AutonamingModelFeatures.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  sub_232B209E8();
  v443 = v3;
  v444 = v4;
  v5 = v2;
  v7 = v6;
  v9 = v8;
  v10 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  MEMORY[0x28223BE20](v10 - 8);
  sub_232B20714();
  v412 = v11;
  sub_232B20600();
  MEMORY[0x28223BE20](v12);
  sub_232B20628();
  v417 = v13;
  sub_232B20600();
  MEMORY[0x28223BE20](v14);
  sub_232B20628();
  v409 = v15;
  sub_232B20600();
  MEMORY[0x28223BE20](v16);
  sub_232B20628();
  v416 = v17;
  sub_232B20600();
  MEMORY[0x28223BE20](v18);
  sub_232B20628();
  v406 = v19;
  sub_232B20600();
  MEMORY[0x28223BE20](v20);
  sub_232B20628();
  v415 = v21;
  sub_232B20600();
  MEMORY[0x28223BE20](v22);
  sub_232B20628();
  v403 = v23;
  sub_232B20600();
  MEMORY[0x28223BE20](v24);
  sub_232B20628();
  v401 = v25;
  sub_232B20600();
  MEMORY[0x28223BE20](v26);
  sub_232B20628();
  v414 = v27;
  sub_232B20600();
  MEMORY[0x28223BE20](v28);
  sub_232B20628();
  v398 = v29;
  sub_232B20600();
  MEMORY[0x28223BE20](v30);
  sub_232B20628();
  v396 = v31;
  sub_232B20600();
  MEMORY[0x28223BE20](v32);
  sub_232B20628();
  v394 = v33;
  sub_232B20600();
  MEMORY[0x28223BE20](v34);
  sub_232B20628();
  v392 = v35;
  sub_232B20600();
  MEMORY[0x28223BE20](v36);
  sub_232B20628();
  v390 = v37;
  sub_232B20600();
  MEMORY[0x28223BE20](v38);
  sub_232B20628();
  v388 = v39;
  sub_232B20600();
  MEMORY[0x28223BE20](v40);
  sub_232B20628();
  v386 = v41;
  sub_232B20600();
  MEMORY[0x28223BE20](v42);
  sub_232B20628();
  v384 = v43;
  sub_232B20600();
  MEMORY[0x28223BE20](v44);
  sub_232B20628();
  v382 = v45;
  sub_232B20600();
  MEMORY[0x28223BE20](v46);
  sub_232B20628();
  v380 = v47;
  sub_232B20600();
  MEMORY[0x28223BE20](v48);
  sub_232B20628();
  v378 = v49;
  sub_232B20600();
  MEMORY[0x28223BE20](v50);
  sub_232B20628();
  v376 = v51;
  sub_232B20600();
  MEMORY[0x28223BE20](v52);
  v413 = &v371 - v53;
  v374 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v54);
  sub_232B20714();
  v411 = v55;
  sub_232B20600();
  MEMORY[0x28223BE20](v56);
  sub_232B20628();
  v410 = v57;
  sub_232B20600();
  MEMORY[0x28223BE20](v58);
  sub_232B20628();
  v408 = v59;
  sub_232B20600();
  MEMORY[0x28223BE20](v60);
  sub_232B20628();
  v407 = v61;
  sub_232B20600();
  MEMORY[0x28223BE20](v62);
  sub_232B20628();
  v405 = v63;
  sub_232B20600();
  MEMORY[0x28223BE20](v64);
  sub_232B20628();
  v404 = v65;
  sub_232B20600();
  MEMORY[0x28223BE20](v66);
  sub_232B20628();
  v402 = v67;
  sub_232B20600();
  MEMORY[0x28223BE20](v68);
  sub_232B20628();
  v400 = v69;
  sub_232B20600();
  MEMORY[0x28223BE20](v70);
  sub_232B20628();
  v399 = v71;
  sub_232B20600();
  MEMORY[0x28223BE20](v72);
  sub_232B20628();
  v397 = v73;
  sub_232B20600();
  MEMORY[0x28223BE20](v74);
  sub_232B20628();
  v395 = v75;
  sub_232B20600();
  MEMORY[0x28223BE20](v76);
  sub_232B20628();
  v393 = v77;
  sub_232B20600();
  MEMORY[0x28223BE20](v78);
  sub_232B20628();
  v391 = v79;
  sub_232B20600();
  MEMORY[0x28223BE20](v80);
  sub_232B20628();
  v389 = v81;
  sub_232B20600();
  MEMORY[0x28223BE20](v82);
  sub_232B20628();
  v387 = v83;
  sub_232B20600();
  MEMORY[0x28223BE20](v84);
  sub_232B20628();
  v385 = v85;
  sub_232B20600();
  MEMORY[0x28223BE20](v86);
  sub_232B20628();
  v383 = v87;
  sub_232B20600();
  MEMORY[0x28223BE20](v88);
  sub_232B20628();
  v381 = v89;
  sub_232B20600();
  MEMORY[0x28223BE20](v90);
  sub_232B20628();
  v379 = v91;
  sub_232B20600();
  MEMORY[0x28223BE20](v92);
  sub_232B20628();
  v377 = v93;
  sub_232B20600();
  MEMORY[0x28223BE20](v94);
  sub_232B20628();
  v375 = v95;
  sub_232B20600();
  MEMORY[0x28223BE20](v96);
  v98 = &v371 - v97;
  v99 = sub_232B124A8(&qword_27DDC66E8, &qword_232CF5D38);
  MEMORY[0x28223BE20](v99 - 8);
  v101 = &v371 - v100;
  v102 = *(v7 - 8);
  MEMORY[0x28223BE20](v103);
  sub_232B20704();
  v106 = v105 - v104;
  v107 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v108);
  sub_232B20704();
  v111 = v110 - v109;
  v112 = [objc_allocWithZone(v5) init];
  (*(v102 + 16))(v106, v9, v7);
  if (swift_dynamicCast())
  {
    v371 = v102;
    v372 = v9;
    sub_232B12504(v101, 0, 1, v107);
    sub_232B206C4();
    sub_232B1F7F0(v101, v111, v113);
    v114 = v111 + v107[6];
    if (*(v114 + 8))
    {
      v115 = 0;
    }

    else
    {
      v115 = *v114;
    }

    *&v112[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation] = v115;
    v112[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable] = *(v111 + v107[7]) & 1;
    v116 = v107[8];
    v418 = v111;
    v117 = (v111 + v116);
    v118 = v117[1];
    v373 = v7;
    if (v118)
    {
      v119 = *v117;
      v120 = v118;
    }

    else
    {
      v119 = 0;
      v120 = 0xE000000000000000;
    }

    v121 = v376;
    v122 = v374;
    v123 = &v112[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey];
    *v123 = v119;
    v123[1] = v120;

    v124 = v107[5];
    v125 = v418;
    v126 = v413;
    sub_232B2036C(v418 + v124, v413, &qword_27DDC64B0, &qword_232CF5D30);
    v127 = 0x27DDC6000uLL;
    if (sub_232B12480(v126, 1, v122) == 1)
    {
      sub_232CE9330();
      v128 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      *&v98[v128] = off_27DDC62F0;
      v127 = v413;
      v129 = sub_232B12480(v413, 1, v122);

      if (v129 != 1)
      {
        sub_232B13790(v127, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      sub_232B1F7F0(v126, v98, v130);
    }

    sub_232B20960();
    sub_232B13F74(v127 + 16, &v442);
    sub_232B20688();
    if (v133)
    {
      v134 = v131;
    }

    else
    {
      v134 = v132;
    }

    sub_232B1F798(v98, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v135 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
    sub_232B207D4(&v112[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap], v441);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v440[0] = v136;
    v137 = sub_232B20798();
    sub_232B1F66C(v137, v138, v134);
    *&v112[v135] = v440[0];
    swift_endAccess();
    sub_232B2036C(v125 + v124, v121, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v121);
    v139 = v375;
    if (v133)
    {
      v140 = v124;
      sub_232CE9330();
      v141 = v139;
      v142 = *(v122 + 20);
      v144 = v378;
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      *(v141 + v142) = off_27DDC62F0;
      sub_232B205CC(v121);
      v133 = v142 == 1;
      v139 = v141;
      v124 = v140;
      v125 = v418;
      if (!v133)
      {
        sub_232B13790(v121, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      sub_232B1F7F0(v121, v139, v143);
      v144 = v378;
    }

    sub_232B13F74(*(v139 + *(v122 + 20)) + 32, v441);
    sub_232B20688();
    if (v133)
    {
      v147 = v145;
    }

    else
    {
      v147 = v146;
    }

    sub_232B1F798(v139, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4(&v112[v135], v440);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v439[0] = v148;
    v149 = sub_232B209B4();
    v150 = v439;
    sub_232B1F66C(v149, 0xEA0000000000746ELL, v147);
    *&v112[v135] = v439[0];
    swift_endAccess();
    sub_232B2036C(v125 + v124, v144, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v144);
    if (v133)
    {
      v151 = v124;
      v154 = v377;
      sub_232CE9330();
      v152 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v150 = off_27DDC62F0;
      *(v154 + v152) = off_27DDC62F0;
      v153 = sub_232B20634();

      v133 = v153 == 1;
      v124 = v151;
      if (!v133)
      {
        sub_232B13790(v144, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v154 = v377;
      sub_232B1F7F0(v144, v377, v155);
    }

    sub_232B2093C();
    sub_232B13F74((v150 + 6), v440);
    sub_232B20688();
    if (v133)
    {
      v158 = v156;
    }

    else
    {
      v158 = v157;
    }

    sub_232B1F798(v154, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4(&v112[v135], v439);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v438[0] = v159;
    v160 = sub_232B20980();
    v161 = v438;
    sub_232B1F66C(v160, 0xE900000000000074, v158);
    *&v112[v135] = v438[0];
    swift_endAccess();
    v162 = v380;
    sub_232B2036C(v125 + v124, v380, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v162);
    if (v133)
    {
      v164 = v379;
      sub_232CE9330();
      v163 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v161 = off_27DDC62F0;
      *(v164 + v163) = off_27DDC62F0;
      sub_232B205CC(v162);
      if (v163 != 1)
      {
        sub_232B13790(v162, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v164 = v379;
      sub_232B1F7F0(v162, v379, v165);
    }

    sub_232B20960();
    sub_232B13F74((v161 + 8), v439);
    sub_232B20688();
    if (v133)
    {
      v168 = v166;
    }

    else
    {
      v168 = v167;
    }

    sub_232B20560();
    sub_232B1F798(v164, v169);
    sub_232B207D4(&v112[v135], v438);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v437[0] = v170;
    v171 = v437;
    sub_232B1F66C(0xD000000000000012, 0x8000000232D027C0, v168);
    *&v112[v135] = v437[0];
    swift_endAccess();
    v172 = v382;
    sub_232B2036C(v125 + v124, v382, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v172);
    if (v133)
    {
      v175 = v381;
      sub_232CE9330();
      v173 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v171 = off_27DDC62F0;
      *(v175 + v173) = off_27DDC62F0;
      v174 = sub_232B20634();

      if (v174 != 1)
      {
        sub_232B13790(v172, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v175 = v381;
      sub_232B1F7F0(v172, v381, v176);
    }

    sub_232B2093C();
    sub_232B13F74((v171 + 10), v438);
    sub_232B20688();
    if (v133)
    {
      v179 = v177;
    }

    else
    {
      v179 = v178;
    }

    sub_232B20560();
    sub_232B1F798(v175, v180);
    sub_232B207D4(&v112[v135], v437);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v436[0] = v181;
    sub_232B206F8();
    v183 = v436;
    sub_232B1F66C(v182 - 6, 0x8000000232D027E0, v179);
    *&v112[v135] = v436[0];
    swift_endAccess();
    v184 = v384;
    sub_232B2036C(v125 + v124, v384, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v184);
    if (v133)
    {
      v186 = v383;
      sub_232CE9330();
      v185 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v183 = off_27DDC62F0;
      *(v186 + v185) = off_27DDC62F0;
      sub_232B205CC(v184);
      v133 = v185 == 1;
      v188 = v385;
      if (!v133)
      {
        sub_232B13790(v184, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v186 = v383;
      sub_232B1F7F0(v184, v383, v187);
      v188 = v385;
    }

    sub_232B20954();
    sub_232B13F74((v183 + 12), v437);
    sub_232B20688();
    if (v133)
    {
      v191 = v189;
    }

    else
    {
      v191 = v190;
    }

    sub_232B1F798(v186, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4(&v112[v135], v436);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v435[0] = v192;
    v193 = sub_232B20838();
    v194 = v435;
    sub_232B1F66C(v193, v195, v191);
    *&v112[v135] = v435[0];
    swift_endAccess();
    v196 = v386;
    sub_232B2036C(v125 + v124, v386, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v196);
    if (v133)
    {
      sub_232CE9330();
      v197 = v188;
      v198 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v194 = off_27DDC62F0;
      *(v197 + v198) = off_27DDC62F0;
      sub_232B205CC(v196);
      v133 = v198 == 1;
      v188 = v197;
      if (!v133)
      {
        sub_232B13790(v196, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      sub_232B1F7F0(v196, v188, v199);
    }

    sub_232B2093C();
    sub_232B13F74((v194 + 14), v436);
    sub_232B20688();
    if (v133)
    {
      v202 = v200;
    }

    else
    {
      v202 = v201;
    }

    sub_232B1F798(v188, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4(&v112[v135], v435);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v434[0] = v203;
    v204 = sub_232B207EC();
    v205 = v434;
    sub_232B1F66C(v204, v206, v202);
    *&v112[v135] = v434[0];
    swift_endAccess();
    v207 = v388;
    sub_232B2036C(v125 + v124, v388, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v207);
    if (v133)
    {
      v209 = v387;
      sub_232CE9330();
      v208 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v205 = off_27DDC62F0;
      *(v209 + v208) = off_27DDC62F0;
      sub_232B205CC(v207);
      if (v208 != 1)
      {
        sub_232B13790(v207, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v209 = v387;
      sub_232B1F7F0(v207, v387, v210);
    }

    sub_232B20954();
    sub_232B13F74((v205 + 16), v435);
    sub_232B20688();
    if (v133)
    {
      v213 = v211;
    }

    else
    {
      v213 = v212;
    }

    sub_232B20560();
    sub_232B1F798(v209, v214);
    sub_232B207D4(&v112[v135], v434);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v433[0] = v215;
    sub_232B206F8();
    v217 = v433;
    sub_232B1F66C(v216 - 8, 0x8000000232D02800, v213);
    *&v112[v135] = v433[0];
    swift_endAccess();
    v218 = v390;
    sub_232B2036C(v125 + v124, v390, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v218);
    if (v133)
    {
      v220 = v389;
      sub_232CE9330();
      v219 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v217 = off_27DDC62F0;
      *(v220 + v219) = off_27DDC62F0;
      sub_232B205CC(v218);
      if (v219 != 1)
      {
        sub_232B13790(v218, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v220 = v389;
      sub_232B1F7F0(v218, v389, v221);
    }

    sub_232B20954();
    sub_232B13F74((v217 + 18), v434);
    sub_232B20688();
    if (v133)
    {
      v224 = v222;
    }

    else
    {
      v224 = v223;
    }

    sub_232B1F798(v220, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4(&v112[v135], v433);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v432[0] = v225;
    v226 = sub_232B20728();
    v227 = v432;
    sub_232B1F66C(v226 & 0xFFFFFFFFFFFFLL | 0x6E20000000000000, 0xEC00000073656D61, v224);
    *&v112[v135] = v432[0];
    swift_endAccess();
    v228 = v392;
    sub_232B2036C(v125 + v124, v392, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v228);
    if (v133)
    {
      v231 = v391;
      sub_232CE9330();
      v229 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v227 = off_27DDC62F0;
      *(v231 + v229) = off_27DDC62F0;
      v230 = sub_232B12480(v228, 1, v122);

      v133 = v230 == 1;
      v125 = v418;
      if (!v133)
      {
        sub_232B13790(v228, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v231 = v391;
      sub_232B1F7F0(v228, v391, v232);
    }

    sub_232B20960();
    sub_232B13F74((v227 + 20), v433);
    sub_232B20688();
    if (v133)
    {
      v235 = v233;
    }

    else
    {
      v235 = v234;
    }

    sub_232B1F798(v231, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4(&v112[v135], v432);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v431[0] = v236;
    v237 = sub_232B20728();
    v238 = v431;
    sub_232B1F66C(v237 & 0xFFFFFFFFFFFFLL | 0x6620000000000000, 0xEC00000073656361, v235);
    *&v112[v135] = v431[0];
    swift_endAccess();
    v239 = v394;
    sub_232B2036C(v125 + v124, v394, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v239);
    if (v133)
    {
      v242 = v393;
      sub_232CE9330();
      v240 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v238 = off_27DDC62F0;
      *(v242 + v240) = off_27DDC62F0;
      v241 = sub_232B20634();

      if (v241 != 1)
      {
        sub_232B13790(v239, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v242 = v393;
      sub_232B1F7F0(v239, v393, v243);
    }

    sub_232B2093C();
    sub_232B13F74((v238 + 37), v432);
    sub_232B20688();
    if (v133)
    {
      v246 = v244;
    }

    else
    {
      v246 = v245;
    }

    sub_232B1F798(v242, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4(&v112[v135], v431);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v430[0] = v247;
    v248 = sub_232B20768();
    v249 = v430;
    sub_232B1F66C(v248, v250, v246);
    *&v112[v135] = v430[0];
    swift_endAccess();
    v251 = v396;
    sub_232B2036C(v125 + v124, v396, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v251);
    if (v133)
    {
      v253 = v395;
      sub_232CE9330();
      v252 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v249 = off_27DDC62F0;
      *(v253 + v252) = off_27DDC62F0;
      sub_232B205CC(v251);
      v133 = v252 == 1;
      v255 = v397;
      if (!v133)
      {
        sub_232B13790(v251, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v253 = v395;
      sub_232B1F7F0(v251, v395, v254);
      v255 = v397;
    }

    sub_232B20954();
    sub_232B13F74((v249 + 35), v431);
    sub_232B20688();
    if (v133)
    {
      v258 = v256;
    }

    else
    {
      v258 = v257;
    }

    sub_232B20560();
    sub_232B1F798(v253, v259);
    sub_232B207D4(&v112[v135], v430);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v429[0] = v260;
    sub_232B206F8();
    v262 = v429;
    sub_232B1F66C(v261 - 9, 0x8000000232D02820, v258);
    *&v112[v135] = v429[0];
    swift_endAccess();
    v263 = v398;
    sub_232B2036C(v125 + v124, v398, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v263);
    if (v133)
    {
      sub_232CE9330();
      v264 = v255;
      v265 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v262 = off_27DDC62F0;
      *(v264 + v265) = off_27DDC62F0;
      sub_232B205CC(v263);
      v133 = v265 == 1;
      v255 = v264;
      if (!v133)
      {
        sub_232B13790(v263, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      sub_232B1F7F0(v263, v255, v266);
    }

    sub_232B2093C();
    sub_232B13F74((v262 + 27), v430);
    sub_232B20688();
    if (v133)
    {
      v269 = v267;
    }

    else
    {
      v269 = v268;
    }

    sub_232B1F798(v255, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4(&v112[v135], v429);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v428[0] = v270;
    v271 = sub_232B20818();
    sub_232B1F66C(v271, v272, v269);
    *&v112[v135] = v428[0];
    swift_endAccess();
    v273 = v414;
    sub_232B2036C(v125 + v124, v414, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v273);
    v274 = v399;
    if (v133)
    {
      sub_232CE9330();
      v275 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v273 = off_27DDC62F0;
      *(v274 + v275) = off_27DDC62F0;
      v276 = v414;
      sub_232B205CC(v414);
      if (v275 != 1)
      {
        sub_232B13790(v276, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      sub_232B1F7F0(v273, v274, v277);
    }

    sub_232B20960();
    sub_232B13F74(v273 + 232, v429);
    sub_232B20688();
    if (v133)
    {
      v280 = v278;
    }

    else
    {
      v280 = v279;
    }

    sub_232B1F798(v274, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4(&v112[v135], v428);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v427[0] = v281;
    v282 = sub_232B209D4();
    sub_232B1F66C(v282, 0xEA00000000007367, v280);
    *&v112[v135] = v427[0];
    v283 = swift_endAccess();
    MEMORY[0x28223BE20](v283);
    *(&v371 - 2) = v125;
    *(&v371 - 1) = v112;
    sub_232B1D200(sub_232B1F77C, (&v371 - 4), 1, 11);
    v284 = v125 + v124;
    v285 = v401;
    sub_232B2036C(v284, v401, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v285);
    if (v133)
    {
      v287 = v400;
      sub_232CE9330();
      v286 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      *(v287 + v286) = off_27DDC62F0;
      sub_232B205CC(v285);
      if (v286 != 1)
      {
        sub_232B13790(v285, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v287 = v400;
      sub_232B1F7F0(v285, v400, v288);
    }

    v289 = *(v287 + *(v122 + 20));
    sub_232B13F74(v289 + 248, v428);
    v290 = *(v289 + 248);

    sub_232B20560();
    sub_232B1F798(v287, v291);
    v292 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap;
    sub_232B207D4(&v112[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap], v427);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v426[0] = v293;
    sub_232B206F8();
    v295 = v426;
    sub_232B1F574(v290, v294 + 4, 0x8000000232D02840);
    *&v112[v292] = v426[0];
    swift_endAccess();
    v296 = sub_232B208E0();
    v297 = v403;
    sub_232B2036C(v296, v403, v298, v299);
    sub_232B20598(v297);
    if (v133)
    {
      v300 = v402;
      sub_232CE9330();
      v290 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v295 = off_27DDC62F0;
      *(v300 + v290) = off_27DDC62F0;
      sub_232B205CC(v297);
      if (v290 != 1)
      {
        sub_232B13790(v297, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v300 = v402;
      sub_232B1F7F0(v297, v402, v301);
    }

    sub_232B2065C();
    sub_232B13F74(v290 + 256, v427);
    v302 = *(v290 + 256);

    sub_232B20560();
    sub_232B1F798(v300, v303);
    sub_232B207D4(&v112[v292], v426);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v425[0] = v304;
    sub_232B206F8();
    sub_232B1F574(v302, v305 + 4, v295 | 0x8000000000000000);
    *&v112[v292] = v425[0];
    swift_endAccess();
    v306 = sub_232B208E0();
    v307 = v415;
    sub_232B2036C(v306, v415, v308, v309);
    sub_232B20598(v307);
    if (v133)
    {
      v311 = v404;
      sub_232CE9330();
      v302 = *(v122 + 20);
      v313 = v406;
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v307 = off_27DDC62F0;
      *(v311 + v302) = off_27DDC62F0;
      v310 = v415;
      sub_232B205CC(v415);
      if (v302 != 1)
      {
        sub_232B13790(v310, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v311 = v404;
      sub_232B1F7F0(v307, v404, v312);
      v313 = v406;
    }

    sub_232B2065C();
    sub_232B13F74(v302 + 264, v426);
    v314 = *(v302 + 264);

    sub_232B20560();
    sub_232B1F798(v311, v315);
    sub_232B207D4(&v112[v292], v425);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v424[0] = v316;
    sub_232B206F8();
    v318 = v307 | 0x8000000000000000;
    v319 = v424;
    sub_232B1F574(v314, v317 + 3, v318);
    *&v112[v292] = v424[0];
    swift_endAccess();
    v320 = sub_232B208E0();
    sub_232B2036C(v320, v313, v321, v322);
    sub_232B20598(v313);
    if (v133)
    {
      v323 = v405;
      sub_232CE9330();
      v314 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v319 = off_27DDC62F0;
      *(v323 + v314) = off_27DDC62F0;
      sub_232B205CC(v313);
      if (v314 != 1)
      {
        sub_232B13790(v313, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v323 = v405;
      sub_232B1F7F0(v313, v405, v324);
    }

    sub_232B2065C();
    sub_232B13F74(v314 + 272, v425);
    v325 = *(v314 + 272);

    sub_232B20560();
    sub_232B1F798(v323, v326);
    sub_232B207D4(&v112[v292], v424);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v423[0] = v327;
    sub_232B206F8();
    sub_232B1F574(v325, v328 - 2, v319 | 0x8000000000000000);
    *&v112[v292] = v423[0];
    swift_endAccess();
    v329 = sub_232B208E0();
    v330 = v416;
    sub_232B2036C(v329, v416, v331, v332);
    sub_232B20598(v330);
    if (v133)
    {
      v334 = v407;
      sub_232CE9330();
      v325 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v330 = off_27DDC62F0;
      *(v334 + v325) = off_27DDC62F0;
      v333 = v416;
      sub_232B205CC(v416);
      if (v325 != 1)
      {
        sub_232B13790(v333, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v334 = v407;
      sub_232B1F7F0(v330, v407, v335);
    }

    sub_232B2065C();
    sub_232B13F74(v325 + 320, v424);
    v336 = *(v325 + 320);

    sub_232B20560();
    sub_232B1F798(v334, v337);
    sub_232B207D4(&v112[v292], v423);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v422[0] = v338;
    v339 = v330 | 0x8000000000000000;
    v340 = v422;
    sub_232B1F574(v336, 0xD000000000000019, v339);
    *&v112[v292] = v422[0];
    swift_endAccess();
    v341 = sub_232B208E0();
    v342 = v409;
    sub_232B2036C(v341, v409, v343, v344);
    sub_232B20598(v342);
    if (v133)
    {
      v345 = v408;
      sub_232CE9330();
      v336 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v340 = off_27DDC62F0;
      *(v345 + v336) = off_27DDC62F0;
      sub_232B205CC(v342);
      if (v336 != 1)
      {
        sub_232B13790(v342, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v345 = v408;
      sub_232B1F7F0(v342, v408, v346);
    }

    sub_232B2065C();
    sub_232B13F74(v336 + 328, v423);
    v347 = *(v336 + 328);

    sub_232B20560();
    sub_232B1F798(v345, v348);
    sub_232B207D4(&v112[v292], v422);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v421[0] = v349;
    sub_232B206F8();
    sub_232B1F574(v347, v350 - 5, v340 | 0x8000000000000000);
    *&v112[v292] = v421[0];
    swift_endAccess();
    v351 = v417;
    sub_232B2036C(v418 + v124, v417, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v351);
    if (v133)
    {
      v353 = v410;
      sub_232CE9330();
      v347 = *(v122 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      v351 = off_27DDC62F0;
      *(v353 + v347) = off_27DDC62F0;
      v352 = v417;
      sub_232B205CC(v417);
      if (v347 != 1)
      {
        sub_232B13790(v352, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v353 = v410;
      sub_232B1F7F0(v351, v410, v354);
    }

    sub_232B2065C();
    sub_232B13F74(v347 + 344, v422);
    v355 = *(v347 + 344);

    sub_232B20560();
    sub_232B1F798(v353, v356);
    sub_232B207D4(&v112[v292], v421);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v420[0] = v357;
    sub_232B1F574(v355, 0xD000000000000019, v351 | 0x8000000000000000);
    *&v112[v292] = v420[0];
    swift_endAccess();
    v358 = sub_232B208E0();
    v359 = v412;
    sub_232B2036C(v358, v412, v360, v361);
    sub_232B20598(v359);
    if (v133)
    {
      v363 = v411;
      sub_232CE9330();
      v362 = *(v122 + 20);
      v365 = v371;
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578(&qword_27DDC62E8);
      }

      *(v363 + v362) = off_27DDC62F0;
      sub_232B205CC(v359);
      if (v362 != 1)
      {
        sub_232B13790(v359, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v363 = v411;
      sub_232B1F7F0(v359, v411, v364);
      v365 = v371;
    }

    v366 = *(v363 + *(v122 + 20));
    sub_232B13F74(v366 + 336, v421);
    v367 = *(v366 + 336);

    sub_232B20560();
    sub_232B1F798(v363, v368);
    sub_232B207D4(&v112[v292], v420);
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v419 = v369;
    sub_232B206F8();
    sub_232B1F574(v367, v370 + 3, 0x8000000232D02920);
    *&v112[v292] = v419;
    swift_endAccess();
    (*(v365 + 8))(v372, v373);
    sub_232B1F798(v418, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  }

  else
  {
    (*(v102 + 8))(v9, v7);

    sub_232B12504(v101, 1, 1, v107);
    sub_232B13790(v101, &qword_27DDC66E8, &qword_232CF5D38);
  }

  sub_232B208EC();
}

uint64_t sub_232B1B934(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  MEMORY[0x28223BE20](v6 - 8);
  v147 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v162 = &v140 - v9;
  MEMORY[0x28223BE20](v10);
  v142 = &v140 - v11;
  MEMORY[0x28223BE20](v12);
  v152 = &v140 - v13;
  MEMORY[0x28223BE20](v14);
  v155 = &v140 - v15;
  MEMORY[0x28223BE20](v16);
  v154 = &v140 - v17;
  MEMORY[0x28223BE20](v18);
  v145 = &v140 - v19;
  MEMORY[0x28223BE20](v20);
  v156 = &v140 - v21;
  MEMORY[0x28223BE20](v22);
  v148 = &v140 - v23;
  MEMORY[0x28223BE20](v24);
  v160 = &v140 - v25;
  MEMORY[0x28223BE20](v26);
  v149 = &v140 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v140 - v29;
  v31 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  MEMORY[0x28223BE20](v31);
  v140 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v150 = &v140 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v140 - v36;
  MEMORY[0x28223BE20](v37);
  v151 = &v140 - v38;
  MEMORY[0x28223BE20](v39);
  v143 = &v140 - v40;
  MEMORY[0x28223BE20](v41);
  v153 = &v140 - v42;
  MEMORY[0x28223BE20](v43);
  v144 = &v140 - v44;
  MEMORY[0x28223BE20](v45);
  v157 = &v140 - v46;
  MEMORY[0x28223BE20](v47);
  v146 = &v140 - v48;
  MEMORY[0x28223BE20](v49);
  v161 = &v140 - v50;
  MEMORY[0x28223BE20](v51);
  v53 = &v140 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v140 - v55;
  v165 = *a1;
  v182 = v165;
  v57 = sub_232CEA720();
  v59 = v58;
  v182 = 0x746E635F65636166;
  v183 = 0xE90000000000005FLL;
  MEMORY[0x238391C30](v57);

  v158 = v182;
  v159 = v183;
  v60 = *(type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0) + 20);
  v163 = a2;
  v164 = v60;
  sub_232B2036C(a2 + v60, v30, &qword_27DDC64B0, &qword_232CF5D30);
  v61 = 0x27DDC6000uLL;
  if (sub_232B12480(v30, 1, v31) == 1)
  {
    sub_232CE9330();
    v59 = *(v31 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v56[v59] = off_27DDC62F0;
    v62 = sub_232B12480(v30, 1, v31);

    if (v62 != 1)
    {
      sub_232B13790(v30, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v30, v56, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v63 = *&v56[*(v31 + 20)];
  swift_beginAccess();
  v64 = *(v63 + 176);

  sub_232B1F798(v56, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v65 = *(v64 + 16);

  v66 = 0.0;
  v67 = v165;
  if (v65 < v165)
  {
    goto LABEL_17;
  }

  v68 = v149;
  sub_232B2036C(v163 + v164, v149, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v68, 1, v31) != 1)
  {
    sub_232B1F7F0(v68, v53, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    goto LABEL_13;
  }

  sub_232CE9330();
  v69 = *(v31 + 20);
  if (qword_27DDC62E8 != -1)
  {
    goto LABEL_105;
  }

  while (1)
  {
    *&v53[v69] = off_27DDC62F0;
    v65 = v149;
    v70 = sub_232B12480(v149, 1, v31);

    if (v70 != 1)
    {
      sub_232B13790(v65, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_13:
    v71 = *&v53[*(v31 + 20)];
    swift_beginAccess();
    v72 = *(v71 + 176);

    sub_232B1F798(v53, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v73 = v67 - 1;
    if (__OFSUB__(v67, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      swift_once();
      goto LABEL_19;
    }

    if ((v73 & 0x8000000000000000) != 0)
    {
      goto LABEL_92;
    }

    if (v73 >= *(v72 + 16))
    {
      goto LABEL_95;
    }

    v66 = *(v72 + 8 * v73 + 32);

LABEL_17:
    v59 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v179[0] = *(a3 + v59);
    sub_232B1F66C(v158, v159, v66);
    *(a3 + v59) = v179[0];

    swift_endAccess();
    v180 = v67;
    v74 = sub_232CEA720();
    v180 = 0xD00000000000001ALL;
    v181 = 0x8000000232D029C0;
    MEMORY[0x238391C30](v74);

    v158 = v180;
    v159 = v181;
    v65 = v160;
    sub_232B2036C(v163 + v164, v160, &qword_27DDC64B0, &qword_232CF5D30);
    if (sub_232B12480(v65, 1, v31) != 1)
    {
      v53 = v161;
      sub_232B1F7F0(v65, v161, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      goto LABEL_22;
    }

    v53 = v161;
    sub_232CE9330();
    v67 = *(v31 + 20);
    if (qword_27DDC62E8 != -1)
    {
      goto LABEL_93;
    }

LABEL_19:
    *&v53[v67] = off_27DDC62F0;
    v75 = sub_232B12480(v65, 1, v31);

    if (v75 != 1)
    {
      sub_232B13790(v65, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_22:
    v76 = *&v53[*(v31 + 20)];
    swift_beginAccess();
    v77 = *(v76 + 184);

    sub_232B1F798(v53, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v78 = *(v77 + 16);

    v79 = 0.0;
    v80 = v78 < v165;
    v67 = v165;
    v81 = v163;
    if (!v80)
    {
      v61 = v163;
      v82 = v148;
      sub_232B2036C(v163 + v164, v148, &qword_27DDC64B0, &qword_232CF5D30);
      if (sub_232B12480(v82, 1, v31) == 1)
      {
        v65 = v146;
        sub_232CE9330();
        v83 = *(v31 + 20);
        if (qword_27DDC62E8 != -1)
        {
          swift_once();
        }

        *(v65 + v83) = off_27DDC62F0;
        v53 = v148;
        v84 = sub_232B12480(v148, 1, v31);

        v67 = v165;
        if (v84 != 1)
        {
          sub_232B13790(v53, &qword_27DDC64B0, &qword_232CF5D30);
        }
      }

      else
      {
        v65 = v146;
        sub_232B1F7F0(v82, v146, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      }

      v85 = *(v65 + *(v31 + 20));
      swift_beginAccess();
      v86 = *(v85 + 184);

      sub_232B1F798(v65, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      v87 = v67 - 1;
      if (v67 < 1)
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        swift_once();
        goto LABEL_34;
      }

      if (v87 >= *(v86 + 16))
      {
        goto LABEL_98;
      }

      v79 = *(v86 + 8 * v87 + 32);

      v81 = v61;
    }

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v176[0] = *(a3 + v59);
    sub_232B1F66C(v158, v159, v79);
    *(a3 + v59) = v176[0];

    swift_endAccess();
    v177 = v67;
    v88 = sub_232CEA720();
    v177 = 0xD00000000000001CLL;
    v178 = 0x8000000232D029E0;
    MEMORY[0x238391C30](v88);

    v65 = v178;
    v161 = v177;
    v67 = v156;
    sub_232B2036C(v81 + v164, v156, &qword_27DDC64B0, &qword_232CF5D30);
    if (sub_232B12480(v67, 1, v31) != 1)
    {
      v53 = v157;
      sub_232B1F7F0(v67, v157, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      goto LABEL_37;
    }

    v61 = a3;
    a3 = v65;
    v53 = v157;
    sub_232CE9330();
    v65 = *(v31 + 20);
    if (qword_27DDC62E8 != -1)
    {
      goto LABEL_96;
    }

LABEL_34:
    *&v53[v65] = off_27DDC62F0;
    v89 = sub_232B12480(v67, 1, v31);

    v65 = a3;
    a3 = v61;
    if (v89 != 1)
    {
      sub_232B13790(v67, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_37:
    v90 = *&v53[*(v31 + 20)];
    swift_beginAccess();
    v91 = *(v90 + 192);

    sub_232B1F798(v53, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v92 = *(v91 + 16);

    v93 = 0.0;
    v94 = v165;
    if (v92 >= v165)
    {
      v95 = v145;
      sub_232B2036C(v163 + v164, v145, &qword_27DDC64B0, &qword_232CF5D30);
      if (sub_232B12480(v95, 1, v31) == 1)
      {
        v53 = v144;
        sub_232CE9330();
        v67 = *(v31 + 20);
        if (qword_27DDC62E8 != -1)
        {
          swift_once();
        }

        *&v53[v67] = off_27DDC62F0;
        v96 = sub_232B12480(v95, 1, v31);

        if (v96 != 1)
        {
          sub_232B13790(v95, &qword_27DDC64B0, &qword_232CF5D30);
        }
      }

      else
      {
        v53 = v144;
        sub_232B1F7F0(v95, v144, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      }

      v97 = *&v53[*(v31 + 20)];
      swift_beginAccess();
      v98 = *(v97 + 192);

      sub_232B1F798(v53, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      if (v165 - 1 >= *(v98 + 16))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        swift_once();
        goto LABEL_48;
      }

      v93 = *(v98 + 8 * (v165 - 1) + 32);

      v94 = v165;
    }

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v173[0] = *(a3 + v59);
    sub_232B1F66C(v161, v65, v93);
    *(a3 + v59) = v173[0];

    swift_endAccess();
    v174 = v94;
    v99 = sub_232CEA720();
    v174 = 0xD00000000000001ALL;
    v175 = 0x8000000232D02A00;
    MEMORY[0x238391C30](v99);

    v69 = v175;
    v161 = v174;
    v53 = v154;
    sub_232B2036C(v163 + v164, v154, &qword_27DDC64B0, &qword_232CF5D30);
    if (sub_232B12480(v53, 1, v31) != 1)
    {
      v67 = v153;
      sub_232B1F7F0(v53, v153, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      v101 = v155;
      goto LABEL_51;
    }

    v160 = v59;
    v59 = a3;
    a3 = v69;
    v67 = v153;
    sub_232CE9330();
    v65 = *(v31 + 20);
    if (qword_27DDC62E8 != -1)
    {
      goto LABEL_99;
    }

LABEL_48:
    *(v67 + v65) = off_27DDC62F0;
    v100 = sub_232B12480(v53, 1, v31);

    v101 = v155;
    v69 = a3;
    a3 = v59;
    v59 = v160;
    if (v100 != 1)
    {
      sub_232B13790(v53, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_51:
    v102 = *(v67 + *(v31 + 20));
    swift_beginAccess();
    v103 = *(v102 + 200);

    sub_232B1F798(v67, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v104 = *(v103 + 16);

    v105 = 0.0;
    v106 = v104 >= v165;
    v107 = v165;
    if (v106)
    {
      sub_232B2036C(v163 + v164, v101, &qword_27DDC64B0, &qword_232CF5D30);
      if (sub_232B12480(v101, 1, v31) == 1)
      {
        v108 = v143;
        sub_232CE9330();
        v109 = *(v31 + 20);
        if (qword_27DDC62E8 != -1)
        {
          swift_once();
        }

        *(v108 + v109) = off_27DDC62F0;
        v110 = sub_232B12480(v101, 1, v31);

        v107 = v165;
        if (v110 != 1)
        {
          sub_232B13790(v101, &qword_27DDC64B0, &qword_232CF5D30);
        }
      }

      else
      {
        v108 = v143;
        sub_232B1F7F0(v101, v143, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      }

      v111 = *(v108 + *(v31 + 20));
      swift_beginAccess();
      v112 = *(v111 + 200);

      sub_232B1F798(v108, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      if ((v107 - 1) >= *(v112 + 16))
      {
        __break(1u);
LABEL_101:
        swift_once();
        goto LABEL_63;
      }

      v105 = *(v112 + 8 * (v107 - 1) + 32);
    }

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v170[0] = *(a3 + v59);
    sub_232B1F66C(v161, v69, v105);
    *(a3 + v59) = v170[0];

    swift_endAccess();
    v171 = v107;
    v113 = sub_232CEA720();
    v171 = 0xD000000000000017;
    v172 = 0x8000000232D02A20;
    MEMORY[0x238391C30](v113);

    v114 = v171;
    v69 = v172;
    v108 = v152;
    sub_232B2036C(v163 + v164, v152, &qword_27DDC64B0, &qword_232CF5D30);
    v115 = sub_232B12480(v108, 1, v31);
    v161 = v114;
    if (v115 != 1)
    {
      v107 = v151;
      sub_232B1F7F0(v108, v151, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      goto LABEL_66;
    }

    v107 = v151;
    sub_232CE9330();
    v101 = *(v31 + 20);
    if (qword_27DDC62E8 != -1)
    {
      goto LABEL_101;
    }

LABEL_63:
    *(v107 + v101) = off_27DDC62F0;
    v116 = sub_232B12480(v108, 1, v31);

    if (v116 != 1)
    {
      sub_232B13790(v108, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_66:
    v117 = *(v107 + *(v31 + 20));
    swift_beginAccess();
    v118 = *(v117 + 312);

    sub_232B1F798(v107, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v119 = *(v118 + 16);

    v120 = 0.0;
    v121 = v165;
    v106 = v119 >= v165;
    v122 = v162;
    if (v106)
    {
      v123 = v142;
      sub_232B2036C(v163 + v164, v142, &qword_27DDC64B0, &qword_232CF5D30);
      if (sub_232B12480(v123, 1, v31) == 1)
      {
        v53 = v141;
        sub_232CE9330();
        v124 = *(v31 + 20);
        if (qword_27DDC62E8 != -1)
        {
          swift_once();
        }

        *&v53[v124] = off_27DDC62F0;
        v125 = sub_232B12480(v123, 1, v31);

        v122 = v162;
        if (v125 != 1)
        {
          sub_232B13790(v123, &qword_27DDC64B0, &qword_232CF5D30);
        }
      }

      else
      {
        v53 = v141;
        sub_232B1F7F0(v123, v141, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      }

      v126 = *&v53[*(v31 + 20)];
      swift_beginAccess();
      v127 = *(v126 + 312);

      sub_232B1F798(v53, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      if (v165 - 1 >= *(v127 + 16))
      {
        __break(1u);
LABEL_103:
        swift_once();
        goto LABEL_78;
      }

      v120 = *(v127 + 8 * (v165 - 1) + 32);

      v121 = v165;
    }

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v167[0] = *(a3 + v59);
    sub_232B1F66C(v161, v69, v120);
    *(a3 + v59) = v167[0];

    swift_endAccess();
    v168 = v121;
    v128 = sub_232CEA720();
    v168 = 0xD00000000000001BLL;
    v169 = 0x8000000232D02A40;
    MEMORY[0x238391C30](v128);

    v53 = v168;
    v69 = v169;
    sub_232B2036C(v163 + v164, v122, &qword_27DDC64B0, &qword_232CF5D30);
    if (sub_232B12480(v122, 1, v31) != 1)
    {
      v123 = v150;
      sub_232B1F7F0(v122, v150, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      goto LABEL_81;
    }

    v123 = v150;
    sub_232CE9330();
    v122 = *(v31 + 20);
    if (qword_27DDC62E8 != -1)
    {
      goto LABEL_103;
    }

LABEL_78:
    *(v123 + v122) = off_27DDC62F0;
    v129 = v162;
    v130 = sub_232B12480(v162, 1, v31);

    if (v130 != 1)
    {
      sub_232B13790(v129, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_81:
    v131 = *(v123 + *(v31 + 20));
    swift_beginAccess();
    v132 = *(v131 + 208);

    sub_232B1F798(v123, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v67 = *(v132 + 16);

    v133 = 0.0;
    if (v67 < v165)
    {
      goto LABEL_90;
    }

    v134 = v147;
    sub_232B2036C(v163 + v164, v147, &qword_27DDC64B0, &qword_232CF5D30);
    if (sub_232B12480(v134, 1, v31) == 1)
    {
      v61 = v140;
      sub_232CE9330();
      v135 = *(v31 + 20);
      if (qword_27DDC62E8 != -1)
      {
        swift_once();
      }

      *(v61 + v135) = off_27DDC62F0;
      v67 = v147;
      v136 = sub_232B12480(v147, 1, v31);

      if (v136 != 1)
      {
        sub_232B13790(v67, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      v61 = v140;
      sub_232B1F7F0(v134, v140, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    }

    v137 = *(v61 + *(v31 + 20));
    swift_beginAccess();
    v138 = *(v137 + 208);

    sub_232B1F798(v61, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    if (v165 - 1 < *(v138 + 16))
    {
      break;
    }

    __break(1u);
LABEL_105:
    swift_once();
  }

  v133 = *(v138 + 8 * (v165 - 1) + 32);

LABEL_90:
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v166 = *(a3 + v59);
  sub_232B1F66C(v53, v69, v133);
  *(a3 + v59) = v166;

  return swift_endAccess();
}