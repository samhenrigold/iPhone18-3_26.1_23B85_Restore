uint64_t sub_100497DFC()
{
  v2 = *(*v1 + 64);
  *(*v1 + 160) = v0;

  sub_10049CAD0(v2, type metadata accessor for AppInterfaceContext.Activity);

  if (v0)
  {
    v3 = sub_100498034;
  }

  else
  {
    v3 = sub_100497F64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100497F64()
{
  v1 = *(v0 + 72);
  (*(*(v0 + 56) + 56))(v1, 0, 1, *(v0 + 48));
  sub_1000095E8(v1, &unk_1011841F0, &qword_100ECF040);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100498034()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PlaylistContext.entry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist.Entry();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlaylistContext.entry.setter(uint64_t a1)
{
  v3 = type metadata accessor for Playlist.Entry();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PlaylistContext.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for PlaylistContext(0) + 20);
  v5 = type metadata accessor for Playlist();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t type metadata accessor for PlaylistContext(uint64_t a1)
{
  result = qword_101191E38;
  if (!qword_101191E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaylistContext.playlist.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaylistContext(0) + 20);
  v4 = type metadata accessor for Playlist();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlaylistContext.init(entry:playlist:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Playlist.Entry();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for PlaylistContext(0) + 20);
  v8 = type metadata accessor for Playlist();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_100498430(uint64_t a1)
{
  result = type metadata accessor for Playlist.Entry();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Playlist();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1004984C0()
{
  v1 = *(sub_10010FC20(&unk_101184930, &unk_100EC05C0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100136034(v2);
}

uint64_t sub_100498558()
{
  v1 = *(sub_10010FC20(&unk_101184930, &unk_100EC05C0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for Artist();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_100498684()
{
  v2 = *(sub_10010FC20(&unk_101184930, &unk_100EC05C0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002F3F4;

  return sub_10013625C(v0 + v3, v4);
}

uint64_t sub_1004987C0()
{
  v2 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100008F30;

  return sub_100134CF4(v8, v0 + v3, v6, v0 + v5, v7);
}

unint64_t sub_1004988EC()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10049763C(v0 + v2, v3);
}

uint64_t sub_100498978()
{
  v2 = *(type metadata accessor for Song() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100497720(v0 + v3, v6, v0 + v5);
}

char *sub_100498A88(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101192010, &qword_100ECF1E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100498B7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
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

void *sub_100498C88(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_101181538, &unk_100ECF030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    type metadata accessor for ActivityType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100498DB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
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

char *sub_100498FCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101196A90, &qword_100ED56E0);
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

char *sub_1004990D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F78, &unk_100ECF110);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1004991C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101192088, &qword_100ECF290);
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

void *sub_1004993A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_101192060, &qword_100ECF260);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_101192068, &qword_100ECF268);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004994DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191EF8, &qword_100ECF048);
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

char *sub_1004995F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F08, &qword_100ECF070);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_1004997E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&unk_1011845C0, &unk_100EC0310);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&unk_101181570, &unk_100EBD010);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100499918(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011920E0, &unk_100ECF2F8);
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

char *sub_100499A24(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101192040, &qword_100ECF230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_100499B88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10010FC20(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
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
    sub_10010FC20(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100499CD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F28, &qword_100ECF090);
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

char *sub_100499DF0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10010FC20(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
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

char *sub_100499F38(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10010FC20(a5, a6);
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
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

void *sub_10049A0B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_101191F38, &unk_100ECF0A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10010FC20(&qword_10118E0B8, &qword_100ECA438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049A200(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F40, &unk_100ECF0B0);
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

char *sub_10049A30C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101192030, &qword_100ECF218);
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

void *sub_10049A42C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_10118F1F8, &unk_100ED76C0);
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
    sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049A65C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F70, &qword_100ECF108);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049A77C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&unk_10119F020, &qword_100ECF100);
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

char *sub_10049A8A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F00, &unk_100ECF060);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049AA60(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011920B0, &qword_100ECF2C8);
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

void *sub_10049ABA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10010FC20(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
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
    sub_10010FC20(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10049ACFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  sub_10010FC20(a5, a6);
  v16 = *(sub_10010FC20(a7, a8) - 8);
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
  v21 = *(sub_10010FC20(a7, a8) - 8);
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

char *sub_10049AEE4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10010FC20(a5, a6);
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

char *sub_10049AFF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101184900, &qword_100EC8D50);
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

void *sub_10049B154(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10010FC20(a5, a6);
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

char *sub_10049B330(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191FD0, &qword_100ECF1A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10049B454(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v20[-v8];
  v10 = type metadata accessor for Artist();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21[3] = a3;
  v21[4] = a4;
  v14 = sub_10001C8B8(v21);
  (*(*(a3 - 8) + 16))(v14, a1, a3);
  static ApplicationCapabilities.shared.getter(v22);
  sub_100014984(v22);
  if (v22[8])
  {
    sub_100008FE4(v21, v20);
    sub_10010FC20(&unk_101184960, &qword_100EC05F8);
    if (swift_dynamicCast())
    {
      (*(v11 + 8))(v13, v10);
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      type metadata accessor for MainActor();
      v16 = a2;
      v17 = static MainActor.shared.getter();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = &protocol witness table for MainActor;
      v18[4] = v16;
      sub_1001F4F78(0, 0, v9, &unk_100EC0600, v18);
    }
  }

  return sub_10000959C(v21);
}

uint64_t sub_10049B6CC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = Hasher._finalize()() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

uint64_t sub_10049B780(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v2 + 16);
  v6 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v5, v2 + v4, v6);
}

uint64_t sub_10049B82C()
{
  v2 = *(type metadata accessor for Song() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_100497514(v0 + v3, v0 + v4);
}

uint64_t sub_10049B92C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);

  v6 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectWeakDestroy();
  v7 = *(v6 + 48);
  if (v7 != 255)
  {
    sub_10012B804(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  if (*(v6 + 80))
  {
  }

  return swift_deallocObject();
}

void sub_10049BA20()
{
  v1 = *(type metadata accessor for Playlist() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1006E1028(v0 + v2, v3);
}

uint64_t sub_10049BAF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100494CB8(a1, v4, v5, v6);
}

uint64_t sub_10049BBE4()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(v0 + ((*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_100495B5C(v0 + v3, v4, v2);
}

uint64_t sub_10049BCF4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Song() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002F3F4;

  return sub_100496A20(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_10049BE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_10049BEA0(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v40 = a5;
  v43 = type metadata accessor for Logger();
  v10 = *(v43 - 8);
  __chkstk_darwin();
  sub_10010FC20(&qword_1011902F0, &qword_100ECCF38);
  __chkstk_darwin();
  v12 = (v38 - v11);
  ApplicationCapabilities.Controller.capabilities.getter(v50);
  v13 = v50[4];

  sub_100014984(v50);
  v14 = sub_10048BBDC(6, v13);

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  ApplicationCapabilities.Controller.capabilities.getter(&v51);
  sub_100014984(&v51);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v15 = qword_101218AC8;
  v16 = (*(*qword_101218AC8 + 528))();
  if (v16)
  {

    return 0;
  }

  v38[2] = v10;
  v39 = a1;
  v18 = (*v15 + 432);
  v19 = *v18;
  v20 = (*v18)();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 isSharedListeningSession];

    if (v22)
    {
      return 0;
    }
  }

  if (a3 - 1 > 1)
  {
    result = v19();
    if (!result)
    {
      return result;
    }

    v30 = 0;
  }

  else
  {
    v23 = v39;
    sub_100008FE4(v39, &v46);
    sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
    sub_10010FC20(&qword_101182C50, &unk_100EBE7E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      sub_1000095E8(v44, &qword_101182C38, &unk_100ECB2A0);
      return 0;
    }

    sub_100059A8C(v44, v47);
    sub_10000954C(v23, v23[3]);
    DynamicType = swift_getDynamicType();
    if (!static SharedListening.isMusicItemTypeSupported(_:)(DynamicType))
    {
      sub_10000959C(v47);
      return 0;
    }

    v25 = v48;
    v38[1] = v49;
    v26 = sub_10000954C(v47, v48);
    sub_100009F78(0, &qword_10118AB70, MPCPlaybackIntent_ptr);
    v27 = __chkstk_darwin();
    (*(v29 + 16))(v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v25, v27);
    v30 = MPCPlaybackIntent.init<A>(_:)();
    v31 = a4;
    v32 = a4;
    v34 = v40;
    v33 = v41;
    v35 = v42;
    sub_100344C3C(v32, v40, v41, v42);
    MPCPlaybackIntent.playActivityInformation.setter(v31, v34, v33, v35);
    sub_10000959C(v47);
  }

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
  v37 = GroupActivitiesManager.itemProvider(with:metadata:)(v30, v12);
  sub_1000095E8(v12, &qword_1011902F0, &qword_100ECCF38);

  return v37;
}

uint64_t sub_10049C5B0()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_100493D0C(v0 + v2, v0 + v5, v8);
}

uint64_t sub_10049C6E4()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v8 = v0 + ((v6 + *(v7 + 80) + 96) & ~*(v7 + 80));

  return sub_100494310(v0 + v2, v0 + v5, v0 + v6, v8);
}

uint64_t sub_10049C828()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_100494468(v0 + v2, v5, v6);
}

uint64_t sub_10049C910()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v6 = (v4 + *(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v0 + v3);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100494988(v0 + v2, v7, v0 + v4, v0 + v6, v8);
}

uint64_t sub_10049CA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10049CAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10049CB30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10049CB7C@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

double sub_10049CBF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v8 = &v21 - v7;
  v22 = &v21 - v7;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v9 = __chkstk_darwin();
  v11 = &v21 - v10;
  v12 = *(v5 + 16);
  v12(&v21 - v10, a1, v4, v9);
  (*(v5 + 56))(v11, 0, 1, v4);
  v13 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16TracklistManager_playlist;
  swift_beginAccess();
  sub_10049DCC0(v11, v2 + v13);
  swift_endAccess();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = v23;
  (v12)(v23, a1, v4);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v19 + v17, v15, v4);
  *(v19 + v18) = v2;
  sub_1001F4CB8(0, 0, v22, &unk_100ECF3E8, v19);

  return result;
}

double sub_10049CECC@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t sub_10049CF48(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v6, v9, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_10049D0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Playlist();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_10118C2B0, &qword_100ECDEF0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_10119F040, &qword_100ECF3F0);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v5[15] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011921D8, &qword_100ECF3F8);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v11;
  v5[21] = v10;

  return _swift_task_switch(sub_10049D334, v11, v10);
}

uint64_t sub_10049D334()
{
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  type metadata accessor for Playlist.Entry();
  MusicLibraryRequest.init()();
  swift_getKeyPath();
  v5 = *(v3 + 16);
  v0[22] = v5;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_10049DE50(&qword_101186EC0, &protocol conformance descriptor for Playlist);
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  sub_100453028(v1);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_10049D4BC;
  v7 = v0[16];
  v8 = v0[14];

  return MusicLibraryRequest.response()(v8, v7);
}

uint64_t sub_10049D4BC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10049D784;
  }

  else
  {
    v5 = sub_10049D5F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10049D5F8()
{
  v1 = v0[17];
  v11 = v0[16];
  v12 = v0[18];
  v2 = v0[13];
  v3 = v0[11];
  v9 = v0[14];
  v10 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v8 = v0[8];

  MusicLibraryResponse.items.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v4, v3, v8);

  static Published.subscript.setter();
  (*(v5 + 8))(v3, v8);
  (*(v2 + 8))(v9, v10);
  (*(v1 + 8))(v12, v11);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10049D784()
{
  v27 = v0;
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);
  if (qword_10117F1F0 != -1)
  {
    swift_once();
  }

  v4 = v0[22];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, qword_101218608);
  v4(v5, v7, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[25];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v16 = 136315394;
    sub_10049DE50(&qword_101184200, &protocol conformance descriptor for Playlist);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1000105AC(v17, v19, &v26);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v0[2] = v12;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v21 = String.init<A>(describing:)();
    v23 = sub_1000105AC(v21, v22, &v26);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load entries for %s with error: %s.", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10049DA84()
{
  v1 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16TracklistManager__entries;
  v2 = sub_10010FC20(&qword_1011921D0, &qword_100ECF3D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100453028(v0 + OBJC_IVAR____TtCO5Music14ClarityUIMusic16TracklistManager_playlist);

  return swift_deallocClassInstance();
}

uint64_t _s14descr101092F61V16TracklistManagerCMa(uint64_t a1)
{
  result = qword_101192138;
  if (!qword_101192138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10049DB90(uint64_t a1)
{
  sub_10049DC5C(319);
  if (v1 <= 0x3F)
  {
    sub_100039144(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10049DC5C(uint64_t a1)
{
  if (!qword_101192148)
  {
    sub_1001109D0(&qword_10118C2B0, &qword_100ECDEF0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101192148);
    }
  }
}

uint64_t sub_10049DCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049DD30(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10049D0C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10049DE50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10049DE94()
{
  v1 = [v0 connectedScenes];
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_100061F5C();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v2);
  v4 = v3;

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_1007E90D4(0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  v8 = [v7 delegate];

  if (v8)
  {
    type metadata accessor for MainSceneDelegate();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

double sub_10049DFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v14 + v12, v7, v4);
  *(v14 + v13) = a2;
  sub_1001F4CB8(0, 0, v9, &unk_100ECF480, v14);

  return result;
}

uint64_t sub_10049E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = _s9PlaylistsV5ScopeVMa(0);
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v5[14] = *(v7 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[18] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10049E338, v9, v8);
}

uint64_t sub_10049E338()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, v3, v5);
  (*(v6 + 56))(v2 + v4, 0, 1, v5);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 136);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  *v8 = qword_101218AB8;
  *(v8 + *(v9 + 24)) = 0;
  v11 = objc_opt_self();

  v12 = [v11 currentTraitCollection];
  v13 = [v12 horizontalSizeClass];

  v14 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));
  v15 = sub_10037E11C(v8, 0, v13 != 2);
  v16 = (v7 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
  v17 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
  *v7 = v15;
  v18 = type metadata accessor for UITraitOverrides();
  (*(*(v18 - 8) + 56))(v7 + v17, 1, 1, v18);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *v16 = sub_100137E80;
  v16[1] = v19;
  swift_storeEnumTagMultiPayload();
  if (!v10)
  {
    v26 = objc_opt_self();
    v27 = v15;
    v28 = [v26 sharedApplication];
    v29 = [v28 connectedScenes];
    sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
    sub_100061F5C();
    v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v30);
    v32 = v31;

    if (v32 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_8:
        if ((v32 & 0xC000000000000001) != 0)
        {
          v34 = sub_1007E90D4(0, v32);
        }

        else
        {
          if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v34 = *(v32 + 32);
        }

        v35 = v34;

        v36 = [v35 delegate];
        if (v36 && (*(v0 + 56) = v36, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
        {
          v37 = *(v0 + 40);
          if (v37)
          {
            v38 = *(*sub_10000954C((v0 + 16), v37) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C((v0 + 16));
            if (!v38)
            {
              goto LABEL_20;
            }

            goto LABEL_5;
          }
        }

        else
        {
          *(v0 + 48) = 0;
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
        }

        sub_1000095E8(v0 + 16, &unk_101184EA0, &unk_100EBFA20);
        goto LABEL_20;
      }
    }

    else
    {
      result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_20;
  }

  v20 = v15;
LABEL_5:
  v21 = *(v0 + 128);
  v22 = *(v0 + 120);
  v23 = *(v0 + 104);
  sub_100115B50(*(v0 + 136), v21);
  sub_100115B50(v21, v22);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_100115BB4(v22, v25 + v24);

  sub_100706900(v21, sub_100137E88, v25);

  sub_100115C8C(v21);
LABEL_20:
  sub_100115C8C(*(v0 + 136));

  v39 = *(v0 + 8);

  return v39();
}

double sub_10049E884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v20 = a2;
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v7 + 32))(v16 + v14, v9, v6);
  v17 = (v16 + v15);
  *v17 = v20;
  v17[1] = a3;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v19;
  sub_1001F4CB8(0, 0, v11, &unk_100ECF4A0, v16);

  return result;
}

uint64_t sub_10049EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  v7[12] = swift_task_alloc();
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v7[15] = *(v9 + 64);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[19] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10049EC10, v11, v10);
}

uint64_t sub_10049EC10()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  sub_1007041B4(v6, v5, v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 88);
    sub_100115BB4(*(v0 + 96), *(v0 + 144));
    if (v7)
    {
LABEL_4:
      v9 = *(v0 + 136);
      v8 = *(v0 + 144);
      v10 = *(v0 + 128);
      v11 = *(v0 + 112);
      sub_100115B50(v8, v9);
      sub_100115B50(v9, v10);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      sub_100115BB4(v10, v13 + v12);

      sub_100706900(v9, sub_100139B24, v13);

      sub_100115C8C(v9);
      v14 = v8;
LABEL_20:
      sub_100115C8C(v14);
      goto LABEL_21;
    }

    v15 = [objc_opt_self() sharedApplication];
    v16 = [v15 connectedScenes];
    sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
    sub_100061F5C();
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v17);
    v19 = v18;

    if (v19 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_7:
        if ((v19 & 0xC000000000000001) != 0)
        {
          v21 = sub_1007E90D4(0, v19);
        }

        else
        {
          if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v21 = *(v19 + 32);
        }

        v22 = v21;

        v23 = [v22 delegate];
        if (v23 && (*(v0 + 56) = v23, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
        {
          v24 = *(v0 + 40);
          if (v24)
          {
            v25 = *(*sub_10000954C((v0 + 16), v24) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C((v0 + 16));
            if (v25)
            {
              goto LABEL_4;
            }

LABEL_19:
            v14 = *(v0 + 144);
            goto LABEL_20;
          }
        }

        else
        {
          *(v0 + 48) = 0;
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
        }

        sub_1000095E8(v0 + 16, &unk_101184EA0, &unk_100EBFA20);
        goto LABEL_19;
      }
    }

    else
    {
      result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_19;
  }

  sub_1000095E8(*(v0 + 96), &unk_1011841F0, &qword_100ECF040);
LABEL_21:

  v26 = *(v0 + 8);

  return v26();
}

double sub_10049EFAC(void *a1, void *a2, uint64_t a3)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = a1;
  v10 = a2;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  v12[5] = a2;
  v12[6] = a3;
  sub_1001F4CB8(0, 0, v7, &unk_100ECF490, v12);

  return result;
}

uint64_t sub_10049F0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for Playlist();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v6[16] = v8;
  v9 = *(v8 - 8);
  v6[17] = v9;
  v6[18] = *(v9 + 64);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[22] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10049F2D8, v11, v10);
}

