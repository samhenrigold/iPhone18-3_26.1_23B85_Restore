uint64_t sub_1598(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E2B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E334();

  v8 = sub_E324();
  v9 = sub_E4A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    sub_E2D4();
    sub_2018();
    v12 = sub_E564();
    v13 = v4;
    v15 = v14;
    (*(v5 + 8))(v7, v13);
    v16 = sub_19CC(v12, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Initializing VUPersonalizationPlugin for the VUGallery for %s client", v10, 0xCu);
    sub_2070(v11);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_17C0()
{

  v1 = OBJC_IVAR____TtC7Plugins23VUPersonalizationPlugin_logger;
  v2 = sub_E344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VUPersonalizationPlugin(uint64_t a1)
{
  result = qword_18508;
  if (!qword_18508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B8(uint64_t a1)
{
  result = sub_E344();
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

uint64_t sub_1958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for VUPersonalizationPlugin(0);
  v4 = swift_allocObject();
  result = sub_1598(a1);
  *a2 = v4;
  return result;
}

unint64_t sub_19CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A98(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2070(v11);
  return v7;
}

unint64_t sub_1A98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BA4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_E524();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1BA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BF0(a1, a2);
  sub_1D20(&off_14758);
  return v3;
}

char *sub_1BF0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1E0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_E524();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_E3B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1E0C(v10, 0);
        result = sub_E504();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D20(uint64_t result)
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

  result = sub_1E80(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_1E0C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2118(&qword_185C0, &unk_EC68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E80(char *result, int64_t a2, char a3, char *a4)
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
    sub_2118(&qword_185C0, &unk_EC68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void sub_1F74(uint64_t a1)
{
  v1 = sub_E324();
  v2 = sub_E4C4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Personalization plugin updated", v3, 2u);
  }
}

unint64_t sub_2018()
{
  result = qword_185B8;
  if (!qword_185B8)
  {
    sub_E2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185B8);
  }

  return result;
}

uint64_t sub_2070(void *a1)
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

uint64_t sub_20BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2118(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2164(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E2B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E334();
  *(v1 + OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin____lazy_storage___photoLibrary) = 0;

  v8 = sub_E324();
  v9 = sub_E4A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    sub_E2D4();
    sub_E068(&qword_185B8, &type metadata accessor for VUGallery.Client, &protocol conformance descriptor for VUGallery.Client);
    v12 = sub_E564();
    v13 = v4;
    v15 = v14;
    (*(v5 + 8))(v7, v13);
    v16 = sub_19CC(v12, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Initializing VUDeviceOwnerPlugin for the VUGallery for %s client", v10, 0xCu);
    sub_2070(v11);
  }

  *(v2 + 16) = a1;
  return v2;
}

id sub_23C8()
{
  v1 = sub_E154();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin____lazy_storage___photoLibrary;
  v7 = *(v0 + OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin____lazy_storage___photoLibrary);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin____lazy_storage___photoLibrary);
  }

  else
  {
    v9 = v3;
    v10 = objc_opt_self();
    if ([v10 isMultiLibraryModeEnabled])
    {
      v11 = [v10 systemPhotoLibraryURL];
      sub_E144();

      v12 = objc_allocWithZone(PHPhotoLibrary);
      sub_E134(v13);
      v15 = v14;
      v16 = [v12 initWithPhotoLibraryURL:v14];

      (*(v2 + 8))(v5, v9);
    }

    else
    {
      v16 = [v10 sharedPhotoLibrary];
    }

    v17 = *(v0 + v6);
    *(v0 + v6) = v16;
    v8 = v16;

    v7 = 0;
  }

  v18 = v7;
  return v8;
}

Class sub_256C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_DACC(0, &qword_18970, NSObject_ptr);
    v4.super.isa = sub_E354().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_2608(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2118(&qword_18968, &qword_EDC0);
    v2 = sub_E544();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_90E8(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_27E8()
{
  v1 = sub_E0F4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_2118(&qword_18A00, &qword_EE18);
  v5 = swift_allocBox();
  v7 = v6;
  v43 = v2;
  v8 = *(v2 + 56);
  v44 = v1;
  v8(v6, 1, 1, v1);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v46 = v9 + 16;
  *(v9 + 24) = 1;
  v10 = [objc_allocWithZone(CNContactStore) init];
  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v10;
  v11[4] = v4;
  v11[5] = v5;
  v11[6] = v9;
  aBlock[4] = sub_DBB4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_378C;
  aBlock[3] = &unk_14938;
  v12 = _Block_copy(aBlock);

  v13 = v10;

  [v13 requestAccessForEntityType:0 completionHandler:v12];
  _Block_release(v12);

  v14 = sub_E324();
  v15 = sub_E4A4();

  v16 = os_log_type_enabled(v14, v15);
  v45 = v4 + 16;
  if (v16)
  {
    v40 = v15;
    v41 = v13;
    v17 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v17 = 136315650;
    swift_beginAccess();
    v18 = *(v4 + 24);
    if (v18)
    {
      v19 = *(v4 + 16);
    }

    else
    {
      v18 = 0xE300000000000000;
      v19 = 7104878;
    }

    v20 = sub_19CC(v19, v18, aBlock);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    swift_beginAccess();
    v21 = v43;
    v22 = v44;
    if ((*(v43 + 48))(v7, 1, v44))
    {
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    else
    {
      v25 = v42;
      (*(v21 + 16))(v42, v7, v22);
      v26 = v21;
      v27 = sub_E0C4();
      v23 = v28;
      (*(v26 + 8))(v25, v22);
      v24 = v27;
    }

    v29 = v41;
    v30 = sub_19CC(v24, v23, aBlock);

    *(v17 + 14) = v30;
    *(v17 + 22) = 2080;
    swift_beginAccess();
    if (*(v9 + 24))
    {

      v31 = 0xE300000000000000;
      v32 = 7104878;
    }

    else
    {
      v47[0] = *(v9 + 16);
      sub_DBC4();
      v33 = sub_E4E4();
      v31 = v34;

      v32 = v33;
    }

    v35 = sub_19CC(v32, v31, aBlock);

    *(v17 + 24) = v35;
    _os_log_impl(&dword_0, v14, v40, "Fetched me contact with meContactIdentifier: %s and meBirthday %s and meAge %s", v17, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_beginAccess();
  v36 = *(v4 + 16);
  swift_beginAccess();

  return v36;
}

void sub_2D94(char a1, uint64_t a2, uint64_t a3, id a4, char *a5, uint64_t a6, uint64_t a7)
{
  v85 = a7;
  v91 = a5;
  v95 = sub_E1E4();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v97 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_E0F4();
  v89 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v86 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = v82 - v14;
  v15 = sub_E174();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2118(&qword_18A00, &qword_EE18);
  v20 = __chkstk_darwin(v19 - 8);
  v93 = v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v90 = v82 - v22;
  v92 = swift_projectBox();
  if (a2)
  {
    v23 = a2;
    v87 = a4;
    swift_errorRetain();
    v24 = sub_E324();
    v25 = sub_E4B4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v88 = v11;
      v98[0] = v27;
      v28 = v18;
      v29 = v27;
      *v26 = 136315138;
      v82[1] = v23;
      swift_getErrorValue();
      v30 = sub_E584();
      v32 = sub_19CC(v30, v31, v98);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_0, v24, v25, "Failed to fetch the me contact identifier: %s", v26, 0xCu);
      sub_2070(v29);
      v18 = v28;
      v11 = v88;
    }

    else
    {
    }

    a4 = v87;
  }

  if (a1)
  {
    v33 = v11;
    sub_2118(&qword_18A10, &unk_EE20);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_ECC0;
    *(v34 + 32) = CNContactIdentifierKey;
    *(v34 + 40) = CNContactBirthdayKey;
    v35 = CNContactIdentifierKey;
    v36 = CNContactBirthdayKey;
    sub_2118(&qword_18A18, &qword_EE30);
    isa = sub_E3E4().super.isa;

    v98[0] = 0;
    v38 = [a4 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:v98];

    if (v38)
    {
      v39 = v98[0];
      v40 = [v38 identifier];
      v41 = sub_E394();
      v87 = v38;
      v43 = v42;

      v44 = 1;
      v45 = v91;
      swift_beginAccess();
      *(v45 + 2) = v41;
      *(v45 + 3) = v43;

      v46 = [v87 birthday];
      v84 = v15;
      v83 = v16;
      v47 = v18;
      v48 = v90;
      if (v46)
      {
        v49 = v46;
        sub_E0D4();

        v44 = 0;
      }

      v51 = v89;
      (*(v89 + 56))(v48, v44, 1, v33);
      v52 = v92;
      swift_beginAccess();
      sub_DC18(v48, v52, &qword_18A00, &qword_EE18);
      sub_E164();
      sub_E1C4();
      sub_2118(&qword_18A20, &qword_EE38);
      v53 = sub_E1D4();
      v54 = *(v53 - 8);
      v55 = v54;
      v91 = v47;
      v56 = *(v54 + 72);
      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v88 = v33;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_ECD0;
      v59 = v58 + v57;
      v60 = *(v55 + 104);
      v60(v59, enum case for Calendar.Component.year(_:), v53);
      v60(v59 + v56, enum case for Calendar.Component.month(_:), v53);
      v60(v59 + 2 * v56, enum case for Calendar.Component.day(_:), v53);
      v60(v59 + 3 * v56, enum case for Calendar.Component.hour(_:), v53);
      v61 = v59 + 4 * v56;
      v62 = v88;
      v60(v61, enum case for Calendar.Component.minute(_:), v53);
      v63 = v51;
      sub_DC80(v58);
      swift_setDeallocating();
      swift_arrayDestroy();
      v64 = v91;
      swift_deallocClassInstance();
      v66 = v96;
      v65 = v97;
      sub_E1B4();

      (*(v94 + 8))(v65, v95);
      swift_beginAccess();
      v67 = v93;
      sub_DFA0(v52, v93, &qword_18A00, &qword_EE18);
      if ((*(v63 + 48))(v67, 1, v62) == 1)
      {

        (*(v63 + 8))(v66, v62);
        (*(v83 + 8))(v64, v84);
        sub_E008(v67, &qword_18A00, &qword_EE18);
      }

      else
      {
        v68 = v64;
        v69 = v86;
        (*(v63 + 32))(v86, v67, v62);
        v70 = sub_E0E4();
        v71 = v83;
        if (v72)
        {

          v73 = *(v63 + 8);
          v73(v69, v62);
          v73(v66, v62);
          (*(v71 + 8))(v64, v84);
        }

        else
        {
          v74 = v70;
          v75 = sub_E0E4();
          v77 = v76;

          v78 = *(v63 + 8);
          v78(v69, v62);
          v78(v66, v62);
          (*(v71 + 8))(v68, v84);
          v79 = v85;
          if ((v77 & 1) == 0)
          {
            v80 = __OFSUB__(v75, v74);
            v81 = v75 - v74;
            if (v80)
            {
              __break(1u);
            }

            swift_beginAccess();
            *(v79 + 16) = v81;
            *(v79 + 24) = 0;
          }
        }
      }
    }

    else
    {
      v50 = v98[0];
      sub_E104();

      swift_willThrow();
    }
  }
}

void sub_378C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_3804()
{
  v1 = v0;
  v2 = sub_23C8();
  v3 = [v2 librarySpecificFetchOptions];

  sub_DACC(0, &qword_189F8, NSPredicate_ptr);
  v4 = &_swiftEmptyArrayStorage;
  v5 = sub_E474();
  [v3 setPredicate:v5];

  v28 = v3;
  v6 = [objc_opt_self() fetchPersonsWithOptions:v3];
  v7 = [v6 fetchedObjects];

  if (v7)
  {
    sub_DACC(0, &qword_189F0, PHPerson_ptr);
    v4 = sub_E3F4();
  }

  if (!(v4 >> 62))
  {
    v8 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_18:

    return;
  }

  v8 = sub_E534();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v4 & 0xC000000000000001;
    v30 = v8;
    v31 = v4;
    v29 = v4 & 0xC000000000000001;
    do
    {
      if (v10)
      {
        v11 = sub_E514();
      }

      else
      {
        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = sub_E324();
      v14 = sub_E4A4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = v1;
        v16 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v16 = 136315394;
        v17 = [v12 localIdentifier];
        v18 = sub_E394();
        v20 = v19;

        v21 = sub_19CC(v18, v20, &v32);

        *(v16 + 4) = v21;
        *(v16 + 12) = 2080;
        v22 = [v12 name];
        if (v22)
        {
          v23 = v22;
          v24 = sub_E394();
          v26 = v25;
        }

        else
        {
          v24 = 0x20656D616E206F6ELL;
          v26 = 0xED0000646E756F66;
        }

        v27 = sub_19CC(v24, v26, &v32);

        *(v16 + 14) = v27;
        _os_log_impl(&dword_0, v13, v14, "Found PHPerson with localIdentifier %s with name %s", v16, 0x16u);
        swift_arrayDestroy();

        v1 = v15;
        v8 = v30;
        v4 = v31;
        v10 = v29;
      }

      else
      {
      }

      ++v9;
    }

    while (v8 != v9);
    goto LABEL_18;
  }

  __break(1u);
}

id sub_3B8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23C8();
  v5 = [v4 librarySpecificFetchOptions];

  [v5 setPersonContext:1];
  sub_DACC(0, &qword_189F8, NSPredicate_ptr);
  v6 = sub_E474();
  [v5 setPredicate:v6];

  v7 = objc_opt_self();
  sub_2118(&qword_189D8, &qword_EE10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_ECE0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  isa = sub_E3E4().super.isa;

  v10 = [v7 fetchPersonsForContactIdentifiers:isa options:v5];

  v11 = [v10 firstObject];

  v12 = sub_E324();
  v13 = sub_E4A4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_19CC(a1, a2, &v27);
    *(v14 + 12) = 2080;
    if (v11)
    {
      v15 = [v11 localIdentifier];
      v16 = sub_E394();
      v18 = v17;
    }

    else
    {
      v18 = 0x800000000000F100;
      v16 = 0xD000000000000018;
    }

    v19 = 0xED0000646E756F66;
    v20 = 0x20656D616E206F6ELL;
    v21 = sub_19CC(v16, v18, &v27);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2080;
    if (v11)
    {
      v22 = [v11 name];
      if (v22)
      {
        v23 = v22;
        v20 = sub_E394();
        v19 = v24;
      }
    }

    v25 = sub_19CC(v20, v19, &v27);

    *(v14 + 24) = v25;
    _os_log_impl(&dword_0, v12, v13, "Found PHPerson linked with contact %s with localIdentifier: %s, name: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  return v11;
}

void *sub_3EFC(uint64_t a1, unint64_t a2)
{
  v54 = sub_E124();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v2;
  v8 = sub_23C8();
  v9 = [v8 librarySpecificFetchOptions];

  v60 = &_swiftEmptyArrayStorage;
  v10 = objc_opt_self();
  v42 = v9;
  v11 = [v10 fetchPersonsWithAutonamingSuggestionFeatureUserFeedbackWithOptions:v9];
  if (v11)
  {
    v13 = v11;
    v14 = [v11 fetchedObjects];

    if (v14)
    {
      sub_DACC(0, &qword_189F0, PHPerson_ptr);
      v15 = sub_E3F4();
    }

    else
    {
      v15 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
  }

  v47 = v15;
  if (v15 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)); i; i = sub_E534())
  {
    v16 = 0;
    v50 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin_logger;
    v51 = v47 & 0xC000000000000001;
    v45 = v47 & 0xFFFFFFFFFFFFFF8;
    v44 = v47 + 32;
    v49 = v5 + 1;
    *&v12 = 136315394;
    v46 = v12;
    v43 = &_swiftEmptyArrayStorage;
    while (v51)
    {
      v17 = sub_E514();
      v18 = __OFADD__(v16, 1);
      v19 = v16 + 1;
      if (v18)
      {
        goto LABEL_38;
      }

LABEL_16:
      v55 = v19;
      v20 = v17;

      v21 = sub_E324();
      v22 = sub_E4A4();

      v23 = v20;
      if (os_log_type_enabled(v21, v22))
      {
        v24 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v58 = v48;
        *v24 = v46;
        v25 = [v23 localIdentifier];
        v26 = sub_E394();
        v27 = a1;
        v29 = v28;

        v30 = sub_19CC(v26, v29, &v58);
        a1 = v27;

        *(v24 + 4) = v30;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_19CC(v27, a2, &v58);
        _os_log_impl(&dword_0, v21, v22, "Found PHPerson with localIdentifier %s with negative feedback for contact %s", v24, 0x16u);
        swift_arrayDestroy();

        v20 = v23;
      }

      [v20 fetchPropertySetsIfNeeded];
      v31 = [v20 userFeedbackProperties];
      v5 = [v31 autonamingUserFeedbacks];

      if (!v5)
      {
        sub_DACC(0, &qword_189E0, NSOrderedSet_ptr);
        v5 = sub_E484();
      }

      sub_E494();
LABEL_22:
      while (1)
      {
        sub_E114();
        if (!v59)
        {
          break;
        }

        while (1)
        {
          sub_DABC(&v58, &v57);
          sub_DACC(0, &qword_189E8, PHUserFeedback_ptr);
          if (!swift_dynamicCast())
          {
            break;
          }

          v32 = v56;
          v33 = [v56 feature];
          if ((v33 & 0x8000000000000000) != 0 || v33 != 2 || (v34 = [v32 context]) == 0)
          {
LABEL_21:

            v20 = v23;
            goto LABEL_22;
          }

          v35 = v34;
          v36 = sub_E394();
          v38 = v37;

          if (v36 == a1 && v38 == a2)
          {
          }

          else
          {
            v39 = sub_E574();

            if ((v39 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v40 = v23;
          sub_E3D4();
          if (*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v60 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_E414();
          }

          sub_E434();

          v43 = v60;
          sub_E114();
          v20 = v23;
          if (!v59)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_9:
      (*v49)(v7, v54);

      v16 = v55;
      if (v55 == i)
      {

        return v43;
      }
    }

    if (v16 >= *(v45 + 16))
    {
      goto LABEL_39;
    }

    v17 = *(v44 + 8 * v16);
    v18 = __OFADD__(v16, 1);
    v19 = v16 + 1;
    if (!v18)
    {
      goto LABEL_16;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_4558(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8();
  v5 = [v4 librarySpecificFetchOptions];

  [v5 setPersonContext:1];
  v6 = objc_opt_self();
  sub_2118(&qword_189D8, &qword_EE10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_ECE0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  isa = sub_E3E4().super.isa;

  v9 = [v6 fetchPersonsWithLocalIdentifiers:isa options:v5];

  v10 = [v9 firstObject];
  if (v10)
  {
    v11 = [v10 ageType];
  }

  else
  {

    v11 = 0;
  }

  return v11 | ((v10 == 0) << 16);
}

uint64_t sub_46B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = sub_E2B4();
  v7 = *(v83 - 8);
  __chkstk_darwin(v83);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_E314();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = __chkstk_darwin(v10);
  v74 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v65 - v13;
  v14 = sub_2118(&qword_18990, &qword_EDD8);
  v15 = __chkstk_darwin(v14 - 8);
  v79 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v65 - v17;
  v19 = sub_E1A4();
  v85 = *(v19 - 8);
  __chkstk_darwin(v19);
  v84 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2118(&qword_18928, &qword_ED80);
  v22 = __chkstk_darwin(v21 - 8);
  v73 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v77 = &v65 - v25;
  __chkstk_darwin(v24);
  v27 = &v65 - v26;
  v28 = sub_E254();
  v72 = *(v28 - 8);
  v29 = *(v72 + 56);
  v78 = v28;
  v76 = v29;
  (v29)(v27, 1, 1);
  v30 = sub_3B8C(a1, a2);
  if (!v30)
  {
    goto LABEL_18;
  }

  v31 = v30;
  v82 = v19;
  v32 = [v30 localIdentifier];
  if (!v32)
  {
    sub_E394();
    v32 = sub_E384();
  }

  v33 = [objc_opt_self() uuidFromLocalIdentifier:v32];

  if (!v33)
  {

LABEL_18:
    swift_beginAccess();
    sub_DFA0(v27, a3, &qword_18928, &qword_ED80);
    return sub_E008(v27, &qword_18928, &qword_ED80);
  }

  v71 = a3;
  sub_E394();

  sub_E184();

  v34 = v85;
  v35 = v82;
  if ((*(v85 + 48))(v18, 1, v82) == 1)
  {

    sub_E008(v18, &qword_18990, &qword_EDD8);
LABEL_17:
    a3 = v71;
    goto LABEL_18;
  }

  v70 = v31;
  v36 = v84;
  (*(v34 + 32))(v84, v18, v35);
  v69 = v3;
  v37 = v83;
  (*(v7 + 104))(v9, enum case for VUGallery.Client.photos(_:), v83);

  v38 = sub_E294();
  v39 = v37;

  v42 = *(v7 + 8);
  v41 = v7 + 8;
  v40 = v42;
  v42(v9, v39);
  if (!*(v38 + 16))
  {

    (*(v34 + 8))(v36, v35);
    goto LABEL_17;
  }

  v43 = v80;
  v44 = *(v80 + 16);
  v65 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v45 = v75;
  v68 = v40;
  v46 = v81;
  v66 = v44;
  v44(v75, v38 + v65, v81);

  v67 = v41;
  sub_E304();
  v80 = *(v43 + 8);
  (v80)(v45, v46);

  sub_E2D4();
  sub_E2A4();
  v68(v9, v83);
  v47 = sub_E284();

  if (*(v47 + 16))
  {
    v48 = v74;
    v49 = v81;
    v66(v74, v47 + v65, v81);

    v50 = v79;
    sub_E2E4();
    (v80)(v48, v49);
    v51 = 0;
  }

  else
  {

    v51 = 1;
    v50 = v79;
  }

  v52 = v78;
  v53 = v85;
  v54 = v82;
  (*(v85 + 56))(v50, v51, 1, v82);
  v55 = v77;
  sub_E264();
  v76(v55, 0, 1, v52);
  sub_DC18(v55, v27, &qword_18928, &qword_ED80);
  v56 = sub_E324();
  v57 = sub_E4A4();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v70;
  if (!v58)
  {

    (*(v53 + 8))(v84, v54);
    goto LABEL_17;
  }

  v60 = swift_slowAlloc();
  *v60 = 134217984;
  swift_beginAccess();
  v61 = v73;
  sub_DFA0(v27, v73, &qword_18928, &qword_ED80);
  v62 = v72;
  result = (*(v72 + 48))(v61, 1, v52);
  if (result != 1)
  {
    v64 = sub_E244();
    (*(v62 + 8))(v61, v52);
    *(v60 + 4) = v64;
    _os_log_impl(&dword_0, v56, v57, "Device owner: found ground truth %ld", v60, 0xCu);

    (*(v53 + 8))(v84, v82);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_4F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_E1A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_E314();
  v8 = *(v107 - 8);
  v9 = __chkstk_darwin(v107);
  v102 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v103 = &v92 - v12;
  v13 = __chkstk_darwin(v11);
  v118 = &v92 - v14;
  __chkstk_darwin(v13);
  v105 = &v92 - v15;
  v122 = sub_E2B4();
  v108 = *(v122 - 1);
  v16 = __chkstk_darwin(v122);
  v117 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v119 = &v92 - v18;
  v19 = sub_2118(&qword_18990, &qword_EDD8);
  v20 = __chkstk_darwin(v19 - 8);
  v104 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v92 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v92 - v26;
  __chkstk_darwin(v25);
  v29 = &v92 - v28;
  v126[0] = a1;
  v126[1] = a2;
  v124 = 58;
  v125 = 0xE100000000000000;
  sub_DA68();
  v30 = sub_E4D4();
  if (!v30[2])
  {

    return;
  }

  v32 = v30[4];
  v31 = v30[5];

  v121 = v32;
  sub_E184();
  v98 = v5;
  v33 = *(v5 + 48);
  v101 = v4;
  v100 = v5 + 48;
  v99 = v33;
  if (v33(v29, 1, v4) == 1)
  {

    v34 = v29;
LABEL_46:
    sub_E008(v34, &qword_18990, &qword_EDD8);
    return;
  }

  sub_E008(v29, &qword_18990, &qword_EDD8);
  v35 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin_logger;

  v97 = v35;
  v36 = sub_E324();
  v37 = sub_E4A4();

  v38 = os_log_type_enabled(v36, v37);
  v95 = v7;
  v96 = v24;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v126[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_19CC(v121, v31, v126);
    _os_log_impl(&dword_0, v36, v37, "Me Contact Picture: fetching tags for UUID %s", v39, 0xCu);
    sub_2070(v40);
  }

  v41 = v108;
  v42 = v122;

  sub_E184();
  v43 = v101;
  if (v99(v27, 1, v101) == 1)
  {
    goto LABEL_49;
  }

  v44 = v119;
  v115 = *(v41 + 104);
  v116 = v41 + 104;
  v115(v119, enum case for VUGallery.Client.contacts(_:), v42);
  v45 = sub_E294();

  v114 = *(v41 + 8);
  v114(v44, v42);
  v46 = *(v98 + 8);
  v94 = v98 + 8;
  v93 = v46;
  v46(v27, v43);
  v113 = *(v45 + 16);
  v108 = v41 + 8;
  if (v113)
  {
    v47 = 0;
    v112 = v8 + 16;
    v111 = enum case for VUGallery.Client.photos(_:);
    v106 = (v8 + 8);
    v109 = (v8 + 32);
    v48 = &_swiftEmptyArrayStorage;
    v49 = v107;
    v50 = v105;
    v110 = v45;
    while (v47 < *(v45 + 16))
    {
      v121 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v122 = v48;
      v120 = *(v8 + 72);
      (*(v8 + 16))(v50, v45 + v121 + v120 * v47, v49);
      v51 = v8;
      v52 = v119;
      sub_E2F4();
      v53 = v117;
      v115(v117, v111, v42);
      sub_E068(&qword_189C8, &type metadata accessor for VUGallery.Client, &protocol conformance descriptor for VUGallery.Client);
      sub_E3C4();
      sub_E3C4();
      v54 = v114;
      v114(v53, v42);
      v54(v52, v42);
      if (v124 == v123)
      {
        v55 = *v109;
        (*v109)(v118, v50, v49);
        v48 = v122;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126[0] = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_9284(0, *(v48 + 2) + 1, 1);
          v50 = v105;
          v48 = v126[0];
        }

        v45 = v110;
        v58 = *(v48 + 2);
        v57 = *(v48 + 3);
        if (v58 >= v57 >> 1)
        {
          sub_9284((v57 > 1), v58 + 1, 1);
          v50 = v105;
          v48 = v126[0];
        }

        *(v48 + 2) = v58 + 1;
        v59 = &v48[v121 + v58 * v120];
        v49 = v107;
        v55(v59, v118, v107);
        v8 = v51;
      }

      else
      {
        (*v106)(v50, v49);
        v8 = v51;
        v48 = v122;
        v45 = v110;
      }

      if (v113 == ++v47)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v48 = &_swiftEmptyArrayStorage;
LABEL_20:

  if (*(v48 + 2) == 1)
  {
    v60 = sub_E324();
    v61 = sub_E4A4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "Me Contact Picture: found exactly one face", v62, 2u);
    }

    if (!*(v48 + 2))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    v63 = v8;
    v64 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v65 = v103;
    v66 = v107;
    v122 = *(v63 + 16);
    (v122)(v103, &v48[v64], v107);

    sub_E304();
    v67 = *(v63 + 8);
    v67(v65, v66);
    v68 = v119;
    v115(v119, enum case for VUGallery.Client.photos(_:), v42);

    sub_E2A4();
    v114(v68, v42);
    v69 = sub_E284();

    if (*(v69 + 16))
    {
      v70 = v102;
      (v122)(v102, v69 + v64, v66);

      v71 = v96;
      sub_E2E4();
      v67(v70, v66);
      v72 = 0;
      v73 = v101;
    }

    else
    {

      v72 = 1;
      v73 = v101;
      v71 = v96;
    }

    v78 = v98;
    v79 = v104;
    (*(v98 + 56))(v71, v72, 1, v73);
    sub_DFA0(v71, v79, &qword_18990, &qword_EDD8);
    if (v99(v79, 1, v73) == 1)
    {
      sub_E008(v79, &qword_18990, &qword_EDD8);
      v80 = sub_E324();
      v81 = sub_E4A4();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_0, v80, v81, "Me Contact Picture: does not match a PHPerson", v82, 2u);
      }

LABEL_45:
      v34 = v96;
      goto LABEL_46;
    }

    (*(v78 + 32))(v95, v79, v73);
    v83 = sub_E194();
    v85 = sub_4558(v83, v84);

    v86 = sub_E324();
    v87 = sub_E4A4();
    v88 = os_log_type_enabled(v86, v87);
    if ((v85 & 0x10000) != 0 || (v85 - 6) < 0xFFFDu)
    {
      if (v88)
      {
        v90 = swift_slowAlloc();
        *v90 = 33554688;
        if ((v85 & 0x10000) != 0)
        {
          v91 = 0;
        }

        else
        {
          v91 = v85;
        }

        *(v90 + 4) = v91;
        _os_log_impl(&dword_0, v86, v87, "Me Contact Picture: matches a PHPerson not adult (age %hu), not usable for device owner inference", v90, 6u);
      }

      v93(v95, v73);
      goto LABEL_45;
    }

    if (v88)
    {
      v89 = swift_slowAlloc();
      *v89 = 33554688;
      *(v89 + 4) = v85;
      _os_log_impl(&dword_0, v86, v87, "Me Contact Picture: matches a PHPerson young adult, adult or senior (age %hu), returning this entity", v89, 6u);
    }

    v93(v95, v73);
    sub_E008(v96, &qword_18990, &qword_EDD8);
  }

  else
  {

    v74 = sub_E324();
    v75 = sub_E4A4();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 134217984;
      v77 = *(v48 + 2);

      *(v76 + 4) = v77;

      _os_log_impl(&dword_0, v74, v75, "Me Contact Picture: found %ld faces, not usable for device owner inference.", v76, 0xCu);
    }

    else
    {
    }
  }
}

char *sub_5DD0(unint64_t a1, uint64_t a2)
{
  v81 = a2;
  v92 = a1;
  v88 = sub_E2B4();
  v74 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2118(&qword_18990, &qword_EDD8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v72 - v8);
  v10 = sub_E1A4();
  v73 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v72 - v14);
  v89 = v2;
  sub_3804();
  v17 = v16;
  if (v16 >> 62)
  {
    result = sub_E534();
  }

  else
  {
    result = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  }

  v85 = v13;
  v86 = v7;
  v91 = v10;
  if (result)
  {
    v80 = result;
    v19 = v81;
    if (result >= 1)
    {
      v82 = v15;
      v90 = v9;
      v20 = 0;
      v93 = (v17 & 0xC000000000000001);
      v84 = (v73 + 48);
      v79 = (v73 + 32);
      LODWORD(v78) = enum case for VUGallery.Client.photos(_:);
      v76 = (v74 + 8);
      v77 = (v74 + 104);
      v83 = &_swiftEmptyArrayStorage;
      v75 = (v73 + 8);
      v21 = v80;
      while (1)
      {
        if (v93)
        {
          v22 = sub_E514();
        }

        else
        {
          v22 = *(v17 + 8 * v20 + 32);
        }

        v23 = v22;
        v24 = [v22 personUri];
        if (!v24)
        {
          goto LABEL_17;
        }

        v25 = v24;
        v26 = sub_E394();
        v28 = v27;

        if (v26 == v92 && v28 == v19)
        {

          goto LABEL_7;
        }

        v30 = sub_E574();

        if ((v30 & 1) == 0)
        {
LABEL_17:
          v31 = [v23 localIdentifier];
          if (!v31)
          {
            sub_E394();
            v31 = sub_E384();
          }

          v32 = [objc_opt_self() uuidFromLocalIdentifier:v31];

          if (v32)
          {
            sub_E394();

            v33 = v90;
            sub_E184();

            if ((*v84)(v33, 1, v10) == 1)
            {

              sub_E008(v33, &qword_18990, &qword_EDD8);
            }

            else
            {
              v34 = v82;
              (*v79)(v82, v33, v10);
              v35 = v88;
              v36 = v10;
              v37 = v87;
              (*v77)(v87, v78, v88);

              v38 = sub_E224();
              v40 = v39;

              (*v76)(v37, v35);
              if (v40)
              {
                (*v75)(v34, v36);

                v7 = v86;
                v10 = v36;
                v21 = v80;
                v19 = v81;
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v83 = sub_8E18(0, *(v83 + 2) + 1, 1, v83);
                }

                v10 = v91;
                v21 = v80;
                v19 = v81;
                v42 = *(v83 + 2);
                v41 = *(v83 + 3);
                if (v42 >= v41 >> 1)
                {
                  v83 = sub_8E18((v41 > 1), v42 + 1, 1, v83);
                }

                (*v75)(v82, v10);
                v43 = v83;
                *(v83 + 2) = v42 + 1;
                *&v43[8 * v42 + 32] = v38;
                v7 = v86;
              }
            }

            goto LABEL_7;
          }
        }

LABEL_7:
        if (v21 == ++v20)
        {

          v44 = v83;
          goto LABEL_32;
        }
      }
    }

    __break(1u);
    goto LABEL_59;
  }

  v44 = &_swiftEmptyArrayStorage;
  v19 = v81;
LABEL_32:
  v45 = sub_3EFC(v92, v19);
  v46 = v45;
  if (v45 >> 62)
  {
    v47 = sub_E534();
    if (!v47)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v47 = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8));
    if (!v47)
    {
      goto LABEL_55;
    }
  }

  result = objc_opt_self();
  v93 = result;
  if (v47 < 1)
  {
LABEL_59:
    __break(1u);
    return result;
  }

  v48 = 0;
  v92 = v46 & 0xC000000000000001;
  v90 = (v73 + 48);
  v82 = (v73 + 32);
  LODWORD(v81) = enum case for VUGallery.Client.photos(_:);
  v79 = (v74 + 8);
  v80 = (v74 + 104);
  v78 = (v73 + 8);
  v83 = v47;
  v84 = v46;
  do
  {
    if (v92)
    {
      v49 = sub_E514();
    }

    else
    {
      v49 = *(v46 + 8 * v48 + 32);
    }

    v50 = v49;
    v51 = [v49 localIdentifier];
    if (!v51)
    {
      sub_E394();
      v51 = sub_E384();
    }

    v52 = [v93 uuidFromLocalIdentifier:v51];

    if (v52)
    {
      sub_E394();

      sub_E184();

      v53 = v91;
      if ((*v90)(v7, 1, v91) == 1)
      {

        sub_E008(v7, &qword_18990, &qword_EDD8);
      }

      else
      {
        v54 = v44;
        v55 = v85;
        (*v82)(v85, v7, v53);
        v56 = v88;
        v57 = v87;
        (*v80)(v87, v81, v88);

        v58 = sub_E224();
        v60 = v59;

        (*v79)(v57, v56);
        if (v60)
        {
          (*v78)(v55, v53);

          v44 = v54;
          v7 = v86;
          v47 = v83;
          v46 = v84;
        }

        else
        {
          v44 = v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_8E18(0, *(v54 + 2) + 1, 1, v54);
          }

          v7 = v86;
          v47 = v83;
          v46 = v84;
          v62 = *(v44 + 2);
          v61 = *(v44 + 3);
          if (v62 >= v61 >> 1)
          {
            v44 = sub_8E18((v61 > 1), v62 + 1, 1, v44);
          }

          (*v78)(v85, v91);
          *(v44 + 2) = v62 + 1;
          *&v44[8 * v62 + 32] = v58;
        }
      }
    }

    else
    {
    }

    ++v48;
  }

  while (v47 != v48);
LABEL_55:

  v63 = sub_E324();
  v64 = sub_E4A4();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v94 = v66;
    *v65 = 136315138;

    v67 = v44;
    v68 = sub_E404();
    v70 = v69;

    v71 = sub_19CC(v68, v70, &v94);

    *(v65 + 4) = v71;
    v44 = v67;
    _os_log_impl(&dword_0, v63, v64, "Device owner: invalid persons %s", v65, 0xCu);
    sub_2070(v66);
  }

  return v44;
}

uint64_t sub_6798(uint64_t a1, int a2)
{
  v68 = a2;
  v70 = a1;
  v3 = sub_E1A4();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = __chkstk_darwin(v3);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v66 = &v66 - v7;
  __chkstk_darwin(v6);
  v74 = &v66 - v8;
  v9 = sub_E2B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_E314();
  v13 = *(v69 - 1);
  __chkstk_darwin(v69);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2118(&qword_18990, &qword_EDD8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v66 - v20;
  v71 = v2;
  (*(v10 + 104))(v12, enum case for VUGallery.Client.photos(_:), v9);

  sub_E2A4();
  v22 = v9;
  v23 = v70;
  (*(v10 + 8))(v12, v22);
  v24 = sub_E284();

  if (*(v24 + 16))
  {
    v25 = v69;
    (*(v13 + 16))(v15, v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v69);

    sub_E2E4();
    (*(v13 + 8))(v15, v25);
    v26 = 0;
  }

  else
  {

    v26 = 1;
  }

  v28 = v72;
  v27 = v73;
  (*(v72 + 56))(v21, v26, 1, v73);
  sub_DFA0(v21, v19, &qword_18990, &qword_EDD8);
  v29 = (*(v28 + 48))(v19, 1, v27);
  v30 = v74;
  if (v29 == 1)
  {
    sub_E008(v19, &qword_18990, &qword_EDD8);
LABEL_12:
    v48 = sub_E324();
    v49 = sub_E4A4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = v23;
      _os_log_impl(&dword_0, v48, v49, "Age of the entity %ld not found", v50, 0xCu);
    }

    v51 = v21;
LABEL_15:
    sub_E008(v51, &qword_18990, &qword_EDD8);
    return 0;
  }

  (*(v28 + 32))(v74, v19, v27);
  v31 = sub_E194();
  v33 = sub_4558(v31, v32);

  if ((v33 & 0x10000) != 0)
  {
    (*(v28 + 8))(v30, v27);
    goto LABEL_12;
  }

  v34 = v23;
  v69 = v21;
  v35 = v33;
  v36 = *(v28 + 16);
  if (v33 != 1 && (v68 & (v33 == 2)) == 0)
  {
    v37 = v67;
    v36(v67, v30, v27);
    v38 = sub_E324();
    v39 = sub_E4A4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v37;
      v41 = v28;
      v42 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v75 = v71;
      *v42 = 134218754;
      *(v42 + 4) = v34;
      *(v42 + 12) = 2080;
      v43 = sub_E194();
      v45 = v44;
      v46 = *(v41 + 8);
      v46(v40, v27);
      v47 = sub_19CC(v43, v45, &v75);

      *(v42 + 14) = v47;
      *(v42 + 22) = 512;
      *(v42 + 24) = v35;
      *(v42 + 26) = 1024;
      *(v42 + 28) = v68 & 1;
      _os_log_impl(&dword_0, v38, v39, "Age of the entity %ld, UUID %s is %hu (not baby nor a child if includeChild %{BOOL}d)", v42, 0x20u);
      sub_2070(v71);

      v46(v74, v27);
    }

    else
    {

      v65 = *(v28 + 8);
      v65(v37, v27);
      v65(v30, v27);
    }

    v51 = v69;
    goto LABEL_15;
  }

  v53 = v66;
  v36(v66, v30, v27);
  v54 = sub_E324();
  v55 = sub_E4A4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = v53;
    v57 = v28;
    v58 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v75 = v71;
    *v58 = 134218754;
    *(v58 + 4) = v34;
    *(v58 + 12) = 2080;
    v59 = sub_E194();
    v61 = v60;
    v62 = *(v57 + 8);
    v62(v56, v27);
    v63 = sub_19CC(v59, v61, &v75);

    *(v58 + 14) = v63;
    *(v58 + 22) = 512;
    *(v58 + 24) = v35;
    *(v58 + 26) = 1024;
    *(v58 + 28) = v68 & 1;
    _os_log_impl(&dword_0, v54, v55, "Age of the entity %ld UUID %s is %hu (baby or child with includeChild %{BOOL}d), so it is considered invalid", v58, 0x20u);
    sub_2070(v71);

    v62(v74, v27);
  }

  else
  {

    v64 = *(v28 + 8);
    v64(v53, v27);
    v64(v30, v27);
  }

  sub_E008(v69, &qword_18990, &qword_EDD8);
  return 1;
}

char *sub_6FF8(uint64_t a1, uint64_t a2)
{
  sub_96A4(a1, sub_AABC, sub_AABC);

  v4 = sub_96A4(v3, sub_A9E0, sub_A9E0);

  v5 = sub_E324();
  v6 = sub_E4A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v4[2];

    _os_log_impl(&dword_0, v5, v6, "Device owner: [Top-selfies] After filtering at min 5 selfies and on predicate, found %ld entities with selfies.", v7, 0xCu);

    v8 = v4[2];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:

    return &_swiftEmptyArrayStorage;
  }

  v8 = v4[2];
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  v31 = a2;
  v9 = sub_9020(v8, 0);
  v10 = sub_AF90(&v32, v9 + 4, v8, v4);
  v11 = v32;

  sub_DA60(v11);
  if (v10 != v8)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = v9;
  sub_9814(&v32);

  v12 = v32;
  sub_2118(&qword_18998, &qword_EDE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_ECE0;
  v14 = *(v12 + 2);
  if (v14)
  {
    v15 = v13;
    *(v13 + 32) = *(v12 + 4);
    if (v14 == 1)
    {

      return v15;
    }

    if (v31 < 101)
    {
      v17 = sub_E324();
      v18 = sub_E4A4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134218240;
        *(v19 + 4) = v31;
        *(v19 + 12) = 2048;
        *(v19 + 14) = 100;
        _os_log_impl(&dword_0, v17, v18, "Device owner: [Top-selfies] Number of selfies %ld is smaller than threshold %ld. Keeping at least two candidates.", v19, 0x16u);
      }

      if (*(v12 + 2) < 2uLL)
      {
        goto LABEL_33;
      }

      v20 = *(v12 + 6);
      v16 = 2;
      v15 = sub_8E18(&dword_0 + 1, 2, 1, v15);
      *(v15 + 2) = 2;
      *(v15 + 5) = v20;
      if (v14 <= 2)
      {
LABEL_23:

        v27 = sub_E324();
        v28 = sub_E4A4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134218240;
          *(v29 + 4) = *(v15 + 2);
          *(v29 + 12) = 2048;
          *(v29 + 14) = 0x3FC3333340000000;

          _os_log_impl(&dword_0, v27, v28, "Device owner: [Top-selfies] Found %ld candidates before the gap becomes higher than %f.", v29, 0x16u);
        }

        else
        {
        }

        return v15;
      }
    }

    else
    {
      v16 = 1;
    }

    v21 = &v12[16 * v16 + 40];
    while (1)
    {
      v22 = *(v12 + 2);
      if (v16 - 1 >= v22)
      {
        break;
      }

      if (v16 >= v22)
      {
        goto LABEL_29;
      }

      v23 = *(v21 - 2);
      if (__OFSUB__(v23, *v21))
      {
        goto LABEL_30;
      }

      if (((v23 - *v21) / v23) < 0.15)
      {
        v24 = *(v21 - 1);
        v26 = *(v15 + 2);
        v25 = *(v15 + 3);
        if (v26 >= v25 >> 1)
        {
          v15 = sub_8E18((v25 > 1), v26 + 1, 1, v15);
        }

        *(v15 + 2) = v26 + 1;
        *&v15[8 * v26 + 32] = v24;
        ++v16;
        v21 += 16;
        if (v14 != v16)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_74DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a1)
  {

    v4 = sub_BA88(v4, a1);

    v6 = v4[2];
    if (!v6)
    {
LABEL_30:

      return 0;
    }

    v29 = a3;
  }

  else
  {
    v6 = *(a2 + 16);
    if (!v6)
    {
      return 0;
    }

    v29 = a3;
  }

  v7 = sub_9020(v6, 0);
  v8 = sub_AF90(&v30, v7 + 4, v6, v4);
  v9 = v30;

  sub_DA60(v9);
  if (v8 != v6)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = v7;
  sub_9970(&v30);

  v10 = v30;

  v11 = sub_E324();
  v12 = sub_E4A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(v10 + 2);

    _os_log_impl(&dword_0, v11, v12, "Device owner: [Rear-facing] Found %ld entities with rear captures.", v13, 0xCu);

    v14 = *(v10 + 2);
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v14 = *(v10 + 2);
    if (v14)
    {
LABEL_9:
      if (v14 == 1)
      {
        v15 = *(v10 + 4);

        return v15;
      }

      v21 = *(v10 + 5);
      v22 = *(v10 + 7);
      if (v22)
      {
        if (__OFSUB__(v22, v21))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v23 = (v22 - v21) / v22;
      }

      else
      {
        v23 = 0.0;
      }

      v24 = sub_E324();
      v25 = sub_E4A4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134218496;
        *(v26 + 4) = v23;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v21;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v22;
        _os_log_impl(&dword_0, v24, v25, "Device owner: [Rear-facing] gap between bottom-1 and bottom-2 %f (%ld and %ld)", v26, 0x20u);
      }

      if (v29 >= 101 && v23 > 0.15)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }
  }

  v17 = sub_E324();
  v18 = sub_E4A4();
  if (!os_log_type_enabled(v17, v18))
  {

LABEL_20:
    if (v29 > 100)
    {
LABEL_27:
      if (*(v10 + 2))
      {
        v27 = *(v10 + 4);
        v28 = *(v10 + 5);

        if (v28 > 10)
        {
          return v27;
        }

        return 0;
      }

      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v19 = swift_slowAlloc();
  *v19 = 134217984;
  if (*(v10 + 2))
  {
    *(v19 + 4) = *(v10 + 5);
    v20 = v19;

    _os_log_impl(&dword_0, v17, v18, "Device owner: [Rear-facing] only one candidate with rear-facing captures %ld", v20, 0xCu);

    goto LABEL_20;
  }

LABEL_35:
  __break(1u);

  __break(1u);
  return result;
}

void sub_78C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v11 = v10;
  v182 = a8;
  v186 = a7;
  LODWORD(v188) = a6;
  v172 = a4;
  v173 = a3;
  v185 = a1;
  v180 = a10;
  v169 = sub_E2B4();
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v167 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_E314();
  v175 = *(v16 - 8);
  v176 = v16;
  v17 = __chkstk_darwin(v16);
  v161 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v165 = &v160 - v20;
  __chkstk_darwin(v19);
  v164 = &v160 - v21;
  v22 = sub_2118(&qword_18990, &qword_EDD8);
  v23 = __chkstk_darwin(v22 - 8);
  v162 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v171 = &v160 - v26;
  __chkstk_darwin(v25);
  v166 = &v160 - v27;
  v28 = sub_E254();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v163 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v174 = &v160 - v33;
  __chkstk_darwin(v32);
  v170 = &v160 - v34;
  v35 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin_logger;
  v36 = sub_E324();
  v37 = sub_E4A4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "Starting getInferredDeviceOwnerVersion1", v38, 2u);
  }

  v183 = a2;
  v39 = sub_6FF8(a2, v185);
  v190 = v39;
  v40 = *(v39 + 2);
  if (!v40)
  {
    v55 = sub_E324();
    v56 = sub_E4A4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "Device owner: [Top-selfies] No entity with selfie, returning nil.", v57, 2u);
    }

    (*(v29 + 56))(a9, 1, 1, v28);
    goto LABEL_91;
  }

  v178 = v29;
  v179 = v35;
  v181 = v28;
  v177 = a9;
  v41 = 0;
  v184 = v39;
  v42 = (v39 + 32);
  v43 = *(a5 + 16);
  v44 = &_swiftEmptyArrayStorage;
  v187 = (v39 + 32);
  do
  {
    v47 = v42[v41];
    v48 = v43;
    v49 = 32;
    while (v48)
    {
      v50 = *(a5 + v49);
      v49 += 8;
      --v48;
      if (v50 == v47)
      {
        goto LABEL_8;
      }
    }

    if ((v188 & 1) == 0 || (sub_6798(v42[v41], v186 & 1) & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v189 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_92A4(0, *(v44 + 2) + 1, 1);
        v44 = v189;
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      if (v46 >= v45 >> 1)
      {
        sub_92A4((v45 > 1), v46 + 1, 1);
        v44 = v189;
      }

      *(v44 + 2) = v46 + 1;
      *&v44[8 * v46 + 32] = v47;
      v42 = v187;
    }

LABEL_8:
    ++v41;
  }

  while (v41 != v40);

  v52 = sub_E324();
  v53 = sub_E4A4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134218240;
    *(v54 + 4) = *(v184 + 2);
    *(v54 + 12) = 2048;
    *(v54 + 14) = *(v44 + 2);

    _os_log_impl(&dword_0, v52, v53, "Device owner: [Top-selfies] Before filtering out invalid: %ld entities, after filtering: %ld entities", v54, 0x16u);
  }

  else
  {
  }

  v58 = v182;
  if (*(v44 + 2))
  {
LABEL_24:
    swift_beginAccess();
    v190 = v44;

    v59 = v178;
    v60 = v181;
    v61 = sub_E324();
    v62 = sub_E4A4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134218496;
      *(v63 + 4) = *(v44 + 2);
      *(v63 + 12) = 2048;
      *(v63 + 14) = 0x3FC3333340000000;
      *(v63 + 22) = 2048;
      *(v63 + 24) = 100;
      _os_log_impl(&dword_0, v61, v62, "Device owner: [Top-selfies] After replacing invalid, found %ld candidates before the gap > %f or because less than %ld selfies.", v63, 0x20u);
    }

    v64 = *(v44 + 2);
    if (v180)
    {
      if (v64 == 1)
      {
        v65 = *(v44 + 4);

        v66 = sub_E274();

        if (*(v66 + 16))
        {
          v68 = v175;
          v67 = v176;
          v69 = v165;
          (*(v175 + 16))(v165, v66 + ((*(v68 + 80) + 32) & ~*(v68 + 80)), v176);

          v70 = v171;
          sub_E2E4();
          (*(v68 + 8))(v69, v67);
          v71 = 0;
          v72 = v174;
        }

        else
        {

          v71 = 1;
          v72 = v174;
          v70 = v171;
        }

        v141 = sub_E1A4();
        (*(*(v141 - 8) + 56))(v70, v71, 1, v141);
        sub_E264();
        v142 = sub_E324();
        v143 = sub_E4A4();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          *v144 = 134217984;
          *(v144 + 4) = v65;
          _os_log_impl(&dword_0, v142, v143, "Device owner: only 1 top-selfie, returning %ld.", v144, 0xCu);
        }

        v145 = v177;
        v146 = v181;
        (*(v59 + 32))(v177, v72, v181);
        (*(v59 + 56))(v145, 0, 1, v146);
        goto LABEL_93;
      }

      v110 = sub_74DC(v109, v172, v173);
      v112 = v111;

      if ((v112 & 1) == 0)
      {

        v130 = sub_E274();

        if (*(v130 + 16))
        {
          v132 = v175;
          v131 = v176;
          v133 = *(v175 + 16);
          v134 = v130 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
          v188 = v110;
          v135 = v60;
          v136 = v161;
          v133(v161, v134, v176);

          v137 = v162;
          sub_E2E4();
          v138 = v136;
          v60 = v135;
          v110 = v188;
          (*(v132 + 8))(v138, v131);
          v139 = 0;
          v140 = v163;
        }

        else
        {

          v139 = 1;
          v140 = v163;
          v137 = v162;
        }

        v155 = sub_E1A4();
        (*(*(v155 - 8) + 56))(v137, v139, 1, v155);
        sub_E264();
        v156 = sub_E324();
        v157 = sub_E4A4();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          *v158 = 134217984;
          *(v158 + 4) = v110;
          _os_log_impl(&dword_0, v156, v157, "Device owner: returning %ld.", v158, 0xCu);
        }

