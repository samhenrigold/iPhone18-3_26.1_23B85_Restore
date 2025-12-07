uint64_t sub_10004F340()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10004F434(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for EventManager.Observer(0) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_10004F538(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100023520();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10004F598(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10004F620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventManager.Observer(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AEBE0, &qword_100203700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F6F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventManager.Observer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_1001F6508();
    v11 = a1 + *(a3 + 24);

    return sub_10001C990(v11, a2, v10);
  }
}

void *sub_10004F80C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = sub_1001F6508();
    v8 = v5 + *(a4 + 24);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

void sub_10004F894(uint64_t a1)
{
  sub_10004F918();
  if (v1 <= 0x3F)
  {
    sub_1001F6508();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004F918()
{
  if (!qword_1002AEC50)
  {
    v0 = sub_1001F74B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002AEC50);
    }
  }
}

unint64_t sub_10004F97C()
{
  result = qword_1002AEC88;
  if (!qword_1002AEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEC88);
  }

  return result;
}

unint64_t sub_10004F9D4()
{
  result = qword_1002AEC90;
  if (!qword_1002AEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEC90);
  }

  return result;
}

unint64_t sub_10004FA2C()
{
  result = qword_1002AEC98;
  if (!qword_1002AEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEC98);
  }

  return result;
}

unint64_t sub_10004FA80()
{
  result = qword_1002AECA8;
  if (!qword_1002AECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECA8);
  }

  return result;
}

unint64_t sub_10004FAD4()
{
  result = qword_1002AECB0;
  if (!qword_1002AECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECB0);
  }

  return result;
}

unint64_t sub_10004FB28()
{
  result = qword_1002AECC0;
  if (!qword_1002AECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECC0);
  }

  return result;
}

_BYTE *sub_10004FB84(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x10004FC50);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10004FC8C()
{
  result = qword_1002AECC8;
  if (!qword_1002AECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECC8);
  }

  return result;
}

unint64_t sub_10004FCE4()
{
  result = qword_1002AECD0;
  if (!qword_1002AECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECD0);
  }

  return result;
}

unint64_t sub_10004FD3C()
{
  result = qword_1002AECD8;
  if (!qword_1002AECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AECD8);
  }

  return result;
}

uint64_t sub_10004FE24(uint64_t a1)
{

  return sub_1001F7EA8();
}

uint64_t sub_10004FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1001F7D58();
}

uint64_t sub_10004FE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F7D18();
}

uint64_t sub_10004FE98(uint64_t a1)
{

  return sub_1001F7C08();
}

uint64_t sub_10004FEB4(uint64_t a1)
{

  return sub_1001F7C48();
}

uint64_t sub_10004FEF8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16) && (v3 = sub_100112888(), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004FF64(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_100050548(v3 + 16, v19);
    sub_100112888();
    if (v4)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v3 + 16);
      *(v3 + 16) = 0x8000000000000000;
      v6 = *(v16 + 24);
      sub_1000183C4(&qword_1002BCD00, &qword_100202908);
      sub_1001F7A98(isUniquelyReferenced_nonNull_native, v6);
      type metadata accessor for ASDOctaneValueIdentifier(0);
      sub_1000504E4();
      sub_1001F7AB8();
      *(v3 + 16) = v16;
    }
  }

  else
  {
    sub_100050548(v3 + 16, v19);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v3 + 16);
    v7 = sub_10005053C();
    sub_1001E5FB4(v7, v8, v9, v10, v11, v12, v13, v14, v17, v19[0]);
    *(v3 + 16) = v18;
  }

  return swift_endAccess();
}

uint64_t sub_100050084(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_100112888();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_100050100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - v8;
  if (a2)
  {
    switch(a3)
    {
      case 31:

        sub_10005053C();
        sub_1001F6258();
        v34 = sub_1001F6288();
        if (sub_10001C990(v9, 1, v34) == 1)
        {

          sub_10004BDE8(v9, &qword_1002ACE98, &qword_1001FF1A0);
          sub_100050490();
          result = swift_allocError();
          *v36 = 1;
          return result;
        }

        sub_10004BDE8(v9, &qword_1002ACE98, &qword_1001FF1A0);
        sub_100050548(v4 + 24, &v46);
        swift_isUniquelyReferenced_nonNull_native();
        *&v45 = *(v4 + 24);
        v38 = sub_10005053C();
        sub_1001E607C(v38, v39, 31, v40, v41, v42, v43, v44, v45, *(&v45 + 1));
        *(v4 + 24) = v45;
        swift_endAccess();
        return 0;
      case 6:

        v24 = sub_10005053C();
        sub_10014B7DC(v24, v25, v26);

        if (v47)
        {
          sub_100050548(v4 + 24, &v45);

          swift_isUniquelyReferenced_nonNull_native();
          v50 = *(v4 + 24);
          v27 = sub_10005053C();
          sub_1001E607C(v27, v28, 6, v29, v30, v31, v32, v33, v45, *(&v45 + 1));
          *(v4 + 24) = v50;
          swift_endAccess();
          v21 = &qword_1002AEDE0;
          v22 = &unk_100207230;
          v23 = &v46;
          goto LABEL_10;
        }

LABEL_13:
        sub_100050490();
        result = swift_allocError();
        *v37 = 1;
        return result;
      case 4:

        v10 = sub_10005053C();
        sub_1000E0BC4(v10, v11, v12);

        if (v47)
        {
          v13 = v49;
          sub_100050548(v4 + 24, &v45);

          swift_isUniquelyReferenced_nonNull_native();
          v50 = *(v4 + 24);
          v14 = sub_10005053C();
          sub_1001E607C(v14, v15, 4, v16, v17, v18, v19, v20, v45, *(&v45 + 1));
          *(v4 + 24) = v50;
          swift_endAccess();

          v45 = v48;
          sub_10001C838(&v45);
          v50 = v13;
          v21 = &qword_1002ACA10;
          v22 = qword_1001FEBF0;
          v23 = &v50;
LABEL_10:
          sub_10004BDE8(v23, v21, v22);
          return 0;
        }

        goto LABEL_13;
    }
  }

  else
  {
    sub_100050548(v4 + 24, &v46);
    sub_1001EB174();
    swift_endAccess();
  }

  return 0;
}

uint64_t sub_100050410()
{

  return v0;
}

uint64_t sub_100050438()
{
  sub_100050410();

  return swift_deallocClassInstance();
}

unint64_t sub_100050490()
{
  result = qword_1002AEDD8;
  if (!qword_1002AEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEDD8);
  }

  return result;
}

unint64_t sub_1000504E4()
{
  result = qword_1002AEDE8;
  if (!qword_1002AEDE8)
  {
    type metadata accessor for ASDOctaneValueIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEDE8);
  }

  return result;
}

uint64_t sub_100050548(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void *sub_100050560()
{
  v1 = *(v0 + 128);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000ADA68(0x6E692D6563697270, 0xEE00657361657263, 1819112552, 0xE400000000000000);
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;
    *(v0 + 136) = v4;

    sub_10001F734(v3);
  }

  sub_10001F78C(v1);
  return v2;
}

uint64_t sub_10005060C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1001EA8E8();
  v4 = sub_1001F10F8(1682534515, 0xE400000000000000, v3);
  if (v5 && (v6 = v4, v7 = v5, v8 = sub_1001F10F8(6580578, 0xE300000000000000, v3), v10 = v9, , v10))
  {
    sub_1000508FC(v6, v7, v8, v10, __src);

    v17 = sub_100050560();
    v13 = v17;
    if (v17)
    {
      v19 = v18;
      *(&v29 + 1) = &type metadata for PriceIncreaseUIRoute.ViewProperties;
      *&v28 = swift_allocObject();
      memcpy((v28 + 16), __src, 0x61uLL);
      v20 = sub_1000ADFF4(&v28, v13, v19);
      v22 = v21;

      sub_100019CCC(&v28);
      sub_1000B738C(v20, v22, 1, &v28);
      v25 = v29;
      v26 = v28;
      v13 = v30 | ((v31 | (v32 << 16)) << 32);
      v23 = type metadata accessor for HTTPResponseHead._Storage();
      result = sub_100021728(v23);
      v16 = v25;
      v14 = v26;
      v15 = 3;
      goto LABEL_6;
    }

    sub_10005125C(__src);
    v24 = type metadata accessor for HTTPResponseHead._Storage();
    result = sub_100021728(v24);
    v14 = 0uLL;
    v15 = 49;
  }

  else
  {

    v11 = type metadata accessor for HTTPResponseHead._Storage();
    result = sub_100021728(v11);
    v13 = 0;
    v14 = 0uLL;
    v15 = 21;
  }

  v16 = 0uLL;
LABEL_6:
  *(result + 32) = v15;
  *(result + 40) = 65537;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a2 = result;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  *(a2 + 24) = v14;
  *(a2 + 40) = v16;
  *(a2 + 56) = v13;
  *(a2 + 62) = BYTE6(v13);
  *(a2 + 60) = WORD2(v13);
  return result;
}

uint64_t sub_1000508FC@<X0>(void *a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v112 = a2;
  v98 = a1;
  v94 = a5;
  v93 = sub_1001F60C8();
  sub_10001A278();
  v92 = v8;
  __chkstk_darwin(v9);
  v91 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F6508();
  sub_10001A278();
  v13 = v12;
  __chkstk_darwin(v14);
  v96 = (v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v97 = v86 - v17;
  __chkstk_darwin(v18);
  v20 = v86 - v19;
  v21 = *(v5 + 112);
  v95 = v5;
  sub_10001AE68((v5 + 88), v21);
  sub_1001B5F98(v21);
  v22 = a3;
  v23 = sub_10008B260(v98);
  v24 = *(v13 + 8);
  v25 = v20;
  v26 = v11;
  v24(v25, v11);
  if (!v23)
  {
    goto LABEL_4;
  }

  sub_1000C5464(4);
  if (v27)
  {

LABEL_4:
    sub_100021578();
    v28 = swift_allocError();
    return sub_1000513A0(v28, v29);
  }

  v112 = v24;
  v31 = v96;
  sub_1001F6418();
  v32 = v97;
  (*(v13 + 32))(v97, v31, v26);
  v33 = sub_1000C152C();
  if (((1 << v33) & 0x36) != 0)
  {
    sub_100021578();
    swift_allocError();
    *v34 = 0;
    v34[1] = 0;
    v34[2] = 33;
    swift_willThrow();

    return v112(v32, v26);
  }

  v35 = v33 == 0;
  sub_100026064(v95 + 48, &v99);
  v96 = sub_10001AE68(&v99, v101);
  v36 = sub_1000C1570(v96);
  v98 = v23;
  if (v37)
  {
    v38 = v37;
    v39 = v36;
  }

  else
  {
    v39 = sub_1000BFC14();
    v38 = v40;
  }

  v96 = v22;
  sub_1000795A8(v22, a4);
  v41 = sub_1000EE5B8(v39, v38);

  if (!v41)
  {
    sub_100019CCC(&v99);
    sub_100021578();
    v46 = swift_allocError();
    sub_1000513A0(v46, v47);

    return v112(v32, v26);
  }

  v87 = v35;
  sub_100019CCC(&v99);
  v42 = v95;
  sub_10001AE68((v95 + 48), *(v95 + 72));
  sub_1000513C4();
  sub_10007992C();
  sub_10001AE68((v42 + 48), *(v42 + 72));
  sub_1000513C4();
  sub_10007A340();
  v43 = *(v41 + 56);

  v44 = sub_1000E087C(v43);

  v86[1] = v44;
  if (v44)
  {
    v45 = *(v44 + 40);
    v90 = *(v44 + 32);
    v89 = v45;
  }

  else
  {
    v90 = sub_1001E8450();
    v89 = v48;
  }

  v88 = v26;
  v49 = *(v41 + 176);
  v50 = *(v41 + 184);
  v51 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v51 setUnitsStyle:3];
  [v51 setAllowedUnits:4124];
  v52 = v91;
  sub_1001EC818(v49, v50);
  isa = sub_1001F6098().super.isa;
  (*(v92 + 8))(v52, v93);
  v54 = [v51 stringFromDateComponents:isa];

  if (v54)
  {
    v55 = sub_1001F6B58();
    v57 = v56;
  }

  else
  {

    v55 = 0;
    v57 = 0xE000000000000000;
  }

  v58 = *(v41 + 16);
  v59 = *(v41 + 24);

  v86[0] = sub_10004B628(v58, v59, v105, &v102);
  v61 = v60;

  type metadata accessor for AppIconRoute();
  v62 = sub_1000513C4();
  v92 = sub_10005DC24(v62, v63);
  v91 = v64;
  sub_10001AE68((v95 + 48), *(v95 + 72));
  v65 = sub_1000513C4();
  v96 = sub_10007935C(v65, v66);
  v95 = v67;
  v99 = v90;
  v100 = v89;
  v113._countAndFlagsBits = 10272;
  v113._object = 0xE200000000000000;
  sub_1001F6CA8(v113);
  v114._countAndFlagsBits = v55;
  v114._object = v57;
  sub_1001F6CA8(v114);

  v115._countAndFlagsBits = 41;
  v115._object = 0xE100000000000000;
  sub_1001F6CA8(v115);
  v90 = v99;
  v89 = v100;
  sub_1000BFD40();
  v93 = v61;
  if ((v70 & 0x100000000) != 0)
  {
    sub_10001C7E4(v105);
    v111 = v102;
    sub_10001C838(&v111);
    v110 = v103;
    sub_10001C838(&v110);
    v109 = v104;
    sub_10001C88C(&v109);

    v73 = v86[0];
    v71 = v86[0];
  }

  else
  {
    v71 = sub_10004B450(v68, v69, v70, v105, &v102);
    v61 = v72;
    sub_10001C7E4(v105);
    v108 = v102;
    sub_10001C838(&v108);
    v107 = v103;
    sub_10001C838(&v107);
    v106 = v104;
    sub_10001C88C(&v106);
    v73 = v86[0];
  }

  if (qword_1002AC410 != -1)
  {
    swift_once();
  }

  v74 = qword_1002AE9E8;
  v75 = v97;
  v76 = sub_1001F6478().super.isa;
  v77 = [v74 stringFromDate:v76];

  v78 = sub_1001F6B58();
  v80 = v79;

  result = v112(v75, v88);
  v81 = v94;
  v82 = v91;
  *v94 = v92;
  v81[1] = v82;
  v83 = v95;
  v81[2] = v96;
  v81[3] = v83;
  v84 = v89;
  v81[4] = v90;
  v81[5] = v84;
  v85 = v93;
  v81[6] = v73;
  v81[7] = v85;
  v81[8] = v71;
  v81[9] = v61;
  v81[10] = v78;
  v81[11] = v80;
  *(v81 + 96) = v87;
  return result;
}

unint64_t sub_100051198(Swift::String a1, uint64_t a3, void *a4)
{
  sub_1001F6CA8(a1);
  v6._countAndFlagsBits = 38;
  v6._object = 0xE100000000000000;
  sub_1001F6CA8(v6);
  v7._countAndFlagsBits = 6580578;
  v7._object = 0xE300000000000000;
  sub_1001F6CA8(v7);
  v8._countAndFlagsBits = 61;
  v8._object = 0xE100000000000000;
  sub_1001F6CA8(v8);
  v9._countAndFlagsBits = a3;
  v9._object = a4;
  sub_1001F6CA8(v9);
  return 0xD000000000000014;
}

uint64_t sub_10005128C()
{

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_1000512F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_100051334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000513A0(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 25;

  return swift_willThrow();
}

uint64_t NIOHTTPServerRequestFull.init(head:body:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 46) = BYTE6(a6);
  *(a7 + 44) = WORD2(a6);
  return result;
}

uint64_t _s25ASOctaneSupportXPCService24NIOHTTPServerRequestFullV4headAA15HTTPRequestHeadVvg_0()
{
  v1 = *v0;

  return v1;
}

uint64_t _s25ASOctaneSupportXPCService24NIOHTTPServerRequestFullV4headAA15HTTPRequestHeadVvs_0(uint64_t a1, uint64_t a2, char a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t _s25ASOctaneSupportXPCService24NIOHTTPServerRequestFullV4bodyAA10ByteBufferVSgvs_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 46) = BYTE6(a3);
  *(v3 + 44) = WORD2(a3);
  *(v3 + 40) = a3;
  return result;
}

uint64_t sub_100051578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void, void, void))
{
  if (a3(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)))
  {
    v5 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (v5)
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
        v8 = *(a2 + 32);
        v9 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);

        LOBYTE(v9) = static ByteBuffer.== infix(_:_:)(v10, v6, v7 & 0xFFFFFFFFFFFFFFLL, v5, v8, v9 & 0xFFFFFFFFFFFFFFLL);

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Int sub_100051744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

