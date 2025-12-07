int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000074AC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  unsetenv("TMPDIR");
  unsetenv("HOME");
  unsetenv("CFFIXED_USER_HOME");
  if (_set_user_dir_suffix())
  {
    if (!confstr(65537, 0, 0))
    {
      sub_10000749C();
      v10 = sub_10000747C();
      v11 = sub_10000755C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "confstr(_CS_DARWIN_USER_TEMP_DIR) failed!", v12, 2u);
      }

      (*(v4 + 8))(v9, v3);
    }

    v13 = NSTemporaryDirectory();
    v14 = sub_1000074DC();
    v16 = v15;

    qword_1000106E8 = v14;
    unk_1000106F0 = v16;
    sub_10000749C();
    v17 = sub_10000747C();
    v18 = sub_10000754C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      v21 = qword_1000106E8;
      v22 = unk_1000106F0;

      v23 = sub_100001948(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Temp directory is %s", v19, 0xCu);
      sub_100001F00(v20);
    }

    (*(v4 + 8))(v7, v3);
    qword_1000106F8 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
    qword_100010700 = [objc_opt_self() serviceListener];
    [qword_100010700 setDelegate:qword_1000106F8];
    [qword_100010700 resume];
    return 0;
  }

  else
  {
    result = sub_10000759C();
    __break(1u);
  }

  return result;
}

id sub_1000017B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_100001800(void *a1, uint64_t *a2)
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

