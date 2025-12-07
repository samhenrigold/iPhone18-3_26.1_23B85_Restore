unint64_t *sub_100001610@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000016E4()
{
  v1 = 0x657669746361;
  if (*v0 != 1)
  {
    v1 = 0x64656C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_100001784()
{
  v1 = *v0;
  v2 = 0x656D614E6B736174;
  v3 = 0x7453657669746361;
  if (v1 != 5)
  {
    v3 = 0x6E6F697461657263;
  }

  v4 = 0x7461447472617473;
  if (v1 != 3)
  {
    v4 = 0x65746144646E65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F69736E65747865;
  if (v1 != 1)
  {
    v5 = 0x666E6F436B736174;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100001888@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000070A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000018C8(uint64_t a1)
{
  v2 = sub_100006798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001904(uint64_t a1)
{
  v2 = sub_100006798();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001940(void *a1)
{
  v3 = v1;
  v5 = sub_100005338(&qword_100038520, &qword_10002DA80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100006754(a1, a1[3]);
  sub_100006798();
  sub_10002CE18();
  LOBYTE(v12) = 0;
  sub_10002CD08();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_10002CD08();
    v9 = *(v3 + 40);
    v12 = *(v3 + 32);
    v13 = v9;
    v14 = 2;
    sub_1000068E0(v12, v9);
    sub_100006934();
    sub_10002CD18();
    sub_10000593C(v12, v13);
    v10 = type metadata accessor for TaskRecord(0);
    LOBYTE(v12) = 3;
    sub_10002C608();
    sub_100006414(&qword_100038530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10002CD18();
    LOBYTE(v12) = 4;
    sub_10002CD18();
    LOBYTE(v12) = *(v3 + *(v10 + 36));
    v14 = 5;
    sub_100006988();
    sub_10002CD18();
    LOBYTE(v12) = 6;
    sub_10002CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100001C34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_100005338(&qword_100038248, &unk_10002D560);
  __chkstk_darwin(v3 - 8);
  v49 = &v41 - v4;
  v5 = sub_10002C608();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v50 = sub_100005338(&qword_1000384F8, &qword_10002DA78);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = &v41 - v11;
  v13 = type metadata accessor for TaskRecord(0);
  v14 = __chkstk_darwin(v13);
  v16 = v6;
  v17 = *(v6 + 56);
  v53 = *(v14 + 40);
  v18 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(&v18[v53], 1, 1, v5);
  v19 = a1[3];
  v52 = a1;
  sub_100006754(a1, v19);
  sub_100006798();
  v51 = v12;
  v20 = v54;
  sub_10002CE08();
  if (v20)
  {
    v54 = v20;
    v23 = v18;
    sub_1000067EC(v52);
    return sub_1000053D8(&v23[v53]);
  }

  v45 = v10;
  v22 = v48;
  v21 = v49;
  LOBYTE(v55) = 0;
  v23 = v18;
  *v18 = sub_10002CCD8();
  *(v18 + 1) = v25;
  LOBYTE(v55) = 1;
  v26 = v22;
  *(v18 + 2) = sub_10002CCD8();
  *(v18 + 3) = v27;
  v56 = 2;
  sub_100006838();
  sub_10002CCE8();
  v54 = 0;
  *(v18 + 2) = v55;
  LOBYTE(v55) = 3;
  v28 = sub_100006414(&qword_100038510, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v29 = v45;
  v44 = v28;
  v30 = v54;
  sub_10002CCE8();
  v31 = v30;
  if (v30)
  {
    (*(v26 + 8))(v51, v50);
    v32 = 0;
    v54 = v30;
    goto LABEL_10;
  }

  v43 = v13;
  v33 = *(v13 + 28);
  v34 = v29;
  v35 = v5;
  v36 = *(v16 + 32);
  v42 = v23;
  v36(&v23[v33], v34, v5);
  LOBYTE(v55) = 4;
  v37 = v47;
  v45 = 0;
  sub_10002CCE8();
  v54 = 0;
  v38 = v42;
  v36((v42 + *(v43 + 32)), v37, v35);
  v56 = 5;
  sub_10000688C();
  v39 = v54;
  sub_10002CCE8();
  if (v39)
  {
    v54 = v39;
    (*(v26 + 8))(v51, v50);
    v32 = 1;
    v5 = v35;
    v13 = v43;
    v23 = v38;
    v31 = v45;
LABEL_10:
    sub_1000067EC(v52);

    sub_10000593C(*(v23 + 4), *(v23 + 5));
    if (v31)
    {
      if (v32)
      {
        (*(v16 + 8))(&v23[*(v13 + 32)], v5);
      }
    }

    else
    {
      v40 = *(v16 + 8);
      v40(&v23[*(v13 + 28)], v5);
      if (v32)
      {
        v40(&v23[*(v13 + 32)], v5);
      }
    }

    return sub_1000053D8(&v23[v53]);
  }

  *(v38 + *(v43 + 36)) = v55;
  LOBYTE(v55) = 6;
  sub_10002CCC8();
  v54 = 0;
  (*(v26 + 8))(v51, v50);
  sub_100005990(v21, v38 + v53);
  sub_100005AD8(v38, v46, type metadata accessor for TaskRecord);
  sub_1000067EC(v52);
  return sub_100005B40(v38, type metadata accessor for TaskRecord);
}

uint64_t sub_1000022C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005338(&qword_100038248, &unk_10002D560);
  v5 = __chkstk_darwin(v4 - 8);
  v114 = v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = v105 - v8;
  __chkstk_darwin(v7);
  v11 = v105 - v10;
  v12 = sub_10002C608();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v115 = v105 - v17;
  v18 = type metadata accessor for TaskRecord(0);
  v119 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v120 = (v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = v19;
  v21 = *(v19 + 40);
  v116 = v13;
  v22 = *(v13 + 56);
  v118 = v21;
  v22(v120 + v21, 1, 1, v12);
  if (sub_10002CBD8() == 0x736B736154 && v23 == 0xE500000000000000)
  {
  }

  else
  {
    v24 = sub_10002CD48();

    if ((v24 & 1) == 0)
    {
      if (qword_100038240 != -1)
      {
        swift_once();
      }

      v58 = sub_10002C978();
      sub_1000053A0(v58, qword_100039DE0);
      v59 = a1;
      v60 = sub_10002C958();
      v61 = sub_10002CBA8();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = a2;
        v64 = swift_slowAlloc();
        v122 = v64;
        *v62 = 136315138;
        v65 = sub_10002CBD8();
        v67 = sub_10000B7BC(v65, v66, &v122);

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "Invalid recordType: %s", v62, 0xCu);
        sub_1000067EC(v64);
        a2 = v63;
      }

      else
      {
      }

      goto LABEL_26;
    }
  }

  v117 = a2;
  v25 = [a1 values];
  sub_100005338(&qword_1000382B0, &qword_10002D570);
  v26 = sub_10002C9D8();

  if (!*(v26 + 16) || (v27 = sub_1000058C4(0x656D614E6B736174, 0xE800000000000000), (v28 & 1) == 0))
  {

    goto LABEL_19;
  }

  v29 = *(*(v26 + 56) + 8 * v27);
  swift_unknownObjectRetain();

  v124 = v29;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v51 = sub_10002C978();
    sub_1000053A0(v51, qword_100039DE0);
    v52 = sub_10002C958();
    v53 = sub_10002CBA8();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_24;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Failed at parsing taskName";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v52, v53, v55, v54, 2u);

LABEL_24:

LABEL_25:
    a2 = v117;
LABEL_26:
    v56 = v119;
    sub_1000053D8(v120 + v118);
    return (*(v56 + 56))(a2, 1, 1, v121);
  }

  v111 = v122;
  v112 = v22;
  v30 = v123;
  v31 = [a1 values];
  v32 = sub_10002C9D8();

  if (!*(v32 + 16) || (v113 = v30, v33 = sub_1000058C4(0x6F69736E65747865, 0xEB0000000044496ELL), (v34 & 1) == 0))
  {

    goto LABEL_33;
  }

  v35 = *(*(v32 + 56) + 8 * v33);
  swift_unknownObjectRetain();

  v124 = v35;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:

    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v68 = sub_10002C978();
    sub_1000053A0(v68, qword_100039DE0);
    v52 = sub_10002C958();
    v53 = sub_10002CBA8();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_24;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Failed at parsing extensionID";
    goto LABEL_23;
  }

  v36 = v123;
  v110 = v122;
  v37 = [a1 values];
  v38 = sub_10002C9D8();

  if (!*(v38 + 16) || (v39 = sub_1000058C4(0x666E6F436B736174, 0xEE00617461446769), (v40 & 1) == 0))
  {

    goto LABEL_38;
  }

  v41 = *(*(v38 + 56) + 8 * v39);
  swift_unknownObjectRetain();

  v124 = v41;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:

    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v69 = sub_10002C978();
    sub_1000053A0(v69, qword_100039DE0);
    v52 = sub_10002C958();
    v53 = sub_10002CBA8();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_24;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Failed at parsing taskConfigData";
    goto LABEL_23;
  }

  v108 = v122;
  v109 = v123;
  v42 = [a1 values];
  v43 = sub_10002C9D8();

  if (!*(v43 + 16) || (v44 = sub_1000058C4(0x7461447472617473, 0xE900000000000065), (v45 & 1) == 0))
  {

    v112(v11, 1, 1, v12);
    goto LABEL_43;
  }

  v107 = v36;
  v46 = *(*(v43 + 56) + 8 * v44);
  swift_unknownObjectRetain();

  v122 = v46;
  v47 = swift_dynamicCast();
  v48 = v112;
  v112(v11, v47 ^ 1u, 1, v12);
  v49 = v116;
  v50 = v116 + 48;
  v106 = *(v116 + 48);
  if (v106(v11, 1, v12) == 1)
  {

LABEL_43:
    sub_1000053D8(v11);
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v70 = sub_10002C978();
    sub_1000053A0(v70, qword_100039DE0);
    v52 = sub_10002C958();
    v71 = sub_10002CBA8();
    if (os_log_type_enabled(v52, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v52, v71, "Failed at parsing startDate", v72, 2u);
    }

    sub_10000593C(v108, v109);
    goto LABEL_24;
  }

  v105[0] = *(v49 + 32);
  v105[1] = v50;
  (v105[0])(v115, v11, v12);
  v73 = [a1 values];
  v74 = sub_10002C9D8();

  if (!*(v74 + 16) || (v75 = sub_1000058C4(0x65746144646E65, 0xE700000000000000), (v76 & 1) == 0))
  {

    v48(v9, 1, 1, v12);
    goto LABEL_53;
  }

  v77 = *(*(v74 + 56) + 8 * v75);
  swift_unknownObjectRetain();

  v122 = v77;
  v78 = swift_dynamicCast();
  v48(v9, v78 ^ 1u, 1, v12);
  v79 = v106(v9, 1, v12);
  v80 = v113;
  if (v79 == 1)
  {

LABEL_53:
    sub_1000053D8(v9);
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v81 = sub_10002C978();
    sub_1000053A0(v81, qword_100039DE0);
    v82 = sub_10002C958();
    v83 = sub_10002CBA8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Failed at parsing endDate", v84, 2u);

      sub_10000593C(v108, v109);
    }

    else
    {
      sub_10000593C(v108, v109);
    }

    (*(v116 + 8))(v115, v12);
    goto LABEL_25;
  }

  (v105[0])(v16, v9, v12);
  v86 = v120;
  v85 = v121;
  v87 = v110;
  *v120 = v111;
  v86[1] = v80;
  v88 = v107;
  v89 = v108;
  v86[2] = v87;
  v86[3] = v88;
  v90 = v109;
  v86[4] = v89;
  v86[5] = v90;
  v91 = *(v116 + 16);
  v91(v86 + *(v85 + 28), v115, v12);
  v91(v86 + *(v85 + 32), v16, v12);
  v92 = [a1 values];
  v93 = sub_10002C9D8();

  if (!*(v93 + 16) || (v94 = sub_1000058C4(0x7453657669746361, 0xEC00000073757461), (v95 & 1) == 0))
  {

    goto LABEL_66;
  }

  v96 = *(*(v93 + 56) + 8 * v94);
  swift_unknownObjectRetain();

  v122 = v96;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_66:
    v97 = 0;
    goto LABEL_67;
  }

  if (v124 == 2)
  {
    v97 = 2;
  }

  else
  {
    v97 = v124 == 1;
  }

LABEL_67:
  *(v120 + *(v121 + 36)) = v97;
  v98 = [a1 creationDate];
  if (v98)
  {
    v99 = v98;
    sub_10002C5C8();

    v100 = 0;
    a1 = v99;
  }

  else
  {
    v100 = 1;
  }

  v101 = *(v116 + 8);
  v101(v16, v12);
  v101(v115, v12);
  v102 = v114;
  v112(v114, v100, 1, v12);
  v103 = v120;
  sub_100005990(v102, v120 + v118);
  v104 = v117;
  sub_100005AD8(v103, v117, type metadata accessor for TaskRecord);
  (*(v119 + 56))(v104, 0, 1, v121);
  return sub_100005B40(v103, type metadata accessor for TaskRecord);
}

uint64_t sub_100003170(void *a1)
{
  v3 = v1;
  v5 = sub_100005338(&qword_100038550, &qword_10002DA90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100006754(a1, a1[3]);
  sub_1000069DC();
  sub_10002CE18();
  LOBYTE(v12) = 0;
  sub_10002CD08();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_10002CD08();
    v9 = *(v3 + 40);
    v12 = *(v3 + 32);
    v13 = v9;
    v11[15] = 2;
    sub_1000068E0(v12, v9);
    sub_100006934();
    sub_10002CD18();
    sub_10000593C(v12, v13);
    type metadata accessor for TaskParametersRecord(0);
    LOBYTE(v12) = 3;
    sub_10002C608();
    sub_100006414(&qword_100038530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10002CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000339C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_100005338(&qword_100038248, &unk_10002D560);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_100005338(&qword_100038540, &qword_10002DA88);
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for TaskParametersRecord(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 36);
  v15 = sub_10002C608();
  v16 = *(*(v15 - 8) + 56);
  v27 = v14;
  v16(&v13[v14], 1, 1, v15);
  sub_100006754(a1, a1[3]);
  sub_1000069DC();
  sub_10002CE08();
  if (v2)
  {
    sub_1000067EC(a1);
    return sub_1000053D8(&v13[v27]);
  }

  else
  {
    v23 = v6;
    v18 = v25;
    v17 = v26;
    LOBYTE(v28) = 0;
    *v13 = sub_10002CCD8();
    *(v13 + 1) = v19;
    LOBYTE(v28) = 1;
    *(v13 + 2) = sub_10002CCD8();
    *(v13 + 3) = v20;
    v29 = 2;
    sub_100006838();
    v22 = 0;
    sub_10002CCE8();
    *(v13 + 2) = v28;
    LOBYTE(v28) = 3;
    sub_100006414(&qword_100038510, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10002CCC8();
    (*(v18 + 8))(v9, v17);
    sub_100005990(v23, &v13[v27]);
    sub_100005AD8(v13, v24, type metadata accessor for TaskParametersRecord);
    sub_1000067EC(a1);
    return sub_100005B40(v13, type metadata accessor for TaskParametersRecord);
  }
}

uint64_t sub_1000037B4()
{
  v1 = 0x656D614E6B736174;
  v2 = 0x6574656D61726170;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    v1 = 0x6F69736E65747865;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000384C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000730C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100003874(uint64_t a1)
{
  v2 = sub_1000069DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000038B0(uint64_t a1)
{
  v2 = sub_1000069DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000391C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005338(&qword_100038248, &unk_10002D560);
  __chkstk_darwin(v4 - 8);
  v66 = &v63 - v5;
  v6 = type metadata accessor for TaskParametersRecord(0);
  v70 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 28);
  v11 = sub_10002C608();
  v12 = *(*(v11 - 8) + 56);
  v68 = v10;
  v69 = v9;
  v13 = &v9[v10];
  v14 = a1;
  v12(v13, 1, 1, v11);
  if (sub_10002CBD8() == 0x617261506B736154 && v15 == 0xEE0073726574656DLL)
  {
  }

  else
  {
    v16 = sub_10002CD48();

    if ((v16 & 1) == 0)
    {
      if (qword_100038240 != -1)
      {
        swift_once();
      }

      v47 = sub_10002C978();
      sub_1000053A0(v47, qword_100039DE0);
      v48 = a1;
      v49 = sub_10002C958();
      v50 = sub_10002CBA8();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v71[0] = v52;
        *v51 = 136315138;
        v53 = sub_10002CBD8();
        v55 = sub_10000B7BC(v53, v54, v71);

        *(v51 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v49, v50, "Invalid recordType: %s", v51, 0xCu);
        sub_1000067EC(v52);
      }

      else
      {
      }

      goto LABEL_22;
    }
  }

  v67 = v6;
  v17 = [a1 values];
  sub_100005338(&qword_1000382B0, &qword_10002D570);
  v18 = sub_10002C9D8();

  if (!*(v18 + 16) || (v19 = sub_1000058C4(0x656D614E6B736174, 0xE800000000000000), (v20 & 1) == 0))
  {

    goto LABEL_17;
  }

  v21 = *(*(v18 + 56) + 8 * v19);
  swift_unknownObjectRetain();

  v72 = v21;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v6 = v67;
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v42 = sub_10002C978();
    sub_1000053A0(v42, qword_100039DE0);
    v43 = sub_10002C958();
    v44 = sub_10002CBA8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed at parsing taskName", v45, 2u);
    }

    goto LABEL_22;
  }

  v64 = a2;
  v65 = a1;
  v22 = *v71;
  v23 = [a1 values];
  v24 = sub_10002C9D8();

  if (!*(v24 + 16) || (v25 = sub_1000058C4(0x6F69736E65747865, 0xEB0000000044496ELL), (v26 & 1) == 0))
  {

    goto LABEL_29;
  }

  v27 = *(*(v24 + 56) + 8 * v25);
  swift_unknownObjectRetain();

  v72 = v27;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:

    a2 = v64;
    v56 = v65;
    v6 = v67;
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v57 = sub_10002C978();
    sub_1000053A0(v57, qword_100039DE0);
    v58 = sub_10002C958();
    v59 = sub_10002CBA8();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_34;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "Failed at parsing extensionID";
    goto LABEL_33;
  }

  v28 = v71[1];
  v63 = v71[0];
  v29 = [v65 values];
  v30 = sub_10002C9D8();

  if (!*(v30 + 16))
  {

    a2 = v64;
    v6 = v67;
LABEL_38:
    v56 = v65;
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v62 = sub_10002C978();
    sub_1000053A0(v62, qword_100039DE0);
    v58 = sub_10002C958();
    v59 = sub_10002CBA8();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_34;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "Failed at parsing parametersData";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v58, v59, v61, v60, 2u);

LABEL_34:

LABEL_22:
    sub_1000053D8(v69 + v68);
    return (*(v70 + 56))(a2, 1, 1, v6);
  }

  v31 = sub_1000058C4(0x6574656D61726170, 0xEE00617461447372);
  v6 = v67;
  if ((v32 & 1) == 0)
  {

    goto LABEL_37;
  }

  v33 = *(*(v30 + 56) + 8 * v31);
  swift_unknownObjectRetain();

  v72 = v33;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:

    a2 = v64;
    goto LABEL_38;
  }

  v34 = *v71;
  v35 = v69;
  *v69 = v22;
  *(v35 + 16) = v63;
  *(v35 + 24) = v28;
  *(v35 + 32) = v34;
  v36 = v65;
  v37 = [v65 creationDate];
  v38 = v64;
  if (v37)
  {
    v39 = v66;
    v40 = v37;
    sub_10002C5C8();

    v41 = 0;
    v36 = v40;
  }

  else
  {
    v41 = 1;
    v39 = v66;
  }

  v12(v39, v41, 1, v11);
  sub_100005990(v39, v35 + v68);
  sub_100005AD8(v35, v38, type metadata accessor for TaskParametersRecord);
  (*(v70 + 56))(v38, 0, 1, v67);
  return sub_100005B40(v35, type metadata accessor for TaskParametersRecord);
}

uint64_t sub_1000041B0(void *a1)
{
  v3 = sub_100005338(&qword_100038568, &qword_10002DAA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006754(a1, a1[3]);
  sub_100006A30();
  sub_10002CE18();
  v8[15] = 0;
  sub_10002CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_10002CD08();
    v8[13] = 2;
    sub_10002CD08();
    type metadata accessor for TaskPayloadRecord(0);
    v8[12] = 3;
    sub_10002C608();
    sub_100006414(&qword_100038530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10002CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000043EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_100005338(&qword_100038248, &unk_10002D560);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_100005338(&qword_100038558, &qword_10002DA98);
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for TaskPayloadRecord(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 36);
  v15 = sub_10002C608();
  v16 = *(*(v15 - 8) + 56);
  v28 = v14;
  v16(v13 + v14, 1, 1, v15);
  sub_100006754(a1, a1[3]);
  sub_100006A30();
  sub_10002CE08();
  if (v2)
  {
    sub_1000067EC(a1);
    return sub_1000053D8(v13 + v28);
  }

  else
  {
    v24 = v6;
    v18 = v26;
    v17 = v27;
    v32 = 0;
    *v13 = sub_10002CCD8();
    v13[1] = v19;
    v31 = 1;
    v13[2] = sub_10002CCD8();
    v13[3] = v20;
    v30 = 2;
    v23 = 0;
    v13[4] = sub_10002CCD8();
    v13[5] = v21;
    v29 = 3;
    sub_100006414(&qword_100038510, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10002CCC8();
    (*(v18 + 8))(v9, v17);
    sub_100005990(v24, v13 + v28);
    sub_100005AD8(v13, v25, type metadata accessor for TaskPayloadRecord);
    sub_1000067EC(a1);
    return sub_100005B40(v13, type metadata accessor for TaskPayloadRecord);
  }
}

Swift::Int sub_1000047E8()
{
  v1 = *v0;
  sub_10002CDD8();
  sub_10002CDE8(v1);
  return sub_10002CDF8();
}

Swift::Int sub_100004830(uint64_t a1)
{
  v2 = *v1;
  sub_10002CDD8();
  sub_10002CDE8(v2);
  return sub_10002CDF8();
}

uint64_t sub_100004874()
{
  v1 = 0x656D614E6B736174;
  v2 = 0x617474416B736174;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    v1 = 0x6F69736E65747865;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000490C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100007480(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100004940(uint64_t a1)
{
  v2 = sub_100006A30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000497C(uint64_t a1)
{
  v2 = sub_100006A30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000049E8@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_100005338(&qword_100038248, &unk_10002D560);
  __chkstk_darwin(v3 - 8);
  v65 = &v60 - v4;
  v5 = sub_10002C578();
  v64 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TaskPayloadRecord(0);
  v67 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = v9;
  v12 = *(v9 + 28);
  v13 = sub_10002C608();
  v14 = *(*(v13 - 8) + 56);
  v70 = v11;
  v66 = v12;
  v14(v11 + v12, 1, 1, v13);
  if (sub_10002CBD8() == 0x6C7961506B736154 && v15 == 0xEC0000007364616FLL)
  {
  }

  else
  {
    v16 = sub_10002CD48();

    if ((v16 & 1) == 0)
    {
      if (qword_100038240 != -1)
      {
        swift_once();
      }

      v47 = sub_10002C978();
      sub_1000053A0(v47, qword_100039DE0);
      v43 = a1;
      a1 = sub_10002C958();
      v48 = sub_10002CBA8();

      if (os_log_type_enabled(a1, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v71 = v50;
        *v49 = 136315138;
        v51 = sub_10002CBD8();
        v53 = sub_10000B7BC(v51, v52, &v71);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, a1, v48, "Invalid recordType: %s", v49, 0xCu);
        sub_1000067EC(v50);

LABEL_39:
        v57 = v68;
        v56 = v69;
        sub_1000053D8(v70 + v66);
        return (*(v67 + 56))(v56, 1, 1, v57);
      }

LABEL_38:

      goto LABEL_39;
    }
  }

  v17 = [a1 values];
  sub_100005338(&qword_1000382B0, &qword_10002D570);
  v18 = sub_10002C9D8();

  if (!*(v18 + 16) || (v19 = sub_1000058C4(0x656D614E6B736174, 0xE800000000000000), (v20 & 1) == 0))
  {

    goto LABEL_18;
  }

  v21 = *(*(v18 + 56) + 8 * v19);
  swift_unknownObjectRetain();

  v73 = v21;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v42 = sub_10002C978();
    sub_1000053A0(v42, qword_100039DE0);
    v43 = sub_10002C958();
    v44 = sub_10002CBA8();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_38;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Failed at parsing taskName";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v43, v44, v46, v45, 2u);

    goto LABEL_38;
  }

  v62 = v71;
  v63 = v72;
  v22 = [a1 values];
  v23 = sub_10002C9D8();

  if (!*(v23 + 16) || (v24 = sub_1000058C4(0x6F69736E65747865, 0xEB0000000044496ELL), (v25 & 1) == 0))
  {

    goto LABEL_28;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  swift_unknownObjectRetain();

  v73 = v26;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:

    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v54 = sub_10002C978();
    sub_1000053A0(v54, qword_100039DE0);
    v43 = sub_10002C958();
    v44 = sub_10002CBA8();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_38;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Failed at parsing extensionID";
    goto LABEL_22;
  }

  v60 = v71;
  v61 = v72;
  v27 = [a1 values];
  v28 = sub_10002C9D8();

  if (!*(v28 + 16) || (v29 = v61, sub_1000058C4(0x617474416B736174, 0xEE00746E656D6863), (v30 & 1) == 0))
  {

LABEL_34:
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v55 = sub_10002C978();
    sub_1000053A0(v55, qword_100039DE0);
    v43 = sub_10002C958();
    v44 = sub_10002CBA8();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_38;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Failed at parsing taskAttachment";
    goto LABEL_22;
  }

  swift_unknownObjectRetain();

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31 || (v32 = [v31 fileURL], v33 = v63, !v32))
  {

    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v34 = v32;
  sub_10002C538();

  v35 = v70;
  *v70 = v62;
  v35[1] = v33;
  v35[2] = v60;
  v35[3] = v29;
  v35[4] = sub_10002C548(0);
  v35[5] = v36;
  v37 = [a1 creationDate];
  if (v37)
  {
    v38 = v65;
    v39 = v37;
    sub_10002C5C8();

    swift_unknownObjectRelease();
    (*(v64 + 8))(v7, v5);
    v40 = 0;
    v41 = v69;
  }

  else
  {
    (*(v64 + 8))(v7, v5);

    swift_unknownObjectRelease();
    v40 = 1;
    v41 = v69;
    v38 = v65;
  }

  v14(v38, v40, 1, v13);
  v59 = v70;
  sub_100005990(v38, v70 + v66);
  sub_100005AD8(v59, v41, type metadata accessor for TaskPayloadRecord);
  (*(v67 + 56))(v41, 0, 1, v68);
  return sub_100005B40(v59, type metadata accessor for TaskPayloadRecord);
}

uint64_t sub_100005338(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000053A0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000053D8(uint64_t a1)
{
  v2 = sub_100005338(&qword_100038248, &unk_10002D560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005440(uint64_t a1)
{
  v2 = sub_100006414(&qword_1000384B8, type metadata accessor for CKError, &unk_10002D924);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000054AC(uint64_t a1)
{
  v2 = sub_100006414(&qword_1000384B8, type metadata accessor for CKError, &unk_10002D924);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000551C(uint64_t a1)
{
  v2 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError, &unk_10002D968);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000055BC(uint64_t a1)
{
  v2 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError, &unk_10002D968);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100005628(uint64_t a1)
{
  v2 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError, &unk_10002D968);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100005694(void *a1, uint64_t a2)
{
  v4 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError, &unk_10002D968);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100005748(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError, &unk_10002D968);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000057C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002CDD8();
  sub_10002C9F8();
  return sub_10002CDF8();
}

void *sub_100005824@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100005840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006414(&qword_1000384F0, type metadata accessor for CKError, &unk_10002D968);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_1000058C4(uint64_t a1, uint64_t a2)
{
  sub_10002CDD8();
  sub_10002CA38();
  v4 = sub_10002CDF8();

  return sub_100005A00(a1, a2, v4);
}

void sub_10000593C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_100005990(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005338(&qword_100038248, &unk_10002D560);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100005A00(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10002CD48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100005AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100005BC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005C20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10002C608();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100005338(&qword_100038248, &unk_10002D560);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100005D64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10002C608();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100005338(&qword_100038248, &unk_10002D560);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100005E94(uint64_t a1)
{
  sub_10002C608();
  if (v1 <= 0x3F)
  {
    sub_100005F48(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100005F48(uint64_t a1)
{
  if (!qword_100038328)
  {
    sub_10002C608();
    v1 = sub_10002CBF8();
    if (!v2)
    {
      atomic_store(v1, &qword_100038328);
    }
  }
}

uint64_t sub_100005FF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005338(&qword_100038248, &unk_10002D560);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000060C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005338(&qword_100038248, &unk_10002D560);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100005F48(319);
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for ActiveStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActiveStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006378()
{
  result = qword_1000384A0;
  if (!qword_1000384A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000384A0);
  }

  return result;
}

uint64_t sub_100006414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000065D8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_100006670()
{
  result = qword_1000384E0;
  if (!qword_1000384E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000384E0);
  }

  return result;
}

void *sub_100006754(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006798()
{
  result = qword_100038500;
  if (!qword_100038500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038500);
  }

  return result;
}

uint64_t sub_1000067EC(void *a1)
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

unint64_t sub_100006838()
{
  result = qword_100038508;
  if (!qword_100038508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038508);
  }

  return result;
}

unint64_t sub_10000688C()
{
  result = qword_100038518;
  if (!qword_100038518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038518);
  }

  return result;
}

void sub_1000068E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_100006934()
{
  result = qword_100038528;
  if (!qword_100038528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038528);
  }

  return result;
}

unint64_t sub_100006988()
{
  result = qword_100038538;
  if (!qword_100038538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038538);
  }

  return result;
}

unint64_t sub_1000069DC()
{
  result = qword_100038548;
  if (!qword_100038548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038548);
  }

  return result;
}

unint64_t sub_100006A30()
{
  result = qword_100038560;
  if (!qword_100038560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038560);
  }

  return result;
}

unint64_t sub_100006A84()
{
  result = qword_100038570;
  if (!qword_100038570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038570);
  }

  return result;
}

uint64_t sub_100006AF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100006B80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TaskRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006D94()
{
  result = qword_100038580;
  if (!qword_100038580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038580);
  }

  return result;
}

unint64_t sub_100006DEC()
{
  result = qword_100038588;
  if (!qword_100038588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038588);
  }

  return result;
}

unint64_t sub_100006E44()
{
  result = qword_100038590;
  if (!qword_100038590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038590);
  }

  return result;
}

unint64_t sub_100006E9C()
{
  result = qword_100038598;
  if (!qword_100038598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038598);
  }

  return result;
}

unint64_t sub_100006EF4()
{
  result = qword_1000385A0;
  if (!qword_1000385A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000385A0);
  }

  return result;
}

unint64_t sub_100006F4C()
{
  result = qword_1000385A8;
  if (!qword_1000385A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000385A8);
  }

  return result;
}