void sub_100051790()
{
  if (*v0 - 1 >= 2)
  {
    if (!*v0)
    {
      *v0 = 2;
      return;
    }

    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  sub_100052C20();
  sub_10002E0D8();
  swift_allocError();
  *v2 = v1;
  swift_willThrow();
}

void sub_100051808()
{
  v1 = 0;
  switch(*v0)
  {
    case 1:
      goto LABEL_4;
    case 2:
      return;
    case 3:
      v1 = 1;
      goto LABEL_4;
    default:
      v1 = 4;
LABEL_4:
      sub_100052C20();
      sub_10002E0D8();
      swift_allocError();
      *v2 = v1;
      swift_willThrow();
      return;
  }
}

void sub_100051898()
{
  v1 = 5;
  switch(*v0)
  {
    case 1:
      *v0 = 0;
      v1 = 2;
      goto LABEL_5;
    case 2:
      *v0 = 0;
      return;
    case 3:
      v1 = 1;
      goto LABEL_5;
    default:
LABEL_5:
      sub_100052C20();
      sub_10002E0D8();
      swift_allocError();
      *v2 = v1;
      swift_willThrow();
      return;
  }
}

Swift::Int sub_10005194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

uint64_t NIOHTTPServerRequestAggregator.__allocating_init(maxContentLength:closeOnExpectationFailed:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  NIOHTTPServerRequestAggregator.init(maxContentLength:closeOnExpectationFailed:)(a1, v2);
  return v4;
}

uint64_t NIOHTTPServerRequestAggregator.init(maxContentLength:closeOnExpectationFailed:)(uint64_t result, char a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 55) = 0;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 64) = result;
    *(v2 + 72) = a2 & 1;
    *(v2 + 73) = 0;
    return v2;
  }

  return result;
}

uint64_t NIOHTTPServerRequestAggregator.channelRead(context:data:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000183C4(&qword_1002ADD40, &qword_1002158B0);
  v5 = sub_1000375EC(v4);
  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = HIBYTE(v7);
  if (HIBYTE(v7))
  {
    if (v11 != 1)
    {
      sub_100051898();
      sub_1000527FC(a1, v8, v9, sub_100053260, &type metadata for NIOHTTPServerRequestFull, &unk_100281C40);
      v26 = sub_10005329C();
      v29 = 2;
      return sub_100037548(v26, v27, v28, v29);
    }

    v34 = v5;
    *&v35 = v6;
    DWORD2(v35) = v7;
    WORD6(v35) = WORD2(v7);
    BYTE14(v35) = BYTE6(v7);
    sub_100051808();

    v12 = sub_100051F38(a1, &v34, v8, v9, v10 & 0xFFFFFFFFFFFFFFLL | 0x100000000000000);
    v14 = v13;
    v16 = v15;
    v17 = sub_10005329C();
    sub_100037548(v17, v18, v19, 1);
    if (!v12)
    {
LABEL_12:
      v26 = sub_10005329C();
      v29 = v11;
      return sub_100037548(v26, v27, v28, v29);
    }
  }

  else
  {
    sub_100051790();

    v12 = sub_100051E90(a1, v8, v9, v10, v8, v9, v10 & 0xFFFFFFFFFFFFFFLL);
    v14 = v20;
    v16 = v21;

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  v22 = sub_1000183C4(&qword_1002ADA10, &unk_10020E830);
  v36 = v22;
  v34 = v12;
  *&v35 = v14;
  *(&v35 + 1) = v16;
  v37 = 2;

  ChannelHandlerContext.write(_:promise:)(&v34, 0);
  sub_100034310(&v34);
  v36 = v22;
  v34 = 0;
  *&v35 = 0;
  *(&v35 + 7) = 0;
  HIBYTE(v35) = 2;
  v37 = 2;
  ChannelHandlerContext.writeAndFlush(_:promise:)(&v34, 0);
  sub_100034310(&v34);
  v23 = *(v12 + 32);
  if (v23 < 0x3C && HTTPResponseStatus.code.getter(*(v12 + 16), *(v12 + 24), v23) == 413)
  {
    switch(*(v2 + 73))
    {
      case 1:
      case 3:
        __break(1u);
        JUMPOUT(0x100051E80);
      default:
        *(v2 + 73) = 1;
        sub_100052C20();
        sub_10002E0D8();
        swift_allocError();
        *v24 = 0;
        ChannelHandlerContext.fireErrorCaught(_:)();

        v36 = &type metadata for NIOHTTPObjectAggregatorEvent;
        LOBYTE(v34) = 1;
        ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
        sub_100019CCC(&v34);
        break;
    }
  }

  sub_1001B8BE0(*(v12 + 40), v14, v16);
  if (v25)
  {

    goto LABEL_12;
  }

  ChannelHandlerContext.close(mode:promise:)();

  v31 = sub_10005329C();
  result = sub_100037548(v31, v32, v33, v11);
  *(v2 + 73) = 3;
  return result;
}

unint64_t sub_100051E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = *(v7 + 16);
  v13 = *(v7 + 24);
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  sub_1000370B8(v12, v13);

  v14 = sub_1001BF444();
  if ((v15 & 1) != 0 || *(v7 + 64) >= v14)
  {
    return 0;
  }

  else
  {
    return sub_100052024(a5, a6, a7);
  }
}

unint64_t sub_100051F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  v8 = v7 - v6;
  if (v7 < v6)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = *(v5 + 64);
  result = swift_beginAccess();
  if (!*(v5 + 40))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v15 = *(v5 + 48);
  v16 = *(v5 + 52);
  v17 = v16 >= v15;
  v18 = v16 - v15;
  if (!v17)
  {
    goto LABEL_11;
  }

  v19 = __OFSUB__(v13, v18);
  v20 = v13 - v18;
  if (v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v20 < v8)
  {
    return sub_100052024(a3, a4, a5);
  }

  swift_beginAccess();
  ByteBuffer.writeBuffer(_:)(a2);
  swift_endAccess();
  return 0;
}

unint64_t sub_100052024(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = *(v7 + 48);
    v9 = *(v7 + 50);
  }

  else
  {
    v8 = 1;
    v9 = 1;
  }

  sub_1000183C4(&qword_1002AC840, &qword_1001FE6A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001FE9E0;
  strcpy((v10 + 32), "content-length");
  *(v10 + 47) = -18;
  *(v10 + 48) = 48;
  *(v10 + 56) = 0xE100000000000000;
  type metadata accessor for HTTPResponseHead._Storage();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 34;
  *(v11 + 40) = v8;
  *(v11 + 42) = v9;
  if (!HIBYTE(a3))
  {
    sub_1001B8BE0(*(a1 + 48), a2, a3);
    if (v12)
    {
      return v11;
    }

    if ((sub_10002E9FC(0x697463656E6E6F63uLL, 0xEA00000000006E6FLL) & 1) == 0)
    {
LABEL_9:
      v14 = sub_1000375BC(1, 2, 1, v10);
      v14[2] = 2;
      v14[8] = 0x697463656E6E6F63;
      v14[9] = 0xEA00000000006E6FLL;
      v14[10] = 0x65736F6C63;
      v14[11] = 0xE500000000000000;
      sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x697463656E6E6F63, 0xEA00000000006E6FLL);
      return v11;
    }

    __break(1u);
  }

  result = sub_10002E9FC(0x697463656E6E6F63uLL, 0xEA00000000006E6FLL);
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t NIOHTTPServerRequestAggregator.__deallocating_deinit()
{
  NIOHTTPServerRequestAggregator.deinit();

  return swift_deallocClassInstance();
}

uint64_t NIOHTTPClientResponseAggregator.__allocating_init(maxContentLength:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NIOHTTPClientResponseAggregator.init(maxContentLength:)(a1);
  return v2;
}

uint64_t NIOHTTPClientResponseAggregator.init(maxContentLength:)(uint64_t result)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 55) = 0;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 64) = result;
    *(v1 + 72) = 0;
    return v1;
  }

  return result;
}

uint64_t NIOHTTPClientResponseAggregator.channelRead(context:data:)(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ADD48, &unk_100200AB0);
  v3 = sub_1000375F4(v2);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  if (HIBYTE(v5))
  {
    if (HIBYTE(v5) == 1)
    {
      v17[0] = v3;
      v17[1] = v4;
      v18 = v5;
      v19 = WORD2(v5);
      v20 = BYTE6(v5);
      sub_100051808();
      sub_1000526A0(a1, v17);
      v9 = sub_1000532AC();
      v12 = 1;
    }

    else
    {
      sub_100051898();
      sub_1000527FC(a1, v6, v7, sub_100034364, &type metadata for NIOHTTPClientResponseFull, &unk_100281C18);
      v9 = sub_1000532AC();
      v12 = 2;
    }

    return sub_100037548(v9, v10, v11, v12);
  }

  else
  {
    sub_100051790();

    sub_100052584(a1, v6, v7, v8);
    v14 = sub_1000532AC();
    sub_100037548(v14, v15, v16, 0);
  }
}

uint64_t sub_100052584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  sub_1000370B8(v6, v7);

  result = sub_1001BF444();
  if ((v9 & 1) == 0 && *(v4 + 64) < result)
  {
    switch(*(v4 + 72))
    {
      case 1:
      case 3:
        __break(1u);
        JUMPOUT(0x100052690);
      default:
        *(v4 + 72) = 1;
        v11[3] = &type metadata for NIOHTTPObjectAggregatorEvent;
        LOBYTE(v11[0]) = 1;
        ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
        sub_100019CCC(v11);
        sub_100052C20();
        swift_allocError();
        *v10 = 0;
        ChannelHandlerContext.fireErrorCaught(_:)();

        break;
    }
  }

  return result;
}

uint64_t sub_1000526A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v5 = v4 - v3;
  if (v4 < v3)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(v2 + 64);
  swift_beginAccess();
  if (!*(v2 + 40))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    JUMPOUT(0x1000527ECLL);
  }

  v8 = *(v2 + 48);
  v9 = *(v2 + 52);
  v10 = v9 >= v8;
  v11 = v9 - v8;
  if (!v10)
  {
    goto LABEL_12;
  }

  v12 = __OFSUB__(v7, v11);
  v13 = v7 - v11;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v13 < v5)
  {
    switch(*(v2 + 72))
    {
      case 1:
      case 3:
        goto LABEL_15;
      default:
        *(v2 + 72) = 1;
        v16[3] = &type metadata for NIOHTTPObjectAggregatorEvent;
        LOBYTE(v16[0]) = 1;
        ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
        sub_100019CCC(v16);
        sub_100052C20();
        swift_allocError();
        *v14 = 0;
        ChannelHandlerContext.fireErrorCaught(_:)();
    }
  }

  swift_beginAccess();
  ByteBuffer.writeBuffer(_:)(a2);
  return swift_endAccess();
}

uint64_t sub_1000527FC(uint64_t result, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = v6 + 16;
  v7 = *(v6 + 16);
  if (!v7)
  {
    return result;
  }

  v10 = v6;
  v13 = *(v6 + 32);
  v14 = *(v10 + 24);
  v32 = v14;

  if (a2)
  {
    v15 = sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0x72656C69617274, 0xE700000000000000);
    v16 = v15;
    __chkstk_darwin(v15);
    result = sub_10003653C(&v32, a4);
    v20 = *(v32 + 16);
    if (v20 < result)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    sub_100036918(result, v20, v17, v18, v19);

    sub_1001BA73C(v21);
    if ((a3 == 2) | v16 & 1)
    {
      v13 = 2;
    }

    v14 = v32;
  }

  result = swift_beginAccess();
  v22 = *(v10 + 40);
  if (!v22)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v23 = *(v10 + 48);
  if (HIDWORD(v23) < v23)
  {
    __break(1u);
    goto LABEL_18;
  }

  v29 = v13;
  if (HIDWORD(v23) == v23)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v24 = *(v10 + 56) | ((*(v10 + 60) | (*(v10 + 62) << 16)) << 32);
  }

  v25 = *(v10 + 16);
  v26 = *(v10 + 24);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;

  sub_1000370B8(v25, v26);
  swift_beginAccess();
  result = *(v10 + 40);
  if (!result)
  {
    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    *(v10 + 40) = sub_10005EFF0(*(*(v10 + 40) + 16));
  }

  sub_1000532BC();
  swift_endAccess();
  v30[3] = a5;
  v27 = swift_allocObject();
  v30[0] = v27;
  *(v27 + 16) = v7;
  *(v27 + 24) = v14;
  *(v27 + 32) = v29;
  *(v27 + 40) = v22;
  *(v27 + 48) = v23;
  *(v27 + 62) = BYTE6(v24);
  *(v27 + 60) = WORD2(v24);
  *(v27 + 56) = v24;
  v31 = 2;

  ChannelHandlerContext.fireChannelRead(_:)();

  sub_100034310(v30);
}

uint64_t _s25ASOctaneSupportXPCService30NIOHTTPServerRequestAggregatorC12handlerAdded7contextyAA21ChannelHandlerContextC_tF_0()
{
  v1 = v0;
  sub_10009B39C();
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(ObjectType, v3);
  swift_unknownObjectRelease();
  if (qword_1002AC430 != -1)
  {
    swift_once();
  }

  v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v6 = qword_1002E6088;
  v7 = dword_1002E6090;
  v8 = word_1002E6094;
  v9 = byte_1002E6096;
  swift_beginAccess();
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 62) = v9;
  *(v1 + 60) = v8;
  *(v1 + 56) = v7;
}

uint64_t *_s25ASOctaneSupportXPCService30NIOHTTPServerRequestAggregatorCfd_0()
{
  sub_1000370B8(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t NIOHTTPClientResponseAggregator.__deallocating_deinit()
{
  NIOHTTPServerRequestAggregator.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_100052C20()
{
  result = qword_1002AEEF0;
  if (!qword_1002AEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEEF0);
  }

  return result;
}

unint64_t sub_100052C78()
{
  result = qword_1002AEEF8;
  if (!qword_1002AEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AEEF8);
  }

  return result;
}

__n128 sub_100052CCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100052CF4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 47))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100052D34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 47) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 47) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_100052DF4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x100052EC0);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100052EF8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x100052FC4);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100053004(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x1000530D0);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10005310C()
{
  result = qword_1002AF118;
  if (!qword_1002AF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF118);
  }

  return result;
}

unint64_t sub_100053164()
{
  result = qword_1002AF120;
  if (!qword_1002AF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF120);
  }

  return result;
}

unint64_t sub_1000531BC()
{
  result = qword_1002AF128;
  if (!qword_1002AF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF128);
  }

  return result;
}

uint64_t sub_100053214()
{

  return _swift_deallocObject(v0, 63, 7);
}

void sub_1000532BC()
{
  *(v0 + 56) = *(*(v0 + 40) + 16);
  *(v0 + 60) = 0;
  *(v0 + 62) = 0;
  *(v0 + 48) = 0;
}

double sub_1000532D8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000183C4(&qword_1002AF130, &qword_100202EB0);
  sub_100056658(v4);
  sub_10001E844();
  __chkstk_darwin(v5);
  v59 = v50 - v6;
  type metadata accessor for StatusResponse.Datum.TransactionContainer(0);
  sub_10001A278();
  v57 = v8;
  v58 = v7;
  __chkstk_darwin(v7);
  sub_100023510();
  v56 = v10 - v9;
  v11 = a1[1];
  v68 = *a1;
  v69 = v11;
  v12 = a1[3];
  v70 = a1[2];
  v71 = v12;
  sub_1001E9238();
  v14 = v13;
  v65 = v15 & 1;
  sub_1001E947C();
  v17 = v16;
  v64 = v18 & 1;
  v72[0] = v70;
  *(v63 + 7) = v70;
  v66 = *(a1 + 72);
  v67 = *(a1 + 88);
  v19 = v67;
  if (v67)
  {

    sub_100054AEC(a1);
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      v51 = v19;
      v52 = v17;
      v53 = v14;
      v54 = a2;
      v62 = _swiftEmptyArrayStorage;
      sub_100033FCC(0, v22, 0);
      v23 = v62;
      v50[1] = v21;
      v24 = (v21 + 48);
      v55 = xmmword_1001FE9E0;
      while (1)
      {
        v25 = *(v24 - 1);
        v60 = *(v24 - 2);
        v26 = *v24;
        if (*v24)
        {

          sub_1000551E0(a1, v61);
          v27 = v26;

          v28 = v27;
          sub_1000551E0(a1, v61);
          v29 = v59;
          sub_100053B2C(v28, a1, v59);
          if (sub_10001C990(v29, 1, v58) != 1)
          {
            v31 = a1;
            v32 = v56;
            sub_10005523C(v29, v56);
            sub_1000183C4(&qword_1002AF138, &qword_100202EB8);
            v33 = (*(v57 + 80) + 32) & ~*(v57 + 80);
            v30 = swift_allocObject();
            *(v30 + 1) = v55;
            v34 = v32;
            a1 = v31;
            sub_10005523C(v34, v30 + v33);

            sub_10005518C(v31);

            goto LABEL_10;
          }

          sub_1000374B8(v29, &qword_1002AF130, &qword_100202EB0);

          sub_10005518C(a1);
        }

        else
        {
        }

        v30 = _swiftEmptyArrayStorage;
LABEL_10:
        v62 = v23;
        v36 = v23[2];
        v35 = v23[3];
        if (v36 >= v35 >> 1)
        {
          v38 = sub_10005669C(v35);
          sub_100033FCC(v38, v36 + 1, 1);
          v23 = v62;
        }

        v24 += 3;
        v23[2] = v36 + 1;
        v37 = &v23[3 * v36];
        v37[4] = v60;
        v37[5] = v25;
        v37[6] = v30;
        if (!--v22)
        {

          sub_10005518C(a1);
          v14 = v53;
          a2 = v54;
          v17 = v52;
          LOBYTE(v19) = v51;
          goto LABEL_19;
        }
      }
    }

    sub_10005518C(a1);
    v23 = _swiftEmptyArrayStorage;
