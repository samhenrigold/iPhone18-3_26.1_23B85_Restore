char *sub_10028FDE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100290988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FE08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_100975120, &qword_1007F8478, &type metadata accessor for SFSecurityScopedURL);
  *v3 = result;
  return result;
}

void *sub_10028FE4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_1009750F0, &qword_1007F8460, type metadata accessor for SDTempPairingEndpoint);
  *v3 = result;
  return result;
}

char *sub_10028FE90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100290C9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FEB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100290DA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FED0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_1009750D0, &qword_1007FE490, type metadata accessor for SDAirDropDiscoveredEndpoint);
  *v3 = result;
  return result;
}

void *sub_10028FF14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100290E9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FF34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100290FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FF54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10029110C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FF74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FF94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10029131C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FFB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10029141C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FFD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291518(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FFF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291800(a1, a2, a3, *v3, &qword_100974F98, &qword_1007F8380, &qword_100974FA0, &unk_100804C70);
  *v3 = result;
  return result;
}

void *sub_100290034(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &unk_100987020, &unk_10080D9D0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_100290078(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100291800(a1, a2, a3, *v3, &unk_100974FE0, &qword_1007F83A8, &qword_10097C6B0, &unk_100804750);
  *v3 = result;
  return result;
}

char *sub_1002900B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100974EA0, &qword_1007FBA30);
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

void *sub_1002901C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10028088C(a5, a6);
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
    sub_10028088C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1002902FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
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

