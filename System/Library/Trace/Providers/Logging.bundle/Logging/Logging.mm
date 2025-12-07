unint64_t sub_1190(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a3 <= 1u)
  {
    if (!a3)
    {
      sub_A138(25);

      v9 = 0xD000000000000015;
      v10._countAndFlagsBits = a1;
      v10._object = v3;
      sub_A078(v10);
      v11._countAndFlagsBits = 11815;
      v11._object = 0xE200000000000000;
      sub_A078(v11);
      return v9;
    }

    sub_A138(33);

    v5 = 0xD00000000000001FLL;
LABEL_7:
    v9 = v5;
    if (v3)
    {
      v6._countAndFlagsBits = a1;
    }

    else
    {
      v6._countAndFlagsBits = 0;
    }

    if (!v3)
    {
      v3 = 0xE000000000000000;
    }

    v6._object = v3;
    sub_A078(v6);

    return v9;
  }

  if (a3 == 2)
  {

    sub_A138(31);

    v5 = 0xD00000000000001DLL;
    goto LABEL_7;
  }

  if (a1 <= 2)
  {
    if (a1 ^ 1 | a2)
    {
      v8 = 0xD00000000000002BLL;
    }

    else
    {
      v8 = 0xD000000000000030;
    }

    if (a1 | a2)
    {
      return v8;
    }

    else
    {
      return 0xD00000000000002CLL;
    }
  }

  else if (a1 > 4)
  {
    if (a1 ^ 5 | a2)
    {
      return 0xD000000000000030;
    }

    else
    {
      return 0xD000000000000032;
    }
  }

  else if (a1 ^ 3 | a2)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0xD000000000000049;
  }
}

BOOL sub_1488(void *a1, uint64_t *a2)
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

void *sub_14B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_14E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_15D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_59E4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1664@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_9FB8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_16E4()
{
  v1 = (v0 + OBJC_IVAR___ATSLoggingProvider_resolvedFilterPredicateString);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_173C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ATSLoggingProvider_resolvedFilterPredicateString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1904(uint64_t a1)
{
  v3 = v1;
  v35 = a1;
  v4 = sub_62F4(&qword_14D38, qword_ABB0);
  v5 = __chkstk_darwin(v4 - 8);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = sub_9FB8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___ATSLoggingProvider_archivePath;
  swift_beginAccess();
  sub_8BD4(v3 + v13, v8, &qword_14D38, qword_ABB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_8C3C(v8, &qword_14D38, qword_ABB0);
    sub_633C();
    swift_allocError();
    *v14 = xmmword_AB60;
    *(v14 + 16) = 3;
    return swift_willThrow();
  }

  v32 = v2;
  v16 = *(v10 + 32);
  v16(v12, v8, v9);
  v17 = (v3 + OBJC_IVAR___ATSLoggingProvider_initializationError);
  v18 = *(v3 + OBJC_IVAR___ATSLoggingProvider_initializationError + 16);
  if (v18 != 255)
  {
    v20 = *v17;
    v19 = v17[1];
    sub_633C();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = v19;
    *(v21 + 16) = v18;
    swift_willThrow();
    sub_641C(v20, v19, v18);
    return (*(v10 + 8))(v12, v9);
  }

  v31 = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  aBlock[4] = sub_63A0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E10;
  aBlock[3] = &unk_10868;
  v23 = _Block_copy(aBlock);

  ktrace_file_iterate();
  _Block_release(v23);
  swift_beginAccess();
  if (*(v22 + 16) == 1)
  {
    sub_633C();
    swift_allocError();
    *v24 = xmmword_AB50;
    *(v24 + 16) = 3;
    swift_willThrow();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v35 = v22;
    v25 = [objc_opt_self() defaultManager];
    sub_9FA8();
    v26 = sub_A028();

    v27 = [v25 fileExistsAtPath:v26];

    if (v27)
    {
      v28 = v33;
      v31(v33, v12, v9);
      (*(v10 + 56))(v28, 0, 1, v9);
      swift_beginAccess();
      sub_8CE4(v28, v3 + v13, &qword_14D38, qword_ABB0);
      swift_endAccess();
    }

    sub_633C();
    swift_allocError();
    *v29 = xmmword_AB40;
    *(v29 + 16) = 3;
    swift_willThrow();
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1E10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

void sub_1EE8(uint64_t result)
{
  v2 = (v1 + OBJC_IVAR___ATSLoggingProvider_initializationError);
  v3 = *(v1 + OBJC_IVAR___ATSLoggingProvider_initializationError + 16);
  if (v3 != 255)
  {
    v5 = *v2;
    v4 = v2[1];
    sub_633C();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v4;
    *(v6 + 16) = v3;
    swift_willThrow();
    sub_641C(v5, v4, v3);
  }
}

void sub_2038(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR___ATSLoggingProvider_recordingLayerOptions) & 2) != 0)
  {
    v8 = nullsub_1;
    v9 = 0;
    v4 = _NSConcreteStackBlock;
    v5 = 1107296256;
    v6 = sub_2174;
    v7 = &unk_10890;
    v2 = _Block_copy(&v4);
    ktrace_events_range();
    _Block_release(v2);
    v8 = nullsub_1;
    v9 = 0;
    v4 = _NSConcreteStackBlock;
    v5 = 1107296256;
    v6 = sub_2174;
    v7 = &unk_108B8;
    v3 = _Block_copy(&v4);
    ktrace_events_range();
    _Block_release(v3);
  }
}

