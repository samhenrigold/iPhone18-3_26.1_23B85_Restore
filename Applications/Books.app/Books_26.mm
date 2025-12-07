char *sub_1003BD7A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BEAC4(a1, a2, a3, *v3, &unk_100AE0A60, &unk_100821380, &type metadata for SidebarViewModel.Item);
  *v3 = result;
  return result;
}

void *sub_1003BD7D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF300(a1, a2, a3, *v3, &unk_100AE01A8, &unk_1008203F0, &qword_100AD6710, &unk_10080B890);
  *v3 = result;
  return result;
}

char *sub_1003BD818(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BEBE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD838(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BECF4(a1, a2, a3, *v3, &qword_100AE0A80, &qword_1008213A0, &type metadata for MenuController.UserCollection);
  *v3 = result;
  return result;
}

char *sub_1003BD870(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BECF4(a1, a2, a3, *v3, &qword_100AE0A78, &qword_100821398, &type metadata for MenuController.RecentlyOpenedAsset);
  *v3 = result;
  return result;
}

char *sub_1003BD8A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BEE00(a1, a2, a3, *v3, &qword_100AE0A30, &qword_100821350);
  *v3 = result;
  return result;
}

void *sub_1003BD8D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0A70, &qword_100821390, &type metadata accessor for SeedBook);
  *v3 = result;
  return result;
}

void *sub_1003BD91C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BEF24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD93C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF1D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD95C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF300(a1, a2, a3, *v3, &qword_100AE0AF8, &qword_100821428, &qword_100AE0A18, &qword_100821338);
  *v3 = result;
  return result;
}

void *sub_1003BD99C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD9BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0A50, &unk_100821370, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
  *v3 = result;
  return result;
}

void *sub_1003BDA00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0988, &qword_1008212A8, &type metadata accessor for UserFeature);
  *v3 = result;
  return result;
}

void *sub_1003BDA44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0A48, &qword_100821368, &type metadata accessor for SelectionInfo);
  *v3 = result;
  return result;
}

char *sub_1003BDA88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1003BDB94(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AD5A68, &unk_100812810);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_1001F1160(&unk_100AD5A70, &unk_1008112E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003BDCDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0AA0, &qword_1008213C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1003BDDE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0AA8, &qword_1008213C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1003BDF00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0A98, &qword_1008213B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1003BDFF4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1001F1160(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_1003BE0E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1003BE1F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0AE0, &qword_100821410);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1003BE2E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&unk_100AE0970, &unk_10083AB90);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&qword_100AD4F30, &unk_100816940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003BE418(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE09A8, &qword_1008212C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1003BE524(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AE09B0, &unk_1008212D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&qword_100AE09B8, &unk_100823790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003BE698(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001F1160(a5, a6);
  v16 = *(sub_1001F1160(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1001F1160(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1003BE880(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0A40, &qword_100821360);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
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

void *sub_1003BE990(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AE0B40, &qword_100821458);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&qword_100AE0B48, &qword_100821460);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003BEAC4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1001F1160(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 72);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[72 * v11])
    {
      memmove(v15, v16, 72 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1003BEBE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0A90, &qword_1008213B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1003BECF4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1001F1160(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size_0(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1003BEE00(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1001F1160(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1003BEF24(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AE0AE8, &qword_100821418);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_1001F1160(&qword_100AE0AF0, &qword_100821420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003BF090(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1001F1160(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_0(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1003BF1D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AE0A28, &qword_100821348);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for MCatalogRequestRelationship(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003BF300(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1001F1160(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_0(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1003BF434(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&unk_100AE0B00, &qword_100821430);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&unk_100AF1C60, &qword_100821438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003BF5D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001F1160(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
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

unint64_t sub_1003BF7D4()
{
  result = qword_100AE0980;
  if (!qword_100AE0980)
  {
    type metadata accessor for ContextAssetInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0980);
  }

  return result;
}

uint64_t sub_1003BF82C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1003BC99C(a1, v4, v5, v6);
}

void sub_1003BF8E0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  sub_1001F1160(&unk_100AE0AC0, &unk_100812C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  v23 = 0x6D614E6775626564;
  v24 = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000022;
  *(inited + 80) = 0x80000001008BFFD0;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_1003BFBB8(inited + 32);
  v9 = objc_allocWithZone(BSUIDynamicArray);
  sub_1001F1160(&unk_100AEF1B0, &qword_10081EB10);
  isa = sub_1007A25D4().super.isa;
  v11 = sub_1007A2024().super.isa;

  v12 = [v9 initWithArray:isa options:v11];

  if (v12)
  {
    *&v2[OBJC_IVAR____TtC5Books23BKSharedWithYouProvider_dynamicArray] = v12;
    *&v2[OBJC_IVAR____TtC5Books23BKSharedWithYouProvider_sharedWithYouController] = a1;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    v13 = a1;
    v14 = objc_msgSendSuper2(&v22, "init");
    v15 = sub_1007A2744();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    sub_1007A26F4();
    v16 = v14;
    v17 = v13;
    v18 = v16;
    v19 = sub_1007A26E4();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v17;
    v20[5] = v18;
    sub_1003457A0(0, 0, v7, &unk_1008213F8, v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003BFBB8(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD1E50, &unk_10080B810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003BFC20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_1003BC894(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BFCE0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE0C08);
  sub_100008B98(v0, qword_100AE0C08);
  return sub_10079ACD4();
}

id sub_1003BFD60(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [objc_opt_self() bu_sharedAccountStore];
  v7 = type metadata accessor for AchievementsNotificationController();
  v8 = objc_allocWithZone(ObjectType);
  *&v8[OBJC_IVAR___BKAppInternalActionHandler_fakePlayerViewController] = 0;
  *&v8[OBJC_IVAR___BKAppInternalActionHandler_nextFakePlayerType] = 0;
  *&v8[OBJC_IVAR___BKAppInternalActionHandler_application] = a1;
  *&v8[OBJC_IVAR___BKAppInternalActionHandler_sceneManager] = a2;
  *&v8[OBJC_IVAR___BKAppInternalActionHandler_userDefaults] = v5;
  *&v8[OBJC_IVAR___BKAppInternalActionHandler_accountStore] = v6;
  *&v8[OBJC_IVAR___BKAppInternalActionHandler_achievementsNotificationControllerType] = v7;
  v11.receiver = v8;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

void sub_1003BFEDC(void *a1)
{
  v42.receiver = v1;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, "validateCommand:", a1);
  v3 = *&v1[OBJC_IVAR___BKAppInternalActionHandler_sceneManager];
  v4 = [v3 primarySceneController];
  v5 = [v4 rootBarCoordinator];

  if (v5)
  {
    v6 = [v5 selectedItem];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = *&v6[OBJC_IVAR___BKRootBarItem_identifier];
      v5 = *&v6[OBJC_IVAR___BKRootBarItem_identifier + 8];
    }

    else
    {
      v7 = 0;
      v5 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  [a1 action];
  if (sub_100796E94())
  {
    if ([a1 propertyList])
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40 = v38;
    v41 = v39;
    if (*(&v39 + 1))
    {
      v8 = swift_dynamicCast();
      if (v8)
      {
        countAndFlagsBits = v37._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      if (v8)
      {
        object = v37._object;
      }

      else
      {
        object = 0;
      }

      if (v5)
      {
        if (object)
        {
          if (v7 == countAndFlagsBits && v5 == object)
          {

LABEL_30:

            v11 = 1;
LABEL_46:
            [a1 setState:v11];
            return;
          }

          v16 = sub_1007A3AB4();

          if (v16)
          {
LABEL_45:
            v11 = 1;
            goto LABEL_46;
          }

LABEL_39:
          v11 = 0;
          goto LABEL_46;
        }
      }

      else if (!object)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_100007840(&v40, &unk_100AD5B40, &unk_100811300);
      if (!v5)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_39;
  }

  if (sub_100796E94())
  {
    if (v5)
    {
      if (v7 == 0x686372616573 && v5 == 0xE600000000000000)
      {
        goto LABEL_30;
      }

      v15 = sub_1007A3AB4();

      if (v15)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_39;
  }

  if (sub_100796E94())
  {
    if ([a1 propertyList])
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40 = v38;
    v41 = v39;
    if (*(&v39 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && (*&v40 = 0x3A6D6F74737563, *(&v40 + 1) = 0xE700000000000000, sub_1007A23D4(v37), , v5))
      {
        if (__PAIR128__(v5, v7) == v40)
        {

LABEL_63:
          [a1 setState:1];
          return;
        }

        v19 = sub_1007A3AB4();

        if (v19)
        {
          goto LABEL_63;
        }
      }

      else
      {
      }
    }

    else
    {

      sub_100007840(&v40, &unk_100AD5B40, &unk_100811300);
    }

LABEL_90:
    [a1 setState:0];
    return;
  }

  if (sub_100796E94())
  {
    v12 = [v3 primarySceneController];
    v13 = [v12 rootBarCoordinator];

    if (v13)
    {
      v14 = [v13 miniPlayerViewController];
      swift_unknownObjectRelease();
      if (v14)
      {

        v11 = 1;
        goto LABEL_46;
      }
    }

    goto LABEL_39;
  }

  if (sub_100796E94())
  {
    v11 = [*&v1[OBJC_IVAR___BKAppInternalActionHandler_userDefaults] BOOLForKey:TUIUserDefaultRecordLiveResizeStats];
    goto LABEL_46;
  }

  if (sub_100796E94())
  {
    v17 = *&v1[OBJC_IVAR___BKAppInternalActionHandler_userDefaults];
    v18 = sub_1007A2214();
    LODWORD(v17) = [v17 BOOLForKey:v18];

    v11 = v17;
    goto LABEL_46;
  }

  if (sub_100796E94())
  {
    if ([a1 propertyList])
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40 = v38;
    v41 = v39;
    if (*(&v39 + 1))
    {
      v20 = swift_dynamicCast();
      if (v20)
      {
        v21 = v37._countAndFlagsBits;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = v37._object;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      sub_100007840(&v40, &unk_100AD5B40, &unk_100811300);
      v21 = 0;
      v22 = 0;
    }

    v23 = [objc_opt_self() sharedProvider];
    v24 = [v23 activeStoreAccount];

    if (v24 && (v25 = [v24 username], v24, v25))
    {
      v26 = sub_1007A2254();
      v28 = v27;

      if (v22)
      {
        if (v26 == v21 && v22 == v28)
        {

LABEL_83:
          v30 = [a1 attributes] | 1;
LABEL_85:
          [a1 setAttributes:v30];
          if (v22)
          {
            v31 = *&v1[OBJC_IVAR___BKAppInternalActionHandler_accountStore];
            v32 = sub_1007A2214();

            v33 = [v31 ams_iTunesAccountWithUsername:v32];

            if (v33)
            {
              v34 = sub_1003C06FC();
              *&v40 = 0xD000000000000033;
              *(&v40 + 1) = 0x80000001008C6AF0;
              __chkstk_darwin(v34);
              v36[2] = &v40;
              v35 = sub_100580218(sub_1003C2F68, v36, v34);

              if (v35)
              {
                [a1 setState:1];

                return;
              }
            }
          }

          goto LABEL_90;
        }

        v29 = sub_1007A3AB4();

        if (v29)
        {
          goto LABEL_83;
        }
      }

      else
      {
      }
    }

    else if (!v22)
    {
      goto LABEL_83;
    }

    v30 = [a1 attributes] & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_85;
  }
}

void *sub_1003C06FC()
{
  result = [v0 accountProperties];
  if (result)
  {
    v2 = result;
    *&v5 = 0xD000000000000010;
    *(&v5 + 1) = 0x80000001008C6AD0;
    v3 = [result __swift_objectForKeyedSubscript:sub_1007A3B04()];
    swift_unknownObjectRelease();

    if (v3)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {
      sub_100007840(v7, &unk_100AD5B40, &unk_100811300);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C08A4()
{
  v1 = [*(v0 + OBJC_IVAR___BKAppInternalActionHandler_sceneManager) bookFlowController];
  v2 = [v1 sceneHosting];

  if (v2)
  {
    v3 = [v2 currentSceneController];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = [v3 genericPresenting];
      swift_unknownObjectRelease();
      v5 = [objc_allocWithZone(BKDebugViewController) initWithStyle:1];
      v6 = [objc_allocWithZone(BSUINavigationController) initWithRootViewController:v5];
      [v6 setModalPresentationStyle:1];
      [v4 presenterShowModalController:v6 animated:1 completion:0];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003C0AD4()
{
  v1 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1007969B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007969A4();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = *(v0 + OBJC_IVAR___BKAppInternalActionHandler_application);
    v10 = [v9 delegate];
    if (!v10)
    {
      return (*(v5 + 8))(v7, v4);
    }

    v11 = v10;
    if ([v10 respondsToSelector:"application:openURL:options:"])
    {
      sub_1001EDFEC(_swiftEmptyArrayStorage);
      sub_100796944(v12);
      v14 = v13;
      type metadata accessor for OpenURLOptionsKey(0);
      sub_1003C2F10();
      isa = sub_1007A2024().super.isa;

      [v11 application:v9 openURL:v14 options:isa];
      swift_unknownObjectRelease();

      return (*(v5 + 8))(v7, v4);
    }

    (*(v5 + 8))(v7, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003C0D58(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_100007840(v9, &unk_100AD5B40, &unk_100811300);
}

void sub_1003C0DE4()
{
  v1 = [*(v0 + OBJC_IVAR___BKAppInternalActionHandler_sceneManager) primarySceneController];
  v2 = [v1 rootBarCoordinator];

  if (v2)
  {
    v3 = [v2 miniPlayerViewController];
    if (v3)
    {

      [v2 undockMiniPlayer];

      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for FakePlayerViewController();
      v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v2 dockMiniPlayer:v4];
      swift_unknownObjectRelease();
    }
  }
}

double sub_1003C146C(uint64_t a1)
{
  sub_10000AE20(a1, &v18);
  if (!*(&v19 + 1))
  {
    sub_100007840(&v18, &unk_100AD5B40, &unk_100811300);
    goto LABEL_6;
  }

  sub_10023D5EC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v20 = 0u;
    v21 = 0u;
LABEL_7:
    sub_100007840(&v20, &unk_100AD5B40, &unk_100811300);
    goto LABEL_8;
  }

  v3 = [v17 propertyList];

  if (v3)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v14 = [*(v1 + OBJC_IVAR___BKAppInternalActionHandler_sceneManager) primarySceneController];
    v15 = [v14 rootBarCoordinator];

    if (v15)
    {
      v16 = sub_1007A2214();

      [v15 selectWithIdentifier:v16 isUserAction:1];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return result;
  }

LABEL_8:
  if (qword_100AD14F8 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AE0C08);
  sub_10000AE20(a1, &v20);
  v5 = sub_10079ACC4();
  v6 = sub_1007A29B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    sub_10000AE20(&v20, &v18);
    sub_1001F1160(&unk_100AD5B40, &unk_100811300);
    v9 = sub_1007A22E4();
    v11 = v10;
    sub_100007840(&v20, &unk_100AD5B40, &unk_100811300);
    v12 = sub_1000070F4(v9, v11, &v17);

    *(v7 + 4) = v12;
    sub_1000074E0(v8);
  }

  else
  {

    sub_100007840(&v20, &unk_100AD5B40, &unk_100811300);
  }

  return result;
}

double sub_1003C18CC(uint64_t a1)
{
  sub_10000AE20(a1, &v19);
  if (!*(&v20 + 1))
  {
    sub_100007840(&v19, &unk_100AD5B40, &unk_100811300);
    goto LABEL_6;
  }

  sub_10023D5EC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v21 = 0;
    v22 = 0u;
LABEL_7:
    sub_100007840(&v21, &unk_100AD5B40, &unk_100811300);
    goto LABEL_8;
  }

  v3 = [v18 propertyList];

  if (v3)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v14 = *(v1 + OBJC_IVAR___BKAppInternalActionHandler_sceneManager);
    v21._countAndFlagsBits = 0x3A6D6F74737563;
    v21._object = 0xE700000000000000;
    sub_1007A23D4(v19);

    v15 = [v14 primarySceneController];
    v16 = [v15 rootBarCoordinator];

    if (v16)
    {
      v17 = sub_1007A2214();

      [v16 selectWithIdentifier:v17 isUserAction:1];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return result;
  }

LABEL_8:
  if (qword_100AD14F8 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AE0C08);
  sub_10000AE20(a1, &v21);
  v5 = sub_10079ACC4();
  v6 = sub_1007A29B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    sub_10000AE20(&v21, &v19);
    sub_1001F1160(&unk_100AD5B40, &unk_100811300);
    v9 = sub_1007A22E4();
    v11 = v10;
    sub_100007840(&v21, &unk_100AD5B40, &unk_100811300);
    v12 = sub_1000070F4(v9, v11, &v18);

    *(v7 + 4) = v12;
    sub_1000074E0(v8);
  }

  else
  {

    sub_100007840(&v21, &unk_100AD5B40, &unk_100811300);
  }

  return result;
}

uint64_t sub_1003C1C58(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_100007840(v9, &unk_100AD5B40, &unk_100811300);
}

uint64_t sub_1003C1CE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v66 - v9;
  sub_10079ACD4();
  v11 = *(v2 + OBJC_IVAR___BKAppInternalActionHandler_accountStore);
  sub_10000AE20(a1, &aBlock);
  if (!*(&v75 + 1))
  {
    goto LABEL_12;
  }

  sub_10023D5EC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = v79;
  v13 = [v79 propertyList];
  v73 = v10;
  if (v13)
  {
    sub_1007A3504();
    v10 = v73;
    swift_unknownObjectRelease();
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  aBlock = v79;
  v75 = v80;
  if (!*(&v80 + 1))
  {

LABEL_12:
    sub_100007840(&aBlock, &unk_100AD5B40, &unk_100811300);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v72 = v4;
  v14 = v78[1];
  v15 = sub_1007A2214();
  v16 = [v11 ams_iTunesAccountWithUsername:v15];

  if (!v16)
  {

    v4 = v72;
    v10 = v73;
LABEL_13:
    sub_10000AE20(a1, &aBlock);
    v34 = sub_10079ACC4();
    v35 = sub_1007A29D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v78[0] = v37;
      *v36 = 136315138;
      sub_10000AE20(&aBlock, &v79);
      v73 = v10;
      sub_1001F1160(&unk_100AD5B40, &unk_100811300);
      v38 = sub_1007A22E4();
      v39 = v4;
      v41 = v40;
      sub_100007840(&aBlock, &unk_100AD5B40, &unk_100811300);
      v42 = sub_1000070F4(v38, v41, v78);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "Could not trigger command: %s", v36, 0xCu);
      sub_1000074E0(v37);

      return (*(v5 + 8))(v73, v39);
    }

    else
    {

      sub_100007840(&aBlock, &unk_100AD5B40, &unk_100811300);
      return (*(v5 + 8))(v10, v4);
    }
  }

  v71 = v14;
  v17 = v16;
  v18 = sub_10079ACC4();
  v19 = sub_1007A29D4();

  v20 = os_log_type_enabled(v18, v19);
  v70 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v67 = v21;
    v69 = swift_slowAlloc();
    *&aBlock = v69;
    *v21 = 136315138;
    v22 = v17;
    v68 = v19;
    v23 = v22;
    v24 = [v22 description];
    v25 = sub_1007A2254();
    v66 = v18;
    v26 = v17;
    v27 = v25;
    v29 = v28;

    v30 = v27;
    v17 = v26;
    v31 = sub_1000070F4(v30, v29, &aBlock);

    v32 = v67;
    *(v67 + 1) = v31;
    v33 = v66;
    _os_log_impl(&_mh_execute_header, v66, v68, "Account to turn into legacy: %s", v32, 0xCu);
    sub_1000074E0(v69);
  }

  else
  {
  }

  v44 = [v17 accountProperties];
  result = v71;
  if (!v44)
  {
    __break(1u);
    return result;
  }

  *&v79 = 0xD000000000000010;
  *(&v79 + 1) = 0x80000001008C6AD0;
  v45 = [v44 __swift_objectForKeyedSubscript:sub_1007A3B04()];
  swift_unknownObjectRelease();

  if (v45)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  aBlock = v79;
  v75 = v80;
  if (*(&v80 + 1))
  {
    sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
    v46 = swift_dynamicCast();
    v47 = v17;
    if (v46)
    {
      v48 = v78[0];

      goto LABEL_28;
    }
  }

  else
  {
    v47 = v17;
    v46 = sub_100007840(&aBlock, &unk_100AD5B40, &unk_100811300);
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_28:
  *&aBlock = 0xD000000000000033;
  *(&aBlock + 1) = 0x80000001008C6AF0;
  __chkstk_darwin(v46);
  *(&v66 - 2) = &aBlock;
  v49 = sub_100580218(sub_100266288, &(&v66)[-4], v48);

  if (v49)
  {

    v50 = v73;
    v51 = sub_10079ACC4();
    v52 = sub_1007A29D4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "MENU: Legacy account already has the right media types", v53, 2u);
    }

    else
    {
    }

    return (*(v5 + 8))(v50, v72);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_10000B3D8(0, *(v48 + 2) + 1, 1, v48);
    }

    v55 = *(v48 + 2);
    v54 = *(v48 + 3);
    if (v55 >= v54 >> 1)
    {
      v48 = sub_10000B3D8((v54 > 1), v55 + 1, 1, v48);
    }

    *(v48 + 2) = v55 + 1;
    v56 = &v48[16 * v55];
    *(v56 + 4) = 0xD000000000000033;
    *(v56 + 5) = 0x80000001008C6AF0;
    isa = sub_1007A25D4().super.isa;

    v58 = sub_1007A2214();
    [v47 setAccountProperty:isa forKey:v58];

    v59 = [v11 ams_saveAccount:v47 verifyCredentials:0];
    v61 = v72;
    v60 = v73;
    (*(v5 + 16))(v7, v73, v72);
    v62 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v63 = swift_allocObject();
    (*(v5 + 32))(v63 + v62, v7, v61);
    *(v63 + ((v6 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = v47;
    v76 = sub_1003C2E00;
    v77 = v63;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v75 = sub_1002D63C0;
    *(&v75 + 1) = &unk_100A19770;
    v64 = _Block_copy(&aBlock);
    v65 = v47;

    [v59 addFinishBlock:v64];

    _Block_release(v64);
    return (*(v5 + 8))(v60, v61);
  }
}

void sub_1003C264C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    v5 = a4;
    v6 = sub_10079ACC4();
    v7 = sub_1007A29B4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v11 = v5;
      v12 = sub_1007A3B84();
      v14 = sub_1000070F4(v12, v13, &v18);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error saving legacy books account %@: %s", v8, 0x16u);
      sub_100007840(v9, &unk_100AD9480, &qword_1008113B0);

      sub_1000074E0(v10);
    }

    else
    {
    }
  }

  else
  {
    oslog = sub_10079ACC4();
    v15 = sub_1007A29D4();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Success saving legacy books account", v16, 2u);
    }
  }
}

void sub_1003C2A98()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for FakePlayerViewController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(UILabel) initWithFrame:{v4, v6, v8, v10}];
    [v11 setAutoresizingMask:18];
    v12 = sub_1007A2214();
    [v11 setText:v12];

    v13 = [objc_opt_self() systemRedColor];
    [v11 setTextColor:v13];

    [v11 setTextAlignment:1];
    v14 = [v0 view];
    if (v14)
    {
      v15 = v14;
      [v14 addSubview:v11];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1003C2DA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FakePlayerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003C2E00(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10079ACE4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1003C264C(a1, a2, v2 + v6, v7);
}

uint64_t sub_1003C2EB4(uint64_t a1)
{
  v2 = sub_10079E6B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003C2F10()
{
  result = qword_100AD4008;
  if (!qword_100AD4008)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4008);
  }

  return result;
}

void sub_1003C2F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_getKeyPath();
    sub_1003C7E28(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    swift_beginAccess();
    if ((*(a3 + 352) & 1) == 0 && (sub_1007A1B44() & 1) == 0)
    {
      sub_1003C383C(a1);
    }
  }
}

char *sub_1003C3098(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *&result[OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState];
    if (v9)
    {
      swift_getObjectType();

      sub_10079F9D4();
      v13 = sub_10079F484();

      if (*(v12 + 256) == v13)
      {
        v14 = v13;
LABEL_6:
        sub_100336798(v14);

LABEL_10:
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1007A0544();
        swift_unknownObjectRelease();
        sub_1003C383C(v8);

        return (*(v6 + 8))(v8, v5);
      }

      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v18[-16] = v12;
      *&v18[-8] = v13;
      v19 = v12;
      sub_1003C7E28(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    }

    else
    {

      v14 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
      if (*(v12 + 256) == v14)
      {
        goto LABEL_6;
      }

      v16 = v14;
      v17 = swift_getKeyPath();
      __chkstk_darwin(v17);
      *&v18[-16] = v12;
      *&v18[-8] = v16;
      v19 = v12;
      sub_1003C7E28(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    }

    sub_100797A04();

    goto LABEL_10;
  }

  return result;
}

double sub_1003C33E0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState);
    v6 = Strong;

    swift_beginAccess();
    if (v2 == *(v5 + 296))
    {
      *(v5 + 296) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1003C7E28(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A04();
    }
  }

  return result;
}

double sub_1003C3554(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState);
    v6 = Strong;

    swift_beginAccess();
    if (v2 == *(v5 + 297))
    {
      *(v5 + 297) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1003C7E28(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A04();
    }
  }

  return result;
}

double sub_1003C36C8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState);
    v6 = Strong;

    swift_beginAccess();
    if (v2 == *(v5 + 298))
    {
      *(v5 + 298) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1003C7E28(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A04();
    }
  }

  return result;
}

double sub_1003C383C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState);

  v3 = sub_1007A06D4();

  swift_beginAccess();
  if (v2[27] == v3)
  {
    sub_100334D1C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003C7E28(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A04();
  }

  sub_10000E3E8(v2 + 10, v2[13]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    v6 = sub_10079F964();
    v8 = v7;
    swift_unknownObjectRelease();
    v9 = v8;
    Strong = v6;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  REActionMenuState.chapterTitle.setter(Strong, v9);
  v10 = sub_10033AE54();
  return sub_100334B58(v10, v11);
}

id sub_1003C3A44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookActionMediator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003C3B54()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState);
  swift_getKeyPath();
  sub_1003C7E28(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  v2 = *(v1 + 272);
  sub_100337314(v2, *(v1 + 280));
  return v2;
}

void sub_1003C3C14(char a1, double a2)
{
  v3 = v2;
  v6 = sub_10079FD44();
  v47 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007A0F74();
  v48 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v12 - 8);
  v14 = v44 - v13;
  v15 = sub_1007A1C14();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v45 = v9;
    v46 = v18;
    v19 = *(v3 + OBJC_IVAR____TtC5Books18BookActionMediator_paginationService + 8);
    v44[1] = swift_getObjectType();
    v44[2] = v19;
    sub_10079F934();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1003C54CC(v14);
      if (qword_100AD1500 != -1)
      {
        swift_once();
      }

      v20 = sub_10079ACE4();
      sub_100008B98(v20, qword_100AE0CB0);
      v21 = sub_10079ACC4();
      v22 = sub_1007A29B4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v21, v22, "Cannot find location for progress %f", v23, 0xCu);
      }

      return;
    }

    (*(v16 + 32))(v46, v14, v15);
    v44[0] = v3;
    v28 = *(v3 + OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState);
    sub_10000E3E8(v28 + 10, v28[13]);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v29 = sub_10079F944();
      swift_unknownObjectRelease();
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      v30 = v6;
      v31 = v29 + 1;
    }

    else
    {
      v30 = v6;
      v31 = 0;
    }

    swift_getKeyPath();
    v49 = v28;
    sub_1003C7E28(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();

    swift_beginAccess();
    if (v31 != v28[27])
    {
      if (qword_100AD1500 != -1)
      {
        swift_once();
      }

      v36 = sub_10079ACE4();
      sub_100008B98(v36, qword_100AE0CB0);
      v37 = sub_10079ACC4();
      v38 = sub_1007A29A4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v37, v38, "chapterScrub to page number %ld", v39, 0xCu);
      }

      v40 = [objc_opt_self() standardUserDefaults];
      v41 = sub_1007A2214();
      v42 = [v40 BOOLForKey:v41];

      if (!v42)
      {
        sub_10079F9D4();
        v43 = v46;
        sub_1007A1B64();
        sub_10079F3A4();

        (*(v47 + 8))(v8, v30);
        sub_10000E3E8((v44[0] + OBJC_IVAR____TtC5Books18BookActionMediator_pageTurnController), *(v44[0] + OBJC_IVAR____TtC5Books18BookActionMediator_pageTurnController + 24));
        sub_1007A0AB4();
        (v48[1].isa)(v11, v45);
        (*(v16 + 8))(v43, v15);
        return;
      }

      swift_getObjectType();
      sub_1007A0994();
LABEL_30:
      (*(v16 + 8))(v46, v15);
      return;
    }

    if (qword_100AD1500 == -1)
    {
LABEL_21:
      v32 = sub_10079ACE4();
      sub_100008B98(v32, qword_100AE0CB0);
      v33 = sub_10079ACC4();
      v34 = sub_1007A2994();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Ignoring scrub to same page", v35, 2u);
      }

      goto LABEL_30;
    }

LABEL_33:
    swift_once();
    goto LABEL_21;
  }

  if (qword_100AD1500 != -1)
  {
    swift_once();
  }

  v24 = sub_10079ACE4();
  sub_100008B98(v24, qword_100AE0CB0);
  v48 = sub_10079ACC4();
  v25 = sub_1007A2994();
  if (os_log_type_enabled(v48, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v48, v25, "Refresh not needed", v26, 2u);
  }

  v27 = v48;
}

void sub_1003C441C(NSObject *a1, char a2)
{
  v5 = sub_10079FD44();
  v50 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A0F74();
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v11 - 8);
  v13 = v46 - v12;
  v14 = sub_1007A1C14();
  __chkstk_darwin(v14);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v48 = v8;
    v49 = v15;
    v18 = v2;
    v19 = *(v2 + OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState);
    swift_getKeyPath();
    v52 = a1;
    v53 = v19;
    sub_1003C7E28(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
    sub_100797A14();
    v20 = v52;

    swift_beginAccess();
    v21 = *(v19 + 216);
    if (v21 == v20)
    {
      if (qword_100AD1500 != -1)
      {
        swift_once();
      }

      v22 = sub_10079ACE4();
      sub_100008B98(v22, qword_100AE0CB0);
      v23 = sub_10079ACC4();
      v24 = sub_1007A2994();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Ignoring scrub to same page", v25, 2u);
      }
    }

    else
    {
      v47 = v2;
      v30 = *(v2 + OBJC_IVAR____TtC5Books18BookActionMediator_paginationService);
      v31 = *(v18 + OBJC_IVAR____TtC5Books18BookActionMediator_paginationService + 8);
      v46[1] = swift_getObjectType();
      v46[2] = v30;
      sub_10079F924();
      v32 = v49;
      if ((*(v49 + 48))(v13, 1, v14) == 1)
      {
        sub_1003C54CC(v13);
        if (qword_100AD1500 != -1)
        {
          swift_once();
        }

        v33 = sub_10079ACE4();
        sub_100008B98(v33, qword_100AE0CB0);
        v34 = sub_10079ACC4();
        v35 = sub_1007A29B4();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          *(v36 + 4) = v20;
          _os_log_impl(&_mh_execute_header, v34, v35, "Cannot find location for page %ld", v36, 0xCu);
        }
      }

      else
      {
        v46[0] = v31;
        (*(v32 + 32))(v17, v13, v14);
        if (qword_100AD1500 != -1)
        {
          swift_once();
        }

        v37 = sub_10079ACE4();
        sub_100008B98(v37, qword_100AE0CB0);
        v38 = sub_10079ACC4();
        v39 = sub_1007A29A4();
        v40 = os_log_type_enabled(v38, v39);
        v41 = v48;
        if (v40)
        {
          v42 = swift_slowAlloc();
          *v42 = 134218240;
          *(v42 + 4) = v21;
          *(v42 + 12) = 2048;
          *(v42 + 14) = v52;
          _os_log_impl(&_mh_execute_header, v38, v39, "scrubbing from page number %ld to %ld", v42, 0x16u);
        }

        v43 = [objc_opt_self() standardUserDefaults];
        v44 = sub_1007A2214();
        v45 = [v43 BOOLForKey:v44];

        if (v45)
        {
          swift_getObjectType();
          sub_1007A0994();
        }

        else
        {
          sub_10079F9D4();
          sub_1007A1B64();
          sub_10079F3A4();

          (*(v50 + 8))(v7, v5);
          sub_10000E3E8((v47 + OBJC_IVAR____TtC5Books18BookActionMediator_pageTurnController), *(v47 + OBJC_IVAR____TtC5Books18BookActionMediator_pageTurnController + 24));
          sub_1007A0AB4();
          (*(v51 + 8))(v10, v41);
        }

        (*(v49 + 8))(v17, v14);
      }
    }
  }

  else
  {
    if (qword_100AD1500 != -1)
    {
      swift_once();
    }

    v26 = sub_10079ACE4();
    sub_100008B98(v26, qword_100AE0CB0);
    v52 = sub_10079ACC4();
    v27 = sub_1007A2994();
    if (os_log_type_enabled(v52, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v52, v27, "Refresh not needed", v28, 2u);
    }

    v29 = v52;
  }
}

uint64_t sub_1003C4C34(char a1)
{
  v3 = sub_1007A0404();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009864(v1 + OBJC_IVAR____TtC5Books18BookActionMediator_pageTurnController, v9);
  sub_10000E3E8(v9, v9[3]);
  if (a1)
  {
    sub_1007A0364();
  }

  else
  {
    sub_1007A0384();
  }

  sub_1007A0AC4();
  (*(v4 + 8))(v6, v3);
  return sub_1000074E0(v9);
}

uint64_t sub_1003C4D5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books18BookActionMediator_orientationLockHandler + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 8))(ObjectType);
}