void *sub_100290408(void *result, int64_t a2, char a3, void *a4)
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
    sub_10028088C(&unk_100974EC0, &qword_1007F82F0);
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
    sub_10028088C(&unk_10097F340, &unk_1008050C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100290550(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100974ED0, &qword_1007F82F8);
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

char *sub_100290644(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&unk_100975140, &unk_1007F8490);
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

char *sub_100290748(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975108, &qword_1007F8470);
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

void *sub_100290854(void *result, int64_t a2, char a3, void *a4)
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
    sub_10028088C(&qword_1009750F8, &qword_1007F8468);
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
    sub_10028088C(&qword_100975100, &qword_1007FBA10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100290988(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975128, &qword_1007F8480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100290AAC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10028088C(&qword_1009750E0, &qword_1007F8458);
  v10 = *(sub_10028088C(&qword_1009750E8, &qword_1007FBB20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_10028088C(&qword_1009750E8, &qword_1007FBB20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

char *sub_100290C9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975038, &qword_1007F83D8);
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

char *sub_100290DA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975040, &qword_1007F83E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_100290E9C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10028088C(&qword_100975048, &qword_1007F83E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10028088C(&qword_100975050, &qword_1007F83F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100290FE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975030, &qword_1007F83D0);
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

char *sub_10029110C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975080, &qword_1007F8420);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_100291210(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975078, &qword_1007F8418);
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

char *sub_10029131C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975070, &qword_1007F8410);
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
  v15 = 4 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_10029141C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975068, &qword_1007F8408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_100291518(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&unk_100985A50, &qword_1007F8340);
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

void *sub_100291624(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10028088C(a5, a6);
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

void *sub_100291800(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10028088C(a5, a6);
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
    sub_10028088C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_100291948(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for URL();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100291BEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100291D40(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v32 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_1002940CC(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_10029418C(v11, v14);
      sub_10029418C(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100291F68(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002920C0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v42 = *(v45 - 8);
  v8 = __chkstk_darwin(v45);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v39 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  v46 = a2;
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v22;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v39 = v13;
    v40 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    v41 = a3;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v16;
      v23 = v21 | (v16 << 6);
      v24 = *(a4 + 56);
      v25 = a4;
      v26 = (*(a4 + 48) + 16 * v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = type metadata accessor for Date();
      v30 = *(v29 - 8);
      v31 = v24 + *(v30 + 72) * v23;
      v32 = v44;
      (*(v30 + 16))(&v44[*(v45 + 48)], v31, v29);
      *v32 = v27;
      v32[1] = v28;
      v33 = v32;
      v34 = v43;
      sub_10002C4E4(v33, v43, &qword_1009750E8, &qword_1007FBB20);
      v35 = v34;
      v36 = v46;
      sub_10002C4E4(v35, v46, &qword_1009750E8, &qword_1007FBB20);
      a3 = v41;
      if (v18 == v41)
      {

        a1 = v40;
        a4 = v25;
        goto LABEL_23;
      }

      a1 = (v36 + *(v42 + 72));
      v46 = a1;

      result = v18;
      v37 = __OFADD__(v18++, 1);
      a4 = v25;
      v16 = v22;
      if (v37)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v38 = v16 + 1;
    }

    else
    {
      v38 = v17;
    }

    v22 = v38 - 1;
    a3 = result;
    a1 = v40;
LABEL_23:
    v13 = v39;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100292394(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1002924EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100292640(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10028088C(&qword_100975010, &qword_1007F83B8);
  v9 = __chkstk_darwin(v8 - 8);
  v43 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v34 - v11;
  v12 = sub_10028088C(&qword_100975018, &qword_1007F83C0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v34 - v14;
  v45 = a4;
  *v15 = a4;
  *(v15 + 1) = 0;
  v16 = *(v13 + 52);
  v17 = type metadata accessor for Data.Iterator();
  v18 = *(v17 - 8);
  v41 = *(v18 + 56);
  v42 = v18 + 56;
  result = v41(&v15[v16], 1, 1, v17);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_24;
  }

  if (a3 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v38 = a2;
  v39 = a1;
  v20 = 0;
  v21 = 0;
  v46 = (v18 + 48);
  v22 = v45 + 40;
  v23 = 1;
  v35 = v45 + 40;
  v36 = a3;
  while (2)
  {
    v40 = v20;
    v37 = v23;
    for (i = (v22 + 16 * v21); ; i += 2)
    {
      v26 = v44;
      sub_10000FF90(&v15[v16], v44, &qword_100975010, &qword_1007F83B8);
      v27 = *v46;
      v28 = (*v46)(v26, 1, v17);
      result = sub_100005508(v26, &qword_100975010, &qword_1007F83B8);
      if (v28 != 1)
      {
        result = v27(&v15[v16], 1, v17);
        if (result == 1)
        {
          goto LABEL_28;
        }

        sub_10000CE2C(&unk_100975020, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
        result = dispatch thunk of IteratorProtocol.next()();
        if (v48 != 1)
        {
          break;
        }
      }

      v29 = *(v45 + 16);
      if (v21 == v29)
      {
        goto LABEL_22;
      }

      if (v21 >= v29)
      {
        __break(1u);
        goto LABEL_27;
      }

      v30 = *(i - 1);
      v31 = *i;
      *(v15 + 1) = v21 + 1;
      v32 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v32 == 2)
        {
LABEL_6:
          sub_100294008(v30, v31);
        }
      }

      else if (v32)
      {
        goto LABEL_6;
      }

      v25 = v43;
      Data.Iterator.init(_:at:)();
      v41(v25, 0, 1, v17);
      sub_10029405C(v25, &v15[v16]);
      ++v21;
    }

    v20 = v37;
    v33 = v38;
    *v38 = v47;
    a3 = v36;
    if (v20 != v36)
    {
      v38 = v33 + 1;
      v23 = v20 + 1;
      v22 = v35;
      if (!__OFADD__(v20, 1))
      {
        continue;
      }

      __break(1u);
LABEL_22:
      a1 = v39;
      a3 = v40;
      goto LABEL_24;
    }

    break;
  }

  a1 = v39;
LABEL_24:
  sub_10002C4E4(v15, a1, &qword_100975018, &qword_1007F83C0);
  return a3;
}

uint64_t sub_1002929F0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10000CE2C(&unk_100975170, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10046D564(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100292B8C(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10000CE2C(&qword_10097F100, &type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo, &protocol conformance descriptor for SFAirDropReceive.AskRequest.ItemInfo);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10046D284(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100292D28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10046DAAC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100292DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_100294244();
  result = Set.init(minimumCapacity:)();
  v3 = result;
  if (v1)
  {
    do
    {
      sub_10046F210();
      --v1;
    }

    while (v1);
    return v3;
  }

  return result;
}

uint64_t sub_100292E1C(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_10000CE2C(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint, &unk_1007FBF08);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1002940CC(v11, v6);
      sub_10046DE64(v8, v6);
      sub_100294130(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_100292F84(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10000CE2C(&qword_100975118, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode, &protocol conformance descriptor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10046F8DC(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100293120(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002941F0();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);

      sub_10046FBBC(&v9, v8, v7, v6, v5);

      v4 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t *sub_10029320C(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000276B4(0, a2, a3);
    sub_100027D9C(a4, a2, a3);
    result = Set.init(minimumCapacity:)();
    v15 = result;
    if (v10)
    {
      break;
    }

    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return result;
    }

LABEL_6:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v15;
      a5(&v14, v13);

      a2 = (a2 + 1);
      if (v10 == v12)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  a4 = result;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (v12)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100293364(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v3 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v4 = __chkstk_darwin(v3 - 8);
  v126 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v128 = &v117 - v7;
  __chkstk_darwin(v6);
  v121 = &v117 - v8;
  v127 = type metadata accessor for URL();
  v123 = *(v127 - 8);
  v9 = __chkstk_darwin(v127);
  v124 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v122 = &v117 - v12;
  __chkstk_darwin(v11);
  v136 = &v117 - v13;
  v134 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v14 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = sub_10027FE54(_swiftEmptyArrayStorage);
  v125 = v16;
  *(v16 + 16) = v17;
  v120 = (v16 + 16);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = v17;
    v21 = 0;
    v23 = *(v14 + 16);
    v22 = v14 + 16;
    v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v130 = (v22 - 8);
    v131 = v23;
    v129 = -v19;
    *&v119 = a1 + v24;
    v132 = v22;
    v135 = *(v22 + 56);
    while (1)
    {
      v25 = v119 + v135 * v21++;
      while (1)
      {
        v26 = v133;
        v27 = v134;
        (v131)(v133, v25, v134);
        v28 = SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
        v30 = v29;
        v31 = SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter();
        v33 = v32;
        (*v130)(v26, v27);
        v137 = 0;
        v138 = 0xE000000000000000;
        v34._countAndFlagsBits = v28;
        v34._object = v30;
        String.append(_:)(v34);
        v35._countAndFlagsBits = 47;
        v35._object = 0xE100000000000000;
        String.append(_:)(v35);
        v139 = v31;
        v140 = v33;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v36 = v137;
        v37 = v138;
        if (!v20[2])
        {
          break;
        }

        v38 = sub_100012854(v137, v138);
        if ((v39 & 1) == 0)
        {
          break;
        }

        v40 = *(v20[7] + 8 * v38);

        [v40 incrementCount];

        ++v21;
        v25 += v135;
        if (v129 + v21 == 1)
        {
          goto LABEL_28;
        }
      }

      v41 = String._bridgeToObjectiveC()();
      v42 = v33 ? String._bridgeToObjectiveC()() : 0;
      v43 = v120;
      v44 = [objc_allocWithZone(SFAirDropTransferItem) initWithType:v41 subtype:v42 isFile:1];

      swift_beginAccess();
      if (v44)
      {
        break;
      }

      v55 = sub_100012854(v36, v37);
      v57 = v56;

      if (v57)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *v43;
        v139 = *v43;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002CE33C();
          v20 = v139;
        }

        sub_1002D4100(v55, v20);
        goto LABEL_26;
      }

LABEL_27:
      v65 = (v129 + v21);
      swift_endAccess();

      if (!v65)
      {
        goto LABEL_28;
      }
    }

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v139 = *v43;
    v46 = v139;
    v47 = sub_100012854(v36, v37);
    v49 = v46[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      goto LABEL_64;
    }

    v53 = v48;
    if (v46[3] >= v52)
    {
      if ((v45 & 1) == 0)
      {
        v61 = v47;
        sub_1002CE33C();
        v47 = v61;
        v20 = v139;
        if (v53)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      }
    }

    else
    {
      sub_100571844(v52, v45);
      v47 = sub_100012854(v36, v37);
      if ((v53 & 1) != (v54 & 1))
      {
        goto LABEL_68;
      }
    }

    v20 = v139;
    if (v53)
    {
LABEL_22:
      v59 = v20[7];
      v60 = *(v59 + 8 * v47);
      *(v59 + 8 * v47) = v44;

LABEL_26:
      *v43 = v20;
      goto LABEL_27;
    }

LABEL_24:
    v20[(v47 >> 6) + 8] |= 1 << v47;
    v62 = (v20[6] + 16 * v47);
    *v62 = v36;
    v62[1] = v37;
    *(v20[7] + 8 * v47) = v44;
    v63 = v20[2];
    v51 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (v51)
    {
      goto LABEL_65;
    }

    v20[2] = v64;
    goto LABEL_26;
  }

LABEL_28:
  v66 = *(v118 + 16);
  v67 = v121;
  v68 = v127;
  v69 = v136;
  if (!v66)
  {
LABEL_62:
    swift_beginAccess();

    sub_10028BCD4(v113);
    v115 = v114;

    return v115;
  }

  v70 = *(v123 + 16);
  v71 = v118 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
  v135 = (v123 + 8);
  v131 = (v123 + 48);
  v132 = (v123 + 56);
  v129 = v123 + 32;
  v72 = *(v123 + 72);
  *&v18 = 136315138;
  v119 = v18;
  v123 += 16;
  v133 = v72;
  v134 = v70;
  v70(v136, v71, v127);
  while (1)
  {
    if (URL.isFileURL.getter())
    {
      (*v135)(v69, v68);
      goto LABEL_31;
    }

    v73 = objc_opt_self();
    v74 = [v73 defaultWorkspace];
    if (!v74)
    {
      goto LABEL_66;
    }

    v76 = v74;
    URL._bridgeToObjectiveC()(v75);
    v78 = v77;
    v79 = [v76 applicationsAvailableForOpeningURL:v77];

    if (!v79)
    {
      goto LABEL_43;
    }

    sub_1000276B4(0, &qword_100975168, LSApplicationProxy_ptr);
    v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = v128;
    if (v80 >> 62)
    {
      break;
    }

    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

LABEL_44:
    v87 = [v73 defaultWorkspace];
    if (!v87)
    {
      goto LABEL_67;
    }

    v88 = v87;

    URL._bridgeToObjectiveC()(v89);
    v91 = v90;
    v92 = [v88 URLOverrideForURL:v90];

    if (v92)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

    v94 = v126;
    v70 = v134;
    (*v132)(v81, v93, 1, v68);
    sub_10002C4E4(v81, v67, &unk_100974E00, &qword_1007F8940);
    sub_10000FF90(v67, v94, &unk_100974E00, &qword_1007F8940);
    v95 = (*v131)(v94, 1, v68);
    v69 = v136;
    if (v95 == 1)
    {
      sub_100005508(v94, &unk_100974E00, &qword_1007F8940);
LABEL_53:
      v100 = v124;
      if (qword_100973520 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Logger();
      sub_10000C4AC(v101, qword_100974DE0);
      v70(v100, v69, v68);
      v102 = v100;
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v106 = v137;
        *v105 = v119;
        sub_10000CE2C(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v108;
        v130 = *v135;
        v130(v102, v127);
        v110 = v107;
        v70 = v134;
        v111 = sub_10000C4E4(v110, v109, &v137);
        v68 = v127;

        *(v105 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v103, v104, "Failed to create item SFAirDropTransferItem from url. {url: %s}", v105, 0xCu);
        sub_10000C60C(v106);
        v67 = v121;

        v69 = v136;

        sub_100005508(v67, &unk_100974E00, &qword_1007F8940);
        v130(v69, v68);
      }

      else
      {

        v112 = *v135;
        (*v135)(v102, v68);
        sub_100005508(v67, &unk_100974E00, &qword_1007F8940);
        v112(v69, v68);
      }

      goto LABEL_58;
    }

    v96 = v122;
    (*v129)();
    v97 = URL.scheme.getter();
    if (!v98)
    {
      (*v135)(v96, v68);
      goto LABEL_53;
    }

    sub_10028DF18(v97, v98, 0, 0, 0, v125);

    v99 = *v135;
    v68 = v127;
    (*v135)(v96, v127);
    sub_100005508(v67, &unk_100974E00, &qword_1007F8940);
    v99(v69, v68);
LABEL_58:
    v72 = v133;
LABEL_31:
    v71 += v72;
    if (!--v66)
    {
      goto LABEL_62;
    }

    v70(v69, v71, v68);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_44;
  }

LABEL_38:
  if ((v80 & 0xC000000000000001) != 0)
  {

    v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_41:
    v83 = [v82 bundleIdentifier];

    if (v83)
    {

      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;

      sub_10028DF18(v84, v86, 0, 0, 0, v125);

      v69 = v136;
      (*v135)(v136, v68);
      v70 = v134;
      goto LABEL_58;
    }

LABEL_43:
    v81 = v128;
    goto LABEL_44;
  }

  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v82 = *(v80 + 32);
    goto LABEL_41;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100294008(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10029405C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100975010, &qword_1007F83B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002940CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100294130(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10029418C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002941F0()
{
  result = qword_100975110;
  if (!qword_100975110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975110);
  }

  return result;
}

unint64_t sub_100294244()
{
  result = qword_100975138;
  if (!qword_100975138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975138);
  }

  return result;
}

unint64_t sub_100294298()
{
  result = qword_100975150;
  if (!qword_100975150)
  {
    sub_100280938(&unk_100975620, &qword_1007F89E0);
    sub_10000CE2C(&qword_100975630, type metadata accessor for CFString, &unk_1007F76E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975150);
  }

  return result;
}

uint64_t sub_1002943BC(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for SFItemDestinationAlertViewModel();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v4 = type metadata accessor for SFItemDestinationAlertSettings();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v5 = sub_10028088C(&qword_100975358, &unk_1007F8590);
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002945A8, 0, 0);
}

uint64_t sub_1002945A8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  SFAirDrop.PermissionRequest.style.getter();
  v4 = (*(v2 + 88))(v1, v3);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  if (v4 == enum case for SFAirDrop.PermissionRequest.Style.alert<A>(_:))
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 152);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v37 = *(v0 + 104);
    v36 = *(v0 + 96);
    (*(v5 + 96))(v6, v7);

    v13 = *(sub_10028088C(&qword_100975360, &unk_100801D40) + 80);
    v14 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
    v15 = *(v9 + 104);
    v15(v8, enum case for SFItemDestinationAlertSettings.reply(_:), v10);
    v16 = SFItemDestinationAlertSettings.rawValue.getter();
    v17 = *(v9 + 8);
    v17(v8, v10);
    v15(v8, enum case for SFItemDestinationAlertSettings.chosenActionID(_:), v10);
    v18 = SFItemDestinationAlertSettings.rawValue.getter();
    v17(v8, v10);
    v19 = sub_100011040(_swiftEmptyArrayStorage);
    (*(v12 + 16))(v11, v36, v37);
    SFItemDestinationAlertViewModel.init(permissionRequest:)();
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_100294DF4(&qword_100975368, &type metadata accessor for SFItemDestinationAlertViewModel, &protocol conformance descriptor for SFItemDestinationAlertViewModel);
    v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 200) = v20;
    *(v0 + 208) = v21;
    v26 = v20;
    v27 = v21;

    v28 = static SFItemDestinationAlertSettings.viewModel.getter();
    v30 = v29;
    *(v0 + 40) = &type metadata for Data;
    *(v0 + 16) = v26;
    *(v0 + 24) = v27;
    sub_1000106E0((v0 + 16), (v0 + 48));
    sub_100294008(v26, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100011170((v0 + 48), v28, v30, isUniquelyReferenced_nonNull_native);

    *(v0 + 216) = v19;
    v32 = [objc_allocWithZone(sub_10028088C(&unk_100975370 &unk_1007F85A0))];
    *(v0 + 224) = v32;
    v33 = swift_task_alloc();
    *(v0 + 232) = v33;
    *(v33 + 16) = v32;
    *(v33 + 24) = v18;
    *(v33 + 32) = xmmword_1007F84A0;
    *(v33 + 48) = 0x8000000100789280;
    *(v33 + 56) = 0xD000000000000025;
    *(v33 + 64) = 0x8000000100789250;
    *(v33 + 72) = v19;
    *(v33 + 80) = v16;
    *(v33 + 88) = 0;
    v34 = swift_task_alloc();
    *(v0 + 240) = v34;
    v35 = sub_10028088C(&qword_100975100, &qword_1007FBA10);
    *v34 = v0;
    v34[1] = sub_100294B10;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 80, 0, 0, 0xD00000000000006ALL, 0x80000001007892A0, sub_100294E3C, v33, v35);
  }

  else
  {
    (*(v5 + 8))(*(v0 + 192), v7);
    v22 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100294DF4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v22);
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_100294B10()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100294D0C;
  }

  else
  {
    v4 = *(v2 + 224);

    *(v2 + 256) = *(v2 + 80);
    v3 = sub_100294C4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100294C4C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_100026AC0(v0[25], v0[26]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[32];
  v6 = v0[33];

  return v4(v5, v6);
}

uint64_t sub_100294D0C()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[25];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];

  sub_100026AC0(v3, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100294DF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100294E7C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100975380);
  v1 = sub_10000C4AC(v0, qword_100975380);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100294F44@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10029983C(*a1);
  *a2 = result;
  return result;
}

id sub_100294F7C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  v79 = a3;
  v72 = a2;
  v80 = a1;
  ObjectType = swift_getObjectType();
  v76 = sub_10028088C(&qword_100975408, &qword_1007F87C8);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - v5;
  v82 = type metadata accessor for URLResourceValues();
  v91 = *(v82 - 8);
  __chkstk_darwin(v82);
  v88 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v7 - 8);
  v86 = &v70 - v8;
  v87 = type metadata accessor for URL();
  v89 = *(v87 - 8);
  v9 = __chkstk_darwin(v87);
  v92 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v70 - v11;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v16);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 64) = 0;
  swift_unknownObjectWeakInit();
  v98 = sub_1000276B4(0, &qword_100975438, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.userInitiated.getter();
  v101 = _swiftEmptyArrayStorage;
  sub_10029A684(&qword_100975440, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_10028088C(&qword_100975448, &qword_1007F8810);
  sub_10029A6CC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v13 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  v18 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v4 + 72) = v18;
  v19 = v80;
  *(v4 + 16) = v80;
  v78 = v4;
  *(v4 + 48) = 0x100000;
  v20 = objc_allocWithZone(SDAirDropFileZipper);

  v71 = [v20 initWithQueue:v18 boundStreamSize:0x100000];
  v21 = *(v19 + 16);
  if (v21)
  {
    v93 = 0;
    v97 = *(v89 + 16);
    v83 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v22 = v19 + v83;
    v23 = *(v89 + 72);
    v85 = NSURLIsDirectoryKey;
    v94 = (v89 + 56);
    v95 = (v89 + 8);
    v81 = (v91 + 1);
    v90 = (v89 + 32);
    v91 = (v89 + 48);
    v98 = _swiftEmptyArrayStorage;
    v84 = xmmword_1007F5670;
    v24 = v88;
    v25 = v87;
    v26 = v86;
    v89 += 16;
    v96 = v23;
    v97(v99, v22, v87);
    while (1)
    {
      URL._bridgeToObjectiveC()(v27);
      v31 = v30;
      v32 = CFURLCopyFileSystemPath(v30, kCFURLPOSIXPathStyle);

      if (!v32)
      {
        (*v94)(v26, 1, 1, v25);
        goto LABEL_19;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = String.utf8CString.getter();

      v34 = realpath_DARWIN_EXTSN((v33 + 32), 0);

      if (!v34)
      {
        break;
      }

      String.init(cString:)();
      free(v34);
      v35 = String.utf8CString.getter();
      v88 = strlen((v35 + 32));

      sub_10028088C(&qword_100976C30, &qword_1007F8818);
      inited = swift_initStackObject();
      *(inited + 16) = v84;
      v37 = v85;
      *(inited + 32) = v85;
      v38 = v37;
      sub_1002F13BC(inited);
      swift_setDeallocating();
      sub_10029A730(inited + 32);
      v39 = v99;
      v40 = v93;
      URL.resourceValues(forKeys:)();
      if (v40)
      {

        v25 = v87;
        (*v95)(v39, v87);
        v26 = v86;
        (*v94)(v86, 1, 1, v25);
        v93 = 0;
        v28 = v39;
LABEL_4:
        sub_100005508(v26, &unk_100974E00, &qword_1007F8940);
        v29 = v96;
        goto LABEL_5;
      }

      v41 = URLResourceValues.isDirectory.getter();
      (*v81)(v24, v82);
      v42 = v41 != 2 && (v41 & 1) != 0;
      v25 = v87;
      v93 = 0;
      v43 = String.utf8CString.getter();

      v44 = CFURLCreateFromFileSystemRepresentation(0, (v43 + 32), v88, v42);

      if (!v44)
      {
        v26 = v86;
        (*v94)(v86, 1, 1, v25);
        goto LABEL_15;
      }

      v26 = v86;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*v94)(v26, 0, 1, v25);
LABEL_19:
      v28 = v99;
      (*v95)(v99, v25);
      if ((*v91)(v26, 1, v25) == 1)
      {
        goto LABEL_4;
      }

      v45 = *v90;
      (*v90)(v92, v26, v25);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v46 = v98;
      }

      else
      {
        v46 = sub_10028E2D4(0, v98[2] + 1, 1, v98);
      }

      v48 = v46[2];
      v47 = v46[3];
      if (v48 >= v47 >> 1)
      {
        v46 = sub_10028E2D4((v47 > 1), v48 + 1, 1, v46);
      }

      v46[2] = v48 + 1;
      v98 = v46;
      v29 = v96;
      v45(v46 + v83 + v48 * v96, v92, v25);
      v28 = v99;
LABEL_5:
      v22 += v29;
      if (!--v21)
      {

        goto LABEL_29;
      }

      v97(v28, v22, v25);
    }

    (*v94)(v26, 1, 1, v25);
LABEL_15:

    goto LABEL_19;
  }

  v98 = _swiftEmptyArrayStorage;
LABEL_29:
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000C4AC(v49, qword_100975380);
  v50 = v98;

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v101 = v54;
    *v53 = 136315138;
    v55 = Array.description.getter();
    v57 = sub_10000C4E4(v55, v56, &v101);

    *(v53 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v51, v52, "Passing real URLS to zipper %s", v53, 0xCu);
    sub_10000C60C(v54);
  }

  v58 = ObjectType;
  v59 = v73;
  v60 = v72;
  sub_100467F54(v50);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v62 = v71;
  [v71 setSourceFiles:isa];

  [v62 setUseZip:v60 & 1];
  v63 = sub_1002929F0(v50);

  sub_100295C7C(v63);

  v64 = Set._bridgeToObjectiveC()().super.isa;

  [v62 setSkipReadableCheckFiles:v64];

  [v62 setDisableAdaptiveCompressionForZipping:0];
  [v62 setShouldExtractMediaFromPhotosBundles:1];
  v65 = v78;
  v78[3] = v62;
  v65[8] = v59;
  swift_unknownObjectWeakAssign();
  v66 = v62;
  v67 = v74;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v75 + 32))(v65 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter_compressionStartedContinuation, v67, v76);
  v100.receiver = v65;
  v100.super_class = v58;
  v68 = objc_msgSendSuper2(&v100, "init");
  [v66 setDelegate:v68];

  swift_unknownObjectRelease();
  return v68;
}

Swift::Int sub_100295C7C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v31 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v30 - v6;
  v32 = a1;
  if (*(a1 + 16))
  {
    sub_10028088C(&unk_100975460, &qword_1007F8820);
    v8 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  v9 = v32 + 56;
  v10 = 1 << *(v32 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v32 + 56);
  v13 = (v10 + 63) >> 6;
  v30[1] = v3 + 32;
  v30[2] = v3 + 16;
  v14 = (v8 + 7);

  v16 = 0;
  while (v12)
  {
LABEL_15:
    v22 = v31;
    (*(v3 + 16))(v31, *(v32 + 48) + *(v3 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v2);
    (*(v3 + 32))(v7, v22, v2);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v8[5]);
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*&v14[8 * (v24 >> 6)]) == 0)
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      while (++v25 != v27 || (v26 & 1) == 0)
      {
        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *&v14[8 * v25];
        if (v29 != -1)
        {
          v17 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v24) & ~*&v14[8 * (v24 >> 6)])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v14[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    v12 &= v12 - 1;
    v18 = v8[6] + 40 * v17;
    v19 = v33;
    v20 = v34;
    *(v18 + 32) = v35;
    *v18 = v19;
    *(v18 + 16) = v20;
    ++v8[2];
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v21);
    ++v16;
    if (v12)
    {
      v16 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100295F98()
{
  *(v1 + 16) = v0;
  swift_getObjectType();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter, &unk_1007F8748);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100296050, v3, v2);
}

uint64_t sub_100296050()
{
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975380);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Send Compression Adapter", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 24);
  [v6 zip];
  v7 = [v6 copyReadStream];
  v8 = *(v5 + 32);
  *(v5 + 32) = v7;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100296198()
{
  *(v1 + 16) = v0;
  swift_getObjectType();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter, &unk_1007F8748);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100296250, v3, v2);
}

uint64_t sub_100296250()
{
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975380);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stopping Send Compression Adapter", v4, 2u);
  }

  v5 = *(v0 + 16);

  [*(v5 + 24) stop];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1002963B0;

  return sub_1002964A4();
}

uint64_t sub_1002963B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002964A4()
{
  *(v1 + 16) = v0;
  swift_getObjectType();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter, &unk_1007F8748);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10029655C, v3, v2);
}

