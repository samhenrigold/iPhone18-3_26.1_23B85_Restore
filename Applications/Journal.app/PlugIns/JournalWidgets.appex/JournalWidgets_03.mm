uint64_t sub_1000516B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100063C34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000021D4(&qword_100086950, &qword_10006A078);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  *v10 = sub_100063A74();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v11 = sub_1000021D4(&qword_100086958, &qword_10006A080);
  sub_10004F3E8(v2, &v10[*(v11 + 44)]);
  sub_100063C24();
  sub_100064084();
  sub_100009F14(&qword_100086960, &qword_100086950, &qword_10006A078, &protocol conformance descriptor for VStack<A>);
  sub_100015EA8();
  sub_100063F14();
  (*(v5 + 8))(v7, v4);
  sub_10000494C(v10, &qword_100086950, &qword_10006A078);
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(sub_1000021D4(&qword_100086968, &unk_10006A0B8) + 36));
  v14 = *(sub_1000021D4(&qword_1000852C0, &qword_100066970) + 28);
  v15 = enum case for ColorScheme.dark(_:);
  v16 = sub_100063774();
  result = (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = KeyPath;
  return result;
}

uint64_t sub_1000519AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100086970, &qword_10006A0C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100051B44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063984();
  *a1 = result;
  return result;
}

uint64_t sub_100051B70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063984();
  *a1 = result;
  return result;
}

unint64_t sub_100051BF4()
{
  result = qword_1000869B0;
  if (!qword_1000869B0)
  {
    sub_10000221C(&qword_100086980, &qword_10006A118);
    sub_100009F14(&qword_1000869B8, &qword_1000869C0, &unk_10006A178, &protocol conformance descriptor for ZStack<A>);
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000869B0);
  }

  return result;
}

uint64_t sub_100051D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100063964();
  *a1 = result;
  return result;
}

uint64_t sub_100051DAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100063964();
  *a1 = result;
  return result;
}

unint64_t sub_100051E28()
{
  result = qword_1000869D0;
  if (!qword_1000869D0)
  {
    sub_10000221C(&qword_100086988, &qword_10006A120);
    sub_100051EE0();
    sub_100009F14(&qword_1000853D0, &qword_1000853D8, &qword_100066B08, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000869D0);
  }

  return result;
}

unint64_t sub_100051EE0()
{
  result = qword_1000869D8;
  if (!qword_1000869D8)
  {
    sub_10000221C(&qword_1000869C8, &qword_10006A1B8);
    sub_10000221C(&qword_100086980, &qword_10006A118);
    sub_100051BF4();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000853C0, &qword_1000853C8, &qword_100066B00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000869D8);
  }

  return result;
}

uint64_t sub_100052038@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000639C4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005206C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000639C4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100052100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100052158()
{
  result = qword_1000869E8;
  if (!qword_1000869E8)
  {
    sub_10000221C(&qword_100086968, &unk_10006A0B8);
    sub_10000221C(&qword_100086950, &qword_10006A078);
    sub_100009F14(&qword_100086960, &qword_100086950, &qword_10006A078, &protocol conformance descriptor for VStack<A>);
    sub_100015EA8();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000854A8, &qword_1000852C0, &qword_100066970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000869E8);
  }

  return result;
}

uint64_t sub_100052294@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a2;
  v107 = a3;
  v4 = sub_1000641F4();
  __chkstk_darwin(v4 - 8);
  v105 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  v120 = *(started - 8);
  v6 = __chkstk_darwin(started);
  v125 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v104 = &v101 - v9;
  v10 = __chkstk_darwin(v8);
  v106 = &v101 - v11;
  __chkstk_darwin(v10);
  v13 = &v101 - v12;
  v14 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  v15 = __chkstk_darwin(v14);
  v17 = (&v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = &v101 - v18;
  v134 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  __chkstk_darwin(v134);
  v21 = &v101 - v20;
  v22 = sub_100063574();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v118 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v101 - v27;
  __chkstk_darwin(v26);
  v131 = &v101 - v29;
  sub_100063564();
  sub_100063544();
  v127 = sub_1000535EC(&qword_1000864D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((sub_100064264() & 1) == 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    v17 = sub_10001C110(0, *(v17 + 2) + 1, 1, v17);
LABEL_35:
    v93 = *(v17 + 2);
    v92 = *(v17 + 3);
    v78 = v129;
    if (v93 >= v92 >> 1)
    {
      v17 = sub_10001C110((v92 > 1), v93 + 1, 1, v17);
    }

    sub_10004805C(v78, v133, v132, v28, v14, a1);
    *(v17 + 2) = v93 + 1;
    sub_10005369C(v106, v17 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v93);
    v81 = v108;
    v82 = v113;
    v83 = *(v17 + 2);
    if (v83)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  v102 = v13;
  v30 = v23;
  v31 = v23 + 16;
  v32 = *(v23 + 16);
  v33 = v19;
  v103 = a1;
  v136 = v31;
  v135 = v32;
  v32(v19, a1, v22);
  v34 = *(v30 + 32);
  v35 = &v19[*(v14 + 48)];
  v119 = v28;
  v34(v35, v28, v22);
  v36 = v19;
  v37 = v17;
  sub_1000534B0(v36, v17);
  v38 = *(v14 + 48);
  v34(v21, v17, v22);
  v39 = *(v30 + 8);
  v39(v17 + v38, v22);
  v138 = v33;
  sub_100053520(v33, v17);
  v40 = *(v134 + 9);
  v41 = v37 + *(v14 + 48);
  v117 = v30 + 32;
  v116 = v34;
  v34(&v21[v40], v41, v22);
  v128 = v30 + 8;
  v13 = v39;
  v39(v37, v22);
  v42 = *(v137 + 16);
  if (v42)
  {
    v114 = v37;
    v115 = v14;
    v122 = v40;
    v43 = 0;
    v129 = 0;
    v133 = 0;
    v132 = 0;
    v134 = 0;
    v130 = 0;
    v126 = 0;
    v112 = 0;
    v108 = 0;
    v113 = 0;
    v110 = 0;
    v109 = 0;
    v111 = 0;
    v123 = v137 + 32;
    v137 = v42 - 1;
    v17 = _swiftEmptyArrayStorage;
    v28 = v131;
    v44 = v138;
    v45 = v118;
    a1 = v127;
    while (1)
    {
      v46 = *(v123 + v43 + 16);
      v146 = *(v123 + v43);
      v147 = v46;
      v148 = *(v123 + v43 + 32);
      if (v43)
      {
        v124 = v43;
        v14 = v17;
        v17 = v13;
        sub_10000B264(&v146, &v143);
        v47 = v122;
        v13 = v119;
        sub_100063544();
        if ((sub_100064264() & 1) == 0)
        {
          __break(1u);
          goto LABEL_41;
        }

        v135(v44, &v21[v47], v22);
        sub_100053634(v21);
        v48 = v115;
        v49 = v116;
        v116(v138 + *(v115 + 48), v13, v22);
        v50 = v114;
        sub_1000534B0(v138, v114);
        v51 = *(v48 + 48);
        v49(v21, v50, v22);
        v17(v50 + v51, v22);
        sub_100053520(v138, v50);
        v52 = *(v48 + 48);
        v44 = v138;
        v49(&v21[v47], v50 + v52, v22);
        v28 = v131;
        v53 = v50;
        v13 = v17;
        v17(v53, v22);
        v17 = v14;
        v45 = v118;
        a1 = v127;
        v43 = v124;
      }

      else
      {
        sub_10000B264(&v146, &v143);
      }

      v54 = v21;
      if (sub_100063554() & 1) != 0 || (sub_100064264() & 1) != 0 && (v54 = v28, (sub_100064254()))
      {
        sub_10004805C(v129, v133, v132, v134, v130, v126);
        v135(v45, v54, v22);
        if (!v43)
        {
          sub_10004805C(v112, v108, v113, v110, v109, v111);
          v108 = *(&v146 + 1);
          v112 = v146;
          v110 = *(&v147 + 1);
          v113 = v147;
          v111 = *(&v148 + 1);
          v109 = v148;
          sub_10000B264(&v146, &v143);
        }

        v133 = *(&v146 + 1);
        v129 = v146;
        v134 = *(&v147 + 1);
        v132 = v147;
        v126 = *(&v148 + 1);
        v130 = v148;
        v55 = v125;
        v135(v125, v45, v22);
        v56 = started;
        v57 = *(started + 24);
        v58 = sub_100064204();
        (*(*(v58 - 8) + 56))(v55 + v57, 1, 1, v58);
        v59 = (v55 + *(v56 + 20));
        v60 = v147;
        *v59 = v146;
        v59[1] = v60;
        v59[2] = v148;
        *(v55 + *(v56 + 28)) = 1;
        sub_10000B264(&v146, &v143);
        sub_10000B264(&v146, &v143);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10001C110(0, *(v17 + 2) + 1, 1, v17);
        }

        v62 = *(v17 + 2);
        v61 = *(v17 + 3);
        a1 = v127;
        if (v62 >= v61 >> 1)
        {
          v17 = sub_10001C110((v61 > 1), v62 + 1, 1, v17);
        }

        (v13)(v45, v22);
        sub_1000480AC(&v146);
        *(v17 + 2) = v62 + 1;
        sub_10005369C(v125, v17 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v62);
        v28 = v131;
      }

      else
      {
        sub_1000480AC(&v146);
      }

      if (!v137)
      {
        break;
      }

      v43 += 48;
      --v137;
    }

    v63 = v110;
    if (v110)
    {
      v138 = v17;
      v64 = v28;
      v65 = v112;
      v66 = v108;
      *&v140 = v112;
      *(&v140 + 1) = v108;
      v67 = v113;
      *&v141 = v113;
      *(&v141 + 1) = v110;
      v68 = v109;
      v69 = v111;
      *&v142 = v109;
      *(&v142 + 1) = v111;
      *&v143 = v112;
      *(&v143 + 1) = v108;
      *&v144 = v113;
      *(&v144 + 1) = v110;
      *&v145 = v109;
      *(&v145 + 1) = v111;
      sub_10000B264(&v143, v139);
      if (sub_100063554())
      {
        v112 = v65;
        v70 = v102;
        v135(v102, v64, v22);
        v71 = started;
        v72 = *(started + 24);
        v73 = sub_100064204();
        (*(*(v73 - 8) + 56))(v70 + v72, 1, 1, v73);
        v74 = (v70 + *(v71 + 20));
        v75 = v141;
        *v74 = v140;
        v74[1] = v75;
        v74[2] = v142;
        *(v70 + *(v71 + 28)) = 0;
        sub_10000B264(&v140, v139);
        v17 = v138;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v134;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_10001C110(0, *(v17 + 2) + 1, 1, v17);
        }

        v78 = v129;
        v80 = *(v17 + 2);
        v79 = *(v17 + 3);
        if (v80 >= v79 >> 1)
        {
          v17 = sub_10001C110((v79 > 1), v80 + 1, 1, v17);
        }

        sub_10004805C(v112, v108, v113, v63, v109, v111);
        *(v17 + 2) = v80 + 1;
        sub_10005369C(v70, v17 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v80);
        if (!v77)
        {
LABEL_28:
          v134 = 0;
          v81 = v108;
          v82 = v113;
          v14 = v130;
          a1 = v126;
          v83 = *(v17 + 2);
          if (v83)
          {
            goto LABEL_38;
          }

          goto LABEL_31;
        }

        goto LABEL_34;
      }

      v112 = v65;
      sub_10004805C(v65, v66, v67, v63, v68, v69);
      v111 = v69;
      v17 = v138;
    }

    v78 = v129;
    if (!v134)
    {
      goto LABEL_28;
    }

LABEL_34:
    *&v143 = v78;
    *(&v143 + 1) = v133;
    *&v144 = v132;
    *(&v144 + 1) = v134;
    v14 = v130;
    a1 = v126;
    *&v145 = v130;
    *(&v145 + 1) = v126;
    v86 = v106;
    v135(v106, &v21[v122], v22);
    v87 = started;
    v88 = *(started + 24);
    v89 = sub_100064204();
    (*(*(v89 - 8) + 56))(v86 + v88, 1, 1, v89);
    v90 = (v86 + *(v87 + 20));
    v91 = v144;
    *v90 = v143;
    v90[1] = v91;
    v90[2] = v145;
    *(v86 + *(v87 + 28)) = 0;
    v129 = v78;
    v28 = v134;
    sub_10004815C(v78, v133, v132, v134, v14, a1);
    sub_10000B264(&v143, &v140);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  v78 = 0;
  v133 = 0;
  v132 = 0;
  v134 = 0;
  v14 = 0;
  a1 = 0;
  v112 = 0;
  v81 = 0;
  v82 = 0;
  v110 = 0;
  v109 = 0;
  v111 = 0;
  v17 = _swiftEmptyArrayStorage;
  v83 = _swiftEmptyArrayStorage[2];
  if (v83)
  {
LABEL_38:
    v94 = v17 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * (v83 - 1);
    v113 = v82;
    v95 = v104;
    sub_100003920(v94, v104);
    v130 = v14;
    v96 = v119;
    v135(v119, v95, v22);
    sub_100053590(v95);
    sub_1000641D4();
    sub_1000535EC(&qword_100084E38, type metadata accessor for StartWritingWidgetTimelineEntry, &unk_100068FD0);
    v97 = a1;
    v98 = v78;
    v85 = v107;
    sub_100064224();
    sub_10004805C(v112, v81, v113, v110, v109, v111);
    sub_10004805C(v98, v133, v132, v134, v130, v97);
    (v13)(v96, v22);
    sub_100053634(v21);
    (v13)(v131, v22);
    v84 = 0;
    goto LABEL_39;
  }

LABEL_31:
  sub_10004805C(v78, v133, v132, v134, v14, a1);
  sub_10004805C(v112, v81, v82, v110, v109, v111);
  sub_100053634(v21);
  (v13)(v131, v22);

  v84 = 1;
  v85 = v107;
LABEL_39:
  v99 = sub_1000021D4(&qword_100084E48, &unk_10006A3A0);
  return (*(*(v99 - 8) + 56))(v85, v84, 1, v99);
}

unint64_t sub_10005345C()
{
  result = qword_100086A88;
  if (!qword_100086A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086A88);
  }

  return result;
}