uint64_t sub_1003C4DB4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10079ACE4();
  sub_100009A38(v3, a2);
  sub_100008B98(v3, a2);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

uint64_t PageSnapshotDataGenerator.snapshot(withPageNumber:size:completion:)(void (*a1)(char *, uint64_t), void (*a2)(void), uint64_t a3)
{
  v64 = a1;
  v6 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v52 - v7;
  v60 = sub_10079FD44();
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  __chkstk_darwin(v13);
  v62 = &v52 - v14;
  v15 = sub_10079ACE4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v57 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  if (qword_100AD1508 != -1)
  {
    swift_once();
  }

  v21 = sub_100008B98(v15, qword_100B23278);
  v56 = *(v16 + 16);
  v56(v20, v21, v15);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v58 = a2;
    v59 = a3;
    v55 = v3;
    swift_getObjectType();
    sub_10079F924();
    swift_unknownObjectRelease();
    v22 = sub_1007A1C14();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v8, 1, v22) != 1)
    {
      sub_1007A1B64();
      (*(v23 + 8))(v8, v22);
      v27 = v62;
      v28 = v63;
      v29 = v60;
      (*(v63 + 32))(v62, v12, v60);
      v30 = v61;
      (*(v28 + 16))(v61, v27, v29);
      v31 = sub_10079ACC4();
      v32 = sub_1007A29A4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v65 = v54;
        *v33 = 134218242;
        *(v33 + 4) = v64;
        *(v33 + 12) = 2080;
        sub_1003C7E28(&qword_100AE9A40, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
        v53 = v32;
        v34 = v61;
        v35 = sub_1007A3A74();
        v52 = v31;
        v36 = v35;
        v37 = v28;
        v39 = v38;
        v64 = *(v37 + 8);
        v64(v34, v29);
        v40 = sub_1000070F4(v36, v39, &v65);

        *(v33 + 14) = v40;
        v41 = v52;
        _os_log_impl(&_mh_execute_header, v52, v53, "Preparing snapshot for pageNumber %ld location: %s", v33, 0x16u);
        sub_1000074E0(v54);
      }

      else
      {

        v64 = *(v28 + 8);
        v64(v30, v29);
      }

      v42 = v58;
      if (swift_weakLoadStrong())
      {
        v43 = v57;
        v56(v57, v20, v15);
        v44 = v29;
        v45 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v46 = swift_allocObject();
        v47 = v59;
        *(v46 + 16) = v42;
        *(v46 + 24) = v47;
        (*(v16 + 32))(v46 + v45, v43, v15);

        v48 = v62;
        sub_10079F764();

        v49 = v48;
        v50 = v44;
      }

      else
      {
        v42();
        v49 = v62;
        v50 = v29;
      }

      v64(v49, v50);
      return (*(v16 + 8))(v20, v15);
    }

    sub_1003C54CC(v8);
    a2 = v58;
  }

  v24 = sub_10079ACC4();
  v25 = sub_1007A29A4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v24, v25, "Preparing snapshot for pageNumber %ld but broken location", v26, 0xCu);
  }

  (a2)(0);
  return (*(v16 + 8))(v20, v15);
}

