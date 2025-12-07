uint64_t sub_100001648()
{
  v0 = sub_100001770(&qword_100010220, &qword_100009E90);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  sub_100001A84(v1);
  v4 = sub_1000097A0();
  if (sub_1000017B8(v3, 1, v4) == 1)
  {
    sub_1000017E0(v3);
    return 0;
  }

  else
  {
    v5 = sub_100009790();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  return v5;
}

uint64_t sub_100001770(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000017E0(uint64_t a1)
{
  v2 = sub_100001770(&qword_100010220, &qword_100009E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100001854(uint64_t a2@<X8>)
{
  sub_100001888();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void type metadata accessor for BPSCompletionState()
{
  if (!qword_100010228)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100010228);
    }
  }
}

__n128 sub_10000190C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001918(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100001958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000019A4(void *a1)
{
  v3 = 0;
  if ([a1 closeAndReturnError:&v3])
  {

    return _objc_retain_x1();
  }

  else
  {
    v1 = v3;
    sub_1000095F0();

    swift_willThrow();
  }
}

uint64_t sub_100001A88@<X0>(uint64_t a1@<X8>)
{
  sub_100009770();
  swift_allocObject();
  sub_100009760();
  sub_100009750();

  v2 = sub_1000097A0();

  return sub_100002104(a1, 0, 1, v2);
}

char *sub_100001B24()
{
  v1 = sub_100009870();
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009570();
  __chkstk_darwin(v4);
  v5 = sub_100001770(&qword_100010220, &qword_100009E90);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_100001A88(&v16 - v6);
  v8 = sub_1000097A0();
  if (sub_1000017B8(v7, 1, v8) == 1)
  {
    sub_1000017E0(v7);
    v9 = 0;
  }

  else
  {
    v9 = sub_100009780();
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  sub_1000095B0();
  swift_allocObject();
  sub_1000095A0();
  sub_100001770(&qword_100010230, &qword_100009FD8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100009FC0;
  sub_100009560();
  sub_100009550();
  v17 = v10;
  sub_100002064(&qword_100010238, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100001770(&qword_100010240, &qword_100009FE0);
  sub_100001E80();
  sub_100009910();
  sub_100009580();
  v17 = v9;
  sub_100001770(&qword_100010250, &qword_100009FE8);
  sub_100001F2C();
  v11 = sub_100009590();
  if (v0)
  {
  }

  else
  {
    v13 = v11;
    v14 = v12;

    sub_100009860();
    v3 = sub_100009850();
    sub_1000020AC(v13, v14);
  }

  return v3;
}

unint64_t sub_100001E80()
{
  result = qword_100010248;
  if (!qword_100010248)
  {
    sub_100001EE4(&qword_100010240, &qword_100009FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010248);
  }

  return result;
}

uint64_t sub_100001EE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001F2C()
{
  result = qword_100010258;
  if (!qword_100010258)
  {
    sub_100001EE4(&qword_100010250, &qword_100009FE8);
    sub_100001FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010258);
  }

  return result;
}

unint64_t sub_100001FB0()
{
  result = qword_100010260;
  if (!qword_100010260)
  {
    sub_100001EE4(&qword_100010268, &qword_100009FF0);
    sub_100002064(&qword_100010270, &type metadata accessor for UIContextElement, &protocol conformance descriptor for UIContextElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010260);
  }

  return result;
}

uint64_t sub_100002064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000020AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t getEnumTagSinglePayload for BiomeEventAttachmentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BiomeEventAttachmentError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000022A0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000022F0()
{
  result = qword_100010278;
  if (!qword_100010278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010278);
  }

  return result;
}

Swift::Int sub_10000237C(unsigned __int8 a1)
{
  sub_1000099E0();
  sub_1000099F0(a1);
  return sub_100009A00();
}

Swift::Int sub_1000023E0(uint64_t a1)
{
  v2 = *v1;
  sub_1000099E0();
  sub_1000099F0(v2);
  return sub_100009A00();
}

uint64_t sub_100002434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v28 = a3;
  v29 = a1;
  v3 = sub_1000096D0();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009640();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - v11;
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_100009630();
  sub_100009620();
  v18 = *(v7 + 8);
  v34 = v6;
  v18(v12, v6);
  sub_1000096C0();
  sub_1000096B0();
  (*(v32 + 8))(v5, v33);
  v19 = v31;
  sub_100009620();

  v20 = [v15 defaultManager];
  sub_100009600(v21);
  v23 = v22;
  v35 = 0;
  LOBYTE(v5) = [v20 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v35];

  if (v5)
  {
    v24 = v35;
    sub_100009610();
  }

  else
  {
    v27 = v35;
    sub_1000095F0();

    swift_willThrow();
  }

  v25 = v34;
  v18(v19, v34);
  return (v18)(v14, v25);
}

uint64_t sub_1000027B8@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  sub_1000096D0();
  sub_1000045D0();
  v32 = v3;
  v33 = v2;
  __chkstk_darwin(v2);
  sub_1000045E4();
  v6 = v5 - v4;
  v7 = sub_100009640();
  sub_1000045D0();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000045F4();
  v12 = __chkstk_darwin(v11);
  v14 = v31 - v13;
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  v19 = [v18 temporaryDirectory];

  sub_100009630();
  sub_100009620();
  v20 = *(v9 + 8);
  v34 = v7;
  v21 = v7;
  v22 = v20;
  v20(v14, v21);
  sub_1000096C0();
  sub_1000096B0();
  (*(v32 + 8))(v6, v33);
  sub_100009620();

  v23 = [v17 defaultManager];
  sub_100009600(v24);
  v26 = v25;
  v35 = 0;
  LOBYTE(v17) = [v23 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&v35];

  if (v17)
  {
    v27 = v35;
    sub_100009610();
  }

  else
  {
    v30 = v35;
    sub_1000095F0();

    swift_willThrow();
  }

  v28 = v34;
  v22(v1, v34);
  return (v22)(v16, v28);
}

id sub_100002B10(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v4 = sub_100001770(&qword_100010280, &unk_10000A160);
  __chkstk_darwin(v4 - 8);
  v100 = v90 - v5;
  sub_100009870();
  sub_1000045D0();
  v102 = v7;
  v103 = v6;
  __chkstk_darwin(v6);
  sub_1000045E4();
  v10 = v9 - v8;
  v11 = sub_1000097D0();
  sub_1000045D0();
  v104 = v12;
  __chkstk_darwin(v13);
  sub_1000045F4();
  __chkstk_darwin(v14);
  v105 = (v90 - v15);
  v109 = sub_100009640();
  sub_1000045D0();
  v106 = v16;
  v18 = __chkstk_darwin(v17);
  v20 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v90 - v22;
  v24 = __chkstk_darwin(v21);
  v101 = v90 - v25;
  __chkstk_darwin(v24);
  v27 = v90 - v26;
  v28 = sub_100003588();
  v29 = v107;
  sub_100002434(a1, v108, v27);
  if (v29)
  {

    return v27;
  }

  v94 = v23;
  v96 = v10;
  v93 = a1;
  v91 = v20;
  v92 = v2;
  v97 = v11;
  v98 = v28;
  v99 = 0;
  v90[1] = "genceFlow-3505.5.1\n";
  v90[0] = "ligenceFlowDiagnostics";
  sub_1000097C0();
  v30 = v106;
  v32 = v106 + 16;
  v31 = *(v106 + 16);
  v33 = v101;
  v107 = v27;
  v31(v101, v27, v109);
  v34 = sub_1000097B0();
  v35 = sub_100009900();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    v95 = v31;
    v37 = aBlock;
    *v36 = 136315138;
    sub_10000435C();
    v38 = v109;
    v39 = sub_100009990();
    v40 = v38;
    v42 = v41;
    v43 = *(v106 + 8);
    v43(v33, v40);
    v44 = sub_100008AC8(v39, v42, &aBlock);

    *(v36 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "InteractionStoreAttachment: file path: %s", v36, 0xCu);
    sub_1000043B4(v37);
    v45 = v37;
    v31 = v95;
    sub_100004610(v45);
    v46 = v36;
    v47 = v43;
    sub_100004610(v46);
  }

  else
  {

    v47 = *(v30 + 8);
    v47(v33, v109);
  }

  v48 = *(v104 + 8);
  v48(v105, v97);
  v49 = v96;
  sub_100009860();
  v50 = sub_100009840();
  v52 = v51;
  (*(v102 + 1))(v49, v103);
  v53 = v99;
  v27 = v107;
  if (v52 >> 60 == 15)
  {
    sub_10000374C();
    swift_allocError();
    *v54 = 4;
    swift_willThrow();

    v55 = v27;
LABEL_8:
    v47(v55, v109);
    return v27;
  }

  v105 = v48;
  sub_100009670();
  if (v53)
  {
    v47(v27, v109);
    sub_1000037A0(v50, v52);

    return v27;
  }

  v103 = v50;
  sub_1000037B4();
  v57 = v94;
  v95 = v31;
  v31(v94, v27, v109);
  v58 = v27;
  v27 = 1;
  v59 = sub_1000037F8(v57, 1);
  if (!v59)
  {
    sub_10000374C();
    swift_allocError();
    *v70 = 1;
    swift_willThrow();
    sub_1000037A0(v103, v52);

    v55 = v58;
    goto LABEL_8;
  }

  v60 = v59;
  v101 = v52;
  v102 = v47;
  v96 = v32;
  [v59 open];
  v61 = swift_allocObject();
  *(v61 + 16) = 1;
  v62 = swift_allocObject();
  v63 = v93;
  v64 = v108;
  *(v62 + 16) = v93;
  *(v62 + 24) = v64;
  v114 = sub_100003B14;
  v115 = v62;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_1000045C8;
  v113 = &unk_10000C998;
  v65 = _Block_copy(&aBlock);

  v66 = swift_allocObject();
  v66[2] = v61;
  v66[3] = v60;
  v66[4] = v63;
  v66[5] = v64;
  v114 = sub_100003F40;
  v115 = v66;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_1000045C8;
  v113 = &unk_10000C9E8;
  v67 = _Block_copy(&aBlock);

  v68 = v60;

  v69 = [v98 sinkWithCompletion:v65 receiveInput:v67];
  _Block_release(v67);
  _Block_release(v65);

  sub_100003F4C(93, 0xE100000000000000);
  v108 = v61;
  v99 = 0;
  v71 = v92;
  sub_1000097C0();
  v72 = v91;
  v95(v91, v107, v109);
  v73 = sub_1000097B0();
  v74 = sub_100009900();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v77 = v109;
    v78 = v76;
    aBlock = v76;
    *v75 = 136315138;
    sub_10000435C();
    v79 = sub_100009990();
    v81 = v80;
    v102(v72, v77);
    v82 = sub_100008AC8(v79, v81, &aBlock);

    *(v75 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v73, v74, "InteractionStoreAttachment: finished writing to: %s", v75, 0xCu);
    sub_1000043B4(v78);
    sub_100004610(v78);
    sub_100004610(v75);

    v83 = v92;
  }

  else
  {

    v102(v72, v109);
    v83 = v71;
  }

  v105(v83, v97);
  v84 = v100;
  v85 = v107;
  v86 = v109;
  v95(v100, v107, v109);
  sub_100002104(v84, 0, 1, v86);
  v87 = objc_allocWithZone(DEAttachmentItem);
  result = sub_10000896C(v84);
  v88 = v98;
  v89 = v101;
  if (result)
  {
    v27 = result;

    [v68 close];
    sub_1000037A0(v103, v89);

    v102(v85, v109);
    return v27;
  }

  __break(1u);
  return result;
}

