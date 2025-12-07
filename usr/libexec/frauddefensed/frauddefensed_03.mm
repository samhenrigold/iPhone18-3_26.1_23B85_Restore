_TtC13frauddefensed22TrustKitUIServerClient *sub_100049F4C(_TtC13frauddefensed22TrustKitUIServerClient *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100049F8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_100049F6C(_TtC13frauddefensed22TrustKitUIServerClient *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A098(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_100049F8C(_TtC13frauddefensed22TrustKitUIServerClient *result, int64_t a2, char a3, _TtC13frauddefensed22TrustKitUIServerClient *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->connection;
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

  v8 = *a4->endpoint;
  if (v7 <= v8)
  {
    v9 = *a4->endpoint;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002074(&qword_1000B6900, &unk_10008F600);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *v10->endpoint = v8;
    *v10->connection = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10->$__lazy_storage_$_interface;
  v14 = a4->$__lazy_storage_$_interface;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *a4->endpoint = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_10004A098(_TtC13frauddefensed22TrustKitUIServerClient *result, int64_t a2, char a3, _TtC13frauddefensed22TrustKitUIServerClient *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *a4->connection;
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

  v8 = *a4->endpoint;
  if (v7 <= v8)
  {
    v9 = *a4->endpoint;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002074(&qword_1000B79D0, &qword_1000916E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *v10->endpoint = v8;
    *v10->connection = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10->$__lazy_storage_$_interface >= a4[v8].$__lazy_storage_$_interface)
    {
      memmove(v10->$__lazy_storage_$_interface, a4->$__lazy_storage_$_interface, 40 * v8);
    }

    *a4->endpoint = 0;
  }

  else
  {
    sub_100002074(&qword_1000B79D8, &qword_1000916E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10004A1E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002074(&qword_1000B7A38, &qword_100092850);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10000BCB8(0, &qword_1000B7A40, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10005986C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t (*sub_10004A42C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_10004AE30(v7);
  v7[9] = sub_10004A5E0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10004A4D8;
}

uint64_t (*sub_10004A4DC(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10004AE64(v5);
  v5[9] = sub_10004AB14(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10004E164;
}

void sub_10004A580(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10004A5E0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v11 = type metadata accessor for SignpostsManager.SignpostState(0);
  v10[3] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[4] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v10[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v10[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[7] = v15;
  v16 = *(*(sub_100002074(&qword_1000B7A70, &unk_100092860) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[8] = swift_coroFrameAlloc();
    v10[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[8] = malloc(v16);
    v10[9] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[10] = v17;
  v19 = *v4;
  v21 = sub_100057F68(a2, a3);
  *(v10 + 96) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_16:
      v10[11] = v21;
      if (v25)
      {
LABEL_17:
        sub_10004D0EC(*(*v5 + 56) + *(v13 + 72) * v21, v18, type metadata accessor for SignpostsManager.SignpostState);
        v27 = 0;
LABEL_21:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_10004A8BC;
      }

LABEL_20:
      v27 = 1;
      goto LABEL_21;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_10005A278();
      goto LABEL_16;
    }

    sub_100059264(v24, a4 & 1);
    v28 = sub_100057F68(a2, a3);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = v28;
      v10[11] = v28;
      if (v25)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10004A8BC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_100011DFC(v5, v6, &qword_1000B7A70, &unk_100092860);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_10004D0EC(v9, *(v2 + 6), type metadata accessor for SignpostsManager.SignpostState);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_10004D0EC(v13, v14, type metadata accessor for SignpostsManager.SignpostState);
        sub_10005BB64(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_100011DFC(v5, v17, &qword_1000B7A70, &unk_100092860);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_10004D0EC(v9, *(v2 + 7), type metadata accessor for SignpostsManager.SignpostState);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_10004D0EC(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for SignpostsManager.SignpostState);
      goto LABEL_10;
    }
  }

  sub_10000BC10(v9, &qword_1000B7A70, &unk_100092860);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_100026E0C(*(v20 + 48) + 16 * v19);
    sub_10005AE88(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_10000BC10(v23, &qword_1000B7A70, &unk_100092860);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_10004AB14(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x98uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 120) = a2;
  *(v8 + 128) = v3;
  v10 = *v3;
  v11 = sub_100058024(a2);
  *(v9 + 144) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10005A4A8();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1000595A0(v16, a3 & 1);
    v11 = sub_100058024(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 136) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 40 * v11;
    v22 = *v21;
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    v25 = *(v21 + 32);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0uLL;
  }

  *(v9 + 80) = v22;
  *(v9 + 96) = v23;
  *(v9 + 104) = v24;
  *(v9 + 112) = v25;
  return sub_10004AC94;
}

void sub_10004AC94(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 112);
  v8 = *(*a1 + 144);
  if ((a2 & 1) == 0)
  {
    if (!v3)
    {
      if ((*(*a1 + 144) & 1) == 0)
      {
        goto LABEL_15;
      }

      v18 = *(v2 + 136);
      v19 = **(v2 + 128);
      v20 = *(*a1 + 104);

      sub_10005B074(v18, v19);
      goto LABEL_14;
    }

    v9 = *(v2 + 136);
    v10 = **(v2 + 128);
    if ((v8 & 1) == 0)
    {
      v11 = *(v2 + 120);
      *(v2 + 40) = v3;
      *(v2 + 48) = v4;
      *(v2 + 56) = v5;
      *(v2 + 64) = v6 & 1;
      *(v2 + 72) = v7;
      v13 = v2 + 40;
      v12 = v11;
      goto LABEL_13;
    }

LABEL_7:
    v14 = v10[7] + 40 * v9;
    *v14 = v3;
    *(v14 + 8) = v4;
    *(v14 + 16) = v5;
    *(v14 + 24) = v6 & 1;
    *(v14 + 32) = v7;
    goto LABEL_15;
  }

  if (v3)
  {
    v9 = *(v2 + 136);
    v10 = **(v2 + 128);
    if ((v8 & 1) == 0)
    {
      v11 = *(v2 + 120);
      *v2 = v3;
      *(v2 + 8) = v4;
      *(v2 + 16) = v5;
      *(v2 + 24) = v6 & 1;
      *(v2 + 32) = v7;
      v12 = v11;
      v13 = v2;
LABEL_13:
      v20 = v6;
      sub_10005BBFC(v9, v12, v13, v10);
      v21 = v11;
LABEL_14:
      v6 = v20;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (*(*a1 + 144))
  {
    v15 = *(v2 + 136);
    v16 = **(v2 + 128);
    v17 = *(*a1 + 104);

    sub_10005B074(v15, v16);
    v6 = v17;
  }

LABEL_15:
  v22 = *(v2 + 80);
  v23 = *(v2 + 88);
  v24 = *(v2 + 96);
  v25 = *(v2 + 104);
  v26 = *(v2 + 112);
  sub_10004CCB0(v3, v4, v5, v6, v7);
  sub_10004CD0C(v22, v23, v24, v25, v26);

  free(v2);
}

uint64_t (*sub_10004AE30(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10004AE58;
}

uint64_t (*sub_10004AE64(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10004E0C0;
}

uint64_t sub_10004AE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10004AF2C;

  return sub_100048FA0(a2, a3);
}

uint64_t sub_10004AF2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10004B03C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011E6C;

  return sub_10004AE8C(a1, v5, v4);
}

uint64_t sub_10004B12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_10004E118;

  return sub_100047C0C(a2, a3, a4);
}

uint64_t sub_10004B1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  return _swift_task_switch(sub_10004B1FC, 0, 0);
}

uint64_t sub_10004B1FC()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[8] = *(v1 + 24);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10004B318;

  return v5(v0 + 5);
}

uint64_t sub_10004B318()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10004E0C8;
  }

  else
  {
    v2 = sub_10004E11C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004B42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  return _swift_task_switch(sub_10004B44C, 0, 0);
}

uint64_t sub_10004B44C()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[8] = *(v1 + 24);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10004B568;

  return v5(v0 + 5);
}

uint64_t sub_10004B568()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10004B6EC;
  }

  else
  {
    v2 = sub_10004B67C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004B67C()
{
  v1 = v0[6];

  *v1 = v0[5];
  v2 = v0[1];

  return v2();
}

uint64_t sub_10004B6EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004B750(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_10004B848;

  return v7(a2);
}

uint64_t sub_10004B848(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_10004B994, 0, 0);
  }
}

uint64_t sub_10004B9B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004BA1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004BA54(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100011E6C;

  return sub_10004B12C(a1, a2, v7, v6);
}

uint64_t sub_10004BB20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_10004B1DC(a1, v4, v5, v6);
}

uint64_t sub_10004BBE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_10004B42C(a1, v4, v5, v6);
}

unint64_t sub_10004BCB0()
{
  result = qword_1000B79F8;
  if (!qword_1000B79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B79F8);
  }

  return result;
}

uint64_t sub_10004BD60(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_10004BDB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004BE60;

  return sub_1000446E8(a1, v5, v4);
}

uint64_t sub_10004BE60(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10004BF5C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100002A54;

  return sub_10004B750(a1, a2, v6);
}

uint64_t sub_10004C030(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

uint64_t sub_10004C068()
{
  v1 = sub_100002074(&qword_1000B7A08, &qword_100091788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v26 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5), v11, v12, v13, v14, v15, v16, v17;
  (*(v7 + 8))(v0 + v9, v6);
  *(v0 + v10), v18, v19, v20, v21, v22, v23, v24;

  return _swift_deallocObject(v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v26 | 7);
}

void sub_10004C214(void *a1, void *a2, char a3)
{
  v7 = *(sub_100002074(&qword_1000B7A08, &qword_100091788) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Logger() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100045A44(a1, a2, a3 & 1, *(v3 + 16), *(v3 + 24), v3 + v8, *(v3 + v9), v3 + v11, *(v3 + v12), *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10004C35C(void *a1, uint64_t a2, void *a3)
{
  v7 = *(sub_100002074(&qword_1000B7A08, &qword_100091788) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Logger() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100046644(a1, a2, a3, v12, v13, v3 + v8, v3 + v11, v14);
}

uint64_t sub_10004C484()
{
  v1 = sub_100002074(&qword_1000B7A08, &qword_100091788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_10004C5FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100002074(&qword_1000B7A08, &qword_100091788) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for Logger();
  sub_1000469D4(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11));
}

uint64_t sub_10004C718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004C730()
{
  v1 = sub_100002074(&qword_1000B7A08, &qword_100091788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

void sub_10004C8A8(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, __int16 a5)
{
  v11 = *(sub_100002074(&qword_1000B7A08, &qword_100091788) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for Logger() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  sub_100046E80(a1, a2, a3, a4, a5 & 0x1FF, *(v5 + 16), *(v5 + 24), v5 + v12, v5 + v15, *(v5 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10004C9E8()
{
  v1 = sub_100002074(&qword_1000B7A08, &qword_100091788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  *(v0 + v11), v12, v13, v14, v15, v16, v17, v18;

  return _swift_deallocObject(v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v10 | 7);
}

uint64_t sub_10004CB70(uint64_t a1, char a2)
{
  v5 = *(sub_100002074(&qword_1000B7A08, &qword_100091788) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Logger() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + v10);
  v14 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000472E0(a1, a2 & 1, v11, v12, v2 + v6, v2 + v9, v13, v14);
}

uint64_t sub_10004CC9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005A7C(result, a2);
  }

  return result;
}

void *sub_10004CCB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
    v5 = result;
    v6 = a5;
    v7 = v5;
  }

  return result;
}

void sub_10004CD0C(void *a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, _TtC13frauddefensed22TrustKitUIServerClient *a3, uint64_t a4, void *a5)
{
  if (a1)
  {

    a2, v7, v8, v9, v10, v11, v12, v13;
    a3, v14, v15, v16, v17, v18, v19, v20;
  }
}

id sub_10004CD6C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10004CD78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011E6C;

  return sub_1000494C8(a1, v5, v4);
}

uint64_t sub_10004CE24(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100011E6C;

  return sub_100048148(a1, a2, v7, v6);
}

uint64_t sub_10004CED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_10004864C(a1, v4, v5, v6);
}

uint64_t sub_10004CF8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004CFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_100048C88(a1, v4, v5, v6);
}

uint64_t sub_10004D0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004D154(uint64_t a1)
{
  v2 = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v38 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = *(a1 + *(type metadata accessor for SpamDecisioningAsset(0) + 32));
  v16 = *(v15 + 232);
  v42[2] = *(v15 + 216);
  v42[3] = v16;
  v17 = *(v15 + 200);
  v42[0] = *(v15 + 184);
  v42[1] = v17;
  v18 = *(v15 + 296);
  v19 = *(v15 + 264);
  v42[6] = *(v15 + 280);
  v42[7] = v18;
  v20 = *(v15 + 248);
  v43 = *(v15 + 312);
  v42[4] = v20;
  v42[5] = v19;
  static Locale.current.getter();
  Locale.region.getter();
  (*(v9 + 8))(v11, v8);
  v21 = type metadata accessor for Locale.Region();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    sub_10000BC10(v14, &qword_1000B6A68, &qword_10008F6F0);
    v23 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
  }

  else
  {
    v24 = Locale.Region.identifier.getter();
    v23 = v25;
    (*(v22 + 8))(v14, v21);
  }

  sub_10004D808(a1, v7, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  sub_10004D808(a1, v5, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v26 = &v7[*(v2 + 20)];
  v27 = *(v26 + 2);
  v28 = *(v26 + 3);
  v40 = v27;
  v41 = v28;
  v38 = 5456722;
  v39 = 0xE300000000000000;
  sub_10001C1B8();
  if (StringProtocol.contains<A>(_:)() & 1) != 0 && (sub_100040644(5456722, 0xE300000000000000, v24, v23, v42, v5) & 1) != 0 || (v40 = v27, v41 = v28, v38 = 0x6567617373654D69, v39 = 0xE800000000000000, (StringProtocol.contains<A>(_:)()) && (sub_100040644(0x6567617373654D69, 0xE800000000000000, v24, v23, v42, v5))
  {
    v36 = 1;
  }

  else
  {
    v40 = v27;
    v41 = v28;
    v38 = 5459283;
    v39 = 0xE300000000000000;
    if (StringProtocol.contains<A>(_:)())
    {
      v36 = sub_100040644(5459283, 0xE300000000000000, v24, v23, v42, v5);
    }

    else
    {
      v36 = 0;
    }
  }

  v23, v29, v30, v31, v32, v33, v34, v35;
  sub_10004B9B8(v5, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  sub_10004B9B8(v7, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  return v36 & 1;
}

void sub_10004D630(uint64_t a1, const char *a2, void *a3, void *a4, _TtC13frauddefensed22TrustKitUIServerClient *a5, void *a6, _TtC13frauddefensed22TrustKitUIServerClient *a7, void *a8)
{
  if (a5)
  {
    a5, a2, a3, a4, a5, a6, a7, a8;

    a7, v9, v10, v11, v12, v13, v14, v15;
  }
}

void sub_10004D674(uint64_t result, _TtC13frauddefensed22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  if (BYTE1(a5) != 255)
  {
    sub_10004D68C(result, a2, a3, a4, a5, ((a5 >> 8) & 1), a7, a8);
  }
}

void sub_10004D68C(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a6)
  {
    sub_100011CAC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_10004D698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004D6E0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10004D768(uint64_t a1, void *a2)
{
  type metadata accessor for Logger();

  sub_10004FDB8(a1, a2);
}

uint64_t sub_10004D808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004D870(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10004D8B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10004D914(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004D928(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10004D970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004D9C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10004DA0C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10004DA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10004DB38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10004DBF0(uint64_t a1)
{
  result = type metadata accessor for SpamDecisioningAsset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004DC74(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10004DCA4(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10004DCB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10004DCE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10004DD40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_10004DDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004DEA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004DF64(uint64_t a1)
{
  result = type metadata accessor for SpamDecisioningAsset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10004DFEC()
{
  result = qword_1000B7BC0;
  if (!qword_1000B7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7BC0);
  }

  return result;
}

uint64_t sub_10004E1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10004E2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ReportingAsset(uint64_t a1)
{
  result = qword_1000B7C28;
  if (!qword_1000B7C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004E474(uint64_t a1)
{
  sub_10004E510(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConfigurationsAsset(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004E510(uint64_t a1)
{
  if (!qword_1000B6D98)
  {
    type metadata accessor for UAFAssetManager.AssetInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B6D98);
    }
  }
}

uint64_t sub_10004E568(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_10004E7A4, 0, 0);
}

uint64_t sub_10004E7A4()
{
  v1 = v0[6];
  v128 = type metadata accessor for ReportingAsset(0);
  v2 = *(v128 + 24);
  v3 = v1;
  if (qword_1000B6670 != -1)
  {
    swift_once();
    v3 = v0[6];
  }

  v4 = v0[19];
  v131 = v0[18];
  v133 = v0[25];
  v5 = v0[17];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[7];
  v9 = type metadata accessor for Logger();
  v10 = sub_100003448(v9, qword_1000B9328);
  v129 = *(v9 - 8);
  v130 = v9;
  v134 = v2;
  v135 = v1;
  (*(v129 + 16))(v1 + v2, v10, v9);
  sub_100011DFC(v8, v3, &qword_1000B6CB8, &unk_10008F9F0);
  v11 = *(v6 + 56);
  v11(v133, 1, 1, v7);
  sub_100011DFC(v8, v5, &qword_1000B6CB8, &unk_10008F9F0);
  if ((*(v4 + 48))(v5, 1, v131) == 1)
  {
    v12 = v11;
    sub_10000BC10(v0[17], &qword_1000B6CB8, &unk_10008F9F0);
  }

  else
  {
    v13 = v0[24];
    v127 = v0[25];
    v14 = v0[20];
    v132 = v11;
    v15 = v0[16];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[9];
    v19 = v0[10];
    v20 = v0[8];
    sub_10001C20C(v0[17], v14);
    object = URL.path(percentEncoded:)(1)._object;
    URL.init(fileURLWithPath:)();
    object, v22, v23, v24, v25, v26, v27, v28;
    v0[4] = 0xD000000000000014;
    v0[5] = 0x8000000100094D30;
    (*(v18 + 104))(v19, enum case for URL.DirectoryHint.inferFromPath(_:), v20);
    sub_10001C1B8();
    URL.appending<A>(component:directoryHint:)();
    (*(v18 + 8))(v19, v20);
    (*(v16 + 8))(v15, v17);
    sub_10004F284(v14);
    sub_10000BC10(v127, &qword_1000B6DE8, &qword_10008FA30);
    v12 = v132;
    v132(v13, 0, 1, v17);
    sub_10001C148(v13, v127);
  }

  v29 = v0[23];
  v30 = v0[11];
  v31 = v0[12];
  sub_100011DFC(v0[25], v29, &qword_1000B6DE8, &qword_10008FA30);
  v32 = *(v31 + 48);
  if (v32(v29, 1, v30) == 1)
  {
    sub_10000BC10(v0[23], &qword_1000B6DE8, &qword_10008FA30);
  }

  else
  {
    v33 = v0 + 15;
    (*(v0[12] + 32))(v0[15], v0[23], v0[11]);
    v34 = [objc_opt_self() defaultManager];
    v35 = URL.path(percentEncoded:)(1)._object;
    v36 = String._bridgeToObjectiveC()();
    v35, v37, v38, v39, v40, v41, v42, v43;
    LODWORD(v35) = [v34 fileExistsAtPath:v36];

    if (v35)
    {
      v44 = static os_log_type_t.default.getter();
      _StringGuts.grow(_:)(47);
      0xE000000000000000, v45, v46, v47, v48, v49, v50, v51;
      v52 = URL.path(percentEncoded:)(1);
      v53 = v52._object;
      String.append(_:)(v52);
      v53, v54, v55, v56, v57, v58, v59, v60;
      v61._countAndFlagsBits = 32032;
      v61._object = 0xE200000000000000;
      String.append(_:)(v61);
      sub_10005E11C(v44, 0xD00000000000002BLL, 0x8000000100094D00, 0xD000000000000053, 0x8000000100096DC0, 23);
      0x8000000100094D00, v62, v63, v64, v65, v66, v67, v68;
      v69 = URL.path.getter();
      v71 = v70;
      type metadata accessor for ConfigurationsAsset(0);
      swift_allocObject();
      v121 = sub_10001C8A8(v69, v71);
      v122 = v0[12];
      sub_10000BC10(v0[7], &qword_1000B6CB8, &unk_10008F9F0);
      v123 = *(v122 + 8);
      goto LABEL_17;
    }

    (*(v0[12] + 8))(*v33, v0[11]);
  }

  type metadata accessor for ReportManager(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v73 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v74 = [v73 resourceURL];

  if (v74)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  v77 = v0[21];
  v76 = v0[22];
  v78 = v0[11];
  v12(v77, v75, 1, v78);
  sub_10001C148(v77, v76);
  v79 = v32(v76, 1, v78);
  v80 = v0[22];
  if (v79 == 1)
  {
    v81 = v0[7];
    sub_10000BC10(v0[22], &qword_1000B6DE8, &qword_10008FA30);
    v82 = static os_log_type_t.error.getter();
    sub_10005E11C(v82, 0xD000000000000032, 0x8000000100094BD0, 0xD000000000000053, 0x8000000100096DC0, 27);
    sub_10000B6B0();
    swift_allocError();
    *v83 = 0xD000000000000032;
    *(v83 + 8) = 0x8000000100094BD0;
    *(v83 + 16) = 6;
    swift_willThrow();
    sub_10000BC10(v81, &qword_1000B6CB8, &unk_10008F9F0);
    v119 = v0[6];
    sub_10000BC10(v0[25], &qword_1000B6DE8, &qword_10008FA30);
    sub_10000BC10(v119, &qword_1000B6CB8, &unk_10008F9F0);
    (*(v129 + 8))(v135 + v134, v130);

    v120 = v0[1];
    goto LABEL_18;
  }

  v33 = v0 + 14;
  v84 = v0[14];
  v86 = v0[12];
  v85 = v0[13];
  v88 = v0[10];
  v87 = v0[11];
  v90 = v0[8];
  v89 = v0[9];
  v0[2] = 0xD000000000000026;
  v0[3] = 0x8000000100094C10;
  (*(v89 + 104))(v88, enum case for URL.DirectoryHint.inferFromPath(_:), v90);
  sub_10001C1B8();
  URL.appending<A>(path:directoryHint:)();
  (*(v89 + 8))(v88, v90);
  v91 = *(v86 + 8);
  v91(v80, v87);
  (*(v86 + 32))(v84, v85, v87);
  LOBYTE(v87) = static os_log_type_t.debug.getter();
  _StringGuts.grow(_:)(49);
  0xE000000000000000, v92, v93, v94, v95, v96, v97, v98;
  v99 = URL.path(percentEncoded:)(1);
  v100 = v99._object;
  String.append(_:)(v99);
  v100, v101, v102, v103, v104, v105, v106, v107;
  v108._countAndFlagsBits = 32032;
  v108._object = 0xE200000000000000;
  String.append(_:)(v108);
  sub_10005E11C(v87, 0xD00000000000002DLL, 0x8000000100094C40, 0xD000000000000053, 0x8000000100096DC0, 31);
  0x8000000100094C40, v109, v110, v111, v112, v113, v114, v115;
  v116 = URL.path.getter();
  v118 = v117;
  type metadata accessor for ConfigurationsAsset(0);
  swift_allocObject();
  v121 = sub_10001C8A8(v116, v118);
  sub_10000BC10(v0[7], &qword_1000B6CB8, &unk_10008F9F0);
  v123 = v91;
LABEL_17:
  v124 = v0[25];
  v125 = v0[6];
  v123(*v33, v0[11]);
  sub_10000BC10(v124, &qword_1000B6DE8, &qword_10008FA30);
  *(v125 + *(v128 + 20)) = v121;

  v120 = v0[1];
LABEL_18:

  return v120();
}

uint64_t sub_10004F284(uint64_t a1)
{
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004F2E4(uint64_t a1, uint64_t a2, char a3)
{
  result = 0x4964696C61766E69;
  switch(a3)
  {
    case 1:
      result = 0x466B726F7774656ELL;
      break;
    case 2:
      result = 0x6F6974617265706FLL;
      break;
    case 3:
      result = 0x74694B64756F6C63;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 12:
      result = 0xD000000000000018;
      break;
    case 9:
    case 17:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x64726F6365526B63;
      break;
    case 11:
      result = 0x61466574696C7173;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x4465727574616566;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0xD00000000000001ALL;
      break;
    case 20:
      result = 0xD00000000000001ALL;
      break;
    case 21:
      result = 0xD00000000000001ALL;
      break;
    case 23:
      result = 0xD00000000000001ELL;
      break;
    case 24:
    case 27:
      result = 0xD000000000000021;
      break;
    case 25:
    case 26:
      result = 0xD000000000000020;
      break;
    case 28:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004F688(uint64_t a1)
{
  v2 = sub_10004F838();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004F6C4(uint64_t a1)
{
  v2 = sub_10004F838();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004F704()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_10004F76C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_100002074(&qword_1000B7C70, &qword_100092038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F580;
  *(inited + 32) = 0x736544726F727265;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000063;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  sub_10004F88C(v1, v2, v3);
  v5 = sub_100011B7C(inited);
  swift_setDeallocating();
  sub_10004F8A4(inited + 32);
  return v5;
}

unint64_t sub_10004F838()
{
  result = qword_1000B7C68;
  if (!qword_1000B7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7C68);
  }

  return result;
}

uint64_t sub_10004F88C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x1Cu)
  {
  }

  return result;
}

uint64_t sub_10004F8A4(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B6D18, &qword_10008F9A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10004F90C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004F920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE4 && *(a1 + 17))
  {
    return (*a1 + 228);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x1C)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10004F968(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE3)
  {
    *(result + 16) = 0;
    *result = a2 - 228;
    *(result + 8) = 0;
    if (a3 >= 0xE4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE4)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_10004F9C8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_1000B7C78 = v2;
}

char *sub_10004FA38(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2)
{
  v3 = v2;
  v52 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v50 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC13frauddefensed15JavaScriptAsset_logger;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v10 = sub_100003448(v6, qword_1000B93E8);
  v51 = v7;
  v11 = *(v7 + 16);
  v11(&v2[v9], v10, v6);
  v12 = [objc_opt_self() defaultManager];
  v13 = String._bridgeToObjectiveC()();
  v55 = a2;
  v14 = v13;
  v15 = [v12 fileExistsAtPath:v13];

  if (v15)
  {
    v16 = v55;
    *(v3 + 2) = a1;
    *(v3 + 3) = v16;
  }

  else
  {
    v48 = v6;
    v49 = v9;
    v17 = v50;
    v11(v50, &v3[v9], v6);
    v18 = static os_log_type_t.error.getter();
    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v19._object = 0x8000000100097180;
    v19._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a1;
    v21 = v55;
    v20._object = v55;
    String.append(_:)(v20);
    v22._countAndFlagsBits = 32032;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    v23 = v54;
    sub_10005E11C(v18, v53, v54, 0xD000000000000054, 0x8000000100096BD0, 20);
    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = *(v51 + 8);
    v32 = v17;
    v33 = v48;
    v31(v32, v48);
    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v34._object = 0x8000000100097180;
    v34._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v34);
    v35._countAndFlagsBits = a1;
    v35._object = v21;
    String.append(_:)(v35);
    v21, v36, v37, v38, v39, v40, v41, v42;
    v43._countAndFlagsBits = 32032;
    v43._object = 0xE200000000000000;
    String.append(_:)(v43);
    v44 = v53;
    v45 = v54;
    sub_10000B6B0();
    swift_allocError();
    *v46 = v44;
    *(v46 + 8) = v45;
    *(v46 + 16) = 6;
    swift_willThrow();
    v31(&v3[v49], v33);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void sub_10004FDB8(uint64_t a1, void *a2)
{
  v3 = 7104878;
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(50);
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  v32 = 0xD00000000000002ELL;
  if (a2 && (v12 = [a2 toString]) != 0)
  {
    v13 = v12;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  v16._countAndFlagsBits = v3;
  v16._object = v15;
  String.append(_:)(v16);
  v15, v17, v18, v19, v20, v21, v22, v23;
  v24._countAndFlagsBits = 32032;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  sub_10005E11C(v4, v32, 0x80000001000971C0, 0xD000000000000054, 0x8000000100096BD0, 50);

  0x80000001000971C0, v25, v26, v27, v28, v29, v30, v31;
}

uint64_t sub_10004FEE0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC13frauddefensed15JavaScriptAsset_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JavaScriptAsset(uint64_t a1)
{
  result = qword_1000B7CB0;
  if (!qword_1000B7CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004FFD8(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100050074(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(42);
    0xE000000000000000, v11, v12, v13, v14, v15, v16, v17;
    _StringGuts.grow(_:)(21);
    0xE000000000000000, v18, v19, v20, v21, v22, v23, v24;
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0x746974627573202CLL;
    v26._object = 0xEB000000003D656CLL;
    String.append(_:)(v26);
    v27._countAndFlagsBits = a3;
    v27._object = a4;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 0x3D656C746974;
    v28._object = 0xE600000000000000;
    String.append(_:)(v28);
    0xE600000000000000, v29, v30, v31, v32, v33, v34, v35;
    v36._countAndFlagsBits = 2099281184;
    v36._object = 0xE400000000000000;
    String.append(_:)(v36);
    sub_10005E11C(v10, 0xD000000000000024, 0x8000000100097240, 0xD000000000000053, 0x8000000100097270, 26);
    0x8000000100097240, v37, v38, v39, v40, v41, v42, v43;
    sub_1000503B0();
    sub_10002E304(a1, a2, a3, a4);
  }

  else
  {
LABEL_8:
    v45 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(33);
    0xE000000000000000, v46, v47, v48, v49, v50, v51, v52;
    _StringGuts.grow(_:)(21);
    0xE000000000000000, v53, v54, v55, v56, v57, v58, v59;
    v60._countAndFlagsBits = a1;
    v60._object = a2;
    String.append(_:)(v60);
    v61._countAndFlagsBits = 0x746974627573202CLL;
    v61._object = 0xEB000000003D656CLL;
    String.append(_:)(v61);
    v62._countAndFlagsBits = a3;
    v62._object = a4;
    String.append(_:)(v62);
    v63._countAndFlagsBits = 0x3D656C746974;
    v63._object = 0xE600000000000000;
    String.append(_:)(v63);
    0xE600000000000000, v64, v65, v66, v67, v68, v69, v70;
    v71._countAndFlagsBits = 2099281184;
    v71._object = 0xE400000000000000;
    String.append(_:)(v71);
    sub_10005E11C(v45, 0xD00000000000001BLL, 0x80000001000972D0, 0xD000000000000053, 0x8000000100097270, 22);
    0x80000001000972D0, v72, v73, v74, v75, v76, v77, v78;
    sub_10000B6B0();
    swift_allocError();
    *v79 = xmmword_100092390;
    *(v79 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1000503B0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TrustKitUIServerClient(0);
    swift_allocObject();
    v1 = sub_10002D554();
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_100050424()
{

  v1 = OBJC_IVAR____TtC13frauddefensed14DebugUIManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugUIManager(uint64_t a1)
{
  result = qword_1000B7D70;
  if (!qword_1000B7D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005051C(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000505B8(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for URL();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_100050684, 0, 0);
}

uint64_t sub_100050684()
{
  v1 = v0[20];
  v2 = [objc_opt_self() sharedManager];
  v0[25] = v2;
  v0[26] = *(v1 + 16);
  v0[27] = *(v1 + 24);
  v3 = String._bridgeToObjectiveC()();
  v0[28] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000507F8;
  v4 = swift_continuation_init();
  v0[17] = sub_100002074(&qword_1000B7F58, &qword_1000924E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000531CC;
  v0[13] = &unk_1000B0AA8;
  v0[14] = v4;
  [v2 retrieveAssetSet:v3 usages:0 queue:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000507F8()
{

  return _swift_task_switch(sub_1000508D8, 0, 0);
}

uint64_t sub_1000508D8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 224);

  if (!v1)
  {
    v57 = *(v0 + 208);
    v56 = *(v0 + 216);
    v58 = *(v0 + 160);
    v249 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(56);
    v59._countAndFlagsBits = 0xD000000000000032;
    v59._object = 0x8000000100097360;
    String.append(_:)(v59);
    v60 = v58[6];
    v61 = v58[7];
    v62 = v58[8];
    v63 = v58[9];
    _StringGuts.grow(_:)(51);
    v64._countAndFlagsBits = 0x7465537465737361;
    v64._object = 0xED00003D656D614ELL;
    String.append(_:)(v64);
    v65._countAndFlagsBits = v57;
    v65._object = v56;
    String.append(_:)(v65);
    v66._countAndFlagsBits = 0x726373627573202CLL;
    v66._object = 0xED00003D72656269;
    String.append(_:)(v66);
    v67._countAndFlagsBits = v60;
    v67._object = v61;
    String.append(_:)(v67);
    v68._object = 0x80000001000973A0;
    v68._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v68);
    v69._countAndFlagsBits = v62;
    v69._object = v63;
    String.append(_:)(v69);
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    String.append(_:)(v70);
    0xE000000000000000, v71, v72, v73, v74, v75, v76, v77;
    v78._countAndFlagsBits = 2099281184;
    v78._object = 0xE400000000000000;
    String.append(_:)(v78);
    sub_10005E11C(v249, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 89);
    0xE000000000000000, v79, v80, v81, v82, v83, v84, v85;
    _StringGuts.grow(_:)(56);
    v86._countAndFlagsBits = 0xD000000000000032;
    v86._object = 0x8000000100097360;
    String.append(_:)(v86);
    _StringGuts.grow(_:)(51);
    v87._countAndFlagsBits = 0x7465537465737361;
    v87._object = 0xED00003D656D614ELL;
    String.append(_:)(v87);
    v88._countAndFlagsBits = v57;
    v88._object = v56;
    String.append(_:)(v88);
    v89._countAndFlagsBits = 0x726373627573202CLL;
    v89._object = 0xED00003D72656269;
    String.append(_:)(v89);
    v90._countAndFlagsBits = v60;
    v90._object = v61;
    String.append(_:)(v90);
    v91._object = 0x80000001000973A0;
    v91._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v91);
    v92._countAndFlagsBits = v62;
    v92._object = v63;
    String.append(_:)(v92);
    v93._countAndFlagsBits = 0;
    v93._object = 0xE000000000000000;
    String.append(_:)(v93);
    0xE000000000000000, v94, v95, v96, v97, v98, v99, v100;
    v101._countAndFlagsBits = 2099281184;
    v101._object = 0xE400000000000000;
    String.append(_:)(v101);
    sub_10000B6B0();
    swift_allocError();
    *v102 = 0;
    *(v102 + 8) = 0xE000000000000000;
    *(v102 + 16) = 8;
    swift_willThrow();
    goto LABEL_13;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 assetNamed:v3];

  if (!v4)
  {
    v104 = *(v0 + 208);
    v103 = *(v0 + 216);
    v105 = *(v0 + 160);
    v250 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(67);
    v255 = v1;
    v106._countAndFlagsBits = 0xD00000000000003DLL;
    v106._object = 0x8000000100097420;
    String.append(_:)(v106);
    v107 = v105[6];
    v108 = v105[7];
    v109 = v105[8];
    v110 = v105[9];
    _StringGuts.grow(_:)(51);
    v111._countAndFlagsBits = 0x7465537465737361;
    v111._object = 0xED00003D656D614ELL;
    String.append(_:)(v111);
    v112._countAndFlagsBits = v104;
    v112._object = v103;
    String.append(_:)(v112);
    v113._countAndFlagsBits = 0x726373627573202CLL;
    v113._object = 0xED00003D72656269;
    String.append(_:)(v113);
    v114._countAndFlagsBits = v107;
    v114._object = v108;
    String.append(_:)(v114);
    v115._object = 0x80000001000973A0;
    v115._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v115);
    v116._countAndFlagsBits = v109;
    v116._object = v110;
    String.append(_:)(v116);
    v117._countAndFlagsBits = 0;
    v117._object = 0xE000000000000000;
    String.append(_:)(v117);
    0xE000000000000000, v118, v119, v120, v121, v122, v123, v124;
    v125._countAndFlagsBits = 2099281184;
    v125._object = 0xE400000000000000;
    String.append(_:)(v125);
    sub_10005E11C(v250, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 94);
    0xE000000000000000, v126, v127, v128, v129, v130, v131, v132;
    _StringGuts.grow(_:)(67);
    v133._countAndFlagsBits = 0xD00000000000003DLL;
    v133._object = 0x8000000100097420;
    String.append(_:)(v133);
    _StringGuts.grow(_:)(51);
    v134._countAndFlagsBits = 0x7465537465737361;
    v134._object = 0xED00003D656D614ELL;
    String.append(_:)(v134);
    v135._countAndFlagsBits = v104;
    v135._object = v103;
    String.append(_:)(v135);
    v136._countAndFlagsBits = 0x726373627573202CLL;
    v136._object = 0xED00003D72656269;
    String.append(_:)(v136);
    v137._countAndFlagsBits = v107;
    v137._object = v108;
    String.append(_:)(v137);
    v138._object = 0x80000001000973A0;
    v138._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v138);
    v139._countAndFlagsBits = v109;
    v139._object = v110;
    String.append(_:)(v139);
    v140._countAndFlagsBits = 0;
    v140._object = 0xE000000000000000;
    String.append(_:)(v140);
    0xE000000000000000, v141, v142, v143, v144, v145, v146, v147;
    v148._countAndFlagsBits = 2099281184;
    v148._object = 0xE400000000000000;
    String.append(_:)(v148);
    sub_10000B6B0();
    swift_allocError();
    *v149 = 0;
    *(v149 + 8) = 0xE000000000000000;
    *(v149 + 16) = 8;
    swift_willThrow();
LABEL_10:

    goto LABEL_13;
  }

  v5 = [v4 location];
  if (!v5)
  {
    v151 = *(v0 + 208);
    v150 = *(v0 + 216);
    v152 = *(v0 + 160);
    v251 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(61);
    v255 = v1;
    v153._countAndFlagsBits = 0xD000000000000037;
    v153._object = 0x8000000100097460;
    String.append(_:)(v153);
    v155 = v152[6];
    v154 = v152[7];
    v156 = v152[8];
    v157 = v152[9];
    _StringGuts.grow(_:)(51);
    v158._countAndFlagsBits = 0x7465537465737361;
    v158._object = 0xED00003D656D614ELL;
    String.append(_:)(v158);
    v159._countAndFlagsBits = v151;
    v159._object = v150;
    String.append(_:)(v159);
    v160._countAndFlagsBits = 0x726373627573202CLL;
    v160._object = 0xED00003D72656269;
    String.append(_:)(v160);
    v161._countAndFlagsBits = v155;
    v161._object = v154;
    String.append(_:)(v161);
    v162._object = 0x80000001000973A0;
    v162._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v162);
    v163._countAndFlagsBits = v156;
    v163._object = v157;
    String.append(_:)(v163);
    v164._countAndFlagsBits = 0;
    v164._object = 0xE000000000000000;
    String.append(_:)(v164);
    0xE000000000000000, v165, v166, v167, v168, v169, v170, v171;
    v172._countAndFlagsBits = 2099281184;
    v172._object = 0xE400000000000000;
    String.append(_:)(v172);
    sub_10005E11C(v251, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 99);
    0xE000000000000000, v173, v174, v175, v176, v177, v178, v179;
    _StringGuts.grow(_:)(61);
    v180._countAndFlagsBits = 0xD000000000000037;
    v180._object = 0x8000000100097460;
    String.append(_:)(v180);
    _StringGuts.grow(_:)(51);
    v181._countAndFlagsBits = 0x7465537465737361;
    v181._object = 0xED00003D656D614ELL;
    String.append(_:)(v181);
    v182._countAndFlagsBits = v151;
    v182._object = v150;
    String.append(_:)(v182);
    v183._countAndFlagsBits = 0x726373627573202CLL;
    v183._object = 0xED00003D72656269;
    String.append(_:)(v183);
    v184._countAndFlagsBits = v155;
    v184._object = v154;
    String.append(_:)(v184);
    v185._object = 0x80000001000973A0;
    v185._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v185);
    v186._countAndFlagsBits = v156;
    v186._object = v157;
    String.append(_:)(v186);
    v187._countAndFlagsBits = 0;
    v187._object = 0xE000000000000000;
    String.append(_:)(v187);
    0xE000000000000000, v188, v189, v190, v191, v192, v193, v194;
    v195._countAndFlagsBits = 2099281184;
    v195._object = 0xE400000000000000;
    String.append(_:)(v195);
    sub_10000B6B0();
    swift_allocError();
    *v196 = 0;
    *(v196 + 8) = 0xE000000000000000;
    *(v196 + 16) = 8;
    swift_willThrow();

    goto LABEL_10;
  }

  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v10 = v5;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = *(v9 + 32);
  v11(v6, v7, v8);
  v12 = [v4 metadata];
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*v13->endpoint)
  {
    v22 = v15;
    v23 = sub_100057F68(v14, v15);
    v25 = v24;
    v22, v24, v26, v27, v28, v29, v30, v31;
    if (v25)
    {
      v246 = *(v0 + 168);
      v248 = *(v0 + 192);
      v39 = *(v0 + 152);
      v40 = (*v13[1].endpoint + 16 * v23);
      v41 = v40[1];
      v253 = *v40;

      v13, v42, v43, v44, v45, v46, v47, v48;
      v49 = [v4 name];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = type metadata accessor for UAFAssetManager.AssetInfo(0);
      v11(v39 + *(v53 + 20), v248, v246);
      *v39 = v50;
      v39[1] = v52;
      v54 = (v39 + *(v53 + 24));
      *v54 = v253;
      v54[1] = v41;

      v55 = *(v0 + 8);
      goto LABEL_14;
    }
  }

  else
  {
    v15, v15, v16, v17, v18, v19, v20, v21;
  }

  v198 = *(v0 + 208);
  v197 = *(v0 + 216);
  v247 = *(v0 + 176);
  v252 = *(v0 + 168);
  v254 = *(v0 + 192);
  v256 = v1;
  v199 = *(v0 + 160);
  v13, v32, v33, v34, v35, v36, v37, v38;
  v245 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(60);
  v200._countAndFlagsBits = 0xD000000000000036;
  v200._object = 0x80000001000974A0;
  String.append(_:)(v200);
  v201 = v199[6];
  v202 = v199[7];
  v204 = v199[8];
  v203 = v199[9];
  _StringGuts.grow(_:)(51);
  v205._countAndFlagsBits = 0x7465537465737361;
  v205._object = 0xED00003D656D614ELL;
  String.append(_:)(v205);
  v206._countAndFlagsBits = v198;
  v206._object = v197;
  String.append(_:)(v206);
  v207._countAndFlagsBits = 0x726373627573202CLL;
  v207._object = 0xED00003D72656269;
  String.append(_:)(v207);
  v208._countAndFlagsBits = v201;
  v208._object = v202;
  String.append(_:)(v208);
  v209._object = 0x80000001000973A0;
  v209._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v209);
  v210._countAndFlagsBits = v204;
  v210._object = v203;
  String.append(_:)(v210);
  v211._countAndFlagsBits = 0;
  v211._object = 0xE000000000000000;
  String.append(_:)(v211);
  0xE000000000000000, v212, v213, v214, v215, v216, v217, v218;
  v219._countAndFlagsBits = 2099281184;
  v219._object = 0xE400000000000000;
  String.append(_:)(v219);
  sub_10005E11C(v245, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 104);
  0xE000000000000000, v220, v221, v222, v223, v224, v225, v226;
  _StringGuts.grow(_:)(60);
  v227._countAndFlagsBits = 0xD000000000000036;
  v227._object = 0x80000001000974A0;
  String.append(_:)(v227);
  _StringGuts.grow(_:)(51);
  v228._countAndFlagsBits = 0x7465537465737361;
  v228._object = 0xED00003D656D614ELL;
  String.append(_:)(v228);
  v229._countAndFlagsBits = v198;
  v229._object = v197;
  String.append(_:)(v229);
  v230._countAndFlagsBits = 0x726373627573202CLL;
  v230._object = 0xED00003D72656269;
  String.append(_:)(v230);
  v231._countAndFlagsBits = v201;
  v231._object = v202;
  String.append(_:)(v231);
  v232._object = 0x80000001000973A0;
  v232._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v232);
  v233._countAndFlagsBits = v204;
  v233._object = v203;
  String.append(_:)(v233);
  v234._countAndFlagsBits = 0;
  v234._object = 0xE000000000000000;
  String.append(_:)(v234);
  0xE000000000000000, v235, v236, v237, v238, v239, v240, v241;
  v242._countAndFlagsBits = 2099281184;
  v242._object = 0xE400000000000000;
  String.append(_:)(v242);
  sub_10000B6B0();
  swift_allocError();
  *v243 = 0;
  *(v243 + 8) = 0xE000000000000000;
  *(v243 + 16) = 8;
  swift_willThrow();

  (*(v247 + 8))(v254, v252);
LABEL_13:

  v55 = *(v0 + 8);
LABEL_14:

  return v55();
}

uint64_t sub_10005163C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedManager];
  v4 = v0[6];
  v3 = v0[7];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 subscriptionsForSubscriber:v5];

  if (v6)
  {
    v104 = v1;
    sub_100053904();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v102 = v3;
    v103 = v4;
    if (v7 >> 62)
    {
LABEL_24:
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    while (v15 != v16)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v17 = *(v7 + 8 * v16 + 32);
      }

      v18 = v17;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v19 = [v17 name];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v104[8];
      v24 = v104[9];
      if (v20 == v23 && v22 == v24)
      {

        v22, v57, v58, v59, v60, v61, v62, v63;
        v23 = v20;
LABEL_20:
        v64 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(90);
        v65._countAndFlagsBits = 0xD00000000000003BLL;
        v65._object = 0x8000000100097590;
        String.append(_:)(v65);
        v66 = Array.description.getter();
        v68 = v67;
        v7, v67, v69, v70, v71, v72, v73, v74;
        v75._countAndFlagsBits = v66;
        v75._object = v68;
        String.append(_:)(v75);
        v68, v76, v77, v78, v79, v80, v81, v82;
        v83._countAndFlagsBits = 0xD000000000000017;
        v83._object = 0x8000000100097570;
        String.append(_:)(v83);
        v84 = v104[2];
        v85 = v104[3];
        _StringGuts.grow(_:)(51);
        v86._countAndFlagsBits = 0x7465537465737361;
        v86._object = 0xED00003D656D614ELL;
        String.append(_:)(v86);
        v87._countAndFlagsBits = v84;
        v87._object = v85;
        String.append(_:)(v87);
        v88._countAndFlagsBits = 0x726373627573202CLL;
        v88._object = 0xED00003D72656269;
        String.append(_:)(v88);
        v89._object = v102;
        v89._countAndFlagsBits = v103;
        String.append(_:)(v89);
        v90._object = 0x80000001000973A0;
        v90._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v90);
        v91._countAndFlagsBits = v23;
        v91._object = v24;
        String.append(_:)(v91);
        v92._countAndFlagsBits = 0;
        v92._object = 0xE000000000000000;
        String.append(_:)(v92);
        0xE000000000000000, v93, v94, v95, v96, v97, v98, v99;
        v100._countAndFlagsBits = 2099281184;
        v100._object = 0xE400000000000000;
        String.append(_:)(v100);
        v7 = 0xE000000000000000;
        sub_10005E11C(v64, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 64);
        v56 = 1;
        goto LABEL_21;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v22, v27, v28, v29, v30, v31, v32, v33;
      ++v16;
      if (v26)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v34 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(86);
    v35._countAndFlagsBits = 0xD000000000000050;
    v35._object = 0x80000001000975D0;
    String.append(_:)(v35);
    v36 = v1[2];
    v37 = v1[3];
    v38 = v1;
    v39 = v1[8];
    v40 = v38[9];
    _StringGuts.grow(_:)(51);
    v41._countAndFlagsBits = 0x7465537465737361;
    v41._object = 0xED00003D656D614ELL;
    String.append(_:)(v41);
    v42._countAndFlagsBits = v36;
    v42._object = v37;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 0x726373627573202CLL;
    v43._object = 0xED00003D72656269;
    String.append(_:)(v43);
    v44._countAndFlagsBits = v4;
    v44._object = v3;
    String.append(_:)(v44);
    v45._object = 0x80000001000973A0;
    v45._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v45);
    v46._countAndFlagsBits = v39;
    v46._object = v40;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    String.append(_:)(v47);
    0xE000000000000000, v48, v49, v50, v51, v52, v53, v54;
    v55._countAndFlagsBits = 2099281184;
    v55._object = 0xE400000000000000;
    String.append(_:)(v55);
    v7 = 0xE000000000000000;
    sub_10005E11C(v34, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 57);
  }

  v56 = 0;
LABEL_21:
  v7, v8, v9, v10, v11, v12, v13, v14;
  return v56;
}

uint64_t sub_100051B58()
{
  *(v1 + 232) = v0;
  sub_100002074(&qword_1000B7820, &unk_1000917B0);
  *(v1 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_100051BF4, 0, 0);
}

uint64_t sub_100051BF4()
{
  v1 = v0[29];
  v2 = objc_opt_self();
  v3 = [v2 sharedManager];
  v4 = v1[6];
  v0[31] = v4;
  v5 = v1[7];
  v0[32] = v5;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v3 subscriptionsForSubscriber:v6];

  if (v7)
  {
    sub_100053904();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v16 = v0[29];
      v98 = static os_log_type_t.default.getter();
      _StringGuts.grow(_:)(90);
      v17._countAndFlagsBits = 0xD00000000000003BLL;
      v17._object = 0x8000000100097590;
      String.append(_:)(v17);
      v18 = Array.description.getter();
      v20 = v19;
      v8, v19, v21, v22, v23, v24, v25, v26;
      v27._countAndFlagsBits = v18;
      v27._object = v20;
      String.append(_:)(v27);
      v20, v28, v29, v30, v31, v32, v33, v34;
      v35._countAndFlagsBits = 0xD000000000000017;
      v35._object = 0x8000000100097570;
      String.append(_:)(v35);
      v36 = v1[2];
      v37 = v16[3];
      v38 = v16[8];
      v39 = v16[9];
      _StringGuts.grow(_:)(51);
      v40._countAndFlagsBits = 0x7465537465737361;
      v40._object = 0xED00003D656D614ELL;
      String.append(_:)(v40);
      v41._countAndFlagsBits = v36;
      v41._object = v37;
      String.append(_:)(v41);
      v42._countAndFlagsBits = 0x726373627573202CLL;
      v42._object = 0xED00003D72656269;
      String.append(_:)(v42);
      v43._countAndFlagsBits = v4;
      v43._object = v5;
      String.append(_:)(v43);
      v44._object = 0x80000001000973A0;
      v44._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v44);
      v45._countAndFlagsBits = v38;
      v45._object = v39;
      String.append(_:)(v45);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      String.append(_:)(v46);
      0xE000000000000000, v47, v48, v49, v50, v51, v52, v53;
      v54._countAndFlagsBits = 2099281184;
      v54._object = 0xE400000000000000;
      String.append(_:)(v54);
      sub_10005E11C(v98, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 30);
      0xE000000000000000, v55, v56, v57, v58, v59, v60, v61;
LABEL_13:

      v96 = v0[1];

      return v96();
    }

    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  v63 = v0[29];
  v62 = v0[30];
  sub_100002074(&qword_1000B7F60, &qword_1000924F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F580;
  v65 = v1[2];
  v0[33] = v65;
  v66 = v63[3];
  v0[34] = v66;
  *(inited + 32) = v65;
  *(inited + 40) = v66;

  *(inited + 48) = sub_1000113D0(&_swiftEmptyArrayStorage);
  v67 = sub_1000114E4(inited);
  swift_setDeallocating();
  sub_10005389C(inited + 32);
  v0[35] = v63[8];
  v0[36] = v63[9];
  v68 = type metadata accessor for Date();
  v69 = *(v68 - 8);
  (*(v69 + 56))(v62, 1, 1, v68);
  v70 = String._bridgeToObjectiveC()();
  sub_100002074(&qword_1000B7F70, &qword_100092E60);
  v71.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v67, v72, v73, v74, v75, v76, v77, v78;
  v79 = (*(v69 + 48))(v62, 1, v68);
  isa = 0;
  if (v79 != 1)
  {
    v81 = v0[30];
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v69 + 8))(v81, v68);
  }

  v82 = [objc_allocWithZone(UAFAssetSetSubscription) init:v70 assetSets:v71.super.isa usageAliases:0 expires:isa];
  v0[37] = v82;

  if (!v82)
  {
    goto LABEL_13;
  }

  v83 = [v2 sharedManager];
  v0[38] = v83;
  v84 = String._bridgeToObjectiveC()();
  v0[39] = v84;
  sub_100002074(&qword_1000B7738, &qword_1000912F0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_100091290;
  *(v85 + 32) = v82;
  sub_100053904();
  v86 = v82;
  v87 = Array._bridgeToObjectiveC()().super.isa;
  v0[40] = v87;
  v85, v88, v89, v90, v91, v92, v93, v94;
  v0[2] = v0;
  v0[3] = sub_100052274;
  v95 = swift_continuation_init();
  v0[17] = sub_100002074(&qword_1000B7F80, &unk_100092508);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000527E8;
  v0[13] = &unk_1000B0AD0;
  v0[14] = v95;
  [v83 subscribe:v84 subscriptions:v87 queue:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100052274()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_100052408;
  }

  else
  {
    v2 = sub_100052384;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100052384()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100052408(uint64_t a1)
{
  v2 = v1[40];
  v4 = v1[38];
  v3 = v1[39];
  v63 = v1[37];
  v64 = v1[36];
  v6 = v1[34];
  v5 = v1[35];
  v8 = v1[32];
  v7 = v1[33];
  v9 = v1[31];
  swift_willThrow();

  v10 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(59);
  v11._countAndFlagsBits = 0xD000000000000035;
  v11._object = 0x8000000100097500;
  String.append(_:)(v11);
  _StringGuts.grow(_:)(51);
  v12._countAndFlagsBits = 0x7465537465737361;
  v12._object = 0xED00003D656D614ELL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v7;
  v13._object = v6;
  String.append(_:)(v13);
  v14._object = 0xED00003D72656269;
  v14._countAndFlagsBits = 0x726373627573202CLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v9;
  v15._object = v8;
  String.append(_:)(v15);
  v16._object = 0x80000001000973A0;
  v16._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v16);
  v17._countAndFlagsBits = v5;
  v17._object = v64;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  String.append(_:)(v18);
  0xE000000000000000, v19, v20, v21, v22, v23, v24, v25;
  v26._countAndFlagsBits = 2099281184;
  v26._object = 0xE400000000000000;
  String.append(_:)(v26);
  sub_10005E11C(v10, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 42);
  0xE000000000000000, v27, v28, v29, v30, v31, v32, v33;
  _StringGuts.grow(_:)(69);
  v34._countAndFlagsBits = 0xD000000000000026;
  v34._object = 0x8000000100097540;
  String.append(_:)(v34);
  swift_getErrorValue();
  v35._countAndFlagsBits = Error.localizedDescription.getter();
  object = v35._object;
  String.append(_:)(v35);
  object, v37, v38, v39, v40, v41, v42, v43;
  v44._countAndFlagsBits = 0xD000000000000017;
  v44._object = 0x8000000100097570;
  String.append(_:)(v44);
  _StringGuts.grow(_:)(51);
  v45._countAndFlagsBits = 0x7465537465737361;
  v45._object = 0xED00003D656D614ELL;
  String.append(_:)(v45);
  v46._countAndFlagsBits = v7;
  v46._object = v6;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x726373627573202CLL;
  v47._object = 0xED00003D72656269;
  String.append(_:)(v47);
  v48._countAndFlagsBits = v9;
  v48._object = v8;
  String.append(_:)(v48);
  v49._object = 0x80000001000973A0;
  v49._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v49);
  v50._countAndFlagsBits = v5;
  v50._object = v64;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  String.append(_:)(v51);
  0xE000000000000000, v52, v53, v54, v55, v56, v57, v58;
  v59._countAndFlagsBits = 2099281184;
  v59._object = 0xE400000000000000;
  String.append(_:)(v59);
  sub_10000B6B0();
  swift_allocError();
  *v60 = 0;
  *(v60 + 8) = 0xE000000000000000;
  *(v60 + 16) = 7;
  swift_willThrow();

  v61 = v1[1];

  return v61();
}

uint64_t sub_1000527E8(uint64_t a1, void *a2)
{
  v3 = sub_1000111EC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1000528B4()
{
  v1 = v0[26];
  v2 = [objc_opt_self() sharedManager];
  v0[27] = v2;
  v0[28] = v1[6];
  v0[29] = v1[7];
  v3 = String._bridgeToObjectiveC()();
  v0[30] = v3;
  sub_100002074(&qword_1000B6900, &unk_10008F600);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008F580;
  v5 = v1[8];
  v0[31] = v5;
  v6 = v1[9];
  v0[32] = v6;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[33] = isa;
  v4, v8, v9, v10, v11, v12, v13, v14;
  v0[2] = v0;
  v0[3] = sub_100052A88;
  v15 = swift_continuation_init();
  v0[17] = sub_100002074(&qword_1000B7F80, &unk_100092508);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000527E8;
  v0[13] = &unk_1000B0AF8;
  v0[14] = v15;
  [v2 unsubscribe:v3 subscriptionNames:isa queue:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100052A88()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_100052DAC;
  }

  else
  {
    v2 = sub_100052B98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100052B98()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);

  v35 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(62);
  v8._countAndFlagsBits = 0xD000000000000038;
  v8._object = 0x8000000100097660;
  String.append(_:)(v8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);
  _StringGuts.grow(_:)(51);
  v11._countAndFlagsBits = 0x7465537465737361;
  v11._object = 0xED00003D656D614ELL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v9;
  v12._object = v10;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x726373627573202CLL;
  v13._object = 0xED00003D72656269;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v6;
  v14._object = v5;
  String.append(_:)(v14);
  v15._object = 0x80000001000973A0;
  v15._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v4;
  v16._object = v2;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  String.append(_:)(v17);
  0xE000000000000000, v18, v19, v20, v21, v22, v23, v24;
  v25._countAndFlagsBits = 2099281184;
  v25._object = 0xE400000000000000;
  String.append(_:)(v25);
  sub_10005E11C(v35, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 76);
  0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100052DAC(uint64_t a1)
{
  v2 = v1[33];
  v3 = v1[32];
  v73 = v1[31];
  v5 = v1[29];
  v4 = v1[30];
  v6 = v1[27];
  v7 = v1[28];
  v8 = v1[26];
  swift_willThrow();

  v75 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(75);
  v9._countAndFlagsBits = 0xD00000000000002CLL;
  v9._object = 0x8000000100097630;
  String.append(_:)(v9);
  swift_getErrorValue();
  v10._countAndFlagsBits = Error.localizedDescription.getter();
  object = v10._object;
  String.append(_:)(v10);
  object, v12, v13, v14, v15, v16, v17, v18;
  v19._countAndFlagsBits = 0xD000000000000017;
  v19._object = 0x8000000100097570;
  String.append(_:)(v19);
  v20 = *(v8 + 16);
  v21 = *(v8 + 24);
  v74 = v21;
  _StringGuts.grow(_:)(51);
  v22._countAndFlagsBits = 0x7465537465737361;
  v22._object = 0xED00003D656D614ELL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v20;
  v23._object = v21;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x726373627573202CLL;
  v24._object = 0xED00003D72656269;
  String.append(_:)(v24);
  v25._countAndFlagsBits = v7;
  v25._object = v5;
  String.append(_:)(v25);
  v26._object = 0x80000001000973A0;
  v26._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v73;
  v27._object = v3;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  String.append(_:)(v28);
  0xE000000000000000, v29, v30, v31, v32, v33, v34, v35;
  v36._countAndFlagsBits = 2099281184;
  v36._object = 0xE400000000000000;
  String.append(_:)(v36);
  sub_10005E11C(v75, 0, 0xE000000000000000, 0xD000000000000054, 0x80000001000973C0, 78);
  0xE000000000000000, v37, v38, v39, v40, v41, v42, v43;
  _StringGuts.grow(_:)(75);
  v44._countAndFlagsBits = 0xD00000000000002CLL;
  v44._object = 0x8000000100097630;
  String.append(_:)(v44);
  swift_getErrorValue();
  v45._countAndFlagsBits = Error.localizedDescription.getter();
  v46 = v45._object;
  String.append(_:)(v45);
  v46, v47, v48, v49, v50, v51, v52, v53;
  v54._countAndFlagsBits = 0xD000000000000017;
  v54._object = 0x8000000100097570;
  String.append(_:)(v54);
  _StringGuts.grow(_:)(51);
  v55._countAndFlagsBits = 0x7465537465737361;
  v55._object = 0xED00003D656D614ELL;
  String.append(_:)(v55);
  v56._object = v74;
  v56._countAndFlagsBits = v20;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 0x726373627573202CLL;
  v57._object = 0xED00003D72656269;
  String.append(_:)(v57);
  v58._countAndFlagsBits = v7;
  v58._object = v5;
  String.append(_:)(v58);
  v59._object = 0x80000001000973A0;
  v59._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v59);
  v60._countAndFlagsBits = v73;
  v60._object = v3;
  String.append(_:)(v60);
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  String.append(_:)(v61);
  0xE000000000000000, v62, v63, v64, v65, v66, v67, v68;
  v69._countAndFlagsBits = 2099281184;
  v69._object = 0xE400000000000000;
  String.append(_:)(v69);
  sub_10000B6B0();
  swift_allocError();
  *v70 = 0;
  *(v70 + 8) = 0xE000000000000000;
  *(v70 + 16) = 7;
  swift_willThrow();

  v71 = v1[1];

  return v71();
}

uint64_t sub_1000531CC(uint64_t a1, void *a2)
{
  v3 = sub_1000111EC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100053230()
{
  _StringGuts.grow(_:)(40);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  String.append(_:)(*v0);
  v8._countAndFlagsBits = 0x447465737361202CLL;
  v8._object = 0xEF3D4C5255617461;
  String.append(_:)(v8);
  v9 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v10._countAndFlagsBits = URL.absoluteString.getter();
  object = v10._object;
  String.append(_:)(v10);
  object, v12, v13, v14, v15, v16, v17, v18;
  v19._countAndFlagsBits = 0x6F6973726576202CLL;
  v19._object = 0xEA00000000003D6ELL;
  String.append(_:)(v19);
  String.append(_:)(*(v0 + *(v9 + 24)));
  v20._countAndFlagsBits = 32032;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  return 0x3D656D616E207BLL;
}

uint64_t sub_100053340()
{
  _StringGuts.grow(_:)(51);
  v1._countAndFlagsBits = 0x7465537465737361;
  v1._object = 0xED00003D656D614ELL;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x726373627573202CLL;
  v2._object = 0xED00003D72656269;
  String.append(_:)(v2);
  String.append(_:)(v0[2]);
  v3._object = 0x80000001000973A0;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  String.append(_:)(v0[3]);
  return 0;
}

uint64_t sub_100053420(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8[3];
  v10 = v8[5];
  v11 = v8[7];
  v8[9], a2, a3, a4, a5, a6, a7, a8;
  v11, v12, v13, v14, v15, v16, v17, v18;
  v10, v19, v20, v21, v22, v23, v24, v25;
  v9, v26, v27, v28, v29, v30, v31, v32;
  v33 = OBJC_IVAR____TtC13frauddefensed15UAFAssetManager_logger;
  v34 = type metadata accessor for Logger();
  (*(*(v34 - 8) + 8))(v8 + v33, v34);

  return swift_deallocClassInstance();
}

uint64_t sub_100053518(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000535C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100053688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005374C(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1000537C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000537DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100053824(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10005389C(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B7F68, &qword_100092500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100053904()
{
  result = qword_1000B7F78;
  if (!qword_1000B7F78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B7F78);
  }

  return result;
}

uint64_t sub_100053960()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = SecKeyCopyPublicKey(v0);
  if (!v5)
  {
    if (qword_1000B6680 != -1)
    {
      swift_once();
    }

    sub_100003448(v1, qword_1000B9358);
    v20 = static os_log_type_t.error.getter();
    sub_10005E11C(v20, 0xD00000000000001ALL, 0x8000000100097860, 0xD000000000000057, 0x80000001000976E0, 155);
    return 0;
  }

  v6 = v5;
  error = 0;
  v7 = SecKeyCopyExternalRepresentation(v5, &error);
  if (!v7)
  {
LABEL_14:
    if (qword_1000B6680 != -1)
    {
      swift_once();
    }

    sub_100003448(v1, qword_1000B9358);
    v21 = static os_log_type_t.error.getter();
    sub_10005E11C(v21, 0xD000000000000035, 0x8000000100097880, 0xD000000000000057, 0x80000001000976E0, 167);
    v22 = error;
    if (!error)
    {
      goto LABEL_18;
    }

LABEL_17:

LABEL_18:
    return 0;
  }

  v8 = v7;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_14;
  }

  v43 = xmmword_100092520;
  static Data._conditionallyBridgeFromObjectiveC(_:result:)();

  v9 = *(&v43 + 1);
  if (*(&v43 + 1) >> 60 == 15)
  {
    goto LABEL_14;
  }

  v10 = v43;
  if (error)
  {
    if (qword_1000B6680 != -1)
    {
      swift_once();
    }

    v11 = sub_100003448(v1, qword_1000B9358);
    (*(v2 + 16))(v4, v11, v1);
    v12 = static os_log_type_t.error.getter();
    v13 = 0xE000000000000000;
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v14._countAndFlagsBits = 0xD00000000000003ELL;
    v14._object = 0x80000001000978C0;
    String.append(_:)(v14);
    if (error)
    {
      v15 = error;
      v42[0] = v10;
      v42[1] = v15;
      v16 = v12;
      v17 = v15;
      type metadata accessor for CFError(0);
      sub_1000549A4();
      v18 = Error.localizedDescription.getter();
      v13 = v19;

      v12 = v16;
      v10 = v42[0];
    }

    else
    {
      v18 = 0;
    }

    v25._countAndFlagsBits = v18;
    v25._object = v13;
    String.append(_:)(v25);
    v13, v26, v27, v28, v29, v30, v31, v32;
    v33._countAndFlagsBits = 32032;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    v34 = *(&v43 + 1);
    sub_10005E11C(v12, v43, *(&v43 + 1), 0xD000000000000057, 0x80000001000976E0, 172);
    sub_100005A14(v10, v9);
    v34, v35, v36, v37, v38, v39, v40, v41;
    (*(v2 + 8))(v4, v1);
    v22 = error;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  sub_100005A14(v10, v9);
  if (error)
  {
  }

  return countAndFlagsBits;
}

uint64_t sub_100053DA8()
{
  v0 = type metadata accessor for Logger();
  sub_100026F20(v0, qword_1000B7F88);
  v1 = sub_100003448(v0, qword_1000B7F88);
  if (qword_1000B6680 != -1)
  {
    swift_once();
  }

  v2 = sub_100003448(v0, qword_1000B9358);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100053E70(__SecKey *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v150 - v7;
  v9 = SecKeyCopyAttributes(a1);
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_17;
  }

  v152 = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v11 = v152;
  if (!v152)
  {
LABEL_17:
    if (qword_1000B6660 != -1)
    {
      swift_once();
    }

    v90 = sub_100003448(v2, qword_1000B7F88);
    (*(v3 + 16))(v6, v90, v2);
    v91 = static os_log_type_t.error.getter();
    v152 = 0;
    v153 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    v153, v92, v93, v94, v95, v96, v97, v98;
    v152 = 0xD000000000000025;
    v153 = 0x80000001000977E0;
    v99 = sub_100053960();
    if (v100)
    {
      v101 = v100;
    }

    else
    {
      v99 = 7104878;
      v101 = 0xE300000000000000;
    }

    v102 = v101;
    String.append(_:)(*&v99);
    v101, v103, v104, v105, v106, v107, v108, v109;
    v110._countAndFlagsBits = 32032;
    v110._object = 0xE200000000000000;
    String.append(_:)(v110);
    v111 = v153;
    sub_10005E11C(v91, v152, v153, 0xD000000000000057, 0x80000001000976E0, 20);
    v111, v112, v113, v114, v115, v116, v117, v118;
    (*(v3 + 8))(v6, v2);
    goto LABEL_32;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v13;
  if (!*v11->endpoint)
  {
    v11, v13, v14, v15, v16, v17, v18, v19;
    v119 = v20;
LABEL_25:
    v119, v30, v31, v32, v33, v34, v35, v36;
    goto LABEL_26;
  }

  v21 = sub_100057F68(v12, v13);
  v23 = v22;
  v20, v22, v24, v25, v26, v27, v28, v29;
  if ((v23 & 1) == 0)
  {
    v119 = v11;
    goto LABEL_25;
  }

  sub_100005BBC(*v11[1].endpoint + 32 * v21, &v152);
  v11, v37, v38, v39, v40, v41, v42, v43;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    if (qword_1000B6660 != -1)
    {
      swift_once();
    }

    v120 = sub_100003448(v2, qword_1000B7F88);
    (*(v3 + 16))(v8, v120, v2);
    v121 = static os_log_type_t.error.getter();
    v152 = 0;
    v153 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v153, v122, v123, v124, v125, v126, v127, v128;
    v152 = 0xD00000000000001FLL;
    v153 = 0x8000000100097810;
    v129 = sub_100053960();
    if (v130)
    {
      v131 = v130;
    }

    else
    {
      v129 = 7104878;
      v131 = 0xE300000000000000;
    }

    v132 = v131;
    String.append(_:)(*&v129);
    v131, v133, v134, v135, v136, v137, v138, v139;
    v140._countAndFlagsBits = 32032;
    v140._object = 0xE200000000000000;
    String.append(_:)(v140);
    v141 = v153;
    sub_10005E11C(v121, v152, v153, 0xD000000000000057, 0x80000001000976E0, 25);
    v141, v142, v143, v144, v145, v146, v147, v148;
    (*(v3 + 8))(v8, v2);
LABEL_32:
    v48 = 0;
    return v48 & 1;
  }

  v44 = v151;
  v152 = v150;
  v153 = v151;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  v150 = v45;
  v151 = v46;
  sub_10001C1B8();
  v48 = StringProtocol.contains<A>(_:)();
  v44, v49, v50, v51, v52, v53, v54, v55;
  v47, v56, v57, v58, v59, v60, v61, v62;
  if (qword_1000B6660 != -1)
  {
    swift_once();
  }

  sub_100003448(v2, qword_1000B7F88);
  v63 = static os_log_type_t.debug.getter();
  v152 = 0;
  v153 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v153, v64, v65, v66, v67, v68, v69, v70;
  v152 = 0xD000000000000023;
  v153 = 0x8000000100097830;
  if (v48)
  {
    v71 = 1702195828;
  }

  else
  {
    v71 = 0x65736C6166;
  }

  if (v48)
  {
    v72 = 0xE400000000000000;
  }

  else
  {
    v72 = 0xE500000000000000;
  }

  v73 = v72;
  String.append(_:)(*&v71);
  v72, v74, v75, v76, v77, v78, v79, v80;
  v81._countAndFlagsBits = 32032;
  v81._object = 0xE200000000000000;
  String.append(_:)(v81);
  v82 = v153;
  sub_10005E11C(v63, v152, v153, 0xD000000000000057, 0x80000001000976E0, 30);
  v82, v83, v84, v85, v86, v87, v88, v89;
  return v48 & 1;
}

uint64_t sub_1000543EC(uint64_t a1, unint64_t a2, __SecKey *a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (a1 == a1 >> 32)
    {
LABEL_15:
      if (qword_1000B6660 != -1)
      {
        swift_once();
      }

      v56 = 0x2064696C61766E49;
      v57 = type metadata accessor for Logger();
      sub_100003448(v57, qword_1000B7F88);
      v58 = static os_log_type_t.debug.getter();
      sub_10005E11C(v58, 0xD000000000000023, 0x80000001000977B0, 0xD000000000000057, 0x80000001000976E0, 60);
      return v56;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  if ((sub_100053E70(a3) & 1) == 0)
  {
    if (qword_1000B6660 != -1)
    {
      swift_once();
    }

    v56 = 0x2064696C61766E49;
    v59 = type metadata accessor for Logger();
    sub_100003448(v59, qword_1000B7F88);
    v60 = static os_log_type_t.debug.getter();
    v61 = 0xD000000000000030;
    v62 = 0x80000001000976A0;
    v63 = 65;
    goto LABEL_24;
  }

  if (!SecKeyIsAlgorithmSupported(a3, kSecKeyOperationTypeSign, kSecKeyAlgorithmECDSASignatureMessageX962SHA256))
  {
    if (qword_1000B6660 != -1)
    {
      swift_once();
    }

    v56 = 0x2064696C61766E49;
    v64 = type metadata accessor for Logger();
    sub_100003448(v64, qword_1000B7F88);
    v60 = static os_log_type_t.debug.getter();
    v61 = 0xD00000000000002ALL;
    v62 = 0x8000000100097780;
    v63 = 70;
LABEL_24:
    sub_10005E11C(v60, v61, v62, 0xD000000000000057, 0x80000001000976E0, v63);
    return v56;
  }

  error = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = SecKeyCreateSignature(a3, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, isa, &error);

  if (!v6)
  {
    if (qword_1000B6660 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_100003448(v65, qword_1000B7F88);
    v66 = static os_log_type_t.error.getter();
    v56 = 0xD000000000000014;
    sub_10005E11C(v66, 0xD000000000000014, 0x8000000100097740, 0xD000000000000057, 0x80000001000976E0, 82);
    goto LABEL_28;
  }

  v7 = error;
  if (error)
  {
    if (qword_1000B6660 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003448(v8, qword_1000B7F88);
    v9 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(33);
    0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
    v17 = v7;
    type metadata accessor for CFError(0);
    sub_1000549A4();
    v18 = Error.localizedDescription.getter();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);
    v20, v22, v23, v24, v25, v26, v27, v28;
    v29._countAndFlagsBits = 32032;
    v29._object = 0xE200000000000000;
    String.append(_:)(v29);
    sub_10005E11C(v9, 0xD00000000000001DLL, 0x8000000100097760, 0xD000000000000057, 0x80000001000976E0, 87);
    0x8000000100097760, v30, v31, v32, v33, v34, v35, v36;
    _StringGuts.grow(_:)(33);
    0xE000000000000000, v37, v38, v39, v40, v41, v42, v43;
    v69 = v17;
    v44 = Error.localizedDescription.getter();
    v46 = v45;

    v47._countAndFlagsBits = v44;
    v47._object = v46;
    String.append(_:)(v47);
    v46, v48, v49, v50, v51, v52, v53, v54;
    v55._countAndFlagsBits = 32032;
    v55._object = 0xE200000000000000;
    String.append(_:)(v55);

    v56 = 0xD00000000000001DLL;
LABEL_28:
    if (error)
    {
    }

    return v56;
  }

  v67 = v6;
  v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (error)
  {
  }

  return v56;
}

unint64_t sub_1000549A4()
{
  result = qword_1000B7FA0;
  if (!qword_1000B7FA0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7FA0);
  }

  return result;
}

uint64_t sub_1000549FC(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100054AB0()
{
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    return 0;
  }

  v0 = qword_1000B7C78;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100011DEC(&v4, v5);
  }

  else
  {

    memset(v5, 0, sizeof(v5));
  }

  sub_100002074(&qword_1000B7748, &unk_1000912F8);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100054BD8()
{
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    return 0;
  }

  v0 = qword_1000B7C78;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100011DEC(&v4, v5);
  }

  else
  {

    memset(v5, 0, sizeof(v5));
  }

  sub_100002074(&qword_1000B7748, &unk_1000912F8);
  sub_100002074(&qword_1000B80D8, &qword_1000925D0);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100054D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    return 0;
  }

  v3 = qword_1000B7C78;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100011DEC(&v7, v8);
  }

  else
  {

    memset(v8, 0, sizeof(v8));
  }

  sub_100002074(&qword_1000B7748, &unk_1000912F8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void sub_100054E54(void *a1)
{
  if (a1)
  {
    v1 = qword_1000B6658;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    if (!qword_1000B7C78)
    {
      goto LABEL_22;
    }

    v3 = qword_1000B7C78;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 valueForKey:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_100011DEC(&v58, v59);
    }

    else
    {

      memset(v59, 0, sizeof(v59));
    }

    sub_100002074(&qword_1000B7748, &unk_1000912F8);
    sub_100002074(&qword_1000B80D8, &qword_1000925D0);
    if (!swift_dynamicCast())
    {
      goto LABEL_22;
    }

    v7 = v58;
    if (!v58)
    {
      goto LABEL_22;
    }

    v60 = v58;
    v8 = [v2 zoneName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (*v7->endpoint)
    {
      sub_100057F68(v9, v11);
      v20 = v19;
      v11, v19, v21, v22, v23, v24, v25, v26;
      if (v20)
      {
        v34 = [v2 zoneName];
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        sub_10005613C(v35, v37, v59);
        v37, v38, v39, v40, v41, v42, v43, v44;
        sub_100005A14(*&v59[0], *(&v59[0] + 1));
        v45 = v60;
        *&v59[0] = v60;
        v46 = v3;

        v47 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v48 = String._bridgeToObjectiveC()();
        [v46 setValue:v47 forKey:v48];
        v45, v49, v50, v51, v52, v53, v54, v55;

        swift_unknownObjectRelease();
LABEL_22:

        return;
      }

      v56 = v7;
    }

    else
    {
      v7, v12, v13, v14, v15, v16, v17, v18;
      v56 = v11;
    }

    v56, v27, v28, v29, v30, v31, v32, v33;
    goto LABEL_22;
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v6 = qword_1000B7C78;
    v57 = String._bridgeToObjectiveC()();
    [v6 setValue:0 forKey:v57];
  }
}

id sub_100055194(void *a1)
{
  if (qword_1000B6658 != -1)
  {
    v48 = a1;
    swift_once();
    a1 = v48;
  }

  if (qword_1000B7C78)
  {
    v1 = a1;
    v2 = qword_1000B7C78;
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 valueForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_100011DEC(&v49, v50);
    }

    else
    {

      memset(v50, 0, sizeof(v50));
    }

    sub_100002074(&qword_1000B7748, &unk_1000912F8);
    sub_100002074(&qword_1000B80D8, &qword_1000925D0);
    if (swift_dynamicCast())
    {
      v5 = v49;
      if (v49)
      {
        v6 = [v1 zoneName];
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        if (*v5->endpoint)
        {
          v17 = sub_100057F68(v7, v9);
          v19 = v18;
          v9, v18, v20, v21, v22, v23, v24, v25;
          if (v19)
          {
            v33 = (*v5[1].endpoint + 16 * v17);
            v34 = *v33;
            v35 = v33[1];
            sub_100005A7C(*v33, v35);
            v5, v36, v37, v38, v39, v40, v41, v42;
            v43 = objc_allocWithZone(CKServerChangeToken);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v45 = [v43 initWithData:isa];

            sub_100005A28(v34, v35);
            return v45;
          }

          v47 = v5;
        }

        else
        {
          v5, v10, v11, v12, v13, v14, v15, v16;
          v47 = v9;
        }

        v47, v26, v27, v28, v29, v30, v31, v32;
      }
    }
  }

  return 0;
}

uint64_t sub_1000553C0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE3E8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v3)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100055414(char a1)
{
  if (a1)
  {
    return 0x636E657265666E69;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

void sub_100055454(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_100054BD8())
  {
    v6 = [a1 zoneName];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100005A7C(a2, a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10005B39C(a2, a3, v7, v9, isUniquelyReferenced_nonNull_native);
    v9, v11, v12, v13, v14, v15, v16, v17;
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (qword_1000B7C78)
    {
      v18 = qword_1000B7C78;

      sub_100002074(&qword_1000B80D8, &qword_1000925D0);
      v19 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v20 = String._bridgeToObjectiveC()();
      [v18 setValue:v19 forKey:v20];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_100002074(&qword_1000B80E0, &qword_1000925D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008F580;
    v22 = [a1 zoneName];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(inited + 32) = v23;
    *(inited + 40) = v25;
    *(inited + 48) = a2;
    *(inited + 56) = a3;
    sub_100005A7C(a2, a3);
    v26 = sub_10001185C(inited);
    swift_setDeallocating();
    sub_1000563E8(inited + 32);
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    if (qword_1000B7C78)
    {
      v34 = qword_1000B7C78;

      sub_100002074(&qword_1000B80D8, &qword_1000925D0);
      v35 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v36 = String._bridgeToObjectiveC()();
      [v34 setValue:v35 forKey:v36];

      swift_unknownObjectRelease();
    }

    v26, v27, v28, v29, v30, v31, v32, v33;
  }
}

uint64_t sub_100055760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1000557D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100055840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1000558B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100055920@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000553C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100055950@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100055414(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10005597C()
{
  v1 = v0;
  _StringGuts.grow(_:)(65);
  v2._countAndFlagsBits = 0x795464726F636572;
  v2._object = 0xEB000000003D6570;
  String.append(_:)(v2);
  String.append(_:)(*v0);
  v3._countAndFlagsBits = 0x64726F636572202CLL;
  v3._object = 0xEF3D4449656E6F5ALL;
  String.append(_:)(v3);
  v4 = [*(v0 + 16) description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16._countAndFlagsBits = 0x65676E616863202CLL;
  v16._object = 0xEE003D6E656B6F54;
  String.append(_:)(v16);
  v17 = *(v1 + 24);
  if (v17)
  {
    v18 = [v17 data];
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = Data.base64EncodedString(options:)(0);
    countAndFlagsBits = v22._countAndFlagsBits;
    object = v22._object;
    sub_100005A28(v19, v21);
  }

  else
  {
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
  }

  v25._countAndFlagsBits = countAndFlagsBits;
  v25._object = object;
  String.append(_:)(v25);
  object, v26, v27, v28, v29, v30, v31, v32;
  v33._object = 0x8000000100097990;
  v33._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v33);
  if (*(v1 + 40))
  {
    v34 = 0x636E657265666E69;
  }

  else
  {
    v34 = 0x756F72676B636162;
  }

  if (*(v1 + 40))
  {
    v35 = 0xE900000000000065;
  }

  else
  {
    v35 = 0xEA0000000000646ELL;
  }

  v36 = v35;
  String.append(_:)(*&v34);
  v35, v37, v38, v39, v40, v41, v42, v43;
  return 0;
}

uint64_t sub_100055B8C(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(78);
  v3._countAndFlagsBits = 0x3D4449656E6F7ALL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4 = [*v1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16._object = 0x80000001000979B0;
  v16._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v16);
  type metadata accessor for Array();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v17._object = 0x80000001000979D0;
  v17._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v17);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v18._countAndFlagsBits = 0x6F4365726F6D202CLL;
  v18._object = 0xED00003D676E696DLL;
  String.append(_:)(v18);
  if (v2[3])
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v2[3])
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v21 = v20;
  String.append(_:)(*&v19);
  v20, v22, v23, v24, v25, v26, v27, v28;
  v29._countAndFlagsBits = 0x65676E616863202CLL;
  v29._object = 0xEE003D6E656B6F54;
  String.append(_:)(v29);
  v30 = v2[4];
  if (v30)
  {
    v31 = [v30 CKDescription];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v34 = 0xE300000000000000;
    v32 = 7104878;
  }

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);
  v34, v36, v37, v38, v39, v40, v41, v42;
  return 0;
}

uint64_t sub_100055DDC()
{
  sub_1000564B4(v0 + qword_1000B7FA8);
  v1 = qword_1000B7FC0;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100055E54()
{
  sub_100055DDC();

  return swift_deallocClassInstance();
}

uint64_t sub_100055ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100055F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ChangeTokenCache(uint64_t a1)
{
  result = qword_1000B80A0;
  if (!qword_1000B80A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100056014(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_100056080@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100057F68(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100059AD4();
      v17 = v21;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    v18 = *(v17 + 56) + 40 * v8;
    v19 = *(v18 + 16);
    *a3 = *v18;
    *(a3 + 16) = v19;
    *(a3 + 32) = *(v18 + 32);
    sub_10005A7BC(v8, v17);
    *v4 = v17;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&result = 1;
    *(a3 + 24) = xmmword_10008F650;
  }

  return result;
}

double sub_10005613C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100057F68(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100059C88();
      v17 = v19;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    *a3 = *(*(v17 + 56) + 16 * v8);
    sub_10005A978(v8, v17);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_100092520;
  }

  return result;
}

double sub_1000561EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100057F68(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100059F78();
      v17 = v19;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    sub_100011DEC((*(v17 + 56) + 32 * v8), a3);
    sub_10005ACD8(v8, v17);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100056290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100057F68(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v27 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10005A278();
      v17 = v27;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    v18 = *(v17 + 56);
    v19 = type metadata accessor for SignpostsManager.SignpostState(0);
    v26 = *(v19 - 8);
    sub_100056450(v18 + *(v26 + 72) * v8, a3);
    sub_10005AE88(v8, v17);
    *v4 = v17;
    v20 = *(v26 + 56);
    v21 = a3;
    v22 = 0;
    v23 = v19;
  }

  else
  {
    v24 = type metadata accessor for SignpostsManager.SignpostState(0);
    v20 = *(*(v24 - 8) + 56);
    v23 = v24;
    v21 = a3;
    v22 = 1;
  }

  return v20(v21, v22, 1, v23);
}

uint64_t sub_1000563E8(uint64_t a1)
{
  v2 = sub_100002074(qword_1000B80E8, &qword_1000925E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000564B4(uint64_t a1)
{
  v2 = type metadata accessor for ChangeTokenCache(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100056510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100056558(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005656C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1000565B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100056618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100056654(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100056668(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000566B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10005674C(uint64_t a1, uint64_t a2, _TtC13frauddefensed22TrustKitUIServerClient *a3)
{
  if (*(a1 + 24) == 1)
  {
    sub_10000BC10(a1, &qword_1000B6A28, &qword_10008F6D8);
    sub_100056080(a2, a3, v23);
    a3, v6, v7, v8, v9, v10, v11, v12;
    sub_10000BC10(v23, &qword_1000B6A28, &qword_10008F6D8);
  }

  else
  {
    v13 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v13;
    v24 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_10005B20C(v23, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v15, v16, v17, v18, v19, v20, v21;
    *v3 = v22;
  }
}

void sub_100056828(uint64_t a1, uint64_t a2, _TtC13frauddefensed22TrustKitUIServerClient *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_10005B524(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v34;
  }

  else
  {
    v16 = sub_100057F68(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v35 = *v4;
      if (!v25)
      {
        sub_100059E0C();
        v33 = v35;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;

      sub_10005AB28(v16, v33);
      *v4 = v33;
    }
  }
}

void sub_100056920(uint64_t a1, uint64_t a2, _TtC13frauddefensed22TrustKitUIServerClient *a3)
{
  if (*(a1 + 24))
  {
    sub_100011DEC(a1, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_10005B69C(v22, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v7, v8, v9, v10, v11, v12, v13;
    *v3 = v21;
  }

  else
  {
    sub_10000BC10(a1, &qword_1000B7748, &unk_1000912F8);
    sub_1000561EC(a2, a3, v22);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_10000BC10(v22, &qword_1000B7748, &unk_1000912F8);
  }
}

void sub_1000569F0(uint64_t a1, uint64_t a2, _TtC13frauddefensed22TrustKitUIServerClient *a3)
{
  v7 = sub_100002074(&qword_1000B7A70, &unk_100092860);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for SignpostsManager.SignpostState(0);
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000BC10(a1, &qword_1000B7A70, &unk_100092860);
    sub_100056290(a2, a3, v9);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_10000BC10(v9, &qword_1000B7A70, &unk_100092860);
  }

  else
  {
    sub_100056450(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v3;
    sub_10005B938(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v22, v23, v24, v25, v26, v27, v28;
    *v3 = v30;
  }
}

unint64_t sub_100056BB0(char a1)
{
  result = 1869768058;
  switch(a1)
  {
    case 1:
      result = 0x6E65546F54656E6FLL;
      break;
    case 2:
      result = 0x6F546E6576656C65;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100056D70(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 1869768058;
    v6 = 0x6F77546F54656E6FLL;
    v7 = 0x7669466F546F7774;
    if (a1 != 3)
    {
      v7 = 0x65546F5465766966;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6E4F6F546F72657ALL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    if (a1 != 9)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 8)
    {
      v1 = 0xD00000000000001ELL;
    }

    v2 = 0x6968546F546E6574;
    v3 = 0xD000000000000017;
    if (a1 == 6)
    {
      v3 = 0x6F54797472696874;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100056EF0(unsigned __int8 a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = sub_100011A78(&_swiftEmptyArrayStorage);
  }

  *(v7 + 16) = v8;
  v9 = *(v8 + 16);

  if (!v9 || (sub_100057F68(0xD000000000000014, 0x8000000100097AC0), (v10 & 1) == 0))
  {
    sub_10000BCB8(0, &qword_1000B6CD8, NSNumber_ptr);
    if (qword_1000B66D8 != -1)
    {
      swift_once();
    }

    v11 = qword_1000B9450;
    v12 = *algn_1000B9458;
    v13 = sub_10006B76C();
    LOBYTE(v11) = sub_100057E70(v11, v12, v13);
    v13, v14, v15, v16, v17, v18, v19, v20;
    isa = NSNumber.init(BOOLeanLiteral:)(v11 & 1).super.super.isa;
    v22 = *(v7 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v22;
    *(v7 + 16) = 0x8000000000000000;
    sub_10005B524(isa, 0xD000000000000014, 0x8000000100097AC0, isUniquelyReferenced_nonNull_native);
    v8 = aBlock;
    *(v7 + 16) = aBlock;
  }

  if (!*(v8 + 16) || (sub_100057F68(0x726F727265, 0xE500000000000000), (v24 & 1) == 0))
  {
    if (a4)
    {
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    sub_100056828(v25, 0x726F727265, 0xE500000000000000);
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78 && (v26 = qword_1000B7C78, v27 = String._bridgeToObjectiveC()(), v28 = [v26 BOOLForKey:v27], v26, v27, (v28 & 1) != 0))
  {
    v29 = static os_log_type_t.debug.getter();
    sub_10005E11C(v29, 0xD000000000000013, 0x8000000100097B90, 0xD00000000000005BLL, 0x8000000100097B30, 64);
    v30 = 0;
  }

  else
  {
    v31 = "";
    v32 = "it.inference.signature_analysis";
    if (a1 != 2)
    {
      v32 = "it.inference.logic_graph";
    }

    if (a1)
    {
      v31 = "it.inference.sender_look_up";
    }

    if (a1 <= 1u)
    {
      v33 = v31;
    }

    else
    {
      v33 = v32;
    }

    v34 = String._bridgeToObjectiveC()();
    (v33 | 0x8000000000000000), v35, v36, v37, v38, v39, v40, v41;
    v105 = sub_10005C030;
    v106 = v7;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v103 = sub_1000574B4;
    v104 = &unk_1000B0D20;
    v42 = _Block_copy(&aBlock);

    v30 = AnalyticsSendEventLazy();
    _Block_release(v42);
  }

  v43 = static os_log_type_t.debug.getter();
  aBlock = 0;
  v102 = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  v99 = aBlock;
  v100 = v102;
  v44._object = 0x8000000100097B00;
  v44._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v44);
  if (v30)
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if (v30)
  {
    v46 = 0xE400000000000000;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  v47 = v46;
  String.append(_:)(*&v45);
  v46, v48, v49, v50, v51, v52, v53, v54;
  v55._countAndFlagsBits = 0x3D746E657665202CLL;
  v55._object = 0xE800000000000000;
  String.append(_:)(v55);
  v56 = 0xD00000000000002BLL;
  v57 = "";
  v58 = "it.inference.signature_analysis";
  v59 = 0xD000000000000028;
  if (a1 != 2)
  {
    v59 = 0xD00000000000001CLL;
    v58 = "it.inference.logic_graph";
  }

  if (a1)
  {
    v56 = 0xD00000000000002FLL;
    v57 = "it.inference.sender_look_up";
  }

  if (a1 <= 1u)
  {
    v60 = v56;
  }

  else
  {
    v60 = v59;
  }

  if (a1 <= 1u)
  {
    v61 = v57;
  }

  else
  {
    v61 = v58;
  }

  v62 = v61 | 0x8000000000000000;
  String.append(_:)(*&v60);
  (v61 | 0x8000000000000000), v63, v64, v65, v66, v67, v68, v69;
  v70._countAndFlagsBits = 0x616F6C796170202CLL;
  v70._object = 0xEA00000000003D64;
  String.append(_:)(v70);
  swift_beginAccess();
  v71 = *(v7 + 16);
  sub_10000BCB8(0, &qword_1000B7A28, NSObject_ptr);

  v72 = Dictionary.description.getter();
  v74 = v73;
  v71, v73, v75, v76, v77, v78, v79, v80;
  v81._countAndFlagsBits = v72;
  v81._object = v74;
  String.append(_:)(v81);
  v74, v82, v83, v84, v85, v86, v87, v88;
  v89._countAndFlagsBits = 32032;
  v89._object = 0xE200000000000000;
  String.append(_:)(v89);
  sub_10005E11C(v43, v99, v100, 0xD00000000000005BLL, 0x8000000100097B30, 68);
  v100, v90, v91, v92, v93, v94, v95, v96;
  v97 = *(v7 + 16);

  return v97;
}

Class sub_1000574B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10000BCB8(0, &qword_1000B7A28, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void *sub_100057550(uint64_t a1)
{
  v3 = type metadata accessor for TrustKitTKModelMessages();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Library.Streams.TrustKit.Decisioning.TKModelMessages();
  sub_10005C148();
  result = static StreamResource.source()();
  if (!v1)
  {
    __chkstk_darwin(result);
    *(&v36 - 2) = a1;
    static Buildable.with(_:)();
    if (qword_1000B6658 != -1)
    {
      swift_once();
    }

    v41 = 0;
    if (qword_1000B7C78)
    {
      v8 = qword_1000B7C78;
      v9 = String._bridgeToObjectiveC()();
      v10 = [v8 BOOLForKey:v9];

      if (v10)
      {
        v11 = static os_log_type_t.debug.getter();
        sub_10005E11C(v11, 0xD000000000000019, 0x8000000100097D30, 0xD00000000000005BLL, 0x8000000100097B30, 92);
      }

      else
      {
        sub_1000111EC(v39, v40);
        dispatch thunk of Source.sendEvent(_:)();
      }

      v13 = String._bridgeToObjectiveC()();
      v12 = [v8 BOOLForKey:v13];
    }

    else
    {
      sub_1000111EC(v39, v40);
      dispatch thunk of Source.sendEvent(_:)();
      v12 = 0;
    }

    v14 = static os_log_type_t.debug.getter();
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v15._countAndFlagsBits = 0xD00000000000002DLL;
    v15._object = 0x8000000100097D00;
    String.append(_:)(v15);
    if (v12)
    {
      v16 = 0x65736C6166;
    }

    else
    {
      v16 = 1702195828;
    }

    if (v12)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    v18 = v17;
    String.append(_:)(*&v16);
    v17, v19, v20, v21, v22, v23, v24, v25;
    v26._countAndFlagsBits = 0x3D746E657665202CLL;
    v26._object = 0xE800000000000000;
    String.append(_:)(v26);
    _print_unlocked<A, B>(_:_:)();
    v27._countAndFlagsBits = 32032;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    v28 = v38;
    sub_10005E11C(v14, v37, v38, 0xD00000000000005BLL, 0x8000000100097B30, 98);
    v28, v29, v30, v31, v32, v33, v34, v35;
    (*(v4 + 8))(v6, v3);
    return sub_100003558(v39);
  }

  return result;
}

uint64_t sub_10005794C(uint64_t a1, uint64_t *a2)
{

  TrustKitTKModelMessages.signatureId.setter();

  TrustKitTKModelMessages.uafVersion.setter();

  TrustKitTKModelMessages.recordZone.setter();

  TrustKitTKModelMessages.triggeredRules.setter();

  TrustKitTKModelMessages.nemesisErrors.setter();

  TrustKitTKModelMessages.filteringTriggeredRules.setter();

  TrustKitTKModelMessages.filteringNemesisErrors.setter();

  return TrustKitTKModelMessages.locale.setter();
}

Swift::Int sub_100057A1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = "";
  v3 = "it.inference.signature_analysis";
  if (v1 != 2)
  {
    v3 = "it.inference.logic_graph";
  }

  if (v1)
  {
    v2 = "it.inference.sender_look_up";
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  (v4 | 0x8000000000000000), v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

void sub_100057AD4(uint64_t a1)
{
  v2 = "it.inference.signature_analysis";
  if (*v1 != 2)
  {
    v2 = "it.inference.logic_graph";
  }

  if (*v1)
  {
    v3 = "it.inference.sender_look_up";
  }

  else
  {
    v3 = "";
  }

  if (*v1 <= 1u)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  String.hash(into:)();

  (v4 | 0x8000000000000000), v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_100057B78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = "";
  v3 = "it.inference.signature_analysis";
  if (v1 != 2)
  {
    v3 = "it.inference.logic_graph";
  }

  if (v1)
  {
    v2 = "it.inference.sender_look_up";
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  String.hash(into:)();
  (v4 | 0x8000000000000000), v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_100057C2C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005C330(*a1);
  *a2 = result;
  return result;
}

void sub_100057C5C(unint64_t *a1@<X8>)
{
  v2 = "it.inference.signature_analysis";
  v3 = 0xD000000000000028;
  if (*v1 != 2)
  {
    v3 = 0xD00000000000001CLL;
    v2 = "it.inference.logic_graph";
  }

  v4 = 0xD00000000000002FLL;
  if (*v1)
  {
    v5 = "it.inference.sender_look_up";
  }

  else
  {
    v4 = 0xD00000000000002BLL;
    v5 = "";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_100057CD4()
{
  v1 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonAnalyticsManager(uint64_t a1)
{
  result = qword_1000B82A8;
  if (!qword_1000B82A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057DD4(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100057E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_100057F68(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100058144(a1, a2, v4);
}

unint64_t sub_100057FE0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000581FC(a1, v4);
}

unint64_t sub_100058024(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000582C4(a1, v4);
}

unint64_t sub_100058068(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_100058398(v1, v2);
}

unint64_t sub_1000580B0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return sub_100058404(a1, v4);
}

unint64_t sub_100058144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000581FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10005C1BC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000BA20(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000582C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10000BCB8(0, &qword_1000B79B8, CKRecordZoneID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100058398(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100058404(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v10;
      if (v6 == v9 && v8 == v10)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8, v20, v21, v22, v23, v24, v25, v26;
      v17, v27, v28, v29, v30, v31, v32, v33;
      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    v8, v10, v11, v12, v13, v14, v15, v16;
    v17, v34, v35, v36, v37, v38, v39, v40;
  }

  return v4;
}

Swift::Int sub_100058508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002074(&qword_1000B6A10, &qword_10008F6C0);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_10000B704(v27, &v39);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_1000587D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002074(&qword_1000B6CE8, &qword_100092840);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_100005A7C(v34, *(&v34 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100058A94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002074(&qword_1000B6CE0, &unk_10008F960);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100058D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002074(&qword_1000B6D10, &qword_10008F9A0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100011DEC(v24, v34);
      }

      else
      {
        sub_100005BBC(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100011DEC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100058FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002074(&qword_1000B8370, &qword_100092870);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:bytes:count:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100059264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SignpostsManager.SignpostState(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100002074(&qword_1000B8360, &qword_100092858);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_100056450(v28, v41);
      }

      else
      {
        sub_10005C080(v28, v41);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_100056450(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_1000595A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002074(&qword_1000B8358, &qword_100092848);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v23 = *(v22 + 8);
      v41 = *v22;
      v24 = *(v22 + 16);
      v40 = *(v22 + 24);
      v25 = *(v22 + 32);
      if ((v39 & 1) == 0)
      {
        v26 = v25;
        v27 = v21;
        v28 = v41;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v41;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(v16 + 24) = v40;
      *(v16 + 32) = v25;
      ++*(v7 + 16);
      v5 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10005986C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002074(&qword_1000B7A38, &qword_100092850);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_100059AD4()
{
  v1 = v0;
  sub_100002074(&qword_1000B6A10, &qword_10008F6C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_10000B704(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_100059C88()
{
  v1 = v0;
  sub_100002074(&qword_1000B6CE8, &qword_100092840);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100005A7C(v22, *(&v22 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_100059E0C()
{
  v1 = v0;
  sub_100002074(&qword_1000B6CE0, &unk_10008F960);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100059F78()
{
  v1 = v0;
  sub_100002074(&qword_1000B6D10, &qword_10008F9A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100005BBC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100011DEC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10005A11C()
{
  v1 = v0;
  sub_100002074(&qword_1000B8370, &qword_100092870);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10005A278()
{
  v1 = v0;
  v2 = type metadata accessor for SignpostsManager.SignpostState(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002074(&qword_1000B8360, &qword_100092858);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_10005C080(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100056450(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10005A4A8()
{
  sub_100002074(&qword_1000B8358, &qword_100092848);
  v28 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = *(*(v1 + 48) + 8 * v16);
        v18 = *(v1 + 56) + 40 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        *(*(v3 + 48) + 8 * v16) = v17;
        v24 = *(v3 + 56) + 40 * v16;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        v25 = v23;
        v26 = v17;
        v27 = v19;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v28 = v3;
  }

  return result;
}

id sub_10005A65C()
{
  v1 = v0;
  sub_100002074(&qword_1000B7A38, &qword_100092850);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_10005A7BC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v12 = Hasher._finalize()();
      v11, v13, v14, v15, v16, v17, v18, v19;
      v20 = v12 & v7;
      if (v3 >= v8)
      {
        if (v20 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v20 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v20)
      {
LABEL_10:
        v21 = *(a2 + 48);
        v22 = (v21 + 16 * v3);
        v23 = (v21 + 16 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
        }

        v24 = *(a2 + 56);
        v25 = v24 + 40 * v3;
        v26 = (v24 + 40 * v6);
        if (v3 != v6 || v25 >= v26 + 40)
        {
          v9 = *v26;
          v10 = v26[1];
          *(v25 + 32) = *(v26 + 4);
          *v25 = v9;
          *(v25 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

void sub_10005A978(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_10005AB28(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_10005ACD8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v7;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v9 = v25[1];
          *v24 = *v25;
          v24[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_10005AE88(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v18 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v3);
      v21 = (v19 + 16 * v6);
      if (v3 != v6 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(type metadata accessor for SignpostsManager.SignpostState(0) - 8) + 72);
      v24 = v23 * v3;
      v25 = v22 + v23 * v3;
      v26 = v23 * v6;
      v27 = v22 + v23 * v6 + v23;
      if (v24 < v26 || v25 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v24 == v26)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }
}

void sub_10005B074(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

uint64_t sub_10005B20C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100057F68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100058508(v16, a4 & 1);
      v11 = sub_100057F68(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100059AD4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_10000B7B4(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_10005B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100057F68(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000587D8(v18, a5 & 1);
      v13 = sub_100057F68(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100059C88();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_100005A28(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

uint64_t sub_10005B524(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100057F68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100058A94(v16, a4 & 1);
      v11 = sub_100057F68(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100059E0C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_10005B69C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100057F68(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100059F78();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100058D38(v16, a4 & 1);
    v11 = sub_100057F68(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100003558(v22);

    return sub_100011DEC(a1, v22);
  }

  else
  {
    sub_10005BAF8(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_10005B7EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100058068(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100058FF0(v14, a3 & 1);
      result = sub_100058068(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10005A11C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_10005B938(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100057F68(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_10005A278();
      goto LABEL_7;
    }

    sub_100059264(v15, a4 & 1);
    v22 = sub_100057F68(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for SignpostsManager.SignpostState(0) - 8) + 72) * v12;

    return sub_10005C0E4(a1, v20);
  }

LABEL_13:
  sub_10005BB64(v12, a2, a3, a1, v18);
}

unint64_t sub_10005BA9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_10005BAF8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100011DEC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10005BB64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SignpostsManager.SignpostState(0);
  result = sub_100056450(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_10005BBFC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10005BC54(uint64_t result)
{
  if (result)
  {
    if ((result - 11) > 0xFFFFFFFFFFFFFFF5)
    {
      return 1;
    }

    else if ((result - 51) > 0xFFFFFFFFFFFFFFD7)
    {
      return 2;
    }

    else if ((result - 101) > 0xFFFFFFFFFFFFFFCDLL)
    {
      return 3;
    }

    else if ((result - 201) > 0xFFFFFFFFFFFFFF9BLL)
    {
      return 4;
    }

    else if ((result - 501) > 0xFFFFFFFFFFFFFED3)
    {
      return 5;
    }

    else if ((result - 1001) > 0xFFFFFFFFFFFFFE0BLL)
    {
      return 6;
    }

    else if ((result - 2001) > 0xFFFFFFFFFFFFFC17)
    {
      return 7;
    }

    else if ((result - 5001) > 0xFFFFFFFFFFFFF447)
    {
      return 8;
    }

    else if ((result - 10001) > 0xFFFFFFFFFFFFEC77)
    {
      return 9;
    }

    else if ((result - 20001) > 0xFFFFFFFFFFFFD8EFLL)
    {
      return 10;
    }

    else if ((result - 50001) >= 0xFFFFFFFFFFFF8AD0)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t sub_10005BD48()
{
  if (static Duration.== infix(_:_:)())
  {
    return 0;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 1;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 2;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 3;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 4;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 5;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 6;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 7;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 8;
  }

  if ((static Duration.< infix(_:_:)() & 1) != 0 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    return 9;
  }

  return 10;
}

uint64_t sub_10005BFF8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

uint64_t sub_10005C068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005C080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostsManager.SignpostState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005C148()
{
  result = qword_1000B8368;
  if (!qword_1000B8368)
  {
    type metadata accessor for Library.Streams.TrustKit.Decisioning.TKModelMessages();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8368);
  }

  return result;
}

uint64_t sub_10005C218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10005C260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005C2DC()
{
  result = qword_1000B8378;
  if (!qword_1000B8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8378);
  }

  return result;
}

unint64_t sub_10005C330(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE438, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005C37C()
{
  _StringGuts.grow(_:)(97);
  v1._countAndFlagsBits = 0x74614D646964207BLL;
  v1._object = 0xEB000000003D6863;
  String.append(_:)(v1);
  if (*v0)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);
  v3, v5, v6, v7, v8, v9, v10, v11;
  v12._object = 0x8000000100097D50;
  v12._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v12);
  Float.write<A>(to:)();
  v13._countAndFlagsBits = 0xD000000000000021;
  v13._object = 0x8000000100097D70;
  String.append(_:)(v13);
  Float.write<A>(to:)();
  v14._countAndFlagsBits = 0x74616E676973202CLL;
  v14._object = 0xEE003D6449657275;
  String.append(_:)(v14);
  if (*(v0 + 48))
  {
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
  }

  else
  {
    v16 = 0xE300000000000000;
    v15 = 7104878;
  }

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);
  v16, v18, v19, v20, v21, v22, v23, v24;
  v25._countAndFlagsBits = 0x3D656D616E202CLL;
  v25._object = 0xE700000000000000;
  String.append(_:)(v25);
  String.append(_:)(*(v0 + 24));
  v26._countAndFlagsBits = 32032;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  return 0;
}

uint64_t sub_10005C578()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
    goto LABEL_6;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v0 + 4 * v2 + 32);
    *(v0 + 8) = v2 + 1;
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v5 + 16);
    if (v6 == v7)
    {
LABEL_6:
      result = 0;
      *(v0 + 32) = 1;
      return result;
    }

    if (v6 < v7)
    {
      v8 = *(v5 + 4 * v6 + 32);
      *(v0 + 24) = v6 + 1;
      return v4 | (v8 << 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005C5F8()
{
  v0 = type metadata accessor for Logger();
  sub_100026F20(v0, qword_1000B8380);
  v1 = sub_100003448(v0, qword_1000B8380);
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100003448(v0, qword_1000B93E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10005C6C0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

void sub_10005C778()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v274 = &v246 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = type metadata accessor for Date();
  v5 = *(v273 - 8);
  __chkstk_darwin(v273);
  v272 = &v246 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.path.getter();
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = [objc_opt_self() fileHandleForReadingAtPath:v9];

  if (!v17)
  {
    if (qword_1000B6668 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100003448(v48, qword_1000B8380);
    v49 = static os_log_type_t.error.getter();
    v279 = 0;
    v280 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v280, v50, v51, v52, v53, v54, v55, v56;
    v279 = 0xD00000000000002ALL;
    v280 = 0x8000000100097ED0;
    v57._countAndFlagsBits = URL.path.getter();
    object = v57._object;
    String.append(_:)(v57);
    object, v59, v60, v61, v62, v63, v64, v65;
    v66._countAndFlagsBits = 32032;
    v66._object = 0xE200000000000000;
    String.append(_:)(v66);
    v67 = v280;
    sub_10005E11C(v49, v279, v280, 0xD000000000000062, 0x8000000100097DF0, 100);
    v67, v68, v69, v70, v71, v72, v73, v74;
    v279 = 0;
    v280 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v280, v75, v76, v77, v78, v79, v80, v81;
    v279 = 0xD00000000000002ALL;
    v280 = 0x8000000100097ED0;
    v82._countAndFlagsBits = URL.path.getter();
    v83 = v82._object;
    String.append(_:)(v82);
    v83, v84, v85, v86, v87, v88, v89, v90;
    v91._countAndFlagsBits = 32032;
    v91._object = 0xE200000000000000;
    String.append(_:)(v91);
    v92 = v279;
    v93 = v280;
    sub_10000B6B0();
    swift_allocError();
    *v94 = v92;
    *(v94 + 8) = v93;
    *(v94 + 16) = 0;
    swift_willThrow();
    return;
  }

  v267 = v2;
  v18 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v20 = v19;
  v21 = String._bridgeToObjectiveC()();
  v20, v22, v23, v24, v25, v26, v27, v28;
  v279 = 0;
  v29 = [v18 attributesOfItemAtPath:v21 error:&v279];

  v30 = v279;
  if (!v29)
  {
    v96 = v279;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000B6668 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_100003448(v97, qword_1000B8380);
    v98 = static os_log_type_t.error.getter();
    v279 = 0;
    v280 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v280, v99, v100, v101, v102, v103, v104, v105;
    v279 = 0xD000000000000029;
    v280 = 0x8000000100097F00;
    swift_getErrorValue();
    v106._countAndFlagsBits = Error.localizedDescription.getter();
    v107 = v106._object;
    String.append(_:)(v106);
    v107, v108, v109, v110, v111, v112, v113, v114;
    v115._countAndFlagsBits = 32032;
    v115._object = 0xE200000000000000;
    String.append(_:)(v115);
    v116 = v280;
    sub_10005E11C(v98, v279, v280, 0xD000000000000062, 0x8000000100097DF0, 108);
    v116, v117, v118, v119, v120, v121, v122, v123;
    v279 = 0;
    v280 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v280, v124, v125, v126, v127, v128, v129, v130;
    v279 = 0xD000000000000029;
    v280 = 0x8000000100097F00;
    swift_getErrorValue();
    v131._countAndFlagsBits = Error.localizedDescription.getter();
    v132 = v131._object;
    String.append(_:)(v131);
    v132, v133, v134, v135, v136, v137, v138, v139;
    v140._countAndFlagsBits = 32032;
    v140._object = 0xE200000000000000;
    String.append(_:)(v140);
    v141 = v279;
    v142 = v280;
    sub_10000B6B0();
    swift_allocError();
    *v143 = v141;
    *(v143 + 8) = v142;
    *(v143 + 16) = 12;
    swift_willThrow();

    goto LABEL_18;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_10005E010();
  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v30;

  if (!*v31->endpoint || (v40 = sub_1000580B0(NSFileSize), (v33 & 1) == 0))
  {
    v31, v33, v34, v35, v36, v37, v38, v39;
    goto LABEL_14;
  }

  sub_100005BBC(*v31[1].endpoint + 32 * v40, &v279);
  v31, v41, v42, v43, v44, v45, v46, v47;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_10000B6B0();
    swift_allocError();
    *v95 = 0xD00000000000001ELL;
    *(v95 + 8) = 0x8000000100097F30;
    *(v95 + 16) = 2;
    swift_willThrow();
LABEL_18:

    return;
  }

  if (v278 < -135)
  {
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
  }

  if ((v278 + 135) < 0x10F)
  {
    v275 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v144 = 0;
  v145 = v278 / 136;
  v264 = 0x8000000100097F50;
  v270 = "nd signature from list. { name=";
  v252 = (v3 + 8);
  v251 = (v5 + 8);
  v254 = "ignature data. { error=";
  v253 = 0xD00000000000001ELL;
  v248 = xmmword_100092990;
  v275 = &_swiftEmptyArrayStorage;
  v250 = v17;
  v249 = v278 / 136;
  while (1)
  {
    v173 = NSFileHandle.read(upToCount:)();
    if (v1)
    {
      if (qword_1000B6668 != -1)
      {
        swift_once();
      }

      v146 = type metadata accessor for Logger();
      sub_100003448(v146, qword_1000B8380);
      v147 = static os_log_type_t.error.getter();
      v279 = 0;
      v280 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);
      v280, v148, v149, v150, v151, v152, v153, v154;
      v279 = 0xD000000000000027;
      v280 = v264;
      swift_getErrorValue();
      v155._countAndFlagsBits = Error.localizedDescription.getter();
      v156 = v155._object;
      String.append(_:)(v155);
      v156, v157, v158, v159, v160, v161, v162, v163;
      v164._countAndFlagsBits = 32032;
      v164._object = 0xE200000000000000;
      String.append(_:)(v164);
      v165 = v280;
      sub_10005E11C(v147, v279, v280, 0xD000000000000062, (v270 | 0x8000000000000000), 131);
      v165, v166, v167, v168, v169, v170, v171, v172;

      v1 = 0;
      goto LABEL_23;
    }

    if (v174 >> 60 != 15)
    {
      break;
    }

    if (qword_1000B6668 != -1)
    {
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    sub_100003448(v175, qword_1000B8380);
    v176 = static os_log_type_t.error.getter();
    sub_10005E11C(v176, v253, (v254 | 0x8000000000000000), 0xD000000000000062, (v270 | 0x8000000000000000), 125);
LABEL_23:
    if (v145 == ++v144)
    {
      goto LABEL_18;
    }
  }

  if (v144 > 0xFFFFFFFFLL)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v177 = v174;
  v178 = v173;
  __src = v144;
  v266 = sub_10005C6C0(&__src, &v277);
  v180 = v179;
  v181 = Data.subdata(in:)();
  v265 = v182;
  v263 = Data.subdata(in:)();
  v269 = v183;
  v262 = v178;
  v255 = v177;
  v271 = Data.subdata(in:)();
  v268 = v184;
  v185 = v272;
  Date.init()();
  v186 = [objc_allocWithZone(NSDateFormatter) init];
  v187 = v274;
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v189 = v180;
  (*v252)(v187, v267);
  [v186 setLocale:isa];

  [v186 setDateStyle:4];
  [v186 setTimeStyle:4];
  v190 = Date._bridgeToObjectiveC()().super.isa;
  v191 = [v186 stringFromDate:v190];

  v261 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v260 = v192;

  v193 = v266;
  (*v251)(v185, v273);
  sub_100005A7C(v193, v189 & 0xFFFFFFFFFFFFFFLL);
  sub_100005A7C(v181, v265);
  v194 = v269;
  sub_100005A7C(v263, v269);
  sub_100005A7C(v271, v268);
  v195 = v189;
  v196 = Data.base64EncodedString(options:)(0);
  v197 = v181;
  v198 = Data.base64EncodedString(options:)(0);
  v199 = v194 >> 62;
  countAndFlagsBits = v196._countAndFlagsBits;
  v258 = v196._object;
  v257 = v198._countAndFlagsBits;
  v256 = v198._object;
  if ((v194 >> 62) > 1)
  {
    v200 = 0;
    v201 = v263;
    v202 = v195;
    if (v199 != 2)
    {
      goto LABEL_37;
    }

    v204 = *v263->endpoint;
    v203 = *v263->connection;
    v200 = v203 - v204;
    v205 = v269;
    if (__OFSUB__(v203, v204))
    {
      goto LABEL_73;
    }
  }

  else
  {
    if (!v199)
    {
      v200 = BYTE6(v269);
      v201 = v263;
      v202 = v195;
LABEL_37:
      v206 = v200 >> 2;
      v205 = v269;
      v207 = v197;
      goto LABEL_44;
    }

    v201 = v263;
    if (__OFSUB__(HIDWORD(v263), v263))
    {
      goto LABEL_74;
    }

    v202 = v195;
    v200 = HIDWORD(v263) - v263;
    v205 = v269;
  }

  v207 = v197;
  v208 = v200 + 3;
  if (v200 >= 0)
  {
    v208 = v200;
  }

  if (v200 < -3)
  {
    goto LABEL_70;
  }

  v206 = v208 >> 2;
LABEL_44:
  sub_100005A7C(v201, v205);
  v209 = &_swiftEmptyArrayStorage;
  if (v200 >= 4)
  {
    v209 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *v209->endpoint = v206;
  }

  v263 = v209;
  v278 = 0;
  v279 = v209->$__lazy_storage_$_interface;
  v280 = v206;
  v210 = v269;
  sub_10002F8A4(&v279, &v278, v201, v269);
  if (v206 < v278)
  {
    goto LABEL_71;
  }

  *v263->endpoint = v278;
  sub_100005A28(v201, v210);
  v211 = v268;
  v212 = v268 >> 62;
  if ((v268 >> 62) > 1)
  {
    if (v212 != 2)
    {
      v213 = 0;
      goto LABEL_62;
    }

    v247 = v207;
    v214 = v202;
    v215 = *(v271 + 16);
    v216 = __DataStorage._bytes.getter();
    if (!v216)
    {
      goto LABEL_80;
    }

    v217 = v216;
    v218 = __DataStorage._offset.getter();
    if (__OFSUB__(v215, v218))
    {
      goto LABEL_76;
    }

    v219 = (v215 - v218 + v217);
    __DataStorage._length.getter();
    if (!v219)
    {
      goto LABEL_81;
    }

    v213 = *v219;
    v202 = v214;
    v207 = v247;
    v210 = v269;
    goto LABEL_60;
  }

  if (!v212)
  {
    v213 = v271;
LABEL_62:
    sub_100005A28(v271, v211);
    sub_100005A28(v201, v210);
    sub_100005A28(v207, v265);
    sub_100005A28(v266, v202 & 0xFFFFFFFFFFFFFFLL);
    LOBYTE(v278) = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v237 = v275;
    }

    else
    {
      v237 = sub_100049A20(0, *v275->endpoint + 1, 1, v275, v233, v234, v235, v236);
    }

    v239 = *v237->endpoint;
    v238 = *v237->connection;
    if (v239 >= v238 >> 1)
    {
      v275 = sub_100049A20((v238 > 1), v239 + 1, 1, v237, v233, v234, v235, v236);
    }

    else
    {
      v275 = v237;
    }

    sub_100005A14(v262, v255);
    sub_100005A28(v271, v268);
    sub_100005A28(v201, v210);
    sub_100005A28(v207, v265);
    sub_100005A28(v266, v202 & 0xFFFFFFFFFFFFFFLL);
    v240 = v275;
    *v275->endpoint = v239 + 1;
    v241 = &v240[2 * v239];
    v242 = v258;
    *v241->$__lazy_storage_$_interface = countAndFlagsBits;
    *v241[1]._TtCs12_SwiftObject_opaque = v242;
    v243 = v256;
    *&v241[1]._TtCs12_SwiftObject_opaque[8] = v257;
    *v241[1].endpoint = v243;
    *v241[1].connection = v263;
    *v241[1].$__lazy_storage_$_interface = v213;
    v241[1].$__lazy_storage_$_interface[4] = 0;
    LOBYTE(v243) = BYTE2(v279);
    *&v241[1].$__lazy_storage_$_interface[5] = v279;
    v241[1].$__lazy_storage_$_interface[7] = v243;
    *v241[2]._TtCs12_SwiftObject_opaque = v248;
    v244 = v260;
    *v241[2].endpoint = v261;
    *v241[2].connection = v244;
    v17 = v250;
    v145 = v249;
    goto LABEL_23;
  }

  v247 = v207;
  v246 = v202;
  v228 = v271;
  if (v271 > v271 >> 32)
  {
    goto LABEL_75;
  }

  v229 = __DataStorage._bytes.getter();
  if (v229)
  {
    v230 = v229;
    v231 = __DataStorage._offset.getter();
    if (__OFSUB__(v228, v231))
    {
      goto LABEL_77;
    }

    v232 = (v228 - v231 + v230);
    __DataStorage._length.getter();
    if (!v232)
    {
      goto LABEL_79;
    }

    v213 = *v232;
    v202 = v246;
    v207 = v247;
LABEL_60:
    v211 = v268;
    goto LABEL_62;
  }

  __DataStorage._length.getter();
LABEL_79:
  __break(1u);
LABEL_80:
  __DataStorage._length.getter();
LABEL_81:
  __break(1u);
  v245 = v263;
  *v263->endpoint = v227;
  v245, v220, v221, v222, v223, v224, v225, v226;
  __break(1u);
}