uint64_t sub_1003C54CC(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1003C5534(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_10079F894();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = sub_1001F1160(&qword_100AE1080, &qword_100821718);
  __chkstk_darwin(v15);
  v17 = (&v31 - v16);
  sub_1003C8054(a1, &v31 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = a3;
    v34 = a2;
    (*(v7 + 32))(v14, v17, v6);
    v18 = *(v7 + 16);
    v18(v11, v14, v6);
    v19 = sub_10079ACC4();
    v20 = sub_1007A29B4();
    v21 = v14;
    if (os_log_type_enabled(v19, v20))
    {
      v22 = swift_slowAlloc();
      v32 = v14;
      v23 = v22;
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315138;
      v18(v35, v11, v6);
      v35 = sub_1007A22E4();
      v26 = v25;
      v27 = *(v7 + 8);
      v27(v11, v6);
      v28 = sub_1000070F4(v35, v26, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed snapshotting: %s", v23, 0xCu);
      sub_1000074E0(v24);

      v21 = v32;
    }

    else
    {

      v27 = *(v7 + 8);
      v27(v11, v6);
    }

    v34(0);
    v27(v21, v6);
  }

  else
  {
    v29 = *v17;
    v30 = *v17;
    a2(v29);
  }
}

uint64_t PageSnapshotDataGenerator.deinit()
{
  swift_weakDestroy();
  sub_10002B130(v0 + 24);
  return v0;
}

uint64_t PageSnapshotDataGenerator.__deallocating_deinit()
{
  swift_weakDestroy();
  sub_10002B130(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1003C5964()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    swift_weakLoadStrong();
    swift_unknownObjectWeakLoadStrong();
    v2 = *(v0 + 80);
    type metadata accessor for PageSnapshotDataGenerator();
    v1 = swift_allocObject();
    swift_weakInit();
    *(v1 + 32) = 0;
    swift_unknownObjectWeakInit();
    swift_weakAssign();

    *(v1 + 32) = v2;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v0 + 120) = v1;
  }

  return v1;
}

id sub_1003C5A3C()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[16];
  }

  else
  {
    sub_10000E3E8(v0 + 2, v0[5]);
    v3 = v0;
    sub_10079ECA4();
    v4 = sub_1003C5964();
    v5 = objc_allocWithZone(BEPageSnapshotCache);
    v6 = sub_1007A2214();

    v7 = [v5 initWithIdentifier:v6 dataSource:v4];

    v8 = v3[16];
    v3[16] = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_1003C5B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v18 = swift_getObjectType();
  v19 = swift_getObjectType();
  v20 = a10(a1, a2, a3, a4, a6, a7, a8, v23, ObjectType, v18, v19, a5, a9);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v20;
}

uint64_t BookActionMenuDataSource.snapshotImage(forPage:onOperationCreation:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v46 = a3;
  v43 = a4;
  v44 = a2;
  v42 = a1;
  v6 = sub_1007A1C54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1CA4();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10079EF54();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = v10;
    if (swift_weakLoadStrong())
    {
      v39 = v6;
      v40 = v7;
      v18 = *(v5 + 40);
      v38 = v9;
      sub_10000E3E8((v5 + 16), v18);
      v37 = v5;
      v19 = sub_10079ECA4();
      v36 = v20;
      swift_getObjectType();
      sub_1007A1344();
      v21 = sub_10079ED24();
      (*(v14 + 8))(v16, v13);
      sub_10079F714();
      swift_getObjectType();
      sub_10079F694();
      v23 = v22;
      v25 = v24;
      swift_unknownObjectRelease();
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      v26 = sub_1007A2D74();
      v27 = swift_allocObject();
      v28 = v36;
      v27[2] = v37;
      v27[3] = v21;
      v27[4] = v19;
      v27[5] = v28;
      v29 = v43;
      v27[6] = v42;
      v27[7] = v23;
      v27[8] = v25;
      v31 = v45;
      v30 = v46;
      v27[9] = v29;
      v27[10] = v31;
      v27[11] = v44;
      v27[12] = v30;
      aBlock[4] = sub_100343B58;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A197E8;
      v32 = _Block_copy(aBlock);

      sub_1007A1C74();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1003C7E28(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
      sub_100234698();
      v34 = v38;
      v33 = v39;
      sub_1007A3594();
      sub_1007A2D94();
      _Block_release(v32);

      swift_unknownObjectRelease();

      (*(v40 + 8))(v34, v33);
      return (*(v47 + 8))(v12, v41);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1003C6134(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(id))
{
  v16 = sub_1003C5A3C();
  v17 = sub_1007A2214();
  sub_10079FFE4();
  v18 = sub_1007A2214();

  v21[4] = a8;
  v21[5] = a9;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1002166B8;
  v21[3] = &unk_100A19940;
  v19 = _Block_copy(v21);

  v20 = [v16 snapshotForAsset:v17 page:a7 snapshotThemeIdentifier:v18 size:v19 completion:{a1, a2}];
  _Block_release(v19);

  if (v20)
  {
    a10(v20);
  }
}

UIView __swiftcall BookActionMenuDataSource.snapshotView()()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

double BookActionMenuDataSource.safeAreaInsets()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  [Strong safeAreaInsets];
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t BookActionMenuDataSource.pageNumber(forProgress:)(double a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v2 = sub_10079F944();
    swift_unknownObjectRelease();
    result = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }
  }

  return result;
}

Swift::String_optional __swiftcall BookActionMenuDataSource.chapterName(forPage:)(Swift::Int forPage)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    v2 = sub_10079F964();
    v4 = v3;
    swift_unknownObjectRelease();
    Strong = v2;
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  result.value._object = v5;
  result.value._countAndFlagsBits = Strong;
  return result;
}

Swift::String_optional __swiftcall BookActionMenuDataSource.pagesRemainingInChapterString(afterPage:)(Swift::Int afterPage)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_10:

    Strong = 0;
LABEL_11:
    v4 = 0;
    goto LABEL_14;
  }

  sub_10079F714();
  swift_getObjectType();
  v3 = sub_10079F684();
  Strong = swift_unknownObjectRelease();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v3)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong || (sub_10079F714(), swift_getObjectType(), v5 = sub_10079F684(), swift_unknownObjectRelease(), Strong = , v5 != 2))
  {
    if (__OFSUB__(afterPage--, 1))
    {
      goto LABEL_13;
    }
  }

  swift_getObjectType();
  v7 = sub_10079FA64(afterPage);
  v8 = _s5Books24BookActionMenuDataSourceC29pagesRemainingInChapterString18remainingPageCountSSSgSu_tFZ_0(v7 / v3);
  v10 = v9;

  swift_unknownObjectRelease();
  v4 = v10;
  Strong = v8;
LABEL_14:
  result.value._object = v4;
  result.value._countAndFlagsBits = Strong;
  return result;
}

UIColor_optional __swiftcall BookActionMenuDataSource.annotationColor(forPage:)(Swift::Int forPage)
{
  v1 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v1 - 8);
  v3 = v23 - v2;
  v4 = sub_1007A1C14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    sub_10079F924();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      swift_unknownObjectRelease();
      sub_1003C54CC(v3);
LABEL_19:
      Strong = 0;
      goto LABEL_41;
    }

    (*(v5 + 32))(v7, v3, v4);
    sub_10079F9D4();
    sub_1007A1BE4();
    v10 = sub_10079F434();

    if (!v10)
    {
      (*(v5 + 8))(v7, v4);
      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    v11 = sub_1007A1B94();
    v12 = sub_1007A12F4();
    if (v12 >> 62)
    {
      v13 = sub_1007A38D4();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11 >= v13)
    {
      (*(v5 + 8))(v7, v4);
      swift_unknownObjectRelease();
LABEL_18:

      goto LABEL_19;
    }

    v14 = sub_1007A12F4();
    v15 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      sub_1007A3784();
    }

    else
    {
      if (v11 < 0)
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_36;
      }
    }

    v16 = sub_1007A0C04();
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v17)
      {
LABEL_14:
        v18 = [objc_opt_self() redColor];
        swift_unknownObjectRelease();
LABEL_15:

        (*(v5 + 8))(v7, v4);
        Strong = v18;
        goto LABEL_41;
      }

LABEL_25:
      v20 = sub_1007A0C14();
      v15 = v20;
      if (!(v20 >> 62))
      {
        Strong = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (Strong)
        {
LABEL_27:
          if ((v15 & 0xC000000000000001) != 0)
          {
            v21 = sub_1007A3784();
          }

          else
          {
            if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_41;
            }

            v21 = *(v15 + 32);
          }

          v23[1] = v21;

          sub_1007A1AD4();
          sub_1007A1BE4();
          v22 = sub_10079F954();

          if (v22)
          {
            sub_1007A1604();
            if (!swift_dynamicCastClass())
            {
              swift_unknownObjectRelease();

              (*(v5 + 8))(v7, v4);
              goto LABEL_19;
            }

            sub_1007A15E4();
            v18 = sub_1007A00B4();
            swift_unknownObjectRelease();

            goto LABEL_15;
          }

          (*(v5 + 8))(v7, v4);
          swift_unknownObjectRelease();

          goto LABEL_38;
        }

LABEL_37:
        (*(v5 + 8))(v7, v4);

        swift_unknownObjectRelease();
LABEL_38:

        goto LABEL_18;
      }

LABEL_36:
      Strong = sub_1007A38D4();
      if (Strong)
      {
        goto LABEL_27;
      }

      goto LABEL_37;
    }

LABEL_24:
    v19 = sub_1007A38D4();

    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_41:
  result.value.super.isa = Strong;
  result.is_nil = v9;
  return result;
}

double BookActionMenuDataSource.contentSize()()
{
  if (!swift_weakLoadStrong())
  {
    return 0.0;
  }

  sub_10079F714();
  swift_getObjectType();
  sub_10079F694();
  v1 = v0;

  swift_unknownObjectRelease();
  return v1;
}

UIViewController __swiftcall BookActionMenuDataSource.viewController(forPage:)(Swift::Int forPage)
{
  v1 = objc_allocWithZone(UIViewController);

  return [v1 init];
}

Swift::Bool __swiftcall BookActionMenuDataSource.isVerticalContentProgression()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    sub_10079F984();
    swift_getObjectType();
    v1 = sub_10079F6D4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    LOBYTE(Strong) = v1 == 2;
  }

  return Strong;
}

Swift::Bool __swiftcall BookActionMenuDataSource.isRightToLeft()()
{
  v0 = sub_10079F514();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_10079F9D4();
    sub_10079F3B4();

    (*(v1 + 104))(v3, enum case for BookNavigationDirection.rightToLeft(_:), v0);
    sub_1003C7E28(&qword_100AE0CC8, &type metadata accessor for BookNavigationDirection, &protocol conformance descriptor for BookNavigationDirection);
    sub_1007A2574();
    sub_1007A2574();
    if (v10[2] == v10[0] && v10[3] == v10[1])
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_1007A3AB4();
    }

    swift_unknownObjectRelease();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v8(v6, v0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1003C6E5C(void (*a1)(uint64_t, uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10079F714();
    v4 = v3;
    ObjectType = swift_getObjectType();
    a1(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall BookActionMenuDataSource.isSpread()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10079F714();
    swift_getObjectType();
    v1 = sub_10079F684();
    swift_unknownObjectRelease();

    LOBYTE(Strong) = v1 == 2;
  }

  return Strong;
}

uint64_t BookActionMenuDataSource.deinit()
{
  sub_1000074E0((v0 + 16));
  sub_10002B130(v0 + 56);
  sub_10002B130(v0 + 72);
  sub_10002B130(v0 + 88);
  swift_weakDestroy();
  sub_10002B130(v0 + 104);

  return v0;
}

uint64_t BookActionMenuDataSource.__deallocating_deinit()
{
  sub_1000074E0((v0 + 16));
  sub_10002B130(v0 + 56);
  sub_10002B130(v0 + 72);
  sub_10002B130(v0 + 88);
  swift_weakDestroy();
  sub_10002B130(v0 + 104);

  return swift_deallocClassInstance();
}

id _s5Books24BookActionMenuDataSourceC29pagesRemainingInChapterString18remainingPageCountSSSgSu_tFZ_0(uint64_t a1)
{
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v30[-v7];
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v30[-v14];
  switch(a1)
  {
    case -1:
      return 0;
    case 1:
      sub_1007A2154();
      sub_100796C94();
      (*(v10 + 16))(v12, v15, v9);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v3 + 16))(v5, v8, v2);
      v18 = sub_1007A22D4(v12, 0, 0, v20, v5, "Singular pages left in chapter remaining count - normal", 55, 2);
      goto LABEL_6;
    case 0:
      sub_1007A2154();
      sub_100796C94();
      (*(v10 + 16))(v12, v15, v9);
      type metadata accessor for BundleFinder();
      v16 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:v16];
      (*(v3 + 16))(v5, v8, v2);
      v18 = sub_1007A22D4(v12, 0, 0, v17, v5, "Last page in chapter string - normal", 36, 2);
LABEL_6:
      v21 = v18;
      (*(v3 + 8))(v8, v2);
      (*(v10 + 8))(v15, v9);
      return v21;
  }

  sub_1007A2154();
  sub_100796C94();
  (*(v10 + 16))(v12, v15, v9);
  type metadata accessor for BundleFinder();
  v22 = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:v22];
  (*(v3 + 16))(v5, v8, v2);
  sub_1007A22D4(v12, 0, 0, v23, v5, "Plural pages left in chapter with remaining page count - normal", 63, 2);
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v15, v9);
  result = [objc_opt_self() imaxLocalizedUnsignedInteger:a1];
  if (result)
  {
    v25 = result;
    v26 = sub_1007A2254();
    v28 = v27;

    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10080B690;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_10000E4C4();
    *(v29 + 32) = v26;
    *(v29 + 40) = v28;
    v21 = sub_1007A2284();

    return v21;
  }

  __break(1u);
  return result;
}

double sub_1003C752C(void (*a1)(char *, uint64_t), uint64_t a2, void (**a3)(void, void))
{
  v62 = a1;
  v5 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_10079FD44();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  __chkstk_darwin(v13);
  v59 = &v50 - v14;
  v15 = sub_10079ACE4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v55 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  _Block_copy(a3);
  if (qword_100AD1508 != -1)
  {
    swift_once();
  }

  v22 = sub_100008B98(v15, qword_100B23278);
  v54 = *(v16 + 16);
  v54(v20, v22, v15);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = v21;
    v57 = v15;
    v53 = a2;
    swift_getObjectType();
    sub_10079F924();
    swift_unknownObjectRelease();
    v23 = sub_1007A1C14();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v7, 1, v23) != 1)
    {
      sub_1007A1B64();
      (*(v24 + 8))(v7, v23);
      v28 = v59;
      v29 = v60;
      v30 = v61;
      (*(v60 + 32))(v59, v12, v61);
      v31 = v58;
      (*(v29 + 16))(v58, v28, v30);
      v32 = sub_10079ACC4();
      v33 = sub_1007A29A4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v63 = v52;
        *v34 = 134218242;
        *(v34 + 4) = v62;
        *(v34 + 12) = 2080;
        sub_1003C7E28(&qword_100AE9A40, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
        v51 = v33;
        v35 = v58;
        v36 = sub_1007A3A74();
        v50 = v32;
        v37 = v36;
        v38 = v29;
        v40 = v39;
        v62 = *(v38 + 8);
        v62(v35, v30);
        v41 = sub_1000070F4(v37, v40, &v63);

        *(v34 + 14) = v41;
        v42 = v50;
        _os_log_impl(&_mh_execute_header, v50, v51, "Preparing snapshot for pageNumber %ld location: %s", v34, 0x16u);
        sub_1000074E0(v52);
      }

      else
      {

        v62 = *(v29 + 8);
        v62(v31, v30);
      }

      v43 = v56;
      v15 = v57;
      if (swift_weakLoadStrong())
      {
        v44 = v55;
        v54(v55, v20, v15);
        v45 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = sub_1003C7E70;
        *(v46 + 24) = v43;
        (*(v16 + 32))(v46 + v45, v44, v15);

        v47 = v59;
        sub_10079F764();

        v48 = v47;
      }

      else
      {
        a3[2](a3, 0);
        v48 = v59;
      }

      v62(v48, v61);
      goto LABEL_16;
    }

    sub_1003C54CC(v7);
    v15 = v57;
  }

  v25 = sub_10079ACC4();
  v26 = sub_1007A29A4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v25, v26, "Preparing snapshot for pageNumber %ld but broken location", v27, 0xCu);
  }

  a3[2](a3, 0);
LABEL_16:
  (*(v16 + 8))(v20, v15);

  return result;
}

void *sub_1003C7C00(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a8[8] = 0;
  swift_unknownObjectWeakInit();
  a8[10] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_weakInit();
  a8[14] = 0;
  swift_unknownObjectWeakInit();
  a8[15] = 0;
  a8[16] = 0;
  sub_1000077C0(a1, (a8 + 2));
  swift_unknownObjectWeakAssign();
  a8[14] = a12;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  a8[10] = a6;
  swift_unknownObjectWeakAssign();
  a8[8] = a13;
  swift_unknownObjectWeakAssign();
  return a8;
}

void *sub_1003C7D04(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for BookActionMenuDataSource();
  v18 = swift_allocObject();

  return sub_1003C7C00(a1, a2, a3, a4, a5, a6, a7, v18, a9, a10, a11, a12, a13);
}

uint64_t sub_1003C7E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003C7E84()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1003C7F48(uint64_t a1)
{
  sub_10079ACE4();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  sub_1003C5534(a1, v3, v4);
}

uint64_t sub_1003C8054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE1080, &qword_100821718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1003C80E8()
{
  if (qword_100AD17D0 != -1)
  {
    swift_once();
  }

  result = *&static REConstants.floatingButtonHeight;
  qword_100B23290 = static REConstants.floatingButtonHeight;
  return result;
}

