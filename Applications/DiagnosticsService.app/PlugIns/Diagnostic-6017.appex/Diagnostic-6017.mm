id sub_100001090()
{
  v1 = v0;
  sub_100003B94();
  v2 = sub_1000045CC();
  v3 = sub_1000045BC();
  sub_10000450C("Collecting Pif logs...", 22, 2, &_mh_execute_header, v2, v3, &_swiftEmptyArrayStorage);

  v1[OBJC_IVAR___AirpodsLogCollectorController_failureEncountered] = 0;
  v4 = sub_100001C7C();
  v5 = [v1 result];
  sub_100002998(&qword_10000C2E8, &qword_100004B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100004A20;
  sub_10000461C();
  *(inited + 96) = sub_100002998(&qword_10000C298, &qword_100004AC8);
  *(inited + 72) = v4;
  sub_1000041C0(inited);
  swift_setDeallocating();
  sub_1000042DC(inited + 32, &qword_10000C2F0, &qword_100004B08);
  isa = sub_10000452C().super.isa;

  [v5 setData:isa];

  if (v1[OBJC_IVAR___AirpodsLogCollectorController_filesSkippedWithParsingErrors])
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  sub_1000012B8(v8, &_swiftEmptyArrayStorage);
  return [v1 setFinished:1];
}

void sub_1000012B8(unsigned __int8 a1, uint64_t a2)
{
  v3 = OBJC_IVAR___AirpodsLogCollectorController_failureEncountered;
  if ((*(v2 + OBJC_IVAR___AirpodsLogCollectorController_failureEncountered) & 1) == 0)
  {
    v5 = [v2 result];
    if (a1 <= 2u)
    {
      isa = sub_10000457C().super.super.isa;
      [v5 setStatusCode:isa];

LABEL_4:
      *(v2 + v3) = 1;
      return;
    }

    v7 = sub_10000457C().super.super.isa;
    [v5 setStatusCode:v7];

    if ([v2 isCancelled])
    {
      goto LABEL_4;
    }

    sub_100003B94();
    v8 = v2;
    v9 = sub_1000045CC();
    v10 = sub_1000045BC();
    sub_10000450C("Pif logs gathered successfully", 30, 2, &_mh_execute_header, v9, v10, &_swiftEmptyArrayStorage);

    v11 = [v8 result];
    sub_1000044DC();
    v12 = sub_10000456C().super.isa;
    [v11 setFiles:v12];
  }
}

unint64_t sub_100001474()
{
  v1 = sub_100002998(&qword_10000C2B8, &qword_100004AD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = sub_1000044DC();
  v42 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v41 = &v36 - v8;
  __chkstk_darwin(v7);
  v44 = &v36 - v9;
  v10 = sub_10000446C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() defaultManager];
  *(swift_allocObject() + 16) = v0;
  v0;
  v15 = sub_10000459C();

  if (v15)
  {
    v38 = v11;
    v37 = v15;
    sub_10000458C();
    v16 = sub_100004168();
    v17 = v13;
    sub_1000045DC();
    if (v49)
    {
      v18 = (v42 + 56);
      v19 = (v42 + 32);
      v39 = (v42 + 8);
      v45 = &_swiftEmptyArrayStorage;
      v40 = v10;
      do
      {
        sub_1000029E0(v48, v47);
        sub_100003AE0(v47, v46);
        v20 = swift_dynamicCast();
        v21 = *v18;
        if (v20)
        {
          v22 = v16;
          v23 = v17;
          v21(v3, 0, 1, v4);
          v24 = *v19;
          v25 = v43;
          (*v19)(v43, v3, v4);
          v26 = sub_10000448C();
          sub_100003A94(v47);
          if (v26)
          {
            (*v39)(v25, v4);
          }

          else
          {
            v27 = v41;
            v24(v41, v25, v4);
            v24(v44, v27, v4);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_10000268C(0, *(v45 + 2) + 1, 1, v45);
            }

            v29 = *(v45 + 2);
            v28 = *(v45 + 3);
            if (v29 >= v28 >> 1)
            {
              v45 = sub_10000268C((v28 > 1), v29 + 1, 1, v45);
            }

            v30 = v44;
            v31 = v45;
            *(v45 + 2) = v29 + 1;
            v24(&v31[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v29], v30, v4);
            v10 = v40;
          }

          v17 = v23;
          v16 = v22;
        }

        else
        {
          v21(v3, 1, 1, v4);
          sub_100003A94(v47);
          sub_1000042DC(v3, &qword_10000C2B8, &qword_100004AD8);
        }

        sub_1000045DC();
      }

      while (v49);
    }

    else
    {
      v45 = &_swiftEmptyArrayStorage;
    }

    (*(v38 + 8))(v17, v10);
    v35 = sub_100003C8C(v45);

    return v35;
  }

  else
  {
    sub_100003B94();
    v32 = sub_1000045CC();
    v33 = sub_1000045BC();
    sub_10000450C("Encountered an error when processing pif log directory", 54, 2, &_mh_execute_header, v32, v33, &_swiftEmptyArrayStorage);

    sub_1000012B8(2u, &_swiftEmptyArrayStorage);

    return sub_100004064(&_swiftEmptyArrayStorage);
  }
}

