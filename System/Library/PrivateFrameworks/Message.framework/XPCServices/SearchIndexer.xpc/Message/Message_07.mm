void FlagUpdatesToBeSent.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_100092C14(a1, a2);

  sub_100092C14(a1, a3);
}

Swift::Int FlagUpdatesToBeSent.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  sub_100092C14(v5, a1);
  sub_100092C14(v5, a2);
  return sub_1004A6F14();
}

Swift::Int sub_10008444C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_100092C14(v4, v1);
  sub_100092C14(v4, v2);
  return sub_1004A6F14();
}

void sub_1000844A0(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_100092C14(a1, v3);

  sub_100092C14(a1, v4);
}

Swift::Int sub_1000844E0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1004A6E94();
  sub_100092C14(v5, v2);
  sub_100092C14(v5, v3);
  return sub_1004A6F14();
}

uint64_t sub_100084530(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_100083750(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_100083750(v2, v3);
}

void *FlagEncoder.test_encode(_:)(unint64_t a1, char a2)
{
  v27 = _swiftEmptySetSingleton;
  if (a1)
  {
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = Flag.seen.unsafeMutableAddressor();
    v7 = *v6;
    v8 = v6[1];

    sub_10008867C(&v26, v7, v8);

    if ((a1 & 0x100) == 0)
    {
LABEL_3:
      if ((a1 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v9 = Flag.deleted.unsafeMutableAddressor();
  v10 = *v9;
  v11 = v9[1];

  sub_10008867C(&v26, v10, v11);

  if ((a1 & 0x10000) == 0)
  {
LABEL_4:
    v5 = v2[1];
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  v12 = Flag.answered.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];

  sub_10008867C(&v26, v13, v14);

  v5 = v2[1];
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((a1 & 0x1000000) != 0)
  {
    v15 = *v2;

    sub_10008867C(&v26, v15, v5);
  }

LABEL_11:
  if ((a1 & 0x100000000) != 0)
  {

    sub_1000932CC(v16);
  }

  if ((a1 & 0x10000000000) != 0)
  {

    sub_1000932CC(v17);
  }

  v18 = HIBYTE(a1);
  if (BYTE6(a1))
  {

    sub_1000932CC(v19);
  }

  if (!v18)
  {
    goto LABEL_27;
  }

  v20 = Flag.flagged.unsafeMutableAddressor();
  v21 = *v20;
  v22 = v20[1];

  sub_10008867C(&v26, v21, v22);

  if (v18 <= 6)
  {
    if (((1 << SHIBYTE(a1)) & 0x54) == 0)
    {
      if (((1 << SHIBYTE(a1)) & 3) != 0)
      {
        goto LABEL_27;
      }

      if (v18 != 5)
      {
        goto LABEL_25;
      }

LABEL_26:
      sub_10008867C(&v26, 0x616C466C69614D24, 0xED00003274694267);

      goto LABEL_27;
    }

    sub_10008867C(&v26, 0x616C466C69614D24, 0xED00003074694267);

    if ((v18 - 5) < 2)
    {
      goto LABEL_26;
    }

    if (v18 == 2)
    {
      goto LABEL_27;
    }
  }

LABEL_25:
  sub_10008867C(&v26, 0x616C466C69614D24, 0xED00003174694267);

  if (v18 >= 5)
  {
    goto LABEL_26;
  }

LABEL_27:
  v23 = v2[12];
  if (v23 && (a2 & 1) != 0)
  {
    v24 = v2[11];

    sub_10008867C(&v26, v24, v23);
  }

  return v27;
}

uint64_t FlagEncoder.encode(_:)(unint64_t a1, uint64_t a2, unsigned int a3)
{
  *&v50 = a2;
  BYTE8(v50) = a3;
  v5 = *(&v50 + 1);
  v6 = a3 >> 8;
  *&v50 = _swiftEmptySetSingleton;
  *(&v50 + 1) = _swiftEmptySetSingleton;
  v7 = a2 & 1;
  v49[0] = a2 & 1;
  *&v49[1] = v5;
  v49[9] = BYTE1(a3);
  FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v49, *&v49[8]);
  v8 = sub_100014D94();

  if (v8)
  {
    v9 = Flag.seen.unsafeMutableAddressor();
    v10 = *v9;
    v11 = v9[1];

    sub_10008867C(v49, v10, v11);
  }

  v49[0] = v7;
  *&v49[1] = v5;
  v49[9] = v6;
  FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v49, *&v49[8]);
  v12 = sub_100014D94();

  if (v12)
  {
    v13 = Flag.deleted.unsafeMutableAddressor();
    v14 = *v13;
    v15 = v13[1];

    sub_10008867C(v49, v14, v15);
  }

  v49[0] = v7;
  *&v49[1] = v5;
  v49[9] = v6;
  FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v49, *&v49[8]);
  v16 = sub_100014D94();

  if (v16)
  {
    v17 = Flag.answered.unsafeMutableAddressor();
    v18 = *v17;
    v19 = v17[1];

    sub_10008867C(v49, v18, v19);
  }

  v20 = *(v3 + 8);
  if (v20)
  {
    v21 = *v3;

    v49[0] = v7;
    *&v49[1] = v5;
    v49[9] = v6;
    FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v49, *&v49[8]);
    v22 = sub_100014D94();

    if (v22)
    {
      sub_10008867C(v49, v21, v20);
    }
  }

  v49[0] = v7;
  *&v49[1] = v5;
  v49[9] = v6;
  FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v49, *&v49[8]);
  v23 = sub_100014D94();

  if (v23)
  {
    v24 = *(v3 + 32);
    v49[0] = v7;
    *&v49[1] = v5;
    v49[9] = v6;
    sub_100080FBC(v24);
    sub_1000811C0(*(v3 + 48));
  }

  v49[0] = v7;
  *&v49[1] = v5;
  v49[9] = v6;
  FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v49, *&v49[8]);
  v25 = sub_100014D94();

  if (v25)
  {
    v26 = *(v3 + 40);
    v49[0] = v7;
    *&v49[1] = v5;
    v49[9] = v6;
    sub_100081078(v26);
    sub_1000811C0(*(v3 + 48));
  }

  v49[0] = v7;
  *&v49[1] = v5;
  v49[9] = v6;
  FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v49, *&v49[8]);
  v27 = sub_100014D94();

  if (v27)
  {
    v28 = *(v3 + 56);
    if (BYTE6(a1))
    {
      if (BYTE6(a1) != 1)
      {
        sub_1000811C0(v28);
        sub_100081134(*(v3 + 64));
        goto LABEL_22;
      }

      sub_100081134(v28);
    }

    else
    {
      sub_1000811C0(v28);
    }

    sub_1000811C0(*(v3 + 64));
LABEL_22:
    sub_1000811C0(*(v3 + 72));
  }

  v49[0] = v7;
  *&v49[1] = v5;
  v49[9] = v6;
  FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v49, *&v49[8]);
  v29 = sub_100014D94();

  if ((v29 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (HIBYTE(a1))
  {
    v33 = Flag.flagged.unsafeMutableAddressor();
    v34 = *v33;
    v35 = v33[1];

    sub_10008867C(v49, v34, v35);

    if ((*(v3 + 80) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v30 = Flag.flagged.unsafeMutableAddressor();
    v31 = *v30;
    v32 = v30[1];

    sub_10008867C(v49, v31, v32);

    if ((*(v3 + 80) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v36 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v37 = *v36;
  v38 = v36[1];

  sub_10008867C(v49, v37, v38);

  v39 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v40 = *v39;
  v41 = v39[1];

  sub_10008867C(v49, v40, v41);

  v42 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v43 = *v42;
  v44 = v42[1];

  sub_10008867C(v49, v43, v44);

LABEL_29:
  v45 = *(v3 + 96);
  if (v45)
  {
    v46 = *(v3 + 88);

    v49[0] = v7;
    *&v49[1] = v5;
    v49[9] = v6;
    FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v49, *&v49[8]);
    v47 = sub_100014D94();

    if (v47)
    {
      sub_10008867C(v49, v46, v45);
    }
  }

  return v50;
}

unint64_t sub_100084F84()
{
  result = Flag.Keyword.init(_:)(0x4364756F6C436924uLL, 0xEE0070756E61656CLL);
  if (v1)
  {
    static Flag.Keyword.iCloudCleanup = result;
    unk_1005DDF20 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Flag.Keyword.iCloudCleanup.getter()
{
  if (qword_1005CCE50 != -1)
  {
    swift_once();
  }

  v0 = static Flag.Keyword.iCloudCleanup;

  return v0;
}

char *sub_100085070(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_10008517C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_10008529C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF040, &qword_1004D1F30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000853A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEEA0, &unk_1004D1D70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100085514(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005CF000, &qword_1004D1EE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10000C9C0(&qword_1005CF008, &qword_1004D1EF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100085648(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005CEFF0, &qword_1004D1ED8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_10000C9C0(&qword_1005CEFF8, &qword_1004D1EE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10008578C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF038, &qword_1004D1F28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100085898(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000859C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF028, &qword_1004D1F18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100085AD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF020, &qword_1004D1F10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100085BF0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_100085CEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF048, &qword_1004D1F38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100085E50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    sub_10000C9C0(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 192);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[192 * v11])
    {
      memmove(v15, v16, 192 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100085F94(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CDFD8, &qword_1004D01E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 240);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[240 * v8])
    {
      memmove(v12, v13, 240 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000860D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF0B0, &unk_1004D1FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000861E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF0B8, &qword_1004D1FC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000863B8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    sub_10000C9C0(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000864E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
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

char *sub_1000865E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

void *sub_1000866F0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005CEF18, &qword_1004D1DE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[24 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 192 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005CEF20, &qword_1004D1DF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100086858(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  sub_10000C9C0(a5, a6);
  v16 = *(sub_10000C9C0(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
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
  v21 = *(sub_10000C9C0(a7, a8) - 8);
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

char *sub_100086A40(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100086B4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF090, &qword_1004D1F80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100086C58(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEF60, &qword_1004D1E40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100086DB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF080, &qword_1004D1F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100086ED4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF0E8, &qword_1004D1FF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100086FF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF0E0, &qword_1004D1FE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100087114(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF0C0, &qword_1004D1FC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100087220(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF070, &qword_1004D1F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_10008737C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEEF8, &qword_1004D1DC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000874A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

char *sub_100087684(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEE90, &unk_1004D1D60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1000877A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_1000878A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEE80, &qword_1004D1D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000879A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEFD0, &qword_1004D1EB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100087AC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEFB0, &qword_1004D1E98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100087BE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005CEFB8, &unk_1004D1EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10000C9C0(&qword_1005CEFC0, &qword_1004D7050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100087D1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEFA8, &qword_1004D1E90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 392);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[392 * v8])
    {
      memmove(v12, v13, 392 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100087E44(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CEFC8, &qword_1004D1EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100087F5C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10000C9C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 12);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 12 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

uint64_t sub_100088064(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004A6E94();
  v6 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    sub_1004A6EB4(3uLL);
    v6 = a2 & 1;
  }

  sub_1004A6EB4(v6);
  v7 = sub_1004A6F14();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(v5 + 48);
      v12 = *(v11 + v9);
      switch(v12)
      {
        case 2:
          if (a2 == 2)
          {
            result = 0;
            LOBYTE(a2) = 2;
            goto LABEL_18;
          }

          break;
        case 3:
          if (a2 == 3)
          {
            result = 0;
            LOBYTE(a2) = 3;
            goto LABEL_18;
          }

          break;
        case 4:
          if (a2 == 4)
          {
            result = 0;
            LOBYTE(a2) = 4;
            goto LABEL_18;
          }

          break;
        default:
          if ((a2 - 2) >= 3u && ((v12 ^ a2) & 1) == 0)
          {
            result = 0;
            LOBYTE(a2) = *(v11 + v9);
            goto LABEL_18;
          }

          break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  sub_10008CAAC(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v15;
  result = 1;
LABEL_18:
  *a1 = a2;
  return result;
}

Swift::Int sub_100088220(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = *v3;
  sub_1004A6E94();
  sub_1004A6EB4(a3 | (a3 << 32));
  result = sub_1004A6F14();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if ((v12[2] | (v12[2] << 32)) == (a3 | (a3 << 32)))
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v14)
    {
      v15 = v13 == a2;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_14:

      v18 = *(v7 + 48) + 16 * v10;
      v19 = *v18;
      LODWORD(v18) = *(v18 + 8);
      *a1 = v19;
      *(a1 + 8) = v18;

      return 0;
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (a2 + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_3;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;

    sub_10008CC78(v21, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }

  return result;
}

Swift::Int sub_1000883C4(void *a1, uint64_t a2, Swift::UInt a3)
{
  v7 = *v3;
  sub_1004A6E94();
  sub_1004A6EB4(a3);
  result = sub_1004A6F14();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (v12[1] == a3)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v14)
    {
      v15 = v13 == a2;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_14:

      v18 = (*(v7 + 48) + 16 * v10);
      v19 = *v18;
      v20 = v18[1];
      *a1 = v19;
      a1[1] = v20;

      return 0;
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (a2 + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_3;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;

    sub_10008CE40(v22, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  return result;
}

uint64_t sub_100088568(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004A6E94();
  sub_1004A6EB4(a2);
  v6 = sub_1004A6F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10008D168(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10008867C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  sub_1004A6E94();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v9 = sub_1004A6F14();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  v23 = a1;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = sub_1004A5834();
      v15 = v14;
      if (v13 == sub_1004A5834() && v15 == v16)
      {
        break;
      }

      v18 = sub_1004A6D34();

      if (v18)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:

    v21 = (*(v8 + 48) + 16 * v11);
    v22 = v21[1];
    *v23 = *v21;
    v23[1] = v22;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;

    sub_10008D2B4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v24;
    *v23 = a2;
    v23[1] = a3;
    return 1;
  }
}

uint64_t sub_100088848(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  sub_1004A6E94();
  if (a3)
  {
    sub_1004A6EB4(0);
    sub_1004A5834();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  v8 = sub_1004A6F14();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;

    sub_10008D4A0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v4 = v21;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  while (1)
  {
    if (!*(*(v7 + 48) + 16 * v10 + 8))
    {
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }

    if (!a3)
    {
      goto LABEL_7;
    }

    v12 = sub_1004A5834();
    v14 = v13;
    if (v12 == sub_1004A5834() && v14 == v15)
    {
      break;
    }

    v17 = sub_1004A6D34();

    if (v17)
    {
      goto LABEL_18;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_18:

LABEL_19:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_100088A40(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  sub_1004A6E94();
  sub_1004A4424();
  v7 = sub_1004A6F14();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_141:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v82;
    sub_100014CEC(a2, a3);
    sub_10008D6C0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v82 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = a3 >> 62;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v88 = v14;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v85 = v15;
  v84 = v6;
  v80 = (a2 >> 32) - a2;
  v81 = a2 >> 32;
  v86 = v6 + 56;
  v87 = v11;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a3 >> 62 != 3;
      if (((v22 | v88) & 1) == 0)
      {
        v75 = 0;
        v76 = 0xC000000000000000;
LABEL_142:
        sub_100014D40(v75, v76);
LABEL_143:
        v77 = *(*(v6 + 48) + 16 * v10);
        *a1 = v77;
        sub_100014CEC(v77, *(&v77 + 1));
        return 0;
      }

LABEL_36:
      v23 = 0;
      if (v12 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_147;
      }

      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_146;
      }

      v23 = v23;
      if (v12 <= 1)
      {
LABEL_33:
        v27 = BYTE6(a3);
        if (v12)
        {
          v27 = HIDWORD(a2) - a2;
          if (v85)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v12 != 2)
    {
      if (!v23)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_140;
    }

    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      if (v18 > v18 >> 32)
      {
        goto LABEL_148;
      }

      sub_100014CEC(v18, v17);
      v40 = sub_1004A40D4();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1004A4104();
        if (__OFSUB__(v18, v42))
        {
          goto LABEL_150;
        }

        v39 = (v18 - v42 + v41);
      }

      else
      {
        v39 = 0;
      }

      sub_1004A40F4();
      v11 = v87;
      if (v12 == 2)
      {
        v67 = *(a2 + 16);
        v79 = *(a2 + 24);
        v49 = sub_1004A40D4();
        if (v49)
        {
          v68 = sub_1004A4104();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_164;
          }

          v49 += v67 - v68;
        }

        v26 = __OFSUB__(v79, v67);
        v69 = v79 - v67;
        if (v26)
        {
          goto LABEL_160;
        }

        result = sub_1004A40F4();
        if (result >= v69)
        {
          v52 = v69;
        }

        else
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_176;
        }

        v8 = v86;
        v11 = v87;
        if (!v49)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v12 != 1)
        {
          v8 = v86;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v39)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v81 < a2)
        {
          goto LABEL_159;
        }

        v49 = sub_1004A40D4();
        if (v49)
        {
          v53 = sub_1004A4104();
          if (__OFSUB__(a2, v53))
          {
            goto LABEL_166;
          }

          v49 += a2 - v53;
        }

        result = sub_1004A40F4();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_180;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v18;
    *&__s1[8] = v17;
    __s1[10] = BYTE2(v17);
    __s1[11] = BYTE3(v17);
    __s1[12] = BYTE4(v17);
    __s1[13] = BYTE5(v17);
    if (!v12)
    {
      goto LABEL_69;
    }

    if (v12 == 1)
    {
      if (v81 < a2)
      {
        goto LABEL_152;
      }

      sub_100014CEC(v18, v17);
      v30 = sub_1004A40D4();
      if (!v30)
      {
        goto LABEL_174;
      }

      v31 = v30;
      v32 = sub_1004A4104();
      if (__OFSUB__(a2, v32))
      {
        goto LABEL_156;
      }

      v33 = (a2 - v32 + v31);
      v34 = sub_1004A40F4();
      if (!v33)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v55 = *(a2 + 16);
    v54 = *(a2 + 24);
    sub_100014CEC(v18, v17);
    v45 = sub_1004A40D4();
    if (v45)
    {
      v56 = sub_1004A4104();
      if (__OFSUB__(v55, v56))
      {
        goto LABEL_161;
      }

      v45 += v55 - v56;
    }

    v26 = __OFSUB__(v54, v55);
    v47 = v54 - v55;
    if (v26)
    {
      goto LABEL_153;
    }

    v48 = sub_1004A40F4();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v48 >= v47)
    {
      v57 = v47;
    }

    else
    {
      v57 = v48;
    }

    v58 = memcmp(__s1, v45, v57);
    sub_100014D40(v18, v17);
    v8 = v86;
    v11 = v87;
    if (!v58)
    {
LABEL_140:
      v75 = a2;
      v76 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v18 + 16);
    sub_100014CEC(v18, v17);
    v36 = sub_1004A40D4();
    if (v36)
    {
      v37 = v36;
      v38 = sub_1004A4104();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_149;
      }

      v39 = (v35 - v38 + v37);
    }

    else
    {
      v39 = 0;
    }

    sub_1004A40F4();
    v11 = v87;
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (v81 < a2)
        {
          goto LABEL_155;
        }

        v49 = sub_1004A40D4();
        if (v49)
        {
          v50 = sub_1004A4104();
          if (__OFSUB__(a2, v50))
          {
            goto LABEL_165;
          }

          v49 += a2 - v50;
        }

        result = sub_1004A40F4();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_178;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v8 = v86;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v39)
      {
        goto LABEL_169;
      }

LABEL_138:
      v72 = __s1;
      v71 = v39;
      v70 = BYTE6(a3);
LABEL_139:
      v73 = memcmp(v71, v72, v70);
      sub_100014D40(v18, v17);
      v6 = v84;
      if (!v73)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v64 = *(a2 + 16);
    v78 = *(a2 + 24);
    v49 = sub_1004A40D4();
    if (v49)
    {
      v65 = sub_1004A4104();
      if (__OFSUB__(v64, v65))
      {
        goto LABEL_163;
      }

      v49 += v64 - v65;
    }

    v26 = __OFSUB__(v78, v64);
    v66 = v78 - v64;
    if (v26)
    {
      goto LABEL_158;
    }

    result = sub_1004A40F4();
    if (result >= v66)
    {
      v52 = v66;
    }

    else
    {
      v52 = result;
    }

    if (!v39)
    {
      goto LABEL_182;
    }

    v8 = v86;
    v11 = v87;
    if (!v49)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v39 == v49)
    {
      sub_100014D40(a2, a3);
      sub_100014D40(v18, v17);
      v6 = v84;
      goto LABEL_143;
    }

    v70 = v52;
    v71 = v39;
    v72 = v49;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_69:
    __s2 = a2;
    v90 = a3;
    v91 = BYTE2(a3);
    v92 = BYTE3(a3);
    v93 = BYTE4(a3);
    v94 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    sub_100014CEC(v18, v17);
    v45 = sub_1004A40D4();
    if (v45)
    {
      v46 = sub_1004A4104();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_162;
      }

      v45 += v44 - v46;
    }

    v26 = __OFSUB__(v43, v44);
    v47 = v43 - v44;
    if (v26)
    {
      goto LABEL_154;
    }

    v48 = sub_1004A40F4();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v81 < a2)
  {
    goto LABEL_151;
  }

  sub_100014CEC(v18, v17);
  v59 = sub_1004A40D4();
  if (v59)
  {
    v60 = v59;
    v61 = sub_1004A4104();
    if (__OFSUB__(a2, v61))
    {
      goto LABEL_157;
    }

    v33 = (a2 - v61 + v60);
    v34 = sub_1004A40F4();
    if (!v33)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v34 >= v80)
    {
      v62 = (a2 >> 32) - a2;
    }

    else
    {
      v62 = v34;
    }

    v63 = memcmp(__s1, v33, v62);
    sub_100014D40(v18, v17);
    v8 = v86;
    if (!v63)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  sub_1004A40F4();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  result = sub_1004A40F4();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_1000893BC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *v2;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = sub_1004A65E4();

    if (v14)
    {

      v35 = v14;
      sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      swift_dynamicCast();
      result = 0;
      *a1 = v36[0];
    }

    else
    {
      result = sub_1004A65D4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_100089C5C(v13, result + 1);
        v28 = v27;
        v36[0] = v27;
        v29 = *(v27 + 16);
        if (*(v27 + 24) <= v29)
        {
          sub_10008B4AC(v29 + 1);
          v28 = v36[0];
        }

        sub_10008C964(v30, v28);

        *v3 = v28;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v31 = v2;
    v32 = a1;
    sub_1004A6E94();
    v16 = *(*a2 + 96);
    swift_beginAccess();
    v33 = v16;
    sub_100095778(a2 + v16, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000EB38C(v36);
    sub_1000957E0(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    v17 = sub_1004A6F14();
    v18 = -1 << *(v12 + 32);
    v19 = v17 & ~v18;
    if ((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      while (1)
      {
        v21 = *(*(v12 + 48) + 8 * v19);
        v22 = *(*v21 + 96);
        swift_beginAccess();
        sub_100095778(v21 + v22, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_100095778(a2 + v33, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
        v23 = sub_1000F2FCC(v11, v8);
        sub_1000957E0(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1000957E0(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *v32 = *(*(v12 + 48) + 8 * v19);

      return 0;
    }

    else
    {
LABEL_11:
      v24 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *v24;

      sub_10008DFC0(v26, v19, isUniquelyReferenced_nonNull_native);
      *v24 = v34;
      *v32 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100089774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1004A6E94();
  sub_1000EB38C(v20);
  v10 = sub_1004A6F14();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_100095778(*(v9 + 48) + v14 * v12, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v15 = sub_1000F2FCC(v8, a2);
      sub_1000957E0(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1000957E0(a2, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_100095778(*(v9 + 48) + v14 * v12, v19, type metadata accessor for MoveAndCopyMessages.CommandID);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100095778(a2, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    v20[0] = *v3;
    sub_10008E2A0(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_100095988(a2, v17);
    return 1;
  }
}

uint64_t sub_1000899BC(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_1004A6E94();
  sub_1004A6EE4(a2);
  v12 = sub_1004A6F14();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 4 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_10008CFF8(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100089ADC(_OWORD *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1004A6E94();
  sub_1004A6664();
  v6 = sub_1004A6F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *a2;
    do
    {
      sub_100014B90(*(v5 + 48) + 48 * v8, v17);
      if (v17[0] == v10)
      {
        v11 = sub_1004A6654();
        sub_100014BEC(v17);
        if (v11)
        {
          sub_100014BEC(a2);
          sub_100014B90(*(v5 + 48) + 48 * v8, a1);
          return 0;
        }
      }

      else
      {
        sub_100014BEC(v17);
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100014B90(a2, v17);
  v16 = *v3;
  sub_10008E4D0(v17, v8, isUniquelyReferenced_nonNull_native);
  *v3 = v16;
  v14 = *(a2 + 1);
  *a1 = *a2;
  a1[1] = v14;
  a1[2] = *(a2 + 2);
  return 1;
}

void sub_100089C5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v3 - 8);
  v61 = &v60 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v60 - v9;
  if (!a2)
  {
    swift_unknownObjectRelease();
    return;
  }

  sub_10000C9C0(&qword_1005CEF38, &unk_1004D1E10);
  v11 = sub_1004A66A4();
  v81 = v11;
  v12 = sub_1004A6594();
  v13 = sub_1004A6604();
  if (!v13)
  {
LABEL_48:

    return;
  }

  v66 = v5;
  v65 = v7;
  v64 = v10;
  v63 = v12;
  while (1)
  {
    *&v75 = v13;
    sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
    swift_dynamicCast();
    v15 = *(v11 + 16);
    if (*(v11 + 24) <= v15)
    {
      sub_10008B4AC(v15 + 1);
      v11 = v81;
    }

    v16 = v80;
    sub_1004A6E94();
    v17 = *(*v16 + 96);
    swift_beginAccess();
    sub_100095778(v16 + v17, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_100095778(v10, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_1004A6EB4(1uLL);
      goto LABEL_39;
    }

    v68 = v16;
    v67 = v11;
    v69 = *v7;
    v20 = *(v7 + 2);
    v21 = *(v7 + 2);
    sub_1004A6EB4(3uLL);
    sub_1004A6EB4(v20 | (v20 << 32));
    v22 = 1 << *(v21 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v21 + 64);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    v27 = 0;
    if (v24)
    {
      while (1)
      {
        v28 = v27;
LABEL_20:
        v29 = __clz(__rbit64(v24)) | (v28 << 6);
        v30 = *(*(v21 + 48) + 4 * v29);
        v31 = (*(v21 + 56) + 16 * v29);
        v32 = *v31;
        v33 = v31[1];
        sub_100014CEC(*v31, v33);
        if (v33 >> 60 == 15)
        {
          break;
        }

        v24 &= v24 - 1;
        v72 = v77;
        v73 = v78;
        v74 = v79;
        v71 = v76;
        v70 = v75;
        sub_1004A6EE4(v30);
        sub_1004A4424();
        sub_100014D40(v32, v33);
        v26 ^= sub_1004A6F14();
        v27 = v28;
        if (!v24)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_17:
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_51;
        }

        if (v28 >= v25)
        {
          break;
        }

        v24 = *(v21 + 64 + 8 * v28);
        ++v27;
        if (v24)
        {
          goto LABEL_20;
        }
      }
    }

    sub_1004A6EB4(v26);

LABEL_37:

    v7 = v65;
    v10 = v64;
    v11 = v67;
LABEL_38:
    v16 = v68;
LABEL_39:
    sub_1000957E0(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
    v51 = sub_1004A6F14();
    v52 = v11 + 56;
    v53 = -1 << *(v11 + 32);
    v54 = v51 & ~v53;
    v55 = v54 >> 6;
    if (((-1 << v54) & ~*(v11 + 56 + 8 * (v54 >> 6))) == 0)
    {
      v56 = 0;
      v57 = (63 - v53) >> 6;
      while (++v55 != v57 || (v56 & 1) == 0)
      {
        v58 = v55 == v57;
        if (v55 == v57)
        {
          v55 = 0;
        }

        v56 |= v58;
        v59 = *(v52 + 8 * v55);
        if (v59 != -1)
        {
          v14 = __clz(__rbit64(~v59)) + (v55 << 6);
          goto LABEL_5;
        }
      }

      goto LABEL_52;
    }

    v14 = __clz(__rbit64((-1 << v54) & ~*(v11 + 56 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
LABEL_5:
    *(v52 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v11 + 48) + 8 * v14) = v16;
    ++*(v11 + 16);
    v13 = sub_1004A6604();
    if (!v13)
    {
      goto LABEL_48;
    }
  }

  v68 = v16;
  if (!EnumCaseMultiPayload)
  {
    v19 = v61;
    sub_100025FDC(v7, v61, &unk_1005D91B0, &unk_1004CF400);
    sub_1004A6EB4(0);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v19, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_38;
  }

  v67 = v11;
  v62 = *v7;
  v34 = *(v7 + 2);
  v35 = *(v7 + 2);
  sub_1004A6EB4(2uLL);
  sub_1004A6EB4(v34 | (v34 << 32));
  v36 = v35 + 64;
  v37 = 1 << *(v35 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(v35 + 64);
  v40 = (v37 + 63) >> 6;
  v69 = v35;

  v41 = 0;
  for (i = 0; v39; v41 ^= sub_1004A6F14())
  {
    v43 = i;
LABEL_32:
    v44 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v45 = v44 | (v43 << 6);
    v46 = *(*(v69 + 48) + 4 * v45);
    v47 = (*(v69 + 56) + 24 * v45);
    v48 = *v47;
    v49 = *(v47 + 1);
    v50 = *(v47 + 2);
    sub_100014CEC(v49, v50);
    v72 = v77;
    v73 = v78;
    v74 = v79;
    v71 = v76;
    v70 = v75;
    sub_1004A6EE4(v46);
    sub_1004A6EB4(v48);
    sub_100014CEC(v49, v50);
    sub_1004A4424();
    sub_100014D40(v49, v50);
    sub_100014D40(v49, v50);
  }

  while (1)
  {
    v43 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v43 >= v40)
    {

      sub_1004A6EB4(v41);

      goto LABEL_37;
    }

    v39 = *(v36 + 8 * v43);
    ++i;
    if (v39)
    {
      i = v43;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_10008A3BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEEB0, &qword_1004D1D80);
  result = sub_1004A6694();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1004A6E94();
      v18 = v17 - 2;
      if ((v17 - 2) >= 3)
      {
        sub_1004A6EB4(3uLL);
        v18 = v17 & 1;
      }

      sub_1004A6EB4(v18);
      result = sub_1004A6F14();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10008A628(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEEA8, &qword_1004E91C0);
  result = sub_1004A6694();
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
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_1004A6E94();
      sub_1004A6EB4(v20 | (v20 << 32));
      result = sub_1004A6F14();
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
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
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

uint64_t sub_10008A88C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEF70, &qword_1004D1E50);
  result = sub_1004A6694();
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
      v20 = *v18;
      v19 = v18[1];
      sub_1004A6E94();
      sub_1004A6EB4(v19);
      result = sub_1004A6F14();
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
      *v14 = v20;
      v14[1] = v19;
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

uint64_t sub_10008AAE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEED8, &qword_1004D1DA8);
  result = sub_1004A6694();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1004A6E94();
      sub_1004A6EB4(v17);
      result = sub_1004A6F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10008AD38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEFE0, &qword_1004D1EC8);
  result = sub_1004A6694();
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
      sub_1004A6E94();
      sub_1004A5834();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1004A6F14();
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

uint64_t sub_10008AFB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEF98, &unk_1004D1E80);
  result = sub_1004A6694();
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
      v20 = *v18;
      v19 = v18[1];
      sub_1004A6E94();
      if (v19)
      {
        sub_1004A6EB4(0);
        sub_1004A5834();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

      result = sub_1004A6F14();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
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

uint64_t sub_10008B24C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEF28, &qword_1004D1DF8);
  result = sub_1004A6694();
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
      sub_1004A6E94();
      sub_1004A4424();
      result = sub_1004A6F14();
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

void sub_10008B4AC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v3 - 8);
  v72 = &v69 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v69 - v9;
  v11 = *v1;
  sub_10000C9C0(&qword_1005CEF38, &unk_1004D1E10);
  v12 = sub_1004A6694();
  v13 = v12;
  if (!*(v11 + 16))
  {
    goto LABEL_58;
  }

  v70 = v1;
  v14 = 0;
  v15 = *(v11 + 56);
  v73 = (v11 + 56);
  v16 = 1 << *(v11 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v78 = v11;
  v77 = v5;
  v76 = v12;
  v75 = v7;
  v74 = v10;
  v79 = v19;
  v80 = v12 + 56;
LABEL_8:
  if (v18)
  {
    v21 = __clz(__rbit64(v18));
    v83 = (v18 - 1) & v18;
    goto LABEL_15;
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_60;
    }

    if (v14 >= v19)
    {
      break;
    }

    v23 = v73[v14];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v83 = (v23 - 1) & v23;
LABEL_15:
      v24 = *(*(v11 + 48) + 8 * (v21 | (v14 << 6)));
      sub_1004A6E94();
      v25 = *(*v24 + 96);
      swift_beginAccess();
      v82 = v24;
      sub_100095778(v24 + v25, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100095778(v10, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v27 = v72;
          sub_100025FDC(v7, v72, &unk_1005D91B0, &unk_1004CF400);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();
          sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
          goto LABEL_45;
        }

        v71 = *v7;
        v43 = *(v7 + 2);
        v44 = *(v7 + 2);
        sub_1004A6EB4(2uLL);
        sub_1004A6EB4(v43 | (v43 << 32));
        v45 = v44 + 64;
        v46 = 1 << *(v44 + 32);
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v48 = v47 & *(v44 + 64);
        v49 = (v46 + 63) >> 6;
        v81 = v44;

        v50 = 0;
        for (i = 0; v48; v50 = sub_1004A6F14() ^ v84)
        {
          v84 = v50;
          v52 = i;
LABEL_39:
          v53 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v54 = v53 | (v52 << 6);
          v55 = *(*(v81 + 48) + 4 * v54);
          v56 = (*(v81 + 56) + 24 * v54);
          v57 = *v56;
          v59 = *(v56 + 1);
          v58 = *(v56 + 2);
          sub_100014CEC(v59, v58);
          v87 = v92;
          v88 = v93;
          v89 = v94;
          v86 = v91;
          v85 = v90;
          sub_1004A6EE4(v55);
          sub_1004A6EB4(v57);
          sub_100014CEC(v59, v58);
          sub_1004A4424();
          sub_100014D40(v59, v58);
          sub_100014D40(v59, v58);
        }

        while (1)
        {
          v52 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v52 >= v49)
          {

            sub_1004A6EB4(v50);

            goto LABEL_44;
          }

          v48 = *(v45 + 8 * v52);
          ++i;
          if (v48)
          {
            v84 = v50;
            i = v52;
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v81 = *v7;
        v28 = *(v7 + 2);
        v29 = *(v7 + 2);
        sub_1004A6EB4(3uLL);
        sub_1004A6EB4(v28 | (v28 << 32));
        v30 = v29 + 64;
        v31 = 1 << *(v29 + 32);
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        else
        {
          v32 = -1;
        }

        v33 = v32 & *(v29 + 64);
        v34 = (v31 + 63) >> 6;
        v84 = v29;

        v35 = 0;
        v36 = 0;
        if (v33)
        {
          while (1)
          {
            v37 = v36;
LABEL_27:
            v38 = __clz(__rbit64(v33)) | (v37 << 6);
            v39 = *(*(v84 + 48) + 4 * v38);
            v40 = (*(v84 + 56) + 16 * v38);
            v42 = *v40;
            v41 = v40[1];
            sub_100014CEC(*v40, v41);
            if (v41 >> 60 == 15)
            {
              break;
            }

            v33 &= v33 - 1;
            v87 = v92;
            v88 = v93;
            v89 = v94;
            v86 = v91;
            v85 = v90;
            sub_1004A6EE4(v39);
            sub_1004A4424();
            sub_100014D40(v42, v41);
            v35 ^= sub_1004A6F14();
            v36 = v37;
            if (!v33)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          while (1)
          {
LABEL_24:
            v37 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_61;
            }

            if (v37 >= v34)
            {
              break;
            }

            v33 = *(v30 + 8 * v37);
            ++v36;
            if (v33)
            {
              goto LABEL_27;
            }
          }
        }

        sub_1004A6EB4(v35);

LABEL_44:

        v11 = v78;
        v13 = v76;
        v7 = v75;
        v10 = v74;
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

LABEL_45:
      sub_1000957E0(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      v60 = sub_1004A6F14();
      v61 = -1 << *(v13 + 32);
      v62 = v60 & ~v61;
      v63 = v62 >> 6;
      if (((-1 << v62) & ~*(v80 + 8 * (v62 >> 6))) == 0)
      {
        v64 = 0;
        v65 = (63 - v61) >> 6;
        while (++v63 != v65 || (v64 & 1) == 0)
        {
          v66 = v63 == v65;
          if (v63 == v65)
          {
            v63 = 0;
          }

          v64 |= v66;
          v67 = *(v80 + 8 * v63);
          if (v67 != -1)
          {
            v20 = __clz(__rbit64(~v67)) + (v63 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_62;
      }

      v20 = __clz(__rbit64((-1 << v62) & ~*(v80 + 8 * (v62 >> 6)))) | v62 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v80 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v13 + 48) + 8 * v20) = v82;
      ++*(v13 + 16);
      v19 = v79;
      v18 = v83;
      goto LABEL_8;
    }
  }

  v68 = 1 << *(v11 + 32);
  if (v68 >= 64)
  {
    bzero(v73, ((v68 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *v73 = -1 << v68;
  }

  v2 = v70;
  *(v11 + 16) = 0;
LABEL_58:

  *v2 = v13;
}

void sub_10008BC9C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v3 - 8);
  v73 = v72 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v72 - v10;
  v12 = *v1;
  sub_10000C9C0(&qword_1005CF0C8, &qword_1004D1FD0);
  v13 = sub_1004A6694();
  v14 = v13;
  if (!*(v12 + 16))
  {
    goto LABEL_60;
  }

  v72[0] = v1;
  v15 = 0;
  v16 = *(v12 + 56);
  v74 = (v12 + 56);
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v5;
  v20 = v18 & v16;
  v21 = (v17 + 63) >> 6;
  v82 = v13 + 56;
  v80 = v12;
  v79 = v19;
  v78 = v6;
  v77 = v13;
  v76 = v8;
  v75 = v11;
  v81 = v21;
LABEL_8:
  if (v20)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    goto LABEL_15;
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_62;
    }

    if (v15 >= v21)
    {
      break;
    }

    v25 = v74[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v20 = (v25 - 1) & v25;
LABEL_15:
      v26 = *(v12 + 48);
      v85 = *(v6 + 72);
      sub_100095988(v26 + v85 * (v23 | (v15 << 6)), v11);
      sub_1004A6E94();
      sub_100095778(v11, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        v83 = v20;
        if (!EnumCaseMultiPayload)
        {
          v28 = v12;
          v29 = v19;
          v30 = v73;
          sub_100025FDC(v8, v73, &unk_1005D91B0, &unk_1004CF400);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();
          sub_100025F40(v30, &unk_1005D91B0, &unk_1004CF400);
          goto LABEL_44;
        }

        v72[1] = *v8;
        v46 = *(v8 + 2);
        v47 = *(v8 + 2);
        sub_1004A6EB4(2uLL);
        sub_1004A6EB4(v46 | (v46 << 32));
        v48 = v47 + 64;
        v49 = 1 << *(v47 + 32);
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        else
        {
          v50 = -1;
        }

        v51 = v50 & *(v47 + 64);
        v52 = (v49 + 63) >> 6;
        v84 = v47;

        v53 = 0;
        for (i = 0; v51; v53 = sub_1004A6F14() ^ v86)
        {
          v86 = v53;
          v55 = i;
LABEL_40:
          v56 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
          v57 = v56 | (v55 << 6);
          v58 = *(*(v84 + 48) + 4 * v57);
          v59 = (*(v84 + 56) + 24 * v57);
          v60 = *v59;
          v61 = *(v59 + 1);
          v62 = *(v59 + 2);
          sub_100014CEC(v61, v62);
          v89 = v94;
          v90 = v95;
          v91 = v96;
          v87 = v92;
          v88 = v93;
          sub_1004A6EE4(v58);
          sub_1004A6EB4(v60);
          sub_100014CEC(v61, v62);
          sub_1004A4424();
          sub_100014D40(v61, v62);
          sub_100014D40(v61, v62);
        }

        v21 = v81;
        while (1)
        {
          v55 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v55 >= v52)
          {

            sub_1004A6EB4(v53);

            v28 = v80;
            v29 = v79;
            v6 = v78;
            v14 = v77;
            v8 = v76;
            v11 = v75;
            goto LABEL_46;
          }

          v51 = *(v48 + 8 * v55);
          ++i;
          if (v51)
          {
            v86 = v53;
            i = v55;
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        return;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v83 = v20;
        v84 = *v8;
        v31 = *(v8 + 2);
        v32 = *(v8 + 2);
        sub_1004A6EB4(3uLL);
        sub_1004A6EB4(v31 | (v31 << 32));
        v33 = v32 + 64;
        v34 = 1 << *(v32 + 32);
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v36 = v35 & *(v32 + 64);
        v37 = (v34 + 63) >> 6;
        v86 = v32;

        v38 = 0;
        v39 = 0;
        if (v36)
        {
          while (1)
          {
            v40 = v39;
LABEL_27:
            v41 = __clz(__rbit64(v36)) | (v40 << 6);
            v42 = *(*(v86 + 48) + 4 * v41);
            v43 = (*(v86 + 56) + 16 * v41);
            v45 = *v43;
            v44 = v43[1];
            sub_100014CEC(*v43, v44);
            if (v44 >> 60 == 15)
            {
              break;
            }

            v36 &= v36 - 1;
            v89 = v94;
            v90 = v95;
            v91 = v96;
            v87 = v92;
            v88 = v93;
            sub_1004A6EE4(v42);
            sub_1004A4424();
            sub_100014D40(v45, v44);
            v38 ^= sub_1004A6F14();
            v39 = v40;
            if (!v36)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          while (1)
          {
LABEL_24:
            v40 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_63;
            }

            if (v40 >= v37)
            {
              break;
            }

            v36 = *(v33 + 8 * v40);
            ++v39;
            if (v36)
            {
              goto LABEL_27;
            }
          }
        }

        sub_1004A6EB4(v38);

        v28 = v80;
        v29 = v79;
        v6 = v78;
        v14 = v77;
        v8 = v76;
        v11 = v75;
LABEL_44:
        v21 = v81;
LABEL_46:
        v20 = v83;
      }

      else
      {
        v28 = v12;
        v29 = v19;
        sub_1004A6EB4(1uLL);
      }

      v63 = sub_1004A6F14();
      v64 = -1 << *(v14 + 32);
      v65 = v63 & ~v64;
      v66 = v65 >> 6;
      if (((-1 << v65) & ~*(v82 + 8 * (v65 >> 6))) == 0)
      {
        v67 = 0;
        v68 = (63 - v64) >> 6;
        v19 = v29;
        v12 = v28;
        while (++v66 != v68 || (v67 & 1) == 0)
        {
          v69 = v66 == v68;
          if (v66 == v68)
          {
            v66 = 0;
          }

          v67 |= v69;
          v70 = *(v82 + 8 * v66);
          if (v70 != -1)
          {
            v22 = __clz(__rbit64(~v70)) + (v66 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_64;
      }

      v22 = __clz(__rbit64((-1 << v65) & ~*(v82 + 8 * (v65 >> 6)))) | v65 & 0x7FFFFFFFFFFFFFC0;
      v19 = v29;
      v12 = v28;
LABEL_7:
      *(v82 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_100095988(v11, *(v14 + 48) + v22 * v85);
      ++*(v14 + 16);
      goto LABEL_8;
    }
  }

  v71 = 1 << *(v12 + 32);
  if (v71 >= 64)
  {
    bzero(v74, ((v71 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *v74 = -1 << v71;
  }

  v2 = v72[0];
  *(v12 + 16) = 0;
LABEL_60:

  *v2 = v14;
}

uint64_t sub_10008C4A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_10000C9C0(a2, a3);
  result = sub_1004A6694();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 4 * (v16 | (v8 << 6)));
      sub_1004A6E94();
      sub_1004A6EE4(v19);
      result = sub_1004A6F14();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_10008C6EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEF68, &qword_1004D1E48);
  result = sub_1004A6694();
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
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v27 = *v18;
      v28 = v18[1];
      v29 = v18[2];
      sub_1004A6E94();
      sub_1004A6664();
      result = sub_1004A6F14();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 48 * v13);
      *v14 = v27;
      v14[1] = v28;
      v14[2] = v29;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_10008C964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004A6E94();
  v7 = *(*a1 + 96);
  swift_beginAccess();
  sub_100095778(a1 + v7, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000EB38C(v10);
  sub_1000957E0(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1004A6F14();
  result = sub_1004A6574();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_10008CAAC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_10008A3BC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10008E684();
      a2 = v7;
      goto LABEL_24;
    }

    sub_10008F5FC(v5 + 1);
  }

  v8 = *v3;
  sub_1004A6E94();
  v9 = v4 - 2;
  if ((v4 - 2) >= 3u)
  {
    sub_1004A6EB4(3uLL);
    v9 = v4 & 1;
  }

  sub_1004A6EB4(v9);
  result = sub_1004A6F14();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + a2);
      switch(v12)
      {
        case 2:
          if (v4 == 2)
          {
            goto LABEL_23;
          }

          break;
        case 3:
          if (v4 == 3)
          {
            goto LABEL_23;
          }

          break;
        case 4:
          if (v4 == 4)
          {
            goto LABEL_23;
          }

          break;
        default:
          if ((v4 - 2) >= 3u && ((v12 ^ v4) & 1) == 0)
          {
LABEL_23:
            result = sub_1004A6E14();
            __break(1u);
            goto LABEL_24;
          }

          break;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

void sub_10008CC78(uint64_t result, unsigned int a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10008A628(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        v9 = a3;
        sub_10008E7D8();
        a3 = v9;
        goto LABEL_22;
      }

      sub_10008F838(v7 + 1);
    }

    v10 = *v4;
    sub_1004A6E94();
    sub_1004A6EB4(a2 | (a2 << 32));
    v11 = sub_1004A6F14();
    v12 = -1 << *(v10 + 32);
    a3 = v11 & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      while (1)
      {
        v14 = (*(v10 + 48) + 16 * a3);
        if ((v14[2] | (v14[2] << 32)) == (a2 | (a2 << 32)))
        {
          v15 = *v14;
          v16 = *(*v14 + 16);
          if (v16 == *(result + 16))
          {
            break;
          }
        }

LABEL_10:
        a3 = (a3 + 1) & v13;
        if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v16)
      {
        v17 = v15 == result;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v15 + 32);
        v19 = (result + 32);
        while (v16)
        {
          if (*v18 != *v19)
          {
            goto LABEL_10;
          }

          ++v18;
          ++v19;
          if (!--v16)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      sub_1004A6E14();
      __break(1u);
    }
  }

LABEL_22:
  v20 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = *(v20 + 48) + 16 * a3;
  *v21 = result;
  *(v21 + 8) = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_10008CE40(uint64_t result, Swift::UInt a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10008A88C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        v9 = a3;
        sub_10008E93C();
        a3 = v9;
        goto LABEL_22;
      }

      sub_10008FA74(v7 + 1);
    }

    v10 = *v4;
    sub_1004A6E94();
    sub_1004A6EB4(a2);
    v11 = sub_1004A6F14();
    v12 = -1 << *(v10 + 32);
    a3 = v11 & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      while (1)
      {
        v14 = (*(v10 + 48) + 16 * a3);
        if (v14[1] == a2)
        {
          v15 = *v14;
          v16 = *(*v14 + 16);
          if (v16 == *(result + 16))
          {
            break;
          }
        }

LABEL_10:
        a3 = (a3 + 1) & v13;
        if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v16)
      {
        v17 = v15 == result;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v15 + 32);
        v19 = (result + 32);
        while (v16)
        {
          if (*v18 != *v19)
          {
            goto LABEL_10;
          }

          ++v18;
          ++v19;
          if (!--v16)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      sub_1004A6E14();
      __break(1u);
    }
  }

LABEL_22:
  v20 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_10008CFF8(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10008C4A4(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_10008F358(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_100091570(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_1004A6E94();
  sub_1004A6EE4(v7);
  result = sub_1004A6F14();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 4 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 4 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

uint64_t sub_10008D168(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10008AAE8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10008EA98();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10008FCA8(v5 + 1);
  }

  v8 = *v3;
  sub_1004A6E94();
  sub_1004A6EB4(v4);
  result = sub_1004A6F14();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void sub_10008D2B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10008AD38(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10008EBEC();
      goto LABEL_16;
    }

    sub_10008FEC8(v9 + 1);
  }

  v11 = *v4;
  sub_1004A6E94();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v12 = sub_1004A6F14();
  v13 = -1 << *(v11 + 32);
  a3 = v12 & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    do
    {
      v15 = sub_1004A5834();
      v17 = v16;
      if (v15 == sub_1004A5834() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_1004A6D34();

      if (v20)
      {
        goto LABEL_20;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v21 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v22 = (*(v21 + 48) + 16 * a3);
  *v22 = result;
  v22[1] = a2;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_1004A6E14();
  __break(1u);
}

void sub_10008D4A0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10008AFB4(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_10008ED48();
        goto LABEL_23;
      }

      sub_100090120(v9 + 1);
    }

    v11 = *v4;
    sub_1004A6E94();
    if (a2)
    {
      sub_1004A6EB4(0);
      sub_1004A5834();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1004A6EB4(1uLL);
    }

    v12 = sub_1004A6F14();
    v13 = -1 << *(v11 + 32);
    a3 = v12 & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      do
      {
        if (*(*(v11 + 48) + 16 * a3 + 8))
        {
          if (a2)
          {
            v15 = sub_1004A5834();
            v17 = v16;
            if (v15 == sub_1004A5834() && v17 == v18)
            {
              goto LABEL_26;
            }

            v20 = sub_1004A6D34();

            if (v20)
            {
              goto LABEL_27;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_27;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_23:
  v21 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v22 = (*(v21 + 48) + 16 * a3);
  *v22 = result;
  v22[1] = a2;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_26:

LABEL_27:
    sub_1004A6E14();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }
}

uint64_t sub_10008D6C0(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_10008B24C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10008EEA0();
      goto LABEL_143;
    }

    sub_1000903B0(v8 + 1);
  }

  v10 = *v4;
  sub_1004A6E94();
  sub_1004A4424();
  result = sub_1004A6F14();
  v11 = v10 + 56;
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v70 = *v79;
    *(*v79 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v71 = (*(v70 + 48) + 16 * a3);
    *v71 = v7;
    v71[1] = a2;
    v72 = *(v70 + 16);
    v29 = __OFADD__(v72, 1);
    v73 = v72 + 1;
    if (!v29)
    {
      *(v70 + 16) = v73;
      return result;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v13 = ~v12;
  v14 = a2 >> 62;
  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 0xC000000000000000;
  }

  v16 = !v15;
  v83 = v16;
  v78 = v10;
  v17 = __OFSUB__(HIDWORD(v7), v7);
  v80 = v17;
  v76 = (v7 >> 32) - v7;
  v77 = v7 >> 32;
  v81 = v13;
  v82 = v10 + 56;
  while (1)
  {
    v18 = (*(v10 + 48) + 16 * a3);
    v20 = *v18;
    v19 = v18[1];
    v21 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || a2 >> 62 != 3;
      if (((v24 | v83) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_32;
      }

      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v29 = __OFSUB__(v35, v36);
      v25 = v35 - v36;
      if (v29)
      {
        goto LABEL_147;
      }
    }

    else if (v21)
    {
      LODWORD(v25) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_148;
      }

      v25 = v25;
    }

    else
    {
      v25 = BYTE6(v19);
    }

LABEL_33:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (!v25)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v26 = BYTE6(a2);
      if (v14)
      {
        v26 = HIDWORD(v7) - v7;
        if (v80)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v25 == v26)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v13;
    if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v25 < 1)
  {
    goto LABEL_185;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      *__s1 = v20;
      *&__s1[8] = v19;
      __s1[10] = BYTE2(v19);
      __s1[11] = BYTE3(v19);
      __s1[12] = BYTE4(v19);
      __s1[13] = BYTE5(v19);
      if (!v14)
      {
        goto LABEL_97;
      }

      if (v14 == 1)
      {
        if (v77 < v7)
        {
          goto LABEL_152;
        }

        sub_100014CEC(v20, v19);
        v30 = sub_1004A40D4();
        if (!v30)
        {
          goto LABEL_175;
        }

        v31 = v30;
        v32 = sub_1004A4104();
        if (__OFSUB__(v7, v32))
        {
          goto LABEL_158;
        }

        v33 = v7 - v32 + v31;
        v34 = sub_1004A40F4();
        if (!v33)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v34 >= v76)
        {
          v55 = (v7 >> 32) - v7;
        }

        else
        {
          v55 = v34;
        }

LABEL_114:
        v59 = __s1;
        v60 = v33;
LABEL_140:
        v69 = memcmp(v59, v60, v55);
        result = sub_100014D40(v20, v19);
LABEL_141:
        v13 = v81;
        v11 = v82;
        if (!v69)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v53 = *(v7 + 16);
      v52 = *(v7 + 24);
      sub_100014CEC(v20, v19);
      v33 = sub_1004A40D4();
      if (v33)
      {
        v54 = sub_1004A4104();
        if (__OFSUB__(v53, v54))
        {
          goto LABEL_162;
        }

        v33 += v53 - v54;
      }

      v29 = __OFSUB__(v52, v53);
      v50 = v52 - v53;
      if (v29)
      {
        goto LABEL_156;
      }

      v51 = sub_1004A40F4();
      v10 = v78;
      if (!v33)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v51 >= v50)
      {
        v55 = v50;
      }

      else
      {
        v55 = v51;
      }

      goto LABEL_114;
    }

    if (v20 > v20 >> 32)
    {
      goto LABEL_149;
    }

    sub_100014CEC(v20, v19);
    v38 = sub_1004A40D4();
    if (v38)
    {
      v44 = sub_1004A4104();
      if (__OFSUB__(v20, v44))
      {
        goto LABEL_151;
      }

      v38 += v20 - v44;
    }

    sub_1004A40F4();
    if (v14 == 2)
    {
      v65 = *(v7 + 16);
      v75 = *(v7 + 24);
      v40 = sub_1004A40D4();
      if (v40)
      {
        v66 = sub_1004A4104();
        if (__OFSUB__(v65, v66))
        {
          goto LABEL_166;
        }

        v40 += v65 - v66;
      }

      v29 = __OFSUB__(v75, v65);
      v67 = v75 - v65;
      if (v29)
      {
        goto LABEL_161;
      }

      v68 = sub_1004A40F4();
      if (v68 >= v67)
      {
        v43 = v67;
      }

      else
      {
        v43 = v68;
      }

      if (!v38)
      {
        goto LABEL_177;
      }

      if (!v40)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_160;
      }

      v40 = sub_1004A40D4();
      if (v40)
      {
        v45 = sub_1004A4104();
        if (__OFSUB__(v7, v45))
        {
          goto LABEL_167;
        }

        v40 += v7 - v45;
      }

      v46 = sub_1004A40F4();
      v43 = (v7 >> 32) - v7;
      if (v46 < v76)
      {
        v43 = v46;
      }

      if (!v38)
      {
        goto LABEL_181;
      }

      if (!v40)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v21 == 2)
  {
    v37 = *(v20 + 16);
    sub_100014CEC(v20, v19);
    v38 = sub_1004A40D4();
    if (v38)
    {
      v39 = sub_1004A4104();
      if (__OFSUB__(v37, v39))
      {
        goto LABEL_150;
      }

      v38 += v37 - v39;
    }

    sub_1004A40F4();
    if (v14 == 2)
    {
      v61 = *(v7 + 16);
      v74 = *(v7 + 24);
      v40 = sub_1004A40D4();
      if (v40)
      {
        v62 = sub_1004A4104();
        if (__OFSUB__(v61, v62))
        {
          goto LABEL_164;
        }

        v40 += v61 - v62;
      }

      v29 = __OFSUB__(v74, v61);
      v63 = v74 - v61;
      if (v29)
      {
        goto LABEL_159;
      }

      v64 = sub_1004A40F4();
      if (v64 >= v63)
      {
        v43 = v63;
      }

      else
      {
        v43 = v64;
      }

      if (!v38)
      {
        goto LABEL_183;
      }

      if (!v40)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_155;
      }

      v40 = sub_1004A40D4();
      if (v40)
      {
        v41 = sub_1004A4104();
        if (__OFSUB__(v7, v41))
        {
          goto LABEL_165;
        }

        v40 += v7 - v41;
      }

      v42 = sub_1004A40F4();
      v43 = (v7 >> 32) - v7;
      if (v42 < v76)
      {
        v43 = v42;
      }

      if (!v38)
      {
        goto LABEL_179;
      }

      if (!v40)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v38 == v40)
      {
        goto LABEL_184;
      }

      v69 = memcmp(v38, v40, v43);
      result = sub_100014D40(v20, v19);
      v10 = v78;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_170;
    }

LABEL_139:
    v60 = __s1;
    v59 = v38;
    v55 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v14)
  {
LABEL_97:
    __s2 = v7;
    v85 = a2;
    v86 = BYTE2(a2);
    v87 = BYTE3(a2);
    v88 = BYTE4(a2);
    v89 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v14 == 2)
  {
    v48 = *(v7 + 16);
    v47 = *(v7 + 24);
    sub_100014CEC(v20, v19);
    v33 = sub_1004A40D4();
    if (v33)
    {
      v49 = sub_1004A4104();
      if (__OFSUB__(v48, v49))
      {
        goto LABEL_163;
      }

      v33 += v48 - v49;
    }

    v29 = __OFSUB__(v47, v48);
    v50 = v47 - v48;
    if (v29)
    {
      goto LABEL_154;
    }

    v51 = sub_1004A40F4();
    v10 = v78;
    if (!v33)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v77 < v7)
  {
    goto LABEL_153;
  }

  sub_100014CEC(v20, v19);
  v56 = sub_1004A40D4();
  if (v56)
  {
    v57 = v56;
    v58 = sub_1004A4104();
    if (__OFSUB__(v7, v58))
    {
      goto LABEL_157;
    }

    v33 = v7 - v58 + v57;
    v34 = sub_1004A40F4();
    if (!v33)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  sub_1004A40F4();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  sub_1004A40F4();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_100014D40(v20, v19);
LABEL_185:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

void sub_10008DFC0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10008B4AC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_10008EFFC();
      goto LABEL_12;
    }

    sub_1000905EC(v12 + 1);
  }

  v14 = *v3;
  sub_1004A6E94();
  v15 = v32;
  v16 = *(*v32 + 96);
  swift_beginAccess();
  v31 = v16;
  sub_100095778(v15 + v16, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000EB38C(v33);
  sub_1000957E0(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
  v17 = sub_1004A6F14();
  v18 = v14 + 56;
  v19 = -1 << *(v14 + 32);
  a2 = v17 & ~v19;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = v14;
    v21 = ~v19;
    do
    {
      sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      v22 = *(*(v20 + 48) + 8 * a2);
      v23 = *(*v22 + 96);
      swift_beginAccess();
      sub_100095778(v22 + v23, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100095778(v32 + v31, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v24 = sub_1000F2FCC(v11, v8);
      sub_1000957E0(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000957E0(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + 8 * a2) = v32;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1004A6E14();
  __break(1u);
}

uint64_t sub_10008E2A0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_10008BC9C(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_10008F160();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100090DDC(v13 + 1);
  }

  v15 = *v4;
  sub_1004A6E94();
  sub_1000EB38C(v27);
  v16 = sub_1004A6F14();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_100095778(*(v15 + 48) + v19 * a2, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      v20 = sub_1000F2FCC(v12, a1);
      sub_1000957E0(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100095988(a1, *(v21 + 48) + *(v9 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004A6E14();
  __break(1u);
  return result;
}

uint64_t sub_10008E4D0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_10008C6EC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10008F488();
      goto LABEL_15;
    }

    sub_100091788(v7 + 1);
  }

  v9 = *v3;
  sub_1004A6E94();
  sub_1004A6664();
  result = sub_1004A6F14();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = *v6;
    do
    {
      sub_100014B90(*(v9 + 48) + 48 * a2, v20);
      if (v20[0] == v12)
      {
        v13 = sub_1004A6654();
        result = sub_100014BEC(v20);
        if (v13)
        {
          result = sub_1004A6E14();
          __break(1u);
          break;
        }
      }

      else
      {
        result = sub_100014BEC(v20);
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = (*(v14 + 48) + 48 * a2);
  v16 = *(v6 + 16);
  *v15 = *v6;
  v15[1] = v16;
  v15[2] = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v19;
  }

  return result;
}

void *sub_10008E684()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CEEB0, &qword_1004D1D80);
  v2 = *v0;
  v3 = sub_1004A6684();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_10008E7D8()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CEEA8, &qword_1004E91C0);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        *v20 = v19;
        *(v20 + 8) = v18;
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
}

void sub_10008E93C()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CEF70, &qword_1004D1E50);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v19 = *v18;
        v20 = v18[1];
        v21 = (*(v4 + 48) + v17);
        *v21 = v19;
        v21[1] = v20;
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
}

void *sub_10008EA98()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CEED8, &qword_1004D1DA8);
  v2 = *v0;
  v3 = sub_1004A6684();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_10008EBEC()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CEFE0, &qword_1004D1EC8);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_10008ED48()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CEF98, &unk_1004D1E80);
  v2 = *v0;
  v3 = sub_1004A6684();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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
}

void *sub_10008EEA0()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CEF28, &qword_1004D1DF8);
  v2 = *v0;
  v3 = sub_1004A6684();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100014CEC(v18, *(&v18 + 1));
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

void *sub_10008EFFC()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CEF38, &unk_1004D1E10);
  v2 = *v0;
  v3 = sub_1004A6684();
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

void *sub_10008F160()
{
  v1 = v0;
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005CF0C8, &qword_1004D1FD0);
  v6 = *v0;
  v7 = sub_1004A6684();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100095778(*(v6 + 48) + v21, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
        result = sub_100095988(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_10008F358(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000C9C0(a1, a2);
  v4 = *v2;
  v5 = sub_1004A6684();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 4 * v16) = *(*(v4 + 48) + 4 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10008F488()
{
  v1 = v0;
  sub_10000C9C0(&qword_1005CEF68, &qword_1004D1E48);
  v2 = *v0;
  v3 = sub_1004A6684();
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
        v17 = 48 * (v14 | (v8 << 6));
        result = sub_100014B90(*(v2 + 48) + v17, v21);
        v18 = (*(v4 + 48) + v17);
        v19 = v21[0];
        v20 = v21[2];
        v18[1] = v21[1];
        v18[2] = v20;
        *v18 = v19;
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

uint64_t sub_10008F5FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEEB0, &qword_1004D1D80);
  result = sub_1004A6694();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1004A6E94();
      v17 = v16 - 2;
      if ((v16 - 2) >= 3)
      {
        sub_1004A6EB4(3uLL);
        v17 = v16 & 1;
      }

      sub_1004A6EB4(v17);
      result = sub_1004A6F14();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

void sub_10008F838(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEEA8, &qword_1004E91C0);
  v4 = sub_1004A6694();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_1004A6E94();
      sub_1004A6EB4(v19 | (v19 << 32));
      v20 = sub_1004A6F14();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
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
}

void sub_10008FA74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C9C0(&qword_1005CEF70, &qword_1004D1E50);
  v4 = sub_1004A6694();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1004A6E94();
      sub_1004A6EB4(v19);
      v20 = sub_1004A6F14();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}