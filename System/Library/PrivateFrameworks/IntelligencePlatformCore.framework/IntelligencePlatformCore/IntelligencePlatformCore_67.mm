uint64_t sub_1C4A651A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4A70A78(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C4A651D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4B44844(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C4A65214@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4A70A94();
  *a1 = result;
  return result;
}

void sub_1C4A6523C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!*(a4 + 16) || (v12 = sub_1C445FAA8(a1, a2), (v13 & 1) == 0) || !*(a5 + 16))
  {
LABEL_10:
    if (qword_1EDDFECA0 != -1)
    {
      swift_once();
    }

    v40 = sub_1C4F00978();
    sub_1C442B738(v40, qword_1EDE2DF58);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v41 = sub_1C4F00968();
    v42 = sub_1C4F01CF8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v78[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1C441D828(a1, a2, v78);
      _os_log_impl(&dword_1C43F8000, v41, v42, "OntologyParser: %s: missing version for comparison", v43, 0xCu);
      sub_1C440962C(v44);
      MEMORY[0x1C6942830](v44, -1, -1);
      MEMORY[0x1C6942830](v43, -1, -1);
    }

    swift_beginAccess();
    v45 = *a6 & a3;
    v46 = v45 == a3;
    if (v45 == a3)
    {
      v47 = 0;
    }

    else
    {
      v47 = a3;
    }

    v48 = v47 | *a6;
    if (!v46 || (v48 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    return;
  }

  v14 = (*(a4 + 56) + 48 * v12);
  v72 = *v14;
  v16 = v14[2];
  v15 = v14[3];
  v18 = v14[4];
  v17 = v14[5];
  v77 = v14[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v76 = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v75 = v17;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = sub_1C445FAA8(a1, a2);
  if ((v20 & 1) == 0)
  {

    goto LABEL_10;
  }

  v64 = v18;
  v21 = (*(a5 + 56) + 48 * v19);
  v65 = *v21;
  v66 = v16;
  v22 = v21[3];
  v69 = a1;
  v70 = v21[2];
  v23 = v21[5];
  v67 = v21[4];
  v24 = qword_1EDDFECA0;
  v74 = v21[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1C4F00978();
  sub_1C442B738(v25, qword_1EDE2DF58);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = v22;
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CF8();

  v63 = v28;
  v29 = v28;
  v30 = v27;
  v31 = os_log_type_enabled(v27, v29);
  v32 = v26;
  v71 = v26;
  v68 = v23;
  if (v31)
  {
    v33 = v23;
    v34 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v79 = v62;
    *v34 = 136315394;
    buf = v34;
    *(v34 + 4) = sub_1C441D828(v69, a2, &v79);
    *(v34 + 12) = 2080;
    v80 = 0;
    v81 = 0xE000000000000000;
    v35 = v72;
    v36 = v66;
    sub_1C4F02438();
    MEMORY[0x1C6940010](544437792, 0xE400000000000000);
    v37 = v65;
    v78[0] = v65;
    v78[1] = v74;
    v78[2] = v70;
    v78[3] = v32;
    v38 = v67;
    v78[4] = v67;
    v78[5] = v33;
    sub_1C4F02438();
    v39 = sub_1C441D828(v80, v81, &v79);

    *(buf + 14) = v39;
    _os_log_impl(&dword_1C43F8000, v30, v63, "OntologyParser: %s: %s", buf, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v62, -1, -1);
    MEMORY[0x1C6942830](buf, -1, -1);
  }

  else
  {

    v36 = v66;
    v38 = v67;
    v35 = v72;
    v37 = v65;
  }

  v49 = v35 == v37 && v77 == v74;
  if (v49 || (sub_1C4F02938() & 1) != 0)
  {
    v50 = v36 == v70 && v76 == v71;
    if (v50 || (sub_1C4F02938() & 1) != 0)
    {

LABEL_49:

      return;
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CF8();

  v73 = v51;
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v78[0] = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_1C441D828(v69, a2, v78);
    _os_log_impl(&dword_1C43F8000, v73, v52, "OntologyParser: %s: version has changed", v53, 0xCu);
    sub_1C440962C(v54);
    MEMORY[0x1C6942830](v54, -1, -1);
    MEMORY[0x1C6942830](v53, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if ((a3 & ~*a6) != 0)
  {
    *a6 |= a3;
  }

  if (v64 == v38 && v75 == v68)
  {

    goto LABEL_49;
  }

  v56 = sub_1C4F02938();

  if ((v56 & 1) == 0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v57 = sub_1C4F00968();
    v58 = sub_1C4F01CF8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v80 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_1C441D828(v69, a2, &v80);
      _os_log_impl(&dword_1C43F8000, v57, v58, "OntologyParser: %s: versions incompatible", v59, 0xCu);
      sub_1C440962C(v60);
      MEMORY[0x1C6942830](v60, -1, -1);
      MEMORY[0x1C6942830](v59, -1, -1);
    }

    swift_beginAccess();
    v48 = *a6;
    if ((*a6 & 0x20) == 0)
    {
LABEL_20:
      *a6 = v48 | 0x20;
    }
  }
}

uint64_t sub_1C4A65A64(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = sub_1C4499940();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v32 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = 1;
  do
  {
    v6 = v5 - 1;
    v7 = *(inited + 32);
    v8 = *(inited + 40);
    sub_1C4461B98((inited + 48), v5 - 1, (inited + 32));
    *(inited + 16) = v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44869B4(v36, v7, v8, v9, v10, v11, v12, v13, v32, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v37, v38, v39, v40, v41, v42, v43, v44, v45);

    swift_beginAccess();
    v14 = sub_1C4663244();
    swift_endAccess();

    v15 = 0;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CD0];
    }

    v18 = v16 + 56;
    v17 = *(v16 + 56);
    v34 = v16;
    v19 = 1 << *(v16 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v17;
    v22 = (v19 + 63) >> 6;
    if ((v20 & v17) != 0)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v23 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
      }

      if (v23 >= v22)
      {
        break;
      }

      v21 = *(v18 + 8 * v23);
      ++v15;
      if (v21)
      {
        v15 = v23;
        do
        {
LABEL_13:
          v24 = (*(v34 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v21)))));
          v25 = *v24;
          v26 = v24[1];
          v27 = *(inited + 16);
          v28 = *(inited + 24);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v27 >= v28 >> 1)
          {
            sub_1C443D664();
            inited = v30;
          }

          v21 &= v21 - 1;
          *(inited + 16) = v27 + 1;
          v29 = inited + 16 * v27;
          *(v29 + 32) = v25;
          *(v29 + 40) = v26;
        }

        while (v21);
      }
    }

    v5 = *(inited + 16);
  }

  while (v5);

  return v35;
}

unint64_t sub_1C4A65CD4()
{
  result = qword_1EC0C21D8;
  if (!qword_1EC0C21D8)
  {
    type metadata accessor for ClassPair();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21D8);
  }

  return result;
}

unint64_t sub_1C4A65E74()
{
  result = qword_1EC0C21E8;
  if (!qword_1EC0C21E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21E8);
  }

  return result;
}

unint64_t sub_1C4A65ECC()
{
  result = qword_1EC0C21F0;
  if (!qword_1EC0C21F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21F0);
  }

  return result;
}

unint64_t sub_1C4A65F24()
{
  result = qword_1EC0C21F8;
  if (!qword_1EC0C21F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21F8);
  }

  return result;
}

unint64_t sub_1C4A65F7C()
{
  result = qword_1EC0C2200;
  if (!qword_1EC0C2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2200);
  }

  return result;
}

uint64_t sub_1C4A65FDC(uint64_t a1)
{
  v92 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v95 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v90 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v88 = v76 - v6;
  sub_1C43FBE44();
  v87 = sub_1C4EFDD18();
  sub_1C43FCDF8();
  v83 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v86 = v9;
  sub_1C43FBE44();
  v85 = sub_1C4EFDD28();
  sub_1C43FCDF8();
  v80 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v84 = v12;
  sub_1C43FBE44();
  v82 = sub_1C4EFDCF8();
  sub_1C43FCDF8();
  v77 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v81 = v15;
  sub_1C43FBE44();
  v79 = sub_1C4EFDD08();
  sub_1C43FCDF8();
  v76[1] = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v78 = v18;
  sub_1C43FBE44();
  v76[3] = sub_1C4EFDD48();
  sub_1C43FCDF8();
  v76[0] = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v76[2] = v21;
  sub_1C43FBE44();
  sub_1C4EFDDA8();
  sub_1C43FCDF8();
  v93 = v23;
  v94 = v22;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  v89 = v24;
  sub_1C43FBE44();
  v25 = sub_1C4EFDDD8();
  sub_1C43FCDF8();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v32 = sub_1C4EFDE18();
  sub_1C43FCDF8();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v38 = v37 - v36;
  v39 = sub_1C4EFDE68();
  sub_1C43FCDF8();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  v45 = v44 - v43;
  v91 = a1;
  sub_1C4EFDE78();
  sub_1C4EFDE38();
  (*(v41 + 8))(v45, v39);
  v46 = (*(v34 + 88))(v38, v32);
  if (v46 != *MEMORY[0x1E69A95B0])
  {
    if (v46 == *MEMORY[0x1E69A9588])
    {
      v49 = sub_1C4400A08();
      v50(v49);
      v52 = v93;
      v51 = v94;
      v53 = v89;
      (*(v93 + 32))(v89, v38, v94);
      v54 = sub_1C4A680E0(v53);
      (*(v52 + 8))(v53, v51);
      return v54;
    }

    if (v46 == *MEMORY[0x1E69A95A8])
    {
      v56 = sub_1C4400A08();
      v57(v56);
      v58 = sub_1C43FD024();
      v59(v58);
      sub_1C440AD7C();
      sub_1C4F02248();
      sub_1C440D48C();
      MEMORY[0x1C6940010](0xD000000000000034, 0x80000001C4FAE7C0);
      v60 = sub_1C4A6AD00(&qword_1EC0C2228, MEMORY[0x1E69A9548], MEMORY[0x1E69A9550]);
      sub_1C44133D4(v60);
      sub_1C440F848();

      sub_1C440AD8C();
      v61 = 36;
    }

    else if (v46 == *MEMORY[0x1E69A9590])
    {
      v62 = sub_1C4400A08();
      v63(v62);
      v64 = sub_1C43FD024();
      v65(v64);
      sub_1C440AD7C();
      sub_1C4F02248();
      sub_1C440D48C();
      MEMORY[0x1C6940010](0xD00000000000003DLL, 0x80000001C4FAE780);
      v66 = sub_1C4A6AD00(&qword_1EC0C2220, MEMORY[0x1E69A9518], MEMORY[0x1E69A9520]);
      sub_1C44133D4(v66);
      sub_1C440F848();

      sub_1C440AD8C();
      v61 = 38;
    }

    else if (v46 == *MEMORY[0x1E69A9580])
    {
      v67 = sub_1C4400A08();
      v68(v67);
      (*(v77 + 32))(v81, v38, v82);
      sub_1C440AD7C();
      sub_1C4F02248();
      sub_1C440D48C();
      sub_1C4405F64();
      sub_1C4A6AD00(&qword_1EC0C2218, MEMORY[0x1E69A9508], MEMORY[0x1E69A9510]);
      sub_1C4F02858();
      sub_1C440F848();

      sub_1C440AD8C();
      v61 = 40;
    }

    else if (v46 == *MEMORY[0x1E69A95A0])
    {
      v69 = sub_1C4400A08();
      v70(v69);
      v71 = sub_1C43FD024();
      v72(v71);
      sub_1C440AD7C();
      sub_1C4F02248();
      sub_1C440D48C();
      MEMORY[0x1C6940010](0xD000000000000033, 0x80000001C4FAE740);
      v73 = sub_1C4A6AD00(&qword_1EC0C2210, MEMORY[0x1E69A9538], MEMORY[0x1E69A9540]);
      sub_1C44133D4(v73);
      sub_1C440F848();

      sub_1C440AD8C();
      v61 = 42;
    }

    else
    {
      if (v46 != *MEMORY[0x1E69A9598])
      {
        goto LABEL_17;
      }

      v74 = sub_1C4400A08();
      v75(v74);
      (*(v83 + 32))(v86, v38, v87);
      sub_1C440AD7C();
      sub_1C4F02248();
      sub_1C440D48C();
      sub_1C4405F64();
      sub_1C4A6AD00(&qword_1EC0C2208, MEMORY[0x1E69A9528], MEMORY[0x1E69A9530]);
      sub_1C4F02858();
      sub_1C440F848();

      sub_1C440AD8C();
      v61 = 44;
    }

    v76[0] = v61;
    while (1)
    {
LABEL_17:
      sub_1C4F024A8();
      __break(1u);
    }
  }

  v47 = sub_1C4400A08();
  v48(v47);
  (*(v27 + 32))(v31, v38, v25);
  v54 = sub_1C4A66D0C(v31);
  (*(v27 + 8))(v31, v25);
  return v54;
}