uint64_t sub_100001878(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000018EC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100001948(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100001948(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001A14(v11, 0, 0, 1, a1, a2);
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
    sub_100002028(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100001F00(v11);
  return v7;
}

unint64_t sub_100001A14(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001B20(a5, a6);
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
    result = sub_10000758C();
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

char *sub_100001B20(uint64_t a1, unint64_t a2)
{
  v3 = sub_100001B6C(a1, a2);
  sub_100001C9C(&off_10000C510);
  return v3;
}

char *sub_100001B6C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100001D88(v5, 0);
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

  result = sub_10000758C();
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
        v10 = sub_1000074FC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100001D88(v10, 0);
        result = sub_10000757C();
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

uint64_t sub_100001C9C(uint64_t result)
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

  result = sub_100001DFC(result, v11, 1, v3);
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

void *sub_100001D88(uint64_t a1, uint64_t a2)
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

  sub_100002084(&unk_100010550, qword_100007C60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100001DFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002084(&unk_100010550, qword_100007C60);
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

_BYTE **sub_100001EF0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100001F00(void *a1)
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

uint64_t sub_100001F4C(void *a1)
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP29BrowserEngineKit_Intermediary23BEKIntermediaryProtocol_];
  [a1 setExportedInterface:v2];

  type metadata accessor for BEKIntermediary();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  if (sub_1000070C0(a1))
  {
    v4 = 1;
LABEL_5:
    *(v3 + 16) = v4;
    goto LABEL_6;
  }

  if (sub_1000071AC(a1))
  {
    v4 = 2;
    goto LABEL_5;
  }

LABEL_6:
  [a1 setExportedObject:v3];
  [a1 resume];

  return 1;
}

uint64_t sub_100002028(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002084(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000020D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000074AC();
  sub_100006130(v3, qword_100010708);
  sub_1000060F8(v3, qword_100010708);
  return sub_10000748C();
}

Swift::Int sub_100002164()
{
  v1 = *v0;
  sub_1000075BC();
  sub_1000075CC(v1);
  return sub_1000075DC();
}

Swift::Int sub_1000021D8(uint64_t a1)
{
  v2 = *v1;
  sub_1000075BC();
  sub_1000075CC(v2);
  return sub_1000075DC();
}

unint64_t *sub_10000221C@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100002240(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = sub_10000735C();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = sub_10000746C();
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v6 = sub_10000739C();
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  sub_100002084(&qword_1000106C8, &qword_100007DF0);
  v3[40] = swift_task_alloc();
  v7 = sub_10000742C();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_1000024D0, 0, 0);
}

uint64_t sub_1000024D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = v3;
  v4 = v3;
  if (*(v3[30] + 16) == 1)
  {
    v5 = v3[47];
    v6 = v3[42];
    v70 = v3[41];
    v8 = v3[39];
    v7 = v3[40];
    v10 = v3[37];
    v9 = v3[38];
    v12 = v4[35];
    v11 = v4[36];
    v69 = v4[34];
    (*(v6 + 56))(v7, 1, 1);
    (*(v9 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v10);
    v13 = v71;
    sub_10000741C();
    sub_10000745C();
    sub_10000744C();
    (*(v12 + 8))(v11, v69);
    sub_1000073CC();

    sub_1000073CC();
    sub_1000073DC();
    v14 = *(v6 + 8);
    v71[51] = v14;
    v71[52] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v5, v70);
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v15 = sub_1000074AC();
    v71[53] = sub_1000060F8(v15, qword_100010708);

    v16 = sub_10000747C();
    v17 = sub_10000753C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v71[29];
      v19 = v14;
      v20 = v71[28];
      v21 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v21 = 136315394;
      v22 = v20;
      v14 = v19;
      v23 = v18;
      v13 = v71;
      *(v21 + 4) = sub_100001948(v22, v23, &v72);
      *(v21 + 12) = 2080;
      swift_beginAccess();
      sub_100006990(&qword_1000106B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v24 = sub_1000075AC();
      v26 = sub_100001948(v24, v25, &v72);

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "createPlaceholder for filename: %s at  %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    v27 = [objc_opt_self() defaultManager];
    sub_1000073BC(v28);
    v30 = v29;
    v13[27] = 0;
    v31 = [v27 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v13 + 27];

    v32 = v13[27];
    if (v31)
    {
      v33 = v13[48];
      v34 = v13[46];
      v36 = v13[41];
      v35 = v13[42];
      swift_beginAccess();
      v37 = v32;
      *(v13 + 472) = sub_10000740C();
      v38 = *(v35 + 16);
      v13[54] = v38;
      v13[55] = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38(v34, v33, v36);
      sub_10000743C();
      v14(v13[46], v13[41]);
      sub_10000734C();
      sub_10000733C();
      swift_beginAccess();
      sub_1000073AC();
      swift_endAccess();
      v55 = sub_10000747C();
      v56 = sub_10000753C();
      if (os_log_type_enabled(v55, v56))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v72 = v59;
        *v58 = 136315138;
        sub_100006990(&qword_1000106B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v60 = sub_1000075AC();
        v62 = sub_100001948(v60, v61, &v72);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v55, v56, "DOCDownloadImportManager.importPlaceholderAtURL %s", v58, 0xCu);
        sub_100001F00(v59);
      }

      v63 = v13[44];
      v64 = [objc_allocWithZone(DOCDownloadImportManager) init];
      v13[56] = v64;
      sub_1000073BC(v65);
      v67 = v66;
      v13[57] = v66;
      v13[2] = v13;
      v13[7] = v63;
      v13[3] = sub_10000312C;
      v68 = swift_continuation_init();
      v13[17] = sub_100002084(&qword_1000106A8, &qword_100007DD8);
      v13[10] = _NSConcreteStackBlock;
      v13[11] = 1107296256;
      v13[12] = sub_100003E68;
      v13[13] = &unk_10000C5F0;
      v13[14] = v68;
      [v64 importPlaceholderAtURLToDownloadsDirectory:v67 completion:v13 + 10];

      return _swift_continuation_await(v13 + 2);
    }

    v43 = v32;
    sub_10000738C();

    swift_willThrow();
    swift_errorRetain();
    v44 = sub_10000747C();
    v45 = sub_10000755C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to create placeholder dir: %@", v46, 0xCu);
      sub_100007298(v47, &qword_1000106B0, &qword_100007DE0);
    }

    v49 = v13[49];
    v50 = v13[50];
    v51 = v13[48];
    v52 = v13[41];

    v14(v49, v52);
    v14(v50, v52);
    v14(v51, v52);
  }

  else
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v39 = sub_1000074AC();
    sub_1000060F8(v39, qword_100010708);
    v40 = sub_10000747C();
    v41 = sub_10000755C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Client not entitled", v42, 2u);
    }
  }

  v53 = v71[1];

  return v53(0);
}

