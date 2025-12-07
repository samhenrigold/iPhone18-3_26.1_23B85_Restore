uint64_t sub_18A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7270();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_7270();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A5C()
{
  sub_3E7C(&qword_10268, &qword_7A00);
  sub_6F9C(&qword_10290, &qword_10268, &qword_7A00, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D30(&qword_103A0, &qword_7B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B68()
{
  v1 = *(type metadata accessor for DMCNavigationView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_7270();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1CFC()
{
  result = qword_10260;
  if (!qword_10260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10260);
  }

  return result;
}

uint64_t sub_1D6C(uint64_t a1)
{
  v2 = sub_7230();
  __chkstk_darwin(v2 - 8);
  v3 = sub_71E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7500();
  sub_74F0();
  sub_74E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_640C();
  v7 = [objc_allocWithZone(PSSpecifier) init];
  [v7 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_7210();
  sub_71D0();
  sub_7270();
  type metadata accessor for DMCNavigationView(0);
  sub_65B4(&qword_10278, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  sub_65B4(&qword_10280, &type metadata accessor for DMCGenericViewControllerRecipe, &protocol conformance descriptor for DMCGenericViewControllerRecipe);
  sub_65B4(&qword_10288, type metadata accessor for DMCNavigationView, &unk_7AC0);
  sub_7390();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_204C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_7270();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7500();
  sub_74F0();
  sub_74E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(v5 + 16);
  v8(v7, a1, v4);
  v8(a2, v7, v4);
  v17 = sub_7260();
  v18 = v9;
  sub_73D0();
  v16 = v19;
  v10 = v20;
  v11 = type metadata accessor for DMCNavigationView(0);
  v12 = &a2[*(v11 + 20)];
  *v12 = v16;
  *(v12 + 2) = v10;
  LOBYTE(v17) = sub_7250();
  sub_73D0();
  (*(v5 + 8))(v7, v4);

  v14 = *(&v19 + 1);
  v15 = &a2[*(v11 + 24)];
  *v15 = v19;
  *(v15 + 1) = v14;
  return result;
}

uint64_t sub_2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  sub_3D30(&qword_10298, &qword_7A20);
  v3[33] = swift_task_alloc();
  v4 = sub_7410();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  sub_7540();
  v3[37] = swift_task_alloc();
  v5 = sub_7230();
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v6 = sub_7160();
  v3[42] = v6;
  v3[43] = *(v6 - 8);
  v3[44] = swift_task_alloc();
  v7 = sub_72D0();
  v3[45] = v7;
  v3[46] = *(v7 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v8 = sub_71C0();
  v3[49] = v8;
  v3[50] = *(v8 - 8);
  v3[51] = swift_task_alloc();
  sub_3D30(&qword_102A0, &qword_7A28);
  v3[52] = swift_task_alloc();
  v9 = sub_71B0();
  v3[53] = v9;
  v3[54] = *(v9 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = sub_7500();
  v3[57] = sub_74F0();
  v11 = sub_74E0();

  return _swift_task_switch(sub_25C0, v11, v10);
}

uint64_t sub_25C0()
{
  v151 = v0;
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 392);
  v7 = *(v0 + 400);

  sub_7440();
  sub_7180();
  v9 = *(v7 + 8);
  v8 = v7 + 8;
  v9(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v10 = *(v0 + 384);
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    sub_6DCC(*(v0 + 416), &qword_102A0, &qword_7A28);
    sub_7430();
    sub_7460();
    (*(v12 + 8))(v10, v11);
LABEL_101:

    v124 = *(v0 + 8);

    return v124();
  }

  (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 416), *(v0 + 424));
  sub_7430();
  *(v0 + 136) = sub_7190();
  *(v0 + 144) = v13;
  countAndFlagsBits = v0 + 136;
  *(v0 + 152) = 47;
  *(v0 + 160) = 0xE100000000000000;
  sub_600C();
  v15 = sub_7550();

  v16 = *(v15 + 16);
  v17 = &_swiftEmptyArrayStorage;
  if (!v16)
  {
    v136 = &_swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v18 = 0;
  v19 = -v16;
  v20 = v15 + 40;
  v136 = &_swiftEmptyArrayStorage;
  do
  {
    v17 = (v20 + 16 * v18++);
    while (1)
    {
      if ((v18 - 1) >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_105;
      }

      v1 = *(v17 - 1);
      v8 = *v17;

      countAndFlagsBits = sub_74F0();
      sub_74E0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v21 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v21 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v21)
      {
        goto LABEL_7;
      }

      v22 = sub_74A0();
      v24 = v23;
      if (v1 != v22 || v8 != v23)
      {
        break;
      }

      v8 = v24;
LABEL_7:

LABEL_8:

      ++v18;
      v17 += 2;
      if (v19 + v18 == 1)
      {
        v17 = &_swiftEmptyArrayStorage;
        goto LABEL_26;
      }
    }

    v25 = sub_75E0();

    if (v25)
    {
      goto LABEL_8;
    }

    countAndFlagsBits = v136;
    v148[0]._countAndFlagsBits = v136;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_6214(0, v136[2] + 1, 1);
      countAndFlagsBits = v148[0]._countAndFlagsBits;
    }

    v20 = v15 + 40;
    v27 = *(countAndFlagsBits + 16);
    v26 = *(countAndFlagsBits + 24);
    if (v27 >= v26 >> 1)
    {
      sub_6214((v26 > 1), v27 + 1, 1);
      v20 = v15 + 40;
      countAndFlagsBits = v148[0]._countAndFlagsBits;
    }

    *(countAndFlagsBits + 16) = v27 + 1;
    v136 = countAndFlagsBits;
    v28 = countAndFlagsBits + 16 * v27;
    *(v28 + 32) = v1;
    *(v28 + 40) = v8;
    v17 = &_swiftEmptyArrayStorage;
  }

  while (v19 + v18);
LABEL_26:

  countAndFlagsBits = *(v0 + 440);
  if (!v136[2])
  {

    sub_71A0();
    if (v67)
    {
      v68 = *(v0 + 256);
      v69 = sub_7490();

      [v68 setSpecifierIdentifierToScrollAndHighlight:v69];
    }

    v71 = *(v0 + 432);
    v70 = *(v0 + 440);
    v72 = *(v0 + 424);
    v74 = *(v0 + 368);
    v73 = *(v0 + 376);
    v75 = *(v0 + 360);
    sub_7460();
    (*(v74 + 8))(v73, v75);
    (*(v71 + 8))(v70, v72);
    goto LABEL_101;
  }

  v134 = v136[5];
  v135 = v136[4];

  v29 = sub_7170();
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = &_swiftEmptyArrayStorage;
  }

  v145 = v30[2];
  if (!v145)
  {
    v32 = &_swiftEmptyDictionarySingleton;
LABEL_59:

    v76 = sub_74A0();
    v146 = v32;
    if (v32[2])
    {
      v78 = sub_58C0(v76, v77);
      v80 = v79;

      v8 = v134;
      if (v80)
      {
        sub_6234(v32[7] + 40 * v78, v0 + 56);
        v81 = swift_dynamicCast();
        if (v81)
        {
          v17 = *(v0 + 184);
        }

        else
        {
          v17 = 0;
        }

        if (v81)
        {
          countAndFlagsBits = *(v0 + 192);
        }

        else
        {
          countAndFlagsBits = 0;
        }
      }

      else
      {
        v17 = 0;
        countAndFlagsBits = 0;
      }
    }

    else
    {

      v17 = 0;
      countAndFlagsBits = 0;
      v8 = v134;
    }

    if (sub_74A0() == v135 && v82 == v8)
    {

LABEL_73:
      v84 = *(v0 + 272);
      v85 = *(v0 + 280);
      v86 = *(v0 + 264);

      sub_7530();
      sub_7220();
      sub_7200();
      if ((*(v85 + 48))(v86, 1, v84) != 1)
      {
        v95 = *(v0 + 432);
        v142 = *(v0 + 440);
        v144 = *(v0 + 424);
        v97 = *(v0 + 368);
        v96 = *(v0 + 376);
        v139 = *(v0 + 328);
        v140 = *(v0 + 360);
        v98 = *(v0 + 312);
        v137 = *(v0 + 304);
        v99 = *(v0 + 280);
        v100 = *(v0 + 288);
        v101 = *(v0 + 264);
        v102 = *(v0 + 272);

        (*(v99 + 32))(v100, v101, v102);
        sub_7450();
        (*(v99 + 8))(v100, v102);
        (*(v98 + 8))(v139, v137);
        (*(v97 + 8))(v96, v140);
        (*(v95 + 8))(v142, v144);
LABEL_100:

        goto LABEL_101;
      }

      sub_6DCC(*(v0 + 264), &qword_10298, &qword_7A20);
      *(v0 + 464) = 1;
      sub_7590();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_5E7C(&v148[0]._countAndFlagsBits, 0x6574616D696E61, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v88 = v146;
      *(v0 + 232) = v136;
      sub_3D30(&qword_102B8, &qword_7A38);
      sub_6F9C(&qword_102C0, &qword_102B8, &qword_7A38, &protocol conformance descriptor for [A]);
      v89 = sub_7480();
      v91 = v90;

      v92._countAndFlagsBits = sub_71A0();
      if (v92._object)
      {
        v148[0]._countAndFlagsBits = 35;
        v148[0]._object = 0xE100000000000000;
        sub_74D0(v92);

        sub_74D0(v148[0]);
      }

      v93 = HIBYTE(v91) & 0xF;
      if ((v91 & 0x2000000000000000) == 0)
      {
        v93 = v89 & 0xFFFFFFFFFFFFLL;
      }

      if (v93)
      {
        *(v0 + 168) = v89;
        *(v0 + 176) = v91;
        sub_7590();
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v146;
        sub_5E7C(&v148[0]._countAndFlagsBits, 1752457584, 0xE400000000000000, v94);
        v88 = v150;
      }

      else
      {
      }

      v105 = *(v0 + 320);
      v104 = *(v0 + 328);
      v106 = *(v0 + 304);
      v107 = *(v0 + 312);
      sub_35B8(v88);
      sub_71F0();

      sub_65B4(&qword_102C8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
      sub_72C0();
      v108 = *(v107 + 8);
      v108(v105, v106);
      v108(v104, v106);
LABEL_99:
      v119 = *(v0 + 432);
      v118 = *(v0 + 440);
      v120 = *(v0 + 424);
      v122 = *(v0 + 368);
      v121 = *(v0 + 376);
      v123 = *(v0 + 360);
      sub_7460();
      (*(v122 + 8))(v121, v123);
      (*(v119 + 8))(v118, v120);
      goto LABEL_100;
    }

    v83 = sub_75E0();

    if (v83)
    {
      goto LABEL_73;
    }

    if (sub_74A0() == v135 && v103 == v8)
    {
      v1 = v135;

LABEL_87:
      v110 = *(v0 + 256);

      v111 = sub_74A0();
      v113 = v1;
      v114 = v8;
      v115 = v110;
LABEL_97:
      sub_38A4(v111, v112, v113, v114, v115);

LABEL_98:

      goto LABEL_99;
    }

    v1 = v135;
    v109 = sub_75E0();

    if (v109)
    {
      goto LABEL_87;
    }

    if (sub_74A0() == v135 && v116 == v8)
    {

LABEL_95:
      v115 = *(v0 + 256);
      v111 = v17;
      v112 = countAndFlagsBits;
      v113 = v135;
LABEL_96:
      v114 = v8;
      goto LABEL_97;
    }

    v117 = sub_75E0();

    if (v117)
    {
      goto LABEL_95;
    }

LABEL_105:
    if (sub_74A0() == v1 && v125 == v8)
    {
    }

    else
    {
LABEL_109:
      v126 = sub_75E0();

      if ((v126 & 1) == 0)
      {
        v115 = *(v0 + 256);
        v111 = v17;
        v112 = countAndFlagsBits;
        v113 = v135;
        goto LABEL_96;
      }
    }

    v127 = *(v0 + 256);
    if (countAndFlagsBits)
    {
      v128 = objc_opt_self();
      v129 = sub_7490();

      v130 = [v128 itemSpecifierIDForAccountUsername:v129];

      v131 = sub_74A0();
      v133 = v132;

      sub_38A4(v131, v133, v135, v8, v127);
    }

    else
    {
      sub_38A4(v17, 0, v135, v8, *(v0 + 256));
    }

    goto LABEL_98;
  }

  v8 = 0;
  v31 = *(v0 + 344);
  v141 = v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v143 = v31;
  v138 = (v31 + 8);
  v32 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v8 >= v30[2])
    {
      __break(1u);
      goto LABEL_109;
    }

    (*(v143 + 16))(*(v0 + 352), &v141[*(v143 + 72) * v8], *(v0 + 336));
    v17 = sub_74F0();
    sub_74E0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v33 = sub_7140();
    v35 = v34;
    v36 = sub_7150();
    if (!v37 || (*(v0 + 200) = v36, *(v0 + 208) = v37, v38 = sub_7560(), v40 = v39, , !v40))
    {
      v53 = sub_58C0(v33, v35);
      countAndFlagsBits = v54;

      if (countAndFlagsBits)
      {
        v148[0]._countAndFlagsBits = v32;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_6060();
          v32 = v148[0]._countAndFlagsBits;
        }

        countAndFlagsBits = *(v0 + 352);
        v55 = *(v0 + 336);

        v56 = v32[7] + 40 * v53;
        v57 = *v56;
        v58 = *(v56 + 16);
        *(v0 + 48) = *(v56 + 32);
        *(v0 + 16) = v57;
        *(v0 + 32) = v58;
        sub_5CC0(v53, v32);
        (*v138)(countAndFlagsBits, v55);
      }

      else
      {
        (*v138)(*(v0 + 352), *(v0 + 336));
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      sub_6DCC(v0 + 16, &qword_102B0, &qword_7A30);

      goto LABEL_34;
    }

    v41 = v30;
    *(v0 + 216) = v38;
    *(v0 + 224) = v40;
    sub_7590();
    v42 = v148[1];
    *(v0 + 96) = v148[0];
    *(v0 + 112) = v42;
    *(v0 + 128) = v149;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v32;
    v45 = sub_58C0(v33, v35);
    v46 = v32;
    v47 = v32[2];
    v48 = (v44 & 1) == 0;
    result = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      __break(1u);
LABEL_115:
      __break(1u);
      return result;
    }

    v50 = v44;
    if (v46[3] >= result)
    {
      if ((v43 & 1) == 0)
      {
        sub_6060();
      }

      goto LABEL_50;
    }

    sub_59F0(result, v43);
    v51 = sub_58C0(v33, v35);
    if ((v50 & 1) != (v52 & 1))
    {
      break;
    }

    v45 = v51;
LABEL_50:
    countAndFlagsBits = *(v0 + 352);
    v59 = *(v0 + 336);
    if (v50)
    {

      v32 = v147;
      sub_6290(v0 + 96, v147[7] + 40 * v45);
      (*v138)(countAndFlagsBits, v59);
    }

    else
    {
      v32 = v147;
      v147[(v45 >> 6) + 8] |= 1 << v45;
      v60 = (v147[6] + 16 * v45);
      *v60 = v33;
      v60[1] = v35;
      v61 = v147[7] + 40 * v45;
      v62 = *(v0 + 128);
      v63 = *(v0 + 112);
      *v61 = *(v0 + 96);
      *(v61 + 16) = v63;
      *(v61 + 32) = v62;
      result = (*v138)(countAndFlagsBits, v59);
      v64 = v147[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_115;
      }

      v147[2] = v66;
    }

    v30 = v41;
LABEL_34:
    if (v145 == ++v8)
    {
      goto LABEL_59;
    }
  }

  return sub_75F0();
}

uint64_t sub_35B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_3D30(&qword_102D8, &qword_7A48);
    v2 = sub_75D0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_6234(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_62EC(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_62EC(v35, v24);
    result = sub_7580(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_62EC(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_38A4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  sub_3D30(&qword_102E0, &qword_7A50);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_7930;
  sub_75A0(82);
  v15._object = 0x8000000000007C30;
  v15._countAndFlagsBits = 0xD000000000000050;
  sub_74D0(v15);
  v11 = a1;
  v12 = a2;
  if (!a2)
  {

    v11 = a3;
    v12 = a4;
  }

  v16._countAndFlagsBits = v11;
  v16._object = v12;
  sub_74D0(v16);

  *(v10 + 56) = &type metadata for String;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  sub_7600();

  if (!a2)
  {
  }

  v13 = sub_7490();

  [a5 setSpecifierIdentifierToScrollAndSelect:v13];
}

uint64_t sub_3A38@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_3D30(&qword_10268, &qword_7A00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - v4;
  v6 = *v1;
  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  v16[0] = sub_3D30(&qword_10270, &qword_7A08);
  v8 = sub_71E0();
  v9 = sub_7270();
  v10 = type metadata accessor for DMCNavigationView(255);
  v11 = sub_65B4(&qword_10278, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v12 = sub_65B4(&qword_10280, &type metadata accessor for DMCGenericViewControllerRecipe, &protocol conformance descriptor for DMCGenericViewControllerRecipe);
  v13 = sub_65B4(&qword_10288, type metadata accessor for DMCNavigationView, &unk_7AC0);
  v16[2] = v8;
  v16[3] = v9;
  v16[4] = v10;
  v16[5] = v11;
  v16[6] = v12;
  v16[7] = v13;
  swift_getOpaqueTypeConformance2();
  sub_7470();
  *(swift_allocObject() + 16) = v7;
  sub_6F9C(&qword_10290, &qword_10268, &qword_7A00, &protocol conformance descriptor for SettingsPane<A>);
  v14 = v7;
  sub_7420();
  return (*(v3 + 8))(v5, v2);
}

id sub_3CF4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = result;
  return result;
}

uint64_t sub_3D30(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for DMCNavigationView(uint64_t a1)
{
  result = qword_10550;
  if (!qword_10550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DCC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_711C;

  return sub_2244(a1, a2, v6);
}

uint64_t sub_3E7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_3EC4(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for DMCNavigationView(0);
  v3 = v2 - 8;
  v67 = *(v2 - 8);
  __chkstk_darwin(v2);
  v68 = v4;
  v69 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_72F0();
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7270();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7290();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3D30(&qword_10390, &qword_7B10);
  v17 = *(v16 - 8);
  v73 = v16;
  v74 = v17;
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  v61 = sub_3D30(&qword_10398, &qword_7B18);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v72 = &v58 - v20;
  v58 = sub_3D30(&qword_103A0, &qword_7B20);
  __chkstk_darwin(v58);
  v59 = &v58 - v21;
  v63 = sub_3D30(&qword_103A8, &qword_7B28);
  __chkstk_darwin(v63);
  v62 = &v58 - v22;
  v23 = sub_3D30(&qword_103B0, &qword_7B30);
  v65 = *(v23 - 8);
  v66 = v23;
  __chkstk_darwin(v23);
  v64 = &v58 - v24;
  v25 = *(v9 + 16);
  v71 = v1;
  v25(v11, v1, v8);
  sub_7280();
  v26 = (v1 + *(v3 + 28));
  v27 = *v26;
  v28 = *(v26 + 2);
  v77 = v27;
  v78 = v28;
  sub_3D30(&qword_103B8, &qword_7B38);
  sub_73E0();
  v77 = v80;
  v29 = sub_65B4(&qword_103C0, &type metadata accessor for DMCGenericViewControllerRepresentable, &protocol conformance descriptor for DMCGenericViewControllerRepresentable);
  v30 = sub_600C();
  sub_7380();

  (*(v13 + 8))(v15, v12);
  v32 = v75;
  v31 = v76;
  (*(v75 + 104))(v7, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v76);
  *&v77 = v12;
  *(&v77 + 1) = &type metadata for String;
  v78 = v29;
  v79 = v30;
  v33 = v72;
  swift_getOpaqueTypeConformance2();
  v34 = v73;
  sub_73A0();
  v35 = v7;
  v36 = v71;
  (*(v32 + 8))(v35, v31);
  (*(v74 + 8))(v19, v34);
  v37 = sub_7240();
  v38 = [v37 view];

  if (v38)
  {
    v39 = [v38 backgroundColor];

    if (!v39)
    {
      v40 = [objc_opt_self() clearColor];
    }

    v41 = sub_73C0();
    v42 = sub_7340();
    v43 = v59;
    (*(v60 + 32))(v59, v33, v61);
    v44 = v43 + *(v58 + 36);
    *v44 = v41;
    *(v44 + 8) = v42;
    v45 = sub_72E0();
    v46 = sub_7340();
    v47 = v62;
    v48 = sub_1AF4(v43, v62);
    v49 = v47 + *(v63 + 36);
    *v49 = v45;
    *(v49 + 8) = v46;
    __chkstk_darwin(v48);
    *(&v58 - 2) = v36;
    sub_3D30(&qword_103C8, &qword_7B40);
    sub_6604();
    v50 = sub_3E7C(&qword_103F0, &qword_7B50);
    v51 = sub_6800();
    *&v77 = v50;
    *(&v77 + 1) = v51;
    swift_getOpaqueTypeConformance2();
    v52 = v64;
    sub_73B0();
    sub_6DCC(v47, &qword_103A8, &qword_7B28);
    v53 = v69;
    sub_68F4(v36, v69);
    v54 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v55 = swift_allocObject();
    sub_6958(v53, v55 + v54);
    v56 = v70;
    (*(v65 + 32))(v70, v52, v66);
    v57 = (v56 + *(sub_3D30(&qword_10410, &qword_7B60) + 36));
    *v57 = sub_69BC;
    v57[1] = v55;
    v57[2] = 0;
    v57[3] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_3D30(&qword_10428, &qword_7BA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v23 = &v22 - v5;
  v6 = sub_7310();
  __chkstk_darwin(v6 - 8);
  v7 = sub_3D30(&qword_10400, &qword_7B58);
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v25 = sub_3D30(&qword_103F0, &qword_7B50);
  v10 = __chkstk_darwin(v25);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_7500();
  v24 = sub_74F0();
  sub_74E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = (a1 + *(type metadata accessor for DMCNavigationView(0) + 24));
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v28) = v16;
  v29 = v17;
  sub_3D30(&qword_10420, &qword_7B98);
  sub_73E0();
  if (v27 == 1)
  {
    sub_7300();
    sub_3D30(&qword_10430, qword_7BA8);
    sub_6F9C(&qword_10438, &qword_10430, qword_7BA8, &protocol conformance descriptor for ProgressView<A, B>);
    sub_72A0();
    v18 = sub_6F9C(&qword_10408, &qword_10400, &qword_7B58, &protocol conformance descriptor for ToolbarItem<A, B>);
    v19 = v23;
    sub_7320();
    (*(v4 + 16))(v12, v19, v3);
    (*(v4 + 56))(v12, 0, 1, v3);
    v28 = v7;
    v29 = v18;
    swift_getOpaqueTypeConformance2();
    sub_7330();
    sub_6DCC(v12, &qword_103F0, &qword_7B50);
    (*(v4 + 8))(v19, v3);
    (*(v22 + 8))(v9, v7);
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3);
    v20 = sub_6F9C(&qword_10408, &qword_10400, &qword_7B58, &protocol conformance descriptor for ToolbarItem<A, B>);
    v28 = v7;
    v29 = v20;
    swift_getOpaqueTypeConformance2();
    sub_7330();
    sub_6DCC(v12, &qword_103F0, &qword_7B50);
  }

  sub_6800();
  sub_7320();
  sub_6DCC(v14, &qword_103F0, &qword_7B50);
}

uint64_t sub_4C64()
{
  sub_7500();
  sub_74F0();
  sub_74E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_72B0();
}

void sub_4D00(uint64_t a1)
{
  v2 = type metadata accessor for DMCNavigationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_7500();
  sub_74F0();
  sub_74E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [objc_opt_self() defaultCenter];
  v6 = kDMCNavUIUpdatedNotification;
  v7 = [objc_opt_self() mainQueue];
  sub_68F4(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_6958(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  aBlock[4] = sub_6B28;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_55B4;
  aBlock[3] = &unk_C878;
  v10 = _Block_copy(aBlock);

  v11 = [v5 addObserverForName:v6 object:0 queue:v7 usingBlock:v10];
  _Block_release(v10);

  swift_unknownObjectRelease();
}

uint64_t sub_4F50(uint64_t a1)
{
  v2 = type metadata accessor for DMCNavigationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D30(&qword_10418, &qword_7B68);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_7520();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_68F4(a1, v5);
  sub_7500();
  v10 = sub_74F0();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_6958(v5, v12 + v11);
  sub_52C4(0, 0, v8, &unk_7B78, v12);
}

uint64_t sub_5108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_7500();
  *(v4 + 64) = sub_74F0();
  v6 = sub_74E0();

  return _swift_task_switch(sub_51A0, v6, v5);
}

uint64_t sub_51A0()
{
  v1 = *(v0 + 56);

  v2 = sub_7260();
  v4 = v3;
  v5 = type metadata accessor for DMCNavigationView(0);
  v6 = (v1 + *(v5 + 20));
  v7 = *v6;
  v8 = *(v6 + 2);
  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  *(v0 + 40) = v2;
  *(v0 + 48) = v4;
  sub_3D30(&qword_103B8, &qword_7B38);
  sub_73F0();
  v9 = sub_7250();
  v10 = (v1 + *(v5 + 24));
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v0 + 16) = v11;
  *(v0 + 24) = v12;
  *(v0 + 40) = v9;
  sub_3D30(&qword_10420, &qword_7B98);
  sub_73F0();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_52C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3D30(&qword_10418, &qword_7B68);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_6D5C(a3, v25 - v10);
  v12 = sub_7520();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_6DCC(v11, &qword_10418, &qword_7B68);
  }

  else
  {
    sub_7510();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_74E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_74B0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_6DCC(a3, &qword_10418, &qword_7B68);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_6DCC(a3, &qword_10418, &qword_7B68);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_55B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_7130();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_7120();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_56D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_57C8;

  return v6(a1);
}

uint64_t sub_57C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_58C0(uint64_t a1, uint64_t a2)
{
  sub_7610();
  sub_74C0();
  v4 = sub_7620();

  return sub_5938(a1, a2, v4);
}

unint64_t sub_5938(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_75E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_59F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_3D30(&qword_102D0, &qword_7A40);
  v38 = v4;
  result = sub_75C0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_6234(v27, &v39);
      }

      sub_7610();
      sub_74C0();
      result = sub_7620();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_5CC0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_7570() + 1) & ~v5;
    do
    {
      sub_7610();

      sub_74C0();
      v11 = sub_7620();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_5E7C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_58C0(a2, a3);
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
      sub_59F0(v16, a4 & 1);
      v11 = sub_58C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_75F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_6060();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_6290(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_600C()
{
  result = qword_102A8;
  if (!qword_102A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102A8);
  }

  return result;
}

void *sub_6060()
{
  v1 = v0;
  sub_3D30(&qword_102D0, &qword_7A40);
  v2 = *v0;
  v3 = sub_75B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_6234(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_6214(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_62FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_62EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_62FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3D30(&qword_102E8, &qword_7A58);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_640C()
{
  result = qword_102F0;
  if (!qword_102F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_102F0);
  }

  return result;
}

void sub_6480(uint64_t a1)
{
  sub_7270();
  if (v1 <= 0x3F)
  {
    sub_653C(319, &qword_10350, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_653C(319, &unk_10358, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_653C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_7400();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_65B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_6604()
{
  result = qword_103D0;
  if (!qword_103D0)
  {
    sub_3E7C(&qword_103A8, &qword_7B28);
    sub_6690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103D0);
  }

  return result;
}

unint64_t sub_6690()
{
  result = qword_103D8;
  if (!qword_103D8)
  {
    sub_3E7C(&qword_103A0, &qword_7B20);
    sub_3E7C(&qword_10390, &qword_7B10);
    sub_7290();
    sub_65B4(&qword_103C0, &type metadata accessor for DMCGenericViewControllerRepresentable, &protocol conformance descriptor for DMCGenericViewControllerRepresentable);
    sub_600C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_6F9C(&qword_103E0, &qword_103E8, &qword_7B48, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103D8);
  }

  return result;
}

unint64_t sub_6800()
{
  result = qword_103F8;
  if (!qword_103F8)
  {
    sub_3E7C(&qword_103F0, &qword_7B50);
    sub_3E7C(&qword_10400, &qword_7B58);
    sub_6F9C(&qword_10408, &qword_10400, &qword_7B58, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103F8);
  }

  return result;
}

uint64_t sub_68F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DMCNavigationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DMCNavigationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_69BC()
{
  v1 = *(type metadata accessor for DMCNavigationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_4D00(v2);
}

uint64_t sub_6A1C()
{
  v1 = *(type metadata accessor for DMCNavigationView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_7270();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6B28()
{
  v1 = *(type metadata accessor for DMCNavigationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_4F50(v2);
}

uint64_t sub_6B88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6BA0()
{
  v2 = *(type metadata accessor for DMCNavigationView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_6C68;

  return sub_5108(v4, v5, v6, v0 + v3);
}

uint64_t sub_6C68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_6D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D30(&qword_10418, &qword_7B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6DCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3D30(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6E2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_711C;

  return sub_56D0(a1, v4);
}

uint64_t sub_6EE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6C68;

  return sub_56D0(a1, v4);
}

uint64_t sub_6F9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_3E7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_6FE4()
{
  result = qword_10440;
  if (!qword_10440)
  {
    sub_3E7C(&qword_10410, &qword_7B60);
    sub_3E7C(&qword_103A8, &qword_7B28);
    sub_3E7C(&qword_103C8, &qword_7B40);
    sub_6604();
    sub_3E7C(&qword_103F0, &qword_7B50);
    sub_6800();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10440);
  }

  return result;
}