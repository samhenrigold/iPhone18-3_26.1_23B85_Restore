void sub_10000180C(id a1)
{
  qword_10000C490 = os_log_create("com.apple.weather", "Diagnostics");

  _objc_release_x1();
}

unint64_t *DiagnosticFileProvider.files()()
{
  v0 = sub_100001904();
  v1 = sub_100001BA0();
  sub_100002C78(v1);
  return v0;
}

unint64_t *sub_100001904()
{
  v0 = sub_100004144();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  sub_1000041C4();
  sub_1000041B4();
  sub_1000041A4();

  sub_100004124();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = [objc_opt_self() defaultManager];
  sub_100004134();
  v9 = sub_100004364();

  v19 = 0;
  v10 = [v8 contentsOfDirectoryAtPath:v9 error:&v19];

  v11 = v19;
  if (v10)
  {
    v12 = sub_1000043B4();
    v13 = v11;

    __chkstk_darwin(v14);
    *&v18[-16] = v6;
    v15 = sub_1000029E8(sub_100002EA8, &v18[-32], v12);
  }

  else
  {
    v16 = v19;
    sub_1000040D4();

    swift_willThrow();

    v15 = &_swiftEmptyArrayStorage;
  }

  v7(v6, v0);
  return v15;
}

uint64_t sub_100001BA0()
{
  v65 = sub_100004144();
  v64 = *(v65 - 8);
  v0 = __chkstk_darwin(v65);
  v66 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v62 = &v60 - v3;
  __chkstk_darwin(v2);
  v63 = &v60 - v4;
  v5 = sub_100004324();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v60 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v60 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v60 - v16;
  __chkstk_darwin(v15);
  v19 = &v60 - v18;
  sub_100002D38(&qword_10000C448, &qword_100004AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100004A30;
  sub_100004204();
  sub_1000041F4();
  v21 = sub_100004314();
  v23 = v22;
  v24 = *(v6 + 8);
  v24(v19, v5);
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  sub_1000041E4();
  sub_1000041D4();
  v25 = sub_100004314();
  v27 = v26;
  v24(v17, v5);
  *(inited + 48) = v25;
  *(inited + 56) = v27;
  sub_100004264();
  sub_100004254();
  v28 = sub_100004314();
  v30 = v29;
  v24(v14, v5);
  *(inited + 64) = v28;
  *(inited + 72) = v30;
  sub_100004194();
  *(inited + 80) = sub_100004184();
  *(inited + 88) = v31;
  sub_100004224();
  sub_100004214();
  v32 = sub_100004314();
  v34 = v33;
  v24(v11, v5);
  *(inited + 96) = v32;
  *(inited + 104) = v34;
  sub_100004244();
  v35 = v61;
  sub_100004234();
  v36 = sub_100004314();
  v38 = v37;
  v24(v35, v5);
  *(inited + 112) = v36;
  *(inited + 120) = v38;
  sub_1000041C4();
  sub_1000041B4();
  v39 = v62;
  sub_1000041A4();

  v40 = v63;
  sub_100004124();
  v41 = *(v64 + 8);
  v42 = v65;
  v41(v39, v65);
  v43 = sub_100004134();
  v45 = v44;
  v41(v40, v42);
  *(inited + 128) = v43;
  *(inited + 136) = v45;
  sub_1000041B4();
  v46 = v66;
  sub_1000041A4();

  sub_100004124();
  v41(v46, v42);
  v47 = sub_100004134();
  v49 = v48;
  result = (v41)(v39, v42);
  v51 = 0;
  *(inited + 144) = v47;
  *(inited + 152) = v49;
  v52 = &_swiftEmptyArrayStorage;
LABEL_2:
  v53 = 16 * v51 + 40;
  while (1)
  {
    if (v51 == 8)
    {
      swift_setDeallocating();
      sub_100002C18();
      return v52;
    }

    if (v51 > 7)
    {
      break;
    }

    ++v51;
    v54 = v53 + 16;
    v55 = *(inited + v53);
    v53 += 16;
    if (v55)
    {
      v56 = *(inited + v54 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100002B10(0, *(v52 + 2) + 1, 1, v52);
        v52 = result;
      }

      v58 = *(v52 + 2);
      v57 = *(v52 + 3);
      if (v58 >= v57 >> 1)
      {
        result = sub_100002B10((v57 > 1), v58 + 1, 1, v52);
        v52 = result;
      }

      *(v52 + 2) = v58 + 1;
      v59 = &v52[16 * v58];
      *(v59 + 4) = v56;
      *(v59 + 5) = v55;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t DiagnosticFileProvider.exportDirectory()@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_100004174();
  sub_100002FF0();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004144();
  sub_100002FF0();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v64 = &v58 - v14;
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = sub_100001904();
  v18 = sub_100001BA0();
  v66 = v17;
  sub_100002C78(v18);
  v59 = v66;
  v19 = NSTemporaryDirectory();
  sub_100004374();

  sub_1000040E4();

  sub_100004164();
  sub_100004154();
  v20 = v6;
  v21 = v58;
  (*(v3 + 8))(v20, v1);
  sub_100004124();

  v24 = *(v9 + 8);
  v22 = v9 + 8;
  v23 = v24;
  v24(v16, v7);
  v63 = objc_opt_self();
  v25 = [v63 defaultManager];
  sub_100004114(v26);
  v28 = v27;
  v66 = 0;
  v29 = [v25 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:&v66];

  if (v29)
  {
    v62 = v23;
    v30 = v59[2];
    if (v30)
    {
      v31 = v59;
      v32 = v66;
      v33 = v31 + 5;
      v60 = xmmword_100004A40;
      do
      {

        sub_1000040F4();

        sub_100004104();
        sub_100004124();

        v34 = [v63 defaultManager];
        sub_100004114(v35);
        v37 = v36;
        sub_100004114(v38);
        v40 = v39;
        v66 = 0;
        v41 = [v34 copyItemAtURL:v37 toURL:v39 error:&v66];

        if (v41)
        {
          v42 = v66;
        }

        else
        {
          v43 = v66;
          v44 = sub_1000040D4();

          swift_willThrow();
          LODWORD(v61) = sub_1000043C4();
          sub_100002D38(&qword_10000C3F8, &unk_100004A50);
          v45 = swift_allocObject();
          *(v45 + 16) = v60;
          v66 = v44;
          swift_errorRetain();
          sub_100002D38(&qword_10000C400, qword_100004AC0);
          v46 = sub_100004384();
          v47 = v22;
          v48 = v7;
          v49 = v21;
          v51 = v50;
          *(v45 + 56) = &type metadata for String;
          *(v45 + 64) = sub_100002D80();
          *(v45 + 32) = v46;
          *(v45 + 40) = v51;
          sub_100002DD4();
          v52 = sub_1000043E4();
          sub_100004274("Failed to copy diagnostic file to temp directory with error: %@", 63, 2, &_mh_execute_header, v52, v61, v45);

          v21 = v49;
          v7 = v48;
          v22 = v47;

          v61 = 0;
        }

        v53 = v62;
        v62(v65, v7);
        v53(v64, v7);
        v33 += 2;
        --v30;
      }

      while (v30);
    }

    else
    {
      v57 = v66;
    }
  }

  else
  {
    v54 = v7;
    v55 = v66;

    sub_1000040D4();

    swift_willThrow();
    return (v23)(v21, v54);
  }
}

id DatabaseManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DatabaseManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id DatabaseManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000028EC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100004144();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004124();
  v7 = sub_100004134();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

unint64_t *sub_1000029E8(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v19 = &_swiftEmptyArrayStorage;
  sub_100002EC8(0, v5, 0);
  v6 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      sub_100002EC8((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    v6[2] = v13 + 1;
    v14 = &v6[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100002B10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D38(&qword_10000C440, &qword_100004A98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100002C18()
{
  sub_100002D38(&qword_10000C450, &unk_100004AA8);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100002C78(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100002E3C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100002D38(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002D80()
{
  result = qword_10000C408;
  if (!qword_10000C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C408);
  }

  return result;
}

unint64_t sub_100002DD4()
{
  result = qword_10000C410;
  if (!qword_10000C410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C410);
  }

  return result;
}

char *sub_100002E3C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_100002B10(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

char *sub_100002EC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100002EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100002EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D38(&qword_10000C440, &qword_100004A98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Void __swiftcall DatabaseManager.checkpoint()()
{
  v1 = v0;
  v2 = sub_100004324();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v28 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v29 = &v26 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = __chkstk_darwin(v8);
  v30 = &v26 - v12;
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  if (qword_10000C3F0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000042A4();
  sub_100003958(v15, qword_10000C498);
  v16 = sub_100004284();
  v17 = sub_1000043D4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v10;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Performing checkpoint operation on Weather databases", v18, 2u);
    v10 = v27;
  }

  sub_100004204();
  sub_1000041F4();
  sub_1000034FC(v14);
  v19 = v1;
  v20 = *(v3 + 8);
  v20(v14, v2);
  sub_100004264();
  v21 = v30;
  sub_100004254();
  v27 = v19;
  sub_1000034FC(v21);
  v20(v21, v2);
  sub_1000041E4();
  sub_1000041D4();
  sub_1000034FC(v10);
  v20(v10, v2);
  sub_100004224();
  v22 = v29;
  sub_100004214();
  sub_1000034FC(v22);
  v20(v29, v2);
  sub_100004194();
  v23 = sub_100004184();
  if (v24)
  {
    v25 = v28;
    *v28 = v23;
    *(v25 + 8) = v24;
    (*(v3 + 104))(v25, enum case for Database.Location.path(_:), v2);
    sub_1000034FC(v25);
    v20(v28, v2);
  }
}

uint64_t sub_1000034FC(uint64_t a1)
{
  v21 = a1;
  v1 = sub_1000042D4();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin(v1);
  v23 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100004344();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000042F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004304();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000042C4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100004324();
  __chkstk_darwin(v14);
  (*(v16 + 16))(&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  sub_1000042B4();
  (*(v10 + 104))(v12, enum case for Database.JournalingMode.wal(_:), v9);
  (*(v6 + 104))(v8, enum case for Database.RecoveryMode.throw(_:), v5);
  (*(v3 + 104))(v20, enum case for Database.CacheSize.default(_:), v22);
  (*(v24 + 104))(v23, enum case for Database.VacuumMode.none(_:), v25);
  sub_100004354();
  swift_allocObject();
  v27 = 0;
  v17 = v26;
  result = sub_100004334();
  if (!v17)
  {
    sub_1000042E4();
  }

  return result;
}

uint64_t sub_100003958(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100003990(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003A54(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100003F70(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100003F00(v11);
  return v7;
}

unint64_t sub_100003A54(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003B54(a5, a6);
    *a1 = v9;
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
    result = sub_100004404();
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

char *sub_100003B54(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003BA0(a1, a2);
  sub_100003CB8(&off_100008508);
  return v3;
}

char *sub_100003BA0(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100004394())
  {
    result = sub_100003D9C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1000043F4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_100004404();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100003CB8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100003E0C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100003D9C(uint64_t a1, uint64_t a2)
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

  sub_100002D38(&qword_10000C480, &qword_100004AF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100003E0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002D38(&qword_10000C480, &qword_100004AF0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100003F00(void *a1)
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

uint64_t sub_100003F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003FCC()
{
  v0 = sub_1000042A4();
  sub_10000404C(v0, qword_10000C498);
  sub_100003958(v0, qword_10000C498);
  return sub_100004294();
}

uint64_t *sub_10000404C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}