void sub_1ABAE1184()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v6)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA5668();
  if (v3)
  {
    sub_1ABAB540C(v9, v10, v11, v12, v13, v14);
    v4 = 56;
    v15 = swift_allocObject();
    sub_1ABAA3B60(v15);
    sub_1ABA96BB8(v16 / 56);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABA82D94();
  if (v1)
  {
    if (v15 != v0 || v5 + 56 * v2 <= v4)
    {
      v18 = sub_1ABA894A0();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = sub_1ABA7ECFC();
    sub_1ABAD219C(v21, v22);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

void sub_1ABAE1268()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1308, &qword_1ABF33490);
    v8 = sub_1ABAB5604(v7);
    sub_1ABA7ECDC(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1ABA97400();
  if (v1)
  {
    if (v8 != v0 || &v11[24 * v3] <= v10)
    {
      memmove(v10, v11, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAE1340()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1338, &qword_1ABF334C0);
    v7 = sub_1ABAA21A8();
    sub_1ABA81494(v7);
    sub_1ABA9922C(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA0A10();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAE1408()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (v9)
  {
    sub_1ABA93188();
    if (v10 != v11)
    {
      sub_1ABAA4834();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA1E48();
  if (v10 ^ v11 | v25)
  {
    v19 = v0;
  }

  else
  {
    v19 = v18;
  }

  if (!v19)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  sub_1ABAB540C(v12, v13, v14, v15, v16, v17);
  v20 = v4(0);
  sub_1ABA7BBD0(v20);
  v22 = *(v21 + 72);
  v23 = sub_1ABAE3060();
  j__malloc_size(v23);
  if (!v22)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1ABAA0504();
  v25 = v25 && v22 == -1;
  if (v25)
  {
    goto LABEL_22;
  }

  sub_1ABA96BB8(v24 / v22);
LABEL_17:
  v4(0);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v8)
  {
    sub_1ABADD61C(v6 + v26, v0, v23 + v26, v2);
    *(v6 + 16) = 0;
  }

  else
  {
    sub_1ABAA0260();
  }

  sub_1ABA7BC1C();
}

void sub_1ABAE1560()
{
  sub_1ABA7E2A8();
  sub_1ABA7E294();
  if (v5)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
LABEL_23:
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA1E48();
  if (v6 ^ v7 | v23)
  {
    v15 = v4;
  }

  else
  {
    v15 = v14;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  sub_1ABAB540C(v8, v9, v10, v11, v12, v13);
  v16 = sub_1ABA7ECFC();
  v18 = sub_1ABAD219C(v16, v17);
  sub_1ABA7BBD0(v18);
  v20 = *(v19 + 72);
  v21 = sub_1ABAE3060();
  j__malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1ABAA0504();
  v23 = v23 && v20 == -1;
  if (v23)
  {
    goto LABEL_22;
  }

  sub_1ABA96BB8(v22 / v20);
LABEL_17:
  v24 = sub_1ABA7ECFC();
  sub_1ABAD219C(v24, v25);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v3)
  {
    sub_1ABADD54C(v0 + v26, v4, v21 + v26, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA0260();
  }

  sub_1ABA7BC1C();
}

char *sub_1ABAE16A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D13B0, &qword_1ABF33538);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ABAE17B0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1ABAD219C(&qword_1EB4D14A0, &qword_1ABF33628);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D14A8, &qword_1ABF33630);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE18E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1498, &qword_1ABF33620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[112 * v8] <= v12)
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE1A00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D14D8, &qword_1ABF33660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[96 * v8] <= v12)
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE1B18(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D14E0, &qword_1ABF33668);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[192 * v8] <= v12)
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE1C2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D14B0, &qword_1ABF33638);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 224);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[224 * v8] <= v12)
    {
      memmove(v12, v13, 224 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE1D44(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1490, &qword_1ABF33618);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE1E5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1488, &qword_1ABF33610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

char *sub_1ABAE1F74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1948, &qword_1ABF33AD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1ABAE2074()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v6)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA5668();
  if (v3)
  {
    sub_1ABAB540C(v9, v10, v11, v12, v13, v14);
    v15 = sub_1ABAA21A8();
    j__malloc_size(v15);
    sub_1ABA83554();
    v15[2] = v2;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABA82D94();
  if (v1)
  {
    if (v15 != v0 || v5 + 8 * v2 <= v4)
    {
      v18 = sub_1ABA894A0();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = sub_1ABA7ECFC();
    sub_1ABAD219C(v21, v22);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

void *sub_1ABAE2144(void *result, int64_t a2, char a3, void *a4)
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
    sub_1ABAD219C(&qword_1EB4D12F8, &qword_1ABF33480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D1300, &qword_1ABF33488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1ABAE2290()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v6)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA5668();
  if (v3)
  {
    sub_1ABAB540C(v9, v10, v11, v12, v13, v14);
    v4 = 40;
    v15 = swift_allocObject();
    sub_1ABAA3B60(v15);
    sub_1ABA96BB8(v16 / 40);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABA82D94();
  if (v1)
  {
    if (v15 != v0 || v5 + 40 * v2 <= v4)
    {
      v18 = sub_1ABA894A0();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = sub_1ABA7ECFC();
    sub_1ABAD219C(v21, v22);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

void *sub_1ABAE2374(void *result, int64_t a2, char a3, void *a4)
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
    sub_1ABAD219C(&qword_1EB4D12A8, &unk_1ABF33430);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D12B0, &qword_1ABF4AAF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1ABAE24AC()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1198, &qword_1ABF33320);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAE257C()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v5)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA5668();
  if (v3)
  {
    sub_1ABAB540C(v8, v9, v10, v11, v12, v13);
    v14 = sub_1ABAA21A8();
    sub_1ABA80590(v14);
    v14[2] = v2;
    v14[3] = v15;
  }

  sub_1ABA82D94();
  if (v1)
  {
    sub_1ABA96F3C();
    if (v17)
    {
      v18 = v16 > v4;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      v19 = sub_1ABA894A0();
      memmove(v19, v20, v21);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v22 = sub_1ABA7ECFC();
    sub_1ABAD219C(v22, v23);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

void sub_1ABAE2644()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v13 = sub_1ABAB540C(v7, v8, v9, v10, v11, v12);
    v14 = sub_1ABAA1B54(v13);
    sub_1ABA80590(v14);
    v14[2] = v3;
    v14[3] = v15;
  }

  v16 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABA8857C();
    if (v21)
    {
      v22 = v20 > v18;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      memmove(v18, v19, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v16, v17, 16 * v3);
  }
}

char *sub_1ABAE26F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D11D0, &qword_1ABF33358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1ABAE27F8()
{
  result = qword_1EB4D1070;
  if (!qword_1EB4D1070)
  {
    sub_1ABF21CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1070);
  }

  return result;
}

uint64_t sub_1ABAE2850(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1ABAE2898()
{
  result = qword_1EB4D1098;
  if (!qword_1EB4D1098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1098);
  }

  return result;
}

unint64_t sub_1ABAE28EC()
{
  result = qword_1ED871EB0;
  if (!qword_1ED871EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871EB0);
  }

  return result;
}

uint64_t sub_1ABAE2940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v13 = *a6;
  v14 = a6[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1ABA7FDA0;

  return sub_1ABAD82E4(a1, a2, a3, a4, a5, v13, v14, a7);
}

uint64_t sub_1ABAE2A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = a1 <= a2;
    if (a3 > 0)
    {
      v8 = a1 >= a2;
    }

    if (v8)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v9 = __OFADD__(a1, a3);
      a1 += a3;
      if (v9)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v9;
    }

    v9 = __OFADD__(result++, 1);
  }

  while (!v9);
  __break(1u);
  return result;
}

uint64_t sub_1ABAE2ACC(uint64_t a1)
{
  result = sub_1ABF247E4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABAE2BF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1ABAE2D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationEmbedderInferenceInterface.Output(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1ABAE2DC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1ABA7FDA0;

  JUMPOUT(0x1ABAE2940);
}

uint64_t sub_1ABAE2EC4()
{
  sub_1ABA81488();
  sub_1ABAD219C(v1, v2);
  sub_1ABA7BBB0();
  v3 = sub_1ABA7D000();
  v4(v3);
  return v0;
}

uint64_t sub_1ABAE2F1C()
{
  sub_1ABA81488();
  sub_1ABAD219C(v1, v2);
  sub_1ABA7BBB0();
  v3 = sub_1ABA7D000();
  v4(v3);
  return v0;
}

uint64_t sub_1ABAE2F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1AB0, &qword_1ABF33C40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABAE2FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationEmbedderInferenceInterface.Output(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABAE3060()
{

  return swift_allocObject();
}

uint64_t sub_1ABAE3088()
{
  sub_1ABAD219C(&qword_1EB4D1AF8, &unk_1ABF33CE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF33CA0;
  result = swift_getKeyPath();
  *(v0 + 32) = result;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[348], *(_Records_GDEntityPredicate_records + 88), *(_Records_GDEntityPredicate_records + 89), &v26);
  v2 = v27;
  v3 = v28;
  v4 = v29;
  *(v0 + 40) = v26;
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  result = swift_getKeyPath();
  *(v0 + 80) = result;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[360], *(_Records_GDEntityPredicate_records + 91), *(_Records_GDEntityPredicate_records + 92), &v26);
  v5 = v27;
  v6 = v28;
  v7 = v29;
  *(v0 + 88) = v26;
  *(v0 + 104) = v5;
  *(v0 + 112) = v6;
  *(v0 + 120) = v7;
  result = swift_getKeyPath();
  *(v0 + 128) = result;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[456], *(_Records_GDEntityPredicate_records + 115), *(_Records_GDEntityPredicate_records + 116), &v26);
  v8 = v27;
  v9 = v28;
  v10 = v29;
  *(v0 + 136) = v26;
  *(v0 + 152) = v8;
  *(v0 + 160) = v9;
  *(v0 + 168) = v10;
  result = swift_getKeyPath();
  *(v0 + 176) = result;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[516], *(_Records_GDEntityPredicate_records + 130), *(_Records_GDEntityPredicate_records + 131), &v26);
  v11 = v27;
  v12 = v28;
  v13 = v29;
  *(v0 + 184) = v26;
  *(v0 + 200) = v11;
  *(v0 + 208) = v12;
  *(v0 + 216) = v13;
  result = swift_getKeyPath();
  *(v0 + 224) = result;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[468], *(_Records_GDEntityPredicate_records + 118), *(_Records_GDEntityPredicate_records + 119), &v26);
  v14 = v27;
  v15 = v28;
  v16 = v29;
  *(v0 + 232) = v26;
  *(v0 + 248) = v14;
  *(v0 + 256) = v15;
  *(v0 + 264) = v16;
  result = swift_getKeyPath();
  *(v0 + 272) = result;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[372], *(_Records_GDEntityPredicate_records + 94), *(_Records_GDEntityPredicate_records + 95), &v26);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  *(v0 + 280) = v26;
  *(v0 + 296) = v17;
  *(v0 + 304) = v18;
  *(v0 + 312) = v19;
  result = swift_getKeyPath();
  *(v0 + 320) = result;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[504], *(_Records_GDEntityPredicate_records + 127), *(_Records_GDEntityPredicate_records + 128), &v26);
  v20 = v27;
  v21 = v28;
  v22 = v29;
  *(v0 + 328) = v26;
  *(v0 + 344) = v20;
  *(v0 + 352) = v21;
  *(v0 + 360) = v22;
  result = swift_getKeyPath();
  *(v0 + 368) = result;
  if (_Records_GDEntityPredicate_records)
  {
    result = sub_1ABA91D48(_Records_GDEntityPredicate_records[1296], *(_Records_GDEntityPredicate_records + 325), *(_Records_GDEntityPredicate_records + 326), &v26);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    *(v0 + 376) = v26;
    *(v0 + 392) = v23;
    *(v0 + 400) = v24;
    *(v0 + 408) = v25;
    qword_1EB5495B8 = v0;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1ABAE3388(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1ABF23C04();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void sub_1ABAE33DC(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_1ABF23BD4();
  [v6 *a5];
}

void sub_1ABAE3440(void *__src@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, 0x70uLL);
  v2 = __dst[9];
  v3 = __dst[9] + 64;
  v4 = 1 << *(__dst[9] + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(__dst[9] + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v6)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= v7)
          {
            goto LABEL_20;
          }

          v6 = *(v3 + 8 * v10);
          ++v8;
          if (v6)
          {
            v8 = v10;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        goto LABEL_41;
      }

LABEL_9:
      v11 = *(*(v2 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
      v12 = *(v11 + 16);
      v13 = *(v9 + 16);
      if (__OFADD__(v13, v12))
      {
        goto LABEL_38;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(v9 + 24) >> 1)
      {
        sub_1ABAD88DC();
        v9 = v14;
      }

      v6 &= v6 - 1;
      if (!*(v11 + 16))
      {
        break;
      }

      if ((*(v9 + 24) >> 1) - *(v9 + 16) < v12)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v15 = *(v9 + 16);
        v16 = __OFADD__(v15, v12);
        v17 = v15 + v12;
        if (v16)
        {
          goto LABEL_40;
        }

        *(v9 + 16) = v17;
      }
    }
  }

  while (!v12);
  __break(1u);
LABEL_20:

  v18 = sub_1ABAE3A94(v9);

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v19 = __dst[1];
  v56 = __dst[2];
  v57 = __dst[0];
  v55 = __dst[3];
  v20 = __dst[5];
  v21 = __dst[6];
  v53 = __dst[7];
  v54 = __dst[4];
  v22 = __dst[9];
  v51 = __dst[10];
  v52 = __dst[8];
  v50 = __dst[11];
  v48 = __dst[13];
  v49 = __dst[12];
  v23 = *(_Records_GDEntityPredicate_records + 4);
  v24 = *(_Records_GDEntityPredicate_records + 5);
  v25 = _Records_GDEntityPredicate_records[12];
  sub_1ABAE441C(__dst, &v59);
  sub_1ABA91D48(v25, v23, v24, v75);
  v26 = sub_1ABAD5128(v75, v18);
  v28 = v27;
  sub_1ABAE4478(v75);
  if (v28)
  {
    goto LABEL_24;
  }

  v29 = sub_1ABAE38D0(v18);
  if (v30)
  {
    v26 = v29;
    v28 = v30;
LABEL_24:

    if (v22)
    {

      v20 = v26;
      goto LABEL_27;
    }

LABEL_26:

    v28 = v21;
    goto LABEL_27;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_42;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1128], *(_Records_GDEntityPredicate_records + 283), *(_Records_GDEntityPredicate_records + 284), v74);
  v42 = sub_1ABAD5128(v74, v18);
  v44 = v43;
  sub_1ABAE4478(v74);
  if (!v44)
  {
    goto LABEL_35;
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1140], *(_Records_GDEntityPredicate_records + 286), *(_Records_GDEntityPredicate_records + 287), v73);
    v45 = sub_1ABAD5128(v73, v18);
    v47 = v46;

    sub_1ABAE4478(v73);
    if (v47)
    {
      if (!v22)
      {

        goto LABEL_26;
      }

      v59 = 40;
      v60 = 0xE100000000000000;
      MEMORY[0x1AC5A9410](v42, v44);

      MEMORY[0x1AC5A9410](44, 0xE100000000000000);
      MEMORY[0x1AC5A9410](v45, v47);

      MEMORY[0x1AC5A9410](41, 0xE100000000000000);
      v20 = v59;
      v28 = v60;

LABEL_27:
      v32 = v57;
      v31 = a2;
      v34 = v55;
      v33 = v56;
      v36 = v53;
      v35 = v54;
      v38 = v51;
      v37 = v52;
      v40 = v49;
      v39 = v50;
      v41 = v48;
LABEL_28:
      *v31 = v32;
      v31[1] = v19;
      v31[2] = v33;
      v31[3] = v34;
      v31[4] = v35;
      v31[5] = v20;
      v31[6] = v28;
      v31[7] = v36;
      v31[8] = v37;
      v31[9] = v22;
      v31[10] = v38;
      v31[11] = v39;
      v31[12] = v40;
      v31[13] = v41;
      return;
    }

LABEL_35:

    v59 = v57;
    v60 = v19;
    v61 = v56;
    v62 = v55;
    v63 = v54;
    v64 = v20;
    v65 = v21;
    v66 = v53;
    v67 = v52;
    v68 = v22;
    v69 = v51;
    v70 = v50;
    v71 = v49;
    v72 = v48;
    sub_1ABAE44CC(&v59);
    v32 = 0;
    v19 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v20 = 0;
    v28 = 0;
    v36 = 0;
    v37 = 0;
    v22 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v31 = a2;
    goto LABEL_28;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_1ABAE38D0(uint64_t a1)
{
  v14 = [objc_allocWithZone(MEMORY[0x1E695CF30]) init];
  if (qword_1EB4D0240 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1EB5495B8 + 16);
  if (v2)
  {
    v3 = qword_1EB5495B8 + 72;
    do
    {
      v4 = *(a1 + 16);

      if (v4)
      {

        sub_1ABAF8208();
        v6 = v5;

        if (v6)
        {
        }
      }

      v3 += 48;
      swift_setAtWritableKeyPath();

      --v2;
    }

    while (v2);
  }

  v7 = [objc_opt_self() singleLineStringFromPostalAddress:v14 addCountryName:0];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1ABF23C04();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    return 0;
  }

  return v9;
}

