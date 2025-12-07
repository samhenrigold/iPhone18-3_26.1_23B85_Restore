id sub_100001368(uint64_t a1)
{
  if (qword_100010C30 != -1)
  {
    sub_1000073E8();
  }

  v2 = qword_100010C38;

  return v2;
}

void sub_100001BD0(id a1, const char *a2)
{
  v3 = sub_100001368(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100007584(a2);
  }
}

void sub_100001C1C(uint64_t a1, double a2)
{
  v4 = sub_100001368(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Progress: %.3f", &v6, 0xCu);
  }

  v5 = [[DECollectionProgress alloc] initWithPercentComplete:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_100001DAC(id a1)
{
  qword_100010C38 = os_log_create("com.apple.research", "diagnosticextension");

  _objc_release_x1();
}

void sub_100001DF0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

char *sub_100001E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v64 = a6;
  v65 = a7;
  v71 = a1;
  ObjectType = swift_getObjectType();
  v69 = sub_100007618();
  v66 = *(v69 - 8);
  __chkstk_darwin(v69);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007738();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v56 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v55 - v21;
  v23 = v9;
  v62 = v9;
  v24 = &v9[OBJC_IVAR___HRLDLogArchiveProcessor_deviceName];
  *v24 = a2;
  *(v24 + 1) = a3;
  v60 = v24;
  v25 = *(v18 + 16);
  v61 = OBJC_IVAR___HRLDLogArchiveProcessor_logArchiveURL;
  v70 = a4;
  v25(&v23[OBJC_IVAR___HRLDLogArchiveProcessor_logArchiveURL], a4, v17);
  v67 = a5;
  v25(v22, a5, v17);
  v26 = type metadata accessor for LogEntryWriter(0);
  v27 = objc_allocWithZone(v26);
  v63 = OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_encoder;
  sub_100007658();
  swift_allocObject();
  v28 = sub_100007648();
  (*(v66 + 104))(v16, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v69);
  sub_100007628();
  *&v63[v27] = v28;
  *(v27 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle) = 0;
  *(v27 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_isFirstSample) = 1;
  v55 = v18 + 16;
  v25(v27 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileURL, v22, v17);
  v29 = v25;
  v30 = v62;
  v74.receiver = v27;
  v74.super_class = v26;
  v31 = objc_msgSendSuper2(&v74, "init");
  v32 = *(v18 + 8);
  v69 = v17;
  v66 = v18 + 8;
  v63 = v32;
  (v32)(v22, v17);
  v59 = OBJC_IVAR___HRLDLogArchiveProcessor_logWriter;
  *&v30[OBJC_IVAR___HRLDLogArchiveProcessor_logWriter] = v31;
  v33 = OBJC_IVAR___HRLDLogArchiveProcessor_archiveStartDate;
  v34 = sub_1000077E8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 16);
  v58 = v33;
  v36(&v30[v33], v71, v34);
  v37 = &v30[OBJC_IVAR___HRLDLogArchiveProcessor_redactedToken];
  v38 = v65;
  *v37 = v64;
  v37[1] = v38;
  *&v30[OBJC_IVAR___HRLDLogArchiveProcessor_windowSize] = a8;
  v39 = objc_allocWithZone(NSDataDetector);
  v73 = 0;
  v40 = [v39 initWithTypes:2096 error:&v73];
  v41 = v40;
  v42 = v73;
  if (v40)
  {
    *&v30[OBJC_IVAR___HRLDLogArchiveProcessor_dataDetector] = v40;
    sub_100003AD8(0, &qword_100010B00, OSLogStore_ptr);
    v43 = v56;
    v29(v56, v70, v69);
    v44 = v42;
    v45 = v57;
    v46 = sub_1000023F8(v43);
    v65 = v45;
    if (!v45)
    {
      *&v30[OBJC_IVAR___HRLDLogArchiveProcessor_osStore] = v46;
      v72.receiver = v30;
      v72.super_class = ObjectType;
      v30 = objc_msgSendSuper2(&v72, "init");
      v47 = v69;
      v48 = v63;
      (v63)(v67, v69);
      v48(v70, v47);
      (*(v35 + 8))(v71, v34);
      return v30;
    }
  }

  else
  {
    v49 = v73;
    v50 = sub_1000076F8();

    v65 = v50;
    swift_willThrow();
  }

  v51 = v69;
  v52 = v63;
  (v63)(v67, v69);
  v52(v70, v51);
  v53 = *(v35 + 8);
  v53(v71, v34);
  v53(&v30[v58], v34);

  v52(&v30[v61], v51);

  if (v41)
  {
  }

  swift_deallocPartialClassInstance();
  return v30;
}