id sub_100003588()
{
  v0 = sub_1000096A0();
  sub_1000045D0();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000045E4();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(BMPublisherOptions) init];
  sub_100009690();
  isa = sub_100009680().super.isa;
  (*(v2 + 8))(v6, v0);
  [v7 setStartDate:isa];

  v9 = [BiomeLibrary() IntelligenceEngine];
  swift_unknownObjectRelease();
  v10 = [v9 Interaction];
  swift_unknownObjectRelease();
  v11 = [v10 Donation];
  swift_unknownObjectRelease();
  v12 = sub_100009830();
  v13 = [v11 publisherWithUseCase:v12 options:v7];

  return v13;
}

unint64_t sub_10000374C()
{
  result = qword_100010288;
  if (!qword_100010288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010288);
  }

  return result;
}

uint64_t sub_1000037A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000020AC(result, a2);
  }

  return result;
}

unint64_t sub_1000037B4()
{
  result = qword_100010290;
  if (!qword_100010290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010290);
  }

  return result;
}

id sub_1000037F8(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100009600(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 append:a2 & 1];

  v9 = sub_100009640();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

id sub_1000038AC(void *a1)
{
  v2 = sub_1000097D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 state];
  if (result)
  {
    sub_1000097C0();
    v7 = a1;
    v8 = sub_1000097B0();
    v9 = sub_1000098F0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v15 = [v7 error];
      sub_100001770(&qword_1000102A8, &unk_10000A170);
      v12 = sub_100009880();
      v14 = sub_100008AC8(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "InteractionStoreAttachment: failed to fully publish events: %s", v10, 0xCu);
      sub_1000043B4(v11);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_100003ADC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100003B34(void *a1, uint64_t a2)
{
  v4 = sub_1000097D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    sub_100003F4C(44, 0xE100000000000000);
  }

  swift_beginAccess();
  *(a2 + 16) = 0;
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    v25 = v4;
    v10 = [v8 jsonDictionary];
    sub_100009810();

    v11 = objc_opt_self();
    isa = sub_100009800().super.isa;

    v26[0] = 0;
    v13 = [v11 dataWithJSONObject:isa options:3 error:v26];

    v14 = v26[0];
    if (v13)
    {
      v15 = sub_100009650();
      v17 = v16;

      sub_10000408C(v15, v17);
      sub_1000020AC(v15, v17);
    }

    else
    {
      v18 = v14;
      sub_1000095F0();

      swift_willThrow();
      v19 = v25;
      sub_1000097C0();
      swift_errorRetain();
      v20 = sub_1000097B0();
      v21 = sub_1000098F0();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        swift_errorRetain();
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "InteractionStoreAttachment: error during event processing: %@", v22, 0xCu);
        sub_100004558(v23);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v19);
    }
  }
}