uint64_t sub_1ABAE3A94(uint64_t a1)
{
  sub_1ABAE4254();
  v2 = sub_1ABF239C4();
  v83 = *(a1 + 16);
  if (!v83)
  {
    return v2;
  }

  v3 = 0;
  v82 = a1 + 32;
  v81 = 3481;
  v80 = 4281;
  while (1)
  {
    v4 = v3;
    v5 = memcpy(__dst, (v82 + 144 * v3), sizeof(__dst));
    v14 = __dst[12];
    v13 = __dst[13];
    v84 = v4 + 1;
    switch(BYTE2(__dst[16]))
    {
      case 1:
        v18 = 3826797;
        if ((__dst[12] & 0x80000000000000) == 0)
        {
          v18 = 3828069;
        }

        sub_1ABA805C0(v5, v6, v7, v8, v9, v10, v11, v12, v79, v80, v81, v82, v83, v84, v86, v87, v88, v89, v91, __dst[12], v93, v18, 0xE300000000000000, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7], v112[8], v112[9], v112[10], v112[11], v112[12], v112[13], v112[14], v112[15], v112[16], v112[17]);
        v19 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v19);

        v14 = v94;
        v13 = v95;
        break;
      case 2:
      case 3:
        sub_1ABA805C0(v5, v6, v7, v8, v9, v10, v11, v12, v79, v80, v81, v82, v83, v84, v86, v87, v88, v89, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7], v112[8], v112[9], v112[10], v112[11], v112[12], v112[13], v112[14], v112[15], v112[16], v112[17]);

        break;
      case 4:
        sub_1ABA805C0(v5, v6, v7, v8, v9, v10, v11, v12, v79, v80, v81, v82, v83, v84, v86, v87, v88, v89, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7], v112[8], v112[9], v112[10], v112[11], v112[12], v112[13], v112[14], v112[15], v112[16], v112[17]);
        v14 = 0;
        v13 = 0xE000000000000000;
        break;
      default:
        v16 = __dst[14];
        v15 = __dst[15];
        v17 = LOWORD(__dst[16]);
        sub_1ABA805C0(v5, v6, v7, v8, v9, v10, v11, v12, v79, v80, v81, v82, v83, v84, v86, v87, v88, v89, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v112[2], v112[3], v112[4], v112[5], v112[6], v112[7], v112[8], v112[9], v112[10], v112[11], v112[12], v112[13], v112[14], v112[15], v112[16], v112[17]);
        sub_1ABAE4358(v14, v13, v16, v15, v17, 0);
        break;
    }

    v20 = *&__dst[7];
    v117 = *&__dst[7];
    v118 = *&__dst[9];
    v119 = __dst[11];
    swift_isUniquelyReferenced_nonNull_native();
    v112[0] = v2;
    sub_1ABAF8208();
    if (__OFADD__(*(v2 + 16), (v21 & 1) == 0))
    {
      break;
    }

    v22 = v21;
    v88 = sub_1ABAD219C(&qword_1EB4D1AF0, &qword_1ABF33CD8);
    if (sub_1ABF24C64())
    {
      sub_1ABAF8208();
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_86;
      }
    }

    v2 = v112[0];
    if (v22)
    {
      sub_1ABA7D00C();
      *v24 = v14;
      v24[1] = v13;
    }

    else
    {
      sub_1ABA8EE80();
      v25 = v118;
      *v26 = v117;
      *(v26 + 16) = v25;
      *(v26 + 32) = v119;
      sub_1ABA7D00C();
      *v27 = v14;
      v27[1] = v13;
      v28 = *(v2 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_82;
      }

      *(v2 + 16) = v30;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_83;
    }

    if (*(_Records_GDEntityPredicate_records + 211) >= v81)
    {
      goto LABEL_80;
    }

    if (*(_Records_GDEntityPredicate_records + 212) >= v80)
    {
      goto LABEL_81;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_85;
    }

    v31 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_84;
    }

    v33 = v31;
    v34 = v32;
    sub_1ABF23DD4();
    if (v20 == v33 && *(&v20 + 1) == v34)
    {

LABEL_29:
      v37 = __dst[17] + 64;
      v38 = 1 << *(__dst[17] + 32);
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v40 = v39 & *(__dst[17] + 64);
      v41 = (v38 + 63) >> 6;
      v89 = __dst[17];
      swift_bridgeObjectRetain_n();
      v42 = 0;
      v43 = MEMORY[0x1E69E7CC0];
      while (v40)
      {
LABEL_38:
        v45 = *(*(v89 + 56) + ((v42 << 9) | (8 * __clz(__rbit64(v40)))));
        v46 = *(v45 + 16);
        v47 = *(v43 + 16);
        if (__OFADD__(v47, v46))
        {
          goto LABEL_75;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v47 + v46 > *(v43 + 24) >> 1)
        {
          sub_1ABAD88DC();
          v43 = v48;
        }

        v40 &= v40 - 1;
        if (*(v45 + 16))
        {
          if ((*(v43 + 24) >> 1) - *(v43 + 16) < v46)
          {
            goto LABEL_77;
          }

          swift_arrayInitWithCopy();

          if (v46)
          {
            v49 = *(v43 + 16);
            v29 = __OFADD__(v49, v46);
            v50 = v49 + v46;
            if (v29)
            {
              goto LABEL_78;
            }

            *(v43 + 16) = v50;
          }
        }

        else
        {

          if (v46)
          {
            goto LABEL_76;
          }
        }
      }

      while (1)
      {
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
          goto LABEL_72;
        }

        if (v44 >= v41)
        {
          break;
        }

        v40 = *(v37 + 8 * v44);
        ++v42;
        if (v40)
        {
          v42 = v44;
          goto LABEL_38;
        }
      }

      sub_1ABAE4304(__dst);

      v51 = *(v43 + 16);
      if (!v51)
      {
LABEL_68:

        goto LABEL_69;
      }

      v52 = 0;
      v86 = v51 - 1;
      v87 = v43;
      v53 = 32;
      while (v52 < v51)
      {
        v54 = memcpy(v112, (v43 + v53), sizeof(v112));
        v62 = v112[12];
        v63 = v112[13];
        v90 = v53;
        switch(BYTE2(v112[16]))
        {
          case 1:
            v67 = 3826797;
            if ((v112[12] & 0x80000000000000) == 0)
            {
              v67 = 3828069;
            }

            sub_1ABA7ED08(v54, v55, v56, v57, v58, v59, v60, v61, v79, v80, v81, v82, v83, v85, v86, v87, v88, v53, v112[12], v67, 0xE300000000000000, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
            v68 = sub_1ABF24FF4();
            MEMORY[0x1AC5A9410](v68);

            v62 = v92;
            v63 = v93;
            break;
          case 2:
          case 3:
            sub_1ABA7ED08(v54, v55, v56, v57, v58, v59, v60, v61, v79, v80, v81, v82, v83, v85, v86, v87, v88, v53, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);

            break;
          case 4:
            sub_1ABA7ED08(v54, v55, v56, v57, v58, v59, v60, v61, v79, v80, v81, v82, v83, v85, v86, v87, v88, v53, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
            v62 = 0;
            v63 = 0xE000000000000000;
            break;
          default:
            v65 = v112[14];
            v64 = v112[15];
            v66 = LOWORD(v112[16]);
            sub_1ABA7ED08(v54, v55, v56, v57, v58, v59, v60, v61, v79, v80, v81, v82, v83, v85, v86, v87, v88, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
            sub_1ABAE4358(v62, v63, v65, v64, v66, 0);
            break;
        }

        v114 = *&v112[7];
        v115 = *&v112[9];
        v116 = v112[11];
        swift_isUniquelyReferenced_nonNull_native();
        v94 = v2;
        sub_1ABAF8208();
        v70 = v69;
        if (__OFADD__(*(v2 + 16), (v69 & 1) == 0))
        {
          goto LABEL_73;
        }

        if (sub_1ABF24C64())
        {
          sub_1ABAF8208();
          if ((v70 & 1) != (v71 & 1))
          {
            goto LABEL_86;
          }
        }

        if (v70)
        {
          sub_1ABA7D00C();
          *v72 = v62;
          v72[1] = v63;

          sub_1ABAE4304(v112);
        }

        else
        {
          sub_1ABA8EE80();
          v73 = v115;
          *v74 = v114;
          *(v74 + 16) = v73;
          *(v74 + 32) = v116;
          sub_1ABA7D00C();
          *v75 = v62;
          v75[1] = v63;

          sub_1ABAE4304(v112);
          v76 = *(v2 + 16);
          v29 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v29)
          {
            goto LABEL_74;
          }

          *(v2 + 16) = v77;
        }

        v43 = v87;
        if (v86 == v52)
        {
          goto LABEL_68;
        }

        v51 = *(v87 + 16);
        v53 = v89 + 144;
        ++v52;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      break;
    }

    v36 = sub_1ABF25054();

    if (v36)
    {
      goto LABEL_29;
    }

    sub_1ABAE4304(__dst);
LABEL_69:
    v3 = v85;
    if (v85 == v83)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

unint64_t sub_1ABAE4254()
{
  result = qword_1EB4CFFB0;
  if (!qword_1EB4CFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFB0);
  }

  return result;
}

uint64_t sub_1ABAE4358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  result = a2;
  if (a6 - 2 < 2)
  {
  }

  if (!a6)
  {
  }

  return result;
}

uint64_t sub_1ABAE44CC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1B00, &unk_1ABF33E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

IntelligencePlatform::AgeDifferenceCategory __swiftcall AgeDifferenceCategory.init(age:userAge:)(Swift::Int64 age, Swift::Int64 userAge)
{
  v3 = age - userAge;
  if (__OFSUB__(age, userAge))
  {
    __break(1u);
  }

  else
  {
    v4 = v3 + 1;
    if (v3 >= -1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 3;
    }

    if (v3 >= -5)
    {
      v6 = v5;
    }

    else
    {
      v6 = 2;
    }

    if (v3 >= -15)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if (v3 <= 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 5;
    }

    if (v3 <= 5)
    {
      v9 = v8;
    }

    else
    {
      v9 = 6;
    }

    if (v3 <= 15)
    {
      v10 = v9;
    }

    else
    {
      v10 = 7;
    }

    if (v4 < 3)
    {
      v10 = 4;
    }

    *v2 = v10;
  }

  return age;
}

IntelligencePlatform::AgeDifferenceCategory_optional __swiftcall AgeDifferenceCategory.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1ABAE45C0()
{
  result = qword_1EB4D1B08;
  if (!qword_1EB4D1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1B08);
  }

  return result;
}

uint64_t sub_1ABAE4634@<X0>(uint64_t *a1@<X8>)
{
  result = AgeDifferenceCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AgeDifferenceCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AgeDifferenceCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABAE47C0()
{
  memset(v2, 0, sizeof(v2));
  *(v0 + 16) = 7105633;
  *(v0 + 24) = 0xE300000000000000;
  *(v0 + 32) = &unk_1F208E4B8;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0xD000000000000047;
  *(v0 + 72) = 0x80000001ABF865D0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABAE485C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (sub_1ABE47EF0() || sub_1ABE47EF0())
    {
      return sub_1ABE48330();
    }

    else
    {
      return sub_1ABE47F28(a2);
    }
  }

  return result;
}

void *sub_1ABAE48BC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  memcpy(__dst, a2, 0x69uLL);
  if (v7 >> 1 == 0xFFFFFFFF && (v9 & 0x1E) == 0)
  {
    memcpy(a3, a2, 0x69uLL);
    return sub_1ABAE4B10(__dst, v15);
  }

  else
  {
    memcpy(__src, a1, 0x58uLL);
    __src[11] = v7;
    __src[12] = v8;
    LOBYTE(__src[13]) = v9;
    v13[111] = 1;
    memcpy(v13, a2, 0x69uLL);
    memcpy(v15, a1, sizeof(v15));
    v16 = v7;
    v17 = v8;
    v18 = v9;
    sub_1ABAE4B10(v15, v12);
    sub_1ABE39F20();
    memcpy(v12, __src, 0x69uLL);
    if (v3)
    {
      return sub_1ABAE4B6C(v12);
    }

    else
    {
      sub_1ABAE4B6C(v12);
      return memcpy(a3, v19, 0x69uLL);
    }
  }
}

BOOL sub_1ABAE4A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  v3 = *(a2 + 104);
  if (a1 && !sub_1ABE47EF0())
  {
    return 1;
  }

  return (v3 & 0x1E) != 0 || v2 >> 1 != 0xFFFFFFFF;
}

uint64_t sub_1ABAE4AA8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1B10, &unk_1ABF33FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Analytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Analytics.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Analytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABAE4DC8()
{
  memset(v2, 0, sizeof(v2));
  *(v0 + 16) = 6581857;
  *(v0 + 24) = 0xE300000000000000;
  *(v0 + 32) = &unk_1F208E4E8;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0xD000000000000026;
  *(v0 + 72) = 0x80000001ABF866A0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABAE4E64(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return sub_1ABE483B8(a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RouteFlag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RouteFlag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABAE5020()
{
  sub_1ABAD219C(&qword_1EB4D1B20, &qword_1ABF34138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34060;
  *(inited + 32) = 0;
  v1 = type metadata accessor for AddressRenderer();
  v2 = swift_allocObject();
  *(inited + 64) = v1;
  *(inited + 72) = &off_1F2088888;
  *(inited + 40) = v2;
  *(inited + 80) = 2;
  v3 = type metadata accessor for MusicEntityRenderer();
  v4 = swift_allocObject();
  *(inited + 112) = v3;
  *(inited + 120) = &off_1F2084630;
  *(inited + 88) = v4;
  sub_1ABAD219C(&qword_1EB4D1B28, &unk_1ABF34140);
  sub_1ABAE5294();
  result = sub_1ABF239C4();
  qword_1EB5495C0 = result;
  return result;
}

unint64_t sub_1ABAE5108(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1ABAE5154(char a1)
{
  if (!a1)
  {
    return 0x73736572646461;
  }

  if (a1 == 1)
  {
    return 0x7463614670696B73;
  }

  return 0xD000000000000013;
}

unint64_t sub_1ABAE51E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABAE5108(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABAE5210@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABAE5154(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1ABAE5240()
{
  result = qword_1EB4D1B18;
  if (!qword_1EB4D1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1B18);
  }

  return result;
}

unint64_t sub_1ABAE5294()
{
  result = qword_1EB4D1B30;
  if (!qword_1EB4D1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1B30);
  }

  return result;
}

uint64_t CustomAppleMusicEventContext.__allocating_init(context:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ABA7BC4C();
  v8(v7);
  v9 = type metadata accessor for ViewService();
  v10 = static ViewService.clientService.getter(v9);
  v11 = CustomAppleMusicEventContext.__allocating_init(context:viewService:)(v6, v10);
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t CustomAppleMusicEventContext.__allocating_init(context:viewService:)(uint64_t a1, void *a2)
{
  sub_1ABA7D028();
  v4 = swift_allocObject();
  CustomAppleMusicEventContext.init(context:viewService:)(a1, a2);
  return v4;
}

void *CustomAppleMusicEventContext.init(context:viewService:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v21 - v11;
  (*(v9 + 16))(v21 - v11, a1, v8, v10);
  v13 = type metadata accessor for AppleMusicEventView();
  sub_1ABA7D028();
  swift_allocObject();
  v14 = AppleMusicEventView.init(viewService:)(a2);
  if (v3)
  {
    v15 = *(v9 + 8);
    v15(a1, v8);
    v16 = sub_1ABA7BC4C();
    (v15)(v16);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v14;
    v18 = sub_1ABAE6834(&qword_1EB4D1B38, type metadata accessor for AppleMusicEventView, &unk_1ABF34888);
    v19 = *(v7 + 88);
    v21[0] = v13;
    v21[1] = v8;
    v21[2] = v18;
    v21[3] = v19;
    type metadata accessor for EventBaseContext(0, v21);
    (*(v9 + 8))(a1, v8);
    v21[0] = v17;
    v4[2] = sub_1ABC26464(v12, v21);
  }

  return v4;
}

uint64_t CustomAppleMusicEventContext.__allocating_init<>()()
{
  v0 = type metadata accessor for ViewService();
  v1 = static ViewService.clientService.getter(v0);
  sub_1ABA7D028();
  v2 = swift_allocObject();
  CustomAppleMusicEventContext.init<>(viewService:)(v1);
  return v2;
}

uint64_t CustomAppleMusicEventContext.__allocating_init<>(viewService:)(void *a1)
{
  sub_1ABA7D028();
  v2 = swift_allocObject();
  CustomAppleMusicEventContext.init<>(viewService:)(a1);
  return v2;
}

uint64_t *CustomAppleMusicEventContext.init<>(viewService:)(void *a1)
{
  v3 = v1;
  type metadata accessor for AppleMusicEventView();
  sub_1ABA7D028();
  swift_allocObject();
  v5 = a1;
  v6 = AppleMusicEventView.init(viewService:)(v5);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v6;
    v9 = ViewService.subgraphView(name:tableName:batchSize:)(0xD000000000000017, 0x80000001ABF866D0, 0xD000000000000018, 0x80000001ABF866F0, 10);
    sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
    swift_allocObject();
    v10 = sub_1ABAE65FC(v9);

    sub_1ABAD219C(&qword_1EB4D1B48, &qword_1ABF34158);
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v10;
    *(v3 + 16) = v11;
  }

  return v3;
}

void CustomAppleMusicEventContext.songEvents(order:)(char a1)
{
  sub_1ABA805D8();
  sub_1ABA8EEAC();
  sub_1ABAE6834(v1, v2, &protocol conformance descriptor for CustomGraphSongEvent);
  sub_1ABC264B4();
}

uint64_t CustomAppleMusicEventContext.songEvents(whose:in:order:)(char *a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABAE5990(a1, a2, a3, sub_1ABC26600);
}

{
  return sub_1ABAE5990(a1, a2, a3, sub_1ABC2662C);
}

uint64_t sub_1ABAE5990(char *a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = sub_1ABA805D8();
  v13 = v7;
  sub_1ABA8EEAC();
  v11 = sub_1ABAE6834(v9, v10, &protocol conformance descriptor for CustomGraphSongEvent);
  return a4(v8, &v13, a2, a3 & 1, v8, v11);
}

uint64_t CustomAppleMusicEventContext.songEvents(whose:in:order:)(char *a1, uint64_t a2, char a3)
{
  return sub_1ABAE5990(a1, a2, a3, sub_1ABC26658);
}

{
  return sub_1ABAE5990(a1, a2, a3, sub_1ABC26684);
}

{
  return sub_1ABAE5990(a1, a2, a3, sub_1ABC266B0);
}

uint64_t CustomAppleMusicEventContext.songEvents(overlapping:order:)(uint64_t a1, uint64_t a2)
{
  return sub_1ABAE5B18(a1, a2, sub_1ABC26844);
}

{
  return sub_1ABAE5B18(a1, a2, sub_1ABC26870);
}

uint64_t sub_1ABAE5B18(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v6 = sub_1ABA805D8();
  sub_1ABA8EEAC();
  v9 = sub_1ABAE6834(v7, v8, &protocol conformance descriptor for CustomGraphSongEvent);
  return a3(v6, a1, a2 & 1, v6, v9);
}

uint64_t CustomAppleMusicEventContext.songEvents(overlapping:order:)(uint64_t a1, char a2)
{
  return sub_1ABAE5B18(a1, a2, sub_1ABC2689C);
}

{
  return sub_1ABAE5B18(a1, a2, sub_1ABC268C8);
}

{
  return sub_1ABAE5B18(a1, a2, sub_1ABC268F4);
}

uint64_t CustomAppleMusicEventContext.__deallocating_deinit()
{
  CustomAppleMusicEventContext.deinit();
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

void CustomAppleMusicEventContext.enumerateSongEvents<>(order:using:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABA805D8();
  sub_1ABA8EEAC();
  sub_1ABAE6834(v4, v5, &protocol conformance descriptor for CustomGraphSongEvent);
  sub_1ABC26E40();
}

void CustomAppleMusicEventContext.enumerateSongEvents<>(order:block:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  CustomAppleMusicEventContext.enumerateSongEvents<>(order:using:)(a1 & 1, sub_1ABAE699C, v4, a4);
}

uint64_t CustomAppleMusicEventContext.enumerateSongEvents<>(whose:in:order:using:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABAE5E18(a1, a2, a3, a4, a5, a6, sub_1ABC26F98);
}

{
  return sub_1ABAE5E18(a1, a2, a3, a4, a5, a6, sub_1ABC26FD0);
}

uint64_t CustomAppleMusicEventContext.enumerateSongEvents<>(whose:in:order:block:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABAE6060(a1, a2, a3, a4, a5, a6, sub_1ABAE699C, CustomAppleMusicEventContext.enumerateSongEvents<>(whose:in:order:using:));
}

{
  return sub_1ABAE6060(a1, a2, a3, a4, a5, a6, sub_1ABAE699C, CustomAppleMusicEventContext.enumerateSongEvents<>(whose:in:order:using:));
}

{
  return sub_1ABAE6060(a1, a2, a3, a4, a5, a6, sub_1ABAE699C, CustomAppleMusicEventContext.enumerateSongEvents<>(whose:in:order:using:));
}

{
  return sub_1ABAE6060(a1, a2, a3, a4, a5, a6, sub_1ABAE699C, CustomAppleMusicEventContext.enumerateSongEvents<>(whose:in:order:using:));
}

{
  return sub_1ABAE6060(a1, a2, a3, a4, a5, a6, sub_1ABAE699C, CustomAppleMusicEventContext.enumerateSongEvents<>(whose:in:order:using:));
}

uint64_t sub_1ABAE5E18(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a1;
  v13 = sub_1ABA805D8();
  v19 = v12;
  sub_1ABA8EEAC();
  v16 = sub_1ABAE6834(v14, v15, &protocol conformance descriptor for CustomGraphSongEvent);
  return a7(v13, &v19, a2, a3 & 1, a4, a5, v13, v16, a6);
}

uint64_t CustomAppleMusicEventContext.enumerateSongEvents<>(whose:in:order:using:)(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABAE5E18(a1, a2, a3, a4, a5, a6, sub_1ABC27008);
}

{
  return sub_1ABAE5E18(a1, a2, a3, a4, a5, a6, sub_1ABC27040);
}

{
  return sub_1ABAE5E18(a1, a2, a3, a4, a5, a6, sub_1ABC27078);
}

uint64_t sub_1ABAE6060(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, uint64_t, void, uint64_t, void *))
{
  v10 = *a1;
  v9[2] = a4;
  v9[3] = a5;
  return (a8)(&v10, a2, a3 & 1, a7, v9, a6);
}

uint64_t CustomAppleMusicEventContext.enumerateSongEvents<>(overlapping:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1ABAE6130(a1, a2, a3, a4, a5, sub_1ABC27234);
}

{
  return sub_1ABAE6130(a1, a2, a3, a4, a5, sub_1ABC27268);
}

uint64_t CustomAppleMusicEventContext.enumerateSongEvents<>(overlapping:order:block:)()
{
  sub_1ABA7D018();
  return CustomAppleMusicEventContext.enumerateSongEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomAppleMusicEventContext.enumerateSongEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomAppleMusicEventContext.enumerateSongEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomAppleMusicEventContext.enumerateSongEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomAppleMusicEventContext.enumerateSongEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

uint64_t sub_1ABAE6130(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_1ABA805D8();
  sub_1ABA8EEAC();
  v15 = sub_1ABAE6834(v13, v14, &protocol conformance descriptor for CustomGraphSongEvent);
  return a6(v12, a1, a2 & 1, a3, a4, v12, v15, a5);
}

uint64_t CustomAppleMusicEventContext.enumerateSongEvents<>(overlapping:order:using:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1ABAE6130(a1, a2, a3, a4, a5, sub_1ABC2729C);
}

{
  return sub_1ABAE6130(a1, a2, a3, a4, a5, sub_1ABC272D0);
}

{
  return sub_1ABAE6130(a1, a2, a3, a4, a5, sub_1ABC27304);
}

uint64_t sub_1ABAE6344(uint64_t a1, BOOL *a2, uint64_t (*a3)(char *))
{
  v7 = sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1ABAE68C8(a1, v12 - v8);
  swift_storeEnumTagMultiPayload();
  v10 = a3(v9);
  result = sub_1ABAE692C(v9);
  if (!v3)
  {
    *a2 = (v10 & 1) == 0;
  }

  return result;
}

uint64_t sub_1ABAE648C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = sub_1ABA805D8();
  sub_1ABA8EEAC();
  v5 = sub_1ABAE6834(v3, v4, &protocol conformance descriptor for CustomGraphSongEvent);
  return a1(v2, v2, v5);
}

uint64_t sub_1ABAE650C(uint64_t a1)
{
  type metadata accessor for InitializationResourcesManager();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1ABF239C4();
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 56) = v3;
  return v1;
}

uint64_t sub_1ABAE658C(uint64_t a1)
{
  type metadata accessor for InitializationResourcesManager();
  sub_1ABA7D028();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1ABF239C4();
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_1ABAE65FC(uint64_t a1)
{
  ObjectSynthesisDictionaryMapping.init()(&v4);
  *(v1 + 32) = v4;
  return sub_1ABAE658C(a1);
}

uint64_t sub_1ABAE66CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABAE6834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ABAE687C(uint64_t a1)
{
  ObjectSynthesisDictionaryMapping.init()(&v4);
  *(v1 + 64) = v4;

  return sub_1ABAE650C(a1);
}

uint64_t sub_1ABAE68C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomGraphSongEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABAE692C(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppleMusicEventEntry.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1ABAE6A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void AppleMusicEventEntry.entityClass.getter(uint64_t a1@<X8>, uint64_t x0_0@<X0>)
{
  EntityClass.init(intValue:)(*(v3 + 7), &v14);
  v6 = v15;
  if (v15)
  {
    v7 = v18;
    v9 = v16;
    v8 = v17;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
    *(a1 + 32) = v7;
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B40);
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24674();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1ABA78000, v11, v12, "AppleMusicEventEntry: entityClass: id.untyped.entityClass is nil.", v13, 2u);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);
    }

    static GraphObjectBase.entityClass.getter(*(x0_0 + 16), *(*(x0_0 + 24) + 8));
  }
}

void *AppleMusicEventEntry.cast<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v22 = a4;
  v8 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v8);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  v25 = *v4;
  type metadata accessor for TypedEntityIdentifier(0, *(a1 + 16), *(a1 + 24), v19);
  v23 = a3;
  v20 = v24;
  result = TypedEntityIdentifier.cast<A>(as:)(a2, a3, &v26);
  if (!v20)
  {
    v25 = v26;
    (*(v14 + 16))(v18, v4 + *(a1 + 36), v12);
    sub_1ABAE6A34(v4 + *(a1 + 40), v11);
    return sub_1ABAE6D70(&v25, v18, v11, a2, v23, v22);
  }

  return result;
}

