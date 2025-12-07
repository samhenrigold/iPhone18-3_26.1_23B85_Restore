uint64_t sub_2514E8898()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2514E88D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2514E89B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2514E89E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2514E8A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25154CE70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2514E8AE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25154CE70();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2514E8D74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25154CFE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_2514F808C(0, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, MEMORY[0x277D83D88]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_2514F808C(0, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_2514F808C(0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, MEMORY[0x277D83D88]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_2514F808C(0, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, MEMORY[0x277D83D88]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_2514F808C(0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_2514E907C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25154CFE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_2514F808C(0, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, MEMORY[0x277D83D88]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_2514F808C(0, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, MEMORY[0x277D83D88]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_2514F808C(0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, MEMORY[0x277D83D88]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_2514F808C(0, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, MEMORY[0x277D83D88]);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_2514F808C(0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_2514E9390(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25154CFE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2514E943C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25154CFE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2514E94E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25154CFE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2514E95A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25154CFE0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2514E965C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25154CFE0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2514E97B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_25154CFE0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2514E990C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25154CFE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2514E99B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25154CFE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2514E9A5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25154CFE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2514E9B08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25154CFE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2514E9BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_25154CFE0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2514E9C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_25154CFE0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

unint64_t sub_2514E9CB4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_2514E9CCC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2514EA2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for ProtoImageProps(0);
  v5 = (a1 + *(result + 28));
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  if (v8)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = (v8 | v7) & 1;
  return result;
}

uint64_t sub_2514EA348(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for ProtoImageProps(0);
  v6 = a2 + *(result + 28);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t sub_2514EA5F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_25154CFE0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2514EA748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_25153D964(0, &qword_27F43C1D0, type metadata accessor for ProtoComponent.OneOf_Props, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_25154CFE0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2514EA89C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2514EA908(uint64_t a1, uint64_t a2)
{
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2514EA978(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25154CFE0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_2514EAB8C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25154CFE0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  sub_25153D964(0, &qword_27F43C188, type metadata accessor for ProtoTextProps, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2514EADAC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_25154CFE0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_2514EAF78(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_25154CFE0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_25153D964(0, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2514EB20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25154CFE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 32);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2514EB330(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25154CFE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 32);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_2514EB460(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25154CFE0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
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

void sub_2514EB5A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25154CFE0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = a2;
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_2514EB758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25154CFE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 28);

  return v16(v17, a2, v15);
}

uint64_t sub_2514EB8F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25154CFE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_25153D964(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_25153D964(0, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 28);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2514EBAA4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25154CFE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2514EBB50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25154CFE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtoRichMedia.MediaType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProtoRichMedia.MediaType(uint64_t result, int a2, int a3)
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

uint64_t sub_2514EBCF4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2514EBD10(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_2514EBDA8()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2514EBE38(uint64_t a1, int a2)
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

uint64_t sub_2514EBE58(uint64_t result, int a2, int a3)
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
  if (!qword_2813D83A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2813D83A0);
    }
  }
}

void *ConcreteHealthContentDaemonExtension.ontologyBackingStore.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin36ConcreteHealthContentDaemonExtension_ontologyBackingStore);
  v2 = v1;
  return v1;
}

void *ConcreteHealthContentDaemonExtension.ontologyUpdateCoordinator.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin36ConcreteHealthContentDaemonExtension_ontologyUpdateCoordinator);
  v2 = v1;
  return v1;
}

void sub_2514EBF30()
{
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin36ConcreteHealthContentDaemonExtension_ontologyBackingStore);
  [v1 invalidate];
  if (v1)
  {
    v2 = sub_25154D250();
    [v1 obliterateWithReason_];
  }
}

id ConcreteHealthContentDaemonExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConcreteHealthContentDaemonExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcreteHealthContentDaemonExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2514EC2A0(uint64_t a1)
{
  swift_unknownObjectUnownedInit();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D103B0]) initWithDaemon_];
    *&v1[OBJC_IVAR____TtC25HealthContentDaemonPlugin36ConcreteHealthContentDaemonExtension_ontologyBackingStore] = v4;
    v2 = [objc_allocWithZone(MEMORY[0x277D103D8]) initWithDaemon_];
  }

  else
  {
    *&v1[OBJC_IVAR____TtC25HealthContentDaemonPlugin36ConcreteHealthContentDaemonExtension_ontologyBackingStore] = 0;
  }

  *&v1[OBJC_IVAR____TtC25HealthContentDaemonPlugin36ConcreteHealthContentDaemonExtension_ontologyUpdateCoordinator] = v2;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ConcreteHealthContentDaemonExtension();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2514EC378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2514EC3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2514EC408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2514EC47C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16[0] = a2;
  v6 = sub_25154CE90();
  sub_2514ECC34();
  v7 = sub_25154D5C0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = v16 - v13;
  sub_2514EC6B8(a1, a4, v16 - v13);
  (*(v12 + 16))(v11, v14, v6);
  swift_storeEnumTagMultiPayload();
  (v16[0])(v11);
  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v14, v6);
}

void sub_2514EC6B8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v38 = a3;
  v4 = a2[2];
  v37 = sub_25154D3C0();
  v35 = *(v37 - 8);
  v5 = MEMORY[0x28223BE20](v37);
  v42 = v33 - v6;
  v39 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = v33 - v9;
  v10 = sub_25154CDA0();
  v40 = *(v10 - 1);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v45 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25154CD80();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectUnownedLoadStrong();
  swift_getObjectType();
  sub_2514ECC98();
  v43 = v4;
  v44 = a2;
  v16 = a2[4];
  v15 = a2[5];
  sub_25154CF00();
  sub_25154CEE0();
  v17 = sub_25154D390();
  v18 = v46;
  v19 = sub_25154CFA0();
  if (v18)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = v19;
    v33[0] = v15;
    v33[1] = v14;
    v33[2] = v16;
    v21 = v43;
    v46 = 0;
    v22 = v42;

    swift_unknownObjectRelease();
    v23 = v45;
    sub_25154CEF0();
    v24 = sub_25154CD90();
    (*(v40 + 8))(v23, v41);
    v25 = [v20 firstAttributeForType_];
    v17 = v20;
    if (v25)
    {
      v41 = v20;
      v17 = v25;
      sub_25154CF10();
      v26 = v39;
      if ((*(v39 + 48))(v22, 1, v21) != 1)
      {
        v31 = v22;
        v32 = v34;
        (*(v26 + 32))(v34, v31, v21);
        sub_25154CEE0();
        sub_25154CEF0();
        (*(v26 + 16))(v36, v32, v21);
        sub_25154CE80();

        (*(v26 + 8))(v32, v21);
        return;
      }

      (*(v35 + 8))(v22, v37);
      v27 = sub_25154CF20();
      sub_2514ECCE4();
      swift_allocError();
      (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D11B60], v27);
      swift_willThrow();
    }

    else
    {
      v29 = sub_25154CF20();
      sub_2514ECCE4();
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D11B68], v29);
      swift_willThrow();
    }
  }
}

uint64_t sub_2514ECC00()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_2514ECC34()
{
  result = qword_27F43BD40;
  if (!qword_27F43BD40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F43BD40);
  }

  return result;
}

unint64_t sub_2514ECC98()
{
  result = qword_27F43BD48;
  if (!qword_27F43BD48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F43BD48);
  }

  return result;
}

unint64_t sub_2514ECCE4()
{
  result = qword_27F43BD50;
  if (!qword_27F43BD50)
  {
    sub_25154CF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43BD50);
  }

  return result;
}

uint64_t sub_2514ECD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v18[1] = *(v6 + 16);
  (*(v12 + 16))(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v15 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  *(v16 + 6) = v6;
  (*(v12 + 32))(&v16[v15], v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);

  sub_25154CEB0();
}

uint64_t sub_2514ECEBC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2514ECF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;

  sub_2514ECD3C(a1, sub_2514ECFC8, v10, a4, a5);
}

uint64_t sub_2514ECFC8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2514ED068(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void sub_2514ED0B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v7 = [a1 graphDatabase];
  v8 = sub_25154D3A0();

  if (v8)
  {
    v9 = sub_25154D250();
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    v11 = swift_allocObject();
    v11[2] = sub_2514ED68C;
    v11[3] = v10;
    aBlock[4] = sub_2514ED694;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2514ED35C;
    aBlock[3] = &block_descriptor_13;
    v12 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v13 = [v8 executeUncachedSQL:v9 error:aBlock bindingHandler:0 enumerationHandler:v12];
    _Block_release(v12);

    if (v13)
    {
      v14 = aBlock[0];
    }

    else
    {
      v15 = aBlock[0];
      sub_25154CD20();

      swift_willThrow();
    }
  }
}

uint64_t sub_2514ED28C(void *a1, uint64_t a2, uint64_t (*a3)(id *))
{
  v5[3] = &type metadata for HDSQLiteOntologyDatabaseRow;
  v5[4] = &off_286375D98;
  v5[0] = a1;
  v3 = a3(v5);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3 & 1;
}