unint64_t sub_100006FA4()
{
  result = qword_1000385B0;
  if (!qword_1000385B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000385B0);
  }

  return result;
}

unint64_t sub_100006FFC()
{
  result = qword_1000385B8;
  if (!qword_1000385B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000385B8);
  }

  return result;
}

unint64_t sub_100007054()
{
  result = qword_1000385C0;
  if (!qword_1000385C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000385C0);
  }

  return result;
}

uint64_t sub_1000070A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_10002CD48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEB0000000064496ELL || (sub_10002CD48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E6F436B736174 && a2 == 0xEE00617461446769 || (sub_10002CD48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_10002CD48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_10002CD48() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7453657669746361 && a2 == 0xEC00000073757461 || (sub_10002CD48() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 6;
  }

  else
  {
    v6 = sub_10002CD48();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10000730C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_10002CD48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEB0000000064496ELL || (sub_10002CD48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEE00617461447372 || (sub_10002CD48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 3;
  }

  else
  {
    v6 = sub_10002CD48();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100007480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_10002CD48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEB0000000064496ELL || (sub_10002CD48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617474416B736174 && a2 == 0xEE00746E656D6863 || (sub_10002CD48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 3;
  }

  else
  {
    v6 = sub_10002CD48();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100007624()
{
  sub_10002C898();
  sub_10002B3B8(&qword_1000387B0, &type metadata accessor for MLHostEnvironment, &protocol conformance descriptor for MLHostEnvironment);
  sub_10002CA68();
  sub_10002CA68();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_10002CD48();
  }

  return v1 & 1;
}

uint64_t sub_100007704()
{
  v0 = sub_10002C978();
  sub_10002B9F4(v0, qword_100039DE0);
  sub_1000053A0(v0, qword_100039DE0);
  return sub_10002C968();
}

uint64_t sub_100007784(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7272457972657571;
  }

  else
  {
    v3 = 0x656C6C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEA0000000000726FLL;
  }

  if (*a2)
  {
    v5 = 0x7272457972657571;
  }

  else
  {
    v5 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000726FLL;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002CD48();
  }

  return v8 & 1;
}

Swift::Int sub_100007834()
{
  sub_10002CDD8();
  sub_10002CA38();

  return sub_10002CDF8();
}

uint64_t sub_1000078C0(uint64_t a1)
{
  sub_10002CA38();
}

Swift::Int sub_100007938(uint64_t a1)
{
  sub_10002CDD8();
  sub_10002CA38();

  return sub_10002CDF8();
}

uint64_t sub_1000079C0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100034DD0;
  v8._object = v3;
  v5 = sub_10002CCB8(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100007A20(uint64_t *a1@<X8>)
{
  v2 = 0x656C6C65636E6163;
  if (*v1)
  {
    v2 = 0x7272457972657571;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEA0000000000726FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_100007A74(uint64_t a1)
{
  v2 = sub_10002C8B8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100038240 != -1)
  {
    swift_once();
  }

  v6 = sub_10002C978();
  sub_1000053A0(v6, qword_100039DE0);

  v7 = sub_10002C958();
  v8 = sub_10002CBA8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v21 = v2;
    v10 = v9;
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    swift_beginAccess();
    v12 = *(a1 + 96);
    v24[4] = *(a1 + 80);
    v24[5] = v12;
    v25 = *(a1 + 112);
    v13 = *(a1 + 32);
    v24[0] = *(a1 + 16);
    v24[1] = v13;
    v14 = *(a1 + 64);
    v24[2] = *(a1 + 48);
    v24[3] = v14;
    sub_10002B944(v24, aBlock);
    sub_10000A804();
    sub_10002B97C(v24);
    sub_10002B9AC(0, &qword_1000387A0, NSObject_ptr);
    v15 = sub_10002C9E8();
    v17 = v16;

    v18 = sub_10000B7BC(v15, v17, &v23);

    *(v10 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "CloudWorker Telemetry: %s", v10, 0xCu);
    sub_1000067EC(v11);

    v2 = v21;
  }

  (*(v3 + 104))(v5, enum case for CoreAnalyticsEvents.cloudWorkerTelemetry(_:), v2);
  sub_10002C8A8();
  (*(v3 + 8))(v5, v2);
  v19 = sub_10002CA18();

  aBlock[4] = sub_10002B924;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B230;
  aBlock[3] = &unk_100035178;
  v20 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

void *sub_100007E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    sub_10000DB24(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = *(sub_10002C838() - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = sub_10002C828();
      v15 = v2;
      v10 = v2[2];
      v9 = v2[3];
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_10000DB24((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v2 = v15;
      }

      v2[2] = v10 + 1;
      v11 = &v2[2 * v10];
      v11[4] = v7;
      v11[5] = v8;
      v5 += v6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100007F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000DB24(0, v1, 0);
    v3 = *(type metadata accessor for TaskRecord(0) - 8);
    v4 = *(v3 + 72);
    v5 = (((*(v3 + 80) + 32) & ~*(v3 + 80)) + a1 + 8);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];

      if (v9 >= v8 >> 1)
      {
        sub_10000DB24((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v7;
      v10[5] = v6;
      v5 = (v5 + v4);
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000807C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000080A0, 0, 0);
}

uint64_t sub_1000080A0()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10000815C;
  v3 = v0[3];

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v3, v1, 0, CKQueryOperationMaximumResults);
}

uint64_t sub_10000815C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_10000826C(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_100008364;

  return v7(a2);
}

uint64_t sub_100008364(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100008480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_10002CDD8();
  sub_10002CA38();
  v6 = sub_10002CDF8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10002CD48() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100008578(double a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000B458(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    result = sub_10000B458((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + 8 * v6 + 32) = a1;
  *v1 = v3;
  return result;
}

uint64_t sub_100008618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10000863C, 0, 0);
}

uint64_t sub_10000863C()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10002BDB8;
  v3 = v0[3];

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v3, v1, 0, CKQueryOperationMaximumResults);
}

uint64_t sub_1000086F8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v2 == sub_10002C808() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_10002CD48();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      return v7 & 1;
    }
  }

  v9 = a1[2];
  v8 = a1[3];
  if (v9 == sub_10002C7F8() && v8 == v10)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10002CD48();
  }

  return v7 & 1;
}

uint64_t sub_1000087D0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v24 = a5;
  v11 = a3(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v22 = v13;
    v23 = a6;
    v17 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = *(v12 + 72);
    while (1)
    {
      sub_100005AD8(v17, v15, a4);
      v19 = a1(v15);
      if (v6)
      {
        return sub_100005B40(v15, a4);
      }

      if (v19)
      {
        break;
      }

      sub_100005B40(v15, a4);
      v17 += v18;
      if (!--v16)
      {
        v20 = 1;
        a6 = v23;
        goto LABEL_10;
      }
    }

    a6 = v23;
    sub_10002B814(v15, v23, v24);
    v20 = 0;
LABEL_10:
    v13 = v22;
  }

  else
  {
    v20 = 1;
  }

  return (*(v12 + 56))(a6, v20, 1, v13);
}

uint64_t sub_100008968@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7 - 8);
  v11 = (&v21 - v10);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v21 = a4;
    v22 = _swiftEmptyArrayStorage;
    sub_10000DB24(0, v12, 0);
    v13 = v22;
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    do
    {
      sub_100005AD8(v14, v11, a3);
      v17 = *v11;
      v16 = v11[1];

      result = sub_100005B40(v11, a3);
      v22 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        result = sub_10000DB24((v18 > 1), v19 + 1, 1);
        v13 = v22;
      }

      v13[2] = v19 + 1;
      v20 = &v13[2 * v19];
      v20[4] = v17;
      v20[5] = v16;
      v14 += v15;
      --v12;
    }

    while (v12);
    a4 = v21;
  }

  *a4 = v13;
  return result;
}