LABEL_19:
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v39 = v67;
    v40 = *(&v66 + 1);
    v41 = v66;
    v42 = *(a1 + 8);
    if (sub_10013B560())
    {
      v60 = v41;
      sub_1001C19A8();
      if ((v42 & 0xC000000000000001) != 0)
      {
        sub_1000552A0(v72, v61);
        sub_1000552FC(&v66, v61);
        v44 = sub_1001F7808();
      }

      else
      {
        v43 = *(v42 + 32);
        sub_1000552A0(v72, v61);
        sub_1000552FC(&v66, v61);
        v44 = v43;
      }

      LOBYTE(v19) = v39;
      v41 = v60;
    }

    else
    {
      sub_1000552A0(v72, v61);
      sub_1000552FC(&v66, v61);
      v44 = 0;
      LOBYTE(v19) = v39;
    }

    v23 = sub_1000545B0(v44, v41, v40, a1);
  }

  v61[0] = v19 & 1;
  v47 = v65;
  v48 = v64;
  *a2 = v14;
  *(a2 + 8) = v47;
  *(a2 + 16) = v17;
  *(a2 + 24) = v48;
  result = v63[0];
  *(a2 + 25) = *v63;
  *(a2 + 40) = *(&v63[1] + 7);
  *(a2 + 48) = 0x65646F6358;
  *(a2 + 56) = 0xE500000000000000;
  *(a2 + 64) = v23;
  *(a2 + 72) = v45;
  *(a2 + 80) = v46;
  *(a2 + 88) = v19 & 1;
  return result;
}

uint64_t sub_100053770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_10004BD98(v7, v7[3]);
  if (a5)
  {
    sub_1000183C4(&qword_1002AF2E0, &qword_100203608);
    sub_1000564E0();
  }

  else
  {
    sub_100056564();
  }

  sub_1001F7F18();
  return sub_100019CCC(v7);
}

uint64_t sub_10005389C(void *a1)
{
  v2 = sub_1001F6508();
  sub_10001A278();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100023510();
  v8 = v7 - v6;
  sub_1001F64E8();
  v9 = sub_1000C15EC(v8);
  v10 = *(v4 + 8);
  v10(v8, v2);
  if (v9)
  {

    return 4;
  }

  if (sub_1000C1760())
  {

    return 3;
  }

  sub_1001F64E8();
  v12 = sub_1000C18DC();
  v10(v8, v2);
  if (v12)
  {

    return 1;
  }

  sub_1000C5464(3);
  if (v13)
  {
  }

  else
  {
    v14 = sub_1000BFBB0();

    if (v14)
    {
      return 5;
    }
  }

  return 2;
}

unint64_t sub_1000539EC(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_100053A28@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000539EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100053A54()
{
  v1 = sub_100056690();
  result = sub_1000539FC(v1);
  *v0 = result;
  return result;
}

uint64_t sub_100053B2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v6 = sub_1000183C4(&qword_1002AF140, &qword_100202EC0);
  sub_100056658(v6);
  sub_10001E844();
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  v10 = sub_1000183C4(&qword_1002AF148, &qword_100202EC8);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v11);
  v71 = &v69 - v12;
  v13 = sub_1000183C4(&qword_1002AF150, &unk_100202ED0);
  sub_100056658(v13);
  sub_10001E844();
  __chkstk_darwin(v14);
  v78 = &v69 - v15;
  v76 = sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v16);
  sub_100056624();
  v17 = type metadata accessor for RenewalInfo(0);
  v18 = sub_100056658(v17);
  __chkstk_darwin(v18);
  sub_100023510();
  v77 = (v20 - v19);
  v21 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  sub_100056658(v21);
  sub_10001E844();
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  v25 = type metadata accessor for CheddarTransaction(0);
  v26 = sub_100056658(v25);
  __chkstk_darwin(v26);
  sub_100023510();
  v29 = (v28 - v27);
  v79 = type metadata accessor for StatusResponse.Datum.TransactionContainer(0);
  sub_100023520();
  __chkstk_darwin(v30);
  sub_100023510();
  v33 = v32 - v31;
  v34 = a1;
  *v33 = sub_10005389C(v34);
  v35 = sub_1000C5458(8);
  v72 = v3;
  v81 = v29;
  if (v36)
  {
    v35 = sub_1000C1A68();
  }

  v82 = v35;
  *(v33 + 8) = sub_1001F7E28();
  *(v33 + 16) = v37;
  v73 = v37;
  v38 = *(a2 + 48);
  v39 = *(a2 + 56);
  v40 = *(a2 + 136);
  v41 = *(a2 + 144);
  swift_bridgeObjectRetain_n();
  v42 = v34;
  v74 = v40;
  v75 = v38;
  sub_100140370(v42, v38, v39, v40, v41, v81);
  sub_1000C1AC4(v24);
  v43 = sub_1001F6508();
  LODWORD(v38) = sub_10001C990(v24, 1, v43);
  sub_1000374B8(v24, &unk_1002B3450, &qword_100202EE0);
  if (v38 == 1)
  {
    v69 = v10;
    v70 = v9;
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v44 = sub_1001F6688();
    sub_100019C94(v44, qword_1002E6180);
    v45 = v42;
    v46 = sub_1001F6668();
    v47 = sub_1001F7298();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = sub_1000C1A68();
    }

    else
    {

      v46 = v45;
    }

    v10 = v69;

    v9 = v70;
  }

  v49 = *(a2 + 96);
  v50 = v42;

  v51 = v77;
  sub_100133AD8(v50, v49, v75, v39, v74, v41, v77);
  v52 = v78;
  v53 = v81;
  (*(a2 + 104))(v81);
  if (sub_10001C990(v52, 1, v76) == 1)
  {
    sub_10005518C(a2);

    sub_1000565FC();
    sub_1000565E4();
    sub_10005541C(v53, v54);
    v55 = &qword_1002AF150;
    v56 = &unk_100202ED0;
    v57 = v52;
LABEL_14:
    sub_1000374B8(v57, v55, v56);

    return sub_100018460(v80, 1, 1, v79);
  }

  v58 = v52;
  v59 = v53;
  v60 = v72;
  sub_100055358(v58, v72, &qword_1002AC7C8, &qword_1002008C0);
  (*(a2 + 120))(v51);
  sub_10005518C(a2);

  sub_1000565FC();
  sub_1000565E4();
  sub_10005541C(v59, v61);
  if (sub_10001C990(v9, 1, v10) == 1)
  {
    sub_1000374B8(v60, &qword_1002AC7C8, &qword_1002008C0);
    v55 = &qword_1002AF140;
    v56 = &qword_100202EC0;
    v57 = v9;
    goto LABEL_14;
  }

  v63 = v71;
  sub_100055358(v9, v71, &qword_1002AF148, &qword_100202EC8);
  v64 = v79;
  sub_100055358(v60, v33 + *(v79 + 24), &qword_1002AC7C8, &qword_1002008C0);
  sub_100055358(v63, v33 + *(v64 + 28), &qword_1002AF148, &qword_100202EC8);
  sub_1000553B8(v33, v80);
  sub_100056664();
  sub_100018460(v65, v66, v67, v68);
  return sub_10005541C(v33, type metadata accessor for StatusResponse.Datum.TransactionContainer);
}

