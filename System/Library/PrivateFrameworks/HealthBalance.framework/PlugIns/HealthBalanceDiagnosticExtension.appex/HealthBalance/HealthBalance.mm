Swift::Int sub_100001118(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock(a3 + 8);
  sub_100001588(&a3[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a3 + 8);
  return sub_100005324();
}

unint64_t sub_100001190(void *a1)
{
  v21 = a1;
  v23 = sub_1000051A4();
  v1 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_1000051C4();
  v4 = *(v22 - 8);
  v5 = __chkstk_darwin(v22);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = dispatch_semaphore_create(0);
  sub_100001490(0);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  v12 = (v11 + 32);
  *(v11 + 16) = 0xD00000000000001DLL;
  *(v11 + 24) = 0x8000000100005D50;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;

  v14 = v10;
  sub_1000046CC(v21, sub_100001580, v13);

  sub_1000051B4();
  *v3 = 30;
  v15 = v23;
  (*(v1 + 104))(v3, enum case for DispatchTimeInterval.seconds(_:), v23);
  sub_1000051D4();
  (*(v1 + 8))(v3, v15);
  v16 = *(v4 + 8);
  v17 = v22;
  v16(v7, v22);
  LOBYTE(v15) = sub_100005314();
  v16(v9, v17);
  if (v15)
  {

    return 0xD000000000000014;
  }

  else
  {
    os_unfair_lock_lock(v12);
    v18 = *(v11 + 16);

    os_unfair_lock_unlock(v12);
  }

  return v18;
}

void sub_100001490(uint64_t a1)
{
  if (!qword_10000C200)
  {
    type metadata accessor for os_unfair_lock_s();
    v1 = sub_1000053A4();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C200);
    }
  }
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_10000C208)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C208);
    }
  }
}

uint64_t sub_100001540()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001588(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_1000015E0(uint64_t a1, int a2)
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

uint64_t sub_100001600(uint64_t result, int a2, int a3)
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

char *sub_100001628(uint64_t a1)
{
  v32[1] = swift_getObjectType();
  v33 = sub_100005194();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000050C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DiagnosticLogSessionAttachment();
  v9 = swift_allocObject();
  *(v9 + 16) = &_swiftEmptyArrayStorage;
  sub_100003098(0x206E6F6973736553, 0xEF64657472617453);
  v37 = 0x656E6F5A656D6954;
  v38 = 0xEA0000000000203ALL;
  sub_1000050B4();
  sub_100003A28(&qword_10000C328, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  v40._countAndFlagsBits = sub_1000053D4();
  sub_100005274(v40);

  (*(v6 + 8))(v8, v5);
  sub_100003098(v37, v38);

  if (a1)
  {
    v35 = sub_100005234();
    v36 = v11;
    sub_100005374();
    if (*(a1 + 16) && (v12 = sub_100004048(&v37), (v13 & 1) != 0))
    {
      sub_1000041F4(*(a1 + 56) + 32 * v12, v39);
      sub_10000408C(&v37);
      if ((swift_dynamicCast() & 1) != 0 && v35 == 1)
      {
        sub_1000040E0(0, &qword_10000C330, sub_100004144, &type metadata accessor for _ContiguousArrayStorage);
        inited = swift_initStackObject();
        *(inited + 56) = &type metadata for NotificationSettingsAttachment;
        *(inited + 64) = &off_100008740;
        *(inited + 96) = &type metadata for NotificationStateAttachment;
        *(inited + 104) = &off_100008728;
        *(inited + 136) = &type metadata for SleepingSampleDaySummariesAttachment;
        *(inited + 144) = &off_100008710;
        *(inited + 16) = xmmword_1000058E0;
        *(inited + 176) = v34;
        *(inited + 184) = &off_100008680;
        *(inited + 152) = v9;
        v15 = objc_allocWithZone(HKHealthStore);

        v16 = [v15 init];
        v17 = sub_100001C44(inited, v16);

        swift_setDeallocating();
        sub_100004144();
        swift_arrayDestroy();
LABEL_11:
        v31 = sub_1000021A4(v17);

        return v31;
      }
    }

    else
    {
      sub_10000408C(&v37);
    }

    sub_100003098(0xD000000000000039, 0x8000000100005EB0);

    v18 = sub_100005204();
    v20 = v19;

    sub_100003098(v18, v20);

    sub_100005174();
    v21 = sub_100005184();
    v22 = sub_1000052D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136446210;
      v25 = sub_1000053E4();
      v27 = sub_100003A70(v25, v26, &v37);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Consent not provided; exiting without attaching any files", v23, 0xCu);
      sub_1000041A8(v24);
    }

    (*(v2 + 8))(v4, v33);
    sub_1000040E0(0, &qword_10000C330, sub_100004144, &type metadata accessor for _ContiguousArrayStorage);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_1000058F0;
    *(v28 + 56) = v34;
    *(v28 + 64) = &off_100008680;
    *(v28 + 32) = v9;
    v29 = objc_allocWithZone(HKHealthStore);

    v30 = [v29 init];
    v17 = sub_100001C44(v28, v30);

    swift_setDeallocating();
    sub_1000041A8((v28 + 32));
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *sub_100001C44(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v45 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_100005194();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004F84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004FD4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_100004FA4();
  v50[0] = 0xD000000000000019;
  v50[1] = 0x8000000100005EF0;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.isDirectory(_:), v4);
  sub_1000044C4();
  sub_100004FB4();
  v18 = v4;
  v19 = v8;
  (*(v5 + 8))(v7, v18);
  v20 = v9 + 8;
  v21 = *(v9 + 8);
  v21(v12, v19);
  v22 = [v15 defaultManager];
  sub_100004F94(v23);
  v25 = v24;
  v50[0] = 0;
  LODWORD(v15) = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v50];

  v27 = v50[0];
  if (v15)
  {
    __chkstk_darwin(v26);
    v28 = v44;
    *(&v44 - 4) = v14;
    *(&v44 - 3) = v28;
    *(&v44 - 2) = ObjectType;
    v29 = v27;
    v30 = sub_100002B24(sub_1000045DC, (&v44 - 6), v45);
  }

  else
  {
    v31 = v50[0];
    sub_100004F74();

    swift_willThrow();
    sub_100005174();
    swift_errorRetain();
    v32 = sub_100005184();
    v33 = sub_1000052D4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v19;
      v45 = v20;
      v37 = v36;
      v50[0] = v36;
      *v34 = 136446466;
      v38 = sub_1000053E4();
      v40 = v21;
      v41 = sub_100003A70(v38, v39, v50);

      *(v34 + 4) = v41;
      v21 = v40;
      *(v34 + 12) = 2114;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v42;
      *v35 = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "[%{public}s] Failed to create diagnostics directory %{public}@", v34, 0x16u);
      sub_100004518(v35);

      sub_1000041A8(v37);
      v19 = v44;
    }

    (*(v46 + 8))(v49, v47);

    v30 = &_swiftEmptyArrayStorage;
  }

  v21(v14, v19);
  return v30;
}