uint64_t sub_10049F2D8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);

  v5 = v4;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v9 = *(v0 + 72);
    (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
    if (v9)
    {
      v10 = *(v0 + 72);
      sub_100009F78(0, &qword_101192200, MPIdentifierSet_ptr);
      v11 = sub_100009F78(0, &qword_101183A28, MPModelSong_ptr);
      v12 = v10;
      v13 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
      static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v11, *v13, 0, v12);
      if (v14)
      {
        v15 = MusicItemID.init(_:)();
        v9 = v16;
      }

      else
      {

        v15 = 0;
        v9 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 112);
    v19 = *(v0 + 120);
    v21 = *(v0 + 96);
    v22 = *(v0 + 104);
    sub_1007041B4(v20, v15, v9, v19);

    (*(v22 + 8))(v20, v21);
    if ((*(v18 + 48))(v19, 1, v17) == 1)
    {
      goto LABEL_9;
    }

    v23 = *(v0 + 80);
    sub_100115BB4(*(v0 + 120), *(v0 + 168));
    if (v23)
    {
      goto LABEL_11;
    }

    v31 = [objc_opt_self() sharedApplication];
    v32 = [v31 connectedScenes];
    sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
    sub_100061F5C();
    v33 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v33);
    v35 = v34;

    if (v35 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_14:
        if ((v35 & 0xC000000000000001) != 0)
        {
          v37 = sub_1007E90D4(0, v35);
        }

        else
        {
          if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v37 = *(v35 + 32);
        }

        v38 = v37;

        v39 = [v38 delegate];
        if (v39 && (*(v0 + 56) = v39, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
        {
          v40 = *(v0 + 40);
          if (v40)
          {
            v41 = *(*sub_10000954C((v0 + 16), v40) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C((v0 + 16));
            if (v41)
            {
LABEL_11:
              v25 = *(v0 + 160);
              v24 = *(v0 + 168);
              v26 = *(v0 + 152);
              v27 = *(v0 + 136);
              sub_100115B50(v24, v25);
              sub_100115B50(v25, v26);
              v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
              v29 = swift_allocObject();
              *(v29 + 16) = 0;
              *(v29 + 24) = 0;
              sub_100115BB4(v26, v29 + v28);

              sub_100706900(v25, sub_100139B24, v29);

              sub_100115C8C(v25);
              v30 = v24;
LABEL_27:
              sub_100115C8C(v30);
              goto LABEL_28;
            }

LABEL_26:
            v30 = *(v0 + 168);
            goto LABEL_27;
          }
        }

        else
        {
          *(v0 + 48) = 0;
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
        }

        sub_1000095E8(v0 + 16, &unk_101184EA0, &unk_100EBFA20);
        goto LABEL_26;
      }
    }

    else
    {
      result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_26;
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  sub_1000095E8(*(v0 + 88), &unk_1011814D0, &qword_100EC12A0);
  (*(v7 + 56))(v8, 1, 1, v6);
LABEL_9:
  sub_1000095E8(*(v0 + 120), &unk_1011841F0, &qword_100ECF040);
LABEL_28:

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_10049F7E8(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10049E1F4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10049F908(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10049F0F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10049F9D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100008F30;

  return sub_10049EAC0(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_10049FB44@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10049FB9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for AlbumDetailDataSource.CellType(0);
  __chkstk_darwin();
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004E40DC(v2, v5, type metadata accessor for AlbumDetailDataSource.CellType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v8 = type metadata accessor for Track();
      v9 = *(v8 - 8);
      (*(v9 + 32))(a1, v5, v8);
      return (*(v9 + 56))(a1, 0, 1, v8);
    }

    v7 = v5[1];
    if (*(v7 + 16))
    {
      v8 = type metadata accessor for Track();
      v9 = *(v8 - 8);
      (*(v9 + 16))(a1, v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

      return (*(v9 + 56))(a1, 0, 1, v8);
    }
  }

  else
  {
    v10 = *(*v5 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks);
    if (*(v10 + 16))
    {
      v11 = type metadata accessor for Track();
      v12 = *(v11 - 8);
      (*(v12 + 16))(a1, v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

      return (*(v12 + 56))(a1, 0, 1, v11);
    }
  }

  v14 = type metadata accessor for Track();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_10049FE90()
{
  v1 = v0;
  v2 = type metadata accessor for MusicVideo();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E40DC(v1, v11, type metadata accessor for AlbumDetailDataSource.LoadingSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    sub_1004E414C(v11, type metadata accessor for AlbumDetailDataSource.LoadingSource);
    return 0;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v7 + 32))(v9, v11, v6);
    v14 = Song.id.getter();
    (*(v7 + 8))(v9, v6);
    return v14;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return *v11;
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    v15 = MusicVideo.id.getter();
    (*(v3 + 8))(v5, v2);
    return v15;
  }
}

char *sub_1004A0128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v203 = a5;
  v204 = a6;
  v184 = a4;
  v186 = a3;
  v185 = a2;
  v211 = a1;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v145 = &v140 - v8;
  v146 = sub_10010FC20(&qword_1011926E0, &qword_100ECF880);
  v144 = *(v146 - 8);
  __chkstk_darwin();
  v143 = &v140 - v9;
  v142 = type metadata accessor for PlacementID();
  v141 = *(v142 - 8);
  __chkstk_darwin();
  v140 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_10010FC20(&qword_1011926E8, &qword_100ECF888);
  v148 = *(v149 - 8);
  __chkstk_darwin();
  v147 = &v140 - v11;
  v12 = sub_10010FC20(&unk_1011A4560, &qword_100ECF5E0);
  v209 = *(v12 - 8);
  v210 = v12;
  __chkstk_darwin();
  v202 = &v140 - v13;
  v14 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  v208 = *(v14 - 8);
  __chkstk_darwin();
  v200 = &v140 - v15;
  v16 = sub_10010FC20(&unk_1011A4B80, &unk_100ECF5D0);
  v207 = *(v16 - 8);
  __chkstk_darwin();
  v198 = &v140 - v17;
  v18 = sub_10010FC20(&qword_1011A4520, &qword_100EE47C0);
  v206 = *(v18 - 8);
  __chkstk_darwin();
  v196 = &v140 - v19;
  v20 = sub_10010FC20(&qword_101192438, &unk_100ECF5C0);
  v205 = *(v20 - 8);
  __chkstk_darwin();
  v194 = &v140 - v21;
  v22 = sub_10010FC20(&qword_101192428, &qword_100ECF5B8);
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v191 = &v140 - v24;
  v25 = sub_10010FC20(&qword_101192418, &qword_100ECF5B0);
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v188 = &v140 - v27;
  sub_10010FC20(&unk_1011926F0, &qword_100ECF890);
  __chkstk_darwin();
  v181 = &v140 - v28;
  v177 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v187 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v183 = &v140 - v30;
  __chkstk_darwin();
  v182 = &v140 - v31;
  __chkstk_darwin();
  v180 = &v140 - v32;
  __chkstk_darwin();
  v174 = &v140 - v33;
  v179 = type metadata accessor for MusicPropertySource();
  v176 = *(v179 - 8);
  __chkstk_darwin();
  v178 = &v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_10010FC20(&unk_1011A4630, &unk_100EE4A00);
  v171 = *(v172 - 8);
  __chkstk_darwin();
  v170 = &v140 - v35;
  v168 = sub_10010FC20(&unk_101184D60, &unk_100EC09C0);
  v167 = *(v168 - 8);
  __chkstk_darwin();
  v163 = &v140 - v36;
  v161 = sub_10010FC20(&unk_1011A4640, &qword_100EE4A10);
  v160 = *(v161 - 8);
  __chkstk_darwin();
  v158 = &v140 - v37;
  v164 = sub_10010FC20(&unk_101192700, &qword_100EC06A0);
  __chkstk_darwin();
  v162 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v140 - v39;
  __chkstk_darwin();
  v41 = &v140 - v40;
  v153 = &v140 - v40;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  v42 = __chkstk_darwin();
  v212 = &v140 - v43;
  v189 = v26;
  v44 = *(v26 + 56);
  v190 = v25;
  v44(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerRegistration], 1, 1, v25, v42);
  v192 = v23;
  v45 = *(v23 + 56);
  v193 = v22;
  v45(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___bannerRegistration], 1, 1, v22);
  v46 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_waveformPlayer;
  type metadata accessor for WaveformPlayer();
  swift_allocObject();
  *&v7[v46] = sub_10026FF78();
  v47 = *(v205 + 56);
  v195 = v20;
  v47(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___trackCellRegistration], 1, 1, v20);
  v48 = *(v206 + 56);
  v197 = v18;
  v48(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___noContentCellRegistration], 1, 1, v18);
  v49 = *(v207 + 56);
  v199 = v16;
  v49(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___detailCellRegistration], 1, 1, v16);
  v50 = *(v208 + 56);
  v50(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___showCompleteAlbumCellRegistration], 1, 1, v14);
  v201 = v14;
  v50(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___storeNavigationCellRegistration], 1, 1, v14);
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for RelatedContentSpacing.Data(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v209 + 56))(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___symphonyRelatedContentCellRegistration], 1, 1, v210);
  v51 = &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController];
  *v51 = 0;
  v51[8] = 1;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_playActivityFeatureIdentifier] = 0;
  v52 = &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID];
  v165 = &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID];
  *v52 = 0;
  v52[1] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___dragDropController] = 1;
  v175 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent] = 0;
  v53 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
  v54 = type metadata accessor for IndexPath();
  (*(*(v54 - 8) + 56))(&v7[v53], 1, 1, v54);
  v55 = &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState];
  *v55 = 0x3FFFFFEFELL;
  v55[1] = 0;
  v55[2] = 0;
  v56 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_artwork;
  v57 = type metadata accessor for Artwork();
  (*(*(v57 - 8) + 56))(&v7[v56], 1, 1, v57);
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___relatedContentProvider] = 1;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage____needsToResolveLayout] = 2;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem] = 0;
  v58 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  v156 = type metadata accessor for Album();
  v59 = *(v156 - 8);
  v155 = *(v59 + 56);
  v157 = v59 + 56;
  v155(&v7[v58], 1, 1, v156);
  v60 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_scope;
  v61 = _s6AlbumsV5ScopeOMa(0);
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v169 = v60;
  v152 = v61;
  v151 = v63;
  v150 = v62 + 56;
  (v63)(&v7[v60], 1, 1);
  v64 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sourceURL;
  v65 = type metadata accessor for URL();
  v66 = *(*(v65 - 8) + 56);
  v173 = v64;
  v66(&v7[v64], 1, 1, v65);
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_actionableStateController] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_asyncSetupTask] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse] = 0xF000000000000007;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponseSubscription] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections] = &off_1010992D8;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration] = 0;
  v67 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_libraryStateCache;
  *&v7[v67] = sub_10010BD90(_swiftEmptyArrayStorage);
  v68 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_playerStateCache;
  *&v7[v68] = sub_10010BDA4(_swiftEmptyArrayStorage);
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_didSetTracksPopularity] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells] = 0;
  v69 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  v70 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  (*(*(v70 - 8) + 56))(&v7[v69], 1, 1, v70);
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount] = 0;
  v71 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
  v72 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  v73 = *(*(v72 - 8) + 56);
  v166 = v71;
  v73(&v7[v71], 1, 1, v72);
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection] = 0;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection] = 0;
  v154 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracklistFooterViewModel;
  v74 = type metadata accessor for Date();
  v75 = *(*(v74 - 8) + 56);
  v75(v212, 1, 1, v74);
  v76 = sub_10010FC20(&qword_101184C70, &qword_100EBD6D0);
  v77 = *(*(v76 - 8) + 56);
  v77(v41, 1, 1, v76);
  type metadata accessor for TracklistFooter.ViewModel(0);
  v78 = swift_allocObject();
  *(v78 + 16) = 2;
  v79 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate;
  v75(v78 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate, 1, 1, v74);
  v80 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__trackCount;
  v214 = 0;
  v215 = 1;
  sub_10010FC20(&qword_101184A70, &qword_100EC0680);
  v81 = v158;
  Published.init(initialValue:)();
  (*(v160 + 32))(v78 + v80, v81, v161);
  v82 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__duration;
  v214 = 0;
  v83 = v163;
  Published.init(initialValue:)();
  (*(v167 + 32))(v78 + v82, v83, v168);
  v84 = (v78 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright);
  *v84 = 0;
  v84[1] = 0;
  v85 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__recordLabels;
  v86 = v159;
  v77(v159, 1, 1, v76);
  v87 = v162;
  sub_1000089F8(v86, v162, &unk_101192700, &qword_100EC06A0);
  v88 = v170;
  Published.init(initialValue:)();
  sub_1000095E8(v86, &unk_101192700, &qword_100EC06A0);
  (*(v171 + 32))(v78 + v85, v88, v172);
  *(v78 + 16) = 2;
  swift_beginAccess();
  v89 = v78 + v79;
  v90 = v174;
  sub_1002190E0(v212, v89, &qword_101188C20, &qword_100EC2030);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v214 = 0;
  v215 = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v214 = 0;

  static Published.subscript.setter();
  *v84 = 0;
  v84[1] = 0;

  v91 = v153;
  sub_1000089F8(v153, v86, &unk_101192700, &qword_100EC06A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v86, v87, &unk_101192700, &qword_100EC06A0);

  static Published.subscript.setter();
  v92 = v184;
  sub_1000095E8(v86, &unk_101192700, &qword_100EC06A0);
  sub_1000095E8(v91, &unk_101192700, &qword_100EC06A0);
  sub_1000095E8(v212, &qword_101188C20, &qword_100EC2030);
  *&v7[v154] = v78;
  v93 = v176;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_needsDurationUpdate] = 0;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_bannerProviderObserver] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner] = 0;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingShowCompleteAlbumSection] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_hasNetworkConnectivityDidChangeNotificationObserver] = 0;
  v155(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum], 1, 1, v156);
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingStoreNavigationSection] = 0;
  v94 = &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData];
  *v94 = 0;
  *(v94 + 1) = 0;
  *(v94 + 2) = 0;
  v94[24] = 0;
  sub_1004E40DC(v211, &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_loadingSource], type metadata accessor for AlbumDetailDataSource.LoadingSource);
  v95 = v165;
  v96 = v186;
  *v165 = v185;
  v95[1] = v96;

  v97 = v92;
  sub_1004E40DC(v92, v90, type metadata accessor for ContainerDetail.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v99 = *(v93 + 104);
  v100 = v178;
  v101 = v179;
  if (EnumCaseMultiPayload == 1)
  {
    v99(v178, enum case for MusicPropertySource.catalog(_:), v179);
  }

  else
  {
    v99(v178, enum case for MusicPropertySource.library(_:), v179);
    sub_1000095E8(v90, &unk_1011926F0, &qword_100ECF890);
  }

  (*(v93 + 32))(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source], v100, v101);
  v102 = v180;
  sub_1004E40DC(v97, v180, type metadata accessor for ContainerDetail.Source);
  v103 = swift_getEnumCaseMultiPayload();
  v105 = v203;
  v104 = v204;
  v106 = v187;
  v107 = v182;
  v108 = v181;
  if (v103 == 1)
  {
    v151(v181, 1, 1, v152);
  }

  else
  {
    sub_10003D17C(v102, v181, &unk_1011926F0, &qword_100ECF890);
  }

  v109 = v169;
  swift_beginAccess();
  sub_10006B010(v108, &v7[v109], &unk_1011926F0, &qword_100ECF890);
  swift_endAccess();
  sub_1004E40DC(v97, v107, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v110 = 0;
  }

  else
  {
    v110 = *(v107 + *(sub_10010FC20(&qword_10118A430, &qword_100EC8F70) + 48));
    sub_1000095E8(v107, &unk_1011926F0, &qword_100ECF890);
  }

  v7[v175] = v110;
  v111 = v166;
  swift_beginAccess();
  sub_1002190E0(v105, &v7[v111], &qword_1011846D0, &qword_100EDD110);
  swift_endAccess();
  v112 = v173;
  swift_beginAccess();
  sub_1002190E0(v104, &v7[v112], &qword_101183A20, &unk_100EBCF80);
  swift_endAccess();
  v113 = v183;
  sub_1004E40DC(v97, v183, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v114 = *v113;
  }

  else
  {
    sub_1000095E8(v113, &unk_1011926F0, &qword_100ECF890);
    v114 = 1;
  }

  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents] = v114;
  sub_1004E40DC(v97, v106, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v115 = 0;
  }

  else
  {
    v115 = *(v106 + *(sub_10010FC20(&qword_10118A430, &qword_100EC8F70) + 64));
    sub_1000095E8(v106, &unk_1011926F0, &qword_100ECF890);
  }

  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_allowsCatalogFallback] = v115;
  v116 = type metadata accessor for AlbumDetailDataSource(0);
  v213.receiver = v7;
  v213.super_class = v116;
  v117 = objc_msgSendSuper2(&v213, "init");
  v118 = v188;
  sub_1004A282C(v188);
  (*(v189 + 8))(v118, v190);
  v119 = v191;
  sub_1004A3348(v191);
  (*(v192 + 8))(v119, v193);
  v120 = v194;
  sub_1004A3760(v194);
  (*(v205 + 8))(v120, v195);
  v121 = v196;
  sub_1004A5D90(v196);
  (*(v206 + 8))(v121, v197);
  v122 = v198;
  sub_1004A6248(v198);
  (*(v207 + 8))(v122, v199);
  v123 = v200;
  sub_1004A66A4(v200);
  (*(v208 + 8))(v123, v201);
  v124 = v202;
  sub_1004A739C(v202);
  (*(v209 + 8))(v124, v210);
  v125 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v126 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v127 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v117[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_hasNetworkConnectivityDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v125, v126, 1, 1, sub_1004E4144, v127);

  v128 = [objc_opt_self() sharedApplication];
  v129 = sub_100729BFC();

  if (*(v129 + 16))
  {

    v130 = v140;
    static PlacementID.Banner.albumPage.getter();
    sub_10010BC60(_swiftEmptyArrayStorage);
    MusicPageProvider.bannerProvider(for:context:)();

    (*(v141 + 8))(v130, v142);
    v131 = v143;
    dispatch thunk of BannerProvider.$placement.getter();

    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v132 = static OS_dispatch_queue.main.getter();
    v214 = v132;
    v133 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v134 = v145;
    (*(*(v133 - 8) + 56))(v145, 1, 1, v133);
    sub_100020674(&unk_101192710, &qword_1011926E0, &qword_100ECF880, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v135 = v147;
    v136 = v146;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v134, &qword_101182140, &unk_100EBD2A0);

    (*(v144 + 8))(v131, v136);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&unk_101192720, &qword_1011926E8, &qword_100ECF888, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v137 = v149;
    v138 = Publisher<>.sink(receiveValue:)();

    sub_1000095E8(v204, &qword_101183A20, &unk_100EBCF80);
    sub_1000095E8(v105, &qword_1011846D0, &qword_100EDD110);
    sub_1004E414C(v97, type metadata accessor for ContainerDetail.Source);
    sub_1004E414C(v211, type metadata accessor for AlbumDetailDataSource.LoadingSource);
    (*(v148 + 8))(v135, v137);
  }

  else
  {

    sub_1000095E8(v104, &qword_101183A20, &unk_100EBCF80);
    sub_1000095E8(v105, &qword_1011846D0, &qword_100EDD110);
    sub_1004E414C(v97, type metadata accessor for ContainerDetail.Source);
    sub_1004E414C(v211, type metadata accessor for AlbumDetailDataSource.LoadingSource);
    v138 = 0;
  }

  *&v117[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_bannerProviderObserver] = v138;

  return v117;
}

