uint64_t sub_1C6B26070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B261B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6B262D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1C6B263FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B264A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B26964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1C6D78A40();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C6B26A84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1C6D78A40();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C6B26BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6B26C68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B26D4C(id *a1)
{
  [*a1 timestamp];

  return sub_1C6D75F00();
}

uint64_t sub_1C6B26DAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B26DF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
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
      sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C6B26F48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
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
      sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B2709C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B27154(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B27210(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C6D78A40();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[7]];

  return v16(v17, a2, v15);
}

char *sub_1C6B273DC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C6D78A40();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1C6B82104(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  sub_1C6B82104(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[7]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C6B275B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C6B2770C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1C6B85758(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B27868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6B27988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1C6B27AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C6D78A40();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6B27B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C6D78A40();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6B27C50()
{
  v1 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[10];
  v6 = sub_1C6D78A40();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[11];
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[12];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_1C6B27E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B27F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B280DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B28188(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B2823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1C6B283DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C6B28590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6B286B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1C6BA7420(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1C6B287EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1C6B2898C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_1C6BA57E8(0, qword_1EDCE5428, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe, MEMORY[0x1E69E6720]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1C6BA57E8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C6B28B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1C6B28D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_1C6BB0874(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1C6BB0874(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C6B28EBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B28EF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B28F2C()
{
  v1 = sub_1C6D770E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6B28FB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6B2900C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C6D78A40();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[10]];

  return v16(v17, a2, v15);
}

char *sub_1C6B291D8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C6D78A40();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[10]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C6B294EC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1C6BBDA88();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1C6B29598(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C6BBDA88();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C6B2963C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B2967C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C6D78A40();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6B296F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C6D78A40();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6B29770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6B297DC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C6D783E0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1C6B2A170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1C6D78A40();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1C6B2A310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1C6D78A40();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C6B2A4BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B2A500()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B2A548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B2A66C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B2A79C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B2A7D4()
{
  MEMORY[0x1CCA571E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B2A80C()
{
  v1 = sub_1C6D76F90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6B2A8D0()
{

  v1 = *(v0 + 56);
  if (v1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 142, 7);
}

uint64_t sub_1C6B2A974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1C6B2AB14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_1C6BE8774(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1C6BE8774(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C6B2ACC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C6D78A40();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6B2AD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C6D78A40();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6B2AE5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B2AE94()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C6B2AEEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B2AF5C()
{
  if (*v0)
  {
    return 0x6C696261626F7270;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_1C6B2B000(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78810();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B2B0AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78810();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArticleFeaturesFactoryConfiguration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ArticleFeaturesFactoryConfiguration(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6B2B1B8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1C6D78A40();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_1C6B2B384(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1C6D78A40();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C6B2B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6B2B678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1C6B2B7A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B2B850(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B2B8F4()
{
  v1 = sub_1C6D75F80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6B2B9E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
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
      sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C6B2BB3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
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
      sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B2BC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1C6B2BD68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C6D78A40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C6B2BE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B2BF54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B2C084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C6D78A40();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6B2C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C6D78A40();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6B2C180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B2C2A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B2C3D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1C6B2C468()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B2C4A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B2C4D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C6B2C53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6B2C65C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1C6B2C810(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D75DE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B2C8BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D75DE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B2C960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D75F80();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6B2C9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D75F80();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6B2CA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D787B0();
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

uint64_t sub_1C6B2CAFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C6D787B0();
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

uint64_t sub_1C6B2CBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B2CCE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B2CE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B2CF40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B2D070(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B2D11C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B2D1C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B2D1FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B2D234(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D76BD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6B2D2E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D76BD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B2D384()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B2D3C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B2D3FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B2D498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6B2D504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6B2D584(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C6D78A40();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v14 = v13;
  v15 = *(*(v13 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1C6B2D720(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C6D78A40();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[7];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6B2D8C8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  v5 = (a1 + *(result + 32));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1C6B2D910(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_1C6B2D94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C6D78A40();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6B2D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C6D78A40();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6B2DA40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C6B2DA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B2DBBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B2E61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1C6D78A40();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1C6B2E7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1C6D78A40();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C6B2E970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B2EA94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B2EBC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B2EC70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B2ED30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1C6C76A88(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 92);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C6B2EDFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1C6C76A88(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 92);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C6B2EEBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B2EF68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B2F014(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
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
      sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C6B2F168(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
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
      sub_1C6C7DC1C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B2F2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B2F3E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B2F518()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B2F550()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6B2F5EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B2F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C6D79170();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B2F6E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D79170();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B2F788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D75DE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1C6D75F50();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C6B2F878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D75DE0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1C6D75F50();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C6B2F97C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
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
      sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C6B2FAD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
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
      sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B2FC24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B2FEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B1DD54(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_1C6D78A40();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C6B2FFDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C6B1DD54(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_1C6D78A40();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1C6B3010C(unint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_1C6D78A40();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_1C6B1DD54(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  sub_1C6B1DD54(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

char *sub_1C6B302D8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C6D78A40();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  sub_1C6B1DD54(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  sub_1C6B1DD54(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[10]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C6B304A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1C6CB528C(0, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1C6CB528C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1C6B30644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_1C6CB528C(0, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, MEMORY[0x1E69E6720]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1C6CB528C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C6B307F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
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
      sub_1C6CB528C(0, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C6B30944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
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
      sub_1C6CB528C(0, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B30A98(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
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
    v10 = sub_1C6D78A40();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      sub_1C6CB528C(0, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, MEMORY[0x1E69E6720]);
      v16 = v15;
      v17 = *(*(v15 - 8) + 48);
      v18 = &a1[*(a3 + 24)];

      return v17(v18, a2, v16);
    }
  }
}

_BYTE *sub_1C6B30BEC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_1C6D78A40();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1C6CB528C(0, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = &v5[*(a4 + 24)];

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B30D3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B30DE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B30E94(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
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
      sub_1C6CB528C(0, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1C6B30FE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
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
      sub_1C6CB528C(0, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B3113C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
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
      sub_1C6CB528C(0, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C6B31290(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
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
      sub_1C6CB528C(0, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B313E4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C6B31490(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B31534(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C6B315E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B31684()
{
  v1 = sub_1C6D75F80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = *(v2 + 64);

  sub_1C6CBE86C(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6B31754()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B317A0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
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
    v10 = sub_1C6D78A40();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 44)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C6B3184C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 44)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C6B318F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B31A18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B31B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6B31C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1C6B31DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B31EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 28);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B31FF8()
{
  v1 = sub_1C6D75F50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6B320BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B32150(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C6CDB408(0, &qword_1EDCE5FD8, MEMORY[0x1E69B4588]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  sub_1C6CDB408(0, &qword_1EDCE5E68, MEMORY[0x1E69B4AA0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  sub_1C6CDB408(0, &qword_1EDCE5FC8, MEMORY[0x1E69B45B0]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  sub_1C6CDB408(0, &qword_1EDCE5E28, MEMORY[0x1E69B4EF0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[11];
    goto LABEL_9;
  }

  sub_1C6CDB408(0, &qword_1EDCE5E58, MEMORY[0x1E69B4B10]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_1C6B323A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C6CDB408(0, &qword_1EDCE5FD8, MEMORY[0x1E69B4588]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  sub_1C6CDB408(0, &qword_1EDCE5E68, MEMORY[0x1E69B4AA0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  sub_1C6CDB408(0, &qword_1EDCE5FC8, MEMORY[0x1E69B45B0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_1C6CDB408(0, &qword_1EDCE5E28, MEMORY[0x1E69B4EF0]);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  sub_1C6CDB408(0, &qword_1EDCE5E58, MEMORY[0x1E69B4B10]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[12];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1C6B32614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6B32734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1C6B328D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B3290C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C6B329D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C6B32B24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1C6CE993C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B32D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1C6D78A40();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1C6B32F34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C6CEAAE0(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1C6D78A40();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1C6CEAAE0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C6B330F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1C6B33290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_1C6CF2DD8(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1C6CF2DD8(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C6B33488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B335AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B336DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B33720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C6B33844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1C6B33974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C6D78A40();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6B339EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C6D78A40();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6B33A68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C6B33B10()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B33B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B33B84()
{
  v1 = sub_1C6D75F50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1C6D77D80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1C6B33CE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B33D1C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C6B33D54()
{
  MEMORY[0x1CCA571E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B33D8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B33DE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B33E24()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C6B33E64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B33EB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C6B34004(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C6D78A40();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1C6B34160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6B34280(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1C6B343E4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v4 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C6B345A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
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

uint64_t sub_1C6B3465C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C6D78A40();
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

uint64_t sub_1C6B34714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C6D78A40();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6B3478C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C6D78A40();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6B34808()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B34840()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B34884()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B348E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B349C4()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B349FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C6B34A44()
{

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1C6B34B0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C6B34B44()
{
  v1 = sub_1C6D75F50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C6B34C08()
{
  v1 = sub_1C6D75F50();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C6B34CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6B34D14(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1C6B34DD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
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
      v13 = sub_1C6D78A40();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C6B34F2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1C6D60324(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
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
      v13 = sub_1C6D78A40();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C6B35080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
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

uint64_t sub_1C6B3513C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C6D78A40();
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

uint64_t sub_1C6B351FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6B3531C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1C6B35458(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C6D78A40();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v14 = v13;
  v15 = *(*(v13 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_1C6B355F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1C6D78A40();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[7];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C6B357A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D78A40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C6B358C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C6D78A40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_1C6B359F0()
{

  sub_1C6B1C9F0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C6B35A38(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1C6B68D1C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1C6B35AE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C6B68D1C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C6B35B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6B35BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C6B35C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1C6D78A40();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C6B35DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C6D745D4(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1C6D78A40();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C6B35EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1C6D78A40();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C6B35F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1C6D78A40();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C6B35FD4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    return sub_1C6B622DC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1C6B360A8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1C6B360B4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {
    return sub_1C6B622F8(a1, a2, a3);
  }

  return a1;
}

uint64_t NPDeviceSupportsFeedPersonalization(uint64_t a1, uint64_t a2)
{
  if (NPDeviceSupportsFeedPersonalization_onceToken[0] != -1)
  {
    NPDeviceSupportsFeedPersonalization_cold_1();
  }

  return NPDeviceSupportsFeedPersonalization_result;
}

uint64_t sub_1C6B360F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE92A0, &protocol descriptor for AutoFavoritesServiceType, 0);
  sub_1C6D77FE0();
  result = v2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B361B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AutoFavoritesService();
  result = sub_1C6D77FD0();
  if (result)
  {
    *a2 = result;
    a2[1] = &off_1F4679BD0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6B36214(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE92A0, &protocol descriptor for AutoFavoritesServiceType, 0);
  result = sub_1C6D77FC0();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeAutoFavoritesPersistence();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeAutoFavoritesResourceManager();
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for RecipeAutoFavoritesManager();
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_service];
    *v8 = v10;
    *(v8 + 1) = v3;
    *&v7[OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_persistence] = v4;
    *&v7[OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_resourceManager] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    return objc_msgSendSuper2(&v9, sel_init);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1C6B36370(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE26E0, &protocol descriptor for LocalNewsAutoFavoritesProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v76)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE8A30, &protocol descriptor for EventHistoryAutoFavoritesProviderType, 1);
  result = sub_1C6D77FC0();
  if (!v74)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE88D8, &protocol descriptor for ExternalSignalAutoFavoritesProviderType, 1);
  result = sub_1C6D77FC0();
  if (!v72)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for RecipeAutoFavoritesServiceConfigurationProvider();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v69 = v3;
  v70 = &off_1F4679788;
  *&v68 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE92B0, &protocol descriptor for UserContextProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v67)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DF0, &protocolRef_FCPersonalizationAllowlistProvider);
  result = sub_1C6D77FB0();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCDFC90, MEMORY[0x1E69B6160], 1);
  result = sub_1C6D77FE0();
  if (!v65)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B15828(0, &unk_1EDCE96E0, type metadata accessor for RecipeUserEventHistorySessionUnarchiver, &protocol witness table for RecipeUserEventHistorySessionUnarchiver);
  v6 = v5;
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = result;
  v62 = v6;
  v63 = sub_1C6B24B20(&qword_1EDCE2310, &unk_1EDCE96E0, type metadata accessor for RecipeUserEventHistorySessionUnarchiver, &protocol witness table for RecipeUserEventHistorySessionUnarchiver);
  *&v61 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = type metadata accessor for RecipeAutoFavoritesPersistence();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = v4;
  v59 = v8;
  v60 = &off_1F467A568;
  *&v58 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for RecipeAutoFavoritesGroupingEligibilityPolicy();
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
  v43 = &v41;
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  v42 = &v41;
  v17 = MEMORY[0x1EEE9AC00](v16, v16);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v23 = type metadata accessor for EventHistoryAutoFavoritesProvider();
  v57[3] = v23;
  v57[4] = &off_1F46760B0;
  v57[0] = v21;
  v24 = type metadata accessor for ExternalSignalAutoFavoritesProvider();
  v55 = v24;
  v56 = &off_1F4673E58;
  v54[0] = v22;
  v52 = v9;
  v53 = &off_1F467ABC8;
  *&v51 = v10;
  type metadata accessor for AutoFavoritesService();
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v57, v23);
  v41 = &v41;
  v27 = MEMORY[0x1EEE9AC00](v26, v26);
  v29 = (&v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v32 = MEMORY[0x1EEE9AC00](v31, v31);
  v34 = (&v41 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = *v29;
  v37 = *v34;
  v49 = v23;
  v50 = &off_1F46760B0;
  v47 = &off_1F4673E58;
  *&v48 = v36;
  v46 = v24;
  *&v45 = v37;
  v38 = qword_1EDCE23B8;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_1EDCE23C0;
  v40 = sub_1C6D79AC0();
  sub_1C6D78D30("Initializing AutoFavorites Service", 34, 2, &dword_1C6B09000, v39, v40, MEMORY[0x1E69E7CC0], v41, v42, v43);

  sub_1C6B15E34(&v75, v25 + 16);
  sub_1C6B15E34(&v48, v25 + 56);
  sub_1C6B15E34(&v45, v25 + 96);
  sub_1C6B15E34(&v68, v25 + 136);
  sub_1C6B15E34(&v66, v25 + 176);
  *(v25 + 216) = v44;
  sub_1C6B15E34(&v64, v25 + 224);
  sub_1C6B15E34(&v61, v25 + 264);
  sub_1C6B15E34(&v58, v25 + 304);
  sub_1C6B15E34(&v51, v25 + 344);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v73);
  return v25;
}

uint64_t sub_1C6B36B6C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    v12 = v7;
    v13 = a3;
    *&v11 = result;
    v9 = type metadata accessor for EventHistoryAutoFavoritesProvider();
    v10 = swift_allocObject();
    result = sub_1C6B15E34(&v11, v10 + 16);
    a4[3] = v9;
    a4[4] = &off_1F46760B0;
    *a4 = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6B36C60(void *a1, uint64_t (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE8F48, &protocol descriptor for TagSuggestionsDataServiceType, 1);
  result = sub_1C6D77FE0();
  if (v6)
  {
    a2(0);
    v4 = swift_allocObject();
    sub_1C6B15E34(&v5, v4 + 16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6B36D08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE8F48, &protocol descriptor for TagSuggestionsDataServiceType, 1);
  result = sub_1C6D77FE0();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DA8, &protocolRef_FCPersonalizationBundleIDMappingProvider);
  result = sub_1C6D77FB0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7DD0, &protocolRef_FCPersonalizationURLMappingProvider);
  result = sub_1C6D77FB0();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for ExternalSignalAutoFavoritesProvider();
    v8 = swift_allocObject();
    result = sub_1C6B15E34(&v9, v8 + 16);
    *(v8 + 56) = v5;
    *(v8 + 64) = v6;
    a2[3] = v7;
    a2[4] = &off_1F4673E58;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6B36ED0(void *a1, unint64_t *a2, void *a3, uint64_t (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, a2, a3);
  result = sub_1C6D77FD0();
  if (result)
  {
    v8 = result;
    a4(0);
    result = swift_allocObject();
    *(result + 16) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C6B36F64(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B0C7D4(0, &unk_1EDCE7F90, MEMORY[0x1E69B6398], 1);
    result = sub_1C6D77FE0();
    if (v5[3])
    {
      type metadata accessor for RecipeAutoFavoritesResourceManager();
      swift_allocObject();
      v4 = sub_1C6B24598(v3, v5);
      swift_unknownObjectRelease();
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B37064()
{
  type metadata accessor for ArticleAutoFavoritesGroupingEligibilityPolicy();

  return swift_allocObject();
}

void *sub_1C6B37098(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE82C0, &protocol descriptor for NotificationScoringServiceConfigurationProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE6F00, &protocol descriptor for ArticleFeaturesFactoryType, 1);
  result = sub_1C6D77FE0();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE86E0, &protocol descriptor for BundleSubscriptionIsSubscribedProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6550, &protocolRef_FCPaidAccessCheckerType);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, qword_1EDCE9100, &protocol descriptor for UserEmbeddingProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B37F88(0);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    type metadata accessor for NotificationScoringService();
    v5 = swift_allocObject();
    sub_1C6B15E34(&v12, v5 + 16);
    sub_1C6B15E34(&v10, v5 + 56);
    sub_1C6B15E34(&v8, v5 + 96);
    *(v5 + 136) = v3;
    sub_1C6B15E34(&v6, v5 + 144);
    *(v5 + 184) = v4;
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1C6B37300(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCE66E0, MEMORY[0x1E69B6388], 1);
  result = sub_1C6D77FE0();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &unk_1EDCDFCD8, MEMORY[0x1E69B4F48], 1);
  result = sub_1C6D77FE0();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SessionTracker();
  result = sub_1C6D77FD0();
  if (result)
  {
    v3 = result;
    type metadata accessor for NotificationUserEventHistorySubmissionStartupTask();
    v4 = swift_allocObject();
    sub_1C6B15E34(&v7, v4 + 16);
    sub_1C6B15E34(&v5, v4 + 56);
    *(v4 + 96) = v3;
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1C6B3745C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F658(0, qword_1EDCE8A38, type metadata accessor for TopicClusteringJournalStorageService, MEMORY[0x1E69E6720]);
  result = sub_1C6D77FE0();
  v4 = v7;
  if (!v7)
  {
    v5 = type metadata accessor for NoOpTopicClusteringJournalProvider();
    result = swift_allocObject();
    v4 = result;
    v6 = &off_1F4676228;
    goto LABEL_5;
  }

  if (v7 != 1)
  {
    result = type metadata accessor for TopicClusteringJournalStorageService(0);
    v5 = result;
    v6 = &off_1F4676240;
LABEL_5:
    a2[3] = v5;
    a2[4] = v6;
    *a2 = v4;
    return result;
  }

  __break(1u);
  return result;
}

id sub_1C6B37540()
{
  v0 = objc_allocWithZone(type metadata accessor for EmptyPersonalizationDataGenerator());

  return [v0 init];
}

void *sub_1C6B37574(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0C7D4(0, &qword_1EDCE86E0, &protocol descriptor for BundleSubscriptionIsSubscribedProviderType, 1);
  result = sub_1C6D77FE0();
  if (!v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B37F88(0);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B15828(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver);
  v5 = v4;
  result = sub_1C6D77FD0();
  if (result)
  {
    v10 = v5;
    v11 = &protocol witness table for <> SessionDataProvider<A>;
    *&v9 = result;
    sub_1C6B37EF4(0);
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v7 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    *(v6 + 24) = (*(v8 + 8))(v7, v8) & 1;
    sub_1C6B15E34(&v9, v6 + 32);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6B37708@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for NotificationScoringServiceConfigurationProvider();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F467B2C8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C6B378C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C6B37934(uint64_t a1, int a2)
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

uint64_t sub_1C6B37954(uint64_t result, int a2, int a3)
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

uint64_t sub_1C6B37984(uint64_t a1, id *a2)
{
  result = sub_1C6D79580();
  *a2 = 0;
  return result;
}

uint64_t sub_1C6B379FC(uint64_t a1, id *a2)
{
  v3 = sub_1C6D79590();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C6B37A7C@<X0>(uint64_t *a2@<X8>)
{
  sub_1C6D795A0();
  v3 = sub_1C6D79570();

  *a2 = v3;
  return result;
}

uint64_t sub_1C6B37AC0()
{
  v0 = sub_1C6D795A0();
  v1 = MEMORY[0x1CCA55B20](v0);

  return v1;
}

uint64_t sub_1C6B37AFC(uint64_t a1)
{
  sub_1C6D795A0();
  sub_1C6D79610();
}

uint64_t sub_1C6B37B50(uint64_t a1)
{
  sub_1C6D795A0();
  sub_1C6D7A260();
  sub_1C6D79610();
  v1 = sub_1C6D7A2B0();

  return v1;
}

uint64_t sub_1C6B37BC4()
{
  sub_1C6D7A260();
  sub_1C6D7A290();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B37C38(uint64_t a1)
{
  sub_1C6D7A260();
  sub_1C6D7A290();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B37C7C(void *a1, uint64_t *a2)
{
  v2 = sub_1C6D795A0();
  v4 = v3;
  if (v2 == sub_1C6D795A0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C6D7A130();
  }

  return v7 & 1;
}

_DWORD *sub_1C6B37D18@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1C6B37D34@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C6D79570();

  *a2 = v3;
  return result;
}

uint64_t sub_1C6B37D7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C6D795A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C6B37DA8(uint64_t a1)
{
  v2 = sub_1C6B0FEE4(&unk_1EDCE7EF0, type metadata accessor for URLResourceKey, &unk_1C6D7E804);
  v3 = sub_1C6B0FEE4(&qword_1EC1D6228, type metadata accessor for URLResourceKey, &unk_1C6D7E7A4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1C6B37EF4(uint64_t a1)
{
  if (!qword_1EDCE9200[0])
  {
    sub_1C6B37F88(255);
    v3 = v2;
    v4 = sub_1C6B0FEE4(&qword_1EDCEA338, sub_1C6B37F88, &unk_1C6D812C0);
    v6 = type metadata accessor for RecommendedIssuesService(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, qword_1EDCE9200);
    }
  }
}

void sub_1C6B37F88(uint64_t a1)
{
  if (!qword_1EDCEA330)
  {
    sub_1C6B134B8();
    v1 = sub_1C6D78530();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA330);
    }
  }
}

unint64_t sub_1C6B37FE4()
{
  result = qword_1EDCE7F28;
  if (!qword_1EDCE7F28)
  {
    sub_1C6B0F658(255, &qword_1EDCE7F30, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE7F28);
  }

  return result;
}

uint64_t UserEmbeddingManager.getUserEmbeddingData()@<X0>(uint64_t a1@<X8>)
{
  UserEmbeddingManager.userEmbedding.getter(&v15);
  v2 = v15;
  if (v15)
  {
    v3 = v16;
    sub_1C6B3CCC8(0, &qword_1EDCE7CF0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6D7E630;
    *(inited + 32) = v3;

    sub_1C6B38474(inited);
    v5 = *(v2 + 16);
    if (v5)
    {
      v14 = MEMORY[0x1E69E7CC0];
      sub_1C6B3922C(0, v5, 0);
      v6 = *(v14 + 16);
      v7 = 32;
      do
      {
        v8 = *(v2 + v7);
        v9 = *(v14 + 24);
        if (v6 >= v9 >> 1)
        {
          sub_1C6B3922C((v9 > 1), v6 + 1, 1);
        }

        *(v14 + 16) = v6 + 1;
        *(v14 + 4 * v6 + 32) = v8;
        v7 += 4;
        ++v6;
        --v5;
      }

      while (v5);
    }

    sub_1C6D779D0();

    v13 = sub_1C6D779E0();
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  else
  {
    v10 = sub_1C6D779E0();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_1C6B38474(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C6B656C8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6B38560(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C6B6592C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6B38654(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C6B65AD8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6B38740(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C6B65D24(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6B3882C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C6B65C14(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C6B3894C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C6B65E88(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1C6B3CAFC(0, &qword_1EDCDFB60, MEMORY[0x1E69E63B0], "tagID score ");
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C6B38A78(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C6B66518(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1C6B3B6A4();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6B38BCC(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1C6D79E90();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1C6D79E90();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C6B3C0E8(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1C6B38CDC(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C6B66A5C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1C6B3CAFC(0, &unk_1EDCDFBB0, MEMORY[0x1E69E6448], "identifier score ");
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C6B38DF0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C6B66BA0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1C6B3C4F0(0, &qword_1EDCDFBC8, &type metadata for AutoFavoriteResults.RejectionReason, "identifier score reason ");
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C6B38F04(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C6B66CE4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1C6B3C4F0(0, &qword_1EDCDFBC0, &type metadata for EventHistoryAutoFavoritesProvider.SuggestionKind, "identifier score kind ");
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6B3905C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1C6D79E90();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1C6D79E90();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C6B3C0E8(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C6B3919C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

char *sub_1C6B3922C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39BA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6B39260(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39CC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6B39280(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39DE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B392A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &unk_1EDCEA440, MEMORY[0x1E69E31C8], MEMORY[0x1E69E31C8]);
  *v3 = result;
  return result;
}

char *sub_1C6B392F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3A118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39310(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3B854(a1, a2, a3, *v3, sub_1C6B3CC4C, &qword_1EDCDF970, MEMORY[0x1E69E72F0]);
  *v3 = result;
  return result;
}

void *sub_1C6B39354(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCDF5E0, MEMORY[0x1E69E31B8], MEMORY[0x1E69E31B8]);
  *v3 = result;
  return result;
}

void *sub_1C6B393A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCEA430, MEMORY[0x1E69B5910], MEMORY[0x1E69B5910]);
  *v3 = result;
  return result;
}

char *sub_1C6B393F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3A234(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39414(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCE7D18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  *v3 = result;
  return result;
}

char *sub_1C6B39464(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3A358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39484(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3A498(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B394A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3A5E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B394C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E6996088]);
  *v3 = result;
  return result;
}

void *sub_1C6B39514(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3A728(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6B39534(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3A86C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39554(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3A990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39574(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3AAD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39594(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3AC18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B395B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3AD5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B395D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3B3EC(a1, a2, a3, *v3, &unk_1EC1D6D70, sub_1C6B3B6A4, sub_1C6B3B6A4);
  *v3 = result;
  return result;
}

void *sub_1C6B39624(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &unk_1EDCDF560, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
  *v3 = result;
  return result;
}

void *sub_1C6B39674(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCDF580, MEMORY[0x1E6996170], MEMORY[0x1E6996170]);
  *v3 = result;
  return result;
}

void *sub_1C6B396C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3AED4(a1, a2, a3, *v3, &qword_1EC1D6878, sub_1C6B3CBC0, sub_1C6B3CBC0);
  *v3 = result;
  return result;
}

char *sub_1C6B39714(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3B008(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39734(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCDF5D8, MEMORY[0x1E69E31F8], MEMORY[0x1E69E31F8]);
  *v3 = result;
  return result;
}

void *sub_1C6B39784(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCDF520, type metadata accessor for SportsRecommendedScoredTag, type metadata accessor for SportsRecommendedScoredTag);
  *v3 = result;
  return result;
}

char *sub_1C6B397D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3B174(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B397F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3B2A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39814(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3B3EC(a1, a2, a3, *v3, &unk_1EDCDF450, sub_1C6B3C3F4, sub_1C6B3C3F4);
  *v3 = result;
  return result;
}

void *sub_1C6B39864(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &unk_1EDCDF538, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  *v3 = result;
  return result;
}

void *sub_1C6B398B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &qword_1EDCDF500, sub_1C6B3C9DC, sub_1C6B3C9DC);
  *v3 = result;
  return result;
}

void *sub_1C6B39904(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &unk_1EDCDF570, sub_1C6B3CA34, sub_1C6B3CA34);
  *v3 = result;
  return result;
}

void *sub_1C6B39954(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3B70C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39974(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &unk_1EDCDF5B8, MEMORY[0x1E69E36D8], MEMORY[0x1E69E36D8]);
  *v3 = result;
  return result;
}

void *sub_1C6B399C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3B854(a1, a2, a3, *v3, sub_1C6B3C5C4, &qword_1EDCE7F40, MEMORY[0x1E69E6158]);
  *v3 = result;
  return result;
}

void *sub_1C6B39A08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3AED4(a1, a2, a3, *v3, &qword_1EDCDF428, sub_1C6B3C640, sub_1C6B3C640);
  *v3 = result;
  return result;
}

void *sub_1C6B39A58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3B9D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39A78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &unk_1EDCDF5A8, MEMORY[0x1E69B46C8], MEMORY[0x1E69B46C8]);
  *v3 = result;
  return result;
}

void *sub_1C6B39AC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B39F38(a1, a2, a3, *v3, &unk_1EDCDF590, MEMORY[0x1E69960D0], MEMORY[0x1E69960D0]);
  *v3 = result;
  return result;
}

char *sub_1C6B39B18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3BC60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6B39B38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3BD7C(a1, a2, a3, *v3, &unk_1EDCDF440, sub_1C6B3C72C, sub_1C6B3C72C);
  *v3 = result;
  return result;
}

void *sub_1C6B39B88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B3BEC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6B39BA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B3CCC8(0, &qword_1EDCE7CF0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C6B39CC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B3CCC8(0, &unk_1EDCE7CF8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C6B39DE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B3CCC8(0, &qword_1EDCEA8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6B39F38(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C6B18984(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1C6B3A118(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B3CCC8(0, &qword_1EDCE7CD0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C6B3A234(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B3CCC8(0, &unk_1EDCE7D30, MEMORY[0x1E6969080], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6B3A358(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B3CCC8(0, &unk_1EDCE6488, &type metadata for ArticleFeatures, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 232);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[232 * v8])
    {
      memmove(v12, v13, 232 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B3A498(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3CB50(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3CAFC(0, &qword_1EDCDFB60, MEMORY[0x1E69E63B0], "tagID score ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B3A5E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3C188(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, &qword_1EDCDFB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B3A728(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3B5C4(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3CAFC(0, &unk_1EDCDFBB0, MEMORY[0x1E69E6448], "identifier score ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6B3A86C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B3CCC8(0, &unk_1EC1D6820, &type metadata for TagRecommendationsDataServiceResult.Recommendation, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6B3A990(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3C260(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C4F0(0, &qword_1EDCDFBC8, &type metadata for AutoFavoriteResults.RejectionReason, "identifier score reason ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B3AAD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3C554(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, &unk_1EC1D6840, &type metadata for TagRecommendationsDataServiceResult.Recommendation, &type metadata for AutoFavoriteResults.RejectionReason);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B3AC18(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3B634(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, &qword_1EDCDFB18, MEMORY[0x1E69E6158], &type metadata for TagRecommendationsDataServiceResult.Recommendation.Kind);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B3AD5C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3B554(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, &qword_1EDCE6680, MEMORY[0x1E69E6158], MEMORY[0x1E69E6448]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B3AED4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1C6B18984(0, a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1C6B3B008(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B3CCC8(0, &qword_1EC1D6870, &type metadata for ChannelPickerSuggestion, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6B3B174(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B3CCC8(0, &qword_1EDCDF528, &type metadata for EventHistoryTagSuggestion, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B3B2A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3C480(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C4F0(0, &qword_1EDCDFBC0, &type metadata for EventHistoryAutoFavoritesProvider.SuggestionKind, "identifier score kind ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B3B3EC(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1C6B18984(0, a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1C6B3B554(uint64_t a1)
{
  if (!qword_1EDCE6460)
  {
    sub_1C6B3C984(255, &qword_1EDCE6680, MEMORY[0x1E69E6158], MEMORY[0x1E69E6448]);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6460);
    }
  }
}

void sub_1C6B3B5C4(uint64_t a1)
{
  if (!qword_1EDCDF4A0)
  {
    sub_1C6B3CAFC(255, &unk_1EDCDFBB0, MEMORY[0x1E69E6448], "identifier score ");
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF4A0);
    }
  }
}

void sub_1C6B3B634(uint64_t a1)
{
  if (!qword_1EC1D6810)
  {
    sub_1C6B3C984(255, &qword_1EDCDFB18, MEMORY[0x1E69E6158], &type metadata for TagRecommendationsDataServiceResult.Recommendation.Kind);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D6810);
    }
  }
}

void sub_1C6B3B6A4()
{
  if (!qword_1EC1D6830)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC1D6830);
    }
  }
}

void *sub_1C6B3B70C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B3C914(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, &qword_1EC1D6868, MEMORY[0x1E69E6158], &type metadata for UserEmbeddingClassification);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B3B854(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 25;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 3);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 8 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3CCC8(0, a6, a7, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1C6B3B9D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C6B3C7A4(0);
  sub_1C6B3C828(0, &qword_1EDCDFCD0, &qword_1EDCDF8F0, 0x1E69B5580, MEMORY[0x1E69B59A8]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1C6B3C828(0, &qword_1EDCDFCD0, &qword_1EDCDF8F0, 0x1E69B5580, MEMORY[0x1E69B59A8]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1C6B3BC60(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B3CCC8(0, &unk_1EDCDF3E8, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1C6B3BD7C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1C6B18984(0, a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1C6B3BEC4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C6B3C890(0);
  sub_1C6B3C828(0, &qword_1EDCEA3C0, &unk_1EDCE7E40, 0x1E696B050, MEMORY[0x1E6968070]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1C6B3C828(0, &qword_1EDCEA3C0, &unk_1EDCE7E40, 0x1E696B050, MEMORY[0x1E6968070]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1C6B3C0E8(uint64_t a1, char a2)
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

  sub_1C6D79E90();
LABEL_9:
  result = sub_1C6D79D80();
  *v2 = result;
  return result;
}

void sub_1C6B3C188(uint64_t a1)
{
  if (!qword_1EDCDF460)
  {
    sub_1C6B3C984(255, &qword_1EDCDFB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0]);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF460);
    }
  }
}

void sub_1C6B3C1F8(uint64_t a1)
{
  if (!qword_1EDCE5CF0)
  {
    sub_1C6D78630();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE5CF0);
    }
  }
}

void sub_1C6B3C260(uint64_t a1)
{
  if (!qword_1EDCDF4C0)
  {
    sub_1C6B3C4F0(255, &qword_1EDCDFBC8, &type metadata for AutoFavoriteResults.RejectionReason, "identifier score reason ");
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF4C0);
    }
  }
}

void sub_1C6B3C2D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > v7[3] >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1C6B66A5C(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((v7[3] >> 1) - v7[2] < v6)
  {
    goto LABEL_19;
  }

  sub_1C6B3CAFC(0, &unk_1EDCDFBB0, MEMORY[0x1E69E6448], "identifier score ");
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v13 = v7[2];
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    v7[2] = v15;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void sub_1C6B3C3F4(uint64_t a1)
{
  if (!qword_1EDCDFB08)
  {
    sub_1C6B3CCC8(255, &qword_1EDCE65B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB08);
    }
  }
}

void sub_1C6B3C480(uint64_t a1)
{
  if (!qword_1EDCDF4B0)
  {
    sub_1C6B3C4F0(255, &qword_1EDCDFBC0, &type metadata for EventHistoryAutoFavoritesProvider.SuggestionKind, "identifier score kind ");
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF4B0);
    }
  }
}

void sub_1C6B3C4F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1C6B3C554(uint64_t a1)
{
  if (!qword_1EC1D6838)
  {
    sub_1C6B3C984(255, &unk_1EC1D6840, &type metadata for TagRecommendationsDataServiceResult.Recommendation, &type metadata for AutoFavoriteResults.RejectionReason);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D6838);
    }
  }
}

void sub_1C6B3C5C4(uint64_t a1)
{
  if (!qword_1EDCDF418)
  {
    sub_1C6B3CCC8(255, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF418);
    }
  }
}

void sub_1C6B3C640(uint64_t a1)
{
  if (!qword_1EDCDFA40)
  {
    sub_1C6B3CAFC(255, &unk_1EDCDFBB0, MEMORY[0x1E69E6448], "identifier score ");
    v1 = sub_1C6D79820();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDFA40);
    }
  }
}

void sub_1C6B3C6B0(uint64_t a1)
{
  if (!qword_1EC1D9950)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA4D0, 0x1E69B6EE8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9950);
    }
  }
}

void sub_1C6B3C72C(uint64_t a1)
{
  if (!qword_1EDCDFAF8)
  {
    sub_1C6B0C69C(255, &unk_1EDCEA4F0, 0x1E69B5470);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFAF8);
    }
  }
}

void sub_1C6B3C7A4(uint64_t a1)
{
  if (!qword_1EDCDF4F0)
  {
    sub_1C6B3C828(255, &qword_1EDCDFCD0, &qword_1EDCDF8F0, 0x1E69B5580, MEMORY[0x1E69B59A8]);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF4F0);
    }
  }
}

void sub_1C6B3C828(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1C6B0C69C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C6B3C890(uint64_t a1)
{
  if (!qword_1EDCE64C8)
  {
    sub_1C6B3C828(255, &qword_1EDCEA3C0, &unk_1EDCE7E40, 0x1E696B050, MEMORY[0x1E6968070]);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE64C8);
    }
  }
}

void sub_1C6B3C914(uint64_t a1)
{
  if (!qword_1EC1D6860)
  {
    sub_1C6B3C984(255, &qword_1EC1D6868, MEMORY[0x1E69E6158], &type metadata for UserEmbeddingClassification);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D6860);
    }
  }
}

void sub_1C6B3C984(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C6B3C9DC()
{
  if (!qword_1EDCDFCF8)
  {
    v0 = sub_1C6D78DF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFCF8);
    }
  }
}

void sub_1C6B3CA34(uint64_t a1)
{
  if (!qword_1EDCE5CC8)
  {
    sub_1C6B3C9DC();
    v1 = sub_1C6D788A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE5CC8);
    }
  }
}

void sub_1C6B3CA94(uint64_t a1)
{
  if (!qword_1EDCDFB40)
  {
    sub_1C6D76BD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB40);
    }
  }
}

void sub_1C6B3CAFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C6B3CB50(uint64_t a1)
{
  if (!qword_1EDCDF490)
  {
    sub_1C6B3CAFC(255, &qword_1EDCDFB60, MEMORY[0x1E69E63B0], "tagID score ");
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF490);
    }
  }
}

void sub_1C6B3CBC0(uint64_t a1)
{
  if (!qword_1EC1D6880)
  {
    sub_1C6B3CCC8(255, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = sub_1C6D794E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D6880);
    }
  }
}

void sub_1C6B3CC4C(uint64_t a1)
{
  if (!qword_1EDCDF408)
  {
    sub_1C6B3CCC8(255, &qword_1EDCDF970, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF408);
    }
  }
}