uint64_t sub_1000534B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053590(uint64_t a1)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_1000535EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100053634(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005369C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_100053714(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  v5 = *(*(started - 8) + 48);

  return v5(a1, a2, started);
}

uint64_t sub_100053794(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetTimelineEntry(0);
  v5 = *(*(started - 8) + 56);

  return v5(a1, a2, a2, started);
}

uint64_t type metadata accessor for StartWritingWidgetAccessoryRectangularView(uint64_t a1)
{
  result = qword_100086AE8;
  if (!qword_100086AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_10005386C@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1000021D4(&qword_100086B20, &qword_10006A430);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_100063A84();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v6 = sub_1000021D4(&qword_100086B28, &qword_10006A438);
  sub_1000539B4(v1, &v5[*(v6 + 44)]);
  sub_100064074();
  sub_100063874();
  sub_100053D60(v5, a1);
  v7 = a1 + *(sub_1000021D4(&qword_100086B30, &qword_10006A440) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_1000539B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v2 = type metadata accessor for WidgetHeaderView(0);
  __chkstk_darwin(v2);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000021D4(&qword_100086B38, &qword_10006A448);
  v37 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v37 - v9;
  if (qword_100084490 != -1)
  {
    swift_once();
  }

  v41 = qword_100090330;
  v42 = *algn_100090338;
  sub_100002264();

  v10 = sub_100063E14();
  v12 = v11;
  v14 = v13;
  v16 = v15 & 1;
  *v4 = swift_getKeyPath();
  sub_1000021D4(&qword_100084C00, &qword_100066BB0);
  swift_storeEnumTagMultiPayload();
  v17 = v2[5];
  *(v4 + v17) = swift_getKeyPath();
  sub_1000021D4(&qword_100085318, &qword_100066A08);
  swift_storeEnumTagMultiPayload();
  v18 = v2[6];
  *(v4 + v18) = swift_getKeyPath();
  sub_1000021D4(&qword_1000853F0, &qword_100067EB0);
  swift_storeEnumTagMultiPayload();
  v19 = (v4 + v2[7]);
  *v19 = v10;
  v19[1] = v12;
  v19[2] = v16;
  v19[3] = v14;
  sub_1000540CC();
  v20 = v40;
  sub_100063EA4();
  sub_100054124(v4);
  v21 = v38 + *(type metadata accessor for StartWritingWidgetTimelineEntry(0) + 20);
  v22 = *(v21 + 24);
  v41 = *(v21 + 16);
  v42 = v22;

  v23 = sub_100063E14();
  v25 = v24;
  LODWORD(v38) = v26;
  v28 = v27;
  LODWORD(v18) = sub_100063BA4();
  v29 = v37;
  v30 = *(v37 + 16);
  v30(v8, v20, v5);
  v31 = v8;
  v32 = v39;
  v30(v39, v31, v5);
  v33 = &v32[*(sub_1000021D4(&qword_100086B40, &qword_10006A4F8) + 48)];
  *v33 = v23;
  *(v33 + 1) = v25;
  v34 = v38;
  LOBYTE(v16) = v38 & 1;
  v33[16] = v38 & 1;
  *(v33 + 3) = v28;
  *(v33 + 8) = v18;
  sub_10004E5E4(v23, v25, v34 & 1);
  v35 = *(v29 + 8);

  v35(v40, v5);
  sub_100016708(v23, v25, v16);

  return (v35)(v31, v5);
}

uint64_t sub_100053D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100086B20, &qword_10006A430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100063D94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000021D4(&qword_100086B58, &qword_10006A560);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  sub_100063D14();
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
  v11 = sub_100063DA4();

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v13 = sub_1000021D4(&qword_100086B60, &unk_10006A598);
  (*(*(v13 - 8) + 16))(v10, a1, v13);
  v14 = &v10[*(v8 + 36)];
  *v14 = KeyPath;
  v14[1] = v11;
  sub_100063D54();
  sub_100054270();
  sub_100063E84();
  sub_100054354(v10);
  v15 = swift_getKeyPath();
  v16 = a2 + *(sub_1000021D4(&qword_100086B78, &qword_10006A5D8) + 36);
  *v16 = v15;
  *(v16 + 8) = 2;
  *(v16 + 16) = 0;
  v17 = swift_getKeyPath();
  v18 = (a2 + *(sub_1000021D4(&qword_100086B80, &qword_10006A610) + 36));
  *v18 = v17;
  v18[1] = 0x3FE8A3D70A3D70A4;
  result = sub_1000021D4(&qword_100086B88, &qword_10006A618);
  *(a2 + *(result + 36)) = 256;
  return result;
}

unint64_t sub_1000540CC()
{
  result = qword_100085490;
  if (!qword_100085490)
  {
    type metadata accessor for WidgetHeaderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085490);
  }

  return result;
}

uint64_t sub_100054124(uint64_t a1)
{
  v2 = type metadata accessor for WidgetHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100054194()
{
  result = qword_100086B48;
  if (!qword_100086B48)
  {
    sub_10000221C(&qword_100086B30, &qword_10006A440);
    sub_100009F14(&qword_100086B50, &qword_100086B20, &qword_10006A430, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086B48);
  }

  return result;
}

unint64_t sub_100054270()
{
  result = qword_100086B68;
  if (!qword_100086B68)
  {
    sub_10000221C(&qword_100086B58, &qword_10006A560);
    sub_100009F14(&qword_100086B70, &qword_100086B60, &unk_10006A598, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086B68);
  }

  return result;
}

uint64_t sub_100054354(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100086B58, &qword_10006A560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000543D0()
{
  result = qword_100086B90;
  if (!qword_100086B90)
  {
    sub_10000221C(&qword_100086B88, &qword_10006A618);
    sub_10005445C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086B90);
  }

  return result;
}

unint64_t sub_10005445C()
{
  result = qword_100086B98;
  if (!qword_100086B98)
  {
    sub_10000221C(&qword_100086B80, &qword_10006A610);
    sub_100054514();
    sub_100009F14(&qword_1000853C0, &qword_1000853C8, &qword_100066B00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086B98);
  }

  return result;
}

unint64_t sub_100054514()
{
  result = qword_100086BA0;
  if (!qword_100086BA0)
  {
    sub_10000221C(&qword_100086B78, &qword_10006A5D8);
    sub_10000221C(&qword_100086B58, &qword_10006A560);
    sub_100054270();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000867F8, &qword_100086800, &unk_10006A620, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BA0);
  }

  return result;
}

uint64_t sub_100054608(uint64_t a1, unsigned __int8 a2)
{
  sub_1000642C4();
}

uint64_t sub_100054780()
{
  v0 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000633F4();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000635E4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100064294();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100063404();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100063244();
  sub_100009DBC(v10, qword_100090DE8);
  sub_1000049B4(v10, qword_100090DE8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100063414();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_100063234();
}

uint64_t sub_100054A70()
{
  v0 = sub_1000021D4(&qword_100086C20, &qword_10006A990);
  sub_100009DBC(v0, qword_100090E00);
  sub_1000049B4(v0, qword_100090E00);
  sub_1000021D4(&qword_100086C28, &qword_10006A998);
  v1 = *(sub_1000021D4(&qword_100086C30, &qword_10006A9A0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10006A630;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  sub_10000DF54();
  sub_100063144();
  *(v5 + v2) = 1;
  sub_100063144();
  *(v5 + 2 * v2) = 2;
  sub_100063144();
  *(v5 + 3 * v2) = 3;
  sub_100063144();
  *(v5 + 4 * v2) = 4;
  sub_100063144();
  *(v5 + 5 * v2) = 5;
  sub_100063144();
  *(v5 + 6 * v2) = 6;
  sub_100063144();
  *(v5 + 7 * v2) = 7;
  sub_100063144();
  *(v5 + 8 * v2) = 8;
  sub_100063144();
  sub_100057F78(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100063154();
}

uint64_t sub_100054DE0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1953460082;
    v6 = 0x7972746E45646461;
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x72756F4A6B636F6CLL;
    v2 = 0x68506F5465766173;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0x6163696669746F6ELL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_100054F34()
{
  result = qword_100086BA8;
  if (!qword_100086BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BA8);
  }

  return result;
}

Swift::Int sub_100054F88()
{
  v1 = *v0;
  sub_1000645B4();
  sub_100054608(v3, v1);
  return sub_1000645E4();
}

Swift::Int sub_100054FD8(uint64_t a1)
{
  v2 = *v1;
  sub_1000645B4();
  sub_100054608(v4, v2);
  return sub_1000645E4();
}

unint64_t sub_10005501C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005816C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10005504C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100054DE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100055080()
{
  result = qword_100086BB0;
  if (!qword_100086BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BB0);
  }

  return result;
}

uint64_t sub_1000550D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000849D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000021D4(&qword_100086C20, &qword_10006A990);
  v3 = sub_1000049B4(v2, qword_100090E00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10005518C()
{
  result = qword_100086BB8;
  if (!qword_100086BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BB8);
  }

  return result;
}

unint64_t sub_1000551E4()
{
  result = qword_100086BC0;
  if (!qword_100086BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BC0);
  }

  return result;
}

uint64_t sub_100055244(uint64_t a1)
{
  sub_10000E050();
  v2 = sub_1000630C4();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000552B4()
{
  result = qword_100086BC8;
  if (!qword_100086BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BC8);
  }

  return result;
}

unint64_t sub_10005530C()
{
  result = qword_100086BD0;
  if (!qword_100086BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BD0);
  }

  return result;
}

unint64_t sub_100055368()
{
  result = qword_100086BD8;
  if (!qword_100086BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BD8);
  }

  return result;
}

uint64_t sub_1000553BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000849D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100063244();
  v3 = sub_1000049B4(v2, qword_100090DE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000554B4(uint64_t a1)
{
  v2 = sub_10000DF54();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100055504()
{
  result = qword_100086BE0;
  if (!qword_100086BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BE0);
  }

  return result;
}

unint64_t sub_10005555C()
{
  result = qword_100086BE8;
  if (!qword_100086BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BE8);
  }

  return result;
}

unint64_t sub_1000555B4()
{
  result = qword_100086BF0;
  if (!qword_100086BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BF0);
  }

  return result;
}