void sub_1004A1FFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    static ApplicationCapabilities.shared.getter(v8);
    sub_100014984(v8);
    if (v8[1])
    {
      sub_1004AF430(v4);
    }

    else
    {
      v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v3 + v5, v7, &unk_1011926C0, &unk_100ECF870);
      if (v7[8] == 1)
      {
        sub_1000095E8(v7, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v7, &unk_1011926C0, &unk_100ECF870);
        if (v6)
        {
          sub_10069F67C();
        }
      }

      sub_1004D7980();
    }
  }
}

double sub_1004A2108(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BannerProvider.Placement();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    if ((*(v4 + 88))(v6, v3) == enum case for BannerProvider.Placement.banner(_:))
    {
      (*(v4 + 96))(v6, v3);
      v10 = *v6;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v10 = 0;
    }

    v11 = *&v9[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner];
    *&v9[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner] = v10;

    sub_1004D4BB0(v11);
  }

  return result;
}

id sub_1004A22A0()
{
  if (*&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_asyncSetupTask])
  {

    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    Task.cancel()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlbumDetailDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004A282C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101192B58, &qword_100ED01C0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101192B58, &qword_100ED01C0);
  v8 = sub_10010FC20(&qword_101192418, &qword_100ECF5B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101192B58, &qword_100ED01C0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s10HeaderCellCMa();
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101192B58, &qword_100ED01C0);
  return swift_endAccess();
}

void sub_1004A2A94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_101192B60, &qword_100ED01C8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v32 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v12 + v13, &v34, &unk_1011926C0, &unk_100ECF870);
    if (v35 == 1)
    {

      sub_1000095E8(&v34, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v14 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v34, &unk_1011926C0, &unk_100ECF870);
      if (v14)
      {
        v33 = v6;
        v15 = sub_1004CAC5C();
        swift_getKeyPath();
        v34 = v15;
        sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v16 = *(v15 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

        v32 = v14;
        v17 = sub_1006A6078();
        [v17 adjustedContentInset];
        v19 = v18;

        if (*(v16 + 32) == v19)
        {
          *(v16 + 32) = v19;
        }

        else
        {
          swift_getKeyPath();
          __chkstk_darwin();
          *(&v32 - 2) = v16;
          *(&v32 - 1) = v19;
          v34 = v16;
          sub_1004E41B4(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v20 = AccessibilityIdentifier.containerDetailHeader.unsafeMutableAddressor();
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        _s10HeaderCellCMa();

        UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v21, v22, v23, v24);
        __chkstk_darwin();
        *(&v32 - 4) = v12;
        *(&v32 - 3) = a1;
        v25 = v32;
        *(&v32 - 2) = v32;
        sub_10010FC20(&qword_101192B68, &qword_100ED01F8);
        v26 = type metadata accessor for Header(255);
        v27 = sub_1004E41B4(&qword_101192B70, type metadata accessor for Header, &unk_100EE28E0);
        v34 = v26;
        v35 = v27;
        swift_getOpaqueTypeConformance2();
        UIHostingConfiguration<>.init(content:)();
        static Edge.Set.all.getter();
        UIHostingConfiguration.margins(_:_:)();
        v28 = *(v33 + 8);
        v28(v8, v5);
        v36 = v5;
        v37 = sub_100020674(&qword_101192B78, &qword_101192B60, &qword_100ED01C8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
        sub_10001C8B8(&v34);
        UIHostingConfiguration.animatedSizeInvalidationDisabled()();
        v28(v10, v5);
        UICollectionViewCell.contentConfiguration.setter();
        v29 = sub_10069F9B8();
        v30 = *(v29 + 24);
        *(v29 + 24) = a1;
        v31 = a1;
        sub_1005599F8(v30);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1004A2FDC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for Header(0);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004CAC5C();
  type metadata accessor for MainActor();
  v8 = a2;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  v11 = v8;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_10010FC20(&unk_101192B80, &qword_100ED0200);
  Binding.init(get:set:)();
  v14 = v20[1];
  v15 = v20[2];
  v16 = v22;
  *v6 = v7;
  *(v6 + 1) = v14;
  *(v6 + 2) = v15;
  *(v6 + 24) = v21;
  v6[40] = v16;
  v17 = *(v4 + 24);
  *&v6[v17] = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250, &qword_100EC45B0);
  swift_storeEnumTagMultiPayload();
  v18 = &v6[*(v4 + 28)];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  sub_1004E41B4(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_1004E41B4(&qword_101192B70, type metadata accessor for Header, &unk_100EE28E0);

  View.artworkCaching(owner:)();

  return sub_1004E414C(v6, type metadata accessor for Header);
}

uint64_t sub_1004A327C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation;
  v8 = *(a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation);
  v9 = *(a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation + 8);
  v10 = *(a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation + 16);
  *v7 = *result;
  *(v7 + 8) = v5;
  *(v7 + 16) = v6;
  if (v6)
  {
    if (v10)
    {
      return result;
    }
  }

  else if ((v10 & 1) == 0 && v8 == v4 && v9 == v5)
  {
    return result;
  }

  v12 = *(a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock);
  if (v12)
  {
    v13 = *(a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock + 8);

    v12(a4);

    return sub_100020438(v12, v13);
  }

  return result;
}

uint64_t sub_1004A3348@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101192B50, &qword_100ED01B8);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___bannerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101192B50, &qword_100ED01B8);
  v8 = sub_10010FC20(&qword_101192428, &qword_100ECF5B8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101192B50, &qword_100ED01B8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for BannerCell();
  type metadata accessor for BannerProvider.Banner();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101192B50, &qword_100ED01B8);
  return swift_endAccess();
}

void sub_1004A35B0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    dispatch thunk of BannerCell.configure(with:)();
    v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v6 + v7, v15, &unk_1011926C0, &unk_100ECF870);
    if (v15[8] == 1)
    {
      sub_1000095E8(v15, &unk_1011926C0, &unk_100ECF870);
      v8 = 10.0;
    }

    else
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v15, &unk_1011926C0, &unk_100ECF870);
      v8 = 10.0;
      if (v9)
      {
        v10 = sub_10069F9B8();

        v12 = v10[5];
        v11 = v10[6];
        v13 = v10[7];
        sub_1004E5DB4(v12, v11, v13);

        if ((v11 - 1) > 1)
        {

          v8 = 12.0;
        }

        else
        {
          sub_1004E5DFC(v12, v11, v13);
        }
      }
    }

    v14 = [a1 contentView];
    [v14 setLayoutMargins:{v8, 0.0, 10.0, 0.0}];

    [a1 setNeedsLayout];
  }
}

uint64_t sub_1004A3760@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101192AC0, &qword_100ED0148);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___trackCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101192AC0, &qword_100ED0148);
  v8 = sub_10010FC20(&qword_101192438, &unk_100ECF5C0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101192AC0, &qword_100ED0148);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s13TracklistCellCMa();
  type metadata accessor for AlbumDetailDataSource.CellType(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101192AC0, &qword_100ED0148);
  return swift_endAccess();
}