LABEL_98:
        v159 = v177;
        (*(v59 + 32))(v177, v140, v60);
        v113 = *(v59 + 56);
        v114 = v159;
        v115 = 0;
        goto LABEL_99;
      }
    }

    else
    {
      v97 = 32;
      while (v64)
      {
        v98 = *&v44[v97];
        v97 += 8;
        --v64;
        if (v98 == v58)
        {

          v99 = v167;
          sub_E2D4();
          sub_E2A4();
          (*(v168 + 8))(v99, v169);
          v100 = sub_E284();

          if (*(v100 + 16))
          {
            v102 = v175;
            v101 = v176;
            v103 = v164;
            (*(v175 + 16))(v164, v100 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v176);

            v104 = v166;
            sub_E2E4();
            (*(v102 + 8))(v103, v101);
            v105 = 0;
          }

          else
          {

            v105 = 1;
            v104 = v166;
          }

          v60 = v181;
          v147 = sub_E1A4();
          (*(*(v147 - 8) + 56))(v104, v105, 1, v147);
          v140 = v170;
          sub_E264();
          v148 = sub_E324();
          v149 = sub_E4A4();
          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            *v150 = 134217984;
            *(v150 + 4) = v58;
            _os_log_impl(&dword_0, v148, v149, "Device owner: Contact picture matched a top-selfies person, returning %ld.", v150, 0xCu);
          }

          goto LABEL_98;
        }
      }

      v106 = sub_E324();
      v107 = sub_E4A4();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_0, v106, v107, "Device owner: Contact picture did not match a top-selfies person, returning nil.", v108, 2u);
      }
    }

    v113 = *(v59 + 56);
    v114 = v177;
    v115 = 1;