uint64_t sub_100003EF8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003F4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100009870();
  sub_1000045D0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000045E4();
  v8 = v7 - v6;
  sub_100009860();
  v9 = sub_100009840();
  v11 = v10;
  (*(v4 + 8))(v8, v2);
  if (v11 >> 60 == 15)
  {
    sub_10000374C();
    swift_allocError();
    *v12 = 3;
    return swift_willThrow();
  }

  else
  {
    sub_10000408C(v9, v11);
    return sub_1000037A0(v9, v11);
  }
}

uint64_t sub_10000408C(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = v2;
      sub_100004500(a1, a2);
      v11 = sub_1000095C0();
      if (!v11)
      {
        goto LABEL_15;
      }

      v16 = sub_1000095E0();
      if (__OFSUB__(a1, v16))
      {
LABEL_25:
        __break(1u);
        JUMPOUT(0x100004218);
      }

      v11 += a1 - v16;
LABEL_15:
      v14 = (a1 >> 32) - a1;
LABEL_16:
      v17 = sub_1000095D0();
      if (v17 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v17;
      }

      v19 = v18 + v11;
      if (v11)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      sub_100004294(v11, v20, v10, a1, a2);

      return sub_1000020AC(a1, a2);
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
      v10 = v2;
      sub_100004500(a1, a2);
      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v11 = sub_1000095C0();
      if (!v11)
      {
        goto LABEL_6;
      }

      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v12 = sub_1000095E0();
      if (__OFSUB__(v8, v12))
      {
        goto LABEL_24;
      }

      v11 += v8 - v12;
LABEL_6:
      v13 = __OFSUB__(v9, v8);
      v14 = v9 - v8;
      if (!v13)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_9:
      v5 = v2;
      v7 = 0;
      v6 = 0;
      return sub_100004400(v7, v6, v5, a1, a2);
    case 3uLL:
      goto LABEL_9;
    default:
      v5 = v2;
      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = a1;
      return sub_100004400(v7, v6, v5, a1, a2);
  }
}

void sub_10000422C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100004294(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = [a3 write:a1 maxLength:sub_100009660()];
    result = sub_100009660();
    if (v5 == result)
    {
      return result;
    }

    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  sub_10000374C();
  swift_allocError();
  *v8 = v7;
  return swift_willThrow();
}

unint64_t sub_10000435C()
{
  result = qword_100010298;
  if (!qword_100010298)
  {
    sub_100009640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010298);
  }

  return result;
}

uint64_t sub_1000043B4(void *a1)
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