unint64_t sub_100054140(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A638;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100054190(char a1)
{
  result = 0x737574617473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100054228(void *a1)
{
  v4 = sub_1000183C4(&qword_1002AF268, &qword_100203180);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  v8 = sub_100055CB4();
  sub_1000566A8(&type metadata for StatusResponse.Datum.TransactionContainer.CodingKeys, v9, v8);
  sub_100055D08();
  sub_100056670();
  sub_1001F7DC8();
  if (!v1)
  {
    sub_100056670();
    sub_1001F7D88();
    type metadata accessor for StatusResponse.Datum.TransactionContainer(0);
    sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0);
    sub_100055D5C(&qword_1002AF280, &qword_1002AC7C8, &qword_1002008C0);
    sub_100056670();
    sub_1001F7DC8();
    sub_1000183C4(&qword_1002AF148, &qword_100202EC8);
    sub_100055D5C(&qword_1002AF288, &qword_1002AF148, &qword_100202EC8);
    sub_100056670();
    sub_1001F7DC8();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_100054478@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054140(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000544A8()
{
  v1 = sub_100056690();
  result = sub_100054190(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1000544EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100054520(uint64_t a1)
{
  v2 = sub_100055CB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005455C(uint64_t a1)
{
  v2 = sub_100055CB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000545B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000183C4(&qword_1002AF130, &qword_100202EB0);
  sub_100056658(v7);
  sub_10001E844();
  __chkstk_darwin(v8);
  v10 = &v23[-v9 - 8];
  v11 = type metadata accessor for StatusResponse.Datum.TransactionContainer(0);
  sub_10001A278();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100023510();
  v17 = v16 - v15;
  if (a1)
  {
    v18 = a1;
    sub_1000551E0(a4, v23);
    sub_100053B2C(v18, a4, v10);
    if (sub_10001C990(v10, 1, v11) == 1)
    {
      sub_1000374B8(v10, &qword_1002AF130, &qword_100202EB0);
    }

    else
    {
      sub_10005523C(v10, v17);
      sub_1000183C4(&qword_1002AF138, &qword_100202EB8);
      v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1001FE9E0;
      sub_10005523C(v17, v20 + v19);
      a1 = v18;
    }
  }

  sub_10005518C(a4);

  return a2;
}

uint64_t sub_100054788(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A6B8;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000547DC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_100054818(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000183C4(&qword_1002AF240, &qword_100203170);
  sub_10001A278();
  v9 = v8;
  sub_10001E844();
  __chkstk_darwin(v10);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  sub_100055B64();
  sub_1001F8198();
  sub_100056670();
  sub_1001F7D88();
  if (!v4)
  {
    sub_1000183C4(&qword_1002AF250, &qword_100203178);
    sub_100055BB8();
    sub_100056670();
    sub_1001F7DC8();
  }

  return (*(v9 + 8))(v5, v7);
}

uint64_t sub_1000549C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054788(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000549F0()
{
  v1 = sub_100056690();
  result = sub_1000547DC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100054A20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100054A54(uint64_t a1)
{
  v2 = sub_100055B64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054A90(uint64_t a1)
{
  v2 = sub_100055B64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100054AEC(uint64_t a1)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    return;
  }

  v1 = *(a1 + 72);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_37:
    sub_10006E594(v7);

    return;
  }

  v3 = *(a1 + 64);
  v4 = sub_10001A07C();
  v5 = 0;
  v31 = v3 & 0xFFFFFFFFFFFFFF8;
  v32 = v3 & 0xC000000000000001;
  v30 = v3 + 32;
  v6 = (v1 + 40);
  v7 = _swiftEmptyArrayStorage;
  v8 = 24;
  while (1)
  {
    v10 = *(v6 - 1);
    v9 = *v6;
    if (v5 >= v4)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100056634();
        v7 = v24;
      }

      v21 = v7[2];
      v20 = v7[3];
      if (v21 >= v20 >> 1)
      {
        sub_10005669C(v20);
        sub_100056664();
        sub_1000329D0();
        v7 = v25;
      }

      v7[2] = v21 + 1;
      v19 = (v7 + v21 * v8);
      goto LABEL_25;
    }

    if (!v32)
    {
      break;
    }

    v12 = sub_1001F7808();
LABEL_9:
    v13 = v12;
    v14 = sub_1000C5388(15);
    if (v15)
    {
      if (v14 == v10 && v15 == v9)
      {

LABEL_27:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100056634();
          v7 = v28;
        }

        v8 = v7[2];
        v22 = v7[3];
        if (v8 >= v22 >> 1)
        {
          sub_10005669C(v22);
          sub_100056664();
          sub_1000329D0();
          v7 = v29;
        }

        sub_10005667C();
        v23[4] = v10;
        v23[5] = v9;
        v23[6] = v13;
        ++v5;
        goto LABEL_32;
      }

      v17 = sub_1001F7EA8();

      if (v17)
      {
        goto LABEL_27;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100056634();
      v7 = v26;
    }

    v8 = v7[2];
    v18 = v7[3];
    if (v8 >= v18 >> 1)
    {
      sub_10005669C(v18);
      sub_100056664();
      sub_1000329D0();
      v7 = v27;
    }

    sub_10005667C();
LABEL_25:
    v19[4] = v10;
    v19[5] = v9;
    v19[6] = 0;
LABEL_32:
    v6 += 2;
    if (!--v2)
    {
      goto LABEL_37;
    }
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5 >= *(v31 + 16))
    {
      goto LABEL_39;
    }

    v11 = *(v30 + 8 * v5);

    v12 = v11;
    goto LABEL_9;
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t sub_100054D58(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A708;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100054DA4(char a1)
{
  result = 1684632420;
  switch(a1)
  {
    case 1:
      result = 0x496D616441707061;
      break;
    case 2:
      result = 0x6449656C646E7562;
      break;
    case 3:
      result = 0x6D6E6F7269766E65;
      break;
    case 4:
      result = 1635017060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100054E4C(void *a1)
{
  v4 = sub_1000183C4(&qword_1002AF228, &qword_100203168);
  sub_10001A278();
  v6 = v5;
  sub_10001E844();
  __chkstk_darwin(v7);
  sub_100056624();
  sub_10001AE68(a1, a1[3]);
  v8 = sub_100055ABC();
  sub_1000566A8(&type metadata for StatusResponse.CodingKeys, v9, v8);
  sub_1000565D0();
  sub_1001F7D48();
  if (!v1)
  {
    sub_1000565D0();
    sub_1001F7D48();
    sub_1000565D0();
    sub_1001F7D88();
    sub_1000565D0();
    sub_1001F7D88();
    sub_100055B10();
    sub_1001F7DC8();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_10005501C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054D58(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10005504C()
{
  v1 = sub_100056690();
  result = sub_100054DA4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_10005507C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100054D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000550B0(uint64_t a1)
{
  v2 = sub_100055ABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000550EC(uint64_t a1)
{
  v2 = sub_100055ABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for StatusResponse.Datum.TransactionContainer(uint64_t a1)
{
  result = qword_1002AF1B0;
  if (!qword_1002AF1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005523C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusResponse.Datum.TransactionContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100055358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000183C4(a3, a4);
  sub_100023520();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000553B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusResponse.Datum.TransactionContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005541C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100055498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_1000183C4(&qword_1002AF148, &qword_100202EC8);
      v10 = *(a3 + 28);
    }

    return sub_10001C990(a1 + v10, a2, v9);
  }
}

uint64_t sub_100055590(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_1000183C4(&qword_1002AF148, &qword_100202EC8);
      v10 = *(a4 + 28);
    }

    return sub_100018460(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_100055670(uint64_t a1)
{
  sub_10005570C(319);
  if (v1 <= 0x3F)
  {
    sub_1000557D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005570C(uint64_t a1)
{
  if (!qword_1002AF1C0)
  {
    v2 = type metadata accessor for CheddarTransaction(255);
    v3 = sub_100055C6C(&qword_1002AF1C8, type metadata accessor for CheddarTransaction, &unk_10020F9D4);
    v4 = sub_100055C6C(&qword_1002AF1D0, type metadata accessor for CheddarTransaction, &unk_10020F9AC);
    v5 = type metadata accessor for JWS(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1002AF1C0);
    }
  }
}

void sub_1000557D8(uint64_t a1)
{
  if (!qword_1002AF1D8)
  {
    v2 = type metadata accessor for RenewalInfo(255);
    v3 = sub_100055C6C(&qword_1002AF1E0, type metadata accessor for RenewalInfo, &unk_10020E5B0);
    v4 = sub_100055C6C(&unk_1002AF1E8, type metadata accessor for RenewalInfo, &unk_10020E5D8);
    v5 = type metadata accessor for JWS(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1002AF1D8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StatusResponse.Datum.TransactionContainer.Code(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x100055970);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000559BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1000559FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100055A68()
{
  result = qword_1002AF220;
  if (!qword_1002AF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF220);
  }

  return result;
}

unint64_t sub_100055ABC()
{
  result = qword_1002AF230;
  if (!qword_1002AF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF230);
  }

  return result;
}

unint64_t sub_100055B10()
{
  result = qword_1002AF238;
  if (!qword_1002AF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF238);
  }

  return result;
}

unint64_t sub_100055B64()
{
  result = qword_1002AF248;
  if (!qword_1002AF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF248);
  }

  return result;
}

unint64_t sub_100055BB8()
{
  result = qword_1002AF258;
  if (!qword_1002AF258)
  {
    sub_100019BC4(&qword_1002AF250, &qword_100203178);
    sub_100055C6C(&qword_1002AF260, type metadata accessor for StatusResponse.Datum.TransactionContainer, &unk_1002030EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF258);
  }

  return result;
}

uint64_t sub_100055C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100055CB4()
{
  result = qword_1002AF270;
  if (!qword_1002AF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF270);
  }

  return result;
}

unint64_t sub_100055D08()
{
  result = qword_1002AF278;
  if (!qword_1002AF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF278);
  }

  return result;
}

uint64_t sub_100055D5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100055DB0()
{
  result = qword_1002AF290;
  if (!qword_1002AF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StatusResponse.Datum.TransactionContainer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x100055ED0);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StatusResponse.Datum.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x100055FD4);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StatusResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000560D8);
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

__n128 sub_100056110(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100056124(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100056164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000561CC()
{
  result = qword_1002AF298;
  if (!qword_1002AF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF298);
  }

  return result;
}

unint64_t sub_100056224()
{
  result = qword_1002AF2A0;
  if (!qword_1002AF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2A0);
  }

  return result;
}

unint64_t sub_10005627C()
{
  result = qword_1002AF2A8;
  if (!qword_1002AF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2A8);
  }

  return result;
}

unint64_t sub_1000562D4()
{
  result = qword_1002AF2B0;
  if (!qword_1002AF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2B0);
  }

  return result;
}

unint64_t sub_10005632C()
{
  result = qword_1002AF2B8;
  if (!qword_1002AF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2B8);
  }

  return result;
}

unint64_t sub_100056384()
{
  result = qword_1002AF2C0;
  if (!qword_1002AF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2C0);
  }

  return result;
}

unint64_t sub_1000563DC()
{
  result = qword_1002AF2C8;
  if (!qword_1002AF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2C8);
  }

  return result;
}

unint64_t sub_100056434()
{
  result = qword_1002AF2D0;
  if (!qword_1002AF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2D0);
  }

  return result;
}

unint64_t sub_10005648C()
{
  result = qword_1002AF2D8;
  if (!qword_1002AF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2D8);
  }

  return result;
}

unint64_t sub_1000564E0()
{
  result = qword_1002AF2E8;
  if (!qword_1002AF2E8)
  {
    sub_100019BC4(&qword_1002AF2E0, &qword_100203608);
    sub_100056564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2E8);
  }

  return result;
}

unint64_t sub_100056564()
{
  result = qword_1002AF2F0;
  if (!qword_1002AF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF2F0);
  }

  return result;
}

uint64_t sub_1000565FC()
{

  return sub_10005541C(v0, type metadata accessor for RenewalInfo);
}

void sub_100056634()
{

  sub_1000329D0();
}

uint64_t sub_1000566A8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F8198();
}

uint64_t sub_1000566C8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a2;
  type metadata accessor for BaseSocket();
  v7 = sub_1000E1DDC(a1, 1, v5);
  if (v3)
  {
    type metadata accessor for ServerSocket();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 20) = a1 == 1;
    return sub_1000E2024(v7);
  }
}

uint64_t sub_100056768(uint64_t a1, char a2)
{
  *(v2 + 20) = 0;
  v5 = sub_1000E2024(a1);
  if (!v3 && (a2 & 1) != 0)
  {
    if (sub_1000E220C())
    {
      sub_10019EEBC(*(v5 + 16));
    }

    else
    {
      sub_1000274C4();
      swift_allocError();
      *v6 = 0xD00000000000001FLL;
      *(v6 + 8) = 0x8000000100224AB0;
      *(v6 + 16) = 9;
      swift_willThrow();
    }
  }

  return v5;
}

void sub_100056824(uint64_t a1)
{
  v2 = a1;
  if (sub_1000E220C())
  {
    sub_10019E838(*(v1 + 16), v2);
  }

  else
  {
    sub_1000274C4();
    swift_allocError();
    *v3 = 0xD00000000000001FLL;
    *(v3 + 8) = 0x8000000100224AB0;
    *(v3 + 16) = 9;
    swift_willThrow();
  }
}

void sub_1000568C0(uint64_t a1)
{
  v3 = v2;
  if (*(v1 + 20) != 1 || !sub_1000E220C())
  {
    goto LABEL_5;
  }

  sub_10019E704();
  if (v2)
  {

    v3 = 0;
LABEL_5:
    v4 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v6 = sub_1000E2678();
  v4 = SocketAddress.pathname.getter(v6);
  v5 = v7;

LABEL_6:
  sub_1000E21B0();
  if (!v3)
  {
    if (!v5)
    {
      return;
    }

    sub_10013E9CC(v4, v5);
  }
}

unint64_t sub_100056A1C(uint64_t a1)
{
  result = sub_100056A44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100056A44()
{
  result = qword_1002AF418;
  if (!qword_1002AF418)
  {
    type metadata accessor for ServerSocket();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF418);
  }

  return result;
}

void *sub_100056A98@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v29 = 1;
  v30 = 0;
  if (a1)
  {
    type metadata accessor for AllSetDialog();
    swift_allocObject();
    v3 = sub_10013CD98();
  }

  else
  {
    v3 = 0;
  }

  __src[0] = 0;
  __src[1] = 0;
  __src[2] = _swiftEmptyArrayStorage;
  LOWORD(__src[3]) = v30;
  strcpy(&__src[4], "17322632127");
  HIDWORD(__src[5]) = -352321536;
  __src[6] = 0;
  LOBYTE(__src[7]) = v29;
  __src[8] = 0;
  __src[9] = 0;
  __src[10] = 0xF000000000000000;
  __src[11] = 0;
  __src[12] = 0;
  __src[13] = 1;
  memset(&__src[14], 0, 64);
  LOBYTE(__src[22]) = 22;
  __src[23] = 0;
  __src[24] = 0;
  __src[25] = v3;
  LOBYTE(__src[26]) = 2;
  v7[0] = 0;
  v7[1] = 0;
  v7[2] = _swiftEmptyArrayStorage;
  v8 = v30;
  v9 = 0;
  v10 = 0x3233363232333731;
  v11 = 0xEB00000000373231;
  v12 = 0;
  v13 = v29;
  v14 = 0;
  v15 = 0;
  v16 = 0xF000000000000000;
  v17 = 0;
  v18 = 0;
  v19 = 1;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v24 = 22;
  v26 = 0;
  v25 = 0;
  v27 = v3;
  v28 = 2;
  sub_100057E10(__src, v5);
  sub_100057E48(v7);
  return memcpy(a2, __src, 0xD1uLL);
}

void *sub_100056C08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100056A98(0, __src);
  v12 = v10;
  v4 = v11;
  type metadata accessor for ConfirmDialog();
  swift_allocObject();
  v5 = sub_10013CB18(a1);
  sub_10004BDE8(&v12, &qword_1002AF480, &unk_1002087C0);
  memcpy(__dst, __src, 0xB0uLL);
  LOBYTE(__dst[22]) = 19;
  *(&__dst[22] + 1) = *v9;
  __dst[24] = *&v9[15];
  __dst[25] = v5;
  LOBYTE(__dst[26]) = v4;
  memcpy(v14, __src, 0xB0uLL);
  v14[176] = 19;
  *v15 = *v9;
  *&v15[15] = *&v9[15];
  v16 = v5;
  v17 = v4;
  sub_100057E10(__dst, v7);
  sub_100057E48(v14);
  return memcpy(a2, __dst, 0xD1uLL);
}

void *sub_100056D28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  sub_100056A98(0, __src);
  v26 = v40;
  v27 = __src[176];
  v19 = v39;
  if (a8)
  {
  }

  else
  {
    v42[0] = v39;
    type metadata accessor for AlreadyOwnSubscriptionDialog();
    swift_unknownObjectRetain();

    v19 = sub_10013B970(v20, a4, a5, a6, a7, a10, a1, a2, a12, a13);
    sub_10004BDE8(v42, &qword_1002AF480, &unk_1002087C0);
  }

  v41 = v38;

  swift_unknownObjectRelease();
  sub_10004BDE8(&v41, &qword_1002AEBE0, &qword_100203700);
  if (a11)
  {
    v21 = 4;
  }

  else
  {
    v21 = v27;
  }

  if (a11)
  {
    v22 = 1;
  }

  else
  {
    v22 = v26;
  }

  memcpy(__dst, __src, 0xB0uLL);
  LOBYTE(__dst[22]) = v21;
  *(&__dst[22] + 1) = *v37;
  HIDWORD(__dst[22]) = *&v37[3];
  __dst[23] = 0x1000000000000026;
  __dst[24] = 0x80000001002250B0;
  __dst[25] = v19;
  LOBYTE(__dst[26]) = v22;
  memcpy(v30, __src, 0xB0uLL);
  v30[176] = v21;
  *v31 = *v37;
  *&v31[3] = *&v37[3];
  v32 = 0x1000000000000026;
  v33 = 0x80000001002250B0;
  v34 = v19;
  v35 = v22;
  sub_100057E10(__dst, v28);
  sub_100057E48(v30);
  return memcpy(a9, __dst, 0xD1uLL);
}

void *sub_100056F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  sub_100056A98(0, __src);
  v19 = v17;
  v12 = v18;
  a4(0);
  swift_allocObject();
  v13 = a5(a1, a2, a3);
  sub_10004BDE8(&v19, &qword_1002AF480, &unk_1002087C0);
  memcpy(__dst, __src, 0xC8uLL);
  __dst[25] = v13;
  LOBYTE(__dst[26]) = v12;
  memcpy(v21, __src, sizeof(v21));
  v22 = v13;
  v23 = v12;
  sub_100057E10(__dst, v15);
  sub_100057E48(v21);
  return memcpy(a6, __dst, 0xD1uLL);
}

void *sub_100057098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_100056A98(0, __src);
  v28 = v25;
  v27 = v24;
  memcpy(__dst, __src, sizeof(__dst));
  v20[0] = *v23;
  *(v20 + 3) = *&v23[3];
  v15 = v26;
  sub_10004BDE8(&v27, &qword_1002AEBE0, &qword_100203700);
  type metadata accessor for PurchaseEngagementDialog();
  v16 = sub_10013BA10(a1, a2, a3, a4, a5, a6, a7);
  sub_10004BDE8(&v28, &qword_1002AF480, &unk_1002087C0);
  memcpy(v29, __dst, 0xB0uLL);
  LOBYTE(v29[22]) = 19;
  *(&v29[22] + 1) = v20[0];
  HIDWORD(v29[22]) = *(v20 + 3);
  v29[23] = 0xD000000000000022;
  v29[24] = 0x8000000100225080;
  v29[25] = v16;
  LOBYTE(v29[26]) = v15;
  memcpy(v30, __dst, 0xB0uLL);
  v30[176] = 19;
  *v31 = v20[0];
  *&v31[3] = *(v20 + 3);
  v32 = 0xD000000000000022;
  v33 = 0x8000000100225080;
  v34 = v16;
  v35 = v15;
  sub_100057E10(v29, v19);
  sub_100057E48(v30);
  return memcpy(a8, v29, 0xD1uLL);
}