void sub_1004A39C8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v179 = a3;
  v180 = a1;
  v176 = a2;
  v4 = sub_10010FC20(&qword_101192AC8, &qword_100ED0150);
  v170 = *(v4 - 8);
  v171 = v4;
  __chkstk_darwin();
  v169 = v149 - v5;
  sub_10010FC20(&qword_101180C90, &unk_100EBC730);
  __chkstk_darwin();
  v156 = v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v155 = v149 - v7;
  v8 = type metadata accessor for MusicPropertySource();
  v167 = *(v8 - 8);
  v168 = v8;
  __chkstk_darwin();
  v166 = v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = v149 - v10;
  v175 = type metadata accessor for IndexPath();
  v178 = *(v175 - 8);
  __chkstk_darwin();
  v164 = v11;
  v172 = v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_10010FC20(&unk_10118B970, &qword_100EC71E0);
  __chkstk_darwin();
  v162 = v149 - v12;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v154 = v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = (v149 - v14);
  v15 = type metadata accessor for Track();
  v181 = *(v15 - 8);
  v16 = *(v181 + 64);
  __chkstk_darwin();
  v163 = v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v177 = v149 - v17;
  __chkstk_darwin();
  v182 = (v149 - v18);
  v19 = sub_10010FC20(&qword_101192AD0, &qword_100ED0158);
  v159 = *(v19 - 8);
  v160 = v19;
  __chkstk_darwin();
  v158 = v149 - v20;
  v21 = sub_10010FC20(&qword_101192AD8, &qword_100ED0160);
  v157 = *(v21 - 8);
  __chkstk_darwin();
  v23 = v149 - v22;
  type metadata accessor for AlbumDetailDataSource.CellType(0);
  __chkstk_darwin();
  v25 = (v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v27 = v149 - v26;
  v28 = type metadata accessor for Album();
  v183 = *(v28 - 8);
  v184 = v28;
  __chkstk_darwin();
  v174 = v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = v149 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v152 = v15;
    v33 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    v34 = Strong;
    swift_beginAccess();
    sub_1000089F8(&v34[v33], &v186, &unk_1011926C0, &unk_100ECF870);
    if (BYTE8(v186) == 1)
    {

      sub_1000095E8(&v186, &unk_1011926C0, &unk_100ECF870);
      return;
    }

    v153 = v34;
    v35 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v186, &unk_1011926C0, &unk_100ECF870);
    if (!v35)
    {

      return;
    }

    v150 = v31;
    v151 = v35;
    v36 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    v37 = v153;
    swift_beginAccess();
    sub_1000089F8(v37 + v36, v27, &unk_101184730, &unk_100ECB920);
    v39 = v183;
    v38 = v184;
    if ((*(v183 + 48))(v27, 1, v184) == 1)
    {

      sub_1000095E8(v27, &unk_101184730, &unk_100ECB920);
      return;
    }

    v40 = *(v39 + 32);
    v41 = v150;
    v40(v150, v27, v38);
    sub_1004E40DC(v179, v25, type metadata accessor for AlbumDetailDataSource.CellType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v51 = *v25;
      v52 = &v180[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
      v53 = *&v180[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
      v54 = *&v180[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8];
      *v52 = *v25;
      v52[1] = 0x4000000000000000;

      sub_1004E5C14(v53, v54);
      __chkstk_darwin();
      v55 = v151;
      v149[-2] = v51;
      v149[-1] = v55;
      type metadata accessor for ClassicalAlbumSectionCell(0);
      sub_1004E41B4(&qword_101192B10, type metadata accessor for ClassicalAlbumSectionCell, &unk_100EC9D3C);
      v56 = v184;
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      *(&v187 + 1) = v21;
      *&v188[0] = sub_100020674(&qword_101192B18, &qword_101192AD8, &qword_100ED0160, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001C8B8(&v186);
      UIHostingConfiguration.margins(_:_:)();
      (*(v157 + 8))(v23, v21);
      UICollectionViewCell.contentConfiguration.setter();

      v49 = v56;
      v50 = v183;
      goto LABEL_39;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v43 = *v25;

      v44 = *&v180[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
      v45 = *&v180[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8];
      *&v180[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data] = xmmword_100ECF4B0;
      sub_1004E5C14(v44, v45);
      __chkstk_darwin();
      v46 = v151;
      v149[-2] = v43;
      v149[-1] = v46;
      type metadata accessor for DiscSectionCell(0);
      sub_1004E41B4(&qword_101192B00, type metadata accessor for DiscSectionCell, &unk_100EBCB10);
      v47 = v158;
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v48 = v160;
      *(&v187 + 1) = v160;
      *&v188[0] = sub_100020674(&qword_101192B08, &qword_101192AD0, &qword_100ED0158, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001C8B8(&v186);
      UIHostingConfiguration.margins(_:_:)();
      (*(v159 + 8))(v47, v48);
      UICollectionViewCell.contentConfiguration.setter();

      v50 = v183;
      v49 = v184;
LABEL_39:
      (*(v50 + 8))(v41, v49);
      return;
    }

    v57 = v25 + *(sub_10010FC20(&qword_1011927A8, &qword_100ECF9A8) + 48);
    v160 = *v57;
    LODWORD(v159) = v57[8];
    v157 = *(v181 + 32);
    v158 = (v181 + 32);
    (v157)(v182, v25, v152);
    v58 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
    v59 = v153;
    swift_beginAccess();
    v60 = v178;
    v61 = v173;
    v62 = v175;
    v149[0] = *(v178 + 16);
    v149[1] = v178 + 16;
    (v149[0])(v173, v176, v175);
    (*(v60 + 56))(v61, 0, 1, v62);
    v63 = *(v161 + 48);
    v64 = v59 + v58;
    v65 = v162;
    sub_1000089F8(v64, v162, &unk_10118BCE0, &qword_100EC6450);
    sub_1000089F8(v61, v65 + v63, &unk_10118BCE0, &qword_100EC6450);
    v66 = *(v60 + 48);
    if (v66(v65, 1, v62) == 1)
    {
      sub_1000095E8(v61, &unk_10118BCE0, &qword_100EC6450);
      v67 = v66(v65 + v63, 1, v62);
      v68 = v183;
      if (v67 == 1)
      {
        sub_1000095E8(v65, &unk_10118BCE0, &qword_100EC6450);
        LODWORD(v179) = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v69 = v154;
      sub_1000089F8(v65, v154, &unk_10118BCE0, &qword_100EC6450);
      if (v66(v65 + v63, 1, v62) != 1)
      {
        v70 = v178;
        v71 = v172;
        (*(v178 + 32))(v172, v65 + v63, v62);
        sub_1004E41B4(&qword_101192840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LODWORD(v179) = dispatch thunk of static Equatable.== infix(_:_:)();
        v72 = v69;
        v73 = *(v70 + 8);
        v73(v71, v62);
        sub_1000095E8(v173, &unk_10118BCE0, &qword_100EC6450);
        v73(v72, v62);
        sub_1000095E8(v65, &unk_10118BCE0, &qword_100EC6450);
        v68 = v183;
LABEL_19:
        v74 = v182;
        v75 = v181 + 16;
        v76 = *(v181 + 16);
        v77 = v152;
        (v76)(v177, v182, v152);
        (*(v68 + 16))(v174, v150, v184);
        v78 = swift_allocObject();
        v79 = v153;
        swift_unknownObjectWeakInit();
        v80 = v163;
        v173 = v76;
        (v76)(v163, v74, v77);
        v81 = v172;
        v82 = v175;
        (v149[0])(v172, v176, v175);
        v176 = v75;
        v83 = (*(v75 + 64) + 24) & ~*(v75 + 64);
        v84 = v178;
        v85 = (v16 + *(v178 + 80) + v83) & ~*(v178 + 80);
        v86 = swift_allocObject();
        *(v86 + 16) = v78;
        (v157)(v86 + v83, v80, v152);
        (*(v84 + 32))(v86 + v85, v81, v82);
        type metadata accessor for TrackData(0);
        swift_allocObject();
        v87 = v159;
        v88 = sub_100581784(v177, v174, v179 & 1, v159 ^ 1, sub_1004EA710, v86);
        v189 = v88;
        v89 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v90 = v167;
        v91 = &v79[v89];
        v92 = v165;
        v93 = v168;
        (*(v167 + 16))(v165, v91, v168);
        v94 = v166;
        (*(v90 + 104))(v166, enum case for MusicPropertySource.library(_:), v93);

        LOBYTE(v89) = static MusicPropertySource.== infix(_:_:)();
        v95 = *(v90 + 8);
        v95(v94, v93);
        v95(v92, v93);
        if (v89)
        {
          v96 = sub_1004D21CC(v182);
          if (v96 != 2)
          {
            v97 = v96;
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v186) = v97;

            static Published.subscript.setter();
          }
        }

        if ((sub_1004D27A0(v160, v87) & 1) == 0)
        {
          v98 = type metadata accessor for AttributedString();
          v99 = v155;
          (*(*(v98 - 8) + 56))(v155, 1, 1, v98);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000089F8(v99, v156, &qword_101180C90, &unk_100EBC730);

          static Published.subscript.setter();
          sub_1000095E8(v99, &qword_101180C90, &unk_100EBC730);
        }

        v100 = Track.id.getter();
        v102 = v101;
        v103 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_libraryStateCache;
        v104 = v153;
        swift_beginAccess();
        v105 = *&v104[v103];
        if (*(v105 + 16) && (, v106 = sub_100019C10(v100, v102), v108 = v107, , (v108 & 1) != 0))
        {
          v109 = *(*(v105 + 56) + 8 * v106);
          swift_retain_n();

          v110 = v153;
        }

        else
        {

          v111 = v151;
          v112 = [v111 traitCollection];
          sub_100137E8C();
          UITraitCollection.subscript.getter();

          v109 = MusicLibrary.state<A>(for:)();

          swift_retain_n();
          v113 = Track.id.getter();
          v115 = v114;
          v110 = v153;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v185[0] = *&v110[v103];
          *&v110[v103] = 0x8000000000000000;
          sub_1006C5504(v109, v113, v115, isUniquelyReferenced_nonNull_native);

          *&v110[v103] = v185[0];
          swift_endAccess();
        }

        v117 = Track.id.getter();
        v119 = v118;
        v120 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_playerStateCache;
        swift_beginAccess();
        v121 = *&v110[v120];
        if (*(v121 + 16) && (, v122 = sub_100019C10(v117, v119), v124 = v123, , v125 = v179, (v124 & 1) != 0))
        {
          v126 = *(*(v121 + 56) + 8 * v122);

          v127 = v177;
          (v173)(v177, v182, v152);
          (*(*v126 + 224))(v127);

          v128 = v180;
        }

        else
        {

          v128 = v180;
          if (qword_10117F5F8 != -1)
          {
            swift_once();
          }

          v126 = Player.state<A>(for:)(v182, v152, &protocol witness table for Track);
          swift_retain_n();
          v129 = Track.id.getter();
          v131 = v130;
          v132 = v153;
          swift_beginAccess();
          v133 = swift_isUniquelyReferenced_nonNull_native();
          v185[0] = *&v132[v120];
          *&v132[v120] = 0x8000000000000000;
          sub_1006C6814(v126, v129, v131, v133);

          *&v132[v120] = v185[0];
          swift_endAccess();
          v125 = v179;
        }

        v134 = sub_1004E41B4(&qword_101192AE0, type metadata accessor for TrackData, &unk_100ED3FE0);
        v135 = &v128[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
        v137 = *&v128[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
        v136 = *&v128[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8];
        *v135 = v88;
        v135[1] = v134;
        v138 = sub_1004E5C14(v137, v136);
        v139 = v128[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent];
        v128[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent] = v125 & 1;
        if ((v125 & 1) != v139)
        {
          [v128 setNeedsUpdateConfiguration];
        }

        v140 = v151;
        v141 = sub_1006A6078();
        v186 = *&v141[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
        v187 = *&v141[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
        v188[0] = *&v141[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
        *(v188 + 9) = *&v141[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

        v142 = &v128[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_metrics];
        v143 = v187;
        *v142 = v186;
        v142[1] = v143;
        v142[2] = v188[0];
        *(v142 + 41) = *(v188 + 9);
        __chkstk_darwin();
        v149[-8] = &v189;
        v144 = v182;
        v149[-7] = v153;
        v149[-6] = v144;
        v149[-5] = v109;
        v149[-4] = v126;
        v149[-3] = v150;
        v149[-2] = v140;
        sub_10010FC20(&qword_101192AE8, &qword_100ED0168);
        sub_100020674(&qword_101192AF0, &qword_101192AE8, &qword_100ED0168, &unk_100EDBACC);
        v145 = v169;
        UIHostingConfiguration<>.init(content:)();

        static Edge.Set.all.getter();
        v146 = v171;
        v185[3] = v171;
        v185[4] = sub_100020674(&qword_101192AF8, &qword_101192AC8, &qword_100ED0150, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
        sub_10001C8B8(v185);
        UIHostingConfiguration.margins(_:_:)();
        (*(v170 + 8))(v145, v146);
        UICollectionViewCell.contentConfiguration.setter();
        v147 = [v140 traitCollection];
        v148 = [v147 userInterfaceIdiom];

        if (v148 == 6)
        {
          UICollectionViewCell.configurationUpdateHandler.setter();
        }

        v50 = v183;

        (*(v181 + 8))(v182, v152);
        v49 = v184;
        v41 = v150;
        goto LABEL_39;
      }

      sub_1000095E8(v173, &unk_10118BCE0, &qword_100EC6450);
      (*(v178 + 8))(v69, v62);
      v68 = v183;
    }

    sub_1000095E8(v65, &unk_10118B970, &qword_100EC71E0);
    LODWORD(v179) = 0;
    goto LABEL_19;
  }
}

uint64_t sub_1004A5154@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1006A6078();
  v7 = *&v3[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v8 = *&v3[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  *v9 = *&v3[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *&v9[9] = *&v3[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  type metadata accessor for ClassicalAlbumSection(0);
  sub_1004E41B4(&qword_101192B20, type metadata accessor for ClassicalAlbumSection, &unk_100EC9BE8);

  *a2 = ObservedObject.init(wrappedValue:)();
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = *v9;
  *(a2 + 57) = *&v9[9];
  v5 = *(type metadata accessor for ClassicalAlbumSectionCell(0) + 24);
  *(a2 + v5) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004A527C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1006A6078();
  v7 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v8 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  *v9 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *&v9[9] = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  *a2 = a1;
  *(a2 + 8) = v7;
  *(a2 + 24) = v8;
  *(a2 + 40) = *v9;
  *(a2 + 49) = *&v9[9];
  v5 = *(type metadata accessor for DiscSectionCell(0) + 24);
  *(a2 + v5) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004A5350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a6;
  v61 = a7;
  v62 = a4;
  v63 = a5;
  v64 = a3;
  v11 = type metadata accessor for Track();
  v54 = *(v11 - 8);
  __chkstk_darwin();
  v52 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10010FC20(&qword_101192B28, &unk_100ED0170);
  __chkstk_darwin();
  v58 = &v52 - v13;
  v14 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v52 - v16;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v19 = &v52 - v18;
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v53 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v52 - v21;
  __chkstk_darwin();
  v23 = &v52 - v22;
  v24 = *a1;
  v25 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  v59 = a2;
  sub_1000089F8(a2 + v25, v19, &unk_1011842D0, &qword_100ECBF00);
  v26 = (*(v15 + 48))(v19, 1, v14);
  v57 = v24;
  if (v26)
  {

    sub_1000095E8(v19, &unk_1011842D0, &qword_100ECBF00);
    v27 = v54;
    v28 = *(v54 + 56);
    v28(v23, 1, 1, v11);
  }

  else
  {
    v29 = v23;
    v30 = v54;
    (*(v15 + 16))(v17, v19, v14);

    sub_1000095E8(v19, &unk_1011842D0, &qword_100ECBF00);
    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    if (dispatch thunk of Collection.isEmpty.getter())
    {
      (*(v15 + 8))(v17, v14);
      v27 = v30;
      v28 = *(v30 + 56);
      v23 = v29;
      v28(v29, 1, 1, v11);
    }

    else
    {
      dispatch thunk of Collection.endIndex.getter();
      sub_100020674(&qword_101192B48, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v31 = dispatch thunk of Collection.subscript.read();
      v27 = v30;
      v32 = *(v30 + 16);
      v23 = v29;
      v32(v29);
      v31(&v65, 0);
      (*(v15 + 8))(v17, v14);
      v28 = *(v27 + 56);
      v28(v29, 0, 1, v11);
    }
  }

  v33 = v58;
  v34 = v55;
  (*(v27 + 16))(v55, v64, v11);
  v28(v34, 0, 1, v11);
  v35 = *(v56 + 48);
  sub_1000089F8(v23, v33, &qword_10118A530, &qword_100EC64E0);
  sub_1000089F8(v34, v33 + v35, &qword_10118A530, &qword_100EC64E0);
  v36 = v27;
  v37 = *(v27 + 48);
  if (v37(v33, 1, v11) != 1)
  {
    v58 = v23;
    v39 = v53;
    sub_1000089F8(v33, v53, &qword_10118A530, &qword_100EC64E0);
    if (v37(v33 + v35, 1, v11) != 1)
    {
      v40 = v52;
      (*(v27 + 32))(v52, v33 + v35, v11);
      sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track, &protocol conformance descriptor for Track);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v36 + 8);
      v41(v40, v11);
      sub_1000095E8(v34, &qword_10118A530, &qword_100EC64E0);
      sub_1000095E8(v58, &qword_10118A530, &qword_100EC64E0);
      v41(v39, v11);
      sub_1000095E8(v33, &qword_10118A530, &qword_100EC64E0);
      goto LABEL_13;
    }

    sub_1000095E8(v34, &qword_10118A530, &qword_100EC64E0);
    sub_1000095E8(v58, &qword_10118A530, &qword_100EC64E0);
    (*(v27 + 8))(v39, v11);
    goto LABEL_11;
  }

  sub_1000095E8(v34, &qword_10118A530, &qword_100EC64E0);
  sub_1000095E8(v23, &qword_10118A530, &qword_100EC64E0);
  if (v37(v33 + v35, 1, v11) != 1)
  {
LABEL_11:
    sub_1000095E8(v33, &qword_101192B28, &unk_100ED0170);
    v38 = 0;
    goto LABEL_13;
  }

  sub_1000095E8(v33, &qword_10118A530, &qword_100EC64E0);
  v38 = 1;
LABEL_13:
  v42 = sub_1007FF568(v64, v60);
  v43 = sub_1006A6078();
  v65 = *&v43[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v66 = *&v43[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  v67[0] = *&v43[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *(v67 + 9) = *&v43[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  type metadata accessor for TrackData(0);
  sub_1004E41B4(&qword_101192B30, type metadata accessor for TrackData, &unk_100ED3FA8);
  *a8 = ObservedObject.init(wrappedValue:)();
  *(a8 + 8) = v44;
  *(a8 + 16) = v38 & 1;

  sub_10010FC20(&unk_10118A5F0, &qword_100EC5E40);
  sub_100020674(&qword_101192B40, &unk_10118A5F0, &qword_100EC5E40, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  *(a8 + 24) = ObservedObject.init(wrappedValue:)();
  *(a8 + 32) = v45;

  sub_10010FC20(&qword_10118A600, &qword_100EC5E48);
  sub_100020674(&qword_10118A608, &qword_10118A600, &qword_100EC5E48, &protocol conformance descriptor for MusicItemState<A>);
  *(a8 + 40) = ObservedObject.init(wrappedValue:)();
  *(a8 + 48) = v46;
  *(a8 + 56) = v42;
  v47 = v66;
  *(a8 + 64) = v65;
  *(a8 + 80) = v47;
  *(a8 + 96) = v67[0];
  *(a8 + 105) = *(v67 + 9);
  v48 = sub_10010FC20(&qword_101192AE8, &qword_100ED0168);
  v49 = *(v48 + 80);
  *(a8 + v49) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v50 = *(v48 + 84);
  *(a8 + v50) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1004A5D24(void *a1)
{
  v1 = [a1 contentView];
  [v1 setClipsToBounds:UICellConfigurationState.isSwiped.getter() & 1];
}

uint64_t sub_1004A5D90@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011A4AB0, &unk_100ED0100);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___noContentCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_1011A4AB0, &unk_100ED0100);
  v8 = sub_10010FC20(&qword_1011A4520, &qword_100EE47C0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_1011A4AB0, &unk_100ED0100);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_1011A4AB0, &unk_100ED0100);
  return swift_endAccess();
}

uint64_t sub_1004A5FEC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_10010FC20(&unk_101192AA0, &unk_100EE53F0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = *(a3 + 2);
  v11 = *a3;
  v12 = v8;
  type metadata accessor for NoContentCell(0);
  sub_1004E41B4(&qword_1011A4AC0, type metadata accessor for NoContentCell, &unk_100EBC8D0);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v13[3] = v4;
  v13[4] = sub_100020674(&unk_101192AB0, &unk_101192AA0, &unk_100EE53F0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v13);
  UIHostingConfiguration.margins(_:_:)();
  (*(v5 + 8))(v7, v4);
  return UICollectionViewCell.contentConfiguration.setter();
}

double sub_1004A61A8@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v8 = *(type metadata accessor for NoContentCell(0) + 20);
  *(a4 + v8) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();

  return sub_1004EA174(a1, a2, a3);
}

uint64_t sub_1004A6248@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101192A70, &qword_100ED00F0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___detailCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101192A70, &qword_100ED00F0);
  v8 = sub_10010FC20(&unk_1011A4B80, &unk_100ECF5D0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101192A70, &qword_100ED00F0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for TracklistFooter.ViewModel(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101192A70, &qword_100ED00F0);
  return swift_endAccess();
}

void sub_1004A64C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = sub_10010FC20(&qword_101192A78, &qword_100ED00F8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v13 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1004EA114();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    UIHostingConfiguration.margins(_:_:)();
    v12 = *(v5 + 8);
    v12(v7, v4);
    v13[3] = v4;
    v13[4] = sub_100020674(&qword_101192A88, &qword_101192A78, &qword_100ED00F8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v13);
    UIHostingConfiguration.animatedSizeInvalidationDisabled()();
    v12(v9, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1004A66A4@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101192A50, &unk_100EC0460);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___showCompleteAlbumCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101192A50, &unk_100EC0460);
  v8 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101192A50, &unk_100EC0460);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101192A50, &unk_100EC0460);
  return swift_endAccess();
}

uint64_t sub_1004A691C@<X0>(uint64_t a2@<X8>)
{
  v3 = LocalizedStringKey.init(stringLiteral:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = sub_1004EA07C;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_1004A69CC@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101192A50, &unk_100EC0460);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___storeNavigationCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101192A50, &unk_100EC0460);
  v8 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101192A50, &unk_100EC0460);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101192A50, &unk_100EC0460);
  return swift_endAccess();
}

void sub_1004A6C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10010FC20(&qword_101192A58, &qword_100ED00E8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v11 - v7;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v11[-2] = v9;
    v10 = v9;
    sub_1004E9FE8();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v11[3] = v5;
    v11[4] = sub_100020674(&qword_101192A68, &qword_101192A58, &qword_100ED00E8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v11);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1004A6E00@<X0>(uint64_t a2@<X8>)
{
  v3 = LocalizedStringKey.init(stringLiteral:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = sub_1004EA03C;
  *(a2 + 40) = v10;
  return result;
}

void *sub_1004A6EB0(uint64_t a1)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v2 = &v18[-v1];
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v4 = &v18[-v3];
  v5 = type metadata accessor for Album();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(v10 + v11, v4, &unk_101184730, &unk_100ECB920);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      v12 = &unk_101184730;
      v13 = &unk_100ECB920;
      v14 = v4;
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v15 = [objc_opt_self() defaultWorkspace];
      if (v15)
      {
        v16 = v15;
        LSApplicationWorkspace.openiTunesStore(with:)(v2);

        sub_1000095E8(v2, &qword_101183A20, &unk_100EBCF80);
        return (*(v6 + 8))(v8, v5);
      }

      (*(v6 + 8))(v8, v5);
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
      v12 = &qword_101183A20;
      v13 = &unk_100EBCF80;
      v14 = v2;
    }

    return sub_1000095E8(v14, v12, v13);
  }

  return result;
}

uint64_t sub_1004A71A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_10010FC20(&qword_101192738, &qword_100EE4AF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-1] - v5;
  sub_1004E425C();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v9[3] = v3;
  v9[4] = sub_100020674(&qword_101192748, &qword_101192738, &qword_100EE4AF0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v9);
  UIHostingConfiguration.margins(_:_:)();
  (*(v4 + 8))(v6, v3);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_1004A7320@<X0>(void (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  a2(0);
  sub_1004E41B4(a3, a4, a5);

  result = ObservedObject.init(wrappedValue:)();
  *a6 = result;
  a6[1] = v11;
  return result;
}

uint64_t sub_1004A739C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101192A20, &unk_100EE52F0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___symphonyRelatedContentCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101192A20, &unk_100EE52F0);
  v8 = sub_10010FC20(&unk_1011A4560, &qword_100ECF5E0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101192A20, &unk_100EE52F0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for RelatedContentProvider.Item();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101192A20, &unk_100EE52F0);
  return swift_endAccess();
}

double sub_1004A7614(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_101192A28, &qword_100ED00E0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v12 + v13, &v25, &unk_1011926C0, &unk_100ECF870);
    if (v26 == 1)
    {

      sub_1000095E8(&v25, &unk_1011926C0, &unk_100ECF870);
      return result;
    }

    v14 = swift_unknownObjectWeakLoadStrong();

    sub_1000095E8(&v25, &unk_1011926C0, &unk_100ECF870);
    if (v14)
    {
      v15 = v14;
      v16 = sub_10003169C();

      if (v16)
      {
        v17 = *(v16[3] + 16);
        if (v17)
        {
          v18 = [v17 selectedTab];
          if (!v18 || (v19 = v18, v20 = sub_10003F0FC(), v24 = v16, v19, v20 == 7))
          {
            v20 = 1;
          }

          if (!sub_1006BD694(v20))
          {

            return result;
          }

          __chkstk_darwin();
          *(&v24 - 4) = v9;
          *(&v24 - 3) = v21;
          *(&v24 - 2) = v15;
          v24 = v21;
          sub_10010FC20(&qword_101192A30, &qword_100EE5300);
          v22 = type metadata accessor for RelatedContentView();
          v23 = sub_1004E41B4(&qword_101192A38, &type metadata accessor for RelatedContentView, &protocol conformance descriptor for RelatedContentView);
          v25 = v22;
          v26 = v23;
          swift_getOpaqueTypeConformance2();
          UIHostingConfiguration<>.init(content:)();
          static Edge.Set.all.getter();
          v27 = v5;
          v28 = sub_100020674(&unk_101192A40, &qword_101192A28, &qword_100ED00E0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
          sub_10001C8B8(&v25);
          UIHostingConfiguration.margins(_:_:)();
          (*(v6 + 8))(v8, v5);
          UICollectionViewCell.contentConfiguration.setter();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004A79A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for RelatedContentView();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = sub_1006A6078();
  v8 = type metadata accessor for HIMetricsCollectionView();
  v18.receiver = v7;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, "frame");
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v19.origin.x = v10;
  v19.origin.y = v12;
  v19.size.width = v14;
  v19.size.height = v16;
  CGRectGetWidth(v19);
  RelatedContentView.init(item:stackAuthority:shelfWidth:)();
  sub_1004E41B4(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_1004E41B4(&qword_101192A38, &type metadata accessor for RelatedContentView, &protocol conformance descriptor for RelatedContentView);

  View.artworkCaching(owner:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004A7C10(uint64_t a1, void *a2)
{
  v100 = a1;
  v101 = a2;
  v80 = sub_10010FC20(&unk_1011A4560, &qword_100ECF5E0);
  v79 = *(v80 - 8);
  __chkstk_darwin();
  v96 = &v75 - v3;
  v78 = sub_10010FC20(&unk_101192A10, &unk_100ED00D0);
  v83 = *(v78 - 8);
  __chkstk_darwin();
  v82 = &v75 - v4;
  v5 = sub_10010FC20(&qword_101184588, &unk_100EC02C0);
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin();
  v97 = &v75 - v6;
  v7 = sub_10010FC20(&unk_1011A4B80, &unk_100ECF5D0);
  v93 = *(v7 - 8);
  v94 = v7;
  __chkstk_darwin();
  v92 = &v75 - v8;
  v9 = sub_10010FC20(&qword_1011A4520, &qword_100EE47C0);
  v90 = *(v9 - 8);
  v91 = v9;
  __chkstk_darwin();
  v89 = &v75 - v10;
  sub_10010FC20(&unk_10118D250, &unk_100EC8F78);
  __chkstk_darwin();
  v81 = &v75 - v11;
  v77 = type metadata accessor for Track();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10010FC20(&qword_101192438, &unk_100ECF5C0);
  v85 = *(v86 - 8);
  __chkstk_darwin();
  v84 = &v75 - v13;
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v87 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v75 - v15;
  v16 = sub_10010FC20(&qword_101192428, &qword_100ECF5B8);
  v88 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v75 - v17;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v75 - v21;
  v23 = sub_10010FC20(&qword_101192418, &qword_100ECF5B0);
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v75 - v25;
  v27 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v28 = IndexPath.section.getter();
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v28 >= *(v27 + 16))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v29 = *(v27 + v28 + 32);
  if (v29 > 4)
  {
    if (*(v27 + v28 + 32) <= 7u)
    {
      if (v29 == 6)
      {
        v33 = v92;
        sub_1004A6248(v92);
        *&v104 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracklistFooterViewModel);
        sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
        type metadata accessor for TracklistFooter.ViewModel(0);

        v34 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        (*(v93 + 8))(v33, v94);
        return v34;
      }

      if (v29 != 7)
      {
        goto LABEL_58;
      }

      v42 = v97;
      sub_1004A66A4(v97);
LABEL_21:
      v46 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
      swift_beginAccess();
      sub_1000089F8(v2 + v46, v22, &unk_101184730, &unk_100ECB920);
      sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
      type metadata accessor for Album();
      v34 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v22, &unk_101184730, &unk_100ECB920);
      v48 = v98;
      v47 = v99;
LABEL_24:
      (*(v48 + 8))(v42, v47);
      return v34;
    }

    if (v29 == 8)
    {
      v42 = v97;
      sub_1004A69CC(v97);
      goto LABEL_21;
    }

    if (v29 != 10)
    {
      goto LABEL_58;
    }

    v54 = v101;
    v55 = IndexPath.item.getter();
    v56 = v96;
    if (v55)
    {
      sub_1004A739C(v96);
      v57 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v2 + v57, &v102, &unk_1011926C0, &unk_100ECF870);
      if (v103)
      {
        sub_1000095E8(&v102, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v102, &unk_1011926C0, &unk_100ECF870);
        if (Strong)
        {
          v68 = sub_1006A3A7C();

          if (v68)
          {
            if (__OFSUB__(IndexPath.item.getter(), 1))
            {
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

            v69 = type metadata accessor for RelatedContentProvider.Item();
            Array.subscript.getter(v69, &v102);

            v68 = v102;
          }

LABEL_44:
          v34 = sub_1007FBE6C(v56, v54, v68);

          (*(v79 + 8))(v56, v80);
          return v34;
        }
      }

      v68 = 0;
      goto LABEL_44;
    }

    v16 = v78;
    (*(v83 + 16))(v82, v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_symphonyRelatedContentSpacingCellRegistration, v78);
    v66 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v66, &v102, &unk_1011926C0, &unk_100ECF870);
    if (v103)
    {
      sub_1000095E8(&v102, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v71 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v102, &unk_1011926C0, &unk_100ECF870);
      if (v71)
      {
        v72 = sub_1006A3864();

LABEL_50:
        v73 = v82;
        v34 = sub_1007FBACC(v82, v54, v72);

        v44 = *(v83 + 8);
        v45 = v73;
        goto LABEL_51;
      }
    }

    v72 = 0;
    goto LABEL_50;
  }

  if (*(v27 + v28 + 32) <= 1u)
  {
    if (!*(v27 + v28 + 32))
    {
      sub_1004A282C(v26);
      v30 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
      swift_beginAccess();
      sub_1000089F8(v2 + v30, v22, &unk_101184730, &unk_100ECB920);
      v101 = sub_1007FAE70(v26, v101, v22);
      sub_1000095E8(v22, &unk_101184730, &unk_100ECB920);
      (*(v24 + 8))(v26, v23);
      sub_1000089F8(v2 + v30, v20, &unk_101184730, &unk_100ECB920);
      v31 = type metadata accessor for Album();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v20, 1, v31) == 1)
      {
        sub_1000095E8(v20, &unk_101184730, &unk_100ECB920);
        v104 = 0u;
        v105 = 0u;
        v106 = 0;
      }

      else
      {
        *(&v105 + 1) = v31;
        v106 = &protocol witness table for Album;
        v58 = sub_10001C8B8(&v104);
        (*(v32 + 32))(v58, v20, v31);
      }

      v59 = v101;
      v34 = sub_1004F24B0(&v104);

      goto LABEL_31;
    }

    sub_1004A3348(v18);
    v43 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner);

    v34 = sub_1007FAEAC(v18, v101, v43);

    v44 = *(v88 + 8);
    v45 = v18;
LABEL_51:
    v44(v45, v16);
    return v34;
  }

  if (v29 == 2)
  {
    v35 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
    v36 = v101;
    if (!v35)
    {
      v40 = type metadata accessor for AlbumDetailDataSource.CellType(0);
      v38 = v95;
      (*(*(v40 - 8) + 56))(v95, 1, 1, v40);
LABEL_33:
      v60 = v87;
      v61 = v84;
      sub_1004A3760(v84);
      v34 = sub_1007FB20C(v61, v36, v38);
      (*(v85 + 8))(v61, v86);
      sub_1000089F8(v38, v60, &unk_101192800, &qword_100EE5630);
      type metadata accessor for AlbumDetailDataSource.CellType(0);
      if ((*(*(v40 - 8) + 48))(v60, 1, v40) == 1)
      {
        sub_1000095E8(v60, &unk_101192800, &qword_100EE5630);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v62 = v76;
          v63 = v75;
          v64 = v77;
          (*(v76 + 32))(v75, v60, v77);
          *(&v105 + 1) = v64;
          v106 = &protocol witness table for Track;
          v65 = sub_10001C8B8(&v104);
          (*(v62 + 16))(v65, v63, v64);

          (*(v62 + 8))(v63, v64);
          sub_1000095E8(v38, &unk_101192800, &qword_100EE5630);
LABEL_31:
          sub_1000095E8(&v104, &qword_1011A3DD0, &unk_100EC03F0);
          return v34;
        }

        sub_1004E414C(v60, type metadata accessor for AlbumDetailDataSource.CellType);
      }

      v70 = type metadata accessor for EntityIdentifier();
      (*(*(v70 - 8) + 56))(v81, 1, 1, v70);
      UIView.appEntityIdentifier.setter();
      sub_1000095E8(v38, &unk_101192800, &qword_100EE5630);
      return v34;
    }

    v37 = IndexPath.item.getter();
    v38 = v95;
    if ((v37 & 0x8000000000000000) == 0)
    {
      v39 = v37;
      if (v37 < *(v35 + 16))
      {
        v40 = type metadata accessor for AlbumDetailDataSource.CellType(0);
        v41 = *(v40 - 8);
        sub_1004E40DC(v35 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v39, v38, type metadata accessor for AlbumDetailDataSource.CellType);

        (*(v41 + 56))(v38, 0, 1, v40);
        goto LABEL_33;
      }

      goto LABEL_56;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v29 == 4)
  {
    v42 = v89;
    sub_1004A5D90(v89);
    v49 = sub_1004D2E64();
    v51 = v50;
    v53 = v52;
    v34 = sub_1007FB728(v42, v101, v49, v50, v52);
    sub_1004E5B40(v49, v51, v53);
    v48 = v90;
    v47 = v91;
    goto LABEL_24;
  }

LABEL_58:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004A8D4C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  LOBYTE(a1) = sub_1004E65AC(v9);

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

uint64_t sub_1004A8E4C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin();
  v85 = v5;
  v86 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v84 = &v76 - v6;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v80 = (&v76 - v7);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v79 = &v76 - v8;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v82 = &v76 - v10;
  v11 = type metadata accessor for Track();
  v89 = *(v11 - 8);
  v90 = v11;
  __chkstk_darwin();
  v83 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v76 - v15;
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v18 = &v76 - v17;
  v19 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v91 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = a1;
  v24 = v92;
  [v23 deselectItemAtIndexPath:isa animated:1];

  IndexPath.section.getter();
  result = Array.subscript.getter(&type metadata for ContainerDetail.Section, &v95);
  if (((1 << v95) & 0xDC3) == 0)
  {
    if (v95 == 2)
    {
      sub_1004DEB38(v18);
      if ((*(v20 + 48))(v18, 1, v19) == 1)
      {
        return sub_1000095E8(v18, &unk_101192800, &qword_100EE5630);
      }

      else
      {
        sub_1004E59E0(v18, v91, type metadata accessor for AlbumDetailDataSource.CellType);
        v26 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
        (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
        v27 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
        swift_beginAccess();
        sub_1000089F8(v24 + v27, v14, &qword_1011846D0, &qword_100EDD110);
        swift_beginAccess();
        sub_1002190E0(v16, v24 + v27, &qword_1011846D0, &qword_100EDD110);
        swift_endAccess();
        sub_1004CDAA4(v14);
        sub_1000095E8(v14, &qword_1011846D0, &qword_100EDD110);
        sub_1000095E8(v16, &qword_1011846D0, &qword_100EDD110);
        v28 = v82;
        sub_10049FB9C(v82);
        v29 = v89;
        v30 = v90;
        v31 = (*(v89 + 48))(v28, 1, v90);
        v78 = a2;
        if (v31 == 1)
        {
          sub_1000095E8(v28, &qword_10118A530, &qword_100EC64E0);
        }

        else
        {
          (*(v29 + 32))(v83, v28, v30);
          sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100EBE260;
          *(inited + 32) = 25705;
          *(inited + 40) = 0xE200000000000000;
          *(inited + 48) = MusicItem.metricsTargetIdentifier.getter(v30);
          *(inited + 56) = v33;
          *(inited + 72) = &type metadata for String;
          *(inited + 80) = 1684957547;
          *(inited + 88) = 0xE400000000000000;
          *(inited + 96) = MusicItem.metricsContentType.getter(v30);
          *(inited + 104) = v34;
          *(inited + 120) = &type metadata for String;
          *(inited + 128) = 1701667182;
          *(inited + 136) = 0xE400000000000000;
          v35 = Track.title.getter();
          *(inited + 168) = &type metadata for String;
          *(inited + 144) = v35;
          *(inited + 152) = v36;
          v37 = sub_10010BC60(inited);
          swift_setDeallocating();
          sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
          swift_arrayDestroy();
          v38 = Track.trackNumber.getter();
          if ((v39 & 1) == 0)
          {
            v96 = &type metadata for Int;
            *&v95 = v38;
            sub_100016270(&v95, v94);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v93 = v37;
            sub_1006C5E68(v94, 0xD000000000000010, 0x8000000100E4E2D0, isUniquelyReferenced_nonNull_native);
            v37 = v93;
          }

          v41 = *MetricsReportingController.shared.unsafeMutableAddressor();
          v42 = v90;
          v82 = MusicItem.metricsTargetIdentifier.getter(v90);
          v77 = v43;
          v44 = type metadata accessor for URL();
          v45 = v79;
          (*(*(v44 - 8) + 56))(v79, 1, 1, v44);
          sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
          v46 = swift_allocObject();
          v76 = xmmword_100EBC6B0;
          *(v46 + 16) = xmmword_100EBC6B0;
          *(v46 + 32) = v37;
          sub_10010FC20(&qword_10118BE78, &unk_100ED5DE0);
          v47 = swift_initStackObject();
          *(v47 + 16) = v76;
          *(v47 + 32) = MusicItem.metricsContentType.getter(v42);
          *(v47 + 40) = v48;
          *(v47 + 48) = 0;
          v49 = MetricsEvent.Click.ActionDetails.init(_:)(v47);
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v56 = v80;
          sub_1004DF8FC(v80);
          *(&v75 + 1) = v51;
          *&v75 = v49;
          v57 = v81;
          MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v82, v77, 1, 31, v45, v46, 0, 5, v81, v75, v53, v55, v56, 0);
          v58 = sub_10053771C();
          v60 = v59;
          v61 = v57;
          if (qword_10117F600 != -1)
          {
            swift_once();
          }

          v62 = qword_101218AD0;
          v63 = GroupActivitiesManager.hasJoined.getter();
          v64 = GroupActivitiesManager.participantsCount.getter();
          v65 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
          swift_beginAccess();
          (*((swift_isaMask & *v41) + 0xB8))(v61, v58, v60, v63 & 1, v64, *(v62 + v65));

          sub_1004E414C(v61, type metadata accessor for MetricsEvent.Click);
          (*(v89 + 8))(v83, v90);
          v24 = v92;
        }

        v66 = type metadata accessor for TaskPriority();
        v67 = v84;
        (*(*(v66 - 8) + 56))(v84, 1, 1, v66);
        v69 = v86;
        v68 = v87;
        v70 = v88;
        (*(v87 + 16))(v86, v78, v88);
        type metadata accessor for MainActor();
        v71 = v24;
        v72 = static MainActor.shared.getter();
        v73 = (*(v68 + 80) + 40) & ~*(v68 + 80);
        v74 = swift_allocObject();
        *(v74 + 2) = v72;
        *(v74 + 3) = &protocol witness table for MainActor;
        *(v74 + 4) = v71;
        (*(v68 + 32))(&v74[v73], v69, v70);
        sub_1001F4CB8(0, 0, v67, &unk_100ED00C0, v74);

        return sub_1004E414C(v91, type metadata accessor for AlbumDetailDataSource.CellType);
      }
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1004A99A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  v5[28] = swift_task_alloc();
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  v5[29] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v5[30] = swift_task_alloc();
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  v5[31] = swift_task_alloc();
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  v5[32] = swift_task_alloc();
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[36] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v10;
  v5[38] = v9;

  return _swift_task_switch(sub_1004A9CA4, v10, v9);
}

uint64_t sub_1004A9CA4()
{
  v1 = v0[31];
  v2 = v0[20];
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1004A9DD8;
  v7 = v0[31];
  v6 = v0[32];

  return sub_1004D8654(v6, v7);
}

uint64_t sub_1004A9DD8()
{
  v1 = *v0;
  v2 = *(*v0 + 248);

  sub_1000095E8(v2, &unk_10118BCE0, &qword_100EC6450);
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);

  return _swift_task_switch(sub_1004A9F2C, v4, v3);
}

void sub_1004A9F2C()
{
  v1 = v0[32];
  if ((*(v0[34] + 48))(v1, 1, v0[33]) == 1)
  {

    sub_1000095E8(v1, &qword_1011848A0, &unk_100EC64F0);

    v2 = v0[1];

    v2();
    return;
  }

  v3 = v0[19];
  sub_1004E59E0(v1, v0[35], type metadata accessor for PlaybackIntentDescriptor);
  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData;
  v0[40] = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData;
  v5 = (v3 + v4);
  v6 = v5[1];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = *v5;
  v8 = v0[28];
  v9 = *(v5 + 24);
  swift_bridgeObjectRetain_n();
  sub_1004DEB38(v8);
  v10 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    v11 = v0[28];
    v12 = &unk_101192800;
    v13 = &qword_100EE5630;
LABEL_15:
    sub_1000095E8(v11, v12, v13);
    goto LABEL_16;
  }

  v14 = v0[28];
  v15 = v0[29];
  v17 = v0[25];
  v16 = v0[26];
  sub_10049FB9C(v15);
  sub_1004E414C(v14, type metadata accessor for AlbumDetailDataSource.CellType);
  if ((*(v16 + 48))(v15, 1, v17) == 1)
  {
    v12 = &qword_10118A530;
    v13 = &qword_100EC64E0;
    v11 = v0[29];
    goto LABEL_15;
  }

  v50 = v7;
  v19 = v0[26];
  v18 = v0[27];
  v20 = v0[25];
  (*(v19 + 16))(v18, v0[29], v20);
  v21 = (*(v19 + 88))(v18, v20);
  v22 = v0[30];
  v24 = v0[26];
  v23 = v0[27];
  v25 = v0[25];
  if (v21 == enum case for Track.song(_:))
  {
    (*(v24 + 96))(v0[27], v0[25]);
    v26 = type metadata accessor for Song();
    v27 = *(v26 - 8);
    (*(v27 + 32))(v22, v23, v26);
    (*(v27 + 56))(v22, 0, 1, v26);
    v28 = *(v24 + 8);
  }

  else
  {
    v26 = type metadata accessor for Song();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
    v28 = *(v24 + 8);
    v28(v23, v25);
  }

  v29 = v0[30];
  v28(v0[29], v0[25]);
  type metadata accessor for Song();
  v30 = *(v26 - 8);
  v31 = (*(v30 + 48))(v29, 1, v26);
  v32 = v0[30];
  if (v31 == 1)
  {
    v12 = &unk_101183960;
    v13 = &unk_100EBCF90;
    v11 = v0[30];
    goto LABEL_15;
  }

  v36 = Song.catalogID.getter();
  v38 = v37;
  (*(v30 + 8))(v32, v26);
  if (v38)
  {
    if (v50 == v36 && v6 == v38)
    {
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (v9)
    {
    }

    else
    {
      v40 = objc_allocWithZone(MPIdentifierSet);
      v41 = [objc_opt_self() kindWithVariants:1];
      v42 = swift_allocObject();
      *(v42 + 16) = v50;
      *(v42 + 24) = v6;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_1004EA720;
      *(v43 + 24) = v42;
      v0[6] = sub_1001EC788;
      v0[7] = v43;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_10006BD7C;
      v0[5] = &unk_1010AFA58;
      v44 = _Block_copy(v0 + 2);

      v45 = [v40 initWithModelKind:v41 block:v44];

      _Block_release(v44);
      LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

      if (v40)
      {
        __break(1u);
        return;
      }

      v46 = PlaybackIntentDescriptor.intent.getter();
      sub_10010FC20(&qword_1011929E0, &qword_100ECFFE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = v45;
      v48 = v45;
      *(inited + 40) = Double._bridgeToObjectiveC()();
      sub_10010D2FC(inited);
      swift_setDeallocating();
      sub_1000095E8(inited + 32, &qword_1011929E8, qword_100ECFFE8);
      sub_100009F78(0, &qword_101192200, MPIdentifierSet_ptr);
      sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
      sub_10001C070(&unk_1011929F0, &qword_101192200, MPIdentifierSet_ptr, &protocol conformance descriptor for NSObject);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v46 setStartTimeModifications:isa];
    }

    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v33 = swift_task_alloc();
    v0[41] = v33;
    *v33 = v0;
    v34 = sub_1004AA7D0;
    goto LABEL_21;
  }

LABEL_16:

LABEL_17:

LABEL_18:
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v33 = swift_task_alloc();
  v0[44] = v33;
  *v33 = v0;
  v34 = sub_1004AABD8;
LABEL_21:
  v33[1] = v34;
  v35 = v0[35];

  PlaybackController.add(_:route:)(v35, 0);
}

uint64_t sub_1004AA7D0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1004AADE8;
  }

  else
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1004EA6CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004AA8F4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 184);
  if (v0)
  {

    sub_1004E414C(v4, type metadata accessor for AppInterfaceContext.Activity);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_1004AB0AC;
  }

  else
  {
    sub_1004E414C(v4, type metadata accessor for AppInterfaceContext.Activity);

    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_1004AAA8C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1004AAA8C()
{

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19] + v0[40];
  sub_1004E414C(v0[35], type metadata accessor for PlaybackIntentDescriptor);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_1000095E8(v1, &unk_1011841F0, &qword_100ECF040);
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004AABD8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1004EA6D0;
  }

  else
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1004AACFC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004AACFC()
{
  v1 = *(v0 + 280);

  sub_1004E414C(v1, type metadata accessor for PlaybackIntentDescriptor);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004AADE8()
{
  v1 = *(v0 + 152);
  v2 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v2, v0 + 136, &unk_1011926C0, &unk_100ECF870);
  if (*(v0 + 144))
  {

    sub_1000095E8(v0 + 136, &unk_1011926C0, &unk_100ECF870);
LABEL_9:
    v11 = *(v0 + 192);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v14 = *(v0 + 152) + *(v0 + 320);
    sub_1004E414C(*(v0 + 280), type metadata accessor for PlaybackIntentDescriptor);
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_1000095E8(v11, &unk_1011841F0, &qword_100ECF040);
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *v14 = 0;

    v15 = *(v0 + 8);

    return v15();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v0 + 136, &unk_1011926C0, &unk_100ECF870);
  if (!Strong || (v4 = sub_10003169C(), *(v0 + 336) = v4, Strong, !v4))
  {

    goto LABEL_9;
  }

  v5 = *(v0 + 184);
  v6 = &v5[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
  *v5 = 1;
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v6 = 0;
  v6[1] = 0;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 344) = v7;
  *v7 = v0;
  v7[1] = sub_1004AA8F4;
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);

  return sub_100706024(v8, v9);
}

uint64_t sub_1004AB0AC()
{

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19] + v0[40];
  sub_1004E414C(v0[35], type metadata accessor for PlaybackIntentDescriptor);
  (*(v3 + 56))(v1, 1, 1, v2);
  sub_1000095E8(v1, &unk_1011841F0, &qword_100ECF040);
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004AB2F4(uint64_t a1)
{
  type metadata accessor for Track();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_100735178(v4, 0);
}

double sub_1004AB664(void *a1)
{
  v3 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v3, v6, &unk_1011926C0, &unk_100ECF870);
  if (v6[8])
  {
    sub_1000095E8(v6, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v6, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      sub_1006A3684(a1);
      sub_10069F9B8();
      sub_100559BC8();
      sub_10055A988();
    }
  }

  return result;
}