uint64_t sub_1ABAE6D70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = *a1;
  v9 = type metadata accessor for AppleMusicEventEntry(0, a4, a5, a4);
  v10 = *(v9 + 36);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  (*(v11 + 32))(&a6[v10], a2);
  v12 = &a6[*(v9 + 40)];

  return sub_1ABAE84E0(a3, v12);
}

uint64_t sub_1ABAE6E18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABAE6F30(unsigned __int8 a1)
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAE6F78(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x7461447472617473;
  }

  return 0x65746144646E65;
}

uint64_t sub_1ABAE6FE8(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABAC9298(v3, *v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAE703C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABAE6E18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABAE7090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABAE6F28();
  *a1 = result;
  return result;
}

uint64_t sub_1ABAE70C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABAE7114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

BOOL static AppleMusicEventEntry.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  v15 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v15);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = sub_1ABAD219C(&qword_1EB4D1BE8, &qword_1ABF34248);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  v23 = *a1;
  v32 = *a2;
  v33 = v23;
  if (!static TypedEntityIdentifier.== infix(_:_:)(&v33, &v32))
  {
    return 0;
  }

  v25 = type metadata accessor for AppleMusicEventEntry(0, a3, a4, v24);
  if ((sub_1ABF21E54() & 1) == 0)
  {
    return 0;
  }

  v26 = *(v25 + 40);
  v27 = *(v19 + 48);
  sub_1ABAE6A34(a1 + v26, v22);
  sub_1ABAE6A34(a2 + v26, &v22[v27]);
  sub_1ABA83568(v22);
  if (v28)
  {
    sub_1ABA83568(&v22[v27]);
    if (v28)
    {
      sub_1ABAB480C(v22, &qword_1EB4D9BF0, &qword_1ABF34240);
      return 1;
    }

    goto LABEL_11;
  }

  sub_1ABAE6A34(v22, v18);
  sub_1ABA83568(&v22[v27]);
  if (v28)
  {
    (*(v10 + 8))(v18, v8);
LABEL_11:
    sub_1ABAB480C(v22, &qword_1EB4D1BE8, &qword_1ABF34248);
    return 0;
  }

  (*(v10 + 32))(v14, &v22[v27], v8);
  sub_1ABAE849C(&qword_1EB4CF750, MEMORY[0x1E6969550]);
  v30 = sub_1ABF23BB4();
  v31 = *(v10 + 8);
  v31(v14, v8);
  v31(v18, v8);
  sub_1ABAB480C(v22, &qword_1EB4D9BF0, &qword_1ABF34240);
  return (v30 & 1) != 0;
}

uint64_t AppleMusicEventEntry.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v17[1] = a2;
  v18 = v5;
  type metadata accessor for AppleMusicEventEntry.CodingKeys(255, v5, v6, a4);
  sub_1ABA7D054();
  swift_getWitnessTable();
  v7 = sub_1ABF24FC4();
  sub_1ABA7BB64();
  v9 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  sub_1ABA93E20(a1, a1[3]);
  v13 = v19;
  sub_1ABF252E4();
  v24 = *v13;
  v23 = 0;
  type metadata accessor for TypedEntityIdentifier(0, v18, v6, v14);
  swift_getWitnessTable();
  v15 = v20;
  sub_1ABF24F84();
  if (!v15)
  {
    v22 = 1;
    sub_1ABF21EB4();
    sub_1ABAE849C(&qword_1ED86B860, MEMORY[0x1E6969538]);
    sub_1ABA93198();
    sub_1ABF24F84();
    v21 = 2;
    sub_1ABA93198();
    sub_1ABF24F14();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t AppleMusicEventEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v7 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v7);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v45 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v42 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v44 = v13 - v12;
  type metadata accessor for AppleMusicEventEntry.CodingKeys(255, a2, a3, v14);
  sub_1ABA7D054();
  swift_getWitnessTable();
  v49 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v43 = v15;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v46 = a2;
  v47 = a3;
  v20 = type metadata accessor for AppleMusicEventEntry(0, a2, a3, v19);
  sub_1ABA7BB64();
  v22 = v21;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  sub_1ABA93E20(a1, a1[3]);
  v48 = v18;
  v26 = v50;
  sub_1ABF252C4();
  if (v26)
  {
    return sub_1ABA84B54(a1);
  }

  v39 = v22;
  v29 = v43;
  v28 = v44;
  v50 = a1;
  v30 = v45;
  type metadata accessor for TypedEntityIdentifier(0, v46, v47, v27);
  v53 = 0;
  swift_getWitnessTable();
  v31 = v48;
  sub_1ABF24E64();
  *v25 = v54;
  v52 = 1;
  sub_1ABAE849C(&qword_1ED870CD0, MEMORY[0x1E6969558]);
  sub_1ABF24E64();
  v32 = *(v20 + 36);
  v33 = *(v42 + 32);
  v46 = v20;
  v47 = v32;
  v33(&v25[v32], v28, v30);
  v51 = 2;
  v34 = v41;
  sub_1ABF24DF4();
  (*(v29 + 8))(v31, v49);
  v35 = v46;
  sub_1ABAE84E0(v34, &v25[*(v46 + 40)]);
  v36 = v39;
  (*(v39 + 16))(v40, v25, v35);
  sub_1ABA84B54(v50);
  return (*(v36 + 8))(v25, v35);
}

uint64_t sub_1ABAE7B44(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1ABAE7B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D69747472617473 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D6974646E65 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABAE7CB0(char a1)
{
  if (!a1)
  {
    return 0x7463656A627573;
  }

  if (a1 == 1)
  {
    return 0x6D69747472617473;
  }

  return 0x656D6974646E65;
}

uint64_t sub_1ABAE7D0C(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1D48, &qword_1ABF34610);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = *v1;
  v13 = v1[2];
  v12[1] = *(v1 + 24);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABAE8B20();
  sub_1ABF252E4();
  v17 = v10;
  v16 = 0;
  sub_1ABAE8BC8();
  sub_1ABF24F84();
  if (!v2)
  {
    v15 = 1;
    sub_1ABF24F54();
    v14 = 2;
    sub_1ABF24EF4();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1ABAE7ECC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x1AC5AA8D0](*v0);
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  MEMORY[0x1AC5AA8D0](*&v4);
  if (v3 == 1)
  {
    return sub_1ABF25254();
  }

  sub_1ABF25254();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1AC5AA8D0](v6);
}

uint64_t sub_1ABAE7F50()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](*&v1);
  v5 = 0.0;
  if (v2 != 0.0)
  {
    v5 = v2;
  }

  MEMORY[0x1AC5AA8D0](*&v5);
  if (v4 == 1)
  {
    sub_1ABF25254();
  }

  else
  {
    sub_1ABF25254();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1AC5AA8D0](v6);
  }

  return sub_1ABF25294();
}

uint64_t sub_1ABAE7FFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D1D38, &qword_1ABF34608);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABAE8B20();
  sub_1ABF252C4();
  if (!v2)
  {
    v18[7] = 0;
    sub_1ABAE8B74();
    sub_1ABF24E64();
    v11 = v19;
    v18[6] = 1;
    sub_1ABF24E34();
    v13 = v12;
    v18[5] = 2;
    v15 = sub_1ABF24DD4();
    v17 = v16;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17 & 1;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABAE81FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABAE7B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABAE8224@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABAE6F28();
  *a1 = result;
  return result;
}

uint64_t sub_1ABAE824C(uint64_t a1)
{
  v2 = sub_1ABAE8B20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABAE8288(uint64_t a1)
{
  v2 = sub_1ABAE8B20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABAE8308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAE89C4();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABAE83A0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 2);
  v5 = *(v1 + 24);
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](*&v2);
  v6 = 0.0;
  if (v3 != 0.0)
  {
    v6 = v3;
  }

  MEMORY[0x1AC5AA8D0](*&v6);
  if (v5 == 1)
  {
    sub_1ABF25254();
  }

  else
  {
    sub_1ABF25254();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1AC5AA8D0](v7);
  }

  return sub_1ABF25294();
}

uint64_t sub_1ABAE849C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1ABF21EB4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABAE84E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABAE8554()
{
  result = qword_1EB4D1BF0;
  if (!qword_1EB4D1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1BF0);
  }

  return result;
}

uint64_t sub_1ABAE85A8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABAE85E8()
{
  result = qword_1EB4D1BF8[0];
  if (!qword_1EB4D1BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4D1BF8);
  }

  return result;
}

uint64_t sub_1ABAE8644(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

void sub_1ABAE86CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TypedEntityIdentifier(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_1ABF21EB4();
    if (v5 <= 0x3F)
    {
      sub_1ABAE8794(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1ABAE8794(uint64_t a1)
{
  if (!qword_1EB4D1C80[0])
  {
    sub_1ABF21EB4();
    v1 = sub_1ABF247E4();
    if (!v2)
    {
      atomic_store(v1, qword_1EB4D1C80);
    }
  }
}

__n128 sub_1ABAE87EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1ABAE8800(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAE8820(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_1ABAE8880()
{
  result = qword_1EB4D1D08;
  if (!qword_1EB4D1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1D08);
  }

  return result;
}

unint64_t sub_1ABAE88D4(void *a1)
{
  a1[1] = sub_1ABAE891C();
  a1[2] = sub_1ABAE8970();
  a1[3] = sub_1ABAE89C4();
  a1[4] = sub_1ABAE8A18();
  result = sub_1ABAE8A6C();
  a1[5] = result;
  return result;
}

unint64_t sub_1ABAE891C()
{
  result = qword_1EB4D1D10;
  if (!qword_1EB4D1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1D10);
  }

  return result;
}

unint64_t sub_1ABAE8970()
{
  result = qword_1EB4D1D18;
  if (!qword_1EB4D1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1D18);
  }

  return result;
}

unint64_t sub_1ABAE89C4()
{
  result = qword_1EB4D1D20;
  if (!qword_1EB4D1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1D20);
  }

  return result;
}

unint64_t sub_1ABAE8A18()
{
  result = qword_1EB4D1D28;
  if (!qword_1EB4D1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1D28);
  }

  return result;
}

unint64_t sub_1ABAE8A6C()
{
  result = qword_1EB4D1D30;
  if (!qword_1EB4D1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1D30);
  }

  return result;
}

unint64_t sub_1ABAE8AC0(uint64_t a1)
{
  result = sub_1ABAE85E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABAE8B20()
{
  result = qword_1EB4D1D40;
  if (!qword_1EB4D1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1D40);
  }

  return result;
}

unint64_t sub_1ABAE8B74()
{
  result = qword_1EB4CFF20;
  if (!qword_1EB4CFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFF20);
  }

  return result;
}

unint64_t sub_1ABAE8BC8()
{
  result = qword_1EB4DB350;
  if (!qword_1EB4DB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB350);
  }

  return result;
}

uint64_t sub_1ABAE8C7C(uint64_t result, void (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_1ABF24164();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1ABAE8E6C(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_1ABAD219C(a2, a3);
      result = sub_1ABF24164();
      *(result + 16) = v3;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1ABAE8ED8(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      sub_1ABAD219C(a2, a3);
      v6 = sub_1ABF24164();
      *(v6 + 16) = v5;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1ABAD219C(a2, a3);
    sub_1ABA7AB80(v7);
    return v6;
  }

  return result;
}

_BYTE *sub_1ABAE8F80(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABAE9060()
{
  result = qword_1EB4D1D70;
  if (!qword_1EB4D1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1D70);
  }

  return result;
}

unint64_t sub_1ABAE90B8()
{
  result = qword_1EB4D1D78;
  if (!qword_1EB4D1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1D78);
  }

  return result;
}

unint64_t sub_1ABAE9110()
{
  result = qword_1EB4D1D80;
  if (!qword_1EB4D1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1D80);
  }

  return result;
}

uint64_t ViewService.appleMusicEventEntryView()(uint64_t a1)
{
  type metadata accessor for AppleMusicEventEntryView();
  v2 = swift_allocObject();
  AppleMusicEventEntryView.init(viewService:)(v1);
  return v2;
}

uint64_t AppleMusicEventEntryView.__allocating_init(viewService:)()
{
  sub_1ABA7E2D8();
  v0 = swift_allocObject();
  v1 = sub_1ABA950A4();
  AppleMusicEventEntryView.init(viewService:)(v1);
  return v0;
}

uint64_t AppleMusicEventEntryView.init(viewService:)(void *a1)
{
  sub_1ABAB5620();
  v4 = sub_1ABAE9398(0xD000000000000012, 0x80000001ABF86730, &qword_1EB4D1E10, &unk_1ABF34870);

  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v4;
  }

  return sub_1ABA905A4();
}