uint64_t sub_10005560C(uint64_t a1)
{
  v2 = sub_100055368();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10005565C()
{
  result = qword_100086BF8;
  if (!qword_100086BF8)
  {
    sub_10000221C(&qword_100086C00, &qword_10006A900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086BF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JournalSettingsDeepLinks(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JournalSettingsDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100055820(uint64_t a1)
{
  v1 = a1;
  sub_1000645B4();
  sub_100054608(v4, v1);
  v2 = sub_1000645E4();

  return sub_10005588C(v1, v2);
}

unint64_t sub_10005588C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 <= 3)
      {
        if (v6 == 2)
        {
          v9 = 0xD000000000000012;
        }

        else
        {
          v9 = 0x7972746E45646461;
        }

        if (v6 == 2)
        {
          v10 = 0x800000010006B3D0;
        }

        else
        {
          v10 = 0xED0000656C746954;
        }

        v11 = 0xD000000000000014;
        if (*(*(v27 + 48) + v4))
        {
          v12 = 0x800000010006B3B0;
        }

        else
        {
          v11 = 1953460082;
          v12 = 0xE400000000000000;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0xD000000000000013;
          v8 = 0x800000010006B400;
        }

        else
        {
          v7 = 0x6163696669746F6ELL;
          v8 = 0xED0000736E6F6974;
        }
      }

      else if (v6 == 6)
      {
        v7 = 0x72756F4A6B636F6CLL;
        v8 = 0xEB000000006C616ELL;
      }

      else if (v6 == 7)
      {
        v7 = 0x68506F5465766173;
        v8 = 0xEC000000736F746FLL;
      }

      else
      {
        v7 = 0xD000000000000011;
        v8 = 0x800000010006B430;
      }

      v13 = 0x68506F5465766173;
      if (v5 != 7)
      {
        v13 = 0xD000000000000011;
      }

      v14 = 0xEC000000736F746FLL;
      if (v5 != 7)
      {
        v14 = 0x800000010006B430;
      }

      if (v5 == 6)
      {
        v13 = 0x72756F4A6B636F6CLL;
        v14 = 0xEB000000006C616ELL;
      }

      v15 = 0xD000000000000013;
      if (v5 != 4)
      {
        v15 = 0x6163696669746F6ELL;
      }

      v16 = 0xED0000736E6F6974;
      if (v5 == 4)
      {
        v16 = 0x800000010006B400;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0xD000000000000012;
      }

      else
      {
        v17 = 0x7972746E45646461;
      }

      if (v5 == 2)
      {
        v18 = 0x800000010006B3D0;
      }

      else
      {
        v18 = 0xED0000656C746954;
      }

      v19 = 0xD000000000000014;
      if (v5)
      {
        v20 = 0x800000010006B3B0;
      }

      else
      {
        v19 = 1953460082;
        v20 = 0xE400000000000000;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v7 == v21 && v8 == v22)
      {
        break;
      }

      v23 = sub_100064594();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100055BB0(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100086C10, &unk_10006A978);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000021D4(&qword_100086C18, &qword_10006A988);
    v7 = sub_100064484();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016718(v9, v5, &qword_100086C10, &unk_10006A978);
      v11 = *v5;
      result = sub_100055820(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100063134();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100055D98()
{
  v0 = sub_1000021D4(&qword_100084DB8, "̷");
  __chkstk_darwin(v0 - 8);
  v102 = &v65 - v1;
  v2 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  __chkstk_darwin(v2 - 8);
  v101 = &v65 - v3;
  v80 = sub_1000633F4();
  v4 = *(v80 - 8);
  __chkstk_darwin(v80);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100064294();
  __chkstk_darwin(v8 - 8);
  v97 = sub_100063404();
  v9 = *(v97 - 8);
  v10 = __chkstk_darwin(v97);
  v94 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v65 - v12;
  sub_1000021D4(&qword_100086C08, &qword_10006A970);
  v13 = sub_1000021D4(&qword_100086C10, &unk_10006A978);
  v98 = v13;
  v14 = *(v13 - 8);
  v82 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v74 = 8 * v82;
  v16 = swift_allocObject();
  v73 = v16;
  *(v16 + 16) = xmmword_10006A630;
  v96 = v16 + v15;
  v78 = *(v13 + 48);
  *(v16 + v15) = 0;
  sub_100064284();
  sub_1000635D4();
  v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = v4 + 104;
  v18 = *(v4 + 104);
  v77 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = v80;
  v18(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v80);
  v99 = v19;
  v100 = v18;
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v18(v6, v17, v20);
  v21 = v101;
  sub_100063414();
  v84 = *(v9 + 56);
  v84(v21, 0, 1, v97);
  v92 = "representation for App Intents";
  v85 = 0xD000000000000011;
  v22 = v102;
  sub_100063104();
  v90 = sub_100063114();
  v23 = *(v90 - 8);
  v89 = *(v23 + 56);
  v91 = v23 + 56;
  v89(v22, 0, 1, v90);
  v88 = sub_1000021D4(&qword_100084DC0, &qword_1000659B0);
  v86 = v9 + 56;
  v95 = *(v9 + 72);
  v87 = *(v9 + 80);
  v83 = (v87 + 32) & ~v87;
  v79 = (2 * v95);
  v24 = swift_allocObject();
  v76 = xmmword_100065BA0;
  v72 = v24;
  *(v24 + 16) = xmmword_100065BA0;
  *&v75 = 0xD000000000000017;
  sub_100064284();
  sub_1000635D4();
  v25 = v77;
  v26 = v80;
  v27 = v100;
  v100(v6, v77, v80);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v27(v6, v25, v26);
  v81 = "Always Use Moment Date";
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v27(v6, v25, v26);
  sub_100063414();
  v28 = v96;
  v29 = v101;
  sub_100063124();
  v69 = v28 + v82;
  v72 = *(v98 + 48);
  *v69 = 1;
  v70 = 0xD000000000000016;
  sub_100064284();
  sub_1000635D4();
  v27(v6, v25, v26);
  sub_100063414();
  v78 = " for App Intents";
  sub_100064284();
  sub_1000635D4();
  v27(v6, v25, v26);
  sub_100063414();
  v84(v29, 0, 1, v97);
  v30 = v102;
  sub_100063104();
  v89(v30, 0, 1, v90);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100066C80;
  sub_100064284();
  sub_1000635D4();
  v31 = v77;
  v32 = v100;
  v100(v6, v77, v26);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v32(v6, v31, v26);
  sub_100063414();
  v71 = 0xD000000000000010;
  sub_100064284();
  sub_1000635D4();
  v32(v6, v31, v26);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v32(v6, v31, v26);
  sub_100063414();
  v33 = v101;
  sub_100063124();
  v69 = 2 * v82;
  v67 = (v96 + 2 * v82);
  v68 = *(v98 + 48);
  *v67 = 2;
  v72 = 0xD000000000000014;
  sub_100064284();
  sub_1000635D4();
  v32(v6, v31, v26);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v32(v6, v31, v26);
  sub_100063414();
  v84(v33, 0, 1, v97);
  v34 = v102;
  sub_100063104();
  v89(v34, 0, 1, v90);
  v66 = swift_allocObject();
  *(v66 + 16) = v76;
  sub_100064284();
  sub_1000635D4();
  v35 = v77;
  v36 = v100;
  v100(v6, v77, v26);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v36(v6, v35, v26);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v36(v6, v35, v26);
  v37 = v36;
  sub_100063414();
  v38 = v101;
  sub_100063124();
  v68 = v96 + v69 + v82;
  v69 = *(v98 + 48);
  *v68 = 3;
  sub_100064284();
  sub_1000635D4();
  v37(v6, v35, v26);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v37(v6, v35, v26);
  sub_100063414();
  v84(v38, 0, 1, v97);
  v39 = v102;
  sub_100063104();
  v89(v39, 0, 1, v90);
  v40 = swift_allocObject();
  v75 = xmmword_100064BC0;
  *(v40 + 16) = xmmword_100064BC0;
  sub_100064284();
  sub_1000635D4();
  v41 = v100;
  v100(v6, v35, v26);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v41(v6, v35, v26);
  sub_100063414();
  sub_100063124();
  v69 = 4 * v82;
  v67 = (v96 + 4 * v82);
  v68 = *(v98 + 48);
  *v67 = 4;
  sub_100064284();
  sub_1000635D4();
  v41(v6, v35, v26);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v41(v6, v35, v26);
  v42 = v101;
  sub_100063414();
  v84(v42, 0, 1, v97);
  v43 = v102;
  sub_100063104();
  v89(v43, 0, 1, v90);
  *(swift_allocObject() + 16) = v75;
  sub_100064284();
  sub_1000635D4();
  v41(v6, v35, v26);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v41(v6, v35, v26);
  sub_100063414();
  v44 = v101;
  sub_100063124();
  v69 += v96 + v82;
  v70 = *(v98 + 48);
  *v69 = 5;
  sub_100064284();
  sub_1000635D4();
  v45 = v100;
  v100(v6, v35, v26);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v45(v6, v35, v26);
  sub_100063414();
  v84(v44, 0, 1, v97);
  v46 = v102;
  sub_100063104();
  v89(v46, 0, 1, v90);
  *(swift_allocObject() + 16) = v76;
  sub_100064284();
  sub_1000635D4();
  v47 = v77;
  v48 = v80;
  v49 = v100;
  v100(v6, v77, v80);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v49(v6, v47, v48);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v49(v6, v47, v48);
  sub_100063414();
  v50 = v101;
  sub_100063124();
  v70 = v96 + 6 * v82;
  v71 = *(v98 + 48);
  *v70 = 6;
  sub_100064284();
  sub_1000635D4();
  v51 = v80;
  v52 = v100;
  v100(v6, v47, v80);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v52(v6, v47, v51);
  sub_100063414();
  v84(v50, 0, 1, v97);
  v53 = v102;
  sub_100063104();
  v89(v53, 0, 1, v90);
  *(swift_allocObject() + 16) = v75;
  sub_100064284();
  sub_1000635D4();
  v54 = v80;
  v55 = v100;
  v100(v6, v47, v80);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v55(v6, v47, v54);
  sub_100063414();
  sub_100063124();
  v71 = v96 + v74 - v82;
  v82 = *(v98 + 48);
  *v71 = 7;
  sub_100064284();
  sub_1000635D4();
  v55(v6, v47, v54);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v55(v6, v47, v54);
  v56 = v101;
  sub_100063414();
  v84(v56, 0, 1, v97);
  v57 = v102;
  sub_100063104();
  v89(v57, 0, 1, v90);
  *(swift_allocObject() + 16) = v76;
  sub_100064284();
  sub_1000635D4();
  v58 = v100;
  v100(v6, v47, v54);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v58(v6, v47, v54);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v58(v6, v47, v54);
  sub_100063414();
  v59 = v101;
  sub_100063124();
  v79 = (v96 + v74);
  v82 = *(v98 + 48);
  *v79 = 8;
  sub_100064284();
  sub_1000635D4();
  v60 = v80;
  v58(v6, v47, v80);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v58(v6, v47, v60);
  sub_100063414();
  v84(v59, 0, 1, v97);
  v61 = v102;
  sub_100063104();
  v89(v61, 0, 1, v90);
  *(swift_allocObject() + 16) = v75;
  sub_100064284();
  sub_1000635D4();
  v62 = v100;
  v100(v6, v47, v60);
  sub_100063414();
  sub_100064284();
  sub_1000635D4();
  v62(v6, v47, v60);
  sub_100063414();
  sub_100063124();
  v63 = sub_100055BB0(v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v63;
}

unint64_t sub_100057F78(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100086C30, &qword_10006A9A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000021D4(&qword_100086C38, &qword_10006A9A8);
    v7 = sub_100064484();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016718(v9, v5, &qword_100086C30, &qword_10006A9A0);
      v11 = *v5;
      result = sub_100055820(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000021D4(&qword_100086C40, &unk_10006A9B0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005816C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100082540;
  v6._object = a2;
  v4 = sub_100064494(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000581C0()
{
  v647 = sub_1000635E4();
  v0 = *(v647 - 8);
  __chkstk_darwin(v647);
  v2 = &v619 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000021D4(&qword_100086C48, &unk_10006AA00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100066C90;
  if (qword_1000844B8 != -1)
  {
    swift_once();
  }

  v5 = *algn_100090388;
  *(v4 + 32) = qword_100090380;
  *(v4 + 40) = v5;
  v6 = qword_1000844C0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_100090398;
  *(v4 + 48) = qword_100090390;
  *(v4 + 56) = v7;
  v8 = qword_1000844C8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *algn_1000903A8;
  *(v4 + 64) = qword_1000903A0;
  *(v4 + 72) = v9;
  v10 = qword_1000844D0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_1000903B8;
  *(v4 + 80) = qword_1000903B0;
  *(v4 + 88) = v11;
  v12 = qword_1000844D8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *algn_1000903C8;
  *(v4 + 96) = qword_1000903C0;
  *(v4 + 104) = v13;
  v14 = qword_1000844E0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *algn_1000903D8;
  *(v4 + 112) = qword_1000903D0;
  *(v4 + 120) = v15;
  v16 = qword_1000844E8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = *algn_1000903E8;
  *(v4 + 128) = qword_1000903E0;
  *(v4 + 136) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10006A9C0;
  v19 = qword_1000844F0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = *algn_1000903F8;
  *(v18 + 32) = qword_1000903F0;
  *(v18 + 40) = v20;
  v21 = qword_1000844F8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = *algn_100090408;
  *(v18 + 48) = qword_100090400;
  *(v18 + 56) = v22;
  v23 = qword_100084500;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = *algn_100090418;
  *(v18 + 64) = qword_100090410;
  *(v18 + 72) = v24;
  v25 = qword_100084508;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = *algn_100090428;
  *(v18 + 80) = qword_100090420;
  *(v18 + 88) = v26;
  v27 = qword_100084510;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = *algn_100090438;
  *(v18 + 96) = qword_100090430;
  *(v18 + 104) = v28;
  v29 = qword_100084518;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = *algn_100090448;
  *(v18 + 112) = qword_100090440;
  *(v18 + 120) = v30;
  v31 = qword_100084520;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = *algn_100090458;
  *(v18 + 128) = qword_100090450;
  *(v18 + 136) = v32;
  v33 = qword_100084528;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = *algn_100090468;
  *(v18 + 144) = qword_100090460;
  *(v18 + 152) = v34;
  v35 = qword_100084530;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = *algn_100090478;
  *(v18 + 160) = qword_100090470;
  *(v18 + 168) = v36;
  v37 = qword_100084538;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = *algn_100090488;
  *(v18 + 176) = qword_100090480;
  *(v18 + 184) = v38;
  v39 = qword_100084540;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = *algn_100090498;
  *(v18 + 192) = qword_100090490;
  *(v18 + 200) = v40;
  v41 = swift_allocObject();
  v644 = xmmword_100065AC0;
  *(v41 + 16) = xmmword_100065AC0;
  v42 = qword_100084548;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = *algn_1000904A8;
  *(v41 + 32) = qword_1000904A0;
  *(v41 + 40) = v43;
  v44 = qword_100084550;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = *algn_1000904B8;
  *(v41 + 48) = qword_1000904B0;
  *(v41 + 56) = v45;
  v46 = qword_100084558;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = *algn_1000904C8;
  *(v41 + 64) = qword_1000904C0;
  *(v41 + 72) = v47;
  v48 = qword_100084560;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = *algn_1000904D8;
  *(v41 + 80) = qword_1000904D0;
  *(v41 + 88) = v49;
  v50 = qword_100084568;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = *algn_1000904E8;
  *(v41 + 96) = qword_1000904E0;
  *(v41 + 104) = v51;
  v52 = qword_100084570;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = *algn_1000904F8;
  *(v41 + 112) = qword_1000904F0;
  *(v41 + 120) = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = v644;
  v55 = qword_100084578;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = *algn_100090508;
  *(v54 + 32) = qword_100090500;
  *(v54 + 40) = v56;
  v57 = qword_100084580;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = *algn_100090518;
  *(v54 + 48) = qword_100090510;
  *(v54 + 56) = v58;
  v59 = qword_100084588;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = *algn_100090528;
  *(v54 + 64) = qword_100090520;
  *(v54 + 72) = v60;
  v61 = qword_100084590;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = *algn_100090538;
  *(v54 + 80) = qword_100090530;
  *(v54 + 88) = v62;
  v63 = qword_100084598;

  if (v63 != -1)
  {
    swift_once();
  }

  v638 = v41;
  v64 = *algn_100090548;
  *(v54 + 96) = qword_100090540;
  *(v54 + 104) = v64;
  v65 = qword_1000845A0;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = *algn_100090558;
  *(v54 + 112) = qword_100090550;
  *(v54 + 120) = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_100066C60;
  v68 = qword_1000845A8;

  if (v68 != -1)
  {
    swift_once();
  }

  v69 = *algn_100090568;
  *(v67 + 32) = qword_100090560;
  *(v67 + 40) = v69;
  v70 = qword_1000845B0;

  if (v70 != -1)
  {
    swift_once();
  }

  v71 = *algn_100090578;
  v624 = qword_100090570;
  *(v67 + 48) = qword_100090570;
  *(v67 + 56) = v71;
  v72 = qword_1000845B8;

  if (v72 != -1)
  {
    swift_once();
  }

  v637 = v54;
  v73 = *algn_100090588;
  v626 = qword_100090580;
  *(v67 + 64) = qword_100090580;
  *(v67 + 72) = v73;
  v74 = qword_1000845C0;
  v625 = v73;

  if (v74 != -1)
  {
    swift_once();
  }

  v635 = v71;
  v75 = *algn_100090598;
  v628 = qword_100090590;
  *(v67 + 80) = qword_100090590;
  *(v67 + 88) = v75;
  v76 = qword_1000845C8;

  if (v76 != -1)
  {
    swift_once();
  }

  v77 = *algn_1000905A8;
  v629 = qword_1000905A0;
  v78 = qword_1000845D0;

  if (v78 != -1)
  {
    swift_once();
  }

  v640 = v18;
  v630 = qword_1000905B0;
  v79 = qword_1000845D8;
  v642 = *algn_1000905B8;

  if (v79 != -1)
  {
    swift_once();
  }

  v627 = v75;
  v639 = v67;
  *&v643 = v77;
  v641 = v3;
  v646 = v2;
  v631 = qword_1000905C0;
  v80 = qword_1000845E0;
  v636 = *algn_1000905C8;

  if (v80 != -1)
  {
    swift_once();
  }

  v633 = qword_1000905D0;
  v672 = _swiftEmptyArrayStorage;
  v634 = *algn_1000905D8;

  sub_100040E44(0, 7, 0);
  v81 = 0;
  v82 = v672;
  v649 = (v0 + 8);
  v632 = v4;
  v83 = (v4 + 40);
  do
  {
    v84 = *v83;
    v645 = *(v83 - 1);

    v85 = v646;
    sub_1000635D4();
    LOBYTE(v671) = 0;
    v86 = sub_1000635B4();
    v88 = v87;
    v89 = *v649;

    v648 = v89;
    v89(v85, v647);

    v90 = v671;
    v672 = v82;
    v92 = v82[2];
    v91 = v82[3];
    if (v92 >= v91 >> 1)
    {
      sub_100040E44((v91 > 1), v92 + 1, 1);
      v82 = v672;
    }

    v82[2] = v92 + 1;
    v93 = &v82[6 * v92];
    v93[4] = v81;
    *(v93 + 40) = v90;
    *(v93 + 41) = 258;
    *(v93 + 43) = 0;
    v93[6] = v645;
    v93[7] = v84;
    v93[8] = v86;
    v93[9] = v88;
    v83 += 2;
    ++v81;
  }

  while (v81 != 7);
  v623 = v82;

  v671 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 11, 0);
  v94 = 0;
  v95 = v671;
  v96 = v640 + 5;
  do
  {
    v97 = *v96;
    v645 = *(v96 - 1);

    v98 = v646;
    sub_1000635D4();
    LOBYTE(v670) = 0;
    v99 = sub_1000635B4();
    v101 = v100;

    v648(v98, v647);

    v102 = v670;
    v671 = v95;
    v104 = v95[2];
    v103 = v95[3];
    if (v104 >= v103 >> 1)
    {
      sub_100040E44((v103 > 1), v104 + 1, 1);
      v95 = v671;
    }

    v95[2] = v104 + 1;
    v105 = &v95[6 * v104];
    v105[4] = v94;
    *(v105 + 40) = v102;
    *(v105 + 41) = 2;
    *(v105 + 43) = 0;
    v105[6] = v645;
    v105[7] = v97;
    v105[8] = v99;
    v105[9] = v101;
    v96 += 2;
    ++v94;
  }

  while (v94 != 11);

  v670 = v623;
  sub_10005CDBC(v95);
  sub_10005CDBC(_swiftEmptyArrayStorage);
  v640 = v670;
  v670 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v106 = 0;
  v107 = v670;
  v108 = (v638 + 40);
  do
  {
    v109 = *v108;
    v645 = *(v108 - 1);

    v110 = v646;
    sub_1000635D4();
    LOBYTE(v669) = 0;
    v111 = sub_1000635B4();
    v113 = v112;

    v648(v110, v647);

    v114 = v669;
    v670 = v107;
    v116 = v107[2];
    v115 = v107[3];
    if (v116 >= v115 >> 1)
    {
      sub_100040E44((v115 > 1), v116 + 1, 1);
      v107 = v670;
    }

    v107[2] = v116 + 1;
    v117 = &v107[6 * v116];
    v117[4] = v106;
    *(v117 + 40) = v114;
    *(v117 + 41) = 257;
    *(v117 + 43) = 0;
    v117[6] = v645;
    v117[7] = v109;
    v117[8] = v111;
    v117[9] = v113;
    v108 += 2;
    ++v106;
  }

  while (v106 != 6);

  v669 = v640;
  sub_10005CDBC(v107);
  v640 = v669;
  v669 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v118 = 0;
  v119 = v669;
  v120 = (v637 + 40);
  do
  {
    v121 = *v120;
    v645 = *(v120 - 1);

    v122 = v646;
    sub_1000635D4();
    LOBYTE(v668) = 0;
    v123 = sub_1000635B4();
    v125 = v124;

    v648(v122, v647);

    v126 = v668;
    v669 = v119;
    v128 = v119[2];
    v127 = v119[3];
    if (v128 >= v127 >> 1)
    {
      sub_100040E44((v127 > 1), v128 + 1, 1);
      v119 = v669;
    }

    v119[2] = v128 + 1;
    v129 = &v119[6 * v128];
    v129[4] = v118;
    *(v129 + 40) = v126;
    *(v129 + 41) = 1;
    *(v129 + 43) = 0;
    v129[6] = v645;
    v129[7] = v121;
    v129[8] = v123;
    v129[9] = v125;
    v120 += 2;
    ++v118;
  }

  while (v118 != 6);

  v668 = v640;
  sub_10005CDBC(v119);
  sub_10005CDBC(_swiftEmptyArrayStorage);
  v645 = v668;
  v668 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 4, 0);
  v130 = v668;
  v131 = *(v639 + 40);
  v640 = *(v639 + 32);

  v132 = v646;
  sub_1000635D4();
  LOBYTE(v667) = 0;
  v133 = sub_1000635B4();
  v135 = v134;

  v136 = v647;
  v648(v132, v647);

  v137 = v667;
  v668 = v130;
  v139 = v130[2];
  v138 = v130[3];
  if (v139 >= v138 >> 1)
  {
    sub_100040E44((v138 > 1), v139 + 1, 1);
    v130 = v668;
  }

  v130[2] = v139 + 1;
  v140 = &v130[6 * v139];
  v140[4] = 0;
  *(v140 + 40) = v137;
  *(v140 + 41) = 256;
  *(v140 + 43) = 0;
  v140[6] = v640;
  v140[7] = v131;
  v140[8] = v133;
  v140[9] = v135;
  v141 = v635;

  sub_1000635D4();
  LOBYTE(v667) = 0;
  v142 = v141;
  v143 = sub_1000635B4();
  v145 = v144;

  v648(v132, v136);

  v146 = v667;
  v668 = v130;
  v148 = v130[2];
  v147 = v130[3];
  if (v148 >= v147 >> 1)
  {
    sub_100040E44((v147 > 1), v148 + 1, 1);
    v142 = v635;
    v130 = v668;
  }

  v130[2] = v148 + 1;
  v149 = &v130[6 * v148];
  v149[4] = 1;
  *(v149 + 40) = v146;
  *(v149 + 41) = 256;
  *(v149 + 43) = 0;
  v149[6] = v624;
  v149[7] = v142;
  v149[8] = v143;
  v149[9] = v145;
  v150 = v625;

  sub_1000635D4();
  LOBYTE(v667) = 0;
  v151 = sub_1000635B4();
  v153 = v152;

  v648(v132, v136);

  v154 = v667;
  v668 = v130;
  v156 = v130[2];
  v155 = v130[3];
  if (v156 >= v155 >> 1)
  {
    sub_100040E44((v155 > 1), v156 + 1, 1);
    v130 = v668;
  }

  v130[2] = v156 + 1;
  v157 = &v130[6 * v156];
  v157[4] = 2;
  *(v157 + 40) = v154;
  *(v157 + 41) = 256;
  *(v157 + 43) = 0;
  v157[6] = v626;
  v157[7] = v150;
  v157[8] = v151;
  v157[9] = v153;
  v158 = v627;

  sub_1000635D4();
  LOBYTE(v667) = 0;
  v159 = sub_1000635B4();
  v161 = v160;

  v648(v132, v136);

  v162 = v667;
  v668 = v130;
  v164 = v130[2];
  v163 = v130[3];
  if (v164 >= v163 >> 1)
  {
    sub_100040E44((v163 > 1), v164 + 1, 1);
    v130 = v668;
  }

  v130[2] = v164 + 1;
  v165 = &v130[6 * v164];
  v165[4] = 3;
  *(v165 + 40) = v162;
  *(v165 + 41) = 256;
  *(v165 + 43) = 0;
  v165[6] = v628;
  v165[7] = v158;
  v165[8] = v159;
  v165[9] = v161;

  v667 = v645;
  sub_10005CDBC(v130);
  v645 = v667;
  v667 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 4, 0);
  v166 = v667;
  v167 = v643;

  sub_1000635D4();
  LOBYTE(v666) = 0;
  v168 = v167;
  v169 = sub_1000635B4();
  v171 = v170;

  v172 = v648;
  v648(v132, v136);

  v173 = v666;
  v667 = v166;
  v175 = v166[2];
  v174 = v166[3];
  if (v175 >= v174 >> 1)
  {
    sub_100040E44((v174 > 1), v175 + 1, 1);
    v168 = v643;
    v166 = v667;
  }

  v166[2] = v175 + 1;
  v176 = &v166[6 * v175];
  v176[4] = 0;
  *(v176 + 40) = v173;
  *(v176 + 41) = 0;
  *(v176 + 43) = 0;
  v176[6] = v629;
  v176[7] = v168;
  v176[8] = v169;
  v176[9] = v171;
  v177 = v642;

  sub_1000635D4();
  LOBYTE(v666) = 0;
  v178 = v177;
  v179 = sub_1000635B4();
  v181 = v180;

  v172(v132, v647);

  v182 = v666;
  v667 = v166;
  v184 = v166[2];
  v183 = v166[3];
  v185 = v172;
  if (v184 >= v183 >> 1)
  {
    sub_100040E44((v183 > 1), v184 + 1, 1);
    v178 = v642;
    v166 = v667;
  }

  v166[2] = v184 + 1;
  v186 = &v166[6 * v184];
  v186[4] = 1;
  *(v186 + 40) = v182;
  *(v186 + 41) = 0;
  *(v186 + 43) = 0;
  v186[6] = v630;
  v186[7] = v178;
  v186[8] = v179;
  v186[9] = v181;
  v187 = v636;

  sub_1000635D4();
  LOBYTE(v666) = 0;
  v188 = sub_1000635B4();
  v190 = v189;

  v185(v132, v647);

  v191 = v666;
  v667 = v166;
  v193 = v166[2];
  v192 = v166[3];
  if (v193 >= v192 >> 1)
  {
    sub_100040E44((v192 > 1), v193 + 1, 1);
    v187 = v636;
    v166 = v667;
  }

  v166[2] = v193 + 1;
  v194 = &v166[6 * v193];
  v194[4] = 2;
  *(v194 + 40) = v191;
  *(v194 + 41) = 0;
  *(v194 + 43) = 0;
  v194[6] = v631;
  v194[7] = v187;
  v194[8] = v188;
  v194[9] = v190;
  v195 = v634;

  sub_1000635D4();
  LOBYTE(v666) = 0;
  v196 = sub_1000635B4();
  v198 = v197;

  v199 = v132;
  v200 = v195;
  v185(v199, v647);

  v201 = v666;
  v667 = v166;
  v203 = v166[2];
  v202 = v166[3];
  if (v203 >= v202 >> 1)
  {
    sub_100040E44((v202 > 1), v203 + 1, 1);
    v166 = v667;
  }

  v166[2] = v203 + 1;
  v204 = &v166[6 * v203];
  v204[4] = 3;
  *(v204 + 40) = v201;
  *(v204 + 41) = 0;
  *(v204 + 43) = 0;
  v204[6] = v633;
  v204[7] = v200;
  v204[8] = v196;
  v204[9] = v198;

  v666 = v645;
  sub_10005CDBC(v166);
  sub_10005CDBC(_swiftEmptyArrayStorage);
  v633 = v666;
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_100066C70;
  if (qword_1000845E8 != -1)
  {
    swift_once();
  }

  v206 = *algn_1000905E8;
  *(v205 + 32) = qword_1000905E0;
  *(v205 + 40) = v206;
  v207 = qword_1000845F0;

  if (v207 != -1)
  {
    swift_once();
  }

  v208 = *algn_1000905F8;
  *(v205 + 48) = qword_1000905F0;
  *(v205 + 56) = v208;
  v209 = qword_1000845F8;

  if (v209 != -1)
  {
    swift_once();
  }

  v210 = *algn_100090608;
  *(v205 + 64) = qword_100090600;
  *(v205 + 72) = v210;
  v211 = qword_100084600;

  if (v211 != -1)
  {
    swift_once();
  }

  v212 = *algn_100090618;
  *(v205 + 80) = qword_100090610;
  *(v205 + 88) = v212;
  v213 = qword_100084608;

  if (v213 != -1)
  {
    swift_once();
  }

  v214 = *algn_100090628;
  *(v205 + 96) = qword_100090620;
  *(v205 + 104) = v214;
  v215 = qword_100084610;

  if (v215 != -1)
  {
    swift_once();
  }

  v216 = *algn_100090638;
  *(v205 + 112) = qword_100090630;
  *(v205 + 120) = v216;
  v217 = qword_100084618;

  if (v217 != -1)
  {
    swift_once();
  }

  v218 = *algn_100090648;
  *(v205 + 128) = qword_100090640;
  *(v205 + 136) = v218;
  v219 = qword_100084620;

  if (v219 != -1)
  {
    swift_once();
  }

  v220 = *algn_100090658;
  *(v205 + 144) = qword_100090650;
  *(v205 + 152) = v220;
  v221 = swift_allocObject();
  *(v221 + 16) = xmmword_10006A9D0;
  v222 = qword_100084628;

  if (v222 != -1)
  {
    swift_once();
  }

  v223 = *algn_100090668;
  *(v221 + 32) = qword_100090660;
  *(v221 + 40) = v223;
  v224 = qword_100084630;

  if (v224 != -1)
  {
    swift_once();
  }

  v225 = *algn_100090678;
  *(v221 + 48) = qword_100090670;
  *(v221 + 56) = v225;
  v226 = qword_100084638;

  if (v226 != -1)
  {
    swift_once();
  }

  v227 = *algn_100090688;
  *(v221 + 64) = qword_100090680;
  *(v221 + 72) = v227;
  v228 = qword_100084640;

  if (v228 != -1)
  {
    swift_once();
  }

  v229 = *algn_100090698;
  *(v221 + 80) = qword_100090690;
  *(v221 + 88) = v229;
  v230 = qword_100084648;

  if (v230 != -1)
  {
    swift_once();
  }

  v231 = *algn_1000906A8;
  *(v221 + 96) = qword_1000906A0;
  *(v221 + 104) = v231;
  v232 = qword_100084650;

  if (v232 != -1)
  {
    swift_once();
  }

  v233 = *algn_1000906B8;
  *(v221 + 112) = qword_1000906B0;
  *(v221 + 120) = v233;
  v234 = qword_100084658;

  if (v234 != -1)
  {
    swift_once();
  }

  v235 = *algn_1000906C8;
  *(v221 + 128) = qword_1000906C0;
  *(v221 + 136) = v235;
  v236 = qword_100084660;

  if (v236 != -1)
  {
    swift_once();
  }

  v237 = *algn_1000906D8;
  *(v221 + 144) = qword_1000906D0;
  *(v221 + 152) = v237;
  v238 = qword_100084668;

  if (v238 != -1)
  {
    swift_once();
  }

  v239 = *algn_1000906E8;
  *(v221 + 160) = qword_1000906E0;
  *(v221 + 168) = v239;
  v240 = qword_100084670;

  if (v240 != -1)
  {
    swift_once();
  }

  v241 = *algn_1000906F8;
  *(v221 + 176) = qword_1000906F0;
  *(v221 + 184) = v241;
  v242 = qword_100084678;

  if (v242 != -1)
  {
    swift_once();
  }

  v243 = *algn_100090708;
  *(v221 + 192) = qword_100090700;
  *(v221 + 200) = v243;
  v244 = qword_100084680;

  if (v244 != -1)
  {
    swift_once();
  }

  v245 = *algn_100090718;
  *(v221 + 208) = qword_100090710;
  *(v221 + 216) = v245;
  v246 = qword_100084688;

  if (v246 != -1)
  {
    swift_once();
  }

  v247 = *algn_100090728;
  *(v221 + 224) = qword_100090720;
  *(v221 + 232) = v247;
  v248 = qword_100084690;

  if (v248 != -1)
  {
    swift_once();
  }

  v249 = *algn_100090738;
  *(v221 + 240) = qword_100090730;
  *(v221 + 248) = v249;
  v250 = qword_100084698;

  if (v250 != -1)
  {
    swift_once();
  }

  v251 = *algn_100090748;
  *(v221 + 256) = qword_100090740;
  *(v221 + 264) = v251;
  v252 = qword_1000846A0;

  if (v252 != -1)
  {
    swift_once();
  }

  v253 = *algn_100090758;
  *(v221 + 272) = qword_100090750;
  *(v221 + 280) = v253;
  v254 = swift_allocObject();
  *(v254 + 16) = v644;
  v255 = qword_1000846A8;

  if (v255 != -1)
  {
    swift_once();
  }

  v256 = *algn_100090768;
  *(v254 + 32) = qword_100090760;
  *(v254 + 40) = v256;
  v257 = qword_1000846B0;

  if (v257 != -1)
  {
    swift_once();
  }

  v258 = *algn_100090778;
  *(v254 + 48) = qword_100090770;
  *(v254 + 56) = v258;
  v259 = qword_1000846B8;

  if (v259 != -1)
  {
    swift_once();
  }

  v260 = *algn_100090788;
  *(v254 + 64) = qword_100090780;
  *(v254 + 72) = v260;
  v261 = qword_1000846C0;

  if (v261 != -1)
  {
    swift_once();
  }

  v262 = *algn_100090798;
  *(v254 + 80) = qword_100090790;
  *(v254 + 88) = v262;
  v263 = qword_1000846C8;

  if (v263 != -1)
  {
    swift_once();
  }

  v264 = *algn_1000907A8;
  *(v254 + 96) = qword_1000907A0;
  *(v254 + 104) = v264;
  v265 = qword_1000846D0;

  if (v265 != -1)
  {
    swift_once();
  }

  v266 = *algn_1000907B8;
  *(v254 + 112) = qword_1000907B0;
  *(v254 + 120) = v266;
  v267 = swift_allocObject();
  v643 = xmmword_100069A50;
  *(v267 + 16) = xmmword_100069A50;
  v268 = qword_1000846D8;

  if (v268 != -1)
  {
    swift_once();
  }

  v269 = *algn_1000907C8;
  *(v267 + 32) = qword_1000907C0;
  *(v267 + 40) = v269;
  v270 = qword_1000846E0;

  if (v270 != -1)
  {
    swift_once();
  }

  v271 = *algn_1000907D8;
  *(v267 + 48) = qword_1000907D0;
  *(v267 + 56) = v271;
  v272 = qword_1000846E8;

  if (v272 != -1)
  {
    swift_once();
  }

  v273 = *algn_1000907E8;
  *(v267 + 64) = qword_1000907E0;
  *(v267 + 72) = v273;
  v274 = qword_1000846F0;

  if (v274 != -1)
  {
    swift_once();
  }

  v275 = *algn_1000907F8;
  *(v267 + 80) = qword_1000907F0;
  *(v267 + 88) = v275;
  v276 = qword_1000846F8;

  if (v276 != -1)
  {
    swift_once();
  }

  v277 = *algn_100090808;
  *(v267 + 96) = qword_100090800;
  *(v267 + 104) = v277;
  v278 = swift_allocObject();
  *(v278 + 16) = v643;
  v279 = qword_100084700;

  if (v279 != -1)
  {
    swift_once();
  }

  v280 = *algn_100090818;
  *(v278 + 32) = qword_100090810;
  *(v278 + 40) = v280;
  v281 = qword_100084708;

  if (v281 != -1)
  {
    swift_once();
  }

  v282 = *algn_100090828;
  *(v278 + 48) = qword_100090820;
  *(v278 + 56) = v282;
  v283 = qword_100084710;

  if (v283 != -1)
  {
    swift_once();
  }

  v284 = *algn_100090838;
  *(v278 + 64) = qword_100090830;
  *(v278 + 72) = v284;
  v285 = qword_100084718;

  if (v285 != -1)
  {
    swift_once();
  }

  v286 = *algn_100090848;
  *(v278 + 80) = qword_100090840;
  *(v278 + 88) = v286;
  v287 = qword_100084720;

  if (v287 != -1)
  {
    swift_once();
  }

  v636 = v254;
  v288 = *algn_100090858;
  *(v278 + 96) = qword_100090850;
  *(v278 + 104) = v288;
  v289 = qword_100084728;

  if (v289 != -1)
  {
    swift_once();
  }

  v290 = *algn_100090868;
  v620 = qword_100090860;
  v291 = qword_100084730;

  if (v291 != -1)
  {
    swift_once();
  }

  v635 = v267;
  v292 = *algn_100090878;
  v621 = qword_100090870;
  v293 = qword_100084738;

  if (v293 != -1)
  {
    swift_once();
  }

  v634 = v278;
  v294 = *algn_100090888;
  v622 = qword_100090880;
  v295 = qword_100084740;

  if (v295 != -1)
  {
    swift_once();
  }

  v296 = *algn_100090898;
  v623 = qword_100090890;
  v297 = qword_100084748;

  if (v297 != -1)
  {
    swift_once();
  }

  v624 = v296;
  v637 = v292;
  v298 = *algn_1000908A8;
  v626 = qword_1000908A0;
  v299 = qword_100084750;

  if (v299 != -1)
  {
    swift_once();
  }

  v300 = *algn_1000908B8;
  v627 = qword_1000908B0;
  v301 = qword_100084758;

  if (v301 != -1)
  {
    swift_once();
  }

  v625 = v294;
  v638 = v290;
  v640 = v300;
  v642 = v298;
  v628 = qword_1000908C0;
  v302 = qword_100084760;
  v631 = *algn_1000908C8;

  if (v302 != -1)
  {
    swift_once();
  }

  v639 = v221;
  v629 = qword_1000908D0;
  v666 = _swiftEmptyArrayStorage;
  v630 = *algn_1000908D8;

  sub_100040E44(0, 8, 0);
  v303 = 0;
  v304 = v666;
  v632 = v205;
  v305 = (v205 + 40);
  do
  {
    v306 = *v305;
    v645 = *(v305 - 1);

    v307 = v646;
    sub_1000635D4();
    LOBYTE(v665) = 0;
    v308 = sub_1000635B4();
    v310 = v309;

    v648(v307, v647);

    v311 = v665;
    v666 = v304;
    v313 = v304[2];
    v312 = v304[3];
    if (v313 >= v312 >> 1)
    {
      sub_100040E44((v312 > 1), v313 + 1, 1);
      v304 = v666;
    }

    v304[2] = v313 + 1;
    v314 = &v304[6 * v313];
    v314[4] = v303;
    *(v314 + 40) = v311;
    *(v314 + 41) = 258;
    *(v314 + 43) = 1;
    v314[6] = v645;
    v314[7] = v306;
    v314[8] = v308;
    v314[9] = v310;
    v305 += 2;
    ++v303;
  }

  while (v303 != 8);
  v619 = v304;

  v665 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 16, 0);
  v315 = 0;
  v316 = v665;
  v317 = (v639 + 40);
  do
  {
    v318 = *v317;
    v645 = *(v317 - 1);

    v319 = v646;
    sub_1000635D4();
    LOBYTE(v664) = 0;
    v320 = sub_1000635B4();
    v322 = v321;

    v648(v319, v647);

    v323 = v664;
    v665 = v316;
    v325 = v316[2];
    v324 = v316[3];
    if (v325 >= v324 >> 1)
    {
      sub_100040E44((v324 > 1), v325 + 1, 1);
      v316 = v665;
    }

    v316[2] = v325 + 1;
    v326 = &v316[6 * v325];
    v326[4] = v315;
    *(v326 + 40) = v323;
    *(v326 + 41) = 2;
    *(v326 + 43) = 1;
    v326[6] = v645;
    v326[7] = v318;
    v326[8] = v320;
    v326[9] = v322;
    v317 += 2;
    ++v315;
  }

  while (v315 != 16);

  v664 = v619;
  sub_10005CDBC(v316);
  v639 = v664;
  v664 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v327 = 0;
  v328 = v664;
  v329 = (v636 + 40);
  v330 = v648;
  do
  {
    v331 = *v329;
    v645 = *(v329 - 1);

    v332 = v646;
    sub_1000635D4();
    LOBYTE(v663) = 0;
    v333 = sub_1000635B4();
    v335 = v334;

    v330(v332, v647);

    v336 = v663;
    v664 = v328;
    v338 = v328[2];
    v337 = v328[3];
    if (v338 >= v337 >> 1)
    {
      sub_100040E44((v337 > 1), v338 + 1, 1);
      v328 = v664;
    }

    v328[2] = v338 + 1;
    v339 = &v328[6 * v338];
    v339[4] = v327;
    *(v339 + 40) = v336;
    *(v339 + 41) = 514;
    *(v339 + 43) = 1;
    v339[6] = v645;
    v339[7] = v331;
    v339[8] = v333;
    v339[9] = v335;
    v329 += 2;
    ++v327;
    v330 = v648;
  }

  while (v327 != 6);

  v663 = v639;
  sub_10005CDBC(v328);
  v639 = v663;
  v663 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 5, 0);
  v340 = 0;
  v341 = v663;
  v342 = (v635 + 40);
  do
  {
    v343 = *v342;
    v645 = *(v342 - 1);

    v344 = v646;
    sub_1000635D4();
    LOBYTE(v662) = 0;
    v345 = sub_1000635B4();
    v347 = v346;

    v330(v344, v647);

    v348 = v662;
    v663 = v341;
    v350 = v341[2];
    v349 = v341[3];
    if (v350 >= v349 >> 1)
    {
      sub_100040E44((v349 > 1), v350 + 1, 1);
      v341 = v663;
    }

    v341[2] = v350 + 1;
    v351 = &v341[6 * v350];
    v351[4] = v340;
    *(v351 + 40) = v348;
    *(v351 + 41) = 257;
    *(v351 + 43) = 1;
    v351[6] = v645;
    v351[7] = v343;
    v351[8] = v345;
    v351[9] = v347;
    v342 += 2;
    ++v340;
    v330 = v648;
  }

  while (v340 != 5);

  v662 = v639;
  sub_10005CDBC(v341);
  v639 = v662;
  v662 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 5, 0);
  v352 = 0;
  v353 = v662;
  v354 = (v634 + 40);
  do
  {
    v355 = *v354;
    v645 = *(v354 - 1);

    v356 = v646;
    sub_1000635D4();
    LOBYTE(v661) = 0;
    v357 = sub_1000635B4();
    v359 = v358;

    v330(v356, v647);

    v360 = v661;
    v662 = v353;
    v362 = v353[2];
    v361 = v353[3];
    if (v362 >= v361 >> 1)
    {
      sub_100040E44((v361 > 1), v362 + 1, 1);
      v353 = v662;
    }

    v353[2] = v362 + 1;
    v363 = &v353[6 * v362];
    v363[4] = v352;
    *(v363 + 40) = v360;
    *(v363 + 41) = 1;
    *(v363 + 43) = 1;
    v363[6] = v645;
    v363[7] = v355;
    v363[8] = v357;
    v363[9] = v359;
    v354 += 2;
    ++v352;
    v330 = v648;
  }

  while (v352 != 5);

  v661 = v639;
  sub_10005CDBC(v353);
  sub_10005CDBC(_swiftEmptyArrayStorage);
  v645 = v661;
  v661 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 4, 0);
  v364 = v661;
  v365 = v638;

  v366 = v646;
  sub_1000635D4();
  LOBYTE(v660) = 0;
  v367 = sub_1000635B4();
  v369 = v368;

  v370 = v647;
  v330(v366, v647);

  v371 = v660;
  v661 = v364;
  v373 = v364[2];
  v372 = v364[3];
  if (v373 >= v372 >> 1)
  {
    sub_100040E44((v372 > 1), v373 + 1, 1);
    v364 = v661;
  }

  v364[2] = v373 + 1;
  v374 = &v364[6 * v373];
  v374[4] = 0;
  *(v374 + 40) = v371;
  *(v374 + 41) = 256;
  *(v374 + 43) = 1;
  v374[6] = v620;
  v374[7] = v365;
  v374[8] = v367;
  v374[9] = v369;
  v375 = v637;

  sub_1000635D4();
  LOBYTE(v660) = 0;
  v376 = sub_1000635B4();
  v378 = v377;

  v648(v366, v370);

  v379 = v660;
  v661 = v364;
  v380 = v370;
  v382 = v364[2];
  v381 = v364[3];
  if (v382 >= v381 >> 1)
  {
    sub_100040E44((v381 > 1), v382 + 1, 1);
    v364 = v661;
  }

  v364[2] = v382 + 1;
  v383 = &v364[6 * v382];
  v383[4] = 1;
  *(v383 + 40) = v379;
  *(v383 + 41) = 256;
  *(v383 + 43) = 1;
  v383[6] = v621;
  v383[7] = v375;
  v383[8] = v376;
  v383[9] = v378;
  v384 = v625;

  sub_1000635D4();
  LOBYTE(v660) = 0;
  v385 = sub_1000635B4();
  v387 = v386;

  v648(v366, v380);

  v388 = v660;
  v661 = v364;
  v390 = v364[2];
  v389 = v364[3];
  v391 = v380;
  if (v390 >= v389 >> 1)
  {
    sub_100040E44((v389 > 1), v390 + 1, 1);
    v364 = v661;
  }

  v364[2] = v390 + 1;
  v392 = &v364[6 * v390];
  v392[4] = 2;
  *(v392 + 40) = v388;
  *(v392 + 41) = 256;
  *(v392 + 43) = 1;
  v392[6] = v622;
  v392[7] = v384;
  v392[8] = v385;
  v392[9] = v387;
  v393 = v624;

  sub_1000635D4();
  LOBYTE(v660) = 0;
  v394 = sub_1000635B4();
  v396 = v395;

  v648(v366, v391);

  v397 = v660;
  v661 = v364;
  v399 = v364[2];
  v398 = v364[3];
  if (v399 >= v398 >> 1)
  {
    sub_100040E44((v398 > 1), v399 + 1, 1);
    v364 = v661;
  }

  v364[2] = v399 + 1;
  v400 = &v364[6 * v399];
  v400[4] = 3;
  *(v400 + 40) = v397;
  *(v400 + 41) = 256;
  *(v400 + 43) = 1;
  v400[6] = v623;
  v400[7] = v393;
  v400[8] = v394;
  v400[9] = v396;

  v660 = v645;
  sub_10005CDBC(v364);
  v645 = v660;
  v660 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 4, 0);
  v401 = v660;
  v402 = v642;

  sub_1000635D4();
  LOBYTE(v659) = 0;
  v403 = sub_1000635B4();
  v405 = v404;

  v648(v366, v647);

  v406 = v659;
  v660 = v401;
  v408 = v401[2];
  v407 = v401[3];
  if (v408 >= v407 >> 1)
  {
    sub_100040E44((v407 > 1), v408 + 1, 1);
    v401 = v660;
  }

  v401[2] = v408 + 1;
  v409 = &v401[6 * v408];
  v409[4] = 0;
  *(v409 + 40) = v406;
  *(v409 + 41) = 0;
  *(v409 + 43) = 1;
  v409[6] = v626;
  v409[7] = v402;
  v409[8] = v403;
  v409[9] = v405;
  v410 = v640;

  sub_1000635D4();
  LOBYTE(v659) = 0;
  v411 = sub_1000635B4();
  v413 = v412;

  v648(v366, v647);

  v414 = v659;
  v660 = v401;
  v416 = v401[2];
  v415 = v401[3];
  if (v416 >= v415 >> 1)
  {
    sub_100040E44((v415 > 1), v416 + 1, 1);
    v401 = v660;
  }

  v401[2] = v416 + 1;
  v417 = &v401[6 * v416];
  v417[4] = 1;
  *(v417 + 40) = v414;
  *(v417 + 41) = 0;
  *(v417 + 43) = 1;
  v417[6] = v627;
  v417[7] = v410;
  v417[8] = v411;
  v417[9] = v413;
  v418 = v631;

  sub_1000635D4();
  LOBYTE(v659) = 0;
  v419 = sub_1000635B4();
  v421 = v420;

  v648(v366, v647);

  v422 = v659;
  v660 = v401;
  v424 = v401[2];
  v423 = v401[3];
  if (v424 >= v423 >> 1)
  {
    sub_100040E44((v423 > 1), v424 + 1, 1);
    v401 = v660;
  }

  v401[2] = v424 + 1;
  v425 = &v401[6 * v424];
  v425[4] = 2;
  *(v425 + 40) = v422;
  *(v425 + 41) = 0;
  *(v425 + 43) = 1;
  v425[6] = v628;
  v425[7] = v418;
  v425[8] = v419;
  v425[9] = v421;
  v426 = v630;

  sub_1000635D4();
  LOBYTE(v659) = 0;
  v427 = sub_1000635B4();
  v429 = v428;

  v430 = v366;
  v431 = v426;
  v648(v430, v647);

  v432 = v659;
  v660 = v401;
  v434 = v401[2];
  v433 = v401[3];
  if (v434 >= v433 >> 1)
  {
    sub_100040E44((v433 > 1), v434 + 1, 1);
    v401 = v660;
  }

  v401[2] = v434 + 1;
  v435 = &v401[6 * v434];
  v435[4] = 3;
  *(v435 + 40) = v432;
  *(v435 + 41) = 0;
  *(v435 + 43) = 1;
  v435[6] = v629;
  v435[7] = v431;
  v435[8] = v427;
  v435[9] = v429;

  v659 = v645;
  sub_10005CDBC(v401);
  sub_10005CDBC(_swiftEmptyArrayStorage);
  v436 = v659;
  v659 = v633;
  sub_10005CDBC(v436);
  v639 = v659;
  v437 = swift_allocObject();
  *(v437 + 16) = xmmword_10006A9E0;
  if (qword_100084768 != -1)
  {
    swift_once();
  }

  v438 = *algn_1000908E8;
  *(v437 + 32) = qword_1000908E0;
  *(v437 + 40) = v438;
  v439 = qword_100084770;

  if (v439 != -1)
  {
    swift_once();
  }

  v440 = *algn_1000908F8;
  *(v437 + 48) = qword_1000908F0;
  *(v437 + 56) = v440;
  v441 = qword_100084778;

  if (v441 != -1)
  {
    swift_once();
  }

  v442 = *algn_100090908;
  *(v437 + 64) = qword_100090900;
  *(v437 + 72) = v442;
  v443 = qword_100084780;

  if (v443 != -1)
  {
    swift_once();
  }

  v444 = *algn_100090918;
  *(v437 + 80) = qword_100090910;
  *(v437 + 88) = v444;
  v445 = qword_100084788;

  if (v445 != -1)
  {
    swift_once();
  }

  v446 = *algn_100090928;
  *(v437 + 96) = qword_100090920;
  *(v437 + 104) = v446;
  v447 = qword_100084790;

  if (v447 != -1)
  {
    swift_once();
  }

  v448 = *algn_100090938;
  *(v437 + 112) = qword_100090930;
  *(v437 + 120) = v448;
  v449 = qword_100084798;

  if (v449 != -1)
  {
    swift_once();
  }

  v450 = *algn_100090948;
  *(v437 + 128) = qword_100090940;
  *(v437 + 136) = v450;
  v451 = qword_1000847A0;

  if (v451 != -1)
  {
    swift_once();
  }

  v452 = *algn_100090958;
  *(v437 + 144) = qword_100090950;
  *(v437 + 152) = v452;
  v453 = qword_1000847A8;

  if (v453 != -1)
  {
    swift_once();
  }

  v454 = *algn_100090968;
  *(v437 + 160) = qword_100090960;
  *(v437 + 168) = v454;
  v455 = qword_1000847B0;

  if (v455 != -1)
  {
    swift_once();
  }

  v456 = *algn_100090978;
  *(v437 + 176) = qword_100090970;
  *(v437 + 184) = v456;
  v457 = qword_1000847B8;

  if (v457 != -1)
  {
    swift_once();
  }

  v458 = *algn_100090988;
  *(v437 + 192) = qword_100090980;
  *(v437 + 200) = v458;
  v459 = qword_1000847C0;

  if (v459 != -1)
  {
    swift_once();
  }

  v460 = *algn_100090998;
  *(v437 + 208) = qword_100090990;
  *(v437 + 216) = v460;
  v461 = qword_1000847C8;

  if (v461 != -1)
  {
    swift_once();
  }

  v462 = *algn_1000909A8;
  *(v437 + 224) = qword_1000909A0;
  *(v437 + 232) = v462;
  v463 = qword_1000847D0;

  if (v463 != -1)
  {
    swift_once();
  }

  v464 = *algn_1000909B8;
  *(v437 + 240) = qword_1000909B0;
  *(v437 + 248) = v464;
  v465 = qword_1000847D8;

  if (v465 != -1)
  {
    swift_once();
  }

  v466 = *algn_1000909C8;
  *(v437 + 256) = qword_1000909C0;
  *(v437 + 264) = v466;
  v467 = swift_allocObject();
  *(v467 + 16) = xmmword_10006A9F0;
  v468 = qword_1000847E0;

  if (v468 != -1)
  {
    swift_once();
  }

  v469 = *algn_1000909D8;
  *(v467 + 32) = qword_1000909D0;
  *(v467 + 40) = v469;
  v470 = qword_1000847E8;

  if (v470 != -1)
  {
    swift_once();
  }

  v471 = *algn_1000909E8;
  *(v467 + 48) = qword_1000909E0;
  *(v467 + 56) = v471;
  v472 = qword_1000847F0;

  if (v472 != -1)
  {
    swift_once();
  }

  v473 = *algn_1000909F8;
  *(v467 + 64) = qword_1000909F0;
  *(v467 + 72) = v473;
  v474 = qword_1000847F8;

  if (v474 != -1)
  {
    swift_once();
  }

  v475 = *algn_100090A08;
  *(v467 + 80) = qword_100090A00;
  *(v467 + 88) = v475;
  v476 = qword_100084800;

  if (v476 != -1)
  {
    swift_once();
  }

  v477 = *algn_100090A18;
  *(v467 + 96) = qword_100090A10;
  *(v467 + 104) = v477;
  v478 = qword_100084808;

  if (v478 != -1)
  {
    swift_once();
  }

  v479 = *algn_100090A28;
  *(v467 + 112) = qword_100090A20;
  *(v467 + 120) = v479;
  v480 = qword_100084810;

  if (v480 != -1)
  {
    swift_once();
  }

  v481 = *algn_100090A38;
  *(v467 + 128) = qword_100090A30;
  *(v467 + 136) = v481;
  v482 = qword_100084818;

  if (v482 != -1)
  {
    swift_once();
  }

  v483 = *algn_100090A48;
  *(v467 + 144) = qword_100090A40;
  *(v467 + 152) = v483;
  v484 = qword_100084820;

  if (v484 != -1)
  {
    swift_once();
  }

  v485 = *algn_100090A58;
  *(v467 + 160) = qword_100090A50;
  *(v467 + 168) = v485;
  v486 = qword_100084828;

  if (v486 != -1)
  {
    swift_once();
  }

  v487 = *algn_100090A68;
  *(v467 + 176) = qword_100090A60;
  *(v467 + 184) = v487;
  v488 = qword_100084830;

  if (v488 != -1)
  {
    swift_once();
  }

  v489 = *algn_100090A78;
  *(v467 + 192) = qword_100090A70;
  *(v467 + 200) = v489;
  v490 = qword_100084838;

  if (v490 != -1)
  {
    swift_once();
  }

  v491 = *algn_100090A88;
  *(v467 + 208) = qword_100090A80;
  *(v467 + 216) = v491;
  v492 = qword_100084840;

  if (v492 != -1)
  {
    swift_once();
  }

  v493 = *algn_100090A98;
  *(v467 + 224) = qword_100090A90;
  *(v467 + 232) = v493;
  v494 = swift_allocObject();
  *(v494 + 16) = v644;
  v495 = qword_100084848;

  if (v495 != -1)
  {
    swift_once();
  }

  v496 = *algn_100090AA8;
  *(v494 + 32) = qword_100090AA0;
  *(v494 + 40) = v496;
  v497 = qword_100084850;

  if (v497 != -1)
  {
    swift_once();
  }

  v498 = *algn_100090AB8;
  *(v494 + 48) = qword_100090AB0;
  *(v494 + 56) = v498;
  v499 = qword_100084858;

  if (v499 != -1)
  {
    swift_once();
  }

  v500 = *algn_100090AC8;
  *(v494 + 64) = qword_100090AC0;
  *(v494 + 72) = v500;
  v501 = qword_100084860;

  if (v501 != -1)
  {
    swift_once();
  }

  v502 = *algn_100090AD8;
  *(v494 + 80) = qword_100090AD0;
  *(v494 + 88) = v502;
  v503 = qword_100084868;

  if (v503 != -1)
  {
    swift_once();
  }

  v504 = *algn_100090AE8;
  *(v494 + 96) = qword_100090AE0;
  *(v494 + 104) = v504;
  v505 = qword_100084870;

  if (v505 != -1)
  {
    swift_once();
  }

  v506 = *algn_100090AF8;
  *(v494 + 112) = qword_100090AF0;
  *(v494 + 120) = v506;
  v507 = swift_allocObject();
  *(v507 + 16) = v643;
  v508 = qword_100084878;

  if (v508 != -1)
  {
    swift_once();
  }

  v509 = *algn_100090B08;
  *(v507 + 32) = qword_100090B00;
  *(v507 + 40) = v509;
  v510 = qword_100084880;

  if (v510 != -1)
  {
    swift_once();
  }

  v511 = *algn_100090B18;
  *(v507 + 48) = qword_100090B10;
  *(v507 + 56) = v511;
  v512 = qword_100084888;

  if (v512 != -1)
  {
    swift_once();
  }

  v513 = *algn_100090B28;
  *(v507 + 64) = qword_100090B20;
  *(v507 + 72) = v513;
  v514 = qword_100084890;

  if (v514 != -1)
  {
    swift_once();
  }

  v515 = *algn_100090B38;
  *(v507 + 80) = qword_100090B30;
  *(v507 + 88) = v515;
  v516 = qword_100084898;

  if (v516 != -1)
  {
    swift_once();
  }

  v517 = *algn_100090B48;
  *(v507 + 96) = qword_100090B40;
  *(v507 + 104) = v517;
  v518 = swift_allocObject();
  *(v518 + 16) = v644;
  v519 = qword_1000848A0;

  if (v519 != -1)
  {
    swift_once();
  }

  v520 = *algn_100090B58;
  *(v518 + 32) = qword_100090B50;
  *(v518 + 40) = v520;
  v521 = qword_1000848A8;

  if (v521 != -1)
  {
    swift_once();
  }

  v522 = *algn_100090B68;
  *(v518 + 48) = qword_100090B60;
  *(v518 + 56) = v522;
  v523 = qword_1000848B0;

  if (v523 != -1)
  {
    swift_once();
  }

  v524 = *algn_100090B78;
  *(v518 + 64) = qword_100090B70;
  *(v518 + 72) = v524;
  v525 = qword_1000848B8;

  if (v525 != -1)
  {
    swift_once();
  }

  v526 = *algn_100090B88;
  *(v518 + 80) = qword_100090B80;
  *(v518 + 88) = v526;
  v527 = qword_1000848C0;

  if (v527 != -1)
  {
    swift_once();
  }

  v528 = *algn_100090B98;
  *(v518 + 96) = qword_100090B90;
  *(v518 + 104) = v528;
  v529 = qword_1000848C8;

  if (v529 != -1)
  {
    swift_once();
  }

  v530 = *algn_100090BA8;
  *(v518 + 112) = qword_100090BA0;
  *(v518 + 120) = v530;
  v531 = swift_allocObject();
  *(v531 + 16) = v644;
  v532 = qword_1000848D0;

  if (v532 != -1)
  {
    swift_once();
  }

  v533 = *algn_100090BB8;
  *(v531 + 32) = qword_100090BB0;
  *(v531 + 40) = v533;
  v534 = qword_1000848D8;

  if (v534 != -1)
  {
    swift_once();
  }

  v535 = *algn_100090BC8;
  *(v531 + 48) = qword_100090BC0;
  *(v531 + 56) = v535;
  v536 = qword_1000848E0;

  if (v536 != -1)
  {
    swift_once();
  }

  v537 = *algn_100090BD8;
  *(v531 + 64) = qword_100090BD0;
  *(v531 + 72) = v537;
  v538 = qword_1000848E8;

  if (v538 != -1)
  {
    swift_once();
  }

  *&v644 = v467;
  v539 = *algn_100090BE8;
  *(v531 + 80) = qword_100090BE0;
  *(v531 + 88) = v539;
  v540 = qword_1000848F0;

  if (v540 != -1)
  {
    swift_once();
  }

  v641 = v518;
  *&v643 = v494;
  v541 = *algn_100090BF8;
  *(v531 + 96) = qword_100090BF0;
  *(v531 + 104) = v541;
  v542 = qword_1000848F8;

  if (v542 != -1)
  {
    swift_once();
  }

  v642 = v507;
  v543 = *algn_100090C08;
  *(v531 + 112) = qword_100090C00;
  *(v531 + 120) = v543;
  v640 = v531;
  v659 = _swiftEmptyArrayStorage;

  sub_100040E44(0, 15, 0);
  v544 = 0;
  v545 = v659;
  v638 = v437;
  v546 = (v437 + 40);
  do
  {
    v547 = *v546;
    v645 = *(v546 - 1);

    v548 = v646;
    sub_1000635D4();
    LOBYTE(v658) = 0;
    v549 = sub_1000635B4();
    v551 = v550;

    v648(v548, v647);

    v552 = v658;
    v659 = v545;
    v554 = *(v545 + 2);
    v553 = *(v545 + 3);
    if (v554 >= v553 >> 1)
    {
      sub_100040E44((v553 > 1), v554 + 1, 1);
      v545 = v659;
    }

    *(v545 + 2) = v554 + 1;
    v555 = &v545[48 * v554];
    *(v555 + 4) = v544;
    v555[40] = v552;
    *(v555 + 41) = 258;
    v555[43] = 2;
    *(v555 + 6) = v645;
    *(v555 + 7) = v547;
    *(v555 + 8) = v549;
    *(v555 + 9) = v551;
    v546 += 2;
    ++v544;
  }

  while (v544 != 15);
  v637 = v545;

  v658 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 13, 0);
  v556 = 0;
  v557 = v658;
  v558 = (v644 + 40);
  do
  {
    v559 = *v558;
    v645 = *(v558 - 1);

    v560 = v646;
    sub_1000635D4();
    LOBYTE(v656) = 0;
    v561 = sub_1000635B4();
    v563 = v562;

    v648(v560, v647);

    v564 = v656;
    v658 = v557;
    v566 = v557[2];
    v565 = v557[3];
    if (v566 >= v565 >> 1)
    {
      sub_100040E44((v565 > 1), v566 + 1, 1);
      v557 = v658;
    }

    v557[2] = v566 + 1;
    v567 = &v557[6 * v566];
    v567[4] = v556;
    *(v567 + 40) = v564;
    *(v567 + 41) = 2;
    *(v567 + 43) = 2;
    v567[6] = v645;
    v567[7] = v559;
    v567[8] = v561;
    v567[9] = v563;
    v558 += 2;
    ++v556;
  }

  while (v556 != 13);

  v657 = v637;
  sub_10005CDBC(v557);
  sub_10005CDBC(_swiftEmptyArrayStorage);
  *&v644 = v657;
  v656 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v568 = 0;
  v569 = v656;
  v570 = (v643 + 40);
  do
  {
    v571 = *v570;
    v645 = *(v570 - 1);

    v572 = v646;
    sub_1000635D4();
    LOBYTE(v655) = 0;
    v573 = sub_1000635B4();
    v575 = v574;

    v648(v572, v647);

    v576 = v655;
    v656 = v569;
    v578 = v569[2];
    v577 = v569[3];
    if (v578 >= v577 >> 1)
    {
      sub_100040E44((v577 > 1), v578 + 1, 1);
      v569 = v656;
    }

    v569[2] = v578 + 1;
    v579 = &v569[6 * v578];
    v579[4] = v568;
    *(v579 + 40) = v576;
    *(v579 + 41) = 257;
    *(v579 + 43) = 2;
    v579[6] = v645;
    v579[7] = v571;
    v579[8] = v573;
    v579[9] = v575;
    v570 += 2;
    ++v568;
  }

  while (v568 != 6);

  v655 = v644;
  sub_10005CDBC(v569);
  *&v644 = v655;
  v655 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 5, 0);
  v580 = 0;
  v581 = v655;
  v582 = (v642 + 40);
  v583 = v647;
  do
  {
    v584 = *v582;
    v645 = *(v582 - 1);

    v585 = v646;
    sub_1000635D4();
    LOBYTE(v653) = 0;
    v586 = sub_1000635B4();
    v588 = v587;

    v648(v585, v583);

    v589 = v653;
    v655 = v581;
    v591 = v581[2];
    v590 = v581[3];
    if (v591 >= v590 >> 1)
    {
      sub_100040E44((v590 > 1), v591 + 1, 1);
      v581 = v655;
    }

    v581[2] = v591 + 1;
    v592 = &v581[6 * v591];
    v592[4] = v580;
    *(v592 + 40) = v589;
    *(v592 + 41) = 1;
    *(v592 + 43) = 2;
    v592[6] = v645;
    v592[7] = v584;
    v592[8] = v586;
    v592[9] = v588;
    v582 += 2;
    ++v580;
    v583 = v647;
  }

  while (v580 != 5);

  v654 = v644;
  sub_10005CDBC(v581);
  sub_10005CDBC(_swiftEmptyArrayStorage);
  *&v644 = v654;
  v653 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v593 = 0;
  v594 = v653;
  v595 = (v641 + 40);
  do
  {
    v596 = *v595;
    v645 = *(v595 - 1);

    v597 = v646;
    sub_1000635D4();
    LOBYTE(v652) = 0;
    v598 = sub_1000635B4();
    v600 = v599;

    v648(v597, v583);

    v601 = v652;
    v653 = v594;
    v603 = v594[2];
    v602 = v594[3];
    if (v603 >= v602 >> 1)
    {
      sub_100040E44((v602 > 1), v603 + 1, 1);
      v594 = v653;
    }

    v594[2] = v603 + 1;
    v604 = &v594[6 * v603];
    v604[4] = v593;
    *(v604 + 40) = v601;
    *(v604 + 41) = 256;
    *(v604 + 43) = 2;
    v604[6] = v645;
    v604[7] = v596;
    v604[8] = v598;
    v604[9] = v600;
    v595 += 2;
    ++v593;
    v583 = v647;
  }

  while (v593 != 6);

  v652 = v644;
  sub_10005CDBC(v594);
  *&v644 = v652;
  v652 = _swiftEmptyArrayStorage;
  sub_100040E44(0, 6, 0);
  v605 = 0;
  v606 = v652;
  v607 = v640 + 5;
  do
  {
    v608 = *v607;
    v645 = *(v607 - 1);

    v609 = v646;
    sub_1000635D4();
    LOBYTE(v650) = 0;
    v610 = sub_1000635B4();
    v612 = v611;

    v648(v609, v583);

    v613 = v650;
    v652 = v606;
    v615 = v606[2];
    v614 = v606[3];
    if (v615 >= v614 >> 1)
    {
      sub_100040E44((v614 > 1), v615 + 1, 1);
      v606 = v652;
    }

    v606[2] = v615 + 1;
    v616 = &v606[6 * v615];
    v616[4] = v605;
    *(v616 + 40) = v613;
    *(v616 + 41) = 0;
    *(v616 + 43) = 2;
    v616[6] = v645;
    v616[7] = v608;
    v616[8] = v610;
    v616[9] = v612;
    v607 += 2;
    ++v605;
    v583 = v647;
  }

  while (v605 != 6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v651 = v644;
  sub_10005CDBC(v606);
  sub_10005CDBC(_swiftEmptyArrayStorage);
  v650 = v639;
  sub_10005CDBC(v651);
  v617 = sub_10005CEB4(v650);

  qword_100090E18 = v617;
  return result;
}

char *sub_10005CDBC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10001BFF0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10005CEB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10005CF60();
  result = sub_100064344();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v9[0] = *v4;
      v9[1] = v5;
      v9[2] = v4[2];
      sub_10000B264(v9, v7);
      sub_10003F0C8(v6, v9);
      v7[0] = v6[0];
      v7[1] = v6[1];
      v7[2] = v6[2];
      sub_1000480AC(v7);
      v4 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10005CF60()
{
  result = qword_100086C50;
  if (!qword_100086C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C50);
  }

  return result;
}

__n128 sub_10005CFB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10005CFC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005D010(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005D06C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x616568416B6F6F6CLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x446C616963657073;
    }

    if (v4 == 2)
    {
      v6 = 0x800000010006B460;
    }

    else
    {
      v6 = 0xEB00000000737961;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D6F4D6568546E69;
    }

    else
    {
      v5 = 0x616568416B6F6F6CLL;
    }

    if (v4)
    {
      v6 = 0xEB00000000746E65;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000010006B460;
  if (a2 != 2)
  {
    v7 = 0x446C616963657073;
    v8 = 0xEB00000000737961;
  }

  if (a2)
  {
    v3 = 0x6D6F4D6568546E69;
    v2 = 0xEB00000000746E65;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100064594();
  }

  return v11 & 1;
}

uint64_t sub_10005D1D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6172656E6567;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79636176697270;
    }

    else
    {
      v4 = 0x796C616E41707061;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEC00000073636974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6163696669746F6ELL;
    }

    else
    {
      v4 = 0x6C6172656E6567;
    }

    if (v3)
    {
      v5 = 0xED0000736E6F6974;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x79636176697270;
  if (a2 != 2)
  {
    v8 = 0x796C616E41707061;
    v7 = 0xEC00000073636974;
  }

  if (a2)
  {
    v2 = 0x6163696669746F6ELL;
    v6 = 0xED0000736E6F6974;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100064594();
  }

  return v11 & 1;
}