void sub_1004AB7A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1, v12, &unk_1011926C0, &unk_100ECF870);
  sub_1000089F8(v1 + v3, &v14, &unk_1011926C0, &unk_100ECF870);
  if (v13)
  {
    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000089F8(v12, v11, &unk_1011926C0, &unk_100ECF870);
    if ((v15 & 1) == 0)
    {
      sub_10003D17C(&v14, &v10, &unk_101192780, &qword_100ECF990);
      type metadata accessor for ContainerDetail.ViewController(0);
      v9 = static WeakWrapper.== infix(_:_:)(v11, &v10);
      sub_1000095E8(&v10, &unk_101192780, &qword_100ECF990);
      sub_1000095E8(v11, &unk_101192780, &qword_100ECF990);
      sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
      if (v9)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000095E8(v11, &unk_101192780, &qword_100ECF990);
  }

  sub_1000095E8(v12, &unk_101192770, &qword_100ECF988);
LABEL_7:
  sub_1000089F8(v1 + v3, v12, &unk_1011926C0, &unk_100ECF870);
  if (v13)
  {
LABEL_8:
    sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    v5 = sub_1006A6D30();

    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7.value = 0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v7, 0, sub_1004E5624, v6).super.super.isa;

    UIBarButtonItem.primaryActionKind.setter(isa, 1);
  }
}

