void sub_1000015C0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void variable initialization expression of STDiagnosticCollector.baseDirectory()
{
  v0 = [objc_opt_self() diagnosticsDirectory];
  sub_100002FE4();
}

id STDiagnosticCollector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STDiagnosticCollector.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100003074();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003004();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC29ScreenTimeDiagnosticExtension21STDiagnosticCollector_baseDirectory;
  v9 = [objc_opt_self() diagnosticsDirectory];
  sub_100002FE4();

  (*(v5 + 32))(&v1[v8], v7, v4);
  v36 = OBJC_IVAR____TtC29ScreenTimeDiagnosticExtension21STDiagnosticCollector_logger;
  sub_100003064();
  v10 = [objc_opt_self() defaultManager];
  v11 = *(v5 + 16);
  v40 = v8;
  v11(v7, &v1[v8], v4);
  sub_100002FF4(1);
  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = sub_100003084();

  v14 = [v10 fileExistsAtPath:v13];

  if (v14)
  {

    v15 = v1;
  }

  else
  {
    v11(v7, &v40[v1], v4);
    sub_100002FC4(v16);
    v18 = v17;
    v12(v7, v4);
    v44 = 0;
    v19 = [v10 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v44];

    v15 = v1;
    if (v19)
    {
      v20 = v44;
    }

    else
    {
      v21 = v44;
      v22 = sub_100002FB4();

      swift_willThrow();
      v24 = v37;
      v23 = v38;
      v25 = &v1[v36];
      v26 = v39;
      (*(v38 + 16))(v37, v25, v39);
      swift_errorRetain();
      v27 = sub_100003054();
      v28 = sub_1000030B4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v40 = v15;
        v30 = v29;
        v44 = swift_slowAlloc();
        v31 = v44;
        *v30 = 136446210;
        v42 = v22;
        swift_errorRetain();
        sub_1000025DC(&qword_1000082D8, &unk_1000035D0);
        v32 = sub_100003094();
        v34 = sub_100002034(v32, v33, &v44);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create diagnostics directory: %{public}s", v30, 0xCu);
        sub_100002624(v31);

        v15 = v40;

        (*(v23 + 8))(v24, v39);
      }

      else
      {

        (*(v23 + 8))(v24, v26);
      }
    }
  }

  v43.receiver = v15;
  v43.super_class = ObjectType;
  return objc_msgSendSuper2(&v43, "init");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> STDiagnosticCollector.collectScreenTimeDatabase()()
{
  v0 = sub_100003004();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  sub_100002FD4();
  sub_100002FC4(v5);
  v7 = v6;
  v20 = 0;
  v8 = [v4 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v20];

  v9 = v20;
  if (v8 && (v10 = objc_allocWithZone(STManagementState), v11 = v9, v12 = [v10 init], sub_100002FC4(v13), v15 = v14, v20 = 0, v16 = objc_msgSend(v12, "exportDatabaseToURL:error:", v14, &v20), v12, v15, v9 = v20, (v16 & 1) != 0))
  {
    v17 = *(v1 + 8);
    v18 = v20;
    v17(v3, v0);
  }

  else
  {
    v19 = v9;
    sub_100002FB4();

    swift_willThrow();
    (*(v1 + 8))(v3, v0);
  }
}

id STDiagnosticCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100002034(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002100(v11, 0, 0, 1, a1, a2);
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
    sub_100002E00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002624(v11);
  return v7;
}

unint64_t sub_100002100(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000220C(a5, a6);
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
    result = sub_1000030D4();
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

char *sub_10000220C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002258(a1, a2);
  sub_100002388(&off_100004318);
  return v3;
}

char *sub_100002258(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002474(v5, 0);
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

  result = sub_1000030D4();
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
        v10 = sub_1000030A4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002474(v10, 0);
        result = sub_1000030C4();
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

uint64_t sub_100002388(uint64_t result)
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

  result = sub_1000024E8(result, v11, 1, v3);
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

void *sub_100002474(uint64_t a1, uint64_t a2)
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

  sub_1000025DC(&qword_100008308, qword_100003618);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000024E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025DC(&qword_100008308, qword_100003618);
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

uint64_t sub_1000025DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002624(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100002670()
{
  v1 = sub_100003034();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003004();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v34 - v11;
  __chkstk_darwin(v10);
  v14 = v34 - v13;
  sub_100003024();
  sub_100003014();
  (*(v2 + 8))(v4, v1);
  v15 = [objc_opt_self() diagnosticsDirectory];
  sub_100002FE4();

  sub_100002FD4();
  v16 = *(v6 + 8);
  v16(v9, v5);
  v17 = [objc_opt_self() defaultManager];
  sub_100002FF4(1);
  v18 = sub_100003084();

  LODWORD(v15) = [v17 fileExistsAtPath:v18];

  if (v15)
  {
    sub_100002FC4(v19);
    v21 = v20;
    v35 = 0;
    v22 = [v17 removeItemAtURL:v20 error:&v35];

    v23 = v35;
    if (!v22)
    {
      goto LABEL_6;
    }

    v24 = v35;
  }

  v34[1] = v0;
  sub_100002FC4(v19);
  v26 = v25;
  sub_100002FC4(v27);
  v29 = v28;
  v35 = 0;
  v30 = [v17 copyItemAtURL:v26 toURL:v28 error:&v35];

  v23 = v35;
  if (v30)
  {
    v31 = v35;

    v16(v12, v5);
    return (v16)(v14, v5);
  }

LABEL_6:
  v33 = v23;
  sub_100002FB4();

  swift_willThrow();
  v16(v12, v5);
  return (v16)(v14, v5);
}

void sub_100002A2C()
{
  v0 = sub_100003004();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = [objc_opt_self() diagnosticsDirectory];
  sub_100002FE4();

  sub_100002FD4();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v9 = [objc_opt_self() defaultManager];
  sub_100002FF4(1);
  v10 = sub_100003084();

  LODWORD(v4) = [v9 fileExistsAtPath:v10];

  if (v4)
  {
    sub_100002FC4(v11);
    v13 = v12;
    v22 = 0;
    v14 = [v9 removeItemAtURL:v12 error:&v22];

    v15 = v22;
    if (!v14)
    {
      goto LABEL_6;
    }

    v16 = v22;
  }

  sub_100002FC4(v11);
  v18 = v17;
  v22 = 0;
  v19 = [v9 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v22];

  v15 = v22;
  if (v19)
  {
    v20 = v22;
    sub_100003044();
    v8(v6, v0);

    return;
  }

LABEL_6:
  v21 = v15;
  sub_100002FB4();

  swift_willThrow();
  v8(v6, v0);
}

uint64_t type metadata accessor for STDiagnosticCollector(uint64_t a1)
{
  result = qword_100008320;
  if (!qword_100008320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002D34(uint64_t a1)
{
  result = sub_100003004();
  if (v2 <= 0x3F)
  {
    result = sub_100003074();
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

uint64_t sub_100002E00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100002E60(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_1000015C0(&_mh_execute_header, a2, a3, "Failed to collect ScreenTime database: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100002ECC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_1000015C0(&_mh_execute_header, a2, a3, "Failed to collect DeviceActivity database: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100002F38(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  sub_1000015C0(&_mh_execute_header, a2, a3, "Failed to collect Biome streams: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}