uint64_t sub_10000312C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 464) = v1;
  if (v1)
  {
    v2 = sub_100003638;
  }

  else
  {
    v2 = sub_100003268;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003268()
{
  v42 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 432);
  v4 = *(v0 + 360);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);
  (*(*(v0 + 336) + 32))(v4, *(v0 + 352), v6);

  v3(v5, v4, v6);
  v7 = sub_10000747C();
  v8 = sub_10000753C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 408);
  if (v9)
  {
    v40 = *(v0 + 344);
    v11 = *(v0 + 328);
    v12 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v12 = 136315394;
    sub_100006990(&qword_1000106B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = sub_1000075AC();
    v15 = sub_100001948(v13, v14, &v41);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = sub_1000075AC();
    v18 = v17;
    v10(v40, v11);
    v19 = sub_100001948(v16, v18, &v41);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "DOCDownloadImportManager.importPlaceholderAtURL for %s returned %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v20 = *(v0 + 344);
    v21 = *(v0 + 328);

    v10(v20, v21);
  }

  v22 = sub_10000740C();
  v23 = objc_allocWithZone(NSSecurityScopedURLWrapper);
  sub_1000073BC(v24);
  v26 = v25;
  v39 = [v23 initWithURL:v25];

  if (v22)
  {
    sub_1000073EC();
  }

  v27 = *(v0 + 472);
  v29 = *(v0 + 384);
  v28 = *(v0 + 392);
  v31 = *(v0 + 256);
  v30 = *(v0 + 264);
  v32 = *(v0 + 248);
  (*(v0 + 408))(*(v0 + 360), *(v0 + 328));
  (*(v31 + 8))(v30, v32);
  sub_1000037EC(v29, v28);
  if (v27 == 1)
  {
    sub_1000073EC();
  }

  v33 = *(v0 + 408);
  v34 = *(v0 + 400);
  v35 = *(v0 + 384);
  v36 = *(v0 + 328);
  v33(*(v0 + 392), v36);
  v33(v34, v36);
  v33(v35, v36);

  v37 = *(v0 + 8);

  return v37(v39);
}

uint64_t sub_100003638()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 448);
  v3 = *(v0 + 472);
  v4 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 248);
  swift_willThrow();
  (*(v7 + 8))(v6, v8);

  sub_1000037EC(v4, v5);
  if (v3 == 1)
  {
    sub_1000073EC();
  }

  v9 = *(v0 + 408);
  v10 = *(v0 + 400);
  v11 = *(v0 + 384);
  v12 = *(v0 + 328);
  v9(*(v0 + 392), v12);
  v9(v10, v12);
  v9(v11, v12);

  v13 = *(v0 + 8);

  return v13();
}

void sub_1000037EC(uint64_t a1, void *a2)
{
  v4 = sub_10000732C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000742C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  swift_beginAccess();
  (*(v9 + 16))(v11, a1, v8);
  sub_1000073BC(v14);
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  v43 = 0;
  LODWORD(v8) = [v13 removeItemAtURL:v16 error:&v43];

  if (v8)
  {
    v17 = v43;
    goto LABEL_10;
  }

  v18 = v43;
  sub_10000738C();

  swift_willThrow();
  swift_errorRetain();
  sub_10000731C();
  sub_100006990(&qword_1000106D0, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v19 = sub_10000736C();

  (*(v5 + 8))(v7, v4);
  if ((v19 & 1) == 0)
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1000074AC();
    sub_1000060F8(v20, qword_100010708);
    swift_errorRetain();
    v21 = sub_10000747C();
    v22 = sub_10000755C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = a2;
      v25 = v24;
      *v23 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "DOCDownloadImportManager.importPlaceholderAtURL failed to delete placeholder file after error: %@", v23, 0xCu);
      sub_100007298(v25, &qword_1000106B0, &qword_100007DE0);

      goto LABEL_10;
    }
  }

