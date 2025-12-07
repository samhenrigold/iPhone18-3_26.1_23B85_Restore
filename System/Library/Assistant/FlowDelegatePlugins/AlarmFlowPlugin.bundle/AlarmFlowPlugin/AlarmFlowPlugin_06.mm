uint64_t sub_BD9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E4(&qword_13A328, "*Q");
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_105560();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  sub_BEB14(a2);
  sub_105B10();
  swift_allocObject();
  v17 = sub_105B00();
  sub_BFE60(a1, v17);

  sub_106500();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_16F70(v6, &qword_13A328, "*Q");
  }

  v30 = a2;
  (*(v8 + 32))(v16, v6, v7);
  if (qword_136E28 != -1)
  {
    swift_once();
  }

  v19 = sub_106D20();
  sub_135C4(v19, qword_13A310);
  v20 = *(v8 + 16);
  v20(v14, v16, v7);
  v21 = sub_106D10();
  v22 = sub_106FC0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v23 = 136315138;
    v20(v11, v14, v7);
    v28 = sub_106E30();
    v25 = v24;
    v26 = *(v8 + 8);
    v26(v14, v7);
    v27 = sub_722E8(v28, v25, &v31);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_0, v21, v22, "Submitting NLv4 dialog act: %s", v23, 0xCu);
    sub_2738(v29);
  }

  else
  {

    v26 = *(v8 + 8);
    v26(v14, v7);
  }

  sub_104F20();
  return (v26)(v16, v7);
}

uint64_t sub_BDD88@<X0>(unint64_t a1@<X0>, id *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v102 = a1;
  v7 = sub_25E4(&qword_1376F0, &unk_10A900);
  __chkstk_darwin(v7 - 8);
  v101 = &v89 - v8;
  v107 = sub_106D80();
  v100 = *(v107 - 8);
  v9 = __chkstk_darwin(v107);
  v106 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v89 - v11;
  v104 = sub_1046B0();
  v94 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = (&v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_25E4(&qword_13A328, "*Q");
  __chkstk_darwin(v13 - 8);
  v93 = &v89 - v14;
  v105 = sub_105560();
  v15 = *(v105 - 8);
  v16 = __chkstk_darwin(v105);
  v90 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v91 = &v89 - v19;
  __chkstk_darwin(v18);
  v98 = &v89 - v20;
  sub_104FE0();
  v108 = 0;
  v109 = 0xE000000000000000;
  sub_107190(20);

  v108 = 0xD000000000000012;
  v109 = 0x800000000010C460;
  v110._countAndFlagsBits = sub_106E60();
  sub_106E80(v110);

  sub_104FA0();
  sub_104F70();
  v21 = sub_25E4(&qword_1376D0, &unk_1080E0);
  v22 = swift_allocObject();
  v95 = xmmword_107FC0;
  *(v22 + 16) = xmmword_107FC0;
  *(v22 + 32) = sub_2D40(2);
  *(v22 + 40) = v23;
  v97 = a4;
  sub_104F90();
  v96 = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_108210;
  v108 = 0;
  v109 = 0xE000000000000000;
  sub_107190(20);

  v108 = 0xD000000000000012;
  v109 = 0x800000000010C460;
  v111._countAndFlagsBits = sub_106E60();
  sub_106E80(v111);

  v25 = v109;
  *(v24 + 32) = v108;
  *(v24 + 40) = v25;
  v108 = 0;
  v109 = 0xE000000000000000;
  sub_107190(20);

  v108 = 0xD000000000000012;
  v109 = 0x800000000010C460;
  v112._countAndFlagsBits = sub_106E60();
  sub_106E80(v112);

  v26 = v109;
  *(v24 + 48) = v108;
  *(v24 + 56) = v26;
  v108 = 0;
  v109 = 0xE000000000000000;
  sub_107190(20);

  v108 = 0xD000000000000012;
  v109 = 0x800000000010C460;
  v113._countAndFlagsBits = sub_106E60();
  sub_106E80(v113);

  v27 = v109;
  *(v24 + 64) = v108;
  *(v24 + 72) = v27;
  v108 = 0;
  v109 = 0xE000000000000000;
  sub_107190(20);

  v108 = 0xD000000000000012;
  v109 = 0x800000000010C460;
  v114._countAndFlagsBits = sub_106E60();
  sub_106E80(v114);

  v28 = v109;
  *(v24 + 80) = v108;
  *(v24 + 88) = v28;
  if (a3)
  {
    v92 = a2;
    v108 = 0;
    v109 = 0xE000000000000000;
    sub_107190(20);

    v108 = 0xD000000000000012;
    v109 = 0x800000000010C460;
    v115._countAndFlagsBits = sub_106E60();
    sub_106E80(v115);

    v29 = v108;
    v30 = v109;
    v32 = *(v24 + 16);
    v31 = *(v24 + 24);
    if (v32 >= v31 >> 1)
    {
      v24 = sub_AD590((v31 > 1), v32 + 1, 1, v24);
    }

    v33 = v105;
    *(v24 + 16) = v32 + 1;
    v34 = v24 + 16 * v32;
    *(v34 + 32) = v29;
    *(v34 + 40) = v30;
    v108 = _swiftEmptyArrayStorage;
    sub_83424(0, 2, 0);
    v35 = v108;
    v36 = sub_2D40(0);
    v39 = v35[2];
    v38 = v35[3];
    if (v39 >= v38 >> 1)
    {
      v85 = v36;
      v86 = v37;
      sub_83424((v38 > 1), v39 + 1, 1);
      v37 = v86;
      v36 = v85;
      v35 = v108;
    }

    v35[2] = (v39 + 1);
    v40 = &v35[2 * v39];
    v40[4] = v36;
    v40[5] = v37;
    v41 = sub_2D40(1);
    v44 = v35[2];
    v43 = v35[3];
    if (v44 >= v43 >> 1)
    {
      v87 = v41;
      v88 = v42;
      sub_83424((v43 > 1), v44 + 1, 1);
      v42 = v88;
      v41 = v87;
      v35 = v108;
    }

    v35[2] = (v44 + 1);
    v45 = &v35[2 * v44];
    v45[4] = v41;
    v45[5] = v42;
    sub_104FB0();
    a2 = v92;
  }

  else
  {
    v33 = v105;
  }

  v92 = v24;

  v46 = sub_104FC0();
  __chkstk_darwin(v46);
  *(&v89 - 2) = a2;
  sub_BE954(sub_C03B0, (&v89 - 4), v102);
  v47 = v93;
  sub_105530();

  if ((*(v15 + 48))(v47, 1, v33) == 1)
  {
    sub_16F70(v47, &qword_13A328, "*Q");
    v48 = v102;
  }

  else
  {
    v49 = v98;
    (*(v15 + 32))(v98, v47, v33);
    if (qword_136E28 != -1)
    {
      swift_once();
    }

    v50 = sub_106D20();
    sub_135C4(v50, qword_13A310);
    v51 = *(v15 + 16);
    v52 = v91;
    v51(v91, v49, v33);
    v53 = sub_106D10();
    v54 = sub_106FC0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v108 = v56;
      *v55 = 136315138;
      v51(v90, v52, v33);
      v57 = sub_106E30();
      v59 = v58;
      v60 = *(v15 + 8);
      v60(v52, v105);
      v61 = sub_722E8(v57, v59, &v108);

      *(v55 + 4) = v61;
      v33 = v105;
      _os_log_impl(&dword_0, v53, v54, "Submitting Alarm Disambiguation NLv4 dialog act: %s", v55, 0xCu);
      sub_2738(v56);
    }

    else
    {

      v60 = *(v15 + 8);
      v60(v52, v33);
    }

    v48 = v102;
    v62 = v98;
    sub_104F20();
    v60(v62, v33);
  }

  v63 = v101;
  sub_B0ADC(v48);
  sub_104F50();
  v64 = swift_allocObject();
  *(v64 + 16) = v95;
  *(v64 + 32) = sub_2D40(2);
  *(v64 + 40) = v65;
  sub_104FD0();
  v66 = v103;
  sub_1046A0();
  v67 = sub_104690();
  v69 = v68;
  (*(v94 + 8))(v66, v104);
  if (v48 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)); i; i = sub_107270())
  {
    v71 = 0;
    v104 = v48 & 0xFFFFFFFFFFFFFF8;
    v105 = v48 & 0xC000000000000001;
    v103 = (v100 + 48);
    v72 = (v100 + 32);
    v73 = _swiftEmptyArrayStorage;
    v98 = i;
    while (1)
    {
      if (v105)
      {
        v74 = sub_1071C0();
      }

      else
      {
        if (v71 >= *(v104 + 16))
        {
          goto LABEL_35;
        }

        v74 = *(v48 + 8 * v71 + 32);
      }

      v75 = v74;
      v76 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      sub_7BCB0(v67, v69, v71, 0, v63);

      v77 = v107;
      if ((*v103)(v63, 1, v107) == 1)
      {
        sub_16F70(v63, &qword_1376F0, &unk_10A900);
      }

      else
      {
        v78 = v67;
        v79 = v69;
        v80 = *v72;
        v81 = v99;
        (*v72)(v99, v63, v77);
        v80(v106, v81, v77);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_AD69C(0, v73[2] + 1, 1, v73);
        }

        v83 = v73[2];
        v82 = v73[3];
        v69 = v79;
        if (v83 >= v82 >> 1)
        {
          v73 = sub_AD69C((v82 > 1), v83 + 1, 1, v73);
        }

        v67 = v78;
        v73[2] = (v83 + 1);
        v80(v73 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v83, v106, v107);
        v63 = v101;
        v48 = v102;
        i = v98;
      }

      ++v71;
      if (v76 == i)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_37:

  return sub_104F40();
}

id *sub_BE954(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_107270())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
    sub_107220();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = sub_1071C0();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_107200();
      sub_107230();
      sub_107240();
      sub_107210();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_BEAC8()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A310);
  sub_135C4(v0, qword_13A310);
  return sub_106A80();
}

uint64_t sub_BEB14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_105480();
  __chkstk_darwin(v2 - 8);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_105520();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = __chkstk_darwin(v4);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v41 - v7;
  v8 = sub_1054B0();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = __chkstk_darwin(v8);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v41 - v11;
  v12 = sub_105560();
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_104FE0();
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_107190(20);

  v56 = 0xD000000000000012;
  v57 = 0x800000000010C460;
  v58._countAndFlagsBits = sub_106E60();
  sub_106E80(v58);

  sub_104FA0();
  v54 = a1;
  sub_104F70();
  v55 = _swiftEmptyArrayStorage;
  sub_83424(0, 3, 0);
  v14 = 0;
  v15 = v55;
  do
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_107190(20);

    v56 = 0xD000000000000012;
    v57 = 0x800000000010C460;
    v59._countAndFlagsBits = sub_106E60();
    sub_106E80(v59);

    v60._countAndFlagsBits = 0x2E65756C61562ELL;
    v60._object = 0xE700000000000000;
    sub_106E80(v60);
    v16 = sub_106E40();
    v18 = v17;

    v61._countAndFlagsBits = v16;
    v61._object = v18;
    sub_106E80(v61);

    v19 = v56;
    v20 = v57;
    v55 = v15;
    v22 = v15[2];
    v21 = v15[3];
    if (v22 >= v21 >> 1)
    {
      sub_83424((v21 > 1), v22 + 1, 1);
      v15 = v55;
    }

    ++v14;
    v15[2] = (v22 + 1);
    v23 = &v15[2 * v22];
    v23[4] = v19;
    v23[5] = v20;
  }

  while (v14 != 3);
  sub_104FB0();
  sub_25E4(&qword_1376D0, &unk_1080E0);
  v24 = swift_allocObject();
  v53 = xmmword_107FC0;
  *(v24 + 16) = xmmword_107FC0;
  *(v24 + 32) = sub_2D40(2);
  *(v24 + 40) = v25;
  sub_104F90();
  v26 = swift_allocObject();
  *(v26 + 16) = v53;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_107190(20);

  v56 = 0xD000000000000012;
  v57 = 0x800000000010C460;
  v62._countAndFlagsBits = sub_106E60();
  sub_106E80(v62);

  v27 = v57;
  *(v26 + 32) = v56;
  *(v26 + 40) = v27;
  sub_104FC0();
  v28 = v42;
  sub_105550();
  v29 = v47;
  sub_1054A0();
  v30 = v50;
  sub_105510();
  sub_105470();
  sub_105500();
  v32 = v51;
  v31 = v52;
  (*(v51 + 16))(v43, v30, v52);
  sub_105490();
  v34 = v48;
  v33 = v49;
  (*(v48 + 16))(v41, v29, v49);
  sub_105540();
  sub_25E4(&qword_13A330, "*Q");
  v35 = v45;
  v36 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v53;
  v38 = v37 + v36;
  v39 = v46;
  (*(v35 + 16))(v38, v28, v46);
  sub_104F60();
  (*(v32 + 8))(v30, v31);
  (*(v34 + 8))(v29, v33);
  return (*(v35 + 8))(v28, v39);
}

uint64_t sub_BF168@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = sub_1054B0();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = __chkstk_darwin(v3);
  v31 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v26 - v6;
  v34 = sub_105560();
  v30 = *(v34 - 8);
  v8 = v30;
  __chkstk_darwin(v34);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_105480();
  __chkstk_darwin(v11 - 8);
  v28 = sub_105520();
  v35 = *(v28 - 8);
  v12 = __chkstk_darwin(v28);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v26 - v15;
  sub_104FE0();
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_107190(20);

  v36 = 0xD000000000000012;
  v37 = 0x800000000010C460;
  v38._countAndFlagsBits = sub_106E60();
  sub_106E80(v38);

  v26[1] = a2;
  sub_104FA0();
  sub_25E4(&qword_1376D0, &unk_1080E0);
  v17 = swift_allocObject();
  v27 = xmmword_107FC0;
  *(v17 + 16) = xmmword_107FC0;
  *(v17 + 32) = sub_2B5C(v29);
  *(v17 + 40) = v18;
  sub_104FC0();
  sub_104F70();
  sub_105510();
  sub_105470();
  sub_105500();
  sub_105550();
  sub_1054A0();
  v19 = v28;
  (*(v35 + 16))(v14, v16, v28);
  sub_105490();
  v20 = v32;
  v21 = v33;
  (*(v32 + 16))(v31, v7, v33);
  sub_105540();
  sub_25E4(&qword_13A330, "*Q");
  v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v27;
  v24 = v34;
  (*(v8 + 16))(v23 + v22, v10, v34);
  sub_104F60();
  (*(v20 + 8))(v7, v21);
  (*(v8 + 8))(v10, v24);
  return (*(v35 + 8))(v16, v19);
}

uint64_t sub_BF604@<X0>(int a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25E4(&qword_13A328, "*Q");
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_105560();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v39 = &v35 - v18;
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  sub_BF168(a1, a5);
  a2(0);
  swift_allocObject();
  a3();
  sub_105B10();
  swift_allocObject();
  v21 = sub_105B00();
  sub_105C00();
  swift_allocObject();
  sub_105BF0();
  sub_105AE0();

  a4(v21);
  sub_1064F0();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_16F70(v12, &qword_13A328, "*Q");
  }

  v37 = a5;
  (*(v14 + 32))(v20, v12, v13);
  if (qword_136E28 != -1)
  {
    swift_once();
  }

  v23 = sub_106D20();
  sub_135C4(v23, qword_13A310);
  v24 = *(v14 + 16);
  v25 = v39;
  v24(v39, v20, v13);
  v26 = sub_106D10();
  v27 = sub_106FC0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v36 = v20;
    v29 = v28;
    v35 = swift_slowAlloc();
    v40 = v35;
    *v29 = 136315138;
    v24(v38, v25, v13);
    v30 = sub_106E30();
    v32 = v31;
    v33 = *(v14 + 8);
    v33(v25, v13);
    v34 = sub_722E8(v30, v32, &v40);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_0, v26, v27, "Submitting NLv4 dialog act: %s", v29, 0xCu);
    sub_2738(v35);

    v20 = v36;
  }

  else
  {

    v33 = *(v14 + 8);
    v33(v25, v13);
  }

  sub_104F20();
  return (v33)(v20, v13);
}

uint64_t sub_BFA60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E4(&qword_13A328, "*Q");
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_105560();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v25 - v11;
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  sub_BF168(6, a1);
  sub_105D30();
  swift_allocObject();
  sub_105D20();
  sub_105B10();
  swift_allocObject();
  sub_105B00();
  sub_105AF0();
  sub_105E10();
  sub_1064F0();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_16F70(v4, &qword_13A328, "*Q");
  }

  v27 = a1;
  (*(v6 + 32))(v14, v4, v5);
  if (qword_136E28 != -1)
  {
    swift_once();
  }

  v16 = sub_106D20();
  sub_135C4(v16, qword_13A310);
  v17 = *(v6 + 16);
  v17(v12, v14, v5);
  v18 = sub_106D10();
  v19 = sub_106FC0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v20 = 136315138;
    v17(v9, v12, v5);
    v25 = sub_106E30();
    v22 = v21;
    v23 = *(v6 + 8);
    v23(v12, v5);
    v24 = sub_722E8(v25, v22, &v28);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v18, v19, "Submitting NLv4 dialog act: %s", v20, 0xCu);
    sub_2738(v26);
  }

  else
  {

    v23 = *(v6 + 8);
    v23(v12, v5);
  }

  sub_104F20();
  return (v23)(v14, v5);
}

