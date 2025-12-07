int main(int argc, const char **argv, const char **envp)
{
  v3 = [objc_opt_self() serviceListener];
  qword_100617100 = v3;
  if (qword_1005FF3F0 != -1)
  {
    v4 = v3;
    swift_once();
    v3 = v4;
  }

  [v3 setDelegate:qword_100617108];
  [qword_100617100 resume];
  exit(0);
}

id sub_100003480(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = a3;
  static Logger.music(_:)(0xD000000000000013, 0x80000001004FAC30);
  v9.receiver = a1;
  v9.super_class = type metadata accessor for MusicScriptUpdateService(0);
  v7 = objc_msgSendSuper2(&v9, *a4, v6);

  return v7;
}

id sub_10000358C(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = a3;
  static Logger.music(_:)(0xD000000000000013, 0x80000001004FAC30);
  v11.receiver = a1;
  v11.super_class = type metadata accessor for MusicScriptUpdateService(0);
  v9 = objc_msgSendSuper2(&v11, *a5, v8, a4);

  return v9;
}

id sub_10000377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_allocWithZone(type metadata accessor for ScriptUpdateServiceDelegate(a1 a2];
  qword_100617108 = result;
  return result;
}

id sub_100003804(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t variable initialization expression of JSThread.accessQueue()
{
  v0 = sub_1004BCB34();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BCAF4();
  __chkstk_darwin();
  sub_1004BA924();
  __chkstk_darwin();
  sub_100003A70(0, v4, v5);
  sub_1004BA914();
  v7[1] = _swiftEmptyArrayStorage;
  sub_100004F00(&qword_1005FF410, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003ABC(&qword_1005FF418, &unk_1004C4B40);
  sub_100003B04();
  sub_1004BD2D4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_1004BCB74();
}

unint64_t sub_100003A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1005FF408;
  if (!qword_1005FF408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005FF408);
  }

  return result;
}

uint64_t sub_100003ABC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003B04()
{
  result = qword_1005FF420;
  if (!qword_1005FF420)
  {
    sub_100003B68(&qword_1005FF418, &unk_1004C4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005FF420);
  }

  return result;
}

uint64_t sub_100003B68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of JSThread.scriptingThreadIdentifier()
{
  v0 = [objc_allocWithZone(NSUUID) init];
  v1 = [v0 UUIDString];

  v2 = sub_1004BBE64();
  return v2;
}

uint64_t type metadata accessor for MusicScriptUpdateService(uint64_t a1)
{
  result = qword_1005FF450;
  if (!qword_1005FF450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003C94(uint64_t a1, uint64_t a2)
{
  result = sub_1004B80B4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Int sub_100003EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004BDBA4();
  swift_getWitnessTable();
  sub_1004B71F4();
  return sub_1004BDBF4();
}

uint64_t sub_100003F24(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1004B71E4();
}

uint64_t sub_100003F90(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1004B71E4();
}

uint64_t sub_100004024(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100004080(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100004080(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000414C(v11, 0, 0, 1, a1, a2);
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
    sub_100004DE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004C6C(v11);
  return v7;
}

unint64_t sub_10000414C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004258(a5, a6);
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
    result = sub_1004BD4C4();
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

void *sub_100004258(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000042A4(a1, a2);
  sub_1000043D4(&off_1005A2AA8);
  return v3;
}

void *sub_1000042A4(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000044C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1004BD4C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1004BC044();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000044C0(v10, 0);
        result = sub_1004BD3F4();
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

uint64_t sub_1000043D4(uint64_t result)
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

  result = sub_100004534(result, v11, 1, v3);
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

void *sub_1000044C0(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&qword_1005FF4F0, &qword_1004C4B90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004534(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1005FF4F0, &qword_1004C4B90);
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

_BYTE **sub_100004628(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100004638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v54 = a1;
  v55 = a2;
  type metadata accessor for ApplicationScriptProvider.Compiler(0);
  __chkstk_darwin();
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B6B04();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  __chkstk_darwin();
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC24MusicScriptUpdateService24MusicScriptUpdateService_logger;
  v56 = a4;
  v16 = sub_1004B8094();
  v17 = sub_1004BC9A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Beginning JavaScript bytecode update XPC service", v18, 2u);
  }

  v19 = [objc_allocWithZone(JSContext) init];
  if (v19)
  {
    v22 = v19;
    v53 = v15;
    type metadata accessor for ApplicationScriptProvider(0, v20, v21);
    inited = swift_initStackObject();
    *(inited + 16) = v22;
    *(inited + 24) = 0;
    v24 = *(v9 + 16);
    v24(v11, v54, v8);
    v14[32] = 1;
    v24(&v14[*(v12 + 32)], v11, v8);
    v25 = v55;
    *(v14 + 2) = v55;
    *(v14 + 3) = a3;
    *(v14 + 1) = 0;
    swift_bridgeObjectRetain_n();
    v26 = sub_100007354(v25, a3, 1);
    v27 = (*(v9 + 8))(v11, v8);
    *v14 = v26;
    if (v26 && (v29 = sub_1000066B8(v27, v28), v30 >> 60 != 15))
    {
      v37 = v29;
      v38 = v30;
      v39 = v52;
      sub_100004CB8(v14, v52);

      sub_100004D7C(v37, v38);
      sub_100004D1C(v39, type metadata accessor for ApplicationScriptProvider.Compiler);
    }

    else
    {
      sub_100004C18();
      swift_allocError();
      *v31 = 2;
      swift_willThrow();
      swift_errorRetain();
      v40 = sub_1004B8094();
      v41 = sub_1004BC984();

      if (os_log_type_enabled(v40, v41))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v57 = v44;
        *v43 = 136315138;
        swift_getErrorValue();
        v45 = sub_1004BDB04();
        v47 = sub_100004080(v45, v46, &v57);

        *(v43 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v40, v41, "Failure while trying to compile: %s", v43, 0xCu);
        sub_100004C6C(v44);
      }

      else
      {
      }
    }

    v48 = sub_1004B8094();
    v49 = sub_1004BC9A4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Cached bytecode with no errors", v50, 2u);
    }

    return sub_100004D1C(v14, type metadata accessor for ApplicationScriptProvider.Descriptor);
  }

  else
  {
    v32 = sub_1004B8094();
    v33 = sub_1004BC994();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to create JSContext", v34, 2u);
    }

    v35 = *(v53 + 16);

    return v35();
  }
}

unint64_t sub_100004C18()
{
  result = qword_1005FF4E8;
  if (!qword_1005FF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005FF4E8);
  }

  return result;
}

uint64_t sub_100004C6C(void *a1)
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

uint64_t sub_100004CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004D1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100004D7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100004D90(a1, a2);
  }

  return a1;
}