LABEL_10:
  v27 = [v12 defaultManager];
  sub_1000073BC(v28);
  v30 = v29;
  v43 = 0;
  v31 = [v27 removeItemAtURL:v29 error:&v43];

  v32 = v43;
  if (v31)
  {

    v33 = v32;
  }

  else
  {
    v42 = v43;
    v34 = v43;
    sub_10000738C();

    swift_willThrow();
    swift_errorRetain();
    sub_10000731C();
    sub_100006990(&qword_1000106D0, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
    LOBYTE(v34) = sub_10000736C();

    (*(v5 + 8))(v7, v4);
    if ((v34 & 1) == 0)
    {
      if (qword_1000104C0 != -1)
      {
        swift_once();
      }

      v35 = sub_1000074AC();
      sub_1000060F8(v35, qword_100010708);
      swift_errorRetain();
      v36 = sub_10000747C();
      v37 = sub_10000755C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        swift_errorRetain();
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v40;
        *v39 = v40;
        _os_log_impl(&_mh_execute_header, v36, v37, "DOCDownloadImportManager.importPlaceholderAtURL failed to delete placeholder dir after error: %@", v38, 0xCu);
        sub_100007298(v39, &qword_1000106B0, &qword_100007DE0);

        return;
      }
    }
  }
}

uint64_t sub_100003E68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10000742C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_10000694C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002084(&qword_1000106C0, &qword_100007DE8);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_1000073FC();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100004164(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_1000074DC();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100004238;

  return sub_100002240(v4, v6);
}

uint64_t sub_100004238(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = sub_10000737C();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](*(v5 + 24), a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1000043F8(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = sub_10000735C();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v5 = sub_10000742C();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_100004548, 0, 0);
}

uint64_t sub_100004548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = v3;
  if (*(*(v3 + 232) + 16) == 1)
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v5 = *(v3 + 216);
    v4 = *(v3 + 224);
    v6 = sub_1000074AC();
    *(v3 + 320) = sub_1000060F8(v6, qword_100010708);
    v7 = v5;
    v8 = v4;
    v9 = sub_10000747C();
    v10 = sub_10000753C();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v3 + 216);
      v11 = *(v3 + 224);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v12;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v11;
      *v14 = v12;
      v14[1] = v11;
      v15 = v12;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v9, v10, "replacePlaceholder placeholderFileWrapper: %@, downloadedFileWrapper %@", v13, 0x16u);
      sub_100002084(&qword_1000106B0, &qword_100007DE0);
      swift_arrayDestroy();
    }

    v18 = *(v3 + 304);
    v17 = *(v3 + 312);
    v19 = *(v3 + 264);
    v20 = *(v3 + 272);
    v21 = *(v3 + 216);
    v22 = *(v3 + 224);

    v23 = [v21 url];
    sub_1000073FC();

    *(v3 + 376) = sub_10000740C();
    (*(v20 + 16))(v18, v17, v19);
    v24 = v22;
    v25 = sub_10000747C();
    v26 = sub_10000753C();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v3 + 304);
    if (v27)
    {
      log = v25;
      v30 = *(v3 + 264);
      v29 = *(v3 + 272);
      v64 = *(v3 + 224);
      v65 = *(v3 + 296);
      v31 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v31 = 136315394;
      sub_100006990(&qword_1000106B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v32 = sub_1000075AC();
      v34 = v33;
      v35 = *(v29 + 8);
      v36 = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v35(v28, v30);
      v37 = sub_100001948(v32, v34, &v68);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      v38 = [v64 url];
      sub_1000073FC();

      v39 = sub_1000075AC();
      v41 = v40;
      v35(v65, v30);
      v42 = sub_100001948(v39, v41, &v68);

      *(v31 + 14) = v42;
      _os_log_impl(&_mh_execute_header, log, v26, "DOCDownloadImportManager.replacePlaceholder %s with %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v49 = *(v3 + 264);
      v50 = *(v3 + 272);

      v35 = *(v50 + 8);
      v36 = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v35(v28, v49);
    }

    *(v3 + 328) = v35;
    v51 = v35;
    v52 = *(v3 + 296);
    v66 = *(v3 + 280);
    v53 = *(v3 + 264);
    v54 = *(v3 + 224);
    v55 = [objc_allocWithZone(DOCDownloadImportManager) init];
    *(v3 + 336) = v55;
    sub_1000073BC(v56);
    v58 = v57;
    *(v3 + 344) = v57;
    v59 = [v54 url];
    sub_1000073FC();

    sub_1000073BC(v60);
    v62 = v61;
    *(v3 + 352) = v61;
    *(v3 + 360) = v36;
    v51(v52, v53);
    *(v3 + 16) = v3;
    *(v3 + 56) = v66;
    *(v3 + 24) = sub_100004C10;
    v63 = swift_continuation_init();
    *(v3 + 136) = sub_100002084(&qword_1000106A8, &qword_100007DD8);
    *(v3 + 80) = _NSConcreteStackBlock;
    *(v3 + 88) = 1107296256;
    *(v3 + 96) = sub_100003E68;
    *(v3 + 104) = &unk_10000C5C8;
    *(v3 + 112) = v63;
    [v55 replacePlaceholder:v58 withFinalFileURL:v62 completionHandler:?];

    return _swift_continuation_await(v3 + 16);
  }

  else
  {
    if (qword_1000104C0 != -1)
    {
      swift_once();
    }

    v43 = sub_1000074AC();
    sub_1000060F8(v43, qword_100010708);
    v44 = sub_10000747C();
    v45 = sub_10000755C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Client not entitled", v46, 2u);
    }

    v47 = *(v3 + 8);

    return v47(0);
  }
}