uint64_t sub_BFE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_106960();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  if (qword_136E28 != -1)
  {
    swift_once();
  }

  v11 = sub_106D20();
  sub_135C4(v11, qword_13A310);
  v30 = *(v5 + 16);
  v30(v10, a1, v4);
  v12 = sub_106D10();
  v13 = sub_106FC0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v8;
    v17 = v16;
    v31 = v16;
    *v15 = 136315138;
    v18 = sub_106950();
    v29 = a2;
    v20 = v19;
    (*(v5 + 8))(v10, v4);
    v21 = sub_722E8(v18, v20, &v31);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v12, v13, "In alarmNLBuilderForVerb, verb = %s", v15, 0xCu);
    sub_2738(v17);
    v8 = v27;

    a1 = v28;
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v30(v8, a1, v4);
  v22 = (*(v5 + 88))(v8, v4);
  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:))
  {
    goto LABEL_7;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:))
  {
    sub_105E30();
    swift_allocObject();
    v24 = sub_105E20();
LABEL_10:
    v23 = v24;
    sub_105C70();
    return v23;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
  {
    sub_105CB0();
    swift_allocObject();
    return sub_105CA0();
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {
    sub_105CD0();
    swift_allocObject();
    v24 = sub_105CC0();
    goto LABEL_10;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
  {
    goto LABEL_17;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
  {
    goto LABEL_19;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.read(_:))
  {
    sub_105C20();
    swift_allocObject();
    v24 = sub_105C10();
    goto LABEL_10;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.request(_:))
  {
LABEL_7:
    sub_105D70();
    swift_allocObject();
    v23 = sub_105D60();
    sub_105DF0();
    return v23;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:))
  {
    sub_105D10();
    swift_allocObject();
    v24 = sub_105D00();
    goto LABEL_10;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
  {
    sub_105DA0();
    swift_allocObject();
    v24 = sub_105D90();
    goto LABEL_10;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
  {
    sub_105D30();
    swift_allocObject();
    v23 = sub_105D20();
    sub_105E00();
    return v23;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
  {
    goto LABEL_7;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
  {
    goto LABEL_17;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
  {
LABEL_19:
    sub_105CF0();
    swift_allocObject();
    v24 = sub_105CE0();
    goto LABEL_10;
  }

  if (v22 == enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
  {
LABEL_17:
    sub_105D50();
    swift_allocObject();
    v24 = sub_105D40();
    goto LABEL_10;
  }

  result = sub_107360();
  __break(1u);
  return result;
}

uint64_t sub_C03B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_7B448();
  v5 = sub_BFE60(v3, v4);

  *a1 = v5;
  return result;
}

void *sub_C040C()
{
  v1 = sub_106960();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E4(&qword_13A388, &unk_10B4C0);
  v5 = sub_105200();
  v6 = [v5 disambiguationItems];

  v7 = sub_106EE0();
  v8 = sub_C18B0(v7);

  if (v8)
  {
    v9 = sub_1051F0();
    if (qword_136E50 != -1)
    {
      swift_once();
    }

    v10 = sub_106D20();
    sub_135C4(v10, qword_13A618);
    v11 = v9;
    v12 = sub_106D10();
    v13 = sub_106FC0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v33 = v14;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v14 = 136315138;
      v15 = v11;
      v36 = v0;
      v16 = v15;
      v17 = [v15 description];
      v32 = v13;
      v18 = v2;
      v19 = v1;
      v20 = v17;
      v21 = v11;
      v22 = v8;
      v23 = sub_106E20();
      v35 = v4;
      v25 = v24;

      v1 = v19;
      v2 = v18;
      v26 = v23;
      v8 = v22;
      v11 = v21;
      v27 = sub_722E8(v26, v25, &v37);
      v4 = v35;

      v28 = v33;
      *(v33 + 1) = v27;
      _os_log_impl(&dword_0, v12, v32, "Creating ResponseAlarmDisambiguationFlowProvider with intent: %s", v28, 0xCu);
      sub_2738(v34);
    }

    (*(v2 + 104))(v4, enum case for AlarmNLv4Constants.AlarmVerb.update(_:), v1);
    sub_25E4(&qword_1375E0, &unk_107FB0);
    swift_allocObject();
    return sub_C0F58(v8, v11, v4, &qword_13A390, &qword_10ABD0, &qword_13A398, &qword_10ABD8);
  }

  else
  {
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0, &unk_1081C8);
    swift_allocError();
    *v30 = 1;
    return swift_willThrow();
  }
}

void *sub_C07CC()
{
  v1 = sub_106960();
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E4(&qword_1385D0, &qword_108F80);
  v4 = sub_105200();
  v5 = [v4 disambiguationItems];

  v6 = sub_106EE0();
  v7 = sub_C18B0(v6);

  if (v7)
  {
    v8 = sub_1051F0();
    if (qword_136E50 != -1)
    {
      swift_once();
    }

    v9 = sub_106D20();
    sub_135C4(v9, qword_13A618);
    v10 = v8;
    v11 = sub_106D10();
    v12 = sub_106FC0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v13 = 136315138;
      v14 = v10;
      v33 = v0;
      v15 = v14;
      v16 = [v14 description];
      v30 = v12;
      v17 = v1;
      v18 = v16;
      v19 = v7;
      v20 = sub_106E20();
      v32 = v3;
      v22 = v21;

      v1 = v17;
      v23 = v20;
      v7 = v19;
      v24 = sub_722E8(v23, v22, &v35);
      v3 = v32;

      *(v13 + 4) = v24;
      _os_log_impl(&dword_0, v11, v30, "Creating ResponseAlarmDisambiguationFlowProvider with intent: %s", v13, 0xCu);
      sub_2738(v31);
    }

    v25 = [v10 operation];
    v26 = &enum case for AlarmNLv4Constants.AlarmVerb.disable(_:);
    if (v25 != &dword_0 + 2)
    {
      v26 = &enum case for AlarmNLv4Constants.AlarmVerb.enable(_:);
    }

    (*(v34 + 104))(v3, *v26, v1);
    sub_25E4(&qword_1396D8, &unk_109E40);
    swift_allocObject();
    return sub_C0F58(v7, v10, v3, &qword_13A378, &qword_10ABC0, &qword_13A380, &qword_10ABC8);
  }

  else
  {
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0, &unk_1081C8);
    swift_allocError();
    *v28 = 1;
    return swift_willThrow();
  }
}

void *sub_C0B98()
{
  v1 = sub_106960();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E4(&qword_1381F0, &qword_108A90);
  v5 = sub_105200();
  v6 = [v5 disambiguationItems];

  v7 = sub_106EE0();
  v8 = sub_C18B0(v7);

  if (v8)
  {
    v9 = sub_1051F0();
    if (qword_136E50 != -1)
    {
      swift_once();
    }

    v10 = sub_106D20();
    sub_135C4(v10, qword_13A618);
    v11 = v9;
    v12 = sub_106D10();
    v13 = sub_106FC0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v33 = v14;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v14 = 136315138;
      v15 = v11;
      v36 = v0;
      v16 = v15;
      v17 = [v15 description];
      v32 = v13;
      v18 = v2;
      v19 = v1;
      v20 = v17;
      v21 = v11;
      v22 = v8;
      v23 = sub_106E20();
      v35 = v4;
      v25 = v24;

      v1 = v19;
      v2 = v18;
      v26 = v23;
      v8 = v22;
      v11 = v21;
      v27 = sub_722E8(v26, v25, &v37);
      v4 = v35;

      v28 = v33;
      *(v33 + 1) = v27;
      _os_log_impl(&dword_0, v12, v32, "Creating ResponseAlarmDisambiguationFlowProvider with intent: %s", v28, 0xCu);
      sub_2738(v34);
    }

    (*(v2 + 104))(v4, enum case for AlarmNLv4Constants.AlarmVerb.delete(_:), v1);
    sub_25E4(&qword_13A340, &qword_10ABA8);
    swift_allocObject();
    return sub_C0F58(v8, v11, v4, &qword_13A368, &qword_10ABB0, &qword_13A370, &qword_10ABB8);
  }

  else
  {
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0, &unk_1081C8);
    swift_allocError();
    *v30 = 1;
    return swift_willThrow();
  }
}

void *sub_C0F58(unint64_t a1, void *a2, char *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v45 = a6;
  v46 = a7;
  v43 = a4;
  v49 = a3;
  v11 = sub_106960();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v44 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105180();
  v13 = sub_105010();
  swift_allocObject();
  v14 = sub_105000();
  v51 = v13;
  v52 = &protocol witness table for ResponseFactory;
  v50 = v14;
  v15 = sub_104A00();
  swift_allocObject();
  v16 = sub_1049F0();
  v7[8] = v15;
  v7[9] = &protocol witness table for PatternFlowProvider;
  v7[5] = v16;
  v7[10] = 0xD000000000000018;
  v7[11] = 0x800000000010CEA0;
  v17 = v7;
  if (qword_136CF8 != -1)
  {
    swift_once();
  }

  v18 = sub_106D20();
  sub_135C4(v18, qword_1385F0);

  v19 = a2;
  v20 = sub_106D10();
  v21 = sub_106FC0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v53[0] = v41;
    *v22 = 134218242;
    v42 = a5;
    if (a1 >> 62)
    {
      v23 = sub_107270();
    }

    else
    {
      v23 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v22 + 4) = v23;

    *(v22 + 12) = 2080;
    v24 = v19;
    v25 = [v24 description];
    v26 = sub_106E20();
    v28 = v27;

    v29 = sub_722E8(v26, v28, v53);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_0, v20, v21, "ResponseAlarmDisambiguationFlowProvider.init with %ld items and intent: %s", v22, 0x16u);
    sub_2738(v41);

    a5 = v42;
  }

  else
  {
  }

  v30 = v17;
  v17[2] = a1;
  v17[12] = v19;
  v31 = v47;
  v32 = v48;
  v33 = v44;
  (*(v47 + 16))(v44, v49, v48);
  sub_25E4(v43, a5);
  v34 = swift_allocObject();
  v35 = qword_138690;
  v36 = sub_1052B0();
  v37 = *(*(v36 - 8) + 56);
  v37(v34 + v35, 1, 1, v36);
  *(v34 + qword_138698) = 0x8000000000000000;
  *(v34 + qword_1386A0) = 0;
  *(v34 + 16) = a1;
  v38 = *(v31 + 32);
  v38(v34 + qword_138688, v33, v32);
  v30[3] = v34;
  sub_25E4(v45, v46);
  v39 = swift_allocObject();
  v37(v39 + qword_138690, 1, 1, v36);
  *(v39 + qword_138698) = 0x8000000000000000;
  *(v39 + qword_1386A0) = 0;
  *(v39 + 16) = a1;
  v38(v39 + qword_138688, v49, v32);
  v30[4] = v39;
  swift_bridgeObjectRetain_n();
  return v30;
}

uint64_t sub_C13DC(void *a1)
{
  sub_106840();
  sub_106820();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_13A338, &qword_10AB98);
  sub_104AC0();
  sub_25E4(&qword_13A340, &qword_10ABA8);
  sub_B880C(&qword_13A348, &qword_13A340, &qword_10ABA8, &unk_1093D8);
  sub_104A70();
  sub_104AF0();
  sub_262C(a1, v5);
  sub_C1708();
  sub_104A90();
  sub_104AE0();
  sub_262C(a1, v4);
  _s21ConfirmIntentStrategyCMa();
  v2 = swift_allocObject();
  sub_1AD44(v4, v2 + 16);
  *&v4[0] = v2;
  sub_C175C();
  sub_104A80();
  sub_104AD0();
  sub_262C(a1, v4);
  sub_C17B4();
  sub_104A50();
  sub_104AB0();

  sub_2738(a1);
  sub_C1808(v4);
  return sub_C185C(v5);
}

uint64_t sub_C1618(uint64_t *a1)
{
  *a1 = sub_C0B98();
  v2 = *(v1 + 8);

  return v2();
}

BOOL sub_C16A4()
{
  sub_25E4(&qword_1385B0, &unk_10B2D0);
  v0 = sub_105150();
  sub_106810();

  v1 = sub_106830();
  return v1 == sub_106830();
}

unint64_t sub_C1708()
{
  result = qword_13A350;
  if (!qword_13A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A350);
  }

  return result;
}

unint64_t sub_C175C()
{
  result = qword_13A358;
  if (!qword_13A358)
  {
    _s21ConfirmIntentStrategyCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A358);
  }

  return result;
}

unint64_t sub_C17B4()
{
  result = qword_13A360;
  if (!qword_13A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A360);
  }

  return result;
}

id *sub_C18B0(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_107220();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_135FC(i, v5);
    sub_106AA0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_107200();
    sub_107230();
    sub_107240();
    sub_107210();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_C199C()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A3A0);
  sub_135C4(v0, qword_13A3A0);
  return sub_106A80();
}

double sub_C19E8()
{
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    goto LABEL_23;
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1071C0();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v2 = sub_107270();
        goto LABEL_3;
      }

      v7 = [v4 sleepAlarmAttribute];
      if (!v7)
      {
        goto LABEL_5;
      }

      v8 = [v5 enabled];
      sub_1F7B8();
      v9.super.super.isa = sub_107090(1).super.super.isa;
      isa = v9.super.super.isa;
      if (!v8)
      {

        goto LABEL_6;
      }

      v11 = sub_1070A0();

      if (v11)
      {
LABEL_5:
        sub_107200();
        sub_107230();
        sub_107240();
        sub_107210();
      }

      else
      {
      }

LABEL_6:
      ++v3;
    }

    while (v6 != v2);
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v12 = sub_107270();
  }

  else
  {
    v12 = _swiftEmptyArrayStorage[2];
  }

  return v12;
}

double sub_C1BC8()
{
  v1 = *(v0 + 56);
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1071C0();
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v2 = sub_107270();
        goto LABEL_3;
      }

      v7 = [v4 enabled];
      sub_1F7B8();
      v8.super.super.isa = sub_107090(1).super.super.isa;
      isa = v8.super.super.isa;
      if (v7)
      {
        v10 = sub_1070A0();

        if (v10)
        {
          sub_107200();
          sub_107230();
          sub_107240();
          sub_107210();
          goto LABEL_7;
        }
      }

      else
      {
      }

LABEL_7:
      ++v3;
    }

    while (v6 != v2);
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v11 = sub_107270();
  }

  else
  {
    v11 = _swiftEmptyArrayStorage[2];
  }

  return v11;
}

uint64_t sub_C1D80()
{
  v1 = sub_104670();
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 56);
  v16 = v5;
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); ; i = sub_107270())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_1071C0();
      }

      else
      {
        if (v7 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 sleepAlarmAttribute];
      if (v11)
      {
        v13 = v11;

        sub_106210();
        v14 = sub_75DD4(0, v3, 0);

        (*(v16 + 8))(v3, v1);
        return v14;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

void *sub_C1F58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_106560();
  sub_106550();
  sub_106540();

  *(v2 + 72) = 0xD000000000000018;
  *(v2 + 80) = 0x800000000010E0A0;
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v6 = sub_106D20();
  sub_135C4(v6, qword_13A3A0);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "SearchAlarm.ResultSetProvider init", v9, 2u);
  }

  *(v3 + 56) = a2;
  *(v3 + 64) = a1;
  return v3;
}

uint64_t sub_C20AC(uint64_t a1)
{
  v2 = v1[4];
  sub_105180();
  sub_105010();
  swift_allocObject();
  sub_105000();
  v3 = sub_104A00();
  swift_allocObject();
  v4 = sub_1049F0();
  v1[5] = v4;
  v1[2] = v4;
  v1[3] = v2;
  v5 = swift_task_alloc();
  v1[6] = v5;
  v6 = _s17ResultSetProviderCMa();
  v8 = sub_CBFA8(&qword_13A568, v7, _s17ResultSetProviderCMa, &unk_10AD08);
  *v5 = v1;
  v5[1] = sub_C221C;

  return PatternFlowProviding.makeResultSetFlow<A>(provider:)(v1 + 3, v3, v6, &protocol witness table for PatternFlowProvider, v8);
}

uint64_t sub_C221C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_C2380, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_C2398()
{
  v1[2] = v0;
  sub_104D60();
  v1[3] = swift_task_alloc();
  v2 = sub_1051E0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_25E4(&qword_137598, &unk_107EB0);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for SearchQueryNotFoundParameters(0);
  v1[9] = swift_task_alloc();
  v3 = sub_106D20();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_106300();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_106320();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_C2600, 0, 0);
}

uint64_t sub_C2600()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v26 = sub_135C4(v0[10], qword_13A3A0);
  v1 = sub_106D10();
  v2 = sub_106FC0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "SearchAlarm.ResultSetProvider makeEmptyResultsFlow()", v3, 2u);
  }

  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[2];

  (*(v5 + 104))(v4, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v6);
  (*(v9 + 16))(v7, v26, v8);
  mach_absolute_time();
  sub_106330();
  v11 = *(v10 + 64);
  if (v11)
  {
    v12 = sub_CF1C4();
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (qword_136D88 != -1)
  {
    swift_once();
  }

  v14 = v0[8];
  v13 = v0[9];
  v15 = sub_106160();
  v16 = *(*(v15 - 8) + 56);
  v17 = 1;
  v16(v13, 1, 1, v15);
  *(v13 + v14[5]) = 1;
  *(v13 + v14[6]) = v12;
  v18 = v14[7];
  *(v13 + v18) = 0;
  if (v11)
  {
    *(v13 + v18) = sub_1CE68();
    v19 = [v11 label];
    if (v19)
    {
      v20 = v19;
      sub_106E20();

      sub_106E50();

      v17 = 0;
    }
  }

  v21 = v0[9];
  v22 = v0[7];
  v16(v22, v17, 1, v15);
  sub_1A814(v22, v21);
  v23 = sub_A7D44();
  v0[19] = v23;
  v27 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v24 = swift_task_alloc();
  v0[20] = v24;
  *v24 = v0;
  v24[1] = sub_C2950;

  return v27(0xD000000000000014, 0x800000000010E190, v23);
}

uint64_t sub_C2950(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_C2DE0;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_C2A9C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_C2A9C()
{
  sub_CBF48(v0[9], type metadata accessor for SearchQueryNotFoundParameters);
  sub_104CF0();
  sub_1051B0();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_C2B8C;
  v2 = v0[18];
  v3 = v0[6];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v3, v2);
}

uint64_t sub_C2B8C(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 192) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_C2D04, 0, 0);
}

uint64_t sub_C2D04()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];
  v2 = v0[24];

  return v1(v2);
}

uint64_t sub_C2DE0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  sub_CBF48(v0[9], type metadata accessor for SearchQueryNotFoundParameters);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_C2EE0()
{
  v1[17] = v0;
  v2 = sub_1051E0();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for SearchQuerySuccessSingleParameters(0);
  v1[22] = swift_task_alloc();
  v3 = sub_106D20();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = sub_106300();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v5 = sub_106320();
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v6 = sub_104FF0();
  v1[33] = v6;
  v1[34] = *(v6 - 8);
  v1[35] = swift_task_alloc();
  v7 = sub_104D60();
  v1[36] = v7;
  v1[37] = *(v7 - 8);
  v1[38] = swift_task_alloc();
  sub_25E4(&qword_137DC0, &unk_10A0A0);
  v1[39] = swift_task_alloc();
  v8 = sub_106AE0();
  v1[40] = v8;
  v1[41] = *(v8 - 8);
  v1[42] = swift_task_alloc();
  sub_25E4(&qword_137598, &unk_107EB0);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v9 = sub_104670();
  v1[46] = v9;
  v1[47] = *(v9 - 8);
  v1[48] = swift_task_alloc();
  v10 = sub_106370();
  v1[49] = v10;
  v1[50] = *(v10 - 8);
  v1[51] = swift_task_alloc();

  return _swift_task_switch(sub_C3344, 0, 0);
}

uint64_t sub_C3344()
{
  v1 = *(*(v0 + 136) + 56);
  if (!(v1 >> 62))
  {
    if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_58:
    *(v0 + 600) = 3;
    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0, &unk_1081C8);
    swift_allocError();
    sub_1064E0();
    swift_willThrow();
    goto LABEL_59;
  }

  if (!sub_107270())
  {
    goto LABEL_58;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = sub_1071C0();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_64;
    }

    v2 = *(v1 + 32);
  }

  *(v0 + 416) = v2;
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v3 = sub_135C4(*(v0 + 184), qword_13A3A0);
  *(v0 + 424) = v3;
  v4 = sub_106D10();
  v5 = sub_106FC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "SearchAlarm.ResultSetProvider makeSingleItemFlow()", v6, 2u);
  }

  v7 = *(v0 + 400);
  v8 = *(v0 + 408);
  v9 = *(v0 + 392);

  sub_106360();
  v10 = sub_106340();
  (*(v7 + 8))(v8, v9);
  if (!v10)
  {
    v22 = *(v0 + 200);
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    (*(*(v0 + 216) + 104))(*(v0 + 224), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 208));
    (*(v23 + 16))(v22, v3, v24);
    mach_absolute_time();
    sub_106330();
    if (qword_136D88 == -1)
    {
LABEL_18:
      v25 = *(*(v0 + 136) + 64);
      v26 = [v25 isMeridianInferred];
      sub_1F7B8();
      v27.super.super.isa = sub_107090(1).super.super.isa;
      if (v26)
      {
        v86 = sub_1070A0();
      }

      else
      {
        v86 = 0;
      }

      v88 = v25;
      if (v25)
      {
        [v25 alarmSearchStatus];
        v32 = sub_106920();
        v33 = v32 == sub_106920();
        v34 = [v25 includeSleepAlarm];
        v35.super.super.isa = sub_107090(1).super.super.isa;
        if (v34)
        {
          v36 = sub_1070A0();
        }

        else
        {
          v36 = 0;
        }

        BYTE4(v83) = v36;

        LOBYTE(v83) = v33;
      }

      else
      {
        v83 = 0;
      }

      v40 = *(v0 + 376);
      v41 = *(v0 + 384);
      v84 = *(v0 + 368);
      v42 = *(v0 + 168);
      v43 = *(v0 + 176);
      v44 = v42[11];
      v45 = sub_106160();
      v46 = (*(v45 - 8) + 56);
      v87 = v44;
      v85 = *v46;
      (*v46)(v43 + v44, 1, 1, v45);
      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      *(v43 + 24) = 1;
      *(v43 + 25) = v86 & 1;
      *(v43 + 32) = 0;
      *(v43 + 40) = 0;
      *(v43 + 48) = 1;
      *(v43 + 49) = v83;
      *(v43 + v42[12]) = BYTE4(v83) & 1;
      v47 = v42[13];
      *(v43 + v47) = 0;
      sub_106210();
      v48 = sub_75DD4(0, v41, 0);
      (*(v40 + 8))(v41, v84);
      *v43 = v48;
      *(v43 + 40) = sub_C19E8();
      *(v43 + 48) = 0;
      *(v43 + 16) = sub_C1BC8();
      *(v43 + 24) = 0;
      *(v43 + 32) = sub_C1D80();
      if (v88)
      {
        v49 = [v88 label];
        if (v49)
        {
          v50 = v47;
          v51 = v49;
          sub_106E20();

          v47 = v50;
          sub_106E50();

          v52 = 0;
        }

        else
        {
          v52 = 1;
        }

        v55 = *(v0 + 344);
        v85(v55, v52, 1, v45);
        sub_1A814(v55, v43 + v87);
        v54 = sub_1CE68();
      }

      else
      {
        v53 = *(v0 + 344);
        v85(v53, 1, 1, v45);
        sub_1A814(v53, v43 + v87);
        v54 = 0;
      }

      *(v43 + v47) = v54;
      sub_106100();
      if (qword_136E48 != -1)
      {
        swift_once();
      }

      *(v43 + 8) = sub_1060F0();
      v56 = sub_A84A0();
      *(v0 + 552) = v56;
      v91 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v57 = swift_task_alloc();
      *(v0 + 560) = v57;
      *v57 = v0;
      v57[1] = sub_C5870;
      v58 = 0xD000000000000019;
      v59 = 0x800000000010E0F0;
      v60 = v56;
      goto LABEL_54;
    }