void sub_100001A00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000044DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  sub_100003B94();
  swift_errorRetain();
  v7 = sub_1000045CC();
  v8 = sub_1000045BC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v9 = 136315394;
    v10 = sub_1000044CC();
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    v13 = sub_1000029F0(v10, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    v15 = v17;
    *v17 = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Encountered an error when processing pif log file: %s error: %@", v9, 0x16u);
    sub_1000042DC(v15, &qword_10000C2D8, &qword_100004AF0);

    sub_100003A94(v18);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  sub_1000012B8(0, &_swiftEmptyArrayStorage);
}

void *sub_100001C7C()
{
  v1 = sub_1000044DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v77 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR___AirpodsLogCollectorController_failureEncountered) = 0;
  v4 = sub_100001474();
  v5 = v4;
  v6 = 0;
  v7 = v4 + 64;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  v70 = v0;
  v11 = (v0 + OBJC_IVAR___AirpodsLogCollectorController_pifLogSubDirectory);
  v12 = (v8 + 63) >> 6;
  v74 = v2 + 16;
  v67 = "JSON for file %{public}@";
  v68 = &_swiftEmptyDictionarySingleton;
  v75 = v2;
  v73 = (v2 + 8);
  v66 = xmmword_100004A20;
  v69 = xmmword_100004A30;
  v71 = v1;
LABEL_4:
  if (v10)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      return v68;
    }

    v10 = *(v7 + 8 * v13);
    ++v6;
    if (v10)
    {
      v6 = v13;
LABEL_9:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v6 << 6);
      v16 = (*(v5 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v76 = *(*(v5 + 56) + 8 * v15);
      v19 = v18 == *v11 && v17 == v11[1];
      if (v19 || (sub_10000467C() & 1) != 0)
      {
        v59 = v18;
        v61 = v12;
        v62 = v11;
        v63 = v7;
        v64 = v5;
        v20 = v76;
        v72 = *(v76 + 16);
        v60 = v17;

        v21 = 0;
        v65 = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v72 == v21)
          {

            v81 = sub_100002998(&qword_10000C280, &qword_100004AB0);
            *&v80 = v65;
            sub_1000029E0(&v80, v79);
            v55 = v68;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v82 = v55;
            sub_100003734(v79, v59, v60, isUniquelyReferenced_nonNull_native);

            v68 = v82;
            v5 = v64;
            v7 = v63;
            v11 = v62;
            v12 = v61;
            goto LABEL_4;
          }

          if (v21 >= *(v20 + 16))
          {
            goto LABEL_32;
          }

          (*(v75 + 16))(v77, v20 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v21, v1);
          v27 = sub_1000044EC();
          v29 = v28;
          v30 = objc_opt_self();
          isa = sub_1000044FC().super.isa;
          *&v80 = 0;
          v32 = [v30 JSONObjectWithData:isa options:0 error:&v80];

          if (!v32)
          {
            break;
          }

          v33 = v80;
          sub_1000045EC();
          swift_unknownObjectRelease();
          sub_100002998(&qword_10000C298, &qword_100004AC8);
          if (!swift_dynamicCast())
          {
            v34 = sub_1000045AC();
            sub_100002998(&qword_10000C2A0, &qword_100004AD0);
            v35 = swift_allocObject();
            *(v35 + 16) = v66;
            v36 = sub_10000449C();
            v38 = v37;
            *(v35 + 56) = &type metadata for String;
            *(v35 + 64) = sub_100003B40();
            *(v35 + 32) = v36;
            *(v35 + 40) = v38;
            sub_100003B94();
            v39 = sub_1000045CC();
            sub_10000451C(v34, &_mh_execute_header, v39, "Failed to parse JSON for file %{public}@", 40, 2, v35);

            v40 = objc_allocWithZone(NSError);
            v41 = sub_10000453C();
            [v40 initWithDomain:v41 code:0 userInfo:0];

LABEL_23:
            swift_willThrow();
            sub_100003BE0(v27, v29);
            sub_100002998(&qword_10000C2A0, &qword_100004AD0);
            v43 = swift_allocObject();
            *(v43 + 16) = v69;
            v44 = sub_1000044BC(1);
            v46 = v45;
            *(v43 + 56) = &type metadata for String;
            v47 = sub_100003B40();
            *(v43 + 64) = v47;
            *(v43 + 32) = v44;
            *(v43 + 40) = v46;
            swift_getErrorValue();
            v48 = sub_10000469C();
            *(v43 + 96) = &type metadata for String;
            *(v43 + 104) = v47;
            *(v43 + 72) = v48;
            *(v43 + 80) = v49;
            sub_100003B94();
            v50 = sub_1000045CC();
            v51 = sub_1000045BC();
            sub_10000450C("File parsing failure on file: %{private}@ with error: %{private}@", 65, 2, &_mh_execute_header, v50, v51, v43);

            *(v70 + OBJC_IVAR___AirpodsLogCollectorController_filesSkippedWithParsingErrors) = 1;
            v26 = 0;
            v1 = v71;
            v20 = v76;
            goto LABEL_16;
          }

          v22 = *&v79[0];
          v23 = sub_10000449C();
          v81 = &type metadata for String;
          *&v80 = v23;
          *(&v80 + 1) = v24;
          sub_1000029E0(&v80, v79);
          v25 = swift_isUniquelyReferenced_nonNull_native();
          v78 = v22;
          sub_100003734(v79, 0x665F656372756F73, 0xEF656D616E656C69, v25);
          sub_100003BE0(v27, v29);
          v26 = v78;
LABEL_16:
          (*v73)(v77, v1);
          ++v21;
          if (v26)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_100002864(0, v65[2] + 1, 1, v65);
            }

            v53 = v65[2];
            v52 = v65[3];
            if (v53 >= v52 >> 1)
            {
              v65 = sub_100002864((v52 > 1), v53 + 1, 1, v65);
            }

            v54 = v65;
            v65[2] = v53 + 1;
            v54[v53 + 4] = v26;
          }
        }

        v42 = v80;
        sub_10000445C();

        goto LABEL_23;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);

  (*v73)(v77, v71);

  __break(1u);
  return result;
}