uint64_t sub_100004400(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v11 = a1;
  v13 = WORD2(a2);
  v12 = a2;
  v8 = [a3 write:&v11 maxLength:sub_100009660()];
  if (v8 != sub_100009660())
  {
    sub_10000374C();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  return sub_1000020AC(a4, a5);
}

uint64_t sub_100004500(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100004558(uint64_t a1)
{
  v2 = sub_100001770(&qword_1000102A0, &qword_10000A200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004610(uint64_t a1)
{
}

uint64_t sub_10000463C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000097D0();
    v9 = a1 + *(a3 + 20);

    return sub_1000017B8(v9, a2, v8);
  }
}

uint64_t sub_1000046D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000097D0();
    v8 = v5 + *(a4 + 20);

    return sub_100002104(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TranscriptAttachment(uint64_t a1)
{
  result = qword_100010308;
  if (!qword_100010308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000047A4(uint64_t a1)
{
  result = sub_1000097D0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void **sub_100004820()
{
  v1 = sub_100001770(&qword_100010280, &unk_10000A160);
  __chkstk_darwin(v1 - 8);
  v112 = v101 - v2;
  v117 = type metadata accessor for TranscriptAttachment(0);
  sub_1000045D0();
  v113 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  v114 = v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009870();
  sub_1000045D0();
  v115 = v7;
  v116 = v8;
  __chkstk_darwin(v7);
  v10 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009640();
  sub_1000045D0();
  v119 = v12;
  v14 = __chkstk_darwin(v13);
  v16 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = (v101 - v18);
  v20 = __chkstk_darwin(v17);
  v118 = v101 - v21;
  __chkstk_darwin(v20);
  v23 = (v101 - v22);
  v24 = sub_1000052E0();
  v25 = v0;
  v26 = v120;
  sub_1000027B8(v23);
  if (v26)
  {

    return v23;
  }

  v106 = v5;
  v107 = v19;
  v120 = 0;
  v109 = v10;
  v105 = v16;
  v110 = v24;
  v27 = *(v117 + 20);
  v28 = v119;
  v29 = *(v119 + 16);
  v117 = v23;
  v108 = v119 + 16;
  v29(v118, v23, v11);
  v104 = v27;
  v30 = sub_1000097B0();
  v31 = sub_100009900();
  v32 = v25;
  v33 = v11;
  if (os_log_type_enabled(v30, v31))
  {
    v34 = swift_slowAlloc();
    v111 = v11;
    v35 = v34;
    v36 = swift_slowAlloc();
    aBlock = v36;
    *v35 = 136315138;
    sub_100006320();
    sub_1000062D0(v37, v38, &protocol conformance descriptor for URL);
    v39 = v118;
    v40 = sub_100009990();
    v41 = v32;
    v42 = v29;
    v44 = v43;
    v118 = *(v119 + 8);
    (v118)(v39, v111);
    v45 = sub_100008AC8(v40, v44, &aBlock);
    v29 = v42;
    v32 = v41;

    *(v35 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v30, v31, "TranscriptAttachment: file path: %s", v35, 0xCu);
    sub_1000043B4(v36);
    sub_100004610(v36);
    v33 = v111;
    v46 = v120;
    sub_100004610(v35);
  }

  else
  {

    v47 = v118;
    v118 = *(v28 + 8);
    (v118)(v47, v11);
    v46 = v120;
  }

  v23 = v117;
  sub_100009670();
  v49 = v109;
  v48 = v110;
  if (v46)
  {
    (v118)(v23, v33);

    return v23;
  }

  v103 = v32;
  sub_1000054C0();
  v50 = v107;
  v29(v107, v23, v33);
  v52 = sub_100007CE8(v50);
  v120 = 0;
  v107 = v29;
  sub_100009860();
  v23 = sub_100009840();
  v54 = v53;
  v55 = v116[1];
  ++v116;
  result = v55(v49, v115);
  v56 = v114;
  if (v54 >> 60 == 15)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  aBlock = v23;
  v122 = v54;
  v57 = sub_100005504();
  v58 = v52;
  v59 = v120;
  sub_1000098E0();
  if (v59)
  {
    sub_1000020AC(aBlock, v122);
    sub_1000019A4(v52);

    (v118)(v117, v33);
    return v23;
  }

  v101[1] = v57;
  v120 = 0;
  v111 = v33;
  v60 = v106;
  sub_1000020AC(aBlock, v122);
  v61 = swift_allocObject();
  *(v61 + 16) = 1;
  sub_100009700();
  v62 = swift_allocBox();
  v102 = v55;
  v118 = v62;
  sub_1000096F0();
  sub_1000096E0();
  v63 = v103;
  sub_100005828(v103, v56);
  v64 = v56;
  v65 = v113[80];
  v66 = v60;
  v67 = swift_allocObject();
  sub_10000595C(v64, v67 + ((v65 + 16) & ~v65));
  v125 = sub_1000059C0;
  v126 = v67;
  aBlock = _NSConcreteStackBlock;
  v122 = 1107296256;
  v123 = sub_1000045C8;
  v124 = &unk_10000CA88;
  v113 = _Block_copy(&aBlock);

  sub_100005828(v63, v64);
  v68 = (v65 + 32) & ~v65;
  v69 = swift_allocObject();
  *(v69 + 16) = v61;
  *(v69 + 24) = v58;
  sub_10000595C(v64, v69 + v68);
  *(v69 + ((v66 + v68 + 7) & 0xFFFFFFFFFFFFFFF8)) = v118;
  v125 = sub_1000061C0;
  v126 = v69;
  aBlock = _NSConcreteStackBlock;
  v122 = 1107296256;
  v70 = v110;
  v123 = sub_10000422C;
  v124 = &unk_10000CAD8;
  v71 = _Block_copy(&aBlock);
  v114 = v61;

  v72 = v58;

  v73 = v113;
  v74 = [v70 sinkWithCompletion:v113 receiveInput:v71];
  _Block_release(v71);
  _Block_release(v73);

  v75 = v109;
  sub_100009860();
  v76 = sub_100009840();
  v78 = v77;
  result = v102(v75, v115);
  if (v78 >> 60 == 15)
  {
    goto LABEL_22;
  }

  aBlock = v76;
  v122 = v78;
  v79 = v120;
  sub_1000098E0();
  v23 = v79;
  v80 = v119;
  v81 = v105;
  if (v79)
  {
    sub_1000020AC(aBlock, v122);

    sub_1000019A4(v72);

    (*(v80 + 8))(v117, v111);
    return v23;
  }

  v120 = 0;
  sub_1000020AC(aBlock, v122);
  v82 = v117;
  v83 = v111;
  v107(v81, v117, v111);
  v84 = sub_1000097B0();
  v85 = sub_100009900();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = v81;
    v116 = swift_slowAlloc();
    aBlock = v116;
    *v86 = 136315138;
    sub_100006320();
    sub_1000062D0(v88, v89, &protocol conformance descriptor for URL);
    v90 = sub_100009990();
    v92 = v91;
    v93 = *(v119 + 8);
    v93(v87, v83);
    v94 = sub_100008AC8(v90, v92, &aBlock);

    *(v86 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v84, v85, "TranscriptAttachment: finished writing to: %s", v86, 0xCu);
    v95 = v116;
    sub_1000043B4(v116);
    sub_100004610(v95);
    v96 = v86;
    v82 = v117;
    sub_100004610(v96);
  }

  else
  {

    v93 = *(v80 + 8);
    v93(v81, v83);
  }

  v97 = v112;
  v107(v112, v82, v83);
  sub_100002104(v97, 0, 1, v83);
  v98 = objc_allocWithZone(DEAttachmentItem);
  result = sub_10000896C(v97);
  v99 = v110;
  if (result)
  {
    v100 = v82;
    v23 = result;

    sub_1000019A4(v72);

    v93(v100, v83);
    return v23;
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_1000052E0()
{
  v0 = sub_1000096A0();
  sub_1000045D0();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(BMPublisherOptions) init];
  sub_100009690();
  isa = sub_100009680().super.isa;
  (*(v2 + 8))(v5, v0);
  [v6 setStartDate:isa];

  [v6 setLastN:256];
  v8 = [BiomeLibrary() IntelligenceFlow];
  swift_unknownObjectRelease();
  v9 = [v8 Transcript];
  swift_unknownObjectRelease();
  v10 = [v9 Datastream];
  swift_unknownObjectRelease();
  v11 = sub_100009830();
  v12 = [v10 publisherWithUseCase:v11 options:v6];

  return v12;
}

unint64_t sub_1000054C0()
{
  result = qword_100010340;
  if (!qword_100010340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010340);
  }

  return result;
}

unint64_t sub_100005504()
{
  result = qword_100010348;
  if (!qword_100010348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010348);
  }

  return result;
}

void sub_100005568(void *a1)
{
  v2 = [a1 state];
  type metadata accessor for TranscriptAttachment(0);
  if (v2 == 1)
  {
    v5 = a1;
    oslog = sub_1000097B0();
    v6 = sub_1000098F0();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      [v5 error];
      sub_100001770(&qword_1000102A8, &unk_10000A170);
      v9 = sub_100009880();
      v11 = sub_100008AC8(v9, v10, &v18);

      *(v7 + 4) = v11;
      v12 = "TranscriptAttachment: failed to fully publish events: %s";
LABEL_9:
      _os_log_impl(&_mh_execute_header, oslog, v6, v12, v7, 0xCu);
      sub_1000043B4(v8);

      return;
    }
  }

  else
  {
    if (!v2)
    {
      oslog = sub_1000097B0();
      v3 = sub_100009900();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v3, "TranscriptAttachment: finished publishing events successfully", v4, 2u);
      }

      goto LABEL_10;
    }

    v13 = a1;
    oslog = sub_1000097B0();
    v6 = sub_1000098F0();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      [v13 state];
      type metadata accessor for BPSCompletionState();
      v14 = sub_100009880();
      v16 = sub_100008AC8(v14, v15, &v18);

      *(v7 + 4) = v16;
      v12 = "TranscriptAttachment: unknown completion state: %s";
      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t sub_100005828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptAttachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000588C()
{
  type metadata accessor for TranscriptAttachment(0);
  sub_100006338();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 28);
  sub_1000097D0();
  sub_10000634C();
  (*(v8 + 8))(v1 + v4 + v7);

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_10000595C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptAttachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000059C0(void *a1)
{
  type metadata accessor for TranscriptAttachment(0);

  sub_100005568(a1);
}

uint64_t sub_100005A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100005A48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a3;
  v7 = sub_100009700();
  v41 = *(v7 - 8);
  __chkstk_darwin(v7);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009720();
  __chkstk_darwin(v9 - 8);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000097F0();
  v36 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009870();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = swift_projectBox();
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v16 = v41;
  }

  else
  {
    sub_100009860();
    v17 = sub_100009840();
    v19 = v18;
    (*(v13 + 8))(v15, v12);
    if (v19 >> 60 == 15)
    {
      __break(1u);
      return;
    }

    *&v42 = v17;
    *(&v42 + 1) = v19;
    sub_100005504();
    sub_1000098E0();
    sub_1000020AC(v42, *(&v42 + 1));
    v16 = v41;
  }

  swift_beginAccess();
  *(a2 + 16) = 0;
  v20 = [a1 eventBody];
  if (v20 && (v21 = sub_100006260(v20), v22 >> 60 != 15))
  {
    v26 = v21;
    v27 = v22;
    v45 = v21;
    v46 = v22;
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_100004500(v21, v22);
    sub_100009710();
    sub_1000062D0(&qword_100010350, &type metadata accessor for TranscriptProtoEvent, &protocol conformance descriptor for TranscriptProtoEvent);
    sub_100009740();
    v41 = v26;
    sub_1000097E0();
    v28 = v34;
    swift_beginAccess();
    v29 = v35;
    (*(v16 + 16))(v35, v28, v7);
    v30 = sub_100009730();
    v32 = v31;
    (*(v16 + 8))(v29, v7);
    v45 = v30;
    v46 = v32;
    sub_100005504();
    sub_1000098E0();
    v33 = v41;
    (*(v36 + 8))(v38, v39);
    sub_1000037A0(v33, v27);
    sub_1000020AC(v30, v32);
  }

  else
  {
    type metadata accessor for TranscriptAttachment(0);
    v23 = sub_1000097B0();
    v24 = sub_1000098F0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "TranscriptAttachment: event has no data", v25, 2u);
    }
  }
}