uint64_t sub_100004D90(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100004DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100004E6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100004F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100005020(uint64_t a1, uint64_t a2, void *a3)
{
  v136 = a3;
  v4 = sub_1004B6B04();
  v140 = *(v4 - 1);
  v141 = v4;
  __chkstk_darwin();
  v139 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v123 - v6;
  v8 = sub_1004B80B4();
  v9 = *(v8 - 8);
  v137 = v8;
  v138 = v9;
  __chkstk_darwin();
  v129 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v123 - v11;
  __chkstk_darwin();
  v134 = &v123 - v12;
  __chkstk_darwin();
  v14 = &v123 - v13;
  __chkstk_darwin();
  v132 = &v123 - v15;
  __chkstk_darwin();
  v17 = &v123 - v16;
  v128 = sub_100003ABC(&qword_1005FFA60, &qword_1004C4E90);
  __chkstk_darwin();
  v127 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v130 = &v123 - v19;
  __chkstk_darwin();
  v133 = &v123 - v20;
  __chkstk_darwin();
  v22 = &v123 - v21;
  __chkstk_darwin();
  v24 = &v123 - v23;
  __chkstk_darwin();
  v142 = &v123 - v25;
  sub_1004BBEB4();
  __chkstk_darwin();
  isa = (&v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004BBEA4();
  v28 = sub_1004BBE84();
  if (!v29)
  {
    sub_100004C18();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    return isa;
  }

  v30 = *(v3 + 32);
  v125 = v14;
  v135 = v3;
  v126 = v28;
  if (v30)
  {
    v31 = v141;
    if (v30 != 1)
    {
      v140[7](v142, 1, 1, v141);
      goto LABEL_23;
    }
  }

  else
  {
    v31 = v141;
    if (!*v3)
    {
      goto LABEL_21;
    }

    v33 = sub_1000064C0(v28, v29);
    v3 = v135;
    if (v33)
    {
      if (qword_1005FF400 != -1)
      {
        swift_once();
      }

      v34 = v137;
      v35 = sub_100007084(v137, qword_1005FF5A8);
      (*(v138 + 16))(v17, v35, v34);
      v36 = sub_1004B8094();
      LODWORD(v123) = sub_1004BC9A4();
      v124 = v36;
      if (os_log_type_enabled(v36, v123))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v124, v123, "Path for bytecode cache exists and will be used in the JSScript creation.", v37, 2u);
        v31 = v141;
      }

      (*(v138 + 8))(v17, v137);
      v3 = v135;
    }
  }

  v38 = *v3;
  if (*v3)
  {
    if (*(v38 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_isUpdate))
    {
      v39 = 1954047342;
    }

    else
    {
      v39 = 0x746E6572727563;
    }

    if (*(v38 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_isUpdate))
    {
      v40 = 0xE400000000000000;
    }

    else
    {
      v40 = 0xE700000000000000;
    }

    static URL.+ infix(_:_:)(v38 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_versionPath, v39, v40, 0);

    static URL.+ infix(_:_:)(v7, 0x707041636973756DLL, 0xED000063736A5F2ELL, 1);
    v41 = v140;
    (v140[1])(v7, v31);
    v42 = 0;
    goto LABEL_22;
  }

LABEL_21:
  v42 = 1;
  v41 = v140;
LABEL_22:
  v41[7](v24, v42, 1, v31);
  sub_1000072E4(v24, v142);
LABEL_23:
  v43 = sub_1004BBE24();
  v44 = sub_1004BBE24();
  v45 = [objc_opt_self() attributeWithDomain:v43 name:v44];

  v46 = [objc_opt_self() currentProcess];
  sub_100003ABC(&qword_1005FFA68, &qword_1004C4E98);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1004C4D40;
  *(v47 + 32) = v45;
  v48 = objc_allocWithZone(RBSAssertion);
  v49 = v45;
  v50 = sub_1004BBE24();
  sub_1000071C8(0, v51, v52);
  isa = sub_1004BC284().super.isa;

  v53 = [v48 initWithExplanation:v50 target:v46 attributes:isa];

  v143 = 0;
  v54 = [v53 acquireWithError:&v143];
  v55 = v143;
  if (!v54)
  {
    v69 = v143;

    sub_1004B69B4();

    swift_willThrow();
    [v53 invalidate];

LABEL_36:
    sub_100007214(v142, &qword_1005FFA60, &qword_1004C4E90);
    return isa;
  }

  v123 = v53;
  v124 = v49;
  v56 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v57 = v140;
  v58 = v141;
  (v140[2])(v139, v135 + *(v56 + 32), v141);
  sub_100007274(v142, v22);
  v59 = v55;
  result = [v136 virtualMachine];
  if (result)
  {
    v61 = result;
    v62 = sub_1004BBE24();

    sub_1004B6A44(v63);
    v65 = v64;
    v66 = v57[6];
    if ((v66)(v22, 1, v58) == 1)
    {
      v68 = 0;
    }

    else
    {
      sub_1004B6A44(v67);
      v68 = v70;
      (v57[1])(v22, v58);
    }

    v71 = v138;
    v72 = objc_opt_self();
    v143 = 0;
    isa = [v72 scriptOfType:0 withSource:v62 andSourceURL:v65 andBytecodeCache:v68 inVirtualMachine:v61 error:&v143];

    if (isa)
    {
      v73 = v140[1];
      v74 = v143;
      v75 = v141;
      (v73)(v139, v141);

      if (([(objc_class *)isa isUsingBytecodeCache]& 1) != 0)
      {
        if (qword_1005FF400 != -1)
        {
          swift_once();
        }

        v76 = v137;
        v77 = sub_100007084(v137, qword_1005FF5A8);
        v78 = v134;
        (*(v71 + 16))(v134, v77, v76);
        v79 = sub_1004B8094();
        v80 = sub_1004BC974();
        if (!os_log_type_enabled(v79, v80))
        {
          goto LABEL_44;
        }

        v81 = swift_slowAlloc();
        *v81 = 0;
        v82 = "Successfully started script with cached bytecode.";
LABEL_43:
        _os_log_impl(&_mh_execute_header, v79, v80, v82, v81, 2u);

LABEL_44:

        (*(v71 + 8))(v78, v76);
        v88 = v124;
        v89 = v123;
LABEL_59:
        [v89 invalidate];

        sub_100007214(v142, &qword_1005FFA60, &qword_1004C4E90);
        return isa;
      }

      v85 = v133;
      sub_100007274(v142, v133);
      v86 = (v66)(v85, 1, v75);
      sub_100007214(v85, &qword_1005FFA60, &qword_1004C4E90);
      if (v86 == 1)
      {
        v76 = v137;
        if (qword_1005FF400 != -1)
        {
          swift_once();
        }

        v87 = sub_100007084(v76, qword_1005FF5A8);
        v78 = v131;
        (*(v71 + 16))(v131, v87, v76);
        v79 = sub_1004B8094();
        v80 = sub_1004BC974();
        if (!os_log_type_enabled(v79, v80))
        {
          goto LABEL_44;
        }

        v81 = swift_slowAlloc();
        *v81 = 0;
        v82 = "Not using bytecode cache";
        goto LABEL_43;
      }

      v141 = isa;
      v90 = v137;
      if (qword_1005FF400 != -1)
      {
        swift_once();
      }

      v91 = sub_100007084(v90, qword_1005FF5A8);
      v92 = v132;
      v140 = *(v71 + 16);
      (v140)(v132, v91, v90);
      v93 = v130;
      sub_100007274(v142, v130);
      v94 = sub_1004B8094();
      v95 = sub_1004BC9A4();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v143 = v97;
        *v96 = 136315138;
        sub_100007274(v93, v127);
        v98 = sub_1004BBF04();
        v100 = v99;
        sub_100007214(v93, &qword_1005FFA60, &qword_1004C4E90);
        v101 = sub_100004080(v98, v100, &v143);
        v90 = v137;

        *(v96 + 4) = v101;
        v102 = v138;
        _os_log_impl(&_mh_execute_header, v94, v95, "Caching bytecode at %s", v96, 0xCu);
        sub_100004C6C(v97);

        v103 = *(v102 + 8);
        (v103)(v132, v90);
      }

      else
      {

        sub_100007214(v93, &qword_1005FFA60, &qword_1004C4E90);
        v103 = *(v71 + 8);
        (v103)(v92, v90);
      }

      v104 = v125;
      v143 = 0;
      v105 = [(objc_class *)v141 cacheBytecodeWithError:&v143];
      v106 = v143;
      if (v105)
      {
        (v140)(v104, v91, v90);
        v107 = v106;
        v108 = sub_1004B8094();
        v109 = sub_1004BC9A4();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&_mh_execute_header, v108, v109, "Successfully cached bytecode", v110, 2u);
        }

        v111 = v104;
      }

      else
      {
        v112 = v143;
        sub_1004B69B4();

        swift_willThrow();
        v113 = v129;
        (v140)(v129, v91, v90);
        swift_errorRetain();
        v114 = sub_1004B8094();
        v115 = sub_1004BC994();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v140 = v103;
          v117 = v116;
          v118 = swift_slowAlloc();
          v143 = v118;
          *v117 = 136315138;
          swift_getErrorValue();
          v119 = sub_1004BDB04();
          v121 = v90;
          v122 = sub_100004080(v119, v120, &v143);

          *(v117 + 4) = v122;
          _os_log_impl(&_mh_execute_header, v114, v115, "An error has occurred while trying to cache bytecode: %s", v117, 0xCu);
          sub_100004C6C(v118);

          (v140)(v129, v121);
LABEL_58:
          v88 = v124;
          v89 = v123;
          isa = v141;
          goto LABEL_59;
        }

        v111 = v113;
      }

      (v103)(v111, v90);
      goto LABEL_58;
    }

    v83 = v143;
    sub_1004B69B4();

    swift_willThrow();
    (v140[1])(v139, v141);
    v84 = v123;
    [v123 invalidate];

    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000060AC()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_100006128()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1);
  return sub_1004BDBF4();
}

Swift::Int sub_1000061A0()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1);
  return sub_1004BDBF4();
}