uint64_t sub_10029655C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v2;
    if ([v3 streamStatus] != 6)
    {
      [v3 close];

      v3 = *(v1 + 32);
      *(v1 + 32) = 0;
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002965FC()
{
  v1[2] = v0;
  swift_getObjectType();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter, &unk_1007F8748);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[3] = v2;
  v1[4] = v3;

  return _swift_task_switch(sub_1002966E8, v2, v3);
}

uint64_t sub_1002966E8()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 41))
  {
    if (qword_100973528 != -1)
    {
LABEL_47:
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100975380);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_11;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Zipper not ready to send compressed data";
    goto LABEL_10;
  }

  if (*(v1 + 40))
  {
    if (qword_100973528 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100975380);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_11;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Adapter already sending compressed data";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_11:

    v8 = *(v0 + 8);
LABEL_12:

    return v8();
  }

  v10 = *(v1 + 32);
  *(v0 + 40) = v10;
  if (!v10)
  {
    v30 = type metadata accessor for SFAirDropSend.Failure();
    sub_10029A684(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, enum case for SFAirDropSend.Failure.streamError(_:), v30);
    swift_willThrow();
    v8 = *(v0 + 8);
    goto LABEL_12;
  }

  *(v1 + 40) = 1;
  v11 = qword_100973528;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  *(v0 + 48) = sub_10000C4AC(v13, qword_100975380);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Send compression adapter compressing data", v16, 2u);
  }

  *(v0 + 56) = swift_slowAlloc();
  [v12 open];
  v17 = 0;
  *&v18 = 134217984;
  v43 = v18;
  while (([*(v0 + 40) hasBytesAvailable] & 1) != 0 || *(*(v0 + 16) + 41) != 3)
  {
    v19 = [*(v0 + 40) read:*(v0 + 56) maxLength:0x100000];
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = v43;
      *(v22 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Reading compressed data %ld", v22, 0xCu);
    }

    if (v19 <= 0)
    {
      break;
    }

    v23 = __OFADD__(v17, v19);
    v17 += v19;
    *(v0 + 64) = v17;
    if (v23)
    {
      __break(1u);
      goto LABEL_47;
    }

    v24 = *(v0 + 56);
    if (v19 <= 0xE)
    {
      *(v0 + 158) = 0;
      *(v0 + 152) = 0;
      *(v0 + 166) = v19;
      memcpy((v0 + 152), v24, v19);
      v27 = *(v0 + 152);
      v15 = v15 & 0xF00000000000000 | *(v0 + 160) | ((*(v0 + 164) | (*(v0 + 166) << 16)) << 32);
      v28 = v15;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v25 = __DataStorage.init(bytes:length:)();
      v26 = v25;
      if (v19 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v27 = swift_allocObject();
        *(v27 + 16) = 0;
        *(v27 + 24) = v19;
        v28 = v26 | 0x8000000000000000;
      }

      else
      {
        v27 = v19 << 32;
        v28 = v25 | 0x4000000000000000;
      }
    }

    *(v0 + 80) = v27;
    *(v0 + 88) = v28;
    *(v0 + 72) = v15;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 96) = Strong;
    if (Strong)
    {
      v38 = swift_task_alloc();
      *(v0 + 104) = v38;
      *v38 = v0;
      v38[1] = sub_100296E9C;
      v34 = v27;
      v35 = v28;
      v36 = v17;
      v37 = 0;
      goto LABEL_38;
    }

    sub_100026AC0(v27, v28);
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = v32;
  if (v32)
  {
    v33 = swift_task_alloc();
    *(v0 + 128) = v33;
    *v33 = v0;
    v33[1] = sub_100297508;
    v34 = 0;
    v35 = 0xC000000000000000;
    v36 = v17;
    v37 = 1;
LABEL_38:

    return sub_10030A980(v34, v35, v36, v37);
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Finished reading compressed data", v41, 2u);
  }

  v42 = swift_task_alloc();
  *(v0 + 144) = v42;
  *v42 = v0;
  v42[1] = sub_100297858;

  return sub_1002964A4();
}

uint64_t sub_100296E9C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_100297470;
  }

  else
  {
    v5 = sub_10029701C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10029701C()
{
  sub_100026AC0(*(v0 + 80), *(v0 + 88));
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  *&v3 = 134217984;
  v27 = v3;
  while (([*(v0 + 40) hasBytesAvailable] & 1) != 0 || *(*(v0 + 16) + 41) != 3)
  {
    v4 = [*(v0 + 40) read:*(v0 + 56) maxLength:0x100000];
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = v27;
      *(v7 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "Reading compressed data %ld", v7, 0xCu);
    }

    if (v4 <= 0)
    {
      break;
    }

    v8 = __OFADD__(v1, v4);
    v1 += v4;
    *(v0 + 64) = v1;
    if (v8)
    {
      __break(1u);
    }

    v9 = *(v0 + 56);
    if (v4 <= 0xE)
    {
      *(v0 + 158) = 0;
      *(v0 + 152) = 0;
      *(v0 + 166) = v4;
      memcpy((v0 + 152), v9, v4);
      v12 = *(v0 + 152);
      v2 = v2 & 0xF00000000000000 | *(v0 + 160) | ((*(v0 + 164) | (*(v0 + 166) << 16)) << 32);
      v13 = v2;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v10 = __DataStorage.init(bytes:length:)();
      v11 = v10;
      if (v4 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        *(v12 + 24) = v4;
        v13 = v11 | 0x8000000000000000;
      }

      else
      {
        v12 = v4 << 32;
        v13 = v10 | 0x4000000000000000;
      }
    }

    *(v0 + 80) = v12;
    *(v0 + 88) = v13;
    *(v0 + 72) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 96) = Strong;
    if (Strong)
    {
      v21 = swift_task_alloc();
      *(v0 + 104) = v21;
      *v21 = v0;
      v21[1] = sub_100296E9C;
      v17 = v12;
      v18 = v13;
      v19 = v1;
      v20 = 0;
      goto LABEL_18;
    }

    sub_100026AC0(v12, v13);
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = v15;
  if (v15)
  {
    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_100297508;
    v17 = 0;
    v18 = 0xC000000000000000;
    v19 = v1;
    v20 = 1;
LABEL_18:

    return sub_10030A980(v17, v18, v19, v20);
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Finished reading compressed data", v25, 2u);
  }

  v26 = swift_task_alloc();
  *(v0 + 144) = v26;
  *v26 = v0;
  v26[1] = sub_100297858;

  return sub_1002964A4();
}

uint64_t sub_100297470()
{
  v1 = v0[5];
  sub_100026AC0(v0[10], v0[11]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100297508()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_1002977C8;
  }

  else
  {
    v5 = sub_100297694;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100297694(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished reading compressed data", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 144) = v5;
  *v5 = v1;
  v5[1] = sub_100297858;

  return sub_1002964A4();
}

uint64_t sub_1002977C8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100297858()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_1002979AC, v3, v2);
}

uint64_t sub_1002979AC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100297A4C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  swift_getObjectType();
  v3 = sub_10028088C(&qword_100975408, &qword_1007F87C8);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter, &unk_1007F8748);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v5;
  v2[9] = v4;

  return _swift_task_switch(sub_100297B6C, v5, v4);
}

uint64_t sub_100297B6C()
{
  v1 = v0[4];
  *(v1 + 41) = 1;
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100975380);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 41);

    _os_log_impl(&_mh_execute_header, v3, v4, "Zipper State Update: %ld", v5, 0xCu);
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v7 = [*(v0[4] + 24) zipCompressionType];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_10029984C();
    v10 = v9;

    v0[11] = v10;
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_100297E58;
    v12 = v0[3];

    return sub_10030B820(v12, v8, v10);
  }

  else
  {
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];
    v17 = v0[3];
    (*(v15 + 16))(v14, v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter_compressionStartedContinuation, v16);
    v0[2] = v17;
    SFProgressContinuation.finish(with:)();
    (*(v15 + 8))(v14, v16);
    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = sub_1002980E4;

    return sub_1002965FC();
  }
}

uint64_t sub_100297E58()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    swift_unknownObjectRelease();

    v6 = *(v2 + 64);
    v7 = *(v2 + 72);

    return _swift_task_switch(sub_100297FF0, v6, v7);
  }
}

uint64_t sub_100297FF0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  (*(v2 + 16))(v1, v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter_compressionStartedContinuation, v3);
  v0[2] = v4;
  SFProgressContinuation.finish(with:)();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1002980E4;

  return sub_1002965FC();
}