void *sub_1ABAE9398(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = *(v4 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v9 = sub_1ABF23BD4();
  v24[0] = 0;
  v10 = [v8 requestAssertionForViewName:v9 error:v24];

  v11 = v24[0];
  if (v10)
  {
    v23 = a4;
    v12 = *(v4 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v13 = v12[5];
    v14 = v12[6];
    sub_1ABA93E20(v12 + 2, v13);
    v15 = *(v14 + 8);
    v16 = v11;
    v17 = v15(v10, v13, v14);
    if (v5)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v21 = v17;
      v22 = v18;
      sub_1ABAD219C(a3, v23);
      result = swift_allocObject();
      result[2] = v10;
      result[3] = v21;
      result[4] = v22;
    }
  }

  else
  {
    v20 = v24[0];
    sub_1ABF21BE4();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1ABAE957C()
{
  v0 = sub_1ABAA1944();
  v1(v0);
  sub_1ABA96BC4();
  sub_1ABAB08B8(&v3, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t AppleMusicEventEntryView.songEventEntries(whose:in:order:)(unsigned __int8 *a1)
{
  sub_1ABA8BE54(a1);
  sub_1ABA90588();
  return sub_1ABAE9648();
}

{
  sub_1ABA8BE54(a1);
  sub_1ABA90588();
  return sub_1ABAE97F0();
}

{
  sub_1ABA8BE54(a1);
  sub_1ABA9798C();
  return sub_1ABAE99C4(v2, v3, v1 & 1, v4, sub_1ABAEC2F4);
}

{
  sub_1ABA8BE54(a1);
  sub_1ABA7AB8C();
  return sub_1ABAE99C4(v2, v3, v1 & 1, v4, sub_1ABAEC2F4);
}

{
  sub_1ABA8BE54(a1);
  sub_1ABA968F8();
  return sub_1ABAE99C4(v2, v3, v1 & 1, v4, sub_1ABAEC2F4);
}

uint64_t sub_1ABAE99C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), void (*a5)(void))
{
  sub_1ABAA1B70();
  v8 = v7;
  sub_1ABF21E14();
  v25[3] = sub_1ABF22D14();
  v25[4] = MEMORY[0x1E69A0050];
  v9 = sub_1ABA93DC0(v25);
  if (v8)
  {
    if (qword_1EB4CED40 != -1)
    {
      v9 = sub_1ABA7D06C(&qword_1EB4CED40);
    }

    v10 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      v9 = sub_1ABA8EEC4(&qword_1ED86CF78);
    }

    v10 = qword_1EB549598;
  }

  sub_1ABA7ED20(v9, v10);
  v11 = sub_1ABAA1258();
  v12(v11);
  v26[3] = sub_1ABA7ABA4();
  v26[4] = MEMORY[0x1E699FE60];
  v13 = sub_1ABA93DC0(v26);
  v21 = sub_1ABA95FD4(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v25[0]);
  a4(v21);
  sub_1ABA84B54(v24);
  sub_1ABA84B54(v25);
  sub_1ABA83588();
  a5();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t AppleMusicEventEntryView.songEventEntries(overlapping:order:)()
{
  sub_1ABA956D8();
  return sub_1ABAE9C98(v1, v0 & 1, v2, sub_1ABAEC2F4);
}

{
  sub_1ABA9740C();
  return sub_1ABAE9C98(v1, v0 & 1, v2, sub_1ABAEC2F4);
}

{
  sub_1ABAA2B5C();
  return sub_1ABAE9C98(v1, v0 & 1, v2, sub_1ABAEC2F4);
}

{
  sub_1ABAA2F6C();
  return sub_1ABAE9C98(v1, v0 & 1, v2, sub_1ABAEC2F4);
}

{
  sub_1ABAA33EC();
  return sub_1ABAE9C98(v1, v0 & 1, v2, sub_1ABAEC2F4);
}

uint64_t sub_1ABAE9C98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1ABAA1B70();
  v5(v7);
  sub_1ABA83588();
  a4();
  sub_1ABA96BC4();
  sub_1ABAB08B8(v7, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABAE9F4C()
{
  sub_1ABAA1944();
  sub_1ABAEEEC4(v1, v0 & 1, v2, v3, v4);
  return sub_1ABAB08B8(&v6, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t AppleMusicEventEntryView.enumerateSongEventEntries(whose:in:order:using:)(unsigned __int8 *a1)
{
  v1 = sub_1ABA8BE54(a1);
  return sub_1ABAEA000(v1, v3, v2 & 1, v4, v5);
}

{
  v1 = sub_1ABA8BE54(a1);
  return sub_1ABAEA3A8(v1);
}

{
  sub_1ABA8BE54(a1);
  sub_1ABAA4840();
  return sub_1ABAEA6E8(v2, v3, v1 & 1, v4, v5, v6, sub_1ABAEFFBC);
}

{
  sub_1ABA8BE54(a1);
  sub_1ABAA4C94();
  return sub_1ABAEA6E8(v2, v3, v1 & 1, v4, v5, v6, sub_1ABAEFFBC);
}

{
  sub_1ABA8BE54(a1);
  sub_1ABAA51B8();
  return sub_1ABAEA6E8(v2, v3, v1 & 1, v4, v5, v6, sub_1ABAEFFBC);
}

uint64_t sub_1ABAEA000(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  sub_1ABF21E14();
  v12 = v11;
  v13 = a2 + *(sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0) + 36);
  sub_1ABF21E14();
  if (v12 > v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v18[5] = v12;
  *&v18[6] = v14;
  v13 = sub_1ABF22D14();
  v18[3] = v13;
  v18[4] = MEMORY[0x1E69A0050];
  v5 = sub_1ABA93DC0(v18);
  if (v10)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v15 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB549598;
LABEL_8:
  v16 = sub_1ABA7AA24(v13, v15);
  (*(*(v13 - 8) + 16))(v5, v16, v13);
  v19[3] = sub_1ABF22424();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v19);
  sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABF24614();
  sub_1ABA84B54(v18);
  sub_1ABAEEEC4(v19, a3 & 1, a4, a5, sub_1ABAEFFBC);
  return sub_1ABAB08B8(v19, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABAEA6E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v12 = a1;
  sub_1ABF21E14();
  HIDWORD(v27) = a3;
  v30[3] = sub_1ABF22D14();
  v30[4] = MEMORY[0x1E69A0050];
  v13 = sub_1ABA93DC0(v30);
  v14 = v13;
  if (v12)
  {
    if (qword_1EB4CED40 != -1)
    {
      v13 = sub_1ABA7D06C(&qword_1EB4CED40);
    }

    v15 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      v13 = sub_1ABA8EEC4(&qword_1ED86CF78);
    }

    v15 = qword_1EB549598;
  }

  sub_1ABA7ED20(v13, v15);
  (*(v16 + 16))(v14);
  v31[3] = sub_1ABA7ABA4();
  v31[4] = MEMORY[0x1E699FE60];
  v17 = sub_1ABA93DC0(v31);
  v25 = sub_1ABA95FD4(v17, v18, v19, v20, v21, v22, v23, v24, v27, v29[0], v29[1], v29[2], v29[3], v29[4], v30[0]);
  a6(v25);
  sub_1ABA84B54(v29);
  sub_1ABA84B54(v30);
  sub_1ABAEEEC4(v31, v28 & 1, a4, a5, a7);
  return sub_1ABAB08B8(v31, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t AppleMusicEventEntryView.enumerateSongEventEntries(overlapping:order:using:)()
{
  sub_1ABAA5678();
  return sub_1ABAEA9EC(v1, v0 & 1, v2, v3, v4, sub_1ABAEFFBC);
}

{
  sub_1ABA931B0();
  return sub_1ABAEA9EC(v1, v0 & 1, v2, v3, v4, sub_1ABAEFFBC);
}

{
  sub_1ABA83ED4();
  return sub_1ABAEA9EC(v1, v0 & 1, v2, v3, v4, sub_1ABAEFFBC);
}

{
  sub_1ABA8E080();
  return sub_1ABAEA9EC(v1, v0 & 1, v2, v3, v4, sub_1ABAEFFBC);
}

{
  sub_1ABA9A278();
  return sub_1ABAEA9EC(v1, v0 & 1, v2, v3, v4, sub_1ABAEFFBC);
}

uint64_t sub_1ABAEA9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABAA1B70();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13(v15);
  sub_1ABAEEEC4(v15, v12 & 1, v10, v8, a6);
  return sub_1ABAB08B8(v15, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t AppleMusicEventEntryView.songEventIds(order:)()
{
  sub_1ABA7BC68();
  sub_1ABAEE884();
  if (!v0)
  {
    sub_1ABA805F0();
    sub_1ABAEF5D0(v1, v2, sub_1ABAD9364);
    sub_1ABA7E2D8();
  }

  return sub_1ABA950A4();
}

uint64_t AppleMusicEventEntryView.songEventIds(whose:in:order:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1ABAEAD88();
}

{
  return sub_1ABAEAD88();
}

uint64_t sub_1ABAEAD88()
{
  sub_1ABA7BC68();
  v1();
  if (!v0)
  {
    sub_1ABA805F0();
    sub_1ABAEF5D0(v2, v3, sub_1ABAD9364);
    sub_1ABA7E2D8();
  }

  return sub_1ABA950A4();
}

uint64_t AppleMusicEventEntryView.songEventIds(whose:in:order:)()
{
  sub_1ABAA5EB4();
  return sub_1ABAEAE4C();
}

{
  sub_1ABAB5BF8();
  return sub_1ABAEAE4C();
}

{
  sub_1ABAA1E54();
  return sub_1ABAEAE4C();
}

uint64_t sub_1ABAEAE4C()
{
  sub_1ABA7BC68();
  sub_1ABAEE4A4(v2, v3, v1 & 1, v4, v5);
  if (!v0)
  {
    sub_1ABA805F0();
    sub_1ABAEF5D0(v6, v7, sub_1ABAD9364);
    sub_1ABA7E2D8();
  }

  return sub_1ABA950A4();
}

uint64_t AppleMusicEventEntryView.songEventIds(overlapping:order:)()
{
  sub_1ABAB0FE8();
  return sub_1ABAEAF40();
}

{
  sub_1ABA8E5F4();
  return sub_1ABAEAF40();
}

{
  sub_1ABA826C0();
  return sub_1ABAEAF40();
}

{
  sub_1ABAA21C0();
  return sub_1ABAEAF40();
}

{
  sub_1ABAA24B4();
  return sub_1ABAEAF40();
}

uint64_t sub_1ABAEAF40()
{
  sub_1ABA7BC68();
  sub_1ABAEE6B8(v2, v1 & 1, v3, v4);
  if (!v0)
  {
    sub_1ABA805F0();
    sub_1ABAEF5D0(v5, v6, sub_1ABAD9364);
    sub_1ABA7E2D8();
  }

  return sub_1ABA950A4();
}

uint64_t AppleMusicEventEntryView.enumerateSongEventIds(whose:in:order:using:)(unsigned __int8 *a1)
{
  sub_1ABA8BE54(a1);
  return sub_1ABAEB1EC();
}

{
  sub_1ABA8BE54(a1);
  return sub_1ABAEB1EC();
}

{
  sub_1ABA8BE54(a1);
  return sub_1ABAEB464();
}

{
  sub_1ABA8BE54(a1);
  return sub_1ABAEB464();
}

{
  sub_1ABA8BE54(a1);
  return sub_1ABAEB464();
}

uint64_t sub_1ABAEB1EC()
{
  sub_1ABAB5620();
  v1 = sub_1ABA7FBFC(v0);
  return v2(v1);
}

uint64_t sub_1ABAEB464()
{
  sub_1ABAB5620();
  v1 = sub_1ABA7FBFC(v0);
  return sub_1ABAEA6E8(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t AppleMusicEventEntryView.enumerateSongEventIds(overlapping:order:using:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  return sub_1ABAEB850();
}

{
  return sub_1ABAEB850();
}

{
  return sub_1ABAEB850();
}

{
  return sub_1ABAEB850();
}

{
  return sub_1ABAEB850();
}

uint64_t sub_1ABAEB850()
{
  sub_1ABAB5620();
  v9[2] = v0;
  v9[3] = v1;
  v9[4] = v2;
  return sub_1ABAEA9EC(v4, v3 & 1, v5, v9, v6, v7);
}

uint64_t AppleMusicEventEntryView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAEB984@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1DE8, &unk_1ABF34848);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ABF34740;
  v11 = sub_1ABF22174();
  v12 = MEMORY[0x1E699FDA8];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  sub_1ABA93DC0((v10 + 32));
  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v13 = sub_1ABF22D14();
  sub_1ABA7AA24(v13, qword_1EB549598);
  if (a1)
  {
    sub_1ABF22974();
  }

  else
  {
    sub_1ABF22964();
  }

  sub_1ABAE8970();
  sub_1ABF221B4();

  sub_1ABAEFF5C(a2, &v15, &qword_1EB4D1D88);
  if (!v16)
  {
    return sub_1ABAB08B8(&v15, &qword_1EB4D1D88, &unk_1ABF347C0);
  }

  sub_1ABA946C0(&v15, v17);
  sub_1ABAB47C4(&qword_1EB4D1DF0, &qword_1EB4D1DE8, &unk_1ABF34848, MEMORY[0x1E699FF70]);
  sub_1ABF225A4();
  sub_1ABA84B54(v17);
  (*(v7 + 8))(a3, v6);
  return (*(v7 + 32))(a3, v9, v6);
}

uint64_t sub_1ABAEBC14@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1DC0, &unk_1ABF34820);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ABF34740;
  v11 = sub_1ABF22174();
  v12 = MEMORY[0x1E699FDA8];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  sub_1ABA93DC0((v10 + 32));
  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v13 = sub_1ABF22D14();
  sub_1ABA7AA24(v13, qword_1EB549598);
  if (a1)
  {
    sub_1ABF22974();
  }

  else
  {
    sub_1ABF22964();
  }

  sub_1ABAEFD08();
  sub_1ABF221B4();

  sub_1ABAEFF5C(a2, &v15, &qword_1EB4D1D88);
  if (!v16)
  {
    return sub_1ABAB08B8(&v15, &qword_1EB4D1D88, &unk_1ABF347C0);
  }

  sub_1ABA946C0(&v15, v17);
  sub_1ABAB47C4(&qword_1EB4D1DC8, &qword_1EB4D1DC0, &unk_1ABF34820, MEMORY[0x1E699FF70]);
  sub_1ABF225A4();
  sub_1ABA84B54(v17);
  (*(v7 + 8))(a3, v6);
  return (*(v7 + 32))(a3, v9, v6);
}

uint64_t sub_1ABAEBEA4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1D90, &unk_1ABF347D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ABF34740;
  v11 = sub_1ABF22174();
  v12 = MEMORY[0x1E699FDA8];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  sub_1ABA93DC0((v10 + 32));
  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v13 = sub_1ABF22D14();
  sub_1ABA7AA24(v13, qword_1EB549598);
  if (a1)
  {
    sub_1ABF22974();
  }

  else
  {
    sub_1ABF22964();
  }

  sub_1ABAEFA70();
  sub_1ABF221B4();

  sub_1ABAEFF5C(a2, &v15, &qword_1EB4D1D88);
  if (!v16)
  {
    return sub_1ABAB08B8(&v15, &qword_1EB4D1D88, &unk_1ABF347C0);
  }

  sub_1ABA946C0(&v15, v17);
  sub_1ABAB47C4(&qword_1EB4CF710, &qword_1EB4D1D90, &unk_1ABF347D0, MEMORY[0x1E699FF70]);
  sub_1ABF225A4();
  sub_1ABA84B54(v17);
  (*(v7 + 8))(a3, v6);
  return (*(v7 + 32))(a3, v9, v6);
}

uint64_t sub_1ABAEC134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  v7 = a1;
  v8 = sub_1ABAF00D4(a1, a2, a3);
  v10 = sub_1ABAD219C(v8, v9);
  sub_1ABA7BB64();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  (a5)(v7 & 1, a2, v14);
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1ABF34740;
  if (qword_1EB4CED30 != -1)
  {
    swift_once();
  }

  v18 = sub_1ABF22D14();
  sub_1ABA7AA24(v18, qword_1EB549868);
  v19 = MEMORY[0x1E69A0038];
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  sub_1ABA93DC0((v17 + 32));
  sub_1ABA7D08C();
  (*(v20 + 16))();
  sub_1ABF22904();

  return (*(v12 + 8))(v16, v10);
}

uint64_t sub_1ABAEC2F4(uint64_t a1, int a2)
{
  v29 = a1;
  LODWORD(v28) = a2;
  v27 = *v2;
  v3 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = v2[4];
  swift_getObjectType();
  v31 = v28 & 1;
  v32 = v29;
  v33 = v27;
  sub_1ABAD219C(&qword_1EB4D1E08, &qword_1ABF34868);
  v14 = v30;
  sub_1ABF22454();
  if (!v14)
  {
    v30 = v7;
    v15 = *(v35 + 16);
    v28 = v35;
    if (v15)
    {
      v29 = v6;
      v16 = (v35 + 56);
      v13 = MEMORY[0x1E69E7CC0];
      do
      {
        v17 = *(v16 - 3);
        if (*v16)
        {
          v18 = 1;
        }

        else
        {
          sub_1ABF21E04();
          v18 = 0;
        }

        v19 = sub_1ABF21EB4();
        sub_1ABA7B9B4(v5, v18, 1, v19);
        sub_1ABC6C238(v17, &v34);
        v20 = v34;
        v21 = v29;
        sub_1ABF21E04();
        sub_1ABAF0010(v5, v9 + *(v21 + 40), &qword_1EB4D9BF0);
        *v9 = v20;
        sub_1ABAF0010(v9, v12, &qword_1EB4D1A80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAD9340(0, *(v13 + 16) + 1, 1, v13);
          v13 = v24;
        }

        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1ABAD9340(v22 > 1, v23 + 1, 1, v13);
          v13 = v25;
        }

        *(v13 + 16) = v23 + 1;
        sub_1ABAF0010(v12, v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, &qword_1EB4D1A80);
        v16 += 32;
        --v15;
      }

      while (v15);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }
  }

  return v13;
}

uint64_t sub_1ABAEC698(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = *v2;
  v5 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  swift_getObjectType();
  v24 = a2 & 1;
  v25 = v21;
  v26 = v4;
  sub_1ABAD219C(&qword_1EB4D1DD8, &qword_1ABF34838);
  v11 = v22;
  sub_1ABF22454();
  if (!v11)
  {
    v12 = *(v28 + 16);
    v22 = v28;
    if (v12)
    {
      v13 = v28 + 48;
      a2 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1ABC4A730();
        v14 = v27;
        sub_1ABF21E04();
        sub_1ABF21E04();
        *v7 = v14;
        sub_1ABAF0010(v7, v10, &qword_1EB4D18F8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADABC8();
          a2 = v17;
        }

        v15 = *(a2 + 16);
        v16 = v23;
        if (v15 >= *(a2 + 24) >> 1)
        {
          sub_1ABADABC8();
          v16 = v23;
          a2 = v18;
        }

        *(a2 + 16) = v15 + 1;
        sub_1ABAF0010(v10, a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v15, &qword_1EB4D18F8);
        v13 += 24;
        --v12;
      }

      while (v12);
    }

    else
    {
      a2 = MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t sub_1ABAEC980(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = *v2;
  v5 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  swift_getObjectType();
  v24 = a2 & 1;
  v25 = v21;
  v26 = v4;
  sub_1ABAD219C(&qword_1EB4D1DA8, &qword_1ABF34808);
  v11 = v22;
  sub_1ABF22454();
  if (!v11)
  {
    v12 = *(v28 + 16);
    v22 = v28;
    if (v12)
    {
      v13 = v28 + 48;
      a2 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1ABC4A730();
        v14 = v27;
        sub_1ABF21E04();
        sub_1ABF21E04();
        *v7 = v14;
        sub_1ABAF0010(v7, v10, &qword_1EB4D1388);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADC518();
          a2 = v17;
        }

        v15 = *(a2 + 16);
        v16 = v23;
        if (v15 >= *(a2 + 24) >> 1)
        {
          sub_1ABADC518();
          v16 = v23;
          a2 = v18;
        }

        *(a2 + 16) = v15 + 1;
        sub_1ABAF0010(v10, a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v15, &qword_1EB4D1388);
        v13 += 24;
        --v12;
      }

      while (v12);
    }

    else
    {
      a2 = MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t sub_1ABAECC68(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1ABAD219C(&qword_1EB4D1DE8, &unk_1ABF34848);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  sub_1ABAEB984(a2 & 1, a3, v11 - v7);
  sub_1ABAB47C4(&qword_1EB4D1E00, &qword_1EB4D1DE8, &unk_1ABF34848, MEMORY[0x1E699FF60]);
  sub_1ABAE891C();
  v9 = sub_1ABF22234();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1ABAECDC4(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1ABAD219C(&qword_1EB4D1DC0, &unk_1ABF34820);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  sub_1ABAEBC14(a2 & 1, a3, v11 - v7);
  sub_1ABAB47C4(&qword_1EB4CF708, &qword_1EB4D1DC0, &unk_1ABF34820, MEMORY[0x1E699FF60]);
  sub_1ABAEFDE0();
  v9 = sub_1ABF22234();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1ABAECF20(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1ABAD219C(&qword_1EB4D1D90, &unk_1ABF347D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  sub_1ABAEBEA4(a2 & 1, a3, v11 - v7);
  sub_1ABAB47C4(&qword_1EB4CF718, &qword_1EB4D1D90, &unk_1ABF347D0, MEMORY[0x1E699FF60]);
  sub_1ABAEFBB0();
  v9 = sub_1ABF22234();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1ABAED07C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *), uint64_t a5)
{
  v42 = a5;
  v43 = a4;
  v39 = a3;
  v40 = a1;
  v6 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v38 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  MEMORY[0x1EEE9AC00](v38);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = sub_1ABAD219C(&qword_1EB4D1DE8, &unk_1ABF34848);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  sub_1ABAEB984(a2 & 1, v39, &v38 - v16);
  sub_1ABAB47C4(&qword_1EB4D1E00, &qword_1EB4D1DE8, &unk_1ABF34848, MEMORY[0x1E699FF60]);
  sub_1ABAE891C();
  v18 = v41;
  v19 = sub_1ABF22224();
  result = (*(v15 + 8))(v17, v14);
  if (!v18)
  {
    v40 = v19;
    v41 = v13;
    v28 = v38;
    while (1)
    {
      sub_1ABE7EB54(result, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, SBYTE1(v41));
      if (v46)
      {
        break;
      }

      v29 = v28;
      v30 = v44;
      if (v45)
      {
        v31 = 1;
      }

      else
      {
        sub_1ABF21E04();
        v31 = 0;
      }

      v32 = sub_1ABF21EB4();
      sub_1ABA7B9B4(v8, v31, 1, v32);
      sub_1ABC6C238(v30, &v44);
      v33 = v44;
      v28 = v29;
      sub_1ABF21E04();
      v34 = v8;
      sub_1ABAF0010(v8, v10 + *(v29 + 40), &qword_1EB4D9BF0);
      *v10 = v33;
      v35 = v10;
      v36 = v10;
      v37 = v41;
      sub_1ABAF0010(v36, v41, &qword_1EB4D1A80);
      LOBYTE(v44) = 0;
      v43(v37, &v44);
      result = sub_1ABAB08B8(v37, &qword_1EB4D1A80, &qword_1ABF33C10);
      if (v44)
      {
        break;
      }

      v10 = v35;
      v8 = v34;
    }
  }

  return result;
}

void sub_1ABAED424(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, unint64_t *), uint64_t a5)
{
  v63 = a4;
  v64 = a5;
  v62 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  MEMORY[0x1EEE9AC00](v62);
  v61 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v53 - v10;
  v11 = sub_1ABAD219C(&qword_1EB4D1DC0, &unk_1ABF34820);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  sub_1ABAEBC14(a2 & 1, a3, &v53 - v13);
  sub_1ABAB47C4(&qword_1EB4CF708, &qword_1EB4D1DC0, &unk_1ABF34820, MEMORY[0x1E699FF60]);
  sub_1ABAEFDE0();
  v15 = sub_1ABF22224();
  v16 = (*(v12 + 8))(v14, v11);
  if (v5)
  {
    return;
  }

  v59 = 181;
  v58 = 1844;
  v57 = 3396;
  v55 = xmmword_1ABF34750;
  v56 = v15;
  while (1)
  {
    sub_1ABE7EED0(v16, v17, v18, v19, v20, v21, v22, v23, v53, v54, v55, SBYTE8(v55));
    if (v70)
    {
LABEL_22:

      return;
    }

    v24 = v67;
    EntityClass.init(intValue:)(HIBYTE(v67), &v67);
    if (!v68)
    {
      sub_1ABAEFC04();
      v49 = swift_allocError();
      *v50 = v55;
      v50[1] = 0u;
      v50[2] = 0u;
      v50[3] = 0u;
      *(v50 + 57) = 0u;
      goto LABEL_20;
    }

    if (v59 < 55)
    {
      break;
    }

    if (!_Records_GDEntityClass_records)
    {
      goto LABEL_27;
    }

    if (*(_Records_GDEntityClass_records + 0x518) >= v58)
    {
      goto LABEL_25;
    }

    if (*(_Records_GDEntityClass_records + 0x520) >= v57)
    {
      goto LABEL_26;
    }

    v77 = v68;
    v65 = v24;
    if (!_Records_GDEntityClass_classIds[0])
    {
      goto LABEL_29;
    }

    v66 = v67;
    v26 = v69;
    v25 = v70;
    v27 = v71;
    v28 = *(_Records_GDEntityClass_records + 0x510);
    v29 = sub_1ABF23DD4();
    if (!_Records_GDEntityClass_labels)
    {
      goto LABEL_28;
    }

    v31 = v29;
    v32 = v30;
    v33 = sub_1ABF23DD4();
    v72 = v31;
    v73 = v32;
    v74 = v33;
    v75 = v34;
    v76 = v28;
    v35 = v33 == v26 && v25 == v34;
    if (v35 || (v36 = v33, v37 = v34, (sub_1ABF25054() & 1) != 0) || (v67 = v66, v68 = v77, v69 = v26, v70 = v25, LOBYTE(v71) = v27, HIDWORD(v54) = v27, EntityClass.ancestorClassesSet.getter(), sub_1ABAA6788(&v72, v38, v39, v40, v41, v42, v43, v44, v53, v54, v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73), LODWORD(v54) = v45, v46 = BYTE4(v54), , (v54 & 1) != 0))
    {
      sub_1ABA88934(&v72);
      sub_1ABAA8FA8(v66, v77, v26, v25);
      v47 = v61;
      sub_1ABF21E04();
      sub_1ABF21E04();
      *v47 = v65;
      v48 = v60;
      sub_1ABAF0010(v47, v60, &qword_1EB4D18F8);
      LOBYTE(v67) = 0;
      v63(v48, &v67);
      v16 = sub_1ABAB08B8(v48, &qword_1EB4D18F8, &qword_1ABF33A88);
      if (v67)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1ABAEFC04();
      v49 = swift_allocError();
      *v51 = v31;
      *(v51 + 8) = v32;
      *(v51 + 16) = v36;
      *(v51 + 24) = v37;
      *(v51 + 32) = v28;
      v52 = v77;
      *(v51 + 40) = v66;
      *(v51 + 48) = v52;
      *(v51 + 56) = v26;
      *(v51 + 64) = v25;
      *(v51 + 72) = v46;
LABEL_20:
      swift_willThrow();
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1ABAED938(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, unint64_t *), uint64_t a5)
{
  v63 = a4;
  v64 = a5;
  v62 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  MEMORY[0x1EEE9AC00](v62);
  v61 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v53 - v10;
  v11 = sub_1ABAD219C(&qword_1EB4D1D90, &unk_1ABF347D0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  sub_1ABAEBEA4(a2 & 1, a3, &v53 - v13);
  sub_1ABAB47C4(&qword_1EB4CF718, &qword_1EB4D1D90, &unk_1ABF347D0, MEMORY[0x1E699FF60]);
  sub_1ABAEFBB0();
  v15 = sub_1ABF22224();
  v16 = (*(v12 + 8))(v14, v11);
  if (v5)
  {
    return;
  }

  v59 = 181;
  v58 = 1844;
  v57 = 3396;
  v55 = xmmword_1ABF34750;
  v56 = v15;
  while (1)
  {
    sub_1ABE7F1E8(v16, v17, v18, v19, v20, v21, v22, v23, v53, v54, v55, SBYTE8(v55));
    if (v70)
    {
LABEL_22:

      return;
    }

    v24 = v67;
    EntityClass.init(intValue:)(HIBYTE(v67), &v67);
    if (!v68)
    {
      sub_1ABAEFC04();
      v49 = swift_allocError();
      *v50 = v55;
      v50[1] = 0u;
      v50[2] = 0u;
      v50[3] = 0u;
      *(v50 + 57) = 0u;
      goto LABEL_20;
    }

    if (v59 < 55)
    {
      break;
    }

    if (!_Records_GDEntityClass_records)
    {
      goto LABEL_27;
    }

    if (*(_Records_GDEntityClass_records + 0x518) >= v58)
    {
      goto LABEL_25;
    }

    if (*(_Records_GDEntityClass_records + 0x520) >= v57)
    {
      goto LABEL_26;
    }

    v77 = v68;
    v65 = v24;
    if (!_Records_GDEntityClass_classIds[0])
    {
      goto LABEL_29;
    }

    v66 = v67;
    v26 = v69;
    v25 = v70;
    v27 = v71;
    v28 = *(_Records_GDEntityClass_records + 0x510);
    v29 = sub_1ABF23DD4();
    if (!_Records_GDEntityClass_labels)
    {
      goto LABEL_28;
    }

    v31 = v29;
    v32 = v30;
    v33 = sub_1ABF23DD4();
    v72 = v31;
    v73 = v32;
    v74 = v33;
    v75 = v34;
    v76 = v28;
    v35 = v33 == v26 && v25 == v34;
    if (v35 || (v36 = v33, v37 = v34, (sub_1ABF25054() & 1) != 0) || (v67 = v66, v68 = v77, v69 = v26, v70 = v25, LOBYTE(v71) = v27, HIDWORD(v54) = v27, EntityClass.ancestorClassesSet.getter(), sub_1ABAA6788(&v72, v38, v39, v40, v41, v42, v43, v44, v53, v54, v55, *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73), LODWORD(v54) = v45, v46 = BYTE4(v54), , (v54 & 1) != 0))
    {
      sub_1ABA88934(&v72);
      sub_1ABAA8FA8(v66, v77, v26, v25);
      v47 = v61;
      sub_1ABF21E04();
      sub_1ABF21E04();
      *v47 = v65;
      v48 = v60;
      sub_1ABAF0010(v47, v60, &qword_1EB4D1388);
      LOBYTE(v67) = 0;
      v63(v48, &v67);
      v16 = sub_1ABAB08B8(v48, &qword_1EB4D1388, &qword_1ABF33510);
      if (v67)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1ABAEFC04();
      v49 = swift_allocError();
      *v51 = v31;
      *(v51 + 8) = v32;
      *(v51 + 16) = v36;
      *(v51 + 24) = v37;
      *(v51 + 32) = v28;
      v52 = v77;
      *(v51 + 40) = v66;
      *(v51 + 48) = v52;
      *(v51 + 56) = v26;
      *(v51 + 64) = v25;
      *(v51 + 72) = v46;
LABEL_20:
      swift_willThrow();
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1ABAEDE4C()
{
  sub_1ABA951EC();
  v2 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  v3 = sub_1ABAA16C4(v2);
  result = sub_1ABAABC4C(v3, sub_1ABAEFF20, v4, sub_1ABAEFFBC, v5, v6, v7, v8, v10);
  if (v1)
  {
    return sub_1ABAB08B8(v0, &qword_1EB4D1DF8, &unk_1ABF34858);
  }

  return result;
}

uint64_t sub_1ABAEDEE4()
{
  sub_1ABA951EC();
  v2 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  v3 = sub_1ABAA16C4(v2);
  result = sub_1ABAABC4C(v3, sub_1ABAEFD78, v4, sub_1ABAEFDB4, v5, v6, v7, v8, v10);
  if (v1)
  {
    return sub_1ABAB08B8(v0, &qword_1EB4D1DD0, &qword_1ABF34830);
  }

  return result;
}

uint64_t sub_1ABAEDF7C()
{
  sub_1ABA951EC();
  v2 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  v3 = sub_1ABAA16C4(v2);
  result = sub_1ABAABC4C(v3, sub_1ABAEFC74, v4, sub_1ABAEFB84, v5, v6, v7, v8, v10);
  if (v1)
  {
    return sub_1ABAB08B8(v0, &qword_1EB4D1DB8, &qword_1ABF34818);
  }

  return result;
}

uint64_t sub_1ABAEE014(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v12 = sub_1ABAF00D4(a1, a2, a3);
  sub_1ABAB08B8(v12, v13, v14);
  sub_1ABAEFF5C(a1, a3, a6);
  v15 = sub_1ABAD219C(a6, a7);
  result = sub_1ABA7B9B4(a3, 0, 1, v15);
  *a2 = 1;
  return result;
}

void *sub_1ABAEE224(uint64_t a1, char a2, uint64_t a3)
{
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  result = sub_1ABF22454();
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1ABAEE4A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  sub_1ABAA1B70();
  v8 = v7;
  sub_1ABF21E14();
  v27[3] = sub_1ABF22D14();
  v27[4] = MEMORY[0x1E69A0050];
  v9 = sub_1ABA93DC0(v27);
  if (v8)
  {
    if (qword_1EB4CED40 != -1)
    {
      v9 = sub_1ABA7D06C(&qword_1EB4CED40);
    }

    v10 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      v9 = sub_1ABA8EEC4(&qword_1ED86CF78);
    }

    v10 = qword_1EB549598;
  }

  sub_1ABA7ED20(v9, v10);
  v11 = sub_1ABAA1258();
  v12(v11);
  v28[3] = sub_1ABA7ABA4();
  v28[4] = MEMORY[0x1E699FE60];
  v13 = sub_1ABA93DC0(v28);
  v21 = sub_1ABA95FD4(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v27[0]);
  a4(v21);
  sub_1ABA84B54(v26);
  sub_1ABA84B54(v27);
  sub_1ABA83588();
  sub_1ABAEE224(v22, v23, a5);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v28, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABAEE6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABAA1B70();
  v5(v9);
  sub_1ABA83588();
  sub_1ABAEE224(v6, v7, a4);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v9, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABAEE884()
{
  sub_1ABAA1944();
  sub_1ABAEE224(v1, v0 & 1, v2);
  sub_1ABA96BC4();
  sub_1ABAB08B8(&v4, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABAEE934(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, uint64_t))
{
  v22[1] = a1;
  v12 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  sub_1ABA7BB64();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  sub_1ABAEC134(a2 & 1, a3, a5, a6, a7);
  sub_1ABA7D098();
  sub_1ABAB47C4(v18, &unk_1EB4D59C0, &unk_1ABF70750, v19);
  sub_1ABAA98EC();
  v20 = sub_1ABF22274();
  (*(v14 + 8))(v17, v12);
  return v20;
}

uint64_t sub_1ABAEEA94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  sub_1ABF21E14();
  v12 = v11;
  v13 = a2 + *(sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0) + 36);
  sub_1ABF21E14();
  if (v12 > v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v18[5] = v12;
  *&v18[6] = v14;
  v13 = sub_1ABF22D14();
  v18[3] = v13;
  v18[4] = MEMORY[0x1E69A0050];
  v5 = sub_1ABA93DC0(v18);
  if (v10)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v15 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB549598;
LABEL_8:
  v16 = sub_1ABA7AA24(v13, v15);
  (*(*(v13 - 8) + 16))(v5, v16, v13);
  v19[3] = sub_1ABF22424();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v19);
  sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABF24614();
  sub_1ABA84B54(v18);
  sub_1ABAEEEC4(v19, a3 & 1, a4, a5, sub_1ABAEFE6C);
  return sub_1ABAB08B8(v19, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABAEECAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  sub_1ABF21E14();
  v12 = v11;
  v13 = a2 + *(sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0) + 36);
  sub_1ABF21E14();
  if (v12 > v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v18[5] = v12;
  *&v18[6] = v14;
  v13 = sub_1ABF22D14();
  v18[3] = v13;
  v18[4] = MEMORY[0x1E69A0050];
  v5 = sub_1ABA93DC0(v18);
  if (v10)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v15 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB549598;
LABEL_8:
  v16 = sub_1ABA7AA24(v13, v15);
  (*(*(v13 - 8) + 16))(v5, v16, v13);
  v19[3] = sub_1ABF22424();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v19);
  sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABF24614();
  sub_1ABA84B54(v18);
  sub_1ABAEEEC4(v19, a3 & 1, a4, a5, sub_1ABAEFA34);
  return sub_1ABAB08B8(v19, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABAEEF8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  sub_1ABF21E14();
  v12 = v11;
  v13 = a2 + *(sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0) + 36);
  sub_1ABF21E14();
  if (v12 > v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v18[5] = v12;
  *&v18[6] = v14;
  v13 = sub_1ABF22D14();
  v18[3] = v13;
  v18[4] = MEMORY[0x1E69A0050];
  v5 = sub_1ABA93DC0(v18);
  if (v10)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v15 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB549598;
LABEL_8:
  v16 = sub_1ABA7AA24(v13, v15);
  (*(*(v13 - 8) + 16))(v5, v16, v13);
  v19[3] = sub_1ABF22424();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v19);
  sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABF23BA4();
  sub_1ABA84B54(v18);
  sub_1ABAEEEC4(v19, a3 & 1, a4, a5, sub_1ABAEFE6C);
  return sub_1ABAB08B8(v19, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABAEF1A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  sub_1ABF21E14();
  v12 = v11;
  v13 = a2 + *(sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0) + 36);
  sub_1ABF21E14();
  if (v12 > v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v18[5] = v12;
  *&v18[6] = v14;
  v13 = sub_1ABF22D14();
  v18[3] = v13;
  v18[4] = MEMORY[0x1E69A0050];
  v5 = sub_1ABA93DC0(v18);
  if (v10)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v15 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB549598;
LABEL_8:
  v16 = sub_1ABA7AA24(v13, v15);
  (*(*(v13 - 8) + 16))(v5, v16, v13);
  v19[3] = sub_1ABF22424();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v19);
  sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABF23BA4();
  sub_1ABA84B54(v18);
  sub_1ABAEEEC4(v19, a3 & 1, a4, a5, sub_1ABAEFA34);
  return sub_1ABAB08B8(v19, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABAEF3BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, uint64_t))
{
  v24[2] = a1;
  v24[0] = a4;
  v24[1] = a5;
  v13 = sub_1ABAD219C(&unk_1EB4D59C0, &unk_1ABF70750);
  sub_1ABA7BB64();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  sub_1ABAEC134(a2 & 1, a3, a7, a8, a9);
  sub_1ABA7D098();
  sub_1ABAB47C4(v19, &unk_1EB4D59C0, &unk_1ABF70750, v20);
  sub_1ABAA98EC();
  v21 = v24[3];
  sub_1ABF22264();
  result = (*(v15 + 8))(v18, v13);
  if (!v21)
  {
    v23 = v24[0];
    do
    {
      sub_1ABE7EC84();
      if (v26)
      {
        break;
      }

      v27 = 0;
      v23(&v25, &v27);
    }

    while ((v27 & 1) == 0);
  }

  return result;
}

uint64_t sub_1ABAEF5D0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a1 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = *v6++;
    a2(&v13, v8);
    v9 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = a3(0, *(v7 + 16) + 1, 1, v7);
    }

    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    if (v11 >= v10 >> 1)
    {
      v7 = a3(v10 > 1, v11 + 1, 1, v7);
    }

    *(v7 + 16) = v11 + 1;
    *(v7 + 8 * v11 + 32) = v9;
    --v3;
  }

  while (v3);
  return v7;
}

void sub_1ABAEF6E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, uint64_t))
{
  a6(&v9, a1);
  if (v6)
  {
  }

  else
  {
    a3(&v9, a2);
  }
}

uint64_t sub_1ABAEF83C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1ABAE9F4C();
  if (!v1)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  return result;
}

void sub_1ABAEF89C(uint64_t a1, _BYTE *a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  a4(&v7, a1);
  if (v4)
  {
  }

  else
  {
    *a3 = v7;
    *(a3 + 8) = 0;
    *a2 = 1;
  }
}

uint64_t sub_1ABAEF8FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1ABAECC68(a1, a2 & 1, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1ABAEF92C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1ABAEE934(a1, a2 & 1, a3, a4, &qword_1EB4D1DE8, &unk_1ABF34848, sub_1ABAEB984);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1ABAEF9B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1ABAECDC4(a1, a2 & 1, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1ABAEF9E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1ABAEE934(a1, a2 & 1, a3, a4, &qword_1EB4D1DC0, &unk_1ABF34820, sub_1ABAEBC14);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_1ABAEFA70()
{
  result = qword_1EB4CF108;
  if (!qword_1EB4CF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF108);
  }

  return result;
}

uint64_t sub_1ABAEFAC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1ABAEE934(a1, a2 & 1, a3, a4, &qword_1EB4D1D90, &unk_1ABF347D0, sub_1ABAEBEA4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1ABAEFB18@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1ABAECF20(a1, a2 & 1, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_1ABAEFBB0()
{
  result = qword_1EB4CF100;
  if (!qword_1EB4CF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF100);
  }

  return result;
}

unint64_t sub_1ABAEFC04()
{
  result = qword_1EB4CFA88;
  if (!qword_1EB4CFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA88);
  }

  return result;
}

unint64_t sub_1ABAEFD08()
{
  result = qword_1EB4CEDC8;
  if (!qword_1EB4CEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDC8);
  }

  return result;
}

unint64_t sub_1ABAEFDE0()
{
  result = qword_1EB4CEDC0;
  if (!qword_1EB4CEDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEDC0);
  }

  return result;
}

uint64_t sub_1ABAEFF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABAF00D4(a1, a2, a3);
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D08C();
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1ABAF0010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABAF00D4(a1, a2, a3);
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D08C();
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t ViewService.appleMusicEventView()(uint64_t a1)
{
  type metadata accessor for AppleMusicEventView();
  sub_1ABA7D028();
  v2 = swift_allocObject();
  AppleMusicEventView.init(viewService:)(v1);
  return v2;
}

uint64_t AppleMusicEventView.__allocating_init(viewService:)(void *a1)
{
  sub_1ABA7D028();
  v2 = swift_allocObject();
  AppleMusicEventView.init(viewService:)(a1);
  return v2;
}

uint64_t *AppleMusicEventView.init(viewService:)(void *a1)
{
  v3 = v1;
  type metadata accessor for AppleMusicEventEntryView();
  sub_1ABA7D028();
  swift_allocObject();
  v5 = AppleMusicEventEntryView.init(viewService:)(a1);
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v6 = v5;
    sub_1ABAD219C(&qword_1EB4D1E18, &qword_1ABF34880);
    sub_1ABA7D028();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v3 + 16) = v7;
  }

  return v3;
}

uint64_t AppleMusicEventView.songEvents<A>(from:order:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1ABA805D8();
  sub_1ABA8EEE4();
  v11 = sub_1ABAF0C8C(v9, v10, &protocol conformance descriptor for CustomGraphSongEvent);
  return sub_1ABC2D7B8(v8, a1, a2 & 1, v8, a3, v11, a4);
}

uint64_t AppleMusicEventView.songEvents<A>(whose:in:from:order:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABAF03A4(a1, a2, a3, a4, a5, a6, sub_1ABC2D880);
}

{
  return sub_1ABAF03A4(a1, a2, a3, a4, a5, a6, sub_1ABC2D8B8);
}

uint64_t sub_1ABAF03A4(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, char *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a1;
  v13 = sub_1ABA805D8();
  v19 = v12;
  sub_1ABA8EEE4();
  v16 = sub_1ABAF0C8C(v14, v15, &protocol conformance descriptor for CustomGraphSongEvent);
  return a7(v13, &v19, a2, a3, a4 & 1, v13, a5, v16, a6);
}

uint64_t AppleMusicEventView.songEvents<A>(whose:in:from:order:)(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABAF03A4(a1, a2, a3, a4, a5, a6, sub_1ABC2D8F0);
}

{
  return sub_1ABAF03A4(a1, a2, a3, a4, a5, a6, sub_1ABC2D928);
}

{
  return sub_1ABAF03A4(a1, a2, a3, a4, a5, a6, sub_1ABC2D960);
}

uint64_t AppleMusicEventView.songEvents<A>(overlapping:from:order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1ABAF0548(a1, a2, a3, a4, a5, sub_1ABC2DA70);
}

{
  return sub_1ABAF0548(a1, a2, a3, a4, a5, sub_1ABC2DAA4);
}

uint64_t sub_1ABAF0548(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = sub_1ABA805D8();
  sub_1ABA8EEE4();
  v14 = sub_1ABAF0C8C(v12, v13, &protocol conformance descriptor for CustomGraphSongEvent);
  return a6(v11, a1, a2, a3 & 1, v11, a4, v14, a5);
}

uint64_t AppleMusicEventView.songEvents<A>(overlapping:from:order:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return sub_1ABAF0548(a1, a2, a3, a4, a5, sub_1ABC2DAD8);
}

{
  return sub_1ABAF0548(a1, a2, a3, a4, a5, sub_1ABC2DB0C);
}

{
  return sub_1ABAF0548(a1, a2, a3, a4, a5, sub_1ABC2DB40);
}

uint64_t AppleMusicEventView.enumerateSongEvents<A>(from:order:using:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = sub_1ABA805D8();
  sub_1ABA8EEE4();
  v17 = sub_1ABAF0C8C(v15, v16, &protocol conformance descriptor for CustomGraphSongEvent);
  return sub_1ABC2DC44(v14, a1, a2 & 1, a3, a4, v14, a5, v17, a6, a7);
}

uint64_t AppleMusicEventView.enumerateSongEvents<A>(whose:in:from:order:using:)(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_1ABAF07B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DD20);
}

{
  return sub_1ABAF07B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DD54);
}

{
  return sub_1ABAF07B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DD88);
}