char *sub_100008AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_10000B738(*(a1 + 16), 0);
  v4 = sub_10000E634(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_10002B724(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v7 = v3;
  sub_10000BFF0(&v7);
  return v7;
}

uint64_t sub_100008BCC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10002C818();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = *a1;
  v12 = a1[1];
  v29 = a2;
  sub_10002C718();
  v13 = sub_10002C808();
  v15 = v14;
  v16 = *(v5 + 8);
  v30 = v4;
  v28 = v16;
  v16(v10, v4);
  if (v11 == v13 && v12 == v15)
  {
  }

  else
  {
    v18 = sub_10002CD48();

    v19 = 0;
    if ((v18 & 1) == 0)
    {
      return v19 & 1;
    }
  }

  v21 = a1[2];
  v20 = a1[3];
  sub_10002C718();
  v22 = sub_10002C7F8();
  v24 = v23;
  v28(v8, v30);
  if (v21 == v22 && v20 == v24)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_10002CD48();
  }

  return v19 & 1;
}

uint64_t sub_100008DB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002C578();
  v147 = *(v3 - 8);
  v148 = v3;
  __chkstk_darwin(v3);
  v146 = v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002C698();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v144 = v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v141 - v9;
  v11 = sub_10002C998();
  v153 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v142 = v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v141 - v15;
  v17 = __chkstk_darwin(v14);
  v150 = v141 - v18;
  v19 = __chkstk_darwin(v17);
  v149 = (v141 - v20);
  v21 = __chkstk_darwin(v19);
  v143 = v141 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = v141 - v24;
  __chkstk_darwin(v23);
  v27 = v141 - v26;
  sub_10002C548(0);
  sub_10002C9A8();
  v145 = a2;
  sub_10002C548(0);
  v155 = v25;
  sub_10002C9A8();
  sub_10002C678();
  v28 = sub_10002C658();
  if (!v28)
  {
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v54 = sub_10002C978();
    sub_1000053A0(v54, qword_100039DE0);
    v55 = v153;
    (*(v153 + 16))(v16, v27, v11);
    v56 = sub_10002C958();
    v57 = sub_10002CBB8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v154 = v27;
      v59 = v58;
      v60 = swift_slowAlloc();
      v156 = v60;
      *v59 = 136315138;
      sub_10002B3B8(&qword_100038760, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v61 = sub_10002CD38();
      v63 = v62;
      v64 = *(v55 + 8);
      v64(v16, v11);
      v65 = sub_10000B7BC(v61, v63, &v156);

      *(v59 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed at reading archive: %s", v59, 0xCu);
      sub_1000067EC(v60);

      v64(v155, v11);
      v64(v154, v11);
    }

    else
    {

      v79 = *(v55 + 8);
      v79(v16, v11);
      v79(v155, v11);
      v79(v27, v11);
    }

    return 0;
  }

  v29 = v28;
  v154 = v27;
  v152 = v11;
  v156 = _swiftEmptyArrayStorage;
  v30 = sub_10002B3B8(&qword_100038768, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
  v31 = sub_100005338(&qword_100038770, &qword_10002DFF8);
  v32 = sub_10002B880(&qword_100038778, &qword_100038770, &qword_10002DFF8, &protocol conformance descriptor for [A]);
  sub_10002CC08();
  v151 = v29;
  v33 = sub_10002C648();
  v34 = *(v6 + 8);
  v34(v10, v5);
  if (!v33)
  {
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v66 = sub_10002C978();
    sub_1000053A0(v66, qword_100039DE0);
    v67 = v153;
    v68 = v150;
    v69 = v152;
    (*(v153 + 16))(v150, v154, v152);
    v70 = sub_10002C958();
    v71 = sub_10002CBB8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v156 = v73;
      *v72 = 136315138;
      sub_10002B3B8(&qword_100038760, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v74 = sub_10002CD38();
      v76 = v75;
      v77 = *(v67 + 8);
      v77(v68, v69);
      v78 = sub_10000B7BC(v74, v76, &v156);

      *(v72 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v70, v71, "Failed at decompressing archive: %s", v72, 0xCu);
      sub_1000067EC(v73);
    }

    else
    {

      v77 = *(v67 + 8);
      v77(v68, v69);
    }

    sub_10002C668();
    v94 = v154;

    v77(v155, v69);
    v95 = v94;
    goto LABEL_44;
  }

  v35 = sub_10002C6E8();
  v36 = v32;
  v37 = v35;
  v156 = _swiftEmptyArrayStorage;
  v141[3] = v31;
  v141[4] = v30;
  v141[5] = v36;
  sub_10002CC08();
  v141[2] = v37;
  v38 = sub_10002C6A8();
  v34(v10, v5);
  if (!v38)
  {
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v80 = sub_10002C978();
    sub_1000053A0(v80, qword_100039DE0);
    v81 = v153;
    v82 = v149;
    v83 = v152;
    (*(v153 + 16))(v149, v154, v152);
    v84 = sub_10002C958();
    v85 = sub_10002CBB8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v156 = v87;
      *v86 = 136315138;
      sub_10002B3B8(&qword_100038760, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v88 = sub_10002CD38();
      v89 = v82;
      v91 = v90;
      v92 = *(v81 + 8);
      v92(v89, v83);
      v93 = sub_10000B7BC(v88, v91, &v156);

      *(v86 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v84, v85, "Failed at decoding archive: %s", v86, 0xCu);
      sub_1000067EC(v87);
    }

    else
    {

      v92 = *(v81 + 8);
      v92(v82, v83);
    }

    sub_10002C668();
    v96 = v154;
    v97 = v155;

    sub_10002C668();

    v92(v97, v83);
    v92(v96, v83);
    return 0;
  }

  v149 = v34;
  v141[0] = v6;
  v150 = v38;
  v141[1] = v33;
  v39 = objc_opt_self();
  v40 = [v39 defaultManager];
  v41 = v155;
  sub_10002C988();
  v42 = sub_10002CA18();

  v43 = [v40 fileExistsAtPath:v42];

  if ((v43 & 1) == 0)
  {
    v44 = [v39 defaultManager];
    sub_10002C988();
    v45 = sub_10002CA18();

    v156 = 0;
    v46 = [v44 createDirectoryAtPath:v45 withIntermediateDirectories:1 attributes:0 error:&v156];

    if (v46)
    {
      v47 = v156;
      v41 = v155;
      goto LABEL_7;
    }

    v112 = v156;
    sub_10002C508();

    swift_willThrow();
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v113 = sub_10002C978();
    sub_1000053A0(v113, qword_100039DE0);
    v69 = v152;
    v114 = v153;
    v115 = v142;
    (*(v153 + 16))(v142, v155, v152);
    v116 = sub_10002C958();
    v117 = sub_10002CBB8();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v156 = v119;
      *v118 = 136315138;
      sub_10002B3B8(&qword_100038760, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v120 = sub_10002CD38();
      v121 = v115;
      v123 = v122;
      v77 = *(v114 + 8);
      v77(v121, v69);
      v124 = sub_10000B7BC(v120, v123, &v156);

      *(v118 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v116, v117, "Unable to create destination directory: %s", v118, 0xCu);
      sub_1000067EC(v119);
    }

    else
    {

      v77 = *(v114 + 8);
      v77(v115, v69);
    }

    v140 = v154;
    sub_10002C6C8();

    sub_10002C668();

    sub_10002C668();

    v77(v155, v69);
    v95 = v140;
LABEL_44:
    v77(v95, v69);
    return 0;
  }

LABEL_7:
  sub_100005338(&qword_100038780, &qword_10002E000);
  v48 = swift_allocObject();
  v48[1] = xmmword_10002DE30;
  sub_10002C688();
  v156 = v48;
  sub_10002CC08();
  v49 = sub_10002C6B8();
  v50 = v10;
  v51 = v49;
  (v149)(v50, v5);
  v52 = v41;
  if (!v51)
  {
    if (qword_100038240 != -1)
    {
      swift_once();
    }

    v98 = sub_10002C978();
    sub_1000053A0(v98, qword_100039DE0);
    v99 = v153;
    v100 = v143;
    v101 = v152;
    (*(v153 + 16))(v143, v41, v152);
    v102 = sub_10002C958();
    v103 = sub_10002CBB8();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v156 = v105;
      *v104 = 136315138;
      sub_10002B3B8(&qword_100038760, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v106 = sub_10002CD38();
      v107 = v100;
      v109 = v108;
      v110 = *(v99 + 8);
      v110(v107, v101);
      v111 = sub_10000B7BC(v106, v109, &v156);

      *(v104 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v102, v103, "Failed at creating extractStream: %s", v104, 0xCu);
      sub_1000067EC(v105);
    }

    else
    {

      v110 = *(v99 + 8);
      v110(v100, v101);
    }

    v139 = v154;
    sub_10002C6C8();

    sub_10002C668();

    sub_10002C668();

    v110(v155, v101);
    v110(v139, v101);
    return 0;
  }

  v156 = _swiftEmptyArrayStorage;
  v53 = v144;
  sub_10002CC08();
  sub_10002C6D8();
  (v149)(v53, v5);
  v125 = v147;
  v126 = v148;
  v127 = v146;
  if (qword_100038240 != -1)
  {
    swift_once();
  }

  v128 = sub_10002C978();
  sub_1000053A0(v128, qword_100039DE0);
  (*(v125 + 16))(v127, v145, v126);
  v129 = sub_10002C958();
  v130 = sub_10002CB98();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v156 = v149;
    *v131 = 136315138;
    sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v132 = sub_10002CD38();
    v134 = v133;
    (*(v125 + 8))(v127, v126);
    v135 = sub_10000B7BC(v132, v134, &v156);
    v52 = v155;

    *(v131 + 4) = v135;
    _os_log_impl(&_mh_execute_header, v129, v130, "Decompression completed: %s", v131, 0xCu);
    sub_1000067EC(v149);
  }

  else
  {

    (*(v125 + 8))(v127, v126);
  }

  sub_10002C6C8();

  sub_10002C6C8();

  sub_10002C668();

  sub_10002C668();

  v136 = v152;
  v137 = *(v153 + 8);
  v137(v52, v152);
  v137(v154, v136);
  return 1;
}

