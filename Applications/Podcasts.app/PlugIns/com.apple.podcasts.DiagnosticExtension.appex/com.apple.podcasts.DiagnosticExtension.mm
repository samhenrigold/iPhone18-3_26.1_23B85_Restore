char *sub_100001560(uint64_t a1)
{
  v2 = sub_100002DFC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002E4C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v45 = &_swiftEmptyArrayStorage;
  v13 = sub_100001AE0();
  result = sub_100001EA0(v13);
  if (a1)
  {
    v41 = sub_100002EAC();
    v42 = v15;
    sub_100002F5C();
    if (*(a1 + 16) && (v16 = sub_1000025E4(v43), (v17 & 1) != 0))
    {
      sub_1000026B4(*(a1 + 56) + 32 * v16, v44);
      sub_100002628(v43);
      if ((swift_dynamicCast() & 1) != 0 && v41 == 1)
      {
        v40 = objc_opt_self();
        v18 = [v40 sharedDocumentsDirectory];
        sub_100002E2C();

        v19 = objc_allocWithZone(DEAttachmentItem);
        sub_100002E1C(v20);
        v22 = v21;
        v23 = *(v7 + 8);
        v23(v12, v6);
        v24 = [v19 initWithPathURL:v22];

        if (v24)
        {
          v25 = sub_100002E9C();
          [v24 setDisplayName:v25];

          sub_100002784(0, &qword_100008178, NSNumber_ptr);
          isa = sub_100002F2C(1).super.super.isa;
          [v24 setShouldCompress:isa];

          v27 = v24;
          sub_100002EBC();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100002EEC();
          }

          sub_100002EFC();
        }

        v28 = [v40 sharedContainerURL];
        sub_100002E2C();

        (*(v3 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
        sub_100002710();
        sub_100002E3C();
        (*(v3 + 8))(v5, v2);
        v23(v10, v6);
        v29 = objc_allocWithZone(DEAttachmentItem);
        sub_100002E1C(v30);
        v32 = v31;
        v23(v12, v6);
        v33 = [v29 initWithPathURL:v32];

        if (!v33)
        {
          goto LABEL_20;
        }

        v34 = v33;
        sub_100002EBC();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100002EEC();
        }

        sub_100002EFC();
LABEL_19:

LABEL_20:
        v38 = sub_100001F90(v45);

        return v38;
      }
    }

    else
    {
      sub_100002628(v43);
    }

    if (qword_1000081A8 != -1)
    {
      swift_once();
    }

    v35 = sub_100002E7C();
    sub_10000267C(v35, qword_1000081B0);
    v34 = sub_100002E5C();
    v36 = sub_100002F1C();
    if (os_log_type_enabled(v34, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v34, v36, "User did not consent to data collection.", v37, 2u);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

unint64_t sub_100001AE0()
{
  v1 = sub_100002E4C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002E0C();
  sub_100002E1C(v5);
  v7 = v6;
  v8 = objc_allocWithZone(NSRegularExpression);
  v9 = sub_100002468(0xD000000000000016, 0x8000000100003460, 0);
  v10 = [v0 filesInDir:v7 matchingPattern:v9 excludingPattern:0];

  if (!v10 || (v11 = sub_100002EDC(), v10, v12 = sub_10000235C(v11), , !v12))
  {

    v12 = &_swiftEmptyArrayStorage;
  }

  v19 = v1;
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_13:
    (*(v2 + 8))(v4, v19);
    return v12;
  }

  v13 = sub_100002FDC();
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_6:
  result = sub_100002784(0, &qword_100008178, NSNumber_ptr);
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = sub_100002F6C();
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      isa = sub_100002F2C(1).super.super.isa;
      [v17 setShouldCompress:isa];
    }

    while (v13 != v15);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100001EA0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100002FDC();
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

  v13 = sub_100002FDC();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100002544(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100002B48(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

char *sub_100001F90(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100002FDC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100002764(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100002F6C();
        sub_100002784(0, &qword_100008180, DEAttachmentItem_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100002764((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1000027CC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100002784(0, &qword_100008180, DEAttachmentItem_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100002764((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1000027CC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_100002284(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PodcastsDiagnosticExtension();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000022DC()
{
  v0 = sub_100002E7C();
  sub_100002938(v0, qword_1000081B0);
  sub_10000267C(v0, qword_1000081B0);
  return sub_100002E6C();
}

void *sub_10000235C(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_100002FAC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1000026B4(i, v5);
    sub_100002784(0, &qword_100008180, DEAttachmentItem_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_100002F8C();
    sub_100002FBC();
    sub_100002FCC();
    sub_100002F9C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_100002468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100002E9C();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100002DEC();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100002544(uint64_t a1, char a2)
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

  sub_100002FDC();
LABEL_9:
  result = sub_100002F7C();
  *v2 = result;
  return result;
}

unint64_t sub_1000025E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002F3C(*(v2 + 40));

  return sub_10000299C(a1, v4);
}

uint64_t sub_10000267C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000026B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100002710()
{
  result = qword_100008170;
  if (!qword_100008170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008170);
  }

  return result;
}

char *sub_100002764(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000027DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100002784(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_1000027CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_1000027DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000028EC(&qword_100008188, &qword_100003360);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_1000028EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100002938(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10000299C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100002A64(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100002F4C();
      sub_100002628(v8);
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

void (*sub_100002AC0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100002F6C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100002B40;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002B48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100002FDC();
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
      result = sub_100002FDC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100002CD8();
          for (i = 0; i != v6; ++i)
          {
            sub_1000028EC(&qword_100008190, &qword_100003368);
            v9 = sub_100002AC0(v13, i, a3);
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
        sub_100002784(0, &qword_100008180, DEAttachmentItem_ptr);
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

unint64_t sub_100002CD8()
{
  result = qword_100008198;
  if (!qword_100008198)
  {
    sub_100002D3C(&qword_100008190, &qword_100003368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008198);
  }

  return result;
}

uint64_t sub_100002D3C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D84(uint64_t a1)
{
  v2 = sub_1000028EC(&qword_1000081A0, &unk_100003370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}