uint64_t sub_100004C10()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_100005190;
  }

  else
  {
    v2 = sub_100004D20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004D20()
{
  v24 = v0;
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);
  (*(*(v0 + 272) + 32))(*(v0 + 288), *(v0 + 280), *(v0 + 264));

  v4 = sub_10000747C();
  v5 = sub_10000753C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    swift_beginAccess();
    sub_100006990(&qword_1000106B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v8 = sub_1000075AC();
    v10 = sub_100001948(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DOCDownloadImportManager.replacePlaceholder returned %s", v6, 0xCu);
    sub_100001F00(v7);
  }

  swift_beginAccess();
  v11 = sub_10000740C();
  sub_10000734C();
  sub_10000733C();
  swift_beginAccess();
  sub_1000073AC();
  v12 = *(v0 + 256);
  v13 = *(v0 + 240);
  v14 = (*(v0 + 248) + 8);
  swift_endAccess();
  (*v14)(v12, v13);
  v15 = objc_allocWithZone(NSSecurityScopedURLWrapper);
  sub_1000073BC(v16);
  v18 = v17;
  v19 = [v15 initWithURL:v17];

  if (v11)
  {
    sub_1000073EC();
  }

  v20 = *(v0 + 376);
  (*(v0 + 328))(*(v0 + 288), *(v0 + 264));
  if (v20 == 1)
  {
    sub_1000073EC();
  }

  (*(v0 + 328))(*(v0 + 312), *(v0 + 264));

  v21 = *(v0 + 8);

  return v21(v19);
}

uint64_t sub_100005190()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 376);
  swift_willThrow();

  if (v4 == 1)
  {
    sub_1000073EC();
  }

  (*(v0 + 328))(*(v0 + 312), *(v0 + 264));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100005418(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1000054F0;

  return sub_1000043F8(v7, v8);
}

uint64_t sub_1000054F0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 40);
  if (v3)
  {
    v10 = sub_10000737C();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 40), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000056CC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_10000575C, 0, 0);
}