uint64_t sub_1003C8144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_10079CCC4();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v70 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10079CF24();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079C824();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10079D074();
  v10 = *(v67 - 8);
  __chkstk_darwin(v67);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AE1088, &qword_100821808);
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  v57 = sub_1001F1160(&qword_100AE1090, &qword_100821810);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v17 = &v55 - v16;
  v62 = sub_1001F1160(&qword_100AE1098, &qword_100821818);
  __chkstk_darwin(v62);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v59 = &v55 - v21;
  __chkstk_darwin(v22);
  v60 = &v55 - v23;
  v58 = sub_1001F1160(&qword_100AE10A0, &qword_100821820);
  __chkstk_darwin(v58);
  v61 = &v55 - v24;
  v63 = sub_1001F1160(&qword_100AE10A8, &qword_100821828);
  __chkstk_darwin(v63);
  v26 = &v55 - v25;
  *v15 = sub_10079E474();
  *(v15 + 1) = v27;
  v28 = sub_1001F1160(&qword_100AE10B0, &qword_100821830);
  sub_1003C8A08(v2, &v15[*(v28 + 44)], 44.0, 44.0);
  v29 = sub_10079DDC4();
  KeyPath = swift_getKeyPath();
  v31 = &v15[*(v13 + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  sub_10079D054();
  v32 = sub_1003C9C9C();
  sub_10079D9A4();
  (*(v10 + 8))(v12, v67);
  sub_100007840(v15, &qword_100AE1088, &qword_100821808);
  v79 = *(v2 + 24);
  v67 = v2;
  v33 = *(v2 + 16);
  v78 = v33;
  v34 = v79;
  v55 = v9;
  if (v79 == 1)
  {
    if (v33)
    {
LABEL_3:
      v35 = 0;
      v36 = 0xE000000000000000;
      goto LABEL_6;
    }
  }

  else
  {

    v37 = sub_1007A29C4();
    v38 = sub_10079D244();
    sub_10079AB44(v37, &_mh_execute_header, v38, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v78, &qword_100AD55B8, &qword_100810328);
    (*(v68 + 8))(v9, v69);
    if (v76)
    {
      goto LABEL_3;
    }
  }

  v35 = sub_1003C9964();
  v36 = v39;
LABEL_6:
  v76 = v35;
  v77 = v36;
  v74 = v13;
  v75 = v32;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v40 = v57;
  sub_10079D8E4();

  (*(v56 + 8))(v17, v40);
  v41 = v64;
  sub_10079CF14();
  v42 = v59;
  sub_10079C214();
  (*(v65 + 8))(v41, v66);
  sub_100007840(v19, &qword_100AE1098, &qword_100821818);
  if (!v34)
  {

    v43 = sub_1007A29C4();
    v44 = sub_10079D244();
    sub_10079AB44(v43, &_mh_execute_header, v44, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v45 = v55;
    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v78, &qword_100AD55B8, &qword_100810328);
    (*(v68 + 8))(v45, v69);
  }

  v46 = v60;
  sub_10079C224();
  sub_100007840(v42, &qword_100AE1098, &qword_100821818);
  v47 = swift_getKeyPath();
  v48 = v46;
  v49 = v61;
  sub_10020B3C8(v48, v61, &qword_100AE1098, &qword_100821818);
  v50 = v49 + *(v58 + 36);
  *v50 = v47;
  *(v50 + 8) = 0;
  v51 = &v26[*(v63 + 36)];
  sub_1001F1160(&qword_100AE10D0, &qword_1008218A0);
  sub_10079C444();
  *v51 = 0;
  sub_10020B3C8(v49, v26, &qword_100AE10A0, &qword_100821820);
  v52 = v70;
  sub_10079C454();
  sub_1003C9D80();
  sub_1003CA35C(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v53 = v73;
  sub_10079D6F4();
  (*(v72 + 8))(v52, v53);
  return sub_100007840(v26, &qword_100AE10A8, &qword_100821828);
}

uint64_t sub_1003C8A08@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v71 = a2;
  v7 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v7 - 8);
  v9 = v63 - v8;
  v67 = sub_1001F1160(&qword_100AE10F8, &qword_1008218A8);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = v63 - v10;
  v11 = sub_1001F1160(&qword_100AE1100, &qword_1008218B0);
  __chkstk_darwin(v11 - 8);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = v63 - v15;
  v16 = sub_1001F1160(&qword_100AE1108, &qword_100831A20);
  __chkstk_darwin(v16);
  v17 = sub_1001F1160(&qword_100AE1110, &qword_1008218B8);
  v69 = *(v17 - 8);
  __chkstk_darwin(v17);
  v74 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v63 - v20;
  sub_10079E414();
  sub_10079C9F4();
  v75 = a1;
  sub_1001F1160(&qword_100AE1118, &qword_1008218C0);
  v82 = COERCE_DOUBLE(&type metadata for Solarium);
  v83 = COERCE_DOUBLE(&protocol witness table for Solarium);
  swift_getOpaqueTypeConformance2();
  sub_1003C9FF0();
  v73 = v21;
  sub_10079E434();
  v22 = sub_10079DF24();
  v23 = *(a1 + 25);
  v72 = v13;
  v70 = v17;
  v64 = a1;
  if (v23)
  {
    v24 = sub_10079DDC4();
LABEL_5:
    v63[0] = v24;
    KeyPath = swift_getKeyPath();
    v63[2] = KeyPath;
    sub_10079D3F4();
    v28 = sub_10079D3A4();
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    v29 = sub_10079D424();
    v63[1] = v29;
    sub_100007840(v9, &unk_100AD1FC0, &unk_10080B850);
    v30 = swift_getKeyPath();
    *&v78 = v22;
    *(&v78 + 1) = KeyPath;
    *&v79 = v24;
    *(&v79 + 1) = v30;
    *&v80 = v29;
    sub_10079E414();
    v31 = sub_1001F1160(&qword_100AD6DB8, &qword_100813AE8);
    v32 = sub_1001F1160(&qword_100AE1178, &qword_100821998);
    v33 = sub_10024AAA8();
    v34 = sub_1001F1234(&qword_100AD8E68, &qword_100816580);
    v35 = sub_1001F1234(&qword_100AE1180, &qword_1008219A0);
    v36 = sub_1003CA3A4();
    v37 = sub_1003CA50C();
    v82 = *&v34;
    v83 = COERCE_DOUBLE(&type metadata for Solarium);
    v84 = v35;
    v85 = v34;
    v86 = v36;
    v87 = &protocol witness table for Solarium;
    v88 = v37;
    *&v89 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v65;
    sub_10079DC64();

    v82 = *&v31;
    v83 = COERCE_DOUBLE(&type metadata for Solarium);
    v84 = v32;
    v85 = v33;
    v86 = &protocol witness table for Solarium;
    v87 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v39 = v68;
    v40 = v67;
    sub_10079D944();
    (*(v66 + 8))(v38, v40);
    v41 = v64[5];
    v66 = v64[4];
    v42 = v64[7];
    v67 = v64[6];
    v77 = 0;
    v43 = v69;
    v44 = *(v69 + 16);
    v45 = v74;
    v46 = v70;
    v44(v74, v73, v70);
    v47 = v72;
    sub_1000375EC(v39, v72);
    v48 = v71;
    v44(v71, v45, v46);
    v49 = sub_1001F1160(&qword_100AE11A8, &qword_1008219B0);
    v50 = v47;
    sub_1000375EC(v47, &v48[*(v49 + 48)]);
    v51 = &v48[*(v49 + 64)];
    *&v78 = a3;
    *(&v78 + 1) = a4;
    LOBYTE(v79) = 0;
    *(&v79 + 1) = *v76;
    DWORD1(v79) = *&v76[3];
    v52 = v66;
    *(&v79 + 1) = v66;
    *&v80 = v41;
    v53 = v41;
    v54 = v67;
    *(&v80 + 1) = v67;
    *v81 = v42;
    memset(&v81[8], 0, 32);
    *&v81[40] = 0xBFF0000000000000;
    v55 = v79;
    *v51 = v78;
    *(v51 + 1) = v55;
    v56 = v80;
    v57 = *v81;
    v58 = *&v81[32];
    *(v51 + 4) = *&v81[16];
    *(v51 + 5) = v58;
    *(v51 + 2) = v56;
    *(v51 + 3) = v57;
    v59 = v52;
    swift_unknownObjectRetain();

    sub_1000077D8(&v78, &v82, &qword_100AD6DE0, &qword_100813B00);
    sub_100007840(v39, &qword_100AE1100, &qword_1008218B0);
    v60 = *(v43 + 8);
    v60(v73, v46);
    v82 = a3;
    v83 = a4;
    LOBYTE(v84) = 0;
    *(&v84 + 1) = *v76;
    HIDWORD(v84) = *&v76[3];
    v85 = v59;
    v86 = v53;
    v87 = v54;
    v88 = v42;
    v89 = 0u;
    v90 = 0u;
    v91 = 0xBFF0000000000000;
    sub_100007840(&v82, &qword_100AD6DE0, &qword_100813B00);
    sub_100007840(v50, &qword_100AE1100, &qword_1008218B0);
    return (v60)(v74, v46);
  }

  v25 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v25;
    sub_10079B9A4(&v82);

    v24 = *&v82;
    goto LABEL_5;
  }

  type metadata accessor for ChromeStyle(0);
  sub_1003CA35C(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  result = sub_10079C474();
  __break(1u);
  return result;
}

void *sub_1003C9348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079DDC4();
  KeyPath = swift_getKeyPath();
  v6 = *(a1 + 25);
  type metadata accessor for ChromeStyle(0);
  sub_1003CA35C(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  v7 = sub_10079C484();
  v9 = v8;
  if ((v6 & 1) == 0)
  {
    v12 = sub_10079DDC4();
    v13 = sub_10079D294();
LABEL_6:
    v14 = 1.0;
    goto LABEL_7;
  }

  v10 = *a1;
  if (!*a1)
  {
    result = sub_10079C474();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  sub_10079B9A4(v18);

  v12 = *&v18[0];
  v13 = sub_10079D294();
  sub_10079FCE4();
  if ((sub_10079FAD4() & 1) == 0)
  {
    goto LABEL_6;
  }

  v14 = 0.01;
LABEL_7:
  if (qword_100AD1510 != -1)
  {
    swift_once();
  }

  if (v6)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  sub_10079E474();
  result = sub_10079BE54();
  *a2 = KeyPath;
  *(a2 + 8) = v4;
  *(a2 + 16) = v15;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  v17 = v18[1];
  *(a2 + 64) = v18[0];
  *(a2 + 80) = v17;
  *(a2 + 96) = v18[2];
  *(a2 + 112) = 256;
  *(a2 + 114) = 0;
  return result;
}

uint64_t sub_1003C9560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = sub_1001F1160(&qword_100AD8E68, &qword_100816580);
  __chkstk_darwin(v3);
  v5 = v19 - v4;
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  if (qword_100AD1510 != -1)
  {
    swift_once();
  }

  sub_10079E474();
  sub_10079BE54();
  v11 = &v5[*(v3 + 36)];
  v12 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v13 = enum case for Image.Scale.large(_:);
  v14 = sub_10079DF84();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  *v5 = v7;
  *(v5 + 1) = v6;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *(v5 + 4) = v10;
  v15 = v21;
  *(v5 + 72) = v22;
  v16 = v20;
  *(v5 + 56) = v15;
  *(v5 + 40) = v16;

  v17 = sub_10079E414();
  __chkstk_darwin(v17);
  sub_1001F1160(&qword_100AE1180, &qword_1008219A0);
  sub_1003CA3A4();
  sub_1003CA50C();
  sub_10079DC54();
  return sub_100007840(v5, &qword_100AD8E68, &qword_100816580);
}

uint64_t sub_1003C9830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079E3B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079E3A4();
  v8 = a2 + *(sub_1001F1160(&qword_100AE1180, &qword_1008219A0) + 36);
  sub_10079E3D4();
  (*(v5 + 8))(v7, v4);
  *(v8 + *(sub_1001F1160(&qword_100AD1D30, &qword_10082FC90) + 56)) = 256;
  return sub_1000077D8(a1, a2, &qword_100AD8E68, &qword_100816580);
}

uint64_t sub_1003C9964()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4(v10, 0, 0, v15, v3, "An accessibility title for a close button", 41, 2);
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_1003C9BD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C9C20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003C9C9C()
{
  result = qword_100AE10B8;
  if (!qword_100AE10B8)
  {
    sub_1001F1234(&qword_100AE1088, &qword_100821808);
    sub_100005920(&qword_100AE10C0, &qword_100AE10C8, &qword_100821868, &protocol conformance descriptor for ZStack<A>);
    sub_100005920(&unk_100AD1D10, &qword_100ADB490, &unk_10080B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE10B8);
  }

  return result;
}

unint64_t sub_1003C9D80()
{
  result = qword_100AE10D8;
  if (!qword_100AE10D8)
  {
    sub_1001F1234(&qword_100AE10A8, &qword_100821828);
    sub_1003C9E38();
    sub_100005920(&qword_100AE10F0, &qword_100AE10D0, &qword_1008218A0, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE10D8);
  }

  return result;
}

unint64_t sub_1003C9E38()
{
  result = qword_100AE10E0;
  if (!qword_100AE10E0)
  {
    sub_1001F1234(&qword_100AE10A0, &qword_100821820);
    sub_1003C9EF0();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0, &qword_10081A210, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE10E0);
  }

  return result;
}

unint64_t sub_1003C9EF0()
{
  result = qword_100AE10E8;
  if (!qword_100AE10E8)
  {
    sub_1001F1234(&qword_100AE1098, &qword_100821818);
    sub_1001F1234(&qword_100AE1088, &qword_100821808);
    sub_1003C9C9C();
    swift_getOpaqueTypeConformance2();
    sub_1003CA35C(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE10E8);
  }

  return result;
}

unint64_t sub_1003C9FF0()
{
  result = qword_100AE1120;
  if (!qword_100AE1120)
  {
    sub_1001F1234(&qword_100AE1118, &qword_1008218C0);
    sub_1003CA0A8();
    sub_100005920(&qword_100AD5558, &qword_100AD5560, &qword_100810250, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1120);
  }

  return result;
}

unint64_t sub_1003CA0A8()
{
  result = qword_100AE1128;
  if (!qword_100AE1128)
  {
    sub_1001F1234(&qword_100AE1130, &qword_1008218C8);
    sub_1003CA488(&qword_100AE1138, &qword_100AE1140, &qword_1008218D0, sub_1003CA18C);
    sub_100005920(&qword_100AD1D38, &qword_100AD1D40, &qword_10080B740, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1128);
  }

  return result;
}

unint64_t sub_1003CA18C()
{
  result = qword_100AE1148;
  if (!qword_100AE1148)
  {
    sub_1001F1234(&qword_100AE1150, &qword_1008218D8);
    sub_1003CA218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1148);
  }

  return result;
}

unint64_t sub_1003CA218()
{
  result = qword_100AE1158;
  if (!qword_100AE1158)
  {
    sub_1001F1234(&qword_100AE1160, &qword_1008218E0);
    sub_1003CA2D0();
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1158);
  }

  return result;
}

unint64_t sub_1003CA2D0()
{
  result = qword_100AE1168;
  if (!qword_100AE1168)
  {
    sub_1001F1234(&qword_100AE1170, &qword_1008218E8);
    sub_1002AAFC4();
    sub_10020AEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1168);
  }

  return result;
}

uint64_t sub_1003CA35C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003CA3A4()
{
  result = qword_100AE1188;
  if (!qword_100AE1188)
  {
    sub_1001F1234(&qword_100AD8E68, &qword_100816580);
    sub_1003CA488(&qword_100AE1190, &qword_100AE1198, &qword_1008219A8, sub_10024AAA8);
    sub_100005920(&unk_100AD1D00, &qword_100AEE3C0, &qword_1008173A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1188);
  }

  return result;
}

uint64_t sub_1003CA488(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003CA50C()
{
  result = qword_100AE11A0;
  if (!qword_100AE11A0)
  {
    sub_1001F1234(&qword_100AE1180, &qword_1008219A0);
    sub_1003CA3A4();
    sub_100005920(&qword_100AD1D28, &qword_100AD1D30, &qword_10082FC90, &protocol conformance descriptor for _BackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11A0);
  }

  return result;
}

uint64_t sub_1003CA5CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD00000000000001BLL;
  v4 = 0x80000001008BFE20;
  if (v2 == 1)
  {
    v5 = 0x80000001008BFE20;
  }

  else
  {
    v3 = 0x73754372656D6974;
    v5 = 0xEB000000006D6F74;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x66664F72656D6974;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0xD00000000000001BLL;
  if (*a2 != 1)
  {
    v8 = 0x73754372656D6974;
    v4 = 0xEB000000006D6F74;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x66664F72656D6974;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1007A3AB4();
  }

  return v11 & 1;
}

unint64_t sub_1003CA6DC()
{
  result = qword_100AE11B0;
  if (!qword_100AE11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11B0);
  }

  return result;
}

Swift::Int sub_1003CA730()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

double sub_1003CA7E0(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return result;
}

Swift::Int sub_1003CA87C(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

unint64_t sub_1003CA928@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003CC3AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1003CA958(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x80000001008BFE20;
  v5 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v5 = 0x73754372656D6974;
    v4 = 0xEB000000006D6F74;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x66664F72656D6974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1003CAA78()
{
  result = qword_100AE11B8;
  if (!qword_100AE11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11B8);
  }

  return result;
}

unint64_t sub_1003CAAD0()
{
  result = qword_100AE11C0;
  if (!qword_100AE11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11C0);
  }

  return result;
}

unint64_t sub_1003CAB28()
{
  result = qword_100AE11C8;
  if (!qword_100AE11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11C8);
  }

  return result;
}

unint64_t sub_1003CAB80()
{
  result = qword_100AE11D0;
  if (!qword_100AE11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11D0);
  }

  return result;
}

unint64_t sub_1003CABD4()
{
  result = qword_100AE11D8;
  if (!qword_100AE11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11D8);
  }

  return result;
}

unint64_t sub_1003CAC28()
{
  result = qword_100AE11E0;
  if (!qword_100AE11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11E0);
  }

  return result;
}

unint64_t sub_1003CAC80()
{
  result = qword_100AE11E8;
  if (!qword_100AE11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11E8);
  }

  return result;
}

