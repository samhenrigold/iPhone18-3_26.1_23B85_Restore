uint64_t sub_22E6CA7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UUID();
  sub_22E6CF9E8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for Asset(0);
    sub_22E6CF9E8();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = type metadata accessor for URL();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_22E6CF550(v9, a2, v8);
}

uint64_t sub_22E6CA890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for UUID();
  sub_22E6CF9E8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Asset(0);
    sub_22E6CF9E8();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = type metadata accessor for URL();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return sub_22E6CF58C(v11, a2, a2, v10);
}

uint64_t sub_22E6CA9B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22E6D162C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22E6CA9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22E6D3848();
  type metadata accessor for Asset.ID(v6);
  sub_22E6CF9E8();
  if (*(v7 + 84) == a2)
  {
    v8 = sub_22E6D3830();

    return sub_22E6CF550(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20) + 8) >> 60;
    if (((4 * v11) & 0xC) != 0)
    {
      return 16 - ((4 * v11) & 0xC | (v11 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

void sub_22E6CAAA4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_22E6D3778();
  type metadata accessor for Asset.ID(v8);
  sub_22E6CF9E8();
  if (*(v9 + 84) == a3)
  {
    v10 = sub_22E6D3860();

    sub_22E6CF58C(v10, v11, v12, v13);
  }

  else
  {
    v14 = (v4 + *(a4 + 20));
    *v14 = 0;
    v14[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }
}

uint64_t sub_22E6CAB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22E6D3848();
  type metadata accessor for URL();
  sub_22E6CF9E8();
  if (*(v6 + 84) == a2)
  {
    v7 = sub_22E6D3830();

    return sub_22E6CF550(v7, a2, v8);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_22E6CABEC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_22E6D3778();
  type metadata accessor for URL();
  sub_22E6CF9E8();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_22E6D3860();

    sub_22E6CF58C(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_22E6CACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22E6D3778();
  v7 = type metadata accessor for Asset(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    if (a2 == 12)
    {
      v10 = *(v3 + *(a3 + 20) + 8) >> 60;
      if (((4 * v10) & 0xC) != 0)
      {
        return 16 - ((4 * v10) & 0xC | (v10 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = type metadata accessor for Credential(0);
    v9 = v3 + *(a3 + 28);
  }

  return sub_22E6CF550(v9, a2, v8);
}

uint64_t sub_22E6CAD90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22E6D3778();
  result = type metadata accessor for Asset(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 12)
    {
      v12 = (v4 + *(a4 + 20));
      *v12 = 0;
      v12[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = type metadata accessor for Credential(0);
    v11 = v4 + *(a4 + 28);
  }

  return sub_22E6CF58C(v11, a2, a2, v10);
}

uint64_t sub_22E6CAE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22E6CF550(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v8) & 0xC) != 0)
    {
      return 16 - ((4 * v8) & 0xC | (v8 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22E6CAF4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22E6CF58C(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_22E6CB058(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22E6D3778();
  type metadata accessor for UUID();
  sub_22E6CF9E8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_13:

    return sub_22E6CF550(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for URL();
    sub_22E6CF9E8();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      type metadata accessor for Asset(0);
      sub_22E6CF9E8();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v14 = a3[7];
      }

      else
      {
        v8 = type metadata accessor for Credential(0);
        v14 = a3[10];
      }
    }

    v9 = v3 + v14;
    goto LABEL_13;
  }

  v10 = *(v3 + a3[5] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_22E6CB1A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22E6D3778();
  type metadata accessor for UUID();
  sub_22E6CF9E8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5] + 8) = (a2 - 1);
      return;
    }

    type metadata accessor for URL();
    sub_22E6CF9E8();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      type metadata accessor for Asset(0);
      sub_22E6CF9E8();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for Credential(0);
        v14 = a4[10];
      }
    }

    v11 = v4 + v14;
  }

  sub_22E6CF58C(v11, a2, a2, v10);
}

uint64_t sub_22E6CB38C()
{
  v1 = (type metadata accessor for AssetStreamHandle(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (*(*v1 + 64) + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for Asset(0);
  v5 = sub_22E6E3A38(v4);
  v7 = *(v6 + 80);
  v8 = (v3 + v7 + 16) & ~v7;
  v48 = v8;
  v10 = *(v9 + 64);
  v11 = v5;
  v46 = v5;
  v12 = type metadata accessor for Credential(0);
  v58 = sub_22E6E3A38(v12);
  v14 = *(v13 + 80);
  v53 = (v8 + v10 + v14) & ~v14;
  v16 = (*(v15 + 64) + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = type metadata accessor for UUID();
  sub_22E6CF988();
  v56 = v17;
  v18 = *(v17 + 80);
  v49 = (v16 + v18 + 16) & ~v18;
  v20 = *(v19 + 64);
  v55 = sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
  sub_22E6CF988();
  v22 = v21;
  v52 = v21;
  v24 = v23;
  v25 = *(v22 + 80);
  v50 = (v49 + v20 + v25) & ~v25;
  v54 = *(v24 + 64);
  v51 = v2 | v7 | v14 | v18 | v25;
  swift_unknownObjectRelease();
  v26 = v0 + ((v2 + 32) & ~v2);
  v27 = v0;
  v28 = type metadata accessor for URL();
  sub_22E6CF978();
  v47 = *(v29 + 8);
  v30 = sub_22E6E3F40();
  v31(v30);
  v32 = type metadata accessor for Asset.ID(0);

  v33 = sub_22E6E3DFC(*(v32 + 24));
  sub_22E6CFBBC(v33, v34);
  v35 = sub_22E6E3DFC(*(v32 + 28));
  sub_22E6CFBBC(v35, v36);
  v37 = v26 + *(v11 + 28);
  sub_22E6CFBBC(*v37, *(v37 + 8));
  sub_22E6CFBBC(*(v37 + 16), *(v37 + 24));
  v38 = v26 + v1[7];

  v39 = *(v58 + 36);
  v40 = type metadata accessor for Date();
  sub_22E6CF978();
  v42 = *(v41 + 8);
  v42(v38 + v39, v40);

  v43 = v27 + v48;
  v47(v27 + v48, v28);

  sub_22E6CFBBC(*(v43 + *(v32 + 24)), *(v43 + *(v32 + 24) + 8));
  sub_22E6CFBBC(*(v43 + *(v32 + 28)), *(v43 + *(v32 + 28) + 8));
  v44 = v27 + v48 + *(v46 + 28);
  sub_22E6CFBBC(*v44, *(v44 + 8));
  sub_22E6CFBBC(*(v44 + 16), *(v44 + 24));

  v42(v27 + v53 + *(v58 + 36), v40);

  (*(v56 + 8))(v27 + v49, v57);
  (*(v52 + 8))(v27 + v50, v55);

  return MEMORY[0x2821FE8E8](v27, v50 + v54, v51 | 7);
}

uint64_t sub_22E6CB80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22E6D3778();
  type metadata accessor for Asset(v6);
  sub_22E6CF9E8();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_5:

    return sub_22E6CF550(v10, a2, v9);
  }

  type metadata accessor for Credential(0);
  sub_22E6CF9E8();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v10 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(v3 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_22E6CB8F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22E6D3778();
  type metadata accessor for Asset(v8);
  sub_22E6CF9E8();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for Credential(0);
    sub_22E6CF9E8();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v11 = v13;
    v12 = v4 + *(a4 + 20);
  }

  sub_22E6CF58C(v12, a2, a2, v11);
}

uint64_t sub_22E6CBA08()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22E6CBA48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22E6CBA84()
{
  sub_22E6EB3EC();
  if (v2)
  {
    return sub_22E6EB36C(*v0);
  }

  sub_22E6EB45C();
  v4 = sub_22E6EB3FC(*(v1 + 20));

  return sub_22E6CF550(v4, v5, v6);
}

void sub_22E6CBAE8()
{
  sub_22E6EB358();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for UnknownStorage();
    v5 = sub_22E6EB3A4(*(v4 + 20));

    sub_22E6CF58C(v5, v6, v7, v8);
  }
}

uint64_t sub_22E6CBB54()
{
  sub_22E6EB450();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for UnknownStorage();

  return sub_22E6CF550(v1 + v3, v0, v4);
}

uint64_t sub_22E6CBBA4()
{
  sub_22E6EB450();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for UnknownStorage();

  return sub_22E6CF58C(v1 + v3, v0, v0, v4);
}

uint64_t sub_22E6CBBF8()
{
  sub_22E6EB3EC();
  if (v3)
  {
    return sub_22E6EB36C(*(v1 + 8));
  }

  sub_22E6EB45C();
  sub_22E6CF9E8();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 24);
  }

  else
  {
    sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
    sub_22E6CF9E8();
    if (*(v7 + 84) == v0)
    {
      sub_22E6EB52C();
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
      sub_22E6EB520();
    }
  }

  v8 = sub_22E6EB3FC(v6);

  return sub_22E6CF550(v8, v9, v10);
}

void sub_22E6CBCEC()
{
  sub_22E6EB358();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_22E6EB4C0();
    sub_22E6CF9E8();
    if (*(v5 + 84) == v3)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
      sub_22E6CF9E8();
      if (*(v7 + 84) == v3)
      {
        sub_22E6EB514();
      }

      else
      {
        sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
        sub_22E6EB508();
      }
    }

    v8 = sub_22E6EB3A4(v6);

    sub_22E6CF58C(v8, v9, v10, v11);
  }
}

uint64_t sub_22E6CBDE0()
{
  sub_22E6EB3EC();
  if (v2)
  {
    return sub_22E6EB36C(*(v1 + 8));
  }

  sub_22E6EB45C();
  sub_22E6CF9E8();
  if (*(v4 + 84) == v0)
  {
    sub_22E6EB52C();
  }

  else
  {
    sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
    sub_22E6EB520();
  }

  v6 = sub_22E6EB3FC(v5);

  return sub_22E6CF550(v6, v7, v8);
}

void sub_22E6CBE88()
{
  sub_22E6EB358();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_22E6EB4C0();
    sub_22E6CF9E8();
    if (*(v4 + 84) == v2)
    {
      sub_22E6EB514();
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
      sub_22E6EB508();
    }

    v6 = sub_22E6EB3A4(v5);

    sub_22E6CF58C(v6, v7, v8, v9);
  }
}

uint64_t sub_22E6CBF30()
{
  sub_22E6EB3EC();
  if (v2)
  {
    return sub_22E6EB36C(*v1);
  }

  sub_22E6EB45C();
  sub_22E6CF9E8();
  if (*(v4 + 84) == v0)
  {
    sub_22E6EB52C();
  }

  else
  {
    sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
    sub_22E6EB520();
  }

  v6 = sub_22E6EB3FC(v5);

  return sub_22E6CF550(v6, v7, v8);
}

void sub_22E6CBFD8()
{
  sub_22E6EB358();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_22E6EB4C0();
    sub_22E6CF9E8();
    if (*(v4 + 84) == v2)
    {
      sub_22E6EB514();
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
      sub_22E6EB508();
    }

    v6 = sub_22E6EB3A4(v5);

    sub_22E6CF58C(v6, v7, v8, v9);
  }
}

uint64_t sub_22E6CC080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22E6EB450();
  type metadata accessor for UnknownStorage();
  sub_22E6CF9E8();
  if (*(v5 + 84) == v3)
  {
    v6 = *(a3 + 20);
  }

  else
  {
    sub_22E6CF1CC(&qword_27DA6C738, &unk_22E727970);
    sub_22E6CF9E8();
    if (*(v7 + 84) == v3)
    {
      v6 = *(a3 + 24);
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6C740, &unk_22E726B00);
      sub_22E6EB52C();
    }
  }

  v8 = sub_22E6EB3FC(v6);

  return sub_22E6CF550(v8, v9, v10);
}

uint64_t sub_22E6CC164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22E6EB450();
  type metadata accessor for UnknownStorage();
  sub_22E6CF9E8();
  if (*(v6 + 84) == a3)
  {
    v7 = *(a4 + 20);
  }

  else
  {
    sub_22E6CF1CC(&qword_27DA6C738, &unk_22E727970);
    sub_22E6CF9E8();
    if (*(v8 + 84) == a3)
    {
      v7 = *(a4 + 24);
    }

    else
    {
      sub_22E6CF1CC(&qword_27DA6C740, &unk_22E726B00);
      sub_22E6EB514();
    }
  }

  v9 = sub_22E6EB3A4(v7);

  return sub_22E6CF58C(v9, v10, v11, v12);
}