id sub_1000024DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirpodsLogCollectorController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AirpodsLogCollectorController(uint64_t a1)
{
  result = qword_10000C320;
  if (!qword_10000C320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000025E8(uint64_t a1)
{
  result = sub_1000044DC();
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

void *sub_10000268C(void *result, int64_t a2, char a3, void *a4)
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

  sub_100002998(&qword_10000C2C8, &qword_100004AE0);
  v10 = *(sub_1000044DC() - 8);
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
  v15 = *(sub_1000044DC() - 8);
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

void *sub_100002864(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002998(&qword_10000C290, &qword_100004AC0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100002998(&qword_10000C298, &qword_100004AC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100002998(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_1000029E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000029F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002ABC(v11, 0, 0, 1, a1, a2);
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
    sub_100003AE0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003A94(v11);
  return v7;
}

unint64_t sub_100002ABC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002BC8(a5, a6);
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
    result = sub_10000463C();
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

char *sub_100002BC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002C14(a1, a2);
  sub_100002D44(&off_1000083E8);
  return v3;
}

char *sub_100002C14(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002E30(v5, 0);
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

  result = sub_10000463C();
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
        v10 = sub_10000455C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002E30(v10, 0);
        result = sub_10000462C();
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

uint64_t sub_100002D44(uint64_t result)
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

  result = sub_100002EA4(result, v11, 1, v3);
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

void *sub_100002E30(uint64_t a1, uint64_t a2)
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

  sub_100002998(&qword_10000C2E0, &qword_100004AF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002EA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002998(&qword_10000C2E0, &qword_100004AF8);
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

unint64_t sub_100002F98(uint64_t a1, uint64_t a2)
{
  sub_1000046AC();
  sub_10000454C();
  v4 = sub_1000046BC();

  return sub_100003054(a1, a2, v4);
}

unint64_t sub_100003010(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000045FC(*(v2 + 40));

  return sub_10000310C(a1, v4);
}

unint64_t sub_100003054(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000467C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000310C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000043AC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10000460C();
      sub_100004408(v8);
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

uint64_t sub_1000031D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002998(&qword_10000C2D0, &qword_100004AE8);
  v34 = v4;
  result = sub_10000465C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_1000046AC();
      sub_10000454C();
      result = sub_1000046BC();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_10000347C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002998(&qword_10000C288, &qword_100004AB8);
  v33 = v4;
  result = sub_10000465C();
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
        sub_1000029E0(v24, v34);
      }

      else
      {
        sub_100003AE0(v24, v34);
      }

      sub_1000046AC();
      sub_10000454C();
      result = sub_1000046BC();
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
      result = sub_1000029E0(v34, (*(v7 + 56) + 32 * v15));
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

_OWORD *sub_100003734(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100002F98(a2, a3);
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
      sub_1000038F0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000347C(v16, a4 & 1);
    v11 = sub_100002F98(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_10000468C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100003A94(v22);

    return sub_1000029E0(a1, v22);
  }

  else
  {
    sub_100003884(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100003884(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000029E0(a4, (a5[7] + 32 * a1));
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

void *sub_1000038F0()
{
  v1 = v0;
  sub_100002998(&qword_10000C288, &qword_100004AB8);
  v2 = *v0;
  v3 = sub_10000464C();
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
        sub_100003AE0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000029E0(v25, (*(v4 + 56) + v22));
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

uint64_t sub_100003A94(void *a1)
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

uint64_t sub_100003AE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100003B40()
{
  result = qword_10000C2A8;
  if (!qword_10000C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2A8);
  }

  return result;
}

unint64_t sub_100003B94()
{
  result = qword_10000C2B0;
  if (!qword_10000C2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C2B0);
  }

  return result;
}

uint64_t sub_100003BE0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100003C34()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100003C8C(uint64_t a1)
{
  v2 = sub_1000044DC();
  v3 = __chkstk_darwin(v2);
  v53 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v54 = &v45 - v6;
  __chkstk_darwin(v5);
  v58 = &v45 - v8;
  v9 = &_swiftEmptyDictionarySingleton;
  v59 = &_swiftEmptyDictionarySingleton;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v12 = *(v7 + 16);
  v11 = v7 + 16;
  v47 = *(v11 + 64);
  v13 = *(v11 + 56);
  v50 = (v47 + 32) & ~v47;
  v14 = a1 + v50;
  v51 = (v11 - 8);
  v52 = v12;
  v56 = (v11 + 16);
  v46 = xmmword_100004A20;
  v48 = v2;
  v49 = v11;
  v55 = v13;
  while (1)
  {
    v57 = v10;
    v16 = v11;
    v52(v58, v14, v2);
    v20 = v54;
    sub_1000044AC();
    v21 = sub_10000449C();
    v23 = v22;
    (*v51)(v20, v2);
    v25 = sub_100002F98(v21, v23);
    v26 = v9[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v9[3] < v28)
    {
      sub_1000031D4(v28, 1);
      v9 = v59;
      v30 = sub_100002F98(v21, v23);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_19;
      }

      v25 = v30;
    }

    if (v29)
    {

      v32 = v9[7];
      v33 = *v56;
      (*v56)(v53, v58, v2);
      v34 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_10000268C(0, v34[2] + 1, 1, v34);
        *(v32 + 8 * v25) = v34;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_10000268C((v36 > 1), v37 + 1, 1, v34);
        *(v32 + 8 * v25) = v34;
      }

      v16 = v49;
      v15 = v50;
      v34[2] = v37 + 1;
      v17 = v55;
      v18 = v34 + v15 + v37 * v55;
      v2 = v48;
      v19 = v57;
      v33(v18, v53, v48);
    }

    else
    {
      sub_100002998(&qword_10000C2C8, &qword_100004AE0);
      v38 = v50;
      v39 = swift_allocObject();
      *(v39 + 16) = v46;
      (*v56)((v39 + v38), v58, v2);
      v9[(v25 >> 6) + 8] |= 1 << v25;
      v40 = (v9[6] + 16 * v25);
      *v40 = v21;
      v40[1] = v23;
      *(v9[7] + 8 * v25) = v39;
      v41 = v9[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v9[2] = v43;
      v17 = v55;
      v19 = v57;
    }

    v14 += v17;
    v10 = v19 - 1;
    v11 = v16;
    if (!v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_10000468C();
  __break(1u);
  return result;
}

unint64_t sub_100004064(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002998(&qword_10000C2D0, &qword_100004AE8);
    v3 = sub_10000466C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100002F98(v5, v6);
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

unint64_t sub_100004168()
{
  result = qword_10000C2C0;
  if (!qword_10000C2C0)
  {
    sub_10000446C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C0);
  }

  return result;
}

unint64_t sub_1000041C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002998(&qword_10000C2F8, &qword_100004B10);
    v3 = sub_10000466C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000433C(v4, v13);
      result = sub_100003010(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000029E0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_1000042DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002998(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000433C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002998(&qword_10000C2F0, &qword_100004B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}