unint64_t sub_100057258(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A7A0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000572B4(char a1)
{
  result = 0x73676E6970;
  switch(a1)
  {
    case 1:
      result = 0x6F44656C676E696ALL;
      break;
    case 2:
      result = 0x6341656C676E696ALL;
      break;
    case 3:
      result = 1684632420;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0x7473696C2D707061;
      break;
    case 6:
      result = 0x2D74706965636572;
      break;
    case 7:
      result = 0x7363697274656DLL;
      break;
    case 8:
      result = 0x546572756C696166;
      break;
    case 9:
      result = 0x72656D6F74737563;
      break;
    case 10:
      result = 0x676F6C616964;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100057454(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002AF420, &unk_1002036D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10001AE68(a1, a1[3]);
  sub_100057A8C();
  sub_1001F8198();
  *v12 = *(v3 + 16);
  v11[0] = 0;
  sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  sub_100057AE0();
  sub_1000582D0();
  sub_1001F7DC8();
  if (!v2)
  {
    v12[0] = *(v3 + 24);
    v11[0] = 1;
    sub_100057B5C();
    sub_1000582C0();
    sub_1001F7D58();
    v12[0] = *(v3 + 25);
    v11[0] = 2;
    sub_100057BB0();
    sub_1000582C0();
    sub_1001F7D58();
    v12[0] = 3;
    sub_1000582D0();
    sub_1001F7D88();
    v12[0] = 4;
    sub_1000582D0();
    sub_1001F7D48();
    *v12 = *(v3 + 64);
    v11[0] = 5;
    sub_1000183C4(&qword_1002AF440, &qword_1002036E0);
    sub_100057C04();
    sub_1000582D0();
    sub_1001F7D58();
    v14 = *(v3 + 72);
    *v12 = *(v3 + 72);
    LOBYTE(v10) = 6;
    sub_100057CB8(&v14, v11, &qword_1002AF458, &qword_1002036E8);
    sub_10004FAD4();
    sub_1000582C0();
    sub_1001F7D58();
    sub_10003A36C(*v12, *&v12[8]);
    memcpy(v13, (v3 + 88), sizeof(v13));
    memcpy(v12, (v3 + 88), sizeof(v12));
    v16 = 7;
    sub_100057CB8(v13, v11, &qword_1002AF460, &unk_1002036F0);
    sub_100057D20();
    sub_1000582C0();
    sub_1001F7D58();
    memcpy(v11, v12, sizeof(v11));
    sub_10004BDE8(v11, &qword_1002AF460, &unk_1002036F0);
    LOBYTE(v10) = *(v3 + 176);
    v15 = 8;
    sub_100057D74();
    sub_1000582C0();
    sub_1001F7D58();
    LOBYTE(v10) = 9;
    sub_1000582D0();
    sub_1001F7D18();
    v10 = *(v3 + 200);
    v15 = 10;
    type metadata accessor for Dialog();
    sub_100057DC8(&qword_1002AF478, type metadata accessor for Dialog, &unk_10020F284);
    sub_1000582D0();
    sub_1001F7D58();
    LOBYTE(v10) = 11;
    sub_1000582C0();
    sub_1001F7D28();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000578E4(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

unint64_t sub_100057934@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100057258(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100057964@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000572B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000579AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000572A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000579D4@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOBSDSocket.Option.ip_add_membership.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000579FC(uint64_t a1)
{
  v2 = sub_100057A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100057A38(uint64_t a1)
{
  v2 = sub_100057A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100057A8C()
{
  result = qword_1002AF428;
  if (!qword_1002AF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF428);
  }

  return result;
}

unint64_t sub_100057AE0()
{
  result = qword_1002ACB30;
  if (!qword_1002ACB30)
  {
    sub_100019BC4(&qword_1002ACA10, qword_1001FEBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACB30);
  }

  return result;
}

unint64_t sub_100057B5C()
{
  result = qword_1002AF430;
  if (!qword_1002AF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF430);
  }

  return result;
}

unint64_t sub_100057BB0()
{
  result = qword_1002AF438;
  if (!qword_1002AF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF438);
  }

  return result;
}

unint64_t sub_100057C04()
{
  result = qword_1002AF448;
  if (!qword_1002AF448)
  {
    sub_100019BC4(&qword_1002AF440, &qword_1002036E0);
    sub_100057DC8(&qword_1002AF450, type metadata accessor for IAPTransaction, &unk_10021A6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF448);
  }

  return result;
}

uint64_t sub_100057CB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000183C4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100057D20()
{
  result = qword_1002AF468;
  if (!qword_1002AF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF468);
  }

  return result;
}

unint64_t sub_100057D74()
{
  result = qword_1002AF470;
  if (!qword_1002AF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF470);
  }

  return result;
}

uint64_t sub_100057DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for LegacyInAppBuyResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LegacyInAppBuyResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x100057FCCLL);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100058004(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100058020(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100058048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100058074(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 209))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1000580B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100058140()
{
  result = qword_1002AF488;
  if (!qword_1002AF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF488);
  }

  return result;
}

unint64_t sub_100058194(uint64_t a1)
{
  result = sub_1000581BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000581BC()
{
  result = qword_1002AF490;
  if (!qword_1002AF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF490);
  }

  return result;
}

unint64_t sub_100058214()
{
  result = qword_1002AF498;
  if (!qword_1002AF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF498);
  }

  return result;
}

unint64_t sub_10005826C()
{
  result = qword_1002AF4A0;
  if (!qword_1002AF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF4A0);
  }

  return result;
}

void *sub_1000582DC(void *a1)
{
  v2 = sub_1001F8138();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058C70();
  if (sub_100058C40(v6, v7, v8, type metadata for String))
  {
    sub_100019CCC(a1);
    return v94;
  }

  v10 = sub_100058C70();
  if (sub_100058C40(v10, v11, v12, &type metadata for Bool))
  {
    sub_100019CCC(a1);
    return v94;
  }

  sub_100058C70();
  v13 = sub_1000183C4(&unk_1002B3470, &qword_10021A670);
  if (sub_100058C40(v13, v14, v15, v13))
  {
    v16 = v94;
    v17 = *(v94 + 16);
    if (v17)
    {
      v87 = a1;
      v91 = _swiftEmptyArrayStorage;
      sub_100033F6C(0, v17, 0);
      v9 = v91;
      v89 = v16;
      v18 = v16 + 32;
      do
      {
        sub_100058C70();
        sub_10002F9B0(v96, &v94);
        v19 = sub_1000582DC(&v94);
        v21 = v20;
        v23 = v22;
        sub_100019CCC(v96);
        v91 = v9;
        v25 = v9[2];
        v24 = v9[3];
        if (v25 >= v24 >> 1)
        {
          sub_100033F6C((v24 > 1), v25 + 1, 1);
          v9 = v91;
        }

        v9[2] = v25 + 1;
        v26 = &v9[3 * v25];
        v26[4] = v19;
        v26[5] = v21;
        *(v26 + 48) = v23;
        v18 += 32;
        --v17;
      }

      while (v17);
      sub_100019CCC(v87);
    }

    else
    {

      sub_100019CCC(a1);
      return _swiftEmptyArrayStorage;
    }

    return v9;
  }

  sub_100058C70();
  v27 = sub_1000183C4(&qword_1002ADB98, &qword_1002008D0);
  if ((sub_100058C40(v27, v28, v29, v27) & 1) == 0)
  {
    v85 = v3;
    v86 = v2;
    sub_100058C70();
    sub_1001F80E8();
    sub_1001F8128();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v56 = sub_1001F81A8();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v56)
    {
      sub_100058C70();
      v9 = sub_1001F6BA8();
      sub_100019CCC(a1);
      (*(v85 + 8))(v5, v86);
    }

    else
    {
      v87 = a1;
      v84 = v5;
      v57 = sub_1001F8128();
      v9 = sub_1001F69B8();
      v83[1] = v57;
      v88 = sub_1001F7A18();
      while (1)
      {
        sub_1001F7B88();
        if (!*(&v97 + 1))
        {
          break;
        }

        v94 = v96[0];
        v95[0] = v96[1];
        v95[1] = v97;
        sub_100058B00(&v94, &v91);
        v58 = v92;
        if (v92)
        {
          v59 = v91;
          sub_100019CCC(v93);
          sub_10002F9B0(v95, v90);
          sub_1000183C4(&qword_1002B34A0, &qword_1002009E0);
          swift_dynamicCast();
          if (v93[1])
          {
            sub_10004BDE8(&v91, &qword_1002B34A0, &qword_1002009E0);
            sub_100058B00(&v94, &v91);

            v60 = sub_1000582DC(v93);
            v62 = v61;
            LODWORD(v89) = v63;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v91 = v9;
            v65 = sub_10011108C(v59);
            v67 = v9[2];
            v68 = (v66 & 1) == 0;
            v69 = v67 + v68;
            if (__OFADD__(v67, v68))
            {
              goto LABEL_46;
            }

            v70 = v65;
            v71 = v66;
            sub_1000183C4(&qword_1002AF4B0, &qword_1002039C0);
            if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v69))
            {
              v72 = sub_10011108C(v59);
              if ((v71 & 1) != (v73 & 1))
              {
                goto LABEL_49;
              }

              v70 = v72;
            }

            if (v71)
            {

              v9 = v91;
              sub_100058C60();
              v75 = *v74;
              v76 = *(v74 + 8);
              *v74 = v60;
              *(v74 + 8) = v62;
              v77 = *(v74 + 16);
              *(v74 + 16) = v89;
              sub_100058B70(v75, v76, v77);
              sub_10004BDE8(&v94, &qword_1002AF4A8, &qword_1002039B8);
            }

            else
            {
              v9 = v91;
              v91[(v70 >> 6) + 8] |= 1 << v70;
              v78 = (v9[6] + 16 * v70);
              *v78 = v59;
              v78[1] = v58;
              sub_100058C60();
              *v79 = v60;
              *(v79 + 8) = v62;
              *(v79 + 16) = v89;
              sub_10004BDE8(&v94, &qword_1002AF4A8, &qword_1002039B8);
              v80 = v9[2];
              v54 = __OFADD__(v80, 1);
              v81 = v80 + 1;
              if (v54)
              {
                goto LABEL_48;
              }

              v9[2] = v81;
            }
          }

          else
          {
            sub_10004BDE8(&v94, &qword_1002AF4A8, &qword_1002039B8);
          }
        }

        else
        {
          sub_10004BDE8(&v94, &qword_1002AF4A8, &qword_1002039B8);
          sub_100019CCC(v93);
        }
      }

      sub_100019CCC(v87);
      (*(v85 + 8))(v84, v86);
    }

    return v9;
  }

  v87 = a1;
  v30 = v94;
  sub_1000183C4(&qword_1002AF4B8, &unk_100208940);
  v31 = sub_1001F7B58();
  v9 = v31;
  v32 = 0;
  v34 = v30 + 64;
  v33 = *(v30 + 64);
  v88 = v30;
  v35 = 1 << *(v30 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v33;
  v38 = (v35 + 63) >> 6;
  v86 = v31 + 64;
  if ((v36 & v33) != 0)
  {
    while (1)
    {
      v39 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
LABEL_22:
      v42 = v39 | (v32 << 6);
      v43 = *(v88 + 56);
      v44 = (*(v88 + 48) + 16 * v42);
      v45 = v44[1];
      v89 = *v44;
      sub_10002F9B0(v43 + 32 * v42, v96);
      sub_10002F9B0(v96, &v94);

      v46 = sub_1000582DC(&v94);
      v48 = v47;
      v50 = v49;
      sub_100019CCC(v96);
      *(v86 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      v51 = (v9[6] + 16 * v42);
      *v51 = v89;
      v51[1] = v45;
      sub_100058C60();
      *v52 = v46;
      *(v52 + 8) = v48;
      *(v52 + 16) = v50;
      v53 = v9[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        break;
      }

      v9[2] = v55;
      if (!v37)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v40 = v32;
    while (1)
    {
      v32 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v32 >= v38)
      {

        sub_100019CCC(v87);
        return v9;
      }

      v41 = *(v34 + 8 * v32);
      ++v40;
      if (v41)
      {
        v39 = __clz(__rbit64(v41));
        v37 = (v41 - 1) & v41;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

uint64_t sub_100058B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AF4A8, &qword_1002039B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058B70(uint64_t result, uint64_t a2, char a3)
{
  if (!a3 || a3 == 3 || a3 == 2)
  {
  }

  return v3;
}

uint64_t sub_100058BA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100058BE4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100058C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_100058C70()
{

  return sub_10002F9B0(v0, v1 - 136);
}

uint64_t sub_100058C88(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1001F77B8(24);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_1001F6CA8(v9);
  v10._countAndFlagsBits = 0x3D6469623FLL;
  v10._object = 0xE500000000000000;
  sub_1001F6CA8(v10);
  v11._countAndFlagsBits = a3;
  v11._object = a4;
  sub_1001F6CA8(v11);
  return 0x74694B65726F7453;
}

uint64_t sub_100058D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002AF588, &qword_100203A98);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for OctaneAsset(0);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000593F4(a1, v29);
  v11 = sub_1001DEEB8(a1);
  v15 = v14;
  if (!v14)
  {
    type metadata accessor for HTTPResponseHead._Storage();
    result = swift_allocObject();
    v20 = result;
    v21 = 0uLL;
    *(result + 16) = 0u;
    v22 = 21;
    goto LABEL_5;
  }

  v16 = v11;
  v17 = v12;
  v18 = v13;
  sub_10001AE68((v2 + 48), *(v2 + 72));
  sub_1000795A8(v17, v18);
  sub_1000EEA24(v16, v15, v7);

  if (sub_10001C990(v7, 1, v8) == 1)
  {

    sub_10004BDE8(v7, &qword_1002AF588, &qword_100203A98);
    type metadata accessor for HTTPResponseHead._Storage();
    result = swift_allocObject();
    v20 = result;
    v15 = 0;
    v21 = 0uLL;
    *(result + 16) = 0u;
    v22 = 25;
LABEL_5:
    *(result + 32) = v22;
    *(result + 40) = 65537;
    v23 = 2;
    v24 = _swiftEmptyArrayStorage;
    v25 = 0uLL;
    goto LABEL_9;
  }

  sub_100059450(v7, v10);
  if (qword_1002AC428 != -1)
  {
    swift_once();
  }

  v26 = *(off_1002AF690 + 2);
  os_unfair_lock_lock(v26);
  sub_10005901C(v29);
  os_unfair_lock_unlock(v26);

  v20 = v29[0];
  v24 = v29[1];
  v23 = v30;
  v27 = v32;
  v28 = v31;
  v15 = v33 | ((v34 | (v35 << 16)) << 32);
  result = sub_1000594B4(v10);
  v25 = v27;
  v21 = v28;
LABEL_9:
  *a2 = v20;
  *(a2 + 8) = v24;
  *(a2 + 16) = v23;
  *(a2 + 24) = v21;
  *(a2 + 40) = v25;
  *(a2 + 56) = v15;
  *(a2 + 62) = BYTE6(v15);
  *(a2 + 60) = WORD2(v15);
  return result;
}

__n128 sub_10005901C@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for OctaneAsset(0);
  v2 = sub_1001F6248(0);
  v4 = v3;
  v5 = objc_allocWithZone(NSData);
  v6 = sub_1000EF218(v2, v4, 0);
  v7 = sub_1001F63C8();
  v9 = v8;

  v10 = sub_10007232C();
  v12 = sub_1000B756C(v10, v11);
  if (v12 == 9)
  {
    sub_10003A380(v7, v9);
    type metadata accessor for HTTPResponseHead._Storage();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 36;
    *(v13 + 40) = 65537;
    *a1 = v13;
    *(a1 + 8) = _swiftEmptyArrayStorage;
    *(a1 + 16) = 2;
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 55) = 0;
  }

  else
  {
    v15 = sub_1000B7990(v12);
    v17 = v16;
    sub_100040C70(v7, v9);
    sub_1000B77D0(v7, v9, v15, v17, v20);
    LOWORD(v15) = v22;
    LODWORD(v17) = v21;
    v18 = v23;
    sub_10003A380(v7, v9);
    type metadata accessor for HTTPResponseHead._Storage();
    v19 = swift_allocObject();
    *(v19 + 32) = 3;
    *(v19 + 40) = 65537;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *a1 = v19;
    *(a1 + 8) = _swiftEmptyArrayStorage;
    *(a1 + 16) = 2;
    result = v20[0];
    *(a1 + 40) = v20[1];
    *(a1 + 24) = result;
    *(a1 + 62) = v18;
    *(a1 + 60) = v15;
    *(a1 + 56) = v17;
  }

  return result;
}

uint64_t sub_100059450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OctaneAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000594B4(uint64_t a1)
{
  v2 = type metadata accessor for OctaneAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100059510()
{
  v1 = *(v0 + 128);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1000ADA68(0xD000000000000012, 0x8000000100225170, 1819112552, 0xE400000000000000);
    v3 = *(v0 + 128);
    *(v0 + 128) = v2;
    *(v0 + 136) = v4;

    sub_10001F734(v3);
  }

  sub_10001F78C(v1);
  return v2;
}

uint64_t sub_1000595B4@<X0>(uint64_t a2@<X8>)
{
  v5 = sub_1001EA8E8();
  v6 = sub_1001F10F8(7368801, 0xE300000000000000, v5);
  v8 = v7;

  if (v8)
  {
    v74 = a2;
    v80 = v2;
    sub_10001AE68(v2 + 6, v2[9]);
    v9 = sub_1000795A8(v6, v8);
    v10 = *(v9 + 56);
    v11 = sub_10001A07C();
    v82 = v9;
    v77 = v6;
    v78 = v8;
    if (v11)
    {
      v12 = v11;
      v88 = _swiftEmptyArrayStorage;
      v13 = v11 & ~(v11 >> 63);

      sub_1000375CC(0, v13, 0);
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_60;
      }

      v14 = 0;
      v15 = v88;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v16 = sub_1001F7808();
        }

        else
        {
          v16 = *(v10 + 8 * v14 + 32);
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);

        v88 = v15;
        v20 = v15[2];
        v19 = v15[3];
        if (v20 >= v19 >> 1)
        {
          sub_1000375CC(v19 > 1, v20 + 1, 1);
          v15 = v88;
        }

        ++v14;
        v15[2] = v20 + 1;
        v21 = &v15[2 * v20];
        v21[4] = v18;
        v21[5] = v17;
      }

      while (v12 != v14);

      v6 = v77;
      v8 = v78;
    }

    sub_10001AE68(v80 + 11, v80[14]);
    sub_10008B3C8();
    v3 = v22;

    if (sub_10001A07C() != 1 || !sub_10013B560())
    {
      goto LABEL_18;
    }

    sub_1001C19A8();
    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_61;
    }

    for (i = *(v3 + 32); ; i = sub_1001F7808())
    {
      v24 = i;
      v25 = sub_1000C5388(15);
      v27 = v26;

      if (v27)
      {

        sub_1000183C4(&qword_1002AC840, &qword_1001FE6A0);
        v28 = swift_allocObject();
        *(v28 + 1) = xmmword_1001FE9E0;
        v28[4] = 0x6E6F697461636F4CLL;
        v28[5] = 0xE800000000000000;
        sub_1001F77B8(24);

        v97._countAndFlagsBits = v25;
        v97._object = v27;
        sub_1001F6CA8(v97);

        v98._countAndFlagsBits = 0x3D7070613FLL;
        v98._object = 0xE500000000000000;
        sub_1001F6CA8(v98);
        v99._countAndFlagsBits = v6;
        v99._object = v8;
        sub_1001F6CA8(v99);

        v28[6] = 0x697263736275732FLL;
        v28[7] = 0xEF2F736E6F697470;

        v29 = type metadata accessor for HTTPResponseHead._Storage();
        result = sub_100021728(v29);
        v31 = 0;
        v32 = 0uLL;
        v33 = 16;
LABEL_46:
        v59 = 0uLL;
LABEL_57:
        a2 = v74;
        goto LABEL_58;
      }

LABEL_18:
      v34 = sub_100059510();
      if (!v34)
      {

        v62 = type metadata accessor for HTTPResponseHead._Storage();
        result = sub_100021728(v62);
        v31 = 0;
        v32 = 0uLL;
        v28 = _swiftEmptyArrayStorage;
        v33 = 49;
        goto LABEL_46;
      }

      v36 = v34;
      v73 = v35;
      v37 = sub_10013B560();
      if (!v37)
      {

        v60 = _swiftEmptyArrayStorage;
        v61 = _swiftEmptyArrayStorage;
LABEL_48:
        type metadata accessor for AppIconRoute();
        v63 = sub_10005DC24(v77, v78);
        v65 = v64;

        if (*(v82 + 24))
        {
          v66 = *(v82 + 16);
          v67 = *(v82 + 24);
        }

        else
        {
          v67 = 0xE800000000000000;
          v66 = 0x656D614E20707041;
        }

        if (v60[2])
        {
        }

        else
        {

          v60 = 0;
        }

        if (!v61[2])
        {

          v61 = 0;
        }

        *(&v84 + 1) = &type metadata for SubscriptionsListUIRoute.ViewProperties;
        v68 = swift_allocObject();
        *&v83 = v68;
        v68[2] = v63;
        v68[3] = v65;
        v68[4] = v66;
        v68[5] = v67;
        v68[6] = v60;
        v68[7] = v61;
        v69 = sub_1000ADFF4(&v83, v36, v73);
        v71 = v70;

        sub_100019CCC(&v83);
        sub_1000B738C(v69, v71, 1, &v83);
        v79 = v84;
        v81 = v83;
        v31 = v85 | ((WORD2(v85) | (BYTE6(v85) << 16)) << 32);

        v72 = type metadata accessor for HTTPResponseHead._Storage();
        result = sub_100021728(v72);
        v59 = v79;
        v32 = v81;
        v28 = _swiftEmptyArrayStorage;
        v33 = 3;
        goto LABEL_57;
      }

      v6 = v37;
      if (v37 >= 1)
      {
        break;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      ;
    }

    v38 = 0;
    v75 = _swiftEmptyArrayStorage;
    v76 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v39 = sub_1001F7808();
      }

      else
      {
        v39 = *(v3 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = sub_1000C5388(15);
      if (v42)
      {
        v43 = sub_1000EE77C(v41, v42);

        if (v43)
        {
          sub_10001AE68(v80 + 6, v80[9]);
          sub_10007992C();
          sub_100059D08(v40, v82, v86, v43, &v88);
          v96 = v86[0];
          sub_10001C838(&v96);
          v95 = v86[1];
          sub_10001C838(&v95);
          v94 = v87;
          sub_10001C88C(&v94);
          v44 = v89;
          if (v89)
          {
            v45 = v88;
            v83 = v90;
            v84 = v91;
            v85 = v92;
            if (v93)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_10005A4E8();
                v75 = v54;
              }

              v47 = v75[2];
              v46 = v75[3];
              v48 = v47 + 1;
              if (v47 >= v46 >> 1)
              {
                sub_10004B2F4(v46);
                sub_1000330CC();
                v75 = v55;
              }

              v49 = v75;
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_10005A4E8();
                v76 = v56;
              }

              v47 = v76[2];
              v50 = v76[3];
              v48 = v47 + 1;
              if (v47 >= v50 >> 1)
              {
                sub_10004B2F4(v50);
                sub_1000330CC();
                v76 = v57;
              }

              v49 = v76;
            }

            v49[2] = v48;
            v51 = &v49[8 * v47];
            v51[4] = v45;
            v51[5] = v44;
            v52 = v83;
            v53 = v85;
            *(v51 + 4) = v84;
            *(v51 + 5) = v53;
            *(v51 + 3) = v52;
            goto LABEL_42;
          }
        }
      }