uint64_t sub_1002980E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002981FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  swift_getObjectType();
  v5 = type metadata accessor for SFAirDrop.Progress();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_10028088C(&unk_100975428, &qword_1007F87E8);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100975408, &qword_1007F87C8);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter, &unk_1007F8748);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v9;
  v4[17] = v8;

  return _swift_task_switch(sub_1002983E4, v9, v8);
}

uint64_t sub_1002983E4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v2 + 16))(v1, v0[6] + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter_compressionStartedContinuation, v3);
  SFProgressContinuation.task.getter();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1002984E4;
  v5 = v0[10];

  return SFProgressTask.finalValue.getter(v0 + 2, v5);
}

uint64_t sub_1002984E4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_100298A4C;
  }

  else
  {
    v8 = sub_10029867C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10029867C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *(v1 + 41) = 2;
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100975380);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v1 + 41);

    _os_log_impl(&_mh_execute_header, v4, v5, "Zipper State Update: %ld", v6, 0xCu);
  }

  else
  {
  }

  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 32);
  *v7 = *(v0 + 24);
  *(v7 + 8) = v2;
  *(v7 + 16) = 0;
  *(v7 + 24) = v9;
  (*(v8 + 104))();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100309D50(*(v0 + 72));
    swift_unknownObjectRelease();
  }

  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = sub_100298870;

  return sub_1002965FC();
}

uint64_t sub_100298870()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100298AD0;
  }

  else
  {
    v5 = sub_1002989AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002989AC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100298A4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100298AD0()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100298B6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  swift_getObjectType();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter, &unk_1007F8748);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[4] = v4;
  v2[5] = v3;

  return _swift_task_switch(sub_100298C24, v4, v3);
}

uint64_t sub_100298C24()
{
  v1 = v0[3];
  *(v1 + 41) = 3;
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100975380);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 41);

    _os_log_impl(&_mh_execute_header, v3, v4, "Zipper State Update: %ld", v5, 0xCu);
  }

  else
  {
  }

  if (v0[2])
  {
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Compression failed with error: %@", v8, 0xCu);
      sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
    }

    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_100298F68;

    return sub_1002964A4();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Compression finished", v15, 2u);
    }

    v16 = swift_task_alloc();
    v0[7] = v16;
    *v16 = v0;
    v16[1] = sub_100299120;

    return sub_1002965FC();
  }
}

uint64_t sub_100298F68()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100299088, v3, v2);
}

uint64_t sub_100299088()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10030A0C8(*(v0 + 16));

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100299120()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100299214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C00;

  return sub_100297A4C(a5);
}

uint64_t sub_1002992B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100005C04;

  return sub_1002981FC(a5, a6, a7);
}

uint64_t sub_100299364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_100298B6C(0);
}

uint64_t sub_1002993F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C00;

  return sub_100298B6C(a5);
}

uint64_t sub_10029953C()
{

  sub_10004C60C((v0 + 7));
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter_compressionStartedContinuation;
  v2 = sub_10028088C(&qword_100975408, &qword_1007F87C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropSendCompressionAdapter(uint64_t a1)
{
  result = qword_1009753C8;
  if (!qword_1009753C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100299670(uint64_t a1)
{
  sub_100299754();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100299754()
{
  if (!qword_1009753D8)
  {
    v0 = type metadata accessor for SFProgressContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1009753D8);
    }
  }
}

unint64_t sub_1002997C4()
{
  result = qword_1009753E0;
  if (!qword_1009753E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009753E0);
  }

  return result;
}

unint64_t sub_10029983C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

const __CFString *sub_10029984C()
{
  v0 = String._bridgeToObjectiveC()();
  if (!@"pkzip")
  {
LABEL_5:
    v4 = v0;
    goto LABEL_6;
  }

  type metadata accessor for CFString(0);
  sub_10029A684(&qword_100975420, type metadata accessor for CFString, &unk_1007F7728);
  v1 = v0;
  v2 = @"pkzip";
  v3 = static _CFObject.== infix(_:_:)();

  if (v3)
  {

    if (@"application/zip")
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  if (@"gzip")
  {
    type metadata accessor for CFString(0);
    sub_10029A684(&qword_100975420, type metadata accessor for CFString, &unk_1007F7728);
    v5 = v0;
    v6 = @"gzip";
    v7 = static _CFObject.== infix(_:_:)();

    if (v7)
    {

      if (@"application/x-cpio")
      {
        goto LABEL_16;
      }

      __break(1u);
    }
  }

  if (@"dvzip")
  {
    type metadata accessor for CFString(0);
    sub_10029A684(&qword_100975420, type metadata accessor for CFString, &unk_1007F7728);
    v8 = v0;
    v9 = @"dvzip";
    v10 = static _CFObject.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!@"application/x-dvzip")
    {
      __break(1u);
      goto LABEL_14;
    }

LABEL_16:
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v12;
  }

LABEL_14:

LABEL_15:
  result = @"application/x-cpio";
  if (@"application/x-cpio")
  {
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100299A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = v35 - v7;
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000C4AC(v9, qword_100975380);
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v35[1] = v10;
    v14 = v8;
    v15 = v3;
    v16 = v13;
    v17 = swift_slowAlloc();
    v36[0] = v17;
    *v16 = 136315138;
    v38 = a2;
    swift_unknownObjectRetain();
    v18 = String.init<A>(describing:)();
    v20 = sub_10000C4E4(v18, v19, v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Zipper Update: %s", v16, 0xCu);
    sub_10000C60C(v17);

    v3 = v15;
    v8 = v14;
  }

  if (a1 <= 8)
  {
    if (a1 == 5)
    {
      ObjectType = swift_getObjectType();
      v36[0] = a2;
      sub_1000276B4(0, &qword_100974E20, NSDictionary_ptr);
      swift_unknownObjectRetain();
      tryCast<A>(_:as:description:file:line:)();
      sub_10000C60C(v36);
      if (kSFOperationTotalBytesKey)
      {
        v21 = v38;
        NSDictionary.sf_value<A>(_:as:file:line:)();
        v29 = v36[0];
        v30 = type metadata accessor for TaskPriority();
        (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
        v33 = swift_allocObject();
        v33[2] = 0;
        v33[3] = 0;
        v33[4] = v3;
        v33[5] = v29;

        v34 = &unk_1007F87B8;
        goto LABEL_21;
      }
    }

    else
    {
      if (a1 != 7)
      {
        return;
      }

      ObjectType = swift_getObjectType();
      v36[0] = a2;
      sub_1000276B4(0, &qword_100974E20, NSDictionary_ptr);
      swift_unknownObjectRetain();
      tryCast<A>(_:as:description:file:line:)();
      sub_10000C60C(v36);
      if (kSFOperationBytesCopiedKey)
      {
        v21 = v38;
        NSDictionary.sf_value<A>(_:as:file:line:)();
        if (kSFOperationFilesCopiedKey)
        {
          v22 = v36[0];
          NSDictionary.sf_value<A>(_:as:file:line:)();
          if (kSFOperationTimeRemainingKey)
          {
            v23 = v36[0];
            NSDictionary.sf_value<A>(_:as:file:line:)();
            v31 = v36[0];
            v32 = type metadata accessor for TaskPriority();
            (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
            v33 = swift_allocObject();
            v33[2] = 0;
            v33[3] = 0;
            v33[4] = v3;
            v33[5] = v23;
            v33[6] = v22;
            v33[7] = v31;

            v34 = &unk_1007F87A8;
LABEL_21:
            sub_1002B281C(0, 0, v8, v34, v33);

            goto LABEL_19;
          }

LABEL_25:
          __break(1u);
          return;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if (a1 == 9)
  {
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v3;

    v28 = &unk_1007F8790;
  }

  else
  {
    if (a1 != 10)
    {
      return;
    }

    ObjectType = swift_getObjectType();
    v36[0] = a2;
    sub_1000276B4(0, &qword_1009753F0, NSError_ptr);
    swift_unknownObjectRetain();
    tryCast<A>(_:as:description:file:line:)();
    sub_10000C60C(v36);
    v25 = v38;
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v3;
    v27[5] = v25;

    v28 = &unk_1007F8780;
  }

  sub_1002B281C(0, 0, v8, v28, v27);
LABEL_19:
}

uint64_t sub_10029A330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002993F8(a1, v4, v5, v7, v6);
}

uint64_t sub_10029A3F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_100299364();
}

uint64_t sub_10029A4A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_1002992B0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10029A578(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_10029A5C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100299214(a1, v4, v5, v7, v6);
}

uint64_t sub_10029A684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10029A6CC()
{
  result = qword_100975450;
  if (!qword_100975450)
  {
    sub_100280938(&qword_100975448, &qword_1007F8810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975450);
  }

  return result;
}

uint64_t sub_10029A730(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10029A78C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100975470);
  v1 = sub_10000C4AC(v0, qword_100975470);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10029A854(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v65 = a7;
  v70 = a6;
  v64 = a5;
  v69 = a4;
  v71 = a3;
  v62 = a2;
  v72 = a1;
  ObjectType = swift_getObjectType();
  v67 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = v57 - v9;
  v61 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v13 = &v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestination;
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(&v7[v14], 1, 1, v15);
  v16 = &v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes] = 0;
  *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkInputStream] = 0;
  *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream] = 0;
  *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_adapterBufferSize] = 3145728;
  v17 = &v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate];
  *(v17 + 1) = 0;
  swift_unknownObjectWeakInit();
  v18 = &v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_receiveServiceDelegate];
  *(v18 + 1) = 0;
  swift_unknownObjectWeakInit();
  v58 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_queue;
  v57[1] = sub_1000276B4(0, &qword_100975438, OS_dispatch_queue_serial_ptr);
  v57[0] = "v16@?0r^{__CFDictionary=}8";
  static DispatchQoS.userInitiated.getter();
  v19 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002A520C(&qword_100975440, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_10028088C(&qword_100975448, &qword_1007F8810);
  sub_10029A6CC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v60 + 104))(v59, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v61);
  v20 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v8[v58] = v20;
  *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask] = 0;
  *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipperFinishedTimeout] = 5;
  v21 = v72;
  sub_1002A5628(v72, &v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_askRequest]);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_receiveID;
  v23 = type metadata accessor for UUID();
  v60 = *(v23 - 8);
  (*(v60 + 16))(&v8[v22], v71, v23);
  *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalReceivedBytes] = 0;
  v24 = objc_allocWithZone(SDAirDropFileZipper);
  v25 = [v24 initWithQueue:v20 boundStreamSize:v62];
  *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper] = v25;
  *(v17 + 1) = v64;
  swift_unknownObjectWeakAssign();
  *(v18 + 1) = v65;
  swift_unknownObjectWeakAssign();
  v26 = v63;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v66 + 32))(&v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_decompressionStartedContinuation], v26, v67);
  v74.receiver = v8;
  v74.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v74, "init");
  v28 = (v27 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
  *v28 = 0;
  v28[1] = 0;
  swift_unknownObjectRelease();
  v67 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper;
  v29 = *(v27 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper);
  v30 = _s10AskRequestVMa(0);
  v31 = v29;
  v32 = String._bridgeToObjectiveC()();
  [v31 setSenderName:v32];

  v33 = *(v21 + *(v30 + 48));
  v61 = v23;
  ObjectType = v27;
  if (v33 && (v34 = *(v33 + 16)) != 0)
  {
    v35 = 0;
    v36 = v33 + 32;
    while (v35 < *(v33 + 16))
    {
      v37 = *(v36 + 16);
      v75[0] = *v36;
      v75[1] = v37;
      v38 = *(v36 + 32);
      v39 = *(v36 + 48);
      v40 = *(v36 + 64);
      v76 = *(v36 + 80);
      v75[3] = v39;
      v75[4] = v40;
      v75[2] = v38;
      sub_1002A56F0(v75, aBlock);
      v41 = v77;
      v42 = sub_100671374();
      if (v41)
      {
        (*(v60 + 8))(v71, v61);

        swift_unknownObjectRelease();
        sub_1002A574C(v75);

        goto LABEL_15;
      }

      v43 = v42;
      sub_1002A574C(v75);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_10028E2FC(0, v19[2] + 1, 1, v19);
      }

      v46 = v19[2];
      v45 = v19[3];
      if (v46 >= v45 >> 1)
      {
        v19 = sub_10028E2FC((v45 > 1), v46 + 1, 1, v19);
      }

      ++v35;
      v19[2] = v46 + 1;
      v19[v46 + 4] = v43;
      v36 += 88;
      if (v34 == v35)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    if (v19[2])
    {
      v47 = ObjectType;
      v48 = v67;
      v49 = *(ObjectType + v67);
      sub_1004680EC(v19);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v51 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1002A568C;
      aBlock[5] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10029B760;
      aBlock[3] = &unk_1008D92A8;
      v52 = _Block_copy(aBlock);
      v53 = v47;

      [v49 setPlaceholderFiles:isa withCreationCompletionHandler:v52];
      _Block_release(v52);

      v54 = *(v47 + v48);
      [v54 setDelegate:v53];

      swift_unknownObjectRelease();
      (*(v60 + 8))(v71, v61);
      sub_1002A5694(v72);
    }

    else
    {

      v55 = type metadata accessor for SFAirDropReceive.Failure();
      sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v55 - 8) + 104))(v56, enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:), v55);
      swift_willThrow();

      swift_unknownObjectRelease();
      (*(v60 + 8))(v71, v61);
