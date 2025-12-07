void sub_1000D4CFC()
{
  sub_10000C398();
  if (v6)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    sub_10007B9A4(&qword_10026BF80, &qword_1001EA2D0);
    v9 = sub_10001CD54();
    sub_100019BE0(v9);
    sub_100023D60(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_100002FD8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = sub_10007B9A4(&qword_10026BF88, &qword_1001EA2D8);
    sub_100012C1C(v15);
  }
}

void sub_1000D4E00()
{
  sub_10000C398();
  if (v4)
  {
    sub_100002EBC();
    if (v5 != v6)
    {
      sub_10000AE9C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_1000181BC();
  if (v2)
  {
    sub_10007B9A4(&qword_10026BEE0, &qword_1001EBCD0);
    v7 = sub_10001CD54();
    j__malloc_size(v7);
    sub_10000A3BC();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_1000D4ECC()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10000B1EC(v2, v5, &qword_100269C28, &qword_1001E68D8);
  sub_10000A610();
  type metadata accessor for URLQueryItem();
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v9 = sub_1000079E8(v8);
    sub_1000D68D4(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D4FA8()
{
  sub_1000074C8();
  if (v2)
  {
    sub_1000083B0();
    if (v3 != v4)
    {
      sub_1000067D8();
      if (v3)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  v5 = *(v0 + 16);
  sub_10000A61C();
  sub_1000D65A8(v5, v6, v7, v8, v9);
  v10 = sub_10000A610();
  type metadata accessor for MediaCatalogSyncPageMetadata(v10);
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v12 = sub_1000079E8(v11);
    sub_1000D68D4(v12, v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D507C()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10000B1EC(v2, v5, &qword_10026BF90, &qword_1001EA2E0);
  sub_10000A610();
  type metadata accessor for BagValueType();
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v9 = sub_1000079E8(v8);
    sub_1000D68D4(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D5158()
{
  sub_10000C398();
  if (v4)
  {
    sub_100002EBC();
    if (v5 != v6)
    {
      sub_10000AE9C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    v7 = sub_10007B9A4(&qword_10026BF98, &qword_1001EA2E8);
    v8 = sub_100005F6C(v7);
    v9 = j__malloc_size(v8);
    sub_100007F80(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_1000071C0();
  if (v1)
  {
    if (v8 != v0 || &v11[56 * v2] <= v10)
    {
      memmove(v10, v11, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1000D5230(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1000D65A8(v9, a2, &qword_10026BED0, &qword_1001EA1C0, type metadata accessor for MediaCatalogSyncPage);
  v11 = *(type metadata accessor for MediaCatalogSyncPage(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1000D68D4(a4 + v12, v9, v10 + v12, type metadata accessor for MediaCatalogSyncPage);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000D5354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncPage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000D53B8()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10000B1EC(v2, v5, &qword_100269FA0, &qword_1001EA1D0);
  v8 = sub_10000A610();
  type metadata accessor for ScheduleInfo.Metadata(v8);
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v10 = sub_1000079E8(v9);
    sub_1000D68D4(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D54B8()
{
  sub_10000C398();
  if (v4)
  {
    sub_100002EBC();
    if (v5 != v6)
    {
      sub_10000AE9C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    sub_10007B9A4(&qword_10026BF70, &qword_1001EA2A8);
    v7 = sub_10001CD54();
    sub_100019BE0(v7);
    sub_100023D60(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000071C0();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D5584()
{
  sub_10000C398();
  if (v4)
  {
    sub_100002EBC();
    if (v5 != v6)
    {
      sub_10000AE9C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_1000181BC();
  if (v2)
  {
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * ((v8 - 32) / 24);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[24 * v3] <= v9)
    {
      memmove(v9, v10, 24 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D5678()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10000B1EC(v2, v5, &qword_10026A040, &qword_1001EA2A0);
  v8 = sub_10000A610();
  type metadata accessor for ContentInfo(v8);
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v10 = sub_1000079E8(v9);
    sub_1000D68D4(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D5754()
{
  sub_10000C398();
  if (v4)
  {
    sub_100002EBC();
    if (v5 != v6)
    {
      sub_10000AE9C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    v7 = sub_10007B9A4(&qword_10026BF78, &unk_1001EA2C0);
    v8 = sub_100005F6C(v7);
    v9 = j__malloc_size(v8);
    sub_100007F80(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_1000071C0();
  if (v1)
  {
    if (v8 != v0 || &v11[72 * v2] <= v10)
    {
      memmove(v10, v11, 72 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D5830()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10000B1EC(v2, v5, &qword_100269FE8, &qword_1001EA250);
  v8 = sub_10000A610();
  type metadata accessor for MercuryCacheMetadata(v8);
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v10 = sub_1000079E8(v9);
    sub_1000D68D4(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D590C()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10000B1EC(v2, v5, &qword_100269FF0, &qword_1001E7560);
  v8 = sub_10000A610();
  type metadata accessor for CacheUpdateRun(v8);
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v10 = sub_1000079E8(v9);
    sub_1000D68D4(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D59E8()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10000B1EC(v2, v5, &qword_10026BF48, &unk_1001EA258);
  v8 = sub_10000A610();
  type metadata accessor for MercuryCacheUpdateData.DataKind(v8);
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v10 = sub_1000079E8(v9);
    sub_1000D68D4(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D5AC4()
{
  sub_10000C398();
  if (v6)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    v9 = sub_10007B9A4(&qword_10026BF38, &unk_1001EA240);
    v4 = 40;
    v10 = sub_100005F6C(v9);
    v11 = j__malloc_size(v10);
    sub_100007F80(v11);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v10 != v0 || v5 + 40 * v2 <= v4)
    {
      v13 = sub_100002FD8();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    v16 = sub_10007B9A4(&qword_10026BF40, &qword_1001EE040);
    sub_100012C1C(v16);
  }
}

void sub_1000D5BAC()
{
  sub_10000C398();
  if (v3)
  {
    sub_100002EBC();
    if (v5 != v6)
    {
      sub_10000AE9C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000D64A0(*(v0 + 16), v4);
  sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v8 = sub_1000079E8(v7);
    sub_1000D67B0(v8, v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D5C7C()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10000B1EC(v2, v5, &unk_10026AE40, &unk_1001E6660);
  sub_10000A610();
  type metadata accessor for LogInterpolation();
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v9 = sub_1000079E8(v8);
    sub_1000D68D4(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D5D58()
{
  sub_10000C398();
  if (v6)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    sub_10007B9A4(&qword_10026BED8, &qword_1001EA1C8);
    v9 = sub_10001CD54();
    sub_100019BE0(v9);
    sub_100023D60(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v3 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = sub_100002FD8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
    sub_100012C1C(v15);
  }
}

void sub_1000D5E38()
{
  sub_10000C398();
  if (v6)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    v9 = sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
    v4 = 48;
    v10 = sub_100005F6C(v9);
    v11 = j__malloc_size(v10);
    sub_100007F80(v11);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v10 != v0 || v5 + 48 * v2 <= v4)
    {
      v13 = sub_100002FD8();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    v16 = sub_10007B9A4(&unk_100271F40, &unk_1001EA290);
    sub_100012C1C(v16);
  }
}

void sub_1000D5F20()
{
  sub_10000C398();
  if (v6)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    sub_10007B9A4(&qword_10026BF60, &qword_1001EA278);
    v9 = sub_10001CD54();
    sub_100019BE0(v9);
    sub_100023D60(v10);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v3 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_100002FD8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
    sub_100012C1C(v15);
  }
}

void sub_1000D6078(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  if (a3)
  {
    sub_100002EBC();
    if (v10 != v11)
    {
      sub_10000AE9C();
      if (v10)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    sub_10007B9A4(a5, a6);
    v14 = sub_10001CD54();
    v15 = j__malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 32);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (v14 != a4 || &v17[32 * v12] <= v16)
    {
      memmove(v16, v17, 32 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D6164()
{
  sub_1000074C8();
  if (v4)
  {
    sub_1000083B0();
    if (v6 != v7)
    {
      sub_1000067D8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100005848();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10000B1EC(v2, v5, &qword_10026BF10, &qword_1001EA208);
  v8 = sub_10000A610();
  type metadata accessor for ScheduleInfo(v8);
  sub_100005C6C();
  sub_100004864();
  if (v1)
  {
    v10 = sub_1000079E8(v9);
    sub_1000D68D4(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100006384();
  }
}

void sub_1000D6240()
{
  sub_10000C398();
  if (v4)
  {
    sub_100002EBC();
    if (v5 != v6)
    {
      sub_10000AE9C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_1000181BC();
  if (v2)
  {
    sub_10007B9A4(&qword_10026BF08, &qword_1001EA200);
    v7 = sub_10001CD54();
    v8 = j__malloc_size(v7);
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * ((v8 - 32) / 2);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[2 * v3] <= v9)
    {
      memmove(v9, v10, 2 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 2 * v3);
  }
}

void sub_1000D6318()
{
  sub_10000C398();
  if (v6)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    v9 = sub_10007B9A4(&qword_10026BEF8, &qword_1001EA1E8);
    v4 = 24;
    v10 = sub_100005F6C(v9);
    v11 = j__malloc_size(v10);
    sub_100007F80(v11);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_10000B374();
  if (v1)
  {
    if (v10 != v0 || v5 + 24 * v2 <= v4)
    {
      v13 = sub_100002FD8();
      memmove(v13, v14, v15);
    }

    v0[2] = 0;
  }

  else
  {
    v16 = sub_10007B9A4(&qword_10026BF00, &unk_1001EA1F0);
    sub_100012C1C(v16);
  }
}

void *sub_1000D6400(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v4 = sub_10001CD54();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1000D64A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007B9A4(&qword_100269FD8, &qword_1001EA220);
  v4 = *(sub_10007B9A4(&qword_100269FE0, &unk_1001E7550) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000D65A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007B9A4(a3, a4);
  v8 = sub_10000A610();
  v9 = a5(v8);
  sub_100002CFC(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1000D66E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

char *sub_1000D671C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

char *sub_1000D6750(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return sub_100009E30(result, a3, a2);
  }

  return result;
}

void sub_1000D67B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_100017D60();
  if (v10 && (sub_10007B9A4(a4, a5), sub_100002DDC(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_100004C20();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_10007B9A4(a4, a5);
    sub_100004C20();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_1000D6878(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

char *sub_1000D6898(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

void sub_1000D68D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_100017D60();
  if (v8 && (a4(0), sub_100002DDC(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_100004C20();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_100004C20();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_1000D6988(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

uint64_t sub_1000D69D8(uint64_t a1)
{
  result = sub_1000D6A64();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000D6A64()
{
  result = qword_10026C020;
  if (!qword_10026C020)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10026C020);
  }

  return result;
}

uint64_t type metadata accessor for MediaCatalogSyncRequest(uint64_t a1)
{
  result = qword_10026C0B0;
  if (!qword_10026C0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MediaCatalogSyncResponse(uint64_t a1)
{
  result = qword_10026C140;
  if (!qword_10026C140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D6BAC(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D6C58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D6CAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000D6D14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F70736552776172 && a2 == 0xEF79646F4265736ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6174654D636E7973 && a2 == 0xEC00000061746164;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001001F68B0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x736E6961746E6F63 && a2 == 0xEF73656972746E45)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000D6F24(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6F70736552776172;
      break;
    case 2:
      result = 0x6174654D636E7973;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6F43737574617473;
      break;
    case 5:
      result = 0x736E6961746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D7008(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = 0xE400000000000000;
  v9 = 1936748641;
  if (v3 != 1)
  {
    v9 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7373656E746966;
  }

  if (v3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = 0xE400000000000000;
  v13 = 1936748641;
  if (*a2 != 1)
  {
    v13 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
  }

  if (*a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7373656E746966;
  }

  if (*a2)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
LABEL_34:
      v23 = 0;
      return v23 & 1;
    }
  }

  v19 = v4 == v6 && v5 == v7;
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_34;
  }

  if ((static Data.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_34;
  }

  v20 = *(a1 + 56);
  v25[0] = *(a1 + 40);
  v25[1] = v20;
  v26 = a1[72];
  v21 = *(a2 + 56);
  v27[0] = *(a2 + 40);
  v27[1] = v21;
  v28 = *(a2 + 72);
  if ((sub_1000D80BC(v25, v27) & 1) == 0)
  {
    goto LABEL_34;
  }

  v22 = type metadata accessor for MediaCatalogSyncResponse(0);
  if ((static Date.== infix(_:_:)() & 1) == 0 || *&a1[*(v22 + 32)] != *(a2 + *(v22 + 32)))
  {
    goto LABEL_34;
  }

  v23 = a1[*(v22 + 36)] ^ *(a2 + *(v22 + 36)) ^ 1;
  return v23 & 1;
}

void sub_1000D71F8()
{
  sub_100004C34();
  v2 = v0;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_10026C1B0, &qword_1001EA538);
  sub_100002CC4();
  v7 = v6;
  sub_100004E78();
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  sub_10000A264(v4);
  sub_1000D927C();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v2 + 8);
  v12 = *(v2 + 16);
  LOBYTE(v18) = *v2;
  *(&v18 + 1) = v11;
  *&v19 = v12;
  v21 = 0;
  sub_1000D3CA4();
  sub_1000030C8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v13 = *(v2 + 32);
    *&v18 = *(v2 + 24);
    *(&v18 + 1) = v13;
    v21 = 1;
    sub_10003A5E0(v18, v13);
    sub_1000D93E4();
    sub_1000030C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000253FC(v18, *(&v18 + 1));
    v14 = *(v2 + 72);
    v15 = *(v2 + 56);
    v18 = *(v2 + 40);
    v19 = v15;
    v20 = v14;
    v21 = 2;
    sub_1000D9438();
    sub_1000030C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for MediaCatalogSyncResponse(0);
    LOBYTE(v18) = 3;
    type metadata accessor for Date();
    sub_1000051D4();
    sub_1000D9778(v16, v17, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = 4;
    sub_1000030C8();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = 5;
    sub_1000030C8();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v10, v5);
  sub_10000ABA0();
}

void sub_1000D7474(uint64_t a1)
{
  String.hash(into:)();

  String.hash(into:)();
  Data.hash(into:)();
  sub_1000D82F0(a1);
  v3 = type metadata accessor for MediaCatalogSyncResponse(0);
  type metadata accessor for Date();
  sub_1000051D4();
  sub_1000D9778(v4, v5, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(v3 + 32)));
  Hasher._combine(_:)(*(v1 + *(v3 + 36)));
}

Swift::Int sub_1000D75C4()
{
  sub_100004750();
  sub_1000D7474(v1);
  return Hasher._finalize()();
}

void sub_1000D75FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100007E34();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v51 = v28;
  v55 = type metadata accessor for Date();
  sub_100002CC4();
  v52 = v29;
  __chkstk_darwin(v30);
  v32 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10007B9A4(&qword_10026C198, &qword_1001EA530);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v33);
  v54 = type metadata accessor for MediaCatalogSyncResponse(0);
  __chkstk_darwin(v54);
  v35 = &v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CA8(v27, v27[3]);
  sub_1000D927C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100002C00(v27);
  }

  else
  {
    v50 = v32;
    a13 = 0;
    sub_1000D3C08();
    sub_1000079F8(&type metadata for MediaCatalogSyncIdentifier, &a13);
    v36 = *(&v56 + 1);
    v37 = v57;
    v38 = v35;
    *v35 = v56;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    a13 = 1;
    sub_1000D92D0();
    sub_1000079F8(&type metadata for Data, &a13);
    *(v35 + 24) = v56;
    a13 = 2;
    sub_1000D3150();
    sub_1000079F8(&type metadata for MediaCatalogSyncMetadata, &a13);
    v39 = v58;
    v40 = v57;
    *(v35 + 40) = v56;
    *(v35 + 56) = v40;
    v35[72] = v39;
    LOBYTE(v56) = 3;
    sub_1000051D4();
    sub_1000D9778(v41, v42, &protocol conformance descriptor for Date);
    v43 = v50;
    v44 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v45 = v44;
    v46 = v54;
    (*(v52 + 32))(v38 + *(v54 + 28), v43, v45);
    sub_1000063A4(4);
    *(v38 + *(v46 + 32)) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000063A4(5);
    v47 = KeyedDecodingContainer.decode(_:forKey:)();
    v48 = sub_100005858();
    v49(v48);
    *(v38 + *(v46 + 36)) = v47 & 1;
    sub_1000D9324(v38, v51);
    sub_100002C00(v27);
    sub_1000D9388(v38);
  }

  sub_100005B78();
}

uint64_t sub_1000D7A7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E79537478656ELL && a2 == 0xED00006E656B6F54;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000)
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

uint64_t sub_1000D7B48(char a1)
{
  if (a1)
  {
    return 0x7465736572;
  }

  else
  {
    return 0x636E79537478656ELL;
  }
}

uint64_t sub_1000D7B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v8 = a1 == a4 && a2 == a5;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    if (a3 == 2)
    {
      if (a6 != 2)
      {
        return 0;
      }
    }

    else if (a6 == 2 || ((a6 ^ a3) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!a5)
  {
    goto LABEL_10;
  }

  return 0;
}

void sub_1000D7C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100007E34();
  a22 = v24;
  a23 = v25;
  a10 = v26;
  v28 = v27;
  v29 = sub_10007B9A4(&qword_10026C270, &qword_1001EA960);
  sub_100002CC4();
  v31 = v30;
  sub_100004E78();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  sub_100003CA8(v28, v28[3]);
  sub_1000D9DD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a13 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v23)
  {
    a12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v31 + 8))(v34, v29);
  sub_100005B78();
}

void sub_1000D7D6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (a4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = a4 & 1;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_1000D7DEC(uint64_t a1, uint64_t a2, char a3)
{
  sub_100004750();
  sub_1000D7D6C(v7, a1, a2, a3);
  return Hasher._finalize()();
}

void sub_1000D7E44()
{
  sub_100004C34();
  v2 = v1;
  v3 = sub_10007B9A4(&qword_10026C260, &qword_1001EA958);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v4);
  sub_10000A264(v2);
  sub_1000D9DD8();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v5 = sub_10000A318();
    v6(v5, v3);
  }

  sub_100002C00(v2);
  sub_10000ABA0();
}

uint64_t sub_1000D7FCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047342 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
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

uint64_t sub_1000D809C(char a1)
{
  if (a1)
  {
    return 1635018093;
  }

  else
  {
    return 1954047342;
  }
}

uint64_t sub_1000D80BC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v11 = a1[2] == *(a2 + 16) && v7 == v9;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    if (v8 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else if (v10 == 2 || ((v10 ^ v8) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  return 0;
}

void sub_1000D8190()
{
  sub_100004C34();
  v2 = v0;
  v4 = v3;
  v5 = sub_10007B9A4(&qword_10026C1E8, &qword_1001EA548);
  sub_100002CC4();
  v7 = v6;
  sub_100004E78();
  __chkstk_darwin(v8);
  v10 = &v11[-v9];
  sub_10000A264(v4);
  sub_1000D97C0();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v12 = *(v2 + 16);
    v13 = *(v2 + 32);
    v11[15] = 1;
    sub_1000D9868();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v7 + 8))(v10, v5);
  sub_10000ABA0();
}

void sub_1000D82F0(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = *(v1 + 32);
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v2 & 1;
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_1000D83A0()
{
  sub_100004750();
  sub_1000D82F0(v1);
  return Hasher._finalize()();
}

void sub_1000D83D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100007E34();
  v25 = v24;
  v27 = v26;
  sub_10007B9A4(&qword_10026C1D0, &qword_1001EA540);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v28);
  sub_100003CA8(v25, v25[3]);
  sub_1000D97C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100002C00(v25);
  }

  else
  {
    LOBYTE(v34) = 0;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v30;
    sub_1000D9814();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = sub_1000073F4();
    v33(v32);
    sub_100002C00(v25);
    *v27 = v29;
    *(v27 + 8) = v31;
    *(v27 + 16) = v34;
    *(v27 + 24) = v35;
    *(v27 + 32) = v36;
  }

  sub_100005B78();
}

uint64_t sub_1000D8590(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_1000D860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

void sub_1000D8654()
{
  sub_100007E34();
  v1 = v0;
  sub_10007B9A4(&qword_10026C2D8, &qword_1001EAC80);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v2);
  sub_100003CA8(v1, v1[3]);
  sub_1000DA300();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v3 = sub_1000073F4();
  v4(v3);
  sub_100005B78();
}

void sub_1000D876C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000D87DC(uint64_t a1, uint64_t a2)
{
  sub_100004750();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000D8848()
{
  sub_100004C34();
  v2 = v1;
  v3 = sub_10007B9A4(&qword_10026C2C8, &qword_1001EAC78);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v4);
  sub_10000A264(v2);
  sub_1000DA300();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v5 = sub_10000A318();
    v6(v5, v3);
  }

  sub_100002C00(v2);
  sub_10000ABA0();
}

uint64_t sub_1000D897C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1000D8A04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 && (sub_1001C4818(a1, a2) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

void sub_1000D8A3C()
{
  sub_100004C34();
  v1 = v0;
  v3 = v2;
  v4 = sub_10007B9A4(&qword_10026C278, &qword_1001EA968);
  sub_100002CC4();
  v6 = v5;
  sub_100004E78();
  __chkstk_darwin(v7);
  v9 = v10 - v8;
  sub_10000A264(v3);
  sub_1000D9D30();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = v1;
  sub_10007B9A4(&qword_10026C248, &qword_1001EA950);
  sub_1000D9E2C(&qword_10026C280, sub_1000D9EA4, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v4);
  sub_10000ABA0();
}

void sub_1000D8BA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    Hasher._combine(_:)(1u);

    sub_10007AA40(a1, a2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000D8C00(uint64_t a1)
{
  sub_100004750();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    sub_10007AA40(v3, a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000D8C5C()
{
  sub_100004C34();
  v2 = v1;
  v3 = sub_10007B9A4(&qword_10026C238, &qword_1001EA948);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v4);
  sub_10000A264(v2);
  sub_1000D9D30();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_10007B9A4(&qword_10026C248, &qword_1001EA950);
    sub_1000D9E2C(&qword_10026C250, sub_1000D9D84, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v5 = sub_10000A318();
    v6(v5, v3);
  }

  sub_100002C00(v2);
  sub_10000ABA0();
}

uint64_t sub_1000D8DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D6D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D8E18(uint64_t a1)
{
  v2 = sub_1000D927C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D8E54(uint64_t a1)
{
  v2 = sub_1000D927C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000D8EC8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000D7474(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000D8F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D7A7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D8F38(uint64_t a1)
{
  v2 = sub_1000D9DD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D8F74(uint64_t a1)
{
  v2 = sub_1000D9DD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D8FB0(uint64_t a1@<X8>)
{
  sub_1000D7E44();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

Swift::Int sub_1000D9018(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_1000D7D6C(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_1000D9094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D7FCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D90BC(uint64_t a1)
{
  v2 = sub_1000D97C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D90F8(uint64_t a1)
{
  v2 = sub_1000D97C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000D919C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000D82F0(v2);
  return Hasher._finalize()();
}

unint64_t sub_1000D91E0()
{
  result = qword_10026C188;
  if (!qword_10026C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C188);
  }

  return result;
}

unint64_t sub_1000D927C()
{
  result = qword_10026C1A0;
  if (!qword_10026C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1A0);
  }

  return result;
}

unint64_t sub_1000D92D0()
{
  result = qword_10026C1A8;
  if (!qword_10026C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1A8);
  }

  return result;
}

uint64_t sub_1000D9324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D9388(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D93E4()
{
  result = qword_10026C1B8;
  if (!qword_10026C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1B8);
  }

  return result;
}

unint64_t sub_1000D9438()
{
  result = qword_10026C1C0;
  if (!qword_10026C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1C0);
  }

  return result;
}

uint64_t sub_1000D9490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D8590(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000D94BC(uint64_t a1)
{
  v2 = sub_1000DA300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D94F8(uint64_t a1)
{
  v2 = sub_1000DA300();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D9534(void *a1@<X8>)
{
  sub_1000D8848();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

Swift::Int sub_1000D958C(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000D9610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D897C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000D963C(uint64_t a1)
{
  v2 = sub_1000D9D30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D9678(uint64_t a1)
{
  v2 = sub_1000D9D30();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D96B4(void *a1@<X8>)
{
  sub_1000D8C5C();
  if (!v1)
  {
    *a1 = v3;
  }
}

Swift::Int sub_1000D970C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    sub_10007AA40(v4, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000D9778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000D97C0()
{
  result = qword_10026C1D8;
  if (!qword_10026C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1D8);
  }

  return result;
}

unint64_t sub_1000D9814()
{
  result = qword_10026C1E0;
  if (!qword_10026C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1E0);
  }

  return result;
}

unint64_t sub_1000D9868()
{
  result = qword_10026C1F0;
  if (!qword_10026C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000D99B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D9A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000D9A74()
{
  result = qword_10026C1F8;
  if (!qword_10026C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C1F8);
  }

  return result;
}

unint64_t sub_1000D9ACC()
{
  result = qword_10026C200;
  if (!qword_10026C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C200);
  }

  return result;
}

unint64_t sub_1000D9B24()
{
  result = qword_10026C208;
  if (!qword_10026C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C208);
  }

  return result;
}

unint64_t sub_1000D9B7C()
{
  result = qword_10026C210;
  if (!qword_10026C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C210);
  }

  return result;
}

unint64_t sub_1000D9BD4()
{
  result = qword_10026C218;
  if (!qword_10026C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C218);
  }

  return result;
}

unint64_t sub_1000D9C2C()
{
  result = qword_10026C220;
  if (!qword_10026C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C220);
  }

  return result;
}

unint64_t sub_1000D9C84()
{
  result = qword_10026C228;
  if (!qword_10026C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C228);
  }

  return result;
}

unint64_t sub_1000D9CDC()
{
  result = qword_10026C230;
  if (!qword_10026C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C230);
  }

  return result;
}

unint64_t sub_1000D9D30()
{
  result = qword_10026C240;
  if (!qword_10026C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C240);
  }

  return result;
}

unint64_t sub_1000D9D84()
{
  result = qword_10026C258;
  if (!qword_10026C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C258);
  }

  return result;
}

unint64_t sub_1000D9DD8()
{
  result = qword_10026C268;
  if (!qword_10026C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C268);
  }

  return result;
}

uint64_t sub_1000D9E2C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_10026C248, &qword_1001EA950);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000D9EA4()
{
  result = qword_10026C288;
  if (!qword_10026C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C288);
  }

  return result;
}

_BYTE *sub_1000D9EF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000D9FE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DA038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000DA09C()
{
  result = qword_10026C290;
  if (!qword_10026C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C290);
  }

  return result;
}

unint64_t sub_1000DA0F4()
{
  result = qword_10026C298;
  if (!qword_10026C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C298);
  }

  return result;
}

unint64_t sub_1000DA14C()
{
  result = qword_10026C2A0;
  if (!qword_10026C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2A0);
  }

  return result;
}

unint64_t sub_1000DA1A4()
{
  result = qword_10026C2A8;
  if (!qword_10026C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2A8);
  }

  return result;
}

unint64_t sub_1000DA1FC()
{
  result = qword_10026C2B0;
  if (!qword_10026C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2B0);
  }

  return result;
}

unint64_t sub_1000DA254()
{
  result = qword_10026C2B8;
  if (!qword_10026C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2B8);
  }

  return result;
}

unint64_t sub_1000DA2AC()
{
  result = qword_10026C2C0;
  if (!qword_10026C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2C0);
  }

  return result;
}

unint64_t sub_1000DA300()
{
  result = qword_10026C2D0;
  if (!qword_10026C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2D0);
  }

  return result;
}

_BYTE *sub_1000DA354(_BYTE *result, int a2, int a3)
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

unint64_t sub_1000DA404()
{
  result = qword_10026C2E0;
  if (!qword_10026C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2E0);
  }

  return result;
}

unint64_t sub_1000DA45C()
{
  result = qword_10026C2E8;
  if (!qword_10026C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2E8);
  }

  return result;
}

unint64_t sub_1000DA4B4()
{
  result = qword_10026C2F0;
  if (!qword_10026C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2F0);
  }

  return result;
}

void sub_1000DA530(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a6;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v11 = type metadata accessor for Date();
  v12 = __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v55 - v16;
  v18 = __chkstk_darwin(v15);
  v21 = &v55 - v20;
  v22 = *a1;
  if (*a1)
  {
    if (v22 != 1)
    {

      goto LABEL_9;
    }

    v56 = v19;
    v57 = v18;
    v58 = v7;
    v59 = a7;
  }

  else
  {
    v56 = v19;
    v57 = v18;
    v58 = v7;
    v59 = a7;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
LABEL_9:
    sub_100090C64();
    swift_allocError();
    v29 = 4;
LABEL_10:
    *v28 = v29;
    swift_willThrow();
    return;
  }

  sub_100006C2C();
  v24 = v60;
  if (sub_1000E00AC(v25, v26))
  {
    v27 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
    sub_10000A7C0(v59, 1, 1, v27);
    return;
  }

  v30 = *&a1[*(type metadata accessor for MediaCatalogSyncState(0) + 44)];
  if (!v30)
  {
    if (*(a1 + 4))
    {
      type metadata accessor for MediaCatalogSyncScheduleModel(0);
      sub_1000030D8();
      v36 = v59;
      (*(v37 + 16))(v59 + v38, v24);
      sub_1000051EC();
      v40 = 3;
    }

    else
    {
      v36 = v59;
      if (!*(a1 + 6))
      {
        type metadata accessor for MediaCatalogSyncScheduleModel(0);
        sub_1000030D8();
        (*(v52 + 16))(v36 + v53, v24);
        sub_1000051EC();
        *(v36 + v54) = 0;
        goto LABEL_25;
      }

      sub_100006C2C();
      sub_1000CEE1C(v48, v49);
      if (!v67)
      {
        goto LABEL_29;
      }

      sub_1000CEF5C(v66);
      Date.addingTimeInterval(_:)();
      type metadata accessor for MediaCatalogSyncScheduleModel(0);
      sub_1000030D8();
      (*(v50 + 32))(v36 + v51, v14);
      sub_1000051EC();
      v40 = 1;
    }

LABEL_24:
    *(v36 + v39) = v40;
LABEL_25:
    sub_10000A7C0(v36, 0, 1, a2);

    return;
  }

  sub_100006C2C();
  sub_1000CEE1C(v31, v32);
  if (!v64[1])
  {
LABEL_29:
    sub_100090C64();
    swift_allocError();
    v29 = 6;
    goto LABEL_10;
  }

  v33 = *(v64[6] + 16);
  if (v33 < v30)
  {
    sub_1000CEF5C(v64);
    sub_100006C2C();
    sub_1000CEE1C(v34, v35);
    v36 = v59;
    if (v65[1])
    {
      sub_1000CEF5C(v65);
LABEL_20:
      Date.addingTimeInterval(_:)();
      v41 = v60;
      if (static Date.> infix(_:_:)())
      {
        v42 = v56;
        v43 = v21;
        v44 = v57;
        (*(v56 + 32))(v17, v43, v57);
      }

      else
      {
        v42 = v56;
        v45 = v21;
        v44 = v57;
        (*(v56 + 8))(v45, v57);
        (*(v42 + 16))(v17, v41, v44);
      }

      v46 = *(a1 + 1);
      v47 = *(a1 + 2);
      *v36 = v22;
      *(v36 + 8) = v46;
      *(v36 + 16) = v47;
      a2 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
      (*(v42 + 32))(v36 + *(a2 + 20), v17, v44);
      v39 = *(a2 + 24);
      v40 = 4;
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  if (v30 - 1 < v33)
  {
    sub_1000CEF5C(v64);
    v36 = v59;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t getEnumTagSinglePayload for MediaCatalogSyncError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000DAB54()
{
  result = qword_10026C2F8;
  if (!qword_10026C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C2F8);
  }

  return result;
}

uint64_t sub_1000DABF0(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000DACBC(uint64_t a1)
{
  sub_1000DAD14();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1000DAD14()
{
  if (!qword_10026C418)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_10026C418);
    }
  }
}

unint64_t sub_1000DAD70()
{
  result = qword_10026C440;
  if (!qword_10026C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C440);
  }

  return result;
}

uint64_t sub_1000DADC4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  sub_100002CC4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100002DEC();
  v11 = v10 - v9;
  v12 = type metadata accessor for MediaCatalogSyncScheduleAction(0);
  __chkstk_darwin(v12 - 8);
  sub_100002DEC();
  sub_100004B68();
  sub_10007B9A4(&qword_10026C480, &qword_1001EB090);
  sub_100004E78();
  v14 = __chkstk_darwin(v13);
  v16 = &v23 - v15;
  v17 = *(v14 + 56);
  sub_1000DD4A0(a1, &v23 - v15, type metadata accessor for MediaCatalogSyncScheduleAction);
  sub_1000DD4A0(a2, &v16[v17], type metadata accessor for MediaCatalogSyncScheduleAction);
  sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);
  sub_100012C3C(v16);
  if (!v20)
  {
    sub_1000083C0();
    sub_1000DD4A0(v16, v2, v19);
    sub_100012C3C(&v16[v17]);
    if (!v20)
    {
      (*(v7 + 32))(v11, &v16[v17], v5);
      v18 = static Date.== infix(_:_:)();
      v21 = *(v7 + 8);
      v21(v11, v5);
      v21(v2, v5);
      sub_100005868();
      return v18 & 1;
    }

    (*(v7 + 8))(v2, v5);
LABEL_9:
    sub_1000DD500(v16);
    v18 = 0;
    return v18 & 1;
  }

  sub_100012C3C(&v16[v17]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_100005868();
  v18 = 1;
  return v18 & 1;
}

void sub_1000DB00C(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = type metadata accessor for MediaCatalogSyncScheduleAction(0);
  __chkstk_darwin(v10 - 8);
  sub_100002DEC();
  sub_100004B68();
  sub_1000083C0();
  sub_1000DD4A0(v1, v2, v11);
  v12 = sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);
  if (sub_100009F34(v2, 1, v12) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v9, v2, v3);
    Hasher._combine(_:)(1uLL);
    sub_1000051FC();
    sub_1000DD35C(v13, v14, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_1000DB1A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61727473746F6F62 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696C756465686373 && a2 == 0xEA0000000000676ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001001F6900 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001001F6920 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x526572756C696166 && a2 == 0xEC00000079727465;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7465736572 && a2 == 0xE500000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x746867696C666E69 && a2 == 0xEF74706D65747441)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000DB400(char a1)
{
  result = 0x61727473746F6F62;
  switch(a1)
  {
    case 1:
      result = 0x696C756465686373;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x526572756C696166;
      break;
    case 5:
      result = 0x7465736572;
      break;
    case 6:
      result = 0x746867696C666E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DB4F0(void *a1, uint64_t a2)
{
  v59 = a2;
  sub_10007B9A4(&qword_10026C510, &qword_1001EB0E0);
  sub_100002CC4();
  v57 = v6;
  v58 = v5;
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_1000074D8();
  v56 = v8;
  sub_10007B9A4(&qword_10026C518, &qword_1001EB0E8);
  sub_100002CC4();
  v54 = v10;
  v55 = v9;
  sub_100004E78();
  __chkstk_darwin(v11);
  sub_1000074D8();
  v53 = v12;
  sub_10007B9A4(&qword_10026C520, &qword_1001EB0F0);
  sub_100002CC4();
  v51 = v14;
  v52 = v13;
  sub_100004E78();
  __chkstk_darwin(v15);
  sub_1000074D8();
  v50 = v16;
  sub_10007B9A4(&qword_10026C528, &qword_1001EB0F8);
  sub_100002CC4();
  v48 = v18;
  v49 = v17;
  sub_100004E78();
  __chkstk_darwin(v19);
  sub_1000074D8();
  v47 = v20;
  sub_10007B9A4(&qword_10026C530, &qword_1001EB100);
  sub_100002CC4();
  v45 = v22;
  v46 = v21;
  sub_100004E78();
  __chkstk_darwin(v23);
  sub_1000074D8();
  v44 = v24;
  sub_10007B9A4(&qword_10026C538, &qword_1001EB108);
  sub_100002CC4();
  v42 = v26;
  v43 = v25;
  sub_100004E78();
  __chkstk_darwin(v27);
  sub_100004B68();
  v28 = sub_10007B9A4(&qword_10026C540, &qword_1001EB110);
  sub_100002CC4();
  v41 = v29;
  sub_100004E78();
  __chkstk_darwin(v30);
  v32 = &v40 - v31;
  v33 = sub_10007B9A4(&qword_10026C548, &qword_1001EB118);
  sub_100002CC4();
  v35 = v34;
  sub_100004E78();
  __chkstk_darwin(v36);
  sub_100019BFC();
  sub_100003CA8(a1, a1[3]);
  sub_1000DD5C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v59)
  {
    case 1:
      v61 = 1;
      sub_1000DD7B8();
      sub_10000BF28(&type metadata for MediaCatalogSyncReason.SchedulingCodingKeys, &v61);
      v38 = v42;
      v37 = v43;
      goto LABEL_9;
    case 2:
      v62 = 2;
      sub_1000DD764();
      v2 = v44;
      sub_10000BF28(&type metadata for MediaCatalogSyncReason.ManualSyncRequestedCodingKeys, &v62);
      v38 = v45;
      v37 = v46;
      goto LABEL_9;
    case 3:
      v63 = 3;
      sub_1000DD710();
      v2 = v47;
      sub_10000BF28(&type metadata for MediaCatalogSyncReason.ResponseSuggestedCodingKeys, &v63);
      v38 = v48;
      v37 = v49;
      goto LABEL_9;
    case 4:
      v64 = 4;
      sub_1000DD6BC();
      v2 = v50;
      sub_10000BF28(&type metadata for MediaCatalogSyncReason.FailureRetryCodingKeys, &v64);
      v38 = v51;
      v37 = v52;
      goto LABEL_9;
    case 5:
      v65 = 5;
      sub_1000DD668();
      v2 = v53;
      sub_10000BF28(&type metadata for MediaCatalogSyncReason.ResetCodingKeys, &v65);
      v38 = v54;
      v37 = v55;
      goto LABEL_9;
    case 6:
      v66 = 6;
      sub_1000DD614();
      v2 = v56;
      sub_10000BF28(&type metadata for MediaCatalogSyncReason.InflightAttemptCodingKeys, &v66);
      v38 = v57;
      v37 = v58;
LABEL_9:
      (*(v38 + 8))(v2, v37);
      break;
    default:
      v60 = 0;
      sub_1000DD80C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v41 + 8))(v32, v28);
      break;
  }

  return (*(v35 + 8))(v3, v33);
}

uint64_t sub_1000DBA6C(void *a1)
{
  sub_10007B9A4(&qword_10026C488, &qword_1001EB098);
  sub_100002CC4();
  v81 = v3;
  v82 = v4;
  sub_100004E78();
  __chkstk_darwin(v5);
  sub_1000074D8();
  v87 = v6;
  sub_10007B9A4(&qword_10026C490, &qword_1001EB0A0);
  sub_100002CC4();
  v79 = v7;
  v80 = v8;
  sub_100004E78();
  __chkstk_darwin(v9);
  sub_1000074D8();
  v86 = v10;
  sub_10007B9A4(&qword_10026C498, &qword_1001EB0A8);
  sub_100002CC4();
  v77 = v11;
  v78 = v12;
  sub_100004E78();
  __chkstk_darwin(v13);
  sub_1000074D8();
  v84 = v14;
  v73 = sub_10007B9A4(&qword_10026C4A0, &qword_1001EB0B0);
  sub_100002CC4();
  v76 = v15;
  sub_100004E78();
  __chkstk_darwin(v16);
  sub_1000074D8();
  v83 = v17;
  sub_10007B9A4(&qword_10026C4A8, &qword_1001EB0B8);
  sub_100002CC4();
  v74 = v19;
  v75 = v18;
  sub_100004E78();
  __chkstk_darwin(v20);
  sub_1000074D8();
  v85 = v21;
  sub_10007B9A4(&qword_10026C4B0, &qword_1001EB0C0);
  sub_100002CC4();
  v71 = v23;
  v72 = v22;
  sub_100004E78();
  __chkstk_darwin(v24);
  v26 = &v65 - v25;
  v27 = sub_10007B9A4(&qword_10026C4B8, &qword_1001EB0C8);
  sub_100002CC4();
  v70 = v28;
  sub_100004E78();
  __chkstk_darwin(v29);
  sub_100019BFC();
  v30 = sub_10007B9A4(&qword_10026C4C0, &qword_1001EB0D0);
  sub_100002CC4();
  v32 = v31;
  sub_100004E78();
  __chkstk_darwin(v33);
  v35 = &v65 - v34;
  v36 = a1[3];
  v88 = a1;
  sub_100003CA8(a1, v36);
  sub_1000DD5C0();
  v37 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    return sub_100002C00(v88);
  }

  v68 = v1;
  v67 = v27;
  v69 = v26;
  v38 = v85;
  v39 = v86;
  v40 = v87;
  v89 = v32;
  v41 = KeyedDecodingContainer.allKeys.getter();
  result = sub_10018BB1C(v41, 0);
  if (v44 == v45 >> 1)
  {
LABEL_8:
    v52 = type metadata accessor for DecodingError();
    swift_allocError();
    v54 = v53;
    sub_10007B9A4(&qword_10026C4D0, &qword_1001EB0D8);
    *v54 = &type metadata for MediaCatalogSyncReason;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v52 - 8) + 104))(v54, enum case for DecodingError.typeMismatch(_:), v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v89 + 8))(v35, v30);
    return sub_100002C00(v88);
  }

  v66 = v30;
  if (v44 >= (v45 >> 1))
  {
    __break(1u);
    return result;
  }

  v65 = *(v43 + v44);
  sub_10018BE1C(v44 + 1, v45 >> 1, result, v43, v44, v45);
  v47 = v46;
  v49 = v48;
  swift_unknownObjectRelease();
  if (v47 != v49 >> 1)
  {
    v30 = v66;
    goto LABEL_8;
  }

  switch(v65)
  {
    case 1:
      v91 = 1;
      sub_1000DD7B8();
      v38 = v69;
      sub_1000030E8(&type metadata for MediaCatalogSyncReason.SchedulingCodingKeys, &v91);
      swift_unknownObjectRelease();
      v59 = v71;
      v58 = v72;
      goto LABEL_14;
    case 2:
      v92 = 2;
      sub_1000DD764();
      sub_1000030E8(&type metadata for MediaCatalogSyncReason.ManualSyncRequestedCodingKeys, &v92);
      swift_unknownObjectRelease();
      v59 = v74;
      v58 = v75;
LABEL_14:
      (*(v59 + 8))(v38, v58);
      goto LABEL_18;
    case 3:
      v93 = 3;
      sub_1000DD710();
      v60 = v83;
      sub_1000030E8(&type metadata for MediaCatalogSyncReason.ResponseSuggestedCodingKeys, &v93);
      swift_unknownObjectRelease();
      (*(v76 + 8))(v60, v73);
      goto LABEL_18;
    case 4:
      v94[0] = 4;
      sub_1000DD6BC();
      v55 = v84;
      sub_1000030E8(&type metadata for MediaCatalogSyncReason.FailureRetryCodingKeys, v94);
      swift_unknownObjectRelease();
      v56 = v77;
      v57 = v78;
      goto LABEL_17;
    case 5:
      v94[1] = 5;
      sub_1000DD668();
      v61 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v80 + 8))(v39, v79);
      v62 = sub_10000A3D0();
      v64 = v61;
      break;
    case 6:
      v95 = 6;
      sub_1000DD614();
      v55 = v40;
      sub_1000030E8(&type metadata for MediaCatalogSyncReason.InflightAttemptCodingKeys, &v95);
      swift_unknownObjectRelease();
      v56 = v81;
      v57 = v82;
LABEL_17:
      (*(v57 + 8))(v55, v56);
LABEL_18:
      v62 = sub_10000A3D0();
      v64 = v40;
      break;
    default:
      v90 = 0;
      sub_1000DD80C();
      v50 = v68;
      v51 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v70 + 8))(v50, v67);
      v62 = sub_10000A3D0();
      v64 = v51;
      break;
  }

  v63(v62, v64);
  sub_100002C00(v88);
  return v65;
}

uint64_t sub_1000DC2F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E79537478656ELL && a2 == 0xEA00000000007441;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000DC410(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x636E79537478656ELL;
  }

  return 0x6E6F73616572;
}

BOOL sub_1000DC468(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = 0xE400000000000000;
  v9 = 1936748641;
  if (v3 != 1)
  {
    v9 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7373656E746966;
  }

  if (v3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = 0xE400000000000000;
  v13 = 1936748641;
  if (*a2 != 1)
  {
    v13 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
  }

  if (*a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7373656E746966;
  }

  if (*a2)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = v4 == v6 && v5 == v7;
  if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v20 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
    if (static Date.== infix(_:_:)())
    {
      return a1[*(v20 + 24)] == *(a2 + *(v20 + 24));
    }
  }

  return 0;
}

uint64_t sub_1000DC5F0(void *a1)
{
  v4 = sub_10007B9A4(&qword_10026C470, &qword_1001EB088);
  sub_100002CC4();
  v6 = v5;
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_100004B68();
  sub_100003CA8(a1, a1[3]);
  sub_1000DD3A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000D3CA4();
  sub_10000ABB4();
  if (!v1)
  {
    type metadata accessor for MediaCatalogSyncScheduleModel(0);
    type metadata accessor for Date();
    sub_1000051FC();
    sub_1000DD35C(v8, v9, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000DD44C();
    sub_10000ABB4();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1000DC7C4(uint64_t a1)
{
  String.hash(into:)();

  String.hash(into:)();
  v2 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
  type metadata accessor for Date();
  sub_1000051FC();
  sub_1000DD35C(v3, v4, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(v2 + 24)));
}

Swift::Int sub_1000DC8D4(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

uint64_t sub_1000DC91C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  sub_100002CC4();
  v22 = v5;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = v8 - v7;
  sub_10007B9A4(&qword_10026C458, &qword_1001EB080);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v10);
  sub_100019BFC();
  v11 = type metadata accessor for MediaCatalogSyncScheduleModel(0);
  sub_100002DDC();
  __chkstk_darwin(v12);
  sub_100002DEC();
  v15 = v14 - v13;
  sub_100003CA8(a1, a1[3]);
  sub_1000DD3A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002C00(a1);
  }

  sub_1000D3C08();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v15 = v23;
  *(v15 + 8) = v24;
  *(v15 + 16) = v25;
  sub_1000051FC();
  sub_1000DD35C(v16, v17, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 32))(v15 + *(v11 + 20), v9, v4);
  sub_1000DD3F8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = sub_1000063BC();
  v19(v18);
  *(v15 + *(v11 + 24)) = 1;
  sub_1000DD4A0(v15, a2, type metadata accessor for MediaCatalogSyncScheduleModel);
  sub_100002C00(0);
  return sub_1000DD568(v15, type metadata accessor for MediaCatalogSyncScheduleModel);
}

uint64_t sub_1000DCD04(uint64_t a1)
{
  v2 = sub_1000DD80C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCD40(uint64_t a1)
{
  v2 = sub_1000DD80C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DB1A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DCDAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DB3F8();
  *a1 = result;
  return result;
}

uint64_t sub_1000DCDD4(uint64_t a1)
{
  v2 = sub_1000DD5C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCE10(uint64_t a1)
{
  v2 = sub_1000DD5C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCE4C(uint64_t a1)
{
  v2 = sub_1000DD6BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCE88(uint64_t a1)
{
  v2 = sub_1000DD6BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCEC4(uint64_t a1)
{
  v2 = sub_1000DD614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCF00(uint64_t a1)
{
  v2 = sub_1000DD614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCF3C(uint64_t a1)
{
  v2 = sub_1000DD764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCF78(uint64_t a1)
{
  v2 = sub_1000DD764();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DCFB4(uint64_t a1)
{
  v2 = sub_1000DD668();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCFF0(uint64_t a1)
{
  v2 = sub_1000DD668();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DD02C(uint64_t a1)
{
  v2 = sub_1000DD710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DD068(uint64_t a1)
{
  v2 = sub_1000DD710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DD0A4(uint64_t a1)
{
  v2 = sub_1000DD7B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DD0E0(uint64_t a1)
{
  v2 = sub_1000DD7B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DD11C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000DBA6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000DD1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DC2F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DD1DC(uint64_t a1)
{
  v2 = sub_1000DD3A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DD218(uint64_t a1)
{
  v2 = sub_1000DD3A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000DD29C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1000DD35C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000DD3A4()
{
  result = qword_10026C460;
  if (!qword_10026C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C460);
  }

  return result;
}

unint64_t sub_1000DD3F8()
{
  result = qword_10026C468;
  if (!qword_10026C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C468);
  }

  return result;
}

unint64_t sub_1000DD44C()
{
  result = qword_10026C478;
  if (!qword_10026C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C478);
  }

  return result;
}

uint64_t sub_1000DD4A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002DDC();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000DD500(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026C480, &qword_1001EB090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DD568(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002DDC();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1000DD5C0()
{
  result = qword_10026C4C8;
  if (!qword_10026C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4C8);
  }

  return result;
}

unint64_t sub_1000DD614()
{
  result = qword_10026C4D8;
  if (!qword_10026C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4D8);
  }

  return result;
}

unint64_t sub_1000DD668()
{
  result = qword_10026C4E0;
  if (!qword_10026C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4E0);
  }

  return result;
}

unint64_t sub_1000DD6BC()
{
  result = qword_10026C4E8;
  if (!qword_10026C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4E8);
  }

  return result;
}

unint64_t sub_1000DD710()
{
  result = qword_10026C4F0;
  if (!qword_10026C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4F0);
  }

  return result;
}

unint64_t sub_1000DD764()
{
  result = qword_10026C4F8;
  if (!qword_10026C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C4F8);
  }

  return result;
}

unint64_t sub_1000DD7B8()
{
  result = qword_10026C500;
  if (!qword_10026C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C500);
  }

  return result;
}

unint64_t sub_1000DD80C()
{
  result = qword_10026C508;
  if (!qword_10026C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C508);
  }

  return result;
}

uint64_t sub_1000DD860(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1000DD8E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncScheduleModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000DDB14()
{
  result = qword_10026C550;
  if (!qword_10026C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C550);
  }

  return result;
}

unint64_t sub_1000DDB6C()
{
  result = qword_10026C558;
  if (!qword_10026C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C558);
  }

  return result;
}

unint64_t sub_1000DDBC4()
{
  result = qword_10026C560;
  if (!qword_10026C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C560);
  }

  return result;
}

unint64_t sub_1000DDC1C()
{
  result = qword_10026C568;
  if (!qword_10026C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C568);
  }

  return result;
}

unint64_t sub_1000DDC74()
{
  result = qword_10026C570;
  if (!qword_10026C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C570);
  }

  return result;
}

unint64_t sub_1000DDCCC()
{
  result = qword_10026C578;
  if (!qword_10026C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C578);
  }

  return result;
}

unint64_t sub_1000DDD24()
{
  result = qword_10026C580;
  if (!qword_10026C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C580);
  }

  return result;
}

unint64_t sub_1000DDD7C()
{
  result = qword_10026C588;
  if (!qword_10026C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C588);
  }

  return result;
}

unint64_t sub_1000DDDD4()
{
  result = qword_10026C590;
  if (!qword_10026C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C590);
  }

  return result;
}

unint64_t sub_1000DDE2C()
{
  result = qword_10026C598;
  if (!qword_10026C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C598);
  }

  return result;
}

unint64_t sub_1000DDE84()
{
  result = qword_10026C5A0;
  if (!qword_10026C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5A0);
  }

  return result;
}

unint64_t sub_1000DDEDC()
{
  result = qword_10026C5A8;
  if (!qword_10026C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5A8);
  }

  return result;
}

unint64_t sub_1000DDF34()
{
  result = qword_10026C5B0;
  if (!qword_10026C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5B0);
  }

  return result;
}

unint64_t sub_1000DDF8C()
{
  result = qword_10026C5B8;
  if (!qword_10026C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5B8);
  }

  return result;
}

unint64_t sub_1000DDFE4()
{
  result = qword_10026C5C0;
  if (!qword_10026C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5C0);
  }

  return result;
}

unint64_t sub_1000DE03C()
{
  result = qword_10026C5C8;
  if (!qword_10026C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5C8);
  }

  return result;
}

unint64_t sub_1000DE094()
{
  result = qword_10026C5D0;
  if (!qword_10026C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5D0);
  }

  return result;
}

unint64_t sub_1000DE0EC()
{
  result = qword_10026C5D8;
  if (!qword_10026C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5D8);
  }

  return result;
}

unint64_t sub_1000DE144()
{
  result = qword_10026C5E0;
  if (!qword_10026C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5E0);
  }

  return result;
}

unint64_t sub_1000DE19C()
{
  result = qword_10026C5E8;
  if (!qword_10026C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C5E8);
  }

  return result;
}

unint64_t sub_1000DE200(char a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(32);

  v6._countAndFlagsBits = sub_1000D0004(a1, a2, a3);
  String.append(_:)(v6);

  return 0xD00000000000001ELL;
}

uint64_t sub_1000DE298(uint64_t a1, uint64_t a2)
{
  sub_10001ECE0();
  v2 = StringProtocol.components<A>(separatedBy:)();
  sub_1000DE338(v2);

  return sub_1000D00A8();
}

uint64_t sub_1000DE338(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_1000DE3A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1954047342 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x636E79537478656ELL && a2 == 0xED00006E656B6F54;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656863537478656ELL && a2 == 0xEF744164656C7564;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6552646C756F6873 && a2 == 0xEB00000000746573;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001001F6940 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001001F6960 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x506465726564726FLL && a2 == 0xEF7473694C656761)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1000DE6A8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1954047342;
      break;
    case 2:
      result = 0x636E79537478656ELL;
      break;
    case 3:
      result = 0x656863537478656ELL;
      break;
    case 4:
      result = 0x6552646C756F6873;
      break;
    case 5:
      result = 0x4274736575716572;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x506465726564726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DE7E8(unsigned __int8 *a1, void *a2)
{
  v73 = type metadata accessor for Date();
  sub_100002CC4();
  v71 = v4;
  __chkstk_darwin(v5);
  sub_100002DEC();
  v68[1] = v7 - v6;
  v8 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  __chkstk_darwin(v8 - 8);
  sub_1000056E8();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = v68 - v13;
  v72 = sub_10007B9A4(&qword_10026C700, &qword_1001EB958);
  sub_100002DDC();
  __chkstk_darwin(v15);
  sub_1000056E8();
  v69 = v16 - v17;
  __chkstk_darwin(v18);
  v20 = *a1;
  v22 = *(a1 + 1);
  v21 = *(a1 + 2);
  v23 = *a2;
  v24 = a2[1];
  v25 = a2[2];
  if (*a1)
  {
    if (v20 == 1)
    {
      v26 = 1936748641;
    }

    else
    {
      v26 = 0x6E776F6E6B6E75;
    }

    if (v20 == 1)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE700000000000000;
    }
  }

  else
  {
    v27 = 0xE700000000000000;
    v26 = 0x7373656E746966;
  }

  v70 = v14;
  v74 = (v68 - v19);
  v28 = 0xE400000000000000;
  v29 = 1936748641;
  if (v23 != 1)
  {
    v29 = 0x6E776F6E6B6E75;
    v28 = 0xE700000000000000;
  }

  if (v23)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0x7373656E746966;
  }

  if (v23)
  {
    v31 = v28;
  }

  else
  {
    v31 = 0xE700000000000000;
  }

  v32 = v11;
  v33 = v26 == v30 && v27 == v31;
  if (v33)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v35 = v22 == v24 && v21 == v25;
  if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_53;
  }

  v36 = *(a1 + 4);
  v37 = a2[4];
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_53;
    }

    v38 = v32;
    v39 = *(a1 + 3) == a2[3] && v36 == v37;
    if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v38 = v32;
    if (v37)
    {
      goto LABEL_53;
    }
  }

  v40 = *(a1 + 6);
  v41 = a2[6];
  if (!v40)
  {
    v42 = v74;
    if (!v41)
    {
      goto LABEL_47;
    }

LABEL_53:
    v48 = 0;
    return v48 & 1;
  }

  v42 = v74;
  if (!v41)
  {
    goto LABEL_53;
  }

  v43 = *(a1 + 5) == a2[5] && v40 == v41;
  if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_47:
  v44 = type metadata accessor for MediaCatalogSyncState(0);
  v45 = v44[7];
  sub_100012C5C();
  sub_1000652F0(a2 + v45, v42 + v27);
  v46 = v73;
  if (sub_100009F34(v42, 1, v73) == 1)
  {
    if (sub_100009F34(v42 + v27, 1, v46) != 1)
    {
      goto LABEL_52;
    }

    sub_10000A00C(v42, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    v47 = v70;
    sub_1000652F0(v42, v70);
    if (sub_100009F34(v42 + v27, 1, v46) == 1)
    {
      (*(v71 + 8))(v47, v46);
      goto LABEL_52;
    }

    v74 = v44;
    v50 = v71;
    v51 = sub_10000ABD8();
    v52(v51);
    sub_100006C3C();
    sub_1000DFE80(v53, v54, &protocol conformance descriptor for Date);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    v55 = *(v50 + 8);
    v55(v31, v46);
    v55(v47, v46);
    v44 = v74;
    sub_10000A00C(v42, &unk_100271EA0, &qword_1001E77F0);
    if ((v27 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  v56 = v44[8];
  v57 = a1[v56];
  v58 = *(a2 + v56);
  if (v57 == 2)
  {
    v42 = v69;
    if (v58 != 2)
    {
      goto LABEL_53;
    }

    goto LABEL_61;
  }

  v48 = 0;
  v42 = v69;
  if (v58 != 2 && ((v58 ^ v57) & 1) == 0)
  {
LABEL_61:
    v59 = v44[9];
    sub_100012C5C();
    sub_1000652F0(a2 + v59, v42 + v27);
    v60 = v73;
    if (sub_100009F34(v42, 1, v73) == 1)
    {
      sub_1000063CC(v42 + v27);
      if (!v33)
      {
        goto LABEL_52;
      }

      sub_10000A00C(v42, &unk_100271EA0, &qword_1001E77F0);
LABEL_69:
      if ((static Date.== infix(_:_:)() & 1) != 0 && *&a1[v44[11]] == *(a2 + v44[11]))
      {
        sub_1001C450C();
        return v48 & 1;
      }

      goto LABEL_53;
    }

    sub_1000652F0(v42, v38);
    sub_1000063CC(v42 + v27);
    if (!v33)
    {
      v61 = v71;
      v62 = sub_10000ABD8();
      v63(v62);
      sub_100006C3C();
      sub_1000DFE80(v64, v65, &protocol conformance descriptor for Date);
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = *(v61 + 8);
      v67(v31, v60);
      v67(v38, v60);
      sub_10000A00C(v42, &unk_100271EA0, &qword_1001E77F0);
      if ((v66 & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_69;
    }

    (*(v71 + 8))(v38, v60);
LABEL_52:
    sub_10000A00C(v42, &qword_10026C700, &qword_1001EB958);
    goto LABEL_53;
  }

  return v48 & 1;
}

uint64_t sub_1000DEE34(void *a1)
{
  v3 = v1;
  v5 = sub_10007B9A4(&qword_10026C6E8, &qword_1001EB950);
  sub_100002CC4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100003CA8(a1, a1[3]);
  sub_1000DFCD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  LOBYTE(v18) = *v3;
  v19 = v11;
  v20 = v12;
  v21 = 0;
  sub_1000D3CA4();
  sub_1000083A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_1000083A4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v18) = 2;
    sub_1000083A4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = type metadata accessor for MediaCatalogSyncState(0);
    LOBYTE(v18) = 3;
    type metadata accessor for Date();
    sub_100006C3C();
    sub_1000DFE80(v14, v15, &protocol conformance descriptor for Date);
    sub_100003110();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100019C0C(4);
    sub_1000083A4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v18) = 5;
    sub_100003110();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 6;
    sub_100003110();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100019C0C(7);
    sub_1000083A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + *(v13 + 48));
    v21 = 8;
    sub_10007B9A4(&qword_10026C6D0, &qword_1001EB948);
    sub_1000DFDE4(&qword_10026C6F0, &qword_10026C6F8, &unk_1001E9FE8, &protocol conformance descriptor for <A> [A]);
    sub_1000083A4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1000DF144(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  __chkstk_darwin(v10 - 8);
  sub_1000056E8();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  String.hash(into:)();

  String.hash(into:)();
  if (*(v1 + 32))
  {
    sub_100007F94();
    String.hash(into:)();
  }

  else
  {
    sub_10000AF24();
  }

  if (*(v1 + 48))
  {
    sub_100007F94();
    String.hash(into:)();
  }

  else
  {
    sub_10000AF24();
  }

  v17 = type metadata accessor for MediaCatalogSyncState(0);
  sub_1000652F0(v1 + v17[7], v16);
  sub_1000063CC(v16);
  if (v18)
  {
    sub_10000AF24();
  }

  else
  {
    (*(v5 + 32))(v9, v16, v3);
    sub_100007F94();
    sub_100006C3C();
    v21 = sub_1000DFE80(v19, v20, &protocol conformance descriptor for Date);
    sub_100004C48(v21);
    (*(v5 + 8))(v9, v3);
  }

  v22 = *(v1 + v17[8]);
  if (v22 == 2)
  {
    v23 = 0;
  }

  else
  {
    sub_100007F94();
    v23 = v22 & 1;
  }

  Hasher._combine(_:)(v23);
  sub_1000652F0(v1 + v17[9], v13);
  sub_1000063CC(v13);
  if (v18)
  {
    sub_10000AF24();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v3);
    sub_100007F94();
    sub_100006C3C();
    v26 = sub_1000DFE80(v24, v25, &protocol conformance descriptor for Date);
    sub_100004C48(v26);
    (*(v5 + 8))(v9, v3);
  }

  sub_100006C3C();
  sub_1000DFE80(v27, v28, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v17[11]));
  sub_10007A87C(a1, *(v1 + v17[12]));
}

Swift::Int sub_1000DF4C8()
{
  Hasher.init(_seed:)();
  sub_1000DF144(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000DF508@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  type metadata accessor for Date();
  sub_100002CC4();
  v39 = v5;
  v40 = v4;
  __chkstk_darwin(v4);
  sub_100002DEC();
  v8 = v7 - v6;
  v9 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  __chkstk_darwin(v9 - 8);
  sub_1000056E8();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  sub_10007B9A4(&qword_10026C6C0, &qword_1001EB940);
  sub_100002CC4();
  v37 = v17;
  v38 = v16;
  __chkstk_darwin(v16);
  v43 = type metadata accessor for MediaCatalogSyncState(0);
  sub_100002DDC();
  __chkstk_darwin(v18);
  sub_100002DEC();
  v41 = (v20 - v19);
  v42 = a1;
  sub_100003CA8(a1, a1[3]);
  sub_1000DFCD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002C00(v42);
  }

  v34 = v8;
  v35 = v12;
  v47 = 0;
  sub_1000D3C08();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v45;
  v22 = v46;
  v23 = v41;
  *v41 = v44;
  v23[1] = v21;
  v23[2] = v22;
  sub_10000B87C(1);
  v23[3] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23[4] = v24;
  sub_10000B87C(2);
  v23[5] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23[6] = v25;
  LOBYTE(v44) = 3;
  sub_100006C3C();
  sub_1000DFE80(v26, v27, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v43;
  sub_10003FD2C(v15, v23 + *(v43 + 28));
  sub_10000B87C(4);
  *(v23 + v28[8]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100019C0C(5);
  v29 = v40;
  sub_10000A3DC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10003FD2C(v35, v23 + v28[9]);
  sub_100019C0C(6);
  sub_10000A3DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v39 + 32))(v23 + v28[10], v34, v29);
  sub_10000B87C(7);
  *(v23 + v28[11]) = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10007B9A4(&qword_10026C6D0, &qword_1001EB948);
  v47 = 8;
  sub_1000DFDE4(&qword_10026C6D8, &qword_10026C6E0, &unk_1001EA010, &protocol conformance descriptor for <A> [A]);
  sub_10000A3DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = sub_10000BF48();
  v31(v30);
  *(v23 + v28[12]) = v44;
  sub_1000DFD24(v23, v36);
  sub_100002C00(v42);
  return sub_1000DFD88(v23);
}

uint64_t sub_1000DFB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DE3A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DFB70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DE6A0();
  *a1 = result;
  return result;
}

uint64_t sub_1000DFB98(uint64_t a1)
{
  v2 = sub_1000DFCD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DFBD4(uint64_t a1)
{
  v2 = sub_1000DFCD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000DFC18(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000DF144(v2);
  return Hasher._finalize()();
}

unint64_t sub_1000DFCD0()
{
  result = qword_10026C6C8;
  if (!qword_10026C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C6C8);
  }

  return result;
}

uint64_t sub_1000DFD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DFD88(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DFDE4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(&qword_10026C6D0, &qword_1001EB948);
    sub_1000DFE80(a2, type metadata accessor for MediaCatalogSyncPageMetadata, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DFE80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000DFFA8()
{
  result = qword_10026C710;
  if (!qword_10026C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C710);
  }

  return result;
}

unint64_t sub_1000E0000()
{
  result = qword_10026C718;
  if (!qword_10026C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C718);
  }

  return result;
}

unint64_t sub_1000E0058()
{
  result = qword_10026C720;
  if (!qword_10026C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C720);
  }

  return result;
}

BOOL sub_1000E00AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_10000BF58();
  v7 = type metadata accessor for Date();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CEE1C(a2, v20);
  if (*(&v20[0] + 1))
  {
    v13 = v21;
    v14 = v22;
    sub_10000A00C(v20, &qword_100269AE8, &qword_1001E94D0);
    if (v14)
    {
      v15 = 120.0;
    }

    else
    {
      v15 = v13;
    }
  }

  else
  {
    v15 = 120.0;
  }

  v16 = type metadata accessor for MediaCatalogSyncState(0);
  sub_1000E0BFC(a1 + *(v16 + 36), v2, &unk_100271EA0, &qword_1001E77F0);
  if (sub_100009F34(v2, 1, v7) == 1)
  {
    sub_10000A00C(v2, &unk_100271EA0, &qword_1001E77F0);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v2, v7);
    Date.timeIntervalSince(_:)();
    v19 = v18;
    (*(v9 + 8))(v12, v7);
    return v15 >= v19;
  }
}

uint64_t sub_1000E02C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v9 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v10 = sub_100003D10(v9);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for MediaCatalogSyncState(0);
  sub_1000E0BFC(a1 + v13[9], v12, &unk_100271EA0, &qword_1001E77F0);
  v14 = type metadata accessor for Date();
  v15 = sub_100009F34(v12, 1, v14);
  sub_10000A00C(v12, &unk_100271EA0, &qword_1001E77F0);
  if (v15 == 1)
  {
    LODWORD(v40) = *a1;
    v16 = a1[1];
    v17 = a1[2];
    v18 = a1[4];
    v38 = a1[3];
    v39 = v16;
    v19 = a1[5];
    v20 = a1[6];
    v36 = v18;
    v37 = v19;
    sub_1000E0BFC(a1 + v13[7], a6 + v13[7], &unk_100271EA0, &qword_1001E77F0);
    v21 = v13[9];
    v22 = *(a1 + v13[8]);
    v23 = *(*(v14 - 8) + 16);
    v23(a6 + v21, v41, v14);
    sub_10000A7C0(a6 + v21, 0, 1, v14);
    v23(a6 + v13[10], a1 + v13[10], v14);
    v24 = *(a1 + v13[11]);
    *a6 = v40;
    v25 = v38;
    *(a6 + 8) = v39;
    *(a6 + 16) = v17;
    v26 = v36;
    *(a6 + 24) = v25;
    *(a6 + 32) = v26;
    *(a6 + 40) = v37;
    *(a6 + 48) = v20;
    *(a6 + v13[8]) = v22;
    sub_10000312C(v24);
  }

  else
  {
    if (sub_1000E00AC(a1, a2))
    {
      sub_100006C54();
      return sub_1000E0B9C(a1, a6, v27);
    }

    LODWORD(v41) = *a1;
    v30 = a1[1];
    v29 = a1[2];
    v32 = a1[3];
    v31 = a1[4];
    v33 = a1[6];
    v40 = a1[5];
    sub_1000E0BFC(a1 + v13[7], a6 + v13[7], &unk_100271EA0, &qword_1001E77F0);
    v34 = *(a1 + v13[8]);
    sub_10000A7C0(a6 + v13[9], 1, 1, v14);
    (*(*(v14 - 8) + 16))(a6 + v13[10], a1 + v13[10], v14);
    v35 = *(a1 + v13[11]);
    *a6 = v41;
    *(a6 + 8) = v30;
    *(a6 + 16) = v29;
    *(a6 + 24) = v32;
    *(a6 + 32) = v31;
    *(a6 + 40) = v40;
    *(a6 + 48) = v33;
    *(a6 + v13[8]) = v34;
    sub_10000312C(v35);
  }
}

uint64_t sub_1000E05D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10007B9A4(&qword_100269AB8, &qword_1001E6680);
  v8 = sub_100003D10(v7);
  __chkstk_darwin(v8);
  v9 = sub_10000BF58();
  v10 = type metadata accessor for MediaCatalogSyncPageMetadata(v9);
  sub_100002CC4();
  v65 = v11;
  v13 = __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v58 - v16;
  sub_1000E0BFC(a1, v3, &qword_100269AB8, &qword_1001E6680);
  v63 = v10;
  if (sub_100009F34(v3, 1, v10) == 1)
  {
    sub_10000A00C(v3, &qword_100269AB8, &qword_1001E6680);
LABEL_31:
    sub_100006C54();
    return sub_1000E0B9C(a2, a3, v35);
  }

  v60 = a3;
  sub_1000E0B38(v3, v17);
  v58 = type metadata accessor for MediaCatalogSyncState(0);
  v59 = a2;
  v18 = *(a2 + *(v58 + 48));
  v19 = v17;
  v64 = *(v18 + 16);
  if (!v64)
  {
LABEL_30:
    sub_10007AD48(v19);
    a2 = v59;
    a3 = v60;
    goto LABEL_31;
  }

  v20 = 0;
  v21 = v18 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
  v61 = v18;
  v62 = v19;
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_1000E0B9C(v21 + v65[9] * v20, v15, type metadata accessor for MediaCatalogSyncPageMetadata);
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_29;
    }

    v22 = *(v63 + 20);
    v23 = &v15[v22];
    if (v15[v22])
    {
      if (v15[v22] == 1)
      {
        v24 = 0xE400000000000000;
        v25 = 1936748641;
      }

      else
      {
        v24 = 0xE700000000000000;
        v25 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v24 = 0xE700000000000000;
      v25 = 0x7373656E746966;
    }

    v26 = v19 + v22;
    if (*v26)
    {
      if (*v26 == 1)
      {
        v27 = 0xE400000000000000;
        v28 = 1936748641;
      }

      else
      {
        v27 = 0xE700000000000000;
        v28 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v27 = 0xE700000000000000;
      v28 = 0x7373656E746966;
    }

    v30 = *(v23 + 1);
    v29 = *(v23 + 2);
    v31 = *(v26 + 8);
    v32 = *(v26 + 16);
    if (v25 == v28 && v24 == v27)
    {
      break;
    }

    a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v61;
    v19 = v62;
    if (a2)
    {
      goto LABEL_24;
    }

LABEL_29:
    sub_10007AD48(v15);
    if (v64 == ++v20)
    {
      goto LABEL_30;
    }
  }

  v18 = v61;
  v19 = v62;
LABEL_24:
  v34 = v30 == v31 && v29 == v32;
  if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_10007AD48(v15);
  v37 = *(v18 + 16);
  if (v20 >= (v37 - 1))
  {
    v42 = _swiftEmptyArrayStorage;
    v43 = v59;
    goto LABEL_45;
  }

  if (v37 <= v20)
  {
    goto LABEL_47;
  }

  v19 = sub_1000E0C5C(v20 + 1, v37, v18);
  a2 = v38;
  v15 = v39;
  v21 = v40;
  if ((v40 & 1) == 0)
  {
LABEL_36:
    sub_10008A19C(v19, a2, v15, v21);
    v42 = v41;
    v43 = v59;
    goto LABEL_44;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    swift_unknownObjectRelease();
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = v44[2];

  if (__OFSUB__(v21 >> 1, v15))
  {
    goto LABEL_48;
  }

  if (v45 != (v21 >> 1) - v15)
  {
LABEL_49:
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v42 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v43 = v59;
  if (v42)
  {
    goto LABEL_45;
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_44:
  swift_unknownObjectRelease();
LABEL_45:
  v65 = v42;
  sub_10007AD48(v62);
  LODWORD(v64) = *v43;
  v46 = v43[1];
  v47 = v43[2];
  v48 = v43[4];
  v62 = v43[3];
  v63 = v46;
  v50 = v43[5];
  v49 = v43[6];
  v51 = v58;
  v52 = v60;
  sub_1000E0BFC(v43 + *(v58 + 28), v60 + *(v58 + 28), &unk_100271EA0, &qword_1001E77F0);
  v53 = *(v43 + v51[8]);
  sub_1000E0BFC(v43 + v51[9], v52 + v51[9], &unk_100271EA0, &qword_1001E77F0);
  v54 = v51[10];
  type metadata accessor for Date();
  sub_100002DDC();
  (*(v55 + 16))(v52 + v54, v43 + v54);
  v56 = *(v43 + v51[11]);
  *v52 = v64;
  v57 = v62;
  *(v52 + 8) = v63;
  *(v52 + 16) = v47;
  *(v52 + 24) = v57;
  *(v52 + 32) = v48;
  *(v52 + 40) = v50;
  *(v52 + 48) = v49;
  *(v52 + v51[8]) = v53;
  *(v52 + v51[11]) = v56;
  *(v52 + v51[12]) = v65;
}

uint64_t sub_1000E0B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E0B9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002DDC();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000E0BFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10007B9A4(a3, a4);
  sub_100002DDC();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1000E0C5C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
    sub_100003D10(v5);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000E0D00()
{
  v2 = type metadata accessor for URL.DirectoryHint();
  sub_100002CC4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = v7 - v6;
  v20 = type metadata accessor for URL();
  sub_100002CC4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002DEC();
  v14 = v13 - v12;
  sub_100003CA8(v1, v1[3]);
  sub_1000E1364(v14);
  sub_100003140();
  (*(v4 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  sub_10001ECE0();
  URL.append<A>(component:directoryHint:)();
  (*(v4 + 8))(v8, v2);
  v15 = dispatch thunk of FileStore.contents(at:)();
  if (v21)
  {
    return (*(v10 + 8))(v14, v20);
  }

  v18 = v15;
  v19 = v16;
  (*(v10 + 8))(v14, v20);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for MediaCatalogSyncState(0);
  sub_1000E159C(&qword_10026C730, &unk_1001EB8D8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_1000253FC(v18, v19);
}

uint64_t sub_1000E0F78(uint64_t a1)
{
  type metadata accessor for FileStoreProtectionType();
  sub_100002CC4();
  v46 = v3;
  v47 = v2;
  __chkstk_darwin(v2);
  sub_100002DEC();
  v48 = v5 - v4;
  v6 = type metadata accessor for URL.DirectoryHint();
  sub_100002CC4();
  v45 = v7;
  __chkstk_darwin(v8);
  sub_100002DEC();
  v11 = v10 - v9;
  v12 = type metadata accessor for URL();
  sub_100002CC4();
  v49 = v13;
  v15 = __chkstk_darwin(v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v37 - v18;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for MediaCatalogSyncState(0);
  sub_1000E159C(&qword_10026C728, &unk_1001EB8B0);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  if (!v1)
  {
    v43 = v20;
    v44 = v22;
    v41 = v11;
    v42 = v17;
    v24 = v6;
    v25 = v48;
    sub_100003CA8(v50, v50[3]);
    sub_1000E1364(v19);
    dispatch thunk of FileStore.createFolder(at:createIntermediateFolders:)();
    v26 = *(v49 + 1);
    v40 = v12;
    v49 = v26;
    v26(v19, v12);
    v27 = v50[4];
    v38 = v50[3];
    v39 = v27;
    v37[1] = sub_100003CA8(v50, v38);
    v28 = v42;
    sub_1000E1364(v42);
    sub_100003140();
    v29 = v45;
    v30 = v41;
    (*(v45 + 104))(v41, enum case for URL.DirectoryHint.inferFromPath(_:), v24);
    sub_10001ECE0();
    URL.append<A>(component:directoryHint:)();
    (*(v29 + 8))(v30, v24);
    v31 = v46;
    v32 = v25;
    v33 = v28;
    v34 = v47;
    (*(v46 + 104))(v32, enum case for FileStoreProtectionType.completeUntilFirstUserAuthentication(_:), v47);
    v36 = v43;
    v35 = v44;
    dispatch thunk of FileStore.createFile(at:contents:protectionType:)();
    sub_1000253FC(v36, v35);
    (*(v31 + 8))(v32, v34);
    return v49(v33, v40);
  }

  return result;
}

uint64_t sub_1000E1364@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = v9 - v8;
  v11 = type metadata accessor for MediaCatalogSyncStateStoreCore(0);
  v12 = *(v11 + 20);
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 16))(a1, v2 + v12, v13);
  v14 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v15 = *(v6 + 104);
  v15(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10001ECE0();
  URL.append<A>(component:directoryHint:)();
  v16 = *(v6 + 8);
  v16(v10, v4);
  sub_1000D0004(*(v18 + *(v11 + 24)), *(v18 + *(v11 + 24) + 8), *(v18 + *(v11 + 24) + 16));
  v15(v10, v14, v4);
  URL.append<A>(component:directoryHint:)();
  v16(v10, v4);
}

uint64_t type metadata accessor for MediaCatalogSyncStateStoreCore(uint64_t a1)
{
  result = qword_10026C790;
  if (!qword_10026C790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E159C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaCatalogSyncState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1000E1608(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000E1624(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1000E1664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000E16C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244520, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E1710(char a1)
{
  if (!a1)
  {
    return 0x7373656E746966;
  }

  if (a1 == 1)
  {
    return 1936748641;
  }

  return 0x6E776F6E6B6E75;
}

unint64_t sub_1000E176C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E16C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000E179C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E1710(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaCatalogSyncTopic(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000E18B8()
{
  result = qword_10026C7D0;
  if (!qword_10026C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C7D0);
  }

  return result;
}

unint64_t sub_1000E19C4()
{
  result = qword_10026C7D8;
  if (!qword_10026C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026C7D8);
  }

  return result;
}

uint64_t sub_1000E1A18(uint64_t a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  if (qword_100268718 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v30 = &type metadata for EngagementScheduleRunner;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v29);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x80000001001F6980;
  v6._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v6);
  v7 = type metadata accessor for ScheduleInfo(0);
  v30 = v7;
  v8 = sub_100017E64(v29);
  sub_1000A9424(a1, v8);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v29);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  LogInterpolation.init(stringInterpolation:)();
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10, v3);

  v11 = (a1 + *(v7 + 20));
  v12 = type metadata accessor for ScheduleInfo.Metadata(0);
  if (v11[*(v12 + 52)])
  {
    v13 = [objc_allocWithZone(AMSEngagementSyncRequest) init];
    sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1001E61B0;
    v15 = *v11;
    switch(*v11)
    {
      case 1:
        sub_100003164();
        break;
      case 2:
        sub_100005214();
        break;
      case 3:
        sub_100006C6C();
        break;
      default:
        break;
    }

    *(v14 + 32) = 0x636974796C616E61;
    *(v14 + 40) = 0xE900000000000073;
    sub_1000E2000(v14, v13);
    if (*(*a1 + 16))
    {

      v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v20.super.isa = 0;
    }

    [v13 setContext:v20.super.isa];

    if (qword_100268670 != -1)
    {
      swift_once();
    }

    sub_1000627E8();
  }

  else
  {
    v16 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
    v17 = [objc_opt_self() currentProcess];
    [v16 setClientInfo:v17];

    sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1001E8AB0;
    v15 = *v11;
    v19 = v18;
    switch(*v11)
    {
      case 1:
        sub_100003164();
        break;
      case 2:
        sub_100005214();
        break;
      case 3:
        sub_100006C6C();
        break;
      default:
        break;
    }

    sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
    *(v19 + 32) = sub_100092378();
    sub_1000F43B4(v19, v16);
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v16 setEvents:isa];

    sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
    v22 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
    v23 = [objc_allocWithZone(AMSEngagement) initWithBag:v22];

    v24 = [v23 _enqueue:v16];
  }

  v25 = &v11[*(v12 + 44)];
  v26 = *v25;
  v27 = v25[1];
  sub_100190178(*v25, v27, v15);
  sub_100066958(v15, v26, v27);
  sub_1001CF380();
}

void sub_1000E2000(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setApps:isa];
}

uint64_t sub_1000E207C(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E20F4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x5443454E4E4F43;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x5443454E4E4F43;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v6 = 1162626372;
      goto LABEL_7;
    case 2:
      v3 = 0xE300000000000000;
      v7 = 17735;
      goto LABEL_10;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1145128264;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x4843544150;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1414745936;
      break;
    case 6:
      v3 = 0xE300000000000000;
      v7 = 21840;
LABEL_10:
      v5 = v7 | 0x540000u;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v6 = 1094996053;
LABEL_7:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x455400000000;
      break;
    default:
      break;
  }

  v8 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE600000000000000;
      v9 = 1162626372;
      goto LABEL_17;
    case 2:
      v8 = 0xE300000000000000;
      v10 = 17735;
      goto LABEL_20;
    case 3:
      v8 = 0xE400000000000000;
      v2 = 1145128264;
      break;
    case 4:
      v8 = 0xE500000000000000;
      v2 = 0x4843544150;
      break;
    case 5:
      v8 = 0xE400000000000000;
      v2 = 1414745936;
      break;
    case 6:
      v8 = 0xE300000000000000;
      v10 = 21840;
LABEL_20:
      v2 = v10 | 0x540000u;
      break;
    case 7:
      v8 = 0xE600000000000000;
      v9 = 1094996053;
LABEL_17:
      v2 = v9 & 0xFFFF0000FFFFFFFFLL | 0x455400000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000071CC(v5, a2, v2);
  }

  return v12 & 1;
}

uint64_t sub_1000E228C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE100000000000000;
      v5 = 65;
      break;
    case 2:
      v3 = 0xE100000000000000;
      v5 = 66;
      break;
    case 3:
      v3 = 0xE100000000000000;
      v5 = 67;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE100000000000000;
      v2 = 65;
      break;
    case 2:
      v6 = 0xE100000000000000;
      v2 = 66;
      break;
    case 3:
      v6 = 0xE100000000000000;
      v2 = 67;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E2384(char a1, uint64_t a2)
{
  v3 = 0xE100000000000000;
  v4 = 47;
  switch(a1)
  {
    case 1:
      v4 = 63;
      break;
    case 2:
      v4 = 35;
      break;
    case 3:
      v4 = 0x45746E6563726570;
      v3 = 0xEE006465646F636ELL;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v4 = 0x6564756C637865;
      break;
    case 5:
      v4 = 0x736E655365736163;
      v3 = 0xED00006576697469;
      break;
    default:
      break;
  }

  v5 = 0xE100000000000000;
  v6 = 47;
  switch(a2)
  {
    case 1:
      v6 = 63;
      break;
    case 2:
      v6 = 35;
      break;
    case 3:
      v6 = 0x45746E6563726570;
      v5 = 0xEE006465646F636ELL;
      break;
    case 4:
      v5 = 0xE700000000000000;
      v6 = 0x6564756C637865;
      break;
    case 5:
      v6 = 0x736E655365736163;
      v5 = 0xED00006576697469;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1000E250C(char a1)
{
  if (a1)
  {
    v1 = 0xEC0000004C525564;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  sub_100026710();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000071CC(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000E25A0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1415071060;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1415071060;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x52454745544E49;
      break;
    case 2:
      v5 = 1112493122;
      break;
    case 3:
      v5 = 1279346002;
      break;
    case 4:
      v5 = 0x205952414D495250;
      v3 = 0xEB0000000059454BLL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x52454745544E49;
      break;
    case 2:
      v2 = 1112493122;
      break;
    case 3:
      v2 = 1279346002;
      break;
    case 4:
      v2 = 0x205952414D495250;
      v6 = 0xEB0000000059454BLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E26EC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1936748641;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1936748641;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x7373656E746966;
      break;
    case 2:
      v5 = 0xD000000000000016;
      v3 = 0x80000001001F2F10;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x64656C62616E65;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      sub_1000F125C();
      break;
    case 2:
      v2 = 0xD000000000000016;
      v6 = 0x80000001001F2F10;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x64656C62616E65;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E2834(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEE00636E79732D69;
  v3 = 0x70612D616964656DLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0x437972746E756F63;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001001F2F40;
    }

    else
    {
      v6 = 0xEB0000000065646FLL;
    }
  }

  else
  {
    v5 = 0x70612D616964656DLL;
    v6 = 0xEE00636E79732D69;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0x437972746E756F63;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001001F2F40;
    }

    else
    {
      v2 = 0xEB0000000065646FLL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008F34(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1000E293C(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  sub_100026710();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000071CC(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000E29C0(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 25705;
  }

  else
  {
    v3 = 0x73644961657261;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 25705;
  }

  else
  {
    v5 = 0x73644961657261;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E2A48(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 25705;
  }

  else
  {
    v3 = 0x7374656B637562;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 25705;
  }

  else
  {
    v5 = 0x7374656B637562;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1000E2AD0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656D6954646E65;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x656D6954646E65;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 25705;
      break;
    case 2:
      v5 = 0x6D69547472617473;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v5 = 0x6F726665726F7473;
      v3 = 0xEB0000000073746ELL;
      break;
    case 4:
      v5 = 0x6E656D7461657274;
      v3 = 0xEA00000000007374;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 25705;
      break;
    case 2:
      v2 = 0x6D69547472617473;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v2 = 0x6F726665726F7473;
      v6 = 0xEB0000000073746ELL;
      break;
    case 4:
      v2 = 0x6E656D7461657274;
      v6 = 0xEA00000000007374;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E2C48(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C62616568636163;
  v4 = a1;
  v5 = 0x6C62616568636163;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v5 = 0x656D697265707865;
      v6 = 0xEB0000000073746ELL;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v5 = 25705;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1953259891;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 1684366707;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x656D697265707865;
      v2 = 0xEB0000000073746ELL;
      break;
    case 2:
      v2 = 0xE200000000000000;
      v3 = 25705;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1953259891;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 1684366707;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008F34(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1000E2D98(uint64_t a1)
{
  sub_1000F125C();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 1936748641;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = v3;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1936748641;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2 == 1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v5 == v3 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000071CC(v5, v2, v3);
  }

  return v9 & 1;
}

uint64_t sub_1000E2E6C()
{
  sub_100026710();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000E2EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000071CC(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_1000E2F7C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x65756575716E65;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x696577746867696CLL;
    }

    else
    {
      v4 = 1668184435;
    }

    if (v3 == 1)
    {
      v5 = 0xEF636E7953746867;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x65756575716E65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x696577746867696CLL;
    }

    else
    {
      v2 = 1668184435;
    }

    if (a2 == 1)
    {
      v6 = 0xEF636E7953746867;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000071CC(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1000E3074(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x79654B6863746162;
  v4 = a1;
  v5 = 0x79654B6863746162;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x79654B6568636163;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x64657461657263;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = 0x73657269707865;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x617461646174656DLL;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v5 = 1752457584;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v5 = 0x6574617473;
      break;
    case 7:
      v5 = 0x6E6564496B736174;
      v6 = 0xEE00726569666974;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v5 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x79654B6568636163;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x64657461657263;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x73657269707865;
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x617461646174656DLL;
      break;
    case 5:
      v2 = 0xE400000000000000;
      v3 = 1752457584;
      break;
    case 6:
      v2 = 0xE500000000000000;
      v3 = 0x6574617473;
      break;
    case 7:
      v3 = 0x6E6564496B736174;
      v2 = 0xEE00726569666974;
      break;
    case 8:
      v2 = 0xE700000000000000;
      v3 = 0x6E6F6973726576;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008F34(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1000E32AC(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000032;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  sub_100026710();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000071CC(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1000E3340(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

void sub_1000E33CC(unint64_t a1, unint64_t *a2)
{
  v5 = sub_1000116AC(a1);
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v9 = v7;
    sub_1000E6878(&v9, a2);

    if (v2)
    {
      return;
    }
  }
}

void sub_1000E349C()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v10 = sub_100003D10(v9);
  __chkstk_darwin(v10);
  sub_10000C79C();
  v11 = sub_100008BF8();
  sub_10008A2E0(v11, v12, &unk_10026FEC0, &qword_1001E6280);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100009F34(v0, 1, v13);

  if (v14 == 1)
  {
    sub_10000A0C4(v0, &unk_10026FEC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v0, v13);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_10000A0C4(v6, &unk_10026FEC0);
    sub_100002FB8();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_100002FB8();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  swift_task_create();

  sub_10000A0C4(v6, &unk_10026FEC0);

LABEL_9:
  sub_100005F14();
}

void sub_1000E375C()
{
  sub_1000F11EC();
  if (v1)
  {
    sub_10007B9A4(&qword_10026C888, &qword_1001EBCE8);
    v2 = sub_10000B8A8();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  sub_10000B204();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 8;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(v0 + 48) + 16 * (__clz(__rbit64(v6)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100002C4C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100002C4C(v29, v30);
    v13 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v13) & ~v8[v13 >> 6]) == 0)
    {
      sub_100022250();
      while (++v14 != v16 || (v15 & 1) == 0)
      {
        v17 = v14 == v16;
        if (v14 == v16)
        {
          v14 = 0;
        }

        v15 |= v17;
        if (v8[v14] != -1)
        {
          sub_100003F60();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1000074F4();
LABEL_21:
    v6 &= v6 - 1;
    sub_100005890();
    *(v8 + v18) |= v19;
    sub_10000DE3C();
    *v20 = v22;
    v20[1] = v23;
    sub_1000F11AC();
    sub_100002C4C(v30, v21);
    sub_10005EEBC();
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1000E39C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10007B9A4(&qword_10026C888, &qword_1001EBCE8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100002C4C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100002C4C(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~v7[v14 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = v7[v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~v7[v14 >> 6])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_100002C4C(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1000E3C88()
{
  sub_1000F11EC();
  if (v1)
  {
    sub_10007B9A4(&qword_10026C888, &qword_1001EBCE8);
    v2 = sub_10000B8A8();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  sub_10000B204();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 8;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = *(*(v0 + 48) + 8 * v11);
    sub_100011BAC(*(v0 + 56) + 32 * v11, v33 + 8);
    *&v33[0] = v12;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    *&v30[0] = v12;
    swift_dynamicCast();
    sub_100002C4C((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100002C4C(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100002C4C(v29, v30);
    v13 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v13) & ~v8[v13 >> 6]) == 0)
    {
      sub_100022250();
      while (++v14 != v16 || (v15 & 1) == 0)
      {
        v17 = v14 == v16;
        if (v14 == v16)
        {
          v14 = 0;
        }

        v15 |= v17;
        if (v8[v14] != -1)
        {
          sub_100003F60();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1000074F4();
LABEL_21:
    v6 &= v6 - 1;
    sub_100005890();
    *(v8 + v18) |= v19;
    sub_10000DE3C();
    *v20 = v22;
    v20[1] = v23;
    sub_1000F11AC();
    sub_100002C4C(v30, v21);
    sub_10005EEBC();
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1000E3EE4()
{
  sub_1000F11EC();
  if (v1)
  {
    sub_10007B9A4(&qword_10026C918, &qword_1001EBDF8);
    v4 = sub_10000B8A8();
  }

  else
  {
    v4 = _swiftEmptyDictionarySingleton;
  }

  sub_10000B204();
  sub_1000163C8();

  v5 = 0;
  while (v2)
  {
    v6 = v5;
LABEL_10:
    sub_1000F1248();
    v8 = (*(v0 + 48) + ((v6 << 10) | (16 * v7)));
    v10 = *v8;
    v9 = v8[1];

    sub_10007B9A4(&qword_10026C920, &qword_1001EBE00);
    swift_dynamicCast();
    v11 = sub_100012A94();
    v12 = v11;
    if (v13)
    {
      v14 = (v4[6] + 16 * v11);
      *v14 = v10;
      v14[1] = v9;

      *(v4[7] + 8 * v12) = v21;
      swift_unknownObjectRelease();
      v5 = v6;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      sub_1000031B8((v11 >> 3) & 0x1FFFFFFFFFFFFFF8, v20);
      v16 = (v15 + 16 * v12);
      *v16 = v10;
      v16[1] = v9;
      *(v4[7] + 8 * v12) = v21;
      v17 = v4[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_18;
      }

      v4[2] = v19;
      v5 = v6;
    }
  }

  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v6 >= v3)
    {

      sub_1000058C8();
      return;
    }

    v2 = *(v0 + 64 + 8 * v6);
    ++v5;
    if (v2)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

unint64_t sub_1000E40A0()
{
  sub_1000F11EC();
  if (v1)
  {
    sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
    v4 = sub_10000B8A8();
  }

  else
  {
    v4 = _swiftEmptyDictionarySingleton;
  }

  sub_10000B204();
  sub_1000163C8();

  v6 = 0;
  while (v2)
  {
    v7 = v6;
LABEL_10:
    sub_1000F1248();
    v9 = v8 | (v7 << 6);
    v10 = (*(v0 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    sub_1000262E4(*(v0 + 56) + 40 * v9, v30);
    *&v29 = v11;
    *(&v29 + 1) = v12;
    v26[2] = v29;
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v13 = v29;
    sub_10003B104(v27, v22);

    sub_10007B9A4(&qword_10026AB48, &unk_1001E8700);
    swift_dynamicCast();
    sub_100002C4C(&v23, v25);
    sub_100002C4C(v25, v26);
    sub_100002C4C(v26, &v24);
    result = sub_100012A94();
    v14 = result;
    if (v15)
    {
      *(v4[6] + 16 * result) = v13;

      v16 = (v4[7] + 32 * v14);
      sub_100002C00(v16);
      result = sub_100002C4C(&v24, v16);
      v6 = v7;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      sub_1000031B8((result >> 3) & 0x1FFFFFFFFFFFFFF8, v21);
      *(v17 + 16 * v14) = v13;
      result = sub_100002C4C(&v24, (v4[7] + 32 * v14));
      v18 = v4[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_18;
      }

      v4[2] = v20;
      v6 = v7;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      return v4;
    }

    v2 = *(v0 + 64 + 8 * v7);
    ++v6;
    if (v2)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t *sub_1000E42D8(uint64_t a1, void *a2, void *a3)
{
  result = sub_100003CA8((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1000E3340(v6, a3);
  }

  if (a2)
  {
    return sub_10004321C(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E4344(unint64_t a1)
{
  v59 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v56 = *(v63 - 8);
  __chkstk_darwin(v63);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v13 = sub_1000116AC(a1);
  sub_10007B9A4(&qword_10026C870, &qword_1001EBCB8);
  v62 = v13;
  if (!v13)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    return Promise.__allocating_init(value:)();
  }

  v54 = v2;
  v44 = v11;
  v45 = v7;
  v46 = v5;
  v47 = v4;
  v43 = Promise.__allocating_init()();
  v57 = dispatch_group_create();
  v60 = swift_allocObject();
  *(v60 + 16) = _swiftEmptyArrayStorage;
  v14 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v55 = "rk completed with error: ";
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1002878E8;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_1000140D0(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v56 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v63);
  v56 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  result = swift_allocObject();
  v63 = result;
  *(result + 16) = _swiftEmptyArrayStorage;
  if (v62 >= 1)
  {
    v55 = v14;
    v17 = 0;
    v53 = v61 & 0xC000000000000001;
    v52 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v54 + 8);
    v51 = (v54 + 104);
    do
    {
      if (v53)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v17;
      v18 = v57;
      dispatch_group_enter(v57);
      v19 = swift_allocObject();
      v20 = v56;
      v21 = v63;
      v19[2] = v56;
      v19[3] = v21;
      v22 = v59;
      v19[4] = v60;
      v19[5] = v18;
      v23 = v58;
      (*v51)(v58, v52, v22);

      v54 = v20;
      v24 = v18;
      v25 = v55;
      v26 = static OS_dispatch_queue.global(qos:)();
      (*v50)(v23, v22);
      v66 = v25;
      v67 = &protocol witness table for OS_dispatch_queue;
      aBlock[0] = v26;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1000F0714;
      *(v27 + 24) = v19;
      v28 = objc_allocWithZone(NSLock);
      v29 = v26;

      v30 = [v28 init];
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v27;
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v27;
      v33 = v30;
      swift_retain_n();
      v34 = v33;
      Promise.then(perform:orCatchError:on:)();

      sub_100002C00(aBlock);
    }

    while (v62 != v17);
    v35 = swift_allocObject();
    v36 = v43;
    v35[2] = v60;
    v35[3] = v36;
    v35[4] = v63;
    v67 = sub_10006159C;
    v68 = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    v66 = &unk_10024A018;
    v37 = _Block_copy(aBlock);

    v38 = v49;
    static DispatchQoS.unspecified.getter();
    v64 = _swiftEmptyArrayStorage;
    sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_1000140D0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
    v39 = v45;
    v40 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v54;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v37);

    (*(v46 + 8))(v39, v40);
    (*(v48 + 8))(v38, v44);

    return v36;
  }

  __break(1u);
  return result;
}

id sub_1000E4C6C()
{
  if (qword_100268670 != -1)
  {
    sub_100003198(&qword_100268670);
  }

  v1 = qword_1002877D0;

  return v1;
}

uint64_t sub_1000E4D2C()
{
  sub_100003D28();
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v1 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  v0[27] = v1;
  sub_100004810();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  v4 = [v3 valuePromise];
  v0[28] = v4;

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1000E4F00;
  v5 = swift_continuation_init();
  v6 = sub_10007B9A4(&qword_10026BB98, &qword_1001E93A0);
  v0[29] = v6;
  v0[25] = v6;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1000E42D8;
  v0[21] = &unk_10024AA40;
  v0[22] = v5;
  [v4 resultWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E4F00()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000E5000()
{
  sub_100003D28();
  v1 = *(v0 + 208);
  v2 = *(v0 + 224);
  v3 = [v1 BOOLValue];

  if (v3)
  {

    sub_100002D8C();

    return v4();
  }

  else
  {
    if (qword_1002685E8 != -1)
    {
      sub_10001BD98(&qword_1002685E8);
    }

    v6 = [qword_100287778 flush];
    *(v0 + 248) = v6;
    *(v0 + 80) = v0;
    sub_100017D74();
    sub_10003AEBC();
    *(v0 + 152) = 1107296256;
    sub_100017F64(v7);
    [v6 resultWithCompletion:v0 + 144];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_1000E515C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 112);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000E525C()
{
  sub_100004768();
  v1 = *(v0 + 248);

  sub_100002D8C();

  return v2();
}

uint64_t sub_1000E52C4()
{
  sub_100003D28();
  v1 = v0[28];
  swift_willThrow();

  if (qword_1002685E8 != -1)
  {
    sub_10001BD98(&qword_1002685E8);
  }

  v2 = [qword_100287778 flush];
  v0[31] = v2;
  v0[10] = v0;
  sub_100017D74();
  sub_10003AEBC();
  v0[19] = 1107296256;
  sub_100017F64(v3);
  [v2 resultWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1000E53D8()
{
  sub_100003D28();
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  swift_willThrow();

  sub_100002D8C();

  return v3();
}

void sub_1000E5458()
{
  sub_100003D74();
  v59 = v1;
  v3 = v2;
  sub_100002DFC();
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v57 = v7 - v6;
  v61 = v0;
  v8 = sub_1000F041C(v0);
  v60 = 0;
  LODWORD(v53) = v3;
  if (!v8)
  {
    v12 = &off_100244588;
    goto LABEL_19;
  }

  v9 = v8;
  v10 = 0;
  v58 = *(v8 + 16);
  v55 = "Using existing engine performer";
  v11 = v8 + 40;
  v12 = _swiftEmptyArrayStorage;
  v54 = xmmword_1001E5F70;
  v56 = v8;
  v52 = v8 + 40;
LABEL_3:
  v13 = (v11 + 16 * v10);
  v62 = v12;
  while (1)
  {
    if (v58 == v10)
    {

LABEL_19:
      v30 = 0;
      v31 = &v59[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider];
      v32 = *(v12 + 16);
      v52 = 0x80000001001F31B0;
      v33 = 25;
      if (v53)
      {
        v33 = 17;
      }

      v53 = v33;
      v58 = _swiftEmptyArrayStorage;
      p_attr = &stru_100261FF8.attr;
      v35 = &qword_10026A758;
      v36 = &qword_1001EBE80;
      v62 = v12;
      v63 = &v59[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider];
      v59 = v32;
      while (1)
      {
        if (v32 == v30)
        {

          sub_100005F14();
          return;
        }

        if (v30 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v37 = v30[v12 + 32];
        v38 = [v61 p_attr[475]];
        if (!v38)
        {
          break;
        }

        v39 = v38;
        sub_100003CA8(v31, *(v31 + 3));
        sub_10003B834(&v67);
        if (!v67)
        {
          goto LABEL_30;
        }

        v40 = p_attr;
        v78 = v69;
        v79 = v67;
        sub_10008A2E0(&v78, v64, v35, v36);
        sub_10000A0C4(&v79, &qword_10026A6F8);
        v80 = v68;
        sub_10000A0C4(&v80, &unk_10026CD20);
        sub_10000A0C4(&v78, v35);
        p_attr = v36;
        v41 = v35;
        v42 = v78;
        if (v78)
        {
          v12 = &v52;
          v64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64[1] = v43;
          __chkstk_darwin(v64[0]);
          *(&v52 - 2) = v64;
          v32 = v60;
          v35 = sub_10013D5B0(sub_1000BF450, (&v52 - 4), v42);
          v60 = v32;
          v31 = v41;
          sub_10000A0C4(&v78, v41);

          v36 = p_attr;
          if ((v35 & 1) == 0)
          {
            sub_10005ADD0();
            goto LABEL_30;
          }

          sub_10000F284(v37, 1, &v70);

          v57 = v77;
          v12 = v76;
          v44 = v74;
          *&v54 = v75;
          p_attr = v73;
          v55 = v72;
          v56 = v71;
          v37 = BYTE1(v70);
          v35 = v70;
LABEL_33:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100004C7C();
            sub_10000F310();
            v58 = v50;
          }

          v32 = v58[2];
          v45 = v58[3];
          if (v32 >= v45 >> 1)
          {
            sub_100005C40(v45);
            sub_10000F310();
            v58 = v51;
          }

          ++v30;
          v46 = v58;
          v58[2] = v32 + 1;
          v47 = &v46[8 * v32];
          *(v47 + 32) = v35;
          *(v47 + 33) = v37;
          v48 = v66;
          *(v47 + 34) = v65;
          *(v47 + 19) = v48;
          v49 = v55;
          v47[5] = v56;
          v47[6] = v49;
          v47[7] = p_attr;
          v47[8] = v44;
          v47[9] = v54;
          *(v47 + 80) = v12;
          LODWORD(v49) = v64[0];
          *(v47 + 21) = *(v64 + 3);
          *(v47 + 81) = v49;
          v47[11] = v57;
          sub_10005ADD0();
        }

        else
        {
          v35 = v41;
          v36 = p_attr;
          p_attr = v40;
LABEL_30:

          ++v30;
        }
      }

      v31 = v35;
      v56 = [objc_opt_self() currentProcess];
      v35 = 0;
      v12 = 2;
      v55 = -1;
      p_attr = 0xD000000000000018;
      v44 = v52;
      *&v54 = v53;
      v57 = 10485760;
      goto LABEL_33;
    }

    if (v10 >= v9[2])
    {
      break;
    }

    v14 = *(v13 - 1);
    v15 = *v13;

    v16._countAndFlagsBits = v14;
    v16._object = v15;
    v17 = _findStringSwitchCase(cases:string:)(&off_100244D78, v16);
    if (v17 < 4)
    {
      v25 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100004C7C();
        sub_1000589D0();
        v12 = v28;
      }

      v11 = v52;
      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_100005C40(v26);
        sub_1000589D0();
        v12 = v29;
      }

      ++v10;
      *(v12 + 16) = v27 + 1;
      *(v12 + v27 + 32) = v25;
      goto LABEL_3;
    }

    if (qword_1002686F0 != -1)
    {
      sub_100006C90();
      swift_once();
    }

    v63 = qword_100287850;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v18 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v18);
    sub_1000056F8();
    v19 = swift_allocObject();
    *(v19 + 16) = v54;
    v73 = type metadata accessor for EngagementService();
    v70 = v59;
    v20 = v59;
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v70);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100003B48();
    v73 = &type metadata for String;
    v70 = v14;
    v71 = v15;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v70, &qword_10026D350);
    v23._countAndFlagsBits = 0xD00000000000001FLL;
    v23._object = (v55 | 0x8000000000000000);
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    LogInterpolation.init(stringInterpolation:)();
    v24 = static os_log_type_t.error.getter();
    sub_1000036B0(v24, v19);

    v13 += 2;
    ++v10;
    v12 = v62;
    v9 = v56;
  }

LABEL_40:
  __break(1u);
}

void sub_1000E5C04(char *a2@<X1>, void *a3@<X2>, void *a5@<X8>)
{
  sub_100003CA8(&a2[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider], *&a2[OBJC_IVAR____TtC14amsengagementd17EngagementService_appDefaultsProvider + 24]);
  sub_10003B834(&v42);
  v6 = v42;
  if (v42)
  {
    v32 = a5;
    v7 = 0;
    v47 = v43;
    *v48 = v44;
    v31 = v46;
    *&v48[16] = v45;
    v49 = v42;
    v36 = *(v42 + 16);
    v8 = (v42 + 56);
    v9 = _swiftEmptyArrayStorage;
    v33 = v42;
    while (v36 != v7)
    {
      if (v7 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v10 = *(v8 - 2);
      v11 = *(v8 - 8);
      v12 = *v8;
      v13 = *(v8 - 24);
      v37[0] = v13;
      v38 = v10;
      v39 = v11;
      v40 = v12;

      if (sub_1000E5FB8(v37, a3, a2))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10009B948(0, v9[2] + 1, 1);
          v9 = v41;
        }

        v16 = v9[2];
        v15 = v9[3];
        v17 = v9;
        if (v16 >= v15 >> 1)
        {
          sub_10009B948(v15 > 1, v16 + 1, 1);
          v17 = v41;
        }

        v17[2] = v16 + 1;
        v18 = &v17[4 * v16];
        *(v18 + 32) = v13;
        v18[5] = v10;
        *(v18 + 48) = v11;
        v18[7] = v12;
        v9 = v17;
      }

      else
      {
      }

      v8 += 4;
      ++v7;
      v6 = v33;
    }

    sub_10000A0C4(&v49, &qword_10026A6F8);
    v50 = *&v48[8];
    sub_10000A0C4(&v50, &unk_10026CD20);
    v51 = v31;
    sub_10000A0C4(&v51, &unk_10026A758);
    v19 = v9;
    v20 = v9[2];
    if (!v20)
    {

      v22 = 0;
      a5 = v32;
      goto LABEL_26;
    }

    a5 = v32;
    sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
    v21 = sub_100092378();
    v22 = v21;
    v23 = 0;
    v24 = v19[2];
    v25 = 4;
    v26 = v20;
    while (v24)
    {
      v23 |= LOBYTE(v19[v25]);
      --v24;
      v25 += 4;
      if (!--v26)
      {
        [v21 setAllowsResponse:v23 & 1];
        v27 = 0;
        v28 = v19[2];
        v29 = v19 + 6;
        while (v28)
        {
          if (*v29)
          {
            v30 = 3;
          }

          else
          {
            v30 = *(v29 - 1);
          }

          v27 |= v30;
          --v28;
          v29 += 32;
          if (!--v20)
          {

            [v22 setComponents:v27];
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_26:
    *a5 = v22;
  }
}