LABEL_64:
    swift_once();
    goto LABEL_18;
  }

  v11 = *(v0 + 376);
  v12 = *(v0 + 384);
  v13 = *(v0 + 368);
  sub_106210();
  v14 = sub_75DD4(0, v12, 0);
  *(v0 + 432) = v14;
  (*(v11 + 8))(v12, v13);
  if (v14)
  {
    if (qword_136D80 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 136);

    v16 = sub_C19E8();
    v17 = sub_C1BC8();
    v18 = *(v15 + 64);
    if (v18)
    {
      v19 = [v18 label];
      if (v19)
      {
        v20 = v19;
        sub_106E20();

        sub_106E50();

        v21 = 0;
      }

      else
      {
        v21 = 1;
      }

      v61 = *(v0 + 360);
      v62 = sub_106160();
      (*(*(v62 - 8) + 56))(v61, v21, 1, v62);
      v39 = sub_1CE68();
      [v18 alarmSearchStatus];
      v63 = sub_106920();
      v90 = v63 == sub_106920();
      v64 = [v18 includeSleepAlarm];
      sub_1F7B8();
      v65.super.super.isa = sub_107090(1).super.super.isa;
      isa = v65.super.super.isa;
      if (v64)
      {
        v89 = sub_1070A0();
      }

      else
      {

        v89 = 0;
      }
    }

    else
    {
      v37 = *(v0 + 360);
      v38 = sub_106160();
      (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
      v89 = 0;
      v39 = 0;
      v90 = 0;
    }

    v67 = [v18 isMeridianInferred];
    sub_1F7B8();
    v68.super.super.isa = sub_107090(1).super.super.isa;
    if (v67)
    {
      v69 = sub_1070A0();
    }

    else
    {
      v69 = 0;
    }

    v70 = *(v0 + 352);
    v71 = *(v0 + 360);
    sub_25E4(&qword_137880, &unk_108290);
    v72 = swift_allocObject();
    *(v0 + 440) = v72;
    *(v72 + 16) = xmmword_10ABE0;
    *(v72 + 32) = 0x6D72616C61;
    *(v72 + 40) = 0xE500000000000000;
    v73 = type metadata accessor for AlarmAlarm(0);
    *(v72 + 48) = v14;
    *(v72 + 72) = v73;
    *(v72 + 80) = 0xD000000000000010;
    *(v72 + 88) = 0x800000000010DB70;
    *(v72 + 96) = v16;
    *(v72 + 120) = &type metadata for Double;
    *(v72 + 128) = 0xD000000000000012;
    *(v72 + 136) = 0x800000000010DB30;
    *(v72 + 144) = v17;
    *(v72 + 168) = &type metadata for Double;
    *(v72 + 176) = 0xD000000000000012;
    *(v72 + 184) = 0x800000000010C670;
    sub_826B8(v71, v70);
    v74 = sub_106160();
    v75 = *(v74 - 8);
    v76 = (*(v75 + 48))(v70, 1, v74);
    v77 = *(v0 + 352);
    if (v76 == 1)
    {

      sub_16F70(v77, &qword_137598, &unk_107EB0);
      *(v72 + 192) = 0u;
      *(v72 + 208) = 0u;
    }

    else
    {
      *(v72 + 216) = v74;
      v78 = sub_1A924((v72 + 192));
      (*(v75 + 32))(v78, v77, v74);
    }

    *(v72 + 224) = 0xD000000000000011;
    *(v72 + 232) = 0x800000000010C690;
    v79 = 0;
    if (v39)
    {
      v79 = sub_1060A0();
    }

    else
    {
      *(v72 + 248) = 0;
      *(v72 + 256) = 0;
    }

    *(v0 + 448) = v39;
    *(v72 + 240) = v39;
    *(v72 + 264) = v79;
    *(v72 + 272) = 0xD000000000000014;
    *(v72 + 280) = 0x800000000010DB90;
    *(v72 + 288) = v90;
    *(v72 + 312) = &type metadata for Bool;
    *(v72 + 320) = 0xD000000000000012;
    *(v72 + 328) = 0x800000000010DBB0;
    *(v72 + 336) = v89 & 1;
    *(v72 + 360) = &type metadata for Bool;
    *(v72 + 368) = 0xD000000000000012;
    *(v72 + 376) = 0x800000000010DB50;
    *(v72 + 408) = &type metadata for Bool;
    *(v72 + 384) = v69 & 1;
    v91 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

    v80 = swift_task_alloc();
    *(v0 + 456) = v80;
    *v80 = v0;
    v80[1] = sub_C4140;
    v58 = 0xD00000000000002CLL;
    v59 = 0x800000000010E110;
    v60 = v72;
LABEL_54:

    return v91(v58, v59, v60);
  }

  v28 = sub_106D10();
  v29 = sub_106FB0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "Can NOT retrieve alarm data.", v30, 2u);
  }

  sub_25E4(&qword_137DD8, &unk_1085D0);
  sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0, &unk_1081C8);
  swift_allocError();
  *v31 = 3;
  swift_willThrow();

LABEL_59:

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_C4140(uint64_t a1)
{
  v3 = *v2;
  v3[58] = a1;
  v3[59] = v1;

  if (v1)
  {

    v4 = sub_C488C;
  }

  else
  {
    v5 = v3[45];

    sub_16F70(v5, &qword_137598, &unk_107EB0);
    v4 = sub_C429C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_C429C()
{
  v1 = [*(v0 + 416) sleepAlarmAttribute];
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 480) = v2;
    *v2 = v0;
    v2[1] = sub_C49F8;

    return sub_EEDD4();
  }

  else
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 328);
    v6 = *(v0 + 312);
    sub_769D4(0, 0xE000000000000000, 0, 0xE000000000000000, v6);
    swift_bridgeObjectRelease_n();
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_16F70(*(v0 + 312), &qword_137DC0, &unk_10A0A0);
      v7 = sub_106D10();
      v8 = sub_106FB0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_0, v7, v8, "Can NOT retrieve alarm snippet model.", v9, 2u);
      }

      v10 = *(v0 + 464);
      v11 = *(v0 + 416);

      sub_25E4(&qword_137DD8, &unk_1085D0);
      sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0, &unk_1081C8);
      swift_allocError();
      *v12 = 3;
      swift_willThrow();

      v13 = *(v0 + 8);

      return v13();
    }

    else
    {
      v14 = *(v0 + 416);
      v15 = *(v0 + 328);
      v16 = *(v0 + 336);
      v17 = *(v0 + 320);
      v18 = *(v0 + 280);
      v35 = *(v0 + 424);
      v19 = *(v0 + 216);
      v31 = *(v0 + 224);
      v32 = *(v0 + 208);
      v20 = *(v0 + 192);
      v33 = *(v0 + 200);
      v34 = *(v0 + 184);
      (*(v15 + 32))(v16, *(v0 + 312), v17);
      sub_104CF0();
      sub_25E4(&qword_137DD0, &unk_108920);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_108470;
      *(inited + 32) = v14;
      v22 = v14;
      sub_BD4A4(inited, v18);
      swift_setDeallocating();
      swift_arrayDestroy();
      v23 = sub_106AF0();
      *(v0 + 120) = v23;
      *(v0 + 128) = sub_CBFA8(&qword_137DE8, 255, &type metadata accessor for SiriAlarmSnippetModels, &protocol conformance descriptor for SiriAlarmSnippetModels);
      v24 = sub_1A924((v0 + 96));
      sub_25E4(&qword_137DF0, qword_1085E0);
      v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_107FC0;
      (*(v15 + 16))(v26 + v25, v16, v17);
      sub_106930();
      (*(*(v23 - 8) + 104))(v24, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v23);
      (*(v19 + 104))(v31, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v32);
      (*(v20 + 16))(v33, v35, v34);
      mach_absolute_time();
      sub_106330();
      v27 = swift_task_alloc();
      *(v0 + 544) = v27;
      *v27 = v0;
      v27[1] = sub_C54A4;
      v28 = *(v0 + 304);
      v29 = *(v0 + 280);
      v30 = *(v0 + 256);

      return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v0 + 16, v28, v29, v0 + 96, v30, 0, 0, 0);
    }
  }
}

uint64_t sub_C488C()
{
  v1 = v0[52];
  v2 = v0[45];

  sub_16F70(v2, &qword_137598, &unk_107EB0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_C49F8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[61] = a1;
  v4[62] = a2;
  v4[63] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_C4CC0, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[64] = v5;
    *v5 = v4;
    v5[1] = sub_C4B80;

    return sub_EF160();
  }
}

uint64_t sub_C4B80(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 520) = v2;

  if (v2)
  {

    v7 = sub_C535C;
  }

  else
  {
    *(v6 + 528) = a2;
    *(v6 + 536) = a1;
    v7 = sub_C4E08;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_C4CC0()
{
  v1 = *(v0 + 464);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_C4E08()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  sub_769D4(v0[61], v0[62], v0[67], v0[66], v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_16F70(v0[39], &qword_137DC0, &unk_10A0A0);
    v4 = sub_106D10();
    v5 = sub_106FB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Can NOT retrieve alarm snippet model.", v6, 2u);
    }

    v7 = v0[58];
    v8 = v0[52];

    sub_25E4(&qword_137DD8, &unk_1085D0);
    sub_B880C(&qword_137DE0, &qword_137DD8, &unk_1085D0, &unk_1081C8);
    swift_allocError();
    *v9 = 3;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[52];
    v13 = v0[41];
    v14 = v0[42];
    v15 = v0[40];
    v16 = v0[35];
    v33 = v0[53];
    v17 = v0[27];
    v29 = v0[28];
    v30 = v0[26];
    v18 = v0[24];
    v31 = v0[25];
    v32 = v0[23];
    (*(v13 + 32))(v14, v0[39], v15);
    sub_104CF0();
    sub_25E4(&qword_137DD0, &unk_108920);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_108470;
    *(inited + 32) = v12;
    v20 = v12;
    sub_BD4A4(inited, v16);
    swift_setDeallocating();
    swift_arrayDestroy();
    v21 = sub_106AF0();
    v0[15] = v21;
    v0[16] = sub_CBFA8(&qword_137DE8, 255, &type metadata accessor for SiriAlarmSnippetModels, &protocol conformance descriptor for SiriAlarmSnippetModels);
    v22 = sub_1A924(v0 + 12);
    sub_25E4(&qword_137DF0, qword_1085E0);
    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_107FC0;
    (*(v13 + 16))(v24 + v23, v14, v15);
    sub_106930();
    (*(*(v21 - 8) + 104))(v22, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v21);
    (*(v17 + 104))(v29, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v30);
    (*(v18 + 16))(v31, v33, v32);
    mach_absolute_time();
    sub_106330();
    v25 = swift_task_alloc();
    v0[68] = v25;
    *v25 = v0;
    v25[1] = sub_C54A4;
    v26 = v0[38];
    v27 = v0[35];
    v28 = v0[32];

    return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v0 + 2, v26, v27, v0 + 12, v28, 0, 0, 0);
  }
}

uint64_t sub_C535C()
{
  v1 = *(v0 + 464);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_C54A4()
{
  v1 = *v0;
  v11 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 280);
  v5 = *(*v0 + 272);
  v6 = *(*v0 + 264);
  v7 = *(*v0 + 256);
  v8 = *(*v0 + 240);
  v9 = *(*v0 + 232);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v11, v3);
  sub_16F70(v1 + 96, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_C56D8, 0, 0);
}

uint64_t sub_C56D8()
{
  v1 = v0[58];
  v2 = v0[52];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  sub_1A8E0(v0 + 2, v0[5]);
  v8 = sub_1053F0();

  (*(v4 + 8))(v3, v5);
  sub_2738(v0 + 2);

  v6 = v0[1];

  return v6(v8);
}

uint64_t sub_C5870(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v5 = sub_C5D98;
  }

  else
  {
    *(v4 + 576) = a1;
    v5 = sub_C59B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_C59B4()
{
  v1 = v0[52];
  sub_CBF48(v0[22], type metadata accessor for SearchQuerySuccessSingleParameters);
  sub_104CF0();
  *(swift_task_alloc() + 16) = v1;
  sub_1051B0();

  v2 = swift_task_alloc();
  v0[73] = v2;
  *v2 = v0;
  v2[1] = sub_C5AC8;
  v3 = v0[31];
  v4 = v0[20];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v4, v3);
}

uint64_t sub_C5AC8(uint64_t a1)
{
  v2 = *(*v1 + 576);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 592) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_C5C40, 0, 0);
}

uint64_t sub_C5C40()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);

  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 592);

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_C5D98()
{
  v1 = v0[52];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  sub_CBF48(v0[22], type metadata accessor for SearchQuerySuccessSingleParameters);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_C5F08(uint64_t a1, void *a2)
{
  v3 = sub_25E4(&qword_1375A8, &qword_10AA90);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  sub_25E4(&qword_137DD0, &unk_108920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_108470;
  *(inited + 32) = a2;
  v7 = a2;
  sub_BD4A4(inited, v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  v8 = sub_104FF0();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  return sub_1051C0();
}

uint64_t sub_C603C()
{
  v1[12] = v0;
  v2 = sub_1051E0();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = sub_1052B0();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v4 = sub_106D20();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v5 = sub_106300();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  v6 = sub_106320();
  v1[25] = v6;
  v1[26] = *(v6 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v7 = sub_104FF0();
  v1[29] = v7;
  v1[30] = *(v7 - 8);
  v1[31] = swift_task_alloc();
  v8 = sub_104D60();
  v1[32] = v8;
  v1[33] = *(v8 - 8);
  v1[34] = swift_task_alloc();
  sub_25E4(&qword_137DC0, &unk_10A0A0);
  v1[35] = swift_task_alloc();
  v9 = sub_106AE0();
  v1[36] = v9;
  v1[37] = *(v9 - 8);
  v1[38] = swift_task_alloc();
  v10 = sub_106370();
  v1[39] = v10;
  v1[40] = *(v10 - 8);
  v1[41] = swift_task_alloc();
  v11 = sub_104670();
  v1[42] = v11;
  v1[43] = *(v11 - 8);
  v1[44] = swift_task_alloc();

  return _swift_task_switch(sub_C647C, 0, 0);
}

uint64_t sub_C647C()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4(v0[19], qword_13A3A0);
  v0[45] = v1;
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider makeAllResultsFlow()", v4, 2u);
  }

  v5 = v0[12];

  v6 = *(v5 + 56);
  if (v6 >> 62)
  {
    if (sub_107270())
    {
      goto LABEL_7;
    }

LABEL_13:
    v10 = swift_task_alloc();
    v0[46] = v10;
    *v10 = v0;
    v10[1] = sub_C6A0C;

    return sub_C2398();
  }

  if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = *(v5 + 56);
  if (v7 >> 62)
  {
    if (sub_107270() == 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_9:
    v8 = swift_task_alloc();
    v0[47] = v8;
    *v8 = v0;
    v8[1] = sub_C6C98;

    return sub_C2EE0();
  }

  v11 = *(v5 + 56);
  v37 = v5;
  v38 = v1;
  if (v11 >> 62)
  {
LABEL_41:
    v39 = v11 & 0xFFFFFFFFFFFFFF8;
    v40 = sub_107270();
  }

  else
  {
    v39 = v11 & 0xFFFFFFFFFFFFFF8;
    v40 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  }

  v12 = v11 & 0xC000000000000001;
  v13 = (v0[43] + 8);

  v14 = 0;
LABEL_20:
  v0[48] = _swiftEmptyArrayStorage;
  while (v40 != v14)
  {
    if (v12)
    {
      v15 = sub_1071C0();
    }

    else
    {
      if (v14 >= *(v39 + 16))
      {
        goto LABEL_40;
      }

      v15 = *(v11 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v18 = v11;
    v19 = v0[44];
    v20 = v0[42];
    sub_106210();
    v21 = sub_75DD4(0, v19, 0);

    v22 = v19;
    v11 = v18;
    (*v13)(v22, v20);
    ++v14;
    if (v21)
    {
      sub_106EC0();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_106F10();
      }

      sub_106F20();
      v14 = v17;
      goto LABEL_20;
    }
  }

  v23 = v0[40];
  v24 = v0[41];
  v25 = v0[39];

  sub_106360();
  v26 = sub_106340();
  (*(v23 + 8))(v24, v25);
  if (v26)
  {
    v27 = swift_task_alloc();
    v0[49] = v27;
    *v27 = v0;
    v27[1] = sub_C6F24;

    return sub_EEDD4();
  }

  else
  {
    v28 = v0[23];
    v29 = v0[24];
    v31 = v0[21];
    v30 = v0[22];
    v33 = v0[19];
    v32 = v0[20];

    (*(v28 + 104))(v29, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v30);
    (*(v32 + 16))(v31, v38, v33);
    mach_absolute_time();
    sub_106330();
    sub_105260();
    v34 = *(v37 + 56);
    v0[63] = v34;

    v35 = swift_task_alloc();
    v0[64] = v35;
    *v35 = v0;
    v35[1] = sub_C7FA8;
    v36 = v0[18];

    return sub_CAC34(v36, v34);
  }
}

uint64_t sub_C6A0C(uint64_t a1)
{
  v2 = *v1;

  v4 = *(v2 + 8);
  if (!v7)
  {
    v3 = a1;
  }

  return v4(v3);
}

uint64_t sub_C6C98(uint64_t a1)
{
  v2 = *v1;

  v4 = *(v2 + 8);
  if (!v7)
  {
    v3 = a1;
  }

  return v4(v3);
}

uint64_t sub_C6F24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[50] = a1;
  v4[51] = a2;
  v4[52] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_C71C4, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[53] = v5;
    *v5 = v4;
    v5[1] = sub_C70AC;

    return sub_EF160();
  }
}

uint64_t sub_C70AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  if (v2)
  {
    v5 = sub_C76A0;
  }

  else
  {
    v5 = sub_C72D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_C71C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_C72D8()
{
  v1 = *(v0[12] + 56);
  if (v1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_107270())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    v4 = v0[37];
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1 & 0xC000000000000001;
    v5 = (v4 + 48);
    v25 = v4;
    v26 = (v4 + 32);
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v28)
      {
        v7 = sub_1071C0();
      }

      else
      {
        if (v3 >= *(v27 + 16))
        {
          goto LABEL_25;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v1;
      v11 = i;
      v13 = v0[35];
      v12 = v0[36];
      sub_769D4(v0[50], v0[51], v0[54], v0[55], v13);

      if ((*v5)(v13, 1, v12) == 1)
      {
        sub_16F70(v0[35], &qword_137DC0, &unk_10A0A0);
      }

      else
      {
        v14 = *v26;
        (*v26)(v0[38], v0[35], v0[36]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_AD840(0, v6[2] + 1, 1, v6);
        }

        v16 = v6[2];
        v15 = v6[3];
        if (v16 >= v15 >> 1)
        {
          v6 = sub_AD840((v15 > 1), v16 + 1, 1, v6);
        }

        v17 = v0[38];
        v18 = v0[36];
        v6[2] = (v16 + 1);
        v14(v6 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v16, v17, v18);
      }

      i = v11;
      v1 = v10;
      ++v3;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_19:
  v0[57] = v6;

  if (qword_136D80 != -1)
  {
    swift_once();
  }

  v19 = v0[48];
  v20 = sub_C19E8();
  sub_25E4(&qword_137880, &unk_108290);
  v21 = swift_allocObject();
  v0[58] = v21;
  *(v21 + 16) = xmmword_1094F0;
  *(v21 + 32) = 0x736D657469;
  *(v21 + 40) = 0xE500000000000000;
  v22 = sub_25E4(&qword_137B40, &unk_108390);
  *(v21 + 48) = v19;
  *(v21 + 88) = 0x800000000010DB70;
  *(v21 + 120) = &type metadata for Double;
  v29 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v21 + 72) = v22;
  *(v21 + 80) = 0xD000000000000010;
  *(v21 + 96) = v20;
  v23 = swift_task_alloc();
  v0[59] = v23;
  *v23 = v0;
  v23[1] = sub_C77C0;

  return v29(0xD000000000000025, 0x800000000010E0C0, v21);
}

uint64_t sub_C76A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_C77C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v5 = sub_C7E8C;
  }

  else
  {

    *(v4 + 488) = a1;
    v5 = sub_C78F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_C78F0(uint64_t a1)
{
  v2 = v1[31];
  v17 = v1[45];
  v4 = v1[23];
  v3 = v1[24];
  v5 = v1[21];
  v6 = v1[22];
  v8 = v1[19];
  v7 = v1[20];
  sub_104CF0();

  sub_BD4A4(v9, v2);

  v10 = sub_106AF0();
  v1[10] = v10;
  v1[11] = sub_CBFA8(&qword_137DE8, 255, &type metadata accessor for SiriAlarmSnippetModels, &protocol conformance descriptor for SiriAlarmSnippetModels);
  v11 = sub_1A924(v1 + 7);
  sub_106930();
  (*(*(v10 - 8) + 104))(v11, enum case for SiriAlarmSnippetModels.alarmMulti(_:), v10);
  (*(v4 + 104))(v3, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v6);
  (*(v7 + 16))(v5, v17, v8);
  mach_absolute_time();
  sub_106330();
  v12 = swift_task_alloc();
  v1[62] = v12;
  *v12 = v1;
  v12[1] = sub_C7B18;
  v13 = v1[34];
  v14 = v1[31];
  v15 = v1[28];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v1 + 2, v13, v14, v1 + 7, v15, 0, 0, 0);
}

uint64_t sub_C7B18()
{
  v1 = *v0;
  v11 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 248);
  v5 = *(*v0 + 240);
  v6 = *(*v0 + 232);
  v7 = *(*v0 + 224);
  v8 = *(*v0 + 208);
  v9 = *(*v0 + 200);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v11, v3);
  sub_16F70(v1 + 56, &qword_137DF8, &unk_1094E0);

  return _swift_task_switch(sub_C7D4C, 0, 0);
}