LABEL_15:
      sub_1002A5694(v72);
    }
  }
}

uint64_t sub_10029B2FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100975470);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v7, v8, "Created %ld placeholder files", v9, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_10029B52C(a1);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v11;
    v15[5] = v13;
    sub_1002B281C(0, 0, v5, &unk_1007F8980, v15);
  }

  return result;
}

unint64_t *sub_10029B52C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_10028FB9C(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000C5B0(i, v9);
      sub_10028088C(&qword_100974F08, &unk_1007F8990);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10028FB9C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10029B654(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10000C5B0(i, v5);
    sub_1000276B4(0, &unk_100975600, _CDInteraction_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_10029B760(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10029B7D4(uint64_t a1, char a2)
{
  *(v3 + 360) = a2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v2;
  swift_getObjectType();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v4 = type metadata accessor for URL();
  *(v3 + 248) = v4;
  *(v3 + 256) = *(v4 - 8);
  *(v3 + 264) = swift_task_alloc();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 272) = v5;
  *(v3 + 280) = v6;

  return _swift_task_switch(sub_10029B964, v5, v6);
}

uint64_t sub_10029B964()
{
  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975470);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Receive Compression Adapter", v4, 2u);
  }

  v5 = v0[28];

  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkInputStream;
  swift_beginAccess();
  if (*(v5 + v6) || (v7 = v0[28], v8 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream, swift_beginAccess(), *(v7 + v8)))
  {
    v9 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for SFAirDropReceive.Failure.streamError(_:), v9);
    swift_willThrow();
LABEL_8:

    v11 = v0[1];

    return v11();
  }

  v13 = objc_opt_self();
  swift_beginAccess();
  v0[25] = 0;
  swift_beginAccess();
  v0[26] = 0;
  [v13 getBoundStreamsWithBufferSize:3145728 inputStream:v0 + 25 outputStream:v0 + 26];
  v14 = v0[26];
  v0[36] = v14;
  *(v7 + v8) = v14;
  swift_endAccess();
  v15 = v0[25];
  v0[37] = v15;
  *(v5 + v6) = v15;
  swift_endAccess();
  if (!v15 || !v14)
  {
    v21 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for SFAirDropReceive.Failure.streamError(_:), v21);
    swift_willThrow();
    v23 = v14;
    v24 = v15;
    goto LABEL_8;
  }

  v16 = qword_1009735E0;
  v17 = v14;
  v18 = v15;
  v19 = v17;
  if (v16 != -1)
  {
    swift_once();
  }

  v20 = static AirDropActor.shared;

  return _swift_task_switch(sub_10029BD98, v20, 0);
}

uint64_t sub_10029BD98()
{
  v1 = type metadata accessor for SDAirDropDownloadDestinationProvideriOS();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = &off_1008D8778;
  v0[2] = v2;
  v3 = v0[34];
  v4 = v0[35];

  return _swift_task_switch(sub_10029BE48, v3, v4);
}

uint64_t sub_10029BE48()
{
  v1 = *(v0 + 224);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider;
  *(v0 + 304) = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider;
  v3 = v1 + v2;
  swift_beginAccess();
  sub_10000C788(v0 + 16, v3, &qword_100975598, &qword_1007F8930);
  swift_endAccess();
  if (*(v3 + 24))
  {
    v4 = *(v0 + 272);
    v5 = *(v0 + 280);

    return _swift_task_switch(sub_10029C078, v4, v5);
  }

  else
  {
    v6 = *(v0 + 240);
    (*(*(v0 + 256) + 56))(v6, 1, 1, *(v0 + 248));
    sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
    v7 = type metadata accessor for SFAirDropSend.Failure();
    sub_1002A520C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for SFAirDropSend.Failure.missingDownloadDirectory(_:), v7);
    swift_willThrow();
    v9 = *(v0 + 288);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10029C078()
{
  v1 = *(v0 + 224);
  v2 = (v1 + *(v0 + 304));
  v3 = v2[3];
  if (v3)
  {
    sub_10002CDC0(v2, v3);
    v4 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_receiveID;
    v5 = swift_task_alloc();
    *(v0 + 312) = v5;
    *v5 = v0;
    v5[1] = sub_10029C2B4;
    v6 = *(v0 + 240);

    return sub_10027D7A0(v6, v1 + v4);
  }

  else
  {
    v8 = *(v0 + 240);
    (*(*(v0 + 256) + 56))(v8, 1, 1, *(v0 + 248));
    sub_100005508(v8, &unk_100974E00, &qword_1007F8940);
    v9 = type metadata accessor for SFAirDropSend.Failure();
    sub_1002A520C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for SFAirDropSend.Failure.missingDownloadDirectory(_:), v9);
    swift_willThrow();
    v11 = *(v0 + 288);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10029C2B4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_10029C750;
  }

  else
  {
    v5 = sub_10029C41C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10029C41C()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = *(v2 + 56);
  v8(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  (*(v2 + 16))(v5, v1, v3);
  v8(v5, 0, 1, v3);
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestination;
  swift_beginAccess();
  sub_10000C788(v5, v6 + v9, &unk_100974E00, &qword_1007F8940);
  swift_endAccess();
  v10 = _s13UploadRequestVMa(0);
  v0[41] = v10;
  v11 = *(v7 + *(v10 + 20));
  v0[42] = v11;
  v12 = swift_task_alloc();
  v0[43] = v12;
  *v12 = v0;
  v12[1] = sub_10029C5E8;
  v13 = v0[33];

  return sub_10029CAD0(v13, v11);
}

uint64_t sub_10029C5E8()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_10029C9F0;
  }

  else
  {
    v5 = sub_10029C808;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10029C750()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10029C808()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v16 = *(v0 + 248);
  v15 = *(v0 + 360);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  *(&v6->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes) = *(v0 + 336);
  v8 = *(&v6->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper);
  URL._bridgeToObjectiveC()(v6);
  v10 = v9;
  [v8 setDestination:v9];

  [v8 setReadStream:v2];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v8 setTotalBytes:isa];

  sub_1002A52CC(*(v7 + *(v1 + 24)), *(v7 + *(v1 + 24) + 8));
  v12 = String._bridgeToObjectiveC()();

  [v8 setUnzipCompressionType:v12];

  [v8 setShouldExtractMediaFromPhotosBundles:v15];
  [v3 open];
  [v8 unzip];

  (*(v5 + 8))(v4, v16);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10029C9F0()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10029CAD0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  swift_getObjectType();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10029CB8C, v5, v4);
}

uint64_t sub_10029CB8C()
{
  v1 = *(v0 + 24);
  if (v1 < 1)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100975470);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "UPLOAD invalid total bytes";
      goto LABEL_12;
    }
  }

  else
  {
    URL._bridgeToObjectiveC()(v1);
    v3 = v2;
    v4 = sub_1001EAEEC(v2, 0);

    if (v4)
    {
      static Int64._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_100975470);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Unable to get available storage";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10029D004()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10029D0F8()
{
  v1[13] = v0;
  swift_getObjectType();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_10029D1B0, v3, v2);
}

uint64_t sub_10029D1B0()
{
  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975470);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stopping Receive Compression Adapter", v4, 2u);
  }

  v5 = *(v0 + 104);

  [*(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper) stop];
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_10029D318;

  return sub_10029DA7C();
}

uint64_t sub_10029D318()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10029D438, v3, v2);
}

uint64_t sub_10029D438()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider;
  *(v0 + 136) = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider;
  v3 = v1 + v2;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 112);
    v5 = *(v0 + 120);

    return _swift_task_switch(sub_10029D6AC, v4, v5);
  }

  else
  {
    v6 = *(v0 + 104);
    v7 = v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter;
    v8 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
    *(v0 + 144) = v8;
    if (v8)
    {
      v9 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 24);
      swift_unknownObjectRetain();
      v16 = (v11 + *v11);
      v12 = swift_task_alloc();
      *(v0 + 152) = v12;
      *v12 = v0;
      v12[1] = sub_10029D884;

      return v16(ObjectType, v9);
    }

    else
    {
      v13 = *(v0 + 136);
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      swift_beginAccess();
      sub_10000C788(v0 + 16, v6 + v13, &qword_100975598, &qword_1007F8930);
      swift_endAccess();
      v14 = *(v0 + 8);

      return v14();
    }
  }
}

uint64_t sub_10029D6AC()
{
  v1 = *(v0 + 104);
  v2 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter;
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
  *(v0 + 144) = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    swift_unknownObjectRetain();
    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_10029D884;

    return v11(ObjectType, v4);
  }

  else
  {
    v9 = *(v0 + 136);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    swift_beginAccess();
    sub_10000C788(v0 + 16, v1 + v9, &qword_100975598, &qword_1007F8930);
    swift_endAccess();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10029D884()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10029D9C8, v3, v2);
}

uint64_t sub_10029D9C8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_beginAccess();
  sub_10000C788(v0 + 16, v2 + v1, &qword_100975598, &qword_1007F8930);
  swift_endAccess();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10029DA7C()
{
  *(v1 + 64) = v0;
  swift_getObjectType();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10029DB34, v3, v2);
}

uint64_t sub_10029DB34()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    if ([v4 streamStatus] != 6 && objc_msgSend(v4, "streamStatus") != 7)
    {
      if (qword_100973530 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_100975470);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Closing output stream", v8, 2u);
      }

      [v4 close];
      v4 = *(v1 + v2);
      *(v1 + v2) = 0;
    }
  }

  v9 = *(v0 + 64);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkInputStream;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (v11)
  {
    v12 = v11;
    if ([v12 streamStatus] != 6 && objc_msgSend(v12, "streamStatus") != 7)
    {
      if (qword_100973530 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000C4AC(v13, qword_100975470);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Closing input stream", v16, 2u);
      }

      [v12 close];
      v12 = *(v9 + v10);
      *(v9 + v10) = 0;
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

void sub_10029DDF8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream;
  swift_beginAccess();
  v4 = *(a2 + v3);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  if ([v5 streamStatus] == 6)
  {

LABEL_4:
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100975470);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Output stream closed", v9, 2u);
    }

    sub_10028088C(&qword_100975650, &qword_1007F8A30);
    CheckedContinuation.resume(returning:)();
    return;
  }

  if (([v5 hasSpaceAvailable] & 1) == 0)
  {
    do
    {
      if ([v5 streamStatus] == 6)
      {
        break;
      }

      if (qword_100973530 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000C4AC(v10, qword_100975470);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Buffer has no space, waiting for zipper to take bytes", v13, 2u);
      }
    }

    while (![v5 hasSpaceAvailable]);
  }

  sub_10028088C(&qword_100975650, &qword_1007F8A30);
  CheckedContinuation.resume(returning:)();
}

uint64_t sub_10029E094(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  swift_getObjectType();
  v3[8] = sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return _swift_task_switch(sub_10029E154, v5, v4);
}