char *sub_1000021A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000053C4();
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
  result = sub_100004318(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100005394();
        sub_100004CAC(0, &qword_10000C348, DEAttachmentItem_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100004318((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100004338(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100004CAC(0, &qword_10000C348, DEAttachmentItem_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100004318((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100004338(v12, &v3[4 * v11 + 4]);
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

uint64_t sub_100002458@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v65 = a3;
  v60 = a4;
  v64 = a2;
  v69 = a5;
  v6 = sub_100005194();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v72 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005254();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004F84();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004FD4();
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = __chkstk_darwin(v15);
  v61 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  v21 = a1[3];
  v20 = a1[4];
  sub_1000045FC(a1, v21);
  v70 = (*(v20 + 8))(v21, v20);
  v71 = v22;
  (*(v12 + 104))(v14, enum case for URL.DirectoryHint.notDirectory(_:), v11);
  sub_1000044C4();
  sub_100004FC4();
  (*(v12 + 8))(v14, v11);

  v23 = a1[3];
  v24 = a1[4];
  sub_1000045FC(a1, v23);
  v25 = v66;
  v26 = (*(v24 + 16))(v65, v23, v24);
  if (v25)
  {
    v66 = 0;
    v28 = v67;
    v29 = v68;
    v30 = v19;
    v33 = v72;
    sub_100005174();
    v34 = v61;
    (*(v28 + 16))(v61, v19, v29);
    swift_errorRetain();
    v35 = sub_100005184();
    v36 = sub_1000052D4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v28;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v68 = v30;
      v40 = v39;
      v67 = swift_slowAlloc();
      v70 = v67;
      *v38 = 136446722;
      v41 = sub_1000053E4();
      v43 = sub_100003A70(v41, v42, &v70);
      LODWORD(v65) = v36;
      v44 = v43;

      *(v38 + 4) = v44;
      *(v38 + 12) = 2080;
      sub_100003A28(&qword_10000C370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v45 = sub_1000053D4();
      v47 = v46;
      v48 = *(v37 + 8);
      v48(v34);
      v49 = sub_100003A70(v45, v47, &v70);

      *(v38 + 14) = v49;
      *(v38 + 22) = 2114;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 24) = v50;
      *v40 = v50;
      _os_log_impl(&_mh_execute_header, v35, v65, "[%{public}s] Failed to write to %s: %{public}@", v38, 0x20u);
      sub_100004518(v40);

      swift_arrayDestroy();

      (*(v62 + 8))(v72, v63);
      result = (v48)(v68, v29);
    }

    else
    {

      v51 = *(v28 + 8);
      v51(v34, v29);
      (*(v62 + 8))(v33, v63);
      result = (v51)(v19, v29);
    }

    v56 = 0;
  }

  else
  {
    v32 = v58;
    v31 = v59;
    v70 = v26;
    v71 = v27;
    sub_100005244();
    sub_100005344();
    (*(v32 + 8))(v10, v31);

    v52 = objc_allocWithZone(DEAttachmentItem);
    sub_100004F94(v53);
    v55 = v54;
    v56 = [v52 initWithPathURL:v54];

    result = (*(v67 + 8))(v19, v68);
  }

  *v69 = v56;
  return result;
}

void *sub_100002B24(void *result, uint64_t a2, uint64_t a3)
{
  v4 = &_swiftEmptyArrayStorage;
  v13 = &_swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = (v6)(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      sub_100005294();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000052B4();
      }

      result = sub_1000052C4();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

id sub_100002CA8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002D20()
{
  sub_1000050E4();
  sub_1000050D4();
  sub_100004CAC(0, &qword_10000C378, HKTableFormatter_ptr);

  v0 = sub_1000052F4();
  v1 = [v0 formattedTable];
  v2 = sub_100005234();

  return v2;
}

uint64_t sub_100002E04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = sub_100005114();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005164();
  __chkstk_darwin(v12 - 8);
  if (a3)
  {
    ErrorValue = swift_getErrorValue();
    __chkstk_darwin(ErrorValue);
    (*(v15 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = sub_100005264();
  }

  else
  {
    sub_100004CAC(0, &qword_10000C378, HKTableFormatter_ptr);
    (*(v9 + 16))(v11, a4, v8);

    sub_100005154();
    v18 = sub_100005304();
    v19 = [v18 formattedTable];

    v20 = sub_100005234();
    v22 = v21;

    v16 = v20;
    v17 = v22;
  }

  a5(v16, v17);
}

uint64_t sub_100003098(uint64_t a1, void *a2)
{
  v3 = v2;
  v24 = a2;
  v5 = sub_100005044();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005064();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 91;
  v26 = 0xE100000000000000;
  sub_100005054();
  sub_1000032FC(v8);
  v13 = sub_100004FE4();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v27._countAndFlagsBits = v13;
  v27._object = v15;
  sub_100005274(v27);

  v28._countAndFlagsBits = 8285;
  v28._object = 0xE200000000000000;
  sub_100005274(v28);
  v29._countAndFlagsBits = a1;
  v29._object = v24;
  sub_100005274(v29);
  v16 = v25;
  v17 = v26;
  swift_beginAccess();
  v18 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_100003900(0, *(v18 + 2) + 1, 1, v18);
    *(v3 + 16) = v18;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = sub_100003900((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  v22 = &v18[16 * v21];
  *(v22 + 4) = v16;
  *(v22 + 5) = v17;
  *(v3 + 16) = v18;
  return swift_endAccess();
}

uint64_t sub_1000032FC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  sub_1000040E0(0, &qword_10000C320, &type metadata accessor for TimeZone, &type metadata accessor for Optional);
  __chkstk_darwin(v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_1000050C4();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100005034();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005014();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004FF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005004();
  __chkstk_darwin(v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v8);
  (*(v5 + 104))(v21, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v27);
  sub_1000050A4();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_100005024();
  }

  return result;
}

uint64_t sub_100003724()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10000379C()
{
  sub_100003098(0x206E6F6973736553, 0xED00006465646E45);
  swift_beginAccess();
  sub_100004474(0, &qword_10000C308, &type metadata for String, &type metadata accessor for Array);
  sub_100003884();

  v0 = sub_100005214();

  return v0;
}

unint64_t sub_100003884()
{
  result = qword_10000C310;
  if (!qword_10000C310)
  {
    sub_100004474(255, &qword_10000C308, &type metadata for String, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C310);
  }

  return result;
}

char *sub_100003900(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004474(0, &qword_10000C318, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100003A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100003A70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003B3C(v11, 0, 0, 1, a1, a2);
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
    sub_1000041F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000041A8(v11);
  return v7;
}

unint64_t sub_100003B3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003C48(a5, a6);
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
    result = sub_1000053B4();
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

char *sub_100003C48(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003C94(a1, a2);
  sub_100003DC4(&off_1000085B0);
  return v3;
}

char *sub_100003C94(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003EB0(v5, 0);
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

  result = sub_1000053B4();
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
        v10 = sub_100005284();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003EB0(v10, 0);
        result = sub_100005384();
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

uint64_t sub_100003DC4(uint64_t result)
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

  result = sub_100003F3C(result, v11, 1, v3);
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

void *sub_100003EB0(uint64_t a1, uint64_t a2)
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

  sub_100004474(0, &qword_10000C340, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003F3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004474(0, &qword_10000C340, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

unint64_t sub_100004048(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005354(*(v2 + 40));

  return sub_100004250(a1, v4);
}

void sub_1000040E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100004144()
{
  result = qword_10000C338;
  if (!qword_10000C338)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10000C338);
  }

  return result;
}

uint64_t sub_1000041A8(void *a1)
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

uint64_t sub_1000041F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100004250(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100004640(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100005364();
      sub_10000408C(v8);
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

char *sub_100004318(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100004348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_100004338(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_100004348(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004474(0, &qword_10000C350, &type metadata for Any + 8, &type metadata accessor for _ContiguousArrayStorage);
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

void sub_100004474(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1000044C4()
{
  result = qword_10000C358;
  if (!qword_10000C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C358);
  }

  return result;
}

uint64_t sub_100004518(uint64_t a1)
{
  sub_100004574(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100004574(uint64_t a1)
{
  if (!qword_10000C360)
  {
    sub_100004CAC(255, &qword_10000C368, NSObject_ptr);
    v1 = sub_100005334();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C360);
    }
  }
}

void *sub_1000045FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000046CC(void *a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v45 = a1;
  sub_100004CF4(0);
  __chkstk_darwin(v3 - 8);
  v42 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100005064();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100005114();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v40);
  v38 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v36 = v35 - v10;
  v11 = sub_100005074();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005094();
  v37 = *(v15 - 8);
  v16 = v37;
  v17 = __chkstk_darwin(v15);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[1] = v19;
  __chkstk_darwin(v17);
  v21 = v35 - v20;
  (*(v12 + 104))(v14, enum case for Calendar.Identifier.gregorian(_:), v11);
  sub_100005084();
  (*(v12 + 8))(v14, v11);
  sub_100005054();
  v22 = v36;
  sub_100005104();
  (*(v39 + 8))(v6, v41);
  sub_1000050F4();
  (*(v16 + 16))(v19, v21, v15);
  v23 = v38;
  v24 = v22;
  v25 = v40;
  (*(v7 + 16))(v38, v22, v40);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v7 + 32))(v28 + v26, v23, v25);
  v29 = (v28 + v27);
  v30 = v44;
  *v29 = v43;
  v29[1] = v30;
  sub_100004EE0(0);
  v32 = objc_allocWithZone(v31);

  v33 = sub_100005134();
  [v45 executeQuery:v33];

  (*(v7 + 8))(v24, v25);
  return (*(v37 + 8))(v21, v15);
}

id sub_100004B58(uint64_t a1)
{
  sub_100004CAC(0, &qword_10000C380, HKKeyValueDomain_ptr);
  v1 = sub_1000052E4();
  v8 = 0;
  v2 = [v1 allValuesWithError:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = v2;
    sub_1000051F4();
    v5 = v3;

    v3 = sub_100005204();
  }

  else
  {
    v6 = v8;
    sub_100004F74();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_100004CAC(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_100004CF4(uint64_t a1)
{
  if (!qword_10000C388)
  {
    sub_1000051E4();
    sub_100003A28(&qword_10000C390, &type metadata accessor for DayIndex, &protocol conformance descriptor for DayIndex);
    v1 = sub_100005224();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C388);
    }
  }
}

uint64_t sub_100004D88()
{
  v1 = sub_100005114();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100004E28(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(sub_100005114() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100002E04(a1, a2, a3 & 1, v3 + v8, v9);
}

void sub_100004EE0(uint64_t a1)
{
  if (!qword_10000C398)
  {
    sub_100005124();
    sub_100003A28(&qword_10000C3A0, &type metadata accessor for SleepingSampleDaySummary, &protocol conformance descriptor for SleepingSampleDaySummary);
    v1 = sub_100005144();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C398);
    }
  }
}