LABEL_42:
      if (v6 == ++v38)
      {

        v61 = v75;
        v60 = v76;
        goto LABEL_48;
      }
    }
  }

  v58 = type metadata accessor for HTTPResponseHead._Storage();
  result = sub_100021728(v58);
  v31 = 0;
  v32 = 0uLL;
  v28 = _swiftEmptyArrayStorage;
  v33 = 21;
  v59 = 0uLL;
LABEL_58:
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = v33;
  *(result + 40) = 65537;
  *a2 = result;
  *(a2 + 8) = v28;
  *(a2 + 16) = 2;
  *(a2 + 24) = v32;
  *(a2 + 40) = v59;
  *(a2 + 56) = v31;
  *(a2 + 62) = BYTE6(v31);
  *(a2 + 60) = WORD2(v31);
  return result;
}

void sub_100059D08(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v59 = a2;
  v60 = a3;
  v10 = sub_1001F6508();
  i = *(v10 - 8);
  __chkstk_darwin(v10);
  v54 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v53 = v50 - v14;
  __chkstk_darwin(v15);
  v55 = v50 - v16;
  __chkstk_darwin(v17);
  v19 = v50 - v18;
  __chkstk_darwin(v20);
  v22 = v50 - v21;
  v23 = a1;
  sub_1000C5464(4);
  if (v24)
  {
    sub_10005A49C();
    goto LABEL_30;
  }

  v52 = a5;
  sub_1001F6418();
  v56 = i;
  v57 = v10;
  v25 = *(i + 32);
  v58 = v22;
  v50[0] = v25;
  v50[1] = i + 32;
  v25(v22, v19, v10);
  v51 = a4;
  v19 = *(a4 + 56);
  v10 = sub_10013B560();
  a5 = v19 & 0xC000000000000001;
  a4 = v19 & 0xFFFFFFFFFFFFFF8;

  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {

      (*(v56 + 8))(v58, v57);
      sub_10005A49C();
      a5 = v52;
      goto LABEL_30;
    }

    if (a5)
    {
      v5 = sub_1001F7808();
    }

    else
    {
      if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v5 = *(v19 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v26 = v5[10];
    v6 = v5[11];

    v27 = sub_1000BFC14();
    v23 = v28;
    if (v26 == v27 && v6 == v28)
    {
      break;
    }

    v22 = sub_1001F7EA8();

    if (v22)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  a5 = v52;
  if (qword_1002AC410 == -1)
  {
    goto LABEL_19;
  }

LABEL_34:
  swift_once();
LABEL_19:
  v30 = qword_1002AE9E8;
  isa = sub_1001F6478().super.isa;
  v32 = [v30 stringFromDate:isa];

  v33 = sub_1001F6B58();
  v35 = v34;

  if (sub_1000C66A0())
  {

    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1001F77B8(21);

    v61 = 0xD000000000000013;
    v62 = 0x8000000100225150;
    v63._countAndFlagsBits = v33;
    v63._object = v35;
    sub_1001F6CA8(v63);

    LOBYTE(a1) = 0;
    v22 = v61;
    v6 = v62;
LABEL_25:
    v40 = v51;
    v38 = v58;
    goto LABEL_26;
  }

  sub_1000C5464(3);
  if ((v36 & 1) == 0)
  {

    v41 = v53;
    sub_1001F6418();
    a1 = v55;
    (v50[0])(v55, v41, v57);
    v61 = 0x64656C65636E6143;
    v62 = 0xE900000000000020;
    v42 = sub_1001F6478().super.isa;
    v43 = [v30 stringFromDate:v42];

    v44 = sub_1001F6B58();
    v46 = v45;

    v64._countAndFlagsBits = v44;
    v64._object = v46;
    sub_1001F6CA8(v64);

    v22 = v61;
    v6 = v62;
    (*(v56 + 8))(a1, v57);
    LOBYTE(a1) = 1;
    goto LABEL_25;
  }

  v37 = v54;
  sub_1001F64F8();
  v38 = v58;
  v39 = sub_1001F6488();
  (*(v56 + 8))(v37, v57);
  v40 = v51;
  if (v39)
  {
    sub_10005A4C4(0x2073657269707845);

    LOBYTE(a1) = 0;
    v22 = v61;
    v6 = v62;
  }

  else
  {
    sub_10005A4C4(0x2064657269707845);

    v22 = v61;
    v6 = v62;
    LOBYTE(a1) = 1;
  }

LABEL_26:
  v47 = v5[7];

  v48 = sub_1000E087C(v47);

  if (v48)
  {
    v23 = *(v48 + 32);
    v19 = *(v48 + 40);
  }

  else
  {
    v23 = sub_1001E8450();
    v19 = v49;
  }

  (*(v56 + 8))(v38, v57);
  a4 = v40[2];
  v10 = v40[3];
  v5 = v40[5];
  i = v40[6];

LABEL_30:
  *a5 = a4;
  *(a5 + 8) = v10;
  *(a5 + 16) = v5;
  *(a5 + 24) = i;
  *(a5 + 32) = v23;
  *(a5 + 40) = v19;
  *(a5 + 48) = v22;
  *(a5 + 56) = v6;
  *(a5 + 64) = a1;
}

uint64_t sub_10005A310()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005A360(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10005A3A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005A400(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10005A440(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10005A4C4(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = 0xE800000000000000;
  v5._countAndFlagsBits = v2;
  v5._object = v1;

  sub_1001F6CA8(v5);
}

void sub_10005A4E8()
{

  sub_1000330CC();
}

_DWORD *sub_10005A508()
{
  type metadata accessor for UnfairLock();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *(v0 + 16) = result;
  *result = 0;
  off_1002AF690 = v0;
  return result;
}

unint64_t sub_10005A558(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = result;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            sub_10005B084();
            while (1)
            {
              sub_100027240();
              if (!v9 && v8)
              {
                break;
              }

              sub_10005B078();
              if (!v9)
              {
                break;
              }

              sub_10005B068();
              if (v8)
              {
                break;
              }

              sub_10002727C();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_82:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v6 = 0;
          while (1)
          {
            sub_100027240();
            if (!v9 && v8)
            {
              break;
            }

            sub_10005B078();
            if (!v9)
            {
              break;
            }

            sub_10005B068();
            if (v8)
            {
              break;
            }

            sub_10002727C();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          sub_10005B084();
          while (1)
          {
            sub_100027240();
            if (!v9 && v8)
            {
              break;
            }

            sub_10005B078();
            if (!v9)
            {
              break;
            }

            v8 = 10 * v6 >= v12;
            v6 = 10 * v6 - v12;
            if (!v8)
            {
              break;
            }

            sub_10002727C();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1001F7858();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v6 = 0;
            if (result)
            {
              while (1)
              {
                sub_100027240();
                if (!v9 && v8)
                {
                  goto LABEL_71;
                }

                sub_10005B078();
                if (!v9)
                {
                  goto LABEL_71;
                }

                sub_10005B068();
                if (v8)
                {
                  goto LABEL_71;
                }

                sub_10002727C();
                if (v9)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v7 != 45)
      {
        if (v4)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v13 = *result - 48;
              if (v13 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_71;
              }

              v8 = __CFADD__(10 * v6, v13);
              v6 = 10 * v6 + v13;
              if (v8)
              {
                goto LABEL_71;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_71:
        v6 = 0;
        v11 = 1;
        goto LABEL_72;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              sub_100027240();
              if (!v9 && v8)
              {
                goto LABEL_71;
              }

              sub_10005B078();
              if (!v9)
              {
                goto LABEL_71;
              }

              v8 = 10 * v6 >= v10;
              v6 = 10 * v6 - v10;
              if (!v8)
              {
                goto LABEL_71;
              }

              sub_10002727C();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_61:
          v11 = 0;
LABEL_72:
          v14 = v11;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v6 = sub_1001EE478(v6, a2, 10);
  v14 = v15;

LABEL_73:
  if (v14)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10005A7DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1001F7EA8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10005A898(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10005A8C0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_1000183C4(&qword_1002AF6B0, &qword_100203C40);
  sub_10001A278();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_10005AD60();
  sub_1001F8198();
  v17 = 0;
  sub_1001F7D88();
  if (!v4)
  {
    v16 = v14 & 1;
    v15 = 1;
    sub_10005AE08();
    sub_1001F7DC8();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_10005AA44(void *a1)
{
  sub_1000183C4(&qword_1002AF698, &qword_100203C38);
  sub_10001A278();
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_10001AE68(a1, a1[3]);
  sub_10005AD60();
  sub_1001F8178();
  if (!v1)
  {
    v4 = sub_1001F7C78();
    sub_10005ADB4();
    sub_1001F7CB8();
    v6 = sub_10001E72C();
    v7(v6);
  }

  sub_100019CCC(a1);
  return v4;
}

Swift::Int sub_10005AC10()
{
  v1 = *v0;
  sub_1001F8068();
  sub_1001F8088(v1);
  return sub_1001F80D8();
}

uint64_t sub_10005AC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005A7DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005AC84(uint64_t a1)
{
  v2 = sub_10005AD60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005ACC0(uint64_t a1)
{
  v2 = sub_10005AD60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005ACFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005AA44(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_10005AD60()
{
  result = qword_1002AF6A0;
  if (!qword_1002AF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6A0);
  }

  return result;
}

unint64_t sub_10005ADB4()
{
  result = qword_1002AF6A8;
  if (!qword_1002AF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6A8);
  }

  return result;
}

unint64_t sub_10005AE08()
{
  result = qword_1002AF6B8;
  if (!qword_1002AF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RefundRequestRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10005AF28);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10005AF64()
{
  result = qword_1002AF6C0;
  if (!qword_1002AF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6C0);
  }

  return result;
}

unint64_t sub_10005AFBC()
{
  result = qword_1002AF6C8;
  if (!qword_1002AF6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6C8);
  }

  return result;
}

unint64_t sub_10005B014()
{
  result = qword_1002AF6D0;
  if (!qword_1002AF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF6D0);
  }

  return result;
}

void sub_10005B098(uint64_t a1)
{
  v1 = sub_1001F10F8(0x444970756F7267, 0xE700000000000000, *(a1 + 96));
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_1001EA8E8();
  v6 = sub_1001F10F8(7368801, 0xE300000000000000, v5);
  v8 = v7;

  if (!v8)
  {

LABEL_5:
    v9 = type metadata accessor for HTTPResponseHead._Storage();
    v10 = sub_100021728(v9);
    sub_10005C340(v10);
    sub_10002170C(v11, 21);
    v15 = 0uLL;
    goto LABEL_6;
  }

  sub_10005B280(v3, v4, v6, v8, v16);

  sub_1001F1864(v16, &v17);
  v12 = type metadata accessor for HTTPResponseHead._Storage();
  v13 = sub_100021728(v12);
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_10002170C(v13, 3);
LABEL_6:
  sub_10005C378(_swiftEmptyArrayStorage, v14, v15);
}

void sub_10005B280(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v114 = a5;
  sub_1001F60C8();
  sub_10001A278();
  v111 = v11;
  v112 = v10;
  __chkstk_darwin(v10);
  v110 = &v101[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = sub_1001F6508();
  sub_10001A278();
  v131 = v13;
  __chkstk_darwin(v14);
  v113 = &v101[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v101[-v17];
  __chkstk_darwin(v19);
  v117 = &v101[-v20];
  v21 = *(v5 + 112);
  v115 = v5;
  sub_10001AE68((v5 + 88), v21);
  sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FE9E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v116 = a3;
  v23 = a4;
  sub_10008B3C8();
  v25 = v24;
  swift_setDeallocating();
  sub_1001E56B4();
  if (!sub_10013B560())
  {

    v33 = sub_100021578();
    v34 = sub_1000276A0(&type metadata for HTTPResponseStatus, v33);
    sub_10005C354(v34, v35);
    return;
  }

  sub_1001C19A8();
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = sub_1001F7808();
  }

  else
  {
    v26 = *(v25 + 32);
  }

  v27 = v26;
  v28 = v116;

  sub_1000C5464(4);
  if (v29)
  {
    v30 = sub_100021578();
    v31 = sub_1000276A0(&type metadata for HTTPResponseStatus, v30);
    sub_10005C354(v31, v32);

    return;
  }

  sub_1001F6418();
  (*(v131 + 32))(v117, v18, v118);
  sub_100026064(v115 + 48, &v121);
  v36 = sub_10001AE68(&v121, v124);
  v37 = sub_1000C1570(v36);
  if (!v38)
  {
    v37 = sub_1000BFC14();
  }

  v39 = v37;
  v40 = v38;
  v41 = v23;
  sub_1000795A8(v28, v23);
  v42 = sub_1000EE5B8(v39, v40);

  if (!v42)
  {
    sub_100019CCC(&v121);
    v56 = sub_100021578();
    v57 = sub_1000276A0(&type metadata for HTTPResponseStatus, v56);
    sub_10005C354(v57, v58);

    (*(v131 + 8))(v117, v118);
    return;
  }

  v109 = v27;
  sub_100019CCC(&v121);
  v43 = v115;
  sub_10001AE68((v115 + 48), *(v115 + 72));
  sub_10007992C();
  sub_10001AE68((v43 + 48), *(v43 + 72));
  sub_10007A340();
  v45 = *(v42 + 16);
  v44 = *(v42 + 24);

  v46 = sub_10004B628(v45, v44, v127, v125);
  v107 = v47;
  v108 = v46;
  sub_10001C7E4(v127);

  v48 = *(v42 + 176);
  v115 = v42;
  LOBYTE(v44) = *(v42 + 184);
  v49 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v49 setUnitsStyle:3];
  [v49 setAllowedUnits:4124];
  v50 = v110;
  sub_1001EC818(v48, v44);
  isa = sub_1001F6098().super.isa;
  (*(v111 + 8))(v50, v112);
  v52 = [v49 stringFromDateComponents:isa];

  if (v52)
  {
    v53 = sub_1001F6B58();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0xE000000000000000;
  }

  v59 = v113;
  if (v48 == 1)
  {
    v121 = v53;
    v122 = v55;
    v119 = 32;
    v120 = 0xE100000000000000;
    sub_10001C790();
    v60 = sub_1001F75B8();

    v121 = sub_10005E8A0(1, v60);
    v122 = v61;
    v123 = v62;
    v124 = v63;
    sub_1000183C4(&qword_1002AF8A8, &unk_100203E00);
    sub_10005C2DC();
    sub_1001F6A68();
    swift_unknownObjectRelease();
  }

  sub_1001F64E8();
  v64 = sub_1000C18DC();
  v65 = *(v131 + 8);
  v131 += 8;
  v113 = v65;
  v66 = (v65)(v59, v118);
  v67 = v115;
  if (v64)
  {
    v68 = sub_1000C1570(v66);
    v111 = v69;
    v112 = v68;
  }

  else
  {
    v111 = 0;
    v112 = 0;
  }

  v70 = *(v67 + 56);

  v71 = sub_1000E087C(v70);
  v130 = v125[0];
  sub_10001C838(&v130);
  v129 = v125[1];
  sub_10001C838(&v129);
  v128 = v126;
  sub_10001C88C(&v128);

  if (v71)
  {
    v72 = *(v71 + 40);
    v110 = *(v71 + 32);
    v106 = v72;
  }

  else
  {
    v110 = sub_1001E8450();
    v106 = v73;
  }

  v121 = v108;
  v122 = v107;
  v132._countAndFlagsBits = 47;
  v132._object = 0xE100000000000000;
  sub_1001F6CA8(v132);
  v74 = sub_1001F6BB8();
  v76 = v75;

  v133._countAndFlagsBits = v74;
  v133._object = v76;
  sub_1001F6CA8(v133);

  v107 = v122;
  v108 = v121;
  if (qword_1002AC410 != -1)
  {
    swift_once();
  }

  v77 = qword_1002AE9E8;
  v78 = sub_1001F6478().super.isa;
  v79 = [v77 stringFromDate:v78];

  v80 = sub_1001F6B58();
  v104 = v81;
  v105 = v80;

  v121 = 0;
  v122 = 0xE000000000000000;
  sub_1001F77B8(40);

  v121 = 0x797469746E617571;
  v122 = 0xEF3D64696226313DLL;
  v134._countAndFlagsBits = v116;
  v134._object = v41;
  sub_1001F6CA8(v134);
  v135._object = 0x8000000100225210;
  v135._countAndFlagsBits = 0xD000000000000017;
  sub_1001F6CA8(v135);
  v116 = v121;
  v103 = v122;
  v83 = sub_1000C1570(v82);
  v85 = v84;
  v86 = sub_1000BFC14();
  if (v85)
  {
    if (v83 == v86 && v85 == v87)
    {

      v102 = 0;
      goto LABEL_33;
    }

    v89 = sub_1001F7EA8();

    v90 = v89 ^ 1;
  }

  else
  {

    v90 = 1;
  }

  v102 = v90;
LABEL_33:
  sub_1001F64F8();
  v91 = v117;
  v92 = sub_1001F6498();
  v93 = v118;
  v94 = v113;
  (v113)(v59, v118);
  v95 = v109;
  v121 = sub_1000C1A68();
  v96 = sub_1001F7E28();
  v98 = v97;

  v94(v91, v93);
  v99 = v102 & 1;
  v100 = v114;
  *v114 = v112;
  v100[1] = v111;
  v100[2] = v110;
  v100[3] = v106;
  v100[4] = v108;
  v100[5] = v107;
  v100[6] = v105;
  v100[7] = v104;
  v100[8] = v116;
  v100[9] = v103;
  *(v100 + 80) = v99;
  *(v100 + 81) = v92 & 1;
  *(v100 + 82) = v121;
  *(v100 + 43) = WORD2(v121);
  v100[11] = v96;
  v100[12] = v98;
}

void sub_10005BBE0()
{
  sub_1001F0528();
  if (v1)
  {
    sub_10005BD54(v0, v1, v9);

    sub_1001F1864(v9, &v10);
    v4 = type metadata accessor for HTTPResponseHead._Storage();
    v5 = sub_100021728(v4);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    sub_10002170C(v5, 3);
  }

  else
  {
    v2 = type metadata accessor for HTTPResponseHead._Storage();
    v3 = sub_100021728(v2);
    sub_10005C340(v3);
    sub_10002170C(v8, 21);
    v7 = 0uLL;
  }

  sub_10005C378(_swiftEmptyArrayStorage, v6, v7);
}

void sub_10005BD54(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = a2;
  v9 = HIBYTE(a2) & 0xF;
  v10 = a1 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_89;
  }

  v12 = v4;
  if ((v7 & 0x1000000000000000) != 0)
  {

    v6 = sub_1001EE478(a1, v7, 10);
    v39 = v38;

    if (v39)
    {
      goto LABEL_89;
    }

    goto LABEL_73;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    if (a1 == 43)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          sub_10005C3D0();
          while (1)
          {
            sub_100027240();
            if (!v17 && v16)
            {
              break;
            }

            sub_100027270();
            if (!v17)
            {
              break;
            }

            sub_100027250();
            if (v16)
            {
              break;
            }

            sub_10002727C();
            if (v17)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_94:
      __break(1u);
LABEL_95:
      v28 = sub_1001F7808();
      goto LABEL_78;
    }

    if (a1 != 45)
    {
      if (v9)
      {
        v6 = 0;
        while (1)
        {
          sub_100027240();
          if (!v17 && v16)
          {
            break;
          }

          sub_100027270();
          if (!v17)
          {
            break;
          }

          sub_100027250();
          if (v16)
          {
            break;
          }

          sub_10002727C();
          if (v17)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        sub_10005C3D0();
        while (1)
        {
          sub_100027240();
          if (!v17 && v16)
          {
            break;
          }

          sub_100027270();
          if (!v17)
          {
            break;
          }

          v16 = 10 * v6 >= v20;
          v6 = 10 * v6 - v20;
          if (!v16)
          {
            break;
          }

          sub_10002727C();
          if (v17)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_92;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v14 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v14 = sub_1001F7858();
  }

  v15 = *v14;
  if (v15 == 43)
  {
    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v6 = 0;
        if (v14)
        {
          while (1)
          {
            sub_100027240();
            if (!v17 && v16)
            {
              goto LABEL_71;
            }

            sub_100027270();
            if (!v17)
            {
              goto LABEL_71;
            }

            sub_100027250();
            if (v16)
            {
              goto LABEL_71;
            }

            sub_10002727C();
            if (v17)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    goto LABEL_93;
  }

  if (v15 == 45)
  {
    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v6 = 0;
        if (v14)
        {
          while (1)
          {
            sub_100027240();
            if (!v17 && v16)
            {
              goto LABEL_71;
            }

            sub_100027270();
            if (!v17)
            {
              goto LABEL_71;
            }

            v16 = 10 * v6 >= v18;
            v6 = 10 * v6 - v18;
            if (!v16)
            {
              goto LABEL_71;
            }

            sub_10002727C();
            if (v17)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_61:
        v19 = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (v10)
  {
    v6 = 0;
    if (v14)
    {
      while (1)
      {
        v21 = *v14 - 48;
        if (v21 > 9)
        {
          goto LABEL_71;
        }

        if (!is_mul_ok(v6, 0xAuLL))
        {
          goto LABEL_71;
        }

        v16 = __CFADD__(10 * v6, v21);
        v6 = 10 * v6 + v21;
        if (v16)
        {
          goto LABEL_71;
        }

        ++v14;
        if (!--v10)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  v6 = 0;
  v19 = 1;
LABEL_72:
  v46 = v19;
  if (v19)
  {
LABEL_89:
    v40 = sub_100021578();
    v41 = sub_1000276A0(&type metadata for HTTPResponseStatus, v40);
    sub_10005C354(v41, v42);
    return;
  }

LABEL_73:
  sub_10001AE68((v3 + 88), *(v3 + 112));
  v22 = sub_10008E790(v6);
  if (!v22)
  {
    goto LABEL_89;
  }

  v7 = v22;
  v23 = sub_1000C5388(15);
  if (!v24)
  {
    v30 = sub_100021578();
    sub_1000276A0(&type metadata for HTTPResponseStatus, v30);
    *v31 = 0;
    v31[1] = 0;
    v31[2] = 21;
    swift_willThrow();

    return;
  }

  v6 = v23;
  v5 = v24;
  __dst = a3;
  v44 = v12;
  sub_10001AE68((v3 + 88), *(v3 + 112));
  sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FE9E0;
  *(inited + 32) = v6;
  *(inited + 40) = v5;

  sub_1000BFC24();
  sub_10008B3C8();
  v27 = v26;

  swift_setDeallocating();
  sub_1001E56B4();
  if (!sub_10013B560())
  {

    v29 = v7;
    goto LABEL_81;
  }

  sub_1001C19A8();
  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_95;
  }

  v28 = *(v27 + 32);
LABEL_78:
  v29 = v28;

LABEL_81:
  sub_1000C1ACC(0, 0);
  if (sub_1000C152C() != 5)
  {
    sub_1000C1B88(2u);
  }

  sub_10001AE68((v3 + 88), *(v3 + 112));
  v32 = sub_10008EA08(v29, 1);
  if (v32 == 4)
  {
    v33 = sub_1000BFC24();
    sub_10005B280(v6, v5, v33, v34, __src);

    if (!v44)
    {
      memcpy(__dst, __src, 0x68uLL);
    }
  }

  else
  {
    v35 = v32;

    v36 = sub_10005C288();
    sub_1000276A0(&type metadata for TransactionError, v36);
    *v37 = v35;
    swift_willThrow();
  }
}

unint64_t sub_10005C288()
{
  result = qword_1002AF8A0;
  if (!qword_1002AF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8A0);
  }

  return result;
}

unint64_t sub_10005C2DC()
{
  result = qword_1002AF8B0;
  if (!qword_1002AF8B0)
  {
    sub_100019BC4(&qword_1002AF8A8, &unk_100203E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8B0);
  }

  return result;
}

double sub_10005C340(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10005C354(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 25;

  return swift_willThrow();
}

void sub_10005C378(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *v3 = v4;
  *(v3 + 8) = a1;
  *(v3 + 16) = 2;
  *(v3 + 24) = a2;
  *(v3 + 40) = a3;
  *(v3 + 56) = v5;
  *(v3 + 62) = BYTE6(v5);
  *(v3 + 60) = WORD2(v5);
}

uint64_t sub_10005C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  *(a1 + 16) = a11;
  *(a1 + 32) = v13;
  *(a1 + 40) = 65537;
}

uint64_t sub_10005C3E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10005C46C(void *a1, uint64_t a2)
{
  v3 = sub_1000183C4(&qword_1002AF948, &qword_100204218);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v4);
  sub_10005DBB4();
  sub_10001AE68(a1, a1[3]);
  v5 = sub_10005D944();
  sub_10005DC04(&type metadata for iOSIAP.CodingKeys, v6, v5);
  sub_1001F7D48();
  v7 = sub_10005DBF8();
  return v8(v7, v3);
}

void *sub_10005C580(void *a1)
{
  sub_1000183C4(&qword_1002AF938, &qword_100204210);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  v4 = sub_10001AE68(a1, a1[3]);
  v5 = sub_10005D944();
  sub_10005DBD4(&type metadata for iOSIAP.CodingKeys, v6, v5);
  if (!v1)
  {
    v4 = sub_1001F7C38();
    v8 = sub_10005DBA4();
    v9(v8);
  }

  sub_100019CCC(a1);
  return v4;
}

uint64_t sub_10005C6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005C3E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10005C6F0(uint64_t a1)
{
  v2 = sub_10005D944();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005C72C(uint64_t a1)
{
  v2 = sub_10005D944();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005C768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005C580(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10005C7BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x706169736F69 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1001F7EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10005C844(void *a1, uint64_t a2, __int16 a3)
{
  v4 = sub_1000183C4(&qword_1002AF910, &qword_100204090);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v5);
  sub_10005DBB4();
  sub_10001AE68(a1, a1[3]);
  v6 = sub_10005D6D0();
  sub_10005DC04(&type metadata for AssetFlavors.CodingKeys, v7, v6);
  sub_10005D778();
  sub_1001F7D58();
  v8 = sub_10005DBF8();
  return v9(v8, v4);
}

void *sub_10005C978(void *a1)
{
  sub_1000183C4(&qword_1002AF8F8, &qword_100204088);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  v4 = sub_10001AE68(a1, a1[3]);
  v5 = sub_10005D6D0();
  sub_10005DBD4(&type metadata for AssetFlavors.CodingKeys, v6, v5);
  if (v1)
  {
    sub_100019CCC(a1);
  }

  else
  {
    sub_10005D724();
    sub_1001F7C48();
    v7 = sub_10005DBA4();
    v8(v7);
    v4 = v10;
    sub_100019CCC(a1);
  }

  return v4;
}

uint64_t sub_10005CAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005C7BC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10005CB14(uint64_t a1)
{
  v2 = sub_10005D6D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005CB50(uint64_t a1)
{
  v2 = sub_10005D6D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005CB8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005C978(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 9) = HIBYTE(v5) & 1;
  }

  return result;
}

unint64_t sub_10005CBF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A8E0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005CC40(char a1)
{
  result = 0x6563697270;
  switch(a1)
  {
    case 1:
      result = 0x69642D6563697270;
      break;
    case 2:
      result = 1702521203;
      break;
    case 3:
      result = 0x6C662D7465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005CCE0(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002AF8D0, &qword_100203E68);
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_10001AE68(a1, a1[3]);
  sub_10005D278();
  sub_1001F8198();
  v16 = 0;
  sub_10005DBC4();
  sub_1001F7D38();
  if (!v2)
  {
    v15 = 1;
    sub_10005DBC4();
    sub_1001F7D18();
    v14 = 2;
    sub_10005DBC4();
    sub_1001F7D48();
    *v13 = *(v3 + 48);
    *&v13[7] = *(v3 + 55);
    v12[15] = 3;
    sub_10005D320();
    sub_1001F7D58();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10005CE94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002AF8B8, &qword_100203E60);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v6);
  sub_10005DBB4();
  sub_10001AE68(a1, a1[3]);
  sub_10005D278();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  sub_10005DB90();
  v7 = sub_1001F7C28();
  v9 = v8;
  sub_10005DB90();
  v18 = sub_1001F7C08();
  v19 = v10;
  LOBYTE(v20) = 2;
  sub_10005DB90();
  v11 = sub_1001F7C38();
  v16 = v12;
  v17 = v11;
  sub_10005D2CC();
  sub_1001F7C48();
  v13 = sub_10005DBF8();
  v14(v13, v5);
  result = sub_100019CCC(a1);
  *a2 = v7;
  *(a2 + 8) = v9 & 1;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17;
  *(a2 + 40) = v16 & 1;
  *(a2 + 48) = v20;
  *(a2 + 56) = v21;
  *(a2 + 58) = v22;
  return result;
}

unint64_t sub_10005D0E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005CBF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10005D118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005CC40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10005D14C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005CBF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005D174@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.unexpectedMessageBody.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005D19C(uint64_t a1)
{
  v2 = sub_10005D278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005D1D8(uint64_t a1)
{
  v2 = sub_10005D278();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005D214@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005CE94(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 11);
    *(a2 + 43) = *(v7 + 11);
  }

  return result;
}

unint64_t sub_10005D278()
{
  result = qword_1002AF8C0;
  if (!qword_1002AF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8C0);
  }

  return result;
}

unint64_t sub_10005D2CC()
{
  result = qword_1002AF8C8;
  if (!qword_1002AF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8C8);
  }

  return result;
}

unint64_t sub_10005D320()
{
  result = qword_1002AF8D8;
  if (!qword_1002AF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8D8);
  }

  return result;
}

uint64_t sub_10005D374(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10005D388(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005D3A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 10) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for StoreOffer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10005D4ACLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 sub_10005D4E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10005D500(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 59))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005D554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 59) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10005D5CC()
{
  result = qword_1002AF8E0;
  if (!qword_1002AF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8E0);
  }

  return result;
}

unint64_t sub_10005D624()
{
  result = qword_1002AF8E8;
  if (!qword_1002AF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8E8);
  }

  return result;
}

unint64_t sub_10005D67C()
{
  result = qword_1002AF8F0;
  if (!qword_1002AF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF8F0);
  }

  return result;
}

unint64_t sub_10005D6D0()
{
  result = qword_1002AF900;
  if (!qword_1002AF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF900);
  }

  return result;
}

unint64_t sub_10005D724()
{
  result = qword_1002AF908;
  if (!qword_1002AF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF908);
  }

  return result;
}

unint64_t sub_10005D778()
{
  result = qword_1002AF918;
  if (!qword_1002AF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF918);
  }

  return result;
}

uint64_t sub_10005D7E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005D804(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_10005D840()
{
  result = qword_1002AF920;
  if (!qword_1002AF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF920);
  }

  return result;
}

unint64_t sub_10005D898()
{
  result = qword_1002AF928;
  if (!qword_1002AF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF928);
  }

  return result;
}

unint64_t sub_10005D8F0()
{
  result = qword_1002AF930;
  if (!qword_1002AF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF930);
  }

  return result;
}

unint64_t sub_10005D944()
{
  result = qword_1002AF940;
  if (!qword_1002AF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF940);
  }

  return result;
}

_BYTE *sub_10005D998(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10005DA34);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10005DA70()
{
  result = qword_1002AF950;
  if (!qword_1002AF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF950);
  }

  return result;
}

unint64_t sub_10005DAC8()
{
  result = qword_1002AF958;
  if (!qword_1002AF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF958);
  }

  return result;
}

unint64_t sub_10005DB20()
{
  result = qword_1002AF960;
  if (!qword_1002AF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF960);
  }

  return result;
}

uint64_t sub_10005DBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F8178();
}

uint64_t sub_10005DC04(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F8198();
}

unint64_t sub_10005DC24(uint64_t a1, void *a2)
{
  sub_1001F77B8(24);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_1001F6CA8(v5);
  return 0xD000000000000016;
}

void *sub_10005DCA4()
{
  result = v0;
  v0[2] = 0xD000000000000011;
  v0[3] = 0x8000000100225270;
  v0[4] = 0;
  v0[5] = 0;
  return result;
}

__n128 sub_10005DCCC@<Q0>(uint64_t a2@<X8>)
{
  v4 = sub_1001EA8E8();
  v5 = sub_1001F10F8(6580578, 0xE300000000000000, v4);
  v7 = v6;

  if (v7)
  {
    if (qword_1002AC428 != -1)
    {
      swift_once();
    }

    v8 = *(off_1002AF690 + 2);
    os_unfair_lock_lock(v8);
    v9 = sub_10005DEA4(v5, v7);
    v11 = v10;
    sub_100040C5C(v9, v10);
    sub_1000B77D0(v9, v11, 0x706A2F6567616D69, 0xE900000000000067, v37);
    sub_10005E308(v12, v13, v14, v15, v16, v17, v18, v19, v30, v32, v33, v35, v36, *v37);
    sub_10003A36C(v9, v11);
    type metadata accessor for HTTPResponseHead._Storage();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 3;
    *(v20 + 40) = 65537;
    os_unfair_lock_unlock(v8);
  }

  else
  {
    sub_1000B738C(0xD000000000000012, 0x80000001002252B0, 6, v37);
    sub_10005E308(v21, v22, v23, v24, v25, v26, v27, v28, v30, v32, v33, v35, v36, *v37);
    type metadata accessor for HTTPResponseHead._Storage();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 21;
    *(v20 + 40) = 65537;
  }

  *a2 = v20;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = v34;
  *(a2 + 24) = v31;
  *(a2 + 40) = v34;
  *(a2 + 56) = v2;
  *(a2 + 62) = BYTE6(v2);
  *(a2 + 60) = WORD2(v2);
  return result;
}

__CFData *sub_10005DEA4(uint64_t a1, uint64_t a2)
{
  sub_100019C0C(0, &qword_1002AFA20, ISIcon_ptr);

  v4 = sub_10005E058(a1, a2);
  v5 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorLargeHomeScreen];
  sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001FF8A0;
  *(v6 + 32) = v5;
  sub_100019C0C(0, &qword_1002AFA28, ISImageDescriptor_ptr);
  v7 = v5;
  isa = sub_1001F6F18().super.isa;

  [v4 prepareImagesForImageDescriptors:isa];

  v9 = [v4 imageForDescriptor:v7];
  v10 = [v9 CGImage];

  if (v10)
  {
    v11 = v10;
    v10 = sub_10005E0CC();
  }

  else
  {
  }

  return v10;
}

id sub_10005E058(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1001F6B48();

  v4 = [v2 initWithBundleIdentifier:v3];

  return v4;
}

__CFData *sub_10005E0CC()
{
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v2 = sub_1001F6B48();
    v3 = CGImageDestinationCreateWithData(Mutable, v2, 1uLL, 0);

    if (v3)
    {
      CGImageDestinationAddImage(v3, v0, 0);
      if (CGImageDestinationFinalize(v3))
      {
        v4 = Mutable;
        Mutable = sub_1001F63C8();

        return Mutable;
      }
    }

    else
    {
    }

    return 0;
  }

  return Mutable;
}

void *sub_10005E1A8()
{

  sub_10005E2F4(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t sub_10005E1D0()
{
  sub_10005E1A8();

  return swift_deallocClassInstance();
}

uint64_t sub_10005E228()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_10005E25C()
{
  v1 = *(*v0 + 32);
  sub_10005E2E0(v1, *(*v0 + 40));
  return v1;
}

double sub_10005E294@<D0>(_OWORD *a2@<X8>)
{
  sub_10005DCCC(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  a2[2] = v6[0];
  result = *(v6 + 15);
  *(a2 + 47) = *(v6 + 15);
  return result;
}

uint64_t sub_10005E2E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x22)
  {
  }

  return result;
}

uint64_t sub_10005E2F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x22)
  {
  }

  return result;
}

uint64_t sub_10005E32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  objc_allocWithZone(LSApplicationRecord);

  v9 = sub_10005E4AC(a1, a2, 0);
  v12 = v9;
  if (v9)
  {
    v13 = [v9 deviceIdentifierForVendor];
    if (v13)
    {
      v14 = v13;
      sub_1001F6558();

      v15 = sub_1001F6578();
      v16 = 0;
    }

    else
    {

      v15 = sub_1001F6578();
      v16 = 1;
    }

    sub_100018460(v8, v16, 1, v15);
    return sub_10005E588(v8, a3);
  }

  else
  {
    v10 = sub_1001F6578();

    return sub_100018460(a3, 1, 1, v10);
  }
}

id sub_10005E4AC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1001F6B48();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1001F61B8();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_10005E588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static ByteBuffer.== infix(_:_:)(_BOOL8 result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a2;
  v7 = (HIDWORD(a2) - a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = a5;
  if (HIDWORD(a5) < a5)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v7 != HIDWORD(a5) - a5)
  {
    return 0;
  }

  v9 = BYTE6(a6);
  v11 = BYTE6(a3);
  v12 = result;
  v13 = HIDWORD(a3);
  v14 = HIDWORD(a6);
  if (a3 == a6 && WORD2(a3) == WORD2(a6) && BYTE6(a3) == BYTE6(a6) && result == a4)
  {
    return 1;
  }

  sub_100047940();
  swift_beginAccess();
  v16 = (*(v12 + 24) + (v11 | (v13 << 8)) + v6);
  sub_100047940();
  swift_beginAccess();
  return memcmp(v16, (*(a4 + 24) + (v9 | (v14 << 8)) + v8), v7) == 0;
}

uint64_t ByteBuffer.readableBytes.getter(uint64_t a1, uint64_t a2)
{
  result = (HIDWORD(a2) - a2);
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else if (*(v1 + 12) >= v4)
  {
    *(v1 + 8) = v4;
    return;
  }

  __break(1u);
}

unint64_t sub_10005E758(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1001F6C68();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1000621E4();
      sub_1001F6DB8();
      sub_100062164();
      return sub_1000621D0();
    }
  }

  __break(1u);
  return result;
}

