BOOL sub_1C4B56DC0(uint64_t a1)
{
  v2 = sub_1C4EFEEF8();
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 3)
  {
    return 0;
  }

  v6 = 0;
  v7 = (v3 + 8);
  do
  {
    v8 = v6 != 3;
    if (v6 == 3)
    {
      break;
    }

    type metadata accessor for TranslatedEntityTriple(0);
    sub_1C4EFE968();
    sub_1C44B95C0(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v12[2] == v12[0] && v12[3] == v12[1])
    {
      (*v7)(v5, v2);

      return 1;
    }

    ++v6;
    v10 = sub_1C4F02938();
    (*v7)(v5, v2);
  }

  while ((v10 & 1) == 0);
  return v8;
}

uint64_t sub_1C4B57000(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TranslatedEntityTriple(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a2 + 16);
  while (1)
  {
    if (v8 == v7)
    {
      return 0;
    }

    sub_1C4471BAC(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7, v6);
    sub_1C4EFEEF8();
    sub_1C44B95C0(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v13[2] == v13[0] && v13[3] == v13[1])
    {
      break;
    }

    v10 = sub_1C4F02938();

    if (v10)
    {
      goto LABEL_11;
    }

    sub_1C44BCC4C(v6, type metadata accessor for TranslatedEntityTriple);
    ++v7;
  }

LABEL_11:
  v11 = *&v6[*(v3 + 32)];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44BCC4C(v6, type metadata accessor for TranslatedEntityTriple);
  return v11;
}