uint64_t sub_22E6CC24C(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v3 = *(a1 + 8) >> 60;
    if (((4 * v3) & 0xC) != 0)
    {
      return 16 - ((4 * v3) & 0xC | (v3 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22E6EB45C();
    v5 = sub_22E6EB3FC(*(v2 + 24));

    return sub_22E6CF550(v5, v6, v7);
  }
}

void *sub_22E6CC2D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = v5 + *(a4 + 24);

    return sub_22E6CF58C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22E6CC358()
{
  sub_22E6EB3EC();
  if (v1)
  {
    return sub_22E6EB36C(*(v0 + 8));
  }

  sub_22E6EB45C();
  sub_22E6EB520();
  v4 = sub_22E6EB3FC(v3);

  return sub_22E6CF550(v4, v5, v6);
}

void sub_22E6CC3B8()
{
  sub_22E6EB358();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    type metadata accessor for UnknownStorage();
    sub_22E6EB508();
    v4 = sub_22E6EB3A4(v3);

    sub_22E6CF58C(v4, v5, v6, v7);
  }
}

uint64_t sub_22E6CC71C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22E6F12B8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22E6CC90C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22E6CC988()
{
  v31 = sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  sub_22E6CF988();
  v2 = v1;
  v3 = *(v1 + 80);
  v5 = *(v4 + 64);
  v30 = sub_22E6CF1CC(&qword_27DA6D180, &qword_22E729BB8);
  sub_22E6CF988();
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (((v3 + 32) & ~v3) + v5 + v8) & ~v8;
  v27 = v9;
  v11 = *(v10 + 64);
  v29 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  sub_22E6CF988();
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = (v9 + v11 + v14) & ~v14;
  v17 = *(v16 + 64);
  v28 = sub_22E6CF1CC(&qword_27DA6D1D0, &qword_22E729D10);
  sub_22E6CF988();
  v19 = v18;
  v21 = v20;
  v22 = *(v19 + 80);
  v23 = (v15 + v17 + v22) & ~v22;
  v24 = v3 | v8 | v14 | v22;
  v25 = (*(v21 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + ((v3 + 32) & ~v3), v31);
  (*(v7 + 8))(v0 + v27, v30);
  (*(v13 + 8))(v0 + v15, v29);
  (*(v19 + 8))(v0 + v23, v28);

  return MEMORY[0x2821FE8E8](v0, ((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v24 | 7);
}

uint64_t sub_22E6CCC04()
{
  sub_22E6CF1CC(&qword_27DA6D170, &qword_22E729B90);
  sub_22E6CF988();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_22E6CF1CC(&qword_27DA6D1F0, &qword_22E729D40);
  sub_22E6CF988();
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v11 = (v4 + v10 + 8) & ~v10;
  v16 = v2 | v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v13 = sub_22E709CE4();
  v14(v13);

  (*(v7 + 8))(v0 + v11, v5);

  return MEMORY[0x2821FE8E8](v0, ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v16 | 7);
}

uint64_t sub_22E6CCD8C()
{
  v3 = sub_22E6CF1CC(&qword_27DA6D240, &qword_22E729D90);
  sub_22E6CF988();
  v5 = v4;
  v6 = *(v4 + 80);
  sub_22E70A108();

  (*(v5 + 8))(v0 + ((v6 + 40) & ~v6), v3);
  j__swift_bridgeObjectRelease(*(v0 + v1));

  return MEMORY[0x2821FE8E8](v0, v2 + 8, v6 | 7);
}

uint64_t sub_22E6CCE94()
{
  sub_22E6EB570();
  sub_22E6CF1CC(&qword_27DA6D150, &qword_22E729B60);
  sub_22E6CF988();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_22E6CF1CC(&qword_27DA6D1B0, &qword_22E729CE0);
  sub_22E6CF988();
  v7 = v6;
  v8 = (((v2 + 32) & ~v2) + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  v9 = sub_22E709CE4();
  v10(v9);
  (*(v7 + 8))(v0 + v8, v5);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_22E6CCFD8()
{
  v2 = sub_22E6CF1CC(&qword_27DA6D288, &qword_22E729DE8);
  sub_22E6CF988();
  v4 = v3;
  v5 = *(v3 + 80);
  sub_22E70A108();

  (*(v4 + 8))(v0 + ((v5 + 40) & ~v5), v2);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v5 | 7);
}

uint64_t sub_22E6CD0E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22E6F5D0C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22E6CD268()
{
  sub_22E6EB570();
  v1 = *(v0 + 32);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  sub_22E715DC8();
  v2 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_22E6CF988();
  v4 = v3;
  v5 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v7 = *(v1 - 8);
  v8 = (v5 + *(v6 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v0 + v5, v2);
  (*(v7 + 8))(v0 + v8, v1);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_22E6CD3C8()
{
  sub_22E6EB570();
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  v2 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_22E6CF988();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = sub_22E715E08();
  sub_22E6CF988();
  v8 = v7;
  v9 = (v1 + *(v7 + 80) + 8) & ~*(v7 + 80);
  (*(v4 + 8))(v0 + v5, v2);

  (*(v8 + 8))(v0 + v9, v6);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_22E6CD514()
{
  sub_22E6EB570();
  v1 = *(v0 + 32);
  sub_22E6F797C();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  sub_22E715DC8();
  v7 = type metadata accessor for CheckedContinuation();
  sub_22E6CF988();
  v9 = v8;
  v10 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_22E6EB538();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_22E6CD66C()
{
  sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
  type metadata accessor for CheckedContinuation();
  sub_22E6CF978();
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  sub_22E6CF2F4((v0 + v4));

  return MEMORY[0x2821FE8E8](v0, ((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22E6CD730()
{
  v1 = (type metadata accessor for XPCAsyncSequenceResponse(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  type metadata accessor for UUID();
  sub_22E6CF978();
  (*(v5 + 8))(v0 + v3);
  v6 = (v0 + v3 + v1[7]);
  v7 = v6[1];
  if (((v7 >> 60) | 4) != 0xF)
  {
    sub_22E6CFBBC(*v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22E6CD8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22E6CF550(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8) >> 60;
    v9 = (4 * v8) & 0xC | (v8 >> 2);
    v10 = __OFSUB__(13, v9);
    v11 = 13 - v9;
    if (v11 < 0 != v10)
    {
      v11 = -1;
    }

    if (((4 * v8) & 0xC) != 0)
    {
      return (v11 + 1);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22E6CD978(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22E6CF58C(a1, a2, a2, result);
  }

  else
  {
    v9 = (a1 + *(a4 + 20));
    *v9 = 0;
    v9[1] = (((14 - a2) >> 2) & 3 | (4 * (14 - a2))) << 60;
  }

  return result;
}

uint64_t sub_22E6CDAAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 28);

    return sub_22E6CF550(v9, a2, v8);
  }
}

uint64_t sub_22E6CDB34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 28);

    return sub_22E6CF58C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22E6CDBDC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22E6CDC50(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for UUID();
  sub_22E6CF9E8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return sub_22E6CF550(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for URL();
    sub_22E6CF9E8();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[6];
    }

    else
    {
      v8 = type metadata accessor for Credential(0);
      v14 = a3[10];
    }

    v9 = a1 + v14;
    goto LABEL_11;
  }

  v10 = *(a1 + a3[5] + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_22E6CDD60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for UUID();
  sub_22E6CF9E8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 8) = (a2 - 1);
      return;
    }

    type metadata accessor for URL();
    sub_22E6CF9E8();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[6];
    }

    else
    {
      v10 = type metadata accessor for Credential(0);
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  sub_22E6CF58C(v11, a2, a2, v10);
}

uint64_t sub_22E6CDE94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22E6CDFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6CDF9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6CE00C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22E6CE02C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27DA6C550)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DA6C550);
    }
  }
}

uint64_t AssetDownloadResponse.id.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UUID();
  sub_22E6CF978();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t type metadata accessor for AssetDownloadResponse(uint64_t a1)
{
  result = qword_27DA6C630;
  if (!qword_27DA6C630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetDownloadResponse.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetDownloadResponse(0) + 24);
  type metadata accessor for URL();
  sub_22E6CF978();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AssetDownloadResponse.init(id:asset:fileURL:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  type metadata accessor for UUID();
  sub_22E6CF978();
  (*(v14 + 32))(a7, a1);
  v15 = type metadata accessor for AssetDownloadResponse(0);
  sub_22E6CE328(a2, a7 + v15[5]);
  v16 = v15[6];
  type metadata accessor for URL();
  sub_22E6CF978();
  result = (*(v17 + 32))(a7 + v16, a3);
  v19 = a7 + v15[7];
  *v19 = a4;
  *(v19 + 8) = a5;
  *(v19 + 16) = a6 & 1;
  return result;
}

uint64_t sub_22E6CE328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Asset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static AssetDownloadResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetDownloadResponse(0);
  if (!static Asset.== infix(_:_:)(a1 + *(v4 + 20), a2 + *(v4 + 20)) || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 16);
  v8 = a2 + v5;
  if ((v7 & 1) == 0)
  {
    if (*(v8 + 16))
    {
      return 0;
    }

    return *v6 == *v8 && v6[1] == *(v8 + 8);
  }

  return (*(v8 + 16) & 1) != 0;
}

uint64_t sub_22E6CE438(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int sub_22E6CE5C0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](a1);
  return Hasher._finalize()();
}

uint64_t sub_22E6CE614(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7465737361;
      break;
    case 2:
      result = 0x4C5255656C6966;
      break;
    case 3:
      result = 0x65676E6172;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_22E6CE6A0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v2);
  return Hasher._finalize()();
}

uint64_t sub_22E6CE6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6CE438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6CE734@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6CE580();
  *a1 = result;
  return result;
}

uint64_t sub_22E6CE75C(uint64_t a1)
{
  v2 = sub_22E6CF258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6CE798(uint64_t a1)
{
  v2 = sub_22E6CF258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetDownloadResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22E6CF1CC(&qword_27DA6C5C0, &unk_22E726150);
  sub_22E6CF988();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6CF258();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  type metadata accessor for UUID();
  sub_22E6CF948();
  sub_22E6CF4F4(v11, v12, MEMORY[0x277CC95F8]);
  sub_22E6CF99C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for AssetDownloadResponse(0);
    LOBYTE(v22) = 1;
    type metadata accessor for Asset(0);
    sub_22E6CF9B0();
    sub_22E6CF4F4(v14, v15, &protocol conformance descriptor for Asset);
    sub_22E6CF99C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 2;
    type metadata accessor for URL();
    sub_22E6CF960();
    sub_22E6CF4F4(v16, v17, MEMORY[0x277CC9268]);
    sub_22E6CF99C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = (v3 + *(v13 + 28));
    v19 = *(v18 + 16);
    v22 = *v18;
    v23 = v19;
    v21[15] = 3;
    sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
    sub_22E6CF340(&qword_27DA6C5E8, MEMORY[0x277D83B90], MEMORY[0x277D83D08]);
    sub_22E6CF99C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void AssetDownloadResponse.hash(into:)(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_22E6CF948();
  sub_22E6CF4F4(v2, v3, MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for AssetDownloadResponse(0);
  Asset.hash(into:)();
  type metadata accessor for URL();
  sub_22E6CF960();
  sub_22E6CF4F4(v5, v6, MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  v7 = (v1 + *(v4 + 28));
  if (*(v7 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *v7;
    v8 = v7[1];
    Hasher._combine(_:)(1u);
    MEMORY[0x2318ECB90](v9);
    MEMORY[0x2318ECB90](v8);
  }
}

Swift::Int AssetDownloadResponse.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetDownloadResponse.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t AssetDownloadResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  type metadata accessor for URL();
  sub_22E6CF988();
  v48 = v4;
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22E6CF9C8();
  v45 = v6 - v5;
  v47 = type metadata accessor for Asset(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v7);
  sub_22E6CF9C8();
  v10 = v9 - v8;
  v11 = type metadata accessor for UUID();
  sub_22E6CF988();
  v46 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22E6CF9C8();
  v51 = v15 - v14;
  v53 = sub_22E6CF1CC(&qword_27DA6C600, &qword_22E726160);
  sub_22E6CF988();
  v50 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  v20 = type metadata accessor for AssetDownloadResponse(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v21);
  sub_22E6CF9C8();
  v24 = v23 - v22;
  sub_22E6CF214(a1, a1[3]);
  sub_22E6CF258();
  v52 = v19;
  v25 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return sub_22E6CF2F4(a1);
  }

  v26 = v10;
  v27 = v20;
  v54 = v24;
  v28 = v48;
  v29 = v49;
  LOBYTE(v55) = 0;
  sub_22E6CF948();
  sub_22E6CF4F4(v30, v31, MEMORY[0x277CC9618]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = *(v46 + 32);
  v33 = v51;
  v51 = v11;
  v32(v54, v33, v11);
  LOBYTE(v55) = 1;
  sub_22E6CF9B0();
  sub_22E6CF4F4(v34, v35, &protocol conformance descriptor for Asset);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_22E6CE328(v26, v54 + v27[5]);
  LOBYTE(v55) = 2;
  sub_22E6CF960();
  sub_22E6CF4F4(v36, v37, MEMORY[0x277CC9280]);
  v38 = v45;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 32))(v54 + v27[6], v38, v29);
  sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
  v57 = 3;
  sub_22E6CF340(&qword_27DA6C620, MEMORY[0x277D83BB8], MEMORY[0x277D83D38]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v50 + 8))(v52, v53);
  v39 = v56;
  v40 = v54;
  v41 = v54 + v27[7];
  *v41 = v55;
  *(v41 + 16) = v39;
  sub_22E6CF3AC(v40, v44, type metadata accessor for AssetDownloadResponse);
  sub_22E6CF2F4(a1);
  return sub_22E6CF40C(v40, type metadata accessor for AssetDownloadResponse);
}

Swift::Int sub_22E6CF15C(uint64_t a1)
{
  Hasher.init(_seed:)();
  AssetDownloadResponse.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_22E6CF1CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_22E6CF214(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22E6CF258()
{
  result = qword_27DA6C5C8;
  if (!qword_27DA6C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C5C8);
  }

  return result;
}

uint64_t sub_22E6CF2AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22E6CF2F4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_22E6CF340(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6C5E0, &unk_22E7273C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E6CF3AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_22E6CF978();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22E6CF40C(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_22E6CF978();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22E6CF4F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22E6CF5B4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Asset(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        sub_22E6CF668(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22E6CF668(uint64_t a1)
{
  if (!qword_27DA6C640)
  {
    sub_22E6CF2AC(&qword_27DA6C5E0, &unk_22E7273C0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA6C640);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetDownloadResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetDownloadResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22E6CF844()
{
  result = qword_27DA6C648;
  if (!qword_27DA6C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C648);
  }

  return result;
}

unint64_t sub_22E6CF89C()
{
  result = qword_27DA6C650;
  if (!qword_27DA6C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C650);
  }

  return result;
}

unint64_t sub_22E6CF8F4()
{
  result = qword_27DA6C658;
  if (!qword_27DA6C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C658);
  }

  return result;
}

uint64_t Asset.ID.Builder.__allocating_init(partition:ownerID:signature:)()
{
  sub_22E6D3758();
  v0 = swift_allocObject();
  Asset.ID.Builder.init(partition:ownerID:signature:)();
  return v0;
}

uint64_t Asset.ID.Builder.init(partition:ownerID:signature:)()
{
  sub_22E6D3758();
  v6 = v5;
  v7 = OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_partition;
  type metadata accessor for URL();
  sub_22E6CF978();
  (*(v8 + 32))(v1 + v7, v6);
  v9 = (v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_ownerID);
  *v9 = v4;
  v9[1] = v3;
  v10 = (v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_signature);
  *v10 = v2;
  v10[1] = v0;
  *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature) = xmmword_22E7263B0;
  return v1;
}

uint64_t Asset.ID.Builder.setReferenceSignature(_:)(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature);
  v4 = *(v2 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature);
  v5 = *(v2 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_22E6CFB64(a1, a2);
  sub_22E6CFBBC(v4, v5);
}

uint64_t sub_22E6CFB64(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_22E6CFBBC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t Asset.ID.Builder.build()@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_partition;
  type metadata accessor for URL();
  sub_22E6CF978();
  (*(v4 + 16))(a1, v1 + v3);
  v6 = *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_ownerID);
  v5 = *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_ownerID + 8);
  v7 = type metadata accessor for Asset.ID(0);
  v8 = (a1 + v7[5]);
  *v8 = v6;
  v8[1] = v5;
  v9 = *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_signature);
  v10 = *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_signature + 8);
  v11 = (a1 + v7[6]);
  *v11 = v9;
  v11[1] = v10;
  v12 = v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature;
  v13 = *(v1 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature);
  v14 = *(v12 + 8);
  v15 = (a1 + v7[7]);
  *v15 = v13;
  v15[1] = v14;

  sub_22E6CFB64(v9, v10);

  return sub_22E6CFB64(v13, v14);
}

uint64_t Asset.ID.Builder.deinit()
{
  v1 = OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_partition;
  type metadata accessor for URL();
  sub_22E6CF978();
  (*(v2 + 8))(v0 + v1);

  sub_22E6CFBBC(*(v0 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_signature), *(v0 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_signature + 8));
  sub_22E6CFBBC(*(v0 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature), *(v0 + OBJC_IVAR____TtCVV10CloudAsset5Asset2ID7Builder_referenceSignature + 8));
  return v0;
}

uint64_t Asset.ID.Builder.__deallocating_deinit()
{
  Asset.ID.Builder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22E6CFE3C(uint64_t a1)
{
  v2 = sub_22E6D06DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6CFE78(uint64_t a1)
{
  v2 = sub_22E6D06DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Asset.ID.partition.getter()
{
  type metadata accessor for URL();
  sub_22E6CF978();
  v0 = sub_22E6D368C();

  return v1(v0);
}

uint64_t Asset.ID.storageLocation.getter()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  sub_22E6CF988();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22E6CF9C8();
  sub_22E6D3894();
  type metadata accessor for Asset.ID(0);
  sub_22E6D3710();
  (*(v3 + 104))(v0, *MEMORY[0x277CC91D8], v1);
  sub_22E6D0038();

  URL.appending<A>(path:directoryHint:)();
  (*(v3 + 8))(v0, v1);
}

unint64_t sub_22E6D0038()
{
  result = qword_27DA6CA20;
  if (!qword_27DA6CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CA20);
  }

  return result;
}

uint64_t Asset.ID.ownerID.getter()
{
  type metadata accessor for Asset.ID(0);
  sub_22E6D3710();

  return sub_22E6D368C();
}

uint64_t Asset.ID.signature.getter()
{
  type metadata accessor for Asset.ID(0);
  v0 = sub_22E6D368C();
  sub_22E6CFB64(v0, v1);
  return sub_22E6D368C();
}

uint64_t Asset.ID.referenceSignature.getter()
{
  type metadata accessor for Asset.ID(0);
  v0 = sub_22E6D368C();
  sub_22E6CFB64(v0, v1);
  return sub_22E6D368C();
}

int *Asset.ID.init(storageLocation:signature:referenceSignature:)()
{
  sub_22E6D3758();
  v5 = v4;
  v7 = v6;
  URL.deletingLastPathComponent()();
  v8 = URL.lastPathComponent.getter();
  v10 = v9;
  type metadata accessor for URL();
  sub_22E6CF978();
  (*(v11 + 8))(v5);
  result = type metadata accessor for Asset.ID(0);
  v13 = (v7 + result[5]);
  *v13 = v8;
  v13[1] = v10;
  v14 = (v7 + result[6]);
  *v14 = v3;
  v14[1] = v2;
  v15 = (v7 + result[7]);
  *v15 = v1;
  v15[1] = v0;
  return result;
}

void Asset.ID.init(from:)(uint64_t a1)
{
  sub_22E6D37D4();
  v3 = v2;
  v64 = v4;
  v5 = sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  sub_22E6D376C(v5);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v6);
  v66 = &v57 - v7;
  sub_22E6D37B0();
  v65 = type metadata accessor for URL();
  sub_22E6CF988();
  v62 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22E6CF9C8();
  v61 = v11 - v10;
  v12 = sub_22E6D37B0();
  v63 = type metadata accessor for Asset.ID(v12);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v13);
  sub_22E6CF9C8();
  v60 = v15 - v14;
  sub_22E6D37B0();
  v16 = type metadata accessor for BinaryDecodingOptions();
  v17 = sub_22E6D376C(v16);
  MEMORY[0x28223BE20](v17);
  sub_22E6CF9C8();
  v68 = (v19 - v18);
  v20 = sub_22E6D37B0();
  v21 = type metadata accessor for CloudAssets_Asset.ID(v20);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v22);
  sub_22E6D37EC();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v57 - v27;
  sub_22E6CF1CC(&qword_27DA6C660, &qword_22E7263C0);
  sub_22E6CF988();
  v67 = v29;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v30);
  v32 = &v57 - v31;
  sub_22E6CF214(v3, v3[3]);
  sub_22E6D06DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v59 = v21;
    v58 = v25;
    sub_22E6D0730();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v57 = v32;
    v72 = v73;
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    BinaryDecodingOptions.init()();
    sub_22E6D371C();
    sub_22E6D0BD0(v33, v34, &unk_22E7285B8);
    v35 = v28;
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    sub_22E6D36F8();
    v36 = v28;
    v37 = v58;
    sub_22E6D1894(v36, v58);
    v68 = v35;
    v38 = v66;
    URL.init(string:)();
    v39 = v65;
    if (sub_22E6CF550(v38, 1, v65) != 1)
    {
      v43 = v61;
      v44 = *(v62 + 32);
      v44(v61, v38, v39);
      v45 = v60;
      v44(v60, v43, v39);
      v46 = v37[3];
      v47 = v63;
      v48 = (v45 + *(v63 + 20));
      *v48 = v37[2];
      v48[1] = v46;
      v50 = v37[4];
      v49 = v37[5];
      v51 = (v45 + *(v47 + 24));
      *v51 = v50;
      v51[1] = v49;
      v53 = v37[6];
      v52 = v37[7];

      sub_22E6CFB64(v50, v49);
      sub_22E6CFB64(v53, v52);
      sub_22E6D36B0();
      sub_22E6D2780();
      v54 = (v45 + *(v47 + 28));
      *v54 = v53;
      v54[1] = v52;
      sub_22E6D2780();
      v55 = sub_22E6D3874();
      v56(v55);
      sub_22E6D3640();
      sub_22E6D2224(v45, v64);
      v42 = v3;
      goto LABEL_5;
    }

    sub_22E6D3510(v38, &qword_27DA6C940, &qword_22E7273D0);
    sub_22E6D0784();
    swift_allocError();
    swift_willThrow();
    sub_22E6D36B0();
    sub_22E6D2780();
    sub_22E6D2780();
    v40 = sub_22E6D3874();
    v41(v40);
  }

  v42 = v3;
LABEL_5:
  sub_22E6CF2F4(v42);
  sub_22E6D37BC();
}

unint64_t sub_22E6D06DC()
{
  result = qword_27DA6C668;
  if (!qword_27DA6C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C668);
  }

  return result;
}

unint64_t sub_22E6D0730()
{
  result = qword_27DA6C670;
  if (!qword_27DA6C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C670);
  }

  return result;
}

unint64_t sub_22E6D0784()
{
  result = qword_27DA6C680;
  if (!qword_27DA6C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C680);
  }

  return result;
}

void Asset.ID.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22E6D37D4();
  v19 = v16;
  v20 = sub_22E6D3778();
  type metadata accessor for CloudAssets_Asset.ID(v20);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v21);
  sub_22E6CF9C8();
  sub_22E6D3894();
  v53 = sub_22E6CF1CC(&qword_27DA6C688, &qword_22E7263C8);
  sub_22E6CF988();
  v50[1] = v22;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v23);
  v25 = v50 - v24;
  sub_22E6CF214(v16, v16[3]);
  sub_22E6D06DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *(v18 + 2) = xmmword_22E7263B0;
  *(v18 + 3) = xmmword_22E7263B0;
  UnknownStorage.init()();
  *v18 = URL.absoluteString.getter();
  v18[1] = v26;
  v27 = type metadata accessor for Asset.ID(0);
  v28 = (v19 + v27[5]);
  v29 = v28[1];
  v18[2] = *v28;
  v18[3] = v29;
  v30 = (v19 + v27[6]);
  v31 = *v30;
  v32 = v30[1];
  v34 = v18[4];
  v33 = v18[5];

  sub_22E6CFB64(v31, v32);
  sub_22E6CFBBC(v34, v33);
  v18[4] = v31;
  v18[5] = v32;
  v35 = (v19 + v27[7]);
  v36 = *v35;
  v37 = v35[1];
  v38 = v18[6];
  v39 = v18[7];
  v40 = sub_22E6D368C();
  sub_22E6CFB64(v40, v41);
  sub_22E6CFBBC(v38, v39);
  v18[6] = v36;
  v18[7] = v37;
  sub_22E6D371C();
  sub_22E6D0BD0(v42, v43, &unk_22E7285B8);
  v44 = Message.serializedData(partial:)();
  if (v17)
  {
    sub_22E6D3854();
    v46(v25, v53);
    sub_22E6D35E0();
    sub_22E6D2780();
  }

  else
  {
    v47 = v44;
    v48 = v45;
    sub_22E6D35E0();
    sub_22E6D2780();
    v51 = v47;
    v52 = v48;
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v51, v52);
    sub_22E6D3854();
    v49(v25, v53);
  }

  sub_22E6D38A0();
  sub_22E6D37BC();
}

unint64_t sub_22E6D0A5C()
{
  result = qword_27DA6C690;
  if (!qword_27DA6C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C690);
  }

  return result;
}

uint64_t static Asset.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static URL.== infix(_:_:)())
  {
    sub_22E6D3784();
    v4 = sub_22E6D3658(v3);
    v8 = v4 == v7 && v5 == v6;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v9 = sub_22E6D3658(*(v2 + 24));
      if (MEMORY[0x2318EC160](v9))
      {
        sub_22E6D3658(*(v2 + 28));

        JUMPOUT(0x2318EC160);
      }
    }
  }

  return 0;
}

uint64_t Asset.ID.hash(into:)()
{
  sub_22E6D3848();
  type metadata accessor for URL();
  sub_22E6D3610();
  sub_22E6D0BD0(v0, v1, MEMORY[0x277CC9270]);
  sub_22E6D3830();
  dispatch thunk of Hashable.hash(into:)();
  sub_22E6D3784();
  sub_22E6D367C();
  String.hash(into:)();
  sub_22E6D367C();
  Data.hash(into:)();
  sub_22E6D367C();

  return Data.hash(into:)();
}