uint64_t sub_10029E154()
{
  v72 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream;
  v3 = swift_beginAccess();
  v11 = *(v1 + v2);
  *(v0 + 88) = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(v0 + 48);
  v13 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(v12);
      goto LABEL_18;
    }

    v14 = *(v0 + 40);
    if (!__OFSUB__(HIDWORD(v14), v14))
    {
      if (HIDWORD(v14) - v14 <= 3145728)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 != 2)
  {
    goto LABEL_15;
  }

  v14 = *(v0 + 40);
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v17 = __OFSUB__(v15, v16);
  v18 = v15 - v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_69;
  }

  if (v18 <= 3145728)
  {
LABEL_11:
    if (v13 != 2)
    {
      v17 = __OFSUB__(HIDWORD(v14), v14);
      LODWORD(v14) = HIDWORD(v14) - v14;
      if (v17)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v14 = v14;
LABEL_18:
      v24 = *(v0 + 56);
      v25 = *(v24 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalReceivedBytes);
      v17 = __OFADD__(v25, v14);
      v26 = v25 + v14;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        v27 = *(v0 + 40);
        *(v24 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalReceivedBytes) = v26;
        v28 = v11;
        v2 = sub_10029EC64(v27, v12);
        if (qword_100973530 == -1)
        {
LABEL_24:
          v32 = *(v0 + 40);
          v31 = *(v0 + 48);
          v33 = type metadata accessor for Logger();
          sub_10000C4AC(v33, qword_100975470);
          sub_100294008(v32, v31);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v34, v35))
          {
            sub_100026AC0(*(v0 + 40), *(v0 + 48));
            goto LABEL_37;
          }

          v3 = swift_slowAlloc();
          *v3 = 134218240;
          *(v3 + 4) = v2;
          *(v3 + 12) = 2048;
          if (v13 > 1)
          {
            if (v13 != 2)
            {
              v36 = 0;
              goto LABEL_36;
            }

            v37 = *(*(v0 + 40) + 16);
            v38 = *(*(v0 + 40) + 24);
            v17 = __OFSUB__(v38, v37);
            v36 = v38 - v37;
            if (!v17)
            {
              goto LABEL_36;
            }

            __break(1u);
          }

          else if (!v13)
          {
            v36 = *(v0 + 54);
LABEL_36:
            v43 = *(v0 + 40);
            v42 = *(v0 + 48);
            *(v3 + 14) = v36;
            v44 = v3;
            sub_100026AC0(v43, v42);
            _os_log_impl(&_mh_execute_header, v34, v35, "Wrote %ld bytes of %ld to output stream", v44, 0x16u);

LABEL_37:

            if (v13 > 1)
            {
              if (v13 != 2)
              {
                if (!v2)
                {
                  goto LABEL_53;
                }

                v4 = 0;
                goto LABEL_60;
              }

              v45 = *(*(v0 + 40) + 16);
              v46 = *(*(v0 + 40) + 24);
              v17 = __OFSUB__(v46, v45);
              v47 = v46 - v45;
              if (v17)
              {
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

              if (v2 == v47)
              {
LABEL_53:
                v54 = *(v0 + 56);
                v55 = *(v0 + 64);
                v56 = swift_task_alloc();
                *(v0 + 128) = v56;
                *v56 = v0;
                v56[1] = sub_10029E9F4;
                v9 = *(v0 + 56);
                v10 = &type metadata for Bool;
                v8 = sub_1002A65D4;
                v3 = v0 + 144;
                v7 = 0x80000001007898D0;
                v4 = v54;
                v5 = v55;
                v6 = 0xD000000000000014;

                return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
              }
            }

            else if (v13)
            {
              v48 = *(v0 + 40);
              v49 = *(v0 + 44);
              v17 = __OFSUB__(v49, v48);
              v50 = v49 - v48;
              if (v17)
              {
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              if (v2 == v50)
              {
                goto LABEL_53;
              }
            }

            else if (v2 == *(v0 + 54))
            {
              goto LABEL_53;
            }

            if (v13 != 2)
            {
              if (v13 == 1)
              {
                v51 = *(v0 + 40);
                v52 = *(v0 + 44);
                v17 = __OFSUB__(v52, v51);
                v53 = v52 - v51;
                if (v17)
                {
LABEL_75:
                  __break(1u);
                  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
                }

                v4 = v53;
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            v57 = *(*(v0 + 40) + 16);
            v58 = *(*(v0 + 40) + 24);
            v4 = v58 - v57;
            if (__OFSUB__(v58, v57))
            {
              __break(1u);
LABEL_59:
              v4 = *(v0 + 54);
            }

LABEL_60:
            if (v4 >= v2)
            {
              v59 = Data.subdata(in:)();
              v61 = v60;
              *(v0 + 96) = v59;
              *(v0 + 104) = v60;
              sub_100294008(v59, v60);
              v62 = Logger.logObject.getter();
              v63 = static os_log_type_t.debug.getter();
              sub_100026AC0(v59, v61);
              if (os_log_type_enabled(v62, v63))
              {
                v64 = swift_slowAlloc();
                v65 = swift_slowAlloc();
                v71 = v65;
                *v64 = 136315138;
                sub_100294008(v59, v61);
                v66 = Data.description.getter();
                v68 = v67;
                sub_100026AC0(v59, v61);
                v69 = sub_10000C4E4(v66, v68, &v71);

                *(v64 + 4) = v69;
                _os_log_impl(&_mh_execute_header, v62, v63, "Wrote remaining %s to output stream", v64, 0xCu);
                sub_10000C60C(v65);
              }

              v70 = swift_task_alloc();
              *(v0 + 112) = v70;
              *v70 = v0;
              v70[1] = sub_10029E7CC;

              return sub_10029E094(v59, v61);
            }

            goto LABEL_70;
          }

          v39 = *(v0 + 40);
          v40 = *(v0 + 44);
          v17 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          if (v17)
          {
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          v36 = v41;
          goto LABEL_36;
        }
      }

      swift_once();
      goto LABEL_24;
    }

    v23 = v14 + 16;
    v21 = *(v14 + 16);
    v22 = *(v23 + 8);
    v17 = __OFSUB__(v22, v21);
    v14 = v22 - v21;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_15:
    v14 = 0;
    goto LABEL_18;
  }

LABEL_8:
  v19 = type metadata accessor for SFAirDropReceive.Failure();
  sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, enum case for SFAirDropReceive.Failure.streamError(_:), v19);
  swift_willThrow();
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10029E7CC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_10029EBF8;
  }

  else
  {
    v5 = sub_10029E908;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10029E908()
{
  sub_100026AC0(v0[12], v0[13]);
  v1 = v0[7];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_10029E9F4;
  v4 = v0[7];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 18, v1, v2, 0xD000000000000014, 0x80000001007898D0, sub_1002A65D4, v4, &type metadata for Bool);
}

uint64_t sub_10029E9F4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_10029EB94;
  }

  else
  {
    v5 = sub_10029EB30;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10029EB30()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029EB94()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029EBF8()
{
  v1 = v0[11];
  sub_100026AC0(v0[12], v0[13]);

  v2 = v0[1];

  return v2();
}

unint64_t sub_10029EC64(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for POSIXError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100294008(a1, a2);
  v9 = sub_10030DBB8(a1, a2);
  v10 = [v2 write:v9 + 4 maxLength:v9[2]];

  if ((v10 & 0x8000000000000000) != 0)
  {
    if (![v2 streamError])
    {
      v13 = 5;
      sub_1002A5860(_swiftEmptyArrayStorage);
      sub_1002A520C(&qword_100975638, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      POSIXError._nsError.getter();
      (*(v6 + 8))(v8, v5);
    }

    swift_willThrow();
  }

  return v10;
}

uint64_t sub_10029EE20()
{
  v1[8] = v0;
  swift_getObjectType();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_10029EED8, v3, v2);
}

uint64_t sub_10029EED8()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[11] = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v0[8];
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkInputStream;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v0[12] = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v3;
  v8 = v6;
  if ([v7 streamStatus] == 6 || objc_msgSend(v7, "streamStatus") == 7)
  {

LABEL_6:
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100975470);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Streams not ready for close", v12, 2u);
    }

LABEL_10:

    v13 = v0[1];

    return v13();
  }

  if (([v8 hasBytesAvailable] & 1) == 0)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_100975470);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Closing output stream", v23, 2u);
    }

    [v7 close];
    v10 = *(v1 + v2);
    *(v1 + v2) = 0;
    goto LABEL_10;
  }

  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100975470);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Still bytes present on input stream", v18, 2u);
  }

  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_10029F2A4;

  return sub_10029EE20();
}

uint64_t sub_10029F2A4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_10029F448;
  }

  else
  {
    v5 = sub_10029F3E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10029F3E0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10029F448()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10029F4B0(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  swift_getObjectType();
  v2[29] = sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v4;
  v2[31] = v3;

  return _swift_task_switch(sub_10029F56C, v4, v3);
}

uint64_t sub_10029F56C()
{
  sub_10028088C(&unk_1009755B0, &qword_1007F8958);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8830;
  *(inited + 32) = String._bridgeToObjectiveC()();
  v2 = sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  v3 = NSString.init(stringLiteral:)();
  *(inited + 64) = v2;
  *(inited + 40) = v3;
  *(inited + 72) = String._bridgeToObjectiveC()();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v5 = sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
  *(inited + 104) = v5;
  *(inited + 80) = isa;
  *(inited + 112) = String._bridgeToObjectiveC()();
  v6.super.super.isa = Int32._bridgeToObjectiveC()().super.super.isa;
  *(inited + 144) = v5;
  *(inited + 120) = v6;
  v7 = sub_10027FE68(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_1009744E0, &qword_1007F8960);
  swift_arrayDestroy();
  v0[25] = v7;
  sub_1002A5510();

  v8 = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = CacheDeleteCopyPurgeableSpaceWithInfo();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v10 = sub_100011040(_swiftEmptyArrayStorage);
  if (!*(v10 + 16) || (v11 = sub_100012854(0xD000000000000013, 0x8000000100789710), (v12 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_10000C5B0(*(v10 + 56) + 32 * v11, (v0 + 21));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100975470);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Insufficient storage, nothing to purge";
    goto LABEL_18;
  }

  v13 = v0[26];
  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100975470);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v15, v16, "Purgeable bytes %ld", v17, 0xCu);
  }

  v18 = v0[27];

  v19 = Logger.logObject.getter();
  if (v13 < v18)
  {
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v20))
    {
LABEL_19:

      v24 = type metadata accessor for SFAirDropReceive.Failure();
      sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, enum case for SFAirDropReceive.Failure.insufficientStorage(_:), v24);
      swift_willThrow();

      v26 = v0[1];

      return v26();
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Insufficient storage, not enough purgeable bytes";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v19, v20, v22, v21, 2u);

    goto LABEL_19;
  }

  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v19, v28, "Starting cache purge", v29, 2u);
  }

  v31 = v0[28];
  v30 = v0[29];
  v32 = v0[27];

  v33 = swift_task_alloc();
  v0[32] = v33;
  *(v33 + 16) = v0 + 25;
  *(v33 + 24) = v32;
  v34 = swift_task_alloc();
  v0[33] = v34;
  *v34 = v0;
  v34[1] = sub_10029FBE0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v34, v31, v30, 0xD000000000000020, 0x8000000100789750, sub_1002A5578, v33, &type metadata for () + 8);
}

uint64_t sub_10029FBE0()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_10029FD60;
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_10029FCFC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10029FCFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029FD60()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10029FDCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_10028088C(&qword_1009755D8, &qword_1007F8968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  sub_1002A5510();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v6 + 16))(v9, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1002A5580;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035F9C;
  aBlock[3] = &unk_1008D9258;
  v13 = _Block_copy(aBlock);

  CacheDeletePurgeAsync();
  _Block_release(v13);
}

uint64_t sub_10029FFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v28[0] = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v4 = sub_100011040(_swiftEmptyArrayStorage);
  if (!*(v4 + 16) || (v5 = sub_100012854(0xD000000000000013, 0x8000000100789710), (v6 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_10000C5B0(*(v4 + 56) + 32 * v5, v28);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100975470);
    v8 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v17))
    {
      goto LABEL_17;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v11 = "Insufficient storage, did not purge";
    v12 = v17;
    v13 = v8;
    v14 = v18;
    v15 = 2;
    goto LABEL_16;
  }

  if (v27 < a3)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100975470);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_17;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v27;
    v11 = "Insufficient storage, not enough purgeable space %ld";
    v12 = v9;
    v13 = v8;
    v14 = v10;
    v15 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v13, v12, v11, v14, v15);

LABEL_17:

    v19 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, enum case for SFAirDropReceive.Failure.insufficientStorage(_:), v19);
    v28[0] = v20;
    sub_10028088C(&qword_1009755D8, &qword_1007F8968);
    return CheckedContinuation.resume(throwing:)();
  }

  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_100975470);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Purge cache successful, sufficient storage", v26, 2u);
  }

  sub_10028088C(&qword_1009755D8, &qword_1007F8968);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1002A03F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_10028088C(&unk_1009755F0, &unk_1007FE9A0);
  v5[10] = swift_task_alloc();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v6 = swift_task_alloc();
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter;
  v5[11] = v6;
  v5[12] = v7;
  type metadata accessor for SDAirDropReceiveCompressionAdapter(0);
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v9;
  v5[14] = v8;

  return _swift_task_switch(sub_1002A052C, v9, v8);
}

uint64_t sub_1002A052C()
{
  v1 = v0[8];
  v2 = (v1 + v0[12]);
  v3 = *v2;
  v0[15] = *v2;
  if (v3)
  {
    v4 = v0[11];
    v5 = v2[1];
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestination;
    swift_unknownObjectRetain();
    swift_beginAccess();
    sub_10000FF90(v1 + v7, v4, &unk_100974E00, &qword_1007F8940);
    v15 = (*(v5 + 8) + **(v5 + 8));
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_1002A0710;
    v9 = v0[11];
    v10 = v0[9];

    return v15(v9, v10, ObjectType, v5);
  }

  else
  {
    v12 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate;
    v0[17] = 0;
    v0[18] = v12;
    v13 = v0[13];
    v14 = v0[14];

    return _swift_task_switch(sub_1002A0894, v13, v14);
  }
}