uint64_t sub_1003CACD4@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v57 = sub_1007A2144();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1007A21B4();
  __chkstk_darwin(v2 - 8);
  v50 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v4 - 8);
  v58 = &v39 - v5;
  v62 = sub_1007967F4();
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_100796CF4();
  v7 = *(v60 - 8);
  __chkstk_darwin(v60);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = sub_1007A21D4();
  v40 = v13;
  v63 = *(v13 - 8);
  v14 = v63;
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v20 = sub_100796814();
  v53 = *(v20 - 8);
  v54 = v20;
  __chkstk_darwin(v20);
  v52 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007A2154();
  sub_100796C94();
  v51 = *(v14 + 16);
  v41 = v16;
  v51(v16, v19, v13);
  v49 = *(v7 + 16);
  v42 = v9;
  v22 = v60;
  v49(v9, v12, v60);
  v48 = type metadata accessor for BundleFinder();
  v23 = v61;
  *v61 = v48;
  v46 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v24 = *(v64 + 104);
  v64 += 104;
  v47 = v24;
  v24(v23);
  sub_100796834();
  v25 = *(v7 + 8);
  v44 = v7 + 8;
  v45 = v25;
  v26 = v12;
  v25(v12, v22);
  v27 = *(v63 + 8);
  v63 += 8;
  v43 = v27;
  v28 = v40;
  v27(v19, v40);
  sub_1007A21A4();
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_1007A2194(v65);
  v30 = v55;
  v29 = v56;
  v31 = v57;
  (*(v55 + 104))(v56, enum case for String.LocalizationValue.Placeholder.int(_:), v57);
  sub_1007A2164();
  (*(v30 + 8))(v29, v31);
  v66._countAndFlagsBits = 0x736574756E696D20;
  v66._object = 0xE800000000000000;
  sub_1007A2194(v66);
  sub_1007A21C4();
  sub_100796C94();
  v32 = v28;
  v51(v41, v19, v28);
  v33 = v60;
  v49(v42, v12, v60);
  v35 = v61;
  v34 = v62;
  v36 = v47;
  *v61 = v48;
  v36(v35, v46, v34);
  v37 = v58;
  sub_100796834();
  v45(v26, v33);
  v43(v19, v32);
  (*(v53 + 56))(v37, 0, 1, v54);
  return sub_100796304();
}

uint64_t sub_1003CB370()
{
  v0 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v0 - 8);
  v87 = &v63 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v2 - 8);
  v86 = &v63 - v3;
  v4 = sub_1007967F4();
  v5 = *(v4 - 8);
  v104 = v4;
  v105 = v5;
  __chkstk_darwin(v4);
  v7 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_100796CF4();
  v103 = *(v84 - 8);
  __chkstk_darwin(v84);
  v102 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  v90 = sub_1007A21D4();
  v12 = *(v90 - 8);
  __chkstk_darwin(v90);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v91 = sub_100796814();
  v75 = *(v91 - 8);
  v94 = v75;
  __chkstk_darwin(v91);
  v76 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v82 = &v63 - v20;
  sub_1001F1160(&qword_100AE1220, &qword_100821D38);
  v21 = sub_1001F1160(&qword_100AD3AD0, &qword_10080CCD0);
  v88 = v21;
  v22 = *(v21 - 8);
  v71 = *(v22 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v72 = 2 * v71;
  v24 = swift_allocObject();
  v73 = v24;
  *(v24 + 16) = xmmword_100812CF0;
  v85 = v24 + v23;
  v70 = *(v21 + 48);
  *(v24 + v23) = 0;
  sub_1007A2154();
  v25 = v11;
  sub_100796C94();
  v95 = *(v12 + 16);
  v96 = v12 + 16;
  v89 = v14;
  v26 = v90;
  v95(v14, v17, v90);
  v27 = v103;
  v28 = *(v103 + 16);
  v100 = v103 + 16;
  v101 = v28;
  v29 = v84;
  v28(v102, v25, v84);
  v99 = type metadata accessor for BundleFinder();
  *v7 = v99;
  v93 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v83 = *(v105 + 104);
  v105 += 104;
  v74 = v7;
  v83(v7);
  sub_100796834();
  v30 = *(v27 + 8);
  v103 = v27 + 8;
  v98 = v30;
  v31 = v25;
  v32 = v29;
  v30(v25, v29);
  v33 = *(v12 + 8);
  v92 = v12 + 8;
  v97 = v33;
  v33(v17, v26);
  v34 = v94;
  v77 = *(v94 + 56);
  v81 = v94 + 56;
  v77(v86, 1, 1, v91);
  v79 = sub_100796104();
  v35 = *(v79 - 8);
  v78 = *(v35 + 56);
  v80 = v35 + 56;
  v78(v87, 1, 1, v79);
  v68 = sub_1001F1160(&qword_100AD4A80, &qword_1008119B0);
  v69 = *(v75 + 72);
  v67 = *(v34 + 80);
  v36 = (v67 + 32) & ~v67;
  v75 = v36;
  v37 = swift_allocObject();
  v65 = xmmword_10080B690;
  *(v37 + 16) = xmmword_10080B690;
  v38 = v17;
  sub_1007A2154();
  sub_100796C94();
  v95(v89, v17, v26);
  v39 = v31;
  v40 = v32;
  v101(v102, v31, v32);
  v41 = v74;
  *v74 = v99;
  v42 = v83;
  (v83)(v41, v93, v104);
  v43 = v76;
  sub_100796834();
  v98(v39, v40);
  v44 = v90;
  v97(v17, v90);
  v45 = *(v94 + 32);
  v94 += 32;
  v66 = v45;
  v45(v37 + v36, v43, v91);
  v46 = v85;
  v48 = v86;
  v47 = v87;
  sub_100796114();
  v70 = (v46 + v71);
  v71 = *(v88 + 48);
  *v70 = 1;
  v64 = v38;
  sub_1007A2154();
  sub_100796C94();
  v95(v89, v38, v44);
  v49 = v84;
  v101(v102, v39, v84);
  *v41 = v99;
  (v42)(v41, v93, v104);
  v50 = v41;
  sub_100796834();
  v98(v39, v49);
  v51 = v64;
  v52 = v90;
  v97(v64, v90);
  v53 = v91;
  v77(v48, 1, 1, v91);
  v78(v47, 1, 1, v79);
  v54 = swift_allocObject();
  *(v54 + 16) = v65;
  sub_1007A2154();
  sub_100796C94();
  v95(v89, v51, v52);
  v55 = v84;
  v101(v102, v39, v84);
  *v50 = v99;
  (v83)(v50, v93, v104);
  v56 = v76;
  sub_100796834();
  v98(v39, v55);
  v57 = v90;
  v97(v51, v90);
  v66(v54 + v75, v56, v53);
  v58 = v86;
  v59 = v87;
  sub_100796114();
  v76 = (v85 + v72);
  v94 = *(v88 + 48);
  *v76 = 2;
  sub_1007A2154();
  sub_100796C94();
  v95(v89, v51, v57);
  v101(v102, v39, v55);
  v60 = v74;
  *v74 = v99;
  (v83)(v60, v93, v104);
  sub_100796834();
  v98(v39, v55);
  v97(v51, v57);
  v77(v58, 1, 1, v91);
  v78(v59, 1, 1, v79);
  sub_100796124();
  v61 = sub_1001EE114(v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B23298 = v61;
  return result;
}

unint64_t sub_1003CC0D4()
{
  result = qword_100AE11F0;
  if (!qword_100AE11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11F0);
  }

  return result;
}

uint64_t sub_1003CC128(uint64_t a1)
{
  v2 = sub_1003CC0D4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1003CC178()
{
  result = qword_100AE11F8;
  if (!qword_100AE11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE11F8);
  }

  return result;
}

unint64_t sub_1003CC1D0()
{
  result = qword_100AE1200;
  if (!qword_100AE1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1200);
  }

  return result;
}

unint64_t sub_1003CC228()
{
  result = qword_100AE1208;
  if (!qword_100AE1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1208);
  }

  return result;
}

double sub_1003CC27C()
{
  if (qword_100AD1518 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1003CC2D8(uint64_t a1)
{
  v2 = sub_1003CAC80();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1003CC328()
{
  result = qword_100AE1210;
  if (!qword_100AE1210)
  {
    sub_1001F1234(&qword_100AE1218, &qword_100821CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1210);
  }

  return result;
}

unint64_t sub_1003CC3AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0CEE8;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

__n128 sub_1003CC400(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1003CC424(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003CC46C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1003CC4E8@<Q0>(uint64_t (**a1)@<X0>(uint64_t a2@<X8>)@<X8>)
{
  v2 = v1;
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  v34 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  swift_getKeyPath();
  *&v37 = v11;
  sub_1003CCDD0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  sub_100797A14();

  if (*(v11 + 248) <= 0xBFu)
  {
    v12 = *(v11 + 240);
    if (v12 < *(v11 + 232))
    {
      v35 = 1;
      v13 = 0xC051000000000000;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 1;
  }

  v35 = 0;
  v13 = 0x4051000000000000;
LABEL_6:
  v14 = v13;
  v15 = *(v1 + 64);
  LOBYTE(v37) = *(v1 + 56);
  *(&v37 + 1) = v15;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079DFF4();
  if ((aBlock[0] & 1) == 0)
  {
    sub_100017E74();
    v32 = sub_1007A2D74();
    sub_1003CCD88(v1, &v37);
    v16 = swift_allocObject();
    v17 = v40;
    *(v16 + 48) = v39;
    *(v16 + 64) = v17;
    *(v16 + 80) = v41;
    v18 = v38;
    *(v16 + 16) = v37;
    *(v16 + 32) = v18;
    aBlock[4] = sub_1003CCDC0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A19B38;
    v19 = _Block_copy(aBlock);
    v31 = v8;
    v30 = v19;

    v20 = v10;
    sub_1007A1C74();
    *&v37 = _swiftEmptyArrayStorage;
    v21 = sub_1003CCDD0(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v22 = v34;
    v33 = v1;
    v29[1] = v21;
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
    v2 = v33;
    sub_1007A3594();
    v23 = v30;
    v24 = v32;
    sub_1007A2D94();
    _Block_release(v23);

    (*(v5 + 8))(v7, v4);
    (*(v22 + 8))(v20, v31);
  }

  sub_1003CCD88(v2, &v37);
  v25 = swift_allocObject();
  v26 = v40;
  *(v25 + 48) = v39;
  *(v25 + 64) = v26;
  v27 = v41;
  result = v38;
  *(v25 + 16) = v37;
  *(v25 + 32) = result;
  *(v25 + 80) = v27;
  *(v25 + 88) = v12;
  *(v25 + 96) = 0x4008000000000000;
  *(v25 + 104) = v14;
  *(v25 + 112) = v35;
  *a1 = sub_1003CCE74;
  a1[1] = v25;
  return result;
}

double sub_1003CC974(uint64_t a1)
{
  sub_10079E504();
  if (UIAccessibilityIsReduceMotionEnabled())
  {

    sub_1001F1160(&qword_100ADB850, &qword_100814020);
    sub_10079E004();
  }

  else
  {
    sub_10079BF94();
  }

  return result;
}

uint64_t sub_1003CCA4C@<X0>(uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X8>, double a5@<D0>, unint64_t a6@<D1>)
{
  *a4 = sub_10079E474();
  *(a4 + 8) = v10;
  sub_10079BEB4();
  sub_10079BEB4();
  sub_10079E474();
  sub_10079BE54();
  v11 = v59;
  v28 = v60;
  v29 = v58;
  v12 = v61;
  v26 = v63;
  v27 = v62;
  v13 = *(a2 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v39);

  *(&v25 + 1) = v39;
  *&v25 = swift_getKeyPath();
  v30 = v12;
  LOBYTE(v39) = v11;
  LOBYTE(v33) = v12;
  v15 = *(a2 + 64);
  LOBYTE(v39) = *(a2 + 56);
  v14 = v39;
  v40 = v15;
  v16 = v13;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079DFF4();
  sub_100009864(a2 + 8, v50);
  v17 = sub_10079DD64();
  *(&v51 + 1) = swift_getKeyPath();
  *&v52 = v17;
  *(&v52 + 1) = v16;
  v53 = a5;
  LOBYTE(v39) = v14;
  v40 = v15;
  v31 = v16;
  sub_10079DFF4();
  v18 = 0.0;
  if (v33 == 1)
  {
    sub_10079BEB4();
    if (a3)
    {
      v18 = 2.0 - v19;
    }

    else
    {
      v18 = v19 + -2.0;
    }
  }

  if (v33)
  {
    *&a6 = 0.0;
  }

  v54[2] = v51;
  v54[3] = v52;
  v55 = v53;
  v54[0] = v50[0];
  v54[1] = v50[1];
  v56 = v18;
  v57 = 0;
  sub_1000077D8(v54, v32, &qword_100AE1228, &qword_100821E88);
  *&v33 = v29;
  BYTE8(v33) = v11;
  *&v34 = v28;
  BYTE8(v34) = v30;
  *&v35 = v27;
  *(&v35 + 1) = v26;
  v36 = v25;
  *&v37 = v31;
  *(&v37 + 1) = a5;
  v38 = a6;
  v20 = v37;
  *(a4 + 48) = v35;
  *(a4 + 64) = v25;
  v21 = v38;
  *(a4 + 80) = v20;
  *(a4 + 96) = v21;
  v22 = v34;
  *(a4 + 16) = v33;
  *(a4 + 32) = v22;
  sub_1000077D8(v32, a4 + 112, &qword_100AE1228, &qword_100821E88);
  sub_1000077D8(&v33, &v39, &qword_100AE1230, &qword_100821E90);
  sub_100007840(v54, &qword_100AE1228, &qword_100821E88);
  sub_100007840(v32, &qword_100AE1228, &qword_100821E88);
  v39 = v29;
  LOBYTE(v40) = v11;
  v41 = v28;
  v42 = v30;
  v43 = v27;
  v44 = v26;
  v45 = v25;
  v46 = v31;
  v47 = a5;
  v48 = a6;
  v49 = 0;
  return sub_100007840(&v39, &qword_100AE1230, &qword_100821E90);
}

uint64_t sub_1003CCDD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003CCE18(uint64_t a1)
{

  sub_1000074E0((v1 + 24));

  return swift_deallocObject();
}

double sub_1003CCE88()
{
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079E004();
  return result;
}

void sub_1003CCEF4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v4 = 0;
  do
  {
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      sub_100797144();
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }

      v6 = sub_100797114();
      v8 = *a2;
      if (*(*a2 + 16))
      {
        break;
      }

LABEL_5:
      if (v4 == v2)
      {
        return;
      }
    }

    v9 = sub_10000E53C(v6, v7);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      goto LABEL_5;
    }

    v12 = *(*(v8 + 56) + 8 * v9);
    sub_1007A25C4();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
  }

  while (v4 != v2);
}

void *sub_1003CD07C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v33 = a2;
  v32 = sub_1001F1160(&qword_100AE12D0, &unk_1008220B0);
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v27 - v6;
  v8 = sub_1001F1160(&qword_100AE1278, &unk_100821EB8);
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v29 = &v27 - v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v28 = *(v5 + 72);
  v18 = _swiftEmptyArrayStorage;
  do
  {
    v19 = *(v31 + 48);
    sub_1000077D8(v17, v7, &qword_100AE12D0, &unk_1008220B0);
    v20 = v32;

    v21 = sub_100797104();
    (*(*(v21 - 8) + 32))(v13, v7, v21);
    *&v13[v19] = sub_1003CD390(*(v17 + *(v20 + 48)), v33);
    v22 = v29;
    sub_1003DD6D0(v13, v29);
    sub_1003DD6D0(v22, v10);
    v23 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_10066B908(0, v18[2] + 1, 1, v18);
    }

    v25 = v18[2];
    v24 = v18[3];
    if (v25 >= v24 >> 1)
    {
      v18 = sub_10066B908((v24 > 1), v25 + 1, 1, v18);
    }

    v18[2] = v25 + 1;
    sub_1003DD6D0(v10, v18 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25);
    v17 += v28;
    --v16;
    v3 = v23;
  }

  while (v16);
  return v18;
}

void *sub_1003CD390(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = *(sub_100797144() - 8);
  v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v5 + 72);
  v8 = _swiftEmptyArrayStorage;
  v27 = a2;
  do
  {
    v9 = sub_100797114();
    v11 = *a2;
    if (*(*a2 + 16))
    {
      v12 = sub_10000E53C(v9, v10);
      v14 = v13;

      if (v14)
      {
        sub_100009864(*(v11 + 56) + 40 * v12, &v28);
        sub_1000077C0(&v28, v31);
        sub_1000077C0(v31, &v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_10066B4F4(0, v8[2] + 1, 1, v8);
          v32 = v8;
        }

        v17 = v8[2];
        v16 = v8[3];
        if (v17 >= v16 >> 1)
        {
          v8 = sub_10066B4F4((v16 > 1), v17 + 1, 1, v8);
          v32 = v8;
        }

        v18 = v29;
        v19 = v30;
        v20 = sub_10022569C(&v28, v29);
        v21 = __chkstk_darwin(v20);
        v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v23, v21);
        sub_1003DC674(v17, v23, &v32, v18, v19);
        sub_1000074E0(&v28);
        a2 = v27;
      }
    }

    else
    {
    }

    v6 += v7;
    --v2;
  }

  while (v2);
  return v8;
}