uint64_t sub_C7D4C()
{
  v1 = v0[61];
  sub_1A8E0(v0 + 2, v0[5]);
  v4 = sub_1053F0();

  sub_2738(v0 + 2);

  v2 = v0[1];

  return v2(v4);
}

uint64_t sub_C7E8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_C7FA8(uint64_t a1)
{
  v4 = *v2;
  v4[65] = v1;

  v5 = v4[18];
  v6 = v4[17];
  v7 = v4[16];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_C84D4;
  }

  else
  {
    v4[66] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_C8154;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_C8154(uint64_t a1)
{
  sub_104CF0();
  sub_1051B0();
  v2 = swift_task_alloc();
  v1[67] = v2;
  *v2 = v1;
  v2[1] = sub_C8234;
  v3 = v1[27];
  v4 = v1[15];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v4, v3);
}

uint64_t sub_C8234(uint64_t a1)
{
  v2 = *(*v1 + 528);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  *(*v1 + 544) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_C83AC, 0, 0);
}

uint64_t sub_C83AC()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v3 = v0[68];

  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_C84D4()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_C85F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25E4(&qword_1375A8, &qword_10AA90);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;

  sub_BD4A4(v5, v4);

  v6 = sub_104FF0();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  return sub_1051C0();
}

uint64_t sub_C86D8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1052B0();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v6 = sub_104D60();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_1051E0();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = sub_106960();
  v3[18] = v8;
  v3[19] = *(v8 - 8);
  v3[20] = swift_task_alloc();
  v9 = sub_104FF0();
  v3[21] = v9;
  v3[22] = *(v9 - 8);
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_C8920, 0, 0);
}

uint64_t sub_C8920()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider makeWindowFlow", v4, 2u);
  }

  v5 = v0[23];
  v6 = v0[20];
  v26 = v0[22];
  v27 = v0[21];
  v7 = v0[18];
  v8 = v0[19];
  v9 = v0[15];
  v30 = v0[14];
  v10 = v0[12];
  v11 = v0[13];
  v19 = v0[11];
  v20 = v0[16];
  v28 = v0[17];
  v29 = v0[10];
  v12 = v0[8];
  v22 = v0[7];
  v23 = v0[9];
  v24 = v0[6];
  v25 = v0[5];
  v21 = v0[4];

  (*(v8 + 104))(v6, enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:), v7);
  sub_BD9B4(v6, v5);
  (*(v8 + 8))(v6, v7);
  sub_104D10();
  sub_1051A0();
  (*(v10 + 8))(v11, v19);
  (*(v9 + 16))(v20, v28, v30);
  sub_105010();
  swift_allocObject();
  sub_105000();
  (*(v12 + 16))(v29, v21, v22);
  v13 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v24;
  (*(v12 + 32))(v14 + v13, v29, v22);
  *(v14 + ((v23 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  sub_1066B0();
  swift_allocObject();

  sub_1066A0();
  sub_105180();
  swift_allocObject();
  sub_105000();
  sub_104A00();
  swift_allocObject();
  v0[2] = sub_1049F0();
  sub_CBFA8(&qword_13A550, 255, &type metadata accessor for YesNoSearchWindowStrategy, &protocol conformance descriptor for YesNoSearchWindowStrategy);
  v15 = sub_104A10();

  v0[3] = v15;
  sub_25E4(&qword_13A558, &unk_10ADB0);
  sub_B880C(&qword_13A560, &qword_13A558, &unk_10ADB0, &protocol conformance descriptor for AnyValueFlow<A>);
  v16 = sub_104B40();

  (*(v9 + 8))(v28, v30);
  (*(v26 + 8))(v5, v27);

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_C8E68(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_104FF0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_104D60();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_C8F84, 0, 0);
}

uint64_t sub_C8F84()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider window prompt producing rejection output", v4, 2u);
  }

  sub_104D40();
  sub_104FE0();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_C90F4;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  return sub_19708(v8, v6, v7);
}

uint64_t sub_C90F4()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_CC058, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_C9320(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_104FF0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_104D60();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_C943C, 0, 0);
}

uint64_t sub_C943C()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider window prompt producing cancel output", v4, 2u);
  }

  sub_104D40();
  sub_104FE0();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2B050;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  return sub_19708(v8, v6, v7);
}

uint64_t sub_C95AC(uint64_t a1)
{
  v2 = sub_105E80();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v6 = sub_106D20();
  sub_135C4(v6, qword_13A3A0);
  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "SearchAlarm.ResultSetProvider Window prompt parsing nlv3 ActionForInput", v9, 2u);
  }

  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for AlarmNLIntent(0);
  swift_allocObject();
  sub_B3800(v5);
  if (sub_B372C() == 3)
  {
    sub_104E60();
  }

  else
  {
    sub_104E50();
  }
}

uint64_t sub_C9784(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_25E4(&unk_137460, &unk_108C60);
  v2[4] = swift_task_alloc();
  v3 = sub_105E80();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_C987C, 0, 0);
}

uint64_t sub_C987C()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider Window prompt parsing nlv3 window action", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[3];

  (*(v6 + 16))(v5, v8, v7);
  type metadata accessor for AlarmNLIntent(0);
  swift_allocObject();
  sub_B3800(v5);
  v9 = sub_B372C();
  if ((v9 - 1) < 2)
  {
    v10 = v0[4];
    v11 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_9:
    v12 = *v11;
    v13 = sub_1050D0();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v10, v12, v13);
    v15 = 0;
    goto LABEL_11;
  }

  if (!v9)
  {
    v10 = v0[4];
    v11 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_9;
  }

  v13 = sub_1050D0();
  v14 = *(v13 - 8);
  v15 = 1;
LABEL_11:
  (*(v14 + 56))(v0[4], v15, 1, v13);
  sub_105330();

  v16 = v0[1];

  return v16();
}

uint64_t sub_C9B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_56FA4;

  return sub_CAC34(a2, a3);
}

uint64_t sub_C9BC4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_104D60();
  v3[5] = swift_task_alloc();
  v4 = sub_1051E0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_106D20();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_106300();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_106320();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_C9DC8, 0, 0);
}

uint64_t sub_C9DC8()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4(v0[9], qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.ResultSetProvider makeFinalWindowFlow", v4, 2u);
  }

  v5 = v0[4];

  v6 = *(v5 + 56);
  if (v6 >> 62)
  {
    if (sub_107270() == 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_7:
    v7 = sub_106D10();
    v8 = sub_106FC0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "SearchAlarm.ResultSetProvider Bypassing windowing flow for single item presentation", v9, 2u);
    }

    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_CA098;

    return sub_C2EE0();
  }

  v12 = v0[11];
  v13 = v0[9];
  v14 = v0[10];
  (*(v0[13] + 104))(v0[14], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[12]);
  (*(v14 + 16))(v12, v1, v13);
  mach_absolute_time();
  sub_106330();
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_CA244;
  v16 = v0[3];
  v17 = v0[2];

  return sub_CAC34(v17, v16);
}

uint64_t sub_CA098(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_CA244(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_CA6A0;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_CA36C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_CA36C(uint64_t a1)
{
  v2 = v1[3];
  sub_104CF0();
  *(swift_task_alloc() + 16) = v2;
  sub_1051B0();

  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_CA464;
  v4 = v1[17];
  v5 = v1[8];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v5, v4);
}

uint64_t sub_CA464(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 184) = a1;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_CA5DC, 0, 0);
}

uint64_t sub_CA5DC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[23];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_CA6A0()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_CA75C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25E4(&qword_1375A8, &qword_10AA90);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_BD4A4(a2, &v8 - v4);
  v6 = sub_104FF0();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return sub_1051C0();
}

uint64_t sub_CA82C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_25E4(&qword_13A538, &qword_10AD78);
  v2[5] = swift_task_alloc();
  v3 = sub_106000();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_CA930, 0, 0);
}

uint64_t sub_CA930()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_105FC0();
  sub_105FB0();
  sub_105FA0();

  sub_106790();

  sub_105FF0();
  v5 = sub_105FE0();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v7 = sub_106D20();
  sub_135C4(v7, qword_13A3A0);
  v8 = sub_106D10();
  v9 = sub_106FC0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v5 & 1;
    _os_log_impl(&dword_0, v8, v9, "[ResultSetProvider.makeWindowingConfiguration] Using windowing configuration = %{BOOL}d", v10, 8u);
  }

  v11 = v0[3];
  if (v5)
  {
    v0[2] = v0[4];
    sub_25E4(&qword_1387B8, &qword_1094D8);
    _s17ResultSetProviderCMa();
    sub_CBFA8(&qword_13A548, v12, _s17ResultSetProviderCMa, &unk_10ACB0);
    sub_1049E0();
    sub_105190();
    v13 = sub_25E4(&qword_13A540, &qword_10AD80);
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = sub_25E4(&qword_13A540, &qword_10AD80);
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_CAC34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for SearchQuerySuccessMultiParameters(0);
  v3[6] = swift_task_alloc();
  v4 = sub_104670();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_CAD28, 0, 0);
}

uint64_t sub_CAD28()
{
  v46 = v0;
  v1 = v0[3];
  v45 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_45:
    v2 = sub_107270();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v0[3] + 32;
    do
    {
      if (v4)
      {
        v7 = sub_1071C0();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_44;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v0 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v9 = [v7 sleepAlarmAttribute];
      if (v9)
      {
      }

      else
      {
        sub_107200();
        sub_107230();
        sub_107240();
        v1 = &v45;
        sub_107210();
      }

      ++v3;
    }

    while (v0 != v2);
    v0 = v44;
    v10 = v45;
    v45 = _swiftEmptyArrayStorage;
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

  v10 = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_46:
    v43 = sub_107270();
    goto LABEL_19;
  }

LABEL_17:
  if ((v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v43 = *(v10 + 16);
LABEL_19:
  v11 = 0;
  v12 = (v0[8] + 8);
  v0 = _swiftEmptyArrayStorage;
  while (v43 != v11)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = sub_1071C0();
    }

    else
    {
      if (v11 >= *(v10 + 16))
      {
        goto LABEL_42;
      }

      v13 = *(v10 + 8 * v11 + 32);
    }

    v1 = v13;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v15 = v44[9];
    v16 = v44[7];
    sub_106210();
    v17 = sub_75DD4(0, v15, 0);

    (*v12)(v15, v16);
    ++v11;
    if (v17)
    {
      sub_106EC0();
      if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v45 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_106F10();
      }

      v1 = &v45;
      sub_106F20();
      v0 = v45;
      v11 = v14;
    }
  }

  if (v0 >> 62)
  {
    sub_107270();
  }

  v41 = v0;
  v18 = sub_C1D80();
  v44[10] = v18;
  v19 = qword_136D88;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = v44[5];
  v20 = v44[6];
  v22 = sub_1052A0();
  v23 = sub_105280();
  v24 = sub_1052A0();
  v25 = sub_105290();
  v26 = sub_105250();
  v27 = sub_106160();
  (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  v40 = v21[5];
  *&v20[v40] = 0;
  v20[v21[6]] = 1;
  v28 = &v20[v21[7]];
  *v28 = 0;
  v28[8] = 1;
  v20[v21[8]] = (v22 & 1) == 0;
  v20[v21[9]] = v23 & 1;
  v20[v21[10]] = v24 & 1;
  v20[v21[11]] = v25 & 1;
  v20[v21[12]] = v26 & 1;
  *&v20[v21[13]] = v41;
  v29 = &v20[v21[14]];
  *v29 = 0;
  v29[8] = 1;
  v30 = v21[15];
  *&v20[v30] = 0;
  v31 = &v20[v21[16]];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v20[v21[17]];
  *v32 = 0;
  v32[8] = 1;
  sub_106100();
  v33 = qword_136E48;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = v44[4];

  *&v20[v40] = sub_1060F0();
  *v32 = sub_105270();
  v32[8] = 0;
  *&v20[v30] = v18;
  v35 = v34[7];
  if (v35 >> 62)
  {
    v36 = sub_107270();
  }

  else
  {
    v36 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
  }

  *v31 = v36;
  v31[8] = 0;
  v37 = sub_A7FA0();
  v44[11] = v37;
  v42 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v38 = swift_task_alloc();
  v44[12] = v38;
  *v38 = v44;
  v38[1] = sub_CB2B8;

  return v42(0xD000000000000018, 0x800000000010E0A0, v37);
}

uint64_t sub_CB2B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_CB4A8;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_CB404;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_CB404()
{
  sub_CBF48(v0[6], type metadata accessor for SearchQuerySuccessMultiParameters);

  v1 = v0[1];
  v2 = v0[14];

  return v1(v2);
}