{
  return sub_1ABAF07B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DDBC);
}

{
  return sub_1ABAF07B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DDF0);
}

uint64_t sub_1ABAF07B0(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, char *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = *a1;
  v16 = sub_1ABA805D8();
  v23 = v15;
  sub_1ABA8EEE4();
  v19 = sub_1ABAF0C8C(v17, v18, &protocol conformance descriptor for CustomGraphSongEvent);
  return a10(v16, &v23, a2, a3, a4 & 1, a5, a6, v16, a7, v19, a8, a9);
}

uint64_t AppleMusicEventView.enumerateSongEvents<A>(overlapping:from:order:using:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_1ABAF0990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DF10);
}

{
  return sub_1ABAF0990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DF44);
}

{
  return sub_1ABAF0990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DF78);
}

{
  return sub_1ABAF0990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DFAC);
}

{
  return sub_1ABAF0990(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DFE0);
}

uint64_t sub_1ABAF0990(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = sub_1ABA805D8();
  sub_1ABA8EEE4();
  v19 = sub_1ABAF0C8C(v17, v18, &protocol conformance descriptor for CustomGraphSongEvent);
  return a9(v16, a1, a2, a3 & 1, a4, a5, v16, a6, v19, a7, a8);
}

uint64_t sub_1ABAF0B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1ABA805D8();
  sub_1ABA8EEE4();
  v11 = sub_1ABAF0C8C(v9, v10, &protocol conformance descriptor for CustomGraphSongEvent);
  return a4(v8, a1, v8, a2, v11, a3);
}