uint64_t (*sub_1003CD5FC(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = _swiftEmptyArrayStorage;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_100009864(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        sub_1000074E0(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1000077C0(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003BD5C0(0, v9[2] + 1, 1);
          v9 = v17;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_1003BD5C0((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        v9[2] = v13 + 1;
        result = sub_1000077C0(v15, &v9[5 * v13 + 4]);
        v6 = v14;
      }

      else
      {
        result = sub_1000074E0(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

void *sub_1003CD774(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = sub_1007A3784();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1007A37D4();
        sub_1007A3804();
        v4 = v15;
        sub_1007A3814();
        sub_1007A37E4();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

void sub_1003CD920(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_1007A3854();
  __chkstk_darwin(v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = _swiftEmptyArrayStorage;
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003BD6A4(0, v23[2] + 1, 1);
          v23 = v39;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_1003BD6A4((v25 > 1), v26 + 1, 1);
          v23 = v39;
        }

        v23[2] = v26 + 1;
        v36 = v23;
        v22(v23 + v13 + v26 * v14, v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_14:
  }
}

uint64_t sub_1003CDBF0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE1248);
  sub_100008B98(v0, qword_100AE1248);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

uint64_t *ContextMenuProvider.shared.unsafeMutableAddressor()
{
  if (qword_100AD1528 != -1)
  {
    swift_once();
  }

  return &static ContextMenuProvider.shared;
}

uint64_t sub_1003CDCC8()
{
  v0 = sub_100796F44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_100796F34();
  v7 = objc_allocWithZone(type metadata accessor for ContextMenuProvider());
  (*(v1 + 16))(v3, v6, v0);
  v8 = sub_1003DBA6C(v3, v7);
  result = (*(v1 + 8))(v6, v0);
  static ContextMenuProvider.shared = v8;
  return result;
}

id _s5Books19ContextMenuProviderC11getInstanceACyFZ_0()
{
  if (qword_100AD1528 != -1)
  {
    swift_once();
  }

  v1 = static ContextMenuProvider.shared;

  return v1;
}

id sub_1003CDE50()
{
  if (qword_100AD1528 != -1)
  {
    swift_once();
  }

  v1 = static ContextMenuProvider.shared;

  return v1;
}

void *sub_1003CDEBC(void *a1, void *a2)
{
  v171 = a2;
  v168 = sub_100797144();
  v4 = *(v168 - 8);
  __chkstk_darwin(v168);
  v158 = v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v164 = v152 - v7;
  v8 = sub_100797474();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v152 - v13;
  v15 = objc_opt_self();
  v16 = a1;
  v17 = [v15 defaultManager];
  sub_100797464();
  v18 = type metadata accessor for ContextActionData();
  v19 = objc_allocWithZone(v18);
  (*(v9 + 16))(v11, v14, v8);
  v20 = sub_1003DC344(v16, v17, v11, v19);
  (*(v9 + 8))(v14, v8);
  v169 = v20;
  if (!v20)
  {
    if (qword_100AD1520 != -1)
    {
      swift_once();
    }

    v113 = sub_10079ACE4();
    sub_100008B98(v113, qword_100AE1248);
    v114 = sub_10079ACC4();
    v115 = sub_1007A29B4();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "Unable to instantiate ContextActionData", v116, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v165 = v4;
  v154 = v18;
  v22 = v171;
  v155 = v2;
  v23 = sub_1003D0350(v16, v171, v21);
  v24 = v23;
  v25 = _swiftEmptyDictionarySingleton;
  v177 = _swiftEmptyDictionarySingleton;
  if (!v23[2])
  {
LABEL_32:

    v16 = sub_1003DCCC0(v169, v22);
    v27 = v25 + 64;
    v68 = 1 << *(v25 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v28 = v69 & *(v25 + 64);
    v70 = (v68 + 63) >> 6;

    v71 = 0;
    v2 = _swiftEmptyArrayStorage;
    v171 = v16;
    if (v28)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v72 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
        goto LABEL_133;
      }

      if (v72 >= v70)
      {
        break;
      }

      v28 = *(v27 + 8 * v72);
      ++v71;
      if (v28)
      {
        v71 = v72;
        do
        {
LABEL_39:
          v73 = (*(v25 + 48) + ((v71 << 10) | (16 * __clz(__rbit64(v28)))));
          v75 = *v73;
          v74 = v73[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_10000B3D8(0, *(v2 + 16) + 1, 1, v2);
          }

          v77 = *(v2 + 16);
          v76 = *(v2 + 24);
          v22 = v77 + 1;
          if (v77 >= v76 >> 1)
          {
            v2 = sub_10000B3D8((v76 > 1), v77 + 1, 1, v2);
          }

          v28 &= v28 - 1;
          *(v2 + 16) = v22;
          v78 = v2 + 16 * v77;
          *(v78 + 32) = v75;
          *(v78 + 40) = v74;
          v16 = v171;
        }

        while (v28);
      }
    }

    v79 = sub_1007970E4();

    v2 = v169;
    v22 = 0;
    sub_1003DC87C(v79, v2, &v177);
    v27 = v80;

    sub_1003D0F38(v27);
    v28 = v81;
    if (v81 >> 62)
    {
      goto LABEL_144;
    }

    v170 = v81 & 0xFFFFFFFFFFFFFF8;
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_47;
  }

  v26 = v23[2];
  v27 = 0;
  v28 = (v23 + 4);
  v170 = v23;
  while (v27 < v24[2])
  {
    sub_100009864(v28, v173);
    sub_10000E3E8(v173, v174);
    v31 = sub_1007970A4();
    if (!v31)
    {
      v2 = sub_10000E3E8(v173, v174);
      v46 = sub_100797034();
      if (!v46)
      {
        goto LABEL_6;
      }

      v47 = v46;
      v48 = [v46 identifier];
      v22 = sub_1007A2254();
      v50 = v49;

      v51 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176[0] = v25;
      v2 = v25;
      v53 = sub_10000E53C(v22, v50);
      v55 = *(v25 + 16);
      v56 = (v54 & 1) == 0;
      v57 = __OFADD__(v55, v56);
      v58 = v55 + v56;
      if (v57)
      {
        goto LABEL_141;
      }

      v16 = v54;
      if (*(v25 + 24) < v58)
      {
        sub_1003D6E1C(v58, isUniquelyReferenced_nonNull_native, &qword_100ADAEF8, &unk_100818F40);
        v2 = v176[0];
        v53 = sub_10000E53C(v22, v50);
        if ((v16 & 1) != (v59 & 1))
        {
LABEL_147:
          sub_1007A3B24();
          __break(1u);
LABEL_148:
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        goto LABEL_25;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_25:
        if ((v16 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v2 = v176;
        v65 = v53;
        sub_1002F18E8();
        v53 = v65;
        if ((v16 & 1) == 0)
        {
LABEL_30:
          v25 = v176[0];
          *(v176[0] + 8 * (v53 >> 6) + 64) |= 1 << v53;
          v66 = (*(v25 + 48) + 16 * v53);
          *v66 = v22;
          v66[1] = v50;
          *(*(v25 + 56) + 8 * v53) = v51;

          v67 = *(v25 + 16);
          v57 = __OFADD__(v67, 1);
          v62 = v67 + 1;
          if (v57)
          {
            goto LABEL_143;
          }

          goto LABEL_31;
        }
      }

      v2 = v53;

      v25 = v176[0];
      v63 = *(v176[0] + 56);
      v64 = *(v63 + 8 * v2);
      *(v63 + 8 * v2) = v51;

      goto LABEL_5;
    }

    v32 = v31;
    v33 = [v31 identifier];
    v22 = sub_1007A2254();
    v35 = v34;

    v36 = v32;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v176[0] = v25;
    v2 = v25;
    v16 = sub_10000E53C(v22, v35);
    v39 = v25;
    v40 = *(v25 + 16);
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_136;
    }

    v43 = v38;
    if (*(v39 + 24) >= v42)
    {
      if (v37)
      {
        if ((v38 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v2 = v176;
        sub_1002F18E8();
        if ((v43 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_1003D6E1C(v42, v37, &qword_100ADAEF8, &unk_100818F40);
      v2 = v176[0];
      v44 = sub_10000E53C(v22, v35);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_147;
      }

      v16 = v44;
      if ((v43 & 1) == 0)
      {
LABEL_21:
        v25 = v176[0];
        *(v176[0] + 8 * (v16 >> 6) + 64) |= 1 << v16;
        v60 = (*(v25 + 48) + 16 * v16);
        *v60 = v22;
        v60[1] = v35;
        *(*(v25 + 56) + 8 * v16) = v36;

        v61 = *(v25 + 16);
        v57 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v57)
        {
          goto LABEL_139;
        }

LABEL_31:
        *(v25 + 16) = v62;
        goto LABEL_5;
      }
    }

    v25 = v176[0];
    v29 = *(v176[0] + 56);
    v30 = *(v29 + 8 * v16);
    *(v29 + 8 * v16) = v36;

LABEL_5:
    v177 = v25;
    v24 = v170;
    v22 = v171;
LABEL_6:
    ++v27;
    sub_1000074E0(v173);
    v28 += 40;
    if (v26 == v27)
    {
      goto LABEL_32;
    }
  }

LABEL_133:
  __break(1u);
  while (2)
  {
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
      v170 = v28 & 0xFFFFFFFFFFFFFF8;
      v82 = sub_1007A38D4();
LABEL_47:
      v153 = v22;
      v159 = v27;
      v156 = v2;
      v160 = v25;
      v167 = enum case for ContextActionType.sharedWithYou(_:);
      v83 = v165++;
      v166 = (v83 + 13);
      v162 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >= UIMenuElementSizeSmall)
      {
        v84 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v84 = v16;
      }

      v85 = _swiftEmptyArrayStorage;
      if (!v82)
      {
        goto LABEL_91;
      }

      v152[1] = v84;
      v25 = UIMenuElementSizeSmall;
      v86 = 0;
      v169 = (v28 & 0xC000000000000001);
      v161 = v28;
      v163 = v82;
LABEL_52:
      v157 = v85;
      v87 = v86;
LABEL_54:
      if (v169)
      {
        v88 = sub_1007A3784();
      }

      else
      {
        if (v87 >= *(v170 + 16))
        {
          continue;
        }

        v88 = *(v28 + 8 * v87 + 32);
      }

      break;
    }

    v2 = v88;
    v86 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      continue;
    }

    break;
  }

  objc_opt_self();
  v89 = swift_dynamicCastObjCClass();
  if (v89)
  {
    v90 = v89;
    v28 = v2;
    v91 = [v90 identifier];
    v92 = sub_1007A2254();
    v94 = v93;

    v95 = v164;
    v96 = v168;
    (*v166)(v164, v167, v168);
    v22 = sub_100797124();
    (*v165)(v95, v96);
    v27 = sub_1007A2254();
    v2 = v97;

    if (v92 == v27 && v94 == v2)
    {

      v16 = v171;
      if (!v171)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v22 = sub_1007A3AB4();

      v16 = v171;
      if ((v22 & 1) == 0 || !v171)
      {
LABEL_76:
        v102 = [v90 identifier];
        v103 = sub_1007A2254();
        v2 = v104;

        v22 = v87 + v25;
        v82 = v163;
        if (!__OFADD__(v87, v25))
        {
          v28 = v161;
          goto LABEL_79;
        }

        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }
    }

    v82 = v163;
    if (v16 >> 62)
    {
      v100 = sub_1007A38D4();
    }

    else
    {
      v100 = *(v162 + 16);
    }

    v101 = v100 - 1;
    if (__OFSUB__(v100, 1))
    {
      goto LABEL_137;
    }

    v57 = __OFADD__(v25, v101);
    v25 += v101;
    if (v57)
    {
      goto LABEL_138;
    }

    v28 = v161;
    goto LABEL_53;
  }

  objc_opt_self();
  v99 = swift_dynamicCastObjCClass();
  if (!v99)
  {

LABEL_53:
    ++v87;
    if (v86 == v82)
    {
      v85 = v157;
      goto LABEL_91;
    }

    goto LABEL_54;
  }

  v105 = v99;
  v106 = v2;
  v107 = [v105 identifier];
  v103 = sub_1007A2254();
  v2 = v108;

  v22 = v87 + v25;
  if (__OFADD__(v87, v25))
  {
    goto LABEL_146;
  }

LABEL_79:
  v109 = v157;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v109 = sub_10066B68C(0, v109[2] + 1, 1, v109);
  }

  v27 = v109[2];
  v110 = v109[3];
  v111 = v109;
  if (v27 >= v110 >> 1)
  {
    v111 = sub_10066B68C((v110 > 1), v27 + 1, 1, v109);
  }

  v111[2] = v27 + 1;
  v85 = v111;
  v112 = &v111[3 * v27];
  v112[4] = v103;
  v112[5] = v2;
  v112[6] = v22;
  if (v86 != v82)
  {
    goto LABEL_52;
  }

LABEL_91:

  if (v85[2])
  {
    sub_1001F1160(&unk_100AD3C20, &qword_100818F30);
    v117 = sub_1007A3924();
  }

  else
  {
    v117 = _swiftEmptyDictionarySingleton;
  }

  v28 = v160;
  v118 = v155;
  v119 = v153;
  v173[0] = v117;

  sub_1003DB304(v120, 1, v173);
  if (v119)
  {
    goto LABEL_148;
  }

  v121 = v118 + OBJC_IVAR___BKContextMenuProvider_figaroProvider;
  swift_beginAccess();
  sub_10022569C(v121, *(v121 + 24));
  sub_100796F94();
  swift_endAccess();
  v122 = v159;
  v173[0] = v159;
  sub_1001F1160(&qword_100AE12D8, &unk_1008220D0);
  sub_1002CD1B4(&qword_100AE12E0, &qword_100AE12D8, &unk_1008220D0);
  if ((sub_1007A28A4() & 1) == 0)
  {

    return _swiftEmptyArrayStorage;
  }

  v27 = v156;
  v176[0] = v156;
  sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData, &unk_100818764);
  v2 = v176;
  sub_1007977A4();
  if (v175)
  {

    sub_1001FF70C(v173);
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_100811390;
    sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
    sub_1003D0F38(v122);
    v125 = v124;

    v181._countAndFlagsBits = 0;
    v181._object = 0xE000000000000000;
    v184.value._countAndFlagsBits = 0;
    v184.value._object = 0;
    v178.value.super.isa = 0;
    v178.is_nil = 0;
    v126.value = 1;
    *(v123 + 32) = sub_1007A30C4(v181, v184, v178, v126, 0xFFFFFFFFFFFFFFFFLL, v125, v151);

    return v123;
  }

  else
  {
    v172 = _swiftEmptyArrayStorage;
    v128 = *(v122 + 16);
    if (v128)
    {
      v22 = 0;
      v162 = v122 + 56;
      v129 = _swiftEmptyArrayStorage;
      v163 = v128;
      v157 = (v128 - 1);
LABEL_102:
      v161 = v129;
      v130 = (v162 + 32 * v22);
      v131 = v22;
      while (1)
      {
        if (v131 >= *(v122 + 16))
        {
          goto LABEL_140;
        }

        v22 = *(v130 - 3);
        v27 = *(v130 - 2);
        v25 = *(v130 - 1);
        v132 = *v130;
        if (v25 >> 62)
        {
          if (!sub_1007A38D4())
          {
LABEL_120:

            goto LABEL_125;
          }
        }

        else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }

        v169 = v132;
        v164 = v22;
        if ((v25 & 0xC000000000000001) != 0)
        {

          v134 = sub_1007A3784();
        }

        else
        {
          if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_142;
          }

          v133 = *(v25 + 32);

          v134 = v133;
        }

        v22 = v134;
        objc_opt_self();
        v135 = swift_dynamicCastObjCClass();
        if (!v135)
        {

          v16 = v171;
          goto LABEL_124;
        }

        v136 = v135;
        v170 = v27;
        v137 = [v135 identifier];
        v27 = sub_1007A2254();
        v139 = v138;

        v140 = v158;
        v141 = v168;
        (*v166)(v158, v167, v168);
        v142 = sub_100797124();
        (*v165)(v140, v141);
        v143 = sub_1007A2254();
        v2 = v144;

        if (v27 == v143 && v139 == v2)
        {

          v122 = v159;
        }

        else
        {
          v27 = sub_1007A3AB4();

          v122 = v159;
          if ((v27 & 1) == 0)
          {

            v27 = v170;
            v16 = v171;
LABEL_124:
            v132 = v169;
            v22 = v164;
LABEL_125:
            sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
            v183._countAndFlagsBits = v22;
            v183._object = v27;
            v186.value._countAndFlagsBits = 0;
            v186.value._object = 0;
            v180.value.super.isa = 0;
            v180.is_nil = 0;
            v149.value = 1;
            sub_1007A30C4(v183, v186, v180, v149, v132, v25, v151);
LABEL_126:
            v2 = &v172;
            sub_1007A25C4();
            v28 = v160;
            if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1007A2614();
            }

            v22 = v131 + 1;
            sub_1007A2644();
            v129 = v172;
            if (v157 != v131)
            {
              goto LABEL_102;
            }

            goto LABEL_131;
          }
        }

        v16 = v171;
        if (v171)
        {
          sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);

          v145 = [v136 title];
          v27 = sub_1007A2254();
          v147 = v146;

          v179.value.super.isa = [v136 image];
          v182._countAndFlagsBits = v27;
          v182._object = v147;
          v122 = v159;
          v185.value._countAndFlagsBits = 0;
          v185.value._object = 0;
          v179.is_nil = 0;
          v148.value = 0;
          sub_1007A30C4(v182, v185, v179, v148, 0xFFFFFFFFFFFFFFFFLL, v16, v151);

          goto LABEL_126;
        }

        ++v131;

        v130 += 4;
        v28 = v160;
        if (v163 == v131)
        {
          v129 = v161;
          goto LABEL_131;
        }
      }
    }

    v129 = _swiftEmptyArrayStorage;
LABEL_131:
    v150 = v129;

    sub_1001FF70C(v173);

    return v150;
  }
}

uint64_t ContextMenuProvider.showShareSheet(with:for:)(uint64_t a1, uint64_t a2, double a3)
{
  v4[38] = a2;
  v4[39] = v3;
  v4[37] = a1;
  v5 = sub_100797474();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  sub_1007A26F4();
  v4[44] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v4[45] = v7;
  v4[46] = v6;

  return _swift_task_switch(sub_1003CF320, v7, v6);
}

id sub_1003CF320()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 296);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultManager];
  sub_100797464();
  v9 = objc_allocWithZone(type metadata accessor for ContextActionData());
  (*(v4 + 16))(v2, v1, v3);
  v10 = sub_1003DC344(v7, v8, v2, v9);
  *(v0 + 376) = v10;
  (*(v4 + 8))(v1, v3);
  if (v10)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 delegate];
    v14 = [v13 objectGraphHost];

    v15 = *&v14[OBJC_IVAR___BKObjectGraphHost_objectGraph];

    v16 = [v11 sceneManager];
    v17 = [v11 delegate];
    v18 = [v17 engagementManager];

    v19 = [v6 defaultManager];
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v21 = result;
      v22 = *(v0 + 304);
      v23 = *(v0 + 312);
      v24 = *(v0 + 296);
      v25 = [objc_opt_self() defaultHelper];
      *(v0 + 216) = &type metadata for MenuAssetDownloadManager;
      *(v0 + 224) = &off_100A13238;
      *(v0 + 192) = v19;
      *(v0 + 200) = v21;
      *(v0 + 208) = v25;
      v26 = [objc_opt_self() defaultCacheManager];
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *(v0 + 24) = v24;
      *(v0 + 32) = v15;
      *(v0 + 40) = v16;
      *(v0 + 48) = v18;
      sub_1000077C0((v0 + 192), v0 + 56);
      *(v0 + 96) = v26;
      v27 = v24;
      v28 = [v22 ba_effectiveAnalyticsTracker];
      v29 = OBJC_IVAR___BKContextMenuProvider_figaroProvider;
      swift_beginAccess();
      sub_100009864(v23 + v29, v0 + 232);
      sub_1003DD044(v0 + 16, v0 + 104);
      *(v0 + 384) = sub_1003DD0A0(v12, v0 + 104, v28, (v0 + 232));

      sub_1003DD2F0(v0 + 16);
      v36 = (&async function pointer to dispatch thunk of ShareActionItem.handle() + async function pointer to dispatch thunk of ShareActionItem.handle());
      v30 = swift_task_alloc();
      *(v0 + 392) = v30;
      *v30 = v0;
      v30[1] = sub_1003CF7B4;

      return v36();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    if (qword_100AD1520 != -1)
    {
      swift_once();
    }

    v31 = sub_10079ACE4();
    sub_100008B98(v31, qword_100AE1248);
    v32 = sub_10079ACC4();
    v33 = sub_1007A29B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to instantiate ContextActionData", v34, 2u);
    }

    v35 = *(v0 + 8);

    return v35();
  }

  return result;
}