uint64_t sub_22E6D0BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int Asset.ID.hashValue.getter(uint64_t a1)
{
  sub_22E6D38AC(a1);
  type metadata accessor for URL();
  sub_22E6D3610();
  sub_22E6D0BD0(v1, v2, MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for Asset.ID(0);
  sub_22E6D366C(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31);
  v11 = String.hash(into:)();
  sub_22E6D366C(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32);
  v19 = Data.hash(into:)();
  sub_22E6D366C(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_22E6D0CC0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_22E6D0BD0(&qword_27DA6C5F8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

double Asset.Protector.Builder.__allocating_init(securityKey:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  result = 0.0;
  *(v4 + 32) = xmmword_22E7263B0;
  return result;
}

uint64_t Asset.Protector.Builder.init(securityKey:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = xmmword_22E7263B0;
  return v2;
}

uint64_t Asset.Protector.Builder.setPrivacyKey(_:)(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_22E6CFB64(a1, a2);
  sub_22E6CFBBC(v3, v4);
}

uint64_t Asset.Protector.Builder.build()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  v4 = v1[4];
  v5 = v1[5];
  a1[2] = v4;
  a1[3] = v5;
  sub_22E6CFB64(v2, v3);
  v6 = sub_22E6D368C();

  return sub_22E6CFB64(v6, v7);
}

uint64_t Asset.Protector.Builder.deinit()
{
  sub_22E6CFBBC(*(v0 + 16), *(v0 + 24));
  sub_22E6CFBBC(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t Asset.Protector.Builder.__deallocating_deinit()
{
  Asset.Protector.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_22E6D0F14(uint64_t a1)
{
  v2 = sub_22E6D1274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6D0F50(uint64_t a1)
{
  v2 = sub_22E6D1274();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Asset.Protector.securityKey.getter(uint64_t a1)
{
  v1 = sub_22E6D368C();
  sub_22E6CFB64(v1, v2);
  return sub_22E6D368C();
}

uint64_t Asset.Protector.privacyKey.getter(uint64_t a1)
{
  v1 = sub_22E6D368C();
  sub_22E6CFB64(v1, v2);
  return sub_22E6D368C();
}

uint64_t Asset.Protector.init(securityKey:privacyKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void Asset.Protector.init(from:)(uint64_t a1)
{
  sub_22E6D37D4();
  v3 = v2;
  v21 = v4;
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = sub_22E6D376C(v5);
  MEMORY[0x28223BE20](v6);
  sub_22E6CF9C8();
  type metadata accessor for CloudAssets_Asset.Protector(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v7);
  sub_22E6CF9C8();
  v10 = (v9 - v8);
  sub_22E6CF1CC(&qword_27DA6C698, &qword_22E7263D0);
  sub_22E6CF988();
  sub_22E6D374C();
  MEMORY[0x28223BE20](v11);
  v22 = v3;
  sub_22E6CF214(v3, v3[3]);
  sub_22E6D1274();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_22E6D0730();
    v12 = KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_22E6D37FC(v12);
    sub_22E6D36C8();
    sub_22E6D0BD0(v13, v14, &unk_22E728540);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v15 = sub_22E6D37A4();
    v16(v15);
    v17 = *v10;
    v18 = v10[1];
    v19 = v10[2];
    v20 = v10[3];
    sub_22E6CFB64(v17, v18);
    sub_22E6CFB64(v19, v20);
    sub_22E6D35F8();
    sub_22E6D2780();
    *v21 = v17;
    v21[1] = v18;
    v21[2] = v19;
    v21[3] = v20;
  }

  sub_22E6CF2F4(v22);
  sub_22E6D38A0();
  sub_22E6D37BC();
}

unint64_t sub_22E6D1274()
{
  result = qword_27DA6C6A0;
  if (!qword_27DA6C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C6A0);
  }

  return result;
}

void Asset.Protector.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22E6D37D4();
  v18 = v17;
  v40[1] = type metadata accessor for CloudAssets_Asset.Protector(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v19);
  sub_22E6CF9C8();
  sub_22E6D3894();
  v43 = sub_22E6CF1CC(&qword_27DA6C6B0, &qword_22E7263D8);
  sub_22E6CF988();
  v40[3] = v20;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v21);
  v23 = *v14;
  v22 = v14[1];
  v24 = v14[2];
  v25 = v14[3];
  v26 = v18[3];
  v27 = v18;
  v29 = v40 - v28;
  sub_22E6CF214(v27, v26);
  sub_22E6D1274();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *v16 = xmmword_22E7263B0;
  *(v16 + 16) = xmmword_22E7263B0;
  sub_22E6CFB64(v23, v22);
  v30 = sub_22E6D3824();
  sub_22E6CFB64(v30, v31);
  UnknownStorage.init()();
  sub_22E6CFBBC(*v16, *(v16 + 8));
  *v16 = v23;
  *(v16 + 8) = v22;
  sub_22E6CFBBC(*(v16 + 16), *(v16 + 24));
  *(v16 + 16) = v24;
  *(v16 + 24) = v25;
  sub_22E6D36C8();
  sub_22E6D0BD0(v32, v33, &unk_22E728540);
  v34 = Message.serializedData(partial:)();
  if (v15)
  {
    sub_22E6D3854();
    v36(v29, v43);
    sub_22E6D35F8();
    sub_22E6D2780();
  }

  else
  {
    v37 = v34;
    v38 = v35;
    sub_22E6D35F8();
    sub_22E6D2780();
    v41 = v37;
    v42 = v38;
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v41, v42);
    sub_22E6D3854();
    v39(v29, v43);
  }

  sub_22E6D38A0();
  sub_22E6D37BC();
}

uint64_t static Asset.Protector.== infix(_:_:)(void *a1, void *a2)
{
  if (MEMORY[0x2318EC160](*a1, a1[1], *a2, a2[1]))
  {
    sub_22E6D368C();

    JUMPOUT(0x2318EC160);
  }

  return 0;
}

uint64_t Asset.Protector.hash(into:)(uint64_t a1)
{
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int Asset.Protector.hashValue.getter(uint64_t a1)
{
  sub_22E6D38AC(a1);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E6D162C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6675626F746F7270 && a2 == 0xEC00000061746144)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_22E6D16CC(uint64_t a1)
{
  sub_22E6D38AC(a1);
  MEMORY[0x2318ECB90](0);
  return Hasher._finalize()();
}

Swift::Int sub_22E6D1710(uint64_t a1)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_22E6D17A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](0);
  return Hasher._finalize()();
}

uint64_t sub_22E6D17E8(uint64_t a1)
{
  v2 = sub_22E6D21D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6D1824(uint64_t a1)
{
  v2 = sub_22E6D21D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6D1894(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v4(v3);
  sub_22E6CF978();
  v5 = sub_22E6D368C();
  v6(v5);
  return a2;
}

uint64_t Asset.protector.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Asset(0);
  sub_22E6D3710();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *a1 = *v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_22E6CFB64(v3, v4);

  return sub_22E6CFB64(v5, v6);
}

void sub_22E6D1990(uint64_t a1)
{
  sub_22E6D37D4();
  v2 = v1;
  v66 = v3;
  v4 = sub_22E6CF1CC(&qword_27DA6C740, &unk_22E726B00);
  sub_22E6D376C(v4);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  v64 = &v59 - v6;
  v7 = sub_22E6D37B0();
  v63 = type metadata accessor for CloudAssets_Asset.Protector(v7);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v8);
  sub_22E6CF9C8();
  v65 = (v10 - v9);
  v11 = sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  sub_22E6D376C(v11);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  v15 = type metadata accessor for URL();
  sub_22E6CF988();
  v62 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22E6CF9C8();
  v61 = (v19 - v18);
  v20 = sub_22E6CF1CC(&qword_27DA6C738, &unk_22E727970);
  sub_22E6D376C(v20);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v24 = type metadata accessor for CloudAssets_Asset.ID(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v25);
  sub_22E6CF9C8();
  v28 = v27 - v26;
  v29 = type metadata accessor for Asset.ID(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v30);
  sub_22E6CF9C8();
  v33 = v32 - v31;
  v60 = type metadata accessor for CloudAssets_Asset(0);
  sub_22E6D3568(v2 + *(v60 + 24), v23, &qword_27DA6C738, &unk_22E727970);
  if (sub_22E6CF550(v23, 1, v24) == 1)
  {
    *v28 = 0;
    *(v28 + 8) = 0xE000000000000000;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0xE000000000000000;
    *(v28 + 32) = xmmword_22E7263B0;
    *(v28 + 48) = xmmword_22E7263B0;
    UnknownStorage.init()();
    if (sub_22E6CF550(v23, 1, v24) != 1)
    {
      sub_22E6D3510(v23, &qword_27DA6C738, &unk_22E727970);
    }
  }

  else
  {
    sub_22E6D3734();
    sub_22E6D2224(v23, v28);
  }

  URL.init(string:)();
  v34 = v2;
  if (sub_22E6CF550(v14, 1, v15) == 1)
  {
    sub_22E6D3510(v14, &qword_27DA6C940, &qword_22E7273D0);
    sub_22E6D0784();
    swift_allocError();
    swift_willThrow();
    sub_22E6D35E0();
    sub_22E6D2780();
    sub_22E6D3628();
    sub_22E6D2780();
  }

  else
  {
    v35 = v61;
    v36 = *(v62 + 32);
    v36(v61, v14, v15);
    v36(v33, v35, v15);
    v37 = *(v28 + 24);
    v38 = (v33 + v29[5]);
    *v38 = *(v28 + 16);
    v38[1] = v37;
    v39 = *(v28 + 40);
    v40 = (v33 + v29[6]);
    *v40 = *(v28 + 32);
    v40[1] = v39;
    v41 = *(v28 + 48);
    v42 = *(v28 + 56);

    v43 = sub_22E6D383C();
    sub_22E6CFB64(v43, v44);
    sub_22E6CFB64(v41, v42);
    sub_22E6D35E0();
    sub_22E6D2780();
    v45 = (v33 + v29[7]);
    *v45 = v41;
    v45[1] = v42;
    sub_22E6D3640();
    v46 = v66;
    sub_22E6D2224(v33, v66);
    v47 = v64;
    sub_22E6D3568(v34 + *(v60 + 28), v64, &qword_27DA6C740, &unk_22E726B00);
    v48 = v63;
    if (sub_22E6CF550(v47, 1, v63) == 1)
    {
      v49 = v65;
      *v65 = xmmword_22E7263B0;
      v49[1] = xmmword_22E7263B0;
      UnknownStorage.init()();
      if (sub_22E6CF550(v47, 1, v48) != 1)
      {
        sub_22E6D3510(v47, &qword_27DA6C740, &unk_22E726B00);
      }
    }

    else
    {
      sub_22E6D36E0();
      v49 = v65;
      sub_22E6D2224(v47, v65);
    }

    v50 = *v49;
    v51 = *(v49 + 1);
    v52 = *(v49 + 2);
    v53 = *(v49 + 3);
    v54 = sub_22E6D368C();
    sub_22E6CFB64(v54, v55);
    sub_22E6CFB64(v52, v53);
    sub_22E6D35F8();
    sub_22E6D2780();
    v56 = type metadata accessor for Asset(0);
    v57 = (v46 + *(v56 + 20));
    *v57 = v50;
    v57[1] = v51;
    v57[2] = v52;
    v57[3] = v53;
    v58 = *v34;
    sub_22E6D3628();
    sub_22E6D2780();
    *(v46 + *(v56 + 24)) = v58;
  }

  sub_22E6D37BC();
}

__n128 Asset.init(id:protector:size:)@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22E6D3640();
  sub_22E6D2224(v7, v8);
  v9 = type metadata accessor for Asset(0);
  v10 = (a4 + *(v9 + 20));
  result = *a2;
  v12 = *(a2 + 16);
  *v10 = *a2;
  v10[1] = v12;
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

void Asset.init(from:)(uint64_t a1)
{
  sub_22E6D37D4();
  v3 = v2;
  v32 = v4;
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = sub_22E6D376C(v5);
  MEMORY[0x28223BE20](v6);
  sub_22E6CF9C8();
  v34 = v8 - v7;
  v9 = sub_22E6D37B0();
  type metadata accessor for CloudAssets_Asset(v9);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v10);
  sub_22E6CF9C8();
  v13 = v12 - v11;
  v14 = type metadata accessor for Asset(0);
  v15 = sub_22E6D376C(v14);
  MEMORY[0x28223BE20](v15);
  sub_22E6CF9C8();
  v18 = v17 - v16;
  v19 = sub_22E6CF1CC(&qword_27DA6C6B8, &qword_22E7263E0);
  sub_22E6CF988();
  v33 = v20;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  v35 = v3;
  sub_22E6CF214(v3, v3[3]);
  sub_22E6D21D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v24 = v33;
    v31 = v18;
    sub_22E6D0730();
    v25 = KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v19;
    sub_22E6D37FC(v25);
    sub_22E6D3698();
    sub_22E6D0BD0(v26, v27, &unk_22E7284C8);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v28 = v31;
    sub_22E6D1990(v13);
    (*(v24 + 8))(v23, v30);
    sub_22E6D2224(v28, v32);
  }

  sub_22E6CF2F4(v35);
  sub_22E6D37BC();
}

unint64_t sub_22E6D21D0()
{
  result = qword_27DA6C6C0;
  if (!qword_27DA6C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C6C0);
  }

  return result;
}

uint64_t sub_22E6D2224(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v4(v3);
  sub_22E6CF978();
  v5 = sub_22E6D368C();
  v6(v5);
  return a2;
}

uint64_t sub_22E6D227C@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for CloudAssets_Asset.Protector(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v4);
  sub_22E6D37EC();
  v49 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v46 = type metadata accessor for CloudAssets_Asset.ID(0);
  MEMORY[0x28223BE20](v46);
  sub_22E6D37EC();
  v47 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - v13;
  v45 = xmmword_22E7263B0;
  *(v14 + 2) = xmmword_22E7263B0;
  *(v14 + 3) = xmmword_22E7263B0;
  UnknownStorage.init()();
  *v14 = URL.absoluteString.getter();
  *(v14 + 1) = v15;
  v16 = type metadata accessor for Asset.ID(0);
  sub_22E6D3710();
  v18 = v17[1];
  *(v14 + 2) = *v17;
  *(v14 + 3) = v18;
  v19 = (v1 + *(v16 + 24));
  v21 = *v19;
  v20 = v19[1];
  v22 = *(v14 + 4);
  v23 = *(v14 + 5);

  v24 = sub_22E6D37A4();
  sub_22E6CFB64(v24, v25);
  sub_22E6CFBBC(v22, v23);
  *(v14 + 4) = v21;
  *(v14 + 5) = v20;
  v26 = (v1 + *(v16 + 28));
  v27 = *v26;
  v28 = v26[1];
  sub_22E6CFB64(*v26, v28);
  v29 = sub_22E6D3824();
  sub_22E6CFBBC(v29, v30);
  *(v14 + 6) = v27;
  *(v14 + 7) = v28;
  v48 = type metadata accessor for Asset(0);
  sub_22E6D3710();
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];
  v36 = v45;
  *v9 = v45;
  *(v9 + 1) = v36;
  sub_22E6CFB64(v32, v33);
  sub_22E6CFB64(v34, v35);
  UnknownStorage.init()();
  sub_22E6CFBBC(*v9, *(v9 + 1));
  *v9 = v32;
  *(v9 + 1) = v33;
  sub_22E6CFBBC(*(v9 + 2), *(v9 + 3));
  *(v9 + 2) = v34;
  *(v9 + 3) = v35;
  *a1 = 0;
  v37 = type metadata accessor for CloudAssets_Asset(0);
  UnknownStorage.init()();
  v38 = *(v37 + 24);
  v39 = v46;
  sub_22E6CF58C(a1 + v38, 1, 1, v46);
  v40 = *(v37 + 28);
  v41 = v3;
  sub_22E6CF58C(a1 + v40, 1, 1, v3);
  sub_22E6D36F8();
  v42 = v47;
  sub_22E6D1894(v14, v47);
  sub_22E6D3510(a1 + v38, &qword_27DA6C738, &unk_22E727970);
  sub_22E6D3734();
  sub_22E6D2224(v42, a1 + v38);
  sub_22E6CF58C(a1 + v38, 0, 1, v39);
  v43 = v49;
  sub_22E6D1894(v9, v49);
  sub_22E6D3510(a1 + v40, &qword_27DA6C740, &unk_22E726B00);
  sub_22E6D36E0();
  sub_22E6D2224(v43, a1 + v40);
  sub_22E6CF58C(a1 + v40, 0, 1, v41);
  sub_22E6D35F8();
  sub_22E6D2780();
  sub_22E6D35E0();
  result = sub_22E6D2780();
  *a1 = *(v1 + *(v48 + 24));
  return result;
}

void Asset.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22E6D37D4();
  v21 = sub_22E6D3778();
  type metadata accessor for CloudAssets_Asset(v21);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v22);
  sub_22E6CF9C8();
  v25 = (v24 - v23);
  v26 = sub_22E6CF1CC(&qword_27DA6C6D0, &qword_22E7263E8);
  sub_22E6CF988();
  v28 = v27;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v29);
  sub_22E6D3894();
  sub_22E6CF214(v18, v18[3]);
  sub_22E6D21D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E6D227C(v25);
  sub_22E6D3698();
  sub_22E6D0BD0(v30, v31, &unk_22E7284C8);
  v32 = Message.serializedData(partial:)();
  if (v19)
  {
    sub_22E6D3628();
    sub_22E6D2780();
  }

  else
  {
    v34 = v32;
    v35 = v33;
    sub_22E6D3628();
    sub_22E6D2780();
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v34, v35);
  }

  (*(v28 + 8))(v20, v26);
  sub_22E6D38A0();
  sub_22E6D37BC();
}

uint64_t sub_22E6D2780()
{
  v1 = sub_22E6D3848();
  v2(v1);
  sub_22E6CF978();
  (*(v3 + 8))(v0);
  return v0;
}

BOOL static Asset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static URL.== infix(_:_:)())
  {
    sub_22E6D3784();
    v6 = sub_22E6D3658(v5);
    v10 = v6 == v9 && v7 == v8;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v11 = sub_22E6D3658(*(v2 + 24));
      if (MEMORY[0x2318EC160](v11))
      {
        v12 = sub_22E6D3658(*(v2 + 28));
        if (MEMORY[0x2318EC160](v12))
        {
          v41 = type metadata accessor for Asset(0);
          v13 = sub_22E6D3888();
          sub_22E6CFB64(v13, v14);
          v15 = sub_22E6D383C();
          sub_22E6CFB64(v15, v16);
          v17 = sub_22E6D37A4();
          sub_22E6CFB64(v17, v18);
          v19 = sub_22E6D3824();
          sub_22E6CFB64(v19, v20);
          v21 = sub_22E6D3888();
          if (MEMORY[0x2318EC160](v21))
          {
            v22 = sub_22E6D383C();
            v40 = MEMORY[0x2318EC160](v22);
            v23 = sub_22E6D37A4();
            sub_22E6CFBBC(v23, v24);
            v25 = sub_22E6D3824();
            sub_22E6CFBBC(v25, v26);
            v27 = sub_22E6D3888();
            sub_22E6CFBBC(v27, v28);
            v29 = sub_22E6D383C();
            sub_22E6CFBBC(v29, v30);
            if (v40)
            {
              return *(a1 + *(v41 + 24)) == *(a2 + *(v41 + 24));
            }
          }

          else
          {
            v32 = sub_22E6D37A4();
            sub_22E6CFBBC(v32, v33);
            v34 = sub_22E6D3824();
            sub_22E6CFBBC(v34, v35);
            v36 = sub_22E6D3888();
            sub_22E6CFBBC(v36, v37);
            v38 = sub_22E6D383C();
            sub_22E6CFBBC(v38, v39);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t Asset.hash(into:)()
{
  sub_22E6D3848();
  type metadata accessor for URL();
  sub_22E6D3610();
  sub_22E6D0BD0(v1, v2, MEMORY[0x277CC9270]);
  sub_22E6D3830();
  dispatch thunk of Hashable.hash(into:)();
  sub_22E6D3784();
  sub_22E6D367C();
  String.hash(into:)();
  sub_22E6D367C();
  Data.hash(into:)();
  sub_22E6D367C();
  Data.hash(into:)();
  v3 = type metadata accessor for Asset(0);
  sub_22E6D3710();
  Data.hash(into:)();
  Data.hash(into:)();
  return MEMORY[0x2318ECB90](*(v0 + *(v3 + 24)));
}

Swift::Int Asset.hashValue.getter(uint64_t a1)
{
  sub_22E6D38AC(a1);
  type metadata accessor for URL();
  sub_22E6D3610();
  sub_22E6D0BD0(v2, v3, MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for Asset.ID(0);
  sub_22E6D366C(v4, v5, v6, v7, v8, v9, v10, v11, v30, v33);
  v12 = String.hash(into:)();
  sub_22E6D366C(v12, v13, v14, v15, v16, v17, v18, v19, v31, v34);
  v20 = Data.hash(into:)();
  sub_22E6D366C(v20, v21, v22, v23, v24, v25, v26, v27, v32, v35);
  Data.hash(into:)();
  v28 = type metadata accessor for Asset(0);
  sub_22E6D3710();
  Data.hash(into:)();
  Data.hash(into:)();
  MEMORY[0x2318ECB90](*(v1 + *(v28 + 24)));
  return Hasher._finalize()();
}

Swift::Int sub_22E6D2AFC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  sub_22E6D0BD0(&qword_27DA6C5F8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Asset.ID(0);
  String.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  MEMORY[0x2318ECB90](*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

unint64_t sub_22E6D2C58()
{
  result = qword_27DA6C6E0;
  if (!qword_27DA6C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C6E0);
  }

  return result;
}

uint64_t sub_22E6D2D50(uint64_t a1)
{
  result = type metadata accessor for Asset.ID(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E6D2DFC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E6D2EA4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E6D2EDC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22E6D2FAC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_22E6D2FC8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22E6D2FD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22E6D3020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetSkeleton.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_22E6D314C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E6D31FC()
{
  result = qword_27DA6C6F0;
  if (!qword_27DA6C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C6F0);
  }

  return result;
}

unint64_t sub_22E6D3254()
{
  result = qword_27DA6C6F8;
  if (!qword_27DA6C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C6F8);
  }

  return result;
}

unint64_t sub_22E6D32AC()
{
  result = qword_27DA6C700;
  if (!qword_27DA6C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C700);
  }

  return result;
}

unint64_t sub_22E6D3304()
{
  result = qword_27DA6C708;
  if (!qword_27DA6C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C708);
  }

  return result;
}

unint64_t sub_22E6D335C()
{
  result = qword_27DA6C710;
  if (!qword_27DA6C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C710);
  }

  return result;
}

unint64_t sub_22E6D33B4()
{
  result = qword_27DA6C718;
  if (!qword_27DA6C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C718);
  }

  return result;
}

unint64_t sub_22E6D340C()
{
  result = qword_27DA6C720;
  if (!qword_27DA6C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C720);
  }

  return result;
}

unint64_t sub_22E6D3464()
{
  result = qword_27DA6C728;
  if (!qword_27DA6C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C728);
  }

  return result;
}

unint64_t sub_22E6D34BC()
{
  result = qword_27DA6C730;
  if (!qword_27DA6C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C730);
  }

  return result;
}

uint64_t sub_22E6D3510(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_22E6CF1CC(a2, a3);
  sub_22E6CF978();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22E6D3568(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22E6CF1CC(a3, a4);
  sub_22E6CF978();
  v5 = sub_22E6D368C();
  v6(v5);
  return a2;
}

uint64_t sub_22E6D37FC(uint64_t a1)
{
  *(v1 - 112) = *(v1 - 96);
  *(v1 - 128) = 0;
  *(v1 - 160) = 0u;
  *(v1 - 144) = 0u;

  return BinaryDecodingOptions.init()();
}

void *sub_22E6D38AC(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

Swift::Int sub_22E6D38C4()
{
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](0);
  return Hasher._finalize()();
}

uint64_t sub_22E6D390C(uint64_t a1)
{
  v2 = sub_22E6D3D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6D3948(uint64_t a1)
{
  v2 = sub_22E6D3D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetSkeleton.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v4 - 8);
  sub_22E6CF9C8();
  v31 = v6 - v5;
  type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v7);
  sub_22E6CF9C8();
  v10 = (v9 - v8);
  v11 = type metadata accessor for AssetSkeleton(0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_22E6CF9C8();
  v14 = v13 - v12;
  v15 = sub_22E6CF1CC(&qword_27DA6C748, &qword_22E726B20);
  sub_22E6CF988();
  v30 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v20 = a1[3];
  v37 = a1;
  sub_22E6CF214(a1, v20);
  sub_22E6D3D48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v21 = v30;
    v28 = v14;
    sub_22E6D0730();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v15;
    v35 = v36;
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    BinaryDecodingOptions.init()();
    sub_22E6D5108();
    sub_22E6D4CC0(v22, v23, &unk_22E728450);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    v25 = v28;
    sub_22E6D3D9C(v10, v28);
    (*(v21 + 8))(v19, v27);
    sub_22E6D4F78(v25, v29);
  }

  return sub_22E6CF2F4(v37);
}