void *sub_1004ABA38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v3, &v13, &unk_1011926C0, &unk_100ECF870);
  if (v14 == 1)
  {

    sub_1000095E8(&v13, &unk_1011926C0, &unk_100ECF870);
    return _swiftEmptyArrayStorage;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v13, &unk_1011926C0, &unk_100ECF870);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = sub_1006A6D30();
  v23 = v5;
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v23, 15, v15);
  v19[0] = v15[0];
  v19[1] = v15[1];
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v6 = v5;
  v7 = v4;
  PresentationSource.init(viewController:position:)(v7, v19, &v13);
  v8 = sub_1004B4C54(&v13);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 children];

    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = v2;
    v2 = v10;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  sub_10012BA6C(&v13);
  return v11;
}

void sub_1004ABC24(uint64_t a1, uint64_t a2)
{
  if (!a2 && *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8))
  {

    v3 = v2;
    if (sub_1004AD51C())
    {

      v4 = v2;
    }

    else
    {
      v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      v4 = v3;
      swift_beginAccess();
      sub_1000089F8(v3 + v5, v12, &unk_1011926C0, &unk_100ECF870);
      if (v12[8])
      {

        sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
        Strong = 0;
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v12, &unk_1011926C0, &unk_100ECF870);
        if (Strong)
        {
          v7 = sub_10003169C();

          if (v7 && (v8 = v7[2], , , v8))
          {
            Strong = MusicPageProvider.albumRelatedContentProvider(for:)();
          }

          else
          {

            Strong = 0;
          }

          v4 = v3;
        }

        else
        {
        }
      }

      v9 = *(v4 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___relatedContentProvider);
      *(v4 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___relatedContentProvider) = Strong;
      sub_1000D9148(v9);
    }

    v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v4 + v10, v13, &unk_1011926C0, &unk_100ECF870);
    if (v13[8])
    {
      sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
      if (v11)
      {
        sub_1006A3EE4();
      }
    }
  }
}

uint64_t sub_1004ABE94(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v2, v14, &unk_1011926C0, &unk_100ECF870);
  if (v14[8])
  {
    sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
    return 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v14, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v4 = sub_1006A6078();

      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for CollectionViewDragDropController(0);
      Strong = swift_allocObject();
      *(Strong + 24) = 0u;
      *(Strong + 40) = 0u;
      *(Strong + 56) = 0u;
      *(Strong + 72) = 0u;
      *(Strong + 88) = 1;
      *(Strong + 96) = 0;
      v6 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
      v7 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
      (*(*(v7 - 8) + 56))(Strong + v6, 1, 1, v7);
      *(Strong + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
      *(Strong + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
      *(Strong + 16) = v4;
      *(Strong + 24) = sub_1004E9E9C;
      *(Strong + 32) = v5;
      *(Strong + 40) = 0;
      v8 = *(Strong + 56);
      v9 = *(Strong + 64);
      *(Strong + 64) = 0;
      *(Strong + 48) = 0;
      *(Strong + 56) = 0;
      v10 = v4;
      swift_retain_n();
      sub_100020438(v8, v9);
      v11 = *(Strong + 72);
      v12 = *(Strong + 80);
      *(Strong + 72) = 0;
      *(Strong + 80) = 0;
      sub_100020438(v11, v12);
      sub_100321DD8();
      sub_100322048();
    }
  }

  return Strong;
}

id sub_1004AC094(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Track();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v22 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    IndexPath.section.getter();
    Array.subscript.getter(&type metadata for ContainerDetail.Section, &v25);
    if (v25 == 2)
    {
      sub_1004DEB38(v9);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_1000095E8(v9, &unk_101192800, &qword_100EE5630);
      }

      else
      {
        sub_1004E59E0(v9, v15, type metadata accessor for AlbumDetailDataSource.CellType);
        sub_1004E40DC(v15, v13, type metadata accessor for AlbumDetailDataSource.CellType);
        if (swift_getEnumCaseMultiPayload() >= 2)
        {
          v19 = v23;
          v18 = v24;
          (*(v23 + 32))(v7, v13, v24);
          sub_1004DDAB0(a1, v4);
          v20 = PlaybackIntentDescriptor.intent.getter();
          sub_1004E414C(v4, type metadata accessor for PlaybackIntentDescriptor);
          v21 = sub_100797FA0(v20, _swiftEmptyArrayStorage);

          (*(v19 + 8))(v7, v18);
          sub_1004E414C(v15, type metadata accessor for AlbumDetailDataSource.CellType);
          return v21;
        }

        sub_1004E414C(v15, type metadata accessor for AlbumDetailDataSource.CellType);

        sub_1004E414C(v13, type metadata accessor for AlbumDetailDataSource.CellType);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

double sub_1004AC488(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent);
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent) = result;
  if (v2 != (result & 1))
  {
    v3 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse);
    if ((v3 & 0x8000000000000000) == 0)
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      dispatch thunk of MusicAutoupdatingResponse.update(_:)();

      return sub_1004E6028(v3);
    }
  }

  return v4;
}

uint64_t sub_1004AC550(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011927E0, &qword_100ECF9B8);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = sub_10010FC20(&qword_101188E88, &unk_100ECBD70);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1004C50FC(0, v4);

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 8))(a1, v5);
      v11 = *(v6 + 32);
      v11(v8, v4, v5);
      return (v11)(a1, v8, v5);
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  v13 = *(v6 + 32);
  v13(v8, a1, v5);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_1000095E8(v4, &qword_1011927E0, &qword_100ECF9B8);
  }

  return (v13)(a1, v8, v5);
}

void sub_1004AC798(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  v5 = a1 & 0xFFFFFFFFFFFFFEFELL;
  if ((v4 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    if (v5 == 0x3FFFFFEFELL)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v5 == 0x3FFFFFEFELL)
  {
    goto LABEL_10;
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (a1 >> 62 == 2 && ((v4 ^ a1) & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v4 == 0xC000000000000000 && *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 8) == 0)
      {
        if (a1 >> 62 != 3)
        {
          goto LABEL_10;
        }

        v11 = 0xC000000000000000;
      }

      else
      {
        if (a1 >> 62 != 3)
        {
          goto LABEL_10;
        }

        v11 = 0xC000000000000001;
      }

      if (a1 == v11 && !(a3 | a2))
      {
        return;
      }
    }

LABEL_10:
    v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v3 + v8, v13, &unk_1011926C0, &unk_100ECF870);
    if (v13[8])
    {
      sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v13, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        sub_10069F67C();
      }
    }

    return;
  }

  if (v6)
  {
    v7 = a1 >> 62 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v12 = v4 ^ a1;
  if (v12 & 0x100) != 0 || (v12)
  {
    goto LABEL_10;
  }
}

uint64_t sub_1004AC920@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for UIContentUnavailableConfiguration();
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v30 - v9;
  v11 = v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState;
  v12 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  if ((v12 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    goto LABEL_10;
  }

  v14 = *(v11 + 8);
  v13 = *(v11 + 16);
  v33 = v7;
  if ((v12 >> 62) - 1 >= 2)
  {
    if (v12 >> 62)
    {
LABEL_7:
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v10);
      (*(v33 + 8))(v6, v4);
      sub_10069D52C(v12, v14, v13);
      UIContentUnavailableConfiguration.text.setter();
      sub_10069B5AC(v12, v14, v13);
      UIContentUnavailableConfiguration.secondaryText.setter();
      v15 = sub_10069B85C(v12, v14, v13);
      if (v15)
      {
        v19 = v15;
        v31 = a1;
        v32 = v16;
        v20 = v18;
        v21 = v17;

        v22 = UIContentUnavailableConfiguration.button.modify();
        UIButton.Configuration.title.setter();
        v22(v34, 0);
        sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
        v23 = swift_allocObject();
        v23[2] = v19;
        v23[3] = v32;
        v23[4] = v21;
        v23[5] = v20;

        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v24 = UIContentUnavailableConfiguration.buttonProperties.modify();
        UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
        v24(v34, 0);
        sub_1004E5BA4(v12, v14, v13);
        a1 = v31;
      }

      else
      {
        v25.n128_f64[0] = sub_1004E5BA4(v12, v14, v13);
      }

      (*(v33 + 32))(a1, v10, v4, v25);
      return (*(v33 + 56))(a1, 0, 1, v4);
    }

    sub_10011896C(v12, v14, v13);
  }

  if ((v12 & 1) == 0)
  {
    v8.n128_f64[0] = sub_1004E5BA4(v12, v14, v13);
    v7 = v33;
LABEL_10:
    v26 = *(v7 + 56);
    v27 = a1;
    v28 = 1;
    goto LABEL_11;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  static UIContentUnavailableConfiguration.loading()();
  v26 = *(v33 + 56);
  v27 = a1;
  v28 = 0;
LABEL_11:

  return v26(v27, v28, 1, v4, v8);
}

uint64_t sub_1004ACCE4@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = type metadata accessor for Album();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v4, &unk_101184730, &unk_100ECB920);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_101184730, &unk_100ECB920);
    v10 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v5, &protocol witness table for Album, a1);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1004ACEFC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for EditorialVideoArtworkFlavor();
  v26 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Album();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_101184730, &unk_100ECB920);
  if ((*(v6 + 48))(v10, 1, v5))
  {
    sub_1000095E8(v10, &unk_101184730, &unk_100ECB920);
  }

  else
  {
    v12 = v26;
    (*(v6 + 16))(v8, v10, v5);
    sub_1000095E8(v10, &unk_101184730, &unk_100ECB920);
    v13 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
    (*(v6 + 8))(v8, v5);
    if (v13)
    {
      static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
      if (*(v13 + 16))
      {
        v14 = sub_1006BE63C(v4);
        if (v15)
        {
          v16 = v14;
          v17 = *(v13 + 56);
          v18 = type metadata accessor for VideoArtwork();
          v19 = *(v18 - 8);
          v20 = v19;
          v21 = v17 + *(v19 + 72) * v16;
          v22 = v27;
          (*(v19 + 16))(v27, v21, v18);
          (*(v12 + 8))(v4, v2);

          return (*(v20 + 56))(v22, 0, 1, v18);
        }
      }

      (*(v12 + 8))(v4, v2);
    }
  }

  v24 = type metadata accessor for VideoArtwork();
  return (*(*(v24 - 8) + 56))(v27, 1, 1, v24);
}

uint64_t sub_1004AD2B4(_BYTE *a1)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin();
  v6 = v16 - v5 + 16;
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_artwork;
  swift_beginAccess();
  sub_1002190E0(a1, v1 + v7, &unk_101188920, &qword_100EBCC50);
  swift_endAccess();
  v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v16, &unk_1011926C0, &unk_100ECF870);
  if (v16[8])
  {
    sub_1000095E8(a1, &unk_101188920, &qword_100EBCC50);
    v9 = &unk_1011926C0;
    v10 = &unk_100ECF870;
    v11 = v16;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v16, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      sub_1000089F8(v1 + v7, v6, &unk_101188920, &qword_100EBCC50);
      v13 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
      swift_beginAccess();
      sub_1000089F8(Strong + v13, v4, &unk_101188920, &qword_100EBCC50);
      swift_beginAccess();
      sub_1002190E0(v6, Strong + v13, &unk_101188920, &qword_100EBCC50);
      swift_endAccess();
      sub_10069FC04(v4);

      sub_1000095E8(a1, &unk_101188920, &qword_100EBCC50);
      sub_1000095E8(v4, &unk_101188920, &qword_100EBCC50);
      v11 = v6;
      v9 = &unk_101188920;
      v10 = &qword_100EBCC50;
    }

    else
    {
      v9 = &unk_101188920;
      v10 = &qword_100EBCC50;
      v11 = a1;
    }
  }

  return sub_1000095E8(v11, v9, v10);
}

uint64_t sub_1004AD564(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = a2(v4);
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;

    a3(v10);
  }

  a4(v7);
  return v8;
}

uint64_t sub_1004AD5EC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = sub_100729BFC();

  if (*(v3 + 16) && *(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8))
  {

    v4 = MusicPageProvider.albumRelatedContentProvider(for:)();

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1004AD6D0()
{
  v1 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage____needsToResolveLayout;
  v2 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage____needsToResolveLayout);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1004AD714(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1004AD714(uint64_t a1)
{
  v2 = type metadata accessor for Album();
  v25 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = type metadata accessor for MusicPropertySource();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  (*(v8 + 16))(v12, a1 + v13, v7);
  (*(v8 + 104))(v10, enum case for MusicPropertySource.catalog(_:), v7);
  LOBYTE(v13) = static MusicPropertySource.== infix(_:_:)();
  v14 = *(v8 + 8);
  v14(v10, v7);
  v14(v12, v7);
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v15, v26, &unk_1011926C0, &unk_100ECF870);
  if (v26[8])
  {
    sub_1000095E8(v26, &unk_1011926C0, &unk_100ECF870);
LABEL_6:
    v19 = 0;
    return v19 & 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v26, &unk_1011926C0, &unk_100ECF870);
  if (!Strong)
  {
    goto LABEL_6;
  }

  v17 = [Strong traitCollection];

  v18 = [v17 userInterfaceIdiom];
  if (v18)
  {
    goto LABEL_6;
  }

  static ApplicationCapabilities.shared.getter(v26);
  sub_100014984(v26);
  if (v26[1])
  {
    v21 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(a1 + v21, v6, &unk_101184730, &unk_100ECB920);
    v22 = v25;
    if (!(*(v25 + 48))(v6, 1, v2))
    {
      (*(v22 + 16))(v4, v6, v2);
      sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);
      v23 = sub_100805138(2);
      (*(v22 + 8))(v4, v2);
      v19 = !v23;
      return v19 & 1;
    }

    sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);
  }

  v19 = 1;
  return v19 & 1;
}

double sub_1004ADB28(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = type metadata accessor for MusicPropertySource();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v10 = &v35 - v9;
  if ((sub_1004AD6D0() & 1) != v4)
  {
    *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage____needsToResolveLayout) = v4;
    if ((a1 & 1) == 0)
    {
      v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v1 + v12, &v37, &unk_1011926C0, &unk_100ECF870);
      if (BYTE8(v37))
      {
        sub_1000095E8(&v37, &unk_1011926C0, &unk_100ECF870);
        return result;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v37, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v36 = Strong;
        sub_1004ADB28(0);
        sub_1000089F8(v2 + v12, &v37, &unk_1011926C0, &unk_100ECF870);
        if (BYTE8(v37))
        {
          sub_1000095E8(&v37, &unk_1011926C0, &unk_100ECF870);
        }

        else
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&v37, &unk_1011926C0, &unk_100ECF870);
          if (v14)
          {
            v15 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
            [*&v14[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
            v16 = *&v14[v15];
            *&v14[v15] = 0;
          }
        }

        v17 = (v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
        v18 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
        if ((v18 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          v19 = v17[1];
          v20 = v17[2];
          if (v18 >> 62 == 3 || (v18 & 1) != 0)
          {
            *v17 = 0x3FFFFFEFELL;
            v17[1] = 0;
            v17[2] = 0;
            sub_1004AC798(v18, v19, v20);
            sub_1004E5BA4(v18, v19, v20);
            sub_1000089F8(v2 + v12, &v37, &unk_1011926C0, &unk_100ECF870);
            if (BYTE8(v37))
            {
              sub_1000095E8(&v37, &unk_1011926C0, &unk_100ECF870);
            }

            else
            {
              v21 = swift_unknownObjectWeakLoadStrong();
              sub_1000095E8(&v37, &unk_1011926C0, &unk_100ECF870);
              if (v21)
              {
                [v21 setNeedsUpdateContentUnavailableConfiguration];
              }
            }

            *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload) = 1;
          }
        }

        v22 = sub_1004CAC5C();
        swift_getKeyPath();
        *&v37 = v22;
        sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v23 = *(v22 + 16);

        sub_10069F9B8();
        v24 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
        swift_beginAccess();
        sub_1000089F8(v2 + v24, v10, &unk_101184730, &unk_100ECB920);
        v25 = type metadata accessor for Album();
        v26 = *(v25 - 8);
        if ((*(v26 + 48))(v10, 1, v25) == 1)
        {
          sub_1000095E8(v10, &unk_101184730, &unk_100ECB920);
          v37 = 0u;
          v38 = 0u;
          v39 = 0;
        }

        else
        {
          *(&v38 + 1) = v25;
          v39 = &off_1010B22E8;
          v27 = sub_10001C8B8(&v37);
          (*(v26 + 32))(v27, v10, v25);
        }

        v28 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        (*(v6 + 16))(v8, v2 + v28, v5);
        sub_100558458(&v37, v8, 0);

        (*(v6 + 8))(v8, v5);
        sub_1000095E8(&v37, &unk_101192850, &qword_100EE4C90);
        v29 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration);
        swift_getKeyPath();
        *&v37 = v29;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v30 = *(v29 + 16);

        if (v23 == 2)
        {
          v31 = v36;
          if (v30 == 2)
          {
LABEL_28:
            sub_10069F67C();
            sub_100009F78(0, &qword_101181620, UIView_ptr);
            v32 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
            v33 = swift_allocObject();
            *(v33 + 16) = v31;
            v34 = v31;
            static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v32, 0, sub_1004E9E3C, v33, 0, 0, 0.5, 0.0);

            return result;
          }
        }

        else
        {
          v31 = v36;
          if (v30 != 2 && ((v30 ^ v23) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        if (*(*&v31[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator] + 24))
        {
          sub_1004CCA54();
        }

        goto LABEL_28;
      }
    }
  }

  return result;
}