uint64_t sub_10000A38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002BDBC;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_10000A43C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A4E4;

  return sub_10000EDAC(a1);
}

uint64_t sub_10000A4E4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000A5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10000A6C4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000A6C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000A7B8(uint64_t a1)
{
  v2 = sub_10000B154();

  return MLHostExtension.configuration.getter(a1, v2);
}

unint64_t sub_10000A804()
{
  v1 = v0;
  v2 = sub_10002C7E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for BucketInterval.hour(_:), v2);
  sub_10002C7D8();
  (*(v3 + 8))(v5, v2);
  v6 = sub_10000E84C(_swiftEmptyArrayStorage);
  isa = sub_10002CB58().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v6;
  sub_10000E350(isa, 0xD000000000000013, 0x800000010002E230, isUniquelyReferenced_nonNull_native);
  v9 = v65;
  v10 = sub_10002CB58().super.super.isa;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v9;
  sub_10000E350(v10, 0xD00000000000001ALL, 0x800000010002E250, v11);
  v12 = v65;
  v13 = sub_10002CB58().super.super.isa;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v12;
  sub_10000E350(v13, 0xD00000000000001ALL, 0x800000010002E270, v14);
  v15 = v65;
  v16 = sub_10002CB58().super.super.isa;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v15;
  sub_10000E350(v16, 0xD000000000000024, 0x800000010002E290, v17);
  v18 = v65;
  v19 = sub_10002CB58().super.super.isa;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v18;
  sub_10000E350(v19, 0xD00000000000002ALL, 0x800000010002E2C0, v20);
  v21 = v65;
  v22 = sub_10002CB58().super.super.isa;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v21;
  sub_10000E350(v22, 0xD000000000000018, 0x800000010002E2F0, v23);
  v24 = v65;
  v25 = sub_10002CB58().super.super.isa;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v24;
  sub_10000E350(v25, 0xD00000000000001FLL, 0x800000010002E310, v26);
  v27 = v65;
  v28 = sub_10002CB58().super.super.isa;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v27;
  sub_10000E350(v28, 0xD00000000000001FLL, 0x800000010002E330, v29);
  v30 = v65;
  v31 = sub_10002CB58().super.super.isa;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v30;
  sub_10000E350(v31, 0xD00000000000001ALL, 0x800000010002E350, v32);
  v33 = v65;
  v34 = sub_10002CB58().super.super.isa;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v33;
  sub_10000E350(v34, 0xD00000000000001ALL, 0x800000010002E370, v35);
  v36 = v65;
  v37 = sub_10002CB58().super.super.isa;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v36;
  sub_10000E350(v37, 0xD00000000000001ALL, 0x800000010002E390, v38);
  v39 = v65;
  v40 = sub_10002CB28().super.super.isa;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v39;
  sub_10000E350(v40, 0xD00000000000001BLL, 0x800000010002E3B0, v41);
  v42 = v65;
  v43 = *(v1 + 96);
  sub_10000AE00(v43);
  if ((v44 & 1) == 0)
  {
    v45 = sub_10002CB28().super.super.isa;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v42;
    sub_10000E350(v45, 0xD000000000000012, 0x800000010002E460, v46);
    v47 = v65;
    v48 = sub_10002CB28().super.super.isa;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v47;
    sub_10000E350(v48, 0xD00000000000001BLL, 0x800000010002E480, v49);
    v42 = v65;
  }

  sub_10000AE60(v43);
  if ((v51 & 1) == 0)
  {
    v52 = sub_10002CB28().super.super.isa;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v42;
    sub_10000E350(v52, 0xD000000000000014, 0x800000010002E420, v53);
    v54 = v65;
    v55 = sub_10002CB28().super.super.isa;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v54;
    sub_10000E350(v55, 0xD00000000000001DLL, 0x800000010002E440, v56);
    v42 = v65;
  }

  sub_10000AF2C(v43, v50);
  if ((v57 & 1) == 0)
  {
    v58 = sub_10002CB28().super.super.isa;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v42;
    sub_10000E350(v58, 0xD00000000000001FLL, 0x800000010002E3D0, v59);
    v60 = v65;
    v61 = sub_10002CB28().super.super.isa;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v60;
    sub_10000E350(v61, 0xD000000000000028, 0x800000010002E3F0, v62);
    return v65;
  }

  return v42;
}

uint64_t sub_10000AE00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32) + 0.0;
  if (v1 != 1)
  {
    v3 = 0;
    do
    {
      v2 = v2 + (*(a1 + 40 + 8 * v3) - v2) / (v3 + 2);
      ++v3;
    }

    while (v1 - 1 != v3);
  }

  return *&v2;
}

uint64_t sub_10000AE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    *&result = 0.0;
    return result;
  }

  v9 = a1;

  sub_10000C05C(&v9);
  v2 = v1 >> 1;
  v3 = *(v9 + 2);
  if (v1)
  {
    if (v1 >> 1 < v3)
    {
      v8 = *&v9[8 * v2 + 32];

      return v8;
    }
  }

  else
  {
    if (v1 >> 1 < v3)
    {
      v4 = &v9[8 * v2];
      v6 = *(v4 + 3);
      v5 = *(v4 + 4);

      *&result = (v5 + v6) * 0.5;
      return result;
    }

    __break(1u);
  }

  __break(1u);

  *&result = COERCE_DOUBLE();
  __break(1u);
  return result;
}

long double sub_10000AF2C(uint64_t a1, long double result)
{
  v2 = *(a1 + 16);
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = *(a1 + 32) + 0.0;
    do
    {
      v4 = v4 + (*(a1 + 40 + 8 * v3) - v4) / (v3 + 2);
      ++v3;
    }

    while (v2 - 1 != v3);
    if (v2 > 3)
    {
      v5 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      v7 = vdupq_lane_s64(*&v4, 0);
      v8 = (a1 + 48);
      v6 = 0.0;
      v9 = v2 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v10 = vsubq_f64(v8[-1], v7);
        v11 = vsubq_f64(*v8, v7);
        v12 = vmulq_f64(v10, v10);
        v13 = vmulq_f64(v11, v11);
        v6 = v6 + v12.f64[0] + v12.f64[1] + v13.f64[0] + v13.f64[1];
        v8 += 2;
        v9 -= 4;
      }

      while (v9);
      if (v2 == v5)
      {
        return sqrt(v6 / v2);
      }
    }

    else
    {
      v5 = 0;
      v6 = 0.0;
    }

    v14 = v2 - v5;
    v15 = (a1 + 8 * v5 + 32);
    do
    {
      v16 = *v15++;
      v6 = v6 + (v16 - v4) * (v16 - v4);
      --v14;
    }

    while (v14);
    return sqrt(v6 / v2);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000B098();
  sub_10002C6F8();
  return 0;
}

unint64_t sub_10000B098()
{
  result = qword_100038630;
  if (!qword_100038630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038630);
  }

  return result;
}

unint64_t sub_10000B154()
{
  result = qword_100038638;
  if (!qword_100038638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038638);
  }

  return result;
}

unint64_t sub_10000B1A8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 96);
  v8[4] = *(a1 + 80);
  v8[5] = v2;
  v9 = *(a1 + 112);
  v3 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v3;
  v4 = *(a1 + 64);
  v8[2] = *(a1 + 48);
  v8[3] = v4;
  sub_10002B944(v8, &v7);
  v5 = sub_10000A804();
  sub_10002B97C(v8);
  return v5;
}