void sub_10005E808(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100062128();
    v5 = v4 - v3;
    sub_1000621E4();
    v10 = sub_10007DFA0(v6, v7, v8, v9);
    if (v2 && v10 < v2)
    {
      v11 = v5;
      if (!v1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1000621E4();
      v11 = sub_100180764(v12, v13, v14, v15);
      if (!v1)
      {
        v5 = 0;
      }
    }

    if (v5 >= v11)
    {
LABEL_9:
      sub_1000621E4();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10005E8CC(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      a4();
      sub_100062164();
      return sub_1000621D0();
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ByteBuffer.clear()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10005EFF0(*(v3 + 16));
    sub_10006226C();
    sub_100062228();
  }

  sub_100061FD4();
  v1[1] = 0;
}

void ByteBufferAllocator.buffer(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    sub_100061FE8(&qword_1002AC430);
    goto LABEL_5;
  }

  if (a1)
  {
    sub_10006221C();
    type metadata accessor for ByteBuffer._Storage();
    static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(a1, v6, v5, a4, a5);
    sub_100062240();
    return;
  }

  if (qword_1002AC430 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
}

uint64_t _ByteBufferSlice._begin.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 6) = BYTE2(result);
  return result;
}

uint64_t _ByteBufferSlice.count.getter(unint64_t a1)
{
  v1 = (a1 >> 24) & 0xFFFF00 | BYTE6(a1);
  v2 = a1 >= v1;
  result = a1 - v1;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t _ByteBufferSlice.description.getter()
{
  sub_1001F77B8(28);

  v1._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 3943982;
  v2._object = 0xE300000000000000;
  sub_1001F6CA8(v2);
  v3._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v3);

  v4._countAndFlagsBits = 32032;
  v4._object = 0xE200000000000000;
  sub_1001F6CA8(v4);
  return 0xD000000000000013;
}