id sub_1000023F8(uint64_t a1)
{
  sub_100007708(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() storeWithURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_100007738();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_1000076F8();

    swift_willThrow();
    v10 = sub_100007738();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

void sub_100002704(uint64_t *a1, uint64_t a2, char *a3)
{
  v42 = a1;
  v6 = sub_1000077E8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v32 - v12;
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = *(a2 + OBJC_IVAR___HRLDLogArchiveProcessor_logWriter);
  sub_100005AD4();
  if (!v3)
  {
    v35 = v16;
    sub_1000077D8();
    v17 = *(v7 + 16);
    v41 = OBJC_IVAR___HRLDLogArchiveProcessor_archiveStartDate;
    v17(v13, a2 + OBJC_IVAR___HRLDLogArchiveProcessor_archiveStartDate, v6);
    v18 = sub_1000077B8();
    v36 = v7;
    if (v18)
    {
      v37 = v42[2];
      v38 = (v7 + 8);
      v33 = (v7 + 32);
      v34 = a3 + 16;
      v42 += 5;
      v19 = v15;
      v39 = v6;
      v40 = a3;
      do
      {
        sub_100007798();
        v27 = v42;
        for (i = v37; i; --i)
        {
          v30 = *(v27 - 1);
          v29 = *v27;

          sub_100002A78(v30, v29);

          v27 += 2;
        }

        sub_100007788();
        v21 = v20;
        sub_100007788();
        v23 = v21 - v22;
        sub_100007788();
        v25 = v24;
        sub_100007788();
        v26.n128_f64[0] = v23 / (v25 - v26.n128_f64[0]);
        if (v26.n128_f64[0] > 1.0)
        {
          v26.n128_f64[0] = 1.0;
        }

        a3 = v40;
        (*(v40 + 2))(v40, v26);
        v6 = v39;
        (*v38)(v13, v39);
        (*v33)(v13, v10, v6);
      }

      while ((sub_1000077B8() & 1) != 0);
    }

    else
    {
      v19 = v15;
    }

    sub_100005C58();
    v31 = *(v36 + 8);
    v31(v13, v6);
    v31(v19, v6);
  }

  _Block_release(a3);
}

void sub_100002A78(uint64_t a1, uint64_t a2)
{
  v17 = objc_autoreleasePoolPush();
  v15 = v2;
  v5 = *(v2 + OBJC_IVAR___HRLDLogArchiveProcessor_osStore);
  isa = sub_1000077A8().super.isa;
  v7 = [v5 positionWithDate:isa];

  sub_100003AD8(0, &qword_100010A08, NSPredicate_ptr);
  sub_100003750(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000083C0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10000380C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_1000077A8().super.isa;
  *(v8 + 96) = sub_100003AD8(0, &qword_100010A28, NSDate_ptr);
  *(v8 + 104) = sub_100003860();
  *(v8 + 72) = v9;
  v10 = sub_1000078F8();
  v19 = &_swiftEmptyArrayStorage;
  v11 = objc_autoreleasePoolPush();
  sub_1000078E8();
  if (v16)
  {
    objc_autoreleasePoolPop(v11);
  }

  else
  {

    sub_100007978();

    sub_100007998();
    v12 = v18;
    if (v18)
    {
      while (1)
      {
        v13 = v12;
        sub_1000078A8();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000078C8();
        }

        sub_1000078D8();

        sub_100007998();
        v12 = v18;
      }
    }

    objc_autoreleasePoolPop(v11);
    v14 = objc_autoreleasePoolPush();
    sub_100002DF8(&v19, v15, &v18);
    objc_autoreleasePoolPop(v14);
  }

  objc_autoreleasePoolPop(v17);
}

void sub_100002DF8(unint64_t *a1, uint64_t a2, void *a3)
{
  v66 = a3;
  v4 = v3;
  v77 = sub_1000077E8();
  v7 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100007988())
  {
    v75 = OBJC_IVAR___HRLDLogArchiveProcessor_dataDetector;
    v11 = OBJC_IVAR___HRLDLogArchiveProcessor_redactedToken;
    v12 = OBJC_IVAR___HRLDLogArchiveProcessor_deviceName;
    v74 = OBJC_IVAR___HRLDLogArchiveProcessor_logWriter;

    if (!i)
    {
      break;
    }

    v13 = 0;
    v71 = (a2 + v11);
    v70 = (a2 + v12);
    v79 = v9 & 0xC000000000000001;
    v78 = v9 & 0xFFFFFFFFFFFFFF8;
    v69 = (v7 + 16);
    v68 = (v7 + 8);
    v73 = a2;
    v72 = v9;
    v67 = i;
    while (1)
    {
      if (v79)
      {
        v14 = sub_100007958();
      }

      else
      {
        if (v13 >= *(v78 + 16))
        {
          goto LABEL_30;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v7 = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v97 = &OBJC_PROTOCOL___OSLogEntryFromProcess;
      v98 = &OBJC_PROTOCOL___OSLogEntryWithPayload;
      v15 = swift_dynamicCastObjCProtocolConditional();
      if (!v15 || (v16 = v15, objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) == 0))
      {

        return;
      }

      v18 = v17;
      v99 = v7;
      if (sub_1000038C8(v16))
      {
        v64 = v99;

        goto LABEL_27;
      }

      v80 = v13 + 1;
      v81 = v13;
      v89 = v4;
      v19 = [v16 category];
      v20 = sub_100007808();
      v87 = v21;
      v88 = v20;

      v22 = [v18 composedMessage];
      if (!v22)
      {
        sub_100007808();
        v22 = sub_1000077F8();
      }

      sub_100007808();
      v23 = *(a2 + v75);
      v24 = sub_100007828();

      v25 = *v71;
      v26 = v71[1];
      v27 = sub_1000077F8();
      v28 = [v23 stringByReplacingMatchesInString:v22 options:0 range:0 withTemplate:{v24, v27}];

      v29 = sub_100007808();
      v31 = v30;

      v32 = *v70;
      v33 = v70[1];
      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        v95 = v29;
        v96 = v31;
        v93 = v32;
        v94 = v33;
        v91 = v25;
        v92 = v26;
        sub_100003A84();
        v86 = sub_100007928();
        v36 = v35;

        v31 = v36;
      }

      else
      {
        v86 = v29;
      }

      v37 = v99;
      v38 = [v99 date];
      v39 = v76;
      sub_1000077C8();

      v40 = [v16 formatString];
      v41 = sub_100007808();
      v84 = v42;
      v85 = v41;

      v43 = [v18 level];
      v83 = [v16 processIdentifier];
      v44 = [v16 process];
      v45 = sub_100007808();
      v82 = v46;

      v47 = [v16 subsystem];
      v48 = sub_100007808();
      v50 = v49;

      v51 = type metadata accessor for LogEntry(0);
      v52 = objc_allocWithZone(v51);
      v53 = &v52[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_category];
      v54 = v87;
      *v53 = v88;
      v53[1] = v54;
      v55 = &v52[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_composedMessage];
      *v55 = v86;
      v55[1] = v31;
      v56 = v77;
      (*v69)(&v52[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_date], v39, v77);
      v57 = &v52[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_formatString];
      v58 = v84;
      *v57 = v85;
      v57[1] = v58;
      v59 = 0x40305010200uLL >> (8 * v43);
      if (v43 >= 6)
      {
        LOBYTE(v59) = 5;
      }

      v52[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_logLevel] = v59;
      v60 = v82;
      *&v52[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_processIdentifier] = v83;
      v61 = &v52[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_process];
      *v61 = v45;
      v61[1] = v60;
      v62 = &v52[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_subsystem];
      *v62 = v48;
      v62[1] = v50;
      v90.receiver = v52;
      v90.super_class = v51;
      v7 = objc_msgSendSuper2(&v90, "init");
      (*v68)(v39, v56);
      a2 = v73;
      v63 = v89;
      sub_100005D88(v7);

      v4 = v63;
      if (v63)
      {

        *v66 = v63;
        return;
      }

      v13 = v81 + 1;
      v9 = v72;
      if (v80 == v67)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_27:
}

id sub_1000034D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LogArchiveProcessor(uint64_t a1)
{
  result = qword_1000109F8;
  if (!qword_1000109F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003660(uint64_t a1)
{
  result = sub_1000077E8();
  if (v2 <= 0x3F)
  {
    result = sub_100007738();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_100003750(uint64_t a1)
{
  if (!qword_100010A10)
  {
    sub_1000037A8();
    v1 = sub_100007A38();
    if (!v2)
    {
      atomic_store(v1, &qword_100010A10);
    }
  }
}

unint64_t sub_1000037A8()
{
  result = qword_100010A18;
  if (!qword_100010A18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100010A18);
  }

  return result;
}

unint64_t sub_10000380C()
{
  result = qword_100010A20;
  if (!qword_100010A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A20);
  }

  return result;
}

unint64_t sub_100003860()
{
  result = qword_100010A30;
  if (!qword_100010A30)
  {
    sub_100003AD8(255, &qword_100010A28, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A30);
  }

  return result;
}

uint64_t sub_1000038C8(void *a1)
{
  v2 = [a1 subsystem];
  v3 = sub_100007808();
  v5 = v4;

  if (v3 == 0xD000000000000013 && 0x8000000100008A10 == v5)
  {
  }

  else
  {
    v7 = sub_100007A48();

    v8 = 0;
    if ((v7 & 1) == 0)
    {
      return v8 & 1;
    }
  }

  v9 = [a1 formatString];
  v10 = sub_100007808();
  v12 = v11;

  sub_100003A84();
  LOBYTE(v9) = sub_100007938();

  if (v9)
  {
    v8 = 1;
  }

  else
  {
    v13 = [a1 formatString];
    sub_100007808();

    v8 = sub_100007938();
  }

  return v8 & 1;
}

unint64_t sub_100003A84()
{
  result = qword_100010AF8;
  if (!qword_100010AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010AF8);
  }

  return result;
}

uint64_t sub_100003AD8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003B2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1868983913;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    if (a1 == 2)
    {
      v4 = 0x6775626564;
    }

    else if (a1 == 3)
    {
      v4 = 0x726F727265;
    }

    else
    {
      v4 = 0x746C756166;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1868983913;
    }

    else
    {
      v8 = 0x746C7561666564;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v5 = 0x726F727265;
    if (a2 != 3)
    {
      v5 = 0x746C756166;
    }

    if (a2 == 2)
    {
      v6 = 0x6775626564;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0xE500000000000000;
    if (v4 != v6)
    {
      goto LABEL_30;
    }
  }

  if (v3 != v7)
  {
LABEL_30:
    v9 = sub_100007A48();
    goto LABEL_31;
  }

  v9 = 1;
LABEL_31:

  return v9 & 1;
}

Swift::Int sub_100003C88()
{
  sub_100007A58();
  sub_100007818();

  return sub_100007A78();
}

uint64_t sub_100003D58(uint64_t a1)
{
  sub_100007818();
}

Swift::Int sub_100003E14(uint64_t a1)
{
  sub_100007A58();
  sub_100007818();

  return sub_100007A78();
}

unint64_t sub_100003EE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005524(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100003F10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0x6775626564;
  v6 = 0x726F727265;
  if (v2 != 3)
  {
    v6 = 0x746C756166;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 1868983913;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_10000404C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  v22 = &v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_category];
  *v22 = a1;
  v22[1] = a2;
  v23 = &v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_composedMessage];
  *v23 = a3;
  v23[1] = a4;
  v24 = OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_date;
  v25 = sub_1000077E8();
  v26 = *(v25 - 8);
  (*(v26 + 16))(&v13[v24], a5, v25);
  v27 = &v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_formatString];
  *v27 = a6;
  v27[1] = a7;
  v28 = 0x40305010200uLL >> (8 * a8);
  if (a8 >= 6)
  {
    LOBYTE(v28) = 5;
  }

  v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_logLevel] = v28;
  *&v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_processIdentifier] = a9;
  v29 = &v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_process];
  *v29 = a10;
  v29[1] = a11;
  v30 = &v13[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_subsystem];
  *v30 = a12;
  v30[1] = a13;
  v34.receiver = v13;
  v34.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v34, "init");
  (*(v26 + 8))(a5, v25);
  return v31;
}