uint64_t sub_2174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2220(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_A168();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
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

  v13 = sub_A168();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_4C04(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_57A8(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
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

uint64_t sub_23AC(uint64_t (*a1)@<X0>(void *a1@<X0>, uint64_t a2@<X8>))
{
  v2 = sub_9E68();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_2588(a1);
    sub_273C(a1, v6);
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_2588(uint64_t a1)
{
  v1 = sub_9F68();
  v2 = __chkstk_darwin(v1 - 8);
  __chkstk_darwin(v2);
  if (ktrace_file_earliest_walltime())
  {
    v3 = 5;
LABEL_5:
    sub_633C();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    return swift_willThrow();
  }

  if (ktrace_file_latest_walltime())
  {
    v3 = 6;
    goto LABEL_5;
  }

  sub_9F48();
  sub_9F48();
  return sub_9E48();
}

void sub_273C(uint64_t (*a1)@<X0>(void *a1@<X0>, uint64_t a2@<X8>), uint64_t a2)
{
  v79 = a2;
  v80 = a1;
  v84 = sub_9FE8();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_9F68();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_9EE8();
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v85 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_62F4(&qword_14F90, &qword_B128);
  __chkstk_darwin(v7 - 8);
  v9 = &v74 - v8;
  v10 = sub_9F18();
  v88 = *(v10 - 8);
  v89 = v10;
  __chkstk_darwin(v10);
  v75 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_62F4(&qword_14D38, qword_ABB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v74 - v13;
  v15 = sub_9FB8();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v74 - v20;
  v22 = OBJC_IVAR___ATSLoggingProvider_archivePath;
  swift_beginAccess();
  v81 = v2;
  sub_8BD4(v2 + v22, v14, &qword_14D38, qword_ABB0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_8C3C(v14, &qword_14D38, qword_ABB0);
    v23 = [objc_opt_self() localStore];
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    (*(v16 + 16))(v19, v21, v15);
    v24 = v85;
    v86[13](v85, enum case for URL.DirectoryHint.inferFromPath(_:), v87);
    sub_3BE4(v19, v24, v9);
    v26 = v88;
    v25 = v89;
    if ((v88)[6](v9, 1, v89) == 1)
    {
      sub_8C3C(v9, &qword_14F90, &qword_B128);
      sub_633C();
      swift_allocError();
      *v27 = xmmword_AB40;
      *(v27 + 16) = 3;
      swift_willThrow();
      (*(v16 + 8))(v21, v15);
      return;
    }

    v28 = v75;
    (v26)[4](v75, v9, v25);
    sub_9EF8(v29);
    v31 = v30;
    v23 = [objc_opt_self() storeWithArchiveURL:v30];

    (v26[1])(v28, v25);
    (*(v16 + 8))(v21, v15);
  }

  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  v95 = sub_82CC;
  v96 = v34;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_3EF8;
  v94 = &unk_10A78;
  v35 = _Block_copy(&aBlock);
  v36 = v23;
  v89 = v32;

  [v36 prepareWithCompletionHandler:v35];
  _Block_release(v35);
  v88 = v36;

  swift_beginAccess();
  v37 = *(v32 + 16);
  if (v37)
  {
    v38 = v37;
    v39 = dispatch_semaphore_create(0);
    v40 = OSLogEventSerializerVersion;
    sub_8DE8(0, &qword_14F98, OSLogEventSerializer_ptr);
    v41 = swift_allocObject();
    v42 = v80;
    *(v41 + 16) = v80;
    *(v41 + 24) = v40;
    v43 = v81;
    *(v41 + 32) = v81;
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v42;
    *(v44 + 32) = v40;
    *(v44 + 40) = v39;
    v45 = v43;
    v46 = v38;
    v47 = v45;
    v48 = v39;
    v49 = sub_3F84(v46, sub_8394, v41, sub_86DC, v44);
    v50 = v49;
    if (v49)
    {
      [v49 setFlags:*&v47[OBJC_IVAR___ATSLoggingProvider_streamFlags]];
      [v50 setFilterPredicate:*&v47[OBJC_IVAR___ATSLoggingProvider_predicate]];
      if (v47[OBJC_IVAR___ATSLoggingProvider_shouldRedactContent] != 1)
      {
        v85 = v48;
        v86 = v46;
        v87 = v33;
        v51 = v50;
        v80 = 0;
        v81 = 0;
        v52 = 0;
LABEL_15:
        [v51 setArgumentRedactionBlock:v52];
        _Block_release(v52);

        v65 = v51;
        v66 = v76;
        sub_9E58();
        isa = sub_9F38().super.isa;
        v68 = *(v77 + 8);
        v69 = v78;
        v68(v66, v78);
        sub_9E38();
        v70 = sub_9F38().super.isa;
        v68(v66, v69);
        [v65 serializeFromDate:isa toDate:v70];

        v46 = v86;
        v48 = v85;
        v64 = v81;
        v71 = v80;
LABEL_20:
        v73 = v82;
        sub_9FD8();
        sub_A0E8();

        sub_8B04(v71, v64);
        (*(v83 + 8))(v73, v84);

        return;
      }
    }

    else if ((v47[OBJC_IVAR___ATSLoggingProvider_shouldRedactContent] & 1) == 0)
    {
      v64 = 0;
      v71 = 0;
      goto LABEL_20;
    }

    v61 = SignpostSupportAllowlistedStringSetForCurrentDevice();
    v62 = sub_A0C8();

    v63 = swift_allocObject();
    v64 = v63;
    *(v63 + 16) = v62;
    if (!v50)
    {
      v71 = sub_8B5C;
      goto LABEL_20;
    }

    v85 = v48;
    v86 = v46;
    v87 = v33;
    v95 = sub_8B5C;
    v96 = v63;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_4608;
    v94 = &unk_10AF0;
    v52 = _Block_copy(&aBlock);
    v51 = v50;
    v80 = sub_8B5C;
    v81 = v64;
    sub_8B14(sub_8B5C, v64);

    goto LABEL_15;
  }

  swift_beginAccess();
  if (*(v33 + 16))
  {
    ErrorValue = swift_getErrorValue();
    v54 = v90;
    v55 = *(v90 - 8);
    __chkstk_darwin(ErrorValue);
    v57 = &v74 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v57);
    v58 = sub_A1D8();
    v60 = v59;
    (*(v55 + 8))(v57, v54);
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  sub_633C();
  swift_allocError();
  *v72 = v58;
  *(v72 + 8) = v60;
  *(v72 + 16) = 1;
  swift_willThrow();
}

uint64_t sub_33BC()
{
  v0 = ktrace_chunk_tag();
  if (v0 == 32785)
  {
    return 0x746E6F6320676F6CLL;
  }

  if (v0 == 32786)
  {
    return 0x6174656D20676F6CLL;
  }

  return 0;
}

uint64_t sub_362C(uint64_t (*a1)@<X0>(void *a1@<X0>, uint64_t a2@<X8>), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v18 = a3;
  v4 = sub_9F68();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_9E68();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 16);
  v15(v10, a2, v4);
  v15(v8, v18, v4);
  sub_9E48();
  sub_273C(v19, v14);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_3BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_62F4(&qword_14F90, &qword_B128);
  __chkstk_darwin(v5 - 8);
  v26 = v23 - v6;
  v7 = sub_9EE8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_9FB8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = sub_A068();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = sub_9F18();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    sub_9F08();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = sub_9F18();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

void sub_3EF8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_3F84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_49B0;
  aBlock[3] = &unk_10B40;
  v11 = _Block_copy(aBlock);
  v15[4] = a4;
  v15[5] = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_4A38;
  v15[3] = &unk_10B68;
  v12 = _Block_copy(v15);
  v13 = [v10 initWithSource:a1 dataProcessingBlock:v11 completionBlock:v12];
  _Block_release(v11);

  _Block_release(v12);

  return v13;
}

uint64_t sub_40CC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v5 = sub_62F4(&qword_14FA0, &qword_B130);
  v6 = __chkstk_darwin(v5 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v42 = &v36 - v9;
  __chkstk_darwin(v8);
  v46 = &v36 - v10;
  v11 = [a1 decomposedMessage];
  v12 = sub_9F98();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v47 = v11;
  if (v11)
  {
    v15 = v13;
    v36 = a3;
    v38 = v14;
    v39 = v13 + 56;
    v14(v46, 1, 1, v12);
    v45 = [v47 placeholderCount];
    if (!v45)
    {
LABEL_31:

      return sub_8B64(v46, v36);
    }

    v16 = 0;
    v37 = v41 + 7;
    v43 = v12;
    v44 = (v15 + 48);
    v17 = &ATSLoggingProvider__prots;
    while (1)
    {
      v19 = [v47 v17[218].count];
      if (!v19)
      {
        goto LABEL_6;
      }

      v20 = v19;
      if ([v19 category] == &dword_0 + 3)
      {
        goto LABEL_9;
      }

      if ([v20 category] == &dword_0 + 2)
      {
        v25 = [v20 objectRepresentation];
        if (v25)
        {
          break;
        }
      }

LABEL_5:

LABEL_6:
      if (++v16 == v45)
      {
        goto LABEL_31;
      }
    }

    v26 = v25;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_6;
    }

    v48 = 0;
    v49 = 0;
    sub_A038();

    v27 = v49;
    if (!v49)
    {

LABEL_30:
      v12 = v43;
      v17 = &ATSLoggingProvider__prots;
      goto LABEL_6;
    }

    if (v41[2])
    {
      v28 = v48;
      v29 = v41;
      sub_A228();
      sub_A058();
      v30 = sub_A248();
      v31 = -1 << *(v29 + 32);
      v32 = v30 & ~v31;
      if ((*(v37 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v34 = (v41[6] + 16 * v32);
          v35 = *v34 == v28 && v27 == v34[1];
          if (v35 || (sub_A1B8() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v37 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_30;
      }
    }

LABEL_24:

    v12 = v43;
    v17 = &ATSLoggingProvider__prots;
LABEL_9:
    v21 = v42;
    sub_8BD4(v46, v42, &qword_14FA0, &qword_B130);
    v22 = *v44;
    v23 = (*v44)(v21, 1, v12);
    sub_8C3C(v21, &qword_14FA0, &qword_B130);
    if (v23 == 1)
    {
      v48 = _swiftEmptyArrayStorage;
      sub_8C9C(&qword_14FA8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      sub_62F4(&qword_14FB0, &qword_B138);
      sub_8DA0(&qword_14FB8, &qword_14FB0, &qword_B138, &protocol conformance descriptor for [A]);
      v24 = v40;
      v12 = v43;
      sub_A128();
      v38(v24, 0, 1, v12);
      v17 = &ATSLoggingProvider__prots;
      sub_8CE4(v24, v46, &qword_14FA0, &qword_B130);
    }

    result = v22(v46, 1, v12);
    if (!result)
    {
      if (v16 < 0)
      {
        __break(1u);
        return result;
      }

      sub_9F88(v16);
    }

    goto LABEL_5;
  }

  return (v14)(a3, 1, 1, v12);
}

id sub_4608(uint64_t a1, void *a2)
{
  v4 = sub_62F4(&qword_14FA0, &qword_B130);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = *(a1 + 32);

  v8 = a2;
  v7();

  v9 = sub_9F98();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    sub_9F78(v11);
    v14 = v13;
    (*(v10 + 8))(v6, v9);
    v12 = v14;
  }

  return v12;
}

id sub_4758()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_478C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___ATSLoggingProvider_logger] = 0;
  *&v0[OBJC_IVAR___ATSLoggingProvider_streamFlags] = 615;
  *&v0[OBJC_IVAR___ATSLoggingProvider_predicate] = 0;
  v0[OBJC_IVAR___ATSLoggingProvider_shouldRedactContent] = 0;
  *&v0[OBJC_IVAR___ATSLoggingProvider_recordingLayerOptions] = 0;
  *&v0[OBJC_IVAR___ATSLoggingProvider_modifiedCategories] = _swiftEmptyArrayStorage;
  v2 = OBJC_IVAR___ATSLoggingProvider_archivePath;
  v3 = sub_9FB8();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v0[OBJC_IVAR___ATSLoggingProvider_requiresSignpost] = 2;
  v4 = &v0[OBJC_IVAR___ATSLoggingProvider_resolvedFilterPredicateString];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR___ATSLoggingProvider_initializationError];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = -1;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_48D0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_49B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_9F28();
  v7 = v6;

  v3(v5, v7);
  sub_8D4C(v5, v7);
}

uint64_t sub_4A38(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = sub_9F28();
  v9 = v8;

  v5(v7, v9, a3);
  sub_8D4C(v7, v9);
}

unint64_t sub_4AD4(uint64_t a1, uint64_t a2)
{
  sub_A228();
  sub_A058();
  v4 = sub_A248();

  return sub_4B4C(a1, a2, v4);
}

unint64_t sub_4B4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_A1B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_4C04(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
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

  sub_A168();
LABEL_9:
  result = sub_A158();
  *v2 = result;
  return result;
}

uint64_t sub_4CA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_62F4(&qword_14F80, &qword_B118);
  v37 = v4;
  result = sub_A188();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_A228();
      sub_A058();
      result = sub_A248();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_4F64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_62F4(&qword_14F68, &qword_B108);
  v34 = v4;
  result = sub_A188();
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

        swift_unknownObjectRetain();
      }

      sub_A228();
      sub_A058();
      result = sub_A248();
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

uint64_t sub_520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_4AD4(a3, a4);
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
      sub_4CA4(v18, a5 & 1);
      v13 = sub_4AD4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_A1C8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_5394();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_5394()
{
  v1 = v0;
  sub_62F4(&qword_14F80, &qword_B118);
  v2 = *v0;
  v3 = sub_A178();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_550C()
{
  v1 = v0;
  sub_62F4(&qword_14F68, &qword_B108);
  v2 = *v0;
  v3 = sub_A178();
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

        result = swift_unknownObjectRetain();
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

char *sub_567C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_569C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_569C(char *result, int64_t a2, char a3, char *a4)
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
    sub_62F4(&qword_14F78, &qword_B110);
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

uint64_t sub_57A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_A168();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_A168();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_8DA0(&qword_14FD0, &qword_14FC8, &unk_B140, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_62F4(&qword_14FC8, &unk_B140);
            v9 = sub_595C(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_8DE8(0, &qword_14FC0, OSLogPreferencesCategory_ptr);
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

void (*sub_595C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_A148();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_59DC;
  }

  __break(1u);
  return result;
}

uint64_t sub_59E4(uint64_t a1)
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

unint64_t sub_5A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_62F4(&qword_14F80, &qword_B118);
    v3 = sub_A198();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_4AD4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_5B30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_62F4(&qword_14F88, &qword_B120);
    v3 = sub_A198();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_4AD4(v5, v6);
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

unint64_t sub_5C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_62F4(&qword_14F68, &qword_B108);
    v3 = sub_A198();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_4AD4(v5, v6);
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

uint64_t sub_5D38(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___ATSLoggingProvider_logger) = a1;
  swift_unknownObjectRelease();
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v55 = (v2 + OBJC_IVAR___ATSLoggingProvider_initializationError);
  v54 = OBJC_IVAR___ATSLoggingProvider_archivePath;
  v59 = v2;
  v8 = (v2 + OBJC_IVAR___ATSLoggingProvider_resolvedFilterPredicateString);
  v50 = OBJC_IVAR___ATSLoggingProvider_shouldRedactContent;
  v51 = OBJC_IVAR___ATSLoggingProvider_requiresSignpost;
  v52 = OBJC_IVAR___ATSLoggingProvider_predicate;
  v56 = OBJC_IVAR___ATSLoggingProvider_recordingLayerOptions;
  v57 = OBJC_IVAR___ATSLoggingProvider_streamFlags;
  swift_unknownObjectRetain();
  v58 = a2;

  v53 = v8;
  swift_beginAccess();
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v9 << 10) | (16 * v12);
    v14 = (*(v58 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v58 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];
    swift_bridgeObjectRetain_n();

    v20._rawValue = &off_10730;
    v60._countAndFlagsBits = v16;
    v60._object = v15;
    v21 = sub_A1A8(v20, v60);

    if (v21 > 4)
    {
      if (v21 <= 6)
      {
        if (v21 == 5)
        {

          v34 = *(v59 + v56);
          if ((v34 & 1) == 0)
          {
            v32 = v34 | 1;
            goto LABEL_37;
          }
        }

        else
        {

          v31 = *(v59 + v56);
          if ((v31 & 2) == 0)
          {
            v32 = v31 | 2;
            goto LABEL_37;
          }
        }
      }

      else if (v21 == 7)
      {

        v35 = *(v59 + v56);
        if ((v35 & 4) == 0)
        {
          v32 = v35 | 4;
LABEL_37:
          *(v59 + v56) = v32;
        }
      }

      else if (v21 == 8 || v21 == 9)
      {
      }

      else
      {
LABEL_39:

        v39 = v55;
        v40 = *v55;
        v41 = v55[1];
        *v55 = v16;
        v39[1] = v15;
        v42 = *(v39 + 16);
        *(v39 + 16) = 0;
        sub_7C50(v40, v41, v42);
      }
    }

    else if (v21 <= 1)
    {
      if (v21)
      {
        if (v21 != 1)
        {
          goto LABEL_39;
        }

        v28 = *(v59 + v51);
        if (v28 != 2 && (v28 & 1) != 0)
        {
LABEL_45:
          sub_633C();
          swift_allocError();
          *v49 = 0xD000000000000057;
          *(v49 + 8) = 0x800000000000BB40;
          *(v49 + 16) = 2;
          swift_willThrow();
        }

        v29 = *(v59 + v57);
        if ((v29 & 0x20) != 0)
        {
          v30 = v29 & 0xFFFFFFFFFFFFFFDFLL;
          goto LABEL_30;
        }
      }

      else
      {

        v33 = *(v59 + v57);
        if ((v33 & 0x200) != 0)
        {
          v30 = v33 & 0xFFFFFFFFFFFFFDFFLL;
LABEL_30:
          *(v59 + v57) = v30;
        }
      }
    }

    else if (v21 == 2)
    {

      if (&_SignpostSupportAllowlistedStringSetForCurrentDevice)
      {
        *(v59 + v50) = 1;
      }

      else
      {
        v43 = v55;
        v44 = *v55;
        v45 = v55[1];
        *v55 = 0;
        v43[1] = 0;
        v46 = *(v43 + 16);
        *(v43 + 16) = 3;
        sub_7C50(v44, v45, v46);
      }
    }

    else
    {

      if (v21 == 3)
      {
        v36 = v53;
        *v53 = v18;
        v36[1] = v19;

        sub_8DE8(0, &qword_14FD8, NSPredicate_ptr);
        v37 = sub_A0D8();

        v38 = *(v59 + v52);
        *(v59 + v52) = v37;
      }

      else
      {
        v22 = sub_62F4(&qword_14D38, qword_ABB0);
        __chkstk_darwin(v22 - 8);
        v24 = &v50 - v23;
        sub_9FC8();
        v25 = sub_9FB8();
        (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
        v26 = v59;
        v27 = v54;
        swift_beginAccess();
        sub_8CE4(v24, v26 + v27, &qword_14D38, qword_ABB0);
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v11 >= v10)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  if ((*(v59 + v57) & 0x220) == 0x200)
  {
    sub_633C();
    swift_allocError();
    *v48 = xmmword_AB70;
    *(v48 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_62F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_633C()
{
  result = qword_14D40;
  if (!qword_14D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14D40);
  }

  return result;
}

BOOL sub_63A0(uint64_t a1, uint64_t a2)
{
  v3 = ktrace_chunk_tag() - 32787;
  if (v3 >= 0xFFFFFFFE)
  {
    swift_beginAccess();
    *(v2 + 16) = 1;
  }

  return v3 < 0xFFFFFFFE;
}

uint64_t sub_6404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_641C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void sub_6434()
{
  v1 = OBJC_IVAR___ATSLoggingProvider_recordingLayerOptions;
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR___ATSLoggingProvider_recordingLayerOptions);
  if (v3)
  {
    v4 = objc_allocWithZone(OSLogPreferencesSubsystem);
    v5 = sub_A028();
    v6 = [v4 initWithName:v5];

    v7 = objc_allocWithZone(OSLogPreferencesCategory);
    v8 = v6;
    v9 = sub_A028();
    v10 = [v7 initWithName:v9 subsystem:v8];

    v11 = objc_allocWithZone(OSLogPreferencesCategory);
    v12 = v8;
    v13 = sub_A028();
    v14 = [v11 initWithName:v13 subsystem:v12];

    [v10 setSignpostEnabled:1];
    [v10 setSignpostPersisted:1];
    [v14 setSignpostEnabled:1];
    [v14 setSignpostPersisted:1];
    sub_62F4(&qword_14F60, &qword_B100);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AB80;
    *(inited + 32) = v10;
    *(inited + 40) = v14;
    swift_beginAccess();
    v16 = v10;
    v17 = v14;
    sub_2220(inited);
    swift_endAccess();

    v3 = *(v2 + v1);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v18 = objc_allocWithZone(OSLogPreferencesSubsystem);
  v19 = sub_A028();
  v20 = [v18 initWithName:v19];

  v21 = objc_allocWithZone(OSLogPreferencesCategory);
  v22 = v20;
  v23 = sub_A028();
  v24 = [v21 initWithName:v23 subsystem:v22];

  [v24 setSignpostEnabled:1];
  [v24 setSignpostPersisted:1];
  v25 = OBJC_IVAR___ATSLoggingProvider_modifiedCategories;
  swift_beginAccess();
  v26 = v24;
  sub_A088();
  if (*(&dword_10 + (*(v2 + v25) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v25) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_A0A8();
  }

  sub_A0B8();
  swift_endAccess();

  if ((*(v2 + v1) & 4) != 0)
  {
LABEL_9:
    v27 = objc_allocWithZone(OSLogPreferencesSubsystem);
    v28 = sub_A028();
    v29 = [v27 initWithName:v28];

    v30 = objc_allocWithZone(OSLogPreferencesCategory);
    v31 = v29;
    v32 = sub_A028();
    v33 = [v30 initWithName:v32 subsystem:v31];

    v89 = v31;
    [v33 setSignpostEnabled:1];
    [v33 setSignpostPersisted:1];
    v34 = OBJC_IVAR___ATSLoggingProvider_modifiedCategories;
    swift_beginAccess();
    v35 = v33;
    sub_A088();
    if (*(&dword_10 + (*(v2 + v34) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v34) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_A0A8();
    }

    sub_A0B8();
    swift_endAccess();
    v36 = objc_allocWithZone(OSLogPreferencesSubsystem);
    v37 = sub_A028();
    v38 = [v36 initWithName:v37];

    v39 = objc_allocWithZone(OSLogPreferencesCategory);
    v40 = v38;
    v88 = v35;
    v41 = sub_A028();
    v42 = [v39 initWithName:v41 subsystem:v40];

    v43 = objc_allocWithZone(OSLogPreferencesCategory);
    v44 = v40;
    v45 = sub_A028();
    v46 = [v43 initWithName:v45 subsystem:v44];

    v47 = objc_allocWithZone(OSLogPreferencesCategory);
    v48 = v44;
    v49 = sub_A028();
    v50 = [v47 initWithName:v49 subsystem:v48];

    [v42 setSignpostEnabled:1];
    [v42 setSignpostPersisted:1];
    v84 = v46;
    [v46 setSignpostEnabled:1];
    [v46 setSignpostPersisted:1];
    v83 = v50;
    [v50 setSignpostEnabled:1];
    [v50 setSignpostPersisted:1];
    v51 = objc_allocWithZone(OSLogPreferencesCategory);
    v52 = v48;
    v53 = sub_A028();
    v54 = [v51 initWithName:v53 subsystem:v52];

    v55 = objc_allocWithZone(OSLogPreferencesCategory);
    v86 = v52;
    v56 = sub_A028();
    v57 = [v55 initWithName:v56 subsystem:v86];

    v81 = v54;
    [v54 setSignpostEnabled:1];
    [v54 setSignpostPersisted:1];
    v80 = v57;
    [v57 setSignpostEnabled:1];
    [v57 setSignpostPersisted:1];
    v58 = objc_allocWithZone(OSLogPreferencesSubsystem);
    v59 = sub_A028();
    v60 = [v58 initWithName:v59];

    v61 = objc_allocWithZone(OSLogPreferencesCategory);
    v62 = v60;
    v63 = sub_A028();
    v64 = v61;
    v65 = v62;
    v82 = v62;
    v66 = [v64 initWithName:v63 subsystem:v62];

    [v66 setSignpostEnabled:1];
    [v66 setSignpostPersisted:1];
    v67 = objc_allocWithZone(OSLogPreferencesSubsystem);
    v68 = sub_A028();
    v69 = [v67 initWithName:v68];

    v70 = objc_allocWithZone(OSLogPreferencesCategory);
    v79 = v69;
    v71 = sub_A028();
    v72 = [v70 initWithName:v71 subsystem:v79];

    [v72 setSignpostEnabled:1];
    [v72 setSignpostPersisted:1];
    sub_62F4(&qword_14F60, &qword_B100);
    v73 = swift_initStackObject();
    *(v73 + 16) = xmmword_AB90;
    *(v73 + 32) = v42;
    *(v73 + 40) = v84;
    *(v73 + 48) = v83;
    *(v73 + 56) = v81;
    *(v73 + 64) = v80;
    *(v73 + 72) = v66;
    *(v73 + 80) = v72;
    swift_beginAccess();
    v87 = v42;
    v85 = v84;
    v74 = v83;
    v75 = v81;
    v76 = v80;
    v77 = v66;
    v78 = v72;
    sub_2220(v73);
    swift_endAccess();
  }
}

uint64_t sub_6E74()
{
  v1 = OBJC_IVAR___ATSLoggingProvider_modifiedCategories;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_A168();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_A148();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 reset];
    }
  }

  return result;
}

uint64_t sub_6F60(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    goto LABEL_26;
  }

  v3 = a3;
  v4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
    goto LABEL_25;
  }

  v5 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
LABEL_26:
    v107 = 0;
    v7 = 0;
    v8 = 0;
LABEL_27:
    *(v94 + OBJC_IVAR___ATSLoggingProvider_requiresSignpost) = v107 & 1;
    v21 = sub_5A1C(_swiftEmptyArrayStorage);
    v106 = v8;
    v101 = v7;
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = sub_5B30(_swiftEmptyArrayStorage);
    }

    v108 = v22 + 64;
    v23 = 1 << *(v22 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v22 + 64);
    v104 = (v23 + 63) >> 6;

    v26 = 0;
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v25)
          {
            while (1)
            {
              v27 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                __break(1u);
                goto LABEL_80;
              }

              if (v27 >= v104)
              {
                break;
              }

              v25 = *(v108 + 8 * v27);
              ++v26;
              if (v25)
              {
                v26 = v27;
                goto LABEL_38;
              }
            }

            if (v106)
            {
              if (*(v21 + 16))
              {
                v83 = sub_4AD4(0x7461636964657270, 0xE900000000000065);
                v84 = v101;
                if (v85)
                {
                  v86 = (*(v21 + 56) + 16 * v83);
                  v88 = *v86;
                  v87 = v86[1];

                  v118._countAndFlagsBits = v88;
                  v118._object = v87;
                  sub_A078(v118);

                  v119._countAndFlagsBits = 0x20524F2029;
                  v119._object = 0xE500000000000000;
                  sub_A078(v119);
                  v120._countAndFlagsBits = v101;
                  v120._object = v106;
                  sub_A078(v120);

                  v84 = 40;
                  v106 = 0xE100000000000000;
                }
              }

              else
              {
                v84 = v101;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_520C(v84, v106, 0x7461636964657270, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
            }

            sub_5D38(a1, v21);
          }

LABEL_38:
          v28 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v29 = v28 | (v26 << 6);
          v30 = *(*(v22 + 56) + 8 * v29);
          v31 = v30[2];
        }

        while (!v31);
        v32 = (*(v22 + 48) + 16 * v29);
        v33 = v32[1];
        if (v31 == 1)
        {
          break;
        }

        if (*v32 == 0x7461636964657270 && v33 == 0xE900000000000065)
        {
          v35 = 0x7461636964657270;
LABEL_51:
          v93 = v35;
          v97 = v22;
          v91 = v21;
          v99 = v33;

          sub_567C(0, v31, 0);
          v52 = (v30 + 5);
          do
          {
            v53 = *(v52 - 1);
            v54 = *v52;

            v116._countAndFlagsBits = v53;
            v116._object = v54;
            sub_A078(v116);
            v117._countAndFlagsBits = 41;
            v117._object = 0xE100000000000000;
            sub_A078(v117);

            v56 = _swiftEmptyArrayStorage[2];
            v55 = _swiftEmptyArrayStorage[3];
            if (v56 >= v55 >> 1)
            {
              sub_567C((v55 > 1), v56 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v56 + 1;
            v57 = &_swiftEmptyArrayStorage[2 * v56];
            v57[4] = 40;
            v57[5] = 0xE100000000000000;
            v52 += 2;
            --v31;
          }

          while (v31);

          sub_62F4(&qword_14F58, &qword_B0F8);
          sub_8DA0(&qword_14F70, &qword_14F58, &qword_B0F8, &protocol conformance descriptor for [A]);
          v58 = sub_A018();
          v60 = v59;

          v61 = swift_isUniquelyReferenced_nonNull_native();
          v62 = sub_4AD4(v93, v99);
          v64 = v91[2];
          v65 = (v63 & 1) == 0;
          v48 = __OFADD__(v64, v65);
          v66 = v64 + v65;
          if (v48)
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          v67 = v63;
          if (v91[3] >= v66)
          {
            if ((v61 & 1) == 0)
            {
              v77 = v62;
              sub_5394();
              v62 = v77;
            }
          }

          else
          {
            sub_4CA4(v66, v61);
            v62 = sub_4AD4(v93, v99);
            if ((v67 & 1) != (v68 & 1))
            {
              goto LABEL_85;
            }
          }

          v22 = v97;
          if (v67)
          {
            v69 = v62;

            v21 = v91;
            v70 = (v91[7] + 16 * v69);
            *v70 = v58;
            v70[1] = v60;
          }

          else
          {
            v21 = v91;
            v91[(v62 >> 6) + 8] |= 1 << v62;
            v71 = (v91[6] + 16 * v62);
            *v71 = v93;
            v71[1] = v99;
            v72 = (v91[7] + 16 * v62);
            *v72 = v58;
            v72[1] = v60;
            v73 = v91[2];
            v48 = __OFADD__(v73, 1);
            v74 = v73 + 1;
            if (v48)
            {
              goto LABEL_82;
            }

            v91[2] = v74;
          }
        }

        else
        {
          v35 = *v32;
          if (sub_A1B8())
          {
            goto LABEL_51;
          }
        }
      }

      v36 = v21;
      v37 = *v32;
      v96 = v22;
      v98 = v30[4];
      v38 = v30[5];
      v39 = v32[1];

      v40 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v36;
      v41 = v37;
      v42 = v37;
      v43 = v39;
      v44 = sub_4AD4(v42, v39);
      v46 = v36[2];
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        goto LABEL_81;
      }

      v50 = v45;
      if (v36[3] < v49)
      {
        break;
      }

      if (v40)
      {
        goto LABEL_66;
      }

      v78 = v44;
      sub_5394();
      v44 = v78;
      if (v50)
      {
LABEL_67:
        v75 = v44;

        v21 = v110;
        v76 = (v110[7] + 16 * v75);
        *v76 = v98;
        v76[1] = v38;

        goto LABEL_71;
      }

LABEL_69:
      v36[(v44 >> 6) + 8] |= 1 << v44;
      v79 = (v36[6] + 16 * v44);
      *v79 = v41;
      v79[1] = v43;
      v80 = (v36[7] + 16 * v44);
      *v80 = v98;
      v80[1] = v38;
      v81 = v36[2];
      v48 = __OFADD__(v81, 1);
      v82 = v81 + 1;
      if (v48)
      {
        goto LABEL_83;
      }

      v21 = v36;
      v36[2] = v82;
LABEL_71:
      v22 = v96;
    }

    sub_4CA4(v49, v40);
    v44 = sub_4AD4(v41, v43);
    if ((v50 & 1) != (v51 & 1))
    {
      goto LABEL_85;
    }

LABEL_66:
    if (v50)
    {
      goto LABEL_67;
    }

    goto LABEL_69;
  }

LABEL_4:
  v100 = v4;
  v6 = 0;
  v107 = 0;
  v7 = 0;
  v8 = 0;
  v4 = v3 & 0xC000000000000001;
  v95 = v3;
  v9 = &ATSLoggingProvider__prots;
  v103 = v3 & 0xC000000000000001;
  v105 = v5;
  while (1)
  {
    if (v4)
    {
      v10 = sub_A148();
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v6 >= *(v100 + 16))
      {
        goto LABEL_24;
      }

      v10 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v5 = sub_A168();
        if (!v5)
        {
          goto LABEL_26;
        }

        goto LABEL_4;
      }
    }

    if ([v10 v9[206].count])
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_6:
    ++v6;
    if (v11 == v5)
    {
      goto LABEL_27;
    }
  }

  swift_getObjectType();
  v12 = swift_conformsToProtocol2();
  if (!v12 || !v10)
  {
    sub_A138(33);

    swift_getObjectType();
    v114._countAndFlagsBits = sub_A258();
    sub_A078(v114);

    v20 = sub_A028();

    [a1 warnWithMessage:v20];
    swift_unknownObjectRelease();

LABEL_22:
    v4 = v103;
    v5 = v105;
    v9 = &ATSLoggingProvider__prots;
    goto LABEL_6;
  }

  v13 = v12;
  v14 = v7;
  v15 = v8;
  ObjectType = swift_getObjectType();
  v17 = *(v13 + 16);
  swift_unknownObjectRetain();
  v18 = v17(ObjectType, v13);
  v19._countAndFlagsBits = (*(v13 + 8))(ObjectType, v13);
  if (v19._object)
  {
    v107 |= v18;
    if (v15)
    {
      sub_A078(v19);

      v112._countAndFlagsBits = 41;
      v112._object = 0xE100000000000000;
      sub_A078(v112);
      v109 = v14;
      v111 = v15;

      v113._countAndFlagsBits = 0x2820524F20;
      v113._object = 0xE500000000000000;
      sub_A078(v113);

      swift_unknownObjectRelease_n();
    }

    else
    {
      v109 = 40;
      v111 = 0xE100000000000000;
      sub_A078(v19);

      v115._countAndFlagsBits = 41;
      v115._object = 0xE100000000000000;
      sub_A078(v115);
      swift_unknownObjectRelease_n();
    }

    v7 = v109;
    v8 = v111;
    v3 = v95;
    goto LABEL_22;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_A1C8();
  __break(1u);
  return result;
}

void *sub_7910(uint64_t a1)
{
  sub_62F4(&qword_14F60, &qword_B100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_ABA0;
  type metadata accessor for MetalFramePacingDataCategory();
  *(inited + 32) = sub_9084(a1);
  v3 = inited + 32;
  type metadata accessor for HangsDataCategory();
  *(inited + 40) = sub_9238(a1);
  type metadata accessor for ScrollingDataCategory();
  *(inited + 48) = sub_941C(a1);
  type metadata accessor for AppLaunchDataCategory();
  *(inited + 56) = sub_95F8(a1);
  type metadata accessor for InteractionTrackingDataCategory();
  *(inited + 64) = sub_97C0(a1);
  type metadata accessor for PerfPowerMetricsDataCategory();
  *(inited + 72) = sub_997C(a1);
  v4 = sub_5C34(_swiftEmptyArrayStorage);
  v5 = 0;
  v6 = &ATSLoggingProvider__prots;
LABEL_2:
  v7 = v5;
  while ((inited & 0xC000000000000001) != 0)
  {
    v8 = sub_A148();
    v5 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_24;
    }

LABEL_6:
    if ([v8 isAvailable])
    {
      v27 = v3;
      v9 = [v8 v6[207].count];
      v10 = sub_A048();
      v28 = v11;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_4AD4(v10, v28);
      v15 = v4[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_26;
      }

      v19 = v14;
      if (v4[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = v13;
          sub_550C();
          v13 = v22;
          v6 = &ATSLoggingProvider__prots;
          if (v19)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }
      }

      else
      {
        sub_4F64(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_4AD4(v10, v28);
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_28;
        }
      }

      v6 = &ATSLoggingProvider__prots;
      if (v19)
      {
LABEL_18:
        v21 = v13;

        *(v4[7] + 8 * v21) = v8;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_22;
      }

LABEL_20:
      v4[(v13 >> 6) + 8] |= 1 << v13;
      v23 = (v4[6] + 16 * v13);
      *v23 = v10;
      v23[1] = v28;
      *(v4[7] + 8 * v13) = v8;
      swift_unknownObjectRelease();
      v24 = v4[2];
      v17 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v17)
      {
        goto LABEL_27;
      }

      v4[2] = v25;
LABEL_22:
      v3 = v27;
      if (v5 != 6)
      {
        goto LABEL_2;
      }

LABEL_23:
      swift_setDeallocating();
      swift_arrayDestroy();
      return v4;
    }

    swift_unknownObjectRelease();
    ++v7;
    if (v5 == 6)
    {
      goto LABEL_23;
    }
  }

  if (v7 >= *(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_25;
  }

  v8 = *(inited + 8 * v7 + 32);
  swift_unknownObjectRetain();
  v5 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_6;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_A1C8();
  __break(1u);
  return result;
}

uint64_t sub_7C50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_7C64(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_7C64(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_7C80(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_7C9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_7CB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_7CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_7D3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for LoggingProvider(uint64_t a1)
{
  result = qword_15230;
  if (!qword_15230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7DB8(uint64_t a1)
{
  sub_7E98(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_7E98(uint64_t a1)
{
  if (!qword_14E60)
  {
    sub_9FB8();
    v1 = sub_A108();
    if (!v2)
    {
      atomic_store(v1, &qword_14E60);
    }
  }
}

void type metadata accessor for OSLogEventStreamFlags()
{
  if (!qword_14EC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_14EC8);
    }
  }
}

unint64_t sub_8074()
{
  result = qword_15640;
  if (!qword_15640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15640);
  }

  return result;
}

unint64_t sub_80CC()
{
  result = qword_15648[0];
  if (!qword_15648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_15648);
  }

  return result;
}

unint64_t sub_8124()
{
  result = qword_156D0;
  if (!qword_156D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_156D0);
  }

  return result;
}

unint64_t sub_817C()
{
  result = qword_156D8[0];
  if (!qword_156D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_156D8);
  }

  return result;
}

uint64_t sub_81D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_821C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8254()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_828C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_82CC(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_beginAccess();
  v7 = *(v5 + 16);
  *(v5 + 16) = a1;
  v8 = a1;

  swift_beginAccess();
  *(v6 + 16) = a2;
  swift_errorRetain();
}

uint64_t sub_835C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8394(uint64_t result, unint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
LABEL_14:
      v12 = result;
      if (result <= result >> 32)
      {
        v13 = result;
        v14 = sub_9E78();
        if (v14)
        {
          v15 = v14;
          result = sub_9E98();
          if (!__OFSUB__(v12, result))
          {
            v16 = v12 - result + v15;
            result = sub_9E88();
            if (!v16)
            {
              return result;
            }

            if (!__OFSUB__(HIDWORD(v13), v13))
            {
              result = ktrace_file_append_chunk();
              if (result)
              {
                return result;
              }

              v11 = *(v3 + OBJC_IVAR___ATSLoggingProvider_logger);
              if (v11)
              {
                goto LABEL_21;
              }

LABEL_35:
              __break(1u);
              return result;
            }

            goto LABEL_33;
          }

          goto LABEL_31;
        }

        return sub_9E88();
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v19 = result;
    LOWORD(v20) = a2;
    BYTE2(v20) = BYTE2(a2);
    BYTE3(v20) = BYTE3(a2);
    BYTE4(v20) = BYTE4(a2);
    BYTE5(v20) = BYTE5(a2);
    result = ktrace_file_append_chunk();
    if (result)
    {
      return result;
    }

    LODWORD(v4) = OBJC_IVAR___ATSLoggingProvider_logger;
    v5 = *(v3 + OBJC_IVAR___ATSLoggingProvider_logger);
    if (v5)
    {
LABEL_26:
      swift_unknownObjectRetain();
      v18 = sub_A028();
      [v5 failWithReason:{v18, v19, v20}];

      return swift_unknownObjectRelease();
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    *(&v20 - 2) = 0;
    v19 = 0;
    result = ktrace_file_append_chunk();
    if (result)
    {
      return result;
    }

    v5 = *(v3 + OBJC_IVAR___ATSLoggingProvider_logger);
    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_26;
  }

  v6 = result;
  v7 = *(result + 16);
  v8 = sub_9E78();
  if (!v8)
  {
    return sub_9E88();
  }

  v9 = v8;
  result = sub_9E98();
  if (__OFSUB__(v7, result))
  {
    goto LABEL_30;
  }

  v10 = v7 - result + v9;
  result = sub_9E88();
  if (!v10)
  {
    return result;
  }

  if (__OFSUB__(*(v6 + 24), *(v6 + 16)))
  {
    goto LABEL_32;
  }

  result = ktrace_file_append_chunk();
  if (result)
  {
    return result;
  }

  v11 = *(v3 + OBJC_IVAR___ATSLoggingProvider_logger);
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_21:
  swift_unknownObjectRetain();
  v17 = sub_A028();
  [v11 failWithReason:v17];

  return swift_unknownObjectRelease();
}

uint64_t sub_869C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_86DC(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if (a3 != 5)
  {
LABEL_7:
    v7 = *(v4 + OBJC_IVAR___ATSLoggingProvider_logger);
    if (v7)
    {
      swift_unknownObjectRetain();
      v8 = sub_A028();

      [v7 failWithReason:v8];

LABEL_9:
      swift_unknownObjectRelease();
      return sub_A0F8();
    }

    goto LABEL_36;
  }

  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_27;
    }

    v9 = result;
    v10 = *(result + 16);
    v11 = sub_9E78();
    if (!v11)
    {
LABEL_30:
      sub_9E88();
      return sub_A0F8();
    }

    v12 = v11;
    result = sub_9E98();
    if (__OFSUB__(v10, result))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v13 = v10 - result + v12;
    result = sub_9E88();
    if (!v13)
    {
      return sub_A0F8();
    }

    if (__OFSUB__(*(v9 + 24), *(v9 + 16)))
    {
      goto LABEL_34;
    }

    result = ktrace_file_append_chunk();
    if (result)
    {
      return sub_A0F8();
    }

    v6 = *(v4 + OBJC_IVAR___ATSLoggingProvider_logger);
    if (v6)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v5)
  {
    result = ktrace_file_append_chunk();
    if (result)
    {
      return sub_A0F8();
    }

    v6 = *(v4 + OBJC_IVAR___ATSLoggingProvider_logger);
    if (!v6)
    {
      __break(1u);
      goto LABEL_7;
    }

LABEL_29:
    swift_unknownObjectRetain();
    v19 = sub_A028();
    [v6 failWithReason:v19];

    goto LABEL_9;
  }

  v14 = result;
  if (result > result >> 32)
  {
    __break(1u);
    goto LABEL_32;
  }

  v15 = result;
  v16 = sub_9E78();
  if (!v16)
  {
    goto LABEL_30;
  }

  v17 = v16;
  result = sub_9E98();
  if (__OFSUB__(v14, result))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = v14 - result + v17;
  result = sub_9E88();
  if (!v18)
  {
    return sub_A0F8();
  }

  if (__OFSUB__(HIDWORD(v15), v15))
  {
    goto LABEL_35;
  }

  if (ktrace_file_append_chunk())
  {
    return sub_A0F8();
  }

  v6 = *(v4 + OBJC_IVAR___ATSLoggingProvider_logger);
  if (v6)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_27:
  result = ktrace_file_append_chunk();
  if (result)
  {
    return sub_A0F8();
  }

  v6 = *(v4 + OBJC_IVAR___ATSLoggingProvider_logger);
  if (v6)
  {
    goto LABEL_29;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_8B04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_8B14(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_8B24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_62F4(&qword_14FA0, &qword_B130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8BD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_62F4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_8C3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_62F4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_8C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_8CE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_62F4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_8D4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_8DA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_81D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8DE8(uint64_t a1, unint64_t *a2, void *a3)
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

Swift::Int sub_8EA0(unsigned __int8 a1)
{
  sub_A228();
  sub_A238(a1);
  return sub_A248();
}

Swift::Int sub_8EFC()
{
  v1 = *v0;
  sub_A228();
  sub_A238(v1);
  return sub_A248();
}

Swift::Int sub_8F70(uint64_t a1)
{
  v2 = *v1;
  sub_A228();
  sub_A238(v2);
  return sub_A248();
}

uint64_t sub_8FB4()
{
  v0 = ktrace_machine_sw_platform();
  if (v0 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x4050203010006uLL >> (8 * v0));
  }
}

unint64_t sub_8FF8()
{
  if (ktrace_machine_sw_platform() - 1 >= 2)
  {
    return 0;
  }

  else
  {
    return 0xD000000000000024;
  }
}

unint64_t sub_9194()
{
  v0 = ktrace_machine_sw_platform();
  if ((v0 - 1) < 4 || v0 == 6)
  {
    return 0xD000000000000044;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_9344()
{
  if (ktrace_machine_sw_platform() - 1 > 1)
  {
    return 0;
  }

  v0 = sub_8FB4();
  if (v0 != 1)
  {
    if (!v0)
    {
      return 0xD00000000000003CLL;
    }

    return 0;
  }

  return 0xD00000000000003BLL;
}

unint64_t sub_9530()
{
  v0 = ktrace_machine_sw_platform();
  if ((v0 - 1) >= 4 && v0 != 6)
  {
    return 0;
  }

  if ((sub_8FB4() - 5) >= 2u)
  {
    return 0xD000000000000053;
  }

  return 0;
}

unint64_t sub_9710()
{
  if (ktrace_machine_sw_platform() != 2)
  {
    return 0;
  }

  if (sub_8FB4() == 1)
  {
    return 0xD000000000000056;
  }

  return 0;
}

unint64_t sub_98CC()
{
  if (ktrace_machine_sw_platform() != 2)
  {
    return 0;
  }

  if (sub_8FB4() == 1)
  {
    return 0xD00000000000004ELL;
  }

  return 0;
}

id sub_9988(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_99EC(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[*a2] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

id sub_9A50(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&a1[*a4] = a3;
  v9.receiver = a1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

unint64_t sub_9B94()
{
  result = qword_15010;
  if (!qword_15010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15010);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Platform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}