void *sub_10005EC5C(void *__dst, const void *__src, size_t __len)
{
  if ((__len & 0x8000000000000000) == 0)
  {
    return memmove(__dst, __src, __len);
  }

  __break(1u);
  return __dst;
}

uint64_t *ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor()
{
  if (qword_1002AC430 != -1)
  {
    sub_100061FE8(&qword_1002AC430);
  }

  return &static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
}

uint64_t sub_10005ECAC(uint64_t a1)
{
  type metadata accessor for ByteBuffer._Storage();
  result = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(0, j_j__malloc, j_j__realloc, j_j__free, sub_10005EC68);
  v2 = *(result + 16);
  static ByteBufferAllocator.zeroCapacityWithDefaultAllocator = result;
  qword_1002E6088 = 0;
  dword_1002E6090 = v2;
  word_1002E6094 = 0;
  byte_1002E6096 = 0;
  return result;
}

uint64_t static ByteBufferAllocator.zeroCapacityWithDefaultAllocator.getter()
{
  if (qword_1002AC430 != -1)
  {
    sub_100061FE8(&qword_1002AC430);
  }
}

uint64_t ByteBuffer._slice.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = WORD2(result);
  *(v1 + 22) = BYTE6(result);
  return result;
}

uint64_t ByteBuffer._Storage.bytes.getter()
{
  sub_100061FC4();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t ByteBuffer._Storage.bytes.setter(uint64_t a1)
{
  result = sub_10006224C(a1);
  *(v1 + 24) = a1;
  return result;
}

uint64_t ByteBuffer._Storage.__allocating_init(bytesNoCopy:capacity:allocator:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000620A0();
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  return result;
}

uint64_t ByteBuffer._Storage.init(bytesNoCopy:capacity:allocator:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t sub_10005EF78()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  return v1(*(v0 + 24));
}

uint64_t ByteBuffer._Storage.__deallocating_deinit()
{
  sub_10005EF78();
  sub_1000620A0();

  return swift_deallocClassInstance();
}

uint64_t sub_10005EFF0(int a1)
{
  if (a1)
  {
    v2 = sub_1000DBF88(a1);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 32);
  result = v3(v2);
  if (result)
  {
    v5 = result;
    v6 = *(v1 + 56);
    result = swift_allocObject();
    *(result + 16) = v2;
    *(result + 24) = v5;
    *(result + 32) = v3;
    *(result + 40) = *(v1 + 40);
    *(result + 56) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer._Storage.reallocSlice(_:capacity:)(uint64_t a1, int a2)
{
  v4 = sub_10005EFF0(a2);
  v5 = *(v2 + 56);
  sub_100047940();
  swift_beginAccess();
  v6 = *(v4 + 24);
  sub_100047940();
  swift_beginAccess();
  v7 = *(v2 + 24) + a1;
  v8 = sub_10005F21C(a1);
  v5(v6, v7, v8);
  return v4;
}

uint64_t sub_10005F128()
{
  sub_10006214C();
  if (!sub_10000B9DC(v0, v1))
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    sub_10006214C();
    ++v2;
  }

  while (sub_10000BA0C(v4, v5));
  return v3;
}

uint64_t sub_10005F1C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (!a2)
  {
    v3 = 0;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result == -1 && v3 == 0x8000000000000000)
  {
    goto LABEL_12;
  }

  result = v3 / result;
  if (result < 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_10005F1F8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10005F21C(uint64_t a1)
{
  if (HIDWORD(a1) < a1)
  {
    return -(a1 - HIDWORD(a1));
  }

  else
  {
    return (HIDWORD(a1) - a1);
  }
}

Swift::Void __swiftcall ByteBuffer._Storage.reallocStorage(capacity:)(Swift::UInt32 capacity)
{
  v2 = sub_1000DBF88(capacity);
  v3 = v2;
  v4 = *(v1 + 40);
  sub_10006224C(v2);
  v5 = v4(*(v1 + 24), v3);
  if (v5)
  {
    *(v1 + 24) = v5;
    *(v1 + 16) = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10006221C();
  if (v9)
  {
    v10 = sub_1000DBF88(v9);
  }

  else
  {
    v10 = 0;
  }

  result = v6(v10);
  if (result)
  {
    v12 = result;
    sub_1000620A0();
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 24) = v12;
    *(result + 32) = v6;
    *(result + 40) = v5;
    *(result + 48) = a4;
    *(result + 56) = a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall ByteBuffer._Storage.dumpBytes(slice:offset:length:)(ASOctaneSupportXPCService::_ByteBufferSlice slice, Swift::Int offset, Swift::Int length)
{
  v4 = *&slice._begin._backing._1;
  v5 = *&slice._begin._backing._0;
  v6 = *&slice.upperBound;
  sub_100047940();
  v7 = swift_beginAccess();
  v9 = (v6 >> 24) & 0xFFFF00 | BYTE6(v6);
  v10 = v9 + v5;
  if (__OFADD__(v9, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10 + v4;
  if (__OFADD__(v10, v4))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 < v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 != v11)
  {
    if (v10 >= v11)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v12 = *(v3 + 16);
    while (v10 < v12)
    {
      ++v10;
      sub_100061AE8();
      sub_1001F6D88();
      v13 = sub_1001F6C38();
      v14 = v13 == 1;
      if (v13 == 1)
      {
        v15._countAndFlagsBits = 48;
      }

      else
      {
        v15._countAndFlagsBits = 0;
      }

      if (v14)
      {
        v16 = 0xE100000000000000;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v15._object = v16;
      sub_1001F6CA8(v15);

      v18._countAndFlagsBits = sub_1000620B0();
      sub_1001F6CA8(v18);

      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      sub_1001F6CA8(v19);

      if (!--v4)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_15:
  v20._countAndFlagsBits = 23840;
  v20._object = 0xE200000000000000;
  sub_1001F6CA8(v20);
  v7 = 91;
  v8 = 0xE100000000000000;
LABEL_21:
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

Swift::Void __swiftcall ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(Swift::UInt32 capacity, Swift::Bool resetIndices)
{
  v3 = v2;
  if (resetIndices)
  {
    v5 = *(v3 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 22) | (*(v3 + 20) << 8);
  v7 = v6 + v5;
  if (__CFADD__(v6, v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v3 + 16);
  v9 = v8 >= v6;
  v10 = v8 - v6;
  if (!v9)
  {
    goto LABEL_16;
  }

  if (__CFADD__(v7, v10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__CFADD__(v7, capacity))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = sub_10005F56C(v7 + v10, v8, v7 + capacity, _swiftEmptyArrayStorage);
  if (v11 < v7)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v7 | (v11 << 32), capacity);

  *v3 = v12;
  v13 = *(v3 + 8);
  v9 = v13 >= v5;
  v14 = v13 - v5;
  if (!v9)
  {
    goto LABEL_20;
  }

  *(v3 + 8) = v14;
  v15 = *(v3 + 12);
  v9 = v15 >= v5;
  v16 = v15 - v5;
  if (v9)
  {
    *(v3 + 12) = v16;
    sub_100061FD4();
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_10005F56C(unsigned int a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (a2 >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v4 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v4;
  }

  v6 = *(a4 + 16);
  if (v6)
  {
    v7 = (a4 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 >= result)
      {
        result = result;
      }

      else
      {
        result = v8;
      }

      --v6;
    }

    while (v6);
  }

  return result;
}