uint64_t sub_1000061F4()
{
  sub_10000716C(v0 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E10Downloader_descriptor);
  v1 = OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E10Downloader_request;
  v2 = sub_1004B64E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000062C8(uint64_t a1)
{
  result = type metadata accessor for ApplicationScriptProvider.Descriptor(319);
  if (v2 <= 0x3F)
  {
    result = sub_1004B64E4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000063B4()
{
  v0 = sub_100003ABC(&qword_1005FFA60, &qword_1004C4E90);
  sub_100007108(v0, qword_1005FF590);
  v1 = sub_100007084(v0, qword_1005FF590);
  v2 = Datavault.music.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *v2;
  if (v3)
  {
    v4 = OBJC_IVAR____TtC14MusicUtilities9Datavault_url;

    static URL.+ infix(_:_:)(v3 + v4, 0x747069726353, 0xE600000000000000, 0);

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1004B6B04();
  return (*(*(v6 - 8) + 56))(v1, v5, 1, v6);
}

id sub_1000064C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = [objc_opt_self() defaultManager];
  if (*(v2 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_isUpdate))
  {
    v10 = 1954047342;
  }

  else
  {
    v10 = 0x746E6572727563;
  }

  if (*(v2 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_isUpdate))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  static URL.+ infix(_:_:)(v2 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_versionPath, v10, v11, 0);

  static URL.+ infix(_:_:)(v6, 0x707041636973756DLL, 0xED000063736A5F2ELL, 1);
  v12 = *(v4 + 8);
  v12(v6, v3);
  sub_1004B6AA4();
  v12(v8, v3);
  v13 = sub_1004BBE24();

  v14 = [v9 fileExistsAtPath:v13];

  return v14;
}

uint64_t sub_1000066B8(uint64_t a1, uint64_t a2)
{
  sub_1004B80B4();
  __chkstk_darwin();
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v14[-v7];
  if (*(v2 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_isUpdate))
  {
    v9 = 1954047342;
  }

  else
  {
    v9 = 0x746E6572727563;
  }

  if (*(v2 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_isUpdate))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  static URL.+ infix(_:_:)(v2 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_versionPath, v9, v10, 0);

  static URL.+ infix(_:_:)(v6, 0x707041636973756DLL, 0xEB00000000736A2ELL, 1);
  v11 = *(v4 + 8);
  v11(v6, v3);
  v12 = sub_1004B6B24();
  v11(v8, v3);
  return v12;
}

uint64_t sub_1000069F4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_versionPath;
  v4 = sub_1004B6B04();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100006ACC(uint64_t a1, uint64_t a2)
{
  result = sub_1004B6B04();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006B70()
{
  [*(v0 + 16) invalidate];

  sub_100007214(v0 + 24, &qword_1005FFA58, &qword_1004C4E88);

  return swift_deallocClassInstance();
}

uint64_t sub_100006C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004B6B04();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100006CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1004B6B04();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100006D6C(uint64_t a1)
{
  sub_100006E0C(319);
  if (v1 <= 0x3F)
  {
    sub_1004B6B04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100006E0C(uint64_t a1)
{
  if (!qword_1005FFA10)
  {
    type metadata accessor for ApplicationScriptProvider.Storage(255);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_1005FFA10);
    }
  }
}

uint64_t getEnumTagSinglePayload for ApplicationScriptProvider.Intent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationScriptProvider.Intent(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100006FCC()
{
  result = qword_1005FFA50;
  if (!qword_1005FFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005FFA50);
  }

  return result;
}

uint64_t sub_100007020(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_1005FF5A8);
  sub_100007084(v2, qword_1005FF5A8);
  return static Logger.music(_:)(0xD000000000000019, 0x80000001004C4D60);
}

uint64_t sub_100007084(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000070BC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t *sub_100007108(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000716C(uint64_t a1)
{
  v2 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000071C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1005FFA70;
  if (!qword_1005FFA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005FFA70);
  }

  return result;
}

uint64_t sub_100007214(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003ABC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007274(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1005FFA60, &qword_1004C4E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000072E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1005FFA60, &qword_1004C4E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007354(uint64_t a1, uint64_t a2, int a3)
{
  v20 = a3;
  v5 = sub_100003ABC(&qword_1005FFA60, &qword_1004C4E90);
  __chkstk_darwin();
  v7 = &v19[-v6];
  v8 = sub_1004B6B04();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v19[-v12];
  type metadata accessor for ApplicationScriptProvider.Storage(0);
  v14 = swift_allocObject();
  if (qword_1005FF3F8 != -1)
  {
    swift_once();
  }

  v15 = sub_100007084(v5, qword_1005FF590);
  sub_100007274(v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_100007214(v7, &qword_1005FFA60, &qword_1004C4E90);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v16 = *(v9 + 32);
    v16(v13, v7, v8);

    static URL.+ infix(_:_:)(v13, a1, a2, 0);

    (*(v9 + 8))(v13, v8);
    v16((v14 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_versionPath), v11, v8);
    *(v14 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_isUpdate) = v20 & 1;
    v17 = (v14 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_version);
    *v17 = a1;
    v17[1] = a2;
  }

  return v14;
}

uint64_t getEnumTagSinglePayload for ApplicationScriptProvider.ScriptError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationScriptProvider.ScriptError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100007818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000078A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000078E0(uint64_t a1)
{
  result = type metadata accessor for ApplicationScriptProvider.Descriptor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100007950()
{
  result = qword_1005FFB08;
  if (!qword_1005FFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005FFB08);
  }

  return result;
}

uint64_t JSThread.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  JSThread.init(name:)(a1, a2);
  return v4;
}

void *JSThread.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15 = a1;
  v16 = a2;
  v14 = sub_1004BCB34();
  v4 = *(v14 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BCAF4();
  __chkstk_darwin();
  sub_1004BA924();
  __chkstk_darwin();
  sub_100009130(0, &qword_1005FF408, OS_dispatch_queue_ptr);
  sub_1004BA914();
  v17 = _swiftEmptyArrayStorage;
  sub_100009004(&qword_1005FF410, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003ABC(&qword_1005FF418, &unk_1004C4B40);
  sub_100003B04();
  sub_1004BD2D4();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v2[4] = sub_1004BCB74();
  v2[5] = _swiftEmptyArrayStorage;
  v2[6] = 0;
  v2[7] = 0;
  v7 = [objc_allocWithZone(NSUUID) init];
  v8 = [v7 UUIDString];

  v9 = sub_1004BBE64();
  v11 = v10;

  v3[8] = v9;
  v3[9] = v11;
  v12 = v16;
  v3[2] = v15;
  v3[3] = v12;
  return v3;
}

uint64_t static JSThread.assertRunning(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() currentThread];
  v4 = [v3 threadDictionary];

  v5 = sub_1004BBE24();
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    return sub_100007DE8(v10);
  }

  result = swift_dynamicCast();
  if (result)
  {
  }

  return result;
}

uint64_t sub_100007DE8(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1005FFA58, &qword_1004C4E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Alert.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JSThread.enqueueBlock(_:)(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v5 = *(v2 + 32);
  v6 = swift_allocObject();
  v6[2] = &v14;
  v6[3] = v2;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000081F0;
  *(v7 + 24) = v6;
  v13[4] = sub_1000081FC;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100008224;
  v13[3] = &unk_1005A2CA0;
  v8 = _Block_copy(v13);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    if ((v14 - 1) >= 2)
    {
      if (v14)
      {
        v10 = v15;
        v11 = v14;
        v12 = v10;
        CFRunLoopSourceSignal(v12);
        CFRunLoopWakeUp(v11);
      }

      else
      {
        sub_1000084EC();
      }
    }

    sub_100008264(v14, v15);
  }

  return result;
}

uint64_t sub_100008040(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[6];
  v8 = a2[7];
  v9 = *a1;
  v10 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  sub_1000091BC(v7, v8);
  sub_1000091BC(v7, v8);
  sub_100008264(v9, v10);
  if ((v7 - 1) >= 2)
  {
    if (v7)
    {
      v11 = v7;
      v12 = v8;
    }

    else
    {
      v11 = a2[6];
      v12 = a2[7];
      *(a2 + 3) = xmmword_1004C4F70;
    }

    sub_100008264(v11, v12);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  swift_beginAccess();
  v14 = a2[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[5] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_100009200(0, v14[2] + 1, 1, v14);
    a2[5] = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_100009200((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = sub_1000081FC;
  v18[5] = v13;
  a2[5] = v14;
  return swift_endAccess();
}

uint64_t sub_1000081B0()
{

  return swift_deallocObject();
}

uint64_t sub_10000824C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100008264(void *a1, void *a2)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1000082A8()
{
  v1 = v0;
  v13 = _swiftEmptyArrayStorage;
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = &v13;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100009128;
  *(v4 + 24) = v3;
  aBlock[4] = sub_100009350;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005A2E98;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v13;
    v8 = v13[2];
    if (v8)
    {

      v9 = v7 + 5;
      do
      {
        v10 = *(v9 - 1);

        v11 = objc_autoreleasePoolPush();
        v10();

        objc_autoreleasePoolPop(v11);
        v9 += 2;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_100008478(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  *a1 = *(a2 + 40);

  *(a2 + 40) = _swiftEmptyArrayStorage;
}

void sub_1000084EC()
{
  v1 = sub_100009130(0, &qword_1005FFC50, NSThread_ptr);
  v7[3] = type metadata accessor for JSThread(v1, v2, v3);
  v7[0] = v0;
  memset(v6, 0, sizeof(v6));

  v5 = sub_1000085C8(v7, "_scriptingThreadMain", v6);
  [v5 setQualityOfService:25];
  v4 = sub_1004BBE24();
  [v5 setName:v4];

  [v5 start];
}

id sub_1000085C8(void *a1, uint64_t a2, void *a3)
{
  sub_100009178(a1, a1[3]);
  v6 = sub_1004BD9A4();
  v7 = a3[3];
  if (v7)
  {
    sub_100009178(a3, a3[3]);
    v8 = *(v7 - 8);
    v9 = __chkstk_darwin();
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1004BD9A4();
    (*(v8 + 8))(v11, v7);
    sub_100004C6C(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTarget:v6 selector:a2 object:v12];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100004C6C(a1);
  return v13;
}

void sub_100008754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() currentThread];
  v5 = [v4 threadDictionary];

  v6 = sub_1004BBE24();

  v7 = sub_1004BBE24();
  [v5 setObject:v6 forKey:v7];

  context.version = 0;
  context.info = v3;
  memset(&context.retain, 0, 56);
  context.perform = sub_100008B90;
  v8 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &context);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = CFRunLoopGetCurrent();
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = v9;
  CFRunLoopAddSource(v11, v12, kCFRunLoopDefaultMode);
  v29 = 0;
  v13 = v3[4];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = v11;
  v14[4] = v12;
  v14[5] = &v29;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100009094;
  *(v15 + 24) = v14;
  v27 = sub_100009350;
  v28 = v15;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100008224;
  v26 = &unk_1005A2DA8;
  v16 = _Block_copy(&v23);
  v17 = v11;
  v18 = v12;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v29 == 1)
  {
    CFRunLoopSourceSignal(v18);

    CFRunLoopWakeUp(v17);
  }

  else
  {
  }

  CFRunLoopRun();
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = &v29;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1000090E8;
  *(v20 + 24) = v19;
  v27 = sub_100009350;
  v28 = v20;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100008224;
  v26 = &unk_1005A2E20;
  v21 = _Block_copy(&v23);

  dispatch_sync(v13, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_12;
  }

  if (v29 == 1)
  {
    sub_1000084EC();
  }
}

uint64_t sub_100008B90(uint64_t result)
{
  if (result)
  {

    sub_1000082A8();
  }

  return result;
}

uint64_t sub_100008BD4(void *a1, void *a2, void *a3, BOOL *a4)
{
  v7 = a1[6];
  v8 = a1[7];
  a1[6] = a2;
  a1[7] = a3;
  v9 = a2;
  v10 = a3;
  sub_100008264(v7, v8);
  result = swift_beginAccess();
  *a4 = *(a1[5] + 16) != 0;
  return result;
}

void sub_100008C58(void *a1, BOOL *a2)
{
  v4 = a1[6];
  v5 = a1[7];
  a1[6] = 0;
  a1[7] = 0;
  sub_100008264(v4, v5);
  swift_beginAccess();
  v6 = *(a1[5] + 16);
  *a2 = v6 != 0;
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[7];
    *(a1 + 3) = xmmword_1004C4F70;
    sub_100008264(v7, v8);
  }
}

BOOL sub_100008D10(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 == 1)
    {
      return v3 == 1;
    }

    if (v2 == 2)
    {
      return v3 == 2;
    }

    if (v3 >= 3)
    {
      type metadata accessor for CFRunLoop(0);
      sub_100009004(&qword_1005FFC40, type metadata accessor for CFRunLoop, &unk_1004C4D08);
      if (sub_1004B71E4())
      {
        type metadata accessor for CFRunLoopSource(0);
        sub_100009004(&qword_1005FFC48, type metadata accessor for CFRunLoopSource, &unk_1004C4CDC);
        return sub_1004B71E4() & 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

id *JSThread.deinit()
{

  sub_100008264(v0[6], v0[7]);

  return v0;
}

uint64_t JSThread.__deallocating_deinit()
{

  sub_100008264(v0[6], v0[7]);

  return swift_deallocClassInstance();
}

uint64_t sub_100008F04(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100008F1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100008F28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100008FD4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100009004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000904C()
{

  return swift_deallocObject();
}

uint64_t sub_1000090B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000090F0()
{

  return swift_deallocObject();
}

uint64_t sub_100009130(uint64_t a1, unint64_t *a2, void *a3)
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

void *sub_100009178(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1000091BC(id result, void *a2)
{
  if (result >= 3)
  {
    v3 = result;

    return a2;
  }

  return result;
}

void *sub_100009200(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003ABC(&qword_1005FFC58, &qword_1004C5050);
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
    sub_100003ABC(&qword_1005FFC60, &qword_1004C5058);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10000B09C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MarqueeView.m" lineNumber:260 description:@"viewForContentSize must be a subview of MPUMarqueeView's contentView."];
}

id sub_10000B120(uint64_t a1, uint64_t a2)
{
  result = sub_10000B140(a1, a2);
  qword_100617118 = result;
  return result;
}

id sub_10000B140(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B6B04();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_100003ABC(&qword_100600DE0, &unk_1004C66D0) - 8);
  __chkstk_darwin();
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v55 - v7;
  __chkstk_darwin();
  v10 = &v55 - v9;
  __chkstk_darwin();
  v12 = &v55 - v11;
  __chkstk_darwin();
  v14 = &v55 - v13;
  v61 = sub_1001A4F9C(_swiftEmptyArrayStorage, v15);
  sub_100003ABC(&qword_100600DE8, &unk_1004C81D0);
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v63 = *(v5 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004C5070;
  v65 = v16;
  v58 = v17;
  v18 = v17 + v16;
  v19 = objc_opt_self();
  v20 = [v19 mainBundle];
  v21 = [v20 resourceURL];

  if (v21)
  {
    sub_1004B6A94();

    v22 = *(v3 + 56);
    v23 = v14;
    v24 = 0;
  }

  else
  {
    v22 = *(v3 + 56);
    v23 = v14;
    v24 = 1;
  }

  v64 = v22;
  v22(v23, v24, 1, v2);
  v25 = v3;
  sub_10000F708(v14, v18);
  type metadata accessor for BundleFinder(0, v26, v27);
  v28 = [v19 bundleForClass:swift_getObjCClassFromMetadata()];
  v29 = [v28 resourceURL];

  if (v29)
  {
    sub_1004B6A94();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v60;
  v56 = v25;
  v32 = v12;
  v33 = v12;
  v34 = v64;
  v64(v32, v30, 1, v2);
  v35 = v63;
  sub_10000F708(v33, v18 + v63);
  v36 = [v19 mainBundle];
  v37 = [v36 bundleURL];

  sub_1004B6A94();
  v62 = (v25 + 7);
  v34(v18 + 2 * v35, 0, 1, v2);
  v66 = v61;
  sub_100022A64(v58);
  v38 = v66;
  v39 = v66[2];
  if (v39)
  {
    v40 = 0;
    v41 = v65 + v66;
    v65 = (v56 + 6);
    v61 = (v56 + 1);
    v56 += 4;
    v57 = "AC12BundleFinder";
    v58 = v39;
    while (v40 < v38[2])
    {
      sub_10000F778(v41, v8, &qword_100600DE0, &unk_1004C66D0);
      v42 = *v65;
      if ((*v65)(v8, 1, v2) == 1)
      {
        sub_10000F7E0(v8);
        v43 = 1;
      }

      else
      {
        sub_1004B6A64();
        (*v61)(v8, v2);
        v43 = 0;
      }

      v64(v10, v43, 1, v2);
      sub_10000F778(v10, v31, &qword_100600DE0, &unk_1004C66D0);
      if (v42(v31, 1, v2) == 1)
      {
        sub_10000F7E0(v10);
      }

      else
      {
        v44 = v38;
        v45 = v10;
        v46 = v8;
        v47 = v59;
        (*v56)(v59, v31, v2);
        v48 = objc_allocWithZone(NSBundle);
        sub_1004B6A44(v49);
        v51 = v50;
        v52 = [v48 initWithURL:v50];

        v31 = v60;
        v53 = v47;
        v8 = v46;
        v10 = v45;
        v38 = v44;
        v39 = v58;
        (*v61)(v53, v2);
        sub_10000F7E0(v10);
        if (v52)
        {

          return v52;
        }
      }

      ++v40;
      v41 += v63;
      if (v39 == v40)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004BD624();
  __break(1u);
  return result;
}

double variable initialization expression of AnyAction.displayConfiguration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1004C5080;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

unint64_t variable initialization expression of ArtworkVideoReportingController.signpostsForIndex(uint64_t a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();
  v4 = sub_1004BC304();
  v5 = sub_1000CC72C(v4, a1, &type metadata for ComponentRenderEventSignposts, a2);

  return v5;
}

uint64_t sub_10000B8E8(uint64_t *a1, uint64_t *a2)
{
  sub_100003ABC(a1, a2);
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() standardUserDefaults];
  return v2;
}

id variable initialization expression of MetricsReportingController.carFocusedMetricsController()
{
  v0 = objc_allocWithZone(SSMetricsController);

  return [v0 init];
}

uint64_t variable initialization expression of MetricsReportingController.carMetricsReporter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CarNowPlayingMetrics.Reporter(0, a2, a3);

  return swift_allocObject();
}

double variable initialization expression of ApplicationCapabilities.ratingWarning@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

id variable initialization expression of ApplicationCapabilities.subscriptionStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() sharedController];
  v4 = [v3 musicSubscriptionStatus];

  return v4;
}

uint64_t variable initialization expression of ApplicationCapabilities.Controller.storeBag()
{
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560, &qword_1004C5240);
  UnfairLock.locked<A>(_:)(sub_10000E7D8);
  return v1;
}

id variable initialization expression of BackgroundRefreshController.cloudClient()
{
  v0 = objc_allocWithZone(ICCloudClient);

  return [v0 init];
}

uint64_t variable initialization expression of BagProvider.durableObservers(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for BagProvider.Observer(0, a2);

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v2);
}

uint64_t variable initialization expression of BagProvider.logger()
{
  if (qword_1005FFF20 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.musicBag;

  return sub_1004B80C4();
}

id variable initialization expression of BagProvider.retry(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(type metadata accessor for BagProvider.Retry(0, a2));

  return [v2 init];
}

uint64_t variable initialization expression of Gliss.Coordinator.queuedItem@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of Gliss.Transition.animations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Gliss.Transition(255, a1, a2, a4);
  swift_getFunctionTypeMetadata1();

  return sub_1004BC304();
}

uint64_t variable initialization expression of Gliss.Transition.completions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Gliss.Transition(255, a1, a2, a4);
  swift_getFunctionTypeMetadata2();

  return sub_1004BC304();
}

double variable initialization expression of Gliss.Transition.gestureState@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver._hasDisregardedBanner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 2;
  v6[0] = 0xD000000000000014;
  v6[1] = 0x80000001004FC250;
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_10000E7F4();
  UserDefault.init(wrappedValue:defaults:key:)(&v7, v3, v6, &type metadata for String, &type metadata for Bool, v4, &v8);
  return v8;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver.capabilitiesController()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }
}

void *variable initialization expression of MusicLibrary.ActionableStateController.itemStateSubscriptions()
{
  if (!(_swiftEmptyArrayStorage >> 62) || !sub_1004BD6A4())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_100019E14(_swiftEmptyArrayStorage);
}

id variable initialization expression of Library.Menu.Request.librarySource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_10000C0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v4 = result;
    v5 = [result hasProperNetworkConditionsToShowCloudMedia];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double variable initialization expression of PlaybackController.nowPlayingPresentationDescriptor@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of PlaybackTimeObserver.durationSnapshot@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  return result;
}

id variable initialization expression of Player._path(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() systemRoute];
  v4 = [v3 isDeviceRoute];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = v5;
    if (qword_100600040 != -1)
    {
      swift_once();
    }

    v7 = sub_1004BBE24();
    v8 = [v6 systemMusicPathWithRoute:v3 playerID:v7];
  }

  else
  {
    v8 = [v5 pathWithRoute:v3 bundleID:0 playerID:0];
  }

  return v8;
}

uint64_t variable initialization expression of Player.nowPlayingConfiguration()
{
  if (qword_100600078 != -1)
  {
    swift_once();
  }

  v0 = qword_1006065C0;
  v1 = qword_1006065C0;
  return v0;
}

uint64_t _s9MusicCore11BagProviderC4lock33_D1F028703756EAFCB4E62A24E619467FLL0A9Utilities10UnfairLockCvpfi_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnfairLock(0, a2);
  swift_allocObject();
  return UnfairLock.init()();
}

id sub_10000C370()
{
  if (qword_100600078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006065C0;

  return v1;
}

uint64_t variable initialization expression of MusicItemState._playabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  v3 = sub_1004BAD54();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t variable initialization expression of MusicItemState._previewCapabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v3 = sub_1004BAD64();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:);
  v5 = sub_1004BAD74();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

id variable initialization expression of PlaylistCovers.ArtworkDataSource.cache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

double variable initialization expression of PresentationSource.position@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 40) = xmmword_1004C5090;
  return result;
}