uint64_t sub_CB4A8()
{
  sub_CBF48(*(v0 + 48), type metadata accessor for SearchQuerySuccessMultiParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_CB548()
{
  sub_2738((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_CB5C8()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t sub_CB5FC()
{
  v1 = sub_104B20();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_CB65C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_57B60;

  return sub_C2398();
}

uint64_t sub_CB6EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_57B60;

  return sub_C2EE0();
}

uint64_t sub_CB77C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_57B60;

  return sub_C603C();
}

uint64_t sub_CB80C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return sub_CA82C(a1);
}

uint64_t sub_CB8A8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_57B60;

  return sub_C9BC4(a1, v4);
}

uint64_t sub_CB950(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_57B60;

  return sub_C86D8(a1, v4);
}

uint64_t sub_CBA60()
{
  if (qword_136E30 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A3A0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  v5 = sub_106D10();
  v6 = sub_106FA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Alarms #response enabled – allowing ResultSet output to handle rendering", v7, 2u);
  }

  sub_104DA0();
  sub_104D90();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_CBBFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CE64;

  return sub_CBA40(a1);
}

uint64_t sub_CBC94(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CE64;

  return sub_D6B68(a1);
}

uint64_t sub_CBD58()
{
  v1 = sub_1052B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_CBE30()
{
  v2 = *(sub_1052B0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_57838;

  return sub_C9B18(v4, v0 + v3, v5);
}

uint64_t sub_CBF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_CBFA8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_CC004()
{
  result = qword_13A570;
  if (!qword_13A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_13A570);
  }

  return result;
}

uint64_t sub_CC08C(uint64_t a1, unsigned int *a2, uint64_t *a3, void *a4)
{
  v7 = sub_1062B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *a2, v7);
  v11 = sub_1062A0();
  v13 = v12;
  result = (*(v8 + 8))(v10, v7);
  *a3 = v11;
  *a4 = v13;
  return result;
}

uint64_t sub_CC198()
{
  if (qword_136E38 != -1)
  {
    swift_once();
  }

  v0 = qword_136E40;

  if (v0 != -1)
  {
    swift_once();
  }

  sub_106770();
  swift_allocObject();

  result = sub_106760();
  qword_13B980 = result;
  return result;
}

uint64_t type metadata accessor for DeleteAlarmCATs_Async(uint64_t a1)
{
  result = qword_13A578;
  if (!qword_13A578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CC320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t type metadata accessor for CreateAlarmCATs_Async(uint64_t a1)
{
  result = qword_13A5C8;
  if (!qword_13A5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CC53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

uint64_t sub_CC6CC()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A618);
  sub_135C4(v0, qword_13A618);
  return sub_106A80();
}

uint64_t sub_CC72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_106630();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CC7EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_106630();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s21ConfirmIntentStrategyVMa_0(uint64_t a1)
{
  result = qword_13A6A0;
  if (!qword_13A6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_CC8DC(uint64_t a1)
{
  result = sub_1B2C0();
  if (v2 <= 0x3F)
  {
    result = sub_106630();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_CC960()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A630);
  sub_135C4(v0, qword_13A630);
  return sub_106A80();
}

uint64_t sub_CC9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_25E4(&unk_1374C0, &unk_1087B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_25E4(&qword_1374F0, &qword_1080F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  if (qword_136E58 != -1)
  {
    swift_once();
  }

  v12 = sub_106D20();
  sub_135C4(v12, qword_13A630);
  v13 = sub_106D10();
  v14 = sub_106FC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "DismissAlarm.ConfirmIntentStrategy.actionForInput() called.", v15, 2u);
  }

  v16 = *(_s21ConfirmIntentStrategyVMa_0(0) + 20);
  v17 = sub_106630();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v11, v3 + v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  v19 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v20 = sub_106450();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v8, v19, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  sub_42240(a1, v11, 0, v8, a2);
  sub_16F70(v8, &unk_1374C0, &unk_1087B0);
  return sub_16F70(v11, &qword_1374F0, &qword_1080F0);
}

uint64_t sub_CCC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_25E4(&unk_137460, &unk_108C60);
  v3[5] = swift_task_alloc();
  v4 = sub_1050D0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_CCD80, 0, 0);
}

uint64_t sub_CCD80()
{
  if (qword_136E58 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_13A630);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "In DismissAlarm.ConfirmIntentStrategy.parseConfirmationResponse().", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];

  sub_1174C(v9, v5);
  (*(v6 + 16))(v7, v5, v8);
  (*(v6 + 56))(v7, 0, 1, v8);
  sub_25E4(&qword_1376C8, &qword_10B020);
  sub_105170();
  sub_106910();
  sub_105080();
  (*(v6 + 8))(v5, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_CCF68(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_25E4(&qword_1375A8, &qword_10AA90);
  v2[9] = swift_task_alloc();
  sub_25E4(&qword_137598, &unk_107EB0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v3 = sub_105030();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  sub_104D60();
  v2[17] = swift_task_alloc();
  v4 = sub_1051E0();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = sub_106D20();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v6 = sub_106300();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v7 = sub_106320();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v8 = sub_106370();
  v2[30] = v8;
  v2[31] = *(v8 - 8);
  v2[32] = swift_task_alloc();
  v9 = sub_104FF0();
  v2[33] = v9;
  v2[34] = *(v9 - 8);
  v2[35] = swift_task_alloc();
  v10 = sub_106960();
  v2[36] = v10;
  v2[37] = *(v10 - 8);
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_CD36C, 0, 0);
}

uint64_t sub_CD36C()
{
  v1 = v0[38];
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  (*(v0[37] + 104))(v1, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v0[36]);
  sub_BD9B4(v1, v2);
  sub_106360();
  LOBYTE(v1) = sub_106350();
  (*(v4 + 8))(v3, v5);
  if (v1)
  {
    (*(v0[25] + 104))(v0[26], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[24]);
    if (qword_136E58 != -1)
    {
      swift_once();
    }

    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    v9 = sub_135C4(v8, qword_13A630);
    (*(v7 + 16))(v6, v9, v8);
    mach_absolute_time();
    sub_106330();
    if (qword_136C90 != -1)
    {
      swift_once();
    }

    v10 = v0[8];
    _s21ConfirmIntentStrategyVMa_0(0);
    sub_106630();
    v11 = sub_106510();
    v12 = sub_106510();
    v13 = swift_task_alloc();
    v0[39] = v13;
    *(v13 + 16) = v10;
    v14 = swift_task_alloc();
    v0[40] = v14;
    *v14 = v0;
    v14[1] = sub_CDA18;

    return sub_D257C(v11 & 1, (v12 & 1) == 0, sub_CF1B4, v13);
  }

  else
  {
    if (qword_136C88 != -1)
    {
      swift_once();
    }

    _s21ConfirmIntentStrategyVMa_0(0);
    sub_106630();
    v45 = sub_106510();
    v44 = sub_106510();
    v16 = sub_106520();
    if (v16 && (v17 = v16, sub_106C50(), v19 = v18, v17, v19))
    {
      sub_106E50();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = v0[13];
    v22 = sub_106160();
    v23 = *(v22 - 8);
    v24 = *(v23 + 56);
    v24(v21, v20, 1, v22);
    v25 = sub_106520();
    if (v25 && (v26 = v25, sub_106C60(), v28 = v27, v26, v28))
    {
      sub_106E50();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = v0[13];
    v31 = v0[11];
    v24(v0[12], v29, 1, v22);
    sub_25E4(&qword_137880, &unk_108290);
    v32 = swift_allocObject();
    v0[45] = v32;
    *(v32 + 16) = xmmword_108210;
    *(v32 + 32) = 0x6E6F737265507369;
    *(v32 + 40) = 0xEA00000000006C61;
    *(v32 + 48) = (v45 & 1) == 0;
    *(v32 + 72) = &type metadata for Bool;
    *(v32 + 80) = 0x6E756D6D6F437369;
    *(v32 + 88) = 0xEA00000000006C61;
    *(v32 + 96) = v44 & 1;
    *(v32 + 120) = &type metadata for Bool;
    *(v32 + 128) = 0x614E656369766564;
    *(v32 + 136) = 0xEA0000000000656DLL;
    sub_826B8(v30, v31);
    v33 = *(v23 + 48);
    v34 = v33(v31, 1, v22);
    v35 = v0[11];
    if (v34 == 1)
    {
      sub_16F70(v0[11], &qword_137598, &unk_107EB0);
      *(v32 + 144) = 0u;
      *(v32 + 160) = 0u;
    }

    else
    {
      *(v32 + 168) = v22;
      v36 = sub_1A924((v32 + 144));
      (*(v23 + 32))(v36, v35, v22);
    }

    v37 = v0[12];
    v38 = v0[10];
    *(v32 + 176) = 0x656D614E6D6F6F72;
    *(v32 + 184) = 0xE800000000000000;
    sub_826B8(v37, v38);
    v39 = v33(v38, 1, v22);
    v40 = v0[10];
    if (v39 == 1)
    {
      sub_16F70(v0[10], &qword_137598, &unk_107EB0);
      *(v32 + 192) = 0u;
      *(v32 + 208) = 0u;
    }

    else
    {
      *(v32 + 216) = v22;
      v41 = sub_1A924((v32 + 192));
      (*(v23 + 32))(v41, v40, v22);
    }

    v46 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
    v42 = swift_task_alloc();
    v0[46] = v42;
    *v42 = v0;
    v42[1] = sub_CDF60;
    v43 = v0[16];

    return v46(v43, 0xD000000000000025, 0x800000000010E280, v32);
  }
}

uint64_t sub_CDA18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_CE814;
  }

  else
  {
    *(v4 + 336) = a1;
    v5 = sub_CDB64;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_CDB64(uint64_t a1)
{
  v2 = v1[35];
  sub_104D00();
  *(swift_task_alloc() + 16) = v2;
  sub_1051B0();

  v3 = swift_task_alloc();
  v1[43] = v3;
  *v3 = v1;
  v3[1] = sub_CDC60;
  v4 = v1[29];
  v5 = v1[20];
  v6 = v1[7];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v6, v5, v4);
}

uint64_t sub_CDC60()
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 352) = v0;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_CE990;
  }

  else
  {
    v6 = sub_CDDF0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_CDDF0()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  (*(v0[28] + 8))(v0[29], v0[27]);
  (*(v2 + 8))(v1, v3);
  (*(v0[34] + 8))(v0[35], v0[33]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_CDF60()
{
  v2 = *v1;
  v2[47] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_CE680, 0, 0);
  }

  else
  {
    v3 = v2[13];
    sub_16F70(v2[12], &qword_137598, &unk_107EB0);
    sub_16F70(v3, &qword_137598, &unk_107EB0);
    v4 = swift_task_alloc();
    v2[48] = v4;
    *v4 = v2;
    v4[1] = sub_CE144;
    v5 = v2[38];

    return sub_863DC(v5);
  }
}

uint64_t sub_CE144(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = sub_CE504;
  }

  else
  {
    *(v4 + 400) = a1;
    v5 = sub_CE26C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_CE26C()
{
  v1 = *(v0 + 280);
  v13 = *(v0 + 288);
  v14 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v9 = *(v0 + 128);
  v10 = *(v0 + 120);
  v11 = *(v0 + 112);
  v12 = *(v0 + 296);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  sub_1A8E0(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_104CC0();
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v6 = sub_105430();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v5[3] = v6;
  v5[4] = &protocol witness table for AceOutput;
  sub_1A924(v5);
  sub_104EE0();

  sub_16F70(v0 + 16, &qword_1375B0, &qword_107EC0);
  sub_16F70(v4, &qword_1375A8, &qword_10AA90);
  (*(v10 + 8))(v9, v11);
  (*(v12 + 8))(v14, v13);
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_CE504()
{
  v1 = v0[37];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v2 = v0[35];
  v4 = v0[33];
  v3 = v0[34];
  (*(v1 + 8))(v0[38], v0[36]);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_CE680()
{
  v1 = v0[37];
  v2 = v0[13];
  sub_16F70(v0[12], &qword_137598, &unk_107EB0);
  sub_16F70(v2, &qword_137598, &unk_107EB0);
  v3 = v0[35];
  v5 = v0[33];
  v4 = v0[34];
  (*(v1 + 8))(v0[38], v0[36]);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_CE814()
{
  v1 = v0[37];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v2 = v0[35];
  v4 = v0[33];
  v3 = v0[34];
  (*(v1 + 8))(v0[38], v0[36]);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_CE990()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_CEB08(uint64_t a1)
{
  v2 = sub_25E4(&qword_137598, &unk_107EB0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  _s21ConfirmIntentStrategyVMa_0(0);
  sub_106630();
  v8 = sub_106520();
  if (v8 && (v9 = v8, sub_106C50(), v11 = v10, v9, v11))
  {
    sub_106E50();

    v12 = sub_106160();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  }

  else
  {
    v13 = sub_106160();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1A814(v7, a1);
  v14 = sub_106520();
  if (v14 && (v15 = v14, sub_106C60(), v17 = v16, v15, v17))
  {
    sub_106E50();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_106160();
  (*(*(v19 - 8) + 56))(v5, v18, 1, v19);
  v20 = type metadata accessor for StopConfirmationParameters(0);
  return sub_1A814(v5, a1 + *(v20 + 28));
}

uint64_t sub_CED50(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E4(&qword_1375A8, &qword_10AA90);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_1051D0();
  v6 = sub_104FF0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_1051C0();
}

uint64_t sub_CEE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CE64;

  return sub_CCC84(a1, a2, a3);
}

uint64_t sub_CEF0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_CEFB4;

  return sub_CCF68(a1);
}

uint64_t sub_CEFB4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_CF0E8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_CF0E8()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

id *sub_CF1C4()
{
  v1 = v0;
  v2 = sub_106160();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 period];
  v7 = _swiftEmptyArrayStorage;
  if (v6 <= 2)
  {
    if (v6 != (&dword_0 + 1))
    {
      if (v6 != (&dword_0 + 2))
      {
        goto LABEL_20;
      }

      v8 = 0xE90000000000006ELL;
      v7 = sub_AD590(0, 1, 1, _swiftEmptyArrayStorage);
      v10 = v7[2];
      v9 = v7[3];
      v11 = (v10 + 1);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_AD590((v9 > 1), v10 + 1, 1, v7);
      }

      v12 = 0x6F6F6E7265746661;
      goto LABEL_19;
    }

    v7 = sub_AD590(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = v7[2];
    v14 = v7[3];
    v11 = (v10 + 1);
    if (v10 >= v14 >> 1)
    {
      v7 = sub_AD590((v14 > 1), v10 + 1, 1, v7);
    }

    v8 = 0xE700000000000000;
    v15 = 1852993389;
    goto LABEL_18;
  }

  if (v6 == (&dword_0 + 3))
  {
    v7 = sub_AD590(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = v7[2];
    v16 = v7[3];
    v11 = (v10 + 1);
    if (v10 >= v16 >> 1)
    {
      v7 = sub_AD590((v16 > 1), v10 + 1, 1, v7);
    }

    v8 = 0xE700000000000000;
    v15 = 1852143205;
LABEL_18:
    v12 = v15 | 0x676E6900000000;
    goto LABEL_19;
  }

  if (v6 != &dword_8)
  {
    goto LABEL_20;
  }

  v7 = sub_AD590(0, 1, 1, _swiftEmptyArrayStorage);
  v10 = v7[2];
  v13 = v7[3];
  v11 = (v10 + 1);
  if (v10 >= v13 >> 1)
  {
    v7 = sub_AD590((v13 > 1), v10 + 1, 1, v7);
  }

  v8 = 0xE800000000000000;
  v12 = 0x776F72726F6D6F74;
LABEL_19:
  v7[2] = v11;
  v17 = &v7[2 * v10];
  v17[4] = v12;
  v17[5] = v8;
LABEL_20:
  if (sub_1CE68())
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_AD590(0, v7[2] + 1, 1, v7);
    }

    v19 = v7[2];
    v18 = v7[3];
    if (v19 >= v18 >> 1)
    {
      v7 = sub_AD590((v18 > 1), v19 + 1, 1, v7);
    }

    v7[2] = (v19 + 1);
    v20 = &v7[2 * v19];
    v20[4] = 0xD000000000000011;
    v20[5] = 0x800000000010C690;
  }

  v21 = [v1 label];
  if (v21)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_AD590(0, v7[2] + 1, 1, v7);
    }

    v23 = v7[2];
    v22 = v7[3];
    if (v23 >= v22 >> 1)
    {
      v7 = sub_AD590((v22 > 1), v23 + 1, 1, v7);
    }

    v7[2] = (v23 + 1);
    v24 = &v7[2 * v23];
    v24[4] = 0xD000000000000012;
    v24[5] = 0x800000000010C670;
  }

  v25 = [v1 alarmReferenceType];
  if (v25 < 2)
  {
LABEL_46:
    v33 = [v1 includeSleepAlarm];
    sub_1F7B8();
    v34.super.super.isa = sub_107090(1).super.super.isa;
    isa = v34.super.super.isa;
    if (v33)
    {
      v36 = sub_1070A0();

      if (v36)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_AD590(0, v7[2] + 1, 1, v7);
        }

        v38 = v7[2];
        v37 = v7[3];
        if (v38 >= v37 >> 1)
        {
          v7 = sub_AD590((v37 > 1), v38 + 1, 1, v7);
        }

        v7[2] = (v38 + 1);
        v39 = &v7[2 * v38];
        v39[4] = 0x7065656C73;
        v39[5] = 0xE500000000000000;
      }
    }

    else
    {
    }

    v40 = [v1 alarmSearchStatus];
    if (v40 == &dword_0 + 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_AD590(0, v7[2] + 1, 1, v7);
      }

      v42 = v7[2];
      v46 = v7[3];
      v43 = v42 + 1;
      if (v42 >= v46 >> 1)
      {
        v7 = sub_AD590((v46 > 1), v42 + 1, 1, v7);
      }

      v44 = 0xE800000000000000;
      v45 = 0x64656C6261736964;
    }

    else
    {
      if (v40 != &dword_0 + 1)
      {
        v43 = v7[2];
        if (!v43)
        {

          return _swiftEmptyArrayStorage;
        }

LABEL_68:
        v54 = _swiftEmptyArrayStorage;
        sub_833E4(0, v43, 0);
        v48 = v54;
        v49 = v7 + 5;
        do
        {

          sub_106E50();

          v54 = v48;
          v51 = v48[2];
          v50 = v48[3];
          if (v51 >= v50 >> 1)
          {
            sub_833E4((v50 > 1), v51 + 1, 1);
            v48 = v54;
          }

          v48[2] = (v51 + 1);
          (*(v3 + 32))(v48 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v51, v5, v2);
          v49 += 2;
          --v43;
        }

        while (v43);

        return v48;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_AD590(0, v7[2] + 1, 1, v7);
      }

      v42 = v7[2];
      v41 = v7[3];
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v7 = sub_AD590((v41 > 1), v42 + 1, 1, v7);
      }

      v44 = 0xE700000000000000;
      v45 = 0x64656C62616E65;
    }

    v7[2] = v43;
    v47 = &v7[2 * v42];
    v47[4] = v45;
    v47[5] = v44;
    goto LABEL_68;
  }

  if (v25 == (&dword_0 + 3))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_AD590(0, v7[2] + 1, 1, v7);
    }

    v27 = v7[2];
    v26 = v7[3];
    v28 = (v27 + 1);
    if (v27 >= v26 >> 1)
    {
      v7 = sub_AD590((v26 > 1), v27 + 1, 1, v7);
    }

    v29 = 0xE300000000000000;
    v30 = 7105633;
LABEL_45:
    v7[2] = v28;
    v32 = &v7[2 * v27];
    v32[4] = v30;
    v32[5] = v29;
    goto LABEL_46;
  }

  if (v25 == (&dword_0 + 2))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_AD590(0, v7[2] + 1, 1, v7);
    }

    v27 = v7[2];
    v31 = v7[3];
    v28 = (v27 + 1);
    if (v27 >= v31 >> 1)
    {
      v7 = sub_AD590((v31 > 1), v27 + 1, 1, v7);
    }

    v29 = 0xE400000000000000;
    v30 = 1954047342;
    goto LABEL_45;
  }

  v54 = v25;
  result = sub_1073A0();
  __break(1u);
  return result;
}