uint64_t sub_1004AE1DC@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v15[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_101184730, &unk_100ECB920);
  v8 = type metadata accessor for Album();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    *(&v17 + 1) = v8;
    v18 = &off_1010B22E8;
    v13 = sub_10001C8B8(&v16);
    (*(v9 + 32))(v13, v6, v8);
    return sub_100059A8C(&v16, a1);
  }

  sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v4, &unk_101184730, &unk_100ECB920);
  if (v10(v4, 1, v8) != 1)
  {
    *(a1 + 24) = v8;
    *(a1 + 32) = &off_1010B22E8;
    v14 = sub_10001C8B8(a1);
    result = (*(v9 + 32))(v14, v4, v8);
    if (!*(&v17 + 1))
    {
      return result;
    }

    return sub_1000095E8(&v16, &unk_101192850, &qword_100EE4C90);
  }

  result = sub_1000095E8(v4, &unk_101184730, &unk_100ECB920);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  if (*(&v17 + 1))
  {
    return sub_1000095E8(&v16, &unk_101192850, &qword_100EE4C90);
  }

  return result;
}

uint64_t sub_1004AE45C()
{
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  if (v3 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL && (v3 >> 62 == 3 || (v3))
  {
    return 2;
  }

  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v0 + v4, v2, &unk_101184730, &unk_100ECB920);
  v5 = type metadata accessor for Album();
  v6 = (*(*(v5 - 8) + 48))(v2, 1, v5) == 1;
  sub_1000095E8(v2, &unk_101184730, &unk_100ECB920);
  return (2 * v6);
}

void sub_1004AE5B0()
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v2 = &v20 - v1;
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = type metadata accessor for Album();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v11, &v20, &unk_1011926C0, &unk_100ECF870);
  if (v21)
  {
    sub_1000095E8(&v20, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v20, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v13 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion;
      if (*(Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion))
      {
        v14 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
        swift_beginAccess();
        sub_1000089F8(v0 + v14, v6, &unk_101184730, &unk_100ECB920);
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_1000095E8(v6, &unk_101184730, &unk_100ECB920);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          v15 = type metadata accessor for IndexPath();
          (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
          sub_1004DB58C(v2, v4);
          sub_1000095E8(v2, &unk_10118BCE0, &qword_100EC6450);
          v16 = PlaybackIntentDescriptor.intent.getter();
          sub_1004E414C(v4, type metadata accessor for PlaybackIntentDescriptor);
          if (qword_10117F718 != -1)
          {
            swift_once();
          }

          v22 = v7;
          v23 = &protocol witness table for Album;
          v17 = sub_10001C8B8(&v20);
          (*(v8 + 16))(v17, v10, v7);
          v24 = Strong;
          v25 = 1;
          v18 = Strong;
          v19 = v16;
          GroupActivitiesManager.SuggestionProvider.registerItem(_:intent:)(&v20, v16);

          sub_100442874(&v20);
          *(Strong + v13) = 0;

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }
  }
}

void sub_1004AEA08()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = v33 - v2 + 16;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v32 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin();
  v6 = v33 - v5 + 16;
  v7 = type metadata accessor for MusicPropertySource();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin();
  v12 = v33 - v11 + 16;
  static ApplicationCapabilities.shared.getter(v34);
  sub_100014984(v34);
  if ((v34[1] & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v8 + 16))(v12, v0 + v13, v7);
    (*(v8 + 104))(v10, enum case for MusicPropertySource.catalog(_:), v7);
    LOBYTE(v13) = static MusicPropertySource.== infix(_:_:)();
    v14 = *(v8 + 8);
    v14(v10, v7);
    v14(v12, v7);
    if ((v13 & 1) != 0 && !*(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells))
    {
      sub_1004C4C94(0xC000000000000000, 0, 0);
      return;
    }
  }

  v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v33, &unk_1011926C0, &unk_100ECF870);
  if (v33[8])
  {
    v16 = &unk_1011926C0;
    v17 = &unk_100ECF870;
    v18 = v33;
LABEL_11:
    sub_1000095E8(v18, v16, v17);
    goto LABEL_12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v33, &unk_1011926C0, &unk_100ECF870);
  if (Strong)
  {
    v20 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v8 + 16))(v12, v1 + v20, v7);
    (*(v8 + 104))(v10, enum case for MusicPropertySource.library(_:), v7);
    v21 = static MusicPropertySource.== infix(_:_:)();
    v22 = *(v8 + 8);
    v22(v10, v7);
    v22(v12, v7);
    if (v21)
    {
      v23 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
      swift_beginAccess();
      sub_1000089F8(v1 + v23, v6, &unk_101184730, &unk_100ECB920);
    }

    else
    {
      v24 = type metadata accessor for Album();
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    }

    v25 = v32;
    sub_1000089F8(v6, v32, &unk_101184730, &unk_100ECB920);
    sub_10010FC20(&qword_101192A08, &qword_100ED0088);
    swift_allocObject();
    v26 = Strong;
    sub_100866FA8(v26, v25);

    sub_1004B6F0C(v27);

    v18 = v6;
    v16 = &unk_101184730;
    v17 = &unk_100ECB920;
    goto LABEL_11;
  }

LABEL_12:
  static TaskPriority.userInitiated.getter();
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v3, 0, 1, v28);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v29;
  v31 = sub_100805804(0, 0, v3, &unk_100ED0080, v30);
  sub_1000095E8(v3, &unk_101181520, &qword_100EBCC60);
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_asyncSetupTask) = v31;
}

uint64_t sub_1004AEFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for MusicPropertySource();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1004AF070, 0, 0);
}

uint64_t sub_1004AF070(__n128 a1)
{
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (v1[12] = Strong) == 0))
  {

    v5 = v1[1];

    return v5();
  }

  else
  {
    v1[13] = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_loadingSource;
    type metadata accessor for MainActor();
    v1[14] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1004AF17C, v4, v3);
  }
}

uint64_t sub_1004AF17C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  v6 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  (*(v5 + 16))(v2, v3 + v6, v4);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1004AF26C;
  v8 = v0[11];

  return sub_1004B6FF4(v3 + v1, v8);
}

uint64_t sub_1004AF26C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1004AF3C4, 0, 0);
}

uint64_t sub_1004AF3C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004AF430(__n128 a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_asyncSetupTask))
  {

    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    Task.cancel()();
  }

  v3 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse);
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse) = 0xF000000000000007;
  sub_1004E6028(v3);
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponseSubscription) = 0;

  v4 = (v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  v5 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  v6 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 8);
  v7 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 16);
  *v4 = 0x3FFFFFEFELL;
  v4[1] = 0;
  v4[2] = 0;
  sub_1004AC798(v5, v6, v7);
  sub_1004E5BA4(v5, v6, v7);
  v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v19, &unk_1011926C0, &unk_100ECF870);
  if (v20)
  {
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      [Strong setNeedsUpdateContentUnavailableConfiguration];
    }
  }

  *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload) = 1;
  sub_1004C97D0(0);
  sub_1000089F8(v2 + v8, v19, &unk_1011926C0, &unk_100ECF870);
  if (v20)
  {
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    if (v10)
    {
      v11 = sub_1006A3A7C();

      if (v11)
      {
        v12 = v11 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v12)
        {
          goto LABEL_30;
        }
      }
    }
  }

  if (*(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8))
  {
    sub_1000089F8(v2 + v8, v19, &unk_1011926C0, &unk_100ECF870);
    if (v20)
    {
      sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
LABEL_23:
      v13 = 0;
      goto LABEL_24;
    }

    v13 = swift_unknownObjectWeakLoadStrong();

    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    if (v13)
    {
      v14 = sub_10003169C();

      if (!v14 || (v15 = v14[2], , , !v15))
      {

        goto LABEL_23;
      }

      v13 = MusicPageProvider.playlistRelatedContentProvider(for:)();
    }

LABEL_24:
    v16 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___relatedContentProvider);
    *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___relatedContentProvider) = v13;
    sub_1000D9148(v16);
    sub_1000089F8(v2 + v8, v19, &unk_1011926C0, &unk_100ECF870);
    if (v20)
    {
      sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v17 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
      if (v17)
      {
        sub_1006A3EE4();
      }
    }

    if (sub_1004AD51C())
    {
      dispatch thunk of RelatedContentProvider.onAppear()();
    }
  }

LABEL_30:
  sub_1000089F8(v2 + v8, v19, &unk_1011926C0, &unk_100ECF870);
  if (v20)
  {
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    v18 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v19, &unk_1011926C0, &unk_100ECF870);
    if (v18)
    {
      sub_10069F67C();
    }
  }

  sub_1004AEA08();
}