uint64_t AppleMusicEventView.__deallocating_deinit()
{

  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAF0C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ABAF0D14(uint64_t a1)
{
  v1 = *(a1 + 16);
  Param = type metadata accessor for KnosisQueryParam();

  v130 = Param;
  v3 = sub_1ABF239C4();
  v4 = 0;
  v5 = v1 + 56;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 56);
  v131 = (v6 + 63) >> 6;
  v132 = v1;
  v128 = xmmword_1ABF34740;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v133 = v3;
      while (1)
      {
        if (!v8)
        {
          while (1)
          {
            v9 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v9 >= v131)
            {

              return v3;
            }

            v8 = *(v5 + 8 * v9);
            ++v4;
            if (v8)
            {
              v4 = v9;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_10:
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v11 = (*(v132 + 48) + ((v4 << 11) | (32 * v10)));
        v13 = *v11;
        v12 = v11[1];
        v14 = v11[2];
        v15 = v11[3];
        v136[0] = *v11;
        v136[1] = v12;
        v136[3] = 95;
        v136[4] = 0xE100000000000000;
        sub_1ABAE28EC();

        v16 = v136;
        v17 = sub_1ABF24884();
        if (v17[2] < 2uLL)
        {
          break;
        }

        if (!v17[2])
        {
          goto LABEL_41;
        }

        v3 = v133;
        if (!*(v133 + 16) || (v18 = v17[4], v19 = v17[5], , sub_1ABA94FC8(v18, v19, v20, v21, v22, v23, v24, v25, v118, v123, v128, *(&v128 + 1), v129, v130, v131, v132, v133, v136[0]), v16 = v26, , (v16 & 1) == 0))
        {
          v45 = v17[4];
          v46 = v17[5];

          sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
          v47 = swift_allocObject();
          sub_1ABA7D0B0(v47, v48, v49, v50, v51, v52, v53, v54, v55, v118, v123, v56);
          v57 = v45;
          swift_allocObject();
          v124 = sub_1ABE75D28(v16);
          swift_isUniquelyReferenced_nonNull_native();
          v64 = sub_1ABA94FC8(v45, v46, v58, v59, v60, v61, v62, v63, v119, v124, v128, *(&v128 + 1), v129, v130, v131, v132, v133, v3);
          if (!__OFADD__(*(v3 + 16), (v65 & 1) == 0))
          {
            v66 = v64;
            v67 = v65;
            v68 = sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
            if (sub_1ABA8060C(v68))
            {
              v75 = sub_1ABA94FC8(v45, v46, v69, v70, v71, v72, v73, v74, v120, v125, v128, *(&v128 + 1), v129, v130, v131, v132, v134, v136[0]);
              if ((v67 & 1) != (v76 & 1))
              {
                goto LABEL_46;
              }

              v66 = v75;
            }

            v77 = v136[0];
            if (v67)
            {
              sub_1ABA7ED48(*(v136[0] + 56), v120, v125);

              v3 = v77;
              goto LABEL_4;
            }

            sub_1ABA8EEFC(v136[0] + 8 * (v66 >> 6));
            v108 = (v77[6] + 16 * v66);
            *v108 = v57;
            v108[1] = v46;
            sub_1ABA7ED48(v77[7], v120, v125);
            v109 = v77[2];
            v110 = __OFADD__(v109, 1);
            v111 = v109 + 1;
            if (!v110)
            {
              v3 = v77;
              v77[2] = v111;
              goto LABEL_4;
            }

            goto LABEL_44;
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v27 = v17[4];
        v28 = v17[5];

        if (*(v3 + 16))
        {
          v35 = sub_1ABA94FC8(v27, v28, v29, v30, v31, v32, v33, v34, v118, v123, v128, *(&v128 + 1), v129, v130, v131, v132, v133, v136[0]);
          v37 = v36;

          if (v37)
          {
            v38 = *(*(v3 + 56) + 8 * v35);
            swift_beginAccess();
            v39 = *(v38 + 16);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v38 + 16) = v39;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1ABAAA4F4();
              v39 = v43;
              *(v38 + 16) = v43;
            }

            v41 = *(v39 + 16);
            if (v41 >= *(v39 + 24) >> 1)
            {
              sub_1ABAAA4F4();
              v39 = v44;
            }

            *(v39 + 16) = v41 + 1;
            v42 = v39 + 16 * v41;
            *(v42 + 32) = v14;
            *(v42 + 40) = v15;
            *(v38 + 16) = v39;
            swift_endAccess();

            v3 = v133;
          }

          else
          {
          }
        }

        else
        {
        }
      }

      sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
      v78 = swift_allocObject();
      sub_1ABA7D0B0(v78, v79, v80, v81, v82, v83, v84, v85, v86, v118, v123, v87);
      swift_allocObject();
      v126 = sub_1ABE75D28(v136);
      v88 = v133;
      swift_isUniquelyReferenced_nonNull_native();
      v95 = sub_1ABA94FC8(v13, v12, v89, v90, v91, v92, v93, v94, v121, v126, v128, *(&v128 + 1), v129, v130, v131, v132, v133, v133);
      if (__OFADD__(*(v88 + 16), (v96 & 1) == 0))
      {
        goto LABEL_43;
      }

      v97 = v95;
      v98 = v96;
      v99 = sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
      if (sub_1ABA8060C(v99))
      {
        v106 = sub_1ABA94FC8(v13, v12, v100, v101, v102, v103, v104, v105, v122, v127, v128, *(&v128 + 1), v129, v130, v131, v132, v135, v136[0]);
        if ((v98 & 1) != (v107 & 1))
        {
          goto LABEL_46;
        }

        v97 = v106;
      }

      if (v98)
      {

        v3 = v136[0];
        sub_1ABA7ED48(*(v136[0] + 56), v122, v127);

        continue;
      }

      break;
    }

    sub_1ABA8EEFC(v136[0] + 8 * (v97 >> 6));
    v113 = (*(v112 + 48) + 16 * v97);
    *v113 = v13;
    v113[1] = v12;
    sub_1ABA7ED48(*(v112 + 56), v122, v127);
    v115 = *(v114 + 16);
    v110 = __OFADD__(v115, 1);
    v116 = v115 + 1;
    if (!v110)
    {
      v3 = v114;
      *(v114 + 16) = v116;
      continue;
    }

    break;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABAF12A8(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return 0;
}

uint64_t sub_1ABAF12D4(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v88 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  if (*(a2 + 32))
  {

    v4 = sub_1ABB454DC(v5);
  }

  v79 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v6 = *(v4 + 16);
    v86 = (v4 + 32);
    v87 = v6;
    sub_1ABAF1EB0(&v86);
    v7 = *(v4 + 16);
    v83 = v4;
    if (v7 >= 2)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = sub_1ABE713BC();
    v27 = isUniquelyReferenced_nonNull_native;
    v28 = 0;
    v29 = *(isUniquelyReferenced_nonNull_native + 16);
    v30 = isUniquelyReferenced_nonNull_native + 40;
    v80 = isUniquelyReferenced_nonNull_native + 40;
    v82 = MEMORY[0x1E69E7CC0];
LABEL_15:
    for (i = (v30 + 16 * v28); ; i += 2)
    {
      if (v29 == v28)
      {

        sub_1ABD7E104(v82);
        goto LABEL_71;
      }

      if (v28 >= *(v27 + 16))
      {
        break;
      }

      v32 = *(i - 1);
      a2 = *i;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v86 = v32;
          v87 = a2 & 0xFFFFFFFFFFFFFFLL;

          if (v32 < 0x21u && ((0x100003E01uLL >> v32) & 1) != 0)
          {
            goto LABEL_28;
          }

LABEL_26:
          v34 = _swift_stdlib_strtod_clocale();
          if (!v34)
          {
            goto LABEL_28;
          }

          v35 = *v34 == 0;
LABEL_29:
          v85 = v35;
          goto LABEL_30;
        }

        if ((v32 & 0x1000000000000000) != 0)
        {
          v33 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v33 >= 0x21 || ((0x100003E01uLL >> v33) & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_28:
          v35 = 0;
          goto LABEL_29;
        }
      }

      sub_1ABA7ED54();
      sub_1ABF24A74();
LABEL_30:

      if (v85)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABA8062C(isUniquelyReferenced_nonNull_native, v36, v37, v82);
          v82 = isUniquelyReferenced_nonNull_native;
        }

        v38 = *(v82 + 16);
        a2 = v38 + 1;
        if (v38 >= *(v82 + 24) >> 1)
        {
          sub_1ABAD91B4();
          v82 = isUniquelyReferenced_nonNull_native;
        }

        ++v28;
        v30 = v80;
        *(v82 + 16) = a2;
        *(v82 + 8 * v38 + 32) = 0;
        goto LABEL_15;
      }

      ++v28;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    sub_1ABD8EE6C();
    v4 = v77;
  }

  v8 = v4 + 40;
  v9 = -v7;
  v10 = -1;
  while (1)
  {
    v11 = *(v4 + 16);
    if (v9 + v10 == -1)
    {
      break;
    }

    if (++v10 >= v11)
    {
      goto LABEL_78;
    }

    v12 = v8 + 16;

    v13 = sub_1ABE713BC();

    v14 = *(v13 + 16);

    v8 = v12;
    v4 = v83;
    if (v14 >= 2)
    {

      if (qword_1ED86E458 != -1)
      {
        sub_1ABA7D0C4();
        swift_once();
      }

      v15 = sub_1ABF237F4();
      sub_1ABA7AA24(v15, qword_1ED86E460);

      v16 = sub_1ABF237D4();
      v17 = sub_1ABF24664();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v18 = 136315394;
        v19 = (*(*v79 + 224))();
        v21 = sub_1ABADD6D8(v19, v20, &v86);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2080;
        v22 = sub_1ABE71478();
        v24 = sub_1ABADD6D8(v22, v23, &v86);

        *(v18 + 14) = v24;
        _os_log_impl(&dword_1ABA78000, v16, v17, "multiple array arguments are provided to %s: %s.", v18, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      sub_1ABAF2860();
      swift_allocError();
      *v25 = 0xD00000000000003DLL;
      *(v25 + 8) = 0x80000001ABF86850;
      *(v25 + 16) = 4;
      swift_willThrow();
      return a2;
    }
  }

  if (v11)
  {
    v39 = v83 + 40;
    v81 = MEMORY[0x1E69E7CC0];
    while (1)
    {

      v40 = sub_1ABE713BC();

      v42 = *(v40 + 16);
      if (v42)
      {
        break;
      }

LABEL_67:
      v39 += 16;
      if (!--v11)
      {
        goto LABEL_70;
      }
    }

    v43 = (v40 + 16 + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    MEMORY[0x1EEE9AC00](v41);
    if ((v44 & 0x1000000000000000) != 0)
    {
      goto LABEL_69;
    }

    if ((v44 & 0x2000000000000000) != 0)
    {
      v86 = v45;
      v87 = v44 & 0xFFFFFFFFFFFFFFLL;

      if (v45 < 0x21u && ((0x100003E01uLL >> v45) & 1) != 0)
      {
        goto LABEL_53;
      }

LABEL_51:
      v47 = _swift_stdlib_strtod_clocale();
      if (!v47)
      {
        goto LABEL_53;
      }

      v48 = *v47 == 0;
LABEL_54:
      v85 = v48;
    }

    else
    {
      if ((v45 & 0x1000000000000000) != 0)
      {
        v46 = *((v44 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        if (v46 >= 0x21 || ((0x100003E01uLL >> v46) & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_53:
        v48 = 0;
        goto LABEL_54;
      }

LABEL_69:

      sub_1ABA7ED54();
      sub_1ABF24A74();
    }

    if (v85)
    {

      v49 = swift_isUniquelyReferenced_nonNull_native();
      if ((v49 & 1) == 0)
      {
        sub_1ABA8062C(v49, v50, v51, v81);
        v81 = v61;
      }

      v52 = *(v81 + 16);
      if (v52 >= *(v81 + 24) >> 1)
      {
        sub_1ABAD91B4();
        v81 = v62;
      }

      *(v81 + 16) = v52 + 1;
      *(v81 + 8 * v52 + 32) = 0;
      v88 = v81;
    }

    else
    {
      if (qword_1ED86E458 != -1)
      {
        sub_1ABA7D0C4();
        swift_once();
      }

      v53 = sub_1ABF237F4();
      sub_1ABA7AA24(v53, qword_1ED86E460);

      v54 = sub_1ABF237D4();
      v55 = sub_1ABF24664();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v86 = v57;
        *v56 = 136315138;
        v58 = *v43;
        v59 = v43[1];

        v60 = sub_1ABADD6D8(v58, v59, &v86);

        *(v56 + 4) = v60;
        _os_log_impl(&dword_1ABA78000, v54, v55, "can't convert %s to Double during usage of arithmetic operator", v56, 0xCu);
        sub_1ABA84B54(v57);
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      else
      {
      }
    }

    goto LABEL_67;
  }

LABEL_70:

LABEL_71:
  type metadata accessor for ResultGraph();
  v63 = swift_allocObject();
  v64 = MEMORY[0x1E69E7CC0];
  *(v63 + 16) = sub_1ABF239C4();
  *(v63 + 24) = v64;
  if (*(v88 + 16))
  {
    (*(*v79 + 240))(v88);

    v65 = sub_1ABF24314();
    v67 = v66;
    v68 = sub_1ABF24314();
    v70 = v69;
    v84 = v65;
    v86 = v65;
    v87 = v67;

    MEMORY[0x1AC5A9410](126, 0xE100000000000000);

    MEMORY[0x1AC5A9410](126, 0xE100000000000000);

    MEMORY[0x1AC5A9410](v68, v70);

    v71 = v86;
    v72 = v87;
    sub_1ABAD8758();
    a2 = v73;
    v74 = *(v73 + 16);
    if (v74 >= *(v73 + 24) >> 1)
    {
      sub_1ABAD8758();
      a2 = v78;
    }

    *(a2 + 16) = v74 + 1;
    v75 = (a2 + 88 * v74);
    v75[4] = v71;
    v75[5] = v72;
    v75[6] = 0;
    v75[7] = v84;
    v75[8] = v67;
    v75[9] = 0;
    v75[10] = 0;
    v75[11] = 0xE000000000000000;
    v75[12] = v68;
    v75[13] = v70;
    v75[14] = MEMORY[0x1E69E7CC0];
    LOBYTE(v86) = 0;
    sub_1ABE489A8(a2, &v86);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return a2;
}

uint64_t sub_1ABAF1D84()
{
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = (*(*v0 + 224))();
  v3 = v2;
  v4 = (*(*v0 + 232))();
  v6 = v5;
  memcpy(v8, (v0 + 16), sizeof(v8));
  *(v0 + 16) = v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = &unk_1F208E488;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 1;
  *(v0 + 64) = v4;
  *(v0 + 72) = v6;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v8);

  return v0;
}

uint64_t sub_1ABAF1EB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABAF206C(v7, v8, a1, v4);
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
    return sub_1ABAF1FA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABAF1FA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1ABF25054();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABAF206C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1ABF25054();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1ABF25054()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1ABF25054() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1ABAF26A0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1ABAF2574(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_1ABAF2574(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABAF26A0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABAF26A0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1ABAC9278(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1ABAC9278(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1ABF25054() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

unint64_t sub_1ABAF2860()
{
  result = qword_1EB4D1E28;
  if (!qword_1EB4D1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D1E28);
  }

  return result;
}

uint64_t sub_1ABAF28CC()
{
  if (qword_1ED870B58 != -1)
  {
    sub_1ABA8EF40(&qword_1ED870B58);
  }

  v0 = off_1ED870B60;
  os_unfair_lock_lock(off_1ED870B60 + 6);
  v1 = *(*(v0 + 2) + 16);

  os_unfair_lock_unlock(v0 + 6);
  v1(&byte_1ED870B78);
}

uint64_t static AssetRegistry.createCreateBackend.getter()
{
  if (qword_1ED870B58 != -1)
  {
    sub_1ABA8EF40(&qword_1ED870B58);
  }

  v0 = off_1ED870B60;
  os_unfair_lock_lock(off_1ED870B60 + 6);
  v1 = *(*(v0 + 2) + 16);

  os_unfair_lock_unlock(v0 + 6);
  return v1;
}

uint64_t static AssetRegistry.createBackend.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED870B70 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED870B80;
  v2 = unk_1ED870B88;
  v4 = byte_1ED870B90;
  v5 = qword_1ED870B98;
  v6 = unk_1ED870BA0;
  *a1 = byte_1ED870B78;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t sub_1ABAF2A60()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAF2A98()
{
  _s20_CreateCreateBackendCMa();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1ABAF2B10;
  *(v0 + 24) = 0;
  sub_1ABAD219C(&qword_1EB4D1E30, &unk_1ABF349D0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1ED870B60 = result;
  return result;
}

void sub_1ABAF2B10(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = sub_1ABAF7588;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = sub_1ABAF7624;
  *(a1 + 40) = 0;
}

uint64_t sub_1ABAF2B48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return static AssetRegistry.createCreateBackend.setter(v1, v2);
}

uint64_t static AssetRegistry.createCreateBackend.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1ED870B58 != -1)
  {
    a1 = sub_1ABA8EF40(&qword_1ED870B58);
  }

  v2 = off_1ED870B60;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v2 + 6);
  sub_1ABAF2C60(v2 + 2);
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t sub_1ABAF2C20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
}

uint64_t (*static AssetRegistry.createCreateBackend.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (qword_1ED870B58 != -1)
  {
    sub_1ABA8EF40(&qword_1ED870B58);
  }

  v3 = off_1ED870B60;
  os_unfair_lock_lock(off_1ED870B60 + 6);
  v4 = *(v3 + 2);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  os_unfair_lock_unlock(v3 + 6);
  *a1 = v6;
  a1[1] = v5;
  return sub_1ABAF2D10;
}

uint64_t sub_1ABAF2D10(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return static AssetRegistry.createCreateBackend.setter(*a1, v2);
  }

  static AssetRegistry.createCreateBackend.setter(v3, v2);
}

void *AssetRegistry.CreateBackend.init<A, B>(createRemoteBackend:createRemoteWritableBackend:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(a7 + 16))(&v22 + 1, a5, a7);
  v16 = BYTE1(v22);
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a1;
  v17[7] = a2;
  (*(*(a8 + 8) + 16))(&v22, a6);
  v18 = v22;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a7;
  result[5] = a8;
  result[6] = a3;
  result[7] = a4;
  *a9 = v16;
  *(a9 + 8) = sub_1ABAF2FA0;
  *(a9 + 16) = v17;
  *(a9 + 24) = v18;
  *(a9 + 32) = sub_1ABAF30AC;
  *(a9 + 40) = result;
  return result;
}

uint64_t sub_1ABAF2EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v12(v9);
  if (!v4)
  {
    a4[3] = a2;
    a4[4] = a3;
    v14 = sub_1ABA93DC0(a4);
    return (*(v8 + 32))(v14, v11, a2);
  }

  return result;
}

uint64_t sub_1ABAF2FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v12(v9);
  if (!v4)
  {
    a4[3] = a2;
    a4[4] = a3;
    v14 = sub_1ABA93DC0(a4);
    return (*(v8 + 32))(v14, v11, a2);
  }

  return result;
}

_BYTE *AssetRegistry.CreateBackend.init(remoteBackendType:createRemoteBackend:remoteWritableBackendType:createRemoteWritableBackend:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a4;
  *a7 = *result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = v7;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

__n128 sub_1ABAF3110(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1ABAF3124(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABAF3164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABAF31C0()
{
  type metadata accessor for TrialAssetManager();
  v1 = 0;
  return TrialAssetManager.__allocating_init(refreshPolicy:)(&v1);
}

uint64_t sub_1ABAF3210()
{
  if (v0[5])
  {
    v1 = v0[5];
  }

  else
  {
    v2 = v0[3];
    v4 = v0[2];

    v1 = v2(&v4);

    v0[5] = v1;
  }

  return v1;
}

void *sub_1ABAF329C()
{

  return v0;
}

uint64_t sub_1ABAF32CC()
{
  sub_1ABAF329C();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAF32FC(uint64_t *a1)
{
  type metadata accessor for TrialAssetManager();
  v3 = *a1;

  return TrialAssetManager.__allocating_init(refreshPolicy:)(&v3);
}

uint64_t AssetRegistry.TrialAssetManagerPolicy.PersistentInfo.init(refreshPolicy:createTrialAssetManager:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  *a4 = *a1;
  type metadata accessor for AssetRegistry.TrialAssetManagerPolicy.PersistentInfo.PersistentContent();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = 0;
  sub_1ABAD219C(&qword_1EB4D1E38, &qword_1ABF349E0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v8;
  a4[1] = v9;
}

uint64_t AssetRegistry.TrialAssetManagerPolicy.PersistentInfo.trialAssetManager.getter()
{
  v1 = *(v0 + 8);
  os_unfair_lock_lock(v1 + 6);
  v2 = sub_1ABAF3210();
  os_unfair_lock_unlock(v1 + 6);
  return v2;
}

uint64_t AssetRegistry.trialAssetManagerPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 72);
  *(a1 + 16) = v4;
  return sub_1ABAF3440(v2, v3, v4);
}

uint64_t sub_1ABAF3440(uint64_t result, uint64_t a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return v3;
    }
  }
}

uint64_t (*sub_1ABAF34A4())(uint64_t)
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  if (*(v0 + 72))
  {
    if (*(v0 + 72) != 1)
    {

      return v1;
    }

    os_unfair_lock_lock(v2 + 6);
    v3 = sub_1ABAF3210();
    os_unfair_lock_unlock(v2 + 6);
    v4 = v1;
    v5 = v2;
    v6 = 1;
  }

  else
  {

    v3 = v1(v7);
    v4 = v1;
    v5 = v2;
    v6 = 0;
  }

  sub_1ABAFC7DC(v4, v5, v6);
  return v3;
}

uint64_t AssetRegistry.__allocating_init(parameters:trialAssetManagerPolicy:)(__int16 *a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 16);
  v9 = *a1;
  if (qword_1ED870B70 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v7 = v3;
  v8 = v4;
  return sub_1ABAF35F8(&v9, qword_1ED870B80, unk_1ED870B88, &v7, v2);
}

uint64_t sub_1ABAF35F8(__int16 *a1, void (*a2)(__int128 *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v9 = *a4;
  v8 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v7 < 0)
  {
    LOBYTE(v22[0]) = v7 & 1;
    v24 = BYTE1(v7) & 1;
    a2(&v25, v22, &v24);
    if (!v5)
    {
      v15 = v26;
      v16 = v27;
      v17 = sub_1ABA93E20(&v25, v26);
      v22[0] = v9;
      v22[1] = v8;
      v23 = v10;
      v18 = MEMORY[0x1EEE9AC00](v17);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20, v18);
      a5 = sub_1ABA94614(v20, v22, a5, v15, v16[1]);
      sub_1ABA84B54(&v25);
      return a5;
    }

    goto LABEL_5;
  }

  v11 = type metadata accessor for AssetRegistryLocalBackendBasic();
  sub_1ABF217F4();
  swift_allocObject();
  v12 = sub_1ABF217E4();
  v13 = sub_1ABB0B8BC(v12, v12);
  if (v5)
  {
LABEL_5:
    sub_1ABAFC7DC(v9, v8, v10);
    return a5;
  }

  v26 = v11;
  v27 = &off_1F207D3C8;
  *&v25 = v13;
  a5 = swift_allocObject();
  sub_1ABA946C0(&v25, a5 + 16);
  *(a5 + 56) = v9;
  *(a5 + 64) = v8;
  *(a5 + 72) = v10;
  return a5;
}