uint64_t sub_CF984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a2;
  v111 = a1;
  v117 = a4;
  v5 = sub_1047B0();
  v99 = *(v5 - 8);
  v100 = v5;
  __chkstk_darwin(v5);
  v97 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_104740();
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v108 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_104750();
  v107 = *(v113 - 8);
  __chkstk_darwin(v113);
  v106 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_104710();
  v105 = *(v112 - 8);
  __chkstk_darwin(v112);
  v104 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_25E4(&qword_137518, &qword_107E28);
  v11 = __chkstk_darwin(v95);
  v94 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v98 = &v92 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v92 - v16;
  __chkstk_darwin(v15);
  v103 = &v92 - v18;
  v19 = sub_104670();
  v116 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v101 = &v92 - v23;
  v24 = sub_25E4(&qword_137500, &qword_107E10);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v92 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v92 - v32;
  __chkstk_darwin(v31);
  v35 = &v92 - v34;
  v115 = a3;
  v36 = [a3 dateTime];
  v102 = v17;
  v96 = v22;
  if (v36)
  {
    v37 = v36;
    sub_104570();

    v38 = sub_1045E0();
    (*(*(v38 - 8) + 56))(v33, 0, 1, v38);
  }

  else
  {
    v38 = sub_1045E0();
    (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
  }

  sub_7C278(v33, v35, &qword_137500, &qword_107E10);
  sub_1045E0();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  if (v40(v35, 1, v38))
  {
    goto LABEL_5;
  }

  v93 = sub_104580();
  v42 = v41;
  sub_16F70(v35, &qword_137500, &qword_107E10);
  if (v42)
  {
    return (*(v116 + 56))(v117, 1, 1, v19);
  }

  v44 = [v115 dateTime];
  if (v44)
  {
    v45 = v44;
    sub_104570();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  (*(v39 + 56))(v27, v46, 1, v38);
  sub_7C278(v27, v30, &qword_137500, &qword_107E10);
  if (v40(v30, 1, v38))
  {
    v35 = v30;
LABEL_5:
    sub_16F70(v35, &qword_137500, &qword_107E10);
    return (*(v116 + 56))(v117, 1, 1, v19);
  }

  v47 = sub_1045A0();
  v49 = v48;
  sub_16F70(v30, &qword_137500, &qword_107E10);
  if (v49)
  {
    return (*(v116 + 56))(v117, 1, 1, v19);
  }

  v50 = v47;
  v52 = v104;
  v51 = v105;
  (*(v105 + 104))(v104, enum case for Calendar.MatchingPolicy.nextTime(_:), v112);
  v53 = v106;
  v54 = v107;
  (*(v107 + 104))(v106, enum case for Calendar.RepeatedTimePolicy.first(_:), v113);
  v56 = v108;
  v55 = v109;
  v57 = v110;
  (*(v109 + 104))(v108, enum case for Calendar.SearchDirection.forward(_:), v110);
  v58 = v103;
  v92 = v50;
  v59 = v111;
  sub_104760();
  (*(v55 + 8))(v56, v57);
  (*(v54 + 8))(v53, v113);
  (*(v51 + 8))(v52, v112);
  v60 = v116;
  v61 = v19;
  if ((*(v116 + 48))(v58, 1, v19) == 1)
  {
    sub_16F70(v58, &qword_137518, &qword_107E28);
    if (qword_136E60 != -1)
    {
      swift_once();
    }

    v62 = sub_106D20();
    sub_135C4(v62, qword_13A6D8);
    v63 = v96;
    (*(v60 + 16))(v96, v114, v19);
    v64 = sub_106D10();
    v65 = sub_106FB0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v118[0] = v67;
      *v66 = 136315138;
      sub_D1E40(&qword_137548, &protocol conformance descriptor for Date);
      v68 = sub_107340();
      v70 = v69;
      (*(v60 + 8))(v63, v61);
      v71 = sub_722E8(v68, v70, v118);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_0, v64, v65, "NextFiringDate: Unable to offset alarmBaseDate from now: %s", v66, 0xCu);
      sub_2738(v67);
    }

    else
    {

      (*(v60 + 8))(v63, v19);
    }

    return (*(v60 + 56))(v117, 1, 1, v61);
  }

  else
  {
    v72 = v101;
    (*(v60 + 32))(v101, v58, v19);
    v73 = [v115 repeatSchedule];
    if (v73)
    {
      v74 = v73;
      sub_1069A0();
      v75 = sub_106EE0();
    }

    else
    {
      v75 = 0;
    }

    v76 = v102;
    sub_D0D24(v59, v114, v93, v92, v75);

    v78 = v99;
    v77 = v100;
    v79 = v97;
    (*(v99 + 104))(v97, enum case for Calendar.Component.day(_:), v100);
    sub_104780();
    (*(v78 + 8))(v79, v77);
    if (qword_136E60 != -1)
    {
      swift_once();
    }

    v80 = sub_106D20();
    sub_135C4(v80, qword_13A6D8);
    v81 = v98;
    sub_D1DD0(v76, v98);
    v82 = sub_106D10();
    v83 = sub_106FC0();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v118[0] = v85;
      *v84 = 136315138;
      sub_D1DD0(v81, v94);
      v86 = sub_106E30();
      v87 = v81;
      v88 = v86;
      v90 = v89;
      sub_16F70(v87, &qword_137518, &qword_107E28);
      v91 = sub_722E8(v88, v90, v118);

      *(v84 + 4) = v91;
      _os_log_impl(&dword_0, v82, v83, "NextFiringDate: %s", v84, 0xCu);
      sub_2738(v85);
    }

    else
    {

      sub_16F70(v81, &qword_137518, &qword_107E28);
    }

    (*(v60 + 8))(v72, v61);
    return sub_7C278(v76, v117, &qword_137518, &qword_107E28);
  }
}

uint64_t sub_D05F8()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A6D8);
  sub_135C4(v0, qword_13A6D8);
  return sub_106A80();
}

uint64_t sub_D0644(id *a1, uint64_t *a2)
{
  v3 = [*a1 repeatSchedule];
  if (v3 <= 2)
  {
    if (!v3)
    {
      v4 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a2 = result;
      }

      v7 = *(v4 + 16);
      v12 = *(v4 + 24);
      v8 = v7 + 1;
      if (v7 < v12 >> 1)
      {
        v9 = 1;
        goto LABEL_37;
      }

      result = sub_AD6C4((v12 > 1), v7 + 1, 1, v4);
      v9 = 1;
      v4 = result;
      goto LABEL_45;
    }

    if (v3 == &dword_0 + 1)
    {
      v4 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a2 = result;
      }

      v7 = *(v4 + 16);
      v10 = *(v4 + 24);
      v8 = v7 + 1;
      if (v7 < v10 >> 1)
      {
        v9 = 2;
        goto LABEL_37;
      }

      result = sub_AD6C4((v10 > 1), v7 + 1, 1, v4);
      v4 = result;
      v9 = 2;
LABEL_45:
      *a2 = v4;
      goto LABEL_37;
    }

    if (v3 == &dword_0 + 2)
    {
      v4 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a2 = result;
      }

      v7 = *(v4 + 16);
      v13 = *(v4 + 24);
      v8 = v7 + 1;
      if (v7 < v13 >> 1)
      {
        v9 = 3;
        goto LABEL_37;
      }

      result = sub_AD6C4((v13 > 1), v7 + 1, 1, v4);
      v4 = result;
      v9 = 3;
      goto LABEL_45;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == &dword_0 + 3)
      {
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v4;
        if ((result & 1) == 0)
        {
          result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
          v4 = result;
          *a2 = result;
        }

        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        v8 = v7 + 1;
        if (v7 < v6 >> 1)
        {
          v9 = 4;
LABEL_37:
          *(v4 + 16) = v8;
          *(v4 + 8 * v7 + 32) = v9;
          return result;
        }

        result = sub_AD6C4((v6 > 1), v7 + 1, 1, v4);
        v4 = result;
        v9 = 4;
      }

      else
      {
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v4;
        if ((result & 1) == 0)
        {
          result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
          v4 = result;
          *a2 = result;
        }

        v7 = *(v4 + 16);
        v14 = *(v4 + 24);
        v8 = v7 + 1;
        if (v7 < v14 >> 1)
        {
          v9 = 5;
          goto LABEL_37;
        }

        result = sub_AD6C4((v14 > 1), v7 + 1, 1, v4);
        v4 = result;
        v9 = 5;
      }

      goto LABEL_45;
    }

    if (v3 == &dword_4 + 1)
    {
      v4 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a2 = result;
      }

      v7 = *(v4 + 16);
      v11 = *(v4 + 24);
      v8 = v7 + 1;
      if (v7 < v11 >> 1)
      {
        v9 = 6;
        goto LABEL_37;
      }

      result = sub_AD6C4((v11 > 1), v7 + 1, 1, v4);
      v4 = result;
      v9 = 6;
      goto LABEL_45;
    }

    if (v3 == &dword_4 + 2)
    {
      v4 = *a2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_AD6C4(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a2 = result;
      }

      v7 = *(v4 + 16);
      v15 = *(v4 + 24);
      v8 = v7 + 1;
      if (v7 < v15 >> 1)
      {
        v9 = 7;
        goto LABEL_37;
      }

      result = sub_AD6C4((v15 > 1), v7 + 1, 1, v4);
      v4 = result;
      v9 = 7;
      goto LABEL_45;
    }
  }

  result = sub_1073A0();
  __break(1u);
  return result;
}

void sub_D0A2C(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_107270())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1071C0();
      }

      else
      {
        if (v6 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_D0644(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

unint64_t sub_D0B20(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = (*v3)[2];
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > (v5[3] >> 1))
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_AD6C4(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_D0BF4(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_D0BF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_D0CB4(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 16);
  if (!v3)
  {
LABEL_5:
    result = *(*a2 + 16);
    v6 = result;
LABEL_6:
    sub_D0B20(result, v6, a1);
    return v3;
  }

  result = 0;
  while (1)
  {
    v5 = *(*a2 + 32 + 8 * result);
    if (v5 >= a1)
    {
      break;
    }

    if (v3 == ++result)
    {
      goto LABEL_5;
    }
  }

  if (v5 != a1)
  {
    v3 = result;
    v6 = result;
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_D0D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v81 = a5;
  v87 = a4;
  v88 = a2;
  v86 = a1;
  v6 = sub_1047B0();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_104740();
  v8 = *(v85 - 8);
  __chkstk_darwin(v85);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_104750();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_104710();
  v82 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25E4(&qword_137518, &qword_107E28);
  __chkstk_darwin(v19 - 8);
  v21 = &v74 - v20;
  v22 = sub_104670();
  v83 = *(v22 - 8);
  v84 = v22;
  v23 = __chkstk_darwin(v22);
  v80 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v79 = &v74 - v25;
  (*(v16 + 104))(v18, enum case for Calendar.MatchingPolicy.nextTime(_:), v15);
  v26 = v11;
  (*(v12 + 104))(v14, enum case for Calendar.RepeatedTimePolicy.first(_:), v11);
  v27 = v85;
  (*(v8 + 104))(v10, enum case for Calendar.SearchDirection.forward(_:), v85);
  v78 = a3;
  sub_104760();
  (*(v8 + 8))(v10, v27);
  (*(v12 + 8))(v14, v26);
  v28 = v18;
  v30 = v83;
  v29 = v84;
  (*(v16 + 8))(v28, v82);
  if ((*(v30 + 48))(v21, 1, v29) == 1)
  {
    sub_16F70(v21, &qword_137518, &qword_107E28);
    if (qword_136E60 != -1)
    {
      swift_once();
    }

    v31 = sub_106D20();
    sub_135C4(v31, qword_13A6D8);
    v32 = v80;
    (*(v30 + 16))(v80, v88, v29);
    v33 = sub_106D10();
    v34 = sub_106FB0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v89[0] = v36;
      *v35 = 134218498;
      *(v35 + 4) = v78;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v87;
      *(v35 + 22) = 2080;
      sub_D1E40(&qword_137548, &protocol conformance descriptor for Date);
      v37 = sub_107340();
      v39 = v38;
      (*(v30 + 8))(v32, v29);
      v40 = sub_722E8(v37, v39, v89);

      *(v35 + 24) = v40;
      _os_log_impl(&dword_0, v33, v34, "Unable to get date using hour=%ld, minute=%ld from now of %s", v35, 0x20u);
      sub_2738(v36);
    }

    else
    {

      (*(v30 + 8))(v32, v29);
    }

    return 0;
  }

  v41 = v79;
  (*(v30 + 32))(v79, v21, v29);
  v42 = v81;
  if (v81)
  {
    if (v81 >> 62)
    {
      if (sub_107270())
      {
LABEL_9:
        v44 = v75;
        v43 = v76;
        v45 = v77;
        (*(v76 + 104))(v75, enum case for Calendar.Component.weekday(_:), v77);
        v46 = sub_1047C0();
        (*(v43 + 8))(v44, v45);
        v47 = v46 - 1;
        if (v46 == 1)
        {
          v47 = 7;
        }

        else if (__OFSUB__(v46, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        v91[0] = _swiftEmptyArrayStorage;
        sub_D0A2C(v42, v91);
        v49 = v91[0];
        sub_D1E40(&qword_13A6F8, &protocol conformance descriptor for Date);

        if ((sub_106DF0() & 1) == 0)
        {
LABEL_25:

          v58 = sub_D0CB4(v47, v91);
          if (v58 == -1)
          {
LABEL_32:
            if (qword_136E60 == -1)
            {
LABEL_33:
              v64 = sub_106D20();
              sub_135C4(v64, qword_13A6D8);
              v65 = sub_106D10();
              v66 = sub_106FB0();
              if (os_log_type_enabled(v65, v66))
              {
                v67 = swift_slowAlloc();
                v68 = swift_slowAlloc();
                v90 = v68;
                *v67 = 134218242;
                *(v67 + 4) = v47;
                *(v67 + 12) = 2080;
                swift_beginAccess();

                v69 = sub_106EF0();
                v71 = v70;

                v72 = sub_722E8(v69, v71, &v90);

                *(v67 + 14) = v72;
                _os_log_impl(&dword_0, v65, v66, "insert postion should NOT be -1, nowWeekday:%ld, optionsInInt:%s", v67, 0x16u);
                sub_2738(v68);
              }

              (*(v30 + 8))(v41, v29);

              return 0;
            }

LABEL_45:
            swift_once();
            goto LABEL_33;
          }

          if (!__OFADD__(v58, 1))
          {
            v59 = *(v91[0] + 16);
            if (v59)
            {
              v60 = (v58 + 1) % v59;
              if ((v60 & 0x8000000000000000) == 0)
              {
                v61 = *(v91[0] + 8 * v60 + 32);
                v62 = *(v30 + 8);
                v30 += 8;
                v62(v41, v29);

                v63 = v61 - v47;
                if (!__OFSUB__(v61, v47))
                {
                  v56 = __OFADD__(v63, 7);
                  v57 = v63 + 7;
                  if (!v56)
                  {
                    return v57 % 7;
                  }

                  goto LABEL_44;
                }

LABEL_43:
                __break(1u);
LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v50 = *(v49 + 16);
        v51 = 32;
        do
        {
          if (!v50)
          {
            goto LABEL_25;
          }

          v52 = *(v49 + v51);
          v51 += 8;
          --v50;
        }

        while (v52 != v47);

        result = sub_D0CB4(v47, v91);
        if (result == -1)
        {
          goto LABEL_32;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *(v91[0] + 16))
        {
          v53 = *(v91[0] + 8 * result + 32);
          v54 = *(v30 + 8);
          v30 += 8;
          v54(v41, v29);

          v55 = v53 - v47;
          if (!__OFSUB__(v53, v47))
          {
            v56 = __OFADD__(v55, 7);
            v57 = v55 + 7;
            if (!v56)
            {
              return v57 % 7;
            }

            __break(1u);
            goto LABEL_25;
          }

LABEL_48:
          __break(1u);
          return result;
        }

        __break(1u);
        goto LABEL_48;
      }
    }

    else if (*(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_9;
    }
  }

  sub_D1E40(&qword_13A6F8, &protocol conformance descriptor for Date);
  v73 = sub_106DF0();
  (*(v30 + 8))(v41, v29);
  return ~v73 & 1;
}

uint64_t sub_D17AC(uint64_t a1)
{
  v42 = a1;
  v1 = sub_25E4(&qword_13A6F0, &qword_10B028);
  __chkstk_darwin(v1 - 8);
  v41 = &v31 - v2;
  v3 = sub_104700();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1047D0();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_105F50();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_105ED0();
  v33 = *(v10 - 8);
  v34 = v10;
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_106D20();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_106300();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_106320();
  v31 = *(v21 - 8);
  v32 = v21;
  __chkstk_darwin(v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v20, enum case for SiriTimeMeasurement.LogDescription.siriInferenceWitchingHour(_:), v17);
  if (qword_136E60 != -1)
  {
    swift_once();
  }

  v24 = sub_135C4(v13, qword_13A6D8);
  (*(v14 + 16))(v16, v24, v13);
  mach_absolute_time();
  sub_106330();
  sub_105EC0();
  (*(v7 + 104))(v9, enum case for DateTime.DateTimeRange.DefinedDateTimeRange.witchingHours(_:), v43);
  v25 = v35;
  sub_106240();
  sub_106560();
  sub_106550();
  sub_106540();

  sub_1A8E0(v44, v44[3]);
  v26 = v38;
  sub_104CB0();
  v27 = sub_105EA0();
  v28 = v41;
  (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
  sub_EA5C8(_swiftEmptyArrayStorage);
  v29 = sub_105EB0();

  sub_16F70(v28, &qword_13A6F0, &qword_10B028);
  (*(v39 + 8))(v26, v40);
  (*(v36 + 8))(v25, v37);
  (*(v7 + 8))(v9, v43);
  sub_2738(v44);
  sub_106310();
  (*(v33 + 8))(v12, v34);
  (*(v31 + 8))(v23, v32);
  return v29 & 1;
}

uint64_t sub_D1DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137518, &qword_107E28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D1E40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_104670();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_D1EE4()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  sub_25E4(&qword_137880, &unk_108290);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_108210;
  *(v7 + 32) = 0x614E656369766564;
  *(v7 + 40) = 0xEA0000000000656DLL;
  sub_14994(v0, v6, &qword_137598, &unk_107EB0);
  v8 = sub_106160();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    sub_16F70(v6, &qword_137598, &unk_107EB0);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    v11 = sub_1A924((v7 + 48));
    (*(v9 + 32))(v11, v6, v8);
  }

  *(v7 + 80) = 0x6E756D6D6F437369;
  *(v7 + 88) = 0xEA00000000006C61;
  v12 = type metadata accessor for StopConfirmationParameters(0);
  *(v7 + 96) = *(v0 + v12[5]);
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 128) = 0x6E6F737265507369;
  *(v7 + 136) = 0xEA00000000006C61;
  *(v7 + 144) = *(v0 + v12[6]);
  *(v7 + 168) = &type metadata for Bool;
  *(v7 + 176) = 0x656D614E6D6F6F72;
  *(v7 + 184) = 0xE800000000000000;
  sub_14994(v0 + v12[7], v4, &qword_137598, &unk_107EB0);
  if (v10(v4, 1, v8) == 1)
  {
    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v7 + 192) = 0u;
    *(v7 + 208) = 0u;
  }

  else
  {
    *(v7 + 216) = v8;
    v13 = sub_1A924((v7 + 192));
    (*(v9 + 32))(v13, v4, v8);
  }

  return v7;
}

uint64_t sub_D21A4()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = __chkstk_darwin(v1 - 8);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - v5;
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  sub_25E4(&qword_137880, &unk_108290);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_107DE0;
  *(v9 + 32) = 0x6D72616C61;
  *(v9 + 40) = 0xE500000000000000;
  v10 = *v0;
  if (*v0)
  {
    v11 = type metadata accessor for AlarmAlarm(0);
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
  }

  *(v9 + 48) = v12;
  *(v9 + 72) = v11;
  *(v9 + 80) = 0x614E656369766564;
  *(v9 + 88) = 0xEA0000000000656DLL;
  v13 = type metadata accessor for StopIntentHandledElsewhereParameters(0);
  sub_14994(v0 + v13[5], v8, &qword_137598, &unk_107EB0);
  v14 = sub_106160();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v8, 1, v14) == 1)
  {

    sub_16F70(v8, &qword_137598, &unk_107EB0);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = v14;
    v17 = sub_1A924((v9 + 96));
    (*(v15 + 32))(v17, v8, v14);
  }

  *(v9 + 128) = 0x7954676F6C616964;
  *(v9 + 136) = 0xEA00000000006570;
  sub_14994(v0 + v13[6], v6, &qword_137598, &unk_107EB0);
  if (v16(v6, 1, v14) == 1)
  {
    sub_16F70(v6, &qword_137598, &unk_107EB0);
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
  }

  else
  {
    *(v9 + 168) = v14;
    v18 = sub_1A924((v9 + 144));
    (*(v15 + 32))(v18, v6, v14);
  }

  *(v9 + 176) = 0x537373696D736964;
  *(v9 + 184) = 0xEF796C746E656C69;
  *(v9 + 192) = *(v0 + v13[7]);
  *(v9 + 216) = &type metadata for Bool;
  *(v9 + 224) = 0x656D614E6D6F6F72;
  *(v9 + 232) = 0xE800000000000000;
  v19 = v0 + v13[8];
  v20 = v24;
  sub_14994(v19, v24, &qword_137598, &unk_107EB0);
  if (v16(v20, 1, v14) == 1)
  {
    sub_16F70(v20, &qword_137598, &unk_107EB0);
    *(v9 + 240) = 0u;
    *(v9 + 256) = 0u;
  }

  else
  {
    *(v9 + 264) = v14;
    v21 = sub_1A924((v9 + 240));
    (*(v15 + 32))(v21, v20, v14);
  }

  return v9;
}

uint64_t sub_D257C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 89) = a2;
  *(v5 + 88) = a1;
  *(v5 + 40) = type metadata accessor for StopConfirmationParameters(0);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_D261C, 0, 0);
}

uint64_t sub_D261C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 89);
  v5 = *(v0 + 88);
  v6 = sub_106160();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[7], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  *(v1 + v2[6]) = v4;
  v3(v1);
  v8 = sub_D1EE4();
  *(v0 + 56) = v8;
  v11 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_D279C;

  return v11(0xD000000000000011, 0x800000000010E300, v8);
}