uint64_t sub_10000575C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000104C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000074AC();
  sub_1000060F8(v4, qword_100010708);
  v5 = sub_10000747C();
  v6 = sub_10000753C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "isEligible", v7, 2u);
  }

  v8 = v3[3];

  if (v8 != 1)
  {
    if (v8)
    {
      v17 = objc_allocWithZone(NSError);
      v18 = sub_1000074CC();
      [v17 initWithDomain:v18 code:1 userInfo:0];
    }

    else
    {
      if (*(v3[4] + 16) == 2)
      {
        goto LABEL_8;
      }

      v25 = objc_allocWithZone(NSError);
      v18 = sub_1000074CC();
      [v25 initWithDomain:v18 code:2 userInfo:0];
    }

LABEL_21:
    swift_willThrow();
    v15 = v3[1];
    v16 = 0;
    goto LABEL_22;
  }

LABEL_8:
  v3[2] = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer != sub_1000074BC())
  {
    v19 = sub_10000747C();
    v20 = sub_10000755C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to determine eligibility for alternative Browser engines", v21, 2u);
    }

    v22 = domain_answer;
    v23 = objc_allocWithZone(NSError);
    v24 = sub_1000074CC();
    [v23 initWithDomain:v24 code:v22 userInfo:0];

    goto LABEL_21;
  }

  v10 = v3[2];
  v11 = sub_10000747C();
  v12 = sub_10000753C();
  if (os_log_type_enabled(v11, v12))
  {
    if (v10 == 4)
    {
      v13 = "Determined eligible for alternative Browser engines";
    }

    else
    {
      v13 = "Determined not eligible for alternative Browser engines";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, v13, v14, 2u);
  }

  v15 = v3[1];
  v16 = v10 == 4;
LABEL_22:

  return v15(v16);
}

uint64_t sub_100005CA8(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_100005D64;

  return sub_1000056CC(a1);
}

uint64_t sub_100005D64(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_10000737C();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t getEnumTagSinglePayload for BEKIntermediary.ClientType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BEKIntermediary.ClientType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000060A4()
{
  result = qword_1000106A0;
  if (!qword_1000106A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000106A0);
  }

  return result;
}

uint64_t sub_1000060F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100006130(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100006194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100007318;

  return v6();
}

uint64_t sub_10000627C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100006364;

  return v7();
}

uint64_t sub_100006364()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002084(&qword_1000106D8, &qword_100007DF8);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100006C5C(a3, v23 - v10);
  v12 = sub_10000752C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100007298(v11, &qword_1000106D8, &qword_100007DF8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10000751C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_10000750C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000074EC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100007298(a3, &qword_1000106D8, &qword_100007DF8);

    return v21;
  }

LABEL_8:
  sub_100007298(a3, &qword_1000106D8, &qword_100007DF8);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100006744(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000683C;

  return v6(a1);
}

uint64_t sub_10000683C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_10000694C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100006990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000069D8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006A18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100006364;

  return sub_100005CA8(v2, v3, v4);
}

uint64_t sub_100006AD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007318;

  return sub_100006194(v2, v3, v4);
}

uint64_t sub_100006B90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007318;

  return sub_10000627C(a1, v4, v5, v6);
}

uint64_t sub_100006C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002084(&qword_1000106D8, &qword_100007DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006CCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006D04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007318;

  return sub_100006744(a1, v4);
}

uint64_t sub_100006DBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006364;

  return sub_100006744(a1, v4);
}

uint64_t sub_100006E74()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006EC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100007318;

  return sub_100005418(v2, v3, v5, v4);
}

uint64_t sub_100006F84()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006FCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007318;

  return sub_100004164(v2, v3, v4);
}

uint64_t sub_100007080()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000070C0(void *a1)
{
  v2 = sub_1000074CC();
  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    sub_10000756C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v6[0] = v7;
  v6[1] = v8;
  if (*(&v8 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v5;
    }
  }

  else
  {
    sub_100007298(v6, &qword_1000106E0, qword_100007E88);
    return 0;
  }

  return result;
}

uint64_t sub_1000071AC(void *a1)
{
  v2 = sub_1000074CC();
  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    sub_10000756C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v6[0] = v7;
  v6[1] = v8;
  if (*(&v8 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v5;
    }
  }

  else
  {
    sub_100007298(v6, &qword_1000106E0, qword_100007E88);
    return 0;
  }

  return result;
}

uint64_t sub_100007298(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002084(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}