uint64_t sub_1C4A66D0C(uint64_t a1)
{
  v136 = *MEMORY[0x1E69E9840];
  v116 = type metadata accessor for OntologyTriple(0);
  v110 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v3 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v90 - v5;
  v108 = sub_1C4EFDDF8();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1C4EFDD18();
  v102 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1C4EFDD28();
  v99 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1C4EFDCF8();
  v96 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1C4EFDD08();
  v93 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1C4EFDD48();
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1C4EFDDA8();
  v117 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = (&v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = sub_1C4EFDDD8();
  v14 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1C4EFDE18();
  v16 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1C4EFDE68();
  v19 = *(v122 - 8);
  v20 = MEMORY[0x1EEE9AC00](v122);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a1;
  v23 = MEMORY[0x1C693CAB0](v20);
  v24 = 0;
  v131 = *(v23 + 16);
  v120 = v19 + 8;
  v121 = v19 + 16;
  v119 = (v16 + 88);
  v118 = *MEMORY[0x1E69A95B0];
  v113 = *MEMORY[0x1E69A9588];
  v123 = (v16 + 96);
  v112 = (v117 + 32);
  v115 = (v117 + 8);
  v111 = (v14 + 32);
  v114 = (v14 + 8);
  v25 = MEMORY[0x1E69E7CC0];
  v117 = v18;
  v130 = v23;
  while (v131 != v24)
  {
    if (v24 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_54;
    }

    v26 = v122;
    (*(v19 + 16))(v22, v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v24, v122);
    sub_1C4EFDE38();
    (*(v19 + 8))(v22, v26);
    v27 = v127;
    v28 = (*v119)(v18, v127);
    if (v28 == v118)
    {
      (*v123)(v18, v27);
      v29 = v124;
      (*v111)(v124, v18, v125);
      v30 = v132;
      v31 = sub_1C4A66D0C(v29);
      v132 = v30;
      if (v30)
      {

        (*v114)(v124, v125);
      }

      v32 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458EB6C();
        v25 = v41;
      }

      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      v35 = v25;
      v36 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        sub_1C458EB6C();
        v35 = v42;
      }

      (*v114)(v124, v125);
    }

    else
    {
      if (v28 != v113)
      {
        if (v28 == *MEMORY[0x1E69A95A8])
        {
          v79 = v117;
          (*v123)(v117, v127);
          (*(v91 + 32))(v92, v79, v94);
          v134 = 0;
          v135 = 0xE000000000000000;
          sub_1C4F02248();
          MEMORY[0x1C6940010](0xD000000000000034, 0x80000001C4FAE7C0);
          sub_1C4A6AD00(&qword_1EC0C2228, MEMORY[0x1E69A9548], MEMORY[0x1E69A9550]);
          v80 = sub_1C4F02858();
          MEMORY[0x1C6940010](v80);
        }

        else
        {
LABEL_60:
          if (v28 == *MEMORY[0x1E69A9590])
          {
            v82 = v117;
            (*v123)(v117, v127);
            (*(v93 + 32))(v95, v82, v97);
            v134 = 0;
            v135 = 0xE000000000000000;
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD00000000000003DLL, 0x80000001C4FAE780);
            sub_1C4A6AD00(&qword_1EC0C2220, MEMORY[0x1E69A9518], MEMORY[0x1E69A9520]);
            v83 = sub_1C4F02858();
            MEMORY[0x1C6940010](v83);
          }

          else if (v28 == *MEMORY[0x1E69A9580])
          {
            v84 = v117;
            (*v123)(v117, v127);
            (*(v96 + 32))(v98, v84, v100);
            v134 = 0;
            v135 = 0xE000000000000000;
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD000000000000039, 0x80000001C4FAE700);
            sub_1C4A6AD00(&qword_1EC0C2218, MEMORY[0x1E69A9508], MEMORY[0x1E69A9510]);
            v85 = sub_1C4F02858();
            MEMORY[0x1C6940010](v85);
          }

          else if (v28 == *MEMORY[0x1E69A95A0])
          {
            v86 = v117;
            (*v123)(v117, v127);
            (*(v99 + 32))(v101, v86, v103);
            v134 = 0;
            v135 = 0xE000000000000000;
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD000000000000033, 0x80000001C4FAE740);
            sub_1C4A6AD00(&qword_1EC0C2210, MEMORY[0x1E69A9538], MEMORY[0x1E69A9540]);
            v87 = sub_1C4F02858();
            MEMORY[0x1C6940010](v87);
          }

          else if (v28 == *MEMORY[0x1E69A9598])
          {
            v88 = v117;
            (*v123)(v117, v127);
            (*(v102 + 32))(v104, v88, v105);
            v134 = 0;
            v135 = 0xE000000000000000;
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD000000000000039, 0x80000001C4FAE700);
            sub_1C4A6AD00(&qword_1EC0C2208, MEMORY[0x1E69A9528], MEMORY[0x1E69A9530]);
            v89 = sub_1C4F02858();
            MEMORY[0x1C6940010](v89);
          }
        }

        goto LABEL_68;
      }

      (*v123)(v18, v27);
      v37 = v126;
      (*v112)(v126, v18, v128);
      v38 = v132;
      v39 = sub_1C4A680E0(v37);
      v132 = v38;
      if (v38)
      {

        (*v115)(v126, v128);
      }

      v32 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458EB6C();
        v25 = v43;
      }

      v34 = *(v25 + 16);
      v40 = *(v25 + 24);
      v35 = v25;
      v36 = v34 + 1;
      if (v34 >= v40 >> 1)
      {
        sub_1C458EB6C();
        v35 = v44;
      }

      (*v115)(v126, v128);
    }

    *(v35 + 16) = v36;
    v25 = v35;
    *(v35 + 8 * v34 + 32) = v32;
    ++v24;
    v18 = v117;
    v23 = v130;
  }

  v45 = *(v25 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  v131 = v25;
  if (v45)
  {
    v134 = MEMORY[0x1E69E7CC0];
    v129 = v45;
    sub_1C459EAC8(0, v45, 0);
    v47 = v129;
    v24 = 0;
    v46 = v134;
    v130 = v25 + 32;
    while (v24 < *(v25 + 16))
    {
      v48 = *(v130 + 8 * v24);
      v49 = *(v48 + 16);
      v50 = sub_1C4A6AD00(&qword_1EC0C2238, type metadata accessor for OntologyTriple, &unk_1C4F49BF0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v51 = MEMORY[0x1C69407C0](v49, v116, v50);
      v133 = v51;
      v52 = *(v48 + 16);
      if (v52)
      {
        v53 = v48 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
        v54 = *(v110 + 72);
        do
        {
          sub_1C4A69CD8(v53, v6);
          sub_1C483C5BC();
          sub_1C4A69D3C(v3);
          v53 += v54;
          --v52;
        }

        while (v52);

        v55 = v133;
        v47 = v129;
      }

      else
      {
        v55 = v51;
      }

      v134 = v46;
      v57 = v46[2];
      v56 = v46[3];
      if (v57 >= v56 >> 1)
      {
        sub_1C459EAC8(v56 > 1, v57 + 1, 1);
        v47 = v129;
        v46 = v134;
      }

      ++v24;
      v46[2] = v57 + 1;
      v46[v57 + 4] = v55;
      v25 = v131;
      if (v24 == v47)
      {
        goto LABEL_30;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

LABEL_30:
  v58 = v106;
  sub_1C4EFDDB8();
  v59 = (*(v107 + 88))(v58, v108);
  if (v59 != *MEMORY[0x1E69A9570])
  {
    if (v59 == *MEMORY[0x1E69A9578])
    {
      v66 = v46[2];
      if (v66)
      {
        v62 = v46[4];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v62 = MEMORY[0x1E69E7CD0];
      }

      for (i = 0; ; ++i)
      {
        if (v66 == i)
        {
          goto LABEL_38;
        }

        if (i >= v46[2])
        {
          goto LABEL_56;
        }

        v69 = v46[i + 4];
        v70 = *(v62 + 32);
        v71 = v70 & 0x3F;
        v72 = ((1 << v70) + 63) >> 6;
        swift_bridgeObjectRetain_n();
        isStackAllocationSafe = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v71 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v24 = &v90 - ((8 * v72 + 15) & 0x3FFFFFFFFFFFFFF0);
          sub_1C4501018(0, v72, v24);
          v74 = v132;
          sub_1C4A6A160(v24, v72, v62, v69);
          v132 = v74;
          if (v74)
          {

            v81 = v132;
            swift_willThrow();

            __break(1u);
            goto LABEL_60;
          }

          v76 = v75;
        }

        else
        {
          v24 = swift_slowAlloc();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v77 = v132;
          v78 = sub_1C4A69D98(v24, v72, v62, v69);
          v132 = v77;
          if (v77)
          {
            goto LABEL_69;
          }

          v76 = v78;

          swift_bridgeObjectRelease_n();
          MEMORY[0x1C6942830](v24, -1, -1);
        }

        v62 = v76;
      }
    }

    while (1)
    {
LABEL_68:
      sub_1C4F024A8();
      __break(1u);
LABEL_69:

      MEMORY[0x1C6942830](v24, -1, -1);
      __break(1u);
    }
  }

  v60 = 0;
  v61 = v46[2];
  v62 = MEMORY[0x1E69E7CD0];
  while (v61 != v60)
  {
    if (v60 >= v46[2])
    {
      goto LABEL_55;
    }

    v63 = v60 + 1;
    v64 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C465ED44(v64, v62);
    v62 = v65;
    v60 = v63;
  }

LABEL_38:

  return sub_1C482FDC8(v62);
}

void *sub_1C4A680E0(NSObject *a1)
{
  v2 = v1;
  v4 = sub_1C4EFDDA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v77[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_1C4EFEEF8();
  v8 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v10 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v77[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v77[-v17];
  if (sub_1C4EFDD68())
  {

    v91 = 0;
    v92 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000049, 0x80000001C4FAE8D0);
    sub_1C4A6AD00(&qword_1EDDEFFA0, MEMORY[0x1E69A9558], MEMORY[0x1E69A9560]);
    v75 = sub_1C4F02858();
    MEMORY[0x1C6940010](v75);

LABEL_68:
    result = sub_1C4F024A8();
    __break(1u);
    return result;
  }

  if (sub_1C4EFDD78())
  {

    v91 = 0;
    v92 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000050, 0x80000001C4FAE870);
    sub_1C4A6AD00(&qword_1EDDEFFA0, MEMORY[0x1E69A9558], MEMORY[0x1E69A9560]);
    v76 = sub_1C4F02858();
    MEMORY[0x1C6940010](v76);

    goto LABEL_68;
  }

  v18 = sub_1C4EFDD58();
  if (v18)
  {
    v81 = v10;
    v82 = v13;
    v86 = a1;
    v20 = 0;
    v91 = MEMORY[0x1E69E7CC0];
    v21 = v18 + 56;
    v22 = 1 << *(v18 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v5 = v23 & *(v18 + 56);
    v24 = (v22 + 63) >> 6;
    v88 = (v8 + 8);
    *&v19 = 136315138;
    v80 = v19;
    v7 = v84;
    v85 = v24;
    v87 = v18;
    if (v5)
    {
      while (1)
      {
        v90 = v2;
        v25 = v20;
LABEL_12:
        v26 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v27 = *(v18 + 48) + ((v25 << 10) | (16 * v26));
        a1 = *v27;
        v4 = *(v27 + 8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFEBB8();
        v28 = sub_1C4EFEB68();
        v30 = v29;
        v31 = *v88;
        (*v88)(v7, v89);
        if (v28 == a1 && v30 == v4)
        {
          break;
        }

        v33 = sub_1C4F02938();

        if (v33)
        {
          goto LABEL_19;
        }

        v40 = v83;
        sub_1C4EFEBF8();
        v41 = sub_1C4EFEB68();
        v43 = v42;
        v31(v40, v89);
        if (v41 == a1 && v43 == v4)
        {
        }

        else
        {
          v45 = sub_1C4F02938();

          if ((v45 & 1) == 0)
          {
            v48 = v82;
            sub_1C4EFED98();
            v49 = sub_1C4EFEB68();
            v51 = v50;
            v31(v48, v89);
            if (v49 == a1 && v51 == v4)
            {

              v7 = v84;
              goto LABEL_42;
            }

            v53 = sub_1C4F02938();

            v7 = v84;
            if (v53)
            {
LABEL_42:

              v38 = v90;
              v39 = sub_1C4A6926C();
LABEL_21:
              v2 = v38;
              if (v38)
              {
                goto LABEL_63;
              }

              sub_1C49D4B84(v39);
LABEL_23:
              v20 = v25;
              goto LABEL_24;
            }

            v54 = v81;
            sub_1C4EFEE78();
            v79 = sub_1C4EFEB68();
            v56 = v55;
            v31(v54, v89);
            if (v79 == a1 && v56 == v4)
            {

              v2 = v90;
            }

            else
            {
              v79 = a1;
              v58 = sub_1C4F02938();

              v2 = v90;
              if ((v58 & 1) == 0)
              {
                if (qword_1EDDFECA0 != -1)
                {
                  swift_once();
                }

                v59 = sub_1C4F00978();
                sub_1C442B738(v59, qword_1EDE2DF58);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                a1 = sub_1C4F00968();
                v60 = sub_1C4F01CD8();

                if (os_log_type_enabled(a1, v60))
                {
                  v61 = swift_slowAlloc();
                  v78 = v60;
                  v62 = v61;
                  v63 = swift_slowAlloc();
                  v93 = v63;
                  *v62 = v80;
                  v64 = sub_1C441D828(v79, v4, &v93);

                  *(v62 + 4) = v64;
                  v7 = v84;
                  _os_log_impl(&dword_1C43F8000, a1, v78, "Query to OntologyStore contained unsupported predicate: %s", v62, 0xCu);
                  sub_1C440962C(v63);
                  MEMORY[0x1C6942830](v63, -1, -1);
                  MEMORY[0x1C6942830](v62, -1, -1);
                }

                else
                {
                }

                goto LABEL_23;
              }
            }

            v34 = sub_1C4A56194;
            v35 = MEMORY[0x1E69A9740];
            v36 = sub_1C4A56434;
            v37 = v86;
            v38 = v2;
LABEL_20:
            sub_1C4A69808(v37, v34, v35, v36);
            goto LABEL_21;
          }
        }

        v46 = v90;
        v47 = sub_1C4A68B00();
        v2 = v46;
        if (v46)
        {
LABEL_63:
        }

        sub_1C49D4B84(v47);
        v20 = v25;
        v7 = v84;
LABEL_24:
        v18 = v87;
        v24 = v85;
        if (!v5)
        {
          goto LABEL_8;
        }
      }

LABEL_19:

      v34 = sub_1C4A51F20;
      v35 = MEMORY[0x1E69A9718];
      v36 = sub_1C4A51F74;
      v37 = v86;
      v38 = v90;
      goto LABEL_20;
    }

LABEL_8:
    while (1)
    {
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v25 >= v24)
      {

        return v91;
      }

      v5 = *(v21 + 8 * v25);
      ++v20;
      if (v5)
      {
        v90 = v2;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

  if (qword_1EDDFECA0 != -1)
  {
LABEL_65:
    swift_once();
  }

  v66 = sub_1C4F00978();
  sub_1C442B738(v66, qword_1EDE2DF58);
  (*(v5 + 16))(v7, a1, v4);
  v67 = sub_1C4F00968();
  v68 = sub_1C4F01CB8();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v91 = v90;
    *v69 = 136380675;
    sub_1C4A6AD00(&qword_1EDDEFFA0, MEMORY[0x1E69A9558], MEMORY[0x1E69A9560]);
    v70 = sub_1C4F02858();
    v72 = v71;
    (*(v5 + 8))(v7, v4);
    v73 = sub_1C441D828(v70, v72, &v91);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_1C43F8000, v67, v68, "OntologyStore ignoring query since it does not match on any predicates: %{private}s", v69, 0xCu);
    v74 = v90;
    sub_1C440962C(v90);
    MEMORY[0x1C6942830](v74, -1, -1);
    MEMORY[0x1C6942830](v69, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C4A68B00()
{
  v84 = type metadata accessor for OntologyTriple(0);
  v87 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v1 = &v73 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v73 - v3);
  MEMORY[0x1EEE9AC00](v5);
  v86 = (&v73 - v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v73 - v9);
  v88 = MEMORY[0x1E69E7CC0];
  result = MEMORY[0x1C693CA80](v8);
  if (result)
  {
    v12 = 0;
    v13 = result + 56;
    v14 = 1 << *(result + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(result + 56);
    v76 = result;
    v77 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v17 = (v14 + 63) >> 6;
    v74 = v17;
    v75 = result + 56;
    v81 = v10;
    if (v16)
    {
LABEL_5:
      v18 = v12;
LABEL_9:
      v79 = v18;
      v80 = (v16 - 1) & v16;
      v19 = (*(result + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v16)))));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v78 + v77);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v82 = v22;
      v83 = v20;
      v85 = v21;
      v23 = sub_1C4A5512C(v20, v21);
      result = sub_1C4428DA0(v23);
      v24 = result;
      v25 = 0;
      v26 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v24 == v25)
        {

          sub_1C49D4B84(v26);
          v31 = sub_1C4A559DC(v83, v85);

          v32 = 0;
          v82 = *(v31 + 16);
          v83 = v31;
          v33 = (v31 + 56);
          v34 = MEMORY[0x1E69E7CC0];
          while (v82 != v32)
          {
            if (v32 >= *(v83 + 16))
            {
              goto LABEL_57;
            }

            v85 = v32;
            v35 = *(v33 - 1);
            v36 = *v33;
            v37 = *(v33 - 3);
            v38 = *(v33 - 2);
            v39 = v84;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v40 = v86;
            sub_1C4EFEBF8();
            sub_1C4EFEC38();

            *v40 = v37;
            v40[1] = v38;
            v41 = (v40 + *(v39 + 24));
            *v41 = 0;
            v41[1] = 0xE000000000000000;
            v42 = (v40 + *(v39 + 32));
            *v42 = v35;
            v42[1] = v36;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C458EB2C(0, *(v34 + 16) + 1, 1, v34);
              v34 = v45;
            }

            v44 = *(v34 + 16);
            v43 = *(v34 + 24);
            v10 = v81;
            if (v44 >= v43 >> 1)
            {
              sub_1C458EB2C(v43 > 1, v44 + 1, 1, v34);
              v34 = v46;
            }

            *(v34 + 16) = v44 + 1;
            result = sub_1C4A6AC9C(v86, v34 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v44);
            v33 += 6;
            v32 = v85 + 1;
          }

          sub_1C49D4B84(v34);
          v12 = v79;
          v16 = v80;
          v13 = v75;
          result = v76;
          v17 = v74;
          if (!v80)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }

        if ((v23 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1C6940F90](v25, v23);
        }

        else
        {
          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }
        }

        if (__OFADD__(v25, 1))
        {
          break;
        }

        sub_1C4A5CF6C(v10);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458EB2C(0, *(v26 + 16) + 1, 1, v26);
          v26 = v29;
        }

        v28 = *(v26 + 16);
        v27 = *(v26 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1C458EB2C(v27 > 1, v28 + 1, 1, v26);
          v26 = v30;
        }

        *(v26 + 16) = v28 + 1;
        result = sub_1C4A6AC9C(v10, v26 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v28);
        ++v25;
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v18 >= v17)
        {

          return v88;
        }

        v16 = *(v13 + 8 * v18);
        ++v12;
        if (v16)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v86 = v1;
    v47 = sub_1C4EFDD88();
    if (v47)
    {
      v48 = sub_1C44FE820(v47);
      v83 = *(v78 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
      v49 = sub_1C4A5540C(v48);
      result = sub_1C4428DA0(v49);
      v50 = result;
      v51 = 0;
      v85 = v49 & 0xC000000000000001;
      v52 = MEMORY[0x1E69E7CC0];
      while (v50 != v51)
      {
        if (v85)
        {
          result = MEMORY[0x1C6940F90](v51, v49);
        }

        else
        {
          if (v51 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }
        }

        if (__OFADD__(v51, 1))
        {
          goto LABEL_59;
        }

        sub_1C4A5CF6C(v4);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458EB2C(0, *(v52 + 16) + 1, 1, v52);
          v52 = v55;
        }

        v54 = *(v52 + 16);
        v53 = *(v52 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_1C458EB2C(v53 > 1, v54 + 1, 1, v52);
          v52 = v56;
        }

        *(v52 + 16) = v54 + 1;
        result = sub_1C4A6AC9C(v4, v52 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v54);
        ++v51;
      }

      sub_1C49D4B84(v52);
      v57 = sub_1C4A55C7C(v48);

      v58 = 0;
      v83 = *(v57 + 16);
      v85 = v57;
      v59 = (v57 + 56);
      v60 = MEMORY[0x1E69E7CC0];
      v61 = v84;
      while (v83 != v58)
      {
        if (v58 >= *(v85 + 16))
        {
          goto LABEL_61;
        }

        v63 = *(v59 - 1);
        v62 = *v59;
        v64 = *(v59 - 3);
        v65 = *(v59 - 2);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v66 = v86;
        sub_1C4EFEBF8();
        sub_1C4EFEC38();

        *v66 = v64;
        v66[1] = v65;
        v67 = (v66 + *(v61 + 24));
        *v67 = 0;
        v67[1] = 0xE000000000000000;
        v68 = (v66 + *(v61 + 32));
        *v68 = v63;
        v68[1] = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458EB2C(0, *(v60 + 16) + 1, 1, v60);
          v60 = v71;
        }

        v70 = *(v60 + 16);
        v69 = *(v60 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_1C458EB2C(v69 > 1, v70 + 1, 1, v60);
          v60 = v72;
        }

        *(v60 + 16) = v70 + 1;
        result = sub_1C4A6AC9C(v66, v60 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v70);
        v59 += 6;
        ++v58;
      }

      sub_1C49D4B84(v60);
    }

    return v88;
  }

  return result;
}

uint64_t sub_1C4A6926C()
{
  v0 = type metadata accessor for OntologyTriple(0);
  v65 = *(v0 - 8);
  v66 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v56 - v5);
  v69 = MEMORY[0x1E69E7CC0];
  result = MEMORY[0x1C693CA80](v4);
  if (result)
  {
    v8 = 0;
    v9 = result + 56;
    v10 = 1 << *(result + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(result + 56);
    v58 = result + 56;
    v59 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v13 = (v10 + 63) >> 6;
    v57 = v13;
    v60 = result;
    if (v12)
    {
LABEL_5:
      v14 = v8;
LABEL_9:
      v61 = v14;
      v62 = (v12 - 1) & v12;
      v15 = (*(result + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
      v16 = *v15;
      v17 = v15[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v18 = sub_1C4A56748(v16, v17);
      v19 = (v18 + 72);

      v20 = 0;
      v63 = *(v18 + 16);
      v64 = v18;
      v21 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v63 == v20)
        {

          sub_1C49D4B84(v21);
          v8 = v61;
          v12 = v62;
          result = v60;
          v13 = v57;
          v9 = v58;
          if (!v62)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }

        if (v20 >= *(v64 + 16))
        {
          break;
        }

        v22 = *v19;
        v67 = *(v19 - 1);
        v68 = v20;
        v24 = *(v19 - 5);
        v23 = *(v19 - 4);
        v25 = v66;
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        swift_bridgeObjectRetain_n();
        sub_1C4EFED98();
        sub_1C4EFEC38();

        *v6 = v24;
        v6[1] = v23;
        v26 = (v6 + *(v25 + 24));
        *v26 = 0;
        v26[1] = 0xE000000000000000;
        v27 = (v6 + *(v25 + 32));
        *v27 = v67;
        v27[1] = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458EB2C(0, *(v21 + 16) + 1, 1, v21);
          v21 = v30;
        }

        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1C458EB2C(v28 > 1, v29 + 1, 1, v21);
          v21 = v31;
        }

        *(v21 + 16) = v29 + 1;
        result = sub_1C4A6AC9C(v6, v21 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v29);
        v19 += 6;
        v20 = v68 + 1;
      }

      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
          goto LABEL_37;
        }

        v12 = *(v9 + 8 * v14);
        ++v8;
        if (v12)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1C4EFDD88();
    if (!result)
    {
      return v69;
    }

    v32 = 0;
    v33 = result + 56;
    v34 = 1 << *(result + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(result + 56);
    v58 = result + 56;
    v59 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v37 = (v34 + 63) >> 6;
    v57 = v37;
    v60 = result;
    if (v36)
    {
      do
      {
        v38 = v32;
LABEL_27:
        v61 = v38;
        v62 = (v36 - 1) & v36;
        v39 = (*(result + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v36)))));
        v41 = *v39;
        v40 = v39[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v42 = sub_1C4A569E8(v41, v40);
        v43 = (v42 + 72);

        v44 = 0;
        v63 = *(v42 + 16);
        v64 = v42;
        v45 = MEMORY[0x1E69E7CC0];
        while (v63 != v44)
        {
          if (v44 >= *(v64 + 16))
          {
            goto LABEL_40;
          }

          v46 = *v43;
          v67 = *(v43 - 1);
          v68 = v44;
          v47 = *(v43 - 5);
          v48 = *(v43 - 4);
          v49 = v66;
          swift_bridgeObjectRetain_n();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          swift_bridgeObjectRetain_n();
          sub_1C4EFED98();
          sub_1C4EFEC38();

          *v2 = v47;
          v2[1] = v48;
          v50 = (v2 + *(v49 + 24));
          *v50 = 0;
          v50[1] = 0xE000000000000000;
          v51 = (v2 + *(v49 + 32));
          *v51 = v67;
          v51[1] = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458EB2C(0, *(v45 + 16) + 1, 1, v45);
            v45 = v54;
          }

          v53 = *(v45 + 16);
          v52 = *(v45 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_1C458EB2C(v52 > 1, v53 + 1, 1, v45);
            v45 = v55;
          }

          *(v45 + 16) = v53 + 1;
          result = sub_1C4A6AC9C(v2, v45 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v53);
          v43 += 6;
          v44 = v68 + 1;
        }

        sub_1C49D4B84(v45);
        v32 = v61;
        v36 = v62;
        result = v60;
        v37 = v57;
        v33 = v58;
      }

      while (v62);
    }

    while (1)
    {
      v38 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v38 >= v37)
      {
LABEL_37:

        return v69;
      }

      v36 = *(v33 + 8 * v38);
      ++v32;
      if (v36)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1C4A69808(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v74 = a3;
  v66 = a2;
  type metadata accessor for OntologyTriple(0);
  sub_1C43FCDF8();
  v72 = v8;
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v62 - v13);
  v76 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1C693CA80](v12))
  {
    sub_1C4413588();
    v64 = v16;
    v65 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v18 = (v17 + 63) >> 6;
    v63 = v18;
    v67 = v19;
    if (!v20)
    {
      goto LABEL_4;
    }

LABEL_7:
    while (2)
    {
      sub_1C43FDBE0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v22 = v66(v4, v5);

      v23 = 0;
      v70 = *(v22 + 16);
      v71 = v22;
      v24 = (v22 + 56);
      v5 = MEMORY[0x1E69E7CC0];
      while (v70 != v23)
      {
        if (v23 >= *(v71 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v75 = v23;
        v26 = *(v24 - 1);
        v25 = *v24;
        v27 = *(v24 - 3);
        v28 = *(v24 - 2);
        v29 = v73;
        swift_bridgeObjectRetain_n();
        v30 = swift_bridgeObjectRetain_n();
        v74(v30);
        sub_1C4EFEC38();

        *v14 = v27;
        v14[1] = v28;
        v31 = (v14 + *(v29 + 24));
        *v31 = 0;
        v31[1] = 0xE000000000000000;
        v32 = (v14 + *(v29 + 32));
        *v32 = v26;
        v32[1] = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C4425E84();
          v5 = v36;
        }

        v34 = *(v5 + 16);
        v33 = *(v5 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1C458EB2C(v33 > 1, v34 + 1, 1, v5);
          v5 = v37;
        }

        *(v5 + 16) = v34 + 1;
        sub_1C440E614();
        sub_1C4A6AC9C(v14, v35);
        v24 += 4;
        v23 = (v75 + 1);
      }

      sub_1C49D4B84(v5);
      v15 = v68;
      v18 = v63;
      v16 = v64;
      if (v69)
      {
        continue;
      }

      break;
    }

LABEL_4:
    while (1)
    {
      v21 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        goto LABEL_33;
      }

      ++v15;
      if (*(v16 + 8 * v21))
      {
        goto LABEL_7;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  v75 = v10;
  if (sub_1C4EFDD88())
  {
    sub_1C4413588();
    v66 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v67 = v40;
    v42 = (v41 + 63) >> 6;
    v63 = v42;
    v64 = v39;
    v65 = a4;
    if (!v43)
    {
      goto LABEL_20;
    }

LABEL_23:
    while (2)
    {
      sub_1C43FDBE0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v45 = a4(v4, v5);

      v46 = 0;
      v70 = *(v45 + 16);
      v71 = v45;
      v47 = (v45 + 56);
      v5 = MEMORY[0x1E69E7CC0];
      while (v70 != v46)
      {
        if (v46 >= *(v71 + 16))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v48 = *(v47 - 1);
        v49 = *v47;
        v50 = *(v47 - 3);
        v51 = *(v47 - 2);
        v52 = v73;
        swift_bridgeObjectRetain_n();
        v53 = swift_bridgeObjectRetain_n();
        v54 = v75;
        v74(v53);
        sub_1C4EFEC38();

        *v54 = v50;
        v54[1] = v51;
        v55 = (v54 + *(v52 + 24));
        *v55 = 0;
        v55[1] = 0xE000000000000000;
        v56 = (v54 + *(v52 + 32));
        *v56 = v48;
        v56[1] = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C4425E84();
          v5 = v60;
        }

        v58 = *(v5 + 16);
        v57 = *(v5 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1C458EB2C(v57 > 1, v58 + 1, 1, v5);
          v5 = v61;
        }

        *(v5 + 16) = v58 + 1;
        sub_1C440E614();
        sub_1C4A6AC9C(v54, v59);
        v47 += 4;
        ++v46;
      }

      sub_1C49D4B84(v5);
      v38 = v68;
      v39 = v64;
      a4 = v65;
      v42 = v63;
      if (v69)
      {
        continue;
      }

      break;
    }

LABEL_20:
    while (1)
    {
      v44 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_38;
      }

      if (v44 >= v42)
      {
LABEL_33:

        return;
      }

      ++v38;
      if (*(v39 + 8 * v44))
      {
        goto LABEL_23;
      }
    }
  }
}