uint64_t sub_1003CF7B4()
{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return _swift_task_switch(sub_1003CF8F8, v3, v2);
}

uint64_t sub_1003CF8F8()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003CFB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1007A26F4();
  v4[6] = sub_1007A26E4();
  v6 = sub_1007A2694();

  return _swift_task_switch(sub_1003CFB9C, v6, v5);
}

uint64_t sub_1003CFB9C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1003CFC68;
  v11 = v0[2];
  v10 = v0[3];

  return ContextMenuProvider.showShareSheet(with:for:)(v11, v10, v9);
}

uint64_t sub_1003CFC68()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

void ContextMenuProvider.performRemove(with:for:on:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v42 = a4;
  v41 = a3;
  v7 = sub_100797474();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = objc_opt_self();
  v15 = a1;
  v16 = [v14 defaultManager];
  sub_100797464();
  v17 = objc_allocWithZone(type metadata accessor for ContextActionData());
  (*(v8 + 16))(v10, v13, v7);
  v18 = sub_1003DC344(v15, v16, v10, v17);
  (*(v8 + 8))(v13, v7);
  if (!v18)
  {
    if (qword_100AD1520 != -1)
    {
      swift_once();
    }

    v37 = sub_10079ACE4();
    sub_100008B98(v37, qword_100AE1248);
    v36 = sub_10079ACC4();
    v38 = sub_1007A29B4();
    if (os_log_type_enabled(v36, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v36, v38, "Unable to instantiate ContextActionData", v39, 2u);
    }

    goto LABEL_8;
  }

  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 delegate];
  v22 = [v21 objectGraphHost];

  v23 = *&v22[OBJC_IVAR___BKObjectGraphHost_objectGraph];

  v24 = [v19 sceneManager];
  v25 = [v19 delegate];
  v26 = [v25 engagementManager];

  v27 = [v14 defaultManager];
  v28 = [objc_opt_self() sharedInstance];
  if (v28)
  {
    v29 = v28;
    v30 = [objc_opt_self() defaultHelper];
    v46 = &off_100A13238;
    *&v43 = v27;
    *(&v43 + 1) = v29;
    v45 = &type metadata for MenuAssetDownloadManager;
    v44 = v30;
    v31 = [objc_opt_self() defaultCacheManager];
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v49 = v15;
    v50 = v23;
    v51 = v24;
    v52 = v26;
    sub_1000077C0(&v43, v53);
    v53[5] = v31;
    v32 = v15;
    v33 = [a2 ba_effectiveAnalyticsTracker];
    v34 = OBJC_IVAR___BKContextMenuProvider_figaroProvider;
    v35 = v40;
    swift_beginAccess();
    sub_100009864(v35 + v34, v47);
    sub_1003DD044(v48, &v43);
    v36 = sub_1003DD344(v20, &v43, v33, v47);

    sub_1003DD2F0(v48);
    sub_1006DFA80(v41, v42);

LABEL_8:
    return;
  }

  __break(1u);
}

void *sub_1003D0350(void *a1, void *a2, double a3)
{
  v61 = a2;
  v4 = sub_100797474();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  v11 = objc_opt_self();
  v12 = a1;
  v62 = v11;
  v13 = [v11 defaultManager];
  sub_100797464();
  v14 = type metadata accessor for ContextActionData();
  v15 = objc_allocWithZone(v14);
  (*(v5 + 16))(v7, v10, v4);
  v60 = v12;
  v16 = sub_1003DC344(v12, v13, v7, v15);
  (*(v5 + 8))(v10, v4);
  if (!v16)
  {
    if (qword_100AD1520 != -1)
    {
LABEL_27:
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AE1248);
    v18 = sub_10079ACC4();
    v19 = sub_1007A29B4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unable to instantiate ContextActionData", v20, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v66 = v16;
  v59 = sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData, &unk_100818764);
  sub_1007977A4();
  if (v73 == 1)
  {
    sub_1001FF70C(&v70);
    goto LABEL_12;
  }

  sub_1000077C0(&v70, &v74);
  sub_10000E3E8(&v74, v75);
  if (sub_100797564())
  {
    v22 = [objc_msgSend(objc_opt_self() "sharedInstance")];
    swift_unknownObjectRelease();
    if ((v22 & 1) == 0)
    {

      sub_1000074E0(&v74);
      return _swiftEmptyArrayStorage;
    }
  }

  sub_1000074E0(&v74);
LABEL_12:
  v23 = *(v63 + OBJC_IVAR___BKContextMenuProvider_actionItems);
  v24 = *(v23 + 16);
  v57 = OBJC_IVAR___BKContextMenuProvider_figaroProvider;
  swift_beginAccess();
  v58 = v24;
  if (!v24)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_23:

    return v21;
  }

  v25 = 0;
  v56 = v23 + 32;
  v21 = _swiftEmptyArrayStorage;
  v55 = v14;
  v54 = v23;
  while (1)
  {
    if (v25 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v64 = *(v56 + 16 * v25);
    v75 = v14;
    v76 = v59;
    v74 = v16;
    v26 = objc_opt_self();
    v27 = v16;
    v28 = v16;
    v29 = [v26 delegate];
    v30 = [v29 objectGraphHost];

    v31 = *&v30[OBJC_IVAR___BKObjectGraphHost_objectGraph];

    v32 = [v26 sceneManager];
    v33 = [v26 delegate];
    v34 = [v33 engagementManager];

    v35 = [v62 defaultManager];
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      break;
    }

    v37 = result;
    v38 = [objc_opt_self() defaultHelper];
    *(&v72 + 1) = &off_100A13238;
    *&v70 = v35;
    *(&v70 + 1) = v37;
    v71 = v38;
    *&v72 = &type metadata for MenuAssetDownloadManager;
    v39 = [objc_opt_self() defaultCacheManager];
    v67 = &type metadata for ContextMenuPresentationContext;
    v68 = sub_1003DD65C();
    v40 = swift_allocObject();
    v66 = v40;
    swift_unknownObjectWeakInit();
    v41 = v61;
    swift_unknownObjectWeakAssign();
    v42 = v60;
    v40[3] = v60;
    v40[4] = v31;
    v40[5] = v32;
    v40[6] = v34;
    sub_1000077C0(&v70, (v40 + 7));
    v40[12] = v39;
    v43 = v42;
    v44 = [v41 ba_effectiveAnalyticsTracker];
    sub_100009864(v63 + v57, v65);
    v72 = v64;
    sub_1002256EC(&v70);
    sub_100797004();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_10066B4F4(0, v21[2] + 1, 1, v21);
      v69 = v21;
    }

    v47 = v21[2];
    v46 = v21[3];
    v16 = v27;
    if (v47 >= v46 >> 1)
    {
      v21 = sub_10066B4F4((v46 > 1), v47 + 1, 1, v21);
      v69 = v21;
    }

    v23 = v54;
    ++v25;
    v48 = v72;
    v49 = sub_10022569C(&v70, v72);
    v50 = __chkstk_darwin(v49);
    v52 = &v54 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v52, v50);
    sub_1003DC674(v47, v52, &v69, v48, *(&v48 + 1));
    sub_1000074E0(&v70);
    v14 = v55;
    if (v58 == v25)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