void AssetRegistry.assetEntry(for:in:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0[5];
  v10 = v0[6];
  sub_1ABA93E20(v0 + 2, v9);
  (*(v10 + 8))(v8, v6, v4, v2, v9, v10);
  sub_1ABA7BC90();
}

uint64_t AssetRegistry.asset(for:in:)()
{
  sub_1ABA7BBF8();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = type metadata accessor for TrialAssetManager.Asset(0);
  v1[12] = v7;
  sub_1ABA7AB80(v7);
  v1[13] = sub_1ABA96BDC();
  v1[14] = swift_task_alloc();
  v8 = sub_1ABF21C24();
  v1[15] = v8;
  sub_1ABA7BBD0(v8);
  v1[16] = v9;
  v1[17] = sub_1ABA7E314();
  v10 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7AB80(v10);
  v1[18] = sub_1ABA7E314();
  v11 = sub_1ABF21CF4();
  v1[19] = v11;
  sub_1ABA7BBD0(v11);
  v1[20] = v12;
  v1[21] = sub_1ABA7E314();
  v13 = type metadata accessor for AssetRegistryAsset(0);
  v1[22] = v13;
  sub_1ABA7AB80(v13);
  v1[23] = sub_1ABA7E314();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABAF39F0()
{
  sub_1ABA93E20((*(v0 + 88) + 16), *(*(v0 + 88) + 40));
  sub_1ABA96BD0();
  v1();
  *(v0 + 192) = v44;
  *(v0 + 200) = v45;
  v4 = v47 | (v48 << 16);
  *(v0 + 258) = v48;
  *(v0 + 256) = v47;
  *(v0 + 208) = v46;
  *(v0 + 216) = v49;
  *(v0 + 224) = v50;
  if ((v47 & 0x80) == 0)
  {
    if (v47)
    {
      sub_1ABAA3414();
      sub_1ABAF7FD8();
      AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.localURL.getter();
      v5 = sub_1ABA8FE0C();
      sub_1ABAF7FB8(v5, v6, v7, v8);
    }

    else
    {
      *(v0 + 16) = v44;
      *(v0 + 24) = v45;
      *(v0 + 32) = 47;
      *(v0 + 40) = 0xE100000000000000;
      v9 = sub_1ABA8FE0C();
      sub_1ABAF8040(v9, v10, v11, v12);
      sub_1ABAAA4A0();
      sub_1ABAAA44C();
      if ((sub_1ABF23B44() & 1) == 0)
      {
        sub_1ABAF8054();
        sub_1ABA7D104();
        swift_allocError();
        *v34 = 0;
        swift_willThrow();
        v35 = sub_1ABA8FE0C();
        sub_1ABAF7FB8(v35, v36, v37, v38);

        v39 = sub_1ABA8FE0C();
        sub_1ABAF7FB8(v39, v40, v41, v42);

        sub_1ABA7BBE0();
LABEL_2:
        sub_1ABAA0280();

        __asm { BRAA            X1, X16 }
      }

      v13 = *(v0 + 128);
      v14 = *(v0 + 136);
      v43 = *(v0 + 120);
      sub_1ABA7ED8C();
      sub_1ABA7B9B4(v15, v16, v17, v18);
      (*(v13 + 104))(v14, *MEMORY[0x1E6968F70], v43);
      sub_1ABF21CD4();
    }

    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    v21 = *(v0 + 48);
    (*(*(v0 + 160) + 32))(v19, *(v0 + 168), *(v0 + 152));
    v22 = v19 + *(v20 + 20);
    *v22 = v44;
    *(v22 + 8) = v45;
    *(v22 + 16) = v46;
    *(v22 + 26) = BYTE2(v4);
    *(v22 + 24) = v47;
    *(v22 + 32) = v49;
    *(v22 + 40) = v50;
    sub_1ABA83598((v19 + *(v20 + 24)));
    sub_1ABAF7FE4(v19, v21, v23);
    sub_1ABA88588();
    sub_1ABA7B9B4(*(v0 + 48), 0, 1, v24);

    sub_1ABA7BBE0();
    goto LABEL_2;
  }

  *(v0 + 232) = sub_1ABAF34A4();
  *(v0 + 262) = v44;
  *(v0 + 263) = v47 & 1;
  *(v0 + 260) = v4 >> 8;

  v25 = swift_task_alloc();
  *(v0 + 240) = v25;
  *v25 = v0;
  v25[1] = sub_1ABAF3DE8;
  sub_1ABAA3414();
  sub_1ABAA0280();

  return TrialAssetManager.asset(for:in:assetType:downloadOptions:)(v26, v27, v28, v29, v30, v31);
}

uint64_t sub_1ABAF3DE8()
{
  sub_1ABA7BC10();
  v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v3 + 248) = v0;

  if (v0)
  {
    sub_1ABAF7FB8(*(v3 + 192), *(v3 + 200), *(v3 + 208), *(v3 + 256));
  }

  else
  {
    sub_1ABA8B0B0();
    sub_1ABA8B0B0();
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABAF3F28()
{
  v18 = *(v0 + 224);
  v17 = *(v0 + 256);
  v1 = *(v0 + 258);
  v2 = *(v0 + 208);
  v16 = *(v0 + 216);
  v15 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 96);
  v9 = *(v0 + 48);

  sub_1ABA94734();
  sub_1ABAF7FE4(v6, v7, v10);
  (*(v5 + 32))(v9, v7, v4);
  v11 = v9 + *(v3 + 20);
  *v11 = v15;
  *(v11 + 16) = v2;
  *(v11 + 26) = v1;
  *(v11 + 24) = v17;
  *(v11 + 32) = v16;
  *(v11 + 40) = v18;
  sub_1ABAB2AA8(*(v7 + *(v8 + 20)));
  sub_1ABA88588();
  sub_1ABA7B9B4(*(v0 + 48), 0, 1, v12);

  sub_1ABA7BBE0();

  return v13();
}

uint64_t sub_1ABAF4098()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 208);

  v3 = sub_1ABA805B4();
  sub_1ABAF7FB8(v3, v4, v2, v1);
  v5 = sub_1ABA805B4();
  sub_1ABAF7FB8(v5, v6, v2, v1);

  sub_1ABA88588();

  sub_1ABA7BBE0();

  return v7();
}