uint64_t sub_1000060CC()
{
  type metadata accessor for TranscriptAttachment(0);
  sub_100006338();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 28);
  sub_1000097D0();
  sub_10000634C();
  (*(v8 + 8))(v1 + v4 + v7);

  return _swift_deallocObject(v1, v6 + 8, v3 | 7);
}

void sub_1000061C0(void *a1)
{
  v3 = *(type metadata accessor for TranscriptAttachment(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_100005A48(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_100006260(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100009650();

  return v3;
}

uint64_t sub_1000062D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_100006360(uint64_t a1, _BYTE *a2)
{
  v4 = sub_100001770(&qword_100010280, &unk_10000A160);
  __chkstk_darwin(v4 - 8);
  v87 = &v74[-v5];
  v6 = sub_100009870();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v88 = &v74[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000097D0();
  v92 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v74[-v13];
  __chkstk_darwin(v12);
  v91 = &v74[-v15];
  v96 = sub_100009640();
  v93 = *(v96 - 8);
  v16 = __chkstk_darwin(v96);
  v18 = &v74[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v74[-v20];
  v22 = __chkstk_darwin(v19);
  v94 = &v74[-v23];
  __chkstk_darwin(v22);
  v25 = &v74[-v24];
  v26 = v95;
  sub_10000797C(a1, a2, &v74[-v24]);
  if (v26)
  {
    return v14;
  }

  v82 = v21;
  v83 = a2;
  v80 = a1;
  v77 = v18;
  v81 = v11;
  v86 = v8;
  v95 = 0;
  v78 = v14;
  v79 = "8";
  v27 = v91;
  sub_1000097C0();
  v28 = v93;
  v14 = (v93 + 16);
  v29 = *(v93 + 16);
  v85 = v25;
  v29(v94, v25, v96);
  v30 = sub_1000097B0();
  v31 = sub_100009900();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v75 = v31;
    v33 = v32;
    v76 = swift_slowAlloc();
    v97 = v76;
    *v33 = 136315394;
    v99 = &type metadata for ElementHierarchyAttachment;
    sub_100001770(&qword_1000103B0, &qword_10000A248);
    v34 = sub_100009880();
    v36 = v28;
    v37 = v29;
    v38 = sub_100008AC8(v34, v35, &v97);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    sub_10000435C();
    v39 = v94;
    v40 = sub_100009990();
    v42 = v41;
    v84 = *(v36 + 8);
    v84(v39, v96);
    v43 = sub_100008AC8(v40, v42, &v97);
    v29 = v37;

    *(v33 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v30, v75, "%s: file path: %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v84 = *(v28 + 8);
    v84(v94, v96);
  }

  v44 = *(v92 + 8);
  (v44)(v27, v86);
  v45 = v85;
  v46 = v95;
  sub_100009670();
  if (v46)
  {
    v84(v45, v96);
    return v14;
  }

  sub_100009238(0, &qword_100010340, NSFileHandle_ptr);
  v47 = v82;
  v29(v82, v45, v96);
  v48 = sub_100007CE8(v47);
  v91 = v44;
  v82 = v29;
  v83 = v14;
  v94 = v48;
  sub_100001648();

  v49 = v88;
  sub_100009860();
  v50 = sub_100009840();
  v52 = v51;

  result = (*(v89 + 8))(v49, v90);
  if (v52 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v97 = v50;
    v98 = v52;
    sub_100005504();
    sub_1000098E0();
    v54 = v91;
    v95 = 0;
    sub_1000020AC(v97, v98);
    v55 = v78;
    sub_1000097C0();
    v56 = v77;
    (v82)(v77, v45, v96);
    v57 = sub_1000097B0();
    v58 = sub_100009900();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v56;
      v60 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v60 = 136315394;
      v99 = &type metadata for ElementHierarchyAttachment;
      sub_100001770(&qword_1000103B0, &qword_10000A248);
      v61 = sub_100009880();
      v63 = sub_100008AC8(v61, v62, &v97);

      *(v60 + 4) = v63;
      *(v60 + 12) = 2080;
      sub_10000435C();
      v64 = sub_100009990();
      v66 = v65;
      v84(v59, v96);
      v67 = sub_100008AC8(v64, v66, &v97);

      *(v60 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "%s: finished writing to: %s", v60, 0x16u);
      swift_arrayDestroy();

      v68 = v78;
    }

    else
    {

      v84(v56, v96);
      v68 = v55;
    }

    v54(v68, v86);
    v69 = v87;
    v70 = v85;
    v71 = v96;
    (v82)(v87, v85, v96);
    sub_100002104(v69, 0, 1, v71);
    v72 = objc_allocWithZone(DEAttachmentItem);
    result = sub_10000896C(v69);
    if (result)
    {
      v14 = result;
      v73 = v94;
      sub_1000019A4(v94);

      v84(v70, v96);
      return v14;
    }
  }

  __break(1u);
  return result;
}

char *sub_100006E94(uint64_t a1, char *a2)
{
  v4 = sub_100001770(&qword_100010280, &unk_10000A160);
  __chkstk_darwin(v4 - 8);
  v87 = &v76 - v5;
  v6 = sub_100009870();
  v88 = *(v6 - 8);
  v89 = v6;
  __chkstk_darwin(v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000097D0();
  v91 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v76 - v14;
  __chkstk_darwin(v13);
  v92 = (&v76 - v16);
  v96 = sub_100009640();
  v94 = *(v96 - 8);
  v17 = __chkstk_darwin(v96);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v76 - v21;
  v23 = __chkstk_darwin(v20);
  v90 = &v76 - v24;
  __chkstk_darwin(v23);
  v95 = &v76 - v25;
  v26 = v93;
  sub_10000797C(a1, a2, &v76 - v25);
  if (v26)
  {
    return v19;
  }

  v80 = a1;
  v81 = v22;
  v83 = v8;
  v84 = a2;
  v77 = v19;
  v85 = v12;
  v86 = 0;
  v93 = v9;
  v78 = v15;
  v79 = "8";
  sub_1000097C0();
  v27 = (v94 + 16);
  v28 = v90;
  v82 = *(v94 + 16);
  v82(v90, v95, v96);
  v29 = sub_1000097B0();
  v30 = sub_100009900();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v31 = 136315394;
    v99 = &type metadata for UIElementsAttachment;
    sub_100001770(&qword_1000103A0, &qword_10000A238);
    v32 = sub_100009880();
    v34 = sub_100008AC8(v32, v33, &v97);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    sub_10000435C();
    v35 = sub_100009990();
    v37 = v36;
    v38 = v28;
    v39 = *(v94 + 8);
    v39(v38, v96);
    v40 = sub_100008AC8(v35, v37, &v97);

    *(v31 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s: file path: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = v28;
    v39 = *(v94 + 8);
    v39(v41, v96);
  }

  v42 = *(v91 + 8);
  v42(v92, v93);
  v19 = v84;
  v43 = v83;
  v44 = v86;
  sub_100009670();
  if (v44)
  {
    v39(v95, v96);
    return v19;
  }

  v92 = v42;
  sub_100009238(0, &qword_100010340, NSFileHandle_ptr);
  v45 = v81;
  v82(v81, v95, v96);
  v46 = sub_100007CE8(v45);
  v47 = v27;
  v48 = v46;
  v85 = v47;
  sub_100001B24();
  v90 = v48;
  v86 = v39;

  sub_100009860();
  v49 = sub_100009840();
  v51 = v50;

  result = (*(v88 + 8))(v43, v89);
  if (v51 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v97 = v49;
    v98 = v51;
    sub_100005504();
    v53 = v90;
    sub_1000098E0();
    sub_1000020AC(v97, v98);
    v54 = v78;
    sub_1000097C0();
    v55 = v77;
    v56 = v82;
    v82(v77, v95, v96);
    v57 = sub_1000097B0();
    v58 = sub_100009900();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v86;
    if (v59)
    {
      v61 = swift_slowAlloc();
      LODWORD(v89) = v58;
      v62 = v61;
      v97 = swift_slowAlloc();
      *v62 = 136315394;
      v99 = &type metadata for UIElementsAttachment;
      sub_100001770(&qword_1000103A0, &qword_10000A238);
      v63 = sub_100009880();
      v65 = sub_100008AC8(v63, v64, &v97);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2080;
      sub_10000435C();
      v66 = v96;
      v67 = sub_100009990();
      v69 = v68;
      v70 = v66;
      v56 = v82;
      v60(v55, v70);
      v71 = sub_100008AC8(v67, v69, &v97);

      *(v62 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v57, v89, "%s: finished writing to: %s", v62, 0x16u);
      swift_arrayDestroy();
      v53 = v90;

      v72 = v78;
    }

    else
    {

      v60(v55, v96);
      v72 = v54;
    }

    v92(v72, v93);
    v73 = v87;
    v74 = v96;
    v56(v87, v95, v96);
    sub_100002104(v73, 0, 1, v74);
    v75 = objc_allocWithZone(DEAttachmentItem);
    result = sub_10000896C(v73);
    if (result)
    {
      v19 = result;
      sub_1000019A4(v53);

      v60(v95, v96);
      return v19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v31 = a3;
  v32 = a1;
  sub_1000096D0();
  sub_1000045D0();
  v35 = v4;
  v36 = v3;
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009640();
  sub_1000045D0();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - v14;
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  v20 = [v19 temporaryDirectory];

  sub_100009630();
  sub_100009620();
  v21 = *(v9 + 8);
  v37 = v7;
  v21(v15, v7);
  sub_1000096C0();
  sub_1000096B0();
  (*(v35 + 8))(v6, v36);
  v22 = v34;
  sub_100009620();

  v23 = [v18 defaultManager];
  sub_100009600(v24);
  v26 = v25;
  v38 = 0;
  LOBYTE(v6) = [v23 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&v38];

  if (v6)
  {
    v27 = v38;
    sub_100009610();
  }

  else
  {
    v30 = v38;
    sub_1000095F0();

    swift_willThrow();
  }

  v28 = v37;
  v21(v22, v37);
  return (v21)(v17, v28);
}

id sub_100007CE8(uint64_t a1)
{
  sub_100009600(__stack_chk_guard);
  v3 = v2;
  v13 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v13];

  v5 = v13;
  if (v4)
  {
    v6 = sub_100009640();
    sub_1000094B4();
    v8 = *(v7 + 8);
    v9 = v5;
    v8(a1, v6);
  }

  else
  {
    v10 = v13;
    sub_1000095F0();

    swift_willThrow();
    sub_100009640();
    sub_1000094B4();
    (*(v11 + 8))(a1);
  }

  return v4;
}

Swift::OpaquePointer_optional __swiftcall Diagnostics.attachments(forParameters:)(Swift::OpaquePointer_optional forParameters)
{
  v2 = v1;
  rawValue = forParameters.value._rawValue;
  v4 = type metadata accessor for TranscriptAttachment(0);
  sub_1000094B4();
  __chkstk_darwin(v5);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC27IntelligenceFlowDiagnostics11Diagnostics_logger;

  v9 = sub_1000097B0();
  v10 = sub_100009900();
  if (os_log_type_enabled(v9, v10))
  {
    v31[0] = v4;
    v31[1] = v2;
    v31[2] = v8;
    v11 = sub_100009538();
    v12 = swift_slowAlloc();
    v34[0] = v12;
    *v11 = 136315138;
    if (rawValue)
    {
      v14 = v12;

      v15 = sub_100009820();
      v17 = sub_100008AC8(v15, v16, v34);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "IntelligenceFlowDiagnostics: gathering attachments with parameters: %s", v11, 0xCu);
      sub_1000043B4(v14);
      sub_100004610(v14);
      sub_100004610(v11);

      v37 = &_swiftEmptyArrayStorage;
      goto LABEL_5;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = &_swiftEmptyArrayStorage;
  if (!rawValue)
  {
    goto LABEL_26;
  }

LABEL_5:
  v32 = 0xD00000000000002DLL;
  v33 = 0x800000010000A320;
  sub_100009940();
  sub_100008574(rawValue, &v35, v34);
  sub_100008A18(v34);
  if (!v36)
  {
    sub_100009038(&v35, &qword_100010358, &qword_10000A210);
LABEL_10:
    v18 = sub_1000097B0();
    v19 = sub_100009900();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      sub_1000094F8(&_mh_execute_header, v21, v22, "IntelligenceFlowDiagnostics: user did not give consent.");
      sub_100004610(v20);
    }

    v23 = sub_1000085D8(&_swiftEmptyArrayStorage);
    goto LABEL_13;
  }

  if (!swift_dynamicCast() || (v32 & 1) == 0)
  {
    goto LABEL_10;
  }

  *v7 = 0xD000000000000020;
  v7[1] = 0x800000010000A350;
  sub_1000097C0();
  sub_100004820();
  sub_100008A6C(v7);
  sub_1000098A0();
  sub_1000094C4();
  if (v24)
  {
    sub_1000094D8();
  }

  sub_1000098D0();
  sub_100002B10(0xD000000000000026, 0x800000010000A3A0);
  sub_1000098A0();
  sub_1000094C4();
  if (v24)
  {
    sub_1000094D8();
  }

  sub_1000098D0();
  sub_100006360(0xD00000000000002CLL, 0x800000010000A3D0);
  sub_1000098A0();
  sub_1000094C4();
  if (v24)
  {
    sub_1000094D8();
  }

  sub_1000098D0();
  sub_100006E94(0xD000000000000027, 0x800000010000A400);
  sub_1000098A0();
  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000098C0();
  }

  sub_1000098D0();
  v25 = v37;
  v26 = sub_1000097B0();
  v27 = sub_100009900();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    sub_1000094F8(&_mh_execute_header, v29, v30, "IntelligenceFlowDiagnostics: done");
    sub_100004610(v28);
  }

  v23 = sub_1000085D8(v25);

LABEL_13:
  v12 = v23;
LABEL_27:
  result.value._rawValue = v12;
  result.is_nil = v13;
  return result;
}

double sub_100008574@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1000091D4(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_100009174(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

char *sub_1000085D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100009980();
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

  v10 = &_swiftEmptyArrayStorage;
  result = sub_100009218(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_100009960();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_100009238(0, &qword_1000103B8, DEAttachmentItem_ptr);
      swift_dynamicCast();
      v10 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        sub_100009218((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      v3[2] = v8 + 1;
      sub_100009278(&v9, &v3[4 * v8 + 4]);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

id Diagnostics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Diagnostics.init()()
{
  ObjectType = swift_getObjectType();
  sub_1000097C0();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id Diagnostics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000896C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009640();
  v6 = 0;
  if (sub_1000017B8(a1, 1, v4) != 1)
  {
    sub_100009600(v5);
    v6 = v7;
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v8 = [v2 initWithPathURL:v6];

  return v8;
}

uint64_t sub_100008A6C(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptAttachment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100008AC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008B8C(v11, 0, 0, 1, a1, a2);
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
    sub_100009174(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000043B4(v11);
  return v7;
}

unint64_t sub_100008B8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100008C8C(a5, a6);
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
    result = sub_100009970();
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

char *sub_100008C8C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008CD8(a1, a2);
  sub_100008DF0(&off_10000C720);
  return v3;
}

char *sub_100008CD8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_100009890())
  {
    result = sub_100008ED4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_100009950();
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
          result = sub_100009970();
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

uint64_t sub_100008DF0(uint64_t result)
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

    result = sub_100008F44(result, v7, 1, v3);
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

void *sub_100008ED4(uint64_t a1, uint64_t a2)
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

  sub_100001770(&qword_100010398, &unk_10000A228);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100008F44(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001770(&qword_100010398, &unk_10000A228);
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

uint64_t sub_100009038(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100001770(a2, a3);
  sub_1000094B4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for Diagnostics(uint64_t a1)
{
  result = qword_100010388;
  if (!qword_100010388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000090E4(uint64_t a1)
{
  result = sub_1000097D0();
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

uint64_t sub_100009174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000091D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009920(*(v2 + 40));

  return sub_100009394(a1, v4);
}

char *sub_100009218(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100009288(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100009238(uint64_t a1, unint64_t *a2, void *a3)
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

_OWORD *sub_100009278(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_100009288(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001770(&unk_1000103C0, &qword_10000A250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100009394(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100009458(*(v2 + 48) + 40 * i, v7);
    v5 = sub_100009930();
    sub_100008A18(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000094D8()
{

  return sub_1000098C0();
}

void sub_1000094F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_100009518(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100009538()
{

  return swift_slowAlloc();
}