LABEL_99:
    v113(v114, v115, 1, v60);
LABEL_93:

    return;
  }

  v73 = sub_E324();
  v74 = sub_E4A4();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_0, v73, v74, "Device owner: [Top-selfies] After removing invalid: 0 entities --> Run top k selfies again", v75, 2u);
  }

  if (v186)
  {
    v76 = 256;
  }

  else
  {
    v76 = 0;
  }

  v77 = v76 & 0xFFFE | v188 & 1;

  v78 = v183;
  v44 = sub_B480(v183, v185, v11, a5, v77, v11);

  if (!*(v44 + 2))
  {

    v116 = sub_E324();
    v117 = sub_E4A4();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_0, v116, v117, "Device owner: [Top-selfies] After replacing invalid device owners, no entity with selfies left, returning nil.", v118, 2u);
    }

    (*(v178 + 56))(v177, 1, 1, v181);
    goto LABEL_91;
  }

  v79 = v184;
  if (!*(v78 + 16))
  {
    __break(1u);
    goto LABEL_101;
  }

  v80 = sub_90A4(*(v44 + 4));
  if ((v81 & 1) == 0)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (!*(v79 + 2))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v82 = *(v183 + 56);
  v83 = *(v82 + 8 * v80);
  v84 = sub_90A4(*v42);
  if ((v85 & 1) == 0)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v86 = vcvts_n_f32_s64(*(v82 + 8 * v84), 1uLL);
  if ((LODWORD(v86) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v86 <= -9.2234e18)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v86 >= 9.2234e18)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v87 = v86;

  if (v83 > v87)
  {

    v88 = sub_E324();
    v89 = sub_E4A4();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 134218496;
      *(v90 + 4) = 0x3FE0000000000000;
      *(v90 + 12) = 2048;
      if (!*(v184 + 2))
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v91 = v183;
      if (!*(v183 + 16))
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v92 = v90;
      v93 = sub_90A4(*v187);
      if ((v94 & 1) == 0)
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      *(v92 + 14) = *(*(v91 + 56) + 8 * v93);
      *(v92 + 22) = 2048;
      if (!*(v44 + 2))
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (!*(v91 + 16))
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v95 = sub_90A4(*(v44 + 4));
      if ((v96 & 1) == 0)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      *(v92 + 24) = *(*(v91 + 56) + 8 * v95);

      _os_log_impl(&dword_0, v88, v89, "Device owner: [Top-selfies] After replacing invalid device owners, keeping the new top selfies persons with %f of %ld (%ld selfies)", v92, 0x20u);
    }

    else
    {

      v91 = v183;
    }

    v151 = v184;
    v152 = v187;
    if (*(v91 + 16))
    {
      sub_90A4(*(v44 + 4));
      if (v153)
      {
        if (*(v151 + 2))
        {
          sub_90A4(*v152);
          if (v154)
          {
            goto LABEL_24;
          }

          goto LABEL_110;
        }

LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v119 = sub_E324();
  v120 = sub_E4A4();
  if (!os_log_type_enabled(v119, v120))
  {

    v126 = v178;
    v127 = v181;
    goto LABEL_90;
  }

  v121 = swift_slowAlloc();
  *v121 = 134218496;
  *(v121 + 4) = 0x3FE0000000000000;
  *(v121 + 12) = 2048;
  v122 = v183;
  if (!*(v184 + 2))
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (!*(v183 + 16))
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v123 = v121;
  v124 = sub_90A4(*v187);
  if ((v125 & 1) == 0)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  *(v123 + 14) = *(*(v122 + 56) + 8 * v124);
  *(v123 + 22) = 2048;
  v126 = v178;
  v127 = v181;
  if (!*(v44 + 2))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (!*(v122 + 16))
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v128 = sub_90A4(*(v44 + 4));
  if (v129)
  {
    *(v123 + 24) = *(*(v122 + 56) + 8 * v128);

    _os_log_impl(&dword_0, v119, v120, "Device owner: [Top-selfies] After replacing invalid device owners, the top selfie person <= %f of %ld (%ld)", v123, 0x20u);

LABEL_90:
    (*(v126 + 56))(v177, 1, 1, v127);
LABEL_91:

    goto LABEL_93;
  }

LABEL_122:
  __break(1u);
}

uint64_t sub_8BF4()
{

  v1 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin_logger;
  v2 = sub_E344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VUDeviceOwnerPlugin(uint64_t a1)
{
  result = qword_187E0;
  if (!qword_187E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8CFC(uint64_t a1)
{
  result = sub_E344();
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

uint64_t sub_8DA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for VUDeviceOwnerPlugin(0);
  v4 = swift_allocObject();
  result = sub_2164(a1);
  *a2 = v4;
  return result;
}

char *sub_8E18(char *result, int64_t a2, char a3, char *a4)
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
    sub_2118(&qword_18998, &qword_EDE0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_8F1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2118(&qword_189B0, &qword_EDF8);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_9020(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2118(&qword_189A0, &qword_EDE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_90A4(uint64_t a1)
{
  v2 = sub_E594();

  return sub_9160(a1, v2);
}

unint64_t sub_90E8(uint64_t a1, uint64_t a2)
{
  sub_E5A4();
  sub_E3A4();
  v4 = sub_E5B4();

  return sub_91CC(a1, a2, v4);
}

unint64_t sub_9160(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_91CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_E574())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_9284(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_92C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_92A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_95A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_92C4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2118(&qword_189D0, &qword_EE08);
  v10 = *(sub_E314() - 8);
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
  v15 = *(sub_E314() - 8);
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

char *sub_949C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2118(&qword_189A0, &qword_EDE8);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_95A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2118(&qword_18998, &qword_EDE0);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_96A4(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_AC7C(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

Swift::Int sub_9814(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_B094(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_E554(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2118(&qword_189A8, &qword_EDF0);
      v7 = sub_E424();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_9ACC(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_9970(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_B094(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_E554(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2118(&qword_189A8, &qword_EDF0);
      v7 = sub_E424();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_A048(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_9ACC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_A9CC(v8);
      v8 = result;
    }

    v78 = v8 + 2;
    v79 = v8[2];
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = &v8[2 * v79];
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_A5C4((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_8F1C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v32 = v8[3];
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_8F1C((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v33;
    v34 = (v8 + 4);
    v35 = &v8[2 * v5 + 4];
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = v8[4];
          v37 = v8[5];
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[2 * v33];
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v34[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = &v8[2 * v33];
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = &v34[16 * v5];
        v67 = *v65;
        v66 = *(v65 + 1);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v73 = &v34[16 * v5 - 16];
        v74 = *v73;
        v75 = &v34[16 * v5];
        v76 = *(v75 + 1);
        sub_A5C4((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v73 = v74;
        *(v73 + 1) = v76;
        v77 = v8[2];
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove(&v34[16 * v5], v75 + 16, 16 * (v77 - 1 - v5));
        v8[2] = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = &v34[16 * v33];
      v41 = *(v40 - 8);
      v42 = *(v40 - 7);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 6);
      v44 = *(v40 - 5);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[2 * v33];
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v34[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (*(v29 - 1) >= v27)
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_A048(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_A9CC(v8);
      v8 = result;
    }

    v78 = v8 + 2;
    v79 = v8[2];
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = &v8[2 * v79];
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_A7C8((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_8F1C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v32 = v8[3];
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_8F1C((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v33;
    v34 = (v8 + 4);
    v35 = &v8[2 * v5 + 4];
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = v8[4];
          v37 = v8[5];
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[2 * v33];
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v34[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = &v8[2 * v33];
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = &v34[16 * v5];
        v67 = *v65;
        v66 = *(v65 + 1);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v73 = &v34[16 * v5 - 16];
        v74 = *v73;
        v75 = &v34[16 * v5];
        v76 = *(v75 + 1);
        sub_A7C8((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v73 = v74;
        *(v73 + 1) = v76;
        v77 = v8[2];
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove(&v34[16 * v5], v75 + 16, 16 * (v77 - 1 - v5));
        v8[2] = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = &v34[16 * v33];
      v41 = *(v40 - 8);
      v42 = *(v40 - 7);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 6);
      v44 = *(v40 - 5);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[2 * v33];
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v34[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (v27 >= *(v29 - 1))
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_A5C4(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
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
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_A7C8(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v6 + 1) < *(v4 + 1))
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
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

unint64_t *sub_A9E0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = *(a3 + 64) & v7;
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
      return sub_AD94(result, a2, v4, a3);
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_AD94(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_AABC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 5)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_AD94(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_AD94(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_ABA8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = sub_B0A8(v11, a2, a3, a4, a5 & 0x101, a6);

    swift_bridgeObjectRelease_n();
    return v12;
  }

  return result;
}

void *sub_AC7C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

unint64_t *sub_AD04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_B980(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_AD94(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_2118(&qword_189B8, &qword_EE00);
  result = sub_E544();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_E594();
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_AF90(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a4 + 48) + v14);
      v16 = *(*(a4 + 56) + v14);
      v7 &= v7 - 1;
      *a2 = v15;
      a2[1] = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_B0A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;

  v28 = 0;
  v14 = 0;
LABEL_4:
  while (v11)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v18 = v15 | (v14 << 6);
    v19 = *(*(a3 + 48) + 8 * v18);
    v20 = *(a4 + 16);
    v21 = 32;
    while (v20)
    {
      v22 = *(a4 + v21);
      v21 += 8;
      --v20;
      if (v22 == v19)
      {
        goto LABEL_4;
      }
    }

    if (a5)
    {

      v23 = sub_6798(v19, (a5 >> 8) & 1);

      if (v23)
      {
        continue;
      }
    }

    *(a1 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v28++, 1))
    {
      __break(1u);
LABEL_20:
      v25 = sub_AD94(a1, a2, v28, a3);

      return v25;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_20;
    }

    v17 = *(v8 + 8 * v14);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v11 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_B26C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  swift_bridgeObjectRetain_n();
  v13 = swift_retain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v14 = sub_ABA8(v15, v11, a1, a2, a3 & 0x101, a4);

      goto LABEL_7;
    }
  }

  __chkstk_darwin(v13);
  bzero(&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = sub_B0A8((&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, a1, a2, a3 & 0x101, a4);

  if (v4)
  {
    swift_willThrow();
  }

LABEL_7:

  swift_bridgeObjectRelease_n();
  return v14;
}

char *sub_B480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{

  sub_96A4(a1, sub_AABC, sub_AABC);

  v12 = sub_B26C(v11, a4, a5 & 0x101, a6);

  v13 = sub_E324();
  v14 = sub_E4A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v12 + 16);

    _os_log_impl(&dword_0, v13, v14, "Device owner: [Top-selfies] After filtering at min 5 selfies and on predicate, found %ld entities with selfies.", v15, 0xCu);

    v16 = *(v12 + 16);
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_8:

    return &_swiftEmptyArrayStorage;
  }

  v16 = *(v12 + 16);
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  v39 = a2;
  v17 = sub_9020(v16, 0);
  v18 = sub_AF90(&v40, v17 + 4, v16, v12);
  v19 = v40;

  sub_DA60(v19);
  if (v18 != v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v40 = v17;
  sub_9814(&v40);

  v20 = v40;
  sub_2118(&qword_18998, &qword_EDE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_ECE0;
  v22 = *(v20 + 2);
  if (v22)
  {
    v23 = v21;
    *(v21 + 32) = *(v20 + 4);
    if (v22 == 1)
    {

      return v23;
    }

    if (v39 < 101)
    {
      v25 = sub_E324();
      v26 = sub_E4A4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134218240;
        *(v27 + 4) = v39;
        *(v27 + 12) = 2048;
        *(v27 + 14) = 100;
        _os_log_impl(&dword_0, v25, v26, "Device owner: [Top-selfies] Number of selfies %ld is smaller than threshold %ld. Keeping at least two candidates.", v27, 0x16u);
      }

      if (*(v20 + 2) < 2uLL)
      {
        goto LABEL_33;
      }

      v28 = *(v20 + 6);
      v24 = 2;
      v23 = sub_8E18(&dword_0 + 1, 2, 1, v23);
      *(v23 + 2) = 2;
      *(v23 + 5) = v28;
      if (v22 <= 2)
      {
LABEL_23:

        v35 = sub_E324();
        v36 = sub_E4A4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 134218240;
          *(v37 + 4) = *(v23 + 2);
          *(v37 + 12) = 2048;
          *(v37 + 14) = 0x3FC3333340000000;

          _os_log_impl(&dword_0, v35, v36, "Device owner: [Top-selfies] Found %ld candidates before the gap becomes higher than %f.", v37, 0x16u);
        }

        else
        {
        }

        return v23;
      }
    }

    else
    {
      v24 = 1;
    }

    v29 = &v20[16 * v24 + 40];
    while (1)
    {
      v30 = *(v20 + 2);
      if (v24 - 1 >= v30)
      {
        break;
      }

      if (v24 >= v30)
      {
        goto LABEL_29;
      }

      v31 = *(v29 - 2);
      if (__OFSUB__(v31, *v29))
      {
        goto LABEL_30;
      }

      if (((v31 - *v29) / v31) < 0.15)
      {
        v32 = *(v29 - 1);
        v34 = *(v23 + 2);
        v33 = *(v23 + 3);
        if (v34 >= v33 >> 1)
        {
          v23 = sub_8E18((v33 > 1), v34 + 1, 1, v23);
        }

        *(v23 + 2) = v34 + 1;
        *&v23[8 * v34 + 32] = v32;
        ++v24;
        v29 += 16;
        if (v22 != v24)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t *sub_B980(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
LABEL_4:
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v11 = v10 | (v6 << 6);
LABEL_11:
    v14 = *(a4 + 16);
    v15 = (a4 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == *(*(a3 + 48) + 8 * v11))
      {
        *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (!__OFADD__(v5++, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        return sub_AD94(result, a2, v5, a3);
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_AD94(result, a2, v5, a3);
    }

    v13 = *(a3 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v9 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_BA88(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(v9);
    bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
    v10 = sub_B980((&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
    if (v2)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v13 = swift_slowAlloc();

  v12 = sub_AD04(v13, v7, a1, a2);

  result = swift_bridgeObjectRelease_n();
  if (!v2)
  {
    return v12;
  }

  return result;
}

unint64_t sub_BC38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2118(&unk_18980, &qword_EDD0);
    v3 = sub_E544();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_90E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_BD34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2118(a2, a3);
    v5 = sub_E544();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_90E8(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_BE30()
{
  v1 = v0;
  v2 = sub_2118(&qword_18918, &qword_ED70);
  __chkstk_darwin(v2 - 8);
  v215 = &v189 - v3;
  v4 = sub_2118(&qword_18920, &qword_ED78);
  __chkstk_darwin(v4 - 8);
  v214 = &v189 - v5;
  v6 = sub_E254();
  v219 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v190 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v196 = &v189 - v10;
  v11 = __chkstk_darwin(v9);
  v195 = &v189 - v12;
  v13 = __chkstk_darwin(v11);
  v211 = &v189 - v14;
  __chkstk_darwin(v13);
  v209 = &v189 - v15;
  v16 = sub_2118(&qword_18928, &qword_ED80);
  v17 = __chkstk_darwin(v16 - 8);
  v193 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v192 = &v189 - v20;
  v21 = __chkstk_darwin(v19);
  v191 = &v189 - v22;
  v23 = __chkstk_darwin(v21);
  v194 = &v189 - v24;
  v25 = __chkstk_darwin(v23);
  v201 = &v189 - v26;
  v27 = __chkstk_darwin(v25);
  v213 = &v189 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v189 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v189 - v33;
  __chkstk_darwin(v32);
  v36 = &v189 - v35;
  v217 = OBJC_IVAR____TtC7Plugins19VUDeviceOwnerPlugin_logger;
  v37 = sub_E324();
  v38 = sub_E4A4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "Updating VUDeviceOwnerPlugin", v39, 2u);
  }

  CFAbsoluteTimeGetCurrent();
  v40 = v1;
  v41 = sub_27E8();
  v43 = v42;
  v216 = v44;
  LODWORD(v212) = v45;
  v46 = v219;
  (*(v219 + 56))(v36, 1, 1, v6);
  v218 = v6;
  v221 = v40;
  v210 = v36;
  if (v43)
  {
    v208 = v41;
    sub_46B4(v41, v43, v34);
    sub_DC18(v34, v36, &qword_18928, &qword_ED80);
    v47 = v218;
    sub_DFA0(v36, v31, &qword_18928, &qword_ED80);
    v48 = (*(v46 + 48))(v31, 1, v47);
    LODWORD(v200) = v48 != 1;
    if (v48 == 1)
    {
      sub_E008(v31, &qword_18928, &qword_ED80);
      v52 = v208;
      v53 = v216;
    }

    else
    {
      v49 = v209;
      (*(v46 + 32))(v209, v31, v47);

      v50 = sub_E234();
      v225 = sub_2118(&qword_18960, &qword_EDB8);
      aBlock = v50;
      v51 = v220;
      sub_E214();
      if (v51)
      {

        (*(v46 + 8))(v49, v47);
        v220 = 0;
      }

      else
      {
        v220 = 0;
        (*(v46 + 8))(v49, v47);
      }

      v53 = v216;
      sub_2070(&aBlock);
      v52 = v208;
    }

    v54 = v212;
    v212 = sub_5DD0(v52, v43);
    LODWORD(v199) = v54 | (v53 > 29);
    if (!(v54 & 1 | (v53 > 29)))
    {
      v55 = sub_E324();
      v56 = sub_E4A4();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 134217984;
        *(v57 + 4) = v53;
        _os_log_impl(&dword_0, v55, v56, "Device owner: Not filtering out children because age of Me contact is %ld", v57, 0xCu);
      }
    }

    sub_4F68(v52, v43);
    v198 = v58;
    v197 = v59;
  }

  else
  {
    v197 = 1;
    LODWORD(v200) = 0;
    v198 = 0;
    v212 = &_swiftEmptyArrayStorage;
    LODWORD(v199) = 1;
  }

  v60 = enum case for VUGallery.EntityClass.person(_:);
  v61 = sub_E1F4();
  v62 = *(v61 - 8);
  v63 = *(v62 + 104);
  v64 = v214;
  LODWORD(v216) = v60;
  v203 = v63;
  v63(v214, v60, v61);
  v65 = *(v62 + 56);
  v208 = v62 + 56;
  v209 = v61;
  v207 = v65;
  v65(v64, 0, 1, v61);
  v66 = enum case for VUGallery.Source.frontCamera(_:);
  v67 = sub_E2C4();
  v68 = *(v67 - 8);
  v69 = v215;
  v202 = *(v68 + 104);
  v202(v215, v66, v67);
  v70 = *(v68 + 56);
  v205 = v68 + 56;
  v206 = v67;
  v204 = v70;
  v70(v69, 0, 1, v67);

  v71 = sub_E204();

  sub_E008(v69, &qword_18918, &qword_ED70);
  result = sub_E008(v64, &qword_18920, &qword_ED78);
  v73 = 0;
  v74 = 0;
  v75 = 1 << *(v71 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & *(v71 + 64);
  v78 = (v75 + 63) >> 6;
  while (2)
  {
    if (v77)
    {
      v79 = v73;
      goto LABEL_25;
    }

    do
    {
      v79 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      if (v79 >= v78)
      {
        goto LABEL_28;
      }

      v77 = *(v71 + 64 + 8 * v79);
      ++v73;
    }

    while (!v77);
    v73 = v79;
LABEL_25:
    v80 = __clz(__rbit64(v77));
    v77 &= v77 - 1;
    v81 = *(*(v71 + 56) + ((v79 << 9) | (8 * v80)));
    v82 = __OFADD__(v74, v81);
    v74 += v81;
    if (!v82)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_28:
  v83 = v214;
  v84 = v209;
  v203(v214, v216, v209);
  v207(v83, 0, 1, v84);
  v85 = v215;
  v86 = v206;
  v202(v215, enum case for VUGallery.Source.backCamera(_:), v206);
  v204(v85, 0, 1, v86);

  v87 = sub_E204();

  sub_E008(v85, &qword_18918, &qword_ED70);
  result = sub_E008(v83, &qword_18920, &qword_ED78);
  v88 = 0;
  v89 = 0;
  v90 = 1 << *(v87 + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & *(v87 + 64);
  v93 = (v90 + 63) >> 6;
  while (2)
  {
    if (!v92)
    {
      while (1)
      {
        v94 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_118;
        }

        if (v94 >= v93)
        {
          goto LABEL_40;
        }

        v92 = *(v87 + 64 + 8 * v94);
        ++v88;
        if (v92)
        {
          v88 = v94;
          goto LABEL_37;
        }
      }
    }

    v94 = v88;
LABEL_37:
    v95 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v96 = *(*(v87 + 56) + ((v94 << 9) | (8 * v95)));
    v82 = __OFADD__(v89, v96);
    v89 += v96;
    if (!v82)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_40:

  v97 = sub_E324();
  v98 = sub_E4A4();
  v99 = os_log_type_enabled(v97, v98);
  v216 = v71;
  if (v99)
  {
    v100 = swift_slowAlloc();
    *v100 = 134218752;
    *(v100 + 4) = v74;
    *(v100 + 12) = 2048;
    *(v100 + 14) = *(v216 + 16);

    *(v100 + 22) = 2048;
    *(v100 + 24) = v89;
    *(v100 + 32) = 2048;
    *(v100 + 34) = *(v87 + 16);

    _os_log_impl(&dword_0, v97, v98, "Device owner: Total of %ld faces in selfies assets for %ld entities and %ld faces in rear-facing assets for %ld entities", v100, 0x2Au);
    v71 = v216;
  }

  else
  {
  }

  v101 = v211;
  v102 = v213;
  sub_78C4(v74, v71, v89, v87, v212, 1, v199 & 1, v198, v213, v197 & 1);
  v103 = v201;
  sub_DFA0(v102, v201, &qword_18928, &qword_ED80);
  v104 = v218;
  v105 = v219;
  v202 = *(v219 + 48);
  v203 = (v219 + 48);
  if (v202(v103, 1, v218) != 1)
  {
    (*(v105 + 32))(v101, v103, v104);
    v106 = *(v105 + 16);
    if ((v200 & 1) == 0)
    {
      v107 = v195;
      v200 = *(v105 + 16);
      v106(v195, v101, v104);
      v108 = sub_E324();
      v109 = sub_E4A4();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 134217984;
        v199 = v108;
        v111 = sub_E244();
        v201 = *(v219 + 8);
        (v201)(v107, v218);
        *(v110 + 4) = v111;
        v108 = v199;
        _os_log_impl(&dword_0, v199, v109, "Device owner (me ground truth does not exist): result %ld", v110, 0xCu);
      }

      else
      {
        v201 = *(v219 + 8);
        (v201)(v107, v218);
      }

      v101 = v211;
      v123 = sub_E234();
      v225 = sub_2118(&qword_18960, &qword_EDB8);
      aBlock = v123;
      v124 = v220;
      sub_E214();
      if (v124)
      {
        (v201)(v101, v218);
LABEL_67:

        sub_E008(v213, &qword_18928, &qword_ED80);
        sub_2070(&aBlock);
        return sub_E008(v210, &qword_18928, &qword_ED80);
      }

      v220 = 0;

      sub_2070(&aBlock);
      v104 = v218;
      v106 = v200;
    }

    v106(v196, v101, v104);
    v125 = v104;
    v126 = sub_E324();
    v127 = sub_E4A4();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 134217984;
      v129 = v196;
      v130 = sub_E244();
      v217 = *(v219 + 8);
      v217(v129, v218);
      *(v128 + 4) = v130;
      _os_log_impl(&dword_0, v126, v127, "Device owner: result ignoring me ground truth %ld", v128, 0xCu);
      v101 = v211;
    }

    else
    {
      v217 = *(v219 + 8);
      v217(v196, v125);
    }

    v131 = sub_E234();
    v225 = sub_2118(&qword_18960, &qword_EDB8);
    aBlock = v131;
    v132 = v220;
    sub_E214();
    if (!v132)
    {
      v220 = 0;
      v217(v101, v218);

      sub_2070(&aBlock);
      v121 = 0xD000000000000013;
      goto LABEL_70;
    }

    v217(v101, v218);
    goto LABEL_67;
  }

  sub_E008(v103, &qword_18928, &qword_ED80);
  if ((v200 & 1) == 0)
  {
    v112 = sub_E324();
    v113 = sub_E4A4();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_0, v112, v113, "Device owner (me ground truth does not exist): result null", v114, 2u);
    }

    v115 = sub_BC38(&off_14780);
    sub_2118(&qword_18930, &qword_ED88);
    swift_arrayDestroy();
    v225 = sub_2118(&qword_18938, &qword_ED90);
    aBlock = v115;
    v116 = v220;
    sub_E214();
    v220 = v116;
    if (!v116)
    {

      sub_2070(&aBlock);
      goto LABEL_53;
    }

LABEL_56:

    sub_E008(v213, &qword_18928, &qword_ED80);
    sub_2070(&aBlock);
    return sub_E008(v210, &qword_18928, &qword_ED80);
  }

LABEL_53:
  v117 = sub_E324();
  v118 = sub_E4A4();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&dword_0, v117, v118, "Device owner: result ignoring me ground truth null", v119, 2u);
  }

  v120 = sub_BC38(&off_147D0);
  sub_2118(&qword_18930, &qword_ED88);
  swift_arrayDestroy();
  v225 = sub_2118(&qword_18938, &qword_ED90);
  aBlock = v120;
  v121 = 0xD000000000000013;
  v122 = v220;
  sub_E214();
  v220 = v122;
  if (v122)
  {
    goto LABEL_56;
  }

  sub_2070(&aBlock);
LABEL_70:
  v133 = sub_E384();
  v134 = NSClassFromString(v133);

  if (v134)
  {

    goto LABEL_116;
  }

  v135 = &loc_E000;
  if (os_variant_has_internal_ui())
  {
    v135 = (&dword_0 + 1);
    sub_78C4(v74, v216, v89, v87, &_swiftEmptyArrayStorage, 0, 0, 0, v194, 1u);

    v136 = v214;
    v207(v214, 1, 1, v209);
    v137 = v215;
    v204(v215, 1, 1, v206);

    v138 = sub_E204();

    sub_E008(v137, &qword_18918, &qword_ED70);
    sub_E008(v136, &qword_18920, &qword_ED78);
    result = v138;
    v139 = 0;
    v140 = 0;
    v141 = 1 << *(result + 32);
    v142 = -1;
    if (v141 < 64)
    {
      v142 = ~(-1 << v141);
    }

    v143 = v142 & *(result + 64);
    v144 = (v141 + 63) >> 6;
    v121 = v210;
    v145 = v218;
    while (v143)
    {
      v146 = v139;
LABEL_82:
      v147 = __clz(__rbit64(v143));
      v143 &= v143 - 1;
      v148 = *(*(result + 56) + ((v146 << 9) | (8 * v147)));
      v82 = __OFADD__(v140, v148);
      v140 += v148;
      if (v82)
      {
        __break(1u);
        goto LABEL_85;
      }
    }

    while (1)
    {
      v146 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        break;
      }

      if (v146 >= v144)
      {

        v149 = v202;
        LODWORD(v221) = v202(v213, 1, v145);
        LODWORD(v216) = v149(v194, 1, v145);
        v150 = v121;
        v151 = v121;
        v152 = v191;
        sub_DFA0(v150, v191, &qword_18928, &qword_ED80);
        LODWORD(v215) = v149(v152, 1, v218);
        v153 = v218;
        sub_E008(v152, &qword_18928, &qword_ED80);
        v154 = v149(v151, 1, v153);
        if (v154)
        {
          v217 = 0;
        }

        else
        {
          v155 = v151;
          v156 = v219;
          v157 = v190;
          (*(v219 + 16))(v190, v155, v153);
          v217 = sub_E244();
          (*(v156 + 8))(v157, v153);
        }

        v158 = v192;
        sub_DFA0(v213, v192, &qword_18928, &qword_ED80);
        v159 = v202(v158, 1, v153);
        if (v159 == 1)
        {
          sub_E008(v158, &qword_18928, &qword_ED80);
          v161 = 0;
        }

        else
        {
          LODWORD(v214) = v154;
          v160 = v158;
          v161 = sub_E244();
          v162 = v160;
          v154 = v214;
          (*(v219 + 8))(v162, v153);
        }

        v164 = v159 != 1 && v217 == v161;
        if (v154)
        {
          v164 = v159 == 1;
        }

        LODWORD(v217) = v164;
        v165 = v210;
        v166 = v202(v210, 1, v153);
        if (v166)
        {
          v214 = 0;
          v167 = v219;
        }

        else
        {
          v168 = v219;
          v169 = v190;
          (*(v219 + 16))(v190, v165, v153);
          v167 = v168;
          v214 = sub_E244();
          (*(v168 + 8))(v169, v153);
        }

        v170 = v193;
        sub_DFA0(v194, v193, &qword_18928, &qword_ED80);
        v171 = v202(v170, 1, v153);
        LODWORD(v219) = v171 == 1;
        if (v171 == 1)
        {
          sub_E008(v170, &qword_18928, &qword_ED80);
          v174 = 0;
        }

        else
        {
          LODWORD(v211) = v166;
          v172 = v170;
          v173 = v167;
          v174 = sub_E244();
          v175 = v172;
          v166 = v211;
          (*(v173 + 8))(v175, v153);
        }

        v177 = v171 != 1 && v214 == v174;
        if (v166)
        {
          v177 = v219;
        }

        LODWORD(v219) = v177;
        LODWORD(v218) = v215 != 1;
        LODWORD(v216) = v216 != 1;
        sub_2118(&qword_18950, &qword_EDA8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_ECF0;
        *(inited + 32) = 0xD000000000000013;
        *(inited + 40) = 0x800000000000EFE0;

        *(inited + 48) = sub_E464();
        strcpy((inited + 56), "selfiesCount");
        *(inited + 69) = 0;
        *(inited + 70) = -5120;
        *(inited + 72) = sub_E464();
        *(inited + 80) = 0xD000000000000017;
        *(inited + 88) = 0x800000000000F000;
        *(inited + 96) = sub_E464();
        *(inited + 104) = 0x6F43736F746F6870;
        *(inited + 112) = 0xEB00000000746E75;
        *(inited + 120) = sub_E464();
        strcpy((inited + 128), "meNodeInferred");
        *(inited + 143) = -18;
        *(inited + 144) = sub_E444();
        *(inited + 152) = 0xD00000000000002ALL;
        *(inited + 160) = 0x800000000000F020;
        *(inited + 168) = sub_E444();
        *(inited + 176) = 0xD000000000000013;
        *(inited + 184) = 0x800000000000F050;
        *(inited + 192) = sub_E444();
        strcpy((inited + 200), "meNodeAccuracy");
        *(inited + 215) = -18;
        *(inited + 216) = sub_E444();
        *(inited + 224) = 0xD00000000000002ALL;
        *(inited + 232) = 0x800000000000F070;
        *(inited + 240) = sub_E444();
        v179 = sub_BD34(inited, &qword_18968, &qword_EDC0);
        v121 = 0xD000000000000013;
        swift_setDeallocating();
        sub_2118(&qword_18958, &qword_EDB0);
        swift_arrayDestroy();
        v180 = sub_E384();
        v181 = swift_allocObject();
        *(v181 + 16) = v179;
        v226 = sub_DA58;
        v227 = v181;
        aBlock = _NSConcreteStackBlock;
        v135 = &loc_E000;
        v223 = 1107296256;
        v224 = sub_256C;
        v225 = &unk_14898;
        v182 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v182);

        sub_E008(v194, &qword_18928, &qword_ED80);
        goto LABEL_115;
      }

      v143 = *(result + 64 + 8 * v146);
      ++v139;
      if (v143)
      {
        v139 = v146;
        goto LABEL_82;
      }
    }

LABEL_119:
    __break(1u);
  }

  else
  {
LABEL_85:

LABEL_115:
    CFAbsoluteTimeGetCurrent();
    sub_2118(&qword_18940, &qword_ED98);
    v183 = swift_initStackObject();
    *(v183 + 16) = xmmword_ECE0;
    *(v183 + 32) = v121 + 13;
    *(v183 + 40) = 0x800000000000EF50;
    *(v183 + 48) = sub_E454();
    v184 = sub_BD34(v183, &qword_18978, &qword_EDC8);
    swift_setDeallocating();
    sub_E008(v183 + 32, &qword_18948, &qword_EDA0);
    v185 = sub_E384();
    v186 = swift_allocObject();
    *(v186 + 16) = v184;
    v226 = sub_DA38;
    v227 = v186;
    aBlock = _NSConcreteStackBlock;
    v223 = v135[399];
    v224 = sub_256C;
    v225 = &unk_14848;
    v187 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v187);

LABEL_116:
    v188 = v210;
    sub_E008(v213, &qword_18928, &qword_ED80);
    return sub_E008(v188, &qword_18928, &qword_ED80);
  }

  return result;
}

uint64_t sub_DA00()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_DA68()
{
  result = qword_189C0;
  if (!qword_189C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_189C0);
  }

  return result;
}

_OWORD *sub_DABC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_DACC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_DB14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_DB5C()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_DBC4()
{
  result = qword_18A08;
  if (!qword_18A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18A08);
  }

  return result;
}

uint64_t sub_DC18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2118(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void *sub_DC80(uint64_t a1)
{
  v2 = sub_E1D4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2118(&qword_18A28, &unk_EE40);
    v9 = sub_E4F4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_E068(&qword_18A30, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_E364();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_E068(&qword_18A38, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_E374();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_DFA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2118(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_E008(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2118(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_E068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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