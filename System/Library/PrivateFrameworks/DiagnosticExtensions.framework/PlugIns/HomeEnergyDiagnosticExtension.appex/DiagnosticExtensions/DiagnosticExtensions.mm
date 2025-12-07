uint64_t sub_100001288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v140 = a1;
  v154 = a3;
  v4 = sub_1000038EC();
  v5 = *(v4 - 8);
  v142 = v4;
  v143 = v5;
  v6 = __chkstk_darwin(v4);
  v137 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v141 = v124 - v8;
  v9 = sub_1000031A4(&qword_10000C2C0, &qword_100003DF0);
  v10 = __chkstk_darwin(v9 - 8);
  v136 = v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v139 = v124 - v13;
  __chkstk_darwin(v12);
  v145 = v124 - v14;
  v15 = sub_10000396C();
  v147 = *(v15 - 8);
  v148 = v15;
  v16 = __chkstk_darwin(v15);
  v138 = v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v144 = v124 - v18;
  v19 = sub_10000388C();
  __chkstk_darwin(v19 - 8);
  v20 = sub_1000038BC();
  __chkstk_darwin(v20 - 8);
  v21 = sub_10000398C();
  v22 = *(v21 - 8);
  v150 = v21;
  v151 = v22;
  __chkstk_darwin(v21);
  v24 = v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000037FC();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = v124 - v30;
  v32 = v26 + 16;
  v146 = *(v26 + 16);
  v146(v124 - v30, a2, v25);
  v152 = sub_100003438(&off_100008350);
  v153 = v33;
  sub_10000397C();
  sub_1000038AC();
  sub_10000387C();
  sub_1000038DC();
  swift_allocObject();
  v34 = sub_1000038CC();
  v35 = v149;
  sub_10000389C();
  if (v35)
  {

    (*(v151 + 8))(v24, v150);
    (*(v26 + 8))(v31, v25);

    return (*(v26 + 56))(v154, 1, 1, v25);
  }

  v149 = v34;
  v134 = v24;
  v135 = 0;
  v133 = v26;
  v146(v29, v31, v25);
  v37 = v145;
  sub_10000395C();
  v38 = v147;
  v39 = v148;
  v132 = *(v147 + 48);
  if (v132(v37, 1, v148) == 1)
  {
    sub_100003514(v37, &qword_10000C2C0, &qword_100003DF0);
    sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100003D90;
    v152 = 0;
    v153 = 0xE000000000000000;
    sub_1000039CC(73);
    v155._countAndFlagsBits = 0xD000000000000047;
    v155._object = 0x8000000100003EC0;
    sub_1000039AC(v155);
    sub_100003574(&qword_10000C2B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v156._countAndFlagsBits = sub_1000039DC();
    sub_1000039AC(v156);

    v41 = v152;
    v42 = v153;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = v41;
    *(v40 + 40) = v42;
    sub_1000039FC();

LABEL_15:
    (*(v151 + 8))(v134, v150);
    v72 = v133;
    (*(v133 + 8))(v31, v25);
    return (*(v72 + 56))(v154, 1, 1, v25);
  }

  v43 = v32;
  v129 = v29;
  v130 = v31;
  v131 = v25;
  v44 = *(v38 + 32);
  v45 = v144;
  v44(v144, v37, v39);
  sub_10000386C();
  v46 = sub_10000384C();
  if (!v46)
  {
    sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_100003D90;
    v152 = 0;
    v153 = 0xE000000000000000;
    sub_1000039CC(61);
    v159._countAndFlagsBits = 0xD00000000000003BLL;
    v159._object = 0x8000000100003F10;
    sub_1000039AC(v159);
    sub_100003574(&qword_10000C2B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v31 = v130;
    v25 = v131;
    v160._countAndFlagsBits = sub_1000039DC();
    sub_1000039AC(v160);

    v70 = v152;
    v71 = v153;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 32) = v70;
    *(v69 + 40) = v71;
    sub_1000039FC();

    (*(v38 + 8))(v45, v148);
    goto LABEL_15;
  }

  v47 = v46;
  v125 = v44;
  v126 = v38 + 32;
  v128 = v43;
  v152 = &_swiftEmptyArrayStorage;
  v48 = sub_100003574(&qword_10000C2C8, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
  v49 = sub_1000031A4(&qword_10000C2D0, &qword_100003DF8);
  v50 = sub_100003604(&qword_10000C2D8, &qword_10000C2D0, &qword_100003DF8, &protocol conformance descriptor for [A]);
  v51 = v141;
  v52 = v142;
  v145 = v48;
  sub_1000039BC();
  v53 = v51;
  v54 = sub_10000383C();
  v55 = v143 + 8;
  v56 = *(v143 + 8);
  v56(v53, v52);
  if (v54)
  {
    v127 = v47;
    sub_10000394C();
    v152 = &_swiftEmptyArrayStorage;
    v124[1] = v49;
    v124[0] = v50;
    v143 = v55;
    sub_1000039BC();
    v57 = sub_10000391C();
    v56(v53, v52);
    v141 = v57;
    if (v57)
    {
      v58 = v131;
      v146(v129, v140, v131);
      v59 = v139;
      sub_10000395C();
      v60 = v148;
      if (v132(v59, 1, v148) == 1)
      {
        v61 = v59;
        v62 = v147;
        sub_100003514(v61, &qword_10000C2C0, &qword_100003DF0);
        sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_100003D90;
        v152 = 0;
        v153 = 0xE000000000000000;
        sub_1000039CC(82);
        v157._countAndFlagsBits = 0xD000000000000050;
        v157._object = 0x8000000100003FE0;
        sub_1000039AC(v157);
        sub_100003574(&qword_10000C2B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v158._countAndFlagsBits = sub_1000039DC();
        sub_1000039AC(v158);

        v64 = v152;
        v65 = v153;
        *(v63 + 56) = &type metadata for String;
        *(v63 + 32) = v64;
        *(v63 + 40) = v65;
        sub_1000039FC();

        v66 = v133;
        (*(v133 + 56))(v154, 1, 1, v58);
        v67 = v135;
        sub_10000393C();
        v68 = v67;
        if (v67)
        {

          v68 = 0;
        }

        sub_10000385C();
        if (v68)
        {
        }

        sub_10000385C();
        v109 = v150;
        v108 = v151;
        v110 = v148;

        (*(v62 + 8))(v144, v110);
LABEL_27:
        (*(v108 + 8))(v134, v109);
        return (*(v66 + 8))(v130, v58);
      }

      v140 = v54;
      v90 = v138;
      v125(v138, v59, v60);
      sub_1000038FC();
      swift_allocObject();
      v91 = sub_10000390C();
      v92 = v135;
      v93 = v154;
      if (v91)
      {
        v139 = v56;
        v94 = v147;
        v95 = v136;
        (*(v147 + 56))(v136, 1, 1, v148);
        v152 = &_swiftEmptyArrayStorage;
        v96 = v137;
        v97 = v142;
        sub_1000039BC();
        sub_10000392C();
        v135 = v92;
        if (v92)
        {
          (v139)(v96, v97);
          sub_100003514(v95, &qword_10000C2C0, &qword_100003DF0);
          sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
          v98 = swift_allocObject();
          *(v98 + 16) = xmmword_100003D90;
          *(v98 + 56) = &type metadata for String;
          *(v98 + 32) = 0xD000000000000048;
          *(v98 + 40) = 0x80000001000040B0;
          sub_1000039FC();

          swift_willThrow();

          v99 = *(v94 + 8);
          v99(v90, v148);
          sub_10000393C();
          v100 = v133;
          v101 = v131;

          sub_10000385C();

          sub_10000385C();

          v99(v144, v148);
          (*(v151 + 8))(v134, v150);
          return (*(v100 + 8))(v130, v101);
        }

        (v139)(v96, v97);
        sub_100003514(v95, &qword_10000C2C0, &qword_100003DF0);
        v116 = *(v94 + 8);
        v116(v90, v148);
        v117 = v154;
        v58 = v131;
        v146(v154, v130, v131);
        v66 = v133;
        (*(v133 + 56))(v117, 0, 1, v58);
        v118 = v135;
        sub_10000393C();
        v119 = v118;
        if (v118)
        {

          v119 = 0;
        }

        sub_10000385C();
        if (v119)
        {
        }

        sub_10000385C();
        v109 = v150;
        v108 = v151;
        v123 = v148;

        v116(v144, v123);
        goto LABEL_27;
      }

      sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_100003D90;
      *(v111 + 56) = &type metadata for String;
      *(v111 + 32) = 0xD000000000000032;
      *(v111 + 40) = 0x8000000100004070;
      sub_1000039FC();

      v112 = *(v147 + 8);
      v147 += 8;
      v112(v90, v148);
      v113 = v133;
      v114 = v131;
      (*(v133 + 56))(v93, 1, 1, v131);
      sub_10000393C();
      v115 = v92;
      if (v92)
      {

        v115 = 0;
      }

      sub_10000385C();
      if (v115)
      {
      }

      sub_10000385C();
      v121 = v150;
      v120 = v151;
      v122 = v148;

      v112(v144, v122);
      (*(v120 + 8))(v134, v121);
      return (*(v113 + 8))(v130, v114);
    }

    else
    {
      v81 = v147;
      sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_100003D90;
      v152 = 0;
      v153 = 0xE000000000000000;
      sub_1000039CC(63);
      v163._countAndFlagsBits = 0xD00000000000003DLL;
      v163._object = 0x8000000100003FA0;
      sub_1000039AC(v163);
      sub_100003574(&qword_10000C2B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v83 = v130;
      v84 = v131;
      v164._countAndFlagsBits = sub_1000039DC();
      sub_1000039AC(v164);

      v85 = v152;
      v86 = v153;
      *(v82 + 56) = &type metadata for String;
      *(v82 + 32) = v85;
      *(v82 + 40) = v86;
      sub_1000039FC();

      v87 = v133;
      (*(v133 + 56))(v154, 1, 1, v84);
      v88 = v135;
      sub_10000385C();
      v89 = v88;
      if (v88)
      {

        v89 = 0;
      }

      sub_10000385C();
      if (v89)
      {
      }

      v106 = v150;
      v105 = v151;
      v107 = v148;

      (*(v81 + 8))(v144, v107);
      (*(v105 + 8))(v134, v106);
      return (*(v87 + 8))(v83, v84);
    }
  }

  else
  {
    v73 = v147;
    sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_100003D90;
    v152 = 0;
    v153 = 0xE000000000000000;
    sub_1000039CC(66);
    v161._countAndFlagsBits = 0xD000000000000040;
    v161._object = 0x8000000100003F50;
    sub_1000039AC(v161);
    sub_100003574(&qword_10000C2B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v75 = v130;
    v76 = v131;
    v162._countAndFlagsBits = sub_1000039DC();
    sub_1000039AC(v162);

    v77 = v152;
    v78 = v153;
    *(v74 + 56) = &type metadata for String;
    *(v74 + 32) = v77;
    *(v74 + 40) = v78;
    sub_1000039FC();

    v79 = v133;
    (*(v133 + 56))(v154, 1, 1, v76);
    v80 = v135;
    sub_10000385C();
    if (v80)
    {
    }

    v102 = v150;
    v103 = v148;
    v104 = v144;

    (*(v73 + 8))(v104, v103);
    (*(v151 + 8))(v134, v102);
    return (*(v79 + 8))(v75, v76);
  }
}

void sub_10000287C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1000031A4(&qword_10000C2A0, &qword_100003DE0);
  __chkstk_darwin(v3 - 8);
  v46 = &v44 - v4;
  v5 = sub_1000037FC();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v47 = &v44 - v12;
  v13 = sub_10000382C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MobileGestalt_get_current_device();
  if (!v17)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v17;
  v19 = MobileGestalt_copy_modelNumber_obj();

  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = sub_10000399C();
  v22 = v21;

  v23 = MobileGestalt_get_current_device();
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v23;
  v45 = a1;
  v25 = MobileGestalt_copy_buildVersion_obj();

  if (!v25)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v26 = sub_10000399C();
  v28 = v27;

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1000039CC(25);

  v51 = 0x694B796772656E45;
  v52 = 0xEA00000000005F74;
  v53._countAndFlagsBits = v20;
  v53._object = v22;
  sub_1000039AC(v53);

  v54._countAndFlagsBits = 95;
  v54._object = 0xE100000000000000;
  sub_1000039AC(v54);
  v55._countAndFlagsBits = v26;
  v55._object = v28;
  sub_1000039AC(v55);

  v56._countAndFlagsBits = 95;
  v56._object = 0xE100000000000000;
  sub_1000039AC(v56);
  sub_10000381C();
  sub_100003574(&qword_10000C2A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v57._countAndFlagsBits = sub_1000039DC();
  sub_1000039AC(v57);

  (*(v14 + 8))(v16, v13);
  v58._countAndFlagsBits = 0x7365726F74535FLL;
  v58._object = 0xE700000000000000;
  sub_1000039AC(v58);
  v29 = [objc_opt_self() defaultManager];
  v30 = [v29 temporaryDirectory];

  sub_1000037EC();
  v31 = v47;
  sub_1000037CC();

  v32 = v48;
  v33 = *(v48 + 8);
  v34 = v11;
  v35 = v49;
  v33(v34, v49);
  sub_1000037DC();
  v36 = v46;
  sub_100001288(v45, v8, v46);
  v33(v8, v35);
  if ((*(v32 + 48))(v36, 1, v35) == 1)
  {
    sub_100003514(v36, &qword_10000C2A0, &qword_100003DE0);
    sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100003D90;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 32) = 0xD000000000000012;
    *(v37 + 40) = 0x8000000100003E80;
    sub_1000039FC();

    v33(v31, v35);
    v38 = 1;
    v39 = v50;
  }

  else
  {
    v40 = v50;
    (*(v32 + 32))(v50, v36, v35);
    sub_1000031A4(&qword_10000C2B0, &qword_100003DE8);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100003D90;
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_1000039CC(32);

    v51 = 0xD00000000000001ELL;
    v52 = 0x8000000100003EA0;
    sub_100003574(&qword_10000C2B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v59._countAndFlagsBits = sub_1000039DC();
    sub_1000039AC(v59);

    v42 = v51;
    v43 = v52;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    sub_1000039FC();

    v33(v31, v35);
    v39 = v40;
    v38 = 0;
  }

  (*(v32 + 56))(v39, v38, 1, v35);
}

id sub_10000314C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CoreDataStoreArchive();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000031A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_BYTE *sub_1000031EC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_100003280(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100003338(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000033B4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_100003280(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_100003338(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1000037AC();
  swift_allocObject();
  result = sub_10000379C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10000380C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000033B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1000037AC();
  swift_allocObject();
  result = sub_10000379C();
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

uint64_t sub_100003438(uint64_t a1)
{
  v9 = sub_1000031A4(&qword_10000C2E0, &unk_100003E00);
  v10 = sub_100003604(&qword_10000C2E8, &qword_10000C2E0, &unk_100003E00, &protocol conformance descriptor for <A> [A]);
  v8[0] = a1;
  v2 = sub_10000364C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1000031EC(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100003690(v8);
  return v5;
}

uint64_t sub_100003514(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000031A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000035BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003604(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000035BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10000364C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003690(void *a1)
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

void sub_100003720(os_log_t log)
{
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to find directory: %@.", &v1, 0xCu);
}