Swift::Int sub_100004384()
{
  v1 = *v0;
  sub_100007A58();
  sub_100007A68(v1);
  return sub_100007A78();
}

Swift::Int sub_1000043F8(uint64_t a1)
{
  v2 = *v1;
  sub_100007A58();
  sub_100007A68(v2);
  return sub_100007A78();
}

uint64_t sub_10000443C()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x737365636F7270;
  if (v1 != 6)
  {
    v3 = 0x6574737973627573;
  }

  v4 = 0x6C6576654C676F6CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 2)
  {
    v5 = 0x745374616D726F66;
  }

  if (*v0)
  {
    v2 = 0x6465736F706D6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000454C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000581C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000458C(uint64_t a1)
{
  v2 = sub_1000052F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000045C8(uint64_t a1)
{
  v2 = sub_1000052F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for LogEntry(uint64_t a1)
{
  result = qword_100010B40;
  if (!qword_100010B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004728(uint64_t a1)
{
  result = sub_1000077E8();
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

uint64_t getEnumTagSinglePayload for LogEntry.LogLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogEntry.LogLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100004958()
{
  result = qword_100010B50;
  if (!qword_100010B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B50);
  }

  return result;
}

uint64_t sub_1000049AC(void *a1)
{
  v3 = v1;
  sub_100005428(0, &qword_100010B78, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v11[-v8];
  sub_100005344(a1, a1[3]);
  sub_1000052F0();
  sub_100007A98();
  v11[15] = 0;
  sub_100007A08();
  if (!v2)
  {
    v11[14] = 1;
    sub_100007A08();
    v11[13] = 2;
    sub_1000077E8();
    sub_10000548C(&qword_100010B80, &protocol conformance descriptor for Date);
    sub_100007A28();
    v11[12] = 3;
    sub_100007A08();
    v11[11] = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_logLevel);
    v11[10] = 4;
    sub_1000054D0();
    sub_1000079F8();
    v11[9] = 5;
    sub_100007A18();
    v11[8] = 6;
    sub_100007A08();
    v11[7] = 7;
    sub_100007A08();
  }

  return (*(v7 + 8))(v9, v6);
}

void *sub_100004C90(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1000077E8();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005428(0, &qword_100010B58, &type metadata accessor for KeyedDecodingContainer);
  v35 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = a1[3];
  v37 = a1;
  sub_100005344(a1, v10);
  sub_1000052F0();
  sub_100007A88();
  if (v1)
  {
    v32 = v36;
    sub_100005388(v37);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v7;
    v33 = v3;
    v41 = 0;
    v12 = v35;
    v13 = v9;
    v14 = sub_1000079C8();
    v16 = v36;
    v17 = &v36[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_category];
    *v17 = v14;
    v17[1] = v18;
    v41 = 1;
    v19 = sub_1000079C8();
    v20 = &v16[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_composedMessage];
    *v20 = v19;
    v20[1] = v21;
    v41 = 2;
    sub_10000548C(&qword_100010B68, &protocol conformance descriptor for Date);
    v22 = v33;
    sub_1000079E8();
    (*(v34 + 32))(&v16[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_date], v5, v22);
    v41 = 3;
    v23 = sub_1000079C8();
    v24 = &v16[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_formatString];
    *v24 = v23;
    v24[1] = v25;
    v40 = 4;
    sub_1000053D4();
    sub_1000079B8();
    v16[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_logLevel] = v41;
    v41 = 5;
    *&v16[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_processIdentifier] = sub_1000079D8();
    v41 = 6;
    v26 = sub_1000079C8();
    v27 = &v16[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_process];
    *v27 = v26;
    v27[1] = v28;
    v41 = 7;
    v29 = sub_1000079C8();
    v30 = &v16[OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry_subsystem];
    *v30 = v29;
    v30[1] = v31;
    v39.receiver = v16;
    v39.super_class = ObjectType;
    v32 = objc_msgSendSuper2(&v39, "init");
    (*(v11 + 8))(v13, v12);
    sub_100005388(v37);
  }

  return v32;
}

void *sub_10000527C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_100004C90(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000052F0()
{
  result = qword_100010B60;
  if (!qword_100010B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B60);
  }

  return result;
}

void *sub_100005344(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005388(void *a1)
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

unint64_t sub_1000053D4()
{
  result = qword_100010B70;
  if (!qword_100010B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B70);
  }

  return result;
}

void sub_100005428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000052F0();
    v7 = a3(a1, &type metadata for LogEntry.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10000548C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000077E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000054D0()
{
  result = qword_100010B88;
  if (!qword_100010B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B88);
  }

  return result;
}

unint64_t sub_100005524(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C7A0;
  v6._object = a2;
  v4 = sub_1000079A8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100005570()
{
  result = qword_100010B90;
  if (!qword_100010B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100005718()
{
  result = qword_100010B98;
  if (!qword_100010B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010B98);
  }

  return result;
}

unint64_t sub_100005770()
{
  result = qword_100010BA0;
  if (!qword_100010BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010BA0);
  }

  return result;
}

unint64_t sub_1000057C8()
{
  result = qword_100010BA8;
  if (!qword_100010BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010BA8);
  }

  return result;
}

uint64_t sub_10000581C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_100007A48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465736F706D6F63 && a2 == 0xEF6567617373654DLL || (sub_100007A48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_100007A48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x745374616D726F66 && a2 == 0xEC000000676E6972 || (sub_100007A48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6576654C676F6CLL && a2 == 0xE800000000000000 || (sub_100007A48() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100008AF0 == a2 || (sub_100007A48() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737365636F7270 && a2 == 0xE700000000000000 || (sub_100007A48() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6574737973627573 && a2 == 0xE90000000000006DLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_100007A48();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_100005AD4()
{
  v2 = sub_100007738();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileURL;
  sub_100007728(1);
  v8 = sub_1000077F8();

  [v6 createFileAtPath:v8 contents:0 attributes:0];

  sub_10000739C();
  (*(v3 + 16))(v5, v0 + v7, v2);
  v9 = sub_100005F18(v5);
  if (!v1)
  {
    v10 = *(v0 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle);
    *(v0 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle) = v9;
  }
}

void sub_100005C58()
{
  v2 = OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle;
  v3 = *(v0 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle);
  if (v3)
  {
    v4 = v0;
    v5 = v3;
    v10 = sub_100006070(23818, 0xE200000000000000);
    v11 = v6;
    sub_100006790();
    sub_100007908();
    sub_1000067E4(v10, v11);

    if (!v1)
    {
      v7 = *(v4 + v2);
      if (v7)
      {
        v10 = 0;
        if ([v7 closeAndReturnError:&v10])
        {
          v8 = v10;
        }

        else
        {
          v9 = v10;
          sub_1000076F8();

          swift_willThrow();
        }
      }
    }
  }
}

uint64_t sub_100005D88(uint64_t a1)
{
  v3 = v1;
  type metadata accessor for LogEntry(0);
  sub_100006738();
  result = sub_100007638();
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    if (*(v1 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_isFirstSample) == 1)
    {
      *(v1 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_isFirstSample) = 0;
      v8 = *(v1 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle);
      if (!v8)
      {
        goto LABEL_8;
      }

      v9 = v8;
      v10 = 2651;
    }

    else
    {
      v11 = *(v1 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle);
      if (!v11)
      {
        goto LABEL_8;
      }

      v9 = v11;
      v10 = 2604;
    }

    v18 = sub_100006070(v10, 0xE200000000000000);
    v19 = v12;
    sub_100006790();
    sub_100007908();
    sub_1000067E4(v18, v19);

LABEL_8:
    v13 = v6;
    v14 = *(v3 + OBJC_IVAR____TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension14LogEntryWriter_fileHandle);
    if (v14)
    {
      v15 = v7;
      v16 = v13;
      sub_100006790();
      v17 = v14;
      sub_100007908();

      return sub_1000067E4(v16, v15);
    }

    else
    {
      return sub_1000067E4(v13, v7);
    }
  }

  return result;
}

id sub_100005F18(uint64_t a1)
{
  sub_100007708(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_100007738();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_1000076F8();

    swift_willThrow();
    v10 = sub_100007738();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_100006070(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  sub_100006838();

  if (swift_dynamicCast())
  {
    sub_100007264(__src, &v43);
    sub_100005344(&v43, v44);
    sub_1000076D8();
    __src[0] = v42;
    sub_100005388(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10000689C(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_100007968();
  }

  sub_100006950(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1000070F4(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_100006A18(sub_100007194, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_100007768();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100006F70(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_100007838();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_100007868();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_100007968();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100006F70(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_100007848();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_100007778();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_100007778();
    sub_100007250(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_100007250(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000071FC(*&__src[0], *(&__src[0] + 1));

  sub_1000067E4(v32, *(&v32 + 1));
  return v32;
}

uint64_t type metadata accessor for LogEntryWriter(uint64_t a1)
{
  result = qword_100010BF0;
  if (!qword_100010BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006688(uint64_t a1)
{
  result = sub_100007738();
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

unint64_t sub_100006738()
{
  result = qword_100010C00;
  if (!qword_100010C00)
  {
    type metadata accessor for LogEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010C00);
  }

  return result;
}

unint64_t sub_100006790()
{
  result = qword_100010C08;
  if (!qword_100010C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010C08);
  }

  return result;
}

uint64_t sub_1000067E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100006838()
{
  result = qword_100010C10;
  if (!qword_100010C10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100010C10);
  }

  return result;
}

uint64_t sub_10000689C(uint64_t a1)
{
  sub_1000068F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000068F8(uint64_t a1)
{
  if (!qword_100010C18)
  {
    sub_100006838();
    v1 = sub_100007918();
    if (!v2)
    {
      atomic_store(v1, &qword_100010C18);
    }
  }
}

uint64_t *sub_100006950@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_10000703C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1000076C8();
      swift_allocObject();
      v8 = sub_100007678();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_100007758();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_100006A18(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1000067E4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000067E4(v7, v6);
    *v4 = xmmword_1000086F0;
    sub_1000067E4(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_100007688() && __OFSUB__(v7, sub_1000076B8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1000076C8();
      swift_allocObject();
      v14 = sub_100007668();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_100006EBC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1000067E4(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1000086F0;
    sub_1000067E4(0, 0xC000000000000000);
    sub_100007748();
    result = sub_100006EBC(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_100006DBC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10000703C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10000727C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000072F8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_100006E50(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100006EBC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_100007688();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1000076B8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1000076A8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_100006F70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100007878();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100007858();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100006FEC@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_100007948();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000703C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_1000070F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1000076C8();
      swift_allocObject();
      sub_100007698();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_100007758();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_100007194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100006E50(sub_10000737C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1000071FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100007250(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000067E4(result, a2);
  }

  return result;
}

uint64_t sub_100007264(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000727C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1000076C8();
  swift_allocObject();
  result = sub_100007678();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100007758();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000072F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1000076C8();
  swift_allocObject();
  result = sub_100007678();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10000739C()
{
  result = qword_100010C20;
  if (!qword_100010C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010C20);
  }

  return result;
}

void sub_1000073FC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't create OSLogArchive with status: %d", v2, 8u);
}

void sub_100007474(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_100001DF0(&_mh_execute_header, v2, v3, "Encountered error creating Log Processor %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_1000074FC(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_100001DF0(&_mh_execute_header, v2, v3, "Encountered error writing logs to disk: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100007584(uint64_t a1)
{
  v1 = [NSString stringWithUTF8String:a1];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_100001DF0(&_mh_execute_header, v2, v3, "LogArchiveError: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}