void sub_1003D0AF8(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v5 = sub_100796CF4();
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A21D4();
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_100797104();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007972E4();
  v31 = a1;
  if (v17)
  {
    v26 = v7;
    v28 = v8;
    v27 = *(v14 + 104);
    v27(v16, enum case for ContextActionType.ContextActionGroup.improveSuggestions(_:), v13);
    sub_1003DDB28(&unk_100AE12F0, &type metadata accessor for ContextActionType.ContextActionGroup, &protocol conformance descriptor for ContextActionType.ContextActionGroup);
    sub_1007A2574();
    sub_1007A2574();
    (*(v14 + 8))(v16, v13);
    if (v34 == v33)
    {
      sub_1007A2154();
      v18 = v30;
      (*(v30 + 16))(v29, v12, v28);
      sub_100796C94();
      v19 = sub_1007A22B4();
      v21 = v20;
      (*(v18 + 8))(v12, v28);
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    v27(v16, enum case for ContextActionType.ContextActionGroup.quickActions(_:), v13);
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
    (*(v14 + 104))(v16, enum case for ContextActionType.ContextActionGroup.quickActions(_:), v13);
  }

  sub_1003DDB28(&unk_100AE12F0, &type metadata accessor for ContextActionType.ContextActionGroup, &protocol conformance descriptor for ContextActionType.ContextActionGroup);
  v22 = v31;
  sub_1007A2574();
  sub_1007A2574();
  (*(v14 + 8))(v16, v13);
  if (v34 == v33)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  v24 = sub_1001F1160(&qword_100AE12D0, &unk_1008220B0);
  sub_1003CCEF4(*(v22 + *(v24 + 48)), v32);
  *a3 = v19;
  a3[1] = v21;
  a3[2] = v25;
  a3[3] = v23;
}

void sub_1003D0F38(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v28 = a1 + 32;
  v3 = &unk_100AF2640;
  while (1)
  {
    v4 = *(v28 + 32 * v1 + 16);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_1007A38D4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_1007A38D4();
      v9 = v26 + v6;
      if (__OFADD__(v26, v6))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v6;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v7)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1007A38D4();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = sub_1007A3794();
    v11 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v33)
    {
      goto LABEL_35;
    }

    v30 = v1;
    v31 = v2;
    v17 = v11 + 8 * v12 + 32;
    v27 = v11;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      sub_1002CD1B4(&qword_100AE12E8, v3, &unk_1008220E0);
      for (i = 0; i != v14; ++i)
      {
        sub_1001F1160(v3, &unk_1008220E0);
        v19 = v3;
        v20 = sub_1002B6B60(v32, i, v4);
        v22 = *v21;
        (v20)(v32, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v30;
    v2 = v31;
    if (v33 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v33);
      v25 = v23 + v33;
      if (v24)
      {
        goto LABEL_36;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return;
    }
  }

  v15 = v11;
  v16 = sub_1007A38D4();
  v11 = v15;
  v14 = v16;
  if (v16)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

id ContextMenuProvider.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return v3;
}

Class ContextMenuProvider.computeSwipeActionItems(with:for:swipeActionType:assetID:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v141 = a4;
  v127 = a3;
  v132 = a2;
  v138 = sub_100797144();
  v7 = *(v138 - 8);
  __chkstk_darwin(v138);
  v128 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v134 = &v126 - v10;
  v11 = sub_100797474();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v126 - v16;
  v18 = objc_opt_self();
  v19 = a1;
  v136 = v18;
  v20 = [v18 defaultManager];
  sub_100797464();
  v133 = type metadata accessor for ContextActionData();
  v21 = objc_allocWithZone(v133);
  (*(v12 + 16))(v14, v17, v11);
  v131 = v19;
  v22 = sub_1003DC344(v19, v20, v14, v21);
  (*(v12 + 8))(v17, v11);
  v135 = v22;
  if (!v22)
  {
    if (qword_100AD1520 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_13;
  }

  v126 = v7;
  v23 = *(v5 + OBJC_IVAR___BKContextMenuProvider_swipeActionItems);
  v24 = *(v23 + 16);
  v142 = (v5 + OBJC_IVAR___BKContextMenuProvider_figaroProvider);
  v25 = swift_beginAccess();
  v130 = v24;
  if (v24)
  {
    v26 = 0;
    v27 = _swiftEmptyArrayStorage;
    v129 = v23 + 32;
    v28 = v131;
    do
    {
      if (v26 >= *(v23 + 16))
      {
        goto LABEL_58;
      }

      v139 = v27;
      v140 = *(v129 + 16 * v26);
      *(&v151 + 1) = v133;
      *&v152 = sub_1003DDB28(&qword_100ADF908, type metadata accessor for ContextActionData, &unk_100818764);
      v29 = v135;
      *&v150 = v135;
      v30 = objc_opt_self();
      v31 = v29;
      v32 = [v30 delegate];
      v33 = [v32 objectGraphHost];

      v34 = *&v33[OBJC_IVAR___BKObjectGraphHost_objectGraph];

      v35 = [v30 sceneManager];
      v36 = [v30 delegate];
      v37 = [v36 engagementManager];

      v38 = [v136 defaultManager];
      v39 = [objc_opt_self() sharedInstance];
      if (!v39)
      {
        __break(1u);
LABEL_65:
        result = sub_1007A3B24();
        __break(1u);
        return result;
      }

      v40 = v39;
      v41 = [objc_opt_self() defaultHelper];
      *&v149[1] = &off_100A13238;
      *&v148 = v38;
      *(&v148 + 1) = v40;
      *&v149[0] = v41;
      *(&v149[0] + 1) = &type metadata for MenuAssetDownloadManager;
      v42 = [objc_opt_self() defaultCacheManager];
      v154[3] = &type metadata for ContextMenuPresentationContext;
      v154[4] = sub_1003DD65C();
      v43 = swift_allocObject();
      v154[0] = v43;
      swift_unknownObjectWeakInit();
      v44 = v132;
      swift_unknownObjectWeakAssign();
      v43[3] = v28;
      v43[4] = v34;
      v43[5] = v35;
      v43[6] = v37;
      sub_1000077C0(&v148, (v43 + 7));
      v43[12] = v42;
      v45 = v28;
      v46 = [v44 ba_effectiveAnalyticsTracker];
      sub_100009864(v142, v153);
      *(v149 + 8) = v140;
      sub_1002256EC(&v148);
      sub_100797004();
      sub_1000077C0(&v148, &v150);
      v27 = v139;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v144[0] = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_10066B4F4(0, v27[2] + 1, 1, v27);
        v144[0] = v27;
      }

      v49 = v27[2];
      v48 = v27[3];
      if (v49 >= v48 >> 1)
      {
        v27 = sub_10066B4F4((v48 > 1), v49 + 1, 1, v27);
        v144[0] = v27;
      }

      ++v26;
      v50 = *(&v151 + 1);
      v51 = v152;
      v52 = sub_10022569C(&v150, *(&v151 + 1));
      v53 = __chkstk_darwin(v52);
      v55 = &v126 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v55, v53);
      sub_1003DC674(v49, v55, v144, v50, v51);
      v25 = sub_1000074E0(&v150);
      v57 = v137;
    }

    while (v130 != v26);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
    v57 = v137;
  }

  __chkstk_darwin(v25);
  *(&v126 - 2) = v127;
  v63 = sub_1003CD5FC(sub_1003DD6B0, (&v126 - 4), v27);
  v64 = 0;
  v132 = (v63 + 32);
  v133 = v63;
  v139 = *(v63 + 2);
  v136 = (v126 + 8);
  while (1)
  {
    v65 = 0uLL;
    v66 = v139;
    v67 = 0uLL;
    v68 = 0uLL;
    if (v64 != v139)
    {
      if (v64 >= *(v133 + 2))
      {
        goto LABEL_59;
      }

      v66 = (v64 + 1);
      *&v148 = v64;
      sub_100009864(&v132[5 * v64], &v148 + 8);
      v65 = v148;
      v67 = v149[0];
      v68 = v149[1];
    }

    v150 = v65;
    v151 = v67;
    v152 = v68;
    if (!v68)
    {

      return v133;
    }

    v140 = v65;
    sub_1000077C0((&v150 + 8), &v148);
    v69 = v142;
    swift_beginAccess();
    sub_10000E3E8(v69, v69[3]);
    if (!*(sub_100796F84() + 16))
    {
      break;
    }

    sub_10000E53C(v141, v57);
    if ((v70 & 1) == 0)
    {
      break;
    }

    swift_endAccess();

    v71 = v142;
    swift_beginAccess();
    sub_10022569C(v71, *(v71 + 24));
    v72 = sub_100796F74();
    v74 = sub_1003D22DC(v153, v141, v57);
    if (!*v73)
    {
      (v74)(v153, 0);
      v72(v154, 0);
      goto LABEL_20;
    }

    v75 = v73;
    v131 = v72;
    sub_10000E3E8(&v148, *(&v149[0] + 1));
    v76 = v128;
    sub_100797014();
    v77 = sub_100797114();
    v79 = v78;
    (*v136)(v76, v138);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *v75;
    v81 = v143;
    *v75 = 0x8000000000000000;
    v83 = sub_10000E53C(v77, v79);
    v84 = v81[2];
    v85 = (v82 & 1) == 0;
    v86 = v84 + v85;
    if (__OFADD__(v84, v85))
    {
      goto LABEL_61;
    }

    v87 = v82;
    if (v81[3] >= v86)
    {
      if (v80)
      {
        if ((v82 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        sub_1002F15B4();
        if ((v87 & 1) == 0)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      sub_1003D4D6C(v86, v80);
      v88 = sub_10000E53C(v77, v79);
      if ((v87 & 1) != (v89 & 1))
      {
        goto LABEL_65;
      }

      v83 = v88;
      if ((v87 & 1) == 0)
      {
LABEL_51:
        v121 = v143;
        v143[(v83 >> 6) + 8] |= 1 << v83;
        v123 = (v121[6] + 16 * v83);
        *v123 = v77;
        v123[1] = v79;
        *(v121[7] + 8 * v83) = v140;
        v124 = v121[2];
        v102 = __OFADD__(v124, 1);
        v125 = v124 + 1;
        if (v102)
        {
          goto LABEL_62;
        }

        v121[2] = v125;
        goto LABEL_53;
      }
    }

    v121 = v143;
    *(v143[7] + 8 * v83) = v140;
LABEL_53:
    *v75 = v121;

    (v74)(v153, 0);
    v131(v154, 0);
    swift_endAccess();
    v57 = v137;
LABEL_21:
    sub_1000074E0(&v148);
    v64 = v66;
  }

  swift_endAccess();

  sub_10000E3E8(&v148, *(&v149[0] + 1));

  v90 = v134;
  sub_100797014();
  v91 = sub_100797114();
  v93 = v92;
  (*v136)(v90, v138);
  v145 = v91;
  v146 = v93;
  v147 = v140;
  sub_1001F1160(&unk_100AD3C20, &qword_100818F30);
  v94 = sub_1007A3924();

  v95 = v145;
  v96 = v146;
  v97 = v147;

  v98 = sub_10000E53C(v95, v96);
  if ((v99 & 1) == 0)
  {
    v94[(v98 >> 6) + 8] |= 1 << v98;
    v100 = (v94[6] + 16 * v98);
    *v100 = v95;
    v100[1] = v96;
    *(v94[7] + 8 * v98) = v97;
    v101 = v94[2];
    v102 = __OFADD__(v101, 1);
    v103 = v101 + 1;
    if (v102)
    {
      goto LABEL_56;
    }

    v94[2] = v103;

    sub_100007840(&v145, &qword_100AE1270, &qword_100821EB0);
    v104 = v142;
    swift_beginAccess();
    sub_10022569C(v104, *(v104 + 24));
    v105 = sub_100796F74();
    v107 = v106;
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v144[0] = *v107;
    v109 = v144[0];
    *v107 = 0x8000000000000000;
    v110 = sub_10000E53C(v141, v57);
    v112 = *(v109 + 16);
    v113 = (v111 & 1) == 0;
    v102 = __OFADD__(v112, v113);
    v114 = v112 + v113;
    if (v102)
    {
      goto LABEL_57;
    }

    v115 = v111;
    if (*(v109 + 24) >= v114)
    {
      if (v108)
      {
        goto LABEL_41;
      }

      v122 = v110;
      sub_1002F18FC();
      v110 = v122;
      v117 = v144[0];
      if (v115)
      {
        goto LABEL_18;
      }

LABEL_42:
      v117[(v110 >> 6) + 8] |= 1 << v110;
      v118 = (v117[6] + 16 * v110);
      *v118 = v141;
      v118[1] = v57;
      *(v117[7] + 8 * v110) = v94;
      v119 = v117[2];
      v102 = __OFADD__(v119, 1);
      v120 = v119 + 1;
      if (v102)
      {
        goto LABEL_60;
      }

      v117[2] = v120;
    }

    else
    {
      sub_1003DA040(v114, v108, &qword_100ADAEF0, &qword_100818F38);
      v110 = sub_10000E53C(v141, v57);
      if ((v115 & 1) != (v116 & 1))
      {
        goto LABEL_65;
      }

LABEL_41:
      v117 = v144[0];
      if ((v115 & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_18:
      *(v117[7] + 8 * v110) = v94;
    }

    *v107 = v117;
    v105(v154, 0);
LABEL_20:
    swift_endAccess();
    goto LABEL_21;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  swift_once();
LABEL_13:
  v58 = sub_10079ACE4();
  sub_100008B98(v58, qword_100AE1248);
  v59 = sub_10079ACC4();
  v60 = sub_1007A29B4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Unable to instantiate ContextActionData", v61, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003D20F8(void *a1, uint64_t a2)
{
  v13[1] = a2;
  v13[0] = sub_1007970D4();
  v3 = *(v13[0] - 8);
  __chkstk_darwin(v13[0]);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100797144();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(a1, a1[3]);
  sub_100797014();
  sub_1007970F4();
  (*(v7 + 8))(v9, v6);
  v10 = sub_1007970C4();
  (*(v3 + 8))(v5, v13[0]);
  if (v10)
  {
    sub_10000E3E8(a1, a1[3]);
    v11 = sub_100796FF4();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void (*sub_1003D22DC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1003DB680(v6, a2, a3);
  return sub_1001FD958;
}

void *ContextMenuProvider.contextMenuActionItems(with:for:)(void *a1, void *a2)
{
  v3 = v2;
  v99 = sub_1001F1160(&qword_100AE1278, &unk_100821EB8);
  v93 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = &v93 - v8;
  v103 = sub_100797144();
  v96 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v102 = &v93 - v12;
  v13 = sub_1003D0350(a1, a2, v11);
  v14 = v13;
  v15 = v13[2];
  if (v15)
  {
    v16 = 0;
    v17 = (v13 + 4);
    v18 = _swiftEmptyArrayStorage;
    while (v16 < v14[2])
    {
      sub_100009864(v17, &v107);
      sub_10000E3E8(&v107, *(&v108 + 1));
      if (sub_100796FF4())
      {
        sub_1000077C0(&v107, &v104);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003BD5C0(0, v18[2] + 1, 1);
          v18 = v112;
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          sub_1003BD5C0((v20 > 1), v21 + 1, 1);
          v18 = v112;
        }

        v18[2] = v21 + 1;
        sub_1000077C0(&v104, &v18[5 * v21 + 4]);
      }

      else
      {
        sub_1000074E0(&v107);
      }

      ++v16;
      v17 += 40;
      if (v15 == v16)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_76;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_13:
  v95 = v3;

  v22 = _swiftEmptyDictionarySingleton;
  v112 = _swiftEmptyDictionarySingleton;
  v101 = v18[2];
  if (v101)
  {
    v23 = 0;
    v24 = (v18 + 4);
    v25 = (v96 + 8);
    do
    {
      if (v23 >= v18[2])
      {
        goto LABEL_77;
      }

      sub_100009864(v24, &v107);
      sub_10000E3E8(&v107, *(&v108 + 1));
      v27 = v102;
      sub_100797014();
      v28 = sub_100797114();
      v30 = v29;
      (*v25)(v27, v103);
      sub_1000077C0(&v107, &v104);
      v31 = v112;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v111 = v31;
      v34 = sub_10000E53C(v28, v30);
      v35 = v31[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_78;
      }

      v38 = v33;
      if (v31[3] >= v37)
      {
        if (v32)
        {
          if (v33)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_1002F1910();
          if (v38)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        sub_1003D5314(v37, v32, &unk_100ADAEE0, &unk_1008220A0, sub_1001FF7E0);
        v39 = sub_10000E53C(v28, v30);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_85;
        }

        v34 = v39;
        if (v38)
        {
LABEL_15:

          v22 = v111;
          v26 = (v111[7] + 40 * v34);
          sub_1000074E0(v26);
          sub_1000077C0(&v104, v26);
          goto LABEL_16;
        }
      }

      v22 = v111;
      v111[(v34 >> 6) + 8] |= 1 << v34;
      v41 = (v22[6] + 16 * v34);
      *v41 = v28;
      v41[1] = v30;
      sub_1000077C0(&v104, v22[7] + 40 * v34);
      v42 = v22[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_83;
      }

      v22[2] = v44;
LABEL_16:
      v23 = (v23 + 1);
      v112 = v22;
      v24 += 40;
    }

    while (v101 != v23);
  }

  v45 = 1 << *(v22 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v22[8];
  v48 = (v45 + 63) >> 6;

  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
  if (v47)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v51 >= v48)
    {
      break;
    }

    v47 = v22[v51 + 8];
    ++v49;
    if (v47)
    {
      v49 = v51;
      do
      {
LABEL_36:
        v52 = __clz(__rbit64(v47)) | (v49 << 6);
        v53 = (v22[6] + 16 * v52);
        v55 = *v53;
        v54 = v53[1];
        sub_100009864(v22[7] + 40 * v52, &v108);
        *&v107 = v55;
        *(&v107 + 1) = v54;
        v104 = v107;
        v105[0] = v108;
        v105[1] = v109;
        v106 = v110;
        v56 = v107;

        sub_1000074E0(v105);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_10000B3D8(0, *(v50 + 2) + 1, 1, v50);
        }

        v58 = *(v50 + 2);
        v57 = *(v50 + 3);
        if (v58 >= v57 >> 1)
        {
          v50 = sub_10000B3D8((v57 > 1), v58 + 1, 1, v50);
        }

        v47 &= v47 - 1;
        *(v50 + 2) = v58 + 1;
        *&v50[16 * v58 + 32] = v56;
      }

      while (v47);
    }
  }

  v59 = sub_1007970E4();

  v60 = sub_1003CD07C(v59, &v112);
  v94 = 0;

  v61 = v60[2];
  v101 = v60;
  if (v61)
  {
    v62 = v60 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v63 = _swiftEmptyArrayStorage;
    v64 = *(v93 + 72);
    while (1)
    {
      v65 = v97;
      sub_1000077D8(v62, v97, &qword_100AE1278, &unk_100821EB8);
      v66 = v65;
      v67 = v98;
      sub_1003DD6D0(v66, v98);
      v68 = *(v67 + *(v99 + 48));
      v69 = sub_100797104();
      (*(*(v69 - 8) + 8))(v67, v69);
      v70 = *(v68 + 16);
      v71 = v63[2];
      v72 = v71 + v70;
      if (__OFADD__(v71, v70))
      {
        goto LABEL_80;
      }

      v73 = swift_isUniquelyReferenced_nonNull_native();
      if (v73 && v72 <= v63[3] >> 1)
      {
        if (!*(v68 + 16))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v71 <= v72)
        {
          v74 = v71 + v70;
        }

        else
        {
          v74 = v71;
        }

        v63 = sub_10066B4F4(v73, v74, 1, v63);
        if (!*(v68 + 16))
        {
LABEL_44:

          if (v70)
          {
            goto LABEL_81;
          }

          goto LABEL_45;
        }
      }

      if ((v63[3] >> 1) - v63[2] < v70)
      {
        goto LABEL_82;
      }

      sub_1001F1160(&qword_100AE0B68, &qword_100821480);
      swift_arrayInitWithCopy();

      if (v70)
      {
        v75 = v63[2];
        v43 = __OFADD__(v75, v70);
        v76 = v75 + v70;
        if (v43)
        {
          goto LABEL_84;
        }

        v63[2] = v76;
      }

LABEL_45:
      v62 += v64;
      if (!--v61)
      {
        goto LABEL_60;
      }
    }
  }

  v63 = _swiftEmptyArrayStorage;
LABEL_60:
  v102 = v63[2];
  if (v102)
  {
    v77 = 0;
    v78 = (v63 + 4);
    v79 = _swiftEmptyArrayStorage;
    v80 = (v96 + 8);
    while (v77 < v63[2])
    {
      *&v107 = v77;
      sub_100009864(v78, &v107 + 8);
      sub_10000E3E8(&v107 + 1, v109);
      v81 = v100;
      sub_100797014();
      v82 = sub_100797114();
      v84 = v83;
      (*v80)(v81, v103);
      sub_100007840(&v107, &qword_100AE1280, &qword_100821EC8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_10066B68C(0, v79[2] + 1, 1, v79);
      }

      v86 = v79[2];
      v85 = v79[3];
      if (v86 >= v85 >> 1)
      {
        v79 = sub_10066B68C((v85 > 1), v86 + 1, 1, v79);
      }

      v79[2] = v86 + 1;
      v87 = &v79[3 * v86];
      v87[5] = v84;
      v87[6] = v77;
      v87[4] = v82;
      v78 += 40;
      if (v102 == ++v77)
      {
        goto LABEL_70;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    sub_1007A3B24();
    __break(1u);
    goto LABEL_86;
  }

  v79 = _swiftEmptyArrayStorage;
LABEL_70:

  if (v79[2])
  {
    sub_1001F1160(&unk_100AD3C20, &qword_100818F30);
    v88 = sub_1007A3924();
  }

  else
  {
    v88 = _swiftEmptyDictionarySingleton;
  }

  v89 = v94;
  *&v107 = v88;

  sub_1003DB304(v90, 1, &v107);
  if (!v89)
  {

    v91 = v95 + OBJC_IVAR___BKContextMenuProvider_figaroProvider;
    swift_beginAccess();
    sub_10022569C(v91, *(v91 + 24));
    sub_100796F94();
    swift_endAccess();

    return v101;
  }

LABEL_86:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t ContextMenuProvider.menuElements(with:for:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_1007A26F4();
  v3[22] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[23] = v5;
  v3[24] = v4;

  return _swift_task_switch(sub_1003D2E98, v5, v4);
}

uint64_t sub_1003D2E98(double a1)
{
  v2 = sub_1003D0350(*(v1 + 152), *(v1 + 160), a1);
  *(v1 + 136) = _swiftEmptyDictionarySingleton;
  v4 = (v1 + 136);
  *(v1 + 200) = v2;
  v5 = *(v2 + 16);
  *(v1 + 208) = v5;
  if (v5)
  {
    v6 = 0;
    v19 = (v1 + 16);
    v7 = (v1 + 96);
    while (1)
    {
      *(v1 + 224) = _swiftEmptyDictionarySingleton;
      *(v1 + 232) = _swiftEmptyDictionarySingleton;
      *(v1 + 216) = v6;
      v8 = *(v1 + 200);
      if (v6 >= *(v8 + 16))
      {
        __break(1u);
        return dispatch thunk of AsyncContextActionItem.asyncSubMenu.getter(v2, v3);
      }

      sub_100009864(v8 + 40 * v6 + 32, v1 + 56);
      sub_1001F1160(&qword_100AE0B68, &qword_100821480);
      sub_1001F1160(&qword_100AE1288, &qword_100821ED8);
      if (swift_dynamicCast())
      {
        break;
      }

      *(v1 + 128) = 0;
      *v7 = 0u;
      *(v1 + 112) = 0u;
      v2 = sub_100007840(v7, &qword_100AE1290, &qword_100821EE0);
      v6 = *(v1 + 216) + 1;
      if (v6 == *(v1 + 208))
      {
        v4 = (v1 + 136);
        goto LABEL_7;
      }
    }

    sub_1000077C0(v7, v19);
    v16 = *(v1 + 40);
    v17 = *(v1 + 48);
    sub_10000E3E8(v19, v16);
    v18 = swift_task_alloc();
    *(v1 + 240) = v18;
    *v18 = v1;
    v18[1] = sub_1003D3130;
    v2 = v16;
    v3 = v17;

    return dispatch thunk of AsyncContextActionItem.asyncSubMenu.getter(v2, v3);
  }

  else
  {
LABEL_7:

    v9 = *(v1 + 160);
    v10 = *(v1 + 152);

    v11 = sub_1003CDEBC(v10, v9);

    sub_1003DC70C(v11, _swiftEmptyDictionarySingleton, v4);
    v13 = v12;

    swift_bridgeObjectRelease_n();
    v14 = *(v1 + 8);

    return v14(v13);
  }
}

uint64_t sub_1003D3130(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return _swift_task_switch(sub_1003D3258, v4, v3);
}

uint64_t sub_1003D3258()
{
  v1 = *(v0 + 248);
  if (!v1)
  {
    v17 = sub_1000074E0((v0 + 16));
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);
    goto LABEL_17;
  }

  v2 = *(v0 + 224);
  v3 = [*(v0 + 248) title];
  v4 = sub_1007A2254();
  v6 = v5;

  v7 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 144) = v2;
  v9 = sub_10000E53C(v4, v6);
  v11 = *(v2 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v3) = v10;
  if (*(*(v0 + 224) + 24) >= v14)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_13:
    v24 = v9;
    sub_1002F1938();
    v9 = v24;
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_14:
    v19 = *(v0 + 144);
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v25 = (v19[6] + 16 * v9);
    *v25 = v4;
    v25[1] = v6;
    *(v19[7] + 8 * v9) = v7;

    v26 = v19[2];
    v13 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v13)
    {
LABEL_28:
      __break(1u);
      return dispatch thunk of AsyncContextActionItem.asyncSubMenu.getter(v17, v18);
    }

    v19[2] = v27;
    goto LABEL_16;
  }

  sub_1003D6E1C(v14, isUniquelyReferenced_nonNull_native, &qword_100ADAED8, &unk_100818F20);
  v9 = sub_10000E53C(v4, v6);
  if ((v3 & 1) != (v15 & 1))
  {

    return sub_1007A3B24();
  }

LABEL_10:
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = v9;

  v19 = *(v0 + 144);
  v22 = v19[7];
  v23 = *(v22 + 8 * v21);
  *(v22 + 8 * v21) = v7;

LABEL_16:
  *(v0 + 136) = v19;
  v17 = sub_1000074E0((v0 + 16));
  v20 = v19;
LABEL_17:
  v28 = *(v0 + 216) + 1;
  if (v28 != *(v0 + 208))
  {
    while (1)
    {
      *(v0 + 224) = v19;
      *(v0 + 232) = v20;
      *(v0 + 216) = v28;
      v29 = *(v0 + 200);
      if (v28 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_100009864(v29 + 40 * v28 + 32, v0 + 56);
      sub_1001F1160(&qword_100AE0B68, &qword_100821480);
      sub_1001F1160(&qword_100AE1288, &qword_100821ED8);
      if (swift_dynamicCast())
      {
        break;
      }

      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      v17 = sub_100007840(v0 + 96, &qword_100AE1290, &qword_100821EE0);
      v28 = *(v0 + 216) + 1;
      if (v28 == *(v0 + 208))
      {
        goto LABEL_21;
      }
    }

    sub_1000077C0((v0 + 96), v0 + 16);
    v36 = *(v0 + 40);
    v37 = *(v0 + 48);
    sub_10000E3E8((v0 + 16), v36);
    v38 = swift_task_alloc();
    *(v0 + 240) = v38;
    *v38 = v0;
    v38[1] = sub_1003D3130;
    v17 = v36;
    v18 = v37;

    return dispatch thunk of AsyncContextActionItem.asyncSubMenu.getter(v17, v18);
  }

LABEL_21:

  v30 = *(v0 + 160);
  v31 = *(v0 + 152);

  v32 = sub_1003CDEBC(v31, v30);

  sub_1003DC70C(v32, v19, (v0 + 136));
  v34 = v33;
  swift_bridgeObjectRelease_n();

  v35 = *(v0 + 8);

  return v35(v34);
}