uint64_t sub_1002A0710(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);

  swift_unknownObjectRelease();
  sub_100005508(v4, &unk_100974E00, &qword_1007F8940);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate;
  v3[17] = a1;
  v3[18] = v5;
  v6 = v3[14];
  v7 = v3[13];

  return _swift_task_switch(sub_1002A0894, v7, v6);
}

uint64_t sub_1002A0894()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1002A0958, 0, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1002A0958()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002A09F0, v0, 0);
}

uint64_t sub_1002A09F0()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  if (v1[2])
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 80);
    SFAirDropReceive.FileInfo.init(placeholderURLs:)();
    v4 = type metadata accessor for SFAirDropReceive.FileInfo();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
    swift_beginAccess();
    sub_10000C788(v3, v2 + v5, &unk_1009755F0, &unk_1007FE9A0);
    swift_endAccess();
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002A0B30()
{
  v1[2] = v0;
  swift_getObjectType();
  v2 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A0C50, v4, v3);
}

uint64_t sub_1002A0C50()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  (*(v2 + 16))(v1, *(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_decompressionStartedContinuation, v3);
  *(v0 + 80) = 1;
  SFProgressContinuation.finish(with:)();
  (*(v2 + 8))(v1, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    *(v0 + 56) = static AirDropActor.shared;
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_1002A0DF0;
    v6 = *(v0 + 16);

    return sub_10064ADD8(v6);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1002A0DF0()
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1002A0F84;
  }

  else
  {
    v3 = sub_1002A0F18;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1002A0F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A0F84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A0FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  swift_getObjectType();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4[9] = swift_task_alloc();
  v5 = sub_10028088C(&qword_100975658, &qword_1007F8A40);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v8;
  v4[17] = v7;

  return _swift_task_switch(sub_1002A11B4, v8, v7);
}

uint64_t sub_1002A11B4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_decompressionStartedContinuation, v3);
  SFProgressContinuation.task.getter();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1002A12B4;
  v5 = v0[10];

  return SFProgressTask.finalValue.getter(v0 + 29, v5);
}

uint64_t sub_1002A12B4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_100298A4C;
  }

  else
  {
    v8 = sub_1002A144C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1002A144C()
{
  v0[20] = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_1002A18E4;
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];

    return sub_10064E8B8(v5, v3, v4);
  }

  v7 = v0[8];
  v8 = v7 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter;
  v9 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
  v0[23] = v9;
  if (v9)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes);
    v13 = *(v10 + 16);
    swift_unknownObjectRetain();
    v29 = (v13 + *v13);
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    v14[1] = sub_1002A1E44;
    v15 = v0[6];

    return v29(v15, v12, ObjectType, v10);
  }

  if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes) == v0[6] && v0[5] >= 1)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_100975470);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received all expected bytes, closing streams after ASK response", v20, 2u);
    }

    v21 = swift_unknownObjectWeakLoadStrong();
    v0[25] = v21;
    if (v21)
    {
      if (qword_1009735E0 != -1)
      {
        swift_once();
      }

      v22 = static AirDropActor.shared;
      v0[26] = static AirDropActor.shared;

      return _swift_task_switch(sub_1002A2230, v22, 0);
    }

    v24 = v0[8];
    v23 = v0[9];
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v26;
    *(v24 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask) = sub_1002B281C(0, 0, v23, &unk_1007F8A50, v27);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1002A18E4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 128);
    v8 = *(v2 + 136);

    return _swift_task_switch(sub_1002A1A5C, v7, v8);
  }
}

uint64_t sub_1002A1A5C()
{
  v1 = v0[8];
  v2 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter;
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
  v0[23] = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes);
    v7 = *(v4 + 16);
    swift_unknownObjectRetain();
    v24 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_1002A1E44;
    v9 = v0[6];

    return v24(v9, v6, ObjectType, v4);
  }

  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes) == v0[6] && v0[5] >= 1)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_100975470);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Received all expected bytes, closing streams after ASK response", v15, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      if (qword_1009735E0 != -1)
      {
        swift_once();
      }

      v17 = static AirDropActor.shared;
      v0[26] = static AirDropActor.shared;

      return _swift_task_switch(sub_1002A2230, v17, 0);
    }

    v19 = v0[8];
    v18 = v0[9];
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v21;
    *(v19 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask) = sub_1002B281C(0, 0, v18, &unk_1007F8A50, v22);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1002A1E44()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1002A1F88, v3, v2);
}

uint64_t sub_1002A1F88()
{
  if (*(v0[8] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes) == v0[6] && v0[5] >= 1)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100975470);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received all expected bytes, closing streams after ASK response", v5, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      if (qword_1009735E0 != -1)
      {
        swift_once();
      }

      v7 = static AirDropActor.shared;
      v0[26] = static AirDropActor.shared;

      return _swift_task_switch(sub_1002A2230, v7, 0);
    }

    v9 = v0[8];
    v8 = v0[9];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v11;
    *(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask) = sub_1002B281C(0, 0, v8, &unk_1007F8A50, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002A2230()
{
  v1 = v0[5];
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logUploadFinish(urlCount:)(v1);
  swift_endAccess();
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_1002A230C;
  v3 = v0[8];

  return sub_10064D3F8(v3);
}

uint64_t sub_1002A230C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_1002A25E4;
  }

  else
  {
    v4 = sub_1002A2438;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002A2438()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_1002A249C, v1, v2);
}

uint64_t sub_1002A249C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask) = sub_1002B281C(0, 0, v1, &unk_1007F8A50, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002A25E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A2670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002A2730, 0, 0);
}

uint64_t sub_1002A2730()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v0[10] = sub_10000C4AC(v2, qword_100975470);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Waiting for zipper finish callback", v5, 2u);
    }

    v0[11] = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipperFinishedTimeout;
    type metadata accessor for SDAirDropReceiveCompressionAdapter(0);
    sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002A2920, v7, v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1002A294C()
{
  v1 = *(v0 + 96);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  v4 = (v1 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1002A2A40;

  return sub_10002ED10(v2, v4 + v3, 0, 0, 1);
}

uint64_t sub_1002A2A40()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1002A2CB8;
  }

  else
  {
    v5 = sub_1002A2BB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A2BB0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No response from zipper, closing streams", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 120) = v5;
  *v5 = v1;
  v5[1] = sub_1002A2D24;

  return sub_10029EE20();
}

uint64_t sub_1002A2CB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A2D24()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A2FF8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 136) = v3;
    *v3 = v2;
    v3[1] = sub_1002A2E90;

    return sub_10029DA7C();
  }
}

uint64_t sub_1002A2E90()
{

  return _swift_task_switch(sub_1002A2F8C, 0, 0);
}

uint64_t sub_1002A2F8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A2FF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A3064(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  swift_getObjectType();
  v4 = type metadata accessor for URL();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter, &unk_1007F88F8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v6;
  v3[15] = v5;

  return _swift_task_switch(sub_1002A317C, v6, v5);
}

uint64_t sub_1002A317C()
{
  v0[16] = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v0[18] = *(v0[8] + 16);
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v2 = static AirDropActor.shared;
    v0[19] = static AirDropActor.shared;

    return _swift_task_switch(sub_1002A3324, v2, 0);
  }

  else
  {
    v3 = v0[10];
    v4 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask;
    if (*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask))
    {

      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      Task.cancel()();
    }

    *(v3 + v4) = 0;

    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_1002A36FC;

    return sub_10029EE20();
  }
}

uint64_t sub_1002A3324()
{
  v1 = v0[18];
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logUploadFinish(urlCount:)(v1);
  swift_endAccess();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1002A33FC;
  v3 = v0[10];

  return sub_10064D3F8(v3);
}

uint64_t sub_1002A33FC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_1002A3690;
  }

  else
  {
    v4 = sub_1002A3528;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002A3528()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1002A358C, v1, v2);
}

uint64_t sub_1002A358C()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask))
  {

    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    Task.cancel()();
  }

  *(v1 + v2) = 0;

  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_1002A36FC;

  return sub_10029EE20();
}

uint64_t sub_1002A3690()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A36FC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 184) = v6;
    *v6 = v3;
    v6[1] = sub_1002A3874;

    return sub_10029DA7C();
  }
}

uint64_t sub_1002A3874()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1002A3994, v3, v2);
}

uint64_t sub_1002A3994()
{
  v42 = v0;
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[12];
    v41 = _swiftEmptyArrayStorage;
    sub_10028FAB4(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v39 = v6;
    v7 = (*(v5 + 64) + 32) & ~*(v5 + 64);
    v8 = v1 + v7;
    v9 = *(v5 + 56);
    do
    {
      v39(v0[13], v8, v0[11]);
      v41 = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_10028FAB4((v10 > 1), v11 + 1, 1);
        v3 = v41;
      }

      v12 = v0[13];
      v13 = v0[11];
      v3[2] = v11 + 1;
      (*(v5 + 16))(v3 + v7 + v11 * v9, v12, v13);
      v8 += v9;
      --v2;
    }

    while (v2);
  }

  v0[24] = v3;
  v14 = v0[10] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider;
  swift_beginAccess();
  if (*(v14 + 24))
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v15 = v0[14];
    v16 = v0[15];

    return _swift_task_switch(sub_1002A3F34, v15, v16);
  }

  v17 = v0[9];
  if (v17)
  {
    swift_errorRetain();

    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_100975470);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Decompression failed %@", v21, 0xCu);
      sub_100005508(v22, &qword_100975400, &qword_1007F65D0);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v40 = sub_10064ECD0;
      v25 = swift_task_alloc();
      v0[26] = v25;
      *v25 = v0;
      v25[1] = sub_1002A4348;
      v26 = v17;
LABEL_25:

      return v40(v26);
    }
  }

  else
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_100975470);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315138;
      v32 = Array.description.getter();
      v34 = sub_10000C4E4(v32, v33, &v41);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Decompression succeeded %s", v30, 0xCu);
      sub_10000C60C(v31);
    }

    v35 = swift_unknownObjectWeakLoadStrong();
    v0[28] = v35;
    if (v35)
    {
      v40 = sub_10064F074;
      v36 = swift_task_alloc();
      v0[29] = v36;
      *v36 = v0;
      v36[1] = sub_1002A4574;
      v26 = v0[24];
      goto LABEL_25;
    }
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_1002A3F34()
{
  v25 = v0;
  v1 = v0[9];
  if (v1)
  {
    swift_errorRetain();

    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100975470);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Decompression failed %@", v5, 0xCu);
      sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v23 = sub_10064ECD0;
      v9 = swift_task_alloc();
      v0[26] = v9;
      *v9 = v0;
      v9[1] = sub_1002A4348;
      v10 = v1;
LABEL_14:

      return v23(v10);
    }
  }

  else
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100975470);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      v16 = Array.description.getter();
      v18 = sub_10000C4E4(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Decompression succeeded %s", v14, 0xCu);
      sub_10000C60C(v15);
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    v0[28] = v19;
    if (v19)
    {
      v23 = sub_10064F074;
      v20 = swift_task_alloc();
      v0[29] = v20;
      *v20 = v0;
      v20[1] = sub_1002A4574;
      v10 = v0[24];
      goto LABEL_14;
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002A4348()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  *(*v1 + 216) = v0;

  v4 = *(v2 + 120);
  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1002A4508;
  }

  else
  {
    v6 = sub_1002A449C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1002A449C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A4508()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A4574()
{
  v1 = *(*v0 + 224);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t URL.quarantine()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1002A4730()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_1002A0B30();
}

uint64_t sub_1002A47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100005C04;

  return sub_1002A0FF0(a5, a6, a7);
}

uint64_t sub_1002A4894()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure();
  sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  v2 = swift_allocError();
  *(v0 + 24) = v2;
  (*(*(v1 - 8) + 104))(v3, enum case for SFAirDropReceive.Failure.incompleteTransfer(_:), v1);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1002A49CC;

  return sub_1002A3064(_swiftEmptyArrayStorage, v2);
}

uint64_t sub_1002A49CC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A4B08, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1002A4B08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A4B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C00;

  return sub_1002A3064(a5, 0);
}

uint64_t sub_1002A4C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C00;

  return sub_1002A3064(_swiftEmptyArrayStorage, a5);
}