uint64_t sub_2514ED390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = sub_2514ED5F4;
  v7[3] = v6;
  aBlock[4] = sub_2514ED5FC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2514ED068;
  aBlock[3] = &block_descriptor;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v9 = [v3 performTransactionWithError:aBlock transactionHandler:v8];
  _Block_release(v8);
  v10 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v9 & 1) == 0)
  {
    sub_25154CD20();

    swift_willThrow();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2514ED640()
{
  result = qword_27F43BD58;
  if (!qword_27F43BD58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F43BD58);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t getEnumTagSinglePayload for HDSQLiteOntologyDatabaseRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HDSQLiteOntologyDatabaseRow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

id sub_2514ED96C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

uint64_t sub_2514ED9C0()
{
  v1 = sub_25154D200();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25154D1E0();
  v5 = v0;
  v6 = sub_25154D1F0();
  v7 = sub_25154D370();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    v11 = v5;
    v12 = [v11 description];
    v13 = sub_25154D260();
    v15 = v14;

    v16 = sub_25154C4BC(v13, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2514E7000, v6, v7, "%{public}s: connectionInvalidated", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x253079210](v10, -1, -1);
    MEMORY[0x253079210](v9, -1, -1);

    return (*(v2 + 8))(v4, v18);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

id sub_2514EDC00(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2514EDCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_25154CD10();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2514EDD58(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2514EDF6C;
  *(v6 + 24) = v5;
  _Block_copy(a3);

  v7 = [a2 profile];
  if (v7 && (v8 = v7, v9 = sub_25154D3B0(), v8, v9))
  {
    swift_getObjectType();
    sub_25154CF90();
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_25154CD70();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v11 = sub_25154CDC0();
    sub_2514EDFB0();
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D11AD8], v11);
    v14 = sub_25154CD10();
    (a3)[2](a3, 0, v14);
  }
}

uint64_t sub_2514EDF74(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    a1 = 0;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

unint64_t sub_2514EDFB0()
{
  result = qword_27F43BD60;
  if (!qword_27F43BD60)
  {
    sub_25154CDC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43BD60);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2514EE068(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2514EE0B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2514EE108@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = sub_25154D500();
  MEMORY[0x253078930](v7);

  v8 = sub_25154CE60();
  type metadata accessor for HgQLMatchSubquery();
  swift_allocObject();
  result = sub_2514F2880(1600288115, v12, v6, v8);
  if (!v3)
  {
    v10 = result;

    result = sub_2514EE22C(v11);
    if (__OFADD__(*a2, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a2;
      *a3 = v10;
    }
  }

  return result;
}

uint64_t sub_2514EE22C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2514EF228(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2514EE330(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v11 = *i;

      a1(&v10, &v11);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        MEMORY[0x253078950](v8);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25154D320();
        }

        sub_25154D340();
        v4 = v12;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_2514EE44C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2514F103C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2514F103C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_2514F23D0(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2514EE54C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2514F101C(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2514F2370(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2514F101C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2514EE660(char a1)
{
  v4 = (*(*v1 + 264))();
  if (!v5)
  {
    v1 = 0x8000000251552F90;
    sub_2514F231C();
    swift_allocError();
    v10 = 0xD000000000000017;
LABEL_5:
    *v9 = v10;
    v9[1] = v1;
    swift_willThrow();
    return v1;
  }

  v6 = v5;
  v7 = v4;
  v8 = (*(*v1 + 280))(a1 & 1);
  if (v2)
  {

    return v1;
  }

  v11 = v8;
  v12 = (*(*v1 + 272))(a1 & 1);
  if (!*(v12 + 16))
  {

    v1 = 0x8000000251552FB0;
    sub_2514F231C();
    swift_allocError();
    v10 = 0xD000000000000012;
    goto LABEL_5;
  }

  v14 = v12;
  v38 = (*(*v1 + 288))(a1 & 1);
  sub_25154D430();

  v47 = 0x205443454C4553;
  v48 = 0xE700000000000000;
  v49 = v14;
  sub_2514F23E0(0, &qword_27F43BD70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v39 = v15;
  sub_2514F22A0();
  v16 = sub_25154D230();
  v18 = v17;

  MEMORY[0x253078930](v16, v18);

  MEMORY[0x253078930](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x253078930](v7, v6);

  if (*(v38 + 16))
  {
    v47 = 0x28204552454857;
    v48 = 0xE700000000000000;
    v49 = v38;
    v19 = sub_25154D230();
    v21 = v20;

    MEMORY[0x253078930](v19, v21);

    MEMORY[0x253078930](41, 0xE100000000000000);
    v23 = 0x28204552454857;
    v22 = 0xE700000000000000;
  }

  else
  {

    v23 = 0;
    v22 = 0;
  }

  if (*(v11 + 16))
  {
    v47 = v11;
    v24 = sub_25154D230();
    v26 = v25;
  }

  else
  {

    v24 = 0;
    v26 = 0;
  }

  v27 = 0;
  v41 = 0x205443454C4553;
  v42 = 0xE700000000000000;
  v43 = v24;
  v44 = v26;
  v45 = v23;
  v46 = v22;
  v28 = MEMORY[0x277D84F90];
LABEL_18:
  if (v27 <= 3)
  {
    v29 = 3;
  }

  else
  {
    v29 = v27;
  }

  v30 = v29 + 1;
  v31 = 16 * v27 + 40;
  while (1)
  {
    if (v27 == 3)
    {
      sub_2514F23E0(0, &qword_27F43BD98, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      v47 = v28;
      v1 = sub_25154D230();

      return v1;
    }

    if (v30 == ++v27)
    {
      break;
    }

    v32 = v31 + 16;
    v33 = *&v40[v31];
    v31 += 16;
    if (v33)
    {
      v34 = *&v40[v32 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2514EF00C(0, *(v28 + 16) + 1, 1, v28);
        v28 = result;
      }

      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        result = sub_2514EF00C((v35 > 1), v36 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 16) = v36 + 1;
      v37 = v28 + 16 * v36;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2514EEB90(char a1)
{
  v4 = sub_251548D94();
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v1 = 0x8000000251552F90;
      sub_2514F231C();
      swift_allocError();
      v10 = 0xD000000000000017;
LABEL_16:
      *v9 = v10;
      v9[1] = v1;
      swift_willThrow();
      return v1;
    }

    v6 = 0xED00007370696873;
    v5 = 0x6E6F6974616C6572;
  }

  else
  {
    if (v4)
    {
      v5 = 0x7475626972747461;
    }

    else
    {
      v5 = 0x7365646F6ELL;
    }

    if (v4)
    {
      v6 = 0xEA00000000007365;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v7 = sub_2515491AC(a1 & 1);
  if (v2)
  {

    return v1;
  }

  if (!*(v7 + 2))
  {

    v1 = 0x8000000251552FB0;
    sub_2514F231C();
    swift_allocError();
    v10 = 0xD000000000000012;
    goto LABEL_16;
  }

  v8 = v7;
  v34 = sub_251549C6C();
  sub_25154D430();

  v43 = 0x205443454C4553;
  v44 = 0xE700000000000000;
  v45 = v8;
  sub_2514F23E0(0, &qword_27F43BD70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v13 = v12;
  sub_2514F22A0();
  v14 = sub_25154D230();
  v16 = v15;

  MEMORY[0x253078930](v14, v16);

  MEMORY[0x253078930](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x253078930](v5, v6);

  v17 = *(v34 + 2);
  v35 = v13;
  if (v17)
  {
    v43 = 0x28204552454857;
    v44 = 0xE700000000000000;
    v45 = v34;
    v18 = sub_25154D230();
    v20 = v19;

    MEMORY[0x253078930](v18, v20);

    result = MEMORY[0x253078930](41, 0xE100000000000000);
    v21 = 0x28204552454857;
    v22 = 0xE700000000000000;
  }

  else
  {

    v21 = 0;
    v22 = 0;
  }

  v23 = 0;
  v37 = 0x205443454C4553;
  v38 = 0xE700000000000000;
  v39 = 0;
  v40 = 0;
  v41 = v21;
  v42 = v22;
  v24 = 3;
  v25 = MEMORY[0x277D84F90];
LABEL_22:
  if (v23 > 3)
  {
    v24 = v23;
  }

  v26 = v24 + 1;
  v27 = 16 * v23 + 40;
  while (1)
  {
    if (v23 == 3)
    {
      sub_2514F23E0(0, &qword_27F43BD98, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      swift_arrayDestroy();
      v43 = v25;
      v1 = sub_25154D230();

      return v1;
    }

    if (v26 == ++v23)
    {
      break;
    }

    v28 = v27 + 16;
    v29 = *&v36[v27];
    v27 += 16;
    if (v29)
    {
      v30 = *&v36[v28 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2514EF00C(0, *(v25 + 16) + 1, 1, v25);
        v25 = result;
      }

      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_2514EF00C((v31 > 1), v32 + 1, 1, v25);
        v25 = result;
      }

      *(v25 + 16) = v32 + 1;
      v33 = v25 + 16 * v32;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      v24 = 3;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

char *sub_2514EF00C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2514F23E0(0, &qword_27F43BD88, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2514EF130(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2514F251C(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_2514EF228(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25154D590();
  sub_25154D2B0();
  v8 = sub_25154D5B0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25154D520() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2514EFA48(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2514EF378(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_25154D590();
  sub_2514F1674(v15, a2);
  v6 = sub_25154D5B0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_251506E38(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *v2;

    sub_2514EFBC8(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_2514EF4B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2514F25A0(0, &qword_27F43BDB0, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_25154D3F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_25154D590();
      sub_25154D2B0();
      result = sub_25154D5B0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2514EF738(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2514F2650(0);
  v4 = sub_25154D3F0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v27 = v2;
    v28 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v29 = v4 + 56;
    v30 = v10;
    v31 = v4;
    v32 = v3;
LABEL_7:
    if (v9)
    {
      v12 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_14:
      v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
      sub_25154D590();
      v17 = v16 + 64;
      v18 = 1 << *(v16 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(v16 + 64);
      v21 = (v18 + 63) >> 6;
      v34 = v16;

      v22 = 0;
      for (i = 0; v20; v22 = result ^ v24)
      {
        v24 = v22;
LABEL_23:
        v20 &= v20 - 1;

        sub_25154D2B0();

        sub_25154D2B0();

        result = sub_25154D5B0();
      }

      while (1)
      {
        v25 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v25 >= v21)
        {

          MEMORY[0x253078C10](v22);
          sub_25154D5B0();
          v5 = v31;
          v11 = sub_25154D3D0();
          *(v29 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
          *(*(v31 + 48) + 8 * v11) = v34;
          ++*(v31 + 16);
          v3 = v32;
          v9 = v33;
          v10 = v30;
          goto LABEL_7;
        }

        v20 = *(v17 + 8 * v25);
        ++i;
        if (v20)
        {
          v24 = v22;
          i = v25;
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
      v13 = v6;
      result = v28;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          v26 = 1 << *(v3 + 32);
          if (v26 >= 64)
          {
            bzero(v28, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v28 = -1 << v26;
          }

          v2 = v27;
          *(v3 + 16) = 0;
          goto LABEL_29;
        }

        v15 = v28[v6];
        ++v13;
        if (v15)
        {
          v12 = __clz(__rbit64(v15));
          v33 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2514EFA48(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2514EF4B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2514EFD48();
      goto LABEL_16;
    }

    sub_2514F0008(v8 + 1);
  }

  v10 = *v4;
  sub_25154D590();
  sub_25154D2B0();
  result = sub_25154D5B0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25154D520();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25154D530();
  __break(1u);
  return result;
}

uint64_t sub_2514EFBC8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2514EF738(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2514EFEC4();
      goto LABEL_12;
    }

    sub_2514F0260(v6 + 1);
  }

  v8 = *v3;
  sub_25154D590();
  sub_2514F1674(v17, v5);
  result = sub_25154D5B0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_2514F25F4();
    do
    {

      v12 = sub_251506E38(v11, v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25154D530();
  __break(1u);
  return result;
}

void *sub_2514EFD48()
{
  v1 = v0;
  sub_2514F25A0(0, &qword_27F43BDB0, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_25154D3E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2514EFEC4()
{
  v1 = v0;
  sub_2514F2650(0);
  v2 = *v0;
  v3 = sub_25154D3E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2514F0008(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2514F25A0(0, &qword_27F43BDB0, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_25154D3F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25154D590();

      sub_25154D2B0();
      result = sub_25154D5B0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_2514F0260(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2514F2650(0);
  result = sub_25154D3F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v23 = v2;
    v6 = 0;
    v24 = v3 + 56;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v25 = result + 56;
    v26 = v10;
    v27 = result;
    v28 = v3;
LABEL_7:
    if (v9)
    {
      v11 = __clz(__rbit64(v9));
      v29 = (v9 - 1) & v9;
LABEL_14:
      v14 = *(*(v3 + 48) + 8 * (v11 | (v6 << 6)));
      sub_25154D590();
      v15 = v14 + 64;
      v16 = 1 << *(v14 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(v14 + 64);
      v19 = (v16 + 63) >> 6;
      v30 = v14;
      result = swift_bridgeObjectRetain_n();
      v20 = 0;
      v21 = 0;
      if (v18)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v19)
        {

          MEMORY[0x253078C10](v20);
          sub_25154D5B0();
          v5 = v27;
          result = sub_25154D3D0();
          *(v25 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
          *(*(v27 + 48) + 8 * result) = v30;
          ++*(v27 + 16);
          v3 = v28;
          v9 = v29;
          v10 = v26;
          goto LABEL_7;
        }

        v18 = *(v15 + 8 * v22);
        ++v21;
        if (v18)
        {
          v21 = v22;
          do
          {
LABEL_23:
            v18 &= v18 - 1;

            sub_25154D2B0();

            sub_25154D2B0();

            result = sub_25154D5B0();
            v20 ^= result;
          }

          while (v18);
          continue;
        }
      }

      __break(1u);
    }

    else
    {
      v12 = v6;
      while (1)
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v23;
          goto LABEL_27;
        }

        v13 = *(v24 + 8 * v6);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v29 = (v13 - 1) & v13;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2514F0544(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2514F14C4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2514F05B0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2514F05B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25154D4F0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25154D330();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2514F0778(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2514F06A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2514F06A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_25154D520(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2514F0778(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2514F1008(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2514F0D54((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_25154D520();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_25154D520();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2514EF130(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2514EF130((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2514F0D54((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2514F1008(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2514F0F7C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_25154D520(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2514F0D54(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_25154D520() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_25154D520() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2514F0F7C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2514F1008(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_2514F101C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2514F105C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2514F103C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2514F1180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2514F105C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2514F23E0(0, &qword_27F43BD88, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2514F1180(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2514F23E0(0, &qword_27F43BD90, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2514F12AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_25154D4A0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_25154D4A0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2514F139C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2514F14D8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2514F139C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_25154D4A0();
LABEL_9:
  result = sub_25154D460();
  *v2 = result;
  return result;
}

uint64_t (*sub_2514F143C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x253078AC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2514F14BC;
  }

  __break(1u);
  return result;
}

uint64_t sub_2514F14D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25154D4A0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_25154D4A0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2514F2430(0, &qword_27F43BDA0, type metadata accessor for HgQLTraversalNode, MEMORY[0x277D83940]);
          sub_2514F2494();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2514F143C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HgQLTraversalNode(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2514F1674(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x253078C10](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_25154D2B0();

        sub_25154D2B0();

        result = sub_25154D5B0();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2514F17E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2530789D0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2514EF228(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2514F1878(uint64_t a1)
{
  sub_2514EE44C(a1);
  v1 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v2 = sub_25154D2F0();

  v3 = [v1 initWithArray_];

  v4 = [v3 array];
  v5 = sub_25154D300();

  v6 = sub_2514EE54C(v5);

  if (!v6)
  {
    sub_2514F231C();
    swift_allocError();
    *v7 = 0xD000000000000025;
    v7[1] = 0x8000000251552F60;
    swift_willThrow();
  }

  return v6;
}

unint64_t sub_2514F1994(uint64_t a1)
{
  sub_2514F2430(0, &qword_27F43BD68, MEMORY[0x277D11B78], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v48 - v4);
  v63 = 0;
  v62 = MEMORY[0x277D84FA0];
  v6 = sub_25154CE40();
  v55 = &v63;
  v56 = a1;
  v57 = &v62;
  v7 = sub_2514EE330(sub_2514F2278, v54, v6);

  if (v1)
  {
  }

  v8 = sub_2514F48CC(v7);
  v10 = v9;

  v49 = v8;
  v53 = v10;
  v11 = v62;
  v12 = *(v62 + 16);
  v13 = MEMORY[0x277D84F90];
  v51 = v62;
  if (v12)
  {
    v14 = sub_25154AEEC(v12, 0);
    v52 = sub_25154B434(v61, v14 + 4, v12, v11);
    v15 = v61[0];
    v50 = v61[4];

    sub_2514F2298(v15);
    if (v52 != v12)
    {
      __break(1u);
      goto LABEL_28;
    }

    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v61[0] = v14;
  sub_2514F0544(v61);
  v11 = 0x6870617267627573;
  v16 = v61[0];
  v17 = sub_25154CE50();
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v13;
  }

  v19 = sub_25154CE60();
  v52 = type metadata accessor for HgQLSubgraphSubquery();
  v20 = swift_allocObject();
  *(v20 + 16) = 0x6870617267627573;
  *(v20 + 24) = 0xEA0000000000315FLL;
  v14 = v20;
  type metadata accessor for HgQLSubgraphQueryNode(0);
  v21 = swift_allocObject();
  v22 = (v21 + OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphName);
  *v22 = 26483;
  v22[1] = 0xE200000000000000;
  *(v21 + OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphCaptures) = v16;
  v23 = sub_25154CF80();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);

  v5 = sub_251542544(0x65646F6E5F6773, 0xE700000000000000, v19, v5);

  v24 = sub_2514F17E0(v16);

  swift_beginAccess();
  v5[5] = v24;

  if (*(v18 + 16))
  {
    v11 = sub_2514F54F4(v18, 0x6870617267627573, 0xEA0000000000315FLL, v19);

    if (v11 >> 62)
    {
      goto LABEL_34;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

LABEL_35:

    sub_2514F231C();
    swift_allocError();
    *v47 = 0xD00000000000002ELL;
    v47[1] = 0x8000000251552F30;
    swift_willThrow();

LABEL_25:

    swift_deallocPartialClassInstance();
  }

  sub_2514F23E0(0, &qword_2813D8350, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25154E450;
  *(v12 + 32) = v5;

  while (1)
  {
    if (v12 >> 62)
    {
LABEL_28:
      v25 = sub_25154D4A0();
      if (!v25)
      {
LABEL_29:

        sub_2514F231C();
        swift_allocError();
        *v46 = 0xD00000000000002ELL;
        v46[1] = 0x8000000251552F00;
        swift_willThrow();
        goto LABEL_25;
      }
    }

    else
    {
      v25 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_29;
      }
    }

    v26 = __OFSUB__(v25, 1);
    v27 = v25 - 1;
    if (v26)
    {
      __break(1u);
LABEL_31:
      v28 = MEMORY[0x253078AC0](v27, v12);
LABEL_18:

      *(v14 + 7) = sub_2514EE660(1);
      *(v14 + 8) = v30;
      v31 = v28[3];
      *(v14 + 5) = v28[2];
      *(v14 + 6) = v31;
      v32 = *(*v28 + 208);

      v34 = v32(v33);

      *(v14 + 4) = v34;
      v35 = sub_25154CE60();
      v37 = sub_2514F1878(v35);

      v59 = 0;
      v60 = 0xE000000000000000;
      sub_25154D430();

      v59 = 0x205443454C4553;
      v60 = 0xE700000000000000;
      v58 = v37;
      sub_2514F23E0(0, &qword_27F43BD70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2514F22A0();
      v38 = sub_25154D230();
      v40 = v39;

      MEMORY[0x253078930](v38, v40);

      MEMORY[0x253078930](0x204D4F524620, 0xE600000000000000);
      MEMORY[0x253078930](0x6173726576617274, 0xE90000000000006CLL);
      v42 = v59;
      v41 = v60;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_25154D430();

      v59 = 0xD000000000000021;
      v60 = 0x8000000251552ED0;
      MEMORY[0x253078930](v49, v53);

      MEMORY[0x253078930](665866, 0xE300000000000000);
      v43 = *(v14 + 7);
      v44 = *(v14 + 8);

      MEMORY[0x253078930](v43, v44);

      MEMORY[0x253078930](665866, 0xE300000000000000);
      MEMORY[0x253078930](v42, v41);

      return v59;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_31;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v27 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v12 + 8 * v27 + 32);

      goto LABEL_18;
    }

    __break(1u);
LABEL_34:
    if (!sub_25154D4A0())
    {
      goto LABEL_35;
    }

LABEL_21:
    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

    v29 = MEMORY[0x253078AC0](0, v11);
LABEL_24:
    sub_251543384(v29);
    sub_2514F23E0(0, &qword_2813D8350, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_25154E450;
    *(v36 + 32) = v5;
    v59 = v36;
    sub_2514F12AC(v11);

    v12 = v59;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v11 + 32);

    goto LABEL_24;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_2514F22A0()
{
  result = qword_27F43BD78;
  if (!qword_27F43BD78)
  {
    sub_2514F23E0(255, &qword_27F43BD70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43BD78);
  }

  return result;
}

unint64_t sub_2514F231C()
{
  result = qword_27F43BD80;
  if (!qword_27F43BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43BD80);
  }

  return result;
}

uint64_t sub_2514F2370(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2514F23D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2514F23E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2514F2430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2514F2494()
{
  result = qword_27F43BDA8;
  if (!qword_27F43BDA8)
  {
    sub_2514F2430(255, &qword_27F43BDA0, type metadata accessor for HgQLTraversalNode, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43BDA8);
  }

  return result;
}

void sub_2514F251C(uint64_t a1)
{
  if (!qword_27F43BDB8)
  {
    sub_2514F25A0(255, &qword_27F43BDC0, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v1 = sub_25154D510();
    if (!v2)
    {
      atomic_store(v1, &qword_27F43BDB8);
    }
  }
}

void sub_2514F25A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2514F25F4()
{
  if (!qword_27F43BDC8)
  {
    v0 = sub_25154D210();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43BDC8);
    }
  }
}

void sub_2514F2650(uint64_t a1)
{
  if (!qword_27F43BDD0)
  {
    sub_2514F25F4();
    sub_2514F26B4();
    v1 = sub_25154D410();
    if (!v2)
    {
      atomic_store(v1, &qword_27F43BDD0);
    }
  }
}

unint64_t sub_2514F26B4()
{
  result = qword_27F43BDD8;
  if (!qword_27F43BDD8)
  {
    sub_2514F25F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43BDD8);
  }

  return result;
}

uint64_t type metadata accessor for HgQLGraphQuery(uint64_t a1)
{
  result = qword_27F43BDE0;
  if (!qword_27F43BDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2514F2798(uint64_t a1)
{
  result = sub_25154CE70();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2514F280C()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

unint64_t sub_2514F2880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v6[2] = a1;
  v6[3] = a2;

  v11 = sub_2514F54F4(a3, a1, a2, a4);
  if (v5)
  {

LABEL_3:

    type metadata accessor for HgQLMatchSubquery();
    swift_deallocPartialClassInstance();
    return v6;
  }

  v13 = v11;

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_14:

    sub_2514F231C();
    swift_allocError();
    *v22 = 0xD00000000000002ELL;
    v22[1] = 0x8000000251552F00;
    swift_willThrow();
    goto LABEL_3;
  }

  v14 = sub_25154D4A0();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  v15 = __OFSUB__(v14, 1);
  result = v14 - 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v16 = MEMORY[0x253078AC0](result, v13);
    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v13 + 8 * result + 32);

LABEL_12:

    v6[7] = sub_2514EE660(0);
    v6[8] = v17;
    v18 = v16[3];
    v6[5] = v16[2];
    v6[6] = v18;
    v19 = *(*v16 + 208);

    v21 = v19(v20);

    v6[4] = v21;
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t *sub_2514F2AA8(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2514F2E0C(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_2514F61F0(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x253079210](v14, -1, -1);
  }

  return v10;
}

unint64_t *sub_2514F2C48(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_2514F307C((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_2514F2FEC(v11, v6, a2, a1);

    MEMORY[0x253079210](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_2514F2E0C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_25154D590();

          sub_25154D2B0();
          v13 = sub_25154D5B0();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_25154D520() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_2514F3458(v25, a2, v24, a4);
}

unint64_t *sub_2514F2FEC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_2514F307C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2514F307C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_25154D590();

      sub_25154D2B0();
      v26 = sub_25154D5B0();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_25154D520() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_2514F3458(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_25154D590();

      sub_25154D2B0();
      v39 = sub_25154D5B0();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_25154D520() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2514F3458(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2514F6110();
  result = sub_25154D400();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_25154D590();

    sub_25154D2B0();
    result = sub_25154D5B0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2514F3670(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_25154D4A0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_15:
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v14 = sub_25154D230();
    v16 = v15;

    MEMORY[0x253078930](v14, v16);

    return 0x2048544957;
  }

  v21 = MEMORY[0x277D84F90];
  result = sub_2514F101C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = MEMORY[0x253078AC0](v4, a1);
        v17 = v5[2];
        v19 = v5[3];

        MEMORY[0x253078930](0x2820534120, 0xE500000000000000);
        MEMORY[0x253078930](v5[7], v5[8]);
        MEMORY[0x253078930](41, 0xE100000000000000);
        swift_unknownObjectRelease();
        v7 = *(v21 + 16);
        v6 = *(v21 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2514F101C((v6 > 1), v7 + 1, 1);
        }

        ++v4;
        *(v21 + 16) = v7 + 1;
        v8 = v21 + 16 * v7;
        *(v8 + 32) = v17;
        *(v8 + 40) = v19;
      }

      while (v2 != v4);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        v10 = *v9;
        v18 = *(*v9 + 16);
        v20 = *(*v9 + 24);

        MEMORY[0x253078930](0x2820534120, 0xE500000000000000);
        MEMORY[0x253078930](*(v10 + 56), *(v10 + 64));
        MEMORY[0x253078930](41, 0xE100000000000000);

        v12 = *(v21 + 16);
        v11 = *(v21 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_2514F101C((v11 > 1), v12 + 1, 1);
        }

        *(v21 + 16) = v12 + 1;
        v13 = v21 + 16 * v12;
        *(v13 + 32) = v18;
        *(v13 + 40) = v20;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2514F38FC(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v46 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v39 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25154D4A0())
  {
    v4 = 0;
    v38 = v2 & 0xC000000000000001;
    v42 = MEMORY[0x277D84F90];
    v36 = i;
    v37 = v2;
LABEL_4:
    while (v38)
    {
      v5 = MEMORY[0x253078AC0](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_39;
      }

LABEL_7:
      v41 = v6;
      v40 = v5[5];
      v7 = v5[4];
      v8 = *(v7 + 16);
      v43 = v5[6];
      if (v8)
      {
        sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
        v9 = swift_allocObject();
        v10 = _swift_stdlib_malloc_size(v9);
        v11 = v10 - 32;
        if (v10 < 32)
        {
          v11 = v10 - 17;
        }

        v9[2] = v8;
        v9[3] = 2 * (v11 >> 4);
        v12 = sub_25154B434(&v44, v9 + 4, v8, v7);
        v13 = v44;
        v2 = v45;

        sub_2514F2298(v13);
        if (v12 != v8)
        {
          goto LABEL_42;
        }

        i = v36;
        v2 = v37;
      }

      else
      {

        v9 = MEMORY[0x277D84F90];
      }

      v44 = v9;
      sub_2514F0544(&v44);
      v14 = v44;
      v15 = *(v44 + 16);
      if (v15)
      {
        v2 = 0;
        while (1)
        {
          if (v2 >= *(v14 + 16))
          {
            goto LABEL_41;
          }

          v16 = (v14 + 32 + 16 * v2);
          v18 = *v16;
          v17 = v16[1];
          v19 = v46;
          if (*(v46 + 16))
          {
            sub_25154D590();

            sub_25154D2B0();
            v20 = sub_25154D5B0();
            v21 = -1 << *(v19 + 32);
            v22 = v20 & ~v21;
            if ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              v23 = ~v21;
              do
              {
                v24 = (*(v19 + 48) + 16 * v22);
                v25 = *v24 == v18 && v24[1] == v17;
                if (v25 || (sub_25154D520() & 1) != 0)
                {
                  goto LABEL_17;
                }

                v22 = (v22 + 1) & v23;
              }

              while (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
            }
          }

          else
          {
          }

          v44 = v40;
          v45 = v43;

          MEMORY[0x253078930](95, 0xE100000000000000);
          MEMORY[0x253078930](v18, v17);
          MEMORY[0x253078930](544432416, 0xE400000000000000);
          MEMORY[0x253078930](v18, v17);
          v26 = v44;
          v27 = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_2514EF00C(0, *(v42 + 2) + 1, 1, v42);
          }

          v29 = *(v42 + 2);
          v28 = *(v42 + 3);
          if (v29 >= v28 >> 1)
          {
            v42 = sub_2514EF00C((v28 > 1), v29 + 1, 1, v42);
          }

          *(v42 + 2) = v29 + 1;
          v30 = &v42[16 * v29];
          *(v30 + 4) = v26;
          *(v30 + 5) = v27;
          sub_2514EF228(&v44, v18, v17);
LABEL_17:

          if (++v2 == v15)
          {

            i = v36;
            v2 = v37;
            v4 = v41;
            if (v41 != v36)
            {
              goto LABEL_4;
            }

            goto LABEL_44;
          }
        }
      }

      ++v4;
      if (v41 == i)
      {
        goto LABEL_44;
      }
    }

    if (v4 >= *(v39 + 16))
    {
      goto LABEL_40;
    }

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v39 = v2 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_44:

  v44 = 0;
  v45 = 0xE000000000000000;
  sub_25154D430();

  v44 = 0x205443454C4553;
  v45 = 0xE700000000000000;
  sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
  sub_2514F22A0();
  v31 = sub_25154D230();
  v33 = v32;

  MEMORY[0x253078930](v31, v33);

  MEMORY[0x253078930](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x253078930](*(a2 + 16), *(a2 + 24));
  return v44;
}

uint64_t sub_2514F3E1C(unint64_t a1, void *a2)
{
  v87 = a2;
  v96 = *MEMORY[0x277D85DE8];
  v90 = a1;
  v3 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v4 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 <= 1)
    {
      return 0;
    }

    v88 = 0;
    v91 = v2;
    v5 = v87[4];
    goto LABEL_4;
  }

LABEL_69:
  v91 = v2;
  if (sub_25154D4A0() <= 1)
  {
    return 0;
  }

  v88 = v3;
  v5 = v87[4];
  v77 = sub_25154D4A0();
  if (v77)
  {
    v4 = v77;
LABEL_4:
    v89 = v90 & 0xC000000000000001;
    v84 = v90 & 0xFFFFFFFFFFFFFF8;

    v6 = 0;
    do
    {
      if (v89)
      {
        v7 = MEMORY[0x253078AC0](v6, v90);
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v6 >= *(v84 + 16))
        {
          goto LABEL_67;
        }

        v7 = *(v90 + 8 * v6 + 32);

        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }
      }

      v8 = *(v7 + 32);
      v9 = *(v5 + 32);
      v10 = v9 & 0x3F;
      v11 = ((1 << v9) + 63) >> 6;
      v12 = (8 * v11);

      if (v10 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        v92 = v11;
        v14 = v8;
        v15 = v4;
        MEMORY[0x28223BE20](isStackAllocationSafe);
        bzero(&v81 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);
        v2 = v91;
        v16 = sub_2514F307C((&v81 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v92, v5, v14);
        v91 = v2;
        if (v2)
        {

          v80 = v91;
          swift_willThrow();

          __break(1u);
LABEL_78:

          result = MEMORY[0x253079210](v12, -1, -1);
          __break(1u);
          goto LABEL_79;
        }

        v17 = v16;

        v5 = v17;
        v4 = v15;
      }

      else
      {
        v19 = v4;
        v12 = swift_slowAlloc();

        v2 = v91;
        v20 = sub_2514F2FEC(v12, v11, v5, v8);
        v91 = v2;
        if (v2)
        {
          goto LABEL_78;
        }

        v21 = v20;

        swift_bridgeObjectRelease_n();
        MEMORY[0x253079210](v12, -1, -1);
        v5 = v21;
        v4 = v19;
      }

      ++v6;
    }

    while (v3 != v4);
    if (!*(v5 + 16))
    {
      goto LABEL_75;
    }

    if (v4 >= 1)
    {
      if (v88)
      {
        goto LABEL_25;
      }

      v22 = *(v84 + 16);
      if (!v22)
      {
        __break(1u);
LABEL_25:
        if (sub_25154D4A0() < 1)
        {
          __break(1u);
        }

        v22 = sub_25154D4A0();
      }

      if (v22 < v4)
      {
        __break(1u);
        goto LABEL_74;
      }

      if (!v89 || v4 == 1)
      {

        if (!v88)
        {
          goto LABEL_33;
        }
      }

      else
      {
        type metadata accessor for HgQLMatchSubquery();

        v23 = 1;
        do
        {
          v3 = v23 + 1;
          sub_25154D440();
          v23 = v3;
        }

        while (v4 != v3);
        if (!v88)
        {
LABEL_33:
          v82 = v84 + 32;
          v24 = 1;
          if (v4 != 1)
          {
            goto LABEL_34;
          }

LABEL_63:

          v75 = MEMORY[0x277D84F90];
LABEL_64:
          swift_unknownObjectRelease();
          v94 = v75;
          sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
          sub_2514F22A0();
          v76 = sub_25154D230();

          return v76;
        }
      }

      v3 = v90;

      v84 = sub_25154D4B0();
      v82 = v72;
      v24 = v73;
      v4 = v74 >> 1;
      if (v73 != v74 >> 1)
      {
LABEL_34:
        v25 = v4;
        v26 = v5 + 56;
        v85 = MEMORY[0x277D84F90];
        v86 = v5 + 56;
        v88 = v5;
        v81 = v25;
        while (v24 < v25)
        {
          v27 = *(v82 + 8 * v24);
          v83 = v24 + 1;
          v28 = 1 << *(v5 + 32);
          if (v28 < 64)
          {
            v29 = ~(-1 << v28);
          }

          else
          {
            v29 = -1;
          }

          v30 = v29 & *(v5 + 56);
          v3 = (v28 + 63) >> 6;

          v31 = 0;
          v32 = MEMORY[0x277D84F90];
          v92 = MEMORY[0x277D84F90];
          if (!v30)
          {
            goto LABEL_41;
          }

          do
          {
            v89 = v32;
LABEL_45:
            v34 = (*(v5 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v30)))));
            v35 = *v34;
            v36 = v34[1];
            v94 = 0;
            v95 = 0xE000000000000000;

            sub_25154D430();
            v37 = v87;
            v39 = v87[2];
            v38 = v87[3];

            v94 = v39;
            v95 = v38;
            MEMORY[0x253078930](46, 0xE100000000000000);
            MEMORY[0x253078930](v37[5], v37[6]);
            MEMORY[0x253078930](95, 0xE100000000000000);
            MEMORY[0x253078930](v35, v36);
            MEMORY[0x253078930](2112800, 0xE300000000000000);
            v40 = v27[2];
            v41 = v27[3];

            MEMORY[0x253078930](v40, v41);

            MEMORY[0x253078930](46, 0xE100000000000000);
            v42 = v27[5];
            v43 = v27[6];

            MEMORY[0x253078930](v42, v43);

            MEMORY[0x253078930](95, 0xE100000000000000);
            v90 = v35;
            MEMORY[0x253078930](v35, v36);
            v44 = v94;
            v45 = v95;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v92 = sub_2514EF00C(0, *(v92 + 2) + 1, 1, v92);
            }

            v47 = *(v92 + 2);
            v46 = *(v92 + 3);
            if (v47 >= v46 >> 1)
            {
              v92 = sub_2514EF00C((v46 > 1), v47 + 1, 1, v92);
            }

            v48 = v92;
            *(v92 + 2) = v47 + 1;
            v49 = &v48[16 * v47];
            *(v49 + 4) = v44;
            *(v49 + 5) = v45;
            v94 = 0;
            v95 = 0xE000000000000000;
            sub_25154D430();
            v51 = v27[2];
            v50 = v27[3];

            v94 = v51;
            v95 = v50;
            MEMORY[0x253078930](46, 0xE100000000000000);
            v2 = v27[5];
            v52 = v27[6];

            MEMORY[0x253078930](v2, v52);

            MEMORY[0x253078930](95, 0xE100000000000000);
            MEMORY[0x253078930](v90, v36);

            MEMORY[0x253078930](0x20544F4E20534920, 0xEC0000004C4C554ELL);
            v53 = v94;
            v54 = v95;
            v32 = v89;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_2514EF00C(0, *(v32 + 2) + 1, 1, v32);
            }

            v56 = *(v32 + 2);
            v55 = *(v32 + 3);
            if (v56 >= v55 >> 1)
            {
              v32 = sub_2514EF00C((v55 > 1), v56 + 1, 1, v32);
            }

            v30 &= v30 - 1;
            *(v32 + 2) = v56 + 1;
            v57 = &v32[16 * v56];
            *(v57 + 4) = v53;
            *(v57 + 5) = v54;
            v5 = v88;
            v26 = v86;
          }

          while (v30);
          while (1)
          {
LABEL_41:
            v33 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              __break(1u);
              goto LABEL_66;
            }

            if (v33 >= v3)
            {
              break;
            }

            v30 = *(v26 + 8 * v33);
            ++v31;
            if (v30)
            {
              v89 = v32;
              v31 = v33;
              goto LABEL_45;
            }
          }

          v94 = 0;
          v95 = 0xE000000000000000;
          sub_25154D430();

          v94 = 0x494F4A205446454CLL;
          v95 = 0xEA0000000000204ELL;
          v2 = v27[2];
          v58 = v27[3];

          MEMORY[0x253078930](v2, v58);

          MEMORY[0x253078930](0x28204E4F20, 0xE500000000000000);
          v93 = v92;
          sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
          sub_2514F22A0();
          v59 = v32;
          v60 = sub_25154D230();
          v62 = v61;

          MEMORY[0x253078930](v60, v62);

          MEMORY[0x253078930](0x2045524548572029, 0xE900000000000028);
          v93 = v59;
          v63 = sub_25154D230();
          v65 = v64;

          MEMORY[0x253078930](v63, v65);

          MEMORY[0x253078930](41, 0xE100000000000000);
          v3 = v94;
          v66 = v95;
          v67 = v85;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_2514EF00C(0, *(v67 + 2) + 1, 1, v67);
          }

          v24 = v83;
          v69 = *(v67 + 2);
          v68 = *(v67 + 3);
          v85 = v67;
          if (v69 >= v68 >> 1)
          {
            v85 = sub_2514EF00C((v68 > 1), v69 + 1, 1, v85);
          }

          v70 = v85;
          *(v85 + 2) = v69 + 1;
          v71 = &v70[16 * v69];
          *(v71 + 4) = v3;
          *(v71 + 5) = v66;
          v25 = v81;
          v5 = v88;
          if (v24 == v81)
          {

            v75 = v85;
            goto LABEL_64;
          }
        }

        goto LABEL_68;
      }

      goto LABEL_63;
    }

    goto LABEL_79;
  }

LABEL_74:
  v78 = *(v5 + 16);

  if (!v78)
  {
LABEL_75:

    sub_2514F231C();
    swift_allocError();
    *v79 = 0xD00000000000002FLL;
    v79[1] = 0x8000000251553120;
    return swift_willThrow();
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_2514F48CC(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_25154D4A0())
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x253078AC0](0, v2);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v4 = *(v2 + 32);
    }

    sub_2514F3670(v2);
    v6 = v5;
    v7 = sub_2514F38FC(v2, v4);
    v9 = v8;
    v10 = sub_2514F3E1C(v2, v4);
    if (v1)
    {

      return v2;
    }

    v12 = 0;
    v23[0] = v6;
    v23[1] = v7;
    v23[2] = v9;
    v23[3] = v10;
    v23[4] = v11;
    v13 = 3;
    v14 = MEMORY[0x277D84F90];
LABEL_9:
    if (v12 > 3)
    {
      v13 = v12;
    }

    v15 = v13 + 1;
    v16 = &v23[2 * v12];
    while (1)
    {
      if (v12 == 3)
      {
        swift_arrayDestroy();
        v23[6] = v14;
        sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
        sub_2514F22A0();
        v2 = sub_25154D230();

        return v2;
      }

      if (v15 == ++v12)
      {
        break;
      }

      v17 = *(v16 - 1);
      v2 = *v16;
      v16 += 2;
      v18 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v18 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2514EF00C(0, *(v14 + 2) + 1, 1, v14);
        }

        v20 = *(v14 + 2);
        v19 = *(v14 + 3);
        if (v20 >= v19 >> 1)
        {
          v14 = sub_2514EF00C((v19 > 1), v20 + 1, 1, v14);
        }

        *(v14 + 2) = v20 + 1;
        v21 = &v14[16 * v20];
        *(v21 + 4) = v17;
        *(v21 + 5) = v2;
        v13 = 3;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_24:
    ;
  }

  v2 = 0x8000000251553100;
  sub_2514F231C();
  swift_allocError();
  *v22 = 0xD000000000000017;
  v22[1] = 0x8000000251553100;
  swift_willThrow();
  return v2;
}

uint64_t sub_2514F4B80(unint64_t a1, uint64_t *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v76 = sub_25154CDE0();
  v4 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F5EDC(0, &qword_27F43BD68, MEMORY[0x277D11B78]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_25154CF80();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v77 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v70 = &v51 - v13;
  v82 = MEMORY[0x277D84F90];
  v54 = a1;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_47:
    v53 = MEMORY[0x277D84F90];
LABEL_48:
    if (v53 >> 62)
    {
      v43 = sub_25154D4A0();
    }

    else
    {
      v43 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v54;

    if (v43)
    {
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_25154D430();

      v80 = 0xD00000000000002CLL;
      v81 = 0x80000002515530D0;
      v45 = type metadata accessor for HgQLAttributeValueNode(0);
      v46 = MEMORY[0x253078980](v44, v45);
      MEMORY[0x253078930](v46);

      v47 = v80;
      v48 = v81;
      sub_2514F231C();
      swift_allocError();
      *v49 = v47;
      v49[1] = v48;
      return swift_willThrow();
    }

    return result;
  }

LABEL_3:
  v15 = *a2;
  v16 = *a2 >> 62;
  v55 = v14;
  v61 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v16)
  {
    v57 = sub_25154D4A0();
  }

  else
  {
    v57 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2 = v77;
  v17 = 0;
  v56 = v54 & 0xC000000000000001;
  v52 = v54 & 0xFFFFFFFFFFFFFF8;
  v51 = v54 + 32;
  v74 = v15 & 0xC000000000000001;
  v60 = v15 + 32;
  v73 = (v10 + 48);
  v66 = (v10 + 16);
  v67 = (v10 + 32);
  v65 = (v4 + 88);
  v64 = *MEMORY[0x277D11B18];
  v63 = (v10 + 8);
  v53 = MEMORY[0x277D84F90];
  v18 = (v4 + 8);
  v4 = v70;
  v10 = v57;
  v59 = v8;
  v58 = v9;
  v68 = v15;
  while (1)
  {
    if (v56)
    {
      v72 = MEMORY[0x253078AC0](v17, v54);
      v20 = __OFADD__(v17++, 1);
      if (v20)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v17 >= *(v52 + 16))
      {
        goto LABEL_45;
      }

      v72 = *(v51 + 8 * v17);

      v20 = __OFADD__(v17++, 1);
      if (v20)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v14 = sub_25154D4A0();
        if (!v14)
        {
          goto LABEL_47;
        }

        goto LABEL_3;
      }
    }

    if (v10)
    {
      break;
    }

LABEL_6:

    MEMORY[0x253078950](v19);
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25154D320();
      a2 = v77;
    }

    sub_25154D340();

    v53 = v82;
    v10 = v57;
LABEL_9:
    v4 = v70;
    if (v17 == v55)
    {
      goto LABEL_48;
    }
  }

  v69 = OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple;
  v78 = v17;
  while (1)
  {
    while (1)
    {
      v20 = __OFSUB__(v10--, 1);
      if (v20)
      {
        __break(1u);
LABEL_41:
      }

      if (v74)
      {
        v21 = MEMORY[0x253078AC0](v10, v15);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v10 >= *(v61 + 16))
        {
          goto LABEL_43;
        }

        v21 = *(v60 + 8 * v10);
      }

      sub_2514F6000(v21 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v8);
      if ((*v73)(v8, 1, v9) != 1)
      {
        break;
      }

      sub_2514F6080(v8);
      v17 = v78;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    (*v67)(v4, v8, v9);
    (*v66)(a2, v72 + v69, v9);
    v22 = v75;
    sub_25154CF50();
    v23 = (*v65)(v22, v76);
    if (v23 != v64)
    {

      v39 = *v63;
      (*v63)(v77, v9);
      v39(v4, v9);
      a2 = v77;
      (*v18)(v75, v76);
      v15 = v68;
      goto LABEL_33;
    }

    (*v18)(v75, v76);
    v24 = sub_25154CF60();
    v25 = sub_2514F17E0(v24);

    v26 = sub_25154CF60();
    v62 = &v51;
    v79 = v26;
    isStackAllocationSafe = MEMORY[0x28223BE20](v26);
    *(&v51 - 2) = &v79;
    *(&v51 - 1) = v25;
    v29 = (v28 + 63) >> 6;
    v30 = 8 * v29;
    if (v31 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v32 = v18;
        v33 = swift_slowAlloc();
        bzero(v33, v30);
        v40 = v71;
        sub_2514F60F8(v33, v29, &v80);
        v71 = v40;
        if (v40)
        {
          goto LABEL_56;
        }

        v36 = v80;

        MEMORY[0x253079210](v33, -1, -1);

        goto LABEL_30;
      }
    }

    v32 = v18;
    v33 = &v51;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(&v51 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0), v30);
    v34 = v71;
    v35 = sub_2514F2E0C((&v51 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0)), v29, v26, v25);
    v71 = v34;
    if (v34)
    {
      break;
    }

    v36 = v35;

LABEL_30:
    v8 = v59;
    v15 = v68;
    v37 = *v63;
    v9 = v58;
    (*v63)(v77, v58);
    v37(v70, v9);
    v38 = v36[2];

    if (v38)
    {
      v41 = v71;
      sub_251542E84(v72);
      if (!v41)
      {
        v18 = v32;
        v71 = 0;

        a2 = v77;
        v17 = v78;
        v10 = v57;
        goto LABEL_9;
      }

      goto LABEL_41;
    }

    a2 = v77;
    v4 = v70;
    v18 = v32;
LABEL_33:
    v17 = v78;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v50 = v71;
  swift_willThrow();

  __break(1u);
LABEL_56:

  result = MEMORY[0x253079210](v33, -1, -1);
  __break(1u);
  return result;
}

void *sub_2514F54F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a3;
  v87 = a4;
  v85 = a2;
  sub_2514F5EDC(0, &qword_27F43BD68, MEMORY[0x277D11B78]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = &v68 - v8;
  v9 = sub_25154CF80();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v68 - v13;
  sub_2514F5E70(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v76 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2514F5EDC(0, &qword_27F43BDF8, sub_2514F5E70);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = (&v68 - v20);
  v75 = 0;
  v22 = 0;
  v99 = MEMORY[0x277D84F90];
  v98 = MEMORY[0x277D84F90];
  v78 = a1;
  v23 = *(a1 + 16);
  v93 = (v10 + 16);
  v90 = (v16 + 48);
  v91 = (v16 + 56);
  v24 = (v10 + 32);
  v70 = (v10 + 56);
  v69 = (v10 + 48);
  v77 = v10;
  v25 = (v10 + 8);
  v27 = v26;
  v88 = v25;
  v28 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  v92 = v24;
  v83 = v23;
  v84 = &v68 - v20;
  v79 = v26;
  v82 = v15;
  while (1)
  {
    if (v22 == v23)
    {
      v29 = 1;
      v30 = v23;
    }

    else
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_33;
      }

      v31 = v77;
      v32 = v78 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v22;
      v33 = *(v15 + 48);
      v34 = v28;
      v35 = v21;
      v36 = v76;
      *v76 = v22;
      (*(v31 + 16))(&v36[v33], v32, v9);
      v37 = v36;
      v21 = v35;
      v28 = v34;
      sub_2514F5F30(v37, v27);
      v29 = 0;
      v30 = v22 + 1;
      v24 = v92;
    }

    (*v91)(v27, v29, 1, v15);
    sub_2514F5F94(v27, v21, &qword_27F43BDF8, sub_2514F5E70);
    if ((*v90)(v21, 1, v15) == 1)
    {
      break;
    }

    v81 = v28;
    v94 = v30;
    v38 = *v21;
    v39 = *v24;
    v40 = v89;
    (*v24)(v89, v21 + *(v15 + 48), v9);
    v41 = v9;
    if (sub_25154CF30())
    {
      v96 = v85;
      v97 = v86;

      MEMORY[0x253078930](95, 0xE100000000000000);
      v95 = v38;
      v42 = sub_25154D500();
      MEMORY[0x253078930](v42);

      v43 = v96;
      v44 = v97;
      v45 = v80;
      (*v93)(v80, v40, v9);
      type metadata accessor for HgQLAttributeValueNode(0);
      v46 = swift_allocObject();
      *(v46 + 2) = v43;
      *(v46 + 3) = v44;
      *(v46 + 4) = v87;

      v47 = sub_25154CF60();
      v48 = sub_2514F17E0(v47);

      *(v46 + 5) = v48;
      v39(&v46[OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple], v45, v9);

      MEMORY[0x253078950](v49);
      if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25154D320();
      }

      sub_25154D340();

      (*v88)(v40, v9);
      v28 = v98;
      v15 = v82;
      v23 = v83;
      v27 = v79;
      v21 = v84;
      v24 = v92;
      v22 = v94;
    }

    else
    {
      v96 = v85;
      v97 = v86;

      MEMORY[0x253078930](95, 0xE100000000000000);
      v95 = v38;
      v50 = sub_25154D500();
      MEMORY[0x253078930](v50);

      v51 = v96;
      v52 = v97;
      v53 = v72;
      (*v93)(v72, v40, v41);
      (*v70)(v53, 0, 1, v41);
      type metadata accessor for HgQLTraversalNode(0);
      v54 = swift_allocObject();
      *(v54 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode) = 0;
      v55 = MEMORY[0x277D84F90];
      *(v54 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes) = MEMORY[0x277D84F90];
      v54[2] = v51;
      v54[3] = v52;
      v56 = v54;
      v54[4] = v87;
      v57 = v71;
      sub_2514F6000(v53, v71);
      v58 = (*v69)(v57, 1, v41);

      v9 = v41;
      if (v58 == 1)
      {
        sub_2514F6080(v57);
        v59 = v55;
      }

      else
      {
        v59 = sub_25154CF60();
        (*v88)(v57, v41);
      }

      v22 = v94;
      v15 = v82;
      v60 = sub_2514F17E0(v59);

      v61 = v56;
      *(v56 + 40) = v60;
      sub_2514F5F94(v72, v56 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, &qword_27F43BD68, MEMORY[0x277D11B78]);
      v21 = v84;
      if (v75)
      {
        v62 = v74;
        sub_251543384(v56);
        v74 = v62;
        v23 = v83;
        if (v62)
        {

          (*v88)(v89, v9);
          v28 = v73;

          return v28;
        }
      }

      else
      {
        v23 = v83;
      }

      MEMORY[0x253078950](v63);
      v28 = v81;
      if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25154D320();
        v28 = v81;
      }

      sub_25154D340();
      (*v88)(v89, v9);
      v73 = v99;
      v75 = v61;
      v24 = v92;
    }
  }

  v21 = v28;
  v28 = v73;
  if (!(v73 >> 62))
  {
    v64 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

LABEL_34:
  v64 = sub_25154D4A0();
LABEL_24:
  v65 = v74;
  if (v64)
  {
    sub_2514F4B80(v21, &v99);
    if (v65)
    {
    }
  }

  else
  {

    sub_2514F231C();
    swift_allocError();
    *v66 = 0xD00000000000001CLL;
    v66[1] = 0x80000002515530B0;
    swift_willThrow();
  }

  return v28;
}

void sub_2514F5E70(uint64_t a1)
{
  if (!qword_27F43BDF0)
  {
    sub_25154CF80();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F43BDF0);
    }
  }
}

void sub_2514F5EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25154D3C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2514F5F30(uint64_t a1, uint64_t a2)
{
  sub_2514F5E70(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2514F5F94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2514F5EDC(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2514F6000(uint64_t a1, uint64_t a2)
{
  sub_2514F5EDC(0, &qword_27F43BD68, MEMORY[0x277D11B78]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2514F6080(uint64_t a1)
{
  sub_2514F5EDC(0, &qword_27F43BD68, MEMORY[0x277D11B78]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2514F6110()
{
  if (!qword_27F43BDB0)
  {
    v0 = sub_25154D410();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43BDB0);
    }
  }
}

unint64_t *sub_2514F6168@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  result = sub_2514F2E0C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_2514F619C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2514F6228()
{
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_ontologyConceptManager);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_ontologyDatabase);
    if (v2)
    {
      v3 = sub_2514F6968();
      v32[3] = v3;
      v32[4] = &off_286375C10;
      v32[0] = v2;
      v30 = type metadata accessor for HgQLEvaluator();
      v4 = swift_allocObject();
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v32, v3);
      MEMORY[0x28223BE20](v5);
      v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v31[3] = v3;
      v31[4] = &off_286375C10;
      v31[0] = v9;
      sub_2514F6A04(v31, v4 + 32);
      v29 = v2;
      v10 = v1;
      v11 = sub_25154D280();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1(v31);
      *(v4 + 16) = v11;
      *(v4 + 24) = v13;
      __swift_destroy_boxed_opaque_existential_1(v32);
      sub_2514F6A68(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25154E5A0;
      *(inited + 32) = sub_25154D290();
      *(inited + 40) = v15;
      v16 = sub_25154D290();
      v18 = v17;
      sub_2514F6B8C();
      *(inited + 72) = v19;
      *(inited + 80) = sub_2514F6C08(&qword_2813D83C8, 255, sub_2514F6B8C, &unk_25154E2C0);
      v20 = swift_allocObject();
      *(inited + 48) = v20;
      v20[2] = v16;
      v20[3] = v18;
      v21 = MEMORY[0x277D10390];
      v20[5] = MEMORY[0x277D10390];
      swift_unknownObjectUnownedInit();
      *(inited + 88) = sub_25154D2A0();
      *(inited + 96) = v22;
      v23 = sub_25154D2A0();
      v25 = v24;
      sub_2514F6C50();
      *(inited + 128) = v26;
      *(inited + 136) = sub_2514F6C08(qword_2813D83D8, 255, sub_2514F6C50, &unk_25154E2C0);
      v27 = swift_allocObject();
      *(inited + 104) = v27;
      v27[2] = v23;
      v27[3] = v25;
      v27[5] = v21;
      swift_unknownObjectUnownedInit();
      *(inited + 144) = sub_25154D280();
      *(inited + 152) = v28;
      *(inited + 184) = v30;
      *(inited + 192) = sub_2514F6C08(qword_2813D8510, 255, type metadata accessor for HgQLEvaluator, &unk_251552A18);
      *(inited + 160) = v4;

      sub_251508FC8(inited);
      swift_setDeallocating();
      sub_2514F6AC0(0);
      swift_arrayDestroy();
      sub_25154CEA0();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_2514F65D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcreteHealthContentProfileExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ConcreteHealthContentProfileExtension.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConcreteHealthContentProfileExtension.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2514F6820@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_protectedState);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;
  os_unfair_lock_unlock((v3 + 20));
  if (v4 == 1)
  {
    sub_2514F6228();
  }

  v5 = *(v1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_ontologyEvaluatorRegistry);
  v6 = sub_25154CED0();
  v7 = MEMORY[0x277D11B50];
  a1[3] = v6;
  a1[4] = v7;
  *a1 = v5;
}

uint64_t sub_2514F68B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_protectedState);
  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
  os_unfair_lock_unlock((v4 + 20));
  if (v5 == 1)
  {
    sub_2514F6228();
  }

  return sub_2514F6A04(v3 + OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_daemonOntologyStore, a1);
}

unint64_t sub_2514F6968()
{
  result = qword_2813D8390;
  if (!qword_2813D8390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813D8390);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2514F6A04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2514F6A68(uint64_t a1)
{
  if (!qword_2813D8358)
  {
    sub_2514F6AC0(255);
    v1 = sub_25154D510();
    if (!v2)
    {
      atomic_store(v1, &qword_2813D8358);
    }
  }
}

void sub_2514F6AC0(uint64_t a1)
{
  if (!qword_2813D83B0)
  {
    sub_2514F6B28();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813D83B0);
    }
  }
}

unint64_t sub_2514F6B28()
{
  result = qword_2813D85E8;
  if (!qword_2813D85E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D85E8);
  }

  return result;
}

void sub_2514F6B8C()
{
  if (!qword_2813D83C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x277D839B0];
    v4[1] = MEMORY[0x277D11B88];
    v4[2] = MEMORY[0x277D839D0];
    v4[3] = MEMORY[0x277D839B8];
    v2 = type metadata accessor for ConceptAttributeValueRequestEvaluator(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_2813D83C0);
    }
  }
}

uint64_t sub_2514F6C08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2514F6C50()
{
  if (!qword_2813D83D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x277D837D0];
    v4[1] = MEMORY[0x277D11B80];
    v4[2] = MEMORY[0x277D83808];
    v4[3] = MEMORY[0x277D837D8];
    v2 = type metadata accessor for ConceptAttributeValueRequestEvaluator(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_2813D83D0);
    }
  }
}

uint64_t objectdestroyTm()
{

  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_2514F6D0C(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectUnownedInit();
  sub_25154CED0();
  swift_allocObject();
  v4 = sub_25154CEC0();
  *&v2[OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_ontologyEvaluatorRegistry] = v4;
  v5 = type metadata accessor for DaemonOntologyStore();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = &v2[OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_daemonOntologyStore];
  *&v2[OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_daemonOntologyStore + 24] = v5;
  v7[4] = sub_2514F6C08(&unk_2813D85B8, 255, type metadata accessor for DaemonOntologyStore, &unk_25154E324);
  *v7 = v6;
  sub_2514F6E98(0);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 1;
  *&v2[OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_protectedState] = v8;
  v9 = objc_allocWithZone(MEMORY[0x277D103B8]);

  v10 = [v9 initWithProfile_];
  *&v2[OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_ontologyConceptManager] = v10;
  v11 = [objc_allocWithZone(MEMORY[0x277D103C0]) initWithProfile_];
  *&v2[OBJC_IVAR____TtC25HealthContentDaemonPlugin37ConcreteHealthContentProfileExtension_ontologyDatabase] = v11;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ConcreteHealthContentProfileExtension();
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_2514F6E98(uint64_t a1)
{
  if (!qword_2813D8370)
  {
    type metadata accessor for os_unfair_lock_s();
    v1 = sub_25154D470();
    if (!v2)
    {
      atomic_store(v1, &qword_2813D8370);
    }
  }
}

uint64_t ProtoArticle.metadata.getter@<X0>(void *a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(v1 + *(v6 + 20), v5, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v7 = type metadata accessor for ProtoArticle.Metadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150A7A0(v5, a1, type metadata accessor for ProtoArticle.Metadata);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_25150A730(v5, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  }

  return result;
}

uint64_t sub_2514F709C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v7 + 20), v6, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v8 = type metadata accessor for ProtoArticle.Metadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a2, type metadata accessor for ProtoArticle.Metadata);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  a2[7] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_25150A730(v6, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  }

  return result;
}

uint64_t sub_2514F723C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoArticle.Metadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v7, type metadata accessor for ProtoArticle.Metadata);
  v8 = *(type metadata accessor for ProtoArticle(0) + 20);
  sub_25150A730(a2 + v8, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  sub_25150A7A0(v7, a2 + v8, type metadata accessor for ProtoArticle.Metadata);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoArticle.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle(0) + 20);
  sub_25150A730(v1 + v3, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoArticle.Metadata);
  v4 = type metadata accessor for ProtoArticle.Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtoArticle.Metadata.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  type metadata accessor for ProtoArticle.Metadata(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoArticle.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2514F808C(0, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoArticle.Metadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoArticle(0) + 20);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v15[4] = 0;
    v15[5] = 0xE000000000000000;
    v15[6] = 0;
    v15[7] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoArticle.Metadata);
  }

  return sub_2514F7728;
}

void sub_2514F7728(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_25150A648((*a1)[5], v4, type metadata accessor for ProtoArticle.Metadata);
    sub_25150A730(v9 + v3, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
    sub_25150A7A0(v4, v9 + v3, type metadata accessor for ProtoArticle.Metadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_251500F0C(v5, type metadata accessor for ProtoArticle.Metadata);
  }

  else
  {
    sub_25150A730(v9 + v3, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
    sub_25150A7A0(v5, v9 + v3, type metadata accessor for ProtoArticle.Metadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtoArticle.hasMetadata.getter()
{
  sub_2514F808C(0, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(v0 + *(v4 + 20), v3, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v5 = type metadata accessor for ProtoArticle.Metadata(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_25150A730(v3, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  return v6;
}

Swift::Void __swiftcall ProtoArticle.clearMetadata()()
{
  v1 = *(type metadata accessor for ProtoArticle(0) + 20);
  sub_25150A730(v0 + v1, &qword_27F43BF90, type metadata accessor for ProtoArticle.Metadata);
  v2 = type metadata accessor for ProtoArticle.Metadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ProtoArticle.articleTheme.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(v1 + *(v6 + 24), v5, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  v7 = type metadata accessor for ProtoArticle.Theme(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150A7A0(v5, a1, type metadata accessor for ProtoArticle.Theme);
  }

  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v9 = *(v7 + 20);
  if (qword_27F43B9E0 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_27F43BF58;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_25150A730(v5, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  }

  return result;
}

uint64_t sub_2514F7C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v7 + 24), v6, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  v8 = type metadata accessor for ProtoArticle.Theme(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a2, type metadata accessor for ProtoArticle.Theme);
  }

  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v10 = *(v8 + 20);
  if (qword_27F43B9E0 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_27F43BF58;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_25150A730(v6, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  }

  return result;
}

uint64_t sub_2514F7E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoArticle.Theme(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v7, type metadata accessor for ProtoArticle.Theme);
  v8 = *(type metadata accessor for ProtoArticle(0) + 24);
  sub_25150A730(a2 + v8, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  sub_25150A7A0(v7, a2 + v8, type metadata accessor for ProtoArticle.Theme);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoArticle.articleTheme.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle(0) + 24);
  sub_25150A730(v1 + v3, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoArticle.Theme);
  v4 = type metadata accessor for ProtoArticle.Theme(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtoArticle.Theme.init()@<X0>(uint64_t a1@<X8>)
{
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v2 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  if (qword_27F43B9E0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27F43BF58;
}

void sub_2514F808C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void (*ProtoArticle.articleTheme.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2514F808C(0, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoArticle.Theme(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoArticle(0) + 24);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = *(v10 + 20);
    if (qword_27F43B9E0 != -1)
    {
      swift_once();
    }

    *(v15 + v18) = qword_27F43BF58;
    v19 = v17(v9, 1, v10);

    if (v19 != 1)
    {
      sub_25150A730(v9, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoArticle.Theme);
  }

  return sub_2514F83A4;
}

void sub_2514F83A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_25150A648((*a1)[5], v4, type metadata accessor for ProtoArticle.Theme);
    sub_25150A730(v9 + v3, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
    sub_25150A7A0(v4, v9 + v3, type metadata accessor for ProtoArticle.Theme);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_251500F0C(v5, type metadata accessor for ProtoArticle.Theme);
  }

  else
  {
    sub_25150A730(v9 + v3, &qword_27F43BF98, type metadata accessor for ProtoArticle.Theme);
    sub_25150A7A0(v5, v9 + v3, type metadata accessor for ProtoArticle.Theme);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t ProtoArticle.content.getter@<X0>(void *a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(v1 + *(v6 + 28), v5, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  v7 = type metadata accessor for ProtoArticle.Content(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150A7A0(v5, a1, type metadata accessor for ProtoArticle.Content);
  }

  *a1 = MEMORY[0x277D84F90];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_25150A730(v5, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  }

  return result;
}

uint64_t sub_2514F8748@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v7 + 28), v6, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  v8 = type metadata accessor for ProtoArticle.Content(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a2, type metadata accessor for ProtoArticle.Content);
  }

  *a2 = MEMORY[0x277D84F90];
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_25150A730(v6, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  }

  return result;
}

uint64_t sub_2514F88E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoArticle.Content(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v7, type metadata accessor for ProtoArticle.Content);
  v8 = *(type metadata accessor for ProtoArticle(0) + 28);
  sub_25150A730(a2 + v8, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  sub_25150A7A0(v7, a2 + v8, type metadata accessor for ProtoArticle.Content);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoArticle.content.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle(0) + 28);
  sub_25150A730(v1 + v3, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoArticle.Content);
  v4 = type metadata accessor for ProtoArticle.Content(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtoArticle.Content.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for ProtoArticle.Content(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoArticle.content.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2514F808C(0, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoArticle.Content(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoArticle(0) + 28);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = MEMORY[0x277D84F90];
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoArticle.Content);
  }

  return sub_2514F8D7C;
}

void sub_2514F8D7C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_25150A648((*a1)[5], v4, type metadata accessor for ProtoArticle.Content);
    sub_25150A730(v9 + v3, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
    sub_25150A7A0(v4, v9 + v3, type metadata accessor for ProtoArticle.Content);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_251500F0C(v5, type metadata accessor for ProtoArticle.Content);
  }

  else
  {
    sub_25150A730(v9 + v3, &qword_27F43BFA0, type metadata accessor for ProtoArticle.Content);
    sub_25150A7A0(v5, v9 + v3, type metadata accessor for ProtoArticle.Content);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t ProtoArticle.mediaLibrary.getter@<X0>(unint64_t *a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(v1 + *(v6 + 32), v5, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  v7 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150A7A0(v5, a1, type metadata accessor for ProtoArticle.MediaLibrary);
  }

  *a1 = sub_251509128(MEMORY[0x277D84F90]);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_25150A730(v5, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  }

  return result;
}

uint64_t sub_2514F9124@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v7 + 32), v6, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  v8 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a2, type metadata accessor for ProtoArticle.MediaLibrary);
  }

  *a2 = sub_251509128(MEMORY[0x277D84F90]);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_25150A730(v6, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  }

  return result;
}

uint64_t sub_2514F92C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v7, type metadata accessor for ProtoArticle.MediaLibrary);
  v8 = *(type metadata accessor for ProtoArticle(0) + 32);
  sub_25150A730(a2 + v8, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  sub_25150A7A0(v7, a2 + v8, type metadata accessor for ProtoArticle.MediaLibrary);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoArticle.mediaLibrary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle(0) + 32);
  sub_25150A730(v1 + v3, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoArticle.MediaLibrary);
  v4 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtoArticle.MediaLibrary.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_251509128(MEMORY[0x277D84F90]);
  type metadata accessor for ProtoArticle.MediaLibrary(0);
  return _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
}

void (*ProtoArticle.mediaLibrary.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2514F808C(0, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoArticle.MediaLibrary(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoArticle(0) + 32);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = sub_251509128(MEMORY[0x277D84F90]);
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoArticle.MediaLibrary);
  }

  return sub_2514F9764;
}

void sub_2514F9764(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_25150A648((*a1)[5], v4, type metadata accessor for ProtoArticle.MediaLibrary);
    sub_25150A730(v9 + v3, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
    sub_25150A7A0(v4, v9 + v3, type metadata accessor for ProtoArticle.MediaLibrary);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_251500F0C(v5, type metadata accessor for ProtoArticle.MediaLibrary);
  }

  else
  {
    sub_25150A730(v9 + v3, &qword_27F43BFA8, type metadata accessor for ProtoArticle.MediaLibrary);
    sub_25150A7A0(v5, v9 + v3, type metadata accessor for ProtoArticle.MediaLibrary);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t ProtoArticle.tileProps.getter@<X0>(char *a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(v1 + *(v6 + 36), v5, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v7 = type metadata accessor for ProtoArticle.TileProps(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150A7A0(v5, a1, type metadata accessor for ProtoArticle.TileProps);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v9 = v7[6];
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&a1[v9], 1, 1, v10);
  v11(&a1[v7[7]], 1, 1, v10);
  v11(&a1[v7[8]], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_25150A730(v5, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  }

  return result;
}

uint64_t sub_2514F9B9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(a1 + *(v7 + 36), v6, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v8 = type metadata accessor for ProtoArticle.TileProps(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a2, type metadata accessor for ProtoArticle.TileProps);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v10 = v8[6];
  v11 = type metadata accessor for ProtoLocalizedTextProps(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&a2[v10], 1, 1, v11);
  v12(&a2[v8[7]], 1, 1, v11);
  v12(&a2[v8[8]], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_25150A730(v6, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  }

  return result;
}

uint64_t sub_2514F9DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoArticle.TileProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v7, type metadata accessor for ProtoArticle.TileProps);
  v8 = *(type metadata accessor for ProtoArticle(0) + 36);
  sub_25150A730(a2 + v8, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  sub_25150A7A0(v7, a2 + v8, type metadata accessor for ProtoArticle.TileProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoArticle.tileProps.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle(0) + 36);
  sub_25150A730(v1 + v3, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoArticle.TileProps);
  v4 = type metadata accessor for ProtoArticle.TileProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtoArticle.TileProps.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for ProtoArticle.TileProps(0);
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  v3 = v2[6];
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), &a1[v3], 1, 1, v4);
  v7(&a1[v2[7]], 1, 1, v4);
  v5 = &a1[v2[8]];

  return (v7)(v5, 1, 1, v4);
}

void (*ProtoArticle.tileProps.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2514F808C(0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoArticle.TileProps(0);
  v5[2] = v10;
  v11 = *(v10 - 1);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoArticle(0) + 36);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    v18 = v10[6];
    v19 = type metadata accessor for ProtoLocalizedTextProps(0);
    v20 = *(*(v19 - 8) + 56);
    v20(&v15[v18], 1, 1, v19);
    v20(&v15[v10[7]], 1, 1, v19);
    v20(&v15[v10[8]], 1, 1, v19);
    if (v17(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoArticle.TileProps);
  }

  return sub_2514FA3A4;
}

void sub_2514FA3A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_25150A648((*a1)[5], v4, type metadata accessor for ProtoArticle.TileProps);
    sub_25150A730(v9 + v3, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
    sub_25150A7A0(v4, v9 + v3, type metadata accessor for ProtoArticle.TileProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_251500F0C(v5, type metadata accessor for ProtoArticle.TileProps);
  }

  else
  {
    sub_25150A730(v9 + v3, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
    sub_25150A7A0(v5, v9 + v3, type metadata accessor for ProtoArticle.TileProps);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL ProtoArticle.hasTileProps.getter()
{
  sub_2514F808C(0, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ProtoArticle(0);
  sub_25150A6B0(v0 + *(v4 + 36), v3, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v5 = type metadata accessor for ProtoArticle.TileProps(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_25150A730(v3, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  return v6;
}

Swift::Void __swiftcall ProtoArticle.clearTileProps()()
{
  v1 = *(type metadata accessor for ProtoArticle(0) + 36);
  sub_25150A730(v0 + v1, &qword_27F43BFB0, type metadata accessor for ProtoArticle.TileProps);
  v2 = type metadata accessor for ProtoArticle.TileProps(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ProtoArticle.Metadata.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProtoArticle.Metadata.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProtoArticle.Metadata.articleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProtoArticle.Metadata.articleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ProtoArticle.Metadata.revision.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ProtoArticle.Metadata.revision.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ProtoArticle.Metadata.datePublished.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ProtoArticle.Metadata.datePublished.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ProtoArticle.Metadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoArticle.Metadata(0) + 32);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProtoArticle.Metadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle.Metadata(0) + 32);
  v4 = sub_25154CFE0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProtoArticle.Content.components.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void (*ProtoArticle.Theme.selectedState.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for ProtoColorValue(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__selectedState;
  swift_beginAccess();
  sub_25150A6B0(v17 + v18, v9, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = 0u;
    v15[1] = 0u;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v19(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoColorValue);
  }

  return sub_2514FADD4;
}

uint64_t sub_2514FAE04@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = *(v2 + *(type metadata accessor for ProtoArticle.Theme(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_25150A6B0(v8 + v9, v7, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v10 = type metadata accessor for ProtoColorValue(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_25150A7A0(v7, a2, type metadata accessor for ProtoColorValue);
  }

  *a2 = 0u;
  a2[1] = 0u;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_25150A730(v7, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  }

  return result;
}

uint64_t sub_2514FAFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ProtoColorValue(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v14, type metadata accessor for ProtoColorValue);
  v15 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoArticle.Theme._StorageClass(0);
    swift_allocObject();
    v17 = sub_251500FAC(v17);
    *(a2 + v15) = v17;
  }

  sub_25150A7A0(v14, v10, type metadata accessor for ProtoColorValue);
  (*(v12 + 56))(v10, 0, 1, v11);
  v18 = *a5;
  swift_beginAccess();
  sub_2515093D0(v10, v17 + v18);
  return swift_endAccess();
}

uint64_t sub_2514FB1C8(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoArticle.Theme._StorageClass(0);
    swift_allocObject();
    v11 = sub_251500FAC(v11);
    *(v4 + v9) = v11;
  }

  sub_25150A7A0(a1, v8, type metadata accessor for ProtoColorValue);
  v12 = type metadata accessor for ProtoColorValue(0);
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  v13 = *a2;
  swift_beginAccess();
  sub_2515093D0(v8, v11 + v13);
  return swift_endAccess();
}

void (*ProtoArticle.Theme.card.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for ProtoColorValue(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__card;
  swift_beginAccess();
  sub_25150A6B0(v17 + v18, v9, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = 0u;
    v15[1] = 0u;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v19(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoColorValue);
  }

  return sub_2514FB5E0;
}

BOOL sub_2514FB5F8(uint64_t *a1)
{
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for ProtoArticle.Theme(0) + 20));
  v7 = *a1;
  swift_beginAccess();
  sub_25150A6B0(v6 + v7, v5, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v8 = type metadata accessor for ProtoColorValue(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_25150A730(v5, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  return v9;
}

void (*ProtoArticle.Theme.background.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for ProtoColorValue(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__background;
  swift_beginAccess();
  sub_25150A6B0(v17 + v18, v9, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = 0u;
    v15[1] = 0u;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v19(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoColorValue);
  }

  return sub_2514FB9F4;
}

void (*ProtoArticle.Theme.text.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for ProtoColorValue(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__text;
  swift_beginAccess();
  sub_25150A6B0(v17 + v18, v9, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = 0u;
    v15[1] = 0u;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v19(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoColorValue);
  }

  return sub_2514FBCC4;
}

void (*ProtoArticle.Theme.secondaryTint.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for ProtoColorValue(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCVV25HealthContentDaemonPlugin12ProtoArticle5ThemeP33_6A1C0C77353B3030F9392BCE14EE152013_StorageClass__secondaryTint;
  swift_beginAccess();
  sub_25150A6B0(v17 + v18, v9, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = 0u;
    v15[1] = 0u;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v19(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFB8, type metadata accessor for ProtoColorValue);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoColorValue);
  }

  return sub_2514FBF94;
}

void sub_2514FBFA0(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    sub_25150A648(*(v4 + 120), *(v4 + 112), type metadata accessor for ProtoColorValue);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v4 + 128);
      v10 = *(v4 + 72);
      type metadata accessor for ProtoArticle.Theme._StorageClass(0);
      swift_allocObject();
      v8 = sub_251500FAC(v8);
      *(v10 + v9) = v8;
    }

    v12 = *(v4 + 112);
    v11 = *(v4 + 120);
    v13 = *(v4 + 96);
    v14 = *(v4 + 104);
    v16 = *(v4 + 80);
    v15 = *(v4 + 88);
    sub_25150A7A0(v12, v16, type metadata accessor for ProtoColorValue);
    (*(v14 + 56))(v16, 0, 1, v13);
    v17 = *a3;
    swift_beginAccess();
    sub_2515093D0(v16, v8 + v17);
    swift_endAccess();
    sub_251500F0C(v11, type metadata accessor for ProtoColorValue);
  }

  else
  {
    v18 = *(v4 + 72);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v18 + v5);
    if ((v19 & 1) == 0)
    {
      v21 = *(v4 + 128);
      v22 = *(v4 + 72);
      type metadata accessor for ProtoArticle.Theme._StorageClass(0);
      swift_allocObject();
      v20 = sub_251500FAC(v20);
      *(v22 + v21) = v20;
    }

    v12 = *(v4 + 112);
    v11 = *(v4 + 120);
    v23 = *(v4 + 96);
    v24 = *(v4 + 104);
    v16 = *(v4 + 80);
    v15 = *(v4 + 88);
    sub_25150A7A0(v11, v16, type metadata accessor for ProtoColorValue);
    (*(v24 + 56))(v16, 0, 1, v23);
    v25 = *a3;
    swift_beginAccess();
    sub_2515093D0(v16, v20 + v25);
    swift_endAccess();
  }

  free(v11);
  free(v12);
  free(v15);
  free(v16);

  free(v4);
}

uint64_t sub_2514FC1EC(uint64_t *a1)
{
  v3 = v1;
  sub_2514F808C(0, &qword_27F43BFB8, type metadata accessor for ProtoColorValue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for ProtoArticle.Theme(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for ProtoArticle.Theme._StorageClass(0);
    swift_allocObject();
    v9 = sub_251500FAC(v9);
    *(v3 + v7) = v9;
  }

  v10 = type metadata accessor for ProtoColorValue(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = *a1;
  swift_beginAccess();
  sub_2515093D0(v6, v9 + v11);
  return swift_endAccess();
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25154CFE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s25HealthContentDaemonPlugin12ProtoArticleV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_25154CFE0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2514FC474@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2514FC510(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_25154CFE0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ProtoArticle.TileProps.title.getter@<X0>(void *a1@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(v1 + *(v6 + 24), v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v7 = type metadata accessor for ProtoLocalizedTextProps(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25150A7A0(v5, a1, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_25150A730(v5, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FC76C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for ProtoArticle.TileProps(0);
  sub_25150A6B0(a1 + *(v7 + 24), v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v8 = type metadata accessor for ProtoLocalizedTextProps(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_25150A7A0(v6, a2, type metadata accessor for ProtoLocalizedTextProps);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_25150A730(v6, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  }

  return result;
}

uint64_t sub_2514FC904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25150A648(a1, v7, type metadata accessor for ProtoLocalizedTextProps);
  v8 = *(type metadata accessor for ProtoArticle.TileProps(0) + 24);
  sub_25150A730(a2 + v8, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(v7, a2 + v8, type metadata accessor for ProtoLocalizedTextProps);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoArticle.TileProps.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArticle.TileProps(0) + 24);
  sub_25150A730(v1 + v3, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  sub_25150A7A0(a1, v1 + v3, type metadata accessor for ProtoLocalizedTextProps);
  v4 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoArticle.TileProps.title.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2514F808C(0, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoLocalizedTextProps(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoArticle.TileProps(0) + 24);
  *(v5 + 12) = v16;
  sub_25150A6B0(v1 + v16, v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    _s25HealthContentDaemonPlugin15ProtoEmptyPropsVACycfC_0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_25150A730(v9, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps);
    }
  }

  else
  {
    sub_25150A7A0(v9, v15, type metadata accessor for ProtoLocalizedTextProps);
  }

  return sub_25150A98C;
}