uint64_t variable initialization expression of RequestResponse.Controller.enqueuedRevisionCompletions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Controller(255, a1, a2, a4);
  type metadata accessor for RequestResponse.Revision(255, a1, a2, v6);
  swift_getFunctionTypeMetadata2();

  return sub_1004BC304();
}

unint64_t variable initialization expression of RequestResponse.Controller.revisionIDCompletionsMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Controller(255, a1, a2, a4);
  type metadata accessor for RequestResponse.Revision(255, a1, a2, v6);
  swift_getFunctionTypeMetadata2();
  v7 = sub_1004BC3B4();
  swift_getTupleTypeMetadata2();
  v8 = sub_1004BC304();
  v9 = sub_1000CC72C(v8, &type metadata for Int, v7, &protocol witness table for Int);

  return v9;
}

double variable initialization expression of GroupActivitiesManager._reaction@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10000C7DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of ExplicitRestrictionsController.symbol()
{
  if (qword_100600720 != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t variable initialization expression of OptimisticValue.transaction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for OptimisticValue.Transaction(0, a1, a3, a4);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

void *sub_10000C9E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_10000CA44(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000CAB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000CADC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10000CB80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004BBE64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_10000CBC8(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_10000CC3C(uint64_t a1, id *a2)
{
  result = sub_1004BBE44();
  *a2 = 0;
  return result;
}

uint64_t sub_10000CCB4(uint64_t a1, id *a2)
{
  v3 = sub_1004BBE54();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000CD34@<X0>(uint64_t *a2@<X8>)
{
  sub_1004BBE64();
  v3 = sub_1004BBE24();

  *a2 = v3;
  return result;
}

uint64_t sub_10000CD78(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600C40, type metadata accessor for MPCPlayerRequestError, &unk_1004C5E20);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000CDE4(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600C40, type metadata accessor for MPCPlayerRequestError, &unk_1004C5E20);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000CE50(uint64_t a1)
{
  v2 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError, &unk_1004C65B0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_10000CF60(uint64_t a1, uint64_t a2)
{
  sub_1004BDBA4();
  swift_getWitnessTable();
  sub_1004B71F4();
  return sub_1004BDBF4();
}

uint64_t sub_10000CFC8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1004B71E4();
}

uint64_t sub_10000D038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000E5B8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10000D088(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError, &unk_1004C76DC);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000D0F4(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError, &unk_1004C76DC);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000D160(void *a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError, &unk_1004C76DC);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000D214(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError, &unk_1004C76DC);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000D2A4(uint64_t a1)
{
  v2 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError, &unk_1004C65B0);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000D310(uint64_t a1)
{
  v2 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError, &unk_1004C65B0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000D37C(void *a1, uint64_t a2)
{
  v4 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError, &unk_1004C65B0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000D40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError, &unk_1004C65B0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000D498(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError, &unk_1004C7544);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000D504(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError, &unk_1004C7544);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000D570(void *a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError, &unk_1004C7544);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000D600(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError, &unk_1004C7544);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000D68C(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError, &unk_1004C73CC);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000D6F8(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError, &unk_1004C73CC);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000D764(void *a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError, &unk_1004C73CC);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000D7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError, &unk_1004C73CC);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000D870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004BDBA4();
  sub_1004BBCE4();
  return sub_1004BDBF4();
}

uint64_t sub_10000D8DC(uint64_t a1)
{
  sub_10000ED58(&qword_100600FD0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1004C7654);
  sub_10000ED58(&qword_100600FD8, type metadata accessor for OpenExternalURLOptionsKey, &unk_1004C6FA4);

  return sub_1004BD744();
}

uint64_t sub_10000D99C(uint64_t a1)
{
  sub_10000ED58(&qword_100601000, type metadata accessor for Name, &unk_1004C6B14);
  sub_10000ED58(&qword_100601008, type metadata accessor for Name, &unk_1004C6AB4);

  return sub_1004BD744();
}

uint64_t sub_10000DA58(uint64_t a1)
{
  sub_10000ED58(&qword_100600CA0, type metadata accessor for ICURLBagKey, &unk_1004C5F1C);
  sub_10000ED58(&qword_100600CA8, type metadata accessor for ICURLBagKey, &unk_1004C5EC4);

  return sub_1004BD744();
}

uint64_t sub_10000DB14(uint64_t a1)
{
  sub_10000ED58(&qword_100600C90, type metadata accessor for ICPrivacyIdentifier, &unk_1004C6360);
  sub_10000ED58(&qword_100600C98, type metadata accessor for ICPrivacyIdentifier, &unk_1004C6308);

  return sub_1004BD744();
}

uint64_t sub_10000DBD0(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600FA8, type metadata accessor for MPCPlayerEnqueueError, &unk_1004C6C8C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000DC3C(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600FA8, type metadata accessor for MPCPlayerEnqueueError, &unk_1004C6C8C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000DCA8(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError, &unk_1004C76DC);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000DD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError, &unk_1004C76DC);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000DD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError, &unk_1004C65B0);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000DE1C(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F60, type metadata accessor for MPCError, &unk_1004C7138);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000DE88(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F60, type metadata accessor for MPCError, &unk_1004C7138);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000DEF4(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError, &unk_1004C7544);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000DF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError, &unk_1004C7544);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000DFE4(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F10, type metadata accessor for MPCMusicBehaviorError, &unk_1004C734C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000E050(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F10, type metadata accessor for MPCMusicBehaviorError, &unk_1004C734C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000E0BC(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError, &unk_1004C73CC);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000E128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError, &unk_1004C73CC);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000E1AC(uint64_t a1)
{
  sub_10000ED58(&qword_100600FF0, type metadata accessor for AttributeName, &unk_1004C7698);
  sub_10000ED58(&qword_100600FF8, type metadata accessor for AttributeName, &unk_1004C6D38);

  return sub_1004BD744();
}

uint64_t sub_10000E268(uint64_t a1)
{
  sub_10000ED58(&qword_100600FE0, type metadata accessor for Key, &unk_1004C6EAC);
  sub_10000ED58(&qword_100600FE8, type metadata accessor for Key, &unk_1004C6E4C);

  return sub_1004BD744();
}

uint64_t sub_10000E324@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1004BBE24();

  *a2 = v3;
  return result;
}

uint64_t sub_10000E36C(uint64_t a1)
{
  sub_10000ED58(&qword_100600C80, type metadata accessor for MSVAutoBugCaptureDomain, &unk_1004C64F8);
  sub_10000ED58(&qword_100600C88, type metadata accessor for MSVAutoBugCaptureDomain, &unk_1004C6498);

  return sub_1004BD744();
}

uint64_t sub_10000E428()
{
  sub_1004BBE64();
  v0 = sub_1004BC0C4();

  return v0;
}

uint64_t sub_10000E464(uint64_t a1)
{
  sub_1004BBE64();
  sub_1004BBF84();
}

Swift::Int sub_10000E4B8()
{
  sub_1004BBE64();
  sub_1004BDBA4();
  sub_1004BBF84();
  v0 = sub_1004BDBF4();

  return v0;
}

uint64_t sub_10000E52C(void *a1, uint64_t *a2)
{
  v2 = sub_1004BBE64();
  v4 = v3;
  if (v2 == sub_1004BBE64() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1004BD9C4();
  }

  return v7 & 1;
}

uint64_t sub_10000E5B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10000E5F0(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100600D10, &qword_1004C66C0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003ABC(&qword_100600D18, &qword_1004C66C8);
    v7 = sub_1004BD6F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F778(v9, v5, &qword_100600D10, &qword_1004C66C0);
      result = sub_100034820(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1004B6D14();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000E7F4()
{
  result = qword_1006007F0;
  if (!qword_1006007F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006007F0);
  }

  return result;
}

__n128 _s11ProgressionVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000E8E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_10000E924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 sub_10000E974(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000E990(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10000E9E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlowModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlowModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_10000EC20(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000EC2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000EC4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10000ED58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000F624()
{
  result = qword_100600C68;
  if (!qword_100600C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100600C68);
  }

  return result;
}

uint64_t sub_10000F708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F778(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003ABC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000F7E0(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F854(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F874(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_10000F9A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000F9B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F9D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t ActionDeclaring.init(context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1004BD174();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v23 - v15;
  v24 = a1;
  sub_100004DE4(a1, v26);
  sub_100003ABC(&qword_100601140, &qword_1004C77A0);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
    (*(v12 + 16))(v14, v16, AssociatedTypeWitness);
    v19 = v25;
    (*(a3 + 24))(v14, a2, a3);
    sub_100004C6C(v24);
    (*(v12 + 8))(v16, AssociatedTypeWitness);
    v20 = 0;
    v21 = v19;
  }

  else
  {
    v20 = 1;
    v18(v11, 1, 1, AssociatedTypeWitness);
    sub_100004C6C(v24);
    (*(v9 + 8))(v11, v8);
    v21 = v25;
  }

  return (*(*(a2 - 8) + 56))(v21, v20, 1, a2);
}

__n128 AnyAction.init(identifier:contexts:resolver:logs:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, uint64_t a5@<X3>)
{
  sub_1000128E0(a2, a3, a4, a5, v10);
  v6 = v10[7];
  *(a1 + 96) = v10[6];
  *(a1 + 112) = v6;
  *(a1 + 128) = v10[8];
  v7 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v7;
  v8 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v8;
  result = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t AnyAction.canPerform.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  __break(1u);
  return result;
}

uint64_t sub_100010AD8(uint64_t a1)
{
  v1[2] = a1;
  sub_1004BC474();
  v1[3] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100010B70, v3, v2);
}

uint64_t sub_100010B70()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_100009178(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_100010C94;

  return v6(v2, v3);
}

uint64_t sub_100010C94()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_100013850;
  }

  else
  {
    v5 = sub_100013854;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100010DD0(uint64_t a1)
{
  v1[2] = a1;
  sub_1004BC474();
  v1[3] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100010E68, v3, v2);
}

uint64_t sub_100010E68()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_100009178(v1, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_100010F8C;

  return v6(v2, v3);
}

uint64_t sub_100010F8C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_10001112C;
  }

  else
  {
    v5 = sub_1000110C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000110C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001112C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *AnyAction.submenu.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t AnyAction.execute()()
{
  v1[21] = v0;
  sub_1004BC474();
  v1[22] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_10001125C, v3, v2);
}

void sub_10001125C()
{
  v31 = v0;
  v1 = *(v0[21] + 80);
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1();
  if (v3 == 1)
  {
    v4 = *(v0[21] + 96);
    if (v4)
    {
      v29 = (v4 + *v4);
      v5 = swift_task_alloc();
      v0[25] = v5;
      *v5 = v0;
      v5[1] = sub_100011604;

      v29();
      return;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v6 = v2;
  v7 = v3;

  v8 = sub_1000130F8(v6, v7);
  v9 = (v1)(v8);
  if (v10 == 1)
  {
    sub_10001310C();
    v11 = swift_allocError();
    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    sub_10001310C();
    v11 = swift_allocError();
    *v15 = v13;
    v15[1] = v14;
  }

  swift_willThrow();
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v16 = v0[21];
  v17 = sub_1004B80B4();
  sub_100007084(v17, static Logger.actions);
  sub_100013090(v16, (v0 + 2));
  swift_errorRetain();
  v18 = sub_1004B8094();
  v19 = sub_1004BC984();
  sub_1000130C8(v16);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[21];
    v21 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v21 = 136446466;
    v22 = ActionType.rawValue.getter(*v20);
    v24 = sub_100012018(v22, v23, v30);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v0[20] = v11;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v25 = sub_1004BBF04();
    v27 = sub_100012018(v25, v26, v30);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to perform action %{public}s with error %{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v28 = v0[1];

  v28();
}

uint64_t sub_100011604()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1000119F8;
  }

  else
  {
    v5 = sub_100011740;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_100011740()
{
  v1 = *(*(v0 + 168) + 112);
  if (v1)
  {
    v3 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 216) = v2;
    *v2 = v0;
    v2[1] = sub_100011838;

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100011838()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_100011C18;
  }

  else
  {
    v5 = sub_100011974;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100011974()
{
  v1 = *(*(v0 + 168) + 128);
  if (v1)
  {
    v1();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000119F8()
{
  v17 = v0;

  v1 = v0[26];
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_1004B80B4();
  sub_100007084(v3, static Logger.actions);
  sub_100013090(v2, (v0 + 2));
  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();
  sub_1000130C8(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_100012018(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v11 = sub_1004BBF04();
    v13 = sub_100012018(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_100011C18()
{
  v17 = v0;

  v1 = v0[28];
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_1004B80B4();
  sub_100007084(v3, static Logger.actions);
  sub_100013090(v2, (v0 + 2));
  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();
  sub_1000130C8(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_100012018(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v11 = sub_1004BBF04();
    v13 = sub_100012018(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t Logger.actions.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();

  return sub_100007084(v2, static Logger.actions);
}

uint64_t sub_100011E9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.actions);
  sub_100007084(v2, static Logger.actions);
  return sub_1004B80A4();
}

uint64_t static Logger.actions.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.actions);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

uint64_t sub_100011FBC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100012018(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100012018(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000120E4(v11, 0, 0, 1, a1, a2);
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
    sub_100004DE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004C6C(v11);
  return v7;
}

unint64_t sub_1000120E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000121F0(a5, a6);
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
    result = sub_1004BD4C4();
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

void *sub_1000121F0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001223C(a1, a2);
  sub_10001236C(&off_1005A2FD0);
  return v3;
}

void *sub_10001223C(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10028FD58(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1004BD4C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1004BC044();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10028FD58(v10, 0);
        result = sub_1004BD3F4();
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

uint64_t sub_10001236C(uint64_t result)
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

  result = sub_100012458(result, v11, 1, v3);
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

char *sub_100012458(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_100609380, &qword_1004D8B00);
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

__n128 sub_10001254C@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_100009178(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v5 = a1[4];
  *&v40 = DynamicType;
  *(&v40 + 1) = v5;
  sub_100003ABC(&qword_100601168, &qword_1004C7998);
  v6 = sub_1004BBF04();
  v28 = v7;
  v29 = v6;
  sub_10001342C(a1, &v40);
  sub_100003ABC(&qword_100601170, &qword_1004C79A0);
  sub_100003ABC(&qword_100601178, &qword_1004C79A8);
  if (swift_dynamicCast())
  {
    v8 = *(&v58 + 1);
    v9 = v59;
    sub_100009178(&v57, *(&v58 + 1));
    (*(v9 + 8))(v60, v8, v9);
    v10 = v60[1];
    v11 = v60[2];
    v26 = v60[3];
    v24 = v60[0];
    v25 = v60[4];
    v23 = v60[5];
    sub_100004C6C(&v57);
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_100007214(&v57, &qword_100601180, &qword_1004C79B0);
    v24 = 0;
    v25 = 0;
    v11 = 0;
    v26 = 0;
    v23 = 0;
    v10 = 1;
  }

  v12 = a1[3];
  v13 = a1[4];
  sub_100009178(a1, v12);
  v22 = (*(v13 + 24))(v12, v13);
  sub_10001342C(a1, &v40);
  v21 = swift_allocObject();
  sub_100013414(&v40, v21 + 16);
  sub_10001342C(a1, &v40);
  v20 = swift_allocObject();
  sub_100013414(&v40, v20 + 16);
  sub_10001342C(a1, &v40);
  v19 = swift_allocObject();
  sub_100013414(&v40, v19 + 16);
  sub_10001342C(a1, &v40);
  v14 = swift_allocObject();
  sub_100013414(&v40, v14 + 16);
  LOBYTE(v31) = a2;
  *(&v31 + 1) = v29;
  v32.n128_u64[0] = v28;
  v32.n128_u64[1] = v24;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  *&v34 = v26;
  *(&v34 + 1) = v25;
  *&v35 = v23;
  *(&v35 + 1) = v22;
  *&v36 = sub_100013570;
  *(&v36 + 1) = v21;
  *&v37 = &unk_1004C79C0;
  *(&v37 + 1) = v20;
  *&v38 = &unk_1004C79D0;
  *(&v38 + 1) = v19;
  *&v39 = sub_1000137E0;
  *(&v39 + 1) = v14;
  sub_100013090(&v31, &v40);
  sub_100004C6C(a1);
  LOBYTE(v40) = a2;
  *(&v40 + 1) = v29;
  v41 = v28;
  v42 = v24;
  v43 = v10;
  v44 = v11;
  v45 = v26;
  v46 = v25;
  v47 = v23;
  v48 = v22;
  v49 = sub_100013570;
  v50 = v21;
  v51 = &unk_1004C79C0;
  v52 = v20;
  v53 = &unk_1004C79D0;
  v54 = v19;
  v55 = sub_1000137E0;
  v56 = v14;
  sub_1000130C8(&v40);
  v15 = v38;
  *(a3 + 96) = v37;
  *(a3 + 112) = v15;
  *(a3 + 128) = v39;
  v16 = v34;
  *(a3 + 32) = v33;
  *(a3 + 48) = v16;
  v17 = v36;
  *(a3 + 64) = v35;
  *(a3 + 80) = v17;
  result = v32;
  *a3 = v31;
  *(a3 + 16) = result;
  return result;
}

void sub_1000128E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v64 = a2;
  v5 = a1;
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v43 = a4;
    if (((1 << a1) & 0x700000000180) != 0)
    {
      v44 = sub_1000134E4();
      v45 = &type metadata for Feature.MusicKit;
    }

    else
    {
      LOBYTE(v97) = 2;
      v44 = sub_100013490();
      v45 = &type metadata for Feature.MediaPlayer;
    }

    v53 = FeatureFlagsKey.isEnabled.getter(v45, v44);
    a4 = v43;
    if ((v53 & 1) == 0)
    {

      if (qword_1006006D8 != -1)
      {
LABEL_34:
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_11;
      }

      *&v97 = 0;
      *(&v97 + 1) = 0xE000000000000000;
      sub_1004BD404(32);
      v54 = ActionType.rawValue.getter(v5);
      v56 = v55;

      *&v97 = v54;
      *(&v97 + 1) = v56;
      v114._countAndFlagsBits = 0xD00000000000001ELL;
      v114._object = 0x80000001004FC400;
      sub_1004BC024(v114);
      v29 = *(&v97 + 1);
      v28 = v97;
      goto LABEL_10;
    }
  }

  v60 = a4;
  v8 = a3[3];
  v9 = a3[4];
  sub_100009178(a3, v8);
  LOBYTE(v97) = v5;
  v10 = *(v9 + 8);
  v11 = sub_100013340();
  v12 = v10(&v97, &type metadata for ActionType, v11, v8, v9);
  if (!v12)
  {

    *&v97 = 0;
    *(&v97 + 1) = 0xE000000000000000;
    sub_1004BD404(22);
    v25 = ActionType.rawValue.getter(v5);
    v27 = v26;

    *&v97 = v25;
    *(&v97 + 1) = v27;
    v107._countAndFlagsBits = 0xD000000000000014;
    v107._object = 0x80000001004FC3A0;
    sub_1004BC024(v107);
    v29 = *(&v97 + 1);
    v28 = v97;
LABEL_10:
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v28, v29, 80, 120, 0xE100000000000000);

    goto LABEL_11;
  }

  v58 = a5;
  v59 = v5;
  v57 = a3;
  v63 = *(v64 + 16);
  if (v63)
  {
    v14 = v12;
    v15 = v13;
    a5 = 0;
    a3 = (v64 + 32);
    v61 = v12 - 8;
    v62 = v13 + 8;
    while (1)
    {
      if (a5 >= *(v64 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      sub_100004DE4(a3, v83);
      v16 = *(v15 + 8);
      v17 = sub_1004BD174();
      v18 = *(v17 - 8);
      v19 = __chkstk_darwin();
      v21 = &v57 - v20;
      v16(v83, v14, v15, v19);
      v5 = *(v14 - 8);
      if ((*(v5 + 48))(v21, 1, v14) != 1)
      {
        break;
      }

      a5 = (a5 + 1);
      (*(v18 + 8))(v21, v17);
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
      sub_100007214(&v84, &qword_100601158, &qword_1004C7990);
      a3 += 4;
      if (v63 == a5)
      {
        goto LABEL_8;
      }
    }

    *(&v85 + 1) = v14;
    v86 = v15;
    v34 = sub_1000133B0(&v84);
    (*(v5 + 32))(v34, v21, v14);
    sub_100013414(&v84, v87);
    sub_10001342C(v87, &v97);
    v35 = v59;
    sub_10001254C(&v97, v59, &v88);
    v80 = v94;
    v81 = v95;
    v82 = v96;
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v79 = v93;
    v74 = v88;
    v75 = v89;
    if (!v93)
    {
      __break(1u);
      return;
    }

    v36 = (v93)();
    a3 = v57;
    if (v37 == 1)
    {
      *&v97 = ActionType.rawValue.getter(v35);
      *(&v97 + 1) = v39;
      v108._countAndFlagsBits = 10272;
      v108._object = 0xE200000000000000;
      sub_1004BC024(v108);
      v40 = *(&v88 + 1);
      v41 = v89;

      v109._countAndFlagsBits = v40;
      v109._object = v41;
      sub_1004BC024(v109);

      v110._countAndFlagsBits = 41;
      v110._object = 0xE100000000000000;
      sub_1004BC024(v110);
      Array<A>.appendStringComponents(_:lineLength:bullet:)(v97, *(&v97 + 1), 80, 9673954, 0xA300000000000000);

      sub_100004C6C(v87);
      v71 = v80;
      v72 = v81;
      v73 = v82;
      v67 = v76;
      v68 = v77;
      v69 = v78;
      v70 = v79;
      v65 = v74;
      v66 = v75;
      v42.location = &v65;
      CFRange.init(_:)(v42);
      v103 = v71;
      v104 = v72;
      v105 = v73;
      v99 = v67;
      v100 = v68;
      v101 = v69;
      v102 = v70;
      v97 = v65;
      v98 = v66;
      a5 = v58;
      goto LABEL_12;
    }

    v46 = v36;
    v47 = v37;
    if (v38)
    {
      sub_100004C6C(v87);
      sub_1000130F8(v46, v47);
      sub_1000130C8(&v88);
    }

    else
    {
      *&v97 = ActionType.rawValue.getter(v35);
      *(&v97 + 1) = v48;
      v111._countAndFlagsBits = 10272;
      v111._object = 0xE200000000000000;
      sub_1004BC024(v111);
      v49 = *(&v88 + 1);
      v50 = v89;

      v112._countAndFlagsBits = v49;
      v112._object = v50;
      sub_1004BC024(v112);

      v113._countAndFlagsBits = 539828265;
      v113._object = 0xE400000000000000;
      sub_1004BC024(v113);
      if (v47)
      {
        v51._countAndFlagsBits = v46;
      }

      else
      {
        v51._countAndFlagsBits = 0xD000000000000013;
      }

      if (v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = 0x80000001004FC3C0;
      }

      v51._object = v52;
      sub_1004BC024(v51);

      Array<A>.appendStringComponents(_:lineLength:bullet:)(v97, *(&v97 + 1), 80, 120, 0xE100000000000000);

      sub_1000130C8(&v88);
      sub_100004C6C(v87);
    }

    a5 = v58;
  }

  else
  {
LABEL_8:

    *&v97 = 0;
    *(&v97 + 1) = 0xE000000000000000;
    sub_1004BD404(24);
    v22 = ActionType.rawValue.getter(v59);
    v24 = v23;

    *&v97 = v22;
    *(&v97 + 1) = v24;
    v106._countAndFlagsBits = 0xD000000000000016;
    v106._object = 0x80000001004FC3E0;
    sub_1004BC024(v106);
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v97, *(&v97 + 1), 80, 120, 0xE100000000000000);

    a3 = v57;
    a5 = v58;
  }

LABEL_11:
  sub_100013394(&v97);
LABEL_12:
  sub_100004C6C(a3);
  v30 = v104;
  a5[6] = v103;
  a5[7] = v30;
  a5[8] = v105;
  v31 = v100;
  a5[2] = v99;
  a5[3] = v31;
  v32 = v102;
  a5[4] = v101;
  a5[5] = v32;
  v33 = v98;
  *a5 = v97;
  a5[1] = v33;
}

uint64_t sub_100013020(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100601148, &qword_1004C77A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000130F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10001310C()
{
  result = qword_100601150;
  if (!qword_100601150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601150);
  }

  return result;
}

uint64_t sub_100013160(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100013184(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001319C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000131C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100013210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100013284(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000132E0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100013340()
{
  result = qword_1006019D0;
  if (!qword_1006019D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006019D0);
  }

  return result;
}

double sub_100013394(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t *sub_1000133B0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100013414(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001342C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100013490()
{
  result = qword_100601160;
  if (!qword_100601160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601160);
  }

  return result;
}

unint64_t sub_1000134E4()
{
  result = qword_100601C30;
  if (!qword_100601C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601C30);
  }

  return result;
}

uint64_t sub_100013538()
{
  sub_100004C6C((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100013570()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100009178(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1000135C4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100010AD8(v0 + 16);
}

uint64_t sub_100013658()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000136EC;

  return sub_100010DD0(v0 + 16);
}

uint64_t sub_1000136EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000137E0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100009178(v0 + 2, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t ActionCondition.Result.failure.getter(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  sub_10001388C(a1, a2);
  return v2;
}

uint64_t sub_10001388C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t ActionCondition.init(_:file:line:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ActionCondition.init(_:_:redactLog:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t (*a6)()@<X5>, uint64_t (*a7)()@<X6>, uint64_t (*a8)()@<X7>, uint64_t (**a9)()@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *a9 = sub_100013CA0;
  a9[1] = result;
  a9[2] = a6;
  a9[3] = a7;
  a9[4] = a8;
  return result;
}

BOOL ActionCondition.isTrue.getter()
{
  v1 = (*v0)();
  v3 = v2 == 1;
  sub_1000130F8(v1, v2);
  return v3;
}

uint64_t static ActionConditionEvaluator.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_3:
      if (++v2 == v1)
      {
        return 0;
      }
    }

    v7 = 0;
    v8 = v4 + 56;
    while (v7 < *(v4 + 16))
    {
      v9 = *(v8 - 24);

      v11 = v9(v10);
      v13 = v12;

      if (v13 != 1)
      {

        return v11;
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {

        v3 = v14;
        v1 = v15;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t static ActionConditionEvaluator.buildExpression(_:)(__int128 *a1)
{
  sub_100003ABC(&qword_100601188, &qword_1004C79E0);
  v2 = swift_allocObject();
  v4 = *a1;
  v7 = a1[1];
  v3 = v7;
  *(v2 + 16) = xmmword_1004C50A0;
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 64) = *(a1 + 4);

  sub_100013D04(&v7, &v6);
  return v2;
}

BOOL _s9MusicCore15ActionConditionV6ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = sub_1004BD9C4();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

uint64_t sub_100013C60()
{

  return swift_deallocObject();
}

uint64_t sub_100013CA0()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 16))())
  {
    return 0;
  }

  return v1;
}

__n128 sub_100013D60(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100013D74(uint64_t *a1, int a2)
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

uint64_t sub_100013DBC(uint64_t result, int a2, int a3)
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

uint64_t sub_100013E14(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100013E38(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013E4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100013F08(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t Actions.GoToArtist.Context.menuItemSubtitle.getter()
{
  v1 = *v0;

  return v1;
}

void *ActionDisplayConfiguration.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ActionDisplayConfiguration.init(title:subtitle:image:attributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_100013FF0()
{
  result = qword_100601190;
  if (!qword_100601190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601190);
  }

  return result;
}

unint64_t sub_100014048()
{
  result = qword_100601198;
  if (!qword_100601198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601198);
  }

  return result;
}

unint64_t sub_1000140A0()
{
  result = qword_1006011A0;
  if (!qword_1006011A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006011A0);
  }

  return result;
}

unint64_t sub_1000140F8()
{
  result = qword_1006011A8;
  if (!qword_1006011A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006011A8);
  }

  return result;
}

uint64_t sub_10001414C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000106D8();

  *a2 = v3;
  return result;
}

uint64_t sub_10001418C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000141E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void ActionList.init(_:lookup:resolver:excluding:)(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v4 = a4;
  v37 = a3;
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v36 = a4;
    *&v38 = a2;
    v41 = _swiftEmptyArrayStorage;
    sub_100014FE0(0, v7, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = a1 + 32;
    do
    {
      sub_100004DE4(v9, v40);
      sub_100004DE4(v40, v39);
      sub_100003ABC(&qword_100601140, &qword_1004C77A0);
      v10 = sub_1004BBF04();
      v12 = String.components(wrappedToLineLength:bullet:)(80, 62, 0xE100000000000000, v10, v11);

      sub_100004C6C(v40);
      v41 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_100014FE0((v13 > 1), v14 + 1, 1);
        v8 = v41;
      }

      v8[2] = v14 + 1;
      v8[v14 + 4] = v12;
      v9 += 32;
      --v7;
    }

    while (v7);
    v5 = v38;
    v4 = v36;
  }

  v40[0] = v8;
  __chkstk_darwin();
  v35[2] = a1;
  v35[3] = v37;
  v35[4] = v4;
  v35[5] = v40;
  v36 = sub_100014730(sub_100015000, v35, v5);

  v35[7] = v40[0];
  v15 = Array<A>.asciiBoxed()(v40[0]);
  v17 = v15;
  v18 = *(v15 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v15 + 40);
    v21 = &off_1005FF000;
    *&v16 = 136446210;
    v38 = v16;
    while (v19 < *(v17 + 2))
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      v24 = v21[423];

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = sub_1004B80B4();
      sub_100007084(v25, static Logger.actions);

      v26 = sub_1004B8094();
      v27 = sub_1004BC9A4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v21;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v22;
        v32 = v17;
        v33 = v18;
        v34 = v30;
        v39[0] = v30;
        *v29 = v38;
        *(v29 + 4) = sub_100012018(v31, v23, v39);
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s", v29, 0xCu);
        sub_100004C6C(v34);
        v18 = v33;
        v17 = v32;

        v21 = v28;
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    sub_100004C6C(v37);
  }
}

uint64_t sub_1000145E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char **a6@<X8>)
{
  v10 = *a1;
  v19 = _swiftEmptyArrayStorage;
  sub_10001342C(a3, v18);
  v17[2] = &v19;
  v17[3] = a4;
  v17[4] = a2;
  v17[5] = v18;
  v11 = sub_10001486C(sub_100015F74, v17, v10);
  if (!*(v11 + 2))
  {

    v11 = 0;
  }

  sub_100004C6C(v18);
  v12 = v19;
  v13 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v13;
  if ((result & 1) == 0)
  {
    result = sub_100017A8C(0, v13[2] + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    result = sub_100017A8C((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v13[2] = v16 + 1;
  v13[v16 + 4] = v12;
  *a6 = v11;
  return result;
}

char *sub_100014730(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = *v6;

    a1(&v12, &v13);
    if (v3)
    {
      break;
    }

    v8 = v12;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100017948(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_100017948((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_10001486C(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v41[0] = v8;
    (a1)(&v32, v41, a2);
    if (v3)
    {
      break;
    }

    v31[6] = v38;
    v31[7] = v39;
    v31[8] = v40;
    v31[2] = v34;
    v31[3] = v35;
    v31[4] = v36;
    v31[5] = v37;
    v31[0] = v32;
    v31[1] = v33;
    if (sub_100015F94(v31) == 1)
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      sub_100007214(&v22, &qword_1006011F8, &qword_1004C7DA0);
    }

    else
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100017964(0, *(v6 + 2) + 1, 1, v6);
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v6 = sub_100017964((v9 > 1), v10 + 1, 1, v6);
      }

      v15 = v24;
      v16 = v25;
      v20 = v29;
      v21 = v30;
      v18 = v27;
      v19 = v28;
      v17 = v26;
      v13 = v22;
      v14 = v23;
      *(v6 + 2) = v10 + 1;
      v11 = &v6[144 * v10];
      *(v11 + 2) = v13;
      *(v11 + 5) = v16;
      *(v11 + 6) = v17;
      *(v11 + 3) = v14;
      *(v11 + 4) = v15;
      *(v11 + 9) = v20;
      *(v11 + 10) = v21;
      *(v11 + 7) = v18;
      *(v11 + 8) = v19;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_100014A7C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  sub_100003ABC(&qword_1006011E8, &qword_1004CF1D0);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = sub_1004B68B4();
  __chkstk_darwin();
  v31 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v29 = &v25 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = (a3 + 32);
  v15 = (v10 + 48);
  v28 = v10;
  v30 = (v10 + 32);
  v16 = _swiftEmptyArrayStorage;
  v26 = v8;
  v27 = a1;
  v25 = (v10 + 48);
  while (1)
  {
    v33 = *v14;
    (a1)(&v33, v11);
    if (v3)
    {
      break;
    }

    if ((*v15)(v7, 1, v8) == 1)
    {
      sub_100007214(v7, &qword_1006011E8, &qword_1004CF1D0);
    }

    else
    {
      v17 = v29;
      v18 = *v30;
      (*v30)(v29, v7, v8);
      v18(v31, v17, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1000186C4(0, v16[2] + 1, 1, v16);
      }

      v20 = v16[2];
      v19 = v16[3];
      v21 = v28;
      if (v20 >= v19 >> 1)
      {
        v23 = sub_1000186C4((v19 > 1), v20 + 1, 1, v16);
        v21 = v28;
        v16 = v23;
      }

      v16[2] = v20 + 1;
      v22 = v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v20;
      v8 = v26;
      v18(v22, v31, v26);
      a1 = v27;
      v15 = v25;
    }

    ++v14;
    if (!--v13)
    {
      return v16;
    }
  }

  return v16;
}

__n128 sub_100014D54@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  if ((1 << v6) & 0xF8FFFFD7FFE7FLL) != 0 || ((v19 = a3, ((1 << v6) & 0x700000000180) == 0) ? (LOBYTE(v27[0]) = 2, v20 = sub_100013490(), v21 = &type metadata for Feature.MediaPlayer) : (v20 = sub_1000134E4(), v21 = &type metadata for Feature.MusicKit), v22 = FeatureFlagsKey.isEnabled.getter(v21, v20), a3 = v19, (v22))
  {
    if (!sub_100191FD0(v6, a3))
    {
      sub_10001342C(a5, v26);

      sub_1000128E0(v6, a4, v26, a2, v27);
      goto LABEL_7;
    }

    sub_1004BD404(24);
    v11 = ActionType.rawValue.getter(v6);
    v13 = v12;

    *&v27[0] = v11;
    *(&v27[0] + 1) = v13;
    v14._object = 0x80000001004FC420;
    v14._countAndFlagsBits = 0xD000000000000016;
  }

  else
  {
    if (qword_1006006D8 != -1)
    {
      swift_once();
    }

    if (static DeviceCapabilities.isInternalInstall != 1)
    {
      goto LABEL_5;
    }

    sub_1004BD404(32);
    v23 = ActionType.rawValue.getter(v6);
    v25 = v24;

    *&v27[0] = v23;
    *(&v27[0] + 1) = v25;
    v14._countAndFlagsBits = 0xD00000000000001ELL;
    v14._object = 0x80000001004FC400;
  }

  sub_1004BC024(v14);
  Array<A>.appendStringComponents(_:lineLength:bullet:)(*&v27[0], *(&v27[0] + 1), 80, 120, 0xE100000000000000);

LABEL_5:
  sub_100013394(v27);
LABEL_7:
  v15 = v27[7];
  *(a6 + 96) = v27[6];
  *(a6 + 112) = v15;
  *(a6 + 128) = v27[8];
  v16 = v27[3];
  *(a6 + 32) = v27[2];
  *(a6 + 48) = v16;
  v17 = v27[5];
  *(a6 + 64) = v27[4];
  *(a6 + 80) = v17;
  result = v27[1];
  *a6 = v27[0];
  *(a6 + 16) = result;
  return result;
}

void *sub_100014FC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000151D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100014FE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000153C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015040(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000154F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015060(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001561C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015080(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000150A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000150C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015A4C(a1, a2, a3, *v3, &unk_100606020, &unk_1004C8190, &qword_100606050, &qword_1004D2CC0);
  *v3 = result;
  return result;
}

char *sub_100015100(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015960(a1, a2, a3, *v3, &qword_1006011D8, &qword_1004C7D90);
  *v3 = result;
  return result;
}

void *sub_100015130(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015A4C(a1, a2, a3, *v3, &qword_1006011D0, &qword_1004C7D88, &qword_100606FD0, &unk_1004D40D0);
  *v3 = result;
  return result;
}

char *sub_100015170(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015B94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015190(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015C98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000151B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000151D0(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003ABC(&qword_100600DE8, &unk_1004C81D0);
  v10 = *(sub_100003ABC(&qword_100600DE0, &unk_1004C66D0) - 8);
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
  v15 = *(sub_100003ABC(&qword_100600DE0, &unk_1004C66D0) - 8);
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

void *sub_1000153C0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003ABC(&qword_100601200, &qword_1004C7DA8);
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
    sub_100003ABC(&unk_100603590, &unk_1004C8150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000154F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_100601470, &unk_1004C81B0);
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

char *sub_10001561C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011C0, &unk_1004C8060);
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

char *sub_100015718(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_1006040A0, &unk_1004CF310);
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

char *sub_100015824(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
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

char *sub_100015960(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100003ABC(a5, a6);
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

void *sub_100015A4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100003ABC(a5, a6);
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
    sub_100003ABC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100015B94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011B8, &qword_1004C7D78);
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

char *sub_100015C98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011C8, &qword_1004C7D80);
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

void *sub_100015D9C(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003ABC(&qword_1006011B0, &qword_1004C7D70);
  v10 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
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
  v15 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
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

uint64_t sub_100015F94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ActionType.isHidden.getter(char a1)
{
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x700000000180) != 0)
  {
    v2 = sub_1000134E4();
    v3 = &type metadata for Feature.MusicKit;
  }

  else
  {
    v2 = sub_100013490();
    v3 = &type metadata for Feature.MediaPlayer;
  }

  return (FeatureFlagsKey.isEnabled.getter(v3, v2) ^ 1) & 1;
}

uint64_t sub_10001605C(char a1)
{
  result = 0x6C6576654C706F74;
  switch(a1)
  {
    case 1:
      result = 0x7463416B63697571;
      break;
    case 2:
      result = 7368564;
      break;
    case 3:
      result = 0x7972617262696CLL;
      break;
    case 4:
    case 11:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0x6B63616279616C70;
      break;
    case 6:
      result = 0x697461676976616ELL;
      break;
    case 7:
      result = 0x6574736174;
      break;
    case 8:
      result = 0x6E6974726F706572;
      break;
    case 9:
      result = 0x6F697463416E6970;
      break;
    case 10:
      result = 0x7463757274736564;
      break;
    case 12:
      result = 1867804519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MenuType.title.getter(char a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 == 9)
  {
    sub_1004BBDA4();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_1005FFD30 == -1)
    {
      goto LABEL_7;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  if (a1 != 12 && a1 != 11)
  {
    return 0;
  }

  sub_1004BBDA4();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1005FFD30 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v3 + 8))(v7, v2);
  return v9;
}

id MenuType.image.getter(char a1)
{
  if (a1 != 9 && a1 != 12 && a1 != 11)
  {
    return 0;
  }

  v1 = sub_1004BBE24();
  v2 = [objc_opt_self() systemImageNamed:v1];

  return v2;
}

uint64_t MenuType.style.getter(char a1)
{
  switch(a1)
  {
    case 11:
      goto LABEL_6;
    default:
      v1 = sub_1004BD9C4();

      if (v1)
      {
        goto LABEL_3;
      }

      v3 = MenuType.description.getter();
      v5 = v4;
      if (v3 == 1867804519 && v4 == 0xE400000000000000)
      {
        goto LABEL_6;
      }

      v7 = v3;
      v8 = sub_1004BD9C4();

      if (v8)
      {
LABEL_3:
        v2 = 1;
      }

      else if (v7 == 0x6F697463416E6970 && v5 == 0xE90000000000006ELL)
      {
LABEL_6:

        v2 = 1;
      }

      else
      {
        v2 = sub_1004BD9C4();
      }

      return v2 & 1;
  }
}

UIMenuElementSize __swiftcall MenuType.size(for:)(Swift::Int a1)
{
  switch(v1)
  {
    case 1:

      if (a1 <= 1)
      {
        return 2;
      }

      return 1;
    default:
      v3 = sub_1004BD9C4();

      if ((v3 & 1) != 0 && a1 > 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
  }
}

unint64_t sub_100016A64@<X0>(Swift::String *a1@<X0>, MusicCore::MenuType_optional *a2@<X8>)
{
  result = _s9MusicCore8MenuTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_100016A94@<X0>(uint64_t *a1@<X8>)
{
  result = MenuType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *ActionType.mutuallyExclusiveActions.getter(unsigned __int8 a1)
{
  if (a1 > 0x18u)
  {
    if (a1 > 0x2Fu)
    {
      switch(a1)
      {
        case '0':
          v1 = &off_1005A31F8;
          return sub_100019524(v1);
        case '1':
          v1 = &off_1005A31D0;
          return sub_100019524(v1);
        case '3':
          return &_swiftEmptySetSingleton;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x19u:
          v1 = &off_1005A3270;
          return sub_100019524(v1);
        case 0x24u:
          v1 = &off_1005A32E8;
          return sub_100019524(v1);
        case 0x25u:
          v1 = &off_1005A3310;
          return sub_100019524(v1);
      }
    }
  }

  else if (a1 > 7u)
  {
    switch(a1)
    {
      case 8u:
        v1 = &off_1005A31A8;
        return sub_100019524(v1);
      case 0x17u:
        v1 = &off_1005A3220;
        return sub_100019524(v1);
      case 0x18u:
        v1 = &off_1005A3248;
        return sub_100019524(v1);
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:
        v1 = &off_1005A3298;
        return sub_100019524(v1);
      case 3u:
        v1 = &off_1005A32C0;
        return sub_100019524(v1);
      case 7u:
        v1 = &off_1005A3180;
        return sub_100019524(v1);
    }
  }

  return 0;
}

uint64_t ActionType.rawValue.getter(char a1)
{
  result = 0x62694C6F54646461;
  switch(a1)
  {
    case 1:
      return 0x64616F6C6E776F64;
    case 2:
      return 0x657469726F766166;
    case 3:
      return 0x6F7661466F646E75;
    case 4:
      return 0x6572616873;
    case 5:
      return 2036427888;
    case 6:
      return 0x656C6666756873;
    case 7:
      return 7235952;
    case 8:
      return 0x6E69706E75;
    case 9:
      return 0x6C50657461657263;
    case 10:
      v3 = 1634038371;
      goto LABEL_34;
    case 11:
      return 0x616C506F54646461;
    case 12:
      return 0x7473696C79616C70;
    case 13:
      return 0x726F62616C6C6F63;
    case 14:
    case 41:
      return 0xD000000000000015;
    case 15:
      return 0xD000000000000011;
    case 16:
    case 29:
    case 47:
      return 0xD000000000000012;
    case 17:
      return 0xD000000000000011;
    case 18:
    case 46:
      return 0xD000000000000017;
    case 19:
      v4 = 0x656D616E6572;
      goto LABEL_42;
    case 20:
      v4 = 0x6F5465766F6DLL;
      goto LABEL_42;
    case 21:
      return 0x766F4D6575657571;
    case 22:
      return 0x7478654E79616C70;
    case 23:
      return 0x6575516F54646461;
    case 24:
      return 0x7473614C79616C70;
    case 25:
      return 0x6574664179616C70;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x7453657461657263;
    case 28:
      return 0x79616C506F546F67;
    case 30:
      return 0x75626C416F546F67;
    case 31:
      return 0x697472416F546F67;
    case 32:
      v5 = 2003789939;
      goto LABEL_48;
    case 33:
      return 0x6C6C754677656976;
    case 34:
      return 0x72794C6572616873;
    case 35:
      return 0x6C436E496E65706FLL;
    case 36:
      return 0x4C74736567677573;
    case 37:
      return 0x676775536F646E75;
    case 38:
      v5 = 1702125938;
LABEL_48:
      result = v5 | 0x676E6F5300000000;
      break;
    case 39:
      result = 0xD000000000000014;
      break;
    case 40:
    case 42:
    case 44:
      result = 0xD000000000000013;
      break;
    case 43:
      result = 0xD00000000000001BLL;
      break;
    case 45:
      result = 0xD000000000000016;
      break;
    case 48:
      result = 0x6F4465766F6D6572;
      break;
    case 49:
      result = 0xD000000000000011;
      break;
    case 50:
      v3 = 1701602660;
LABEL_34:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_42:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 51:
      result = 0x65766F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000172EC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1004BD9C4();
  }

  return v12 & 1;
}

unint64_t sub_100017380@<X0>(Swift::String *a1@<X0>, MusicCore::ActionType_optional *a2@<X8>)
{
  result = _s9MusicCore10ActionTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1000173B0@<X0>(uint64_t *a1@<X8>)
{
  result = ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100017404(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1004BDBA4();
  a3(v5);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100017488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1004BBF84();
}

Swift::Int sub_1000174F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1004BDBA4();
  a4(v6);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

char *sub_10001756C(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result + 32;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_100017AB0(result, v8, 1, v3, &qword_100601208, &qword_1004C7DB0, &type metadata for ActionLookup.Group);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static ActionLookupBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_100003ABC(&qword_100601208, &qword_1004C7DB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C50A0;
  *(v2 + 32) = a1;

  return v2;
}

void *static ActionLookupBuilder.buildOptional(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  return v1;
}

void *sub_100017758(void *result, int64_t a2, char a3, void *a4)
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

  sub_100003ABC(&qword_100600DE8, &unk_1004C81D0);
  v10 = *(sub_100003ABC(&qword_100600DE0, &unk_1004C66D0) - 8);
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
  v15 = *(sub_100003ABC(&qword_100600DE0, &unk_1004C66D0) - 8);
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

char *sub_100017964(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601378, &qword_1004C81E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100017AB0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    sub_100003ABC(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100017BBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601360, &unk_1004C81C0);
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

char *sub_100017CC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_1006040A0, &unk_1004CF310);
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

char *sub_100017DD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_100601470, &unk_1004C81B0);
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

char *sub_100017EFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601358, &qword_1004C9850);
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

char *sub_100018024(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601240, &unk_1004C8050);
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

char *sub_10001813C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011C0, &unk_1004C8060);
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

void *sub_100018288(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003ABC(&qword_100601318, &qword_1004D88E0);
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
    type metadata accessor for ICURLBagKey(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000183D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
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

void *sub_10001856C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003ABC(&qword_100601338, &unk_1004C8170);
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
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100018710(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003ABC(&qword_1006012F8, &qword_1004C8118);
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
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001888C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100003ABC(a5, a6);
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

char *sub_100018978(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011B8, &qword_1004C7D78);
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

char *sub_100018A7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601298, &qword_1004C80C0);
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

char *sub_100018BA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011C8, &qword_1004C7D80);
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

void *sub_100018CCC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100003ABC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003ABC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100018E28(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100003ABC(a5, a6);
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