void sub_1004AF890(double *a1)
{
  v3 = sub_1004CAC5C();
  swift_getKeyPath();
  v9 = v3;
  sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa, &unk_100ED6BBC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  if (*(v4 + 16) == *a1)
  {
    *(v4 + 16) = *a1;
  }

  else
  {
    swift_getKeyPath();
    v8[1] = v8;
    __chkstk_darwin();
    v9 = v4;
    sub_1004E41B4(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration);
  swift_getKeyPath();
  v9 = v5;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  v7 = a1[2];
  if (*(v6 + 24) == v7)
  {
    *(v6 + 24) = v7;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v9 = v6;
    sub_1004E41B4(&qword_101192A00, _s7MetricsCMa, &unk_100ED6BA0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1004AFBB4(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = v2 + 32;
  while (*(v6 + result) != a1)
  {
    if (v3 == ++result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1004AFC08(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v19[6] = *(v2 - 8);
  __chkstk_darwin();
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v6 = v19 - v5;
  v20 = type metadata accessor for Track();
  v7 = *(v20 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v9 = (v19 - v8);
  sub_1004DEB38(v6);
  v10 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    sub_1000095E8(v6, &unk_101192800, &qword_100EE5630);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v19[5] = v2;
    v11 = v9;
    v12 = v9;
    v13 = v20;
    (*(v7 + 32))(v11, v6, v20);
    v14 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v14, &v21, &unk_1011926C0, &unk_100ECF870);
    if (v22)
    {
      (*(v7 + 8))(v12, v13);
      sub_1000095E8(&v21, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v21, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        sub_1004DDD64(v12, v4);
        memset(v23, 0, sizeof(v23));
        v24 = 0;
        v25 = xmmword_100EBCEF0;
        v17 = Strong;
        PresentationSource.init(viewController:position:)(v17, v23, &v21);
        v18 = sub_1007F50D8(v12, v4, &v21);

        sub_10012BA6C(&v21);
        sub_1004E414C(v4, type metadata accessor for PlaybackIntentDescriptor);
        (*(v7 + 8))(v12, v20);
        return v18;
      }

      (*(v7 + 8))(v12, v20);
    }
  }

  else
  {
    sub_1004E414C(v6, type metadata accessor for AlbumDetailDataSource.CellType);
  }

  return 0;
}

id sub_1004B03EC(uint64_t a1)
{
  sub_10010FC20(&unk_101192800, &qword_100EE5630);
  __chkstk_darwin();
  v3 = &v16 - v2;
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DEB38(v3);
  v8 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    sub_1000095E8(v3, &unk_101192800, &qword_100EE5630);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v9, &v17, &unk_1011926C0, &unk_100ECF870);
    if (v18)
    {
      sub_1000095E8(&v17, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v17, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v11 = Strong;
        v12 = [v11 traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        v13 = v17;
        memset(v19, 0, sizeof(v19));
        v20 = 0;
        v21 = xmmword_100EBCEF0;
        PresentationSource.init(viewController:position:)(v11, v19, &v17);
        v14 = sub_1005192F0(v7, v13, &v17);

        sub_10012BA6C(&v17);
        (*(v5 + 8))(v7, v4);
        return v14;
      }
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_1004E414C(v3, type metadata accessor for AlbumDetailDataSource.CellType);
  }

  return 0;
}

void sub_1004B0710()
{
  v1 = v0;
  v93 = type metadata accessor for Logger();
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v90 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v83 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v82 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v86 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v78 - v6;
  v88 = type metadata accessor for URL();
  v91 = *(v88 - 8);
  v7 = *(v91 + 64);
  __chkstk_darwin();
  v81 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v78 - v8;
  __chkstk_darwin();
  v94 = &v78 - v9;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v85 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v78 - v11;
  v13 = type metadata accessor for Album();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v89 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v78 - v16;
  __chkstk_darwin();
  v19 = &v78 - v18;
  v96 = _swiftEmptyArrayStorage;
  v20 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v95 = v1;
  v21 = v14;
  sub_1000089F8(v1 + v20, v12, &unk_101184730, &unk_100ECB920);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &unk_101184730, &unk_100ECB920);
LABEL_8:
    v31 = v95;
    sub_1004E3320(0, v23);
    goto LABEL_9;
  }

  (*(v21 + 32))(v19, v12, v13);
  v24 = Album.catalogID.getter();
  v26 = v21;
  v27 = v13;
  if (!v25)
  {
    (*(v21 + 8))(v19, v13);
    goto LABEL_8;
  }

  v28 = v24;
  v29 = v25;
  v80 = v26;
  v30 = v19;
  if ((Album.isClassicalExperienceAvailable.getter() & 1) == 0)
  {
    (*(v80 + 8))(v19, v27);

    goto LABEL_8;
  }

  static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v28, v29, v94);

  v34 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  v35 = v95;
  swift_beginAccess();
  v36 = v35 + v34;
  v37 = v85;
  sub_1000089F8(v36, v85, &unk_101184730, &unk_100ECB920);
  if (v22(v37, 1, v27))
  {
    sub_1000095E8(v37, &unk_101184730, &unk_100ECB920);
    v39 = v87;
    v40 = v88;
    (*(v91 + 56))(v87, 1, 1, v88);
  }

  else
  {
    v41 = v80;
    (*(v80 + 16))(v17, v37, v27);
    sub_1000095E8(v37, &unk_101184730, &unk_100ECB920);
    v39 = v87;
    Album.classicalURL.getter();
    (*(v41 + 8))(v17, v27);
    v40 = v88;
  }

  v42 = v86;
  v43 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem;
  v31 = v95;
  v44 = *(v95 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem);
  if (v44)
  {
    v45 = *(v95 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem);
    v46 = v45;
  }

  else
  {
    v92 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem;
    sub_1000089F8(v39, v86, &qword_101183A20, &unk_100EBCF80);
    v47 = v91;
    v48 = *(v91 + 48);
    v49 = v48(v42, 1, v40);
    v78 = v27;
    v79 = v30;
    if (v49 == 1)
    {
      v50 = v84;
      (*(v47 + 16))(v84, v94, v40);
      if (v48(v42, 1, v40) != 1)
      {
        sub_1000095E8(v42, &qword_101183A20, &unk_100EBCF80);
      }
    }

    else
    {
      v50 = v84;
      (*(v47 + 32))(v84, v42, v40);
    }

    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = v81;
    (*(v47 + 16))(v81, v50, v40);
    v54 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v55 = (v7 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v57 = v53;
    v58 = v52;
    v59 = v56;
    (*(v47 + 32))(v56 + v54, v57, v40);
    v60 = (v59 + v55);
    *v60 = sub_1004E9C90;
    v60[1] = v51;
    v61 = (v59 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v61 = sub_1004E9C98;
    v61[1] = v58;
    sub_100009F78(0, &qword_101183A00, UIFont_ptr);
    v93 = v51;
    swift_retain_n();
    swift_retain_n();
    v62 = static UIFont.preferredFont(forTextStyle:weight:)();
    v63 = [objc_opt_self() configurationWithFont:v62];

    v64 = String._bridgeToObjectiveC()();
    v65 = [objc_opt_self() _systemImageNamed:v64 withConfiguration:v63];

    if (!v65)
    {
      __break(1u);
      return;
    }

    v89 = sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v90 = v65;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v66 = String.init(localized:table:bundle:locale:comment:)();
    v68 = v67;
    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1004E9CA0;
    *(v69 + 24) = v59;

    v70 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v71 = AccessibilityIdentifier.albumDetailOpenInClassicalButton.unsafeMutableAddressor();
    v73 = *v71;
    v72 = v71[1];
    v74 = v71[2];
    v75 = v71[3];

    v46 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v66, v68, v65, 0, v70, 0, v73, v72, v74, v75);

    v40 = v88;
    (*(v91 + 8))(v84, v88);

    v45 = 0;
    v43 = v92;
    v31 = v95;
    v44 = *(v95 + v92);
    v27 = v78;
    v30 = v79;
    v39 = v87;
  }

  *(v31 + v43) = v46;
  v76 = v46;
  v77 = v45;

  sub_1004B21F8();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  sub_1000095E8(v39, &qword_101183A20, &unk_100EBCF80);
  (*(v91 + 8))(v94, v40);
  (*(v80 + 8))(v30, v27);
LABEL_9:
  if ((*(v31 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent) & 1) == 0)
  {
    static ApplicationCapabilities.shared.getter(v97);
    sub_100014984(v97);
    if (v97[1])
    {
      if (*(v31 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_actionableStateController))
      {

        v32 = sub_100801A48();

        if (v32)
        {
          v33 = v32;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }
    }
  }
}

double sub_1004B173C@<D0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v4 + v5, v8, &unk_1011926C0, &unk_100ECF870);
    if (BYTE8(v8[0]) == 1)
    {

      sub_1000095E8(v8, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      v6 = swift_unknownObjectWeakLoadStrong();

      sub_1000095E8(v8, &unk_1011926C0, &unk_100ECF870);
      if (v6)
      {
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        v10 = xmmword_100EBCEF0;
        *&result = PresentationSource.init(viewController:position:)(v6, v8, a2).n128_u64[0];
        return result;
      }
    }
  }

  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

void *sub_1004B1868(void (*a1)(char *, uint64_t, uint64_t, uint64_t, __n128), uint64_t a2)
{
  v39 = a1;
  v2 = type metadata accessor for Actions.MetricsReportingContext(0);
  __chkstk_darwin();
  v4 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v6 = &v33 - v5;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v33 - v8;
  __chkstk_darwin();
  v11 = (&v33 - v10);
  v12 = type metadata accessor for MetricsEvent.Page(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_1004DF8FC(v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      return sub_1000095E8(v11, &unk_1011838F0, &qword_100EC1070);
    }

    else
    {
      sub_1004E59E0(v11, v15, type metadata accessor for MetricsEvent.Page);
      v38 = "Open in Apple Music Classical";
      v18 = type metadata accessor for URL();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v6, v39, v18);
      (*(v19 + 56))(v6, 0, 1, v18);
      sub_1004E40DC(v15, v9, type metadata accessor for MetricsEvent.Page);
      v39 = *(v13 + 56);
      (v39)(v9, 0, 1, v12);
      sub_10010FC20(&unk_1011927C0, &unk_100ED6A50);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100EBC6B0;
      *(v20 + 32) = sub_1004DFF28();
      sub_1000089F8(v9, v40, &unk_1011838F0, &qword_100EC1070);
      MetricsReportingController.shared.unsafeMutableAddressor();
      v21 = sub_10053771C();
      v35 = v22;
      v36 = v21;
      v37 = v6;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v23 = qword_101218AD0;
      v34 = GroupActivitiesManager.hasJoined.getter();
      v33 = GroupActivitiesManager.participantsCount.getter();
      sub_1000095E8(v9, &unk_1011838F0, &qword_100EC1070);
      v24 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      v25 = *(v23 + v24);
      v26 = v2[5];
      (v39)(v4 + v26, 1, 1, v12);
      v27 = v2[7];
      v28 = (v4 + v2[6]);
      v29 = v2[8];
      *v4 = xmmword_100ECF4C0;
      sub_10006B010(v40, v4 + v26, &unk_1011838F0, &qword_100EC1070);
      v30 = v35;
      *v28 = v36;
      v28[1] = v30;
      *(v4 + v27) = v20;
      *(v4 + v29) = 0;
      v31 = v4 + v2[9];
      *v31 = v34 & 1;
      *(v31 + 1) = v33;
      *(v31 + 2) = v25;
      v32 = v37;
      static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(0xD000000000000014, v38 | 0x8000000000000000, 5, 28, v37, 0, 0, 0, 0xFF00u, v4);

      sub_1000095E8(v32, &qword_101183A20, &unk_100EBCF80);
      sub_1004E414C(v15, type metadata accessor for MetricsEvent.Page);
      return sub_1004E414C(v4, type metadata accessor for Actions.MetricsReportingContext);
    }
  }

  return result;
}

unint64_t sub_1004B1DBC()
{
  v21 = _s7ElementV4ItemOMa(0);
  __chkstk_darwin();
  v20 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(type metadata accessor for AlbumDetailDataSource.CellType(0) - 8);
  __chkstk_darwin();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = type metadata accessor for Track();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v12 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v12 + result + 32) != 2)
  {
    return 0;
  }

  v14 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
  if (!v14)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_13:
    sub_1000095E8(v7, &qword_10118A530, &qword_100EC64E0);
    return 0;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (result >= *(v14 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  sub_1004E40DC(v14 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * result, v5, type metadata accessor for AlbumDetailDataSource.CellType);

  sub_1004E59E0(v5, v3, type metadata accessor for AlbumDetailDataSource.CellType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    (*(v9 + 32))(v7, v3, v8);
    v15 = 0;
  }

  else
  {
    sub_1004E414C(v3, type metadata accessor for AlbumDetailDataSource.CellType);
    v15 = 1;
  }

  (*(v9 + 56))(v7, v15, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_13;
  }

  (*(v9 + 32))(v11, v7, v8);
  v16 = v20;
  (*(v9 + 16))(v20, v11, v8);
  swift_storeEnumTagMultiPayload();
  v17 = IndexPath.item.getter();
  v18 = sub_10043231C(v16, v17);
  (*(v9 + 8))(v11, v8);
  return v18;
}

void sub_1004B21F8()
{
  v1 = type metadata accessor for PopoverProvider.PopoverSource();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = *(type metadata accessor for PlacementID() - 8);
  __chkstk_darwin();
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem);
  if (v9)
  {
    v10 = v6;
    v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v11, v16, &unk_1011926C0, &unk_100ECF870);
    if (v16[8])
    {
      sub_1000095E8(v16, &unk_1011926C0, &unk_100ECF870);
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v13 = v9;
    sub_1000095E8(v16, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      if (sub_1006A4900())
      {
        static PlacementID.BubbleTip.showInClassicalAppButton.getter();
        *v4 = v13;
        (*(v2 + 104))(v4, enum case for PopoverProvider.PopoverSource.sourceItem(_:), v1);
        v14 = v13;
        dispatch thunk of PopoverProvider.registerPlacement(for:presentingViewController:popoverSource:)();

        (*(v2 + 8))(v4, v1);
        (*(v5 + 8))(v8, v10);
        return;
      }
    }
  }
}

uint64_t sub_1004B2480(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101192860, &unk_100ECFB60);
  __chkstk_darwin();
  v51 = &v46 - v7;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v9 = &v46 - v8;
  v47 = type metadata accessor for MusicPropertySource();
  v48 = *(v47 - 8);
  __chkstk_darwin();
  v46 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v46 - v13;
  v15 = __chkstk_darwin();
  v17 = &v46 - v16;
  v50 = v5;
  v18 = *(v5 + 48);
  v53 = v4;
  v52 = v18;
  v19 = (v18)(a1, 1, v4, v15);
  v20 = &unk_101218000;
  if (v19 == 1)
  {
    v21 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(v2 + v21, v17, &unk_101184730, &unk_100ECB920);
    LODWORD(v21) = v52(v17, 1, v53);
    sub_1000095E8(v17, &unk_101184730, &unk_100ECB920);
    v22 = v21 == 1;
    v20 = &unk_101218000;
    if (!v22)
    {
      *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload) = 1;
      v23 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v2 + v23, v54, &unk_1011926C0, &unk_100ECF870);
      if (v55)
      {
        sub_1000095E8(v54, &unk_1011926C0, &unk_100ECF870);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v54, &unk_1011926C0, &unk_100ECF870);
        if (Strong)
        {
          sub_10069F67C();
        }
      }

      sub_1000089F8(v2 + v23, v54, &unk_1011926C0, &unk_100ECF870);
      if (v55)
      {
        sub_1000095E8(v54, &unk_1011926C0, &unk_100ECF870);
        v20 = &unk_101218000;
      }

      else
      {
        v25 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v54, &unk_1011926C0, &unk_100ECF870);
        v20 = &unk_101218000;
        if (v25)
        {
          if (v25[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent])
          {
            v25[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent] = 0;
            sub_1006A4A18();
          }
        }
      }
    }
  }

  sub_1004B2C94();
  v26 = v20[460];
  swift_beginAccess();
  sub_1000089F8(v2 + v26, v54, &unk_1011926C0, &unk_100ECF870);
  if (v55)
  {
    v27 = &unk_1011926C0;
    v28 = &unk_100ECF870;
  }

  else
  {
    v29 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v54, &unk_1011926C0, &unk_100ECF870);
    if (!v29)
    {
      goto LABEL_18;
    }

    sub_10069F9B8();

    sub_1004AE1DC(v54);
    v30 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    v31 = v48;
    v32 = v46;
    v33 = v47;
    (*(v48 + 16))(v46, v2 + v30, v47);
    v34 = sub_1004AD6D0();
    sub_100558458(v54, v32, v34 & 1);

    (*(v31 + 8))(v32, v33);
    v27 = &unk_101192850;
    v28 = &qword_100EE4C90;
  }

  sub_1000095E8(v54, v27, v28);
LABEL_18:
  sub_1004CAC5C();
  v35 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v2 + v35, v14, &unk_101184730, &unk_100ECB920);
  v36 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  sub_1000089F8(v2 + v36, v9, &unk_1011842D0, &qword_100ECBF00);
  v37 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v2 + v37, v12, &unk_101184730, &unk_100ECB920);
  if (v52(v12, 1, v53))
  {
    sub_1000095E8(v12, &unk_101184730, &unk_100ECB920);
    v38 = type metadata accessor for ContainerDetail.AttributionItem(0);
    v39 = 1;
    v40 = v51;
    (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
  }

  else
  {
    v41 = v50;
    v42 = v49;
    v43 = v53;
    (*(v50 + 16))(v49, v12, v53);
    sub_1000095E8(v12, &unk_101184730, &unk_100ECB920);
    v40 = v51;
    sub_1004CA938(v51);
    (*(v41 + 8))(v42, v43);
    v44 = type metadata accessor for ContainerDetail.AttributionItem(0);
    v39 = (*(*(v44 - 8) + 48))(v40, 1, v44) == 1;
  }

  sub_1000095E8(v40, &qword_101192860, &unk_100ECFB60);
  sub_1005F225C(v14, v9, v39);

  sub_1000095E8(v9, &unk_1011842D0, &qword_100ECBF00);
  return sub_1000095E8(v14, &unk_101184730, &unk_100ECB920);
}

void sub_1004B2C94()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPropertySource();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin();
  v58 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v55 - v4;
  sub_10010FC20(&unk_1011842D0, &qword_100ECBF00);
  __chkstk_darwin();
  v63 = &v55 - v5;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v55 - v11;
  __chkstk_darwin();
  v61 = &v55 - v12;
  __chkstk_darwin();
  v14 = &v55 - v13;
  __chkstk_darwin();
  v16 = &v55 - v15;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v18 = &v55 - v17;
  v19 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v64 = v19;
  sub_1000089F8(v1 + v19, v16, &unk_101184730, &unk_100ECB920);
  v20 = *(v7 + 48);
  v21 = v20(v16, 1, v6);
  v65 = v7;
  if (v21)
  {
    sub_1000095E8(v16, &unk_101184730, &unk_100ECB920);
    v22 = type metadata accessor for Artwork();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  }

  else
  {
    (*(v7 + 16))(v9, v16, v6);
    sub_1000095E8(v16, &unk_101184730, &unk_100ECB920);
    Album.artwork.getter();
    (*(v7 + 8))(v9, v6);
  }

  v23 = v9;
  sub_1004AD2B4(v18);
  v24 = v64;
  sub_1000089F8(v1 + v64, v14, &unk_101184730, &unk_100ECB920);
  if (v20(v14, 1, v6))
  {
    sub_1000095E8(v14, &unk_101184730, &unk_100ECB920);
    v25 = v65;
  }

  else
  {
    v25 = v65;
    (*(v65 + 16))(v9, v14, v6);
    sub_1000095E8(v14, &unk_101184730, &unk_100ECB920);
    v26 = Album.downloadedTrackCount.getter();
    v28 = v27;
    (*(v25 + 8))(v23, v6);
    if ((v28 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v26 = 0;
LABEL_8:
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount) = v26;
  v29 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v29, v66, &unk_1011926C0, &unk_100ECF870);
  if (v66[8])
  {
    sub_1000095E8(v66, &unk_1011926C0, &unk_100ECF870);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v66, &unk_1011926C0, &unk_100ECF870);
    if (Strong)
    {
      v31 = [Strong navigationItem];
      v32 = v61;
      sub_1000089F8(v1 + v24, v61, &unk_101184730, &unk_100ECB920);
      if (v20(v32, 1, v6))
      {
        sub_1000095E8(v32, &unk_101184730, &unk_100ECB920);
        v33 = 0;
      }

      else
      {
        v55 = v20;
        v34 = v23;
        v35 = v65;
        (*(v65 + 16))(v34, v32, v6);
        sub_1000095E8(v32, &unk_101184730, &unk_100ECB920);
        Album.title.getter();
        v36 = v35;
        v23 = v34;
        v20 = v55;
        (*(v36 + 8))(v23, v6);
        v33 = String._bridgeToObjectiveC()();
      }

      [v31 setBackButtonTitle:v33];

      sub_1006A26DC();
      v25 = v65;
    }
  }

  v37 = v62;
  sub_1000089F8(v1 + v24, v62, &unk_101184730, &unk_100ECB920);
  if (v20(v37, 1, v6))
  {
    sub_1000095E8(v37, &unk_101184730, &unk_100ECB920);
    v38 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    v39 = v63;
    (*(*(v38 - 8) + 56))(v63, 1, 1, v38);
LABEL_18:
    v41 = &unk_1011842D0;
    v42 = &qword_100ECBF00;
    v43 = v39;
LABEL_19:
    sub_1000095E8(v43, v41, v42);
    goto LABEL_20;
  }

  (*(v25 + 16))(v23, v37, v6);
  sub_1000095E8(v37, &unk_101184730, &unk_100ECB920);
  v39 = v63;
  Album.tracks.getter();
  (*(v25 + 8))(v23, v6);
  v40 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    goto LABEL_18;
  }

  sub_1000095E8(v39, &unk_1011842D0, &qword_100ECBF00);
  v44 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v46 = v59;
  v45 = v60;
  v47 = v57;
  (*(v59 + 16))(v57, v1 + v44, v60);
  v48 = v58;
  (*(v46 + 104))(v58, enum case for MusicPropertySource.library(_:), v45);
  LOBYTE(v44) = static MusicPropertySource.== infix(_:_:)();
  v49 = *(v46 + 8);
  v49(v48, v45);
  v49(v47, v45);
  if (v44 & 1) != 0 || (v53 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse), (~v53 & 0xF000000000000007) != 0) && (, v54 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter(), sub_1004E6028(v53), (v54))
  {
    v50 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_actionableStateController);
    if (v50)
    {
      v51 = v56;
      sub_1000089F8(v1 + v64, v56, &unk_101184730, &unk_100ECB920);
      v52 = *(*v50 + 128);
      swift_beginAccess();

      sub_1002190E0(v51, v50 + v52, &unk_101184730, &unk_100ECB920);
      swift_endAccess();
      sub_100801CC4();

      v43 = v51;
      v41 = &unk_101184730;
      v42 = &unk_100ECB920;
      goto LABEL_19;
    }
  }

LABEL_20:
  sub_1004AE5B0();
}

void sub_1004B3664()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v38 - v2;
  v4 = &v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData];
  v5 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData + 8];
  if (v5)
  {
    v6 = *v4;
    v7 = v4[24];
    v8 = qword_10117F608;

    if (v8 != -1)
    {
      swift_once();
    }

    v43 = &type metadata for Player.PlaybackCommand;
    v44 = &protocol witness table for Player.PlaybackCommand;
    LOBYTE(aBlock) = 0;
    v9 = PlaybackController.canPerform(_:)(&aBlock);
    sub_10000959C(&aBlock);
    if (!v9)
    {

      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000060E4(v18, qword_1012193F8);
      v10 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v10, v19, "Failed to handle lyrics snippet, play command is not available", v20, 2u);
      }

LABEL_23:

      return;
    }

    v10 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v11 = (*(*qword_101218AC8 + 528))();
    v12 = v11;
    if (v11)
    {
    }

    [v10 setInGroupSession:v12 != 0];
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v13 = swift_allocObject();
    v38 = xmmword_100EBC6B0;
    *(v13 + 16) = xmmword_100EBC6B0;
    *(v13 + 32) = v6;
    *(v13 + 40) = v5;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setStoreIDs:isa];

    v15 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
    [v15 setRequest:v10];
    v16 = [objc_allocWithZone(MPCPlaybackIntent) init];
    v39 = v15;
    [v16 setTracklistToken:v15];
    [v16 setTracklistSource:3];
    v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v17, &aBlock, &unk_1011926C0, &unk_100ECF870);
    if (v41)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0, &unk_100ECF870);
      if (Strong)
      {
        v22 = [Strong combinedPlayActivityFeatureName];

LABEL_18:
        [v16 setPlayActivityFeatureName:v22];

        if (v7)
        {
        }

        else
        {
          v23 = objc_allocWithZone(MPIdentifierSet);
          v24 = [objc_opt_self() kindWithVariants:1];
          v25 = swift_allocObject();
          *(v25 + 16) = v6;
          *(v25 + 24) = v5;
          v26 = swift_allocObject();
          *(v26 + 16) = sub_1004E9C88;
          *(v26 + 24) = v25;
          v44 = sub_1001EBE40;
          v45 = v26;
          aBlock = _NSConcreteStackBlock;
          v41 = 1107296256;
          v42 = sub_10006BD7C;
          v43 = &unk_1010AF878;
          v27 = _Block_copy(&aBlock);

          v28 = [v23 initWithModelKind:v24 block:v27];

          _Block_release(v27);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
            return;
          }

          sub_10010FC20(&qword_1011929E0, &qword_100ECFFE0);
          inited = swift_initStackObject();
          *(inited + 16) = v38;
          *(inited + 32) = v28;
          v31 = v28;
          *(inited + 40) = Double._bridgeToObjectiveC()();
          sub_10010D2FC(inited);
          swift_setDeallocating();
          sub_1000095E8(inited + 32, &qword_1011929E8, qword_100ECFFE8);
          sub_100009F78(0, &qword_101192200, MPIdentifierSet_ptr);
          sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
          sub_10001C070(&unk_1011929F0, &qword_101192200, MPIdentifierSet_ptr, &protocol conformance descriptor for NSObject);
          v32 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v16 setStartTimeModifications:v32];
        }

        v33 = type metadata accessor for TaskPriority();
        (*(*(v33 - 8) + 56))(v3, 1, 1, v33);
        type metadata accessor for MainActor();
        v34 = v16;
        v35 = v1;
        v36 = static MainActor.shared.getter();
        v37 = swift_allocObject();
        v37[2] = v36;
        v37[3] = &protocol witness table for MainActor;
        v37[4] = v34;
        v37[5] = v35;
        sub_10086E3AC(0, 0, v3, &unk_100ECFFD0, v37);

        goto LABEL_23;
      }
    }

    v22 = 0;
    goto LABEL_18;
  }
}