void sub_1C4B5722C()
{
  sub_1C43FEC28();
  v110 = v2;
  v4 = v3;
  v119 = v5;
  v7 = v6;
  v9 = v8;
  v123 = sub_1C4EFFB98();
  sub_1C43FCDF8();
  v120 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v122 = v13 - v12;
  sub_1C43FBE44();
  v118 = sub_1C4EF9488();
  sub_1C43FCDF8();
  v115 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v117 = v17 - v16;
  v18 = sub_1C456902C(&qword_1EC0C3960, &qword_1C4F52CC0);
  sub_1C43FBD18(v18);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1C44F0C58();
  v21 = sub_1C43FBD18(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v25 = v4(0);
  v130 = *(v0 + *(v25 + 36));
  v26 = type metadata accessor for TranslatedEntityTriple(0);
  SourceSet.insert(_:)(v24, v7 + *(v26 + 36));
  sub_1C441D3C8();
  sub_1C44BCC4C(v24, v27);
  v113 = v25;
  v28 = *(v25 + 44);
  v114 = v0;
  v107 = (v0 + v28);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v30 = (v7 + *(v26 + 40));
  v31 = v30[1];
  v109 = *v30;
  *(inited + 32) = v109;
  *(inited + 40) = v31;
  v108 = v31;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = objc_autoreleasePoolPush();
  sub_1C4464BB4();
  v126 = v33;
  v127 = v34;
  v35 = sub_1C4415EA8();
  sub_1C4F01FC8();

  objc_autoreleasePoolPop(v32);
  v36 = sub_1C4499940();
  v37 = sub_1C4499940();
  v38 = sub_1C44999E0(v37, v36);
  v39 = objc_autoreleasePoolPush();
  sub_1C44EC90C(v38, v40, v41, v42, v43, v44, v45, v46, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C44134BC();
  sub_1C4401CBC(v47, &unk_1EC0B9620, &unk_1C4F0E870, v48);
  sub_1C4B59088();
  v49 = sub_1C4F01048();
  v51 = v50;

  objc_autoreleasePoolPop(v39);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v52 = objc_autoreleasePoolPush();
  v112 = v49;
  v128 = v49;
  v129 = v51;
  sub_1C4475294(30);
  v124 = v35;
  v53 = sub_1C4F01FC8();
  v111 = v51;

  objc_autoreleasePoolPop(v52);
  v54 = *(v53 + 16);
  if (v54)
  {
    v106 = v9;
    v125 = MEMORY[0x1E69E7CC0];
    sub_1C459D100(0, v54, 0);
    v55 = 0;
    v56 = v125;
    sub_1C44A3CE0();
    v57 = v119;
    v120 += 8;
    v58 = (v53 + 40);
    v59 = v53;
    v116 = v53;
    v121 = v54;
    while (1)
    {
      if (v55 >= *(v59 + 16))
      {
        __break(1u);
        return;
      }

      v60 = *(v58 - 1);
      v61 = *v58;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v62 = objc_autoreleasePoolPush();
      v128 = v60;
      v129 = v61;
      sub_1C4475294(58);
      if ((sub_1C4F02048() & 1) == 0)
      {
        goto LABEL_8;
      }

      v128 = v60;
      v129 = v61;
      v126 = &unk_1F43D23D8;
      sub_1C44B95C0(&qword_1EDDFCD90, MEMORY[0x1E69680B8], MEMORY[0x1E69680D0]);
      sub_1C456902C(&qword_1EC0C3978, &unk_1C4F540A0);
      sub_1C4400184();
      sub_1C4401CBC(&qword_1EDDFA558, &qword_1EC0C3978, &unk_1C4F540A0, v63);
      sub_1C4F020C8();
      v64 = sub_1C4F01FB8();
      sub_1C441739C();
      v65(v117, v118);
      if (!*(v64 + 16))
      {
        break;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      SourceIdPrefix.init(rawValue:)();
      v57 = v119;
      v59 = v116;
LABEL_9:
      objc_autoreleasePoolPop(v62);
      v67 = type metadata accessor for SourceIdPrefix(0);
      if (sub_1C44157D4(v1, 1, v67) == 1)
      {
        sub_1C4420C3C(v1, &qword_1EC0C3960, &qword_1C4F52CC0);
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44AE0B0();
      }

      sub_1C4EFFBA8();
      if (*(v57 + 16) && (sub_1C44EE7B4(), (v69 & 1) != 0))
      {
        v70 = *(*(v57 + 56) + 8 * v68);

        v71 = sub_1C4473DA8();
        v72(v71);
      }

      else
      {
        v73 = sub_1C4473DA8();
        v74(v73);

        v70 = 0x3FE999999999999ALL;
      }

      v125 = v56;
      v76 = *(v56 + 16);
      v75 = *(v56 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1C459D100(v75 > 1, v76 + 1, 1);
        v56 = v125;
      }

      ++v55;
      *(v56 + 16) = v76 + 1;
      *(v56 + 8 * v76 + 32) = v70;
      v58 += 2;
      if (v121 == v55)
      {

        v9 = v106;
        goto LABEL_21;
      }
    }

    v57 = v119;
    v59 = v116;
LABEL_8:
    v66 = type metadata accessor for SourceIdPrefix(0);
    sub_1C440BAA8(v1, 1, 1, v66);
    goto LABEL_9;
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v77 = *(v56 + 16);
  v78 = v114;
  v79 = v113;
  if (v77)
  {
    v80 = (v56 + 32);
    v81 = 0.0;
    do
    {
      v82 = *v80++;
      v81 = v81 + v82 - v81 * v82;
      --v77;
    }

    while (v77);
  }

  else
  {
    v81 = 0.0;
  }

  if (v81 == *(v114 + v113[10]) && (v84 = *v107, v83 = v107[1], _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v85 = objc_autoreleasePoolPush(), v128 = v84, v129 = v83, sub_1C4464BB4(), v126 = v86, v127 = v87, sub_1C4F01FC8(), objc_autoreleasePoolPop(v85), v128 = v109, v129 = v108, MEMORY[0x1EEE9AC00](v88), *(&v105 - 2) = &v128, LOBYTE(v85) = sub_1C44CE068(), , , (v85 & 1) != 0))
  {
    v89 = *(v78 + v79[12]);
  }

  else
  {
    sub_1C4EF9AE8();
    v89 = v90;
  }

  sub_1C4EFF0C8();
  sub_1C43FCE50();
  (*(v91 + 16))(v9, v78);
  v92 = v79[5];
  v93 = sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v95 = *(v94 + 16);
  v95(v9 + v92, v78 + v92, v93);
  v96 = v79[6];
  sub_1C4EFF8A8();
  sub_1C43FCE50();
  (*(v97 + 16))(v9 + v96, v78 + v96);
  v95(v9 + v79[7], v78 + v79[7], v93);
  v98 = v79[8];
  v100 = *(v78 + v98);
  v99 = *(v78 + v98 + 8);
  v101 = v130;
  v102 = (v9 + v98);
  *v102 = v100;
  v102[1] = v99;
  *(v9 + v79[9]) = v101;
  *(v9 + v79[10]) = v81;
  v103 = (v9 + v79[11]);
  v104 = v111;
  *v103 = v112;
  v103[1] = v104;
  *(v9 + v79[12]) = v89;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44086C4();
}

uint64_t sub_1C4B57B5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for EventTriple(0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v25 - v10;
  v11 = type metadata accessor for TranslatedEntityTriple(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = *(a1 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  while (v16 != v15)
  {
    sub_1C4471BAC(a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v15, v14);
    sub_1C44EC3C8();
    sub_1C440BAA8(v6, 0, 1, v7);
    sub_1C44BCC4C(v14, type metadata accessor for TranslatedEntityTriple);
    if (sub_1C44157D4(v6, 1, v7) == 1)
    {
      sub_1C4420C3C(v6, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      ++v15;
    }

    else
    {
      v26 = type metadata accessor for EventTriple;
      v27 = v2;
      v17 = v28;
      sub_1C44856C8(v6, v28);
      sub_1C44856C8(v17, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458BAC8(0, *(v31 + 16) + 1, 1, v31);
        v31 = v22;
      }

      v19 = *(v31 + 16);
      v18 = *(v31 + 24);
      v20 = (v19 + 1);
      if (v19 >= v18 >> 1)
      {
        v26 = (v19 + 1);
        sub_1C458BAC8(v18 > 1, v19 + 1, 1, v31);
        v20 = v26;
        v31 = v23;
      }

      ++v15;
      v21 = v31;
      *(v31 + 16) = v20;
      sub_1C44856C8(v30, v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19);
      v2 = v27;
    }
  }

  return v31;
}

uint64_t sub_1C4B57ED0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for GraphTriple(0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v25 - v10;
  v11 = type metadata accessor for TranslatedEntityTriple(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = *(a1 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  while (v16 != v15)
  {
    sub_1C4471BAC(a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v15, v14);
    sub_1C44EC3C8();
    sub_1C440BAA8(v6, 0, 1, v7);
    sub_1C44BCC4C(v14, type metadata accessor for TranslatedEntityTriple);
    if (sub_1C44157D4(v6, 1, v7) == 1)
    {
      sub_1C4420C3C(v6, &unk_1EC0BC900, byte_1C4F142D0);
      ++v15;
    }

    else
    {
      v26 = type metadata accessor for GraphTriple;
      v27 = v2;
      v17 = v28;
      sub_1C44856C8(v6, v28);
      sub_1C44856C8(v17, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44F1730(0, *(v31 + 16) + 1, 1, v31);
        v31 = v22;
      }

      v19 = *(v31 + 16);
      v18 = *(v31 + 24);
      v20 = (v19 + 1);
      if (v19 >= v18 >> 1)
      {
        v26 = (v19 + 1);
        sub_1C44F1730(v18 > 1, v19 + 1, 1, v31);
        v20 = v26;
        v31 = v23;
      }

      ++v15;
      v21 = v31;
      *(v31 + 16) = v20;
      sub_1C44856C8(v30, v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19);
      v2 = v27;
    }
  }

  return v31;
}

uint64_t sub_1C4B58244(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0BDFE8, &qword_1C4F54070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ConstructionEventTriple(0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v25 - v10;
  v11 = type metadata accessor for TranslatedEntityTriple(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = *(a1 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  while (v16 != v15)
  {
    sub_1C4471BAC(a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v15, v14);
    sub_1C44EC3C8();
    sub_1C440BAA8(v6, 0, 1, v7);
    sub_1C44BCC4C(v14, type metadata accessor for TranslatedEntityTriple);
    if (sub_1C44157D4(v6, 1, v7) == 1)
    {
      sub_1C4420C3C(v6, &qword_1EC0BDFE8, &qword_1C4F54070);
      ++v15;
    }

    else
    {
      v26 = type metadata accessor for ConstructionEventTriple;
      v27 = v2;
      v17 = v28;
      sub_1C44856C8(v6, v28);
      sub_1C44856C8(v17, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458DA98(0, *(v31 + 16) + 1, 1, v31);
        v31 = v22;
      }

      v19 = *(v31 + 16);
      v18 = *(v31 + 24);
      v20 = (v19 + 1);
      if (v19 >= v18 >> 1)
      {
        v26 = (v19 + 1);
        sub_1C458DA98(v18 > 1, v19 + 1, 1, v31);
        v20 = v26;
        v31 = v23;
      }

      ++v15;
      v21 = v31;
      *(v31 + 16) = v20;
      sub_1C44856C8(v30, v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19);
      v2 = v27;
    }
  }

  return v31;
}

uint64_t sub_1C4B58678(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1C4F02828();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1C4F01728();
        *(v12 + 16) = v11;
      }

      v13 = (a2)(0);
      sub_1C43FBD18(v13);
      sub_1C43FC354();
      v15[0] = v12 + v14;
      v15[1] = v11;
      a3(v15, v16, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1C4B587CC(uint64_t a1)
{
  result = sub_1C44B95C0(&qword_1EDDF4650, type metadata accessor for StandardEntityFusion, &protocol conformance descriptor for StandardEntityFusion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B58824(uint64_t a1)
{
  result = sub_1C44B95C0(&qword_1EDDF4660, type metadata accessor for StandardEntityFusion, &protocol conformance descriptor for StandardEntityFusion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B588A4(uint64_t a1)
{
  result = type metadata accessor for PhaseStores(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Source(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B58D70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C456902C(a3, a4);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4B58F44()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C4B59000()
{
  result = v1;
  *(v2 - 304) = v0;
  return result;
}

uint64_t sub_1C4B59030()
{
  *(v4 - 184) = v0;
  *(v4 - 176) = v3;
  *(v4 - 208) = v1;
  *(v4 - 200) = v2;

  return sub_1C4EFB298();
}

uint64_t sub_1C4B5904C()
{
  v4 = *(v2 - 192);

  return sub_1C44856C8(v4, v1 + v0);
}

uint64_t sub_1C4B59064()
{
  v3 = *(v1 - 192);

  return sub_1C44856C8(v0, v3);
}

uint64_t sub_1C4B59094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 144) = a1;
  *(v2 - 136) = a2;
  return v2 - 168;
}

uint64_t sub_1C4B590DC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v205 = a4;
  v191 = sub_1C456902C(&qword_1EC0B8A60, &unk_1C4F0DE80);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  sub_1C43FCE30(v12);
  v13 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v14 = sub_1C43FBD18(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  sub_1C43FD2C8(v19);
  v195 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  sub_1C43FCE30(v24);
  v25 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v26 = sub_1C43FBD18(v25);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  sub_1C43FD2C8(v31);
  v199 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v198 = v36;
  sub_1C43FBE44();
  v37 = sub_1C4EF97E8();
  sub_1C43FCDF8();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD2D8();
  v197 = v41;
  v193 = a2;
  *&v202[0] = a2;
  *(&v202[0] + 1) = a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v42 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v42)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v202, 0, sizeof(v202));
  }

  sub_1C4441540();
  v43 = v205;
  if (v44)
  {
    sub_1C4461BB8(0, &unk_1EDDF0380, 0x1E695DEC8);
    if (swift_dynamicCast())
    {
      v173 = v37;
      v45 = v197;
      v174 = v201;
      sub_1C4F01E58();
      v178 = (v33 + 32);
      v175 = (v33 + 16);
      v196 = MEMORY[0x1E69E7CC0];
      v176 = (v33 + 8);
      v46 = v194;
      v47 = &off_1E81F1000;
      while (1)
      {
        v48 = v45;
        sub_1C4EF97D8(&v203);
        if (!v204)
        {
LABEL_63:
          sub_1C43FFB20();
          v130(v45, v173);

          return v196;
        }

        sub_1C44482AC(&v203, v202);
        sub_1C4461BB8(0, &qword_1EC0C3548, 0x1E695DF20);
        if (!swift_dynamicCast())
        {

          if (qword_1EDDFD028 != -1)
          {
            goto LABEL_86;
          }

          goto LABEL_65;
        }

        v49 = v201;
        v201 = 0x6F697469646E6F63;
        v50 = sub_1C4F029C8();
        v51 = sub_1C4413F98(v50);
        sub_1C441D28C();
        swift_unknownObjectRelease();
        if (v45)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          v201 = 0;
        }

        sub_1C441DE78();
        if (!v52)
        {
          break;
        }

        sub_1C445FEB0();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_19;
        }

        v48 = *(&v200 + 1);
        if (!a5)
        {

          goto LABEL_19;
        }

        v33 = sub_1C4B5BC4C(v200, *(&v200 + 1), v43, a5);

        if (v33)
        {
          v53 = 1;
LABEL_21:
          v54 = sub_1C4F029C8();
          v55 = sub_1C4413F98(v54);
          sub_1C441D28C();
          swift_unknownObjectRelease();
          if (v48)
          {
            sub_1C4F02078();
            swift_unknownObjectRelease();
          }

          sub_1C441DE78();
          if (!v56)
          {
            sub_1C4420C3C(v202, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_69:

            v46 = v173;
            v43 = v39;
            if (qword_1EDDFD028 != -1)
            {
              sub_1C4419274();
              swift_once();
            }

            v145 = sub_1C4F00978();
            sub_1C43FCEE8(v145, qword_1EDE2DE10);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v146 = sub_1C4F00968();
            sub_1C4F01CD8();

            if (sub_1C43FD09C())
            {
LABEL_76:
              sub_1C43FECF0();
              v149 = swift_slowAlloc();
              sub_1C43FEC60();
              v150 = swift_slowAlloc();
              sub_1C442A9F4(v150);
              *v149 = 136315138;
              *(v149 + 4) = sub_1C4415C88();
              sub_1C441253C();
              _os_log_impl(v151, v152, v153, v154, v149, 0xCu);
              sub_1C440962C(v33);
              v155 = sub_1C43FEDE8();
              MEMORY[0x1C6942830](v155);
              v156 = sub_1C43FEF7C();
              MEMORY[0x1C6942830](v156);
            }

LABEL_77:

            v142 = v174;
            sub_1C45CF650();
            sub_1C441C114();
            v157 = swift_allocError();
            sub_1C44060DC(v157, v158);
            swift_willThrow();

            goto LABEL_78;
          }

          sub_1C445FEB0();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_69;
          }

          v177 = v53;
          v43 = *(&v200 + 1);
          v202[0] = v200;
          v201 = 47;
          sub_1C4415EA8();
          v33 = sub_1C4F01FC8();
          *&v202[0] = 0x6156746567726174;
          *(&v202[0] + 1) = 0xEB0000000065756CLL;
          v57 = [v49 v47[139]];
          swift_unknownObjectRelease();
          if (v57)
          {
            sub_1C4F02078();
            swift_unknownObjectRelease();
          }

          else
          {
            v201 = 0;
          }

          sub_1C441DE78();
          if (v58)
          {
            sub_1C445FEB0();
            swift_dynamicCast();
          }

          else
          {
            sub_1C4420C3C(v202, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          }

          if (!*(v33 + 16))
          {
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            sub_1C4419274();
            swift_once();
LABEL_65:
            v131 = sub_1C4F00978();
            sub_1C43FCEE8(v131, qword_1EDE2DE10);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v132 = sub_1C4F00968();
            sub_1C4F01CD8();

            sub_1C43FD09C();
            sub_1C440C75C();
            if (v133)
            {
              sub_1C43FECF0();
              v134 = swift_slowAlloc();
              sub_1C43FEC60();
              v135 = swift_slowAlloc();
              sub_1C442A9F4(v135);
              *v134 = 136315138;
              *(v134 + 4) = sub_1C4415C88();
              sub_1C441253C();
              _os_log_impl(v136, v137, v138, v139, v134, 0xCu);
              sub_1C440962C(v33);
              v140 = sub_1C43FEDE8();
              MEMORY[0x1C6942830](v140);
              v141 = sub_1C43FEF7C();
              MEMORY[0x1C6942830](v141);
            }

            v142 = v174;
            sub_1C45CF650();
            sub_1C441C114();
            v143 = swift_allocError();
            sub_1C44046C4(v143, v144);
            swift_willThrow();
LABEL_78:

            return (*(v43 + 8))(v197, v46);
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v59 = sub_1C4404C28();
          MEMORY[0x1C693D840](v59);
          sub_1C440175C(v46, 1, v199);
          if (v60)
          {

            sub_1C4420C3C(v46, &qword_1EC0B9A08, &unk_1C4F107B0);
            if (qword_1EDDFD028 != -1)
            {
              sub_1C4419274();
              swift_once();
            }

            v147 = sub_1C4F00978();
            sub_1C43FCEE8(v147, qword_1EDE2DE10);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v146 = sub_1C4F00968();
            sub_1C4F01CD8();

            sub_1C43FD09C();
            sub_1C440C75C();
            if (v148)
            {
              goto LABEL_76;
            }

            goto LABEL_77;
          }

          v61 = *v178;
          (*v178)(v198, v46, v199);
          v62 = *(v33 + 16);
          if (v62 == 2)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C445140C();
            sub_1C4404C28();
            sub_1C4EFD2E8();
            sub_1C440175C(v61, 1, v195);
            if (v60)
            {
              sub_1C4420C3C(v61, &qword_1EC0B8568, &unk_1C4F319B0);
              sub_1C44185A0();
              sub_1C4F02248();
              sub_1C4458568();
              MEMORY[0x1C6940380](v33, MEMORY[0x1E69E6158]);
              sub_1C4440AAC();
              v171 = sub_1C4402CD0();
              MEMORY[0x1C6940010](v171);

              sub_1C4435CD4();
              goto LABEL_90;
            }

            sub_1C4402C08();
            v62 = v189;
            v82 = sub_1C43FBC98();
            v83(v82);
            sub_1C4402C08();
            v84 = sub_1C43FD024();
            v85(v84);
            sub_1C43FBD94();
            sub_1C440BAA8(v86, v87, v88, v195);
            sub_1C43FCF64();
            sub_1C440BAA8(v89, v90, v91, v199);
            sub_1C4422BB4();
            v33 = v190 + v92;
            sub_1C4402C08();
            v93(v190, v198, v199);
            sub_1C44CDA30(v185, v190 + v189, &qword_1EC0B8568, &unk_1C4F319B0);
            sub_1C44CDA30(v184, v61 + v190, &qword_1EC0B9A08, &unk_1C4F107B0);
            sub_1C440BF8C();
            *v33 = v95;
            *(v33 + 8) = v94;
            v79 = v196;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C43FCEC0();
              sub_1C458AE00();
              v79 = v113;
            }

            v43 = v205;
            v47 = &off_1E81F1000;
            sub_1C4418BF0();
            v46 = v194;
            if (v80)
            {
              sub_1C443F384();
              sub_1C458AE00();
              v196 = v114;
            }

            sub_1C4402C08();
            v96(v189, v195);
            sub_1C4402C08();
            v97(v198, v199);
          }

          else if (v62 == 3)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4404C28();
            v64 = v63;
            sub_1C4EFD2E8();
            sub_1C440175C(v64, 1, v195);
            if (v60)
            {
              sub_1C4420C3C(v64, &qword_1EC0B8568, &unk_1C4F319B0);
              sub_1C44185A0();
              sub_1C4F02248();
              sub_1C4458568();
              MEMORY[0x1C6940380](v33, MEMORY[0x1E69E6158]);
              sub_1C4440AAC();
              v170 = sub_1C4402CD0();
              MEMORY[0x1C6940010](v170);

              sub_1C4435CD4();
LABEL_90:
              result = sub_1C4F024A8();
              __break(1u);
              return result;
            }

            sub_1C4402C08();
            v65(v192, v64, v195);
            if (*(v33 + 16) < 3uLL)
            {
              goto LABEL_85;
            }

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v66 = sub_1C4404C28();
            MEMORY[0x1C693D840](v66);
            v62 = v199;
            sub_1C440175C(v181, 1, v199);
            if (v60)
            {
              sub_1C4420C3C(v181, &qword_1EC0B9A08, &unk_1C4F107B0);
              sub_1C44185A0();
              sub_1C4F02248();
              MEMORY[0x1C6940010](0xD000000000000047, 0x80000001C4FB2B50);
              MEMORY[0x1C6940380](v33, MEMORY[0x1E69E6158]);
              sub_1C4440AAC();
              v169 = sub_1C4402CD0();
              MEMORY[0x1C6940010](v169);

              sub_1C4435CD4();
              goto LABEL_90;
            }

            v61(v187, v181, v199);
            sub_1C4402C08();
            v67(v183, v192, v195);
            sub_1C43FBD94();
            sub_1C440BAA8(v68, v69, v70, v195);
            v71 = *v175;
            (*v175)(v182, v187, v199);
            sub_1C43FBD94();
            sub_1C440BAA8(v72, v73, v74, v199);
            v75 = v191[12];
            v172 = v191[16];
            v76 = (v188 + v191[20]);
            v71(v188, v198, v199);
            sub_1C44CDA30(v183, v188 + v75, &qword_1EC0B8568, &unk_1C4F319B0);
            sub_1C44CDA30(v182, v188 + v172, &qword_1EC0B9A08, &unk_1C4F107B0);
            sub_1C440BF8C();
            *v76 = v78;
            v76[1] = v77;
            v79 = v196;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C43FCEC0();
              sub_1C458AE00();
              v79 = v115;
            }

            v43 = v205;
            sub_1C4418BF0();
            v46 = v194;
            if (v80)
            {
              sub_1C443F384();
              sub_1C458AE00();
              v196 = v116;
            }

            v33 = *v176;
            (*v176)(v187, v199);
            sub_1C4402C08();
            v81(v192, v195);
            (v33)(v198, v199);
            v47 = &off_1E81F1000;
          }

          else
          {

            if (v62 != 1)
            {

              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v159 = sub_1C4F00978();
              sub_1C43FCEE8(v159, qword_1EDE2DE10);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v160 = sub_1C4F00968();
              v161 = sub_1C4F01CD8();

              os_log_type_enabled(v160, v161);
              sub_1C440C75C();
              if (v162)
              {
                sub_1C43FECF0();
                v163 = swift_slowAlloc();
                sub_1C43FEC60();
                v164 = swift_slowAlloc();
                sub_1C442A9F4(v164);
                *v163 = 136315138;
                *(v163 + 4) = sub_1C4415C88();
                _os_log_impl(&dword_1C43F8000, v160, v161, "Mapping error no predicates for %s", v163, 0xCu);
                sub_1C440962C(v33);
                v165 = sub_1C43FEDE8();
                MEMORY[0x1C6942830](v165);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              sub_1C45CF650();
              sub_1C441C114();
              v166 = swift_allocError();
              sub_1C44046C4(v166, v167);
              swift_willThrow();

              sub_1C4402C08();
              v168(v198, v199);
              return (*(*(&v200 + 1) + 8))(v197, v46);
            }

            sub_1C43FCF64();
            sub_1C440BAA8(v98, v99, v100, v195);
            sub_1C43FCF64();
            sub_1C440BAA8(v101, v102, v103, v199);
            sub_1C4422BB4();
            v33 = v186 + v104;
            sub_1C4402C08();
            v105(v186, v198, v199);
            sub_1C44CDA30(v180, v186 + 1, &qword_1EC0B8568, &unk_1C4F319B0);
            sub_1C44CDA30(v179, v61 + v186, &qword_1EC0B9A08, &unk_1C4F107B0);
            sub_1C440BF8C();
            *v33 = v107;
            *(v33 + 8) = v106;
            v79 = v196;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C43FCEC0();
              sub_1C458AE00();
              v79 = v117;
            }

            v43 = v205;
            v47 = &off_1E81F1000;
            sub_1C4418BF0();
            v46 = v194;
            if (v80)
            {
              sub_1C443F384();
              sub_1C458AE00();
              v196 = v118;
            }

            sub_1C4402C08();
            v108(v198, v199);
          }

          *(v196 + 16) = v79;
          sub_1C43FBF6C();
          sub_1C44CDA30(v112, v110 + v109 + *(v111 + 72) * v62, &qword_1EC0B8A60, &unk_1C4F0DE80);
          v45 = v197;
          if (v177)
          {
            goto LABEL_63;
          }
        }

        else
        {
        }
      }

      sub_1C4420C3C(v202, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_19:
      v53 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1C4420C3C(&v203, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v119 = sub_1C4F00978();
  sub_1C442B738(v119, qword_1EDE2DE10);
  sub_1C441D28C();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v120 = sub_1C4F00968();
  sub_1C4F01CD8();

  if (sub_1C43FD09C())
  {
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C443019C();
    v121 = swift_slowAlloc();
    sub_1C442A4E4(v121);
    *a3 = 136315138;
    *(a3 + 4) = sub_1C441D828(v193, a3, &v203);
    sub_1C441253C();
    _os_log_impl(v122, v123, v124, v125, a3, 0xCu);
    sub_1C440962C(v21);
    v126 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v126);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C45CF650();
  sub_1C441C114();
  v127 = swift_allocError();
  sub_1C44046C4(v127, v128);
  return swift_willThrow();
}

uint64_t (*sub_1C4B5A6C0())()
{
  v1 = sub_1C443473C();
  v2 = sub_1C4A9A30C(v1);
  sub_1C44507F8(v2);
  v0[4] = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v0[5] = v3;
  v5 = sub_1C4A9A30C(*(v4 + 64));
  v6 = sub_1C442E584(v5);
  v7(v6);
  v8 = sub_1C4404B44();
  v0[7] = sub_1C4B60BE8(v8, v9);
  return sub_1C4B62170;
}

uint64_t (*sub_1C4B5A788())()
{
  v1 = sub_1C443473C();
  v2 = sub_1C4A9A30C(v1);
  sub_1C44507F8(v2);
  v0[4] = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v0[5] = v3;
  v5 = sub_1C4A9A30C(*(v4 + 64));
  v6 = sub_1C442E584(v5);
  v7(v6);
  v8 = sub_1C4404B44();
  v0[7] = sub_1C4B60D04(v8, v9);
  return sub_1C4B62170;
}

uint64_t (*sub_1C4B5A850())()
{
  v1 = sub_1C443473C();
  v2 = sub_1C4A9A30C(v1);
  sub_1C44507F8(v2);
  v0[4] = sub_1C4EF9DD8();
  sub_1C43FCDF8();
  v0[5] = v3;
  v5 = sub_1C4A9A30C(*(v4 + 64));
  v6 = sub_1C442E584(v5);
  v7(v6);
  v8 = sub_1C4404B44();
  v0[7] = sub_1C4B60E20(v8, v9);
  return sub_1C4B5A918;
}

void sub_1C4B5A91C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = sub_1C4401EF4();
  v6(v5);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t (*sub_1C4B5A990(void *a1, uint64_t a2))()
{
  v4 = sub_1C4A9A30C(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1C4B60FD4(v4, a2);
  return sub_1C4B5A9F4;
}

uint64_t (*sub_1C4B5A9F8(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1C4A9A30C(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1C4B61068(v6, a2, a3);
  return sub_1C4B62174;
}

void sub_1C4B5AA6C(void **a1)
{
  v1 = *a1;
  v2 = sub_1C4401EF4();
  v3(v2);

  free(v1);
}

uint64_t SourceEntityMappable.constructPropertyRows(source:sourceId:map:basicProperties:nestedSourceId:pipelineType:)(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v168 = a7;
  v167 = a6;
  v170 = a5;
  v186 = a3;
  v184 = a2;
  v190 = a1;
  v14 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FBD08();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  sub_1C43FD2C8(v19);
  v175 = sub_1C4F00DD8();
  sub_1C43FCDF8();
  v174 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v22);
  v177 = sub_1C4F00DC8();
  sub_1C43FCDF8();
  v176 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  sub_1C43FD2C8(v26);
  sub_1C4F01188();
  sub_1C43FCDF8();
  v182 = v28;
  v183 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v157[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v185 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v157[-v35];
  v181 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v180 = v37;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  sub_1C43FCE30(v40);
  v169 = *a8;
  v41 = *(a10 + 32);
  v191 = a9;
  v188 = a10 + 32;
  v189 = a10;
  v187 = v41;
  *&v193 = v41(a9, a10);
  *(&v193 + 1) = v42;
  v43 = [a4 __swift_objectForKeyedSubscript_];
  sub_1C441D28C();
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v193 = 0u;
    v194 = 0u;
  }

  sub_1C4441540();
  if (!v44)
  {
    sub_1C4420C3C(&v195, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  v45 = sub_1C4461BB8(0, &qword_1EC0C3548, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v67 = sub_1C4F00978();
    sub_1C442B738(v67, qword_1EDE2DE10);
    (*(v14 + 16))(v17, v11, v191);
    v68 = sub_1C4F00968();
    sub_1C4F01CD8();
    v69 = sub_1C44016D0();
    if (os_log_type_enabled(v69, v70))
    {
      sub_1C43FECF0();
      v71 = swift_slowAlloc();
      sub_1C43FEC60();
      v72 = swift_slowAlloc();
      sub_1C442A4E4(v72);
      *v71 = 136315138;
      v73 = v191;
      v74 = v187(v191, v189);
      v76 = v75;
      (*(v14 + 8))(v17, v73);
      sub_1C441D828(v74, v76, &v195);
      sub_1C441D28C();

      *(v71 + 4) = v74;
      sub_1C4B62180(&dword_1C43F8000, v77, v78, "Mapping error, missing submap for %s");
      sub_1C440962C(a4);
      v79 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v79);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      (*(v14 + 8))(v17, v191);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v80 = swift_allocError();
    sub_1C44046C4(v80, v81);
    swift_willThrow();
    v82 = v190;
    goto LABEL_17;
  }

  v160 = v45;
  v164 = v14;
  v46 = v192;
  v47 = *(type metadata accessor for Source(0) + 24);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v166 = v46;
  v48 = sub_1C4F00978();
  v49 = sub_1C442B738(v48, qword_1EDE2DE10);
  v50 = *(v32 + 16);
  v51 = v190;
  v163 = v47;
  v52 = v190 + v47;
  v53 = v185;
  v162 = v32 + 16;
  v161 = v50;
  v50(v36, v52, v185);
  v54 = v186;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v165 = v49;
  v55 = sub_1C4F00968();
  v56 = sub_1C4F01CB8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = v53;
    v58 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v195 = v159;
    *v58 = 136381187;
    v59 = v184;
    *(v58 + 4) = sub_1C441D828(v184, v186, &v195);
    *(v58 + 12) = 2080;
    sub_1C4426E60();
    sub_1C44CD2C8(v60, v61, MEMORY[0x1E69A92F8]);
    v158 = v56;
    v62 = sub_1C4F02858();
    v63 = v11;
    v65 = v64;
    (*(v32 + 8))(v36, v57);
    v66 = sub_1C441D828(v62, v65, &v195);
    v11 = v63;

    *(v58 + 14) = v66;
    *(v58 + 22) = 1024;
    *(v58 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v55, v158, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v58, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v54 = v186;
    v51 = v190;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v87 = sub_1C4402CD0();
    v88(v87);
    v59 = v184;
  }

  v89 = *v51;
  v90 = v51[1];
  v195 = v59;
  v196 = v54;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v89, v90);
  v92 = v195;
  v91 = v196;
  sub_1C4F01178();
  v93 = sub_1C4F01148();
  v95 = v94;
  (*(v182 + 8))(v30, v183);
  if (v95 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v96 = sub_1C4F00968();
    v97 = sub_1C4F01CD8();

    if (os_log_type_enabled(v96, v97))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C443019C();
      v98 = swift_slowAlloc();
      sub_1C442A4E4(v98);
      *v59 = 136380675;
      v99 = sub_1C441D828(v92, v91, &v195);

      *(v59 + 4) = v99;
      _os_log_impl(&dword_1C43F8000, v96, v97, "Source: failed to encode identifier as UTF8 data: %{private}s", v59, 0xCu);
      sub_1C440962C(v93);
      v100 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v100);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v126 = v164;
    v127 = v178;
    (*(v164 + 16))(v178, v11, v191);
    v128 = sub_1C4F00968();
    sub_1C4F01CD8();
    v129 = sub_1C44016D0();
    if (os_log_type_enabled(v129, v130))
    {
      sub_1C43FECF0();
      v131 = swift_slowAlloc();
      sub_1C43FEC60();
      v132 = swift_slowAlloc();
      sub_1C442A4E4(v132);
      *v131 = 136315138;
      v133 = v187(v191, v189);
      v135 = v134;
      v136 = sub_1C43FCE84();
      v137(v136);
      sub_1C441D828(v133, v135, &v195);
      sub_1C441D28C();

      *(v131 + 4) = v133;
      sub_1C4B62180(&dword_1C43F8000, v138, v139, "Mapping error, failed to generate EntityIdentifier for %s");
      sub_1C440962C(v93);
      v140 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v140);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      (*(v126 + 8))(v127, v191);
    }

    return MEMORY[0x1E69E7CC0];
  }

  sub_1C441641C();
  sub_1C44CD2C8(v101, v102, MEMORY[0x1E6966618]);
  v103 = v172;
  v104 = v175;
  sub_1C43FD024();
  sub_1C4F00DB8();
  v105 = sub_1C4462494();
  sub_1C44344B8(v105, v106);
  v107 = sub_1C4462494();
  sub_1C4498FD8(v107, v108, v103);
  v109 = sub_1C4462494();
  sub_1C441DFEC(v109, v110);
  v111 = v173;
  sub_1C43FD024();
  sub_1C4F00DA8();
  sub_1C43FFB20();
  v112(v103, v104);
  v161(v171, v51 + v163, v185);
  sub_1C445140C();
  v113 = sub_1C4404B44();
  v114 = v177;
  v115(v113);
  sub_1C4EFF028();
  v116 = sub_1C4462494();
  sub_1C441DFEC(v116, v117);
  (*(v103 + 8))(v111, v114);
  v118 = v179;
  v119 = sub_1C440DE18();
  v120(v119);
  sub_1C442023C();
  *&v193 = v121;
  *(&v193 + 1) = v122;
  v123 = sub_1C4F029C8();
  v124 = v166;
  v125 = [v166 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v125)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    v193 = 0u;
    v194 = 0u;
  }

  v141 = v186;
  sub_1C4441540();
  v82 = v190;
  if (!v142)
  {
    sub_1C4420C3C(&v195, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_38;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    LOBYTE(v195) = v169;
    v143 = SourceEntityMappable.constructRows(entityIdentifier:source:sourceId:map:basicProperties:pipelineType:)(v118, v82, v184, v141, v124, v170, &v195);
    goto LABEL_36;
  }

  if (v168)
  {
    LOBYTE(v195) = v169;
    sub_1C4B5D764(v167, v168, v124, v118, v184, v141, v82, v170, &v195, v191, v189);
LABEL_36:
    v85 = v143;
    v144 = sub_1C441B048();
    v145(v144);

    return v85;
  }

  v146 = sub_1C4F00968();
  sub_1C4F01CD8();
  v147 = sub_1C44016D0();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    *v149 = 0;
    sub_1C441253C();
    _os_log_impl(v150, v151, v152, v153, v149, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C45CF650();
  sub_1C441C114();
  v80 = swift_allocError();
  sub_1C44060DC(v80, v154);
  swift_willThrow();

  v155 = sub_1C441B048();
  v156(v155);
LABEL_17:
  v83 = v82[1];
  v195 = *v82;
  v196 = v83;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](32, 0xE100000000000000);
  v84 = v187(v191, v189);
  MEMORY[0x1C6940010](v84);

  sub_1C4B5B968(v80);

  return MEMORY[0x1E69E7CC0];
}

void sub_1C4B5B968(void *a1)
{
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = a1;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    sub_1C4423808();
    v22 = swift_slowAlloc();
    *v1 = 136380931;
    v7 = sub_1C4404C28();
    *(v1 + 4) = sub_1C441D828(v7, v8, v9);
    *(v1 + 12) = 2080;
    v10 = a1;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v11 = sub_1C4F01198();
    v13 = sub_1C441D828(v11, v12, &v22);

    *(v1 + 14) = v13;
    _os_log_impl(&dword_1C43F8000, v5, v6, "Mapping error attempting to construct rows for %{private}s due to: %s", v1, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v14, v15);
    v16 = sub_1C43FEDE8();
    MEMORY[0x1C6942830](v16);
  }

  v17 = sub_1C4F01108();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  v22 = a1;
  v19 = a1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C4F01198();
  v20 = sub_1C4F01108();

  *(inited + 48) = v20;
  *(inited + 56) = 0x747865746E6F63;
  *(inited + 64) = 0xE700000000000000;
  sub_1C4404C28();
  *(inited + 72) = sub_1C4F01108();
  sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
  sub_1C4F00F28();
  v21 = sub_1C4F00EC8();

  AnalyticsSendEvent();
}

uint64_t sub_1C4B5BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4415EA8();
  result = sub_1C4F01FC8();
  v5 = *(result + 16);
  if (v5 < 3)
  {
    v23 = 0;
LABEL_50:

    return v23;
  }

  v24 = result;
  v6 = (result + 88);
  v7 = 3;
  v8 = 31868;
  v9 = 0xE200000000000000;
  v10 = *(result + 16);
  while ((v7 - 2) < v10)
  {
    if ((v7 - 1) >= v10)
    {
      goto LABEL_52;
    }

    v11 = *(v6 - 5);
    v12 = *(v6 - 4);
    v13 = *(v6 - 3);
    v14 = *(v6 - 2);
    v15 = v11 == 15649 && v12 == 0xE200000000000000;
    if (v15 || (result = sub_1C4F02938(), (result & 1) != 0))
    {
      v16 = v8 == 31868 && v9 == 0xE200000000000000;
      if (v16 || (result = sub_1C4F02938(), (result & 1) != 0))
      {
        if (v13 != a3 || v14 != a4)
        {
          result = sub_1C4F02938();
          if ((result & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_42;
      }

LABEL_37:
      if (v8 != 9766 || v9 != 0xE200000000000000)
      {
        result = sub_1C4F02938();
      }

      goto LABEL_42;
    }

    v18 = v11 == 15677 && v12 == 0xE200000000000000;
    if (v18 || (result = sub_1C4F02938(), (result & 1) != 0))
    {
      if (v8 != 31868 || v9 != 0xE200000000000000)
      {
        result = sub_1C4F02938();
        if ((result & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v20 = v13 == a3 && v14 == a4;
      if (v20 || (result = sub_1C4F02938(), (result & 1) != 0))
      {
LABEL_48:
        v23 = 1;
        goto LABEL_49;
      }
    }

LABEL_42:
    if (v7 < v5)
    {

      v10 = *(v24 + 16);
      if (v7 >= v10)
      {
        goto LABEL_53;
      }

      v8 = *(v6 - 1);
      v9 = *v6;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v22 = v7 + 3;
    v7 += 4;
    v6 += 8;
    if (v22 >= v5)
    {
      v23 = 0;
LABEL_49:

      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t SourceEntityMappable.constructRows(entityIdentifier:source:sourceId:map:basicProperties:pipelineType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unsigned __int8 *a7)
{
  v8 = v7;
  v314 = a5;
  v299 = a3;
  v300 = a4;
  v298 = a2;
  v302 = a1;
  type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v289 = v12;
  v290 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v287 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v286 = v15;
  sub_1C43FBE44();
  v304 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v285 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v288 = v18;
  sub_1C43FBE44();
  v301 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  *&v284 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v282 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  v294 = v23;
  v24 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v25 = sub_1C43FBD18(v24);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBD08();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  v296 = v30;
  sub_1C43FBE44();
  v311 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v283 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v281 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v291 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v280 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  v279 = v39;
  v40 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  v41 = sub_1C43FBD18(v40);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  v293 = v42;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v278 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  v305 = v46;
  v47 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v48 = sub_1C43FBD18(v47);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  v292 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v276 - v51;
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FD230();
  v303 = v54;
  sub_1C43FBE44();
  v55 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBFDC();
  v317 = v59;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FD230();
  v312 = v61;
  v62 = sub_1C43FBE44();
  type metadata accessor for MapPredicate(v62);
  sub_1C43FCDF8();
  v330 = v63;
  v331 = v64;
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBFDC();
  v306 = v65;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBF38();
  v310 = v67;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBF38();
  v329 = v69;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v70);
  v72 = (&v276 - v71);
  sub_1C456902C(&qword_1EC0B8A60, &unk_1C4F0DE80);
  sub_1C43FCDF8();
  v308 = v74;
  v309 = v73;
  MEMORY[0x1EEE9AC00](v73);
  v328 = &v276 - v75;
  v297 = *a7;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C443FFB0();
  sub_1C44CD2C8(v76, v77, MEMORY[0x1E69A9758]);
  v332 = v55;
  v78 = 0;
  v340 = sub_1C4F00F28();
  v313 = a6 + 32;
  v315 = *(a6 + 16);
  v323 = (v57 + 32);
  v318 = (v57 + 16);
  v319 = v52;
  v307 = (v57 + 8);
  v295 = v28;
  while (v78 != v315)
  {
    v79 = (v313 + (v78 << 6));
    v80 = v79[1];
    *&v339[16] = v79[2];
    *&v339[25] = *(v79 + 41);
    v81 = v79[1];
    v338 = *v79;
    *v339 = v81;
    v82 = *&v339[16];
    v83 = v338;
    v333[0] = v338;
    v333[1] = v80;
    v333[2] = v79[2];
    v84 = *&v339[32];
    LODWORD(v322) = v339[40];
    sub_1C45D17A0(&v338, v336);
    v85 = sub_1C4B590DC(v314, v83, *(&v83 + 1), v82, *(&v82 + 1));
    if (v8)
    {
      sub_1C4435424();
      v337 = v84;
      sub_1C44419D8();
    }

    v321 = v78;
    if (*(v85 + 16))
    {
      v320 = 0;
      v327 = v309[12];
      v326 = v309[16];
      v86 = v329;
      *&v325 = v328 + v309[20];
      sub_1C43FBF6C();
      v316 = v88;
      v90 = v88 + v89;
      v324 = *(v91 + 72);
      v92 = MEMORY[0x1E69E7CC0];
      do
      {
        v341 = v87;
        v93 = v92;
        v94 = v72;
        v95 = v328;
        sub_1C4460108(v90, v328, &qword_1EC0B8A60, &unk_1C4F0DE80);
        v96 = *v325;
        v97 = *(v325 + 8);
        v98 = v330;
        (*v323)(v94 + *(v330 + 20), v95, v332);
        sub_1C44CDA30(v95 + v327, v94 + *(v98 + 24), &qword_1EC0B8568, &unk_1C4F319B0);
        v99 = v95 + v326;
        v72 = v94;
        v92 = v93;
        sub_1C44CDA30(v99, v72 + *(v98 + 28), &qword_1EC0B9A08, &unk_1C4F107B0);
        *v72 = v96;
        v72[1] = v97;
        sub_1C4432A3C();
        sub_1C4B62114(v72, v86);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1C43FCEC0();
          sub_1C458AE3C(v104, v105, v106, v93);
          v92 = v107;
        }

        v101 = *(v92 + 16);
        v100 = *(v92 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_1C458AE3C(v100 > 1, v101 + 1, 1, v92);
          v92 = v108;
        }

        sub_1C4B2A2F8(v72, type metadata accessor for MapPredicate);
        *(v92 + 16) = v101 + 1;
        sub_1C43FBF6C();
        v86 = v329;
        sub_1C4B61D90(v329, v92 + v102 + *(v103 + 72) * v101);
        v90 += v324;
        v87 = v341 - 1;
      }

      while (v341 != 1);

      v8 = v320;
    }

    else
    {

      v92 = MEMORY[0x1E69E7CC0];
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v52 = v319;
    v109 = v312;
    if (*(v92 + 16))
    {
      sub_1C4432A3C();
      v111 = v310;
      sub_1C4B62114(v92 + v110, v310);

      v112 = *v318;
      (*v318)(v109, v111 + *(v330 + 20), v332);
      sub_1C4407A9C();
      sub_1C4B2A2F8(v111, v113);
      v114 = v340;
      if (!*(v340 + 16) || (sub_1C457AB64(), (v115 & 1) == 0))
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v336[0] = v114;
        sub_1C4660468();
        v340 = *&v336[0];
      }

      v116 = sub_1C440DE18();
      v112(v116);
      v118 = sub_1C4B5A6C0();
      if (*v117)
      {
        v119 = v117;
        sub_1C4435424();
        sub_1C4588D20();
        v120 = *(*v119 + 16);
        sub_1C4589918();
        v121 = *v119;
        *(v121 + 16) = v120 + 1;
        v122 = v121 + (v120 << 6);
        *(v122 + 32) = v336[0];
        *(v122 + 48) = v336[1];
        *(v122 + 64) = v336[2];
        *(v122 + 80) = v92;
        *(v122 + 88) = v322;
      }

      else
      {
        sub_1C4435424();
        v337 = v92;
        sub_1C44419D8();
      }

      (v118)(v334, 0);
      v123 = *v307;
      v124 = v332;
      (*v307)(v317, v332);
      v123(v109, v124);
    }

    else
    {
      sub_1C4435424();
      v337 = v92;
      sub_1C44419D8();
    }

    v78 = (v321 + 1);
  }

  v125 = v340 + 64;
  v126 = 1 << *(v340 + 32);
  v127 = -1;
  if (v126 < 64)
  {
    v127 = ~(-1 << v126);
  }

  v128 = v127 & *(v340 + 64);
  v310 = (v126 + 63) >> 6;
  v308 = v283 + 2;
  v315 = v283 + 4;
  v316 = v283 + 1;
  v321 = (v284 + 32);
  v323 = (v284 + 8);
  v324 = (v284 + 16);
  v312 = (v285 + 8);
  v313 = v285 + 32;
  v307 = (v285 + 16);
  v129 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v130 = 0;
  v131 = MEMORY[0x1E69E7CC0];
  *&v132 = 136380931;
  v284 = v132;
  v133 = v304;
  v309 = v129;
  v277 = v125;
LABEL_26:
  if (v128)
  {
    v328 = v131;
    v134 = v130;
    goto LABEL_32;
  }

  do
  {
    v134 = v130 + 1;
    if (__OFADD__(v130, 1))
    {
      goto LABEL_95;
    }

    if (v134 >= v310)
    {
      v272 = v131;

      return v272;
    }

    v128 = *(v125 + 8 * v134);
    ++v130;
  }

  while (!v128);
  v328 = v131;
LABEL_32:
  v135 = *(v129 + 56);
  v285 = v134;
  v136 = *(v135 + ((v134 << 9) | (8 * __clz(__rbit64(v128)))));
  sub_1C43FCF64();
  sub_1C440BAA8(v137, v138, v139, v311);
  sub_1C43FCF64();
  sub_1C440BAA8(v140, v141, v142, v133);
  v143 = v136;
  v144 = *(v136 + 16);
  v329 = v136;
  v341 = v144;
  if (!v144)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_43:
    v167 = 0;
    v128 &= v128 - 1;
    LODWORD(v314) = 1;
    v168 = 32;
    v133 = v304;
    v322 = v128;
    while (1)
    {
      if (v341 == v167)
      {

        sub_1C4420C3C(v305, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C4420C3C(v303, &qword_1EC0B8568, &unk_1C4F319B0);
        v130 = v285;
        v129 = v309;
        v131 = v328;
        v125 = v277;
        goto LABEL_26;
      }

      if (v167 >= *(v143 + 16))
      {
        goto LABEL_94;
      }

      v169 = *(v143 + v168);
      v170 = *(v143 + v168 + 16);
      v171 = *(v143 + v168 + 32);
      *&v339[25] = *(v143 + v168 + 41);
      *v339 = v170;
      *&v339[16] = v171;
      v338 = v169;
      v172 = *&v339[32];
      v334[0] = *(v143 + v168);
      v334[1] = *(v143 + v168 + 16);
      v334[2] = *(v143 + v168 + 32);
      v335 = *(v143 + v168 + 48);
      if (!*&v339[32])
      {
        sub_1C43FC8C0();
        v263 = sub_1C44146DC(v262);
        sub_1C45D17A0(v263, v264);
        sub_1C44E3634(v336);

        if (qword_1EDDFD028 != -1)
        {
          goto LABEL_100;
        }

        goto LABEL_87;
      }

      v326 = v168;
      v327 = v167;
      if (!*(*&v339[32] + 16))
      {
        sub_1C43FC8C0();
        v200 = sub_1C44146DC(v199);
        sub_1C45D17A0(v200, v201);
        sub_1C44E3634(v336);
        goto LABEL_79;
      }

      sub_1C4432A3C();
      sub_1C4B62114(v172 + v173, v306);
      v174 = v296;
      v175 = v301;
      v317 = *v324;
      v317(v296, v302, v301);
      sub_1C43FBD94();
      sub_1C440BAA8(v176, v177, v178, v175);
      v179 = v295;
      sub_1C4460108(v174, v295, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440175C(v179, 1, v175);
      if (v210)
      {
        sub_1C45D17A0(&v338, v336);

        sub_1C4420C3C(v179, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C45CF650();
        sub_1C441C114();
        swift_allocError();
        *v274 = 4;
        swift_willThrow();

        sub_1C4420C3C(v174, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v306, v275);
        sub_1C4420C3C(v305, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C4420C3C(v303, &qword_1EC0B8568, &unk_1C4F319B0);
        sub_1C43FC8C0();
        sub_1C4460B18();
      }

      v320 = v8;
      v180 = *&v339[24];
      v181 = *v339;
      v325 = *&v339[8];
      v182 = v179;
      v183 = v294;
      (*v321)(v294, v182, v175);
      sub_1C45D17A0(&v338, v333);
      v184 = sub_1C45CF6A4(v183, v298, v299, v300, v172, 0, v305, v181, v325, *(&v325 + 1), v180, v297);
      v185 = *v323;
      (*v323)(v183, v175);
      sub_1C4420C3C(v174, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C43FC8C0();
      sub_1C4460B18();
      v186 = v184[2];
      v187 = *(v328 + 16);
      v188 = v187 + v186;
      if (__OFADD__(v187, v186))
      {
        goto LABEL_96;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v190 = v328;
      if (!isUniquelyReferenced_nonNull_native || v188 > *(v328 + 24) >> 1)
      {
        if (v187 <= v188)
        {
          v191 = v187 + v186;
        }

        else
        {
          v191 = v187;
        }

        sub_1C44C9240(isUniquelyReferenced_nonNull_native, v191, 1, v328);
        v190 = v192;
      }

      v193 = v293;
      v194 = v184[2];
      v328 = v190;
      if (v194)
      {
        if ((*(v190 + 24) >> 1) - *(v190 + 16) < v186)
        {
          goto LABEL_98;
        }

        swift_arrayInitWithCopy();

        v195 = v292;
        if (v186)
        {
          v196 = *(v328 + 16);
          v197 = __OFADD__(v196, v186);
          v198 = v196 + v186;
          if (v197)
          {
            goto LABEL_99;
          }

          *(v328 + 16) = v198;
        }
      }

      else
      {

        v195 = v292;
        if (v186)
        {
          goto LABEL_97;
        }
      }

      sub_1C4460108(v303, v195, &qword_1EC0B8568, &unk_1C4F319B0);
      v202 = v311;
      sub_1C440175C(v195, 1, v311);
      if (v210)
      {
        sub_1C4407A9C();
        sub_1C4B2A2F8(v306, v203);

        sub_1C4420C3C(v195, &qword_1EC0B8568, &unk_1C4F319B0);
        v52 = v319;
        v8 = v320;
        v133 = v304;
        v128 = v322;
        goto LABEL_79;
      }

      v204 = v291;
      v205 = sub_1C440DE18();
      v206(v205);
      sub_1C4460108(v305, v193, &qword_1EC0B9A10, &qword_1C4F107C0);
      v207 = v193;
      v208 = v193;
      v209 = v202;
      v133 = v304;
      sub_1C440175C(v207, 1, v304);
      if (v210)
      {
        break;
      }

      v213 = v288;
      v214 = sub_1C440DE18();
      v215(v214);
      v216 = v133;
      v217 = v184[2];

      if (!v217)
      {
        (*v312)(v213, v216);
        sub_1C442F738();
        v235(v291, v311);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v306, v236);
        v8 = v320;
        v133 = v216;
LABEL_78:
        v52 = v319;
        v128 = v322;
        goto LABEL_79;
      }

      if ((v314 & 1) == 0)
      {
        v133 = v304;
        (*v312)(v288, v304);
        sub_1C442F738();
        v237(v291, v311);
        sub_1C4407A9C();
        sub_1C4B2A2F8(v306, v238);
        LODWORD(v314) = 0;
        goto LABEL_77;
      }

      v218 = v281;
      if (qword_1EDDFD028 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v219 = sub_1C4F00978();
      sub_1C43FCEE8(v219, qword_1EDE2DE10);
      v220 = v282;
      v221 = v301;
      v222 = v317;
      v317(v282, v302, v301);
      (v308->isa)(v218, v291, v311);
      v223 = sub_1C4F00968();
      v224 = sub_1C4F01CF8();
      if (os_log_type_enabled(v223, v224))
      {
        swift_slowAlloc();
        LODWORD(v314) = v224;
        sub_1C4423808();
        *&v325 = swift_slowAlloc();
        *&v333[0] = v325;
        *v224 = v284;
        sub_1C4400E48();
        sub_1C44CD2C8(&qword_1EDDFE810, v225, MEMORY[0x1E69A9840]);
        v283 = v223;
        v226 = v220;
        sub_1C4F02858();
        v227 = sub_1C43FBD30();
        v229 = v228;
        v185(v227, v221);
        sub_1C441D828(v226, v229, v333);
        sub_1C43FBD30();

        *(v224 + 4) = v226;
        *(v224 + 12) = 2080;
        v230 = sub_1C4EFD2F8();
        v232 = v231;
        v233 = sub_1C444C394();
        (v224)(v233);
        sub_1C441D828(v230, v232, v333);
        sub_1C43FBD30();

        *(v224 + 14) = v230;
        v234 = v283;
        _os_log_impl(&dword_1C43F8000, v283, v314, "StandardEntityMapper: constructRows relationship: %{private}s relPred isA %s", v224, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        v239 = sub_1C444C394();
        (v224)(v239);
        v185(v220, v221);
      }

      v240 = v304;
      v241 = v288;
      v242 = v286;
      v222(v286, v302, v221);
      v243 = v290;
      (*v318)(v242 + v290[5], v306 + *(v330 + 20), v332);
      (*v307)(v242 + v243[6], v241, v240);
      sub_1C4EFEBB8();
      v244 = sub_1C4EFD2F8();
      v246 = v245;
      sub_1C44137DC();
      sub_1C4B62114(v298, v242 + v247);
      v248 = (v242 + v243[8]);
      *v248 = v244;
      v248[1] = v246;
      v249 = (v242 + v243[10]);
      v250 = v300;
      *v249 = v299;
      v249[1] = v250;
      *(v242 + v243[11]) = 0;
      *(v242 + v243[12]) = v297;
      sub_1C4B62114(v242, v287);
      v252 = *(v328 + 16);
      v251 = *(v328 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v8 = v320;
      v128 = v322;
      if (v252 >= v251 >> 1)
      {
        v258 = sub_1C443F384();
        sub_1C44C9240(v258, v259, v260, v328);
        v328 = v261;
      }

      sub_1C4B2A2F8(v286, type metadata accessor for EntityTriple);
      v253 = v304;
      (*v312)(v288, v304);
      (v224)(v291, v311);
      sub_1C4407A9C();
      sub_1C4B2A2F8(v306, v254);
      *(v328 + 16) = v252 + 1;
      sub_1C43FBF6C();
      v133 = v253;
      sub_1C4B61D90(v287, v256 + v255 + *(v257 + 72) * v252);
      LODWORD(v314) = 0;
      v52 = v319;
LABEL_79:
      v168 = v326 + 64;
      v167 = v327 + 1;
      v143 = v329;
    }

    sub_1C442F738();
    v211(v204, v209);
    sub_1C4407A9C();
    sub_1C4B2A2F8(v306, v212);
    sub_1C4420C3C(v208, &qword_1EC0B9A10, &qword_1C4F107C0);
LABEL_77:
    v8 = v320;
    goto LABEL_78;
  }

  v145 = (v136 + 80);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v146 = 0;
  while (v146 < *(v143 + 16))
  {
    v147 = *v145;
    if (*v145 && *(v147 + 16))
    {
      sub_1C4460108(v147 + *(v330 + 24) + ((*(v331 + 80) + 32) & ~*(v331 + 80)), v52, &qword_1EC0B8568, &unk_1C4F319B0);
      sub_1C440175C(v52, 1, v311);
      if (!v210)
      {
        v151 = v303;
        v152 = sub_1C4404B44();
        sub_1C4420C3C(v152, v153, &unk_1C4F319B0);
        v154 = v279;
        v155 = v311;
        (v315->isa)(v279, v319, v311);
        isa = v308->isa;
        (v308->isa)(v151, v154, v155);
        sub_1C43FBD94();
        sub_1C440BAA8(v157, v158, v159, v155);
        isa(v280, v154, v155);
        v160 = v278;
        sub_1C4EFF838();
        sub_1C442F738();
        v161 = v154;
        v52 = v319;
        v162(v161, v155);
        v163 = v305;
        sub_1C4420C3C(v305, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C43FBD94();
        sub_1C440BAA8(v164, v165, v166, v304);
        sub_1C44CDA30(v160, v163, &qword_1EC0B9A10, &qword_1C4F107C0);
        v143 = v329;
        goto LABEL_43;
      }
    }

    else
    {
      sub_1C43FCF64();
      sub_1C440BAA8(v148, v149, v150, v311);
    }

    ++v146;
    sub_1C4420C3C(v52, &qword_1EC0B8568, &unk_1C4F319B0);
    v145 += 8;
    v143 = v329;
    if (v341 == v146)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  sub_1C4419274();
  swift_once();
LABEL_87:
  v265 = sub_1C4F00978();
  sub_1C43FCEE8(v265, qword_1EDE2DE10);
  v266 = sub_1C4F00968();
  v267 = sub_1C4F01CD8();
  if (os_log_type_enabled(v266, v267))
  {
    v268 = swift_slowAlloc();
    *v268 = 0;
    _os_log_impl(&dword_1C43F8000, v266, v267, "Mapping error, missing predicates", v268, 2u);
    v269 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v269);
  }

  sub_1C45CF650();
  sub_1C441C114();
  v270 = swift_allocError();
  sub_1C44046C4(v270, v271);
  swift_willThrow();

  sub_1C4420C3C(v305, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C4420C3C(v303, &qword_1EC0B8568, &unk_1C4F319B0);
}

void sub_1C4B5D764(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11)
{
  v317 = a8;
  v329 = a7;
  v326 = a6;
  v325 = a5;
  v301 = a4;
  v322 = a2;
  v327 = a1;
  v337 = a10;
  v12 = *(a10 - 8);
  v335 = a11;
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v291[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v291[-v20];
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v25 = sub_1C43FD2C8(v24);
  v314 = type metadata accessor for EntityTriple(v25);
  sub_1C43FCDF8();
  v316 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v28);
  v308 = sub_1C4F00DD8();
  sub_1C43FCDF8();
  v307 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v31);
  v310 = sub_1C4F00DC8();
  sub_1C43FCDF8();
  v309 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  sub_1C43FD2C8(v35);
  v321 = sub_1C4F01188();
  sub_1C43FCDF8();
  v320 = v36;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v38);
  v328 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v324 = v39;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD230();
  sub_1C43FCE30(v43);
  v44 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v45 = sub_1C43FBD18(v44);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v291[-v46];
  v332 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v330 = v48;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v291[-v51];
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FD230();
  sub_1C43FCE30(v54);
  v323 = *a9;
  sub_1C442023C();
  v338 = v55;
  v339 = v56;
  v57 = sub_1C4F029C8();
  v333 = a3;
  v58 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v58)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v59)
  {
    sub_1C4420C3C(&v340, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_9;
  }

  v58 = sub_1C4461BB8(0, &qword_1EC0C3548, 0x1E695DF20);
  sub_1C443F7A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v63 = v337;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v64 = sub_1C4F00978();
    sub_1C442B738(v64, qword_1EDE2DE10);
    sub_1C44024F8();
    v65(v15, v336, v63);
    v66 = sub_1C4F00968();
    sub_1C4F01CD8();
    v67 = sub_1C44016D0();
    if (os_log_type_enabled(v67, v68))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C443019C();
      v69 = swift_slowAlloc();
      sub_1C448F200(v69);
      *v58 = 136315138;
      sub_1C440FC4C();
      v70(v63);
      sub_1C4441234();
      v71(v15, v63);
      v72 = sub_1C44224DC();
      v74 = sub_1C441D828(v72, &xmmword_1EDDFD000, v73);

      *(v58 + 4) = v74;
      sub_1C441C508();
      _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
      sub_1C443EED0();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      (*(v12 + 8))(v15, v63);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v80 = swift_allocError();
    sub_1C44060DC(v80, v81);
    swift_willThrow();
    return;
  }

  v60 = v343;
  v338 = 0x79747265706F7270;
  v339 = 0xEB0000000070614DLL;
  v61 = sub_1C4F029C8();
  v300 = v60;
  v62 = [v60 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v62)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v82)
  {
    sub_1C4420C3C(&v340, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_21;
  }

  sub_1C443F7A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v85 = v337;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v86 = sub_1C4F00978();
    sub_1C442B738(v86, qword_1EDE2DE10);
    sub_1C44024F8();
    v87(v18, v336, v85);
    v88 = sub_1C4F00968();
    v89 = sub_1C4F01CD8();
    if (os_log_type_enabled(v88, v89))
    {
      sub_1C43FECF0();
      v90 = swift_slowAlloc();
      sub_1C43FEC60();
      v91 = swift_slowAlloc();
      sub_1C448F200(v91);
      *v90 = 136315138;
      sub_1C440FC4C();
      v92(v85);
      sub_1C4441234();
      v93(v18, v85);
      v94 = sub_1C44224DC();
      v96 = sub_1C441D828(v94, v61, v95);

      *(v90 + 4) = v96;
      _os_log_impl(&dword_1C43F8000, v88, v89, "Mapping error missing property map for  %s", v90, 0xCu);
      sub_1C443EED0();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v97 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v97);
    }

    else
    {

      (*(v12 + 8))(v18, v85);
    }

    sub_1C45CF650();
    sub_1C441C114();
    v98 = swift_allocError();
    sub_1C44060DC(v98, v99);
    swift_willThrow();
    sub_1C448E0C0();
    return;
  }

  v299 = v343;
  v338 = 1701869940;
  v339 = 0xE400000000000000;
  v83 = sub_1C4F029C8();
  v84 = [v300 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v84)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C445543C();
  }

  sub_1C4434224();
  if (!v100)
  {
    sub_1C4420C3C(&v340, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_37;
  }

  sub_1C443F7A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v121 = v337;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v122 = sub_1C4F00978();
    sub_1C442B738(v122, qword_1EDE2DE10);
    sub_1C44024F8();
    v123(v21, v336, v121);
    v107 = sub_1C4F00968();
    v124 = sub_1C4F01CD8();
    v125 = sub_1C44016D0();
    if (!os_log_type_enabled(v125, v126))
    {

      (*(v12 + 8))(v21, v121);
      goto LABEL_43;
    }

    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C443019C();
    v127 = swift_slowAlloc();
    sub_1C448F200(v127);
    *v83 = 136315138;
    sub_1C440FC4C();
    v128(v121);
    sub_1C4441234();
    v129(v21, v121);
    v130 = sub_1C44224DC();
    v132 = sub_1C441D828(v130, v61, v131);

    *(v83 + 4) = v132;
    _os_log_impl(&dword_1C43F8000, v107, v124, "Mapping error missing type for  %s", v83, 0xCu);
    sub_1C443EED0();
LABEL_41:
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

LABEL_43:
    v133 = v299;
    sub_1C45CF650();
    sub_1C441C114();
    v134 = swift_allocError();
    sub_1C44060DC(v134, v135);
    swift_willThrow();
    sub_1C448E0C0();

    return;
  }

  v101 = v343;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C43FD024();
  sub_1C4EFD2E8();
  v102 = v332;
  sub_1C440175C(v47, 1, v332);
  if (v245)
  {

    sub_1C4420C3C(v47, &qword_1EC0B8568, &unk_1C4F319B0);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v103 = sub_1C4F00978();
    sub_1C442B738(v103, qword_1EDE2DE10);
    sub_1C44024F8();
    v104 = v318;
    v105 = v337;
    v106(v318, v336, v337);
    v107 = sub_1C4F00968();
    sub_1C4F01CD8();
    v108 = sub_1C44016D0();
    if (!os_log_type_enabled(v108, v109))
    {

      (*(v12 + 8))(v104, v105);
      goto LABEL_43;
    }

    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C443019C();
    v110 = swift_slowAlloc();
    *&v340 = v110;
    *v101 = 136315138;
    sub_1C440FC4C();
    v111(v105);
    sub_1C4441234();
    v112(v104, v105);
    v113 = sub_1C44224DC();
    v115 = sub_1C441D828(v113, v102, v114);

    *(v101 + 4) = v115;
    sub_1C441C508();
    _os_log_impl(v116, v117, v118, v119, v120, 0xCu);
    sub_1C440962C(v110);
    goto LABEL_41;
  }

  v318 = v101 >> 64;
  v296 = v101;
  v136 = v330;
  v137 = v331;
  (*(v330 + 32))(v331, v47, v102);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v138 = sub_1C4F00978();
  sub_1C43FCEE8(v138, qword_1EDE2DE10);
  v139 = *(v136 + 16);
  v295 = v136 + 16;
  v294 = v139;
  v139(v52, v137, v102);
  v140 = v322;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v298 = v47;
  v141 = sub_1C4F00968();
  v142 = sub_1C4F01CB8();

  if (os_log_type_enabled(v141, v142))
  {
    swift_slowAlloc();
    sub_1C4423808();
    v293 = swift_slowAlloc();
    *&v340 = v293;
    LODWORD(xmmword_1EDDFD000) = 136381187;
    *(&xmmword_1EDDFD000 + 4) = sub_1C441D828(v327, v140, &v340);
    WORD6(xmmword_1EDDFD000) = 2080;
    sub_1C4426E60();
    sub_1C44CD2C8(v143, v144, MEMORY[0x1E69A92F8]);
    v292 = v142;
    v145 = sub_1C4F02858();
    v147 = v146;
    v148 = sub_1C43FCE84();
    v297 = v149;
    v149(v148);
    v150 = sub_1C44224DC();
    sub_1C441D828(v150, v147, v151);
    sub_1C43FBD30();

    *(&xmmword_1EDDFD000 + 14) = v145;
    v152 = v327;
    word_1EDDFD016 = 1024;
    LODWORD(qword_1EDDFD018) = 0;
    _os_log_impl(&dword_1C43F8000, v141, v292, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", &xmmword_1EDDFD000, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v153 = sub_1C43FEDE8();
    MEMORY[0x1C6942830](v153);
  }

  else
  {

    v154 = sub_1C43FCE84();
    v297 = v155;
    v155(v154);
    v152 = v327;
  }

  *&v340 = v152;
  *(&v340 + 1) = v140;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v156 = sub_1C4404C28();
  MEMORY[0x1C6940010](v156);
  v157 = v340;
  sub_1C445140C();
  sub_1C4F01178();
  sub_1C4F01148();
  v159 = v158;
  sub_1C43FFB20();
  v160(&v340, v321);
  v161 = v334;
  if (v159 >> 60 == 15)
  {

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v162 = sub_1C4F00968();
    v163 = sub_1C4F01CD8();

    if (os_log_type_enabled(v162, v163))
    {
      sub_1C43FECF0();
      v164 = swift_slowAlloc();
      sub_1C43FEC60();
      v165 = swift_slowAlloc();
      sub_1C448F200(v165);
      *v164 = 136380675;
      v166 = sub_1C441D828(v157, *(&v157 + 1), &v340);

      *(v164 + 4) = v166;
      _os_log_impl(&dword_1C43F8000, v162, v163, "Source: failed to encode identifier as UTF8 data: %{private}s", v164, 0xCu);
      sub_1C443EED0();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v167 = sub_1C43FEDE8();
      MEMORY[0x1C6942830](v167);
    }

    else
    {
    }

    v206 = v337;
    (*(v12 + 16))(v313, v336, v337);
    v207 = sub_1C4F00968();
    sub_1C4F01CD8();
    v208 = sub_1C44016D0();
    if (os_log_type_enabled(v208, v209))
    {
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C443019C();
      v210 = swift_slowAlloc();
      *&v340 = v210;
      *v163 = 136315138;
      sub_1C440FC4C();
      v211(v206);
      v213 = v212;
      v214 = sub_1C43FCE84();
      v215(v214);
      v216 = sub_1C44224DC();
      v218 = sub_1C441D828(v216, v213, v217);

      *(v163 + 4) = v218;
      sub_1C441C508();
      _os_log_impl(v219, v220, v221, v222, v223, 0xCu);
      sub_1C440962C(v210);
      v224 = sub_1C43FEDE8();
      MEMORY[0x1C6942830](v224);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      v267 = sub_1C43FCE84();
      v268(v267);
    }

    v269 = v299;
    sub_1C45CF650();
    sub_1C441C114();
    swift_allocError();
    *v270 = 5;
    swift_willThrow();
    sub_1C448E0C0();

    sub_1C440908C();
    sub_1C4401890();
    v271();
    return;
  }

  sub_1C441641C();
  sub_1C44CD2C8(v168, v169, MEMORY[0x1E6966618]);
  v170 = v305;
  v171 = v308;
  sub_1C4F00DB8();
  v172 = sub_1C43FFE24();
  sub_1C44344B8(v172, v173);
  v174 = sub_1C43FFE24();
  v175 = v312;
  sub_1C4498FD8(v174, v176, v170);
  v321 = v175;
  v177 = sub_1C43FFE24();
  sub_1C441DFEC(v177, v178);
  v179 = v306;
  v190 = v170;
  sub_1C4F00DA8();
  sub_1C43FFB20();
  v180(v170, v171);
  v294(v302, v331, v332);
  sub_1C445140C();
  v182 = v310;
  (*(v181 + 16))(v304, v179, v310);
  v183 = v303;
  sub_1C4EFF028();
  v184 = sub_1C43FFE24();
  sub_1C441DFEC(v184, v185);
  (*(v190 + 8))(v179, v182);
  v186 = v324;
  v187 = v328;
  (*(v324 + 32))(v161, v183, v328);
  v188 = v311;
  v337 = *(v186 + 16);
  (v337)(v311, v161, v187);
  v189 = v318;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  LOBYTE(v190) = v298;
  v191 = sub_1C4F00968();
  LOBYTE(v171) = sub_1C4F01CF8();

  if (os_log_type_enabled(v191, v171))
  {
    v192 = swift_slowAlloc();
    *&v340 = swift_slowAlloc();
    *v192 = 136380931;
    sub_1C4400E48();
    sub_1C44CD2C8(v193, v194, MEMORY[0x1E69A9840]);
    sub_1C4F02858();
    v196 = v195;
    v161 = v334;
    v320 = *(v186 + 8);
    v320(v188, v328);
    v197 = sub_1C44224DC();
    v190 = sub_1C441D828(v197, v196, v198);
    v187 = v328;

    *(v192 + 4) = v190;
    *(v192 + 12) = 2080;
    *(v192 + 14) = sub_1C441D828(v296, v318, &v340);
    sub_1C441C508();
    _os_log_impl(v199, v200, v201, v202, v203, 0x16u);
    swift_arrayDestroy();
    v204 = sub_1C43FEDE8();
    MEMORY[0x1C6942830](v204);
    v189 = v318;
    v205 = v329;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    sub_1C4440E04();
  }

  else
  {

    v320 = *(v186 + 8);
    v320(v188, v187);
    sub_1C4440E04();
    v205 = v329;
  }

  v225 = v315;
  (v337)(v315, v161, v187);
  v226 = v314;
  sub_1C4EFEBB8();
  sub_1C4EFF888();
  sub_1C4EFEC38();
  sub_1C44137DC();
  sub_1C4B62114(v205, v225 + v227);
  sub_1C4EF9AE8();
  v228 = (v225 + v226[8]);
  *v228 = v296;
  v228[1] = v189;
  v229 = (v225 + v226[10]);
  v230 = v326;
  *v229 = v191;
  v229[1] = v230;
  *(v225 + v226[11]) = v231;
  *(v225 + v226[12]) = v190;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44C9240(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v233 = v232;
  v235 = *(v232 + 16);
  v234 = *(v232 + 24);
  if (v235 >= v234 >> 1)
  {
    v287 = sub_1C43FF640(v234);
    sub_1C44C9240(v287, v288, v289, v233);
    v233 = v290;
  }

  v236 = v333;
  *(v233 + 16) = v235 + 1;
  sub_1C43FBF6C();
  sub_1C4B61D90(v225, v233 + v237 + *(v238 + 72) * v235);
  v319 = v233;
  v344 = v233;
  v239 = *(v317 + 16);
  if (v239)
  {
    v240 = (v317 + 32);
    v241 = MEMORY[0x1E69E7CC0];
    v337 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v242 = v240[1];
      v340 = *v240;
      v341 = v242;
      *v342 = v240[2];
      *&v342[9] = *(v240 + 41);
      v243 = v340;
      v343 = v340;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45D17A0(&v340, &v338);
      v244 = [v236 __swift_objectForKeyedSubscript_];
      sub_1C441D28C();
      swift_unknownObjectRelease();
      if (v235)
      {
        sub_1C4F02078();
        swift_unknownObjectRelease();
        sub_1C4420C3C(&v338, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v245 = v243 == 0x696669746E656469 && *(&v243 + 1) == 0xEA00000000007265;
        if (v245 || (sub_1C4F02938() & 1) != 0)
        {
          v336 = v241;
          LODWORD(v335) = v342[24];
          v247 = *&v342[8];
          v246 = *&v342[16];
          v327 = *v342;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v322 = sub_1C4EFF048();
          v249 = v248;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44E3634(&v340);
          v250 = v337;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458A900();
            v250 = v261;
          }

          v235 = *(v250 + 16);
          v251 = *(v250 + 24);
          v337 = v250;
          if (v235 >= v251 >> 1)
          {
            sub_1C458A900();
            v337 = v262;
          }

          v252 = v337;
          *(v337 + 16) = v235 + 1;
          v253 = v252 + (v235 << 6);
          *(v253 + 32) = v243;
          *(v253 + 48) = v322;
          *(v253 + 56) = v249;
          *(v253 + 64) = v327;
          *(v253 + 72) = v247;
          *(v253 + 80) = v246;
          *(v253 + 88) = v335;
          v236 = v333;
          v161 = v334;
          v241 = v336;
          goto LABEL_85;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A900();
          v337 = v265;
        }

        v235 = *(v337 + 16);
        v256 = *(v337 + 24);
        if (v235 >= v256 >> 1)
        {
          sub_1C43FF640(v256);
          sub_1C458A900();
          v337 = v266;
        }

        v257 = v337;
        *(v337 + 16) = v235 + 1;
        v255 = (v257 + (v235 << 6));
      }

      else
      {
        sub_1C445543C();
        sub_1C4420C3C(&v338, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A900();
          v241 = v263;
        }

        v235 = *(v241 + 16);
        v254 = *(v241 + 24);
        if (v235 >= v254 >> 1)
        {
          sub_1C43FF640(v254);
          sub_1C458A900();
          v241 = v264;
        }

        *(v241 + 16) = v235 + 1;
        v255 = (v241 + (v235 << 6));
      }

      v258 = v340;
      v259 = v341;
      v260 = *v342;
      *(v255 + 73) = *&v342[9];
      v255[3] = v259;
      v255[4] = v260;
      v255[2] = v258;
LABEL_85:
      v240 += 4;
      if (!--v239)
      {
        goto LABEL_90;
      }
    }
  }

  v241 = MEMORY[0x1E69E7CC0];
  v337 = MEMORY[0x1E69E7CC0];
LABEL_90:
  v272 = v323;
  LOBYTE(v340) = v323;
  v273 = v161;
  v274 = v329;
  v275 = v325;
  v276 = v326;
  v277 = v161;
  v278 = v299;
  v279 = v321;
  v280 = SourceEntityMappable.constructRows(entityIdentifier:source:sourceId:map:basicProperties:pipelineType:)(v273, v329, v325, v326, v299, v241, &v340);
  if (v279)
  {
    sub_1C448E0C0();

    v320(v277, v328);
    sub_1C440908C();
    sub_1C4401890();
    v281();
  }

  else
  {
    v282 = v280;

    sub_1C49D3614(v282);
    LOBYTE(v340) = v272;
    v283 = SourceEntityMappable.constructRows(entityIdentifier:source:sourceId:map:basicProperties:pipelineType:)(v301, v274, v275, v276, v236, v337, &v340);

    sub_1C49D3614(v283);
    sub_1C448E0C0();

    v284 = sub_1C444FFFC();
    v285(v284);
    sub_1C440908C();
    sub_1C4401890();
    v286();
  }
}

void *sub_1C4B5F2D8()
{
  v1 = v0;
  v2 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C4EFD548();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for StandardEntityMapper(0);
  sub_1C4B62114(v1 + v11[9], v10);
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4B62114(v1, v4);
  v12 = v11[7];
  v16 = *(v1 + v11[6]);
  v15 = *(v1 + v12);
  type metadata accessor for SourceEntityStore(0);
  swift_allocObject();
  return sub_1C4B39D1C(v10, v7, v4, &v16, &v15);
}

uint64_t sub_1C4B5F484(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v125 = a3;
  v117 = type metadata accessor for EntityTriple(0);
  v118 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v113 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v124 = &v104 - v9;
  v10 = sub_1C4EFD548();
  v115 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v104 - v13;
  v15 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v129 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v104 - v18;
  v20 = sub_1C4EFF0C8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v104 - v25;
  v127 = *a4;
  SourceEntityRepresentation.entityIdentifier(for:)(a2, v19);
  if (sub_1C44157D4(v19, 1, v20) == 1)
  {
    sub_1C4420C3C(v19, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v27 = swift_allocError();
    *v28 = 5;
    v29 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source + 8);
    v131 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source);
    v132 = v29;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](32, 0xE100000000000000);
    v30 = sub_1C4EFD3D8();
    MEMORY[0x1C6940010](v30);

    sub_1C4B5B968(v27);

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v108 = v23;
    v114 = v21;
    (*(v21 + 32))(v26, v19, v20);
    v135 = MEMORY[0x1E69E7CC0];
    if (qword_1EDDFD028 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v32 = sub_1C4F00978();
      v33 = sub_1C442B738(v32, qword_1EDE2DE10);
      v34 = v115;
      v35 = *(v115 + 16);
      v106 = v115 + 16;
      v105 = v35;
      v35(v14, a2, v10);
      v36 = a1;
      v107 = v33;
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CC8();

      LODWORD(v128) = v38;
      v39 = os_log_type_enabled(v37, v38);
      v126 = v20;
      v116 = a2;
      v109 = v10;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v131 = v41;
        *v40 = 136380931;
        *(v40 + 4) = sub_1C441D828(*(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier), *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier + 8), &v131);
        *(v40 + 12) = 2080;
        v42 = sub_1C4EFD3D8();
        v44 = v43;
        v110 = *(v34 + 8);
        v110(v14, v10);
        v45 = sub_1C441D828(v42, v44, &v131);
        v46 = v114;

        *(v40 + 14) = v45;
        _os_log_impl(&dword_1C43F8000, v37, v128, "SourceId: %{private}s,entityClass:%s", v40, 0x16u);
        v14 = MEMORY[0x1E69E7CA0];
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v41, -1, -1);
        MEMORY[0x1C6942830](v40, -1, -1);
      }

      else
      {

        v110 = *(v34 + 8);
        v110(v14, v10);
        v14 = MEMORY[0x1E69E7CA0];
        v46 = v114;
      }

      v47 = *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_sourceEntities);
      v10 = *(v47 + 16);
      v123 = v26;
      v111 = v36;
      if (!v10)
      {
        break;
      }

      v122 = v36 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source;
      v20 = v47 + 32;
      v48 = MEMORY[0x1E69E7CC0];
      v49 = *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier);
      v120 = *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier + 8);
      v121 = v49;
      v119 = (v46 + 16);
      v50 = v129;
      while (1)
      {
        sub_1C442E860(v20, &v131);
        v128 = objc_autoreleasePoolPush();
        v51 = v126;
        (*v119)(v50, v26, v126);
        sub_1C440BAA8(v50, 0, 1, v51);
        v52 = sub_1C4EFF8A8();
        v53 = v124;
        sub_1C440BAA8(v124, 1, 1, v52);
        LOBYTE(v130) = v127;
        v55 = v133;
        v54 = v134;
        sub_1C4418280(&v131, v133);
        v56 = *(v54 + 40);
        v103 = v54;
        v57 = v129;
        a1 = v56(v129, v122, v121, v120, v125, v53, &v130, v55, v103);
        sub_1C4420C3C(v53, &qword_1EC0B9A10, &qword_1C4F107C0);
        sub_1C4420C3C(v57, &unk_1EC0BA0E0, &qword_1C4F105A0);
        a2 = a1[2];
        v26 = *(v48 + 16);
        v58 = &v26[a2];
        if (__OFADD__(v26, a2))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v58 > *(v48 + 24) >> 1)
        {
          if (v26 <= v58)
          {
            v60 = &v26[a2];
          }

          else
          {
            v60 = v26;
          }

          sub_1C44C9240(isUniquelyReferenced_nonNull_native, v60, 1, v48);
          v48 = v61;
        }

        v26 = v123;
        v50 = v129;
        if (a1[2])
        {
          if ((*(v48 + 24) >> 1) - *(v48 + 16) < a2)
          {
            goto LABEL_34;
          }

          swift_arrayInitWithCopy();

          if (a2)
          {
            v62 = *(v48 + 16);
            v63 = __OFADD__(v62, a2);
            v64 = v62 + a2;
            if (v63)
            {
              goto LABEL_35;
            }

            *(v48 + 16) = v64;
          }
        }

        else
        {

          if (a2)
          {
            goto LABEL_33;
          }
        }

        v135 = v48;
        objc_autoreleasePoolPop(v128);
        sub_1C440962C(&v131);
        v20 += 40;
        if (!--v10)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }

    v48 = MEMORY[0x1E69E7CC0];
LABEL_25:
    if (*(v48 + 16))
    {
      v65 = v114;
      v66 = *(v114 + 16);
      v67 = v108;
      v68 = v126;
      v66(v108, v26, v126);
      v69 = v112;
      v70 = v109;
      v105(v112, v116, v109);
      v71 = sub_1C4F00968();
      v72 = sub_1C4F01CF8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v128 = v66;
        v74 = v73;
        v125 = swift_slowAlloc();
        v131 = v125;
        *v74 = 136380931;
        sub_1C44CD2C8(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
        LODWORD(v124) = v72;
        v75 = sub_1C4F02858();
        v77 = v76;
        v129 = *(v65 + 8);
        (v129)(v67, v126);
        v78 = sub_1C441D828(v75, v77, &v131);

        *(v74 + 4) = v78;
        *(v74 + 12) = 2080;
        v79 = sub_1C4EFD2F8();
        v81 = v80;
        v110(v69, v70);
        v82 = sub_1C441D828(v79, v81, &v131);
        v68 = v126;

        *(v74 + 14) = v82;
        _os_log_impl(&dword_1C43F8000, v71, v124, "StandardEntityMapper: rows: %{private}s isA %s", v74, 0x16u);
        v83 = v125;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v83, -1, -1);
        v84 = v74;
        v66 = v128;
        MEMORY[0x1C6942830](v84, -1, -1);
      }

      else
      {

        v110(v69, v70);
        v129 = *(v65 + 8);
        (v129)(v67, v68);
      }

      v89 = v113;
      v90 = v123;
      v66(v113, v123, v68);
      v91 = v117;
      sub_1C4EFEBB8();
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v92 = sub_1C4EFD2F8();
      v94 = v93;
      v95 = v111;
      sub_1C4B62114(v111 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source, v89 + v91[9]);
      v97 = *(v95 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier);
      v96 = *(v95 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_identifier + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v98 = (v89 + v91[8]);
      *v98 = v92;
      v98[1] = v94;
      v99 = (v89 + v91[10]);
      *v99 = v97;
      v99[1] = v96;
      *(v89 + v91[11]) = v100;
      *(v89 + v91[12]) = v127;
      sub_1C456902C(&qword_1EC0B9010, &unk_1C4F142C0);
      v101 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1C4F0D130;
      sub_1C4B62114(v89, v102 + v101);
      sub_1C49D3614(v102);
      sub_1C4B2A2F8(v89, type metadata accessor for EntityTriple);
      (v129)(v90, v68);
    }

    else
    {
      sub_1C45CF650();
      v85 = swift_allocError();
      *v86 = 3;
      v87 = *(v111 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source + 8);
      v131 = *(v111 + OBJC_IVAR____TtC24IntelligencePlatformCore26SourceEntityRepresentation_source);
      v132 = v87;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](32, 0xE100000000000000);
      v88 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v88);

      sub_1C4B5B968(v85);

      (*(v114 + 8))(v26, v126);
    }

    return v135;
  }
}

uint64_t sub_1C4B60294()
{
  v18 = v0;
  v1 = sub_1C4A2D3E8();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 16);
    v4 = type metadata accessor for StandardEntityMapper(0);
    type metadata accessor for PhaseStores(0);
    LOBYTE(v17[0]) = *(v3 + *(v4 + 28));
    sub_1C4495FC0(v17);
    v5 = sub_1C4B5F2D8();
    v6 = *(v0 + 16);
    v7 = v6 + *(v4 + 32);
    v8 = *v7;
    v9 = *(v7 + 8);
    if (*v7 == 1)
    {
      v10 = v5[3];
      v11 = v5[4];
      v12 = v5[5];
      v13 = v5[6];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B3A3F0(v10, v11, v12, v13, v17, 0.0);
      v6 = *(v0 + 16);
    }

    else
    {
      v17[0] = *v7;
      v17[1] = v9;
    }

    v14 = swift_task_alloc();
    *(v14 + 16) = v6;
    *(v14 + 24) = v2;
    sub_1C4B620C4(v8);
    sub_1C48737EC();

    sub_1C4EF9AE8();
    sub_1C43FBD94();
    sub_1C4643AE8();
    SourceEntityStore.clearAllData()();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C4B60468(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StandardEntityMapper(0);
  v6 = *(v5 + 20);
  v7 = sub_1C4F00EC8();
  v10 = *(a2 + *(v5 + 28));
  v8 = sub_1C4B5F484(a1, a2 + v6, v7, &v10);

  return v8;
}

id sub_1C4B6050C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2 + *(a1 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  a2[1] = v5;
  return sub_1C4B620C4(v4);
}

void *sub_1C4B60520(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v2 + *(a2 + 32);
  result = sub_1C4B62080(*v5);
  *v5 = v3;
  *(v5 + 8) = v4;
  return result;
}

uint64_t sub_1C4B60580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1C4B60648()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4B60274();
}

uint64_t sub_1C4B606D8(void (*a1)(__n128))
{
  v2 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v6);
  sub_1C4400E48();
  sub_1C44CD2C8(v9, v10, MEMORY[0x1E69A9840]);
  sub_1C4F02858();
  (*(v4 + 8))(v8, v2);
  return sub_1C43FBC98();
}

uint64_t (*sub_1C4B60BE8(void *a1, uint64_t a2))()
{
  v4 = sub_1C4A9A30C(0x68uLL);
  *a1 = v4;
  v5 = sub_1C4EFEEF8();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[9] = v6;
  v8 = sub_1C4A9A30C(*(v6 + 64));
  v4[10] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v8, a2, v5);
  v4[11] = sub_1C4B61D34(v4);
  v4[12] = sub_1C4B6115C(v4 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_1C4B62178;
}

uint64_t (*sub_1C4B60D04(void *a1, uint64_t a2))()
{
  v4 = sub_1C4A9A30C(0x68uLL);
  *a1 = v4;
  v5 = sub_1C4EFF0C8();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[9] = v6;
  v8 = sub_1C4A9A30C(*(v6 + 64));
  v4[10] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v8, a2, v5);
  v4[11] = sub_1C4B61D34(v4);
  v4[12] = sub_1C4B613C8(v4 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_1C4B62178;
}

uint64_t (*sub_1C4B60E20(void *a1, uint64_t a2))()
{
  v4 = sub_1C4A9A30C(0x68uLL);
  *a1 = v4;
  v5 = sub_1C4EF9DD8();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[9] = v6;
  v8 = sub_1C4A9A30C(*(v6 + 64));
  v4[10] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v8, a2, v5);
  v4[11] = sub_1C4B61D5C(v4);
  v4[12] = sub_1C4B61634(v4 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_1C4B60F3C;
}

void sub_1C4B60F40(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v6 = sub_1C4401EF4();
  v2(v6);
  free(v3);

  free(v1);
}

uint64_t (*sub_1C4B60FD4(void *a1, uint64_t a2))()
{
  v4 = sub_1C4A9A30C(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_1C4B61D34(v4);
  v4[9] = sub_1C4B618B0(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1C4B61064;
}

uint64_t (*sub_1C4B61068(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1C4A9A30C(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1C4B61D34(v6);
  v6[9] = sub_1C4B61B18(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1C4B6217C;
}

void sub_1C4B61100(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = sub_1C4401EF4();
  v2(v3);

  free(v1);
}

void (*sub_1C4B6115C(void *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  v7 = sub_1C4A9A30C(0x40uLL);
  *a1 = v7;
  v7[1] = a2;
  v7[2] = v3;
  v8 = sub_1C4EFEEF8();
  v7[3] = v8;
  v9 = *(v8 - 8);
  v7[4] = v9;
  v7[5] = sub_1C4A9A30C(*(v9 + 64));
  v10 = *v3;
  sub_1C457AB64();
  *(v7 + 56) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_1C456902C(&qword_1EC0BA838, &unk_1C4F54220);
  if (sub_1C4F02458())
  {
    sub_1C457AB64();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[6] = v13;
  if (v14)
  {
    v17 = *(*(*v4 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v7 = v17;
  return sub_1C4B612E8;
}

void sub_1C4B612E8()
{
  sub_1C447FA48();
  if (v1)
  {
    sub_1C4423CE4();
    if (v5)
    {
      *(v2[7] + 8 * v3) = v1;
    }

    else
    {
      v11 = sub_1C4414F20();
      v12(v11);
      v13 = sub_1C445E9E8();
      sub_1C457DD28(v13, v14, v15, v16);
    }
  }

  else if (v4)
  {
    v6 = sub_1C4417864();
    v7(v6);
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C443FFB0();
    v10 = sub_1C44CD2C8(v8, v9, MEMORY[0x1E69A9758]);
    sub_1C444B2E4(v10);
  }

  sub_1C4416880();

  free(v2);

  free(v0);
}

void (*sub_1C4B613C8(void *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  v7 = sub_1C4A9A30C(0x40uLL);
  *a1 = v7;
  v7[1] = a2;
  v7[2] = v3;
  v8 = sub_1C4EFF0C8();
  v7[3] = v8;
  v9 = *(v8 - 8);
  v7[4] = v9;
  v7[5] = sub_1C4A9A30C(*(v9 + 64));
  v10 = *v3;
  sub_1C44E3664();
  *(v7 + 56) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_1C456902C(&qword_1EC0BA200, &qword_1C4F13B78);
  if (sub_1C4F02458())
  {
    sub_1C44E3664();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[6] = v13;
  if (v14)
  {
    v17 = *(*(*v4 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v7 = v17;
  return sub_1C4B61554;
}

void sub_1C4B61554()
{
  sub_1C447FA48();
  if (v1)
  {
    sub_1C4423CE4();
    if (v5)
    {
      *(v2[7] + 8 * v3) = v1;
    }

    else
    {
      v11 = sub_1C4414F20();
      v12(v11);
      v13 = sub_1C445E9E8();
      sub_1C457EB2C(v13, v14, v15, v16);
    }
  }

  else if (v4)
  {
    v6 = sub_1C4417864();
    v7(v6);
    sub_1C456902C(&qword_1EC0BA1F8, &unk_1C4F54230);
    sub_1C4400E48();
    v10 = sub_1C44CD2C8(v8, v9, MEMORY[0x1E69A9820]);
    sub_1C444B2E4(v10);
  }

  sub_1C4416880();

  free(v2);

  free(v0);
}

void (*sub_1C4B61634(void *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  v7 = sub_1C4A9A30C(0x40uLL);
  *a1 = v7;
  v7[1] = a2;
  v7[2] = v3;
  v8 = sub_1C4EF9DD8();
  v7[3] = v8;
  v9 = *(v8 - 8);
  v7[4] = v9;
  v7[5] = sub_1C4A9A30C(*(v9 + 64));
  v10 = *v3;
  sub_1C457B1F0();
  *(v7 + 56) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_1C456902C(&qword_1EC0C0BA0, &unk_1C4F54200);
  if (sub_1C4F02458())
  {
    sub_1C457B1F0();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[6] = v13;
  if (v14)
  {
    v17 = *(*(*v4 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v7 = v17;
  return sub_1C4B617C0;
}

void sub_1C4B617C0()
{
  sub_1C447FA48();
  if (v1)
  {
    sub_1C4423CE4();
    if (v5)
    {
      *(v2[7] + 8 * v3) = v1;
    }

    else
    {
      v9 = sub_1C4414F20();
      v10(v9);
      v11 = sub_1C445E9E8();
      sub_1C457E054(v11, v12, v13, v14);
    }
  }

  else if (v4)
  {
    v6 = sub_1C4417864();
    v7(v6);
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    v8 = sub_1C44CD2C8(&qword_1EC0B8590, MEMORY[0x1E6969680], MEMORY[0x1E6969690]);
    sub_1C444B2E4(v8);
  }

  sub_1C4416880();

  free(v2);

  free(v0);
}

void (*sub_1C4B618B0(void *a1, uint64_t a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  v7 = sub_1C4A9A30C(0x60uLL);
  *a1 = v7;
  v7[9] = a2;
  v7[10] = v3;
  v8 = *v3;
  v9 = sub_1C457AF68(a2);
  *(v7 + 41) = v10 & 1;
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  sub_1C456902C(&qword_1EC0BA718, &qword_1C4F541F0);
  if (sub_1C4F02458())
  {
    v13 = sub_1C457AF68(a2);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[11] = v11;
  if (v12)
  {
    v15 = *(*v4 + 56) + 24 * v11;
    v16 = *v15;
    v17 = *(v15 + 16);
  }

  else
  {
    v16 = 0uLL;
    v17 = 1;
  }

  *(v7 + 3) = v16;
  v7[8] = v17;
  return sub_1C4B619EC;
}

void sub_1C4B619EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 41);
  if (v3 == 1)
  {
    if (*(*a1 + 41))
    {
      sub_1C45EC75C(*(**(v1 + 80) + 48) + 48 * *(v1 + 88));
      sub_1C456902C(&qword_1EC0C3BE8, &qword_1C4F541F8);
      sub_1C45A2304();
      sub_1C4F02478();
    }
  }

  else
  {
    v6 = *(v1 + 88);
    v7 = **(v1 + 80);
    if (v5)
    {
      v8 = (*(v7 + 56) + 24 * v6);
      *v8 = v2;
      v8[1] = v4;
      v8[2] = v3;
    }

    else
    {
      v9 = *(v1 + 72);
      sub_1C457E1E0(v6, v9, v2, v4, v3, v7);
      sub_1C45A2358(v9, v1);
    }
  }

  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  sub_1C4A9568C(v2, v4, v3);
  sub_1C47023EC(v10, v11, v12);

  free(v1);
}

void (*sub_1C4B61B18(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = sub_1C4A9A30C(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_1C445FAA8(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
  if (sub_1C4F02458())
  {
    v15 = sub_1C445FAA8(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_1C4B61C58;
}

void sub_1C4B61C58(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_1C44686DC(v4, v1[1], v1[2], v2, v5);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  else if ((*a1)[5])
  {
    sub_1C4471348(*(*v1[3] + 48) + 16 * v1[4]);
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4F02478();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  free(v1);
}

uint64_t (*sub_1C4B61D34(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C4B6216C;
}

uint64_t (*sub_1C4B61D5C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C4B61D84;
}

uint64_t sub_1C4B61D90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t type metadata accessor for StandardEntityMapper(uint64_t a1)
{
  result = qword_1EDDE41F8;
  if (!qword_1EDDE41F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4B61E5C(uint64_t a1)
{
  type metadata accessor for Source(319);
  if (v1 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v2 <= 0x3F)
    {
      sub_1C4B61F28();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PhaseStores(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C4B61F28()
{
  if (!qword_1EC0C3BE0)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C3BE0);
    }
  }
}

uint64_t sub_1C4B61F78(uint64_t a1)
{
  result = sub_1C44CD2C8(&qword_1EDDE4220, type metadata accessor for StandardEntityMapper, &unk_1C4F54168);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B61FD0(uint64_t a1)
{
  result = sub_1C44CD2C8(&qword_1EDDE4208, type metadata accessor for StandardEntityMapper, &unk_1C4F54198);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B62028(uint64_t a1)
{
  result = sub_1C44CD2C8(&qword_1EDDE4210, type metadata accessor for StandardEntityMapper, &unk_1C4F541B4);
  *(a1 + 8) = result;
  return result;
}

void *sub_1C4B62080(void *result)
{
  if (result != 1)
  {
  }

  return result;
}

id sub_1C4B620C4(id result)
{
  if (result != 1)
  {
    v2 = result;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return v2;
  }

  return result;
}

uint64_t sub_1C4B62114(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

void sub_1C4B62180(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

unint64_t TransformingError.description.getter()
{
  result = 0xD000000000000014;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000033;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TransformingError.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

uint64_t StandardTransformer.source.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StandardTransformer(0);
  v3 = sub_1C441A578(*(v2 + 20));
  return sub_1C4471C00(v3, a1);
}

uint64_t type metadata accessor for StandardTransformer(uint64_t a1)
{
  result = qword_1EC0C3C10;
  if (!qword_1EC0C3C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StandardTransformer.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StandardTransformer(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t StandardTransformer.init(_:stores:pipelineType:sourceTransform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = type metadata accessor for StandardTransformer(0);
  v13 = a6 + v12[8];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  sub_1C448571C(a2, a6);
  result = sub_1C448571C(a1, a6 + v12[5]);
  *(a6 + v12[7]) = v11;
  v15 = (a6 + v12[6]);
  *v15 = a4;
  v15[1] = a5;
  return result;
}

void *sub_1C4B62488@<X0>(void *a1@<X8>)
{
  v4 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = sub_1C4EFD548();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1C43FBCC4();
  v15 = (v14 - v13);
  v16 = type metadata accessor for StandardTransformer(0);
  sub_1C4B62EF0(v1 + v16[8], &v20);
  if (v21)
  {
    sub_1C441D670(&v20, v22);
    return sub_1C441D670(v22, a1);
  }

  else
  {
    sub_1C4B62A5C(&v20);
    sub_1C4471C00(v1, v15);
    _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
    v18 = sub_1C441A578(v16[5]);
    sub_1C4471C00(v18, v7);
    LOBYTE(v22[0]) = 7;
    LOBYTE(v20) = *(v1 + v16[7]);
    v19 = type metadata accessor for SourceEntityStore(0);
    swift_allocObject();
    result = sub_1C4B39D1C(v15, v11, v7, v22, &v20);
    if (!v2)
    {
      a1[3] = v19;
      a1[4] = &protocol witness table for SourceEntityStore;
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_1C4B62688()
{
  sub_1C4B62488(v0 + 2);
  v1 = v0[7];
  v2 = (v1 + *(type metadata accessor for StandardTransformer(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1C4B627DC;

  return v5(v0 + 2);
}

uint64_t sub_1C4B627DC()
{
  sub_1C43FBCD4();
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1C4B62960;
  }

  else
  {
    v2 = sub_1C4B628EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C4B628EC()
{
  sub_1C43FBCD4();
  sub_1C4EF9AE8();
  sub_1C4643640();
  sub_1C440962C((v0 + 16));
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4B62960()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 16));
  sub_1C43FBDA0();

  return v1();
}

Swift::Void __swiftcall StandardTransformer.clearAllData()()
{
  sub_1C4B62488(&v2);
  sub_1C441D670(&v2, v3);
  v0 = v4;
  v1 = v5;
  sub_1C4409678(v3, v4);
  (*(v1 + 16))(v0, v1);
  sub_1C440962C(v3);
}

uint64_t sub_1C4B62A5C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C3BF0, &qword_1C4F54248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C4B62AC8()
{
  result = qword_1EC0C3BF8;
  if (!qword_1EC0C3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3BF8);
  }

  return result;
}

uint64_t sub_1C4B62B20(uint64_t a1)
{
  result = sub_1C4B62C84(&qword_1EC0BA560, &protocol conformance descriptor for StandardTransformer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B62B64(uint64_t a1)
{
  result = sub_1C4B62C84(&qword_1EC0C3C00, &protocol conformance descriptor for StandardTransformer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B62BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return StandardTransformer.execute()();
}

uint64_t sub_1C4B62C40(uint64_t a1)
{
  result = sub_1C4B62C84(&qword_1EC0C3C08, &protocol conformance descriptor for StandardTransformer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B62C84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StandardTransformer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransformingError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_1C4B62DD0(uint64_t a1)
{
  type metadata accessor for PhaseStores(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Source(319);
    if (v2 <= 0x3F)
    {
      sub_1C4A723C8();
      if (v3 <= 0x3F)
      {
        sub_1C4B62E8C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C4B62E8C(uint64_t a1)
{
  if (!qword_1EC0C3C20)
  {
    sub_1C4572308(&qword_1EC0C3C28, &unk_1C4F54408);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0C3C20);
    }
  }
}

uint64_t sub_1C4B62EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C3BF0, &qword_1C4F54248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C4B62F60()
{
  sub_1C43FE96C();
  v1 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  memset(v29, 0, 40);
  sub_1C4EFB758();
  v8 = sub_1C4EFB978();
  if (v0)
  {
    (*(v3 + 8))(v7, v1);
    sub_1C4423A0C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
LABEL_12:
    sub_1C43FBC80();
  }

  else
  {
    v9 = v8;
    (*(v3 + 8))(v7, v1);
    sub_1C4423A0C(v29, &unk_1EC0BC770, &qword_1C4F10DC0);
    v10 = 0;
    v11 = *(v9 + 16);
    v12 = (v9 + 40);
    v13 = &unk_1EDDFF000;
    v14 = qword_1EDE2E088;
    v15 = v9;
    v27 = v9;
    v28 = v11;
    while (1)
    {
      if (v11 == v10)
      {

        goto LABEL_12;
      }

      if (v10 >= *(v15 + 16))
      {
        break;
      }

      v16 = *v12;
      v30 = *(v12 - 1);
      v17 = v13[350];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_1C4F00978();
      sub_1C442B738(v18, v14);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = sub_1C4F00968();
      v20 = sub_1C4F01CF8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = v14;
        v23 = v13;
        v24 = swift_slowAlloc();
        v29[0] = v24;
        *v21 = 136315138;
        *(v21 + 4) = sub_1C441D828(v30, v16, v29);
        _os_log_impl(&dword_1C43F8000, v19, v20, "grdb_migrations: %s", v21, 0xCu);
        sub_1C440962C(v24);
        v25 = v24;
        v13 = v23;
        v14 = v22;
        MEMORY[0x1C6942830](v25, -1, -1);
        v26 = v21;
        v15 = v27;
        v11 = v28;
        MEMORY[0x1C6942830](v26, -1, -1);
      }

      v12 += 2;
      ++v10;
    }

    __break(1u);
  }
}

uint64_t sub_1C4B63298()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBDB8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

void sub_1C4B6352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v20 = sub_1C4EFB0B8();
  sub_1C43FCDF8();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  sub_1C440B328();
  sub_1C44FAF64(v27, v28, MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4829BD0();
  sub_1C4F020C8();
  sub_1C440E7EC();
  sub_1C4EFBFC8();
  (*(v22 + 8))(v26, v20);
  sub_1C43FBC80();
}

uint64_t sub_1C4B63680()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBDB8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4B638B8()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBDB8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

void sub_1C4B63B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v21 = sub_1C4EFB0B8();
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  sub_1C4EFBF68();
  if (!v20)
  {
    sub_1C440B328();
    sub_1C44FAF64(v28, v29, MEMORY[0x1E699FE08]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4829BD0();
    sub_1C4F020C8();
    sub_1C440E7EC();
    sub_1C4EFBFC8();
    (*(v23 + 8))(v27, v21);
  }

  sub_1C43FBC80();
}

void sub_1C4B63DF4()
{
  sub_1C43FE96C();
  v10[1] = v0;
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C4EFBDB8();
  sub_1C4EFBE38();
  sub_1C4405740();
  sub_1C4EFB498();

  sub_1C4432A54();
  sub_1C4EFBDD8();
  sub_1C4405740();
  sub_1C4EFB498();

  sub_1C4432A54();
  sub_1C4EFBDD8();
  sub_1C4405740();
  sub_1C4EFB498();

  sub_1C4432A54();
  sub_1C4EFBDD8();
  sub_1C4405740();
  sub_1C4EFB498();

  v7 = sub_1C4432A54();
  v2(v7);
  sub_1C4405740();
  sub_1C4EFB498();

  sub_1C4432A54();
  v8 = *MEMORY[0x1E69A00D0];
  v9 = sub_1C4EFBF38();
  (*(*(v9 - 8) + 104))(v5, v8, v9);
  sub_1C440BAA8(v5, 0, 1, v9);
  sub_1C4EFB478();
  sub_1C4423A0C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C43FBC80();
}

uint64_t sub_1C4B64128()
{
  MEMORY[0x1C693A150](0x656372756F73, 0xE600000000000000, 0x614E656372756F73, 0xEA0000000000656DLL);
  MEMORY[0x1C693A150](0x797469746E65, 0xE600000000000000, 0x6C43797469746E65, 0xEF656D614E737361);
  return MEMORY[0x1C693A150](0x656E696C65706970, 0xED0000657079745FLL, 0x656E696C65706970, 0xEC00000065707954);
}

unint64_t sub_1C4B642D0()
{
  sub_1C4F02248();

  sub_1C4EF98F8();
  sub_1C44266D0();
  v0 = sub_1C4F02858();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_1C4B643B4()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_url;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore13StateDatabase_config);

  return v0;
}

uint64_t sub_1C4B64434()
{
  sub_1C4B643B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B644B8()
{
  if (qword_1EDDFF418 != -1)
  {
    swift_once();
  }
}

uint64_t type metadata accessor for TaskProgress(uint64_t a1)
{
  result = qword_1EDDEAF88;
  if (!qword_1EDDEAF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B645B4(uint64_t a1)
{
  result = sub_1C4EFD548();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4B64638(void *a1, void *a2)
{
  if ((MEMORY[0x1C6938740](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for TaskProgress(0);
  if ((sub_1C44E560C(a1 + *(v5 + 24), a2 + *(v5 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4B64708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E656372756F73 && a2 == 0xEA0000000000656DLL;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6567617473 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C4B64864(char a1)
{
  result = 0x6E656B6F74;
  switch(a1)
  {
    case 1:
      result = 0x614E656372756F73;
      break;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x6567617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B648E8(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3C78, &qword_1C4F546C0);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B65370();
  sub_1C4F02BF8();
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v15[15] = 0;
  sub_1C44344B8(v16, v11);
  sub_1C446E5F8();
  sub_1C4F027E8();
  sub_1C4434000(v16, v17);
  if (!v2)
  {
    sub_1C4420364(1);
    type metadata accessor for TaskProgress(0);
    LOBYTE(v16) = 2;
    sub_1C4EFD548();
    sub_1C4407BA8();
    sub_1C4B65484(v12, v13, MEMORY[0x1E69A92D0]);
    sub_1C4F027E8();
    sub_1C4420364(3);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4B64ADC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_1C4EFD548();
  sub_1C43FCDF8();
  v35 = v4;
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1C456902C(&qword_1EC0C3C68, &qword_1C4F546B8);
  sub_1C43FCDF8();
  v34 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for TaskProgress(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4409678(a1, a1[3]);
  sub_1C4B65370();
  v12 = v38;
  sub_1C4F02BC8();
  if (v12)
  {
    return sub_1C440962C(a1);
  }

  v32 = v6;
  v38 = v9;
  v13 = v11;
  v14 = v35;
  v15 = v36;
  v40 = 0;
  sub_1C444C16C();
  sub_1C4F026C8();
  *v13 = v39;
  *(v13 + 16) = sub_1C4400E60(1);
  *(v13 + 24) = v16;
  LOBYTE(v39) = 2;
  sub_1C4407BA8();
  sub_1C4B65484(v17, v18, MEMORY[0x1E69A92F0]);
  v19 = v32;
  v20 = v15;
  v31 = 0;
  sub_1C4F026C8();
  v21 = v38;
  (*(v14 + 32))(v13 + *(v38 + 24), v19, v20);
  v22 = sub_1C4400E60(3);
  v32 = v23;
  v24 = v22;
  v25 = sub_1C441A594();
  v26(v25);
  v27 = (v13 + *(v21 + 28));
  v29 = v32;
  v28 = v33;
  *v27 = v24;
  v27[1] = v29;
  sub_1C4B653C4(v13, v28);
  sub_1C440962C(a1);
  return sub_1C4B65428(v13);
}

uint64_t sub_1C4B64E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B64708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B64EC0(uint64_t a1)
{
  v2 = sub_1C4B65370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B64EFC(uint64_t a1)
{
  v2 = sub_1C4B65370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B64F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B65484(&qword_1EC0C3C60, type metadata accessor for TaskProgress, &unk_1C4F54614);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4B65000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4B65484(&qword_1EC0C3C58, type metadata accessor for TaskProgress, &unk_1C4F54568);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4B65184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B65484(&qword_1EC0C3C80, type metadata accessor for TaskProgress, &unk_1C4F545EC);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4B652E0(uint64_t a1)
{
  result = sub_1C4B65484(&qword_1EC0C3C58, type metadata accessor for TaskProgress, &unk_1C4F54568);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B65338()
{
  v0 = *aTaskProgress;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v0;
}

unint64_t sub_1C4B65370()
{
  result = qword_1EC0C3C70;
  if (!qword_1EC0C3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3C70);
  }

  return result;
}

uint64_t sub_1C4B653C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskProgress(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B65428(uint64_t a1)
{
  v2 = type metadata accessor for TaskProgress(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B65484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for TaskProgress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B655AC()
{
  result = qword_1EC0C3C88;
  if (!qword_1EC0C3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3C88);
  }

  return result;
}

unint64_t sub_1C4B65604()
{
  result = qword_1EC0C3C90;
  if (!qword_1EC0C3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3C90);
  }

  return result;
}

unint64_t sub_1C4B6565C()
{
  result = qword_1EC0C3C98;
  if (!qword_1EC0C3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3C98);
  }

  return result;
}

uint64_t StateStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StateStore.init(config:)(a1);
  return v2;
}

void *StateStore.init(config:)(uint64_t a1)
{
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore10StateStore_config;
  sub_1C4431258(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore10StateStore_config, type metadata accessor for Configuration);
  if (qword_1EDDFF418 != -1)
  {
    swift_once();
  }

  v5 = sub_1C44F8B30();
  sub_1C441A5A4();
  sub_1C4454318(a1, v6);
  if (v2)
  {
    sub_1C441A5A4();
    sub_1C4454318(v1 + v4, v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v5;
  }

  return v1;
}

uint64_t StateStore.deinit()
{

  sub_1C441A5A4();
  sub_1C4454318(v0 + v1, v2);
  return v0;
}

uint64_t StateStore.__deallocating_deinit()
{

  sub_1C441A5A4();
  sub_1C4454318(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StateStore(uint64_t a1)
{
  result = qword_1EDDFA008;
  if (!qword_1EDDFA008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B65978()
{

  v0 = sub_1C49A5640(sub_1C4B659DC, 0);

  return v0;
}

void *sub_1C4B659DC@<X0>(uint64_t *a2@<X8>)
{
  v70 = a2;
  v2 = type metadata accessor for TaskProgress(0);
  v69 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0C3CA0, &qword_1C4F54818);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - v7;
  sub_1C4B66050(qword_1EDDEAFA0, &unk_1C4F54684);
  sub_1C4EFADF8();
  sub_1C4401CBC(&qword_1EDDF00E8, &qword_1EC0C3CA0, &qword_1C4F54818, MEMORY[0x1E699FF60]);
  sub_1C4B66050(&qword_1EDDEAF98, &unk_1C4F5463C);
  v9 = v72;
  v10 = sub_1C4EFAFD8();
  result = (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    v72 = v2;

    v65 = v10;
    sub_1C456902C(&qword_1EC0C3CA8, &qword_1C4F54820);
    sub_1C4401CBC(&qword_1EDDF01C8, &qword_1EC0C3CA8, &qword_1C4F54820, MEMORY[0x1E699FDF8]);
    v12 = sub_1C4F00F18();
    sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0x6B6F54206B736154;
    *(inited + 40) = 0xEB00000000736E65;
    v55 = inited;
    sub_1C456902C(&qword_1EC0BAB10, &qword_1C4F16C20);
    result = sub_1C4F02538();
    v14 = result;
    v15 = 0;
    v16 = *(v12 + 64);
    v56 = v12 + 64;
    v17 = 1 << *(v12 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v61 = result + 8;
    v22 = v69;
    v21 = v70;
    v23 = v72;
    v59 = 0;
    v58 = v12;
    v57 = result;
    v60 = v20;
    if (v19)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v19));
        v25 = (v19 - 1) & v19;
LABEL_11:
        v28 = v24 | (v15 << 6);
        v66 = v25;
        v29 = *(v12 + 56);
        v30 = (*(v12 + 48) + 16 * v28);
        v31 = v30[1];
        v67 = *v30;
        v68 = v28;
        v32 = *(v29 + 8 * v28);
        v33 = *(v32 + 16);
        if (v33)
        {
          v64 = v15;
          v75 = MEMORY[0x1E69E7CC0];
          v63 = v31;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44CD9C0(0, v33, 0);
          v34 = v32;
          v35 = v75;
          v36 = (*(v22 + 80) + 32) & ~*(v22 + 80);
          v62 = v34;
          v37 = v34 + v36;
          v71 = *(v22 + 72);
          do
          {
            sub_1C4431258(v37, v4, type metadata accessor for TaskProgress);
            v38 = &v4[*(v23 + 28)];
            v39 = *(v38 + 1);
            v73 = *v38;
            v74 = v39;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            MEMORY[0x1C6940010](2108704, 0xE300000000000000);
            v40 = sub_1C4EFD3D8();
            MEMORY[0x1C6940010](v40);

            MEMORY[0x1C6940010](2108704, 0xE300000000000000);
            MEMORY[0x1C6940010](*(v4 + 2), *(v4 + 3));
            v41 = v73;
            v42 = v74;
            sub_1C4454318(v4, type metadata accessor for TaskProgress);
            v75 = v35;
            v44 = *(v35 + 16);
            v43 = *(v35 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_1C44CD9C0(v43 > 1, v44 + 1, 1);
              v35 = v75;
            }

            *(v35 + 16) = v44 + 1;
            v45 = v35 + 16 * v44;
            *(v45 + 32) = v41;
            *(v45 + 40) = v42;
            v23 = v72;
            v37 += v71;
            --v33;
          }

          while (v33);

          v22 = v69;
          v21 = v70;
          v12 = v58;
          v14 = v57;
          v15 = v64;
          result = v63;
        }

        else
        {
          result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v35 = MEMORY[0x1E69E7CC0];
        }

        v46 = v68;
        *(v61 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
        v47 = (v14[6] + 16 * v46);
        *v47 = v67;
        v47[1] = result;
        *(v14[7] + 8 * v46) = v35;
        v48 = v14[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          break;
        }

        v14[2] = v50;
        v20 = v60;
        v19 = v66;
        if (!v66)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v26 = v15;
      while (1)
      {
        v15 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v15 >= v20)
        {

          v51 = sub_1C456902C(&qword_1EC0C3CB0, &qword_1C4F54828);
          v52 = v55;
          *(v55 + 72) = v51;
          *(v52 + 48) = v14;
          v53 = sub_1C4F00F28();

          *v21 = v53;
          return result;
        }

        v27 = *(v56 + 8 * v15);
        ++v26;
        if (v27)
        {
          v24 = __clz(__rbit64(v27));
          v25 = (v27 - 1) & v27;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4B66050(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TaskProgress(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4B66094@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TaskProgress(0);
  result = sub_1C4EFD3D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C4B66128(uint64_t a1)
{
  sub_1C4B661AC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C4B661AC(uint64_t a1)
{
  if (!qword_1EDDFF9A0)
  {
    sub_1C4F001E8();
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDFF9A0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StaticKnowledgeAssetType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4B662E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4665727574616566 && a2 == 0xEB0000000067616CLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4B663FC(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x4665727574616566;
}

uint64_t sub_1C4B6644C(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3CC8, &qword_1C4F549D8);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B67A80();
  sub_1C4F02BF8();
  v14[15] = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v14[14] = *(v3 + 16);
    v14[13] = 1;
    sub_1C4B67B98();
    sub_1C4F027E8();
    type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0);
    v14[12] = 2;
    sub_1C4F001E8();
    sub_1C441A5BC();
    sub_1C4B67BEC(v11, v12, MEMORY[0x1E69A9D88]);
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4B66624@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  sub_1C456902C(&qword_1EC0C3CC0, &qword_1C4F549D0);
  sub_1C43FCDF8();
  v27 = v8;
  v28 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for StaticKnowledgeAssetMetadataInManifest(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4409678(a1, a1[3]);
  sub_1C4B67A80();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v24 = v12;
  v25 = v6;
  v16 = v27;
  v32 = 0;
  *v15 = sub_1C4F02678();
  *(v15 + 1) = v17;
  v30 = 1;
  sub_1C4B67AD4();
  sub_1C4F026C8();
  v18 = v16;
  v15[16] = v31;
  sub_1C4F001E8();
  v29 = 2;
  sub_1C441A5BC();
  sub_1C4B67BEC(v19, v20, MEMORY[0x1E69A9D98]);
  v21 = v25;
  sub_1C4F02658();
  (*(v18 + 8))(v11, v28);
  sub_1C4B67B28(v21, &v15[*(v24 + 24)]);
  sub_1C4B682B8(v15, v26, type metadata accessor for StaticKnowledgeAssetMetadataInManifest);
  sub_1C440962C(a1);
  return sub_1C4B68318(v15, type metadata accessor for StaticKnowledgeAssetMetadataInManifest);
}

uint64_t sub_1C4B66968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B662E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B66990(uint64_t a1)
{
  v2 = sub_1C4B67A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B669CC(uint64_t a1)
{
  v2 = sub_1C4B67A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B66A38()
{
  sub_1C456902C(&qword_1EC0BD8D0, &qword_1C4F2FE10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - v1;
  v3 = sub_1C456902C(&qword_1EC0BDDB0, &qword_1C4F32058);
  sub_1C44F9918(v3, qword_1EDE2CA20);
  sub_1C442B738(v3, qword_1EDE2CA20);
  type metadata accessor for StaticKnowledgeAssetMetadata(0);
  type metadata accessor for StaticKnowledgeTriple(0);
  v4 = sub_1C4EFA748();
  sub_1C440BAA8(v2, 1, 1, v4);
  sub_1C4B67BEC(&qword_1EDDFAA88, type metadata accessor for StaticKnowledgeAssetMetadata, &unk_1C4F54DE0);
  sub_1C4B67BEC(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F55330);
  sub_1C4EFAE58();
  return sub_1C4B67CA8(v2);
}

uint64_t sub_1C4B66BBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4665727574616566 && a2 == 0xEB0000000067616CLL)
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

uint64_t sub_1C4B66D58(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6E6F6973726576;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x4665727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B66DE0(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3CE8, &qword_1C4F54E50);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B68264();
  sub_1C4F02BF8();
  v14[15] = 0;
  sub_1C4402150();
  sub_1C4F02788();
  if (!v2)
  {
    v14[14] = 1;
    sub_1C4402150();
    sub_1C4F02798();
    v14[13] = 2;
    sub_1C4402150();
    sub_1C4F027D8();
    v14[12] = *(v3 + 40);
    v14[11] = 3;
    sub_1C4B67B98();
    sub_1C4402150();
    sub_1C4F027E8();
    type metadata accessor for StaticKnowledgeAssetMetadata(0);
    v14[10] = 4;
    sub_1C4F001E8();
    sub_1C441A5BC();
    sub_1C4B67BEC(v11, v12, MEMORY[0x1E69A9D88]);
    sub_1C4402150();
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4B66FF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v22 = sub_1C456902C(&qword_1EC0C3CE0, &qword_1C4F54E48);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v23 = a1;
  sub_1C4409678(a1, v12);
  sub_1C4B68264();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(v23);
  }

  v29 = 0;
  sub_1C4400A9C();
  *v11 = sub_1C4F02668();
  v11[8] = v13 & 1;
  v28 = 1;
  sub_1C4400A9C();
  *(v11 + 2) = sub_1C4F02678();
  *(v11 + 3) = v14;
  v27 = 2;
  sub_1C4400A9C();
  *(v11 + 4) = sub_1C4F026B8();
  v25 = 3;
  sub_1C4B67AD4();
  sub_1C4F026C8();
  v11[40] = v26;
  sub_1C4F001E8();
  v24 = 4;
  sub_1C441A5BC();
  sub_1C4B67BEC(v15, v16, MEMORY[0x1E69A9D98]);
  sub_1C4F02658();
  v17 = sub_1C440B340();
  v18(v17);
  sub_1C4B67B28(v6, &v11[*(v8 + 32)]);
  sub_1C4B682B8(v11, v21, type metadata accessor for StaticKnowledgeAssetMetadata);
  sub_1C440962C(v23);
  return sub_1C4B68318(v11, type metadata accessor for StaticKnowledgeAssetMetadata);
}

uint64_t sub_1C4B67364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B673B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B66BBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B673E0(uint64_t a1)
{
  v2 = sub_1C4B68264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B6741C(uint64_t a1)
{
  v2 = sub_1C4B68264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C4B674B8(uint64_t a1)
{
  v1 = sub_1C4F025D8();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C4B67504(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6E6F6973726576;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x4665727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B6758C(uint64_t a1)
{
  v1 = sub_1C4F025D8();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4B675E0(char a1)
{
  if (a1)
  {
    return 0x7473696C70;
  }

  else
  {
    return 1852797802;
  }
}

uint64_t sub_1C4B6760C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B67BEC(&qword_1EDDFAA78, type metadata accessor for StaticKnowledgeAssetMetadata, &unk_1C4F54AB8);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4B676A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B67BEC(&qword_1EDDDFB10, type metadata accessor for StaticKnowledgeAssetMetadata, &unk_1C4F54A90);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C4B6776C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4B674B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4B6779C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4B67504(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4B677C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4B68210();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1C4B67814(uint64_t a1)
{
  v2 = sub_1C4826BB0();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1C4B67860(uint64_t a1)
{
  v2 = sub_1C4826AB0();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C4B678AC(uint64_t a1)
{
  v2 = sub_1C4826AB0();

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t sub_1C4B6791C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4B6758C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4B6794C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4B675E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C4B67A2C()
{
  result = qword_1EC0C3CB8;
  if (!qword_1EC0C3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3CB8);
  }

  return result;
}

unint64_t sub_1C4B67A80()
{
  result = qword_1EDDDC448;
  if (!qword_1EDDDC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC448);
  }

  return result;
}

unint64_t sub_1C4B67AD4()
{
  result = qword_1EDDFADF8;
  if (!qword_1EDDFADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFADF8);
  }

  return result;
}

uint64_t sub_1C4B67B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4B67B98()
{
  result = qword_1EDDE1878;
  if (!qword_1EDDE1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1878);
  }

  return result;
}

uint64_t sub_1C4B67BEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C4B67C34()
{
  result = qword_1EDDFAE00;
  if (!qword_1EDDFAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAE00);
  }

  return result;
}

uint64_t sub_1C4B67CA8(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BD8D0, &qword_1C4F2FE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StaticKnowledgeAssetMetadataInManifest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1C4B67E24(uint64_t a1)
{
  sub_1C4B67EC4();
  if (v1 <= 0x3F)
  {
    sub_1C4B661AC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4B67EC4()
{
  if (!qword_1EDDFCDC0)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFCDC0);
    }
  }
}

unint64_t sub_1C4B67F18()
{
  result = qword_1EC0C3CD0;
  if (!qword_1EC0C3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3CD0);
  }

  return result;
}

unint64_t sub_1C4B67F70()
{
  result = qword_1EC0C3CD8;
  if (!qword_1EC0C3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3CD8);
  }

  return result;
}

unint64_t sub_1C4B6805C()
{
  result = qword_1EDDDC438;
  if (!qword_1EDDDC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC438);
  }

  return result;
}

unint64_t sub_1C4B680B4()
{
  result = qword_1EDDDC440;
  if (!qword_1EDDDC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC440);
  }

  return result;
}

unint64_t sub_1C4B6810C()
{
  result = qword_1EDDFA9B8;
  if (!qword_1EDDFA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9B8);
  }

  return result;
}

unint64_t sub_1C4B68164()
{
  result = qword_1EDDFA9B0;
  if (!qword_1EDDFA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9B0);
  }

  return result;
}

unint64_t sub_1C4B681BC()
{
  result = qword_1EDDFA9C0;
  if (!qword_1EDDFA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9C0);
  }

  return result;
}

unint64_t sub_1C4B68210()
{
  result = qword_1EDDFA9A0;
  if (!qword_1EDDFA9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA9A0);
  }

  return result;
}

unint64_t sub_1C4B68264()
{
  result = qword_1EDDFAAA0;
  if (!qword_1EDDFAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAAA0);
  }

  return result;
}

uint64_t sub_1C4B682B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4B68318(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *sub_1C4B68370(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B68450()
{
  result = qword_1EC0C3CF0;
  if (!qword_1EC0C3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3CF0);
  }

  return result;
}

unint64_t sub_1C4B684A8()
{
  result = qword_1EDDFAA90;
  if (!qword_1EDDFAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAA90);
  }

  return result;
}

unint64_t sub_1C4B68500()
{
  result = qword_1EDDFAA98;
  if (!qword_1EDDFAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAA98);
  }

  return result;
}

unint64_t sub_1C4B68558(uint64_t a1)
{
  v1 = sub_1C4F025D8();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1C4B685A4(char a1)
{
  result = 0x64497465737361;
  switch(a1)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x7463656A626FLL;
      break;
    case 6:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4B686A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4B68558(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C4B686D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C4B685A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4B68700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4B69F9C();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1C4B6874C(uint64_t a1)
{
  v2 = sub_1C4826C74();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1C4B68798(uint64_t a1)
{
  v2 = sub_1C4826B5C();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C4B687E4(uint64_t a1)
{
  v2 = sub_1C4826B5C();

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t sub_1C4B68830(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001C4F86600 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4B68A84(char a1)
{
  result = 0x64497465737361;
  switch(a1)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x7463656A626FLL;
      break;
    case 6:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B68B60(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C3D08, &qword_1C4F553A0);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  sub_1C4409678(a1, a1[3]);
  sub_1C4B69FF0();
  sub_1C4F02BF8();
  v24 = 0;
  sub_1C43FBF44();
  sub_1C4F027F8();
  if (!v1)
  {
    v9 = type metadata accessor for StaticKnowledgeTriple(0);
    v23 = 1;
    sub_1C4EFF0C8();
    sub_1C4420388();
    sub_1C4B6A044(v10, v11, MEMORY[0x1E69A9818]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v22 = 2;
    sub_1C4EFEEF8();
    sub_1C442D39C();
    sub_1C4B6A044(v12, v13, MEMORY[0x1E69A9750]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v17[1] = *(v9 + 28);
    v21 = 3;
    sub_1C4EFF8A8();
    sub_1C4400E80();
    sub_1C4B6A044(v14, v15, MEMORY[0x1E69A99F0]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v20 = 4;
    sub_1C43FBF44();
    sub_1C4F027E8();
    v19 = 5;
    sub_1C43FBF44();
    sub_1C4F02798();
    v18 = 6;
    sub_1C43FBF44();
    sub_1C4F027B8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C4B68E50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v56 = v4;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v53 = v6 - v5;
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v62 = v8;
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v58 = v15;
  v59 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C456902C(&qword_1EC0C3D00, &qword_1C4F55398);
  sub_1C43FCDF8();
  v54 = v20;
  v55 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v64 = type metadata accessor for StaticKnowledgeTriple(0);
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBCC4();
  v23 = (v22 - v21);
  v24 = a1[3];
  v61 = a1;
  v25 = sub_1C4409678(a1, v24);
  sub_1C4B69FF0();
  v26 = v60;
  sub_1C4F02BC8();
  if (!v26)
  {
    v60 = v10;
    v71 = 0;
    *v23 = sub_1C4F026D8();
    v70 = 1;
    sub_1C4420388();
    sub_1C4B6A044(v29, v30, MEMORY[0x1E69A9838]);
    v31 = v59;
    sub_1C4F026C8();
    v32 = v63;
    v33 = v64;
    (*(v58 + 32))(v23 + v64[5], v18, v31);
    v69 = 2;
    sub_1C442D39C();
    sub_1C4B6A044(v34, v35, MEMORY[0x1E69A9778]);
    sub_1C4F026C8();
    v36 = v13;
    v37 = *(v62 + 32);
    v37(v23 + v33[6], v36, v32);
    v68 = 3;
    sub_1C4400E80();
    sub_1C4B6A044(v38, v39, MEMORY[0x1E69A9A10]);
    v40 = v53;
    v41 = v57;
    sub_1C4F026C8();
    (*(v56 + 32))(v23 + v64[7], v40, v41);
    v67 = 4;
    v42 = v60;
    v43 = v63;
    sub_1C4F026C8();
    v44 = v64;
    v37(v23 + v64[8], v42, v43);
    v66 = 5;
    v45 = sub_1C4F02678();
    v46 = (v23 + v44[9]);
    *v46 = v45;
    v46[1] = v47;
    v65 = 6;
    v48 = sub_1C4F02698();
    v49 = sub_1C4432A84();
    v50(v49);
    *(v23 + v44[10]) = v48;
    sub_1C482D6DC(v23, v52);
    sub_1C440962C(v61);
    return sub_1C482D740(v23);
  }

  sub_1C4413804();
  v27 = v63;
  v28 = v64;
  result = sub_1C440962C(v61);
  if (v24)
  {
    result = (*(v62 + 8))(v23 + v28[6], v27);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_5:
    if (!v13)
    {
      return result;
    }

    return (*(v62 + 8))(v23 + v28[8], v27);
  }

  if (!v25)
  {
    goto LABEL_5;
  }

LABEL_9:
  result = (*(v56 + 8))(v23 + v28[7], v57);
  if (v13)
  {
    return (*(v62 + 8))(v23 + v28[8], v27);
  }

  return result;
}

uint64_t sub_1C4B69578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B68830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B695A0(uint64_t a1)
{
  v2 = sub_1C4B69FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B695DC(uint64_t a1)
{
  v2 = sub_1C4B69FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B69664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C4EFF0C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4B696D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C4EFEEF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4B6974C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C4EFF8A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4B697C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C4EFEEF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C4B69834(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C4B6986C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B6A044(&unk_1EDDF4250, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F5511C);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4B69900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4B6A044(&qword_1EDDE3258, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F55278);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4B69A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4B6A044(&qword_1EDDE3248, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F550F4);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t type metadata accessor for StaticKnowledgeTriple(uint64_t a1)
{
  result = qword_1EDDF4240;
  if (!qword_1EDDF4240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B69BAC(uint64_t a1)
{
  v1 = sub_1C4EFF0C8();
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFEEF8();
    if (v3 <= 0x3F)
    {
      v4 = sub_1C4EFF8A8();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1C4B69D14(uint64_t a1)
{
  *(a1 + 8) = sub_1C4B6A044(&unk_1EDDF4260, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F552E8);
  result = sub_1C4B6A044(&qword_1EDDE3258, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F55278);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4B69D98(uint64_t a1)
{
  result = sub_1C4B6A044(&qword_1EC0BDB00, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F55090);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4B69DF4()
{
  result = qword_1EC0C3CF8;
  if (!qword_1EC0C3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3CF8);
  }

  return result;
}

unint64_t sub_1C4B69E98()
{
  result = qword_1EDDF1440;
  if (!qword_1EDDF1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1440);
  }

  return result;
}

unint64_t sub_1C4B69EF0()
{
  result = qword_1EDDF1438;
  if (!qword_1EDDF1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1438);
  }

  return result;
}

unint64_t sub_1C4B69F48()
{
  result = qword_1EDDF1448;
  if (!qword_1EDDF1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1448);
  }

  return result;
}

unint64_t sub_1C4B69F9C()
{
  result = qword_1EDDF1428;
  if (!qword_1EDDF1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1428);
  }

  return result;
}

unint64_t sub_1C4B69FF0()
{
  result = qword_1EDDF4288[0];
  if (!qword_1EDDF4288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF4288);
  }

  return result;
}

uint64_t sub_1C4B6A044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_1C4B6A08C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B6A16C()
{
  result = qword_1EC0C3D10;
  if (!qword_1EC0C3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D10);
  }

  return result;
}

unint64_t sub_1C4B6A1C4()
{
  result = qword_1EDDF4278;
  if (!qword_1EDDF4278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4278);
  }

  return result;
}

unint64_t sub_1C4B6A21C()
{
  result = qword_1EDDF4280;
  if (!qword_1EDDF4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4280);
  }

  return result;
}

uint64_t sub_1C4B6A274@<X0>(uint64_t a1@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](46, 0xE100000000000000);
    v5 = sub_1C442D3B4();
    v7 = v6(v5);
    MEMORY[0x1C6940010](v7);

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1C441A5D4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C441A5D4();
    swift_getAssociatedConformanceWitness();
    v10 = sub_1C44203A0();
    v14 = AssociatedConformanceWitness;
  }

  else
  {
    v15 = sub_1C442D3B4();
    v16(v15);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1C441A5D4();
    v17 = swift_getAssociatedConformanceWitness();
    sub_1C441A5D4();
    swift_getAssociatedConformanceWitness();
    v10 = sub_1C44203A0();
    v14 = v17;
  }

  KeyValueStore.fetch<A>(key:)(v10, v11, v12, v14, v13);
  if (!v19)
  {
  }

  return sub_1C440BAA8(a4, 1, 1, AssociatedTypeWitness);
}

void sub_1C4B6A434(void *a1)
{
  type metadata accessor for StatusItem(319, a1[2], a1[3], a1[4]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C4B6A82C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4B6A4E0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_1C44157D4((result + v7 + 40) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 40) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C4B6A628(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 40] & ~v10;

            sub_1C440BAA8(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 8) = 0u;
            *(a1 + 24) = 0u;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 40) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1C4B6A82C(uint64_t a1)
{
  if (!qword_1EDDF0328)
  {
    sub_1C4572308(&qword_1EC0B8C30, &qword_1C4F0E068);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDF0328);
    }
  }
}

uint64_t sub_1C4B6A890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C4B6A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 2;
  sub_1C4C82270(a1, sub_1C4B6B610, &v22, 0, a5, a6, a7, a8, v22, v23, v24, &v29, a1, v25, v26, v27[0], v27[1], v27[2], v28[0], v28[1], v28[2]);
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2E088);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CB8();
  if (sub_1C4400B94(v10))
  {
    sub_1C43FECF0();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28[0] = v12;
    *v11 = 136315138;
    swift_beginAccess();
    HIBYTE(v26) = v29;
    v13 = sub_1C4F01198();
    v15 = sub_1C441D828(v13, v14, v28);

    *(v11 + 4) = v15;
    sub_1C44090A4();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_1C440962C(v12);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  swift_beginAccess();
  return v29;
}

uint64_t sub_1C4B6AB68(uint64_t result)
{
  v1 = result;
  if (qword_1EDDFF3F8 != -1)
  {
    result = swift_once();
  }

  v2 = *(qword_1EDE2E018 + 16);
  if (v2)
  {
    v3 = (qword_1EDE2E018 + 40);
    do
    {
      result = sub_1C4AA3D44(v1, *(v3 - 1), *v3);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

__n128 *sub_1C4B6ABF0()
{
  v4 = sub_1C4435438();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4400EA4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44023C8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C456902C(&qword_1EC0C3D18, &unk_1C4F55600);
  inited = swift_initStackObject();
  sub_1C4412568(inited, xmmword_1C4F13950);
  v10 = type metadata accessor for GraphStore(0);
  sub_1C44099C4(v10);
  sub_1C4404708();
  if (v0)
  {

    inited[1].n128_u64[0] = 0;
  }

  else
  {
    sub_1C487D36C();

    sub_1C440B38C();
    v11 = type metadata accessor for StateStore(0);
    sub_1C44099C4(v11);
    StateStore.init(config:)(v3);
    sub_1C441123C();
    sub_1C4B65978();

    sub_1C4432A94();
    v12 = type metadata accessor for OntologyStore(0);
    sub_1C44099C4(v12);
    OntologyStore.init(config:)(v2);
    sub_1C4A6B7DC();

    sub_1C4413814();
    v13 = type metadata accessor for KeyValueStore(0);
    sub_1C44099C4(v13);
    sub_1C43FC8D4();
    sub_1C49A82D0();

    sub_1C4403788("GlobalKnowledgeStore");
    sub_1C441EF34();
    sub_1C48300AC(v1);
    sub_1C4831690();
    v16 = v15;

    inited[9].n128_u64[0] = v16;
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    v17 = sub_1C4F00F28();
    sub_1C465DFA4(v17);
    inited = v18;
  }

  return inited;
}

uint64_t sub_1C4B6AEC0(uint64_t a1)
{
  v3 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C44098F0(a1, v5 - v4);
  v7 = type metadata accessor for GraphStore(0);
  sub_1C44099C4(v7);
  GraphStore.init(config:)(v6);
  if (!v1)
  {
    sub_1C4ABD4E8();
    sub_1C4ABD53C();
    v6 = sub_1C486CD18();
  }

  return v6;
}

__n128 *sub_1C4B6AFD4()
{
  v4 = sub_1C4435438();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4400EA4();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44023C8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C456902C(&qword_1EC0C3D18, &unk_1C4F55600);
  inited = swift_initStackObject();
  sub_1C4412568(inited, xmmword_1C4F13950);
  v10 = type metadata accessor for GraphStore(0);
  sub_1C44099C4(v10);
  sub_1C4404708();
  if (v0)
  {

    inited[1].n128_u64[0] = 0;
  }

  else
  {
    sub_1C49D1E04();

    sub_1C440B38C();
    v11 = type metadata accessor for StateStore(0);
    sub_1C44099C4(v11);
    StateStore.init(config:)(v3);
    sub_1C441123C();
    sub_1C49D1E24();

    sub_1C4432A94();
    v12 = type metadata accessor for OntologyStore(0);
    sub_1C44099C4(v12);
    OntologyStore.init(config:)(v2);
    sub_1C49D1E44();

    sub_1C4413814();
    v13 = type metadata accessor for KeyValueStore(0);
    sub_1C44099C4(v13);
    sub_1C43FC8D4();
    sub_1C49D1E6C();

    sub_1C4403788("GlobalKnowledgeStore");
    sub_1C441EF34();
    sub_1C48300AC(v1);
    v15 = sub_1C49D2100();

    inited[9].n128_u64[0] = v15;
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    v16 = sub_1C4F00F28();
    sub_1C465DFA4(v16);
    inited = v17;
  }

  return inited;
}

unint64_t sub_1C4B6B2A4(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000046;
      break;
    case 2:
      result = 0xD0000000000000D5;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000080;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B6B350(char a1)
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v3;
  v4 = sub_1C4B6B2A4(a1);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  return sub_1C4F00F28();
}

uint64_t sub_1C4B6B408(uint64_t a1)
{
  v2 = sub_1C4B6CC10();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C4B6B444(uint64_t a1)
{
  v2 = sub_1C4B6CC10();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C4B6B4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B6B51C()
{
  sub_1C456902C(&qword_1EC0C3D20, &qword_1C4F55610);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F3B920;
  *(v0 + 32) = type metadata accessor for GraphDatabase(0);
  *(v0 + 40) = &off_1F43EE320;
  *(v0 + 48) = type metadata accessor for OntologyDatabase(0);
  *(v0 + 56) = &off_1F43F5998;
  *(v0 + 64) = type metadata accessor for StateDatabase(0);
  *(v0 + 72) = &off_1F43FDBD0;
  *(v0 + 80) = type metadata accessor for KeyValueDatabase(0);
  *(v0 + 88) = &off_1F43F2800;
  *(v0 + 96) = type metadata accessor for ViewDatabase(0);
  *(v0 + 104) = &off_1F4400FD0;
  *(v0 + 112) = type metadata accessor for EventLogDatabase(0);
  *(v0 + 120) = &off_1F43EB1F0;
  *(v0 + 128) = type metadata accessor for FeedbackLogDatabase(0);
  *(v0 + 136) = &off_1F43ECE20;
  result = type metadata accessor for GlobalKnowledgeDatabase(0);
  *(v0 + 144) = result;
  *(v0 + 152) = &off_1F43EDF10;
  qword_1EDE2E018 = v0;
  return result;
}

uint64_t sub_1C4B6B610()
{
  v1 = *(v0 + 16);
  result = sub_1C4B6B640(*(v0 + 24));
  *v1 = result;
  return result;
}

uint64_t sub_1C4B6B640(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2E088);
  sub_1C44098F0(a1, v4);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    v10 = Configuration.description.getter();
    v12 = v11;
    sub_1C4467948(v4);
    v13 = sub_1C441D828(v10, v12, &v30);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, v6, v7, "StorageSystem: starting up with %s", v8, 0xCu);
    sub_1C440962C(v9);
    MEMORY[0x1C6942830](v9, -1, -1);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  else
  {

    sub_1C4467948(v4);
  }

  v14 = sub_1C4B6BB84(a1);
  if (v14 == 2)
  {
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = 2;
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "StorageSystem: stateCheckAndRecovery failed.";
LABEL_31:
      _os_log_impl(&dword_1C43F8000, v15, v16, v19, v18, 2u);
      MEMORY[0x1C6942830](v18, -1, -1);
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v17 = v14;
  v20 = sub_1C44F8728(a1);
  if (v20 == 1)
  {
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C43F8000, v21, v22, "StorageSystem: checkDatabase found one or more databases in a recoverable state.", v23, 2u);
      MEMORY[0x1C6942830](v23, -1, -1);
    }

    sub_1C4B6AB68(a1);
    v17 = sub_1C4B6BB84(a1);
    if (!v17)
    {
      v24 = sub_1C4F00968();
      v25 = sub_1C4F01CE8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1C43F8000, v24, v25, "StorageSystem: warning: stateCheckAndRecovery did not detect and/or recover from state after checkout was recoverableState", v26, 2u);
        MEMORY[0x1C6942830](v26, -1, -1);
      }
    }

    v27 = sub_1C44F8728(a1);
    if (v27 == 1)
    {
      v15 = sub_1C4F00968();
      v16 = sub_1C4F01CD8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = 2;
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "StorageSystem: re-check of databases got into a recoverable state again, aborting.";
        goto LABEL_31;
      }
    }

    else if (v27 == 2)
    {
      v15 = sub_1C4F00968();
      v16 = sub_1C4F01CD8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = 2;
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "StorageSystem: re-check of databases failed.";
        goto LABEL_31;
      }
    }

    else
    {
      if (v17 != 2)
      {
        goto LABEL_29;
      }

      v15 = sub_1C4F00968();
      v16 = sub_1C4F01CD8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = 2;
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "StorageSystem: start up failed.";
        goto LABEL_31;
      }
    }

LABEL_28:
    v17 = 2;
    goto LABEL_32;
  }

  if (v20 == 2)
  {
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = 2;
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "StorageSystem: checkDatabase failed.";
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_29:
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CF8();
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "StorageSystem: start up complete.";
    goto LABEL_31;
  }

LABEL_32:

  return v17;
}

uint64_t sub_1C4B6BB84(uint64_t a1)
{
  v1 = a1;
  v6 = 0;
  if (qword_1EDDFF3F8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C45DB698();
  MEMORY[0x1EEE9AC00](v2);
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = &v6;
  sub_1C4D3D104(sub_1C4B6C984, v5, &unk_1F43DC8C8);

  return v6;
}

uint64_t sub_1C4B6BE14(unsigned __int8 *a1, char *a2, uint64_t a3, _BYTE *a4)
{
  v72 = a4;
  v73 = a3;
  v87[1] = *MEMORY[0x1E69E9840];
  v76 = sub_1C4EF98F8();
  v6 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v71 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v75 = v70 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v85 = v70 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v77 = v70 - v13;
  LODWORD(v14) = *a1;
  if (qword_1EDDFFAF0 != -1)
  {
    goto LABEL_39;
  }

LABEL_2:
  v15 = sub_1C4F00978();
  v74 = sub_1C442B738(v15, qword_1EDE2E088);
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CB8();
  v83 = v16;
  v18 = os_log_type_enabled(v16, v17);
  v86 = v6;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    LODWORD(v82) = v14;
    v14 = v20;
    v87[0] = v20;
    *v19 = 136315138;
    if (v82)
    {
      v21 = 0x6552616D65686373;
    }

    else
    {
      v21 = 0x6574707572726F63;
    }

    if (v82)
    {
      v22 = 0xEB00000000746573;
    }

    else
    {
      v22 = 0xE900000000000064;
    }

    v23 = sub_1C441D828(v21, v22, v87);

    *(v19 + 4) = v23;
    v24 = v83;
    _os_log_impl(&dword_1C43F8000, v83, v17, "StorageSystem: checking for %s", v19, 0xCu);
    sub_1C440962C(v14);
    v25 = v14;
    LODWORD(v14) = v82;
    MEMORY[0x1C6942830](v25, -1, -1);
    v26 = v19;
    v6 = v86;
    MEMORY[0x1C6942830](v26, -1, -1);
  }

  else
  {
  }

  v27 = v84;
  result = sub_1C4B6E7A0(a2, v14);
  v29 = v14;
  LODWORD(v14) = v27;
  v30 = v76;
  if (v27)
  {
    return result;
  }

  v81 = *(result + 16);
  if (!v81)
  {
  }

  v84 = result;
  v31 = 0;
  v32 = *(a2 + 2);
  while (v32 != v31)
  {
    v33 = v31 + 1;
    sub_1C4B6C6C4(&a2[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31]);
    v31 = v33;
  }

  v70[0] = 0;
  v83 = objc_opt_self();
  v34 = 0;
  v35 = v84;
  v80 = v84 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v82 = v6 + 16;
  if (v29)
  {
    v36 = 0x6552616D65686373;
  }

  else
  {
    v36 = 0x6574707572726F63;
  }

  v37 = 0xE900000000000064;
  if (v29)
  {
    v37 = 0xEB00000000746573;
  }

  v78 = v37;
  v79 = v36;
  a2 = v77;
  v70[1] = v6 + 8;
  do
  {
    if (v34 >= *(v35 + 16))
    {
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_2;
    }

    v38 = v86;
    v39 = v80 + *(v86 + 72) * v34;
    v77 = *(v86 + 16);
    (v77)(a2, v39, v30);
    v40 = [v83 defaultManager];
    v14 = v30;
    v41 = v85;
    sub_1C4EF9898();

    v42 = sub_1C4EF9868();
    v6 = *(v38 + 8);
    (v6)(v41, v14);
    v87[0] = 0;
    v30 = v14;
    LOBYTE(v38) = [v40 removeItemAtURL:v42 error:v87];

    v43 = v87[0];
    if ((v38 & 1) == 0)
    {
      v58 = v43;

      sub_1C4EF97A8();

LABEL_30:
      swift_willThrow();
      return (v6)(a2, v30);
    }

    ++v34;
    (v6)(a2, v14);
    v35 = v84;
  }

  while (v81 != v34);

  v44 = v75;
  sub_1C4EF9888();
  v45 = [v83 defaultManager];
  sub_1C4EF98E8();
  v46 = sub_1C4F01108();

  v47 = [v45 fileExistsAtPath_];

  if ((v47 & 1) == 0)
  {
    goto LABEL_34;
  }

  v86 = v6;
  v48 = v71;
  (v77)(v71, v44, v14);
  v49 = sub_1C4F00968();
  v50 = sub_1C4F01CF8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v87[0] = v52;
    *v51 = 136315138;
    sub_1C44266D0();
    v53 = sub_1C4F02858();
    v55 = v54;
    v56 = v48;
    v6 = v86;
    (v86)(v56, v76);
    v57 = sub_1C441D828(v53, v55, v87);
    v30 = v76;

    *(v51 + 4) = v57;
    _os_log_impl(&dword_1C43F8000, v49, v50, "StorageSystem: removing %s", v51, 0xCu);
    sub_1C440962C(v52);
    MEMORY[0x1C6942830](v52, -1, -1);
    MEMORY[0x1C6942830](v51, -1, -1);
  }

  else
  {

    v59 = v48;
    v6 = v86;
    (v86)(v59, v30);
  }

  v60 = [v83 defaultManager];
  v61 = sub_1C4EF9868();
  v87[0] = 0;
  v62 = [v60 removeItemAtURL:v61 error:v87];

  if (!v62)
  {
    v69 = v87[0];
    sub_1C4EF97A8();

    a2 = v44;
    goto LABEL_30;
  }

  v63 = v87[0];
LABEL_34:
  *v72 = 1;
  v64 = sub_1C4F00968();
  v65 = sub_1C4F01CF8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v87[0] = v67;
    *v66 = 136315138;
    *(v66 + 4) = sub_1C441D828(0xD000000000000036, 0x80000001C4FB2EB0, v87);
    _os_log_impl(&dword_1C43F8000, v64, v65, "StorageSystem: Posting notification %s", v66, 0xCu);
    sub_1C440962C(v67);
    MEMORY[0x1C6942830](v67, -1, -1);
    MEMORY[0x1C6942830](v66, -1, -1);
  }

  v68 = sub_1C4F011C8();
  notify_post((v68 + 32));
  (v6)(v44, v30);
}

void sub_1C4B6C6C4(uint64_t a1)
{
  v2 = sub_1C4EF98F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2E088);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    sub_1C43FECF0();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    sub_1C44266D0();
    v12 = sub_1C4F02858();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_1C441D828(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C43F8000, v8, v9, "StorageSystem: truncating database at %s", v10, 0xCu);
    sub_1C440962C(v11);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v16 = objc_opt_self();
  sub_1C4EF98E8();
  v17 = sub_1C4F01108();

  [v16 truncateDatabaseAtPath_];
}

_BYTE *storeEnumTagSinglePayload for StorageSystemStartupResult(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4B6CB64()
{
  result = qword_1EC0C3D30;
  if (!qword_1EC0C3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D30);
  }

  return result;
}

unint64_t sub_1C4B6CBBC()
{
  result = qword_1EC0C3D38;
  if (!qword_1EC0C3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D38);
  }

  return result;
}

unint64_t sub_1C4B6CC10()
{
  result = qword_1EC0C3D40;
  if (!qword_1EC0C3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D40);
  }

  return result;
}

uint64_t sub_1C4B6CC64()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_1C46655C4(v2);
    v10 = sub_1C441D828(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "<%s: Starting observe notification>", v6, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v11 = v1[2];
  MEMORY[0x1EEE9AC00](v12);

  os_unfair_lock_lock((v11 + 24));
  sub_1C4B6D5B4((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
}

uint64_t sub_1C4B6CE20()
{
  result = sub_1C4F01108();
  qword_1EDE2C8E8 = result;
  return result;
}

uint64_t *sub_1C4B6CE58()
{
  type metadata accessor for StorageSystemMonitor();
  v0 = swift_allocObject();
  result = sub_1C4B6CE94();
  qword_1EDE2CC08 = v0;
  return result;
}

uint64_t *sub_1C4B6CE94()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_1C46655C4(v2);
    v10 = sub_1C441D828(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C43F8000, v4, v5, "<%s: Init>", v6, 0xCu);
    sub_1C440962C(v7);
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  type metadata accessor for StorageSystemMonitor.GuardedData();
  v11 = swift_allocObject();
  sub_1C4EF98F8();
  sub_1C4F00BC8();
  sub_1C4695550(&qword_1EDDFFA00, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  *(v11 + 16) = sub_1C4F00F28();
  sub_1C456902C(&unk_1EC0C3D50, &unk_1C4F55820);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  v1[2] = v12;
  return v1;
}

uint64_t sub_1C4B6D0DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v6 = type metadata accessor for Configuration(0);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = v7;
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4F01D88();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4F01E38();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C456902C(&unk_1EC0BADE0, &unk_1C4F17660);
  v33 = *(v15 - 8);
  v34 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = *a1;
  swift_beginAccess();
  if (*(*(v18 + 16) + 16))
  {
    sub_1C43FE83C();
    if (v19)
    {
      return swift_endAccess();
    }
  }

  v29 = a2;
  v30 = v3;
  swift_endAccess();
  v21 = [objc_opt_self() defaultCenter];
  if (qword_1EDDDB900 != -1)
  {
    swift_once();
  }

  sub_1C4F01E48();

  sub_1C4F01D78();
  sub_1C4665684();
  v22 = sub_1C4F01DA8();
  v39 = v22;
  sub_1C4695550(&qword_1EDDDB8D0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1C4695550(&unk_1EDDDB910, sub_1C4665684, MEMORY[0x1E69E8028]);
  sub_1C4F00D08();

  (*(v31 + 8))(v10, v32);
  (*(v12 + 8))(v14, v11);
  v23 = v37;
  sub_1C44098F0(v29, v37);
  v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v25 = (v36 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1C4409954(v23, v26 + v24);
  *(v26 + v25) = v38;
  sub_1C46953BC();
  v27 = v34;
  sub_1C4F00D28();

  (*(v33 + 8))(v17, v27);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v18 + 16);
  sub_1C4661C18();
  *(v18 + 16) = v40;
  return swift_endAccess();
}

uint64_t sub_1C4B6D5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Configuration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = os_transaction_create();
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDDFECB8);
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v7;
    v36 = v17;
    v33 = v17;
    *v16 = 136315138;
    v18 = sub_1C46655C4(a3);
    v34 = a3;
    v20 = v12;
    v21 = v6;
    v22 = v11;
    v23 = v8;
    v24 = a2;
    v25 = sub_1C441D828(v18, v19, &v36);
    a3 = v34;

    *(v16 + 4) = v25;
    a2 = v24;
    v8 = v23;
    v11 = v22;
    v6 = v21;
    v12 = v20;
    _os_log_impl(&dword_1C43F8000, v14, v15, "<%s: Received notification>", v16, 0xCu);
    v26 = v33;
    sub_1C440962C(v33);
    v27 = v26;
    v7 = v35;
    MEMORY[0x1C6942830](v27, -1, -1);
    MEMORY[0x1C6942830](v16, -1, -1);
  }

  v28 = sub_1C4F018C8();
  sub_1C440BAA8(v11, 1, 1, v28);
  sub_1C44098F0(a2, v8);
  v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  sub_1C4409954(v8, v31 + v29);
  *(v31 + v30) = v12;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_1C4785250();
}

uint64_t sub_1C4B6D8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1C4B6D8F0, 0, 0);
}

uint64_t sub_1C4B6D8F0()
{
  v14 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v1 = sub_1C4F00978();
  v0[5] = sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_1C46655C4(v4);
    v9 = sub_1C441D828(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v2, v3, "<%s: Starting delta update>", v5, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  if (qword_1EDDF0AB0 != -1)
  {
    swift_once();
  }

  v0[6] = sub_1C4468E90();
  if (qword_1EDDFD268 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Source(0);
  sub_1C442B738(v10, &qword_1EDDFD270);
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1C4B6DC8C;

  return sub_1C4ACB9F0();
}

uint64_t sub_1C4B6DC8C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4B6DDC4, 0, 0);
  }

  else
  {

    sub_1C43FBDA0();

    return v2();
  }
}

uint64_t sub_1C4B6DDC4()
{
  v16 = v0;

  v2 = v0[8];
  v3 = v2;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_1C46655C4(v6);
    sub_1C441D828(v8, v9, &v15);
    sub_1C4410930();
    *(v7 + 4) = v1;
    *(v7 + 12) = 2080;
    v0[2] = v2;
    v10 = v2;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v11 = sub_1C4F01198();
    sub_1C441D828(v11, v12, &v15);
    sub_1C4410930();
    *(v7 + 14) = v1;
    _os_log_impl(&dword_1C43F8000, v4, v5, "<%s: Can't run delta updates for BMAppleMusicEvent due to: %s>", v7, 0x16u);
    swift_arrayDestroy();
    sub_1C43FFD4C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  sub_1C43FBDA0();

  return v13();
}