void AssetRegistry.locallyAvailableAsset(for:in:)()
{
  sub_1ABA7BCA8();
  v2 = v0;
  v114 = v3;
  v115 = v4;
  v113 = v5;
  v7 = v6;
  v110 = v8;
  v106 = type metadata accessor for TrialAssetManager.Asset(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v104 = v11 - v10;
  v12 = type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo(0);
  v13 = sub_1ABA7AB80(v12);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v101 - v16;
  sub_1ABF21C24();
  sub_1ABA7BB64();
  v108 = v18;
  v109 = v17;
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  v107 = v20 - v19;
  v21 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7AB80(v21);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  v23 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v111 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  v29 = type metadata accessor for AssetRegistryAsset(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7BC58();
  v33 = v32 - v31;
  v34 = v2[5];
  v35 = v2[6];
  sub_1ABA93E20(v2 + 2, v34);
  (*(v35 + 8))(v117, v7, v113, v114, v115, v34, v35);
  if (!v1)
  {
    v114 = v29;
    v115 = v28;
    v123 = v33;
    v36 = v112;
    v113 = v23;
    v37 = v117[0];
    v38 = v117[1];
    v39 = v118;
    v40 = v119 | (v120 << 16);
    v41 = v122;
    v103 = v121;
    if ((v119 & 0x80) != 0)
    {

      sub_1ABAF34A4();
      LOBYTE(v117[0]) = v37;
      LOBYTE(v116[0]) = v40 & 1;

      v124 = v40;
      v59 = v38;
      TrialAssetManager.locallyAvailableAsset(for:in:assetType:)(v38, v39, v117, v116, v60, v61, v62, v63, v101, v102, SWORD2(v102), SBYTE6(v102), SHIBYTE(v102), v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);

      v79 = sub_1ABA956F0();
      sub_1ABAF7FB8(v79, v80, v81, v40);
      v82 = sub_1ABA956F0();
      sub_1ABAF7FB8(v82, v83, v84, v40);
      v85 = v105;
      sub_1ABAF7FE4(v36, v105, type metadata accessor for TrialAssetManager.AssetLocalAvailabilityInfo);
      v86 = v106;
      v87 = v59;
      if (sub_1ABA7E1E0(v85, 1, v106) == 1)
      {
        v88 = sub_1ABA7D0F8();
        sub_1ABAF7FB8(v88, v89, v39, v124);

        v77 = 1;
        v75 = v110;
        v72 = v114;
      }

      else
      {
        sub_1ABA94734();
        v90 = v104;
        sub_1ABAF7FE4(v85, v104, v91);
        v92 = *(v111 + 32);
        v102 = v41;
        v93 = v86;
        v75 = v110;
        v92(v110, v90, v113);
        v77 = 0;
        v72 = v114;
        v94 = v75 + *(v114 + 20);
        *v94 = v37;
        *(v94 + 8) = v87;
        *(v94 + 16) = v39;
        *(v94 + 26) = BYTE2(v124);
        *(v94 + 24) = v124;
        v95 = v102;
        *(v94 + 32) = v103;
        *(v94 + 40) = v95;
        v96 = *(v93 + 20);
        v97 = v90 + *(v93 + 24);
        v98 = v75 + *(v72 + 24);
        v99 = *(v97 + 16);
        *(v98 + 8) = *v97;
        v100 = *(v97 + 32);
        *v98 = *(v90 + v96);
        *(v98 + 24) = v99;
        *(v98 + 40) = v100;
      }

      goto LABEL_10;
    }

    v102 = v122;
    if (v119)
    {
      LOBYTE(v117[0]) &= 1u;
      v42 = v118;
      sub_1ABA826A8();
      sub_1ABAF7FD8();
      v43 = v115;
      AssetRegistryAssetLocation.LocalAsset.LocalRelativeAsset.localURL.getter();
      v44 = v38;
      v45 = sub_1ABA826A8();
      sub_1ABAF7FB8(v45, v46, v42, v40);
      v47 = v111;
      v48 = v123;
      v112 = v44;
      v70 = v113;
      v71 = v102;
LABEL_9:
      (*(v47 + 32))(v48, v43, v70);
      v72 = v114;
      v73 = v48 + *(v114 + 20);
      v74 = v112;
      *v73 = v37;
      *(v73 + 8) = v74;
      *(v73 + 16) = v42;
      *(v73 + 26) = BYTE2(v40);
      *(v73 + 24) = v40;
      *(v73 + 32) = v103;
      *(v73 + 40) = v71;
      sub_1ABA83598((v48 + *(v72 + 24)));
      v75 = v110;
      sub_1ABAF7FE4(v48, v110, v76);
      v77 = 0;
LABEL_10:
      sub_1ABA7B9B4(v75, v77, 1, v72);
      v78 = type metadata accessor for AssetRegistryAssetLocalAvailabilityInfo(0);
      sub_1ABA7B9B4(v75, 0, 1, v78);
      goto LABEL_11;
    }

    v116[0] = 47;
    v116[1] = 0xE100000000000000;
    sub_1ABA826A8();
    sub_1ABA972BC();
    sub_1ABAF8040(v49, v50, v51, v52);
    sub_1ABAAA4A0();
    sub_1ABAAA44C();
    v112 = v38;
    v53 = sub_1ABF23B44();
    v47 = v111;
    v48 = v123;
    if (v53)
    {
      sub_1ABA7ED8C();
      v70 = v113;
      sub_1ABA7B9B4(v54, v55, v56, v113);
      v57 = *MEMORY[0x1E6968F70];
      v58 = *(v108 + 104);
      v108 = v39;
      v58(v107, v57, v109);
      v43 = v115;
      sub_1ABF21CD4();
      v71 = v102;
      v42 = v108;
      goto LABEL_9;
    }

    sub_1ABAF8054();
    sub_1ABA7D104();
    swift_allocError();
    *v64 = 0;
    swift_willThrow();
    v65 = v112;
    sub_1ABA972BC();
    sub_1ABAF7FB8(v66, v67, v68, v69);

    sub_1ABAF7FB8(v37, v65, v39, v40);
  }

LABEL_11:
  sub_1ABA7BC90();
}

uint64_t AssetRegistry.assets(for:)()
{
  sub_1ABA7BBF8();
  v1[111] = v0;
  v1[110] = v2;
  v3 = type metadata accessor for TrialAssetManager.Asset(0);
  v1[112] = v3;
  sub_1ABA7AB80(v3);
  v1[113] = sub_1ABA7E314();
  v4 = sub_1ABAD219C(&qword_1EB4DBB00, &qword_1ABF34A00);
  v1[114] = v4;
  sub_1ABA7BBD0(v4);
  v1[115] = v5;
  v1[116] = sub_1ABA96BDC();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v6 = sub_1ABAD219C(&qword_1EB4D1E50, &qword_1ABF34A08);
  sub_1ABA7AB80(v6);
  v1[119] = sub_1ABA96BDC();
  v1[120] = swift_task_alloc();
  v7 = sub_1ABF21C24();
  v1[121] = v7;
  sub_1ABA7BBD0(v7);
  v1[122] = v8;
  v1[123] = sub_1ABA7E314();
  v9 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABA7AB80(v9);
  v1[124] = sub_1ABA7E314();
  v10 = sub_1ABF21CF4();
  v1[125] = v10;
  sub_1ABA7BBD0(v10);
  v1[126] = v11;
  v1[127] = sub_1ABA96BDC();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v12 = type metadata accessor for AssetRegistryAsset(0);
  v1[130] = v12;
  sub_1ABA7AB80(v12);
  v1[131] = sub_1ABA7E314();
  v13 = sub_1ABAD219C(&qword_1EB4D1E58, &qword_1ABF34A10);
  v1[132] = v13;
  sub_1ABA7BBD0(v13);
  v1[133] = v14;
  v1[134] = sub_1ABA96BDC();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABAF4B18()
{
  v350 = v0;
  v320 = (v0 + 664);
  v321 = (v0 + 728);
  v322 = (v0 + 632);
  v314 = (v0 + 696);
  v335 = v0 + 864;
  v303 = *(v0 + 1064);
  v306 = *(v0 + 1040);
  v1 = *(v0 + 1008);
  v2 = *(v0 + 976);
  v323 = *(v0 + 888);
  v3 = *(v0 + 880);
  sub_1ABAD219C(&qword_1EB4D1E60, &qword_1ABF34A18);
  *(v0 + 856) = sub_1ABF239C4();
  v4 = sub_1ABAD219C(&qword_1EB4D1E68, &qword_1ABF34A20);
  sub_1ABAD219C(&qword_1EB4D1E70, &qword_1ABF34A28);
  sub_1ABAF80C8();
  v297 = v4;
  *(v0 + 864) = sub_1ABF239C4();
  v5 = v3 + 64;
  sub_1ABAB57FC();
  v8 = v7 & v6;
  v10 = (63 - v9) >> 6;
  HIDWORD(v305) = *MEMORY[0x1E6968F70];
  v304 = (v2 + 104);
  v315 = (v1 + 32);
  v298 = (v1 + 8);
  v299 = (v1 + 16);
  v307 = v3;

  v11 = 0;
  v331 = v0;
  v301 = v10;
  v302 = v3 + 64;
  if (!v8)
  {
    while (1)
    {
LABEL_3:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_119;
      }

      if (v12 >= v10)
      {
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    v228 = *(v0 + 864);
    *(v0 + 1104) = v228;
    if (*(v228 + 16))
    {
      *(v0 + 1112) = sub_1ABAF34A4();
      v231 = *(v228 + 32);
      *(v0 + 1205) = v231;
      v232 = 1 << v231;
      if (v232 < 64)
      {
        v233 = ~(-1 << v232);
      }

      else
      {
        v233 = -1;
      }

      v234 = v233 & *(v228 + 64);

      v235 = 0;
      if (v234)
      {
LABEL_97:
        while (1)
        {
          *(v0 + 1128) = v235;
          *(v0 + 1120) = v234;
          v237 = sub_1ABAA27C0(v235);
          v239 = -1 << v238;
          v240 = -(-1 << v238) < 64 ? ~(-1 << -v239) : -1;
          v241 = v240 & *(v237 + 64);

          if (v241)
          {
            goto LABEL_120;
          }

          v243 = 0;
          while (((63 - v239) >> 6) - 1 != v243)
          {
            v244 = v243 + 1;
            if (*(v242 + 8 * v243++ + 72))
            {
              goto LABEL_121;
            }
          }

          v235 = *(v0 + 1128);
          v234 = (*(v0 + 1120) - 1) & *(v0 + 1120);
          if (!v234)
          {
            goto LABEL_93;
          }
        }
      }

      while (1)
      {
LABEL_93:
        v236 = v235 + 1;
        if (__OFADD__(v235, 1))
        {
          goto LABEL_139;
        }

        if (v236 >= (((1 << *(v0 + 1205)) + 63) >> 6))
        {
          break;
        }

        v234 = *(*(v0 + 1104) + 8 * v236 + 64);
        ++v235;
        if (v234)
        {
          v235 = v236;
          goto LABEL_97;
        }
      }
    }

    sub_1ABA82A20();
    sub_1ABAFF5CC();

    __asm { BRAA            X2, X16 }
  }

LABEL_2:
  v12 = v11;
LABEL_6:
  v308 = v12;
  v309 = (v8 - 1) & v8;
  v13 = __clz(__rbit64(v8)) | (v12 << 6);
  v14 = (*(v307 + 48) + 16 * v13);
  v16 = *v14;
  v15 = v14[1];
  v17 = *(*(v307 + 56) + 8 * v13);

  v18 = sub_1ABF239C4();
  v19 = *(v0 + 856);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v343 = v19;
  v336 = v16;
  v340 = v15;
  sub_1ABAFBB14(v18, v16, v15, isUniquelyReferenced_nonNull_native, &qword_1EB4D2028, &qword_1ABF35218);
  v21 = 0;
  *(v0 + 856) = v343;
  sub_1ABAB57FC();
  v25 = v24 & v23;
  v27 = (63 - v26) >> 6;
  v325 = v22;
  v326 = v17;
  v324 = v27;
LABEL_7:
  if (v25)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v28 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      v11 = v308;
      v8 = v309;
      v10 = v301;
      v5 = v302;
      if (!v309)
      {
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v25 = *(v22 + 8 * v28);
    ++v21;
    if (v25)
    {
      v21 = v28;
LABEL_12:
      v29 = (*(v17 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v25)))));
      v31 = *v29;
      v30 = v29[1];
      v32 = v323[5];
      v33 = v323[6];
      sub_1ABA93E20(v323 + 2, v32);
      v39 = *(v33 + 8);

      v332 = v31;
      v34 = v31;
      v339 = v30;
      v35 = v25;
      v39(&v343, v34, v30, v336, v340, v32, v33);
      v25 = (v35 - 1) & v35;
      v36 = v343;
      v37 = v344;
      v38 = v345;
      LODWORD(v39) = v346 | (v347 << 16);
      v328 = v348;
      v341 = v349;
      v327 = v39 >> 16;
      if ((v346 & 0x80) != 0)
      {
        v334 = v343;
        v338 = v344;
        v330 = (v35 - 1) & v35;
        v49 = *v335;
        v50 = *(*v335 + 16);

        v51 = v39 >> 8;
        if (v50)
        {
          sub_1ABAF8618(v39 >> 8);
          if (v52)
          {
            v53 = v334;
LABEL_33:
            if (v49[2])
            {
              v79 = sub_1ABAF8618(v51);
              if (v80)
              {
                if (*(*(v49[7] + 8 * v79) + 16))
                {

                  sub_1ABA7ED68();
                  sub_1ABAF85A0(v53, v81, sub_1ABAF98C8);
                  v83 = v82;

                  if (v83)
                  {
                    goto LABEL_51;
                  }
                }
              }
            }

            v84 = sub_1ABAF7148(v322, v51);
            v86 = v84;
            if (!*v85)
            {
              goto LABEL_50;
            }

            v87 = v85;
            v312 = v84;
            v316 = v39;
            sub_1ABAD219C(&qword_1EB4D1E98, &qword_1ABF34A40);
            v88 = sub_1ABF239C4();
            swift_isUniquelyReferenced_nonNull_native();
            v343 = *v87;
            *v87 = 0x8000000000000000;
            sub_1ABA7ED68();
            sub_1ABAF85A0(v53, v89, sub_1ABAF98C8);
            sub_1ABA7BC80();
            if (!__OFADD__(v92, v93))
            {
              v94 = v90;
              v95 = v91;
              sub_1ABAD219C(&qword_1EB4D1EA0, &qword_1ABF34A48);
              sub_1ABA8C914();
              v96 = sub_1ABF24C64();
              v97 = v343;
              if (v96)
              {
                sub_1ABA7ED68();
                sub_1ABAF85A0(v334, v98, sub_1ABAF98C8);
                sub_1ABAA3404();
                if (!v67)
                {
                  goto LABEL_115;
                }

                v94 = v99;
              }

              if (v95)
              {
                *(v97[7] + 8 * v94) = v88;

                goto LABEL_49;
              }

              sub_1ABA7D110(&v97[v94 >> 6]);
              *(v97[6] + v94) = v334;
              *(v97[7] + 8 * v94) = v88;
              v118 = v97[2];
              v69 = __OFADD__(v118, 1);
              v119 = v118 + 1;
              if (!v69)
              {
                v97[2] = v119;
LABEL_49:
                *v87 = v97;

                v0 = v331;
                LOWORD(v39) = v316;
                v53 = v334;
                v86 = v312;
LABEL_50:
                v86();
LABEL_51:
                v120 = sub_1ABAF7148(v320, v51);
                if (!*v121)
                {

                  sub_1ABAA3B90();
                  sub_1ABAF7FB8(v149, v150, v151, v152);
                  v153 = sub_1ABA8C520();
                  (v120)(v153);
                  sub_1ABAA3B90();
                  sub_1ABAF7FB8(v154, v155, v156, v157);
                  goto LABEL_65;
                }

                v122 = sub_1ABAF71AC(v314, v53);
                v124 = v122;
                if (!*v123)
                {

                  v158 = sub_1ABA8C520();
                  (v124)(v158);
                  sub_1ABAA3B90();
                  sub_1ABAF7FB8(v159, v160, v161, v162);
                  v120();
                  sub_1ABAA3B90();
                  sub_1ABAF7FB8(v163, v164, v165, v166);
                  goto LABEL_65;
                }

                v125 = v123;
                v313 = v122;
                v317 = v120;

                sub_1ABAA3B90();
                sub_1ABAF8040(v126, v127, v128, v129);
                v130 = v39;
                sub_1ABAF8040(v53, v338, v38, v39);

                swift_isUniquelyReferenced_nonNull_native();
                v343 = *v125;
                *v125 = 0x8000000000000000;
                sub_1ABA8EF60();
                v131 = v38;
                sub_1ABA94F58(v338, v38, v132, sub_1ABA955E8, v133, v134, v135, v136, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
                sub_1ABA7BC80();
                if (!__OFADD__(v139, v140))
                {
                  v141 = v137;
                  v142 = v138;
                  sub_1ABAD219C(&qword_1EB4D1EA8, &qword_1ABF34A50);
                  sub_1ABA8C914();
                  if (sub_1ABF24C64())
                  {
                    sub_1ABA8EF60();
                    sub_1ABA94F58(v338, v38, v143, sub_1ABA955E8, v144, v145, v146, v147, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
                    sub_1ABAA3404();
                    if (!v67)
                    {
                      goto LABEL_115;
                    }

                    v141 = v148;
                  }

                  if (v142)
                  {
                    sub_1ABAF7FB8(v334, v338, v38, v130);
                    v167 = v38;
                    v168 = v343;
                    v169 = (v343[7] + 88 * v141);
                    memcpy((v0 + 16), v169, 0x58uLL);
                    *v169 = v336;
                    v169[1] = v340;
                    v169[2] = v332;
                    v169[3] = v339;
                    *(v169 + 32) = v130 & 1;
                    v169[5] = v334;
                    v169[6] = v338;
                    v169[7] = v167;
                    *(v169 + 66) = v327;
                    *(v169 + 32) = v130;
                    v169[9] = v328;
                    v169[10] = v341;
                    sub_1ABAFC73C(v0 + 16, &qword_1EB4D1E98);
                    goto LABEL_64;
                  }

                  v168 = v343;
                  sub_1ABA963C8(&v343[v141 >> 6]);
                  v170 = (v168[6] + 16 * v141);
                  *v170 = v338;
                  v170[1] = v171;
                  v172 = v168[7] + 88 * v141;
                  *v172 = v336;
                  *(v172 + 8) = v340;
                  *(v172 + 16) = v332;
                  *(v172 + 24) = v339;
                  *(v172 + 32) = v173;
                  *(v172 + 40) = v334;
                  *(v172 + 48) = v338;
                  *(v172 + 56) = v171;
                  *(v172 + 66) = v327;
                  *(v172 + 64) = v130;
                  *(v172 + 72) = v328;
                  *(v172 + 80) = v341;
                  v174 = v168[2];
                  v69 = __OFADD__(v174, 1);
                  v175 = v174 + 1;
                  if (!v69)
                  {
                    v168[2] = v175;
                    v167 = v131;
LABEL_64:
                    *v125 = v168;

                    v313();
                    v317();
                    v176 = sub_1ABA82DAC();
                    sub_1ABAF7FB8(v176, v177, v167, v130);
                    v178 = sub_1ABA82DAC();
                    sub_1ABAF7FB8(v178, v179, v167, v130);
LABEL_65:

                    v22 = v325;
                    v17 = v326;
                    v27 = v324;
                    v25 = v330;
                    goto LABEL_7;
                  }

LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
                  return;
                }

LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
              }

              __break(1u);
              goto LABEL_143;
            }

LABEL_137:
            __break(1u);
            goto LABEL_138;
          }
        }

        v54 = v38;
        v55 = v39;
        sub_1ABAD219C(&qword_1EB4D1E88, &qword_1ABF34A30);
        sub_1ABA94588();
        v56 = sub_1ABF239C4();
        swift_isUniquelyReferenced_nonNull_native();
        v343 = v49;
        v57 = v39 >> 8;
        sub_1ABAF8618(v57);
        sub_1ABA7BC80();
        if (__OFADD__(v60, v61))
        {
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v62 = v58;
        v63 = v59;
        sub_1ABAD219C(&qword_1EB4D1E90, &qword_1ABF34A38);
        sub_1ABA8C914();
        v64 = sub_1ABF24C64();
        v49 = v343;
        if (v64)
        {
          sub_1ABAF8618(v57);
          sub_1ABAA3404();
          v66 = v331;
          v53 = v334;
          if (!v67)
          {
            goto LABEL_115;
          }

          v62 = v65;
          if ((v63 & 1) == 0)
          {
LABEL_27:
            sub_1ABA7D110(&v49[v62 >> 6]);
            *(v49[6] + 2 * v62) = v57;
            *(v49[7] + 8 * v62) = v56;
            v68 = v49[2];
            v69 = __OFADD__(v68, 1);
            v70 = v68 + 1;
            if (v69)
            {
              goto LABEL_140;
            }

            v49[2] = v70;
LABEL_32:
            *v335 = v49;
            LOWORD(v39) = v55;
            v38 = v54;
            v51 = v57;
            v0 = v66;
            goto LABEL_33;
          }
        }

        else
        {
          v66 = v331;
          v53 = v334;
          if ((v63 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        *(v49[7] + 8 * v62) = v56;

        goto LABEL_32;
      }

      sub_1ABAF7FD8();
      v40 = sub_1ABAF70D4(v321, v336, v340);
      v41 = v40;
      v333 = v42;
      v43 = v36;
      if (!*v42)
      {

        v71 = sub_1ABA931C8();
        sub_1ABAF7FB8(v71, v72, v73, v74);
        (v41)(v321, 0);
        v75 = sub_1ABA931C8();
        sub_1ABAF7FB8(v75, v76, v77, v78);

        v27 = v324;
        v22 = v325;
        v17 = v326;
        goto LABEL_7;
      }

      v311 = v40;
      v329 = v25;
      v337 = v37;
      if ((v39 & 1) == 0)
      {
        *(v0 + 824) = v36;
        *(v0 + 832) = v37;
        *(v0 + 840) = 47;
        *(v0 + 848) = 0xE100000000000000;
        v100 = sub_1ABA931C8();
        sub_1ABAF8040(v100, v101, v102, v103);
        v104 = sub_1ABA931C8();
        sub_1ABAF8040(v104, v105, v106, v107);
        sub_1ABAAA4A0();
        sub_1ABAAA44C();

        if (sub_1ABF23B44())
        {
          v108 = *(v0 + 984);
          v109 = v38;
          v110 = *(v0 + 968);
          sub_1ABA7ED8C();
          sub_1ABA7B9B4(v111, v112, v113, v114);
          (*v304)(v108, HIDWORD(v305), v110);
          sub_1ABA82DAC();
          sub_1ABF21CD4();
          v115 = sub_1ABA82DAC();
          sub_1ABAF7FB8(v115, v116, v109, v39);
          v117 = *v315;
          goto LABEL_70;
        }

        v247 = sub_1ABA931C8();
        sub_1ABAF7FB8(v247, v248, v249, v250);

        sub_1ABAF8054();
        sub_1ABA7D104();
        swift_allocError();
        *v251 = 0;
        swift_willThrow();
LABEL_112:
        v252 = sub_1ABA931C8();
        sub_1ABAF7FB8(v252, v253, v254, v255);

        v256 = sub_1ABA931C8();
        sub_1ABAF7FB8(v256, v257, v258, v259);
        v311();
        v260 = sub_1ABA931C8();
        sub_1ABAF7FB8(v260, v261, v262, v263);

        sub_1ABAB5C10();

        sub_1ABA7BBE0();
        sub_1ABAFF5CC();

        __asm { BRAA            X1, X16 }
      }

      *(v0 + 792) = v37;
      *(v0 + 800) = v38;
      *(v0 + 808) = 47;
      *(v0 + 816) = 0xE100000000000000;
      v44 = sub_1ABA931C8();
      sub_1ABAF8040(v44, v45, v46, v47);
      sub_1ABAAA4A0();
      sub_1ABAAA44C();

      if (sub_1ABF23B44())
      {
        sub_1ABAFC69C();
        sub_1ABA7D104();
        swift_allocError();
        *v246 = 0;
LABEL_111:
        swift_willThrow();

        goto LABEL_112;
      }

      if (v36)
      {
        v48 = &qword_1ED870630;
        if (qword_1ED870628 != -1)
        {
          swift_once();
          v48 = &qword_1ED870630;
        }
      }

      else
      {
        v48 = &qword_1ED871EA8;
        if (qword_1ED871EA0 != -1)
        {
          swift_once();
          v48 = &qword_1ED871EA8;
        }
      }

      v180 = [*v48 resourceURL];
      if (!v180)
      {
        sub_1ABAFC5D8();
        sub_1ABA7D104();
        swift_allocError();
        goto LABEL_111;
      }

      v181 = v180;
      v300 = *(v331 + 1032);
      v182 = *(v331 + 1024);
      v318 = v39;
      v183 = *(v331 + 1016);
      v184 = *(v331 + 1000);
      v185 = *(v331 + 992);
      v186 = *(v331 + 984);
      v109 = v38;
      v187 = *(v331 + 968);
      sub_1ABF21CA4();

      v188 = *v315;
      (*v315)(v182, v183, v184);
      v39 = v182;
      (*v299)(v185, v182, v184);
      v189 = sub_1ABAB1000();
      sub_1ABA7B9B4(v189, v190, v191, v184);
      (*v304)(v186, HIDWORD(v305), v187);

      v37 = v337;
      v0 = v331;
      sub_1ABF21CD4();
      (*v298)(v39, v184);
      v192 = sub_1ABA82DAC();
      LOWORD(v39) = v318;
      sub_1ABAF7FB8(v192, v193, v109, v318);
      v117 = v188;
LABEL_70:
      v194 = *(v0 + 1096);
      v319 = *(v0 + 1088);
      v195 = *(v0 + 1048);
      v196 = *(v0 + 1040);
      v117(v195, *(v0 + 1032), *(v0 + 1000));
      v197 = v195 + *(v306 + 20);
      *v197 = v43;
      *(v197 + 8) = v37;
      v310 = v109;
      *(v197 + 16) = v109;
      *(v197 + 26) = v327;
      *(v197 + 24) = v39;
      *(v197 + 32) = v328;
      *(v197 + 40) = v341;
      sub_1ABA83598((v195 + *(v306 + 24)));
      sub_1ABAF7FE4(v195, v194, v198);
      v199 = sub_1ABAB1000();
      sub_1ABA7B9B4(v199, v200, v201, v196);
      swift_storeEnumTagMultiPayload();
      sub_1ABAFC6F0(v194, v319, &qword_1EB4D1E58, &qword_1ABF34A10);
      swift_isUniquelyReferenced_nonNull_native();
      v343 = *v333;
      *v333 = 0x8000000000000000;
      sub_1ABA8EF60();
      sub_1ABA94F58(v332, v339, v202, sub_1ABA955E8, v203, v204, v205, v206, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
      sub_1ABA7BC80();
      if (__OFADD__(v209, v210))
      {
        goto LABEL_136;
      }

      v211 = v207;
      v212 = v208;
      sub_1ABAD219C(&qword_1EB4D1EB8, &qword_1ABF34A58);
      sub_1ABA8C914();
      if (sub_1ABF24C64())
      {
        sub_1ABA8EF60();
        sub_1ABA94F58(v332, v339, v213, sub_1ABA955E8, v214, v215, v216, v217, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
        sub_1ABA905B0();
        v219 = v331;
        if (!v67)
        {
LABEL_115:
          sub_1ABAFF5CC();

          sub_1ABF25104();
          return;
        }

        v211 = v218;
      }

      else
      {
        v219 = v331;
      }

      v0 = v219;
      if (v212)
      {

        v220 = v343;
        v221 = sub_1ABAFF5F4();
        sub_1ABAFC62C(v221, v222);
        goto LABEL_80;
      }

      v220 = v343;
      sub_1ABA963C8(&v343[v211 >> 6]);
      v223 = (v220[6] + 16 * v211);
      *v223 = v332;
      v223[1] = v339;
      v224 = sub_1ABAFF5F4();
      sub_1ABAFC6F0(v224, v225, &qword_1EB4D1E58, &qword_1ABF34A10);
      v226 = v220[2];
      v69 = __OFADD__(v226, 1);
      v227 = v226 + 1;
      if (v69)
      {
        goto LABEL_141;
      }

      v220[2] = v227;
LABEL_80:
      *v333 = v220;

      v311();
      sub_1ABAF7FB8(v43, v337, v310, v39);

      v27 = v324;
      v22 = v325;
      v25 = v329;
      v17 = v326;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  v244 = 0;
LABEL_121:
  sub_1ABA95FE4(v244);
  v342 = v267;
  v270 = *(v269 + 8 * v268);
  *(v0 + 1160) = v270;
  v271 = sub_1ABAD219C(&qword_1EB4D1EC8, &qword_1ABF34A60);
  v272 = sub_1ABF24D24();
  v273 = 0;
  sub_1ABA8B830(v272);
  sub_1ABAA03C4();
  v276 = v275 & v274;
  v278 = (v277 + 63) >> 6;
  v280 = v279 + 64;
  if ((v275 & v274) != 0)
  {
    do
    {
      v281 = __clz(__rbit64(v276));
      v276 &= v276 - 1;
LABEL_128:
      v284 = v281 | (v273 << 6);
      v285 = (*(v270 + 48) + 16 * v284);
      v287 = *v285;
      v286 = v285[1];
      LOBYTE(v285) = *(*(v270 + 56) + 88 * v284 + 32);
      *(v280 + ((v284 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v284;
      v288 = (v272[6] + 16 * v284);
      *v288 = v287;
      v288[1] = v286;
      *(v272[7] + v284) = v285;
      v289 = v272[2];
      v69 = __OFADD__(v289, 1);
      v290 = v289 + 1;
      if (v69)
      {
        goto LABEL_144;
      }

      v272[2] = v290;
    }

    while (v276);
  }

  v282 = v273;
  while (1)
  {
    v273 = v282 + 1;
    if (__OFADD__(v282, 1))
    {
      __break(1u);
      goto LABEL_135;
    }

    if (v273 >= v278)
    {
      break;
    }

    v283 = *(v271 + 8 * v273);
    ++v282;
    if (v283)
    {
      v281 = __clz(__rbit64(v283));
      v276 = (v283 - 1) & v283;
      goto LABEL_128;
    }
  }

  v291 = *(v331 + 1200);
  *(v331 + 1204) = v342;
  *(v331 + 1202) = v291;

  v292 = swift_task_alloc();
  *(v331 + 1176) = v292;
  *v292 = v331;
  sub_1ABAA3754(v292);
  sub_1ABAFF5CC();

  TrialAssetManager.assets(for:in:downloadOptions:)(v293, v294, v295);
}