uint64_t sub_1002A4D5C()
{
  sub_1002A5694(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_askRequest);
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_receiveID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider, &qword_100975598, &qword_1007F8930);
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestination, &unk_100974E00, &qword_1007F8940);
  swift_unknownObjectRelease();

  sub_10004C60C(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate);
  sub_10004C60C(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_receiveServiceDelegate);

  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_decompressionStartedContinuation;
  v4 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_1002A4ED8()
{
  sub_1002A4D5C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropReceiveCompressionAdapter(uint64_t a1)
{
  result = qword_100975570;
  if (!qword_100975570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A4F94(uint64_t a1)
{
  _s10AskRequestVMa(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_1002A512C(319);
      if (v3 <= 0x3F)
      {
        sub_1002A5184();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002A512C(uint64_t a1)
{
  if (!qword_100975580)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100975580);
    }
  }
}

void sub_1002A5184()
{
  if (!qword_100975588)
  {
    v0 = type metadata accessor for SFProgressContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_100975588);
    }
  }
}

uint64_t sub_1002A520C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002A5254(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100011814(a1, a2, v4);
}

const __CFString *sub_1002A52CC(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();
  if (!@"application/zip")
  {
LABEL_5:
    v7 = v3;
    goto LABEL_6;
  }

  type metadata accessor for CFString(0);
  sub_1002A520C(&qword_100975420, type metadata accessor for CFString, &unk_1007F7728);
  v4 = v3;
  v5 = @"application/zip";
  v6 = static _CFObject.== infix(_:_:)();

  if (v6)
  {

    if (@"pkzip")
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  if (@"application/x-cpio")
  {
    type metadata accessor for CFString(0);
    sub_1002A520C(&qword_100975420, type metadata accessor for CFString, &unk_1007F7728);
    v4 = v3;
    v8 = @"application/x-cpio";
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {

      if (!@"gzip")
      {
        __break(1u);
        goto LABEL_10;
      }

LABEL_13:
      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return a1;
    }
  }

LABEL_10:
  if (!@"application/x-dvzip")
  {

    goto LABEL_15;
  }

  type metadata accessor for CFString(0);
  sub_1002A520C(&qword_100975420, type metadata accessor for CFString, &unk_1007F7728);
  v4 = v3;
  v10 = @"application/x-dvzip";
  v11 = static _CFObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
LABEL_15:

    return a1;
  }

  result = @"dvzip";
  if (@"dvzip")
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002A5510()
{
  result = qword_1009755D0;
  if (!qword_1009755D0)
  {
    sub_1000276B4(255, &qword_100974E28, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009755D0);
  }

  return result;
}

uint64_t sub_1002A5580(uint64_t a1)
{
  v3 = *(sub_10028088C(&qword_1009755D8, &qword_1007F8968) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10029FFE8(a1, v1 + v4, v5);
}

uint64_t sub_1002A5628(uint64_t a1, uint64_t a2)
{
  v4 = _s10AskRequestVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A5694(uint64_t a1)
{
  v2 = _s10AskRequestVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002A57A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002A03F8(a1, v4, v5, v7, v6);
}

unint64_t sub_1002A5860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&unk_100975640, &unk_1007F64E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v13, &qword_1009744D0, &qword_1007F8A20);
      v5 = v13;
      v6 = v14;
      result = sub_1002A5254(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000106E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1002A5990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = v56 - v7;
  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000C4AC(v9, qword_100975470);
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v56[1] = v10;
    v14 = v8;
    v15 = v3;
    v16 = v13;
    v17 = swift_slowAlloc();
    v57[0] = v17;
    *v16 = 136315138;
    v58 = a2;
    swift_unknownObjectRetain();
    v18 = String.init<A>(describing:)();
    v20 = sub_10000C4E4(v18, v19, v57);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Zipper Update: %s", v16, 0xCu);
    sub_10000C60C(v17);

    v3 = v15;
    v8 = v14;
  }

  if (a1 > 8)
  {
    if (a1 != 9)
    {
      if (a1 != 10)
      {
        return;
      }

      v57[0] = a2;
      swift_unknownObjectRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      if (swift_dynamicCast())
      {
        v37 = v58;
      }

      else
      {
        v43 = type metadata accessor for SFAirDropReceive.Failure();
        sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
        v37 = swift_allocError();
        (*(*(v43 - 8) + 104))(v44, enum case for SFAirDropReceive.Failure.incompleteTransfer(_:), v43);
      }

      v45 = type metadata accessor for TaskPriority();
      (*(*(v45 - 8) + 56))(v8, 1, 1, v45);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = v3;
      v41[5] = v37;

      v42 = &unk_1007F89A8;
      goto LABEL_26;
    }

    v57[0] = a2;
    swift_unknownObjectRetain();
    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    if (swift_dynamicCast())
    {
      v39 = v58;
      if (*(v58 + 16))
      {
        v40 = type metadata accessor for TaskPriority();
        (*(*(v40 - 8) + 56))(v8, 1, 1, v40);
        v41 = swift_allocObject();
        v41[2] = 0;
        v41[3] = 0;
        v41[4] = v3;
        v41[5] = v39;

        v42 = &unk_1007F89D0;
LABEL_26:
        v46 = v42;
        v47 = v8;
        v48 = v41;
LABEL_36:
        sub_1002B281C(0, 0, v47, v46, v48);

        return;
      }
    }

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Invalid completed URLs", v54, 2u);
    }

    v55 = type metadata accessor for TaskPriority();
    (*(*(v55 - 8) + 56))(v8, 1, 1, v55);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v3;

    v36 = &unk_1007F89C0;
    goto LABEL_35;
  }

  if (a1 == 5)
  {
    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v3;

    v36 = &unk_1007F8A00;
    goto LABEL_35;
  }

  if (a1 != 7)
  {
    return;
  }

  v57[0] = a2;
  swift_unknownObjectRetain();
  sub_10028088C(&qword_100975618, &qword_1007F89D8);
  if (swift_dynamicCast())
  {
    v21 = v58;
    v58 = kSFOperationFilesCopiedKey;
    v22 = kSFOperationFilesCopiedKey;
    sub_10028088C(&unk_100975620, &qword_1007F89E0);
    sub_100294298();
    AnyHashable.init<A>(_:)();
    if (*(v21 + 16))
    {
      v23 = sub_100570754(v57);
      if (v24)
      {
        v25 = *(*(v21 + 56) + 8 * v23);
        sub_100285E74(v57);
        v58 = kSFOperationBytesCopiedKey;
        v26 = kSFOperationBytesCopiedKey;
        AnyHashable.init<A>(_:)();
        if (*(v21 + 16))
        {
          v27 = sub_100570754(v57);
          if (v28)
          {
            v29 = *(*(v21 + 56) + 8 * v27);
            sub_100285E74(v57);
            v58 = kSFOperationTimeRemainingKey;
            v30 = kSFOperationTimeRemainingKey;
            AnyHashable.init<A>(_:)();
            if (*(v21 + 16))
            {
              v31 = sub_100570754(v57);
              if (v32)
              {
                v33 = *(*(v21 + 56) + 8 * v31);
                sub_100285E74(v57);

                v34 = type metadata accessor for TaskPriority();
                (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
                v35 = swift_allocObject();
                v35[2] = 0;
                v35[3] = 0;
                v35[4] = v3;
                v35[5] = v25;
                v35[6] = v29;
                v35[7] = v33;

                v36 = &unk_1007F89F0;
LABEL_35:
                v46 = v36;
                v47 = v8;
                v48 = v35;
                goto LABEL_36;
              }
            }
          }
        }
      }
    }

    sub_100285E74(v57);
  }

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Unknown progress info", v51, 2u);
  }
}

uint64_t sub_1002A61C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002A4C0C(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A6280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002A4874(a1, v4, v5, v6);
}

uint64_t sub_1002A6334(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48);
}

uint64_t sub_1002A638C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002A4B6C(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A644C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_1002A47C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002A6520()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_1002A4730();
}

uint64_t sub_1002A65DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002A2670(a1, v4, v5, v6);
}

id sub_1002A669C()
{
  v1 = *(_s15MacApprovePhoneV18InitialLockContextVMa(0) + 48);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationApprovePrompt) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A670C()
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  result = swift_allocObject();
  *(result + 16) = xmmword_1007F8A60;
  if (qword_100973538 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 56) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(result + 64) = &off_10097BE00;
  *(result + 96) = &type metadata for SDAuthentication.Operation.RecordApproveClientBundleID;
  *(result + 104) = &off_10097BC80;
  *(result + 136) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(result + 144) = &off_10097BD70;
  *(result + 176) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(result + 184) = &off_10097BD58;
  *(result + 216) = &type metadata for SDAuthentication.Operation.CheckACMTokenExists;
  *(result + 224) = &off_10097BC68;
  *(result + 256) = &type metadata for SDAuthentication.Operation.IncludeApproveMetadataInMessage;
  *(result + 264) = &off_10097BC50;
  *(result + 296) = &type metadata for SDAuthentication.Operation.SendApprovePromptMessage;
  *(result + 304) = &off_10097BC38;
  return result;
}

void sub_1002A6864(uint64_t a1)
{
  type metadata accessor for SDAuthenticationCommonOperationInput(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_1009756D0, &protocol descriptor for SDAuthenticationOperationInput);
    if (v2 <= 0x3F)
    {
      sub_1002A6C44(319, &qword_1009756D8, &type metadata for AuthenticationPolicies, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002A697C(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6BEC(319);
        if (v4 <= 0x3F)
        {
          sub_1002A6C44(319, qword_1009771F0, &type metadata for String, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1002A6C44(319, &qword_100975790, &type metadata for Bool, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1002A6C94(319, &qword_100975798, &unk_1009757A0, off_1008C8D00);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1002A6B2C(uint64_t a1)
{
  if (!qword_100975778)
  {
    sub_100280938(&qword_100975780, &qword_1007F8AF8);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100975778);
    }
  }
}

uint64_t sub_1002A6B90(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1002A6BEC(uint64_t a1)
{
  if (!qword_10097DB80)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10097DB80);
    }
  }
}

void sub_1002A6C44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1002A6C94(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1000276B4(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1002A6D34(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1002A6DE0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_1002A6E18(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t sub_1002A6E50(uint64_t a1)
{
  v2 = v1 + *(a1 + 44);
  v3 = *v2;
  sub_1002A9924(*v2, *(v2 + 8));
  return v3;
}

id sub_1002A6F48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 64) = &off_10097BD58;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RequestUserApproval;
  *(v6 + 104) = &off_10097C228;
  *a3 = v6;
  if ([a1 hasBundleID] && objc_msgSend(a1, "hasAppName") && objc_msgSend(a1, "hasBiometricOnly"))
  {
    v7 = _s15MacApprovePhoneV17InitialKeyContextVMa(0);
    sub_1002A9938(a2 + *(v7 + 24), (a3 + 1));
    v8 = *(v7 + 20);
    v9 = _s15MacApprovePhoneV26HandleApprovePromptContextVMa(0);
    sub_1002A985C(a2 + v8, a3 + v9[6], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 bundleID];
    if (result)
    {
      v11 = result;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = (a3 + v9[7]);
      *v15 = v12;
      v15[1] = v14;
      result = [a1 appName];
      if (result)
      {
        v16 = result;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = (a3 + v9[8]);
        *v20 = v17;
        v20[1] = v19;
        LOBYTE(v16) = [a1 biometricOnly];

        result = sub_1002A98C4(a2, _s15MacApprovePhoneV17InitialKeyContextVMa);
        *(a3 + v9[9]) = v16;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(55);
    v21._object = 0x8000000100789AF0;
    v21._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v21);
    v22 = [a1 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    LODWORD(v23) = sub_100010F88(1, 0, 0xE000000000000000);
    v28 = v27;
    sub_1000115C8();
    swift_allocError();
    *v29 = v23;
    *(v29 + 8) = v28;
    swift_willThrow();

    sub_1002A98C4(a2, _s15MacApprovePhoneV17InitialKeyContextVMa);
  }

  return result;
}

uint64_t sub_1002A725C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_1002A7294@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007F8A70;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v9 + 56) = &type metadata for SDAuthentication.Operation.UseApprovalACMTokenForIncludingFirstAKSTokenInMessage;
  *(v9 + 64) = &off_10097BF28;
  *(v9 + 96) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(v9 + 104) = &off_10097BCF8;
  *a5 = v9;
  *(a5 + 3) = xmmword_1007F8A80;
  v10 = _s15MacApprovePhoneV24HandleUserApprovalResultVMa(0);
  *(a5 + *(v10 + 32)) = 0;
  *(a5 + *(v10 + 36)) = 0;
  if (a2 >> 60 == 15)
  {
    v11 = sub_100010F88(30, 0xD00000000000001CLL, 0x8000000100789B30);
    v13 = v12;
    sub_1000115C8();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    swift_willThrow();
    sub_10028BCC0(a1, a2);

    sub_1002A98C4(a4, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);

    return sub_10028BCC0(a5[6], a5[7]);
  }

  else
  {
    v16 = v10;
    sub_100294008(a1, a2);
    sub_10028BCC0(a1, a2);

    sub_1002A9938(a4 + 8, (a5 + 1));
    sub_10028BCC0(a5[6], a5[7]);
    a5[6] = a1;
    a5[7] = a2;
    v17 = _s15MacApprovePhoneV26HandleApprovePromptContextVMa(0);
    sub_1002A985C(a4 + *(v17 + 24), a5 + *(v16 + 28), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1002A98C4(a4, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);
  }
}