uint64_t sub_1C4A69CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OntologyTriple(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A69D3C(uint64_t a1)
{
  v2 = type metadata accessor for OntologyTriple(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C4A69D98(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4A6A160(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1C4A69E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v59 = 0;
    v31 = 0;
    sub_1C43FEC90();
    v34 = v33 & v32;
    v36 = (v35 + 63) >> 6;
    v37 = v4 + 56;
LABEL_22:
    while (v34)
    {
      sub_1C44110C4();
LABEL_29:
      v42 = (*(v5 + 48) + 16 * (v38 | (v31 << 6)));
      v44 = *v42;
      v43 = v42[1];
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      sub_1C4F02B68();
      sub_1C43FC41C();
      v47 = ~v46;
      do
      {
        v48 = v45 & v47;
        if (((*(v37 + (((v45 & v47) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v47)) & 1) == 0)
        {

          v34 = v57;
          goto LABEL_22;
        }

        v49 = (*(a4 + 48) + 16 * v48);
        if (*v49 == v44 && v49[1] == v43)
        {
          break;
        }

        v51 = sub_1C4F02938();
        v45 = v48 + 1;
      }

      while ((v51 & 1) == 0);

      sub_1C441CC54();
      *(a1 + v52) |= v53;
      v30 = __OFADD__(v59++, 1);
      v34 = v57;
      if (v30)
      {
        goto LABEL_44;
      }
    }

    v39 = v31;
    while (1)
    {
      v31 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v31 >= v36)
      {
LABEL_40:

        sub_1C4A8D90C(a1, a2, v59, v5);
        return;
      }

      ++v39;
      if (*(v5 + 56 + 8 * v31))
      {
        sub_1C43FCF1C();
        v57 = v41 & v40;
        goto LABEL_29;
      }
    }
  }

  else
  {
    v59 = 0;
    v6 = 0;
    v54 = a4 + 56;
    sub_1C43FEC90();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    v12 = v5 + 56;
    v56 = v11;
LABEL_3:
    while (v9)
    {
      sub_1C44110C4();
LABEL_10:
      v17 = (*(v4 + 48) + 16 * (v13 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      sub_1C4F02B68();
      v20 = v5;
      sub_1C43FC41C();
      v23 = ~v22;
      do
      {
        v24 = v21 & v23;
        v25 = (v21 & v23) >> 6;
        v26 = 1 << (v21 & v23);
        if ((v26 & *(v12 + 8 * v25)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v11 = v56;
          v9 = v57;
          goto LABEL_3;
        }

        v27 = (*(v20 + 48) + 16 * v24);
        if (*v27 == v19 && v27[1] == v18)
        {
          break;
        }

        v29 = sub_1C4F02938();
        v21 = v24 + 1;
      }

      while ((v29 & 1) == 0);

      v9 = v57;
      *(a1 + 8 * v25) |= v26;
      v30 = __OFADD__(v59++, 1);
      v5 = v20;
      v4 = a4;
      v11 = v56;
      if (v30)
      {
        goto LABEL_43;
      }
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_40;
      }

      ++v14;
      if (*(v54 + 8 * v6))
      {
        sub_1C43FCF1C();
        v57 = v16 & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1C4A6A160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a2;
  v91 = a1;
  v115 = type metadata accessor for OntologyTriple(0);
  v96 = *(v115 - 1);
  MEMORY[0x1EEE9AC00](v115);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = (&v87 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v87 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v87 - v16;
  v17 = *(a4 + 16) >= *(a3 + 16);
  v107 = a3;
  v103 = a4;
  v18 = &v116;
  if (v17)
  {
    goto LABEL_49;
  }

  v93 = 0;
  v19 = 0;
  v20 = *(a4 + 56);
  v88 = a4 + 56;
  v21 = 1 << *(a4 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v87 = (v21 + 63) >> 6;
  v105 = a3 + 56;
  while (1)
  {
LABEL_6:
    if (v23)
    {
      v24 = __clz(__rbit64(v23));
      v94 = (v23 - 1) & v23;
    }

    else
    {
      v25 = v19;
      do
      {
        v19 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_98:
          __break(1u);
          return;
        }

        if (v19 >= v87)
        {
          goto LABEL_96;
        }

        v26 = *(v88 + 8 * v19);
        ++v25;
      }

      while (!v26);
      v24 = __clz(__rbit64(v26));
      v94 = (v26 - 1) & v26;
    }

    v95 = v19;
    v27 = *(v103 + 48);
    v106 = *(v96 + 72);
    v28 = v92;
    sub_1C4A69CD8(v27 + v106 * (v24 | (v19 << 6)), v92);
    v29 = v108;
    sub_1C4A6AC9C(v28, v108);
    sub_1C4F02AF8();
    v30 = *v29;
    v109 = v29[1];
    v110 = v30;
    sub_1C4F01298();
    v31 = v115;
    v32 = v115[5];
    sub_1C4EFEEF8();
    sub_1C4A6AD00(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
    v100 = v32;
    sub_1C4F00FE8();
    v33 = (v29 + v31[6]);
    v34 = *v33;
    v101 = v33[1];
    v102 = v34;
    sub_1C4F01298();
    v97 = v31[7];
    sub_1C4F00FE8();
    v35 = (v29 + v31[8]);
    v36 = v35[1];
    v99 = *v35;
    v98 = v36;
    sub_1C4F01298();
    v37 = sub_1C4F02B68();
    v38 = -1 << *(a3 + 32);
    v39 = v37 & ~v38;
    v40 = v39 >> 6;
    v7 = 1 << v39;
    if (((1 << v39) & *(v105 + 8 * (v39 >> 6))) != 0)
    {
      break;
    }

LABEL_45:
    sub_1C4A69D3C(v108);
    v19 = v95;
    v23 = v94;
  }

  v104 = ~v38;
  while (1)
  {
    sub_1C4A69CD8(*(a3 + 48) + v39 * v106, v12);
    v41 = *v12 == v110 && v12[1] == v109;
    if (!v41 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_44;
    }

    sub_1C4A6AD00(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v113 == v111 && v114 == v112)
    {
    }

    else
    {
      v43 = sub_1C4F02938();

      if ((v43 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v44 = (v12 + v115[6]);
    v45 = *v44 == v102 && v44[1] == v101;
    if (!v45 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_44;
    }

    sub_1C4F01578();
    sub_1C4F01578();
    a4 = v112;
    if (v113 == v111 && v114 == v112)
    {
      break;
    }

    v47 = sub_1C4F02938();

    if (v47)
    {
      goto LABEL_39;
    }

LABEL_44:
    sub_1C4A69D3C(v12);
    v39 = (v39 + 1) & v104;
    v40 = v39 >> 6;
    v7 = 1 << v39;
    a3 = v107;
    if ((*(v105 + 8 * (v39 >> 6)) & (1 << v39)) == 0)
    {
      goto LABEL_45;
    }
  }

LABEL_39:
  v48 = (v12 + v115[8]);
  v49 = *v48 == v99 && v48[1] == v98;
  if (!v49 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_1C4A69D3C(v12);
  sub_1C4A69D3C(v108);
  *(v91 + 8 * v40) |= v7;
  v50 = __OFADD__(v93++, 1);
  a3 = v107;
  v19 = v95;
  v18 = &v117;
  v23 = v94;
  if (!v50)
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_49:
  *(v18 - 32) = 0;
  v51 = 0;
  v52 = *(a3 + 56);
  v94 = a3 + 56;
  v53 = 1 << *(a3 + 32);
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  else
  {
    v54 = -1;
  }

  v55 = v54 & v52;
  v92 = (v53 + 63) >> 6;
  v106 = a4 + 56;
  while (2)
  {
    while (2)
    {
      if (v55)
      {
        v56 = __clz(__rbit64(v55));
        v97 = (v55 - 1) & v55;
      }

      else
      {
        v57 = v51;
        do
        {
          v51 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_98;
          }

          if (v51 >= v92)
          {
            goto LABEL_96;
          }

          v58 = *(v94 + 8 * v51);
          ++v57;
        }

        while (!v58);
        v56 = __clz(__rbit64(v58));
        v97 = (v58 - 1) & v58;
      }

      v59 = v56 | (v51 << 6);
      v60 = *(a3 + 48);
      v61 = *(v96 + 72);
      v95 = v59;
      v108 = v61;
      v62 = v109;
      sub_1C4A69CD8(v60 + v61 * v59, v109);
      v63 = v103;
      sub_1C4F02AF8();
      v64 = v62[1];
      v110 = *v62;
      sub_1C4F01298();
      v65 = v115;
      v66 = v115[5];
      sub_1C4EFEEF8();
      sub_1C4A6AD00(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
      v101 = v66;
      sub_1C4F00FE8();
      v67 = (v62 + v65[6]);
      v68 = v67[1];
      v104 = *v67;
      v102 = v68;
      sub_1C4F01298();
      v98 = v65[7];
      sub_1C4F00FE8();
      v69 = (v62 + v65[8]);
      v70 = v69[1];
      v100 = *v69;
      v99 = v70;
      sub_1C4F01298();
      v71 = sub_1C4F02B68();
      v72 = -1 << *(v63 + 32);
      v73 = v71 & ~v72;
      if (((*(v106 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
      {
LABEL_92:
        sub_1C4A69D3C(v109);
        a3 = v107;
        v55 = v97;
        continue;
      }

      break;
    }

    v105 = ~v72;
    while (2)
    {
      sub_1C4A69CD8(*(v63 + 48) + v73 * v108, v7);
      v74 = *v7 == v110 && *(v7 + 8) == v64;
      if (!v74 && (sub_1C4F02938() & 1) == 0)
      {
        goto LABEL_91;
      }

      sub_1C4A6AD00(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
      sub_1C4F01578();
      sub_1C4F01578();
      if (v113 == v111 && v114 == v112)
      {

        v63 = v103;
      }

      else
      {
        v76 = sub_1C4F02938();

        v63 = v103;
        if ((v76 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      v77 = (v7 + v115[6]);
      v78 = *v77 == v104 && v77[1] == v102;
      if (!v78 && (sub_1C4F02938() & 1) == 0)
      {
        goto LABEL_91;
      }

      sub_1C4F01578();
      sub_1C4F01578();
      if (v113 == v111 && v114 == v112)
      {
      }

      else
      {
        v80 = sub_1C4F02938();

        if ((v80 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      v81 = (v7 + v115[8]);
      v82 = *v81 == v100 && v81[1] == v99;
      if (!v82 && (sub_1C4F02938() & 1) == 0)
      {
LABEL_91:
        sub_1C4A69D3C(v7);
        v73 = (v73 + 1) & v105;
        if (((*(v106 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
        {
          goto LABEL_92;
        }

        continue;
      }

      break;
    }

    sub_1C4A69D3C(v7);
    sub_1C4A69D3C(v109);
    *(v91 + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v95;
    v50 = __OFADD__(v93++, 1);
    a3 = v107;
    v55 = v97;
    if (!v50)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_96:

  sub_1C4A8E8A4(v91, v89, v93, a3, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
}

uint64_t sub_1C4A6AC9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OntologyTriple(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A6AD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4A6AD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a2;
  v4 = a4;
  v5 = a3;
  v91 = a1;
  v92 = a4;
  v93 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v94 = 0;
    v42 = 0;
    v86 = a3 + 56;
    sub_1C43FEC90();
    v45 = v44 & v43;
    v47 = (v46 + 63) >> 6;
    v108 = v4 + 56;
    v90 = v47;
    while (1)
    {
      while (1)
      {
        if (v45)
        {
          v48 = __clz(__rbit64(v45));
          v45 &= v45 - 1;
        }

        else
        {
          v49 = v42;
          do
          {
            v42 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              goto LABEL_81;
            }

            if (v42 >= v47)
            {
LABEL_79:

              sub_1C4A8EA34(v91, v87, v94, v5);
              return;
            }

            ++v49;
          }

          while (!*(v86 + 8 * v42));
          sub_1C43FCF1C();
          v45 = v51 & v50;
        }

        v52 = v48 | (v42 << 6);
        sub_1C43FF484((*(v5 + 48) + (v52 << 6)));
        v53 = v4;
        v54 = sub_1C4F02AF8();
        v62 = v114;
        v115 = v112;
        if (v112)
        {
          sub_1C442E45C(v54, v55, v56, v57, v58, v59, v60, v61, v82, v83, v86, v87, v88, v90, v91, v92, v93, v94, v95, v97, v99, v113, v111, v105, v108);
          sub_1C4F01298();
        }

        else
        {
          sub_1C442E45C(v54, v55, v56, v57, v58, v59, v60, v61, v82, v83, v86, v87, v88, v90, v91, v92, v93, v94, v95, v97, v99, v113, v111, v105, v108);
        }

        sub_1C4F01298();
        sub_1C4F02B68();
        sub_1C43FC41C();
        v65 = v64 & ~v63;
        if ((*(v108 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
        {
          break;
        }

        sub_1C485157C(&v109);
        v4 = v53;
        v5 = v93;
      }

      v97 = v45;
      v99 = v62;
      v95 = v52;
      v105 = ~v63;
      v66 = v109;
      v67 = v110;
      v68 = *(v53 + 48);
      v69 = v115;
      while (2)
      {
        v70 = (v68 + (v65 << 6));
        v72 = v70[4];
        v71 = v70[5];
        v74 = v70[6];
        v73 = v70[7];
        if (*v70 == v66 && v70[1] == v67)
        {
          v76 = 1;
          if (!v71)
          {
            goto LABEL_73;
          }

LABEL_61:
          if (!v69)
          {
            goto LABEL_73;
          }

          if (v76)
          {
            goto LABEL_76;
          }

          if (v72 != v104 || v71 != v69)
          {
            sub_1C43FD024();
            v78 = sub_1C4F02938();
            v69 = v115;
            if ((v78 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

          if (v74 != v102 || v73 != v99)
          {
            v76 = sub_1C4F02938();
            v69 = v115;
            goto LABEL_73;
          }

LABEL_76:
          sub_1C485157C(&v109);
          v45 = v97;
          sub_1C441CC54();
          *(v91 + v80) |= v81;
          if (__OFADD__(v94, 1))
          {
            goto LABEL_82;
          }

          ++v94;
          v4 = v92;
          v5 = v93;
          v47 = v90;
        }

        else
        {
          v76 = sub_1C4F02938();
          v69 = v115;
          if (v71)
          {
            goto LABEL_61;
          }

LABEL_73:
          if (v76)
          {
            goto LABEL_76;
          }

LABEL_74:
          v65 = (v65 + 1) & v105;
          if ((*(v108 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
          {
            continue;
          }

          sub_1C485157C(&v109);
          v4 = v92;
          v5 = v93;
          v47 = v90;
          v45 = v97;
        }

        break;
      }
    }
  }

  v94 = 0;
  v6 = 0;
  v84 = a4 + 56;
  sub_1C43FEC90();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v106 = v5 + 56;
  v85 = v11;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_10:
    sub_1C43FF484((*(v4 + 48) + ((v12 | (v6 << 6)) << 6)));
    v16 = sub_1C4F02AF8();
    if (v112)
    {
      sub_1C442E45C(v16, v17, v18, v19, v20, v21, v22, v23, v82, v84, v85, v87, v88, v89, v91, v92, v93, v94, v114, v113, v111, v101, v103, v106, v112);
      sub_1C4F01298();
    }

    else
    {
      sub_1C442E45C(v16, v17, v18, v19, v20, v21, v22, v23, v82, v84, v85, v87, v88, v89, v91, v92, v93, v94, v114, v113, v111, v101, v103, v106, 0);
    }

    sub_1C4F01298();
    sub_1C4F02B68();
    sub_1C43FC41C();
    v26 = v25 & ~v24;
    v27 = v26 >> 6;
    v28 = 1 << v26;
    if (((1 << v26) & *(v106 + 8 * (v26 >> 6))) != 0)
    {
      v89 = v9;
      v101 = ~v24;
      v29 = v109;
      v30 = v110;
      v103 = *(v5 + 48);
      v31 = v107;
      v115 = v109;
      while (1)
      {
        v32 = (v103 + (v26 << 6));
        v33 = v32[4];
        v34 = v32[5];
        v35 = v32[6];
        v36 = v32[7];
        if (*v32 == v29 && v32[1] == v30)
        {
          break;
        }

        sub_1C4F02938();
        sub_1C4408E48();
        if (v34)
        {
          goto LABEL_22;
        }

LABEL_34:
        if (v38)
        {
          goto LABEL_37;
        }

LABEL_35:
        v26 = (v26 + 1) & v101;
        v27 = v26 >> 6;
        v28 = 1 << v26;
        if ((*(v106 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
        {
          sub_1C485157C(&v109);
          goto LABEL_39;
        }
      }

      v38 = 1;
      if (!v34)
      {
        goto LABEL_34;
      }

LABEL_22:
      if (!v31)
      {
        goto LABEL_34;
      }

      if (v38)
      {
        goto LABEL_37;
      }

      if (v33 != v100 || v34 != v31)
      {
        sub_1C4F02938();
        sub_1C4408E48();
        if ((v40 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if (v35 != v98 || v36 != v96)
      {
        sub_1C4F02938();
        sub_1C4408E48();
        goto LABEL_34;
      }

LABEL_37:
      sub_1C485157C(&v109);
      *(v91 + 8 * v27) |= v28;
      if (__OFADD__(v94, 1))
      {
        goto LABEL_83;
      }

      ++v94;
LABEL_39:
      v4 = v92;
      v5 = v93;
      v11 = v85;
      v9 = v89;
    }

    else
    {
      sub_1C485157C(&v109);
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_79;
    }

    ++v13;
    if (*(v84 + 8 * v6))
    {
      sub_1C43FCF1C();
      v9 = v15 & v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
}

uint64_t OntologyStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OntologyStore.init(config:)(a1);
  return v2;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicateRangePair(predicateId:range:)(Swift::String predicateId, Swift::String range)
{
  v2 = sub_1C4A570F0(predicateId._countAndFlagsBits, predicateId._object, range._countAndFlagsBits, range._object);
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicateDomainPair(predicateId:domain:)(Swift::String predicateId, Swift::String domain)
{
  v2 = sub_1C4A56CF4(predicateId._countAndFlagsBits, predicateId._object, domain._countAndFlagsBits, domain._object);
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadClasses(classID:)(Swift::String classID)
{
  v1 = sub_1C4A5512C(classID._countAndFlagsBits, classID._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicates()()
{
  v0 = sub_1C4A55968();
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

uint64_t sub_1C4A6B394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4A6B3C0();
  *a1 = result;
  return result;
}

uint64_t *OntologyStore.init(config:)(uint64_t a1)
{
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_config;
  sub_1C44098F0(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_config);
  if (qword_1EDDFF220 != -1)
  {
    swift_once();
  }

  v5 = sub_1C44F7F70();
  sub_1C4467948(a1);
  if (v2)
  {
    sub_1C4467948(v1 + v4);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db) = v5;
  }

  return v1;
}

uint64_t OntologyStore.deinit()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_config);

  return v0;
}

uint64_t OntologyStore.__deallocating_deinit()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_config);

  return swift_deallocClassInstance();
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicates(domains:)(Swift::OpaquePointer domains)
{
  v1 = sub_1C4A5755C(domains._rawValue);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicate(predicateId:)(Swift::String predicateId)
{
  v1 = sub_1C4A559DC(predicateId._countAndFlagsBits, predicateId._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicateRange(predicateId:)(Swift::String predicateId)
{
  v1 = sub_1C4A56748(predicateId._countAndFlagsBits, predicateId._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicates(domain:)(Swift::String domain)
{
  v1 = sub_1C4A56434(domain._countAndFlagsBits, domain._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OntologyStore.loadPredicateDomain()()
{
  v0 = sub_1C4A56120();
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

uint64_t type metadata accessor for OntologyStore(uint64_t a1)
{
  result = qword_1EDDEAB70;
  if (!qword_1EDDEAB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A6B700(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t sub_1C4A6B7DC()
{

  v0 = sub_1C49A5640(sub_1C4A6B848, 0);

  return v0;
}

uint64_t type metadata accessor for OntologyTriple(uint64_t a1)
{
  result = qword_1EDDE95F8;
  if (!qword_1EDDE95F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A6BB08()
{
  sub_1C44327CC();
  v4 = v3;
  v5 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE400000000000000;
      v5 = 1819047270;
      break;
    case 2:
      v5 = sub_1C44076F0();
      break;
    case 3:
      v5 = sub_1C43FC708();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v1)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1819047270;
      break;
    case 2:
      sub_1C4417600();
      break;
    case 3:
      sub_1C440AFE0();
      break;
    default:
      break;
  }

  if (v5 == v2 && v0 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1C4F02938();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1C4A6BD18(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1C4F02938() ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1C4A6BD68(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1C4F02938() ^ 1;
  }

  return v6 & 1;
}

BOOL sub_1C4A6BDB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37848(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BDD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37860(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BDF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37B60(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BE10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37B78(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BE30(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37F44(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BE50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  v4 = sub_1C4B77F8C(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BE70(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37B90(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6BE90(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37BA8(v2, v3);
  return sub_1C442D078(v4);
}

uint64_t sub_1C4A6BEEC()
{
  sub_1C44327CC();
  v3 = v2;
  v4 = v1;
  switch(v5)
  {
    case 1:
      v0 = 0xE400000000000000;
      v4 = 1819047270;
      break;
    case 2:
      v4 = sub_1C44076F0();
      break;
    case 3:
      v4 = sub_1C43FC708();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v3)
  {
    case 1:
      v6 = 0xE400000000000000;
      v1 = 1819047270;
      break;
    case 2:
      sub_1C4417600();
      break;
    case 3:
      sub_1C440AFE0();
      break;
    default:
      break;
  }

  if (v4 == v1 && v0 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1C4F02938();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_1C4A6BFF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37F5C(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6C010(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37BC0(v2, v3);
  return sub_1C442D078(v4);
}

BOOL sub_1C4A6C030(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44076E0(a1, a2);
  sub_1C4D37BD8(v2, v3);
  return sub_1C442D078(v4);
}

unint64_t sub_1C4A6C050()
{
  v1 = v0;
  sub_1C4F02248();

  MEMORY[0x1C6940010](*v1, v1[1]);
  MEMORY[0x1C6940010](0x273A702027, 0xE500000000000000);
  v2 = type metadata accessor for OntologyTriple(0);
  sub_1C4EFEEF8();
  sub_1C441A11C();
  sub_1C4A6D1D8(v3, v4, MEMORY[0x1E69A9780]);
  v5 = sub_1C4F02858();
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](0x273A69722027, 0xE600000000000000);
  MEMORY[0x1C6940010](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  MEMORY[0x1C6940010](8231, 0xE200000000000000);
  v6 = sub_1C4F02858();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](0x273A6F2027, 0xE500000000000000);
  MEMORY[0x1C6940010](*(v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 8));
  MEMORY[0x1C6940010](15911, 0xE200000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](658141298, 0xE400000000000000);

  return 0xD000000000000013;
}

uint64_t sub_1C4A6C238(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for OntologyTriple(0);
  if ((sub_1C44DBB50(a1 + v5[5], a2 + v5[5]) & 1) == 0)
  {
    return 0;
  }

  sub_1C44033A8(v5[6]);
  v8 = v4 && v6 == v7;
  if (!v8 && (sub_1C4F02938() & 1) == 0 || (sub_1C44DBB50(a1 + v5[7], a2 + v5[7]) & 1) == 0)
  {
    return 0;
  }

  sub_1C44033A8(v5[8]);
  if (v4 && v9 == v10)
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4A6C318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C4F86600 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C4A6C4CC(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A6C578(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C2258, &qword_1C4F49C38);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1C4409678(a1, a1[3]);
  sub_1C4A6D184();
  sub_1C4F02BF8();
  v17 = 0;
  sub_1C4402150();
  sub_1C4F02798();
  if (!v1)
  {
    type metadata accessor for OntologyTriple(0);
    v16 = 1;
    sub_1C4EFEEF8();
    sub_1C441A11C();
    sub_1C4A6D1D8(v9, v10, MEMORY[0x1E69A9750]);
    sub_1C4402150();
    sub_1C4F027E8();
    v15 = 2;
    sub_1C4402150();
    sub_1C4F02798();
    v14 = 3;
    sub_1C4402150();
    sub_1C4F027E8();
    v13 = 4;
    sub_1C4402150();
    sub_1C4F02798();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C4A6C7A0(uint64_t a1)
{
  sub_1C4F01298();
  type metadata accessor for OntologyTriple(0);
  sub_1C4EFEEF8();
  sub_1C441A11C();
  sub_1C4A6D1D8(v1, v2, MEMORY[0x1E69A9758]);
  sub_1C4F00FE8();
  sub_1C4F01298();
  sub_1C4F00FE8();

  return sub_1C4F01298();
}

uint64_t sub_1C4A6C880()
{
  sub_1C4F02AF8();
  sub_1C4F01298();
  type metadata accessor for OntologyTriple(0);
  sub_1C4EFEEF8();
  sub_1C441A11C();
  sub_1C4A6D1D8(v0, v1, MEMORY[0x1E69A9758]);
  sub_1C4F00FE8();
  sub_1C4F01298();
  sub_1C4F00FE8();
  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C4A6C970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v41 = v3;
  v42 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v38 - v8;
  v45 = sub_1C456902C(&qword_1EC0C2248, &qword_1C4F49C30);
  sub_1C43FCDF8();
  v43 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v38 - v12;
  v14 = type metadata accessor for OntologyTriple(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C4409678(a1, a1[3]);
  sub_1C4A6D184();
  v44 = v13;
  v17 = v46;
  sub_1C4F02BC8();
  if (v17)
  {
    return sub_1C440962C(a1);
  }

  v39 = v6;
  v46 = v14;
  v51 = 0;
  v18 = v16;
  *v16 = sub_1C4F02678();
  v16[1] = v19;
  v38[3] = v19;
  v50 = 1;
  sub_1C441A11C();
  v22 = sub_1C4A6D1D8(v20, v21, MEMORY[0x1E69A9778]);
  v23 = v9;
  v24 = v41;
  sub_1C4F026C8();
  v38[1] = v22;
  v25 = *(v42 + 32);
  v25(v18 + *(v46 + 20), v23, v24);
  v49 = 2;
  v38[2] = 0;
  v26 = sub_1C4F02678();
  v38[0] = v25;
  v27 = v46;
  v28 = (v18 + *(v46 + 24));
  *v28 = v26;
  v28[1] = v29;
  v48 = 3;
  v30 = v39;
  sub_1C4F026C8();
  (v38[0])(v18 + *(v27 + 28), v30, v41);
  v47 = 4;
  v31 = sub_1C4F02678();
  v33 = v32;
  v34 = sub_1C440E634();
  v35(v34);
  v36 = (v18 + *(v27 + 32));
  *v36 = v31;
  v36[1] = v33;
  sub_1C4A69CD8(v18, v40);
  sub_1C440962C(a1);
  return sub_1C4A69D3C(v18);
}

uint64_t sub_1C4A6CE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A6C318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A6CE70(uint64_t a1)
{
  v2 = sub_1C4A6D184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A6CEAC(uint64_t a1)
{
  v2 = sub_1C4A6D184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A6CF24()
{
  sub_1C4F02AF8();
  sub_1C4A6C7A0(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A6CF64(void *a1, void *a2)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (v3 || (sub_1C43FD168(), (sub_1C4F02938() & 1) != 0))
  {
    v4 = *(type metadata accessor for OntologyTriple(0) + 20);
    sub_1C4EFEEF8();
    sub_1C441A11C();
    sub_1C4A6D1D8(v5, v6, MEMORY[0x1E69A9768]);
    if (sub_1C4F010B8() & 1) == 0 || ((sub_1C43FDC10(), v3) ? (v7 = v4 == v2) : (v7 = 0), (v7 || (sub_1C4400A18(), (sub_1C4F02938())) && ((sub_1C43FDC10(), v3) ? (v8 = v4 == v2) : (v8 = 0), v8 || (sub_1C4400A18(), (sub_1C4F02938()))))
    {

      return sub_1C4EFE9A8();
    }

    sub_1C4400A18();
  }

  else
  {
    sub_1C43FD168();
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4A6D104(uint64_t a1)
{
  result = sub_1C4EFEEF8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4A6D184()
{
  result = qword_1EC0C2250;
  if (!qword_1EC0C2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2250);
  }

  return result;
}

uint64_t sub_1C4A6D1D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for OntologyTriple.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C4A6D300()
{
  result = qword_1EC0C2260;
  if (!qword_1EC0C2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2260);
  }

  return result;
}

unint64_t sub_1C4A6D358()
{
  result = qword_1EC0C2268;
  if (!qword_1EC0C2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2268);
  }

  return result;
}

unint64_t sub_1C4A6D3B0()
{
  result = qword_1EC0C2270;
  if (!qword_1EC0C2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2270);
  }

  return result;
}

BOOL sub_1C4A6D408(uint64_t (*a1)(unint64_t), __n128 a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  do
  {
    v9 = v7;
    if (v8 == v7)
    {
      break;
    }

    v10 = *(sub_1C4EFA308() - 8);
    v11 = a1(a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9);
    if (v4)
    {
      break;
    }

    v7 = v9 + 1;
  }

  while ((v11 & 1) != 0);
  return v8 == v9;
}

BOOL sub_1C4A6D4DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = (a3 + 56);
  v7 = *(a3 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = *(v6 - 1);
    v9 = *v6;
    v10 = *(v6 - 2);
    v13[0] = *(v6 - 3);
    v13[1] = v10;
    v13[2] = v8;
    v13[3] = v9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = a1(v13);

    if (v4)
    {
      break;
    }

    v6 += 4;
  }

  while ((v11 & 1) != 0);
  return v7 == 0;
}

unint64_t sub_1C4A6D598(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0B86A8, &qword_1C4F16C10);
    v2 = sub_1C4F02558();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v21 = v1;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      sub_1C457E7A8(*(v1 + 48) + 40 * v11, __src);
      sub_1C442B870(*(v1 + 56) + 32 * v11, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C457E7A8(__dst, v24);
      if (!swift_dynamicCast())
      {
        sub_1C4A6F5B0(__dst);

        goto LABEL_23;
      }

      sub_1C442B870(&__dst[40], v24);
      sub_1C4A6F5B0(__dst);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_1C445FAA8(v22, v23);
      v12 = result;
      if (v13)
      {
        v14 = (v2[6] + 16 * result);
        *v14 = v22;
        v14[1] = v23;

        v15 = (v2[7] + 16 * v12);
        *v15 = v22;
        v15[1] = v23;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_26;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v16 = (v2[6] + 16 * result);
        *v16 = v22;
        v16[1] = v23;
        v17 = (v2[7] + 16 * result);
        *v17 = v22;
        v17[1] = v23;
        v18 = v2[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_27;
        }

        v2[2] = v20;
      }

      v9 = v10;
      v1 = v21;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_23:

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C4A6D84C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
    v2 = sub_1C4F02558();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1C457E7A8(*(a1 + 48) + 40 * v10, __src);
    sub_1C442B870(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C457E7A8(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1C442B870(&__dst[40], v20);
    sub_1C4A6F5B0(__dst);
    v21 = v18;
    sub_1C44482AC(v20, v22);
    v11 = v21;
    sub_1C44482AC(v22, v23);
    sub_1C44482AC(v23, &v21);
    result = sub_1C445FAA8(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      sub_1C440962C(v14);
      result = sub_1C44482AC(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1C44482AC(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1C4A6F5B0(__dst);

  return 0;
}

uint64_t InvalidOntology.invalidOntology.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InvalidOntology(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t InvalidOntologyTypes.invalidPredicates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t InvalidOntologyTypes.invalidNestedPredicates.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t InvalidOntologyTypes.invalidEntities.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t OntologyValidator.init(config:sources:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C448CF04(a1, a3, type metadata accessor for Configuration);
  sub_1C448CF04(a1, v9, type metadata accessor for Configuration);
  type metadata accessor for OntologyStore(0);
  swift_allocObject();
  v10 = OntologyStore.init(config:)(v9);
  sub_1C43FFFC0();
  sub_1C44541BC(a1, v11);
  if (v3)
  {

    sub_1C43FFFC0();
    return sub_1C44541BC(a3, v12);
  }

  else
  {
    result = type metadata accessor for OntologyValidator(0);
    *(a3 + *(result + 20)) = v10;
    *(a3 + *(result + 24)) = a2;
  }

  return result;
}

uint64_t OntologyValidator.checkValidation()()
{
  type metadata accessor for InvalidOntology(0);
  sub_1C43FCDF8();
  v77 = v2;
  v78 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v85 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Source(0);
  sub_1C43FCDF8();
  v87 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v76 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v76 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  v17 = 0;
  v18 = *(type metadata accessor for OntologyValidator(0) + 24);
  v86 = v0;
  v19 = *(v0 + v18);
  v88 = *(v19 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  *&v21 = 136315138;
  v80 = v21;
  v79 = v7;
  v90 = v10;
  v82 = v19;
  v83 = v13;
  while (v88 != v17)
  {
    if (v17 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v89 = v17;
    sub_1C441A134();
    sub_1C448CF04(v22, v16, v23);
    v24 = sub_1C4A2D3E8();
    if (!v24 || (v25 = sub_1C4A6D84C(v24), , !v25))
    {
      if (qword_1EDDFECA0 == -1)
      {
LABEL_23:
        v63 = sub_1C4F00978();
        sub_1C442B738(v63, qword_1EDE2DF58);
        sub_1C441A134();
        sub_1C448CF04(v16, v7, v64);
        v65 = sub_1C4F00968();
        v66 = sub_1C4F01CD8();
        if (os_log_type_enabled(v65, v66))
        {
          sub_1C43FECF0();
          v67 = swift_slowAlloc();
          sub_1C43FEC60();
          v68 = swift_slowAlloc();
          v91 = v68;
          *v67 = v80;
          v69 = *v7;
          v70 = v7[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44541BC(v7, type metadata accessor for Source);
          v71 = sub_1C441D828(v69, v70, &v91);

          *(v67 + 4) = v71;
          _os_log_impl(&dword_1C43F8000, v65, v66, "Mapping file could not be extracted for %s", v67, 0xCu);
          sub_1C440962C(v68);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          v72 = v16;
          v73 = type metadata accessor for Source;
        }

        else
        {

          sub_1C440AFFC();
          sub_1C44541BC(v7, v74);
          v72 = v16;
          v73 = v65;
        }

        sub_1C44541BC(v72, v73);
        return v20;
      }

LABEL_29:
      sub_1C4407704();
      swift_once();
      goto LABEL_23;
    }

    if (qword_1EDDFECA0 != -1)
    {
      sub_1C4407704();
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2DF58);
    sub_1C441A134();
    sub_1C448CF04(v16, v13, v27);
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();
    if (os_log_type_enabled(v28, v29))
    {
      sub_1C43FECF0();
      v30 = swift_slowAlloc();
      v81 = v20;
      v31 = v16;
      v32 = v30;
      sub_1C43FEC60();
      v33 = swift_slowAlloc();
      v91 = v33;
      *v32 = v80;
      v34 = v13;
      v35 = *v13;
      v36 = *(v34 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C442D084();
      sub_1C44541BC(v34, v37);
      v38 = sub_1C441D828(v35, v36, &v91);
      v7 = v79;

      *(v32 + 4) = v38;
      _os_log_impl(&dword_1C43F8000, v28, v29, "Validating Ontology for %s", v32, 0xCu);
      sub_1C440962C(v33);
      v10 = v90;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v16 = v31;
      v20 = v81;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C442D084();
      sub_1C44541BC(v13, v39);
    }

    v40 = sub_1C4EFD2F8();
    v91 = 0;
    v92 = 0uLL;
    sub_1C4A6E544(v40, v41, v25, &v91);

    v42 = v92;
    if (v92 == 0)
    {
      sub_1C441A134();
      sub_1C448CF04(v16, v10, v43);
      v44 = sub_1C4F00968();
      v45 = sub_1C4F01CF8();
      if (os_log_type_enabled(v44, v45))
      {
        sub_1C43FECF0();
        v46 = swift_slowAlloc();
        sub_1C43FEC60();
        v47 = swift_slowAlloc();
        v93 = v47;
        *v46 = v80;
        v48 = *v90;
        v49 = v90[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44541BC(v90, type metadata accessor for Source);
        v50 = sub_1C441D828(v48, v49, &v93);

        *(v46 + 4) = v50;
        v10 = v90;
        _os_log_impl(&dword_1C43F8000, v44, v45, "Ontology Valid for %s", v46, 0xCu);
        sub_1C440962C(v47);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();

        v51 = v16;
        v52 = type metadata accessor for Source;
        v7 = v79;
      }

      else
      {

        sub_1C440AFFC();
        sub_1C44541BC(v10, v60);
        v51 = v16;
        v52 = v44;
      }

      sub_1C44541BC(v51, v52);
      swift_bridgeObjectRelease_n();

      v13 = v83;
      v56 = v89;
    }

    else
    {
      sub_1C441A134();
      v53 = v85;
      sub_1C448CF04(v16, v85, v54);
      v55 = v53 + *(v78 + 20);
      *v55 = v91;
      *(v55 + 8) = v42;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458EC20(0, *(v20 + 16) + 1, 1, v20);
        v20 = v61;
      }

      v56 = v89;
      v58 = *(v20 + 16);
      v57 = *(v20 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1C458EC20(v57 > 1, v58 + 1, 1, v20);
        v20 = v62;
      }

      sub_1C442D084();
      sub_1C44541BC(v16, v59);

      *(v20 + 16) = v58 + 1;
      sub_1C4A6F2DC(v85, v20 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v58);
      v10 = v90;
      v13 = v83;
    }

    v17 = v56 + 1;
    v19 = v82;
  }

  return v20;
}

void sub_1C4A6E544(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v83 = a4;
  v4 = a3;
  v81 = a1;
  v82 = a2;
  v5 = a3 + 64;
  sub_1C43FEC90();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  *&v12 = 136315138;
  v86 = v12;
  v79 = v5;
  v80 = v4;
  v78 = v10;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (v8)
      {
        v13 = v11;
LABEL_8:
        v85 = (v8 - 1) & v8;
        v14 = __clz(__rbit64(v8)) | (v13 << 6);
        v15 = (*(v4 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_1C442B870(*(v4 + 56) + 32 * v14, &v96);
        *&v100 = v17;
        *(&v100 + 1) = v16;
        sub_1C44482AC(&v96, &v101);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_54;
          }

          if (v13 >= v10)
          {
            break;
          }

          v8 = *(v5 + 8 * v13);
          ++v11;
          if (v8)
          {
            v11 = v13;
            goto LABEL_8;
          }
        }

        v85 = 0;
        v101 = 0u;
        v102 = 0u;
        v100 = 0u;
      }

      v103 = v100;
      v104[0] = v101;
      v104[1] = v102;
      if (!*(&v100 + 1))
      {

        return;
      }

      v92 = *(&v103 + 1);
      v89 = v103;
      sub_1C44482AC(v104, v99);
      sub_1C442B870(v99, &v100);
      v88 = sub_1C456902C(&qword_1EC0BA8B8, &qword_1C4F147A0);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_1C4A6EB50(v96, v81, v82, v83);

      sub_1C440962C(v99);
      v8 = v85;
    }

    sub_1C442B870(v99, &v100);
    v90 = sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    if (swift_dynamicCast())
    {
      break;
    }

    sub_1C440962C(v99);

    v8 = v85;
  }

  v18 = 0;
  v19 = v96 + 64;
  v91 = v96;
  sub_1C43FEC90();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  if ((v21 & v20) == 0)
  {
    goto LABEL_15;
  }

  do
  {
    v25 = v18;
LABEL_19:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = v26 | (v25 << 6);
    v28 = (*(v91 + 48) + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    sub_1C442B870(*(v91 + 56) + 32 * v27, v95);
    *&v96 = v30;
    *(&v96 + 1) = v29;
    sub_1C44482AC(v95, &v97);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_20:
    v100 = v96;
    v101 = v97;
    v102 = v98;
    v31 = *(&v96 + 1);
    if (!*(&v96 + 1))
    {
      sub_1C440962C(v99);

      v5 = v79;
      v4 = v80;
      v10 = v78;
      v8 = v85;
      goto LABEL_2;
    }

    v32 = v100;
    sub_1C44482AC(&v101, &v96);
    if (v32 == 0x657473654E444D5FLL && v31 == 0xEF797469746E4564)
    {
    }

    else
    {
      v34 = sub_1C4F02938();

      if ((v34 & 1) == 0)
      {
        v35 = sub_1C442B870(&v96, v95);
        sub_1C4417614(v35, v36, v37, v38, v39, v40, v41, v42, v78, v79, v80, v81, v82, v83, v84, v85, v86, *(&v86 + 1), v87, v88, v89, v90, v91, v92, v93);
        if (!swift_dynamicCast())
        {
          goto LABEL_44;
        }

        sub_1C4A6EB50(v93, v81, v82, v83);
        goto LABEL_28;
      }
    }

    v43 = sub_1C442B870(&v96, v95);
    sub_1C4417614(v43, v44, v45, v46, v47, v48, v49, v50, v78, v79, v80, v81, v82, v83, v84, v85, v86, *(&v86 + 1), v87, v88, v89, v90, v91, v92, v93);
    if (swift_dynamicCast())
    {
      v51 = v93;
      if (*(v93 + 16))
      {
        v52 = sub_1C445FAA8(1701869940, 0xE400000000000000);
        if (v53)
        {
          v54 = sub_1C442B870(*(v93 + 56) + 32 * v52, v95);
          sub_1C4417614(v54, v55, v56, v57, v58, v59, v60, v61, v78, v79, v80, v81, v82, v83, v84, v85, v86, *(&v86 + 1), v87, v88, v89, v90, v91, v92, v93);
          if (swift_dynamicCast())
          {
            if (*(v51 + 16) && (v62 = v93, v63 = sub_1C445FAA8(0x79747265706F7270, 0xEB0000000070614DLL), (v64 & 1) != 0))
            {
              sub_1C442B870(*(v51 + 56) + 32 * v63, v95);

              sub_1C4417614(v65, v66, v67, v68, v69, v70, v71, v72, v78, v79, v80, v81, v82, v83, v84, v85, v86, *(&v86 + 1), v87, v88, v89, v90, v91, v92, v93);
              if (swift_dynamicCast())
              {
                sub_1C4A6E544(v62, v94, v93, v83);

LABEL_28:

                goto LABEL_44;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    if (qword_1EDDFECA0 != -1)
    {
      sub_1C4407704();
      swift_once();
    }

    v73 = sub_1C4F00978();
    sub_1C442B738(v73, qword_1EDE2DF58);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v74 = sub_1C4F00968();
    v75 = sub_1C4F01CF8();

    if (os_log_type_enabled(v74, v75))
    {
      sub_1C43FECF0();
      v76 = swift_slowAlloc();
      sub_1C43FEC60();
      v77 = swift_slowAlloc();
      *&v95[0] = v77;
      *v76 = v86;
      *(v76 + 4) = sub_1C441D828(v89, v92, v95);
      _os_log_impl(&dword_1C43F8000, v74, v75, "Nested Entity missing PropertyMap or type for %s", v76, 0xCu);
      sub_1C440962C(v77);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

LABEL_44:
    sub_1C440962C(&v96);
  }

  while (v22);
LABEL_15:
  while (1)
  {
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v25 >= v24)
    {
      v22 = 0;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      goto LABEL_20;
    }

    v22 = *(v19 + 8 * v25);
    ++v18;
    if (v22)
    {
      v18 = v25;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1C4A6EB50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51 = a3;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C441FFD4();
    sub_1C4412238();
    v9 = (v8 + 32);
    v49 = v11;
    v50 = v10;
    do
    {
      v12 = *v9;
      if (!*(*v9 + 16))
      {
        goto LABEL_8;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = sub_1C445FAA8(v5, v4);
      if ((v14 & 1) == 0)
      {

LABEL_8:
        if (qword_1EDDFECA0 != -1)
        {
          sub_1C4407704();
          swift_once();
        }

        v18 = sub_1C4F00978();
        sub_1C442B738(v18, qword_1EDE2DF58);
        v19 = sub_1C4F00968();
        v20 = sub_1C4F01CF8();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1C43F8000, v19, v20, "No target Property label found", v21, 2u);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        goto LABEL_34;
      }

      v15 = (*(v12 + 56) + 16 * v13);
      v16 = *v15;
      v5 = v15[1];
      v55 = *v15;
      v56 = v5;
      v53 = 47;
      v54 = 0xE100000000000000;
      sub_1C4415EA8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = sub_1C4F01FC8();
      if (*(v17 + 16) < 2uLL)
      {

        type metadata accessor for OntologyValidator(0);
        v22 = sub_1C4A5512C(v50, v51);
        if (v22 >> 62)
        {
          v23 = sub_1C4F02128();
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v23)
        {
          v4 = v50;
          v24 = v51;
          v25 = *(sub_1C4A56CF4(v16, v5, v50, v51) + 16);

          if (v25)
          {
          }

          else
          {

            v32 = sub_1C4A51F74(v4, v24);

            MEMORY[0x1EEE9AC00](v33);
            v4 = v47;
            v46[2] = v48;
            v46[3] = v16;
            v46[4] = v5;
            v34 = sub_1C4A6D4DC(sub_1C4A6F618, v46, v32);
            v47 = v4;

            if (v34)
            {
              a4 = v49;
              sub_1C441FFD4();
              sub_1C4412238();
              if (!v35)
              {
                *a4 = MEMORY[0x1E69E7CD0];
              }

              v55 = 40;
              v56 = 0xE100000000000000;
              MEMORY[0x1C6940010](v50, v51);
              MEMORY[0x1C6940010](2108448, 0xE300000000000000);
              v36 = sub_1C44735D4(v5, v4, v12);
              v38 = v37;

              if (v38)
              {
                v39 = v36;
              }

              else
              {
                v39 = 0;
              }

              if (v38)
              {
                v40 = v38;
              }

              else
              {
                v40 = 0xE000000000000000;
              }

              MEMORY[0x1C6940010](v39, v40);

              MEMORY[0x1C6940010](41, 0xE100000000000000);
              sub_1C44869B4(&v55, v55, v56, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, vars0, vars8);

              goto LABEL_34;
            }
          }

          a4 = v49;
          sub_1C441FFD4();
        }

        else
        {

          a4 = v49;
          if (!v49[2])
          {
            v49[2] = MEMORY[0x1E69E7CD0];
          }

          v26 = v51;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44869B4(&v55, v50, v26, v27, v28, v29, v30, v31, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, vars0, vars8);
        }
      }

      else
      {

        sub_1C4A6EF9C(v17, v50, v51, a4, v16, v5);
        sub_1C441FFD4();
      }

      sub_1C4412238();
LABEL_34:
      ++v9;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1C4A6F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for OntologyValidator(0);
  v10 = *(sub_1C4A56CF4(a3, a4, a1, a2) + 16);

  if (v10)
  {
    v11 = 1;
  }

  else
  {

    v12 = sub_1C4A51F74(a1, a2);

    MEMORY[0x1EEE9AC00](v13);
    v16[2] = v5;
    v16[3] = a3;
    v16[4] = a4;
    v14 = sub_1C4A6D4DC(sub_1C4A6F63C, v16, v12);

    v11 = !v14;
  }

  return v11 & 1;
}

uint64_t sub_1C4A6F2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvalidOntology(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A6F368(uint64_t a1)
{
  result = type metadata accessor for Source(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4A6F3DC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C4A6F430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1C4A6F4BC(uint64_t a1)
{
  type metadata accessor for Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for OntologyStore(319);
    if (v2 <= 0x3F)
    {
      sub_1C4A6F558(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4A6F558(uint64_t a1)
{
  if (!qword_1EC0C2298)
  {
    type metadata accessor for Source(255);
    v1 = sub_1C4F017A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0C2298);
    }
  }
}

uint64_t sub_1C4A6F5B0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C22A0, &unk_1C4F49E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Optional.nilIf(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v16, v13);
  if (sub_1C44157D4(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a2);
  }

  else
  {
    v17 = *(v11 + 32);
    v17(v15, v8, v10);
    if ((a1(v15) & 1) == 0)
    {
      v17(a3, v15, v10);
      v18 = 0;
      return sub_1C440BAA8(a3, v18, 1, v10);
    }

    (*(v11 + 8))(v15, v10);
  }

  v18 = 1;
  return sub_1C440BAA8(a3, v18, 1, v10);
}

uint64_t sub_1C4A6F854@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1C4A6F8AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = (a1 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *v8 & v6;
      v8 += 2;
      v12 = (v9 & ~v7) == 0 && v11 == v10;
      v13 = v9 | v7;
      v14 = v10 | v6;
      if (!v12)
      {
        v4 = v13;
        v5 = v14;
        v6 = v14;
        v7 = v13;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C4A6F93C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_1C4A6F990(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v5 = a2 & ~*v3 | a3 & ~v4;
  if (v5)
  {
    *v3 |= a2;
    v3[1] = v4 | a3;
  }

  *a1 = a2;
  a1[1] = a3;
  return v5 != 0;
}

uint64_t sub_1C4A6F9C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[1];
  v5 = *v3 & result;
  v6 = v4 & a2;
  v7 = v5 | v4 & a2;
  if (v7)
  {
    *v3 &= ~result;
    v3[1] = v4 & ~a2;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 == 0;
  return result;
}

uint64_t sub_1C4A6FA00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[1];
  v5 = *v3 & result;
  *v3 |= result;
  v3[1] = v4 | a2;
  *a3 = v5;
  *(a3 + 8) = v4 & a2;
  *(a3 + 16) = (v5 | v4 & a2) == 0;
  return result;
}

uint64_t Options.OptionsValue.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1C69417F0](*v0);
  return MEMORY[0x1C69417F0](v1);
}

uint64_t Options.OptionsValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  MEMORY[0x1C69417F0](v2);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A6FAFC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  MEMORY[0x1C69417F0](v2);
  return sub_1C4F02B68();
}

__n128 Options.rawValue.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

IntelligencePlatformCore::Options __swiftcall Options.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

IntelligencePlatformCore::Options __swiftcall Options.init(options:featureFlags:)(Swift::Int options, Swift::Int featureFlags)
{
  *v2 = options;
  v2[1] = featureFlags;
  result.rawValue.featureFlags = featureFlags;
  result.rawValue.options = options;
  return result;
}

double sub_1C4A6FBD8()
{
  *&result = 1;
  xmmword_1EDDFEC90 = xmmword_1C4F14630;
  return result;
}

double sub_1C4A6FC14()
{
  *&result = 2;
  xmmword_1EDDFEC78 = xmmword_1C4F49E20;
  return result;
}

double sub_1C4A6FC50()
{
  *&result = 4;
  xmmword_1EDDFEC30 = xmmword_1C4F49E30;
  return result;
}

double sub_1C4A6FC8C()
{
  *&result = 8;
  xmmword_1EDDFFAE0 = xmmword_1C4F49E40;
  return result;
}

double sub_1C4A6FCC8()
{
  *&result = 16;
  xmmword_1EDDFFA80 = xmmword_1C4F49E50;
  return result;
}

double sub_1C4A6FD04()
{
  *&result = 32;
  xmmword_1EDDFEBA8 = xmmword_1C4F49E60;
  return result;
}

double sub_1C4A6FD40()
{
  *&result = 64;
  xmmword_1EDDFD000 = xmmword_1C4F49E70;
  return result;
}

double sub_1C4A6FD7C()
{
  *&result = 128;
  xmmword_1EDDFFA48 = xmmword_1C4F49E80;
  return result;
}

double sub_1C4A6FDB8()
{
  *&result = 256;
  xmmword_1EDDFEBC0 = xmmword_1C4F49E90;
  return result;
}

double sub_1C4A6FDF4()
{
  *&result = 512;
  xmmword_1EDDFA618 = xmmword_1C4F49EA0;
  return result;
}

double sub_1C4A6FE30()
{
  *&result = 1024;
  xmmword_1EDDF0C90 = xmmword_1C4F49EB0;
  return result;
}

double sub_1C4A6FE6C()
{
  *&result = 2048;
  xmmword_1EDDFEC18 = xmmword_1C4F49EC0;
  return result;
}

double sub_1C4A6FEA8()
{
  *&result = 4096;
  xmmword_1EDDFEC50 = xmmword_1C4F49ED0;
  return result;
}

double sub_1C4A6FEE4()
{
  result = 0.0;
  xmmword_1EDDDBFD8[0] = xmmword_1C4F0D7C0;
  return result;
}

double sub_1C4A6FF20()
{
  result = 0.0;
  xmmword_1EDDFA650 = xmmword_1C4F49EE0;
  return result;
}

double sub_1C4A6FF5C()
{
  result = 0.0;
  xmmword_1EDDFFA18 = xmmword_1C4F49EF0;
  return result;
}

double sub_1C4A6FF98()
{
  result = 0.0;
  xmmword_1EDDFFAD0 = xmmword_1C4F49F00;
  return result;
}

double sub_1C4A6FFD4()
{
  result = 0.0;
  xmmword_1EDDFFA98 = xmmword_1C4F49F10;
  return result;
}

double sub_1C4A70010()
{
  result = 0.0;
  xmmword_1EDDF0C60 = xmmword_1C4F49F20;
  return result;
}

double sub_1C4A7004C()
{
  result = 0.0;
  xmmword_1EC0C22A8 = xmmword_1C4F49F30;
  return result;
}

double sub_1C4A70088()
{
  result = 0.0;
  xmmword_1EDDFFA30 = xmmword_1C4F49F40;
  return result;
}

double sub_1C4A700C4()
{
  result = 0.0;
  xmmword_1EDDDBF68 = xmmword_1C4F49F50;
  return result;
}

double sub_1C4A70100()
{
  result = 0.0;
  xmmword_1EC0C22B8 = xmmword_1C4F49F60;
  return result;
}

double sub_1C4A7013C()
{
  result = 0.0;
  xmmword_1EDDF0C78 = xmmword_1C4F49F70;
  return result;
}

double sub_1C4A70178()
{
  result = 0.0;
  xmmword_1EDDDBF00 = xmmword_1C4F49F80;
  return result;
}

double sub_1C4A701B4()
{
  result = 0.0;
  xmmword_1EDDFEBD0 = xmmword_1C4F49F90;
  return result;
}

double sub_1C4A701F0()
{
  result = 0.0;
  xmmword_1EDDFA630 = xmmword_1C4F49FA0;
  return result;
}

double sub_1C4A7022C()
{
  result = 0.0;
  xmmword_1EDDFFA68 = xmmword_1C4F49FB0;
  return result;
}

double sub_1C4A70268()
{
  result = 0.0;
  xmmword_1EDDDBF50 = xmmword_1C4F49FC0;
  return result;
}

double sub_1C4A702A4()
{
  result = 0.0;
  xmmword_1EDDDBF88 = xmmword_1C4F49FD0;
  return result;
}

double sub_1C4A702E0()
{
  result = 0.0;
  xmmword_1EDDDBF30 = xmmword_1C4F49FE0;
  return result;
}

double sub_1C4A7031C()
{
  result = 0.0;
  xmmword_1EC0C22C8 = xmmword_1C4F49FF0;
  return result;
}

double sub_1C4A70358()
{
  result = 0.0;
  xmmword_1EDDFEBF8 = xmmword_1C4F4A000;
  return result;
}

double sub_1C4A70394()
{
  result = 0.0;
  xmmword_1EC0C22D8 = xmmword_1C4F4A010;
  return result;
}

double sub_1C4A703D0()
{
  result = 0.0;
  xmmword_1EDDDBFA0 = xmmword_1C4F4A020;
  return result;
}

double sub_1C4A7040C()
{
  result = 0.0;
  xmmword_1EDDDBF18 = xmmword_1C4F4A030;
  return result;
}

double sub_1C4A70448()
{
  result = 0.0;
  xmmword_1EDDDBFC0 = xmmword_1C4F4A040;
  return result;
}

double sub_1C4A70484()
{
  result = 0.0;
  xmmword_1EDDFEB88 = xmmword_1C4F4A050;
  return result;
}

double sub_1C4A704C0()
{
  result = 0.0;
  xmmword_1EC0C22E8 = xmmword_1C4F4A060;
  return result;
}

double sub_1C4A704FC()
{
  result = 0.0;
  xmmword_1EDDDBEE8 = xmmword_1C4F4A070;
  return result;
}

double sub_1C4A70538()
{
  result = 0.0;
  xmmword_1EDDFEB70 = xmmword_1C4F4A080;
  return result;
}

double sub_1C4A70574()
{
  result = 0.0;
  xmmword_1EDDFEBE8 = xmmword_1C4F4A090;
  return result;
}

__n128 sub_1C4A705B0@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

double sub_1C4A70728@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v4 = &v7;
  Options.init(rawValue:)(*(&a2 - 1));
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = 0;
  return result;
}

uint64_t Options.description.getter()
{
  sub_1C4F02248();

  v0 = sub_1C4F02858();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](3827232, 0xE300000000000000);
  v1 = sub_1C4F02858();
  MEMORY[0x1C6940010](v1);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0x736E6F6974704F3CLL;
}

unint64_t sub_1C4A70894()
{
  result = qword_1EC0C22F8;
  if (!qword_1EC0C22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C22F8);
  }

  return result;
}

unint64_t sub_1C4A708EC()
{
  result = qword_1EC0C2300;
  if (!qword_1EC0C2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2300);
  }

  return result;
}

unint64_t sub_1C4A70944()
{
  result = qword_1EC0C2308;
  if (!qword_1EC0C2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2308);
  }

  return result;
}

unint64_t sub_1C4A70998()
{
  result = qword_1EDDF0C50;
  if (!qword_1EDDF0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0C50);
  }

  return result;
}

unint64_t sub_1C4A709F0()
{
  result = qword_1EDDF0C48;
  if (!qword_1EDDF0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0C48);
  }

  return result;
}

uint64_t Array<A>.orderedMerge(comparison:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = a1;
  a4[2] = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

{
  *a4 = a3;
  a4[1] = a1;
  a4[2] = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t OrderedMergeAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return sub_1C4A70B58(v4, v5, v6, v7, a2);
}

uint64_t sub_1C4A70B58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = type metadata accessor for OrderedMergeAsyncSequence.Iterator(0, a3, a4, a3);
  v10 = a5 + *(v9 + 48);
  *v10 = 0;
  v10[8] = 1;
  v11 = sub_1C4F017A8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C69401E0](&v32, v11, WitnessTable);

  v31 = v32;
  v28 = a3;
  v29 = a4;
  v23 = a3;
  v24 = a4;
  v25 = sub_1C4A727FC;
  v26 = &v27;
  v13 = sub_1C4F024F8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C4403574();
  v30 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v17 = sub_1C4D4F664(sub_1C4A72804, v22, v13, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);

  a5[1] = a2;
  a5[2] = v17;
  *a5 = a1;
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  v18[5] = a2;
  type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot(0, a3, a4, v19);

  result = sub_1C4F000D8();
  *(a5 + *(v9 + 44)) = 1;
  return result;
}

uint64_t sub_1C4A70D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  sub_1C440F228();
  result = type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot(v9, v10, v11, v12);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1C4A70E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return sub_1C4F019A8();
}

uint64_t sub_1C4A70EEC(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v6, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t OrderedMergeAsyncSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *(a2 + 16);
  v3[7] = *(a2 + 24);
  sub_1C440F228();
  v8 = type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot(v4, v5, v6, v7);
  v3[8] = v8;
  v9 = sub_1C4F01F48();
  v3[9] = v9;
  v3[10] = *(v9 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = *(v8 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[15] = AssociatedTypeWitness;
  v11 = sub_1C4F01F48();
  v3[16] = v11;
  v3[17] = *(v11 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = *(AssociatedTypeWitness - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A711BC, 0, 0);
}

uint64_t sub_1C4A711BC()
{
  *(v0 + 16) = *(*(v0 + 40) + 16);
  *(v0 + 192) = swift_getAssociatedTypeWitness();
  *(v0 + 200) = sub_1C4F017A8();
  sub_1C4403574();
  swift_getWitnessTable();
  if (sub_1C4F01BD8())
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 24);
    v3 = 1;
    goto LABEL_3;
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v6 + 44);
  *(v0 + 248) = v8;
  if (*(v7 + v8) != 1)
  {
    v16 = v7 + *(v6 + 48);
    *(v0 + 232) = *v16;
    if (*(v16 + 8))
    {
      sub_1C4F000F8();
      sub_1C4425EA8();
      sub_1C4400334();
      if (v17)
      {
        v18 = sub_1C441FFF4();
        v19(v18);
        v2 = sub_1C44033D8();
      }

      else
      {
        v25 = sub_1C4407720();
        v26(v25);
        v27 = sub_1C441A14C();
        v28(v27);
        v2 = sub_1C44110DC();
      }

      v1 = v7;
LABEL_3:
      sub_1C440BAA8(v2, v3, 1, v1);

      sub_1C43FC1B0();
      sub_1C442642C();

      __asm { BRAA            X1, X16 }
    }

    sub_1C4F01708();
    sub_1C440F228();
    sub_1C4A721C4(v20, v21, v22);
    _swift_isClassOrObjCExistentialType();
    sub_1C44135B8();
    swift_getAssociatedConformanceWitness();
    v23 = swift_task_alloc();
    *(v0 + 240) = v23;
    *v23 = v0;
    v23[1] = sub_1C4A71928;
    goto LABEL_15;
  }

  v9 = sub_1C4F01758();
  *(v0 + 208) = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v9 - 1 < 0)
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v9);
  }

  *(v0 + 216) = 0;
  sub_1C4F01708();
  sub_1C440F228();
  sub_1C4A721C4(v10, v11, v12);
  _swift_isClassOrObjCExistentialType();
  swift_getAssociatedConformanceWitness();
  v13 = swift_task_alloc();
  v14 = sub_1C4408E58(v13);
  *v14 = v15;
  sub_1C442D0AC(v14);
LABEL_15:
  sub_1C442642C();

  return MEMORY[0x1EEE6D8C8](v9);
}

uint64_t sub_1C4A71590()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_1C4A71BC0;
  }

  else
  {
    v4 = sub_1C4A71698;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C4A71698()
{
  v5 = *(v0 + 152);
  v6 = *(v0 + 120);
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    v7 = (*(*(v0 + 136) + 8))(v5, *(v0 + 128));
  }

  else
  {
    v8 = *(v0 + 184);
    v9 = sub_1C43FDC28();
    v10(v9);
    v11 = sub_1C43FF49C();
    v13 = v12(v11);
    sub_1C4405F84(v13, v14, v15, v16, v17, v18, v19, v20, v39, v40, v41, v42);
    v21 = sub_1C442BDDC();
    sub_1C441CC68(v21);
    (*(v4 + 8))(v2, v3);
    v7 = (*(v1 + 8))(v8, v6);
  }

  v22 = *(v0 + 216);
  if (v22 == *(v0 + 208))
  {
    *(*(v0 + 40) + *(v0 + 248)) = 0;
    sub_1C440B014();
    sub_1C4425EA8();
    sub_1C4400334();
    if (v23)
    {
      v24 = sub_1C441FFF4();
      v25(v24);
      v34 = sub_1C44033D8();
    }

    else
    {
      v30 = sub_1C4407720();
      v31(v30);
      v32 = sub_1C441A14C();
      v33(v32);
      v34 = sub_1C44110DC();
    }

    sub_1C4400A2C(v34, v35);

    sub_1C43FC1B0();
    sub_1C440405C();

    __asm { BRAA            X1, X16 }
  }

  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C440D6A8();
    sub_1C442E474();
    _swift_isClassOrObjCExistentialType();
    sub_1C44135B8();
    swift_getAssociatedConformanceWitness();
    v26 = swift_task_alloc();
    v27 = sub_1C4408E58(v26);
    *v27 = v28;
    sub_1C442D0AC(v27);
    sub_1C440405C();
  }

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1C4A71928()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_1C4A71DD8;
  }

  else
  {
    v4 = sub_1C4A71A30;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1C4A71A30()
{
  v5 = v0[18];
  v6 = v0[15];
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v5, v0[16]);
  }

  else
  {
    v7 = v0[21];
    v8 = sub_1C43FDC28();
    v9(v8);
    v10 = sub_1C43FF49C();
    v12 = v11(v10);
    sub_1C4405F84(v12, v13, v14, v15, v16, v17, v18, v19, v32, v33, v34, v35);
    v20 = sub_1C442BDDC();
    sub_1C441CC68(v20);
    (*(v4 + 8))(v2, v3);
    (*(v1 + 8))(v7, v6);
  }

  sub_1C440B014();
  sub_1C4425EA8();
  sub_1C4400334();
  if (v21)
  {
    v22 = sub_1C441FFF4();
    v23(v22);
    v28 = sub_1C44033D8();
  }

  else
  {
    v24 = sub_1C4407720();
    v25(v24);
    v26 = sub_1C441A14C();
    v27(v26);
    v28 = sub_1C44110DC();
  }

  sub_1C4400A2C(v28, v29);

  sub_1C43FC1B0();
  sub_1C440405C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4A71BC0()
{
  sub_1C440BAA8(*(v0 + 152), 1, 1, *(v0 + 120));
  v1 = (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
  v2 = *(v0 + 216);
  if (v2 == *(v0 + 208))
  {
    *(*(v0 + 40) + *(v0 + 248)) = 0;
    sub_1C440B014();
    sub_1C4425EA8();
    sub_1C4400334();
    if (v3)
    {
      v4 = sub_1C441FFF4();
      v5(v4);
      v14 = sub_1C44033D8();
    }

    else
    {
      v10 = sub_1C4407720();
      v11(v10);
      v12 = sub_1C441A14C();
      v13(v12);
      v14 = sub_1C44110DC();
    }

    sub_1C4400A2C(v14, v15);

    sub_1C43FC1B0();
    sub_1C442642C();

    __asm { BRAA            X1, X16 }
  }

  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C440D6A8();
    sub_1C442E474();
    _swift_isClassOrObjCExistentialType();
    sub_1C44135B8();
    swift_getAssociatedConformanceWitness();
    v6 = swift_task_alloc();
    v7 = sub_1C4408E58(v6);
    *v7 = v8;
    sub_1C442D0AC(v7);
    sub_1C442642C();
  }

  return MEMORY[0x1EEE6D8C8](v1);
}

void sub_1C4A71DD8()
{
  sub_1C440BAA8(v0[18], 1, 1, v0[15]);
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_1C440B014();
  sub_1C4425EA8();
  sub_1C4400334();
  if (v1)
  {
    v2 = sub_1C441FFF4();
    v3(v2);
    v8 = sub_1C44033D8();
  }

  else
  {
    v4 = sub_1C4407720();
    v5(v4);
    v6 = sub_1C441A14C();
    v7(v6);
    v8 = sub_1C44110DC();
  }

  sub_1C4400A2C(v8, v9);

  sub_1C43FC1B0();
  sub_1C442642C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4A71F08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C49CC610;

  return OrderedMergeAsyncSequence.Iterator.next()(a1, a2);
}

uint64_t sub_1C4A71FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1C4A72084;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C4A72084()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1C4A72184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  OrderedMergeAsyncSequence.makeAsyncIterator()(a1, a2);
}

uint64_t sub_1C4A721C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1C4A72234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C4A72288(uint64_t a1)
{
  sub_1C4A723C8();
  if (v2 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    sub_1C4F017A8();
    if (v6 <= 0x3F)
    {
      type metadata accessor for OrderedMergeAsyncSequence.Iterator.Slot(255, v4, v3, v5);
      sub_1C4F000F8();
      if (v7 <= 0x3F)
      {
        sub_1C4A72410();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C4A723C8()
{
  result = qword_1EDDF0330;
  if (!qword_1EDDF0330)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDDF0330);
  }

  return result;
}

void sub_1C4A72410()
{
  if (!qword_1EDDFEA40)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFEA40);
    }
  }
}

uint64_t sub_1C4A72460(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4A724E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v6 < a2)
  {
    v7 = ((*(*(result - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v8 = v7 & 0xFFFFFFF8;
    if ((v7 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = a2 - v6 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(a1 + v7);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(a1 + v7);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(a1 + v7);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *a1;
        }

        return v6 + (v8 | v13) + 1;
      default:
LABEL_22:
        if (v6)
        {
          break;
        }

        return 0;
    }
  }

  return sub_1C44157D4(a1, v6, result);
}

void sub_1C4A72640(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  v9 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v12 = 0;
  }

  else
  {
    if (((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = a3 - v8 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v12)
    {
      case 1:
        *(a1 + v9) = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *(a1 + v9) = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *(a1 + v9) = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C440BAA8(a1, a2, v8, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    if (((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v8;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v8 + a2;
      bzero(a1, v9);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        *(a1 + v9) = v13;
        break;
      case 2:
        *(a1 + v9) = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *(a1 + v9) = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4A72854(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1C4F01728();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1C4F0D7C0)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C4A728F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = sub_1C4F01728();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        --v7;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v6;
  }

  return result;
}

uint64_t sub_1C4A72990(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_1C456902C(&qword_1EC0B8790, &qword_1C4F0DB80);
      v4 = sub_1C4F01728();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1C4A75630(v3, v5);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1C4A756A0(v3);
    return v4;
  }

  return result;
}

uint64_t sub_1C4A72A24(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    v4 = sub_1C4F01728();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3 & 1, a2);
    return v4;
  }

  return result;
}

void OrderedMergePublisher.receive<A>(subscriber:)()
{
  sub_1C43FBD3C();
  v2 = v1;
  v56 = v3;
  v57 = v1;
  v5 = v4;
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v58 = sub_1C4405FA4();
  v55 = sub_1C4405FA4();
  v63 = v7;
  v64 = v58;
  v65 = v55;
  v66 = v5;
  WitnessTable = v8;
  v68 = v2;
  v54 = type metadata accessor for OrderedMergePublisher.OrderedMerged.Side(0, &v63);
  sub_1C43FCDF8();
  v50 = v9;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v53 = (&v48 - v11);
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = sub_1C4F01F48();
  sub_1C43FCDF8();
  v51 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v59 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v48 - v20);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v0;
  v48 = v0[1];
  v27 = v0[2];
  v63 = v7;
  v64 = v58;
  v65 = v55;
  v66 = v5;
  v55 = v8;
  WitnessTable = v8;
  v68 = v57;
  v28 = type metadata accessor for OrderedMergePublisher.OrderedMerged(0, &v63);
  (*(v22 + 16))(v25, v56, v5);

  sub_1C4F01758();
  v29 = sub_1C4411720();
  v31 = sub_1C4A73004(v29, v30, v48, v27);
  v66 = v28;
  WitnessTable = swift_getWitnessTable();
  v63 = v31;
  v58 = v31;

  sub_1C4F00B18();
  sub_1C440962C(&v63);
  v63 = v26;
  v56 = v7;
  v32 = sub_1C4F017A8();
  sub_1C441F840();
  v33 = swift_getWitnessTable();
  MEMORY[0x1C69401E0](&v62, v32, v33);
  v61 = v62;
  sub_1C4F024F8();
  sub_1C4F024C8();
  v57 = sub_1C4F024E8();
  v34 = (v51 + 4);
  v51 = (v49 + 32);
  v35 = (v50 + 8);
  for (i = (v49 + 8); ; (*i)(v39, v40))
  {
    v37 = v59;
    sub_1C4F024D8();
    (*v34)(v21, v37, v60);
    if (sub_1C44157D4(v21, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v38 = *v21;
    v39 = v52;
    v40 = v56;
    (*v51)(v52, v21 + *(TupleTypeMetadata2 + 48), v56);
    v41 = v21;
    v42 = v58;

    v43 = TupleTypeMetadata2;
    v44 = v53;
    v45 = v42;
    v21 = v41;
    sub_1C4A7306C(v38, v45, v53);
    v46 = v54;
    swift_getWitnessTable();
    sub_1C4F00D18();
    v47 = v44;
    TupleTypeMetadata2 = v43;
    (*v35)(v47, v46);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4A73004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_allocObject();
  sub_1C4A73100();
  return v4;
}

uint64_t sub_1C4A7306C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = a2;
  v4 = v3[6];
  v6[0] = v3[5];
  v6[1] = v4;
  v6[2] = v3[7];
  type metadata accessor for OrderedMergePublisher.OrderedMerged.Side(0, v6);
  return sub_1C4F00A88();
}

void sub_1C4A73100()
{
  sub_1C43FBD3C();
  v37 = v1;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *(*v0 + 88);
  sub_1C4F01F48();
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  *(v0 + *(v7 + 144)) = 0;
  sub_1C43FC20C();
  *(v0 + *(v10 + 152)) = 0;
  sub_1C43FC20C();
  *(v0 + *(v11 + 176)) = 0;
  sub_1C43FC20C();
  v13 = *(v12 + 200);
  *(v0 + v13) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  sub_1C43FC20C();
  v15 = *(v14 + 208);
  *(v0 + v15) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  sub_1C43FC20C();
  *(v0 + *(v16 + 216)) = 0;
  sub_1C43FC20C();
  v18 = *(v17 + 224);
  *(v0 + v18) = sub_1C4F00B78();
  sub_1C43FC20C();
  sub_1C43FCF64();
  sub_1C440BAA8(v19, v20, v21, v8);
  sub_1C43FC20C();
  v23 = *(v7 + 104);
  v24 = *(v23 - 8);
  (*(v24 + 16))(v0 + *(v22 + 128), v6, v23);
  sub_1C43FC20C();
  *(v0 + *(v25 + 160)) = v4;
  sub_1C43FCF64();
  sub_1C440BAA8(v26, v27, v28, v8);
  sub_1C4F01798();
  sub_1C43FC20C();
  *(v0 + *(v29 + 192)) = v30;
  sub_1C43FD428();
  sub_1C4A72990(&v39, v4);
  sub_1C43FC20C();
  *(v0 + *(v31 + 184)) = v32;
  v33 = sub_1C4A72A24(0, v4);
  (*(v24 + 8))(v6, v23);
  sub_1C43FC20C();
  *(v0 + *(v34 + 168)) = v33;
  sub_1C43FC20C();
  v36 = (v0 + *(v35 + 136));
  *v36 = v37;
  v36[1] = v38;
  sub_1C43FE9F0();
}

id sub_1C4A733AC()
{
  sub_1C43FC20C();
  [*(v0 + *(v1 + 200)) lock];
  sub_1C43FC20C();
  v3 = *(v2 + 152);
  if ((*(v0 + v3) & 1) == 0)
  {
    *(v0 + v3) = 1;
  }

  return sub_1C4A750B8(v0);
}

void sub_1C4A73430(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = sub_1C4F01F48();
  sub_1C43FCDF8();
  v10 = v9;
  sub_1C43FBC68();
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v22[-v13 - 8];
  [*(v3 + *(v6 + 200)) lock];
  sub_1C4400A6C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = *(v3 + *(v15 + 168));
  if (*(v16 + 16) <= a2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if ((*(v16 + a2 + 32) & 1) == 0)
  {
    (*(*(v7 - 8) + 16))(v14, a1, v7);
    sub_1C440BAA8(v14, 0, 1, v7);
    sub_1C4400A6C();
    v18 = *(v17 + 192);
    sub_1C4403138(v3 + v18, v22);
    sub_1C4F017A8();
    sub_1C4F01708();
    v19 = *(v3 + v18);
    sub_1C4A721C4(a2, v19, v8);
    (*(v10 + 40))(v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2, v14, v8);
    nullsub_1();
    swift_endAccess();
    do
    {
      sub_1C4A73CD8();
    }

    while ((v20 & 1) != 0);
  }

  sub_1C4F00B78();
  sub_1C4A750B8(v3);
}

void sub_1C4A73670()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v32 = *v0;
  v5 = *(v32 + 96);
  v6 = *(v32 + 104);
  v31 = *(v32 + 120);
  swift_getAssociatedConformanceWitness();
  v7 = sub_1C4F00B58();
  sub_1C43FCDF8();
  v9 = v8;
  sub_1C43FBC68();
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v30 - v12;
  [*(v0 + *(v32 + 200)) lock];
  sub_1C43FC20C();
  v15 = *(v14 + 168);
  v16 = *(v0 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + v15) = v16;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1C4834834();
  v16 = v28;
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (*(v16 + 16) > v2)
  {
    *(v16 + v2 + 32) = 1;
    *(v0 + v15) = v16;
    sub_1C43FD428();
    sub_1C43FC20C();
    v15 = *(v18 + 184);
    sub_1C4403138(v0 + v15, &v33);
    v19 = *(v0 + v15);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + v15) = v19;
    if (v20)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  sub_1C483481C();
  v19 = v29;
  *(v0 + v15) = v29;
LABEL_5:
  if (*(v19 + 16) <= v2)
  {
    __break(1u);
  }

  else
  {
    sub_1C4A75708(&v34, v19 + 40 * v2 + 32);
    *(v0 + v15) = v19;
    swift_endAccess();
    (*(v9 + 16))(v13, v4, v7);
    if (sub_1C44157D4(v13, 1, v5) == 1)
    {
      do
      {
        sub_1C4A73CD8();
      }

      while ((v21 & 1) != 0);
    }

    else
    {
      sub_1C43FC20C();
      v24 = *(v23 + 152);
      if ((*(v0 + v24) & 1) == 0)
      {
        *(v0 + v24) = 1;
        MEMORY[0x1EEE9AC00](v22);
        v25 = v32;
        *(&v30 - 4) = *(v32 + 80);
        *(&v30 - 6) = v5;
        *(&v30 - 5) = v6;
        v26 = *(v25 + 112);
        v27 = v31;
        *(&v30 - 4) = v26;
        *(&v30 - 3) = v27;
        *(&v30 - 2) = v4;
        sub_1C4A73BDC();
      }

      (*(v9 + 8))(v13, v7);
    }

    sub_1C4A750B8(v0);
    sub_1C43FE9F0();
  }
}

void sub_1C4A739A4(void *a1, unint64_t a2)
{
  v3 = v2;
  sub_1C4400A6C();
  [*(v3 + *(v6 + 200)) lock];
  if (*(v3 + *(*v3 + 152)))
  {
    goto LABEL_5;
  }

  v7 = *(*v3 + 184);
  sub_1C440D164(v3 + v7, v16);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v3 + v7);
  if (*(v8 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    sub_1C483481C();
    v10 = v12;
    *(v3 + v7) = v12;
    goto LABEL_8;
  }

  sub_1C4A75630(v8 + 40 * a2 + 32, v14);
  v9 = v15;
  sub_1C4A756A0(v14);
  if (v9)
  {
LABEL_5:
    sub_1C4409678(a1, a1[3]);
    sub_1C4F00B38();
LABEL_6:
    sub_1C4A750B8(v3);
    return;
  }

  sub_1C442E860(a1, v14);
  sub_1C4403138(v3 + v7, v13);
  v10 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v7) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (*(v10 + 16) > a2)
  {
    sub_1C4A75708(v14, v10 + 40 * a2 + 32);
    *(v3 + v7) = v10;
    swift_endAccess();
    sub_1C4409678(a1, a1[3]);
    sub_1C4F00B98();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C4A73B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_1C4F00A98();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1C4A73BDC()
{
  sub_1C43FBD3C();
  v2 = v1;
  sub_1C4400A6C();
  v4 = *(v0 + *(v3 + 200));
  [v4 lock];
  sub_1C4400A6C();
  v6 = *(v5 + 216);
  *(v0 + v6) = 1;
  [v4 unlock];
  sub_1C4400A6C();
  v8 = *(v0 + *(v7 + 208));
  [v8 lock];
  sub_1C4400A6C();
  v2(v0 + *(v9 + 128));
  [v8 unlock];
  [v4 lock];
  *(v0 + v6) = 0;
  sub_1C43FE9F0();

  return [v10 v11];
}

void sub_1C4A73CD8()
{
  sub_1C43FBD3C();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = sub_1C4F01F48();
  sub_1C43FCDF8();
  v138 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v130 - v16;
  v141 = v3;
  isa = v3[-1].isa;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v130 - v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF28();
  *&v27 = MEMORY[0x1EEE9AC00](v26).n128_u64[0];
  v149 = &v130 - v28;
  [*(v1[25] + v0) lock];
  sub_1C43FC20C();
  v30 = *(v29 + 144);
  sub_1C440D164(v0 + v30, &v156);
  v151 = v0;
  v31 = *(v0 + v30);
  v32 = sub_1C4F00B88();
  if ((sub_1C43FC724(v32) & 1) == 0)
  {
    if (v31 < 0)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (!v31)
    {
      goto LABEL_75;
    }
  }

  sub_1C440D6CC();
  v36 = *(v35 + *(v34 + 160));
  if (v36 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (!v36)
  {
    p_isa = &v141->isa;
    goto LABEL_68;
  }

  v132 = v9;
  v131 = v21;
  v134 = v12;
  v133 = v30;
  v135 = v24;
  v136 = v2;
  v148 = 0;
  v21 = 0;
  v150 = v33[24];
  v140 = (v151 + v33[17]);
  v145 = v33[21];
  v37 = isa + 4;
  v146 = isa + 1;
  v147 = v138 + 8;
  v38 = 1;
  p_isa = &v141->isa;
  v2 = v144;
  v40 = v4;
  do
  {
    v41 = v36;
    sub_1C44135D0();
    v4 = v150;
    sub_1C4433648(v150 + v1);
    sub_1C4F017C8();
    sub_1C4406BE8(v17);
    if (v76)
    {
      sub_1C4402C08();
      v42(v17, v40);
      swift_endAccess();
      sub_1C4410EB4();
      v44 = *(v145 + v43);
      if (v21 < *(v44 + 16))
      {
        if (*(v44 + v21 + 32) != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_77;
    }

    v45 = v37;
    v46 = v40;
    v47 = p_isa;
    v48 = *v45;
    v49 = v149;
    v1 = v45;
    (*v45)(v149, v17, v47);
    swift_endAccess();
    if (v38)
    {
      sub_1C442D0D4();
      v51 = v49;
LABEL_16:
      v50(v51, v47);
      v38 = 0;
      v148 = v21;
      p_isa = v47;
      v40 = v46;
      v37 = v1;
      goto LABEL_20;
    }

    sub_1C4433648(v150 + v151);
    v52 = v148;
    sub_1C4F017C8();
    if (sub_1C44157D4(v2, 1, v47) == 1)
    {
      sub_1C4402C08();
      v53(v2, v46);
      swift_endAccess();
      sub_1C442D0D4();
      v51 = v149;
      goto LABEL_16;
    }

    v54 = v142;
    v55 = v2;
    v56 = v1;
    v48(v142, v55, v47);
    swift_endAccess();
    v143 = (*v140)(v149, v54);
    v57 = v52;
    v1 = v146;
    v58 = *v146;
    (*v146)(v54, v47);
    (v58)(v149, v47);
    v38 = 0;
    if (v143)
    {
      v57 = v21;
    }

    v148 = v57;
    p_isa = v47;
    v40 = v46;
    v37 = v56;
    v2 = v144;
LABEL_20:
    ++v21;
    v36 = v41;
  }

  while (v41 != v21);
  if ((v38 & 1) == 0)
  {
    v59 = v37;
    sub_1C44135D0();
    v60 = v150;
    sub_1C4433648(v150 + v1);
    v61 = v137;
    v62 = v148;
    sub_1C4F017C8();
    sub_1C4406BE8(v61);
    if (!v76)
    {
      v64 = v135;
      v145 = *v59;
      v145(v135, v61, p_isa);
      swift_endAccess();
      v65 = v134;
      sub_1C43FCF64();
      sub_1C440BAA8(v66, v67, v68, p_isa);
      sub_1C44135D0();
      sub_1C44327E4(v60 + v1);
      sub_1C4F017A8();
      v4 = v40;
      sub_1C4F01708();
      v69 = *(v60 + v1);
      sub_1C4A721C4(v62, v69, v40);
      v70 = v138;
      v71 = v69 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v62;
      v72 = *(v138 + 40);
      v149 = (v138 + 40);
      v72(v71, v65, v4);
      nullsub_1();
      v73 = v141;
      swift_endAccess();
      sub_1C4400A6C();
      v2 = *(v74 + 232);
      sub_1C440D164(v2 + v1, &v155);
      v75 = v132;
      (*(v70 + 16))(v132, v2 + v1, v4);
      sub_1C4406BE8(v75);
      if (v76)
      {
        sub_1C4402C08();
        v78 = v77(v75, v4);
        v21 = v64;
      }

      else
      {
        v79 = v131;
        v145(v131, v75, v73);
        v80 = (*v140)(v64, v79);
        v21 = v64;
        if (v80)
        {
          v17 = v72;
          if (qword_1EDDFECB0 != -1)
          {
            goto LABEL_81;
          }

          while (1)
          {
            v81 = sub_1C4F00978();
            sub_1C442B738(v81, qword_1EDDFECB8);
            v73 = sub_1C4F00968();
            v82 = sub_1C4F01CD8();
            if (os_log_type_enabled(v73, v82))
            {
              v83 = swift_slowAlloc();
              *v83 = 0;
              _os_log_impl(&dword_1C43F8000, v73, v82, "OrderedMergePublisher detected out of order events in upstream publishers. Results may be unreliable.", v83, 2u);
              v84 = v83;
              v21 = v135;
              MEMORY[0x1C6942830](v84, -1, -1);
            }

            sub_1C442D0D4();
            v85 = sub_1C441CC88();
            v78 = v86(v85);
LABEL_38:
            MEMORY[0x1EEE9AC00](v78);
            v88 = v136;
            *(&v130 - 8) = v136[10];
            *(&v130 - 7) = v73;
            v89 = *(v88 + 7);
            *(&v130 - 3) = *(v88 + 6);
            *(&v130 - 2) = v89;
            *(&v130 - 2) = v21;
            v90 = v73;
            v91 = v151;
            sub_1C4A73BDC();
            v1 = v154[0];
            v92 = v134;
            isa[2](v134, v21, v90);
            sub_1C440BAA8(v92, 0, 1, v90);
            sub_1C44327E4(v2 + v91);
            (v17)(v2 + v91, v92, v4);
            swift_endAccess();
            sub_1C43FC20C();
            v94 = *(v93 + 224);
            swift_beginAccess();
            v21 = *(v91 + v94);
            sub_1C4F00B88();
            v17 = sub_1C4F00B68();
            v95 = sub_1C4F00B88();
            if (v17)
            {
              sub_1C4408E68();
            }

            else
            {
              sub_1C4F00B68();
              sub_1C4408E68();
              if (v96)
              {
                goto LABEL_44;
              }

              if (((v21 | v1) & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
LABEL_86:
                __break(1u);
LABEL_87:
                __break(1u);
                return;
              }

              v95 = v1 + v21;
              if (__OFADD__(v1, v21))
              {
LABEL_44:
                v95 = sub_1C4F00B88();
              }

              else if (v95 < 0)
              {
                goto LABEL_86;
              }
            }

            v97 = v133;
            sub_1C44135D0();
            sub_1C44327E4(v1 + v97);
            v98 = *(v1 + v97);
            v99 = sub_1C4F00B88();
            if ((sub_1C43FC724(v99) & 1) == 0)
            {
              v100 = sub_1C4F00B88();
              v21 = sub_1C43FC724(v100);
              sub_1C4F00B88();
              if (v21)
              {
                v97 = v133;
              }

              else
              {
                v101 = sub_1C4F00B68();
                v97 = v133;
                if (v101)
                {
                  goto LABEL_53;
                }

                if ((v98 | v95) < 0)
                {
                  goto LABEL_85;
                }

                if (__OFADD__(v98, v95))
                {
LABEL_53:
                  sub_1C4F00B88();
                }

                else if (v98 + v95 < 0)
                {
                  goto LABEL_87;
                }
              }

              sub_1C4410EB4();
              *(v103 + v97) = v102;
            }

            swift_endAccess();
            sub_1C4F00B78();
            sub_1C44135D0();
            *(v1 + v94) = v104;
            sub_1C44327E4(v1 + v97);
            v105 = *(v1 + v97);
            v106 = sub_1C4F00B88();
            if ((sub_1C43FC724(v106) & 1) == 0)
            {
              v107 = sub_1C4F00B88();
              if (sub_1C43FC724(v107))
              {
                sub_1C4F00B88();
              }

              else
              {
                if (v105 < 0)
                {
                  goto LABEL_83;
                }

                if (!v105)
                {
                  goto LABEL_84;
                }
              }

              sub_1C4410EB4();
              *(v109 + v97) = v108;
            }

            swift_endAccess();
            sub_1C4410EB4();
            p_isa = *(*v110 + 184);
            swift_beginAccess();
            if ((v17 & 0x8000000000000000) != 0)
            {
LABEL_79:
              __break(1u);
            }

            else
            {
              sub_1C4410EB4();
              v112 = *(p_isa + v111);
              if (v17 < *(v112 + 16))
              {
                sub_1C4A75630(v112 + 40 * v17 + 32, &v152);
                if (v153)
                {
                  sub_1C441D670(&v152, v154);
                  swift_endAccess();
                  p_isa = sub_1C4409678(v154, v154[3]);
                  sub_1C4F00B98();
                  sub_1C440962C(v154);
                }

                else
                {
                  sub_1C4A756A0(&v152);
                  swift_endAccess();
                }

                sub_1C442D0D4();
                v113 = sub_1C441CC88();
                v114(v113);
                goto LABEL_68;
              }
            }

            __break(1u);
LABEL_81:
            swift_once();
          }
        }

        sub_1C442D0D4();
        v78 = v87(v79, v73);
      }

      v17 = v72;
      goto LABEL_38;
    }

    sub_1C4402C08();
    v63(v61, v40);
    swift_endAccess();
  }

LABEL_25:
  v2 = v136;
LABEL_68:
  sub_1C440D6CC();
  v117 = *(v116 + 176);
  if ((*(v118 + v117) & 1) == 0)
  {
    v119 = *(v151 + *(v115 + 168));
    v120 = *(v119 + 16);
    v121 = (v119 + 32);
    while (v120)
    {
      v122 = *v121++;
      --v120;
      if ((v122 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v123 = p_isa;
    v124 = *(v115 + 192);
    sub_1C44135D0();
    v125 = sub_1C440D164(v1 + v124, v154);
    v150 = &v130;
    *&v152 = *(v1 + v124);
    MEMORY[0x1EEE9AC00](v125);
    v149 = v2[10];
    *(&v130 - 6) = v149;
    *(&v130 - 5) = v123;
    v126 = v2[13];
    v148 = v2[12];
    *(&v130 - 4) = v148;
    *(&v130 - 3) = v126;
    v127 = v2[14];
    v128 = v2[15];
    *(&v130 - 2) = v127;
    *(&v130 - 1) = v128;
    sub_1C4F017A8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441F840();
    swift_getWitnessTable();
    LOBYTE(v124) = sub_1C4F014D8();

    if (v124)
    {
      *(v151 + v117) = 1;
      v129 = sub_1C4A74B18();
      MEMORY[0x1EEE9AC00](v129);
      *(&v130 - 6) = v149;
      *(&v130 - 5) = v123;
      *(&v130 - 4) = v148;
      *(&v130 - 3) = v126;
      *(&v130 - 2) = v127;
      *(&v130 - 1) = v128;
      sub_1C4A73BDC();
    }
  }

LABEL_75:
  sub_1C4A750B8(v151);
  sub_1C43FE9F0();
}

id sub_1C4A74B18()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  sub_1C4F01F48();
  sub_1C43FBCE0();
  sub_1C43FBC68();
  [*(v0 + *(v1 + 200)) lock];
  sub_1C4400A6C();
  *(v0 + *(v4 + 152)) = 1;
  sub_1C4400A6C();
  v6 = *(v5 + 184);
  swift_beginAccess();
  v7 = *(v0 + v6);
  sub_1C43FD428();
  v8 = *(v7 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v0 + v6) = sub_1C4A72990(v19, v8);

  sub_1C43FCF64();
  sub_1C440BAA8(v9, v10, v11, v2);
  sub_1C4400A6C();
  v13 = *(v12 + 192);
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01758();

  *(v0 + v13) = sub_1C4F01798();

  v14 = *(v7 + 16);
  if (v14)
  {
    v15 = v7 + 32;
    do
    {
      sub_1C4A75630(v15, v19);
      sub_1C4A75630(v19, v17);
      if (v18)
      {
        sub_1C4409678(v17, v18);
        sub_1C4F00B38();
        sub_1C4A756A0(v19);
        sub_1C440962C(v17);
      }

      else
      {
        sub_1C4A756A0(v19);
        sub_1C4A756A0(v17);
      }

      v15 += 40;
      --v14;
    }

    while (v14);
  }

  return sub_1C4A750B8(v0);
}

uint64_t sub_1C4A74D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedConformanceWitness();
  v8 = sub_1C4F00B58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  sub_1C440BAA8(&v13 - v10, 1, 1, a4);
  sub_1C4F00B08();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C4A74E64(uint64_t a1)
{
  sub_1C43FC20C();
  [*(v1 + *(v3 + 200)) lock];
  if (*(v1 + *(*v1 + 152)) & 1) != 0 || (*(v1 + *(*v1 + 176)))
  {
    return sub_1C4A750B8(v1);
  }

  sub_1C4F00B88();
  result = sub_1C4F00B68();
  if ((result & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!a1)
    {
      return sub_1C4A750B8(v1);
    }
  }

  sub_1C43FC20C();
  v6 = *(v5 + 144);
  sub_1C440D164(v1 + v6, v16);
  sub_1C4F00B88();
  sub_1C4411720();
  if (sub_1C4F00B68())
  {
    return sub_1C4A750B8(v1);
  }

  if (*(v1 + *(*v1 + 216)))
  {
    v7 = *(*v1 + 224);
    sub_1C4403138(v1 + v7, v15);
    v8 = *(v1 + v7);
    sub_1C4F00B88();
    sub_1C4411720();
    if (sub_1C4F00B68())
    {
LABEL_24:
      swift_endAccess();
      return sub_1C4A750B8(v1);
    }

    sub_1C4F00B88();
    sub_1C4411720();
    v9 = sub_1C4F00B68();
    v10 = sub_1C4F00B88();
    if (v9)
    {
LABEL_23:
      *(v1 + v7) = v10;
      goto LABEL_24;
    }

    result = sub_1C4F00B68();
    if (result)
    {
LABEL_14:
      v10 = sub_1C4F00B88();
      goto LABEL_23;
    }

    if (((v8 | a1) & 0x8000000000000000) == 0)
    {
      v10 = v8 + a1;
      if (!__OFADD__(v8, a1))
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }

      goto LABEL_14;
    }

    goto LABEL_31;
  }

  sub_1C4403138(v1 + v6, v15);
  v11 = *(v1 + v6);
  sub_1C4F00B88();
  sub_1C4411720();
  if (sub_1C4F00B68())
  {
LABEL_27:
    swift_endAccess();
    do
    {
      sub_1C4A73CD8();
    }

    while ((v14 & 1) != 0);
    return sub_1C4A750B8(v1);
  }

  sub_1C4F00B88();
  sub_1C4411720();
  v12 = sub_1C4F00B68();
  v13 = sub_1C4F00B88();
  if (v12)
  {
LABEL_26:
    *(v1 + v6) = v13;
    goto LABEL_27;
  }

  result = sub_1C4F00B68();
  if (result)
  {
    goto LABEL_21;
  }

  if ((v11 | a1) < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v13 = v11 + a1;
  if (__OFADD__(v11, a1))
  {
LABEL_21:
    v13 = sub_1C4F00B88();
    goto LABEL_26;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t *sub_1C4A750DC()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 128));
  sub_1C43FC20C();

  sub_1C43FC20C();

  sub_1C43FC20C();

  sub_1C43FC20C();

  sub_1C43FC20C();

  sub_1C43FC20C();
  sub_1C43FC20C();
  v4 = *(v3 + 232);
  sub_1C4F01F48();
  sub_1C43FBCE0();
  (*(v5 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_1C4A75244()
{
  sub_1C4A750DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A752F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C4A7534C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C4F01F48();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C4A7546C(_OWORD *a1)
{
  v6 = 0;
  v9 = MEMORY[0x1E69E6530];
  v1 = a1[2];
  v5[0] = a1[1];
  v5[1] = v1;
  v5[2] = a1[3];
  result = type metadata accessor for OrderedMergePublisher.OrderedMerged(319, v5);
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v10 = result;
    result = sub_1C4F00A98();
    if (v4 <= 0x3F)
    {
      v8 = 0;
      v11 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4A755F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4F00B28();
  *a1 = result;
  return result;
}

uint64_t sub_1C4A75630(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8790, &qword_1C4F0DB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A756A0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8790, &qword_1C4F0DB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4A75708(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8790, &qword_1C4F0DB80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OrganizationMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for OrganizationMatcher(0);
  *(a4 + *(v8 + 28)) = 1056964608;
  sub_1C440053C();
  sub_1C448566C(a1, a4);
  sub_1C43FD90C();
  result = sub_1C448566C(a2, a4 + v9);
  *(a4 + *(v8 + 24)) = v7;
  return result;
}

uint64_t sub_1C4A75828()
{
  v0 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1C44F9918(v4, qword_1EDE2CC80);
  sub_1C442B738(v0, qword_1EDE2CC80);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  sub_1C4EFCB98();
  sub_1C4EFCBD8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C4A75984@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - v4;
  v5 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_1C456902C(&qword_1EC0BD2D0, &unk_1C4F2DA90);
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v36 - v12;
  v13 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v38 = &v36 - v21;
  sub_1C4EFC1E8();
  v22 = sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0, MEMORY[0x1E69E8280]);
  MEMORY[0x1C693AE20](v19, v13, v22);
  v23 = *(v14 + 8);
  v23(v19, v13);
  v39 = v14 + 8;
  sub_1C4EFC1E8();
  MEMORY[0x1C693AE20](v16, v13, v22);
  v23(v16, v13);
  v24 = sub_1C4EFCB78();
  sub_1C440BAA8(v7, 1, 1, v24);
  sub_1C4A76B8C(46, 0xE100000000000000, v7);
  v25 = sub_1C4401CBC(&qword_1EDDF0030, &qword_1EC0BD2D0, &unk_1C4F2DA90, MEMORY[0x1E69E8220]);
  v26 = v37;
  v36 = v8;
  MEMORY[0x1C693AE20](v10, v8, v25);
  v27 = *(v45 + 8);
  v45 += 8;
  v27(v10, v8);
  v28 = v40;
  v29 = v38;
  sub_1C4EFC148();
  v30 = v41;
  sub_1C47DC374(v28, v19);
  v31 = v30;
  sub_1C47DC5D4();
  v32 = *(v42 + 8);
  v33 = v31;
  v34 = v43;
  v32(v33, v43);
  v32(v28, v34);
  v27(v26, v36);
  v23(v19, v13);
  return (v23)(v29, v13);
}

uint64_t sub_1C4A75E64@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v2 = *(v1 - 8);
  v51 = v1;
  v52 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v42 - v3;
  v49 = sub_1C4EFC188();
  v57 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v42 - v6;
  v7 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v55 = sub_1C4EFCB28();
  v14 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42 - v18;
  v20 = sub_1C456902C(&qword_1EC0BD2D0, &unk_1C4F2DA90);
  v56 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v54 = &v42 - v24;
  v25 = sub_1C4EFCB78();
  sub_1C440BAA8(v19, 1, 1, v25);
  sub_1C4EFC178();
  sub_1C4A764AC(v10);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  v26 = MEMORY[0x1E69E67B0];
  v43 = v13;
  sub_1C4EFCB18();
  (*(v8 + 8))(v10, v7);
  v27 = *(v14 + 8);
  v45 = v14 + 8;
  v46 = v27;
  v27(v16, v55);
  sub_1C4420C3C(v19, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1C693AE40](v13, v26);
  v28 = sub_1C4401CBC(&qword_1EDDF0030, &qword_1EC0BD2D0, &unk_1C4F2DA90, MEMORY[0x1E69E8220]);
  MEMORY[0x1C693AE00](v22, v20, v28);
  v29 = *(v56 + 8);
  v56 += 8;
  v44 = v29;
  v29(v22, v20);
  v30 = v47;
  sub_1C4EFCB38();
  v31 = sub_1C4A7A2D8(&qword_1EDDFA260, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
  v32 = v48;
  v33 = v49;
  MEMORY[0x1C693AE00](v30, v49, v31);
  v34 = *(v57 + 8);
  v57 += 8;
  v35 = v30;
  v36 = v33;
  v34(v35, v33);
  v37 = v50;
  sub_1C4EFC128();
  sub_1C4EFC178();
  sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0, MEMORY[0x1E69E8280]);
  v38 = v43;
  v39 = MEMORY[0x1E69E67B0];
  v40 = v51;
  sub_1C4EFCAD8();
  v46(v16, v55);
  MEMORY[0x1C693AEC0](v38, v39);
  (*(v52 + 8))(v37, v40);
  v34(v32, v36);
  return v44(v54, v20);
}

uint64_t sub_1C4A764AC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v36 = &v34 - v2;
  v3 = sub_1C4EFCB28();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_1C4EFC188();
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&qword_1EC0BD2D0, &unk_1C4F2DA90);
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - v25;
  sub_1C4EFC1E8();
  v34 = sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0, MEMORY[0x1E69E8280]);
  MEMORY[0x1C693AE20](v23, v20, v34);
  v35 = *(v21 + 8);
  v35(v23, v20);
  sub_1C4EFCB38();
  v27 = sub_1C4EFCB78();
  sub_1C440BAA8(v8, 1, 1, v27);
  sub_1C4EFC178();
  sub_1C4A7A2D8(&qword_1EDDFA260, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
  v28 = v36;
  v29 = v37;
  sub_1C4EFCB18();
  (*(v41 + 8))(v5, v42);
  sub_1C4420C3C(v8, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  (*(v38 + 8))(v12, v29);
  MEMORY[0x1C693AE40](v28, MEMORY[0x1E69E67B0]);
  v30 = sub_1C4401CBC(&qword_1EDDF0030, &qword_1EC0BD2D0, &unk_1C4F2DA90, MEMORY[0x1E69E8220]);
  v31 = v39;
  MEMORY[0x1C693AE20](v16, v39, v30);
  v32 = *(v40 + 8);
  v32(v16, v31);
  sub_1C4EFC148();
  sub_1C47DC5D4();
  (*(v43 + 8))(v28, v44);
  v32(v19, v31);
  return (v35)(v26, v20);
}

uint64_t sub_1C4A76A28()
{
  v0 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  v9[0] = 46;
  v9[1] = 0xE100000000000000;
  v4 = sub_1C47DCB64();
  v5 = MEMORY[0x1E69E6158];
  MEMORY[0x1C693AE00](v10, v9, MEMORY[0x1E69E6158], v4);
  v7 = 44;
  v8 = 0xE100000000000000;
  MEMORY[0x1C693AE00](v9, &v7, v5, v4);
  v7 = v10[0];
  v8 = v10[1];
  sub_1C4EFC128();

  sub_1C47DC1D0();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C4A76B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_1C4EFCB28();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  v15[1] = a2;
  sub_1C4EFC178();
  sub_1C47DCB64();
  v13 = MEMORY[0x1E69E67B0];
  sub_1C4EFCB18();
  sub_1C4420C3C(a3, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  (*(v10 + 8))(v12, v9);

  return MEMORY[0x1C693AE40](v8, v13);
}

uint64_t sub_1C4A76D28()
{
  v0 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v22[0] = 1886547779;
  v22[1] = 0xE400000000000000;
  v13 = sub_1C47DCB64();
  v14 = MEMORY[0x1E69E6158];
  MEMORY[0x1C693AE00](v23, v22, MEMORY[0x1E69E6158], v13);
  v21[0] = 6516297;
  v21[1] = 0xE300000000000000;
  MEMORY[0x1C693AE00](v22, v21, v14, v13);
  v20[0] = 4410444;
  v20[1] = 0xE300000000000000;
  MEMORY[0x1C693AE00](v21, v20, v14, v13);
  v19[0] = 6583372;
  v19[1] = 0xE300000000000000;
  MEMORY[0x1C693AE00](v20, v19, v14, v13);
  v17 = 28483;
  v18 = 0xE200000000000000;
  MEMORY[0x1C693AE00](v19, &v17, v14, v13);
  v17 = v23[0];
  v18 = v23[1];
  sub_1C4EFC128();

  sub_1C47DC1D0();

  sub_1C47DC1D0();

  sub_1C47DC1D0();

  sub_1C47DC1D0();

  v15 = *(v1 + 8);
  v15(v3, v0);
  v15(v6, v0);
  v15(v9, v0);
  return (v15)(v12, v0);
}

unint64_t sub_1C4A76FF4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1C441CC9C();
  sub_1C441AE7C();
  result = sub_1C44CFDB0(v8, v9, v10, v11);
  if ((v13 & 1) == 0)
  {
    v14 = sub_1C4F012B8();
    sub_1C44DBF14(v14, a1, a2);
    sub_1C441CC9C();
    sub_1C4433664();
    sub_1C4B745C4(v15, v16, v17, v18);
    if (v19)
    {

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      sub_1C441AE7C();
      v20 = sub_1C4F013A8();
      sub_1C4433664();
      v21 = sub_1C4F01F88();

      if (__OFADD__(v20, v21))
      {
        __break(1u);
        return result;
      }

      sub_1C441AE7C();
      sub_1C4F012E8();
      sub_1C4F012B8();
      sub_1C441AE7C();
      v22 = sub_1C4F01448();
      a1 = MEMORY[0x1C693FEF0](v22);
      a2 = v23;
    }

    v24 = sub_1C4A771B0(a3, a4);
    if (v25)
    {
      if (a1 == v24 && v25 == a2)
      {
      }

      else
      {
        sub_1C4F02938();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1C4A771B0(uint64_t a1, unint64_t a2)
{
  sub_1C441CC9C();
  sub_1C442FFF8();
  sub_1C44CFDB0(v4, v5, v6, v7);
  if (v8)
  {
    return 0;
  }

  v9 = sub_1C4F012B8();
  sub_1C44DBF14(v9, a1, a2);
  sub_1C441CC9C();
  sub_1C4425EC0();
  sub_1C4B745C4(v10, v11, v12, v13);
  if (v14)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return a1;
  }

  sub_1C442FFF8();
  v15 = sub_1C4F013A8();
  sub_1C4425EC0();
  v16 = sub_1C4F01F88();

  if (!__OFADD__(v15, v16))
  {
    sub_1C442FFF8();
    sub_1C4F012E8();
    sub_1C4F012B8();
    sub_1C442FFF8();
    v18 = sub_1C4F01448();
    a1 = MEMORY[0x1C693FEF0](v18);

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A772E0(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDE4FD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C442B738(v2, qword_1EDE2CC80);
  sub_1C4A7A230();
  sub_1C4A7A284();
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  sub_1C4F01C18();
  return v4;
}

float sub_1C4A773F0(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v91 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v91 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v91 - v16;
  v111 = type metadata accessor for EntityTriple(0);
  v106 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v104 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v91 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v91 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v91 = &v91 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v109 = &v91 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v92 = &v91 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v91 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v95 = &v91 - v32;
  v33 = 0;
  v34 = *(a1 + 16);
  v107 = a1;
  v108 = v34;
  v112 = (v4 + 8);
  v98 = v6;
  while (1)
  {
    if (v108 == v33)
    {
      goto LABEL_39;
    }

    v35 = *(v106 + 72);
    v101 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v103 = v35;
    sub_1C44718CC(v107 + v101 + v35 * v33, v30);
    sub_1C4EFEBF8();
    sub_1C4A7A2D8(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v115 == v113 && v116 == v114)
    {
      v37 = 1;
    }

    else
    {
      v37 = sub_1C4F02938();
    }

    v38 = *v112;
    (*v112)(v105, v3);

    if (v37)
    {
      goto LABEL_17;
    }

    v39 = v102;
    sub_1C4EFE6E8();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v115 == v113 && v116 == v114)
    {
      break;
    }

    v41 = sub_1C4F02938();
    v38(v39, v3);

    if (v41)
    {
      goto LABEL_17;
    }

    sub_1C44DBD5C(v30, type metadata accessor for EntityTriple);
    ++v33;
  }

  v38(v39, v3);

LABEL_17:
  v42 = v30;
  v43 = v95;
  sub_1C448566C(v42, v95);
  v44 = (v43 + *(v111 + 32));
  v45 = v44[1];
  v93 = *v44;
  v102 = v45;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v43, type metadata accessor for EntityTriple);
  v46 = *(v96 + 16);
  v47 = v96 + v101;
  while (1)
  {
    v48 = v99;
    if (!v46)
    {

      goto LABEL_39;
    }

    sub_1C44718CC(v47, v104);
    sub_1C4EFEBF8();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v115 == v113 && v116 == v114)
    {
      v54 = v48;
      goto LABEL_33;
    }

    v105 = v47;
    v50 = sub_1C4F02938();
    v38(v48, v3);

    if (v50)
    {
      goto LABEL_34;
    }

    v51 = v98;
    sub_1C4EFE6E8();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v115 == v113 && v116 == v114)
    {
      break;
    }

    v53 = sub_1C4F02938();
    v38(v51, v3);

    if (v53)
    {
      goto LABEL_34;
    }

    sub_1C44DBD5C(v104, type metadata accessor for EntityTriple);
    v47 = &v105[v103];
    --v46;
  }

  v54 = v51;
LABEL_33:
  v38(v54, v3);

LABEL_34:
  v55 = v94;
  sub_1C448566C(v104, v94);
  v56 = (v55 + *(v111 + 32));
  v57 = *v56;
  v58 = v56[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v55, type metadata accessor for EntityTriple);
  v59 = sub_1C4A772E0(v57, v58);
  v61 = v60;

  v62 = sub_1C4A772E0(v93, v102);
  v64 = v63;

  v65 = 1.0;
  if (v59 != v62 || v61 != v64)
  {
    v67 = sub_1C4F02938();

    if (v67)
    {
      return v65;
    }

LABEL_39:
    for (i = 0; ; ++i)
    {
      if (v108 == i)
      {
        return 0.0;
      }

      v69 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v70 = *(v106 + 72);
      sub_1C44718CC(v107 + v69 + v70 * i, v109);
      sub_1C4EFE778();
      sub_1C4A7A2D8(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
      sub_1C4F01578();
      sub_1C4F01578();
      v71 = v115 == v113 && v116 == v114;
      v72 = v71 ? 1 : sub_1C4F02938();
      v73 = *v112;
      (*v112)(v110, v3);

      if (v72)
      {
        break;
      }

      sub_1C44DBD5C(v109, type metadata accessor for EntityTriple);
    }

    v74 = v92;
    sub_1C448566C(v109, v92);
    v75 = (v74 + *(v111 + 32));
    v76 = v75[1];
    v109 = *v75;
    v110 = v76;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBD5C(v74, type metadata accessor for EntityTriple);
    v77 = *(v96 + 16);
    v78 = v96 + v69;
    while (1)
    {
      v79 = v97;
      if (!v77)
      {
        v65 = 0.0;
        goto LABEL_62;
      }

      sub_1C44718CC(v78, v100);
      sub_1C4EFE778();
      sub_1C4F01578();
      sub_1C4F01578();
      if (v115 == v113 && v116 == v114)
      {
        break;
      }

      v81 = sub_1C4F02938();
      v82 = v3;
      v83 = v81;
      v84 = v82;
      (v73)(v79);

      if (v83)
      {
        goto LABEL_60;
      }

      sub_1C44DBD5C(v100, type metadata accessor for EntityTriple);
      v78 += v70;
      --v77;
      v3 = v84;
    }

    v73(v79, v3);

LABEL_60:
    v85 = v91;
    sub_1C448566C(v100, v91);
    v86 = (v85 + *(v111 + 32));
    v88 = *v86;
    v87 = v86[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBD5C(v85, type metadata accessor for EntityTriple);
    sub_1C4A76FF4(v109, v110, v88, v87);
    v65 = v89;
  }

LABEL_62:

  return v65;
}

float sub_1C4A77F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  v129 = a5;
  v133 = a4;
  v134 = a2;
  v132 = a3(0);
  sub_1C43FCDF8();
  v128 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v135 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v122 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v127 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v119 - v14;
  v15 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v125 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v126 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v131 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v124 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v140 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  v136 = &v119 - v29;
  v141 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v137 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v139 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v121 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v119 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v123 = &v119 - v39;
  v40 = 0;
  v138 = *(a1 + 16);
  v142 = (v17 + 8);
  v130 = a1;
  while (1)
  {
    if (v138 == v40)
    {
      goto LABEL_37;
    }

    sub_1C43FBF6C();
    sub_1C44032D8();
    sub_1C44718CC(v41, v37);
    v42 = *(v141 + 20);
    v43 = v136;
    sub_1C4EFEBF8();
    sub_1C440774C();
    sub_1C4A7A2D8(&off_1EDDFCCA8, v44, MEMORY[0x1E69A9770]);
    sub_1C43FF4B4();
    sub_1C4408E80();
    v45 = sub_1C441A178();
    v48 = v48 && v43 == &v37[v42];
    if (v48)
    {
      v49 = 1;
    }

    else
    {
      v49 = sub_1C44172DC(v45, v46, v47);
    }

    v50 = *v142;
    (*v142)(v136, v15);

    if (v49)
    {
      goto LABEL_17;
    }

    v51 = v131;
    sub_1C4EFE6E8();
    sub_1C43FF4B4();
    sub_1C43FF4B4();
    v52 = sub_1C441A178();
    if (v48 && v43 == v51)
    {
      break;
    }

    v56 = sub_1C44172DC(v52, v53, v54);
    sub_1C440E640();
    v50();

    if (v56)
    {
      goto LABEL_17;
    }

    sub_1C44DBD5C(v37, type metadata accessor for EntityTriple);
    ++v40;
  }

  sub_1C440E640();
  v50();

LABEL_17:
  v57 = v123;
  sub_1C448566C(v37, v123);
  v58 = (v57 + *(v141 + 32));
  v59 = v58[1];
  v131 = *v58;
  v136 = v59;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C441224C();
  v60 = 0;
  v61 = *(v134 + 16);
  while (1)
  {
    v62 = v126;
    if (v61 == v60)
    {

      goto LABEL_37;
    }

    sub_1C43FBF6C();
    sub_1C44718CC(v134 + v63 + *(v64 + 72) * v60, v135);
    v65 = *(v132 + 20);
    sub_1C4EFEBF8();
    sub_1C43FF4B4();
    sub_1C43FF4B4();
    v66 = sub_1C441A178();
    if (v48 && v43 == v62)
    {
      break;
    }

    v70 = sub_1C44172DC(v66, v67, v68);
    sub_1C440E640();
    v50();

    if (v70)
    {
      goto LABEL_32;
    }

    v43 = v125;
    sub_1C4EFE6E8();
    v71 = v135 + v65;
    sub_1C43FF4B4();
    sub_1C4408E80();
    v72 = sub_1C441A178();
    if (v48 && v43 == v71)
    {
      break;
    }

    v76 = sub_1C44172DC(v72, v73, v74);
    sub_1C440E640();
    v50();

    if (v76)
    {
      goto LABEL_32;
    }

    sub_1C44DBD5C(v135, v129);
    ++v60;
  }

  sub_1C440E640();
  v50();

LABEL_32:
  v77 = v122;
  sub_1C448566C(v135, v122);
  v78 = (v77 + *(v132 + 32));
  v79 = *v78;
  v80 = v78[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v77, v129);
  v81 = sub_1C4A772E0(v79, v80);
  v83 = v82;

  v84 = sub_1C4A772E0(v131, v136);
  v86 = v85;

  v87 = 1.0;
  if (v81 != v84 || v83 != v86)
  {
    v89 = sub_1C4F02938();

    if (v89)
    {
      return v87;
    }

LABEL_37:
    for (i = 0; ; ++i)
    {
      if (v138 == i)
      {
        return 0.0;
      }

      sub_1C43FBF6C();
      sub_1C44032D8();
      v91 = v139;
      sub_1C44718CC(v92, v139);
      v93 = v140;
      v94 = *(v141 + 20);
      sub_1C4EFE778();
      sub_1C440774C();
      sub_1C4A7A2D8(&off_1EDDFCCA8, v95, MEMORY[0x1E69A9770]);
      v96 = v91 + v94;
      sub_1C43FF4B4();
      sub_1C4408E80();
      v97 = sub_1C441A178();
      v100 = v48 && v93 == v96;
      v101 = v100 ? 1 : sub_1C44172DC(v97, v98, v99);
      v102 = *v142;
      (*v142)(v140, v15);

      if (v101)
      {
        break;
      }

      sub_1C44DBD5C(v139, type metadata accessor for EntityTriple);
    }

    v103 = v121;
    sub_1C448566C(v139, v121);
    v104 = (v103 + *(v141 + 32));
    v105 = v104[1];
    v141 = *v104;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441224C();
    v106 = 0;
    v107 = *(v134 + 16);
    while (1)
    {
      if (v107 == v106)
      {
        v87 = 0.0;
        goto LABEL_60;
      }

      v108 = v127;
      sub_1C43FBF6C();
      sub_1C44718CC(v134 + v109 + *(v110 + 72) * v106, v108);
      sub_1C4EFE778();
      sub_1C43FF4B4();
      sub_1C43FF4B4();
      if (v145 == v143 && v146 == v144)
      {
        break;
      }

      v112 = sub_1C4F02938();
      sub_1C440E640();
      v102();

      if (v112)
      {
        goto LABEL_58;
      }

      sub_1C44DBD5C(v127, v129);
      ++v106;
    }

    sub_1C440E640();
    v102();

LABEL_58:
    v113 = v120;
    sub_1C448566C(v127, v120);
    v114 = (v113 + *(v132 + 32));
    v115 = *v114;
    v116 = v114[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBD5C(v113, v129);
    sub_1C4A76FF4(v141, v105, v115, v116);
    v87 = v117;
  }

LABEL_60:

  return v87;
}

uint64_t sub_1C4A78900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a1;
  v68 = a3;
  v66 = sub_1C4EF9CD8();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1C4EFF0C8();
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v59 - v7;
  v9 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v59 - v13;
  v15 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  v24 = v73;
  result = sub_1C44C6368();
  if (v24)
  {
    return result;
  }

  v62 = v3;
  v63 = v8;
  v59 = v20;
  v60 = v17;
  v73 = 0;
  v61 = v11;
  v26 = v72;
  v28 = v69;
  v27 = v70;
  if (v70)
  {
    sub_1C44F1938(v70, v14);
    v29 = type metadata accessor for GraphTriple(0);
    if (sub_1C44157D4(v14, 1, v29) != 1)
    {
      (*(v26 + 16))(v23, v14, v28);
      sub_1C44DBD5C(v14, type metadata accessor for GraphTriple);
      v30 = 0;
      goto LABEL_7;
    }

    sub_1C4420C3C(v14, &unk_1EC0BC900, byte_1C4F142D0);
  }

  v30 = 1;
LABEL_7:
  v31 = v23;
  sub_1C440BAA8(v23, v30, 1, v28);
  v32 = v63;
  v33 = v71;
  sub_1C44D0BD8(v71, v63);
  if (sub_1C44157D4(v32, 1, v9) == 1)
  {
    sub_1C4420C3C(v32, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v34 = sub_1C4F00978();
    sub_1C442B738(v34, qword_1EDE2DE10);
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CD8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C43F8000, v35, v36, "Organization Matcher: skipping entityTriples are empty", v37, 2u);
      MEMORY[0x1C6942830](v37, -1, -1);
    }

    sub_1C46828B4();
    v38 = swift_allocError();
    *v39 = 0;
    v73 = v38;
    swift_willThrow();
    return sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v40 = v61;
  sub_1C448566C(v32, v61);
  if (v27)
  {
    v41 = v73;
    v42 = sub_1C4A77F7C(v33, v27, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple);
    v43 = v67;
    v44 = v68;
    v73 = v41;
    if (v41)
    {
      sub_1C44DBD5C(v40, type metadata accessor for EntityTriple);
      return sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v45 = v42;
  }

  else
  {
    v45 = 0.0;
    v43 = v67;
    v44 = v68;
  }

  v71 = type metadata accessor for OrganizationMatcher(0);
  v46 = *(v62 + *(v71 + 28));
  v47 = v59;
  if (v45 <= v46)
  {
    sub_1C4EFF008();
    sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v47, 0, 1, v28);
    sub_1C44DDDBC(v47, v31);
    v45 = v46;
  }

  v48 = v60;
  sub_1C457E858(v31, v60);
  v49 = sub_1C44157D4(v48, 1, v28);
  v70 = v31;
  if (v49 == 1)
  {
    sub_1C4420C3C(v48, &unk_1EC0BA0E0, &qword_1C4F105A0);
    result = sub_1C4F024A8();
    __break(1u);
  }

  else
  {
    v50 = v72;
    (*(v72 + 32))(v43, v48, v28);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v51 = v28;
    v52 = type metadata accessor for EntityMatch(0);
    v53 = *(v50 + 16);
    v54 = v61;
    v53(v44 + v52[5], v61, v51);
    v53(v44 + v52[6], v43, v51);
    v55 = v65;
    sub_1C4EF9C88();
    sub_1C4EF9AD8();
    v57 = v56;
    (*(v64 + 8))(v55, v66);
    (*(v50 + 8))(v43, v51);
    sub_1C44DBD5C(v54, type metadata accessor for EntityTriple);
    result = sub_1C4420C3C(v70, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v58 = *(v62 + *(v71 + 24));
    *(v44 + v52[7]) = v45;
    *(v44 + v52[8]) = v57;
    *(v44 + v52[9]) = v58;
    *(v44 + v52[10]) = 0;
  }

  return result;
}

uint64_t sub_1C4A790C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v74 = a1;
  v70 = a3;
  v69 = sub_1C4EF9CD8();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - v24;
  v26 = v75;
  result = sub_1C44C6368();
  if (!v26)
  {
    v65 = v3;
    v66 = v8;
    v61 = v22;
    v62 = v19;
    v75 = 0;
    v63 = v7;
    v64 = v10;
    v28 = v71;
    v29 = v72;
    v30 = v73;
    if (v73)
    {
      sub_1C44D0BD8(v73, v16);
      v31 = v28;
      if (sub_1C44157D4(v16, 1, v66) == 1)
      {
        sub_1C4420C3C(v16, &qword_1EC0BA590, &qword_1C4F1F430);
        v32 = 1;
      }

      else
      {
        (*(v28 + 16))(v25, v16, v29);
        sub_1C44DBD5C(v16, type metadata accessor for EntityTriple);
        v32 = 0;
      }
    }

    else
    {
      v32 = 1;
      v31 = v71;
    }

    v33 = v74;
    v34 = v25;
    sub_1C440BAA8(v25, v32, 1, v29);
    sub_1C44D0BD8(v33, v13);
    if (sub_1C44157D4(v13, 1, v66) == 1)
    {
      sub_1C4420C3C(v13, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v35 = sub_1C4F00978();
      sub_1C442B738(v35, qword_1EDE2DE10);
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CD8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1C43F8000, v36, v37, "Organization Matcher: skipping entityTriples are empty", v38, 2u);
        MEMORY[0x1C6942830](v38, -1, -1);
      }

      sub_1C46828B4();
      v39 = swift_allocError();
      *v40 = 0;
      v75 = v39;
      swift_willThrow();
      return sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v41 = v13;
    v42 = v64;
    sub_1C448566C(v41, v64);
    if (v30)
    {
      v43 = v75;
      v44 = sub_1C4A773F0(v33, v30);
      v45 = v70;
      v46 = v63;
      v75 = v43;
      if (v43)
      {
        sub_1C44DBD5C(v42, type metadata accessor for EntityTriple);
        return sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      v47 = v44;
    }

    else
    {
      v47 = 0.0;
      v45 = v70;
      v46 = v63;
    }

    v74 = type metadata accessor for OrganizationMatcher(0);
    v48 = *(v65 + *(v74 + 28));
    v49 = v61;
    if (v47 <= v48)
    {
      sub_1C4EFF008();
      sub_1C4420C3C(v34, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v49, 0, 1, v29);
      sub_1C44DDDBC(v49, v34);
      v47 = v48;
    }

    v50 = v62;
    sub_1C457E858(v34, v62);
    if (sub_1C44157D4(v50, 1, v29) == 1)
    {
      sub_1C4420C3C(v50, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      (*(v31 + 32))(v46, v50, v29);
      _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v51 = v46;
      v52 = v29;
      v53 = type metadata accessor for EntityMatch(0);
      v54 = v31;
      v55 = *(v31 + 16);
      v56 = v64;
      v55(v45 + v53[5], v64, v52);
      v55(v45 + v53[6], v51, v52);
      v57 = v68;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v59 = v58;
      (*(v67 + 8))(v57, v69);
      (*(v54 + 8))(v51, v52);
      sub_1C44DBD5C(v56, type metadata accessor for EntityTriple);
      result = sub_1C4420C3C(v34, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v60 = *(v65 + *(v74 + 24));
      *(v45 + v53[7]) = v47;
      *(v45 + v53[8]) = v59;
      *(v45 + v53[9]) = v60;
      *(v45 + v53[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C4A79818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a1;
  v68 = a3;
  v66 = sub_1C4EF9CD8();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1C4EFF0C8();
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v59 - v7;
  v9 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v59 - v13;
  v15 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  v24 = v73;
  result = sub_1C44C6368();
  if (v24)
  {
    return result;
  }

  v62 = v3;
  v63 = v8;
  v59 = v20;
  v60 = v17;
  v73 = 0;
  v61 = v11;
  v26 = v72;
  v28 = v69;
  v27 = v70;
  if (v70)
  {
    sub_1C486854C(v70, v14);
    v29 = type metadata accessor for ConstructionGraphTriple(0);
    if (sub_1C44157D4(v14, 1, v29) != 1)
    {
      (*(v26 + 16))(v23, v14, v28);
      sub_1C44DBD5C(v14, type metadata accessor for ConstructionGraphTriple);
      v30 = 0;
      goto LABEL_7;
    }

    sub_1C4420C3C(v14, &unk_1EC0BCAE0, byte_1C4F142A0);
  }

  v30 = 1;
LABEL_7:
  v31 = v23;
  sub_1C440BAA8(v23, v30, 1, v28);
  v32 = v63;
  v33 = v71;
  sub_1C44D0BD8(v71, v63);
  if (sub_1C44157D4(v32, 1, v9) == 1)
  {
    sub_1C4420C3C(v32, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v34 = sub_1C4F00978();
    sub_1C442B738(v34, qword_1EDE2DE10);
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CD8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C43F8000, v35, v36, "Organization Matcher: skipping entityTriples are empty", v37, 2u);
      MEMORY[0x1C6942830](v37, -1, -1);
    }

    sub_1C46828B4();
    v38 = swift_allocError();
    *v39 = 0;
    v73 = v38;
    swift_willThrow();
    return sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v40 = v61;
  sub_1C448566C(v32, v61);
  if (v27)
  {
    v41 = v73;
    v42 = sub_1C4A77F7C(v33, v27, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
    v43 = v67;
    v44 = v68;
    v73 = v41;
    if (v41)
    {
      sub_1C44DBD5C(v40, type metadata accessor for EntityTriple);
      return sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v45 = v42;
  }

  else
  {
    v45 = 0.0;
    v43 = v67;
    v44 = v68;
  }

  v71 = type metadata accessor for OrganizationMatcher(0);
  v46 = *(v62 + *(v71 + 28));
  v47 = v59;
  if (v45 <= v46)
  {
    sub_1C4EFF008();
    sub_1C4420C3C(v31, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v47, 0, 1, v28);
    sub_1C44DDDBC(v47, v31);
    v45 = v46;
  }

  v48 = v60;
  sub_1C457E858(v31, v60);
  v49 = sub_1C44157D4(v48, 1, v28);
  v70 = v31;
  if (v49 == 1)
  {
    sub_1C4420C3C(v48, &unk_1EC0BA0E0, &qword_1C4F105A0);
    result = sub_1C4F024A8();
    __break(1u);
  }

  else
  {
    v50 = v72;
    (*(v72 + 32))(v43, v48, v28);
    _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
    v51 = v28;
    v52 = type metadata accessor for EntityMatch(0);
    v53 = *(v50 + 16);
    v54 = v61;
    v53(v44 + v52[5], v61, v51);
    v53(v44 + v52[6], v43, v51);
    v55 = v65;
    sub_1C4EF9C88();
    sub_1C4EF9AD8();
    v57 = v56;
    (*(v64 + 8))(v55, v66);
    (*(v50 + 8))(v43, v51);
    sub_1C44DBD5C(v54, type metadata accessor for EntityTriple);
    result = sub_1C4420C3C(v70, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v58 = *(v62 + *(v71 + 24));
    *(v44 + v52[7]) = v45;
    *(v44 + v52[8]) = v57;
    *(v44 + v52[9]) = v58;
    *(v44 + v52[10]) = 0;
  }

  return result;
}

uint64_t sub_1C4A79FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3);
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C4A7A0BC(uint64_t a1)
{
  result = sub_1C4A7A2D8(&qword_1EDDF4AE8, type metadata accessor for OrganizationMatcher, &protocol conformance descriptor for OrganizationMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A7A114(uint64_t a1)
{
  result = sub_1C4A7A2D8(qword_1EDDF4AF8, type metadata accessor for OrganizationMatcher, &protocol conformance descriptor for OrganizationMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A7A194(uint64_t a1)
{
  result = type metadata accessor for PhaseStores(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Source(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}