uint64_t sub_10005D33C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 0x800000010006B3D0;
    v13 = 0x7972746E45646461;
    if (a1 == 2)
    {
      v13 = 0xD000000000000012;
    }

    else
    {
      v12 = 0xED0000656C746954;
    }

    v14 = 0xD000000000000014;
    if (a1)
    {
      v11 = 0x800000010006B3B0;
    }

    else
    {
      v14 = 1953460082;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x72756F4A6B636F6CLL;
    v4 = 0xEB000000006C616ELL;
    v5 = 0x68506F5465766173;
    v6 = 0xEC000000736F746FLL;
    if (a1 != 7)
    {
      v5 = 0xD000000000000011;
      v6 = 0x800000010006B430;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x800000010006B400;
    v8 = 0xD000000000000013;
    if (a1 != 4)
    {
      v8 = 0x6163696669746F6ELL;
      v7 = 0xED0000736E6F6974;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0x800000010006B3B0;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        if (v9 != 1953460082)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 2)
    {
      v15 = 0x800000010006B3D0;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v16 = 0x7972746E45646461;
    v17 = 0x656C746954;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xEB000000006C616ELL;
        if (v9 != 0x72756F4A6B636F6CLL)
        {
          goto LABEL_53;
        }
      }

      else if (a2 == 7)
      {
        v15 = 0xEC000000736F746FLL;
        if (v9 != 0x68506F5465766173)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v15 = 0x800000010006B430;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 4)
    {
      v15 = 0x800000010006B400;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    v16 = 0x6163696669746F6ELL;
    v17 = 0x736E6F6974;
  }

  v15 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  if (v9 != v16)
  {
LABEL_53:
    v18 = sub_100064594();
    goto LABEL_54;
  }

LABEL_51:
  if (v10 != v15)
  {
    goto LABEL_53;
  }

  v18 = 1;
LABEL_54:

  return v18 & 1;
}

Swift::Int sub_10005D668()
{
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10005D744(uint64_t a1)
{
  sub_1000642C4();
}

Swift::Int sub_10005D80C(uint64_t a1)
{
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

unint64_t sub_10005D8E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005FCA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10005D914(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x616568416B6F6F6CLL;
  v4 = 0x800000010006B460;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x446C616963657073;
    v4 = 0xEB00000000737961;
  }

  if (*v1)
  {
    v3 = 0x6D6F4D6568546E69;
    v2 = 0xEB00000000746E65;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10005DA5C(void *a1)
{
  v3 = v1;
  v5 = sub_1000021D4(&qword_100086C88, &qword_10006AB20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000226A8(a1, a1[3]);
  sub_1000602F0();
  sub_100064604();
  v10[15] = 0;
  sub_100064534();
  if (!v2)
  {
    v10[14] = v3[9];
    v10[13] = 1;
    sub_100060440();
    sub_100064574();
    v10[12] = v3[10];
    v10[11] = 2;
    sub_100060494();
    sub_100064574();
    v10[10] = v3[11];
    v10[9] = 3;
    sub_1000604E8();
    sub_100064574();
    v10[8] = 4;
    sub_100064554();
    v10[7] = 5;
    sub_100064554();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005DCAC(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    sub_1000645D4(0);
  }

  else
  {
    v2 = *v1;
    sub_1000645D4(1u);
    sub_1000645C4(v2);
  }

  sub_1000642C4();

  sub_1000642C4();

  sub_1000642C4();

  sub_1000642C4();

  return sub_1000642C4();
}

uint64_t sub_10005DEB4(void *a1)
{
  v3 = v1;
  v5 = sub_1000021D4(&qword_100086DF0, &qword_10006B0D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000226A8(a1, a1[3]);
  sub_100061358();
  sub_100064604();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v16 = v3[2];
  v13 = 0;
  sub_100048204(v3, v12);
  sub_100061400();
  sub_100064574();
  v12[0] = v14;
  v12[1] = v15;
  v12[2] = v16;
  sub_1000480AC(v12);
  if (!v2)
  {
    v11[15] = 1;
    sub_100064564();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005E078(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6557664F656D6974;
  v4 = 0xEA00000000006B65;
  if (v2 != 1)
  {
    v3 = 0x656D6974796E61;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6144664F656D6974;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0x6557664F656D6974;
  v8 = 0xEA00000000006B65;
  if (*a2 != 1)
  {
    v7 = 0x656D6974796E61;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6144664F656D6974;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100064594();
  }

  return v11 & 1;
}

Swift::Int sub_10005E184()
{
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10005E230(uint64_t a1)
{
  sub_1000642C4();
}

Swift::Int sub_10005E2C8(uint64_t a1)
{
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

unint64_t sub_10005E370@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005FCF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10005E3A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xEA00000000006B65;
  v5 = 0x6557664F656D6974;
  if (v2 != 1)
  {
    v5 = 0x656D6974796E61;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6144664F656D6974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10005E4B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746365526B636F6CLL;
  v4 = 0xEF72616C75676E61;
  if (v2 != 1)
  {
    v3 = 1701670760;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696C6E496B636F6CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000656ELL;
  }

  v7 = 0x746365526B636F6CLL;
  v8 = 0xEF72616C75676E61;
  if (*a2 != 1)
  {
    v7 = 1701670760;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696C6E496B636F6CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000656ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100064594();
  }

  return v11 & 1;
}

Swift::Int sub_10005E5C4()
{
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

uint64_t sub_10005E670(uint64_t a1)
{
  sub_1000642C4();
}

Swift::Int sub_10005E708(uint64_t a1)
{
  sub_1000645B4();
  sub_1000642C4();

  return sub_1000645E4();
}

unint64_t sub_10005E7B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005FD3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10005E7E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656ELL;
  v4 = 0xEF72616C75676E61;
  v5 = 0x746365526B636F6CLL;
  if (v2 != 1)
  {
    v5 = 1701670760;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696C6E496B636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10005E8F8()
{
  v1 = *v0;
  v2 = 0x64496568636163;
  v3 = 1701869940;
  v4 = 1954047348;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74616E6974736564;
  if (v1 != 1)
  {
    v5 = 0x656C616373;
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

uint64_t sub_10005E9AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10005FD88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005E9D4(uint64_t a1)
{
  v2 = sub_1000602F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EA10(uint64_t a1)
{
  v2 = sub_1000602F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10005EA4C()
{
  sub_1000645B4();
  sub_10005DCAC(v1);
  return sub_1000645E4();
}

Swift::Int sub_10005EA90(uint64_t a1)
{
  sub_1000645B4();
  sub_10005DCAC(v2);
  return sub_1000645E4();
}

double sub_10005EACC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10005FF8C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_10005EB28(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_10005F83C(v7, v8) & 1;
}

unint64_t sub_10005EB74()
{
  result = qword_100086C58;
  if (!qword_100086C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C58);
  }

  return result;
}

uint64_t sub_10005EBC8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t sub_10005EC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v6 || (sub_100064594() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100074180 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100064594();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10005ECE4(uint64_t a1)
{
  v2 = sub_100061358();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005ED20(uint64_t a1)
{
  v2 = sub_100061358();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005ED5C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000610D0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_10005EDF0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v2;
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = a2[1];
  v9[2] = *(a1 + 32);
  v10[0] = v4;
  v6 = a2[2];
  v10[1] = v5;
  v10[2] = v6;
  v7 = *(a2 + 48);
  return sub_10005F83C(v9, v10) & ~(v3 ^ v7) & 1;
}

uint64_t sub_10005EE50(void *a1)
{
  v3 = v1;
  v5 = sub_1000021D4(&qword_100086D90, &qword_10006B0C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  sub_1000226A8(a1, a1[3]);
  sub_100060EDC();
  sub_100064604();
  v56 = 0;
  sub_1000021D4(&qword_100084E60, &unk_100065B80);
  sub_100060F84(&qword_100086DA0, &qword_100086DA8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <> Range<A>);
  sub_100064574();
  if (!v2)
  {
    started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
    v10 = (v3 + started[5]);
    v11 = v10[2];
    v12 = *v10;
    v13 = *v10;
    v50 = v10[1];
    v51 = v11;
    v49 = v12;
    v52 = *(v10 + 48);
    v45 = v13;
    v46 = v50;
    v47 = v10[2];
    v48 = *(v10 + 48);
    v55 = 1;
    sub_100048204(&v49, &v41);
    sub_100060F30();
    sub_100064574();
    v39[0] = v45;
    v39[1] = v46;
    v39[2] = v47;
    v40 = v48;
    sub_100048260(v39);
    v14 = (v3 + started[6]);
    v15 = v14[2];
    v16 = *v14;
    v17 = *v14;
    v42 = v14[1];
    v43 = v15;
    v41 = v16;
    v44 = *(v14 + 48);
    v35 = v17;
    v36 = v42;
    v37 = v14[2];
    v38 = *(v14 + 48);
    v54 = 2;
    sub_100048204(&v41, &v31);
    sub_100064574();
    v29[0] = v35;
    v29[1] = v36;
    v29[2] = v37;
    v30 = v38;
    sub_100048260(v29);
    v18 = (v3 + started[7]);
    v19 = v18[2];
    v20 = *v18;
    v21 = *v18;
    v32 = v18[1];
    v33 = v19;
    v31 = v20;
    v34 = *(v18 + 48);
    v25 = v21;
    v26 = v32;
    v27 = v18[2];
    v28 = *(v18 + 48);
    v53 = 3;
    sub_100048204(&v31, v23);
    sub_100064574();
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    v24 = v28;
    sub_100048260(v23);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005F210@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v24 = sub_1000021D4(&qword_100086DB8, &qword_10006B0C8);
  v23 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v22 - v7;
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  __chkstk_darwin(started);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v38 = a1;
  sub_1000226A8(a1, v12);
  sub_100060EDC();
  sub_1000645F4();
  if (v2)
  {
    return sub_1000226EC(v38);
  }

  v13 = v23;
  LOBYTE(v36[0]) = 0;
  sub_100060F84(&qword_100086DC0, &qword_100086DC8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <> Range<A>);
  sub_100064504();
  sub_10006100C(v6, v11);
  v35 = 1;
  sub_10006107C();
  sub_100064504();
  v14 = &v11[started[5]];
  v15 = v36[1];
  v16 = v36[2];
  *v14 = v36[0];
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  v14[48] = v37;
  v30 = 2;
  sub_100064504();
  v17 = &v11[started[6]];
  v18 = v32;
  *v17 = v31;
  *(v17 + 1) = v18;
  *(v17 + 2) = v33;
  v17[48] = v34;
  v25 = 3;
  sub_100064504();
  (*(v13 + 8))(v8, v24);
  v19 = &v11[started[7]];
  v20 = v27;
  *v19 = v26;
  *(v19 + 1) = v20;
  *(v19 + 2) = v28;
  v19[48] = v29;
  sub_10000C8CC(v11, v22);
  sub_1000226EC(v38);
  return sub_100048100(v11);
}

unint64_t sub_10005F6D0()
{
  v1 = 0x656D69746566696CLL;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x6F666E49656D6F68;
  }

  if (*v0)
  {
    v1 = 0x696C6E496B636F6CLL;
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

uint64_t sub_10005F75C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100061684(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005F790(uint64_t a1)
{
  v2 = sub_100060EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F7CC(uint64_t a1)
{
  v2 = sub_100060EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005F83C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 9);
  v6 = 0x746365526B636F6CLL;
  v7 = 0xEF72616C75676E61;
  if (v5 != 1)
  {
    v6 = 1701670760;
    v7 = 0xE400000000000000;
  }

  if (*(a1 + 9))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x696C6E496B636F6CLL;
  }

  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xEA0000000000656ELL;
  }

  v10 = 0x746365526B636F6CLL;
  v11 = 0xEF72616C75676E61;
  if (*(a2 + 9) != 1)
  {
    v10 = 1701670760;
    v11 = 0xE400000000000000;
  }

  if (*(a2 + 9))
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x696C6E496B636F6CLL;
  }

  if (*(a2 + 9))
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xEA0000000000656ELL;
  }

  if (v8 == v12 && v9 == v13)
  {
  }

  else
  {
    v14 = sub_100064594();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = 0x6557664F656D6974;
  v16 = 0xEA00000000006B65;
  v17 = 0xE700000000000000;
  if (*(a1 + 10) == 1)
  {
    v17 = 0xEA00000000006B65;
  }

  else
  {
    v15 = 0x656D6974796E61;
  }

  if (*(a1 + 10))
  {
    v18 = v15;
  }

  else
  {
    v18 = 0x6144664F656D6974;
  }

  if (*(a1 + 10))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000079;
  }

  v20 = 0x6557664F656D6974;
  if (*(a2 + 10) != 1)
  {
    v20 = 0x656D6974796E61;
    v16 = 0xE700000000000000;
  }

  if (*(a2 + 10))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x6144664F656D6974;
  }

  if (*(a2 + 10))
  {
    v22 = v16;
  }

  else
  {
    v22 = 0xE900000000000079;
  }

  if (v18 != v21 || v19 != v22)
  {
    v23 = sub_100064594();

    if (v23)
    {
      goto LABEL_48;
    }

    return 0;
  }

LABEL_48:
  if ((sub_10005D06C(*(a1 + 11), *(a2 + 11)) & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_100064594() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  return sub_100064594();
}

uint64_t sub_10005FAE0(uint64_t a1, uint64_t a2)
{
  sub_100063574();
  sub_1000483C8(&qword_100085458, &protocol conformance descriptor for Date);
  if (sub_100064274() & 1) != 0 && (sub_1000021D4(&qword_100084E60, &unk_100065B80), (sub_100064274()))
  {
    started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
    v5 = a1 + started[5];
    v6 = *(v5 + 32);
    v31[1] = *(v5 + 16);
    v31[2] = v6;
    v31[0] = *v5;
    v7 = *(v5 + 48);
    v8 = a2 + started[5];
    v9 = *(v8 + 32);
    v32[1] = *(v8 + 16);
    v32[2] = v9;
    v32[0] = *v8;
    v10 = *(v8 + 48);
    v11 = sub_10005F83C(v31, v32);
    v12 = 0;
    if ((v11 & 1) != 0 && ((v7 ^ v10) & 1) == 0)
    {
      v13 = a1 + started[6];
      v14 = *(v13 + 32);
      v29[1] = *(v13 + 16);
      v29[2] = v14;
      v29[0] = *v13;
      v15 = *(v13 + 48);
      v16 = a2 + started[6];
      v17 = *(v16 + 32);
      v30[1] = *(v16 + 16);
      v30[2] = v17;
      v30[0] = *v16;
      v18 = *(v16 + 48);
      v19 = sub_10005F83C(v29, v30);
      v12 = 0;
      if ((v19 & 1) != 0 && ((v15 ^ v18) & 1) == 0)
      {
        v20 = a1 + started[7];
        v21 = *(v20 + 32);
        v27[1] = *(v20 + 16);
        v27[2] = v21;
        v27[0] = *v20;
        v22 = *(v20 + 48);
        v23 = a2 + started[7];
        v24 = *(v23 + 32);
        v28[1] = *(v23 + 16);
        v28[2] = v24;
        v28[0] = *v23;
        v25 = *(v23 + 48);
        v12 = sub_10005F83C(v27, v28) & (v22 ^ v25 ^ 1);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_10005FCA4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100082638;
  v6._object = a2;
  v4 = sub_100064494(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10005FCF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000826B8;
  v6._object = a2;
  v4 = sub_100064494(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10005FD3C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100082720;
  v6._object = a2;
  v4 = sub_100064494(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005FD88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496568636163 && a2 == 0xE700000000000000;
  if (v4 || (sub_100064594() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_100064594() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_100064594() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_100064594() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_100064594() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100074140 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_100064594();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10005FF8C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000021D4(&qword_100086C60, &qword_10006AB18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000226A8(a1, a1[3]);
  sub_1000602F0();
  sub_1000645F4();
  if (v2)
  {
    return sub_1000226EC(a1);
  }

  LOBYTE(v34) = 0;
  v9 = sub_1000644C4();
  v43 = v10 & 1;
  LOBYTE(v31) = 1;
  sub_100060344();
  sub_100064504();
  v11 = v34;
  LOBYTE(v31) = 2;
  sub_100060398();
  sub_100064504();
  v30 = v11;
  v12 = v34;
  LOBYTE(v31) = 3;
  sub_1000603EC();
  sub_100064504();
  v28 = v12;
  v13 = v34;
  LOBYTE(v34) = 4;
  v14 = sub_1000644E4();
  v29 = v15;
  v26 = v13;
  v27 = v14;
  v44 = 5;
  v16 = sub_1000644E4();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v25 = v9;
  *&v31 = v9;
  HIDWORD(v24) = v43;
  BYTE8(v31) = v43;
  v19 = v30;
  BYTE9(v31) = v30;
  LOBYTE(v9) = v28;
  BYTE10(v31) = v28;
  v20 = v26;
  BYTE11(v31) = v26;
  v21 = v27;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_10000B264(&v31, &v34);
  sub_1000226EC(a1);
  v34 = v25;
  v35 = BYTE4(v24);
  v36 = v19;
  v37 = v9;
  v38 = v20;
  v39 = v21;
  v40 = v29;
  v41 = v16;
  v42 = v18;
  result = sub_1000480AC(&v34);
  v23 = v32;
  *a2 = v31;
  a2[1] = v23;
  a2[2] = v33;
  return result;
}

unint64_t sub_1000602F0()
{
  result = qword_100086C68;
  if (!qword_100086C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C68);
  }

  return result;
}

unint64_t sub_100060344()
{
  result = qword_100086C70;
  if (!qword_100086C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C70);
  }

  return result;
}

unint64_t sub_100060398()
{
  result = qword_100086C78;
  if (!qword_100086C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C78);
  }

  return result;
}

unint64_t sub_1000603EC()
{
  result = qword_100086C80;
  if (!qword_100086C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C80);
  }

  return result;
}

unint64_t sub_100060440()
{
  result = qword_100086C90;
  if (!qword_100086C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C90);
  }

  return result;
}

unint64_t sub_100060494()
{
  result = qword_100086C98;
  if (!qword_100086C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086C98);
  }

  return result;
}

unint64_t sub_1000604E8()
{
  result = qword_100086CA0;
  if (!qword_100086CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086CA0);
  }

  return result;
}

__n128 sub_10006053C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100060558(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000605A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100060614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000606F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for StartWritingWidgetPersistedPrompts(uint64_t a1)
{
  result = qword_100086D00;
  if (!qword_100086D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100060808(uint64_t a1)
{
  sub_100060880(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100060880(uint64_t a1)
{
  if (!qword_100086D10)
  {
    sub_100063574();
    sub_1000483C8(&qword_1000864D0, &protocol conformance descriptor for Date);
    v1 = sub_100064364();
    if (!v2)
    {
      atomic_store(v1, &qword_100086D10);
    }
  }
}

uint64_t getEnumTagSinglePayload for StartWritingWidgetPrompt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StartWritingWidgetPrompt.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100060A80(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100060B10(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100060BD4()
{
  result = qword_100086D48;
  if (!qword_100086D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D48);
  }

  return result;
}

unint64_t sub_100060C2C()
{
  result = qword_100086D50;
  if (!qword_100086D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D50);
  }

  return result;
}

unint64_t sub_100060C84()
{
  result = qword_100086D58;
  if (!qword_100086D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D58);
  }

  return result;
}

unint64_t sub_100060CDC()
{
  result = qword_100086D60;
  if (!qword_100086D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D60);
  }

  return result;
}

unint64_t sub_100060D34()
{
  result = qword_100086D68;
  if (!qword_100086D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D68);
  }

  return result;
}

unint64_t sub_100060D8C()
{
  result = qword_100086D70;
  if (!qword_100086D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D70);
  }

  return result;
}

unint64_t sub_100060DE0()
{
  result = qword_100086D78;
  if (!qword_100086D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D78);
  }

  return result;
}

unint64_t sub_100060E34()
{
  result = qword_100086D80;
  if (!qword_100086D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D80);
  }

  return result;
}

unint64_t sub_100060E88()
{
  result = qword_100086D88;
  if (!qword_100086D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D88);
  }

  return result;
}

unint64_t sub_100060EDC()
{
  result = qword_100086D98;
  if (!qword_100086D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086D98);
  }

  return result;
}

unint64_t sub_100060F30()
{
  result = qword_100086DB0;
  if (!qword_100086DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DB0);
  }

  return result;
}

uint64_t sub_100060F84(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000221C(&qword_100084E60, &unk_100065B80);
    sub_1000483C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006100C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006107C()
{
  result = qword_100086DD0;
  if (!qword_100086DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DD0);
  }

  return result;
}

uint64_t sub_1000610D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000021D4(&qword_100086DD8, &qword_10006B0D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000226A8(a1, a1[3]);
  sub_100061358();
  sub_1000645F4();
  if (v2)
  {
    return sub_1000226EC(a1);
  }

  v25 = 0;
  sub_1000613AC();
  sub_100064504();
  v21 = v18;
  v22 = v19;
  v23 = v20;
  v24 = 1;
  v9 = sub_1000644F4();
  (*(v6 + 8))(v8, v5);
  v9 &= 1u;
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v15 = v9;
  sub_100048204(&v12, v16);
  sub_1000226EC(a1);
  v16[0] = v21;
  v16[1] = v22;
  v16[2] = v23;
  v17 = v9;
  result = sub_100048260(v16);
  v11 = v13;
  *a2 = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  return result;
}

unint64_t sub_100061358()
{
  result = qword_100086DE0;
  if (!qword_100086DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DE0);
  }

  return result;
}

unint64_t sub_1000613AC()
{
  result = qword_100086DE8;
  if (!qword_100086DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DE8);
  }

  return result;
}

unint64_t sub_100061400()
{
  result = qword_100086DF8;
  if (!qword_100086DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086DF8);
  }

  return result;
}

unint64_t sub_100061478()
{
  result = qword_100086E00;
  if (!qword_100086E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E00);
  }

  return result;
}

unint64_t sub_1000614D0()
{
  result = qword_100086E08;
  if (!qword_100086E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E08);
  }

  return result;
}

unint64_t sub_100061528()
{
  result = qword_100086E10;
  if (!qword_100086E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E10);
  }

  return result;
}

unint64_t sub_100061580()
{
  result = qword_100086E18;
  if (!qword_100086E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E18);
  }

  return result;
}

unint64_t sub_1000615D8()
{
  result = qword_100086E20;
  if (!qword_100086E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E20);
  }

  return result;
}

unint64_t sub_100061630()
{
  result = qword_100086E28;
  if (!qword_100086E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E28);
  }

  return result;
}

uint64_t sub_100061684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D69746566696CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_100064594() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C6E496B636F6CLL && a2 == 0xEE006F666E49656ELL || (sub_100064594() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100074160 == a2 || (sub_100064594() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F666E49656D6F68 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100064594();

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

unint64_t sub_10006182C()
{
  result = qword_100086E30;
  if (!qword_100086E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086E30);
  }

  return result;
}

id sub_1000618A4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100086E38 = result;
  return result;
}

uint64_t sub_1000618FC()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E20);
  sub_1000049B4(v0, qword_100090E20);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_1000619A4()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E38);
  sub_1000049B4(v0, qword_100090E38);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061A4C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E50);
  sub_1000049B4(v0, qword_100090E50);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061AF4()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E68);
  sub_1000049B4(v0, qword_100090E68);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061B9C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E80);
  sub_1000049B4(v0, qword_100090E80);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061C44()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090E98);
  sub_1000049B4(v0, qword_100090E98);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061CEC()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090EB0);
  sub_1000049B4(v0, qword_100090EB0);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061D94()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090EC8);
  sub_1000049B4(v0, qword_100090EC8);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061E3C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090EE0);
  sub_1000049B4(v0, qword_100090EE0);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061EE4()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090EF8);
  sub_1000049B4(v0, qword_100090EF8);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100061F8C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F10);
  sub_1000049B4(v0, qword_100090F10);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100062034()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F28);
  sub_1000049B4(v0, qword_100090F28);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_1000620DC()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F40);
  sub_1000049B4(v0, qword_100090F40);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100062184()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F58);
  sub_1000049B4(v0, qword_100090F58);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_10006222C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F70);
  sub_1000049B4(v0, qword_100090F70);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_1000622D4()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090F88);
  sub_1000049B4(v0, qword_100090F88);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_10006237C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090FA0);
  sub_1000049B4(v0, qword_100090FA0);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100062424()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090FB8);
  sub_1000049B4(v0, qword_100090FB8);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_1000624CC()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090FD0);
  sub_1000049B4(v0, qword_100090FD0);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_100062574()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100090FE8);
  sub_1000049B4(v0, qword_100090FE8);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_10006261C()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100091000);
  sub_1000049B4(v0, qword_100091000);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_1000626C4()
{
  v0 = sub_1000636A4();
  sub_100009DBC(v0, qword_100091018);
  sub_1000049B4(v0, qword_100091018);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_100063694();
}

uint64_t sub_10006276C()
{
  v0 = sub_1000636C4();
  sub_100009DBC(v0, qword_100091030);
  sub_1000049B4(v0, qword_100091030);
  if (qword_1000849E8 != -1)
  {
    swift_once();
  }

  v1 = qword_100086E38;
  return sub_1000636B4();
}

uint64_t sub_10006281C(int a1, int a2, int a3, int a4)
{
  if (qword_100090238 == -1)
  {
    if (qword_100090240)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100062CE4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100090240)
    {
      return _availability_version_check();
    }
  }

  if (qword_100090230 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100062CFC();
    a3 = v10;
    a4 = v9;
    v8 = dword_100090220 < v11;
    if (dword_100090220 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100090224 > a3)
      {
        return 1;
      }

      if (dword_100090224 >= a3)
      {
        return dword_100090228 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100090220 < a2;
  if (dword_100090220 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000629B0(uint64_t result)
{
  v1 = qword_100090240;
  if (qword_100090240)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100090240 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100090220, &dword_100090224, &dword_100090228);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}