uint64_t type metadata accessor for AssetSkeleton(uint64_t a1)
{
  result = qword_27DA6C778;
  if (!qword_27DA6C778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22E6D3D48()
{
  result = qword_27DA6C750;
  if (!qword_27DA6C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C750);
  }

  return result;
}

uint64_t sub_22E6D3D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for Google_Protobuf_Timestamp();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for CloudAssets_Credential(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Asset(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for CloudAssets_Asset(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_22E6F3B7C(*a1, v16);
  if (sub_22E6CF550(v16, 1, v17) == 1)
  {
    sub_22E6D3510(v16, &unk_27DA6C910, &unk_22E726D20);
    sub_22E6D0784();
    swift_allocError();
    swift_willThrow();
    return sub_22E6D50A0(a1, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);
  }

  sub_22E6D4F78(v16, v22);
  sub_22E6D4FD4(v22, v20);
  v23 = v44;
  sub_22E6D1990(v20);
  if (v23)
  {
    sub_22E6D50A0(v22, type metadata accessor for CloudAssets_Asset);
    return sub_22E6D50A0(a1, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);
  }

  v25 = v43;
  sub_22E6D4F78(v13, v43);
  v26 = a1[1];
  v27 = a1[2];
  v44 = type metadata accessor for AssetSkeleton(0);
  v28 = (v25 + *(v44 + 20));
  *v28 = v26;
  v28[1] = v27;
  v29 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  sub_22E6D5030(a1 + *(v29 + 32), v7);
  if (sub_22E6CF550(v7, 1, v8) == 1)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    sub_22E6CFB64(v26, v27);
    UnknownStorage.init()();
    sub_22E6CF58C(v10 + *(v8 + 32), 1, 1, v42);
    if (sub_22E6CF550(v7, 1, v8) != 1)
    {
      sub_22E6D3510(v7, &qword_27DA6C7A8, &unk_22E7273B0);
    }
  }

  else
  {
    sub_22E6D4F78(v7, v10);
    sub_22E6CFB64(v26, v27);
  }

  v30 = v44;
  v31 = v43;
  v32 = (v43 + *(v44 + 28));
  v33 = v10[1];
  *v32 = *v10;
  v32[1] = v33;
  v34 = v10[3];
  v32[2] = v10[2];
  v32[3] = v34;
  v35 = v10[5];
  v32[4] = v10[4];
  v32[5] = v35;

  v36 = v40;
  sub_22E6E4AE4(v40);
  type metadata accessor for Credential(0);
  Google_Protobuf_Timestamp.date.getter();
  (*(v41 + 8))(v36, v42);
  sub_22E6D50A0(v10, type metadata accessor for CloudAssets_Credential);
  sub_22E6D50A0(v22, type metadata accessor for CloudAssets_Asset);
  v37 = a1[3];
  v38 = a1[4];
  sub_22E6CFB64(v37, v38);
  result = sub_22E6D50A0(a1, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);
  v39 = (v31 + *(v30 + 24));
  *v39 = v37;
  v39[1] = v38;
  return result;
}

uint64_t AssetSkeleton.init(asset:credential:storageReference:storageReferenceSignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_22E6D4F78(a1, a7);
  v13 = type metadata accessor for AssetSkeleton(0);
  result = sub_22E6D4F78(a2, a7 + v13[7]);
  v15 = (a7 + v13[5]);
  *v15 = a3;
  v15[1] = a4;
  v16 = (a7 + v13[6]);
  *v16 = a5;
  v16[1] = a6;
  return result;
}

uint64_t sub_22E6D43A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Google_Protobuf_Timestamp();
  v41 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloudAssets_Credential(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 1) = xmmword_22E7263B0;
  *(a1 + 3) = xmmword_22E7263B0;
  v9 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  UnknownStorage.init()();
  v36 = *(v9 + 32);
  sub_22E6CF58C(a1 + v36, 1, 1, v6);
  sub_22E6CF1CC(&qword_27DA6C7A0, &qword_22E726D18);
  v10 = *(type metadata accessor for CloudAssets_Asset(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22E726B10;
  sub_22E6D227C((v12 + v11));
  *a1 = v12;
  v13 = type metadata accessor for AssetSkeleton(0);
  v14 = (v1 + v13[5]);
  v16 = *v14;
  v15 = v14[1];
  v17 = a1[1];
  v18 = a1[2];
  sub_22E6CFB64(*v14, v15);
  sub_22E6CFBBC(v17, v18);
  a1[1] = v16;
  a1[2] = v15;
  v19 = (v1 + v13[7]);
  v34 = v6;
  UnknownStorage.init()();
  v20 = *(v6 + 32);
  v21 = v35;
  sub_22E6CF58C(&v8[v20], 1, 1, v35);
  v22 = *(v19 + 1);
  *v8 = *v19;
  *(v8 + 1) = v22;
  v23 = *(v19 + 3);
  *(v8 + 2) = *(v19 + 2);
  *(v8 + 3) = v23;
  v24 = *(v19 + 5);
  *(v8 + 4) = *(v19 + 4);
  *(v8 + 5) = v24;
  v25 = type metadata accessor for Credential(0);
  (*(v39 + 16))(v38, &v19[*(v25 + 28)], v40);

  v26 = v37;
  Google_Protobuf_Timestamp.init(date:)();
  sub_22E6D3510(&v8[v20], &qword_27DA6C930, &unk_22E727910);
  (*(v41 + 32))(&v8[v20], v26, v21);
  sub_22E6CF58C(&v8[v20], 0, 1, v21);
  v27 = v36;
  sub_22E6D3510(a1 + v36, &qword_27DA6C7A8, &unk_22E7273B0);
  sub_22E6D4F78(v8, a1 + v27);
  sub_22E6CF58C(a1 + v27, 0, 1, v34);
  v28 = (v1 + v13[6]);
  v29 = *v28;
  v30 = v28[1];
  v31 = a1[3];
  v32 = a1[4];
  sub_22E6CFB64(*v28, v30);
  result = sub_22E6CFBBC(v31, v32);
  a1[3] = v29;
  a1[4] = v30;
  return result;
}

uint64_t AssetSkeleton.encode(to:)()
{
  v1 = sub_22E6D3778();
  type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(v1);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v2);
  sub_22E6CF9C8();
  v5 = (v4 - v3);
  v6 = sub_22E6CF1CC(&qword_27DA6C760, &qword_22E726B28);
  sub_22E6CF988();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_22E6CF214(v0, v0[3]);
  sub_22E6D3D48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E6D43A4(v5);
  sub_22E6D5108();
  sub_22E6D4CC0(v12, v13, &unk_22E728450);
  v14 = v22;
  v15 = Message.serializedData(partial:)();
  if (v14)
  {
    sub_22E6D5120();
  }

  else
  {
    v17 = v15;
    v18 = v16;
    sub_22E6D5120();
    v20 = v17;
    v21 = v18;
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v20, v21);
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t static AssetSkeleton.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!static Asset.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for AssetSkeleton(0);
  sub_22E6D5148();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_22E6D5148();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v4 + 28);

  return static Credential.== infix(_:_:)((a1 + v7), (a2 + v7));
}

uint64_t AssetSkeleton.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for URL();
  sub_22E6D4CC0(&qword_27DA6C5F8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Asset.ID(0);
  sub_22E6D50F8();
  String.hash(into:)();
  sub_22E6D50F8();
  Data.hash(into:)();
  sub_22E6D50F8();
  Data.hash(into:)();
  v3 = type metadata accessor for Asset(0);
  Data.hash(into:)();
  Data.hash(into:)();
  MEMORY[0x2318ECB90](*(v2 + *(v3 + 24)));
  type metadata accessor for AssetSkeleton(0);
  sub_22E6D50F8();
  Data.hash(into:)();
  sub_22E6D50F8();
  Data.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Credential(0);
  type metadata accessor for Date();
  sub_22E6D4CC0(&qword_27DA6C768, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int AssetSkeleton.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetSkeleton.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_22E6D4C08(uint64_t a1)
{
  Hasher.init(_seed:)();
  AssetSkeleton.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_22E6D4CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22E6D4D30(uint64_t a1)
{
  result = type metadata accessor for Asset(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Credential(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetSkeleton.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E6D4E74()
{
  result = qword_27DA6C788;
  if (!qword_27DA6C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C788);
  }

  return result;
}

unint64_t sub_22E6D4ECC()
{
  result = qword_27DA6C790;
  if (!qword_27DA6C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C790);
  }

  return result;
}

unint64_t sub_22E6D4F24()
{
  result = qword_27DA6C798;
  if (!qword_27DA6C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C798);
  }

  return result;
}

uint64_t sub_22E6D4F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6D3778();
  v5(v4);
  sub_22E6CF978();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22E6D4FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6D3778();
  v5(v4);
  sub_22E6CF978();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22E6D5030(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6D50A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22E6CF978();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22E6D5120()
{

  return sub_22E6D50A0(v0, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);
}

void sub_22E6D5148()
{

  JUMPOUT(0x2318EC160);
}

uint64_t sub_22E6D51A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  sub_22E6CF1CC(a2, a3);
  sub_22E6CF978();
  v9 = *(v8 + 16);

  return v9(a4, v4 + v6, v7);
}

uint64_t sub_22E6D5218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  v7 = OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__signals;
  sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  sub_22E6CF978();
  (*(v8 + 32))(v3 + v7, a2);
  v9 = OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__results;
  sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  sub_22E6CF978();
  (*(v10 + 32))(v3 + v9, a3);
  return v3;
}

uint64_t AssetsUploadCoordinator.deinit()
{

  v1 = OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__signals;
  sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  sub_22E6CF978();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__results;
  sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  sub_22E6CF978();
  (*(v4 + 8))(v0 + v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetsUploadCoordinator.__deallocating_deinit()
{
  AssetsUploadCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AssetsUploadCoordinator(uint64_t a1)
{
  result = qword_281468550;
  if (!qword_281468550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22E6D5448(uint64_t a1)
{
  sub_22E6D55B0(319);
  if (v1 <= 0x3F)
  {
    sub_22E6D5624(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22E6D55B0(uint64_t a1)
{
  if (!qword_2814681D8)
  {
    sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
    v1 = type metadata accessor for AsyncThrowingStream();
    if (!v2)
    {
      atomic_store(v1, &qword_2814681D8);
    }
  }
}

void sub_22E6D5624(uint64_t a1)
{
  if (!qword_2814681D0)
  {
    sub_22E6CF2AC(&qword_27DA6C7C8, &unk_22E727340);
    sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
    v1 = type metadata accessor for AsyncThrowingStream();
    if (!v2)
    {
      atomic_store(v1, &qword_2814681D0);
    }
  }
}

uint64_t XPCAsyncSequenceRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t XPCAsyncSequenceRequest.data.getter()
{
  v1 = v0 + *(type metadata accessor for XPCAsyncSequenceRequest(0) + 20);
  v2 = *v1;
  sub_22E6CFB64(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for XPCAsyncSequenceRequest(uint64_t a1)
{
  result = qword_27DA6C7E8;
  if (!qword_27DA6C7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22E6D57A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_22E6D586C(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_22E6D58B4(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22E6D58E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6D57A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6D5910@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6D5864();
  *a1 = result;
  return result;
}

uint64_t sub_22E6D5938(uint64_t a1)
{
  v2 = sub_22E6D5B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6D5974(uint64_t a1)
{
  v2 = sub_22E6D5B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCAsyncSequenceRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22E6CF1CC(&qword_27DA6C7D0, &qword_22E726DE0);
  sub_22E6CF988();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6D5B70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  sub_22E6D5FC8(&qword_27DA6C5D0, MEMORY[0x277CC95F8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for XPCAsyncSequenceRequest(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_22E6CFB64(v15, v12);
    sub_22E6D0A5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v15, v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_22E6D5B70()
{
  result = qword_27DA6C7D8;
  if (!qword_27DA6C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C7D8);
  }

  return result;
}

uint64_t XPCAsyncSequenceRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = type metadata accessor for UUID();
  sub_22E6CF988();
  v24 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E6CF1CC(&qword_27DA6C7E0, &qword_22E726DE8);
  sub_22E6CF988();
  v25 = v8;
  v26 = v9;
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for XPCAsyncSequenceRequest(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E6CF214(a1, a1[3]);
  sub_22E6D5B70();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_22E6CF2F4(a1);
  }

  v22 = v10;
  v13 = v24;
  LOBYTE(v28) = 0;
  sub_22E6D5FC8(&qword_27DA6C608, MEMORY[0x277CC9618]);
  v14 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(v13 + 32);
  v21 = v12;
  v15(v12, v7, v14);
  v29 = 1;
  sub_22E6D0730();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = sub_22E6D6348();
  v17(v16);
  v18 = v21;
  *&v21[*(v22 + 20)] = v28;
  sub_22E6D5ED4(v18, v23);
  sub_22E6CF2F4(a1);
  return sub_22E6D5F38(v18);
}

uint64_t sub_22E6D5ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCAsyncSequenceRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6D5F38(uint64_t a1)
{
  v2 = type metadata accessor for XPCAsyncSequenceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E6D5FC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E6D6068(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCAsyncSequenceRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XPCAsyncSequenceRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22E6D6244()
{
  result = qword_27DA6C7F8;
  if (!qword_27DA6C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C7F8);
  }

  return result;
}

unint64_t sub_22E6D629C()
{
  result = qword_27DA6C800;
  if (!qword_27DA6C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C800);
  }

  return result;
}

unint64_t sub_22E6D62F4()
{
  result = qword_27DA6C808;
  if (!qword_27DA6C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C808);
  }

  return result;
}

uint64_t AssetDownloadRequest.id.getter()
{
  sub_22E6D9170();
  type metadata accessor for UUID();
  sub_22E6CF978();
  v0 = sub_22E6D368C();

  return v1(v0);
}

uint64_t AssetDownloadRequest.tenantName.getter()
{
  type metadata accessor for AssetDownloadRequest(0);
  sub_22E6D91C0();

  return sub_22E6D368C();
}

uint64_t type metadata accessor for AssetDownloadRequest(uint64_t a1)
{
  result = qword_27DA6C858;
  if (!qword_27DA6C858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetDownloadRequest.workingDirectory.getter()
{
  v2 = sub_22E6D9170();
  v3 = *(type metadata accessor for AssetDownloadRequest(v2) + 24);
  type metadata accessor for URL();
  sub_22E6CF978();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AssetDownloadRequest.asset.getter()
{
  v2 = sub_22E6D9170();
  v3 = type metadata accessor for AssetDownloadRequest(v2);
  return sub_22E6D898C(v1 + *(v3 + 28), v0);
}

uint64_t AssetDownloadRequest.fileURL.getter()
{
  v2 = sub_22E6D9170();
  v3 = *(type metadata accessor for AssetDownloadRequest(v2) + 36);
  type metadata accessor for URL();
  sub_22E6CF978();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AssetDownloadRequest.credential.getter()
{
  v2 = sub_22E6D9170();
  type metadata accessor for AssetDownloadRequest(v2);
  sub_22E6D90B0();
  return sub_22E6D898C(v1 + v3, v0);
}

uint64_t AssetDownloadRequest.storageReference.getter()
{
  type metadata accessor for AssetDownloadRequest(0);
  sub_22E6D91C0();
  v0 = sub_22E6D368C();
  sub_22E6CFB64(v0, v1);
  return sub_22E6D368C();
}

uint64_t AssetDownloadRequest.storageReferenceSignature.getter()
{
  type metadata accessor for AssetDownloadRequest(0);
  sub_22E6D91C0();
  v0 = sub_22E6D368C();
  sub_22E6CFB64(v0, v1);
  return sub_22E6D368C();
}

uint64_t AssetDownloadRequest.applicationID.getter()
{
  type metadata accessor for AssetDownloadRequest(0);
  sub_22E6D91C0();

  return sub_22E6D368C();
}

double AssetDownloadRequest.init(asset:fileURL:credential:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  UUID.init()();
  v6 = type metadata accessor for AssetDownloadRequest(0);
  v7 = sub_22E6D9114(v6);
  sub_22E6D67B0(v7, 0xE900000000000079, a3 + v6[6]);
  sub_22E6D8FE8();
  sub_22E6D675C(a1, v8);
  type metadata accessor for URL();
  sub_22E6D901C();
  v9 = sub_22E6D91A8();
  v10(v9);
  sub_22E6D9004();
  sub_22E6D675C(a2, a3 + v11);
  result = 0.0;
  *(a3 + v6[11]) = xmmword_22E7263B0;
  *(a3 + v6[12]) = xmmword_22E7263B0;
  v13 = (a3 + v6[13]);
  *v13 = 0;
  v13[1] = 0;
  v14 = a3 + v6[8];
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  return result;
}

uint64_t sub_22E6D675C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v4(v3);
  sub_22E6D901C();
  v5 = sub_22E6D368C();
  v6(v5);
  return a2;
}

void sub_22E6D67B0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v64 = type metadata accessor for URL.DirectoryHint();
  sub_22E6CF988();
  v4 = v3;
  v70 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22E6CF9C8();
  v8 = v7 - v6;
  v9 = sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - v10;
  v12 = type metadata accessor for URL();
  sub_22E6CF988();
  v68 = v13;
  v69 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  sub_22E6D91E4();
  v66 = v18;
  sub_22E6D91B4();
  MEMORY[0x28223BE20](v19);
  sub_22E6D91E4();
  v67 = v20;
  sub_22E6D91B4();
  MEMORY[0x28223BE20](v21);
  sub_22E6D91E4();
  v65 = v22;
  sub_22E6D91B4();
  MEMORY[0x28223BE20](v23);
  sub_22E6D91E4();
  v58 = v24;
  sub_22E6D91B4();
  MEMORY[0x28223BE20](v25);
  v59 = &v55 - v26;
  v27 = NSHomeDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_22E6CF58C(v11, 1, 1, v12);
  v28 = *MEMORY[0x277CC91D8];
  v29 = *(v4 + 104);
  v30 = sub_22E6D917C();
  v31 = v64;
  v29(v30);
  URL.init(filePath:directoryHint:relativeTo:)();
  v71 = 0x7972617262694CLL;
  v72 = 0xE700000000000000;
  v32 = sub_22E6D917C();
  v33 = v31;
  v29(v32);
  v63 = sub_22E6D0038();
  URL.appending<A>(path:directoryHint:)();
  v34 = *(v70 + 8);
  v70 += 8;
  v34(v8, v31);
  v35 = v68;
  v36 = *(v69 + 8);
  v69 += 8;
  v36(v17, v68);
  v71 = 0x736568636143;
  v72 = 0xE600000000000000;
  v37 = sub_22E6D917C();
  v29(v37);
  v38 = v66;
  URL.appending<A>(path:directoryHint:)();
  v34(v8, v33);
  v36(v38, v35);
  v71 = 0x74694B64756F6C43;
  v72 = 0xE800000000000000;
  v57 = v28;
  v66 = v29;
  (v29)(v8, v28, v33);
  v39 = v67;
  URL.appending<A>(path:directoryHint:)();
  v40 = v33;
  v56 = v34;
  v34(v8, v33);
  v67 = v36;
  v36(v39, v68);
  v41 = [objc_opt_self() mainBundle];
  v42 = [v41 bundleIdentifier];

  if (v42)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v71 = v43;
    v72 = v45;
    v46 = v57;
    v66(v8);
    v47 = v58;
    v48 = v65;
    URL.appending<A>(path:directoryHint:)();
    v49 = v56;
    v56(v8, v40);
    v67(v48, v68);

    v71 = 0x73734164756F6C43;
    v72 = 0xEB00000000737465;
    v50 = v66;
    (v66)(v8, v46, v40);
    v51 = v59;
    URL.appending<A>(path:directoryHint:)();
    v49(v8, v40);
    v52 = v47;
    v53 = v68;
    v67(v52, v68);
    v71 = v60;
    v72 = v61;
    v54 = sub_22E6D917C();
    v50(v54);
    URL.appending<A>(path:directoryHint:)();
    v49(v8, v40);
    v67(v51, v53);
  }

  else
  {
    __break(1u);
  }
}

void AssetDownloadRequest.init(tenantName:asset:fileURL:credential:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  UUID.init()();
  v10 = type metadata accessor for AssetDownloadRequest(0);
  v11 = (a5 + v10[5]);
  *v11 = a1;
  v11[1] = a2;
  v12 = v10[6];

  sub_22E6D67B0(a1, a2, a5 + v12);

  sub_22E6D8FE8();
  sub_22E6D675C(a3, v13);
  type metadata accessor for URL();
  sub_22E6D901C();
  v14 = sub_22E6D91A8();
  v15(v14);
  sub_22E6D9004();
  sub_22E6D675C(a4, a5 + v16);
  *(a5 + v10[11]) = xmmword_22E7263B0;
  *(a5 + v10[12]) = xmmword_22E7263B0;
  sub_22E6D9060();
}

void AssetDownloadRequest.init(skeleton:fileURL:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UUID.init()();
  v4 = type metadata accessor for AssetDownloadRequest(0);
  v5 = sub_22E6D9114(v4);
  sub_22E6D67B0(v5, 0xE900000000000079, a2 + *(v4 + 24));
  sub_22E6D8FE8();
  sub_22E6D675C(a1, v6);
  type metadata accessor for URL();
  sub_22E6D901C();
  v7 = sub_22E6D91A8();
  v8(v7);
  v9 = type metadata accessor for AssetSkeleton(0);
  sub_22E6D9004();
  sub_22E6D675C(a1 + v10, a2 + v11);
  sub_22E6D91CC(*(v9 + 20));
  sub_22E6D91CC(*(v9 + 24));
  sub_22E6D9060();
}

void AssetDownloadRequest.init(tenantName:skeleton:fileURL:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  UUID.init()();
  v8 = type metadata accessor for AssetDownloadRequest(0);
  v9 = (a4 + *(v8 + 20));
  *v9 = a1;
  v9[1] = a2;
  v10 = *(v8 + 24);

  sub_22E6D67B0(a1, a2, a4 + v10);

  sub_22E6D8FE8();
  sub_22E6D675C(a3, v11);
  type metadata accessor for URL();
  sub_22E6D901C();
  v12 = sub_22E6D91A8();
  v13(v12);
  v14 = type metadata accessor for AssetSkeleton(0);
  sub_22E6D9004();
  sub_22E6D675C(a3 + v15, a4 + v16);
  sub_22E6D91CC(*(v14 + 20));
  sub_22E6D91CC(*(v14 + 24));
  sub_22E6D9060();
}

__n128 AssetDownloadRequest.init(asset:destination:credential:range:applicationID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  UUID.init()();
  v15 = *a3;
  v16 = a3[1];
  v17 = type metadata accessor for AssetDownloadRequest(0);
  v18 = (a9 + v17[5]);
  *v18 = v15;
  v18[1] = v16;
  v19 = v17[6];

  sub_22E6D67B0(v15, v16, a9 + v19);
  sub_22E6D8FE8();
  sub_22E6D675C(a1, v20);
  v21 = a9 + v17[8];
  *v21 = a4;
  *(v21 + 8) = a5;
  *(v21 + 16) = a6 & 1;
  v22 = v17[9];
  type metadata accessor for URL();
  sub_22E6D901C();
  (*(v23 + 32))(a9 + v22, a2);
  sub_22E6D90B0();
  sub_22E6D898C(a3, a9 + v24);
  v25 = (a9 + v17[13]);
  *v25 = a7;
  v25[1] = a8;
  *(a9 + v17[11]) = xmmword_22E7263B0;
  sub_22E6D90E0();
  sub_22E6D89E0(a3, v26);
  result = xmmword_22E7263B0;
  *(a9 + v17[12]) = xmmword_22E7263B0;
  return result;
}

uint64_t static AssetDownloadRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AssetDownloadRequest(0);
  v5 = sub_22E6D3658(v4[5]);
  v9 = v5 == v8 && v6 == v7;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_22E6D919C(v4[6]);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = sub_22E6D919C(v4[7]);
  if (!static Asset.== infix(_:_:)(v10, v11))
  {
    return 0;
  }

  v12 = v4[8];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 16);
  v15 = a2 + v12;
  if (v14)
  {
    if (!*(v15 + 16))
    {
      return 0;
    }

LABEL_18:
    sub_22E6D919C(v4[9]);
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    v18 = sub_22E6D919C(v4[10]);
    if ((static Credential.== infix(_:_:)(v18, v19) & 1) == 0)
    {
      return 0;
    }

    v20 = sub_22E6D3658(v4[11]);
    if ((MEMORY[0x2318EC160](v20) & 1) == 0)
    {
      return 0;
    }

    v21 = sub_22E6D3658(v4[12]);
    if ((MEMORY[0x2318EC160](v21) & 1) == 0)
    {
      return 0;
    }

    v22 = v4[13];
    v23 = (a1 + v22);
    v24 = *(a1 + v22 + 8);
    v25 = (a2 + v22);
    v26 = v25[1];
    if (v24)
    {
      if (!v26)
      {
        return 0;
      }

      v27 = *v23 == *v25 && v24 == v26;
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((*(v15 + 16) & 1) == 0 && *v13 == *v15 && v13[1] == *(v15 + 8))
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_22E6D732C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E746E616E6574 && a2 == 0xEA0000000000656DLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000022E72CC60 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x800000022E72CC80 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x800000022E72CCA0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x746163696C707061 && a2 == 0xED000044496E6F69)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_22E6D764C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x614E746E616E6574;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7465737361;
      break;
    case 4:
      result = 0x65676E6172;
      break;
    case 5:
      result = 0x4C5255656C6966;
      break;
    case 6:
      result = 0x69746E6564657263;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x746163696C707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22E6D7778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6D732C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6D77A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6D7644();
  *a1 = result;
  return result;
}

uint64_t sub_22E6D77C8(uint64_t a1)
{
  v2 = sub_22E6D8938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6D7804(uint64_t a1)
{
  v2 = sub_22E6D8938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetDownloadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22E6CF1CC(&qword_27DA6C810, &unk_22E726FE0);
  sub_22E6CF988();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  sub_22E6CF214(a1, a1[3]);
  sub_22E6D8938();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  type metadata accessor for UUID();
  sub_22E6D9048();
  sub_22E6D8B54(v11, v12, MEMORY[0x277CC95F8]);
  sub_22E6D91F0();
  sub_22E6D9084();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for AssetDownloadRequest(0);
    sub_22E6D91D8(v13[5]);
    LOBYTE(v27) = 1;
    sub_22E6D90F8();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 2;
    v14 = type metadata accessor for URL();
    sub_22E6D9030();
    sub_22E6D8B54(v15, v16, MEMORY[0x277CC9268]);
    sub_22E6D90F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26[1] = v14;
    LOBYTE(v27) = 3;
    type metadata accessor for Asset(0);
    sub_22E6D90C8();
    sub_22E6D8B54(v17, v18, &protocol conformance descriptor for Asset);
    sub_22E6D9084();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = (v3 + v13[8]);
    v20 = *(v19 + 16);
    v27 = *v19;
    v28 = v20;
    v29 = 4;
    sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
    sub_22E6CF340(&qword_27DA6C5E8, MEMORY[0x277D83B90], MEMORY[0x277D83D08]);
    sub_22E6D9084();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v27) = 5;
    sub_22E6D90F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v27) = 6;
    type metadata accessor for Credential(0);
    sub_22E6D9098();
    sub_22E6D8B54(v21, v22, &protocol conformance descriptor for Credential);
    sub_22E6D9084();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v27 = sub_22E6D91D8(v13[11]);
    *(&v27 + 1) = v23;
    v29 = 7;
    sub_22E6CFB64(v27, v23);
    sub_22E6D0A5C();
    sub_22E6D90F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v27, *(&v27 + 1));
    *&v27 = sub_22E6D91D8(v13[12]);
    *(&v27 + 1) = v24;
    v29 = 8;
    sub_22E6CFB64(v27, v24);
    sub_22E6D90F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6CFBBC(v27, *(&v27 + 1));
    sub_22E6D91D8(v13[13]);
    LOBYTE(v27) = 9;
    sub_22E6D90F8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void AssetDownloadRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for UUID();
  sub_22E6D9048();
  sub_22E6D8B54(v3, v4, MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  v5 = type metadata accessor for AssetDownloadRequest(0);
  sub_22E6D367C();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_22E6D9030();
  sub_22E6D8B54(v6, v7, MEMORY[0x277CC9270]);
  sub_22E6D9164();
  dispatch thunk of Hashable.hash(into:)();
  v8 = v1 + v5[7];
  sub_22E6D9164();
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Asset.ID(0);
  sub_22E6D367C();
  String.hash(into:)();
  sub_22E6D367C();
  Data.hash(into:)();
  sub_22E6D367C();
  Data.hash(into:)();
  v9 = type metadata accessor for Asset(0);
  Data.hash(into:)();
  Data.hash(into:)();
  MEMORY[0x2318ECB90](*(v8 + *(v9 + 24)));
  v10 = (v2 + v5[8]);
  if (*(v10 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *v10;
    v11 = v10[1];
    Hasher._combine(_:)(1u);
    MEMORY[0x2318ECB90](v12);
    MEMORY[0x2318ECB90](v11);
  }

  sub_22E6D9164();
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Credential(0);
  type metadata accessor for Date();
  sub_22E6D8B54(&qword_27DA6C768, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22E6D9164();
  dispatch thunk of Hashable.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  if (*(v2 + v5[13] + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int AssetDownloadRequest.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetDownloadRequest.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t AssetDownloadRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v77 = type metadata accessor for Credential(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v3);
  sub_22E6CF9C8();
  v78 = v5 - v4;
  v80 = type metadata accessor for Asset(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v6);
  sub_22E6CF9C8();
  v79 = v8 - v7;
  type metadata accessor for URL();
  sub_22E6CF988();
  v88 = v10;
  v89 = v9;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v75 - v14;
  v16 = type metadata accessor for UUID();
  sub_22E6CF988();
  v84 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22E6CF9C8();
  v83 = sub_22E6CF1CC(&qword_27DA6C828, &qword_22E726FF0);
  sub_22E6CF988();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = v75 - v22;
  v90 = type metadata accessor for AssetDownloadRequest(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v24);
  sub_22E6CF9C8();
  v85 = a1;
  v86 = v26 - v25;
  sub_22E6CF214(a1, a1[3]);
  sub_22E6D8938();
  v81 = v23;
  v27 = v87;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v82 = v16;
  if (v27)
  {
    v87 = v27;
    return sub_22E6CF2F4(v85);
  }

  v28 = v79;
  v87 = v13;
  v75[2] = v20;
  LOBYTE(v91) = 0;
  sub_22E6D9048();
  sub_22E6D8B54(v29, v30, MEMORY[0x277CC9618]);
  sub_22E6D91F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v86;
  v36 = sub_22E6D9164();
  v37(v36);
  LOBYTE(v91) = 1;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v39 = (v35 + v90[5]);
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v91) = 2;
  sub_22E6D9030();
  v43 = sub_22E6D8B54(v41, v42, MEMORY[0x277CC9280]);
  v44 = v15;
  v45 = v89;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v75[1] = v43;
  v46 = v44;
  v47 = *(v88 + 32);
  v47(v35 + v90[6], v46, v45);
  LOBYTE(v91) = 3;
  sub_22E6D90C8();
  sub_22E6D8B54(v48, v49, &protocol conformance descriptor for Asset);
  sub_22E6D91F0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_22E6D8FE8();
  sub_22E6D675C(v28, v50);
  sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
  v93 = 4;
  sub_22E6CF340(&qword_27DA6C620, MEMORY[0x277D83BB8], MEMORY[0x277D83D38]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51 = v92;
  v52 = v35 + v90[8];
  *v52 = v91;
  *(v52 + 16) = v51;
  LOBYTE(v91) = 5;
  v53 = v87;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v54 = v90;
  v47(v35 + v90[9], v53, v45);
  LOBYTE(v91) = 6;
  sub_22E6D9098();
  sub_22E6D8B54(v55, v56, &protocol conformance descriptor for Credential);
  sub_22E6D91F0();
  v57 = v78;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v58 = v54;
  sub_22E6D9004();
  sub_22E6D675C(v57, v35 + v59);
  v93 = 7;
  sub_22E6D0730();
  sub_22E6D914C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v87 = 0;
  *(v35 + v54[11]) = v91;
  v93 = 8;
  sub_22E6D914C();
  v60 = v87;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v87 = v60;
  if (v60)
  {
    v61 = sub_22E6D913C();
    v62(v61);
    v63 = 0;
  }

  else
  {
    *(v35 + v54[12]) = v91;
    LOBYTE(v91) = 9;
    v64 = v87;
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v87 = v64;
    if (!v64)
    {
      v69 = v65;
      v70 = v66;
      v71 = sub_22E6D9188();
      v72(v71);
      v73 = v86;
      v74 = (v86 + v90[13]);
      *v74 = v69;
      v74[1] = v70;
      sub_22E6D898C(v73, v76);
      sub_22E6CF2F4(v85);
      return sub_22E6D89E0(v73, type metadata accessor for AssetDownloadRequest);
    }

    v67 = sub_22E6D9188();
    v68(v67);
    v63 = 1;
    v58 = v90;
    v35 = v86;
  }

  sub_22E6CF2F4(v85);
  (*(v84 + 8))(v35, v82);

  v34 = v89;
  (*(v88 + 8))(v35 + v58[6], v89);
  sub_22E6D89E0(v35 + v58[7], type metadata accessor for Asset);
  (*(v88 + 8))(v35 + v58[9], v34);
  sub_22E6D90E0();
  sub_22E6D89E0(v35 + v32, v33);
  result = sub_22E6CFBBC(*(v35 + v58[11]), *(v35 + v58[11] + 8));
  if (v63)
  {
    return sub_22E6CFBBC(*(v35 + v58[12]), *(v35 + v58[12] + 8));
  }

  return result;
}

Swift::Int sub_22E6D88C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  AssetDownloadRequest.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_22E6D8938()
{
  result = qword_27DA6C818;
  if (!qword_27DA6C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C818);
  }

  return result;
}

uint64_t sub_22E6D898C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v4(v3);
  sub_22E6D901C();
  v5 = sub_22E6D368C();
  v6(v5);
  return a2;
}

uint64_t sub_22E6D89E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22E6CF978();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22E6D8A38(void *a1)
{
  a1[1] = sub_22E6D8B54(&qword_27DA6C830, type metadata accessor for AssetDownloadRequest, &protocol conformance descriptor for AssetDownloadRequest);
  a1[2] = sub_22E6D8B54(&qword_27DA6C838, type metadata accessor for AssetDownloadRequest, &protocol conformance descriptor for AssetDownloadRequest);
  a1[3] = sub_22E6D8B54(&qword_27DA6C840, type metadata accessor for AssetDownloadRequest, &protocol conformance descriptor for AssetDownloadRequest);
  result = sub_22E6D8B54(&qword_27DA6C848, type metadata accessor for AssetDownloadRequest, &protocol conformance descriptor for AssetDownloadRequest);
  a1[4] = result;
  return result;
}

uint64_t sub_22E6D8B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22E6D8C0C(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    v1 = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      v4 = type metadata accessor for Asset(319);
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_22E6CF668(319);
      if (v6 > 0x3F)
      {
        return v4;
      }

      else
      {
        v1 = type metadata accessor for Credential(319);
        if (v7 <= 0x3F)
        {
          sub_22E6D8D28();
          v1 = v8;
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_22E6D8D28()
{
  if (!qword_27DA6C868)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA6C868);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetDownloadRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetDownloadRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22E6D8EE0()
{
  result = qword_27DA6C870;
  if (!qword_27DA6C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C870);
  }

  return result;
}

unint64_t sub_22E6D8F38()
{
  result = qword_27DA6C878;
  if (!qword_27DA6C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C878);
  }

  return result;
}

unint64_t sub_22E6D8F90()
{
  result = qword_27DA6C880;
  if (!qword_27DA6C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C880);
  }

  return result;
}

void sub_22E6D9060()
{
  v2 = (v0 + *(v1 + 52));
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + *(v1 + 32);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
}

uint64_t sub_22E6D9114(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  result = 0x616C506572616853;
  *v2 = 0x616C506572616853;
  v2[1] = 0xE900000000000079;
  return result;
}

__n128 sub_22E6D91CC@<Q0>(uint64_t a1@<X8>)
{
  result = *(v3 + a1);
  *(v2 + v1) = result;
  return result;
}

uint64_t sub_22E6D9234@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = sub_22E6CF1CC(a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v4 + v6, v7);
}

uint64_t sub_22E6D92AC(uint64_t *a1)
{
  v2[3] = v1;
  v4 = sub_22E6CF1CC(&qword_27DA6C888, &qword_22E7272A8);
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[6] = v5;
  v2[7] = v6;

  return MEMORY[0x2822009F8](sub_22E6D9380, v1, 0);
}

uint64_t sub_22E6D9380()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v0[2] = v0[7];

  sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22E6D9454(uint64_t a1)
{
  v26 = a1;
  v24 = sub_22E6CF1CC(&qword_27DA6C898, &qword_22E727350);
  sub_22E6CF988();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v25 = sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  sub_22E6CF988();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = sub_22E6CF1CC(&qword_27DA6C8A0, &qword_22E727358);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  swift_defaultActor_initialize();
  v18 = OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__results;
  v19 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v1 + v18, v26, v19);
  v21 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  sub_22E6CF58C(v17, 1, 1, v21);
  v27 = v17;
  (*(v3 + 104))(v6, *MEMORY[0x277D858A0], v24);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
  (*(v8 + 32))(v1 + OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__signals, v11, v25);
  sub_22E6D9E04(v17, v15);
  result = sub_22E6CF550(v15, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 8))(v26, v19);
    (*(*(v21 - 8) + 32))(v1 + OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator_continutation, v15, v21);
    sub_22E6D9E74(v17);
    return v1;
  }

  return result;
}

uint64_t sub_22E6D9794(uint64_t a1, uint64_t a2)
{
  sub_22E6D9E74(a2);
  v4 = sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_22E6CF58C(a2, 0, 1, v4);
}

uint64_t AssetsDownloadCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__results;
  sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  sub_22E6D9EDC();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__signals;
  sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  sub_22E6D9EDC();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator_continutation;
  sub_22E6CF1CC(&qword_27DA6C890, &qword_22E7272B0);
  sub_22E6D9EDC();
  (*(v6 + 8))(v0 + v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetsDownloadCoordinator.__deallocating_deinit()
{
  AssetsDownloadCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AssetsDownloadCoordinator(uint64_t a1)
{
  result = qword_2814682E8;
  if (!qword_2814682E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22E6D99C4(uint64_t a1)
{
  sub_22E6D5624(319);
  if (v1 <= 0x3F)
  {
    sub_22E6D9D80(319, &qword_2814681D8, MEMORY[0x277D858D8]);
    if (v2 <= 0x3F)
    {
      sub_22E6D9D80(319, &qword_2814681E0, MEMORY[0x277D858B0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of AssetsDownloadCoordinator.receive(signal:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22E6D9C8C;

  return v6(a1);
}

uint64_t sub_22E6D9C8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_22E6D9D80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_22E6CF2AC(&qword_27DA6C7C0, qword_22E726DC0);
    v7 = a3(a1, &type metadata for Signal, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22E6D9E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6C8A0, &qword_22E727358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6D9E74(uint64_t a1)
{
  v2 = sub_22E6CF1CC(&qword_27DA6C8A0, &qword_22E727358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E6D9EF0(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  v3 = MEMORY[0x277D84F90];
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = BYTE6(a2);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_43;
      }

      v8 = HIDWORD(a1) - a1;
LABEL_6:
      if (!v8)
      {
        goto LABEL_35;
      }

      v46 = MEMORY[0x277D84F90];
      sub_22E7071AC(0, v8 & ~(v8 >> 63), 0);
      v37 = v7;
      v38 = v5;
      v35 = v6;
      if (v2)
      {
        if (v2 == 2)
        {
          v11 = *(v5 + 16);
        }

        else
        {
          v11 = v5;
        }
      }

      else
      {
        v11 = 0;
      }

      if (v8 < 0)
      {
        goto LABEL_42;
      }

      v3 = v46;
      v36 = v5 >> 32;
      v33 = v5 >> 16;
      v34 = v5 >> 8;
      v31 = v5 >> 40;
      v32 = v5 >> 24;
      v29 = HIBYTE(v5);
      v30 = HIWORD(v5);
      v39 = v5;
      break;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    case 3uLL:
      goto LABEL_35;
    default:
      v8 = BYTE6(a2);
      goto LABEL_6;
  }

  do
  {
    if (v2 == 1)
    {
      if (v11 < v38 || v11 >= v36)
      {
        goto LABEL_38;
      }

      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_45;
      }

      v15 = v14;
      v16 = __DataStorage._offset.getter();
      v17 = v11 - v16;
      if (__OFSUB__(v11, v16))
      {
        goto LABEL_40;
      }

LABEL_31:
      v12 = *(v15 + v17);
      goto LABEL_32;
    }

    if (v2)
    {
      if (v11 < *(v5 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      if (v11 >= *(v5 + 24))
      {
        goto LABEL_39;
      }

      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
        goto LABEL_46;
      }

      v15 = v18;
      v19 = __DataStorage._offset.getter();
      v17 = v11 - v19;
      if (__OFSUB__(v11, v19))
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    if (v11 >= v37)
    {
      goto LABEL_37;
    }

    LOBYTE(v40) = v5;
    BYTE1(v40) = v34;
    BYTE2(v40) = v33;
    BYTE3(v40) = v32;
    BYTE4(v40) = v35;
    BYTE5(v40) = v31;
    BYTE6(v40) = v30;
    HIBYTE(v40) = v29;
    v41 = a2;
    v42 = BYTE2(a2);
    v43 = BYTE3(a2);
    v44 = BYTE4(a2);
    v45 = BYTE5(a2);
    v12 = *(&v40 + v11);
LABEL_32:
    sub_22E6CF1CC(&qword_27DA6C8B0, &qword_22E727368);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22E726B10;
    *(v20 + 56) = MEMORY[0x277D84B78];
    *(v20 + 64) = MEMORY[0x277D84BC0];
    *(v20 + 32) = v12;
    v21 = String.init(format:_:)();
    v23 = v22;
    v46 = v3;
    v25 = *(v3 + 16);
    v24 = *(v3 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_22E7071AC((v24 > 1), v25 + 1, 1);
      v3 = v46;
    }

    *(v3 + 16) = v25 + 1;
    v26 = v3 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
    ++v11;
    --v8;
    v5 = v39;
  }

  while (v8);
LABEL_35:
  v40 = v3;
  sub_22E6CF1CC(&qword_27DA6C8B8, &qword_22E728C80);
  sub_22E6DA77C();
  v27 = BidirectionalCollection<>.joined(separator:)();

  return v27;
}

void sub_22E6DA278()
{
  v2 = v0;
  v21[11] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22E6DA4D0();
  v7 = *(v4 + 16);
  v7(v6, v2, v3);
  v8 = sub_22E6DA514(v6);
  if (!v1)
  {
    v9 = v8;
    v10 = [v8 fileDescriptor];
    v21[0] = 65542;
    v11 = ffsctl(v10, 0xC0084A44uLL, v21, 0);
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      sub_22E6CF1CC(&qword_27DA6C8A8, &qword_22E727360);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22E726B10;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v17;
      *(inited + 72) = v3;
      v18 = sub_22E6DA66C((inited + 48));
      v7(v18, v2, v3);
      v19 = Dictionary.init(dictionaryLiteral:)();
      v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_22E6DA6CC(v13, v15, v12, v19);
      swift_willThrow();
    }

    [v9 closeFile];
  }
}

unint64_t sub_22E6DA4D0()
{
  result = qword_27DA6C9F0;
  if (!qword_27DA6C9F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA6C9F0);
  }

  return result;
}

id sub_22E6DA514(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v13);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t *sub_22E6DA66C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

id sub_22E6DA6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x2318EC5C0](a1);

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

unint64_t sub_22E6DA77C()
{
  result = qword_27DA6C8C0;
  if (!qword_27DA6C8C0)
  {
    sub_22E6CF2AC(&qword_27DA6C8B8, &qword_22E728C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C8C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCServiceNames(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22E6DA8F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_22E6E3D98(0x7465737361, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
    if (v6 || (sub_22E6E3D98(0x69746E6564657263, 0xEA00000000006C61) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
      if (v7 || (sub_22E6E3D98(0x7079547465737361, 0xE900000000000065) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = sub_22E6E3E14();
        if (a1 == v8 && a2 == v9)
        {

          return 3;
        }

        else
        {
          v11 = sub_22E6E3D98(v8, v9);

          if (v11)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

uint64_t sub_22E6DAA14(char a1)
{
  result = 0x7465737361;
  switch(a1)
  {
    case 1:
      result = 0x69746E6564657263;
      break;
    case 2:
      result = 0x7079547465737361;
      break;
    case 3:
      result = sub_22E6E3E14();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22E6DAAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6DA8F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6DAAD8(uint64_t a1)
{
  v2 = sub_22E6E2CD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6DAB14(uint64_t a1)
{
  v2 = sub_22E6E2CD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6DAB50()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6C8D0);
  sub_22E6E3578(v0, qword_27DA6C8D0);
  type metadata accessor for AssetStreamHandle(0);
  sub_22E6CF1CC(&qword_27DA6CA18, &qword_22E727850);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_22E6DABF4()
{
  result = sub_22E6DAC14();
  qword_27DA6C8E8 = result;
  return result;
}

uint64_t sub_22E6DAC14()
{
  if (qword_27DA6C468 != -1)
  {
    swift_once();
  }

  v0 = 0xD000000000000022;
  v1 = off_27DA6D510;
  os_unfair_lock_lock(off_27DA6D510 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 5);
  if (os_unfair_lock_opaque_low)
  {
    v3 = 0x800000022E72CD60;
    if (!static TestConfigurations.isSystemInstalledBinary()())
    {
      v0 = sub_22E6DAD10(0x67756265642ELL, 0xE600000000000000, 0xD000000000000022, 0x800000022E72CD60);
      v3 = v4;
    }
  }

  else
  {
    v3 = 0x800000022E72CD10;
    v0 = 0xD00000000000001BLL;
  }

  type metadata accessor for AssetManager();
  swift_allocObject();
  return AssetManager.init(serviceName:)(v0, v3);
}

uint64_t sub_22E6DAD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v5;
}

void AssetStreamHandle.init(from:)()
{
  sub_22E6D37D4();
  v89 = v2;
  v90 = v0;
  v88 = v3;
  v96 = v4;
  type metadata accessor for Google_Protobuf_Timestamp();
  sub_22E6CF988();
  v83 = v6;
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22E6E39D4();
  v82 = v7;
  v8 = sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
  sub_22E6D376C(v8);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  v80 = &v77 - v10;
  v11 = sub_22E6D37B0();
  v79 = type metadata accessor for CloudAssets_Credential(v11);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v12);
  sub_22E6E39D4();
  v81 = v13;
  v14 = sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
  sub_22E6D376C(v14);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v15);
  v86 = &v77 - v16;
  v17 = sub_22E6D37B0();
  v87 = type metadata accessor for CloudAssets_Asset(v17);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v18);
  sub_22E6E39D4();
  v85 = v19;
  v20 = sub_22E6D37B0();
  v21 = type metadata accessor for Asset(v20);
  v22 = sub_22E6D376C(v21);
  MEMORY[0x28223BE20](v22);
  sub_22E6CF9C8();
  sub_22E6D3894();
  v23 = type metadata accessor for BinaryDecodingOptions();
  v24 = sub_22E6D376C(v23);
  MEMORY[0x28223BE20](v24);
  sub_22E6CF9C8();
  v25 = type metadata accessor for CloudAssets_AssetStreamHandle(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v26);
  sub_22E6CF9C8();
  v29 = (v28 - v27);
  v30 = type metadata accessor for AssetStreamHandle(0);
  v31 = *(v30 + 32);
  type metadata accessor for AssetStreamHandle.RangeReadersCache();
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
  type metadata accessor for AssetStreamHandle.RangeReader(0);
  sub_22E6E2074();
  v33 = v88;
  *(v32 + 112) = Dictionary.init(dictionaryLiteral:)();
  *(v96 + v31) = v32;
  v34 = v29;
  v35 = v89;
  v94 = v33;
  v95 = v89;
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  sub_22E6CFB64(v33, v89);
  BinaryDecodingOptions.init()();
  sub_22E6E3B4C();
  sub_22E6E224C(v36, v37, &unk_22E7283D8);
  v38 = v90;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v38)
  {
    sub_22E6CFBBC(v33, v35);
  }

  else
  {
    v90 = v1;
    v77 = v30;
    v39 = v29 + *(v25 + 28);
    v41 = v85;
    v40 = v86;
    sub_22E6D3568(v39, v86, &unk_27DA6C910, &unk_22E726D20);
    if (sub_22E6CF550(v40, 1, v87) == 1)
    {
      *v41 = 0;
      UnknownStorage.init()();
      v78 = v34;
      type metadata accessor for CloudAssets_Asset.ID(0);
      sub_22E6E3D34();
      sub_22E6CF58C(v42, v43, v44, v45);
      type metadata accessor for CloudAssets_Asset.Protector(0);
      v34 = v78;
      sub_22E6E3D34();
      sub_22E6CF58C(v46, v47, v48, v49);
      sub_22E6E3F28();
      if (sub_22E6CF550(v50, v51, v52) != 1)
      {
        sub_22E6D3510(v40, &unk_27DA6C910, &unk_22E726D20);
      }
    }

    else
    {
      sub_22E6E3B1C();
      sub_22E6E2148(v40, v41);
    }

    v53 = v90;
    sub_22E6D1990(v41);
    sub_22E6E3A78();
    sub_22E6E2148(v53, v96);
    v54 = v80;
    sub_22E6D3568(v34 + *(v25 + 32), v80, &qword_27DA6C7A8, &unk_22E7273B0);
    v55 = v79;
    v56 = sub_22E6CF550(v54, 1, v79);
    v78 = v34;
    if (v56 == 1)
    {
      v57 = v81;
      *v81 = 0;
      v57[1] = 0xE000000000000000;
      v57[2] = 0;
      v57[3] = 0xE000000000000000;
      v57[4] = 0;
      v57[5] = 0xE000000000000000;
      UnknownStorage.init()();
      sub_22E6E3D34();
      sub_22E6CF58C(v58, v59, v60, v84);
      v61 = sub_22E6CF550(v54, 1, v55);
      v62 = v82;
      v63 = v83;
      v64 = v77;
      if (v61 != 1)
      {
        sub_22E6D3510(v54, &qword_27DA6C7A8, &unk_22E7273B0);
      }
    }

    else
    {
      sub_22E6E3BC4();
      v57 = v81;
      sub_22E6E2148(v54, v81);
      v62 = v82;
      v63 = v83;
      v64 = v77;
    }

    v65 = (v96 + *(v64 + 20));
    v66 = v57[1];
    *v65 = *v57;
    v65[1] = v66;
    v67 = v57[3];
    v65[2] = v57[2];
    v65[3] = v67;
    v68 = v57[5];
    v65[4] = v57[4];
    v65[5] = v68;

    sub_22E6E4AE4(v62);
    type metadata accessor for Credential(0);
    Google_Protobuf_Timestamp.date.getter();
    sub_22E6CFBBC(v33, v35);
    (*(v63 + 8))(v62, v84);
    sub_22E6E20F0(v57, type metadata accessor for CloudAssets_Credential);
    v70 = v77;
    v69 = v78;
    v71 = v78[1];
    v72 = (v96 + *(v77 + 24));
    *v72 = *v78;
    v72[1] = v71;
    v74 = *(v69 + 16);
    v73 = *(v69 + 24);

    sub_22E6E3A90();
    sub_22E6E20F0(v69, v75);
    v76 = (v96 + *(v70 + 28));
    *v76 = v74;
    v76[1] = v73;
  }

  sub_22E6D37BC();
}

void AssetStreamHandle.serializedData()()
{
  sub_22E6D37D4();
  v49 = type metadata accessor for Date();
  sub_22E6CF988();
  v47 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22E6E39D4();
  v46 = v4;
  sub_22E6D37B0();
  v45 = type metadata accessor for Google_Protobuf_Timestamp();
  sub_22E6CF988();
  MEMORY[0x28223BE20](v5);
  sub_22E6E39D4();
  v6 = sub_22E6D37B0();
  v7 = type metadata accessor for CloudAssets_Credential(v6);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v8);
  sub_22E6CF9C8();
  v11 = (v10 - v9);
  v12 = type metadata accessor for CloudAssets_Asset(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v13);
  sub_22E6CF9C8();
  v16 = (v15 - v14);
  v48 = type metadata accessor for CloudAssets_AssetStreamHandle(0);
  MEMORY[0x28223BE20](v48);
  sub_22E6CF9C8();
  sub_22E6D3894();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  UnknownStorage.init()();
  v17 = *(v48 + 28);
  sub_22E6E3D34();
  sub_22E6CF58C(v18, v19, v20, v12);
  v21 = *(v48 + 32);
  sub_22E6E3D34();
  sub_22E6CF58C(v22, v23, v24, v7);
  v44 = v0;
  sub_22E6D227C(v16);
  sub_22E6D3510(v1 + v17, &unk_27DA6C910, &unk_22E726D20);
  sub_22E6E3B1C();
  sub_22E6E2148(v16, v1 + v17);
  sub_22E6CF58C(v1 + v17, 0, 1, v12);
  v42 = v7;
  v43 = type metadata accessor for AssetStreamHandle(0);
  v25 = (v0 + v43[5]);
  UnknownStorage.init()();
  v26 = *(v7 + 32);
  sub_22E6E3D34();
  sub_22E6CF58C(v27, v28, v29, v45);
  v30 = v25[1];
  *v11 = *v25;
  v11[1] = v30;
  v31 = v25[3];
  v11[2] = v25[2];
  v11[3] = v31;
  v32 = v25[5];
  v11[4] = v25[4];
  v11[5] = v32;
  v33 = v25 + *(type metadata accessor for Credential(0) + 28);
  (*(v47 + 16))(v46, v33, v49);

  Google_Protobuf_Timestamp.init(date:)();
  sub_22E6D3510(v11 + v26, &qword_27DA6C930, &unk_22E727910);
  sub_22E6E3F1C();
  v34();
  sub_22E6CF58C(v11 + v26, 0, 1, v45);
  sub_22E6D3510(v1 + v21, &qword_27DA6C7A8, &unk_22E7273B0);
  sub_22E6E3BC4();
  sub_22E6E2148(v11, v1 + v21);
  sub_22E6CF58C(v1 + v21, 0, 1, v42);
  v35 = v43[7];
  v36 = (v0 + v43[6]);
  v37 = v36[1];
  *v1 = *v36;
  v1[1] = v37;
  v38 = *(v0 + v35 + 8);
  v1[2] = *(v44 + v35);
  v1[3] = v38;
  sub_22E6E3B4C();
  sub_22E6E224C(v39, v40, &unk_22E7283D8);

  Message.serializedData(partial:)();
  sub_22E6E3A90();
  sub_22E6E20F0(v1, v41);
  sub_22E6D368C();
  sub_22E6D37BC();
}

void static AssetStreamHandle.makeAssetStreamHandle(partition:owner:accessToken:requestorID:signature:referenceSignature:size:assetKey:filenameExtension:applicationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22E6D37D4();
  v69 = v30;
  v67 = v31;
  v68 = v32;
  v66 = v33;
  v35 = v34;
  v36 = type metadata accessor for Credential(0);
  v37 = sub_22E6D376C(v36);
  MEMORY[0x28223BE20](v37);
  sub_22E6CF9C8();
  v40 = (v39 - v38);
  v41 = type metadata accessor for Asset(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v42);
  sub_22E6CF9C8();
  v45 = v44 - v43;
  v46 = type metadata accessor for Asset.ID(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v47);
  sub_22E6CF9C8();
  v50 = v49 - v48;
  if (sub_22E6DBB80(a25, a26))
  {
    sub_22E6E21F8();
    swift_allocError();
    *v51 = xmmword_22E727390;
    *(v51 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for URL();
    sub_22E6CF978();
    (*(v52 + 16))(v50, v66);
    v53 = (v50 + v46[5]);
    *v53 = v67;
    v53[1] = v68;
    v54 = (v50 + v46[6]);
    *v54 = v69;
    v54[1] = a21;
    v55 = (v50 + v46[7]);
    *v55 = a22;
    v55[1] = a23;
    sub_22E6E21A0(v50, v45);
    v56 = v45 + *(v41 + 20);
    *v56 = a25;
    *(v56 + 8) = a26;
    *(v56 + 16) = xmmword_22E7263B0;
    *(v45 + *(v41 + 24)) = a24;
    type metadata accessor for Credential.Builder(0);
    swift_allocObject();

    sub_22E6CFB64(v69, a21);
    sub_22E6CFB64(a22, a23);
    sub_22E6CFB64(a25, a26);

    Credential.Builder.init(tenantName:requestorID:accessToken:)();
    Credential.Builder.build()(v40);

    sub_22E6E398C();
    v57 = v35;
    sub_22E6E21A0(v45, v35);
    v58 = type metadata accessor for AssetStreamHandle(0);
    sub_22E6E39E8();
    sub_22E6E21A0(v40, v35 + v59);
    v60 = v58[8];
    type metadata accessor for AssetStreamHandle.RangeReadersCache();
    v61 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
    type metadata accessor for AssetStreamHandle.RangeReader(0);
    sub_22E6E2074();
    *(v61 + 112) = Dictionary.init(dictionaryLiteral:)();
    sub_22E6E3A48();
    sub_22E6E20F0(v40, v62);
    sub_22E6E39BC();
    sub_22E6E20F0(v45, v63);
    sub_22E6E20F0(v50, type metadata accessor for Asset.ID);
    *(v57 + v60) = v61;
    v64 = (v57 + v58[6]);
    *v64 = a27;
    v64[1] = a28;
    v65 = (v57 + v58[7]);
    *v65 = a29;
    v65[1] = a30;
  }

  sub_22E6D37BC();
}

BOOL sub_22E6DBB80(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

id AssetStreamHandle.makeAVPlayerItem(with:options:)(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v77 = a1;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_22E6CF988();
  v75 = v3;
  v76 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22E6E39D4();
  v74 = v4;
  sub_22E6D37B0();
  v72 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_22E6CF978();
  MEMORY[0x28223BE20](v5);
  sub_22E6E39D4();
  v73 = v6;
  sub_22E6D37B0();
  v7 = type metadata accessor for DispatchQoS();
  v8 = sub_22E6D376C(v7);
  MEMORY[0x28223BE20](v8);
  sub_22E6E39D4();
  v71 = v9;
  v10 = sub_22E6D37B0();
  v67[1] = type metadata accessor for AssetStreamHandle(v10);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v11);
  sub_22E6E39D4();
  v68 = v12;
  sub_22E6D37B0();
  v13 = type metadata accessor for UUID();
  sub_22E6CF988();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22E6CF9C8();
  v19 = v18 - v17;
  v20 = sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  v21 = sub_22E6D376C(v20);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v67 - v25;
  v27 = type metadata accessor for URL();
  sub_22E6CF988();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22E6CF9C8();
  v33 = v32 - v31;
  sub_22E6D3568(v77, v26, &qword_27DA6C940, &qword_22E7273D0);
  sub_22E6E3F28();
  if (sub_22E6CF550(v34, v35, v36) != 1)
  {
    (*(v29 + 32))(v33, v26, v27);
LABEL_6:
    v47 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v48 = v69;

    v50 = sub_22E6E2294(v33, v48, v49);
    v51 = v70;
    v52 = objc_allocWithZone(type metadata accessor for LoadingRequestHandler(0));
    sub_22E6E3A00();
    sub_22E6E21A0(v51, v68);

    sub_22E6E3F1C();
    v56 = sub_22E6E2924(v53, v54, v55, v52);
    v57 = [v50 resourceLoader];
    sub_22E6E38DC(0, &qword_27DA6C950, 0x277D85C78);
    v58 = v56;
    static DispatchQoS.unspecified.getter();
    v78 = MEMORY[0x277D84F90];
    sub_22E6E3BAC();
    sub_22E6E224C(v59, v60, MEMORY[0x277D85238]);
    sub_22E6CF1CC(&qword_27DA6C960, &qword_22E7273D8);
    v61 = sub_22E6E2BC0();
    sub_22E6E3FA4(&v78, v62, v61, v72);
    (*(v75 + 104))(v74, *MEMORY[0x277D85260], v76);
    v63 = sub_22E6E3BE8();
    sub_22E6E3F10();
    [v64 v65];

    v66 = objc_allocWithZone(type metadata accessor for PlayerItem(0));
    return sub_22E6E2644(v50, v58, v66);
  }

  sub_22E6E3CA4();
  UUID.init()();
  sub_22E6E39A4();
  sub_22E6E224C(v37, v38, MEMORY[0x277CC9628]);
  v39 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2318EC630](v39);

  (*(v15 + 8))(v19, v13);
  URL.init(string:)();

  sub_22E6E3F28();
  result = sub_22E6CF550(v40, v41, v42);
  if (result != 1)
  {
    (*(v29 + 32))(v33, v24, v27);
    sub_22E6E3F28();
    if (sub_22E6CF550(v44, v45, v46) != 1)
    {
      sub_22E6D3510(v26, &qword_27DA6C940, &qword_22E7273D0);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void AssetStreamHandle.makeAVAssetExportSession(with:options:presetName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a2;
  v68 = a3;
  v69 = a4;
  v70 = a1;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_22E6CF988();
  v66 = v6;
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22E6E39D4();
  v65 = v7;
  sub_22E6D37B0();
  v63 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_22E6CF978();
  MEMORY[0x28223BE20](v8);
  sub_22E6E39D4();
  v64 = v9;
  sub_22E6D37B0();
  v10 = type metadata accessor for DispatchQoS();
  v11 = sub_22E6D376C(v10);
  MEMORY[0x28223BE20](v11);
  sub_22E6E39D4();
  v62 = v12;
  v13 = sub_22E6D37B0();
  v58[1] = type metadata accessor for AssetStreamHandle(v13);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v14);
  sub_22E6E39D4();
  v59 = v15;
  sub_22E6D37B0();
  v16 = type metadata accessor for UUID();
  sub_22E6CF988();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22E6CF9C8();
  v22 = v21 - v20;
  v23 = sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0);
  v24 = sub_22E6D376C(v23);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v58 - v28;
  v30 = type metadata accessor for URL();
  sub_22E6CF988();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  sub_22E6CF9C8();
  sub_22E6D3894();
  sub_22E6D3568(v70, v29, &qword_27DA6C940, &qword_22E7273D0);
  if (sub_22E6E3FC4(v29) != 1)
  {
    (*(v32 + 32))(v4, v29, v30);
LABEL_6:
    v37 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v38 = v60;

    v40 = sub_22E6E2294(v4, v38, v39);
    v41 = v61;
    v42 = objc_allocWithZone(type metadata accessor for LoadingRequestHandler(0));
    sub_22E6E3A00();
    sub_22E6E21A0(v41, v59);

    sub_22E6E3F1C();
    v46 = sub_22E6E2924(v43, v44, v45, v42);
    v47 = [v40 resourceLoader];
    sub_22E6E38DC(0, &qword_27DA6C950, 0x277D85C78);
    v48 = v46;
    static DispatchQoS.unspecified.getter();
    v71 = MEMORY[0x277D84F90];
    sub_22E6E3BAC();
    sub_22E6E224C(v49, v50, MEMORY[0x277D85238]);
    sub_22E6CF1CC(&qword_27DA6C960, &qword_22E7273D8);
    v51 = sub_22E6E2BC0();
    sub_22E6E3FA4(&v71, v52, v51, v63);
    (*(v66 + 104))(v65, *MEMORY[0x277D85260], v67);
    v53 = sub_22E6E3BE8();
    sub_22E6E3F10();
    [v54 v55];

    v56 = objc_allocWithZone(type metadata accessor for AssetExportSession());
    v57 = v69;

    sub_22E6E2C24(v40, v68, v57, v48, v56);
    return;
  }

  sub_22E6E3CA4();
  UUID.init()();
  sub_22E6E39A4();
  sub_22E6E224C(v34, v35, MEMORY[0x277CC9628]);
  v36 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2318EC630](v36);

  (*(v18 + 8))(v22, v16);
  URL.init(string:)();

  if (sub_22E6E3FC4(v27) != 1)
  {
    (*(v32 + 32))(v4, v27, v30);
    if (sub_22E6E3FC4(v29) != 1)
    {
      sub_22E6D3510(v29, &qword_27DA6C940, &qword_22E7273D0);
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t AssetStreamHandle.encode(to:)(uint64_t a1)
{
  v3 = sub_22E6CF1CC(&qword_27DA6C970, &qword_22E7273E0);
  sub_22E6CF988();
  v5 = v4;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v6);
  sub_22E6D3894();
  v7 = sub_22E6E3EF8();
  sub_22E6CF214(v7, v8);
  sub_22E6E2CD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Asset(0);
  sub_22E6E3B7C();
  sub_22E6E224C(v9, v10, &protocol conformance descriptor for Asset);
  sub_22E6E3F10();
  sub_22E6E3ED4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AssetStreamHandle(0);
    type metadata accessor for Credential(0);
    sub_22E6E3B64();
    sub_22E6E224C(v11, v12, &protocol conformance descriptor for Credential);
    sub_22E6E3F10();
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_22E6E3ED4();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v2, v3);
}

void AssetStreamHandle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22E6D37D4();
  v73 = v24;
  v26 = v25;
  v66 = v27;
  v69 = type metadata accessor for Credential(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v28);
  sub_22E6E39D4();
  v68 = v29;
  v30 = sub_22E6D37B0();
  type metadata accessor for Asset(v30);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v31);
  sub_22E6E39D4();
  v70 = v32;
  v72 = sub_22E6CF1CC(&unk_27DA6C990, &qword_22E7273E8);
  sub_22E6CF988();
  v67 = v33;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v34);
  v36 = &v65 - v35;
  v37 = type metadata accessor for AssetStreamHandle(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v38);
  sub_22E6CF9C8();
  v41 = v40 - v39;
  v43 = *(v42 + 32);
  type metadata accessor for AssetStreamHandle.RangeReadersCache();
  v44 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);
  v45 = sub_22E6D3778();
  type metadata accessor for AssetStreamHandle.RangeReader(v45);
  sub_22E6E2074();
  *(v44 + 112) = Dictionary.init(dictionaryLiteral:)();
  *(v41 + v43) = v44;
  v46 = v26[3];
  v74 = v26;
  sub_22E6CF214(v26, v46);
  sub_22E6E2CD4();
  v71 = v36;
  v47 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v47)
  {
    sub_22E6CF2F4(v74);
  }

  else
  {
    sub_22E6E3B7C();
    sub_22E6E224C(v48, v49, &protocol conformance descriptor for Asset);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_22E6E3A78();
    v50 = v41;
    sub_22E6E2148(v70, v41);
    sub_22E6E3B64();
    sub_22E6E224C(v51, v52, &protocol conformance descriptor for Credential);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53 = v37;
    sub_22E6E3B34();
    sub_22E6E2148(v55, v50 + v54);
    v56 = KeyedDecodingContainer.decode(_:forKey:)();
    v57 = (v50 + *(v37 + 24));
    *v57 = v56;
    v57[1] = v58;
    v59 = KeyedDecodingContainer.decode(_:forKey:)();
    v61 = v60;
    v62 = sub_22E6E3EBC();
    v63(v62);
    v64 = (v50 + *(v53 + 28));
    *v64 = v59;
    v64[1] = v61;
    sub_22E6E3A00();
    sub_22E6E21A0(v50, v66);
    sub_22E6CF2F4(v74);
    sub_22E6E20F0(v50, type metadata accessor for AssetStreamHandle);
  }

  sub_22E6D37BC();
}

uint64_t sub_22E6DCD14()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6C8F0);
  sub_22E6E3578(v0, qword_27DA6C8F0);
  type metadata accessor for AssetStreamHandle.RangeReader(0);
  sub_22E6CF1CC(&qword_27DA6C9E0, &qword_22E727808);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_22E6DCDB8@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  v21[0] = 0;
  v7 = [v6 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v21];

  v8 = v21[0];
  if (v7)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = [v5 defaultManager];
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    v21[0] = 0;
    v14 = [v10 URLForDirectory:99 inDomain:1 appropriateForURL:v12 create:1 error:v21];

    v15 = v21[0];
    if (v14)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v19 = v21[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    v17 = v21[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_22E6DCFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v48 = a6;
  v7 = v6;
  v47 = a5;
  v45 = type metadata accessor for URL.DirectoryHint();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for URL();
  v44 = *(v46 - 8);
  v13 = MEMORY[0x28223BE20](v46);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v41 = &v39 - v16;
  swift_defaultActor_initialize();
  v17 = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_asset;
  v18 = a1;
  sub_22E6E21A0(a1, v6 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_asset);
  v19 = (v6 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
  v39 = a2;
  v40 = a3;
  *v19 = a2;
  v19[1] = a3;
  v20 = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_credential;
  v50 = a4;
  sub_22E6E21A0(a4, v6 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_credential);
  v21 = (v6 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_applicationID);
  v22 = v48;
  *v21 = v47;
  v21[1] = v22;
  v48 = v15;
  v23 = v49;
  sub_22E6DCDB8(v15);
  if (v23)
  {
    sub_22E6E20F0(v6 + v17, type metadata accessor for Asset);
    sub_22E6E20F0(v6 + v20, type metadata accessor for Credential);

    type metadata accessor for AssetStreamHandle.RangeReader(0);
    swift_defaultActor_destroy();
    sub_22E6E20F0(v50, type metadata accessor for Credential);
    sub_22E6E20F0(v18, type metadata accessor for Asset);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = type metadata accessor for Asset.ID(0);
    v25 = v18;
    v51 = sub_22E6D9EF0(*(v18 + *(v24 + 24)), *(v18 + *(v24 + 24) + 8));
    v52 = v26;
    MEMORY[0x2318EC630](95, 0xE100000000000000);
    v27 = sub_22E6D9EF0(*(v18 + *(v24 + 28)), *(v18 + *(v24 + 28) + 8));
    MEMORY[0x2318EC630](v27);

    MEMORY[0x2318EC630](95, 0xE100000000000000);
    v53 = v39;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2318EC630](v28);

    MEMORY[0x2318EC630](95, 0xE100000000000000);
    v53 = v40;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2318EC630](v29);

    v31 = v42;
    v30 = v43;
    v32 = v45;
    (*(v43 + 104))(v42, *MEMORY[0x277CC91D8], v45);
    sub_22E6D0038();
    v33 = v41;
    v34 = v48;
    URL.appending<A>(component:directoryHint:)();
    sub_22E6E20F0(v50, type metadata accessor for Credential);
    (*(v30 + 8))(v31, v32);

    v35 = v44;
    v36 = v34;
    v37 = v46;
    (*(v44 + 8))(v36, v46);
    sub_22E6E20F0(v25, type metadata accessor for Asset);
    (*(v35 + 32))(v7 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL, v33, v37);
    *(v7 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cacheState) = 0;
  }

  return v7;
}

id sub_22E6DD4D8()
{
  v2 = v1;
  v3 = v0;
  v46[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Asset(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22E6E38DC(0, &qword_27DA6C9F0, 0x277CCA9F8);
  (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL, v7);
  v12 = v10;
  v13 = v11;
  v14 = sub_22E6DA514(v12);
  if (!v1)
  {
    v45 = v4;
    v15 = v3 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range;
    v16 = *(v3 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
    if (v16 < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v14;
      v46[0] = 0;
      v17 = [v14 seekToOffset:v16 error:v46];
      v13 = v46[0];
      if (!v17)
      {
        v37 = v46[0];
        _convertNSErrorToError(_:)();

LABEL_10:
        swift_willThrow();

        return v13;
      }

      v44 = *(v15 + 8);
      if (!__OFSUB__(v44, v16))
      {
        v18 = v46[0];
        v19 = NSFileHandle.read(upToCount:)();
        if (v20 >> 60 != 15)
        {
          v13 = v19;

          return v13;
        }

        if (qword_27DA6C3E0 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_7:
    v21 = type metadata accessor for Logger();
    sub_22E6E3578(v21, qword_27DA6C8F0);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = v23;
      v25 = v24;
      v43 = swift_slowAlloc();
      v46[0] = v43;
      *v25 = 136315650;
      sub_22E6E224C(&qword_27DA6C9F8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v41 = v22;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = sub_22E706BF8(v26, v27, v46);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = sub_22E6E35C0(v16, v44);
      v31 = sub_22E706BF8(v29, v30, v46);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2080;
      sub_22E6E21A0(v3 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_asset, v6);
      v32 = String.init<A>(describing:)();
      v34 = sub_22E706BF8(v32, v33, v46);

      *(v25 + 24) = v34;
      v35 = v41;
      _os_log_impl(&dword_22E6C9000, v41, v42, "read from %s for range %s of asset %s failed", v25, 0x20u);
      v36 = v43;
      swift_arrayDestroy();
      MEMORY[0x2318ED210](v36, -1, -1);
      MEMORY[0x2318ED210](v25, -1, -1);
    }

    else
    {
    }

    v13 = 0x800000022E72CF40;
    sub_22E6E21F8();
    swift_allocError();
    *v39 = 0xD000000000000027;
    *(v39 + 8) = 0x800000022E72CF40;
    *(v39 + 16) = 2;
    goto LABEL_10;
  }

  return v13;
}

void sub_22E6DD97C()
{
  v1 = *v0;
  v2 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v4, 1, 1, v5);
  v6 = sub_22E6E224C(&qword_27DA6C9E8, type metadata accessor for AssetStreamHandle.RangeReader, &unk_22E727748);
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v6;
  v7[4] = v0;
  v7[5] = v1;
  swift_retain_n();
  sub_22E6FA5E0(0, 0, v4, &unk_22E727818, v7);
}

uint64_t sub_22E6DDAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = type metadata accessor for AssetDownloadResponse(0);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for Asset(0);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  type metadata accessor for Credential(0);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for AssetDownloadRequest(0);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6DDCAC, a4, 0);
}

uint64_t sub_22E6DDCAC(uint64_t a1)
{
  v60 = v1;
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[16];
  v55 = v1[10];
  v57 = v1[9];
  v58 = v1[15];
  v5 = v1[4];
  v1[19] = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_asset;
  sub_22E6E398C();
  v52 = v6;
  sub_22E6E21A0(v5 + v6, v2 + v7);
  v8 = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL;
  v1[20] = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL;
  v9 = v3[9];
  type metadata accessor for URL();
  sub_22E6CF978();
  (*(v10 + 16))(v2 + v9, v5 + v8);
  sub_22E6E39E8();
  sub_22E6E21A0(v5 + v11, v4);
  v12 = v5 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range;
  v13 = *(v5 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
  v1[21] = v13;
  v14 = *(v12 + 8);
  v1[22] = v14;
  v15 = *(v5 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_applicationID + 8);
  v53 = v5;
  v54 = *(v5 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_applicationID);

  UUID.init()();
  v16 = v4[1];
  v17 = (v2 + v3[5]);
  *v17 = *v4;
  v17[1] = v16;

  sub_22E6D8FE4();
  v18 = v2 + v3[8];
  v51 = v13;
  *v18 = v13;
  *(v18 + 8) = v14;
  *(v18 + 16) = 0;
  sub_22E6E21A0(v4, v2 + v3[10]);
  v19 = (v2 + v3[13]);
  *v19 = v54;
  v19[1] = v15;
  *(v2 + v3[11]) = xmmword_22E7263B0;
  sub_22E6E3A48();
  sub_22E6E20F0(v4, v20);
  *(v2 + v3[12]) = xmmword_22E7263B0;
  v21 = *(v55 + 16);
  v1[23] = v21;
  v1[24] = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v58, v2, v57);
  if (qword_27DA6C3E0 != -1)
  {
    sub_22E6E3A18(&qword_27DA6C3E0);
  }

  v23 = v1[14];
  v22 = v1[15];
  v24 = v1[9];
  v25 = v1[4];
  v26 = type metadata accessor for Logger();
  v1[25] = sub_22E6E3578(v26, qword_27DA6C8F0);
  v21(v23, v22, v24);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v1[14];
  v31 = v1[10];
  if (v29)
  {
    v56 = v1[8];
    sub_22E6E3BA0();
    swift_slowAlloc();
    v59[0] = sub_22E6E3D60();
    *v25 = 136315650;
    sub_22E6E39A4();
    v34 = sub_22E6E224C(v32, v33, MEMORY[0x277CC9628]);
    sub_22E6E3E74(v34);
    sub_22E6E3EC8();
    v37 = *(v31 + 8);
    v35 = v31 + 8;
    v36 = v37;
    v38 = sub_22E6E3B94();
    v37(v38);
    v39 = sub_22E6E3F40();
    sub_22E706BF8(v39, v40, v41);
    sub_22E6E3FDC();
    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v42 = sub_22E6E35C0(v51, v14);
    sub_22E706BF8(v42, v43, v59);
    sub_22E6E3CFC();

    *(v25 + 14) = v35;
    *(v25 + 22) = 2080;
    sub_22E6E398C();
    sub_22E6E21A0(v53 + v52, v56);
    v44 = String.init<A>(describing:)();
    sub_22E706BF8(v44, v45, v59);
    sub_22E6E3CFC();

    *(v25 + 24) = v35;
    _os_log_impl(&dword_22E6C9000, v27, v28, "[requestID = %s] start downloading range %s of asset %s", v25, 0x20u);
    sub_22E6E3DCC(v46, v47, MEMORY[0x277D84F70] + 8);
    sub_22E6E3B00();
    sub_22E6E3C48();
  }

  else
  {

    v36 = *(v31 + 8);
    v48 = sub_22E6E3B94();
    v36(v48);
  }

  v1[26] = v36;
  if (qword_27DA6C3D8 != -1)
  {
    swift_once();
  }

  v49 = swift_task_alloc();
  v1[27] = v49;
  *v49 = v1;
  v49[1] = sub_22E6DE144;

  return AssetManager.process(request:)();
}

uint64_t sub_22E6DE144()
{
  sub_22E6E3D08();
  v2 = *v1;
  sub_22E6E3C28();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_22E6DEBA8;
  }

  else
  {
    v6 = sub_22E6DE290;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22E6DE290()
{
  v159 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 224);
  sub_22E6DA278();
  v3 = *(v1 + 48);
  if (!v2)
  {
    v4 = v3 + *(*(v1 + 40) + 28);
    if (*(v4 + 16) == 1)
    {
      (*(v1 + 184))(*(v1 + 104), *(v1 + 120), *(v1 + 72));
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v1 + 208);
      if (v7)
      {
        v154 = *(v1 + 208);
        v9 = swift_slowAlloc();
        sub_22E6E3BA0();
        v10 = swift_slowAlloc();
        v157 = v10;
        *v9 = 136315138;
        sub_22E6E39A4();
        sub_22E6E224C(v11, v12, MEMORY[0x277CC9628]);
        dispatch thunk of CustomStringConvertible.description.getter();
        v13 = sub_22E6E3EF8();
        v154(v13);
        v14 = sub_22E6D3824();
        v17 = sub_22E706BF8(v14, v15, v16);

        *(v9 + 4) = v17;
        _os_log_impl(&dword_22E6C9000, v5, v6, "[requestID = %s] missing range information in download response", v9, 0xCu);
        sub_22E6CF2F4(v10);
        sub_22E6E3CC8();
        sub_22E6E3CE4();
      }

      else
      {

        v64 = sub_22E6E3EF8();
        v8(v64);
      }

      v0 = objc_opt_self();
      v65 = [v0 defaultManager];
      countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
      v67 = MEMORY[0x2318EC5C0](countAndFlagsBits);

      v68 = [v65 fileExistsAtPath_];

      if (v68)
      {
        v0 = [v0 defaultManager];
        URL._bridgeToObjectiveC()(v69);
        v71 = v70;
        *(v1 + 16) = 0;
        v72 = [v0 removeItemAtURL:v70 error:v1 + 16];

        v73 = *(v1 + 16);
        if (!v72)
        {
          sub_22E6E3CFC();
          v118 = _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      v3 = *(v1 + 48);
      sub_22E6E21F8();
      swift_allocError();
      *v117 = 0xD00000000000002ELL;
      *(v117 + 8) = 0x800000022E72CED0;
    }

    else
    {
      v18 = *v4;
      v19 = *(v4 + 8);
      v20 = *(v1 + 184);
      v21 = *(v1 + 120);
      v22 = *(v1 + 72);
      v23 = *(v1 + 32);
      if (*(v1 + 168) >= *v4)
      {
        v20(*(v1 + 96), v21, v22);

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        v76 = os_log_type_enabled(v74, v75);
        v77 = *(v1 + 208);
        if (v76)
        {
          v156 = v75;
          v147 = *(v1 + 64);
          v149 = *(v1 + 152);
          v151 = *(v1 + 56);
          v137 = *(v1 + 80);
          v143 = *(v1 + 32);
          sub_22E6E3BA0();
          swift_slowAlloc();
          v153 = sub_22E6E3D60();
          v157 = v153;
          *v23 = 136315650;
          sub_22E6E39A4();
          v80 = sub_22E6E224C(v78, v79, MEMORY[0x277CC9628]);
          v81 = sub_22E6E3E74(v80);
          v82 = v19;
          v84 = v83;
          v85 = sub_22E6E3B94();
          v77(v85);
          v86 = sub_22E706BF8(v81, v84, &v157);

          *(v23 + 4) = v86;
          *(v23 + 12) = 2080;
          v87 = sub_22E6E35C0(v18, v82);
          sub_22E6E3E8C(v87, v88, v89, v90, v91, v92, v93, v94, v137, v143);
          sub_22E6E3CFC();

          *(v23 + 14) = v18;
          *(v23 + 22) = 2080;
          sub_22E6E398C();
          sub_22E6E21A0(v144 + v149, v147);
          v95 = String.init<A>(describing:)();
          sub_22E6E3E8C(v95, v96, v97, v98, v99, v100, v101, v102, v138, v144);
          sub_22E6E3CFC();

          *(v23 + 24) = v18;
          sub_22E6E3E38(&dword_22E6C9000, v103, v104, "[requestID = %s] downloaded range %s of asset %s", v105, v106, v107, v108, v139, v145, v147, v149, v151, v153, v156);
          sub_22E6E3DCC(v109, v110, MEMORY[0x277D84F70] + 8);
          sub_22E6E3B00();
          sub_22E6E3C48();
        }

        else
        {
          v123 = *(v1 + 96);
          v124 = *(v1 + 72);

          (v77)(v123, v124);
        }

        v125 = sub_22E6DD4D8();
        v127 = v126;
        v128 = *(v1 + 208);
        v129 = *(v1 + 144);
        v130 = *(v1 + 120);
        v131 = *(v1 + 72);
        v132 = *(v1 + 24);
        sub_22E6E20F0(*(v1 + 48), type metadata accessor for AssetDownloadResponse);
        v128(v130, v131);
        sub_22E6E3A60();
        sub_22E6E20F0(v129, v133);
        *v132 = v125;
        v132[1] = v127;

        sub_22E6E3AD8();
LABEL_20:
        sub_22E6E3F4C();

        __asm { BRAA            X1, X16 }
      }

      v20(*(v1 + 88), v21, v22);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v1 + 208);
      if (v26)
      {
        v148 = *(v1 + 168);
        v150 = *(v1 + 176);
        v155 = v25;
        v146 = *(v1 + 80);
        sub_22E6E3BA0();
        swift_slowAlloc();
        v152 = sub_22E6E3D60();
        v157 = v152;
        *v23 = 136315650;
        sub_22E6E39A4();
        sub_22E6E224C(v28, v29, MEMORY[0x277CC9628]);
        v30 = v18;
        v31 = v19;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        v35 = sub_22E6E3EEC();
        v27(v35);
        v36 = v32;
        v19 = v31;
        v18 = v30;
        v37 = sub_22E706BF8(v36, v34, &v157);

        *(v23 + 4) = v37;
        *(v23 + 12) = 2080;
        v38 = sub_22E6E35C0(v30, v19);
        v46 = sub_22E6E3E8C(v38, v39, v40, v41, v42, v43, v44, v45, v134, v140);

        *(v23 + 14) = v46;
        *(v23 + 22) = 2080;
        v47 = sub_22E6E35C0(v148, v150);
        v55 = sub_22E6E3E8C(v47, v48, v49, v50, v51, v52, v53, v54, v135, v141);

        *(v23 + 24) = v55;
        sub_22E6E3E38(&dword_22E6C9000, v56, v57, "[requestID = %s] downloaded range %s is smaller than needed range %s", v58, v59, v60, v61, v136, v142, v146, v148, v150, v152, v155);
        sub_22E6E3DCC(v62, v63, MEMORY[0x277D84F70] + 8);
        sub_22E6E3B00();
        sub_22E6E3C48();
      }

      else
      {

        v111 = sub_22E6E3EEC();
        v27(v111);
      }

      v113 = *(v1 + 168);
      v112 = *(v1 + 176);
      v3 = *(v1 + 48);
      v157 = 0;
      v158 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      MEMORY[0x2318EC630](0xD000000000000011, 0x800000022E72CF00);
      v114 = sub_22E6E35C0(v18, v19);
      MEMORY[0x2318EC630](v114);

      MEMORY[0x2318EC630](0xD00000000000001ELL, 0x800000022E72CF20);
      v115 = sub_22E6E35C0(v113, v112);
      MEMORY[0x2318EC630](v115);

      v116 = v157;
      v0 = v158;
      sub_22E6E21F8();
      swift_allocError();
      *v117 = v116;
      *(v117 + 8) = v0;
    }

    *(v117 + 16) = 2;
    swift_willThrow();
  }

  sub_22E6E20F0(v3, type metadata accessor for AssetDownloadResponse);
  sub_22E6E3D40();
  v119(v3);
  sub_22E6E3A60();
  sub_22E6E20F0(v0, v120);

  sub_22E6E3AD8();
  goto LABEL_20;
}

uint64_t sub_22E6DEBA8(uint64_t a1)
{
  sub_22E6E3D40();
  v3(v2);
  sub_22E6E3A60();
  sub_22E6E20F0(v1, v4);

  sub_22E6E3AD8();

  return v5();
}

uint64_t sub_22E6DECC4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = type metadata accessor for Asset(0);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6DEDE4, v1, 0);
}

uint64_t sub_22E6DEDE4()
{
  v157 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cacheState;
  v3 = *(v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cacheState);
  v0[17] = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = v1;
      if (qword_27DA6C3E0 != -1)
      {
        sub_22E6E3A18(&qword_27DA6C3E0);
        v4 = v0[7];
      }

      v5 = type metadata accessor for Logger();
      sub_22E6E3578(v5, qword_27DA6C8F0);
      v6 = sub_22E6E3EE0();
      v7(v6);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      v151 = v9;
      if (os_log_type_enabled(v8, v9))
      {
        v141 = v0[9];
        v146 = v0[8];
        v136 = v0[7];
        sub_22E6E3BA0();
        swift_slowAlloc();
        v156[0] = sub_22E6E3D60();
        *v4 = 136315650;
        sub_22E6E39A4();
        v12 = sub_22E6E224C(v10, v11, MEMORY[0x277CC9628]);
        v13 = sub_22E6E3E74(v12);
        v15 = v14;
        v16 = sub_22E6E3B94();
        v17(v16);
        v18 = sub_22E706BF8(v13, v15, v156);

        *(v4 + 4) = v18;
        *(v4 + 12) = 2080;
        v19 = v136;
        v20 = sub_22E6E3DFC(OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
        v22 = sub_22E6E35C0(v20, v21);
        v30 = sub_22E6E3DB4(v22, v23, v24, v25, v26, v27, v28, v29, v136, v141, v146);

        *(v4 + 14) = v30;
        *(v4 + 22) = 2080;
        sub_22E6E398C();
        sub_22E6E21A0(v19 + v31, v142);
        v32 = String.init<A>(describing:)();
        v40 = sub_22E6E3DB4(v32, v33, v34, v35, v36, v37, v38, v39, v137, v142, v147);

        *(v4 + 24) = v40;
        _os_log_impl(&dword_22E6C9000, v8, v151, "[requestID = %s] range %s of asset %s available in cache", v4, 0x20u);
        sub_22E6E3DCC(v41, v42, MEMORY[0x277D84F70] + 8);
        sub_22E6E3B00();
        sub_22E6E3C48();
      }

      else
      {

        v121 = sub_22E6E3B94();
        v122(v121);
      }

      sub_22E6DD4D8();

      sub_22E6E3EE0();
      sub_22E6E3F4C();

      __asm { BRAA            X3, X16 }
    }

    v79 = qword_27DA6C3E0;

    if (v79 != -1)
    {
      sub_22E6E3A18(&qword_27DA6C3E0);
    }

    v80 = v0[11];
    v81 = type metadata accessor for Logger();
    v0[18] = sub_22E6E3578(v81, qword_27DA6C8F0);
    v83 = *(v80 + 16);
    v82 = v80 + 16;
    v0[19] = v83;
    v0[20] = v82 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v84 = sub_22E6E3EE0();
    v85(v84);

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    v88 = os_log_type_enabled(v86, v87);
    v89 = v0[15];
    v90 = v0[11];
    if (v88)
    {
      v155 = v0[9];
      v152 = v0[7];
      sub_22E6E3BA0();
      v91 = swift_slowAlloc();
      v156[0] = sub_22E6E3DE4();
      *v91 = 136315650;
      sub_22E6E39A4();
      v94 = sub_22E6E224C(v92, v93, MEMORY[0x277CC9628]);
      sub_22E6E3E74(v94);
      sub_22E6E3EC8();
      v154 = v87;
      v95 = *(v90 + 8);
      v96 = sub_22E6E3B94();
      v95(v96);
      v97 = sub_22E6E3F40();
      sub_22E706BF8(v97, v98, v99);
      sub_22E6E3FDC();
      *(v91 + 4) = v89;
      *(v91 + 12) = 2080;
      v100 = sub_22E6E3DFC(OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range);
      v102 = sub_22E6E35C0(v100, v101);
      sub_22E6E3DB4(v102, v103, v104, v105, v106, v107, v108, v109, v135, v140, v145);
      sub_22E6E3E5C();
      *(v91 + 14) = v82;
      *(v91 + 22) = 2080;
      sub_22E6E398C();
      sub_22E6E21A0(v152 + v110, v155);
      v111 = String.init<A>(describing:)();
      sub_22E6E3DB4(v111, v112, v113, v114, v115, v116, v117, v118, v139, v144, v149);
      sub_22E6E3E5C();
      *(v91 + 24) = v82;
      _os_log_impl(&dword_22E6C9000, v86, v154, "[requestID = %s] downloading range %s of asset %s", v91, 0x20u);
      sub_22E6E3DCC(v119, v120, MEMORY[0x277D84F70] + 8);
      sub_22E6E3B00();
      sub_22E6E3CE4();
    }

    else
    {

      v95 = *(v90 + 8);
      v125 = sub_22E6E3B94();
      v95(v125);
    }

    v0[21] = v95;
    v126 = swift_task_alloc();
    v0[22] = v126;
    sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
    *v126 = v0;
    v126[1] = sub_22E6DF7F0;
  }

  else
  {
    if (qword_27DA6C3E0 != -1)
    {
      sub_22E6E3A18(&qword_27DA6C3E0);
    }

    v43 = v0[16];
    v44 = v0[10];
    v45 = v0[11];
    v46 = v0[6];
    v47 = type metadata accessor for Logger();
    sub_22E6E3578(v47, qword_27DA6C8F0);
    v49 = *(v45 + 16);
    v48 = v45 + 16;
    v49(v43, v46, v44);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[16];
    if (v52)
    {
      v153 = v0[9];
      v150 = v0[7];
      sub_22E6E3BA0();
      v54 = swift_slowAlloc();
      v156[0] = sub_22E6E3DE4();
      *v54 = 136315650;
      sub_22E6E39A4();
      v57 = sub_22E6E224C(v55, v56, MEMORY[0x277CC9628]);
      sub_22E6E3E74(v57);
      sub_22E6E3EC8();
      v58 = sub_22E6E3B94();
      v59(v58);
      sub_22E706BF8(v2, v48, v156);
      sub_22E6E3FDC();
      *(v54 + 4) = v53;
      *(v54 + 12) = 2080;
      v60 = sub_22E6E35C0(*(v150 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range), *(v150 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range + 8));
      sub_22E6E3DB4(v60, v61, v62, v63, v64, v65, v66, v67, v135, v140, v145);
      sub_22E6E3E5C();
      *(v54 + 14) = v48;
      *(v54 + 22) = 2080;
      sub_22E6E398C();
      sub_22E6E21A0(v150 + v68, v153);
      v69 = String.init<A>(describing:)();
      sub_22E6E3DB4(v69, v70, v71, v72, v73, v74, v75, v76, v138, v143, v148);
      sub_22E6E3E5C();
      *(v54 + 24) = v48;
      _os_log_impl(&dword_22E6C9000, v50, v51, "[requestID = %s] ready to download range %s of asset (%s", v54, 0x20u);
      sub_22E6E3DCC(v77, v78, MEMORY[0x277D84F70] + 8);
      sub_22E6E3B00();
      sub_22E6E3CC8();
    }

    else
    {

      v123 = sub_22E6E3B94();
      v124(v123);
    }

    sub_22E6DD97C();
    v0[24] = v129;
    v130 = *(v1 + v2);
    *(v1 + v2) = v129;

    sub_22E6E35B0(v130);
    v131 = swift_task_alloc();
    v0[25] = v131;
    sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
    *v131 = v0;
    v131[1] = sub_22E6DFBBC;
  }

  sub_22E6E3F4C();

  return MEMORY[0x282200430](v132);
}

uint64_t sub_22E6DF7F0()
{
  sub_22E6E3D08();
  v2 = *v1;
  sub_22E6E3C28();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_22E6DFDA0;
  }

  else
  {
    v6 = sub_22E6DF910;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22E6DF910()
{
  v47 = v0;
  v1 = *(v0 + 32);
  v45 = *(v0 + 40);
  (*(v0 + 152))(*(v0 + 112), *(v0 + 48), *(v0 + 80));

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 168);
  if (v4)
  {
    v42 = *(v0 + 72);
    v40 = *(v0 + 56);
    sub_22E6E3BA0();
    v43 = v6;
    v44 = v1;
    v7 = swift_slowAlloc();
    v46 = sub_22E6E3DE4();
    *v7 = 136315650;
    sub_22E6E39A4();
    sub_22E6E224C(v8, v9, MEMORY[0x277CC9628]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = sub_22E6E3EEC();
    v5(v13);
    v14 = sub_22E706BF8(v10, v12, &v46);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    v15 = v40;
    v16 = sub_22E6E35C0(*(v40 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range), *(v40 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_range + 8));
    sub_22E6E3E8C(v16, v17, v18, v19, v20, v21, v22, v23, v38, v40);
    sub_22E6E3CFC();

    *(v7 + 14) = v10;
    *(v7 + 22) = 2080;
    sub_22E6E398C();
    sub_22E6E21A0(v15 + v24, v42);
    v25 = String.init<A>(describing:)();
    sub_22E6E3E8C(v25, v26, v27, v28, v29, v30, v31, v32, v39, v41);
    sub_22E6E3CFC();

    *(v7 + 24) = v10;
    _os_log_impl(&dword_22E6C9000, v2, v3, "[requestID = %s] downloaded range %s of asset %s", v7, 0x20u);
    sub_22E6E3DCC(v33, v34, MEMORY[0x277D84F70] + 8);
    sub_22E6E3B00();
    v1 = v44;
    sub_22E6E3CE4();
    sub_22E6E35B0(v43);
  }

  else
  {
    sub_22E6E35B0(*(v0 + 136));

    v35 = sub_22E6E3EEC();
    v5(v35);
  }

  v36 = *(v0 + 8);

  return v36(v1, v45);
}

uint64_t sub_22E6DFBBC()
{
  sub_22E6E3D08();
  v2 = *v1;
  sub_22E6E3C28();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 208) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_22E6DFE38;
  }

  else
  {
    v6 = sub_22E6DFCDC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22E6DFCDC()
{

  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_22E6DFDA0()
{
  sub_22E6E3F34();
  sub_22E6E35B0(*(v0 + 136));
  sub_22E6E3F84();

  sub_22E6E3AD8();

  return v1();
}

uint64_t sub_22E6DFE38()
{
  sub_22E6E3F34();

  sub_22E6E3F84();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E6DFED0()
{
  v1 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = objc_opt_self();
  v6 = [v24 defaultManager];
  v7 = OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL;
  v23 = *(v3 + 16);
  v23(v5, v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cachedDataURL, v2);
  v8 = URL.path(percentEncoded:)(1);
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = MEMORY[0x2318EC5C0](v8._countAndFlagsBits, v8._object);

  v11 = [v6 fileExistsAtPath_];

  if (v11)
  {
    v12 = [v24 defaultManager];
    v13 = v7;
    v23(v5, v1 + v7, v2);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v9(v5, v2);
    v25[0] = 0;
    v17 = [v12 removeItemAtURL:v16 error:v25];

    if (v17)
    {
      v18 = v25[0];
    }

    else
    {
      v19 = v25[0];
      v20 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v7 = v13;
  }

  sub_22E6E20F0(v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_asset, type metadata accessor for Asset);
  sub_22E6E20F0(v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_credential, type metadata accessor for Credential);

  v9((v1 + v7), v2);
  sub_22E6E35B0(*(v1 + OBJC_IVAR____TtCV10CloudAsset17AssetStreamHandleP33_BA4038B4BB1861CB0C550B476A56914811RangeReader_cacheState));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_22E6E01C4()
{
  v0 = sub_22E6DFED0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22E6E01EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(*(v2 + 112) + 16) && (sub_22E714C00(a1), (v4 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22E6E0264()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t AssetStreamHandle.range.getter()
{
  result = type metadata accessor for Asset(0);
  if ((*(v0 + *(result + 24)) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22E6E02F0(uint64_t result, uint64_t a2)
{
  v3 = result - result % 5242880;
  if (__OFSUB__(result, result % 5242880))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = a2 % 5242880;
  if (!(a2 % 5242880))
  {
LABEL_8:
    if (a2 >= v3)
    {
      return v3;
    }

    goto LABEL_11;
  }

  v5 = a2 + 5242880;
  if (__OFADD__(a2, 5242880))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5 - v4;
  if (!__OFSUB__(v5, v4))
  {
    result = type metadata accessor for Asset(0);
    if (*(v2 + *(result + 24)) >= v6)
    {
      a2 = v6;
    }

    else
    {
      a2 = *(v2 + *(result + 24));
    }

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_22E6E037C(uint64_t a1, uint64_t a2)
{
  if (a1 >= a2)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v3 = a1;
    result = sub_22E6E254C(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = result;
    while (1)
    {
      v6 = v3 + 5242880;
      if (__OFADD__(v3, 5242880))
      {
        break;
      }

      if (v6 >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v3 + 5242880;
      }

      if (v7 < v3)
      {
        goto LABEL_15;
      }

      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        result = sub_22E6E254C((v8 > 1), v9 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 32) = v3;
      *(v10 + 40) = v7;
      v3 += 5242880;
      if (v6 >= a2)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t AssetStreamHandle.inputStream(for:)()
{
  sub_22E6E3BDC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for Credential(0);
  sub_22E6E3A38(v5);
  v1[6] = v6;
  v1[7] = *(v7 + 64);
  v1[8] = sub_22E6E3EA4();
  v8 = type metadata accessor for Asset(0);
  sub_22E6E3A38(v8);
  v1[9] = v9;
  v1[10] = *(v10 + 64);
  v1[11] = sub_22E6E3EA4();
  v11 = type metadata accessor for AssetStreamHandle(0);
  v1[12] = v11;
  sub_22E6E3A38(v11);
  v1[13] = v12;
  v1[14] = *(v13 + 64);
  v1[15] = sub_22E6E3EA4();
  v14 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  sub_22E6D376C(v14);
  v1[16] = sub_22E6E3EA4();
  v15 = type metadata accessor for UUID();
  v1[17] = v15;
  sub_22E6E3A38(v15);
  v1[18] = v16;
  v1[19] = *(v17 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v18 = sub_22E6CF1CC(&qword_27DA6C9B0, &qword_22E727400);
  v1[22] = v18;
  sub_22E6E3A38(v18);
  v1[23] = v19;
  v1[24] = sub_22E6E3EA4();
  v20 = sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
  v1[25] = v20;
  sub_22E6E3A38(v20);
  v1[26] = v21;
  v1[27] = *(v22 + 64);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v23 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_22E6E06F8()
{
  v1 = v0[29];
  v45 = v0[28];
  v39 = v0[26];
  v2 = v0[24];
  v44 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v40 = v0[21];
  v43 = v0[20];
  v33 = v0[19];
  v26 = v0[18];
  v42 = v0[17];
  v36 = v0[16];
  v5 = v0[15];
  v41 = v5;
  v30 = v0[14];
  v6 = v0[12];
  v27 = v0[13];
  v47 = v0[11];
  v32 = v0[10];
  v28 = v0[9];
  v46 = v0[8];
  v31 = v0[7];
  v29 = v0[6];
  v7 = v0[5];
  v37 = v0[3];
  v38 = v0[4];
  (*(v4 + 104))(v2, *MEMORY[0x277D858A0], v3);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v4 + 8))(v2, v3);
  v8 = *(v6 + 20);
  v9 = (v7 + *(v6 + 28));
  v34 = v9[1];
  v35 = *v9;

  UUID.init()();
  type metadata accessor for TaskPriority();
  sub_22E6E3D34();
  sub_22E6CF58C(v10, v11, v12, v13);
  sub_22E6E3A00();
  sub_22E6E21A0(v7, v5);
  sub_22E6E398C();
  sub_22E6E21A0(v7, v47);
  sub_22E6E39E8();
  sub_22E6E21A0(v7 + v8, v46);
  (*(v26 + 16))(v43, v40, v42);
  (*(v39 + 16))(v45, v1, v44);
  v14 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v15 = (v30 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v28 + 80) + v15 + 16) & ~*(v28 + 80);
  v17 = (v32 + *(v29 + 80) + v16) & ~*(v29 + 80);
  v18 = (v31 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v26 + 80) + v18 + 16) & ~*(v26 + 80);
  v20 = (v33 + *(v39 + 80) + v19) & ~*(v39 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_22E6E2148(v41, v21 + v14);
  v22 = (v21 + v15);
  *v22 = v37;
  v22[1] = v38;
  sub_22E6E3A78();
  sub_22E6E2148(v47, v21 + v16);
  sub_22E6E3B34();
  sub_22E6E2148(v46, v21 + v17);
  v23 = (v21 + v18);
  *v23 = v35;
  v23[1] = v34;
  (*(v26 + 32))(v21 + v19, v43, v42);
  (*(v39 + 32))(v21 + v20, v45, v44);
  sub_22E6E1B80(0, 0, v36, &unk_22E727418, v21);
  AsyncThrowingStream.Continuation.onTermination.setter();
  (*(v26 + 8))(v40, v42);
  (*(v39 + 8))(v1, v44);

  sub_22E6E3AD8();

  return v24();
}

uint64_t sub_22E6E0B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v13;
  *(v8 + 160) = v14;
  *(v8 + 136) = v12;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  v9 = sub_22E6CF1CC(&qword_27DA6CA00, &qword_22E727838);
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  type metadata accessor for Credential(0);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = type metadata accessor for Asset(0);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6E0C90, 0, 0);
}

uint64_t sub_22E6E0C90()
{
  sub_22E6E3D08();
  v1 = sub_22E6E02F0(v0[13], v0[14]);
  v3 = sub_22E6E037C(v1, v2);
  v0[29] = v3;
  v4 = v3[2];
  v0[30] = v4;
  if (v4)
  {
    v5 = v0[12];
    v6 = type metadata accessor for AssetStreamHandle(0);
    v8 = *(v5 + *(v6 + 32));
    v0[32] = 0;
    v0[33] = 0;
    v0[31] = v8;
    if (v3[2])
    {
      v0[34] = v3[4];
      v6 = sub_22E6E3AE4(v3[5]);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v6, v8, v7);
  }

  else
  {

    v0[11] = 0;
    sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    sub_22E6E3D7C();

    sub_22E6E3AD8();

    return v9();
  }
}

uint64_t sub_22E6E0DC0()
{
  sub_22E6E3BDC();
  v0[36] = sub_22E6E01EC(v0[34], v0[35]);
  v1 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E6E0E24()
{
  v44 = v0;
  v1 = v0[36];
  if (!v1)
  {
    v6 = v0[32];
    v7 = v0[28];
    v8 = v0[24];
    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[16];
    sub_22E6E398C();
    sub_22E6E21A0(v12, v7);
    sub_22E6E39E8();
    sub_22E6E21A0(v11, v8);
    type metadata accessor for AssetStreamHandle.RangeReader(0);
    swift_allocObject();

    sub_22E6E3F1C();
    v1 = sub_22E6DCFF8(v13, v14, v15, v8, v10, v9);
    if (v6)
    {

      if (qword_27DA6C3D0 != -1)
      {
        sub_22E6E3C74(&qword_27DA6C3D0);
      }

      v16 = type metadata accessor for Logger();
      sub_22E6E3578(v16, qword_27DA6C8D0);
      sub_22E6E398C();
      v17 = sub_22E6D368C();
      sub_22E6E21A0(v17, v18);
      v19 = v6;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[27];
      if (v22)
      {
        v24 = v0[26];
        v41 = v0[13];
        v42 = v0[14];
        sub_22E6E3BA0();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v25 = 136315650;
        sub_22E6E398C();
        sub_22E6E21A0(v23, v24);
        sub_22E6D3824();
        String.init<A>(describing:)();
        sub_22E6E39BC();
        sub_22E6E20F0(v23, v27);
        v28 = sub_22E6D3824();
        v31 = sub_22E706BF8(v28, v29, v30);

        *(v25 + 4) = v31;
        *(v25 + 12) = 2080;
        v32 = sub_22E6E35C0(v41, v42);
        v34 = sub_22E706BF8(v32, v33, &v43);

        *(v25 + 14) = v34;
        *(v25 + 22) = 2112;
        v35 = v6;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 24) = v36;
        *v26 = v36;
        _os_log_impl(&dword_22E6C9000, v20, v21, "failed to stream data for %s in range %s due to error %@", v25, 0x20u);
        sub_22E6D3510(v26, &qword_27DA6CA08, &qword_22E727840);
        sub_22E6E3C48();
        sub_22E6E3F04();
        swift_arrayDestroy();
        sub_22E6E3CC8();
        sub_22E6E3CE4();
      }

      else
      {

        sub_22E6E39BC();
        sub_22E6E20F0(v23, v37);
      }

      v0[9] = v6;
      sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
      AsyncThrowingStream.Continuation.finish(throwing:)();
      sub_22E6E3D7C();

      sub_22E6E3AD8();
      sub_22E6E3F68();

      __asm { BRAA            X1, X16 }
    }
  }

  v0[37] = v1;
  sub_22E6E3F68();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22E6E1178()
{
  sub_22E6E3BDC();
  v0[38] = sub_22E6E01EC(v0[34], v0[35]);
  v1 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E6E11DC()
{
  sub_22E6E3BDC();
  if (!v0[38])
  {
    v2 = v0[31];
    v1 = sub_22E6E12D8;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v4 = v0[34];
  v5 = v0[13];
  if (v4 > v5)
  {
    v5 = v0[34];
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  v0[39] = v7;
  if (v6)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v0[35];
  if (v8 >= v0[14])
  {
    v8 = v0[14];
  }

  v6 = __OFSUB__(v8, v4);
  v9 = v8 - v4;
  v0[40] = v9;
  if (v6)
  {
    goto LABEL_16;
  }

  if (v9 < v7)
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v11 = sub_22E6E3AA8(v10);

  return sub_22E6DECC4(v11);
}

uint64_t sub_22E6E12D8()
{
  sub_22E6E3F34();
  v1 = v0[34];
  v2 = v0[31];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v2 + 112);
  v0[10] = v4;
  *(v2 + 112) = 0x8000000000000000;
  v5 = sub_22E714C00(v1);
  v8 = *(v4 + 16);
  v9 = (v6 & 1) == 0;
  v10 = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = v5;
  v12 = v6;
  sub_22E6CF1CC(&qword_27DA6CA10, &qword_22E727848);
  v5 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    v14 = v0[10];
    v15 = v0[37];
    if (v12)
    {
      *(v14[7] + 8 * v11) = v15;

      goto LABEL_12;
    }

    v16 = v14[6];
    v17 = *(v0 + 17);
    v14[(v11 >> 6) + 8] |= 1 << v11;
    *(v16 + 16 * v11) = v17;
    *(v14[7] + 8 * v11) = v15;
    v18 = v14[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (!v19)
    {
      v14[2] = v20;
LABEL_12:
      *(v0[31] + 112) = v14;
      swift_endAccess();
      v5 = sub_22E6E3C64();

      return MEMORY[0x2822009F8](v5, v6, v7);
    }

LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  v5 = sub_22E714C00(v0[34]);
  if ((v12 & 1) == (v6 & 1))
  {
    v11 = v5;
    goto LABEL_8;
  }

  sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void sub_22E6E14AC()
{
  v2 = v0[34];
  v3 = v0[13];
  if (v2 > v3)
  {
    v3 = v0[34];
  }

  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  v0[39] = v5;
  if (v4)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v0[35];
  if (v6 >= v0[14])
  {
    v6 = v0[14];
  }

  v4 = __OFSUB__(v6, v2);
  v7 = v6 - v2;
  v0[40] = v7;
  if (v4)
  {
    goto LABEL_12;
  }

  if (v7 < v5)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_22E6E3BDC();
  v8 = swift_task_alloc();
  v0[41] = v8;
  *v8 = v0;
  v9 = sub_22E6E3AA8(v8);

  sub_22E6DECC4(v9);
}

uint64_t sub_22E6E1564()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6E3C28();
  *v4 = v3;
  *v4 = *v1;
  v3[42] = v5;
  v3[43] = v6;
  v3[44] = v0;

  if (v0)
  {

    v7 = sub_22E6E18D4;
  }

  else
  {
    v7 = sub_22E6E1674;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22E6E1674(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 344);
  switch(v4 >> 62)
  {
    case 1uLL:
      v13 = *(v3 + 336);
      v14 = *(v3 + 340);
      v8 = __OFSUB__(v14, v13);
      LODWORD(v5) = v14 - v13;
      if (v8)
      {
        goto LABEL_21;
      }

      v5 = v5;
      goto LABEL_10;
    case 2uLL:
      v6 = *(*(v3 + 336) + 16);
      v7 = *(*(v3 + 336) + 24);
      v8 = __OFSUB__(v7, v6);
      v5 = v7 - v6;
      if (!v8)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (*(v3 + 320) > 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    case 3uLL:
      goto LABEL_6;
    default:
      v5 = BYTE6(v4);
LABEL_10:
      if (v5 < *(v3 + 320))
      {
LABEL_7:
        v9 = *(v3 + 336);
        v11 = *(v3 + 176);
        v10 = *(v3 + 184);
        v12 = *(v3 + 168);
        *(v3 + 56) = v9;
        *(v3 + 64) = v4;
        sub_22E6CFB64(v9, v4);
        sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
      }

      else
      {
LABEL_11:
        v9 = *(v3 + 336);
        v11 = *(v3 + 176);
        v10 = *(v3 + 184);
        v12 = *(v3 + 168);
        *(v3 + 40) = Data.subdata(in:)();
        *(v3 + 48) = v15;
        sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
      }

      AsyncThrowingStream.Continuation.yield(_:)();

      sub_22E6CFBBC(v9, v4);
      a1 = (*(v11 + 8))(v10, v12);
      v16 = *(v3 + 264) + 1;
      if (v16 == *(v3 + 240))
      {

        *(v3 + 88) = 0;
        sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
        AsyncThrowingStream.Continuation.finish(throwing:)();
        sub_22E6E3D7C();

        sub_22E6E3AD8();

        return v17();
      }

      else
      {
        *(v3 + 256) = *(v3 + 352);
        *(v3 + 264) = v16;
        v19 = *(v3 + 232);
        if (v16 >= *(v19 + 16))
        {
          __break(1u);
LABEL_21:
          __break(1u);
        }

        else
        {
          v20 = v19 + 16 * v16;
          *(v3 + 272) = *(v20 + 32);
          a1 = sub_22E6E3AE4(*(v20 + 40));
        }

        return MEMORY[0x2822009F8](a1, a2, a3);
      }
  }
}

uint64_t sub_22E6E18D4()
{
  v29 = v0;

  v1 = v0[44];
  if (qword_27DA6C3D0 != -1)
  {
    sub_22E6E3C74(&qword_27DA6C3D0);
  }

  v2 = v0[27];
  v3 = v0[15];
  v4 = type metadata accessor for Logger();
  sub_22E6E3578(v4, qword_27DA6C8D0);
  sub_22E6E398C();
  sub_22E6E21A0(v3, v2);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[27];
  if (v8)
  {
    v10 = v0[26];
    v26 = v0[13];
    v27 = v0[14];
    sub_22E6E3BA0();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136315650;
    sub_22E6E398C();
    sub_22E6E21A0(v9, v10);
    sub_22E6D3824();
    String.init<A>(describing:)();
    sub_22E6E39BC();
    sub_22E6E20F0(v9, v13);
    v14 = sub_22E6D3824();
    v17 = sub_22E706BF8(v14, v15, v16);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = sub_22E6E35C0(v26, v27);
    v20 = sub_22E706BF8(v18, v19, &v28);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2112;
    v21 = v1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v22;
    *v12 = v22;
    _os_log_impl(&dword_22E6C9000, v6, v7, "failed to stream data for %s in range %s due to error %@", v11, 0x20u);
    sub_22E6D3510(v12, &qword_27DA6CA08, &qword_22E727840);
    sub_22E6E3C48();
    sub_22E6E3F04();
    swift_arrayDestroy();
    sub_22E6E3CC8();
    sub_22E6E3CE4();
  }

  else
  {

    sub_22E6E39BC();
    sub_22E6E20F0(v9, v23);
  }

  v0[9] = v1;
  sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  sub_22E6E3D7C();

  sub_22E6E3AD8();

  return v24();
}