Class sub_10000B230(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10002B9AC(0, &qword_1000387A0, NSObject_ptr);
    v4.super.isa = sub_10002C9C8().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_10000B2CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = result + 40;
    do
    {
      v9 = *(v8 - 8);

      v9(a2, a3, a4);

      v8 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

char *sub_10000B354(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005338(&qword_100038750, &qword_10002DFE8);
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

char *sub_10000B458(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005338(&qword_100038738, &qword_10002DFD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10000B55C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100005338(a5, a6);
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

void *sub_10000B738(uint64_t a1, uint64_t a2)
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

  sub_100005338(&qword_100038748, &qword_10002DFE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_10000B7BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B888(v11, 0, 0, 1, a1, a2);
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
    sub_10002B8C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000067EC(v11);
  return v7;
}

unint64_t sub_10000B888(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000B994(a5, a6);
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
    result = sub_10002CC68();
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

void *sub_10000B994(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000B9E0(a1, a2);
  sub_10000BB10(&off_100034DA8);
  return v3;
}

void *sub_10000B9E0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000BBFC(v5, 0);
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

  result = sub_10002CC68();
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
        v10 = sub_10002CA48();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000BBFC(v10, 0);
        result = sub_10002CC48();
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

uint64_t sub_10000BB10(uint64_t result)
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

  result = sub_10000BC70(result, v11, 1, v3);
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

void *sub_10000BBFC(uint64_t a1, uint64_t a2)
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

  sub_100005338(&qword_100038788, &qword_10002E008);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000BC70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005338(&qword_100038788, &qword_10002E008);
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

uint64_t sub_10000BD64(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10002CDD8();
  sub_10002CA38();
  v8 = sub_10002CDF8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10002CD48() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10000DF2C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000BEB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10002CDD8();
  sub_10002CA38();
  v6 = sub_10002CDF8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10002CD48() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10000D34C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10000D940(v8);
  *v2 = v16;
  return v12;
}

Swift::Int sub_10000BFF0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000E78C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10000C190(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10000C05C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000E7A0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_10002CD28(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_10002CAB8();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10000C934(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_10000C190(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10002CD28(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_10002CAB8();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10000C358(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10000C288(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000C288(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_10002CD48(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000C358(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10000D338(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10000CE90((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_10002CD48();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_10002CD48();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000B354(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10000B354((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10000CE90((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10000D338(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10000D2AC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_10002CD48(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_10000C934(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10000D338(v8);
      v8 = result;
    }

    v76 = v8 + 2;
    v77 = v8[2];
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_10000D0B8((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000B354(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v30 = v8[3];
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_10000B354((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v31;
    v32 = v8 + 4;
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = v8[4];
          v35 = v8[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[2 * v5];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[2 * v5];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[2 * v5 - 2];
        v72 = *v71;
        v73 = &v32[2 * v5];
        v74 = v73[1];
        sub_10000D0B8((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v8[2];
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove(&v32[2 * v5], v73 + 2, 16 * (v75 - 1 - v5));
        v8[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[2 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[2 * v5];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10000CE90(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_10002CD48() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_10002CD48() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10000D0B8(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_10000D2AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000D338(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_10000D34C()
{
  v1 = v0;
  sub_100005338(&qword_100038740, &qword_10002DFD8);
  v2 = *v0;
  v3 = sub_10002CC28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10000D4A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005338(&qword_100038740, &qword_10002DFD8);
  result = sub_10002CC38();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10002CDD8();

      sub_10002CA38();
      result = sub_10002CDF8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10000D6E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005338(&qword_100038740, &qword_10002DFD8);
  result = sub_10002CC38();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10002CDD8();
      sub_10002CA38();
      result = sub_10002CDF8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_10000D940(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10002CC18();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_10002CDD8();

        sub_10002CA38();
        v10 = sub_10002CDF8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_10000DB04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000DC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000DB24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000DB44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000DB44(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005338(&qword_100038748, &qword_10002DFE0);
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

void *sub_10000DC50(void *result, int64_t a2, char a3, void *a4)
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

  sub_100005338(&qword_100038798, &qword_10002E010);
  v10 = *(sub_10002C748() - 8);
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
  v15 = *(sub_10002C748() - 8);
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

char *sub_10000DE28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005338(&qword_100038738, &qword_10002DFD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_10000DF2C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000D6E0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000D34C();
      goto LABEL_16;
    }

    sub_10000D4A8(v8 + 1);
  }

  v10 = *v4;
  sub_10002CDD8();
  sub_10002CA38();
  result = sub_10002CDF8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10002CD48();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10002CD58();
  __break(1u);
  return result;
}

uint64_t sub_10000E0AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005338(&qword_1000387A8, &qword_10002E018);
  v35 = v4;
  result = sub_10002CC98();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_10002CDD8();
      sub_10002CA38();
      result = sub_10002CDF8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000E350(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000058C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000E0AC(v16, a4 & 1);
      v11 = sub_1000058C4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10002CD68();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10000E4C8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_10000E4C8()
{
  v1 = v0;
  sub_100005338(&qword_1000387A8, &qword_10002E018);
  v2 = *v0;
  v3 = sub_10002CC88();
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

        result = v20;
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

void *sub_10000E634(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10000E7B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10002CB48();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10000BD64(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10000E84C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005338(&qword_1000387A8, &qword_10002E018);
    v3 = sub_10002CCA8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000058C4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void *sub_10000E950(uint64_t a1)
{
  v2 = sub_10002C948();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = sub_10002C748();
  v10 = __chkstk_darwin(v9);
  v44 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v31 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v16 = *(v12 + 16);
    v15 = v12 + 16;
    v39 = v16;
    v17 = *(v15 + 56);
    v33 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v18 = a1 + v33;
    v37 = enum case for TaskType.dynamicTask(_:);
    v35 = (v3 + 8);
    v36 = (v3 + 104);
    v32 = (v15 - 8);
    v43 = (v15 + 16);
    v19 = _swiftEmptyArrayStorage;
    v45 = v6;
    v41 = v9;
    v42 = v8;
    v34 = v2;
    v40 = v15;
    v38 = v17;
    while (1)
    {
      v46 = v14;
      v39(v47, v18, v9);
      sub_10002C738();
      (*v36)(v6, v37, v2);
      sub_10002B3B8(&qword_100038790, &type metadata accessor for TaskType, &protocol conformance descriptor for TaskType);
      sub_10002CA68();
      sub_10002CA68();
      v21 = v50 == v48 && v51 == v49;
      v22 = v8;
      if (v21)
      {
        break;
      }

      v23 = sub_10002CD48();
      v24 = *v35;
      (*v35)(v45, v2);
      v24(v22, v2);
      v6 = v45;

      if (v23)
      {
        goto LABEL_12;
      }

      v9 = v41;
      (*v32)(v47, v41);
      v20 = v38;
      v2 = v34;
LABEL_4:
      v18 += v20;
      v14 = v46 - 1;
      v8 = v42;
      if (v46 == 1)
      {
        return v19;
      }
    }

    v25 = *v35;
    (*v35)(v6, v2);
    v25(v22, v2);

LABEL_12:
    v26 = *v43;
    v9 = v41;
    (*v43)(v44, v47, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000DB04(0, v19[2] + 1, 1);
      v19 = v52;
    }

    v2 = v34;
    v29 = v19[2];
    v28 = v19[3];
    if (v29 >= v28 >> 1)
    {
      sub_10000DB04((v28 > 1), v29 + 1, 1);
      v19 = v52;
    }

    v19[2] = v29 + 1;
    v20 = v38;
    v26(v19 + v33 + v29 * v38, v44, v9);
    v6 = v45;
    goto LABEL_4;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000EDAC(uint64_t a1)
{
  v1[61] = a1;
  sub_100005338(&qword_100038640, &qword_10002DF00);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v2 = type metadata accessor for TaskPayloadRecord(0);
  v1[64] = v2;
  v1[65] = *(v2 - 8);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v3 = sub_10002C518();
  v1[70] = v3;
  v1[71] = *(v3 - 8);
  v1[72] = swift_task_alloc();
  sub_100005338(&qword_100038648, &unk_10002DF08);
  v1[73] = swift_task_alloc();
  v4 = sub_10002C578();
  v1[74] = v4;
  v1[75] = *(v4 - 8);
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v5 = sub_10002C748();
  v1[87] = v5;
  v1[88] = *(v5 - 8);
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  sub_100005338(&qword_100038248, &unk_10002D560);
  v1[104] = swift_task_alloc();
  v6 = sub_10002C908();
  v1[105] = v6;
  v1[106] = *(v6 - 8);
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  sub_100005338(&qword_100038650, &qword_10002DF18);
  v1[111] = swift_task_alloc();
  v7 = sub_100005338(&qword_100038658, &qword_10002DF20);
  v1[112] = v7;
  v1[113] = *(v7 - 8);
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v8 = sub_10002C3F8();
  v1[116] = v8;
  v1[117] = *(v8 - 8);
  v1[118] = swift_task_alloc();
  v9 = sub_10002C408();
  v1[119] = v9;
  v1[120] = *(v9 - 8);
  v1[121] = swift_task_alloc();
  sub_100005338(&qword_100038660, &qword_10002DF28);
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v10 = type metadata accessor for TaskParametersRecord(0);
  v1[126] = v10;
  v1[127] = *(v10 - 8);
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v11 = sub_10002C8C8();
  v1[133] = v11;
  v1[134] = *(v11 - 8);
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  sub_100005338(&qword_100038668, &qword_10002DF30);
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v12 = sub_10002C818();
  v1[141] = v12;
  v1[142] = *(v12 - 8);
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  sub_100005338(&qword_100038670, &qword_10002DF38);
  v1[151] = swift_task_alloc();
  v13 = type metadata accessor for TaskRecord(0);
  v1[152] = v13;
  v1[153] = *(v13 - 8);
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v14 = sub_10002C638();
  v1[161] = v14;
  v1[162] = *(v14 - 8);
  v1[163] = swift_task_alloc();
  v15 = sub_10002C608();
  v1[164] = v15;
  v1[165] = *(v15 - 8);
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v16 = sub_10002C898();
  v1[171] = v16;
  v1[172] = *(v16 - 8);
  v1[173] = swift_task_alloc();
  v1[174] = swift_task_alloc();
  v17 = sub_10002C888();
  v1[175] = v17;
  v1[176] = *(v17 - 8);
  v1[177] = swift_task_alloc();
  v1[178] = swift_task_alloc();
  v1[179] = swift_task_alloc();
  v1[180] = swift_task_alloc();
  v1[181] = swift_task_alloc();
  v1[182] = swift_task_alloc();
  v1[183] = swift_task_alloc();
  v1[184] = swift_task_alloc();
  sub_100005338(&qword_100038678, &qword_10002DF40);
  v1[185] = swift_task_alloc();
  v18 = sub_10002C798();
  v1[186] = v18;
  v1[187] = *(v18 - 8);
  v1[188] = swift_task_alloc();

  return _swift_task_switch(sub_10000F954, 0, 0);
}

uint64_t sub_10000F954()
{
  if (qword_100038240 != -1)
  {
    swift_once();
  }

  v1 = v0[61];
  v2 = sub_10002C978();
  v0[189] = sub_1000053A0(v2, qword_100039DE0);
  v3 = v1;
  v4 = sub_10002C958();
  v5 = sub_10002CB98();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[61];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;

    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v8, 0xCu);
    sub_10002B7B4(v9, &qword_1000386C8, &qword_10002DF80);
  }

  else
  {
  }

  v0[190] = sub_10002C768();
  v0[191] = sub_10002C758();
  v10 = _s20LighthouseBackground12MLHostClientC9getConfigAA0cF0VyYaAA0cD5ErrorOYKFTjTu;
  v11 = swift_task_alloc();
  v0[192] = v11;
  *v11 = v0;
  v11[1] = sub_10000FB70;
  v12 = v0[185];
  v13 = v0[184];

  return ((&_s20LighthouseBackground12MLHostClientC9getConfigAA0cF0VyYaAA0cD5ErrorOYKFTjTu + v10))(v12, v13);
}

uint64_t sub_10000FB70()
{
  v2 = *v1;
  *(*v1 + 1544) = v0;

  if (v0)
  {
    (*(v2[176] + 8))(v2[184], v2[175]);

    v3 = sub_100022FDC;
  }

  else
  {

    v3 = sub_10000FD00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000FD00()
{
  v67 = v0;
  v1 = v0[188];
  v2 = v0[187];
  v3 = v0[186];
  v4 = v0[185];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[171];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_10002C788();
  (*(v7 + 104))(v6, enum case for MLHostEnvironment.development(_:), v8);
  v9 = sub_100007624();
  v10 = *(v7 + 8);
  v10(v6, v8);
  v10(v5, v8);
  v11 = sub_10002C958();
  v12 = sub_10002CB98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "useSandboxEnvironment: %{BOOL}d", v13, 8u);
  }

  v14 = sub_10002C778();
  v0[194] = v15;
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xD00000000000001ALL;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0x800000010002E1B0;
  }

  swift_bridgeObjectRetain_n();
  v18 = sub_10002C958();
  v19 = sub_10002CB98();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v66[0] = v21;
    *v20 = 136315138;

    v22 = sub_10000B7BC(v16, v17, v66);

    *(v20 + 4) = v22;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v18, v19, "containerName: %s", v20, 0xCu);
    sub_1000067EC(v21);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v23 = v0[170];
  v24 = v0[165];
  v25 = v0[164];
  sub_10002C5A8();
  sub_10002C598();
  v27 = v26;
  v28 = *(v24 + 8);
  v0[195] = v28;
  v0[196] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v23, v25);
  if ((v9 & 1) == 0)
  {
    v29 = objc_allocWithZone(NSUserDefaults);
    v30 = sub_10002CA18();
    v31 = [v29 initWithSuiteName:v30];

    if (v31)
    {
      v32 = sub_10002CA18();
      [v31 doubleForKey:v32];
      v27 = v33;
    }
  }

  v34 = v0[170];
  v35 = v0[164];
  sub_10002C5D8();
  sub_10002C598();
  v37 = v36;
  v28(v34, v35);
  if (v37 - v27 < 604800.0)
  {
    v38 = sub_10002C958();
    v39 = sub_10002CB98();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134218240;
      *(v40 + 4) = v27;
      *(v40 + 12) = 2048;
      *(v40 + 14) = 0x4122750000000000;

      _os_log_impl(&_mh_execute_header, v38, v39, "Last CloudSync was %f. Skipping execution due to minInterval: %f.", v40, 0x16u);
    }

    else
    {
    }

LABEL_24:
    v44 = v0[188];
    v45 = v0[187];
    v46 = v0[186];
    v47 = objc_allocWithZone(sub_10002C7C8());
    v63 = sub_10002C7B8();
    (*(v45 + 8))(v44, v46);

    v48 = v0[1];

    return v48(v63);
  }

  if (sub_10002CB18())
  {

    v41 = sub_10002C958();
    v42 = sub_10002CB98();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v65 = 0;
      v66[0] = 0;
      *v43 = 0;
      v64 = v43 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, &v64, &v65, v66);
      _os_log_impl(&_mh_execute_header, v41, v42, "Task cancelled.", v43, 2u);
    }

    goto LABEL_24;
  }

  v50 = swift_allocObject();
  v0[197] = v50;
  *(v50 + 16) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  *(v50 + 64) = 0u;
  *(v50 + 80) = 0u;
  *(v50 + 96) = 0u;
  *(v50 + 112) = _swiftEmptyArrayStorage;
  if (v9)
  {
    v51 = 2;
  }

  else
  {
    v51 = 1;
  }

  v52 = objc_allocWithZone(CKContainerID);

  v53 = sub_10002CA18();

  v54 = [v52 initWithContainerIdentifier:v53 environment:v51];
  v0[198] = v54;

  v55 = [objc_allocWithZone(CKContainer) initWithContainerID:v54];
  v0[199] = v55;
  v0[200] = [v55 publicCloudDatabase];
  v56 = [objc_opt_self() defaultRecordZone];
  v0[201] = [v56 zoneID];

  v57 = [objc_allocWithZone(CKOperationGroup) init];
  v0[202] = v57;
  v58 = sub_10002CA18();
  [v57 setName:v58];

  v59 = [objc_allocWithZone(CKOperationConfiguration) init];
  v0[203] = v59;
  [v59 setPreferAnonymousRequests:1];
  v0[204] = sub_10002C758();
  v60 = _s20LighthouseBackground12MLHostClientC13getExtensionsSayAA15ExtensionRecordVGyYaAA0cD5ErrorOYKFTjTu;
  v61 = swift_task_alloc();
  v0[205] = v61;
  *v61 = v0;
  v61[1] = sub_100010A34;
  v62 = v0[183];

  return ((&_s20LighthouseBackground12MLHostClientC13getExtensionsSayAA15ExtensionRecordVGyYaAA0cD5ErrorOYKFTjTu + v60))(v62);
}

uint64_t sub_100010A34(uint64_t a1)
{
  v3 = *v2;
  v3[206] = a1;
  v3[207] = v1;

  if (v1)
  {
    (*(v3[176] + 8))(v3[183], v3[175]);

    v4 = sub_100022908;
  }

  else
  {

    v4 = sub_100010BF4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100010BF4()
{
  v49 = v0;
  v1 = sub_100007E10(v0[206]);
  v0[208] = sub_10000E7B4(v1);

  swift_bridgeObjectRetain_n();
  v2 = sub_10002C958();
  v3 = sub_10002CB98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v48 = v5;
    *v4 = 136315138;

    v6 = sub_10002CB38();
    v8 = v7;

    v9 = sub_10000B7BC(v6, v8, &v48);

    *(v4 + 4) = v9;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v2, v3, "Available extensions: %s", v4, 0xCu);
    sub_1000067EC(v5);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v10 = v0[195];
  v11 = v0[170];
  v12 = v0[168];
  v46 = v0[167];
  v44 = v0[169];
  v45 = v0[165];
  v13 = v0[164];
  v14 = v0[163];
  v15 = v0[162];
  v16 = v0[161];
  sub_10002C488();
  swift_allocObject();
  v0[209] = sub_10002C478();
  sub_10002C628();
  sub_10002C5D8();
  sub_10002C618();
  v10(v12, v13);
  (*(v15 + 8))(v14, v16);
  sub_10002C5E8();
  v10(v11, v13);
  v0[210] = sub_10002B9AC(0, &qword_100038680, NSPredicate_ptr);
  v0[211] = sub_100005338(&qword_100038688, &qword_10002DF48);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10002DE40;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_10002B02C();
  v0[212] = v18;
  *(v17 + 64) = v18;
  *(v17 + 32) = 0x65746144646E65;
  *(v17 + 40) = 0xE700000000000000;
  isa = sub_10002C5B8().super.isa;
  *(v17 + 96) = sub_10002B9AC(0, &qword_100038698, NSDate_ptr);
  *(v17 + 104) = sub_10002B080();
  *(v17 + 72) = isa;
  v20 = sub_10002CB88();
  v0[213] = v20;
  (*(v45 + 16))(v46, v44, v13);
  v21 = sub_10002C958();
  v22 = sub_10002CB98();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[195];
  v25 = v0[167];
  v26 = v0[164];
  if (v23)
  {
    v27 = swift_slowAlloc();
    v47 = v20;
    v28 = swift_slowAlloc();
    v48 = v28;
    *v27 = 136315138;
    sub_10002B3B8(&qword_100038720, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v29 = sub_10002CD38();
    v31 = sub_10000B7BC(v29, v30, &v48);

    *(v27 + 4) = v31;
    v24(v25, v26);
    _os_log_impl(&_mh_execute_header, v21, v22, "Querying Tasks with endDate after cutoff: %s", v27, 0xCu);
    sub_1000067EC(v28);
    v20 = v47;
  }

  else
  {

    v24(v25, v26);
  }

  v32 = v0[203];
  v33 = v0[202];
  v34 = v0[201];
  v0[214] = sub_10002B9AC(0, &qword_1000386A8, CKQuery_ptr);
  v35 = v20;
  v51._countAndFlagsBits = 0x736B736154;
  v51._object = 0xE500000000000000;
  v36 = sub_10002CBC8(v51, v35).super.isa;
  v0[215] = v36;
  v37 = swift_task_alloc();
  v0[216] = v37;
  *(v37 + 16) = v36;
  *(v37 + 24) = v34;
  v38 = swift_task_alloc();
  v0[217] = v38;
  *(v38 + 16) = &unk_10002DF58;
  *(v38 + 24) = v37;
  v39 = v32;
  v40 = v33;
  v41 = swift_task_alloc();
  v0[218] = v41;
  v42 = sub_100005338(&qword_1000386B0, &qword_10002DF70);
  v0[219] = v42;
  *v41 = v0;
  v41[1] = sub_1000111EC;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 41, v32, v33, &unk_10002DF68, v38, v42);
}

uint64_t sub_1000111EC()
{
  v2 = *v1;
  *(*v1 + 1760) = v0;

  if (v0)
  {
    v3 = *(v2 + 1624);

    v4 = sub_100023688;
  }

  else
  {

    v4 = sub_100011394;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100011394()
{
  v128 = v0;
  v1 = v0[213];
  v2 = v0[197];
  v3 = v0[195];
  v4 = v0[169];
  v5 = v0[164];

  v3(v4, v5);
  v6 = v0[41];

  v7 = *(v6 + 16);
  *(v2 + 16) = v7;
  v122 = v7;
  v124 = v0;
  if (v7)
  {
    v8 = 0;
    v109 = v0[153];
    v9 = v0[142];
    v115 = (v9 + 56);
    v111 = (v9 + 32);
    v110 = (v9 + 8);
    v113 = v0[159];
    v112 = v0[158];
    v116 = v0[220];
    v117 = v0[160];
    v10 = (v6 + 48);
    v114 = _swiftEmptyArrayStorage;
    v119 = v6;
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        __break(1u);
LABEL_54:
        __break(1u);
      }

      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = *(v10 - 2);
      sub_10002B400(v11, v12);
      v14 = sub_10002C958();
      v15 = sub_10002CBA8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;

        _os_log_impl(&_mh_execute_header, v14, v15, "CKRecordID: %@", v16, 0xCu);
        sub_10002B7B4(v17, &qword_1000386C8, &qword_10002DF80);
        v6 = v119;
        v0 = v124;

        if (v12)
        {
          goto LABEL_12;
        }
      }

      else
      {

        if (v12)
        {
LABEL_12:
          swift_errorRetain();
          swift_errorRetain();
          v27 = sub_10002C958();
          v28 = sub_10002CBB8();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = v13;
            v30 = swift_slowAlloc();
            v31 = v8;
            v32 = swift_slowAlloc();
            *v30 = 138412290;
            swift_errorRetain();
            v33 = _swift_stdlib_bridgeErrorToNSError();
            *(v30 + 4) = v33;
            *v32 = v33;
            sub_10002B40C(v11, 1);
            sub_10002B40C(v11, 1);
            _os_log_impl(&_mh_execute_header, v27, v28, "Error: %@", v30, 0xCu);
            sub_10002B7B4(v32, &qword_1000386C8, &qword_10002DF80);
            v8 = v31;

            sub_10002B40C(v11, 1);
          }

          else
          {

            sub_10002B40C(v11, 1);
            sub_10002B40C(v11, 1);
          }

          v46 = v0[197];
          v47 = *(v46 + 32);
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_52;
          }

          *(v46 + 32) = v49;
          goto LABEL_4;
        }
      }

      v120 = v13;
      v18 = v0[152];
      v19 = v0[151];
      v20 = v11;
      sub_1000022C8(v20, v19);
      if ((*(v109 + 48))(v19, 1, v18) == 1)
      {
        sub_10002B7B4(v0[151], &qword_100038670, &qword_10002DF38);
        v21 = v20;
        v22 = sub_10002C958();
        v23 = sub_10002CBB8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = v8;
          v26 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v21;
          *v26 = v11;
          sub_10002B40C(v11, 0);
          _os_log_impl(&_mh_execute_header, v22, v23, "Skipping record: %@", v24, 0xCu);
          sub_10002B7B4(v26, &qword_1000386C8, &qword_10002DF80);
          v8 = v25;

          sub_10002B40C(v11, 0);
        }

        else
        {

          sub_10002B40C(v11, 0);
          sub_10002B40C(v11, 0);
        }
      }

      else
      {
        v34 = v0[208];
        sub_10002B814(v0[151], v0[160], type metadata accessor for TaskRecord);
        v35 = sub_100008480(*(v117 + 16), *(v117 + 24), v34);
        v36 = v0[160];
        v118 = v8;
        if (v35)
        {
          sub_100005AD8(v36, v0[158], type metadata accessor for TaskRecord);
          v37 = sub_10002C958();
          v38 = sub_10002CBA8();
          v39 = os_log_type_enabled(v37, v38);
          v40 = v0[158];
          if (v39)
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v127[0] = v42;
            *v41 = 136315138;
            v43 = *v40;
            v44 = *(v112 + 8);

            v45 = sub_10000B7BC(v43, v44, v127);
            v6 = v119;
            v0 = v124;

            *(v41 + 4) = v45;
            sub_100005B40(v40, type metadata accessor for TaskRecord);
            _os_log_impl(&_mh_execute_header, v37, v38, "Parsing config file for taskName: %s", v41, 0xCu);
            sub_1000067EC(v42);
          }

          else
          {

            sub_100005B40(v40, type metadata accessor for TaskRecord);
          }

          sub_10002B3B8(&qword_1000386D0, &type metadata accessor for TaskDefinition, &protocol conformance descriptor for TaskDefinition);
          sub_10002C468();
          v59 = v0[141];
          v60 = v0[140];
          if (v116)
          {

            (*v115)(v60, 1, 1, v59);
            sub_10002B7B4(v60, &qword_100038668, &qword_10002DF30);
            v61 = sub_10002C958();
            v62 = sub_10002CBB8();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              v126 = 0;
              v127[0] = 0;
              *v63 = 0;
              v125[0] = v63 + 2;
              sub_10000B2CC(_swiftEmptyArrayStorage, v125, &v126, v127);
              v116 = 0;
              _os_log_impl(&_mh_execute_header, v61, v62, "Failed to parse TaskDefinition from config file, skipping task.", v63, 2u);

              sub_10002B40C(v11, 0);
            }

            else
            {

              sub_10002B40C(v11, 0);
              v116 = 0;
            }

            v8 = v118;
            v65 = v0[197];
            v66 = *(v65 + 32);
            v48 = __OFADD__(v66, 1);
            v67 = v66 + 1;
            if (v48)
            {
              goto LABEL_53;
            }

            v68 = v0[160];
            *(v65 + 32) = v67;
            sub_100005B40(v68, type metadata accessor for TaskRecord);
          }

          else
          {
            v64 = v0[150];
            (*v115)(v0[140], 0, 1, v0[141]);
            (*v111)(v64, v60, v59);
            sub_10002C918();
            sub_100005AD8(v0[160], v0[157], type metadata accessor for TaskRecord);
            v69 = v114;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = sub_10000B55C(0, v114[2] + 1, 1, v114, &qword_100038728, &qword_10002DFC0, type metadata accessor for TaskRecord);
            }

            v71 = v69[2];
            v70 = v69[3];
            if (v71 >= v70 >> 1)
            {
              v114 = sub_10000B55C((v70 > 1), v71 + 1, 1, v69, &qword_100038728, &qword_10002DFC0, type metadata accessor for TaskRecord);
            }

            else
            {
              v114 = v69;
            }

            v72 = v0[197];
            v73 = v0[157];
            v74 = v0[150];
            v75 = v0[141];
            v114[2] = v71 + 1;
            sub_10002B814(v73, v114 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v71, type metadata accessor for TaskRecord);
            sub_10002B40C(v11, 0);

            (*v110)(v74, v75);
            v76 = *(v72 + 24);
            v48 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v48)
            {
              goto LABEL_54;
            }

            v78 = v0[160];
            *(v0[197] + 24) = v77;
            sub_100005B40(v78, type metadata accessor for TaskRecord);
            v116 = 0;
            v8 = v118;
          }
        }

        else
        {
          sub_100005AD8(v36, v0[159], type metadata accessor for TaskRecord);
          v50 = sub_10002C958();
          v51 = sub_10002CBA8();
          v52 = os_log_type_enabled(v50, v51);
          v53 = v0[159];
          if (v52)
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v127[0] = v55;
            *v54 = 136315138;
            v56 = *v53;
            v57 = *(v113 + 8);

            v58 = sub_10000B7BC(v56, v57, v127);

            *(v54 + 4) = v58;
            sub_100005B40(v53, type metadata accessor for TaskRecord);
            _os_log_impl(&_mh_execute_header, v50, v51, "Skipping task %s because extensionId is not available.", v54, 0xCu);
            sub_1000067EC(v55);
            v6 = v119;
            v0 = v124;

            sub_10002B40C(v11, 0);
          }

          else
          {

            sub_10002B40C(v11, 0);
            sub_100005B40(v53, type metadata accessor for TaskRecord);
          }

          sub_100005B40(v0[160], type metadata accessor for TaskRecord);
          v8 = v118;
        }
      }

LABEL_4:
      ++v8;
      v10 += 24;
      if (v122 == v8)
      {
        goto LABEL_40;
      }
    }
  }

  v114 = _swiftEmptyArrayStorage;
LABEL_40:
  v0[221] = v114;

  v79 = sub_100007F4C(v114);
  v0[222] = sub_10000E7B4(v79);

  if (sub_10002CB18())
  {
    v80 = v0[203];
    v81 = v0[202];

    v82 = sub_10002C958();
    v83 = sub_10002CB98();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v126 = 0;
      v127[0] = 0;
      *v84 = 0;
      v125[0] = v84 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v125, &v126, v127);
      _os_log_impl(&_mh_execute_header, v82, v83, "Task cancelled before adding tasks to mlhost.", v84, 2u);
    }

    v85 = v0[203];
    v86 = v0[202];
    v87 = v0[201];
    v88 = v124[200];
    v89 = v124[199];
    v90 = v124[198];
    v91 = v124[197];
    v92 = v124[187];
    v121 = v124[186];
    v123 = v124[188];
    v93 = objc_allocWithZone(sub_10002C7C8());
    v108 = sub_10002C7B8();

    sub_100007A74(v91);
    (*(v92 + 8))(v123, v121);

    v94 = v124[1];

    return v94(v108);
  }

  else
  {
    v96 = sub_10002C958();
    v97 = sub_10002CB98();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v126 = 0;
      v127[0] = 0;
      *v98 = 0;
      v125[0] = v98 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v125, &v126, v127);
      _os_log_impl(&_mh_execute_header, v96, v97, "Querying TaskParameters for tasks.", v98, 2u);
    }

    v99 = v0[203];
    v100 = v0[202];
    v101 = v0[201];
    v102 = [objc_opt_self() predicateWithValue:1];
    v130._countAndFlagsBits = 0x617261506B736154;
    v130._object = 0xEE0073726574656DLL;
    isa = sub_10002CBC8(v130, v102).super.isa;
    v0[223] = isa;
    v104 = swift_task_alloc();
    v0[224] = v104;
    *(v104 + 16) = isa;
    *(v104 + 24) = v101;
    v105 = swift_task_alloc();
    v0[225] = v105;
    *(v105 + 16) = &unk_10002DF90;
    *(v105 + 24) = v104;
    v106 = swift_task_alloc();
    v0[226] = v106;
    *v106 = v0;
    v106[1] = sub_100012D04;
    v107 = v0[219];

    return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 33, v99, v100, &unk_10002DF98, v105, v107);
  }
}

uint64_t sub_100012D04()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v3 = *(v2 + 1624);

    v4 = sub_1000242D8;
  }

  else
  {

    v4 = sub_100012EB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100012EB8()
{
  v242 = v1;
  v4 = *(v1 + 1576);

  v5 = *(v1 + 264);
  v6 = v5[2];
  v4[7].isa = v6;
  v236 = v1;
  if (v6)
  {
    v7 = 0;
    v218 = *(v1 + 1016);
    v8 = v5 + 6;
    v9 = _swiftEmptyArrayStorage;
    v219 = *(v1 + 1056);
    v230 = *(v1 + 1816);
    v222 = v5;
    v226 = v6;
    while (1)
    {
      if (v7 >= v5[2])
      {
        __break(1u);
        goto LABEL_91;
      }

      v237 = v7;
      v0 = *(v8 - 2);
      v2 = *(v8 - 1);
      if ((*v8 & 1) == 0)
      {
        break;
      }

      sub_10002B400(*(v8 - 1), 1);
      sub_10002B400(v2, 1);
      sub_10002B400(v2, 1);
      v3 = v0;
      v4 = sub_10002C958();
      v11 = sub_10002CBB8();
      if (os_log_type_enabled(v4, v11))
      {
        v0 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v0 = 138412290;
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v0 + 4) = v13;
        *v12 = v13;

        sub_10002B40C(v2, 1);
        sub_10002B40C(v2, 1);
        _os_log_impl(&_mh_execute_header, v4, v11, "Error: %@", v0, 0xCu);
        sub_10002B7B4(v12, &qword_1000386C8, &qword_10002DF80);
        v5 = v222;
        v1 = v236;

        sub_10002B40C(v2, 1);
      }

      else
      {

        sub_10002B40C(v2, 1);
        sub_10002B40C(v2, 1);
      }

      v19 = *(v1 + 1576);
      v20 = *(v19 + 72);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      v10 = v237;
      if (v21)
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
      }

      *(v19 + 72) = v22;
LABEL_6:
      v7 = (v10 + 1);
      v8 += 3;
      if (v6 == v7)
      {
        goto LABEL_32;
      }
    }

    v14 = *(v1 + 1008);
    v15 = *(v1 + 1000);
    sub_10002B400(*(v8 - 1), 0);
    sub_10002B400(v2, 0);
    v16 = v0;
    sub_10000391C(v2, v15);
    if ((*(v218 + 48))(v15, 1, v14) == 1)
    {
      sub_10002B7B4(*(v1 + 1000), &qword_100038660, &qword_10002DF28);
      v3 = v2;
      v4 = sub_10002C958();
      v17 = sub_10002CBB8();
      if (os_log_type_enabled(v4, v17))
      {
        v18 = swift_slowAlloc();
        v0 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v3;
        *v0 = v2;

        sub_10002B40C(v2, 0);
        _os_log_impl(&_mh_execute_header, v4, v17, "Skipping record: %@", v18, 0xCu);
        sub_10002B7B4(v0, &qword_1000386C8, &qword_10002DF80);

        v5 = v222;
        v1 = v236;

        sub_10002B40C(v2, 0);
      }

      else
      {

        sub_10002B40C(v2, 0);
        sub_10002B40C(v2, 0);
      }

      goto LABEL_4;
    }

    v23 = *(v1 + 1664);
    v3 = *(v1 + 1056);
    v24 = *(v1 + 1000);

    sub_10002B814(v24, v3, type metadata accessor for TaskParametersRecord);
    v0 = v219;
    if (sub_100008480(v219[2], v219[3], v23))
    {
      if (sub_100008480(**(v1 + 1056), v219[1], *(v1 + 1776)))
      {
        sub_100005AD8(*(v1 + 1056), *(v1 + 1048), type metadata accessor for TaskParametersRecord);
        v6 = v226;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10000B55C(0, v9[2] + 1, 1, v9, &qword_100038730, &qword_10002DFC8, type metadata accessor for TaskParametersRecord);
        }

        v0 = v9[2];
        v25 = v9[3];
        v4 = (v0 + 1);
        if (v0 >= v25 >> 1)
        {
          v9 = sub_10000B55C((v25 > 1), v0 + 1, 1, v9, &qword_100038730, &qword_10002DFC8, type metadata accessor for TaskParametersRecord);
        }

        v26 = *(v1 + 1576);
        v27 = *(v1 + 1056);
        v28 = *(v1 + 1048);
        v9[2] = v4;
        sub_10002B814(v28, v9 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v0, type metadata accessor for TaskParametersRecord);
        sub_10002B40C(v2, 0);
        sub_100005B40(v27, type metadata accessor for TaskParametersRecord);
        v29 = *(v26 + 64);
        v21 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v21)
        {
          goto LABEL_98;
        }

        *(*(v1 + 1576) + 64) = v30;
        v5 = v222;
        goto LABEL_5;
      }

      v31 = sub_10002C958();
      v3 = sub_10002CBA8();
      v37 = os_log_type_enabled(v31, v3);
      v4 = *(v1 + 1056);
      if (!v37)
      {
        goto LABEL_30;
      }

      v33 = swift_slowAlloc();
      v240 = 0;
      v241[0] = 0;
      *v33 = 0;
      v239[0] = v33 + 2;
      v0 = v9;
      sub_10000B2CC(_swiftEmptyArrayStorage, v239, &v240, v241);
      v34 = v3;
      v35 = v31;
      v36 = "Skipping taskParametersRecord because associated with an unavailable taskName.";
    }

    else
    {
      v31 = sub_10002C958();
      v3 = sub_10002CBA8();
      v32 = os_log_type_enabled(v31, v3);
      v4 = *(v1 + 1056);
      if (!v32)
      {
LABEL_30:

        sub_10002B40C(v2, 0);
        sub_100005B40(v4, type metadata accessor for TaskParametersRecord);
LABEL_4:
        v6 = v226;
LABEL_5:
        v10 = v237;
        goto LABEL_6;
      }

      v33 = swift_slowAlloc();
      v240 = 0;
      v241[0] = 0;
      *v33 = 0;
      v239[0] = v33 + 2;
      v0 = v9;
      sub_10000B2CC(_swiftEmptyArrayStorage, v239, &v240, v241);
      v34 = v3;
      v35 = v31;
      v36 = "Skipping taskParametersRecord because extensionId is not recognized.";
    }

    _os_log_impl(&_mh_execute_header, v35, v34, v36, v33, 2u);

    goto LABEL_30;
  }

  v230 = *(v1 + 1816);
  v9 = _swiftEmptyArrayStorage;
LABEL_32:
  *(v1 + 1824) = v9;

  if (sub_10002CB18())
  {
    v38 = v1;
    v39 = *(v1 + 1624);

    v40 = sub_10002C958();
    v41 = sub_10002CB98();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v240 = 0;
      v241[0] = 0;
      *v42 = 0;
      v239[0] = v42 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v239, &v240, v241);
      _os_log_impl(&_mh_execute_header, v40, v41, "Task cancelled before adding tasks to mlhost.", v42, 2u);
    }

    v43 = *(v236 + 1624);
    v44 = *(v236 + 1616);
    v45 = *(v236 + 1608);
    v46 = *(v236 + 1600);
    v47 = *(v236 + 1584);
    v48 = *(v236 + 1576);
    v238 = *(v236 + 1504);
    v49 = *(v236 + 1496);
    v227 = *(v236 + 1592);
    v231 = *(v236 + 1488);
    v50 = objc_allocWithZone(sub_10002C7C8());
    v217 = sub_10002C7B8();

    sub_100007A74(v48);
    (*(v49 + 8))(v238, v231);

    v51 = *(v236 + 8);

    return v51(v217);
  }

  v53 = *(v1 + 968);
  v54 = *(v1 + 960);
  v55 = *(v1 + 952);
  v56 = *(v1 + 944);
  v57 = *(v1 + 936);
  v58 = *(v1 + 928);
  v59 = swift_allocObject();
  *(v1 + 1832) = v59;
  *(v59 + 16) = &_swiftEmptySetSingleton;
  v60 = swift_allocObject();
  *(v1 + 1840) = v60;
  *(v60 + 16) = &_swiftEmptySetSingleton;
  sub_10002C458();
  swift_allocObject();
  *(v1 + 1848) = sub_10002C448();
  (*(v54 + 104))(v53, enum case for JSONDecoder.DateDecodingStrategy.iso8601(_:), v55);
  sub_10002C428();
  (*(v57 + 104))(v56, enum case for JSONDecoder.DataDecodingStrategy.base64(_:), v58);
  sub_10002C418();
  swift_bridgeObjectRetain_n();
  v61 = sub_10002C958();
  v62 = sub_10002CB98();
  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v1 + 1768);
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v240 = v66;
    *v65 = 134218242;
    *(v65 + 4) = *(v64 + 16);

    *(v65 + 12) = 2080;
    sub_100008968(v64, type metadata accessor for TaskRecord, type metadata accessor for TaskRecord, v241);
    v67 = sub_10002CA98();
    v69 = v68;

    v70 = sub_10000B7BC(v67, v69, &v240);

    *(v65 + 14) = v70;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v61, v62, "Processing taskRecords (count: %ld): %s", v65, 0x16u);
    sub_1000067EC(v66);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v71 = v236;
  v72 = *(*(v236 + 1768) + 16);
  *(v236 + 1856) = v72;
  if (!v72)
  {
LABEL_78:
    *(v71 + 1896) = v9;

    v177 = sub_10002C958();
    v178 = sub_10002CB98();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v241[0] = v180;
      *v179 = 136315138;
      swift_beginAccess();

      v181 = sub_10002CB38();
      v183 = v182;

      v184 = sub_10000B7BC(v181, v183, v241);

      *(v179 + 4) = v184;
      v71 = v236;

      _os_log_impl(&_mh_execute_header, v177, v178, "Computed addedTaskNames: %s", v179, 0xCu);
      sub_1000067EC(v180);
    }

    else
    {
    }

    v185 = sub_10002C958();
    v186 = sub_10002CB98();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v241[0] = v188;
      *v187 = 136315138;
      swift_beginAccess();

      v189 = sub_10002CB38();
      v191 = v190;

      v192 = sub_10000B7BC(v189, v191, v241);

      *(v187 + 4) = v192;
      v71 = v236;

      _os_log_impl(&_mh_execute_header, v185, v186, "Computed removalTaskNames: %s", v187, 0xCu);
      sub_1000067EC(v188);
    }

    else
    {
    }

    *(v71 + 1904) = sub_10002C758();
    v193 = _s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu;
    v194 = swift_task_alloc();
    *(v71 + 1912) = v194;
    *v194 = v71;
    v194[1] = sub_1000170CC;
    v195 = *(v71 + 1448);

    return ((&_s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu + v193))(v195);
  }

  v73 = 0;
  *(v236 + 2096) = *(*(v236 + 1224) + 80);
  while (1)
  {
    *(v71 + 1864) = v73;
    v77 = *(v71 + 1768);
    if (v73 >= *(v77 + 16))
    {
      goto LABEL_97;
    }

    v78 = *(v71 + 1248);
    v79 = *(v71 + 1216);
    sub_100005AD8(v77 + ((*(v71 + 2096) + 32) & ~*(v71 + 2096)) + *(*(v71 + 1224) + 72) * v73, v78, type metadata accessor for TaskRecord);
    if (*(v78 + *(v79 + 36)) == 2)
    {
      sub_100005AD8(*(v71 + 1248), *(v71 + 1240), type metadata accessor for TaskRecord);
      v80 = sub_10002C958();
      v81 = sub_10002CB98();
      v82 = os_log_type_enabled(v80, v81);
      v83 = *(v71 + 1240);
      if (v82)
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v241[0] = v85;
        *v84 = 136315138;
        v87 = *v83;
        v86 = v83[1];

        v88 = sub_10000B7BC(v87, v86, v241);

        *(v84 + 4) = v88;
        sub_100005B40(v83, type metadata accessor for TaskRecord);
        _os_log_impl(&_mh_execute_header, v80, v81, "Task %s is marked as canceled, skipping.", v84, 0xCu);
        sub_1000067EC(v85);
      }

      else
      {

        sub_100005B40(v83, type metadata accessor for TaskRecord);
      }

      v74 = *(v71 + 1248);
      v75 = *v74;
      v76 = v74[1];

      sub_10000BD64((v71 + 184), v75, v76);

      sub_100005B40(v74, type metadata accessor for TaskRecord);
      goto LABEL_45;
    }

    v89 = v9;
    sub_10002B3B8(&qword_1000386D0, &type metadata accessor for TaskDefinition, &protocol conformance descriptor for TaskDefinition);
    sub_10002C468();
    if (v230)
    {
      v90 = *(v71 + 1248);
      v91 = *(v71 + 1232);
      v92 = *(v71 + 1136);
      v93 = *(v71 + 1128);
      v94 = *(v236 + 1112);

      (*(v92 + 56))(v94, 1, 1, v93);
      v95 = v94;
      v71 = v236;
      sub_10002B7B4(v95, &qword_100038668, &qword_10002DF30);
      sub_100005AD8(v90, v91, type metadata accessor for TaskRecord);
      v96 = sub_10002C958();
      v97 = sub_10002CBB8();
      v98 = os_log_type_enabled(v96, v97);
      v99 = *(v236 + 1232);
      if (v98)
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v241[0] = v101;
        *v100 = 136315138;
        v102 = *v99;
        v103 = v99[1];

        v104 = sub_10000B7BC(v102, v103, v241);
        v71 = v236;

        *(v100 + 4) = v104;
        sub_100005B40(v99, type metadata accessor for TaskRecord);
        _os_log_impl(&_mh_execute_header, v96, v97, "Failed to parse TaskDefinition from config file, skipping task %s.", v100, 0xCu);
        sub_1000067EC(v101);
      }

      else
      {

        sub_100005B40(v99, type metadata accessor for TaskRecord);
      }

      v9 = v89;
      sub_100005B40(*(v71 + 1248), type metadata accessor for TaskRecord);
      v230 = 0;
      goto LABEL_45;
    }

    v105 = *(v71 + 1824);
    v106 = *(v71 + 1192);
    v107 = v71;
    v108 = *(v71 + 1136);
    v109 = v107[141];
    v110 = v107[139];
    v111 = v107[127];
    v232 = v107[126];
    v112 = v107[124];
    v113 = v107[123];
    (*(v108 + 56))(v110, 0, 1, v109);
    (*(v108 + 32))(v106, v110, v109);
    *(swift_task_alloc() + 16) = v106;
    sub_1000087D0(sub_10002B72C, v105, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, v112);

    sub_10002B74C(v112, v113, &qword_100038660, &qword_10002DF28);
    if ((*(v111 + 48))(v113, 1, v232) == 1)
    {
      sub_10002B7B4(v107[123], &qword_100038660, &qword_10002DF28);
      v5 = v107;
      goto LABEL_93;
    }

    sub_10002B814(v107[123], v107[130], type metadata accessor for TaskParametersRecord);
    sub_10002B880(&qword_100038708, &qword_100038658, &qword_10002DF20, &protocol conformance descriptor for MLHostParameters<A>);
    sub_10002C438();
    v114 = v107[115];
    v115 = v107[113];
    v116 = v107[112];
    v117 = v107[111];
    v118 = v107[110];
    v119 = v107[106];
    v120 = v107[105];
    (*(v115 + 56))(v117, 0, 1, v116);
    (*(v115 + 32))(v114, v117, v116);
    sub_10002C878();
    v121 = sub_10002C8D8();
    v122 = *(v119 + 8);
    v122(v118, v120);
    if (v121)
    {
      v123._rawValue = v121;
      if (!sub_10002C928(v123))
      {
        v143 = v236;
        (*(*(v236 + 1136) + 16))(*(v236 + 1184), *(v236 + 1192), *(v236 + 1128));
        v144 = sub_10002C958();
        v145 = sub_10002CB98();
        v146 = os_log_type_enabled(v144, v145);
        v147 = *(v236 + 1184);
        v148 = *(v236 + 1136);
        v149 = *(v236 + 1128);
        if (v146)
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v241[0] = v151;
          *v150 = 136315138;
          v152 = sub_10002C808();
          v154 = sub_10000B7BC(v152, v153, v241);

          *(v150 + 4) = v154;
          v143 = v236;

          v234 = *(v148 + 8);
          v234(v147, v149);
          _os_log_impl(&_mh_execute_header, v144, v145, "Skipping registration of task %s as it does not satisfy the targeting rules.", v150, 0xCu);
          sub_1000067EC(v151);
        }

        else
        {

          v234 = *(v148 + 8);
          v234(v147, v149);
        }

        v166 = v143[156];
        v225 = v143[141];
        v229 = v143[149];
        v167 = v143[130];
        v168 = *(v236 + 992);
        v169 = *(v236 + 920);
        v170 = *(v236 + 904);
        v171 = *(v236 + 896);
        v173 = *v166;
        v172 = v166[1];

        sub_10000BD64((v236 + 216), v173, v172);
        goto LABEL_76;
      }
    }

    v5 = v236;
    v124 = *(v236 + 872);
    v125 = *(v236 + 840);
    sub_10002C878();
    v126 = sub_10002C8E8();
    v122(v124, v125);
    if (!v126)
    {
      goto LABEL_63;
    }

    v127._rawValue = v126;
    if (sub_10002C938(v127))
    {
      break;
    }

    (*(*(v236 + 1136) + 16))(*(v236 + 1176), *(v236 + 1192), *(v236 + 1128));
    v155 = sub_10002C958();
    v156 = sub_10002CB98();
    v157 = os_log_type_enabled(v155, v156);
    v158 = *(v236 + 1176);
    v159 = *(v236 + 1136);
    v160 = *(v236 + 1128);
    if (v157)
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v241[0] = v162;
      *v161 = 136315138;
      v163 = sub_10002C808();
      v165 = sub_10000B7BC(v163, v164, v241);
      v5 = v236;

      *(v161 + 4) = v165;

      v234 = *(v159 + 8);
      v234(v158, v160);
      _os_log_impl(&_mh_execute_header, v155, v156, "Skipping registration of task %s as it does not satisfy the os eligibility rules.", v161, 0xCu);
      sub_1000067EC(v162);
    }

    else
    {

      v234 = *(v159 + 8);
      v234(v158, v160);
    }

    v166 = v5[156];
    v225 = v5[141];
    v229 = v5[149];
    v167 = v5[130];
    v168 = *(v236 + 992);
    v169 = *(v236 + 920);
    v170 = *(v236 + 904);
    v171 = *(v236 + 896);
    v175 = *v166;
    v174 = v166[1];

    sub_10000BD64((v236 + 232), v175, v174);
LABEL_76:

    (*(v170 + 8))(v169, v171);
    v176 = v168;
    v71 = v236;
    sub_10002B7B4(v176, &qword_100038660, &qword_10002DF28);
    sub_100005B40(v167, type metadata accessor for TaskParametersRecord);
    sub_100005B40(v166, type metadata accessor for TaskRecord);
    v234(v229, v225);
LABEL_77:
    v230 = 0;
    v9 = *(v71 + 1824);
LABEL_45:
    v73 = *(v71 + 1864) + 1;
    if (v73 == *(v71 + 1856))
    {
      goto LABEL_78;
    }
  }

LABEL_63:
  v128 = *(v236 + 864);
  v129 = *(v236 + 840);
  sub_10002C878();
  v130 = sub_10002C8F8();
  v122(v128, v129);
  if (v130 != 2 && (v130 & 1) != 0)
  {
    v131 = sub_10002C958();
    v132 = sub_10002CB98();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 67109376;
      *(v133 + 4) = 1;
      *(v133 + 8) = 1024;
      *(v133 + 10) = 0;
      _os_log_impl(&_mh_execute_header, v131, v132, "Skipping registration of task because betaOnly is %{BOOL}d and isSeedDevice is %{BOOL}d", v133, 0xEu);
    }

    v134 = *(v236 + 1248);
    v135 = *(v236 + 1136);
    v228 = *(v236 + 1128);
    v233 = *(v236 + 1192);
    v224 = *(v236 + 1040);
    v136 = *(v236 + 992);
    v137 = *(v236 + 920);
    v138 = *(v236 + 904);
    v139 = *(v236 + 896);

    v141 = *v134;
    v140 = v134[1];

    sub_10000BD64((v236 + 248), v141, v140);

    (*(v138 + 8))(v137, v139);
    v142 = v136;
    v71 = v236;
    sub_10002B7B4(v142, &qword_100038660, &qword_10002DF28);
    sub_100005B40(v224, type metadata accessor for TaskParametersRecord);
    sub_100005B40(v134, type metadata accessor for TaskRecord);
    (*(v135 + 8))(v233, v228);
    goto LABEL_77;
  }

  v196 = *(v236 + 920);
  v197 = *(v236 + 912);
  v198 = *(v236 + 904);
  v199 = *(v236 + 896);
  (*(*(v236 + 1136) + 16))(*(v236 + 1168), *(v236 + 1192), *(v236 + 1128));
  (*(v198 + 16))(v197, v196, v199);
  v2 = sub_10002C958();
  v235 = sub_10002CBA8();
  v200 = os_log_type_enabled(v2, v235);
  v4 = *(v236 + 1168);
  v8 = *(v236 + 1136);
  v9 = *(v236 + 1128);
  v3 = *(v236 + 920);
  v237 = *(v236 + 912);
  v0 = *(v236 + 904);
  v6 = *(v236 + 896);
  if (!v200)
  {
LABEL_91:
    (v8[1])(v4, v9);
    v210 = *(v0 + 8);
    v210(v237, v6);

    v211 = v3;
    v212 = v6;
    goto LABEL_92;
  }

  v220 = *(v236 + 896);
  v201 = *(v236 + 856);
  v221 = *(v236 + 840);
  v202 = swift_slowAlloc();
  v241[0] = swift_slowAlloc();
  *v202 = 136315394;
  v203 = sub_10002C808();
  v223 = v2;
  v205 = sub_10000B7BC(v203, v204, v241);

  *(v202 + 4) = v205;
  (v8[1])(v4, v9);
  *(v202 + 12) = 2080;
  sub_10002C878();
  sub_10002B3B8(&qword_100038710, &type metadata accessor for MLHostSystemParameters, &protocol conformance descriptor for MLHostSystemParameters);
  v206 = sub_10002CD38();
  v208 = v207;
  v122(v201, v221);
  v209 = sub_10000B7BC(v206, v208, v241);

  *(v202 + 14) = v209;
  v210 = *(v0 + 8);
  v210(v237, v220);
  _os_log_impl(&_mh_execute_header, v223, v235, "Parsed TaskParameters successfully for task %s: %s", v202, 0x16u);
  swift_arrayDestroy();

  v5 = v236;

  v211 = v3;
  v212 = v220;
LABEL_92:
  v210(v211, v212);
  sub_100005B40(v5[130], type metadata accessor for TaskParametersRecord);
LABEL_93:
  v5[234] = sub_10002C758();
  v213 = _s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu;
  v214 = swift_task_alloc();
  v5[235] = v214;
  *v214 = v5;
  v214[1] = sub_100015478;
  v215 = v5[182];
  v216 = v5[149];

  return ((&_s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu + v213))(v216, v215);
}

uint64_t sub_100015478(char a1)
{
  v4 = *v2;
  *(*v2 + 1888) = v1;

  if (v1)
  {
    (*(*(v4 + 1408) + 8))(*(v4 + 1456), *(v4 + 1400));

    v5 = sub_100024F2C;
  }

  else
  {

    *(v4 + 2104) = a1 & 1;
    v5 = sub_100015614;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100015614()
{
  v229 = v0;
  v2 = *(*(v0 + 1136) + 16);
  if ((*(v0 + 2104) & 1) == 0)
  {
    v218 = *(v0 + 1888);
    v2(*(v0 + 1144), *(v0 + 1192), *(v0 + 1128));
    v16 = sub_10002C958();
    v17 = sub_10002CBB8();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1144);
    v20 = *(v0 + 1128);
    v21 = *(v0 + 992);
    v22 = (*(v0 + 1136) + 8);
    if (v18)
    {
      v225 = *(v0 + 992);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v228[0] = v24;
      *v23 = 136315138;
      v25 = sub_10002C808();
      v1 = v26;
      v27 = sub_10000B7BC(v25, v26, v228);

      *(v23 + 4) = v27;
      v28 = *v22;
      (*v22)(v19, v20);
      _os_log_impl(&_mh_execute_header, v16, v17, "Invalid remote reply for taskName: %s", v23, 0xCu);
      sub_1000067EC(v24);

      v29 = v225;
    }

    else
    {
      v28 = *v22;
      (*v22)(*(v0 + 1144), *(v0 + 1128));

      v29 = v21;
    }

    sub_10002B7B4(v29, &qword_100038660, &qword_10002DF28);
    v44 = *(v0 + 1576);
    v45 = *(v44 + 48);
    v33 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (!v33)
    {
      v47 = *(v0 + 1248);
      v48 = *(v0 + 1192);
      v49 = *(v0 + 1128);
      *(v44 + 48) = v46;
      sub_100005B40(v47, type metadata accessor for TaskRecord);
      v28(v48, v49);
      goto LABEL_18;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v183 = *(v0 + 920);
    v184 = *(v0 + 912);
    v185 = *(v0 + 904);
    v186 = *(v0 + 896);
    (*(*(v0 + 1136) + 16))(*(v0 + 1168), *(v0 + 1192), *(v0 + 1128));
    (*(v185 + 16))(v184, v183, v186);
    v187 = sub_10002C958();
    v224 = sub_10002CBA8();
    v188 = os_log_type_enabled(v187, v224);
    v189 = *(v0 + 1168);
    v190 = *(v0 + 1136);
    v191 = *(v0 + 1128);
    v192 = *(v0 + 920);
    v227 = *(v0 + 912);
    v193 = *(v0 + 904);
    v194 = *(v0 + 896);
    if (v188)
    {
      v209 = *(v0 + 856);
      v211 = *(v0 + 840);
      v217 = *(v0 + 920);
      v195 = swift_slowAlloc();
      v228[0] = swift_slowAlloc();
      *v195 = 136315394;
      v196 = sub_10002C808();
      v214 = v187;
      v198 = sub_10000B7BC(v196, v197, v228);

      *(v195 + 4) = v198;
      (*(v190 + 8))(v189, v191);
      *(v195 + 12) = 2080;
      sub_10002C878();
      sub_10002B3B8(&qword_100038710, &type metadata accessor for MLHostSystemParameters, &protocol conformance descriptor for MLHostSystemParameters);
      v199 = sub_10002CD38();
      v201 = v200;
      v1(v209, v211);
      v202 = sub_10000B7BC(v199, v201, v228);

      *(v195 + 14) = v202;
      v203 = *(v193 + 8);
      v203(v227, v194);
      _os_log_impl(&_mh_execute_header, v214, v224, "Parsed TaskParameters successfully for task %s: %s", v195, 0x16u);
      swift_arrayDestroy();

      v204 = v217;
    }

    else
    {
      (*(v190 + 8))(v189, v191);
      v203 = *(v193 + 8);
      v203(v227, v194);

      v204 = v192;
    }

    v203(v204, v194);
    sub_100005B40(*(v0 + 1040), type metadata accessor for TaskParametersRecord);
    goto LABEL_71;
  }

  v2(*(v0 + 1152), *(v0 + 1192), *(v0 + 1128));
  v3 = sub_10002C958();
  v4 = sub_10002CB98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1136);
  v8 = *(v0 + 1128);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v228[0] = v10;
    *v9 = 136315138;
    v11 = sub_10002C808();
    v13 = sub_10000B7BC(v11, v12, v228);

    *(v9 + 4) = v13;
    v15 = *(v7 + 8);
    v1 = (v7 + 8);
    v14 = v15;
    v15(v6, v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "Task %s is successfully registered.", v9, 0xCu);
    sub_1000067EC(v10);
  }

  else
  {

    v30 = *(v7 + 8);
    v1 = (v7 + 8);
    v14 = v30;
    v30(v6, v8);
  }

  v31 = *(v0 + 1576);
  v32 = *(v31 + 40);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
    goto LABEL_66;
  }

  v35 = *(v0 + 1320);
  v36 = *(v0 + 1312);
  v37 = *(v0 + 1248);
  v38 = *(v0 + 1216);
  v39 = *(v0 + 832);
  *(v31 + 40) = v34;
  v40 = sub_10002C808();
  sub_10000BD64((v0 + 280), v40, v41);

  sub_10002B74C(v37 + *(v38 + 40), v39, &qword_100038248, &unk_10002D560);
  if ((*(v35 + 48))(v39, 1, v36) == 1)
  {
    v42 = *(v0 + 1248);
    v43 = *(v0 + 832);
    sub_10002B7B4(*(v0 + 992), &qword_100038660, &qword_10002DF28);
    sub_100005B40(v42, type metadata accessor for TaskRecord);
    sub_10002B7B4(v43, &qword_100038248, &unk_10002D560);
  }

  else
  {
    v50 = *(v0 + 1560);
    v51 = *(v0 + 1360);
    v52 = *(v0 + 1312);
    (*(*(v0 + 1320) + 32))(*(v0 + 1328), *(v0 + 832), v52);
    sub_10002C5D8();
    sub_10002B3B8(&qword_100038700, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v53 = sub_10002CA08();
    v50(v51, v52);
    if (v53)
    {
      v54 = *(v0 + 1560);
      v55 = *(v0 + 1360);
      v56 = *(v0 + 1328);
      v57 = *(v0 + 1312);
      v226 = *(v0 + 1248);
      v58 = *(v0 + 992);
      sub_10002C5D8();
      sub_10002C5F8();
      v60 = v59;
      v54(v55, v57);
      sub_100008578(v60);
      v54(v56, v57);
      sub_10002B7B4(v58, &qword_100038660, &qword_10002DF28);
      v61 = v226;
    }

    else
    {
      v62 = *(v0 + 1248);
      v63 = *(v0 + 992);
      (*(v0 + 1560))(*(v0 + 1328), *(v0 + 1312));
      sub_10002B7B4(v63, &qword_100038660, &qword_10002DF28);
      v61 = v62;
    }

    sub_100005B40(v61, type metadata accessor for TaskRecord);
  }

  v14(*(v0 + 1192), *(v0 + 1128));
  v218 = *(v0 + 1888);
LABEL_18:
  v64 = *(v0 + 1824);
  v65 = *(v0 + 1864) + 1;
  if (v65 == *(v0 + 1856))
  {
LABEL_19:
    *(v0 + 1896) = v64;

    v66 = sub_10002C958();
    v67 = sub_10002CB98();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v228[0] = v69;
      *v68 = 136315138;
      swift_beginAccess();

      v70 = sub_10002CB38();
      v72 = v71;

      v73 = sub_10000B7BC(v70, v72, v228);

      *(v68 + 4) = v73;

      _os_log_impl(&_mh_execute_header, v66, v67, "Computed addedTaskNames: %s", v68, 0xCu);
      sub_1000067EC(v69);
    }

    else
    {
    }

    v171 = sub_10002C958();
    v172 = sub_10002CB98();
    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v228[0] = v174;
      *v173 = 136315138;
      swift_beginAccess();

      v175 = sub_10002CB38();
      v177 = v176;

      v178 = sub_10000B7BC(v175, v177, v228);

      *(v173 + 4) = v178;

      _os_log_impl(&_mh_execute_header, v171, v172, "Computed removalTaskNames: %s", v173, 0xCu);
      sub_1000067EC(v174);
    }

    else
    {
    }

    *(v0 + 1904) = sub_10002C758();
    v179 = _s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu;
    v180 = swift_task_alloc();
    *(v0 + 1912) = v180;
    *v180 = v0;
    v180[1] = sub_1000170CC;
    v181 = *(v0 + 1448);

    return ((&_s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu + v179))(v181);
  }

  while (1)
  {
    *(v0 + 1864) = v65;
    v74 = *(v0 + 1768);
    if (v65 >= *(v74 + 16))
    {
      break;
    }

    v75 = *(v0 + 1248);
    v76 = *(v0 + 1216);
    sub_100005AD8(v74 + ((*(v0 + 2096) + 32) & ~*(v0 + 2096)) + *(*(v0 + 1224) + 72) * v65, v75, type metadata accessor for TaskRecord);
    if (*(v75 + *(v76 + 36)) == 2)
    {
      sub_100005AD8(*(v0 + 1248), *(v0 + 1240), type metadata accessor for TaskRecord);
      v77 = sub_10002C958();
      v78 = sub_10002CB98();
      v79 = os_log_type_enabled(v77, v78);
      v80 = *(v0 + 1240);
      if (v79)
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v228[0] = v82;
        *v81 = 136315138;
        v84 = *v80;
        v83 = v80[1];

        v85 = sub_10000B7BC(v84, v83, v228);

        *(v81 + 4) = v85;
        sub_100005B40(v80, type metadata accessor for TaskRecord);
        _os_log_impl(&_mh_execute_header, v77, v78, "Task %s is marked as canceled, skipping.", v81, 0xCu);
        sub_1000067EC(v82);
      }

      else
      {

        sub_100005B40(v80, type metadata accessor for TaskRecord);
      }

      v86 = *(v0 + 1248);
      v87 = *v86;
      v88 = v86[1];

      sub_10000BD64((v0 + 184), v87, v88);

      sub_100005B40(v86, type metadata accessor for TaskRecord);
      goto LABEL_27;
    }

    sub_10002B3B8(&qword_1000386D0, &type metadata accessor for TaskDefinition, &protocol conformance descriptor for TaskDefinition);
    sub_10002C468();
    if (v218)
    {
      v89 = *(v0 + 1248);
      v90 = *(v0 + 1232);
      v91 = *(v0 + 1136);
      v92 = *(v0 + 1128);
      v93 = *(v0 + 1112);

      (*(v91 + 56))(v93, 1, 1, v92);
      sub_10002B7B4(v93, &qword_100038668, &qword_10002DF30);
      sub_100005AD8(v89, v90, type metadata accessor for TaskRecord);
      v94 = sub_10002C958();
      v95 = sub_10002CBB8();
      v96 = os_log_type_enabled(v94, v95);
      v97 = *(v0 + 1232);
      if (v96)
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v228[0] = v99;
        *v98 = 136315138;
        v100 = *v97;
        v101 = v97[1];

        v102 = sub_10000B7BC(v100, v101, v228);

        *(v98 + 4) = v102;
        sub_100005B40(v97, type metadata accessor for TaskRecord);
        _os_log_impl(&_mh_execute_header, v94, v95, "Failed to parse TaskDefinition from config file, skipping task %s.", v98, 0xCu);
        sub_1000067EC(v99);
      }

      else
      {

        sub_100005B40(v97, type metadata accessor for TaskRecord);
      }

      sub_100005B40(*(v0 + 1248), type metadata accessor for TaskRecord);
      v218 = 0;
      goto LABEL_27;
    }

    v103 = *(v0 + 1824);
    v104 = *(v0 + 1192);
    v105 = *(v0 + 1136);
    v106 = *(v0 + 1128);
    v107 = *(v0 + 1112);
    v108 = *(v0 + 1016);
    v219 = *(v0 + 1008);
    v109 = *(v0 + 992);
    v110 = *(v0 + 984);
    (*(v105 + 56))(v107, 0, 1, v106);
    (*(v105 + 32))(v104, v107, v106);
    *(swift_task_alloc() + 16) = v104;
    sub_1000087D0(sub_10002B72C, v103, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, v109);

    sub_10002B74C(v109, v110, &qword_100038660, &qword_10002DF28);
    if ((*(v108 + 48))(v110, 1, v219) == 1)
    {
      goto LABEL_64;
    }

    sub_10002B814(*(v0 + 984), *(v0 + 1040), type metadata accessor for TaskParametersRecord);
    sub_10002B880(&qword_100038708, &qword_100038658, &qword_10002DF20, &protocol conformance descriptor for MLHostParameters<A>);
    sub_10002C438();
    v111 = *(v0 + 920);
    v112 = *(v0 + 904);
    v113 = *(v0 + 896);
    v114 = *(v0 + 888);
    v115 = *(v0 + 880);
    v116 = *(v0 + 848);
    v117 = *(v0 + 840);
    (*(v112 + 56))(v114, 0, 1, v113);
    (*(v112 + 32))(v111, v114, v113);
    sub_10002C878();
    v118 = sub_10002C8D8();
    v1 = *(v116 + 8);
    v1(v115, v117);
    if (v118)
    {
      v119._rawValue = v118;
      if (!sub_10002C928(v119))
      {
        (*(*(v0 + 1136) + 16))(*(v0 + 1184), *(v0 + 1192), *(v0 + 1128));
        v137 = sub_10002C958();
        v138 = sub_10002CB98();
        v139 = os_log_type_enabled(v137, v138);
        v140 = *(v0 + 1184);
        v141 = *(v0 + 1136);
        v142 = *(v0 + 1128);
        if (v139)
        {
          v143 = swift_slowAlloc();
          v221 = v142;
          v144 = swift_slowAlloc();
          v228[0] = v144;
          *v143 = 136315138;
          v145 = sub_10002C808();
          v147 = sub_10000B7BC(v145, v146, v228);

          *(v143 + 4) = v147;

          v148 = v221;
          v222 = *(v141 + 8);
          v222(v140, v148);
          _os_log_impl(&_mh_execute_header, v137, v138, "Skipping registration of task %s as it does not satisfy the targeting rules.", v143, 0xCu);
          sub_1000067EC(v144);
        }

        else
        {

          v222 = *(v141 + 8);
          v222(v140, v142);
        }

        v161 = *(v0 + 1248);
        v213 = *(v0 + 1128);
        log = *(v0 + 1192);
        v162 = *(v0 + 1040);
        v163 = *(v0 + 992);
        v164 = *(v0 + 920);
        v165 = *(v0 + 904);
        v166 = *(v0 + 896);
        v167 = *v161;
        v168 = v161[1];

        sub_10000BD64((v0 + 216), v167, v168);
        goto LABEL_54;
      }
    }

    v120 = *(v0 + 872);
    v121 = *(v0 + 840);
    sub_10002C878();
    v122 = sub_10002C8E8();
    v1(v120, v121);
    if (!v122)
    {
      goto LABEL_41;
    }

    v123._rawValue = v122;
    if (sub_10002C938(v123))
    {

LABEL_41:
      v124 = *(v0 + 864);
      v125 = *(v0 + 840);
      sub_10002C878();
      v126 = sub_10002C8F8();
      v1(v124, v125);
      if (v126 == 2 || (v126 & 1) == 0)
      {
        goto LABEL_67;
      }

      v127 = sub_10002C958();
      v128 = sub_10002CB98();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        *v129 = 67109376;
        *(v129 + 4) = 1;
        *(v129 + 8) = 1024;
        *(v129 + 10) = 0;
        _os_log_impl(&_mh_execute_header, v127, v128, "Skipping registration of task because betaOnly is %{BOOL}d and isSeedDevice is %{BOOL}d", v129, 0xEu);
      }

      v130 = *(v0 + 1248);
      v220 = *(v0 + 1192);
      v131 = *(v0 + 1136);
      v212 = *(v0 + 1040);
      loga = *(v0 + 1128);
      v210 = *(v0 + 992);
      v132 = *(v0 + 920);
      v133 = *(v0 + 904);
      v134 = *(v0 + 896);

      v135 = *v130;
      v136 = v130[1];

      sub_10000BD64((v0 + 248), v135, v136);

      (*(v133 + 8))(v132, v134);
      sub_10002B7B4(v210, &qword_100038660, &qword_10002DF28);
      sub_100005B40(v212, type metadata accessor for TaskParametersRecord);
      sub_100005B40(v130, type metadata accessor for TaskRecord);
      (*(v131 + 8))(v220, loga);
      goto LABEL_55;
    }

    (*(*(v0 + 1136) + 16))(*(v0 + 1176), *(v0 + 1192), *(v0 + 1128));
    v149 = sub_10002C958();
    v150 = sub_10002CB98();
    v151 = os_log_type_enabled(v149, v150);
    v152 = *(v0 + 1176);
    v153 = *(v0 + 1136);
    v154 = *(v0 + 1128);
    if (v151)
    {
      v155 = swift_slowAlloc();
      v223 = v154;
      v156 = swift_slowAlloc();
      v228[0] = v156;
      *v155 = 136315138;
      v157 = sub_10002C808();
      v159 = sub_10000B7BC(v157, v158, v228);

      *(v155 + 4) = v159;

      v160 = v223;
      v222 = *(v153 + 8);
      v222(v152, v160);
      _os_log_impl(&_mh_execute_header, v149, v150, "Skipping registration of task %s as it does not satisfy the os eligibility rules.", v155, 0xCu);
      sub_1000067EC(v156);
    }

    else
    {

      v222 = *(v153 + 8);
      v222(v152, v154);
    }

    v161 = *(v0 + 1248);
    v213 = *(v0 + 1128);
    log = *(v0 + 1192);
    v162 = *(v0 + 1040);
    v163 = *(v0 + 992);
    v164 = *(v0 + 920);
    v165 = *(v0 + 904);
    v166 = *(v0 + 896);
    v169 = *v161;
    v170 = v161[1];

    sub_10000BD64((v0 + 232), v169, v170);
LABEL_54:

    (*(v165 + 8))(v164, v166);
    sub_10002B7B4(v163, &qword_100038660, &qword_10002DF28);
    sub_100005B40(v162, type metadata accessor for TaskParametersRecord);
    sub_100005B40(v161, type metadata accessor for TaskRecord);
    v222(log, v213);
LABEL_55:
    v218 = 0;
    v64 = *(v0 + 1824);
LABEL_27:
    v65 = *(v0 + 1864) + 1;
    if (v65 == *(v0 + 1856))
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_64:
  sub_10002B7B4(*(v0 + 984), &qword_100038660, &qword_10002DF28);
LABEL_71:
  *(v0 + 1872) = sub_10002C758();
  v205 = _s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu;
  v206 = swift_task_alloc();
  *(v0 + 1880) = v206;
  *v206 = v0;
  v206[1] = sub_100015478;
  v207 = *(v0 + 1456);
  v208 = *(v0 + 1192);

  return ((&_s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu + v205))(v208, v207);
}