uint64_t sub_D279C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_D2970;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_D28E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D28E8()
{
  sub_D3074(v0[6], type metadata accessor for StopConfirmationParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_D2970()
{
  sub_D3074(*(v0 + 48), type metadata accessor for StopConfirmationParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D29F4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for StopIntentHandledElsewhereParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_D2A90, 0, 0);
}

uint64_t sub_D2A90()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  v5 = v2[5];
  v6 = sub_106160();
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  v7(&v1[v2[6]], 1, 1, v6);
  v7(&v1[v2[8]], 1, 1, v6);
  *v1 = 0;
  v1[v2[7]] = v4;
  v3(v1);
  v8 = sub_D21A4();
  *(v0 + 56) = v8;
  v11 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_D2C2C;

  return v11(0xD00000000000001BLL, 0x800000000010E2E0, v8);
}

uint64_t sub_D2C2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_D2E00;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_D2D78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D2D78()
{
  sub_D3074(v0[6], type metadata accessor for StopIntentHandledElsewhereParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_D2E00()
{
  sub_D3074(*(v0 + 48), type metadata accessor for StopIntentHandledElsewhereParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D2E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_14994(a1, v11, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v12;
}

uint64_t sub_D3074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_D30E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_D31D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_D3298(uint64_t a1)
{
  sub_D3594(319, &qword_1378F8, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_D3340(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_25E4(&qword_137598, &unk_107EB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_D341C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_25E4(&qword_137598, &unk_107EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_D34CC(uint64_t a1)
{
  sub_D3594(319, &unk_137A20, type metadata accessor for AlarmAlarm);
  if (v1 <= 0x3F)
  {
    sub_D3594(319, &qword_1378F8, &type metadata accessor for SpeakableString);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_D3594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1070E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ChangeAlarmStatusCATPatternsExecutor(uint64_t a1)
{
  result = qword_13A888;
  if (!qword_13A888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D3674(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_D3698, 0, 0);
}

uint64_t sub_D3698()
{
  v0[2] = 0;
  v1 = v0[5];
  v0[3] = 0;
  v0[4] = 0;
  v1(v0 + 2);
  v3 = v0[2];
  v2 = v0[3];
  v0[8] = v3;
  v0[9] = v2;
  v4 = v0[4];
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = xmmword_109690;
  *(v5 + 32) = 0x6D72616C61;
  *(v5 + 40) = 0xE500000000000000;
  if (v3)
  {
    v6 = type metadata accessor for AlarmAlarm(0);
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v7;
  *(v5 + 72) = v6;
  *(v5 + 80) = 7368801;
  *(v5 + 88) = 0xE300000000000000;
  if (v2)
  {
    v8 = sub_106100();
    v9 = v2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v9;
  *(v5 + 120) = v8;
  *(v5 + 128) = 0x616C417065656C73;
  *(v5 + 136) = 0xEA00000000006D72;
  v10 = 0;
  if (v4)
  {
    v10 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  v0[11] = v4;
  *(v5 + 144) = v4;
  *(v5 + 168) = v10;
  v13 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_AA1FC;

  return v13(0xD000000000000020, 0x800000000010D050, v5);
}

uint64_t sub_D3898(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_D38BC, 0, 0);
}

uint64_t sub_D38BC()
{
  v1 = *(v0 + 48);
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x800000000010C5B0;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_107FC0;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_D39F0;

  return v5(0xD00000000000003BLL, 0x800000000010E3A0, v2);
}

uint64_t sub_D39F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_D3FEC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_D3B48(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_D3B6C, 0, 0);
}

uint64_t sub_D3B6C()
{
  v1 = *(v0 + 48);
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x800000000010C5B0;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_107FC0;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_D3CA0;

  return v5(0xD00000000000003ALL, 0x800000000010E360, v2);
}

uint64_t sub_D3CA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_D3DF8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_D3DF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D3E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E4(&unk_137430, &qword_107DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_2A84(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v12;
}

id SIRINLUUserDialogAct.alarmSearch.getter(uint64_t a1)
{
  v1 = sub_107000();
  if (v1)
  {
    v2 = sub_1EED0(v1);

    return v2;
  }

  else
  {
    if (qword_136E68 != -1)
    {
      swift_once();
    }

    v4 = sub_106D20();
    sub_135C4(v4, qword_13A8D8);
    v5 = sub_106D10();
    v6 = sub_106FB0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "No task found in userDialogAct.", v7, 2u);
    }

    return 0;
  }
}

uint64_t sub_D40F0()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A8D8);
  sub_135C4(v0, qword_13A8D8);
  return sub_106A80();
}

uint64_t sub_D41A4(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_106200();
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_1061E0();
  result = a3(v9, 0);
  *a4 = result;
  return result;
}

uint64_t sub_D4258(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_104D60();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  sub_106200();
  v1[17] = swift_task_alloc();
  v4 = sub_106D20();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v5 = sub_106300();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v6 = sub_106320();
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D44B4, 0, 0);
}

uint64_t sub_D44B4()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_135C4(v3, qword_13A2F8);
  (*(v2 + 16))(v1, v4, v3);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_D4658;

  return v7(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D4658(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_DD6C0;
  }

  else
  {
    *(v4 + 240) = a1;

    v5 = sub_D4788;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D4788(uint64_t a1)
{
  sub_104D20();
  sub_104FE0();
  v2 = swift_task_alloc();
  v1[31] = v2;
  *v2 = v1;
  v2[1] = sub_D4848;
  v3 = v1[26];
  v4 = v1[16];
  v5 = v1[13];
  v6 = v1[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v5, v3, 0);
}

uint64_t sub_D4848()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 88);
  *(*v1 + 256) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_DD6C4;
  }

  else
  {
    v9 = sub_D4A34;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D4A34()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = sub_106750();
  v0[5] = v4;
  v0[6] = &protocol witness table for ABCReport;
  v5 = sub_1A924(v0 + 2);
  v0[9] = sub_106910();
  sub_25E4(&unk_138440, &qword_108CC8);
  *v5 = sub_106E30();
  v5[1] = v6;
  v7 = enum case for UnhandledAbortSubtype.generic(_:);
  v8 = sub_106680();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  (*(*(v4 - 8) + 104))(v5, enum case for ABCReport.unhandledAbort(_:), v4);
  sub_1064D0();
  (*(v1 + 8))(v2, v3);
  sub_2738(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_D4BFC(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_104D60();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  sub_106200();
  v1[17] = swift_task_alloc();
  v4 = sub_106D20();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v5 = sub_106300();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v6 = sub_106320();
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D4E58, 0, 0);
}

uint64_t sub_D4E58()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_135C4(v3, qword_13A2F8);
  (*(v2 + 16))(v1, v4, v3);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_D4FFC;

  return v7(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D4FFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_DD6C0;
  }

  else
  {
    *(v4 + 240) = a1;

    v5 = sub_D512C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D512C(uint64_t a1)
{
  sub_104D20();
  sub_104FE0();
  v2 = swift_task_alloc();
  v1[31] = v2;
  *v2 = v1;
  v2[1] = sub_D51EC;
  v3 = v1[26];
  v4 = v1[16];
  v5 = v1[13];
  v6 = v1[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v5, v3, 0);
}

uint64_t sub_D51EC()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 88);
  *(*v1 + 256) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_DD6C4;
  }

  else
  {
    v9 = sub_D53D8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D53D8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = sub_106750();
  v0[5] = v4;
  v0[6] = &protocol witness table for ABCReport;
  v5 = sub_1A924(v0 + 2);
  v0[9] = sub_1068D0();
  sub_25E4(&qword_138408, &qword_108C98);
  *v5 = sub_106E30();
  v5[1] = v6;
  v7 = enum case for UnhandledAbortSubtype.generic(_:);
  v8 = sub_106680();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  (*(*(v4 - 8) + 104))(v5, enum case for ABCReport.unhandledAbort(_:), v4);
  sub_1064D0();
  (*(v1 + 8))(v2, v3);
  sub_2738(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_D55A0(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_104D60();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  sub_106200();
  v1[17] = swift_task_alloc();
  v4 = sub_106D20();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v5 = sub_106300();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v6 = sub_106320();
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D57FC, 0, 0);
}

uint64_t sub_D57FC()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_135C4(v3, qword_13A2F8);
  (*(v2 + 16))(v1, v4, v3);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_D59A0;

  return v7(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D59A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_DD6C0;
  }

  else
  {
    *(v4 + 240) = a1;

    v5 = sub_D5AD0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D5AD0(uint64_t a1)
{
  sub_104D20();
  sub_104FE0();
  v2 = swift_task_alloc();
  v1[31] = v2;
  *v2 = v1;
  v2[1] = sub_D5B90;
  v3 = v1[26];
  v4 = v1[16];
  v5 = v1[13];
  v6 = v1[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v5, v3, 0);
}

uint64_t sub_D5B90()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 88);
  *(*v1 + 256) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_DD6C4;
  }

  else
  {
    v9 = sub_D5D7C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D5D7C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = sub_106750();
  v0[5] = v4;
  v0[6] = &protocol witness table for ABCReport;
  v5 = sub_1A924(v0 + 2);
  v0[9] = sub_106800();
  sub_25E4(&qword_138430, &qword_108CB8);
  *v5 = sub_106E30();
  v5[1] = v6;
  v7 = enum case for UnhandledAbortSubtype.generic(_:);
  v8 = sub_106680();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  (*(*(v4 - 8) + 104))(v5, enum case for ABCReport.unhandledAbort(_:), v4);
  sub_1064D0();
  (*(v1 + 8))(v2, v3);
  sub_2738(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_D5F44(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_104D60();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  sub_106200();
  v1[17] = swift_task_alloc();
  v4 = sub_106D20();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v5 = sub_106300();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v6 = sub_106320();
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D61A0, 0, 0);
}

uint64_t sub_D61A0()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_135C4(v3, qword_13A2F8);
  (*(v2 + 16))(v1, v4, v3);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_D6344;

  return v7(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D6344(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_D6720;
  }

  else
  {
    *(v4 + 240) = a1;

    v5 = sub_D6474;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D6474(uint64_t a1)
{
  sub_104D20();
  sub_104FE0();
  v2 = swift_task_alloc();
  v1[31] = v2;
  *v2 = v1;
  v2[1] = sub_D6534;
  v3 = v1[26];
  v4 = v1[16];
  v5 = v1[13];
  v6 = v1[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v5, v3, 0);
}

uint64_t sub_D6534()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 88);
  *(*v1 + 256) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_D6A2C;
  }

  else
  {
    v9 = sub_D6864;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D6720()
{

  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v0[8] = v0[29];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  swift_willThrow();

  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_D6864()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = sub_106750();
  v0[5] = v4;
  v0[6] = &protocol witness table for ABCReport;
  v5 = sub_1A924(v0 + 2);
  v0[9] = sub_1067A0();
  sub_25E4(&qword_13A910, &qword_10B2E8);
  *v5 = sub_106E30();
  v5[1] = v6;
  v7 = enum case for UnhandledAbortSubtype.generic(_:);
  v8 = sub_106680();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  (*(*(v4 - 8) + 104))(v5, enum case for ABCReport.unhandledAbort(_:), v4);
  sub_1064D0();
  (*(v1 + 8))(v2, v3);
  sub_2738(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_D6A2C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v0[8] = v0[32];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  swift_willThrow();

  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_D6B68(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_104D60();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  sub_106200();
  v1[17] = swift_task_alloc();
  v4 = sub_106D20();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v5 = sub_106300();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v6 = sub_106320();
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D6DC4, 0, 0);
}

uint64_t sub_D6DC4()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_135C4(v3, qword_13A2F8);
  (*(v2 + 16))(v1, v4, v3);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_D6F68;

  return v7(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D6F68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_DD6C0;
  }

  else
  {
    *(v4 + 240) = a1;

    v5 = sub_D7098;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D7098(uint64_t a1)
{
  sub_104D20();
  sub_104FE0();
  v2 = swift_task_alloc();
  v1[31] = v2;
  *v2 = v1;
  v2[1] = sub_D7158;
  v3 = v1[26];
  v4 = v1[16];
  v5 = v1[13];
  v6 = v1[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v5, v3, 0);
}

uint64_t sub_D7158()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 88);
  *(*v1 + 256) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_DD6C4;
  }

  else
  {
    v9 = sub_D7344;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D7344()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = sub_106750();
  v0[5] = v4;
  v0[6] = &protocol witness table for ABCReport;
  v5 = sub_1A924(v0 + 2);
  v0[9] = sub_106870();
  sub_25E4(&qword_13A918, &qword_10B318);
  *v5 = sub_106E30();
  v5[1] = v6;
  v7 = enum case for UnhandledAbortSubtype.generic(_:);
  v8 = sub_106680();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  (*(*(v4 - 8) + 104))(v5, enum case for ABCReport.unhandledAbort(_:), v4);
  sub_1064D0();
  (*(v1 + 8))(v2, v3);
  sub_2738(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_D750C(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_104D60();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  sub_106200();
  v1[17] = swift_task_alloc();
  v4 = sub_106D20();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v5 = sub_106300();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v6 = sub_106320();
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D7768, 0, 0);
}

uint64_t sub_D7768()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_135C4(v3, qword_13A2F8);
  (*(v2 + 16))(v1, v4, v3);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_D790C;

  return v7(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D790C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_DD6C0;
  }

  else
  {
    *(v4 + 240) = a1;

    v5 = sub_D7A3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D7A3C(uint64_t a1)
{
  sub_104D20();
  sub_104FE0();
  v2 = swift_task_alloc();
  v1[31] = v2;
  *v2 = v1;
  v2[1] = sub_D7AFC;
  v3 = v1[26];
  v4 = v1[16];
  v5 = v1[13];
  v6 = v1[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v5, v3, 0);
}

uint64_t sub_D7AFC()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 88);
  *(*v1 + 256) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_DD6C4;
  }

  else
  {
    v9 = sub_D7CE8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D7CE8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = sub_106750();
  v0[5] = v4;
  v0[6] = &protocol witness table for ABCReport;
  v5 = sub_1A924(v0 + 2);
  v0[9] = sub_106840();
  sub_25E4(&qword_138418, &qword_108CA0);
  *v5 = sub_106E30();
  v5[1] = v6;
  v7 = enum case for UnhandledAbortSubtype.generic(_:);
  v8 = sub_106680();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  (*(*(v4 - 8) + 104))(v5, enum case for ABCReport.unhandledAbort(_:), v4);
  sub_1064D0();
  (*(v1 + 8))(v2, v3);
  sub_2738(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_D7EB0(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_104FF0();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = sub_104D60();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  sub_106200();
  v1[17] = swift_task_alloc();
  v4 = sub_106D20();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v5 = sub_106300();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v6 = sub_106320();
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_D810C, 0, 0);
}

uint64_t sub_D810C()
{
  (*(v0[22] + 104))(v0[23], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[21]);
  if (qword_136E20 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_135C4(v3, qword_13A2F8);
  (*(v2 + 16))(v1, v4, v3);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[27] = sub_1060D0();
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_D82B0;

  return v7(0xD000000000000016, 0x800000000010E3E0, _swiftEmptyArrayStorage);
}

uint64_t sub_D82B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_DD6C0;
  }

  else
  {
    *(v4 + 240) = a1;

    v5 = sub_D83E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D83E0(uint64_t a1)
{
  sub_104D20();
  sub_104FE0();
  v2 = swift_task_alloc();
  v1[31] = v2;
  *v2 = v1;
  v2[1] = sub_D84A0;
  v3 = v1[26];
  v4 = v1[16];
  v5 = v1[13];
  v6 = v1[10];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v4, v5, v3, 0);
}

uint64_t sub_D84A0()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 88);
  *(*v1 + 256) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_DD6C4;
  }

  else
  {
    v9 = sub_D868C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_D868C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = sub_106750();
  v0[5] = v4;
  v0[6] = &protocol witness table for ABCReport;
  v5 = sub_1A924(v0 + 2);
  v0[9] = sub_1068B0();
  sub_25E4(&qword_138438, &qword_108CC0);
  *v5 = sub_106E30();
  v5[1] = v6;
  v7 = enum case for UnhandledAbortSubtype.generic(_:);
  v8 = sub_106680();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  (*(*(v4 - 8) + 104))(v5, enum case for ABCReport.unhandledAbort(_:), v4);
  sub_1064D0();
  (*(v1 + 8))(v2, v3);
  sub_2738(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_D8854()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_13A8F0);
  sub_135C4(v0, qword_13A8F0);
  return sub_106A80();
}

uint64_t sub_D88A0(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_105030();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  sub_106200();
  v3[19] = swift_task_alloc();
  v5 = sub_1066E0();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = sub_106410();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  sub_25E4(&qword_137598, &unk_107EB0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  type metadata accessor for DeleteAlarmUnsupportedWithReasonSleepAlarmNotSupportedParameters(0);
  v3[28] = swift_task_alloc();
  v7 = sub_106370();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();
  v8 = sub_104670();
  v3[32] = v8;
  v3[33] = *(v8 - 8);
  v3[34] = swift_task_alloc();
  v9 = sub_104D60();
  v3[35] = v9;
  v3[36] = *(v9 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = type metadata accessor for DeleteAlarmIntentHandledMultipleParameters(0);
  v3[41] = swift_task_alloc();
  v3[42] = type metadata accessor for DeleteAllIntentHandledParameters(0);
  v3[43] = swift_task_alloc();
  v10 = sub_106D20();
  v3[44] = v10;
  v3[45] = *(v10 - 8);
  v3[46] = swift_task_alloc();
  v11 = sub_106300();
  v3[47] = v11;
  v3[48] = *(v11 - 8);
  v3[49] = swift_task_alloc();
  v12 = sub_106320();
  v3[50] = v12;
  v3[51] = *(v12 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v13 = sub_1053C0();
  v3[55] = v13;
  v3[56] = *(v13 - 8);
  v3[57] = swift_task_alloc();
  v14 = sub_104FF0();
  v3[58] = v14;
  v3[59] = *(v14 - 8);
  v3[60] = swift_task_alloc();
  v15 = sub_1064A0();
  v3[61] = v15;
  v3[62] = *(v15 - 8);
  v3[63] = swift_task_alloc();
  v16 = sub_1064C0();
  v3[64] = v16;
  v3[65] = *(v16 - 8);
  v3[66] = swift_task_alloc();

  return _swift_task_switch(sub_D8EE0, 0, 0);
}

uint64_t sub_D8EE0()
{
  if (qword_136E80 != -1)
  {
LABEL_23:
    swift_once();
  }

  v1 = sub_135C4(v0[44], qword_13A8F0);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DeleteAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  sub_25E4(&qword_1385B0, &unk_10B2D0);
  v5 = sub_105170();
  v0[67] = v5;
  v6 = [v5 alarms];
  if (v6)
  {
    v7 = v6;
    sub_106AA0();
    v8 = sub_106EE0();

    if (v8 >> 62)
    {
      v9 = sub_107270();
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      if (v9)
      {
LABEL_7:
        v153 = v0;
        v154 = v5;
        v150 = v1;
        v10 = 0;
        v11 = v8 & 0xC000000000000001;
        v0 = (v8 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if (v11)
          {
            v12 = sub_1071C0();
          }

          else
          {
            if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_22;
            }

            v12 = *(v8 + 8 * v10 + 32);
          }

          v13 = v12;
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v15 = [v12 sleepAlarmAttribute];
          if (v15)
          {

            sub_107200();
            sub_107230();
            sub_107240();
            sub_107210();
          }

          else
          {
          }

          ++v10;
        }

        while (v14 != v9);
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
        {
          v24 = sub_107270();

          if (v24)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v16 = _swiftEmptyArrayStorage[2];

          if (v16)
          {
LABEL_20:
            v17 = v153;
            v18 = v153[66];
            v19 = v153[65];
            v20 = v153[64];
            (*(v153[62] + 104))(v153[63], enum case for AppInstallUtil.Domain.sleep(_:), v153[61]);
            sub_1064B0();
            v149 = sub_106470();
            (*(v19 + 8))(v18, v20);
            goto LABEL_32;
          }
        }

        v149 = 0;
        v17 = v153;
LABEL_32:
        sub_BD4A4(v8, v17[60]);
        if (v8 >> 62)
        {
          if (sub_107270() < 2)
          {
LABEL_34:
            if (v149)
            {

              v25 = sub_106D10();
              v26 = sub_106FC0();
              if (os_log_type_enabled(v25, v26))
              {
                v27 = swift_slowAlloc();
                *v27 = 0;
                _os_log_impl(&dword_0, v25, v26, "Delete sleep alarm is not supported, punch out.", v27, 2u);
              }

              v28 = v153;
              v30 = v153[30];
              v29 = v153[31];
              v31 = v153[29];

              sub_106360();
              v32 = sub_106350();
              (*(v30 + 8))(v29, v31);
              v33 = sub_106D10();
              v34 = sub_106FC0();
              v35 = os_log_type_enabled(v33, v34);
              if (v32)
              {
                if (v35)
                {
                  v36 = swift_slowAlloc();
                  *v36 = 0;
                  _os_log_impl(&dword_0, v33, v34, "Hitting RF path for deleting sleep alarm.", v36, 2u);
                }

                v37 = v153[48];
                v38 = v153[49];
                v40 = v153[46];
                v39 = v153[47];
                v42 = v153[44];
                v41 = v153[45];

                (*(v37 + 104))(v38, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v39);
                (*(v41 + 16))(v40, v150, v42);
                mach_absolute_time();
                sub_106330();
                if (qword_136D40 != -1)
                {
                  swift_once();
                }

                v44 = v153[27];
                v43 = v153[28];
                v45 = v153[25];
                v46 = v153[26];
                v47 = v153[23];
                v48 = v153[24];
                v49 = sub_106160();
                v50 = *(v49 - 8);
                (*(v50 + 56))(v43, 1, 1, v49);
                (*(v48 + 104))(v45, enum case for PunchOutApp.sleep(_:), v47);
                sub_1063F0();
                (*(v48 + 8))(v45, v47);
                sub_1A814(v44, v43);
                sub_25E4(&qword_137880, &unk_108290);
                v51 = swift_allocObject();
                v153[84] = v51;
                *(v51 + 16) = xmmword_107FC0;
                *(v51 + 32) = 0xD000000000000014;
                *(v51 + 40) = 0x800000000010D320;
                sub_826B8(v43, v46);
                v52 = (*(v50 + 48))(v46, 1, v49);
                v53 = v153[26];
                if (v52 == 1)
                {
                  sub_16F70(v153[26], &qword_137598, &unk_107EB0);
                  *(v51 + 48) = 0u;
                  *(v51 + 64) = 0u;
                }

                else
                {
                  *(v51 + 72) = v49;
                  v126 = sub_1A924((v51 + 48));
                  (*(v50 + 32))(v126, v53, v49);
                }

                v155 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
                v127 = swift_task_alloc();
                v153[85] = v127;
                *v127 = v153;
                v127[1] = sub_DB7DC;
                v96 = 0xD000000000000037;
                v104 = 0x800000000010E4F0;
LABEL_108:
                v128 = v51;
LABEL_109:

                return v155(v96, v104, v128);
              }

              if (v35)
              {
                v121 = swift_slowAlloc();
                *v121 = 0;
                _os_log_impl(&dword_0, v33, v34, "Hitting non-RF path for deleting sleep alarm.", v121, 2u);
                v28 = v153;
              }

              v123 = v28[62];
              v122 = v28[63];
              v124 = v28[61];

              (*(v123 + 104))(v122, enum case for AppInstallUtil.Domain.sleep(_:), v124);
              type metadata accessor for AlarmBaseCATs_Async(0);
              sub_1061E0();
              sub_1060D0();
              sub_4F234();
              sub_1066D0();
              v125 = swift_task_alloc();
              v28[90] = v125;
              *v125 = v28;
              v125[1] = sub_DBF4C;

              return AppInstallDialogOutputUtil.makeLaunchAppView()();
            }

            v57 = [v5 alarmSearch];
            if (v57 && (v58 = v57, v59 = [v57 label], v58, v59))
            {

              v60 = 1;
            }

            else
            {
              v60 = 0;
            }

            v105 = [v5 alarms];
            if (v105)
            {
              v106 = v105;
              v107 = sub_106EE0();

              if (v107 >> 62)
              {
                if (sub_107270())
                {
                  goto LABEL_91;
                }
              }

              else if (*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)))
              {
LABEL_91:
                v152 = v60;
                if ((v107 & 0xC000000000000001) != 0)
                {
                  v108 = sub_1071C0();
                }

                else
                {
                  if (!*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
                    goto LABEL_126;
                  }

                  v108 = *(v107 + 32);
                }

                v109 = v108;
                v110 = v153[33];
                v111 = v153[34];
                v112 = v153[32];

                sub_106210();
                v106 = sub_75DD4(0, v111, 0);
                v153[77] = v106;

                (*(v110 + 8))(v111, v112);
                if (v106)
                {
                  if (!v11)
                  {
                    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
                    {
                      __break(1u);
                      return AppInstallDialogOutputUtil.makeLaunchAppView()();
                    }

                    v113 = *(v8 + 32);
LABEL_98:
                    v114 = v113;

                    sub_25E4(&qword_137DD0, &unk_108920);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_108470;
                    *(inited + 32) = v114;
                    v116 = v114;
                    v117 = sub_DCF18(inited);
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    if (v117[2])
                    {
                      v118 = v153[56];
                      v119 = v153[57];
                      v120 = v153[55];
                      sub_E9AB4(v117, v119);

                      sub_104F30();

                      (*(v118 + 8))(v119, v120);
                    }

                    else
                    {
                    }

                    v129 = sub_106D10();
                    v130 = sub_106FC0();
                    if (os_log_type_enabled(v129, v130))
                    {
                      v131 = swift_slowAlloc();
                      *v131 = 0;
                      _os_log_impl(&dword_0, v129, v130, "RF path for deleting single alarm.", v131, 2u);
                    }

                    v132 = v153[48];
                    v133 = v153[49];
                    v135 = v153[46];
                    v134 = v153[47];
                    v137 = v153[44];
                    v136 = v153[45];

                    (*(v132 + 104))(v133, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v134);
                    (*(v136 + 16))(v135, v150, v137);
                    mach_absolute_time();
                    sub_106330();
                    if (qword_136D40 != -1)
                    {
                      swift_once();
                    }

                    sub_25E4(&qword_137880, &unk_108290);
                    v138 = swift_allocObject();
                    v153[78] = v138;
                    *(v138 + 16) = xmmword_1094F0;
                    *(v138 + 32) = 0x6D72616C61;
                    *(v138 + 40) = 0xE500000000000000;
                    v139 = type metadata accessor for AlarmAlarm(0);
                    *(v138 + 48) = v106;
                    *(v138 + 88) = 0x800000000010CA10;
                    *(v138 + 120) = &type metadata for Bool;
                    *(v138 + 96) = v152;
                    v155 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
                    *(v138 + 72) = v139;
                    *(v138 + 80) = 0xD000000000000014;
                    swift_retain_n();
                    v140 = swift_task_alloc();
                    v153[79] = v140;
                    *v140 = v153;
                    v140[1] = sub_DB080;
                    v96 = 0xD000000000000019;
                    v104 = 0x800000000010E4D0;
                    v128 = v138;
                    goto LABEL_109;
                  }

LABEL_126:
                  v113 = sub_1071C0();
                  goto LABEL_98;
                }

                goto LABEL_123;
              }
            }

LABEL_123:
            v0 = v153;
            v142 = v153[59];
            v141 = v153[60];
            v143 = v153[58];

            sub_25E4(&qword_137DD8, &unk_1085D0);
            sub_26E48();
            swift_allocError();
            *v144 = 3;
            swift_willThrow();

            (*(v142 + 8))(v141, v143);
            goto LABEL_27;
          }
        }

        else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) < 2)
        {
          goto LABEL_34;
        }

        v54 = [v5 alarmSearch];
        if (v54)
        {
          v55 = v54;
          [v54 alarmReferenceType];

          v56 = sub_106970();
          v145 = v56 == sub_106970();
        }

        else
        {
          v145 = 0;
        }

        v61 = [v5 alarmSearch];
        if (v61)
        {
          v62 = v61;
          [v61 period];

          v63 = sub_106A40();
          v151 = v63 == sub_106A40();
        }

        else
        {
          v151 = 0;
        }

        v64 = [v5 alarmSearch];
        if (v64)
        {
          v65 = v64;
          [v64 period];

          v66 = sub_106A40();
          v148 = v66 == sub_106A40();
        }

        else
        {
          v148 = 0;
        }

        v67 = [v5 alarmSearch];
        if (v67)
        {
          v68 = v67;
          [v67 period];

          v69 = sub_106A40();
          v147 = v69 == sub_106A40();
        }

        else
        {
          v147 = 0;
        }

        v70 = [v5 alarmSearch];
        if (v70)
        {
          v71 = v70;
          [v70 period];

          v72 = sub_106A40();
          v146 = v72 == sub_106A40();
        }

        else
        {
          v146 = 0;
        }

        v73 = 0;
        do
        {
          if (v11)
          {
            v74 = sub_1071C0();
          }

          else
          {
            if (v73 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_119;
            }

            v74 = *(v8 + 8 * v73 + 32);
          }

          v75 = v74;
          v76 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            swift_once();
LABEL_80:
            v90 = v153[42];
            v89 = v153[43];
            sub_1A8E0(v153[15], *(v153[15] + 24));
            v91 = sub_104CD0();
            v92 = *(v90 + 48);
            v93 = sub_106160();
            (*(*(v93 - 8) + 56))(&v89[v92], 1, 1, v93);
            *v89 = v149 & 1;
            v89[1] = 1;
            v89[2] = v151;
            v89[3] = 1;
            v89[4] = v148;
            v89[5] = v147;
            v89[6] = v146;
            v89[7] = v91 & 1;
            *&v89[*(v90 + 52)] = 0;
            v94 = "ntHandledMultiple";
            v51 = sub_7E500();
            v153[68] = v51;
            v155 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
            v95 = swift_task_alloc();
            v153[69] = v95;
            *v95 = v153;
            v95[1] = sub_DA4DC;
            v96 = v0 + 3;
            goto LABEL_86;
          }

          v77 = [v74 sleepAlarmAttribute];
          if (v77)
          {
          }

          else
          {
            sub_107200();
            sub_107230();
            sub_107240();
            sub_107210();
          }

          ++v73;
        }

        while (v76 != v9);

        v78 = sub_DCF18(_swiftEmptyArrayStorage);

        if (v78[2])
        {
          v80 = v153[56];
          v79 = v153[57];
          v81 = v153[55];
          sub_E9AB4(v78, v79);

          sub_104F30();
          (*(v80 + 8))(v79, v81);
        }

        else
        {
        }

        v0 = 0xD000000000000014;
        v82 = v153[46];
        v83 = v153[45];
        v84 = v153[44];
        (*(v153[48] + 104))(v153[49], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v153[47]);
        (*(v83 + 16))(v82, v150, v84);
        mach_absolute_time();
        sub_106330();
        v85 = sub_106D10();
        v86 = sub_106FA0();
        v87 = os_log_type_enabled(v85, v86);
        if (v145)
        {
          if (v87)
          {
            v88 = swift_slowAlloc();
            *v88 = 0;
            _os_log_impl(&dword_0, v85, v86, "Hitting RF path for delete all alarms", v88, 2u);
          }

          if (qword_136D48 == -1)
          {
            goto LABEL_80;
          }

          goto LABEL_120;
        }

        if (v87)
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&dword_0, v85, v86, "Hitting RF path for delete multiple alarms", v97, 2u);
        }

        if (qword_136D40 != -1)
        {
          swift_once();
        }

        v99 = v153[40];
        v98 = v153[41];
        sub_1A8E0(v153[15], *(v153[15] + 24));
        v100 = sub_104CD0();
        v101 = *(v99 + 48);
        v102 = sub_106160();
        (*(*(v102 - 8) + 56))(&v98[v101], 1, 1, v102);
        *v98 = v149 & 1;
        v98[1] = 1;
        v98[2] = v151;
        v98[3] = 0;
        v98[4] = v148;
        v98[5] = v147;
        v98[6] = v146;
        v98[7] = v100 & 1;
        *&v98[*(v99 + 52)] = 0;
        sub_DD0A0(v98, v154);
        v94 = "nSleepAlarmNotSupported";
        v51 = sub_BCA84();
        v153[71] = v51;
        v155 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v103 = swift_task_alloc();
        v153[72] = v103;
        *v103 = v153;
        v103[1] = sub_DA8FC;
        v96 = 0xD000000000000021;
LABEL_86:
        v104 = v94 | 0x8000000000000000;
        goto LABEL_108;
      }
    }
  }

  sub_25E4(&qword_137DD8, &unk_1085D0);
  sub_26E48();
  swift_allocError();
  *v21 = 3;
  swift_willThrow();

LABEL_27:

  v22 = v0[1];

  return v22();
}

uint64_t sub_DA4DC(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[70] = v1;

  if (v1)
  {
    v4 = sub_DA6FC;
  }

  else
  {
    v4 = sub_DA618;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DA618()
{
  sub_DD660(v0[43], type metadata accessor for DeleteAllIntentHandledParameters);
  v1 = v0[8];
  v0[74] = v1;
  v1;
  sub_104D50();
  v2 = swift_task_alloc();
  v0[75] = v2;
  *v2 = v0;
  v2[1] = sub_DAD1C;
  v3 = v0[60];
  v4 = v0[54];
  v5 = v0[39];
  v6 = v0[13];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v5, v3, v4, 0);
}

uint64_t sub_DA6FC()
{
  v1 = v0[67];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];
  v5 = v0[54];
  v6 = v0[50];
  v7 = v0[51];
  sub_DD660(v0[43], type metadata accessor for DeleteAllIntentHandledParameters);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_DA8FC(uint64_t a1)
{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v3[73] = v1;

  if (v1)
  {
    v4 = sub_DAB1C;
  }

  else
  {
    v4 = sub_DAA38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DAA38()
{
  sub_DD660(v0[41], type metadata accessor for DeleteAlarmIntentHandledMultipleParameters);
  v1 = v0[11];
  v0[74] = v1;
  v1;
  sub_104D50();
  v2 = swift_task_alloc();
  v0[75] = v2;
  *v2 = v0;
  v2[1] = sub_DAD1C;
  v3 = v0[60];
  v4 = v0[54];
  v5 = v0[39];
  v6 = v0[13];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v6, v5, v3, v4, 0);
}

uint64_t sub_DAB1C()
{
  v1 = v0[67];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];
  v5 = v0[54];
  v6 = v0[50];
  v7 = v0[51];
  sub_DD660(v0[41], type metadata accessor for DeleteAlarmIntentHandledMultipleParameters);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_DAD1C()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = v2[74];
  (*(v2[36] + 8))(v2[39], v2[35]);

  if (v0)
  {
    v4 = sub_DC794;
  }

  else
  {
    v4 = sub_DAE9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DAE9C()
{
  v1 = *(v0 + 592);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v5 = *(v0 + 432);
  v6 = *(v0 + 400);
  v7 = *(v0 + 408);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_DB080(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 640) = a1;
  *(v3 + 648) = v1;

  if (v1)
  {
    v4 = sub_DB400;
  }

  else
  {
    v4 = sub_DB1C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DB1C0()
{

  sub_104CF0();
  v1 = swift_task_alloc();
  v0[82] = v1;
  *v1 = v0;
  v1[1] = sub_DB280;
  v2 = v0[60];
  v3 = v0[53];
  v4 = v0[38];
  v5 = v0[13];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_DB280()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  v3 = v2[80];
  (*(v2[36] + 8))(v2[38], v2[35]);

  if (v0)
  {
    v4 = sub_DCD28;
  }

  else
  {
    v4 = sub_DB5F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DB400()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_DB5F4()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_DB7DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v4 = sub_DBB70;
  }

  else
  {
    v4 = sub_DB91C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DB91C()
{
  sub_DD660(v0[28], type metadata accessor for DeleteAlarmUnsupportedWithReasonSleepAlarmNotSupportedParameters);
  sub_104D20();
  v1 = swift_task_alloc();
  v0[88] = v1;
  *v1 = v0;
  v1[1] = sub_DB9F0;
  v2 = v0[60];
  v3 = v0[52];
  v4 = v0[37];
  v5 = v0[13];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v5, v4, v2, v3, 0);
}

uint64_t sub_DB9F0()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  v3 = v2[86];
  (*(v2[36] + 8))(v2[37], v2[35]);

  if (v0)
  {
    v4 = sub_DC980;
  }

  else
  {
    v4 = sub_DBD70;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DBB70()
{
  v1 = v0[67];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];
  v6 = v0[51];
  v5 = v0[52];
  v7 = v0[50];
  sub_DD660(v0[28], type metadata accessor for DeleteAlarmUnsupportedWithReasonSleepAlarmNotSupportedParameters);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_DBD70()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 400);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_DBF4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[91] = a1;
  v4[92] = v1;

  (*(v3[21] + 8))(v3[22], v3[20]);
  if (v1)
  {
    v5 = sub_DCB64;
  }

  else
  {
    v5 = sub_DC0C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_DC0C0()
{
  if (qword_136D38 != -1)
  {
    swift_once();
  }

  sub_1A8E0(*(v0 + 120), *(*(v0 + 120) + 24));
  v1 = sub_104CD0();
  sub_25E4(&qword_137880, &unk_108290);
  v2 = swift_allocObject();
  *(v0 + 744) = v2;
  *(v2 + 16) = xmmword_109690;
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x800000000010C5B0;
  *(v2 + 48) = 0;
  *(v2 + 72) = &type metadata for Bool;
  strcpy((v2 + 80), "hasSleepAlarm");
  *(v2 + 94) = -4864;
  *(v2 + 96) = 1;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 128) = 0x68637461577369;
  *(v2 + 136) = 0xE700000000000000;
  *(v2 + 168) = &type metadata for Bool;
  *(v2 + 144) = v1 & 1;
  v6 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v3 = swift_task_alloc();
  *(v0 + 752) = v3;
  *v3 = v0;
  v3[1] = sub_DC2A8;
  v4 = *(v0 + 144);

  return v6(v4, 0xD000000000000037, 0x800000000010E4F0, v2);
}

uint64_t sub_DC2A8()
{
  *(*v1 + 760) = v0;

  if (v0)
  {
    v2 = sub_DC5BC;
  }

  else
  {

    v2 = sub_DC3C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_DC3C4()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 128);
  sub_1A550(*(v0 + 728), v2, *(v0 + 104));

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_DC5BC()
{
  v1 = v0[67];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_DC794()
{
  v1 = *(v0 + 592);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v5 = *(v0 + 432);
  v6 = *(v0 + 400);
  v7 = *(v0 + 408);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_DC980()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 400);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_DCB64()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_DCD28()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

id *sub_DCF18(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_20:
    v3 = sub_107270();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_1071C0();
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_19;
      }

      v6 = *(a1 + 8 * v4 + 32);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    sub_A94E4(v6, &v18);
    ++v4;
    if (v20)
    {
      v17 = v20;
      v16 = v18;
      v8 = v19;
      v9 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_ADA44(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v10 = v5[3];
      v12 = v17;
      if (v11 >= v10 >> 1)
      {
        v14 = sub_ADA44((v10 > 1), v11 + 1, 1, v5);
        v12 = v17;
        v5 = v14;
      }

      v5[2] = (v11 + 1);
      v13 = &v5[6 * v11];
      *(v13 + 2) = v16;
      v13[6] = v8;
      *(v13 + 7) = v12;
      *(v13 + 72) = v9 & 1;
      v4 = v7;
    }
  }

  return v5;
}