uint64_t sub_258B5C754(uint64_t a1, uint64_t a2)
{
  sub_258B6030C(0, &qword_2811137F8, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258B5C7FC(uint64_t a1)
{
  sub_258B6030C(0, &qword_2811137F8, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258B5C89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258B60AC0(0, qword_281113988, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_258B60AC0(0, &qword_281113780, MEMORY[0x277CE3BA0], MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_258B5C9EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258B60AC0(0, qword_281113988, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_258B60AC0(0, &qword_281113780, MEMORY[0x277CE3BA0], MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_258B5CB4C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C94990]();
  *a1 = result;
  return result;
}

uint64_t sub_258B5CBA4()
{
  sub_258B61C68(255);
  sub_258B61B58(255);
  sub_258B61A88(255);
  sub_258B61900(255);
  sub_258B62478(&qword_281113778, sub_258B61900, MEMORY[0x277CE3D88]);
  sub_258B60C78();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258B5CCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_258B64E84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258B5CD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_258B64E84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_258B5CE04()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2811139C8 = result;
  return result;
}

void *sub_258B5CE5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258B5CE7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258B5CE7C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258B5E47C(0, &qword_27F97AC50, sub_258B5D52C, MEMORY[0x277D84560]);
  sub_258B5D52C();
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  sub_258B5D52C();
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

uint64_t sub_258B5D078(uint64_t a1)
{
  v47 = sub_258B64D74();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_258B64DD4();
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B64DB4();
  MEMORY[0x28223BE20](v6 - 8);
  v43 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_258B64E84();
  v8 = *(v42 - 8);
  v9 = MEMORY[0x28223BE20](v42);
  v41 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v40 = v31 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v31 - v13;
  sub_258B5D52C();
  v39 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v48 = MEMORY[0x277D84F90];
    sub_258B5CE5C(0, v19, 0);
    v20 = v48;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = v2;
    v24 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v35 = *(v21 + 56);
    v36 = v22;
    v33 = (v4 + 8);
    v34 = (v23 + 8);
    v31[1] = v16 + 32;
    v32 = (v21 - 8);
    v37 = v16;
    v38 = v21;
    do
    {
      v25 = v42;
      v36(v14, v24, v42);
      sub_258B64E64();
      sub_258B64E64();
      v26 = v44;
      sub_258B64DC4();
      v27 = v46;
      sub_258B64D64();
      sub_258B64D54();
      (*v34)(v27, v47);
      (*v33)(v26, v45);
      sub_258B65144();
      (*v32)(v14, v25);
      v48 = v20;
      v29 = *(v20 + 16);
      v28 = *(v20 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_258B5CE5C((v28 > 1), v29 + 1, 1);
        v20 = v48;
      }

      *(v20 + 16) = v29 + 1;
      (*(v37 + 32))(v20 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29, v18, v39);
      v24 += v35;
      --v19;
    }

    while (v19);
  }

  return v20;
}

void sub_258B5D52C()
{
  if (!qword_281113788)
  {
    v0 = sub_258B65154();
    if (!v1)
    {
      atomic_store(v0, &qword_281113788);
    }
  }
}

void *sub_258B5D584(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v137 = a1;
  v100 = sub_258B64E24();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v3 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_258B64F94();
  v102 = *(v103 - 8);
  v4 = MEMORY[0x28223BE20](v103);
  v101 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v98 = &v97 - v6;
  v117 = sub_258B64F04();
  v142 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_258B64EC4();
  v139 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_258B64ED4();
  v136 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_258B64EB4();
  v10 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B5E47C(0, &qword_281113970, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v114 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v128 = &v97 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v97 - v17;
  v19 = sub_258B64E84();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v112 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v141 = &v97 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v140 = &v97 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v97 - v27;
  v29 = sub_258B64E94();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_258B64F14();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 104))(v32, *MEMORY[0x277CC9830], v29);
  v144 = v34;
  sub_258B64EA4();
  v35 = v137;
  (*(v30 + 8))(v32, v29);
  v36 = *(v20 + 16);
  v37 = v28;
  v38 = v145;
  v145 = v19;
  v111 = v20 + 16;
  v110 = v36;
  v36(v28, v38, v19);
  v127 = *(v10 + 104);
  v126 = *MEMORY[0x277CC9878];
  v125 = *MEMORY[0x277CC9900];
  v124 = (v136 + 13);
  v123 = *MEMORY[0x277CC98E8];
  v122 = (v139 + 104);
  v121 = (v139 + 8);
  v120 = v136 + 1;
  v130 = v10 + 104;
  v119 = (v10 + 8);
  v118 = (v20 + 48);
  v109 = (v20 + 32);
  v108 = *MEMORY[0x277CC9968];
  v107 = (v142 + 13);
  v39 = v35;
  v106 = (v142 + 1);
  v113 = v20;
  v136 = (v20 + 8);
  v142 = MEMORY[0x277D84F90];
  v143 = v18;
  v40 = 7;
  v138 = v37;
  v116 = v3;
  while (1)
  {
    v139 = v40;
    v44 = v129;
    v45 = v131;
    v127(v129, v126, v131);
    v46 = v132;
    v47 = v133;
    (*v124)(v132, v125, v133);
    v49 = v134;
    v48 = v135;
    (*v122)(v134, v123, v135);
    v50 = v143;
    sub_258B64EF4();
    (*v121)(v49, v48);
    (*v120)(v46, v47);
    v51 = v145;
    (*v119)(v44, v45);
    v52 = v128;
    sub_258B5E4E0(v50, v128);
    v53 = *v118;
    if ((*v118)(v52, 1, v51) == 1)
    {
      break;
    }

    v54 = *v109;
    v55 = v140;
    v56 = v52;
    v57 = v145;
    (*v109)(v140, v56, v145);
    v110(v141, v55, v57);
    v58 = v142;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_258B63F30(0, v58[2] + 1, 1, v58);
    }

    v59 = v114;
    v61 = v58[2];
    v60 = v58[3];
    if (v61 >= v60 >> 1)
    {
      v58 = sub_258B63F30((v60 > 1), v61 + 1, 1, v58);
    }

    v58[2] = v61 + 1;
    v62 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v142 = v58;
    v63 = v145;
    (v54)(v58 + v62 + *(v113 + 72) * v61, v141, v145);
    v64 = v115;
    v65 = v117;
    (*v107)(v115, v108, v117);
    v66 = v138;
    sub_258B64EE4();
    (*v106)(v64, v65);
    if (v53(v59, 1, v63) == 1)
    {
      sub_258B64E64();
      v67 = *v136;
      v68 = v145;
      (*v136)(v140, v145);
      sub_258B5E574(v143);
      v67(v66, v68);
      if (v53(v59, 1, v68) != 1)
      {
        sub_258B5E574(v59);
      }

      v41 = v138;
    }

    else
    {
      v67 = *v136;
      v69 = v145;
      (*v136)(v140, v145);
      sub_258B5E574(v143);
      v67(v66, v69);
      (v54)(v112, v59, v69);
      v41 = v66;
    }

    v39 = v137;
    v42 = v139;
    v43 = v41;
    v54();
    v40 = v42 - 1;
    v3 = v116;
    if (!v40)
    {
      v67(v43, v145);
      goto LABEL_24;
    }
  }

  sub_258B5E574(v52);
  v70 = sub_258B64DF4();
  v71 = v3;
  if (v72 & 1) != 0 || (v73 = v70, v74 = sub_258B64E04(), (v75))
  {
    v76 = v101;
    sub_258B64F74();
    v77 = v99;
    v78 = v100;
    (*(v99 + 16))(v71, v39, v100);
    v79 = sub_258B64F84();
    v80 = sub_258B65264();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v146 = v82;
      *v81 = 136315394;
      *(v81 + 4) = sub_258B64340(0xD00000000000001CLL, 0x8000000258B65720, &v146);
      *(v81 + 12) = 2080;
      sub_258B5E600();
      v83 = sub_258B65304();
      v85 = v84;
      (*(v77 + 8))(v71, v78);
      v86 = sub_258B64340(v83, v85, &v146);

      *(v81 + 14) = v86;
      _os_log_impl(&dword_258B5B000, v79, v80, "[%s] DateComponent doesn't contain hour and/or minute %s", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C95000](v82, -1, -1);
      MEMORY[0x259C95000](v81, -1, -1);
    }

    else
    {

      (*(v77 + 8))(v71, v78);
    }

    (*(v102 + 8))(v76, v103);
    v87 = v143;
  }

  else
  {
    v88 = v74;
    v89 = v98;
    sub_258B64F74();
    v90 = sub_258B64F84();
    v91 = sub_258B65264();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v143;
    if (v92)
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v146 = v95;
      *v94 = 136315650;
      *(v94 + 4) = sub_258B64340(0xD00000000000001CLL, 0x8000000258B65720, &v146);
      *(v94 + 12) = 2048;
      *(v94 + 14) = v73;
      *(v94 + 22) = 2048;
      *(v94 + 24) = v88;
      _os_log_impl(&dword_258B5B000, v90, v91, "[%s] Next Date nil for scheduleTime: %ld:%ld", v94, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x259C95000](v95, -1, -1);
      MEMORY[0x259C95000](v94, -1, -1);
    }

    (*(v102 + 8))(v89, v103);
    v87 = v93;
  }

  sub_258B5E574(v87);
  (*v136)(v138, v145);
LABEL_24:
  (*(v104 + 8))(v144, v105);
  return v142;
}

void sub_258B5E47C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258B5E4E0(uint64_t a1, uint64_t a2)
{
  sub_258B5E47C(0, &qword_281113970, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258B5E574(uint64_t a1)
{
  sub_258B5E47C(0, &qword_281113970, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258B5E600()
{
  result = qword_27F97AC58;
  if (!qword_27F97AC58)
  {
    sub_258B64E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F97AC58);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t MentalHealthLauncherComplicationView.init(overriddenWidgetFamily:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_258B60AC0(0, &qword_281113848, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for MentalHealthLauncherComplicationView(0) + 20);

  return sub_258B600A8(a1, v4);
}

uint64_t MentalHealthLauncherComplicationView.body.getter()
{
  sub_258B609C8(0, &qword_281113808, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - v1;
  sub_258B6030C(0, &qword_2811137F8, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = sub_258B65164();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B5E9F0(v9);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277CE3B78] || v10 == *MEMORY[0x277CE3B90])
  {
    sub_258B5ED04(v5);
    sub_258B5C754(v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_258B606B4();
    sub_258B65044();
    return sub_258B5C7FC(v5);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_258B606B4();
    sub_258B65044();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_258B5E9F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B64FF4();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CE3BA0];
  sub_258B60AC0(0, &qword_281113848, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = MEMORY[0x277D83D88];
  sub_258B60AC0(0, &qword_281113780, v6, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for MentalHealthLauncherComplicationView(0);
  sub_258B60CDC(v1 + *(v14 + 20), v13, &qword_281113780, v10);
  v15 = sub_258B65164();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return (*(v16 + 32))(a1, v13, v15);
  }

  sub_258B60D58(v13);
  sub_258B60CDC(v1, v9, &qword_281113848, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v16 + 32))(a1, v9, v15);
  }

  sub_258B65274();
  v18 = sub_258B65054();
  sub_258B64F64();

  sub_258B64FE4();
  swift_getAtKeyPath();

  return (*(v20 + 8))(v5, v3);
}

uint64_t sub_258B5ED04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_258B65124();
  MEMORY[0x28223BE20](v2);
  sub_258B60224(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B60A74();
  sub_258B65294();
  sub_258B65104();
  v16[1] = MEMORY[0x277D84F90];
  sub_258B6066C(&qword_281113798, MEMORY[0x277D12700], MEMORY[0x277D12708]);
  sub_258B60AC0(0, &qword_281113748, MEMORY[0x277D12700], MEMORY[0x277D83940]);
  sub_258B60B24();
  sub_258B652B4();
  if (qword_281113750 != -1)
  {
    swift_once();
  }

  v7 = qword_281113738;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_258B64E34();
  sub_258B65114();
  if (qword_2811137A8 != -1)
  {
    swift_once();
  }

  v8 = qword_2811137B0;
  KeyPath = swift_getKeyPath();
  v10 = &v6[*(v4 + 36)];
  *v10 = KeyPath;
  v10[1] = v8;

  v11 = sub_258B5F034();
  v13 = v12;
  v14 = sub_258B5F450();
  sub_258B5F7F8(v11, v13, v14, a1);

  return sub_258B60BAC(v6);
}

uint64_t sub_258B5F034()
{
  v1 = sub_258B64FF4();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277CE3BA0];
  sub_258B60AC0(0, &qword_281113848, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = MEMORY[0x277D83D88];
  sub_258B60AC0(0, &qword_281113780, v4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_258B65164();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MentalHealthLauncherComplicationView(0);
  sub_258B60CDC(v0 + *(v16 + 20), v11, &qword_281113780, v8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_258B60D58(v11);
    sub_258B60CDC(v0, v7, &qword_281113848, MEMORY[0x277CDF458]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v13 + 32))(v15, v7, v12);
    }

    else
    {
      sub_258B65274();
      v17 = sub_258B65054();
      sub_258B64F64();

      sub_258B64FE4();
      swift_getAtKeyPath();

      (*(v19 + 8))(v3, v20);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  if ((*(v13 + 88))(v15, v12) == *MEMORY[0x277CE3B78])
  {
    if (qword_281113738 != -1)
    {
      swift_once();
    }

    return sub_258B64E34();
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    return 0;
  }
}

BOOL sub_258B5F450()
{
  v1 = sub_258B64FF4();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277CE3BA0];
  sub_258B60AC0(0, &qword_281113848, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = MEMORY[0x277D83D88];
  sub_258B60AC0(0, &qword_281113780, v4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_258B65164();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MentalHealthLauncherComplicationView(0);
  sub_258B60CDC(v0 + *(v16 + 20), v11, &qword_281113780, v8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_258B60D58(v11);
    sub_258B60CDC(v0, v7, &qword_281113848, MEMORY[0x277CDF458]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v13 + 32))(v15, v7, v12);
    }

    else
    {
      sub_258B65274();
      v17 = sub_258B65054();
      sub_258B64F64();

      sub_258B64FE4();
      swift_getAtKeyPath();

      (*(v21 + 8))(v3, v22);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v18 = (*(v13 + 88))(v15, v12);
  v19 = *MEMORY[0x277CE3B78];
  if (v18 != *MEMORY[0x277CE3B78])
  {
    (*(v13 + 8))(v15, v12);
  }

  return v18 == v19;
}

uint64_t sub_258B5F7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_258B6030C(0, &qword_281113810, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  sub_258B6013C(0);
  v32 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v31[1] = v31;
    MEMORY[0x28223BE20](v14);
    v31[2] = a4;
    v31[-4] = a1;
    v31[-3] = a2;
    LOBYTE(v31[-2]) = a3 & 1;
    sub_258B60224(0);
    v18 = v17;
    sub_258B6030C(0, &qword_281113828, sub_258B60390, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v20 = v19;
    v21 = sub_258B60410();
    v22 = sub_258B60548();
    sub_258B65094();
    v23 = v32;
    (*(v13 + 16))(v11, v16, v32);
    swift_storeEnumTagMultiPayload();
    v33 = v18;
    v34 = v20;
    v35 = v21;
    v36 = v22;
    swift_getOpaqueTypeConformance2();
    sub_258B65044();
    return (*(v13 + 8))(v16, v23);
  }

  else
  {
    sub_258B60C08(v4, v11);
    swift_storeEnumTagMultiPayload();
    sub_258B60224(0);
    v26 = v25;
    sub_258B6030C(255, &qword_281113828, sub_258B60390, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v28 = v27;
    v29 = sub_258B60410();
    v30 = sub_258B60548();
    v33 = v26;
    v34 = v28;
    v35 = v29;
    v36 = v30;
    swift_getOpaqueTypeConformance2();
    return sub_258B65044();
  }
}

uint64_t sub_258B5FBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v33 = a4;
  v30 = sub_258B64F34();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29[0] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B60390();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B65254();
  v29[1] = sub_258B65244();
  sub_258B65234();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = a1;
  v36 = a2;
  sub_258B60C78();

  v11 = sub_258B65074();
  v13 = v12;
  v15 = v14;
  if (qword_2811137A8 != -1)
  {
    swift_once();
  }

  v16 = sub_258B65064();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_258B60CCC(v11, v13, v15 & 1);

  v35 = v16;
  v36 = v18;
  v23 = v20 & 1;
  v37 = v20 & 1;
  v38 = v22;
  v24 = v29[0];
  v25 = v30;
  (*(v6 + 104))(v29[0], *MEMORY[0x277D280E8], v30);
  v26 = MEMORY[0x277CE0BC8];
  sub_258B65084();
  (*(v6 + 8))(v24, v25);
  sub_258B60CCC(v16, v18, v23);

  v35 = MEMORY[0x277CE0BD8];
  v36 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v32;
  sub_258B650E4();
  (*(v31 + 8))(v10, v27);
}

uint64_t sub_258B5FF0C()
{
  result = sub_258B650F4();
  qword_2811137B0 = result;
  return result;
}

uint64_t sub_258B5FF2C()
{
  v0 = sub_258B64F34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D280E8], v0);
  v4 = sub_258B65204();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_281113758 = v4;
  unk_281113760 = v6;
  return result;
}

uint64_t type metadata accessor for MentalHealthLauncherComplicationView(uint64_t a1)
{
  result = qword_2811139B8;
  if (!qword_2811139B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258B600A8(uint64_t a1, uint64_t a2)
{
  sub_258B60AC0(0, &qword_281113780, MEMORY[0x277CE3BA0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258B6013C(uint64_t a1)
{
  if (!qword_2811137C0)
  {
    sub_258B60224(255);
    sub_258B6030C(255, &qword_281113828, sub_258B60390, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_258B60410();
    sub_258B60548();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811137C0);
    }
  }
}

void sub_258B60224(uint64_t a1)
{
  if (!qword_281113838)
  {
    sub_258B65134();
    sub_258B60AC0(255, &qword_2811137D8, sub_258B602BC, MEMORY[0x277CE0860]);
    v1 = sub_258B64FA4();
    if (!v2)
    {
      atomic_store(v1, &qword_281113838);
    }
  }
}

void sub_258B602BC()
{
  if (!qword_2811137A0)
  {
    v0 = sub_258B652A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811137A0);
    }
  }
}

void sub_258B6030C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258B60390()
{
  if (!qword_2811137C8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811137C8);
    }
  }
}

unint64_t sub_258B60410()
{
  result = qword_281113840;
  if (!qword_281113840)
  {
    sub_258B60224(255);
    sub_258B6066C(&qword_281113790, MEMORY[0x277D12710], MEMORY[0x277D126F8]);
    sub_258B604C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113840);
  }

  return result;
}

unint64_t sub_258B604C0()
{
  result = qword_2811137E0;
  if (!qword_2811137E0)
  {
    sub_258B60AC0(255, &qword_2811137D8, sub_258B602BC, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811137E0);
  }

  return result;
}

unint64_t sub_258B60548()
{
  result = qword_281113830;
  if (!qword_281113830)
  {
    sub_258B6030C(255, &qword_281113828, sub_258B60390, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    swift_getOpaqueTypeConformance2();
    sub_258B6066C(&qword_2811137D0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113830);
  }

  return result;
}

uint64_t sub_258B6066C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258B606B4()
{
  result = qword_281113800;
  if (!qword_281113800)
  {
    sub_258B6030C(255, &qword_2811137F8, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0338]);
    sub_258B60224(255);
    sub_258B6030C(255, &qword_281113828, sub_258B60390, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_258B60410();
    sub_258B60548();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113800);
  }

  return result;
}

void sub_258B60848(uint64_t a1)
{
  sub_258B60AC0(319, qword_281113988, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258B60AC0(319, &qword_281113780, MEMORY[0x277CE3BA0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_258B6092C()
{
  result = qword_2811137F0;
  if (!qword_2811137F0)
  {
    sub_258B609C8(255, &qword_2811137E8, MEMORY[0x277CE0338]);
    sub_258B606B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811137F0);
  }

  return result;
}

void sub_258B609C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_258B6030C(255, &qword_2811137F8, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0338]);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_258B60A74()
{
  result = qword_281113698[0];
  if (!qword_281113698[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_281113698);
  }

  return result;
}

void sub_258B60AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_258B60B24()
{
  result = qword_281113740;
  if (!qword_281113740)
  {
    sub_258B60AC0(255, &qword_281113748, MEMORY[0x277D12700], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113740);
  }

  return result;
}

uint64_t sub_258B60BAC(uint64_t a1)
{
  sub_258B60224(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258B60C08(uint64_t a1, uint64_t a2)
{
  sub_258B60224(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_258B60C78()
{
  result = qword_281113768;
  if (!qword_281113768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113768);
  }

  return result;
}

uint64_t sub_258B60CCC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_258B60CDC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_258B60AC0(0, a3, MEMORY[0x277CE3BA0], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258B60D58(uint64_t a1)
{
  sub_258B60AC0(0, &qword_281113780, MEMORY[0x277CE3BA0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258B60DE4(uint64_t a2@<X8>)
{
  v37 = a2;
  v2 = sub_258B64F94();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = objc_opt_self();
  v13 = [v12 sharedBehavior];
  if (!v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v13 features];

  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = [v15 chamomile];

  if (!v16)
  {
    sub_258B64F74();
    v23 = sub_258B64F84();
    v24 = sub_258B65284();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_258B5B000, v23, v24, "[MentalHealthLauncherComplication] not available because chamomile feature disabled", v25, 2u);
      MEMORY[0x259C95000](v25, -1, -1);
    }

    (*(v3 + 8))(v11, v2);
    goto LABEL_16;
  }

  v17 = [v12 sharedBehavior];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 tinkerModeEnabled];

    if (v19)
    {
      sub_258B64F74();
      v20 = sub_258B64F84();
      v21 = sub_258B65284();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_258B5B000, v20, v21, "[MentalHealthLauncherComplication] not available in tinker mode", v22, 2u);
        MEMORY[0x259C95000](v22, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
    }

    else
    {
      sub_258B64F74();
      v26 = sub_258B64F84();
      v27 = sub_258B65284();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_258B5B000, v26, v27, "[MentalHealthLauncherComplication] is available", v28, 2u);
        MEMORY[0x259C95000](v28, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
    }

LABEL_16:
    sub_258B61B58(0);
    sub_258B61A88(255);
    v30 = v29;
    sub_258B61900(255);
    v32 = v31;
    v33 = sub_258B62478(&qword_281113778, sub_258B61900, MEMORY[0x277CE3D88]);
    v34 = sub_258B60C78();
    v35 = MEMORY[0x277D837D0];
    v38 = v32;
    v39 = MEMORY[0x277D837D0];
    v40 = v33;
    v41 = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v30;
    v39 = v35;
    v40 = OpaqueTypeConformance2;
    v41 = v34;
    swift_getOpaqueTypeConformance2();
    sub_258B65014();

    return;
  }

LABEL_19:
  __break(1u);
}

MentalHealthWidgetUI::MentalHealthLauncherComplication __swiftcall MentalHealthLauncherComplication.init()()
{
  *v0 = 0xD000000000000020;
  v0[1] = 0x8000000258B65850;
  return result;
}

id MentalHealthLauncherComplication.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  sub_258B61900(0);
  v2 = v1;
  v37 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B61A88(0);
  v42 = v5;
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B61B58(0);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B61C68(0);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x277D280B8]);

  v47 = [v12 init];
  sub_258B619D4(0);
  v13 = type metadata accessor for MentalHealthLauncherComplicationView(255);
  v14 = sub_258B62478(&qword_281113948, type metadata accessor for MentalHealthLauncherComplicationView, &protocol conformance descriptor for MentalHealthLauncherComplicationView);
  v43 = v13;
  v44 = v14;
  swift_getOpaqueTypeConformance2();
  sub_258B6225C();
  sub_258B651A4();
  if (qword_281113738 != -1)
  {
    swift_once();
  }

  v43 = sub_258B64E34();
  v44 = v15;
  v16 = sub_258B62478(&qword_281113778, sub_258B61900, MEMORY[0x277CE3D88]);
  v17 = sub_258B60C78();
  v18 = MEMORY[0x277D837D0];
  sub_258B65024();

  (*(v37 + 8))(v4, v2);
  v47 = sub_258B64E34();
  v48 = v19;
  v43 = v2;
  v44 = v18;
  v45 = v16;
  v46 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v36;
  v22 = v42;
  sub_258B65004();

  (*(v38 + 8))(v7, v22);
  sub_258B64918(0, &qword_281113690, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v23 = sub_258B65164();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_258B65840;
  (*(v24 + 104))(v26 + v25, *MEMORY[0x277CE3B90], v23);
  v27 = v39;
  sub_258B60DE4(v39);

  v28 = v41;
  (*(v40 + 8))(v21, v41);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v30 = result;
    [result tinkerModeEnabled];

    v43 = v22;
    v44 = MEMORY[0x277D837D0];
    v45 = OpaqueTypeConformance2;
    v46 = v17;
    v31 = swift_getOpaqueTypeConformance2();
    v43 = v28;
    v44 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v34;
    sub_258B65034();
    return (*(v33 + 8))(v27, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_258B61900(uint64_t a1)
{
  if (!qword_281113770)
  {
    sub_258B619D4(255);
    type metadata accessor for MentalHealthLauncherComplicationView(255);
    sub_258B62478(&qword_281113948, type metadata accessor for MentalHealthLauncherComplicationView, &protocol conformance descriptor for MentalHealthLauncherComplicationView);
    swift_getOpaqueTypeConformance2();
    v1 = sub_258B651B4();
    if (!v2)
    {
      atomic_store(v1, &qword_281113770);
    }
  }
}

void sub_258B619D4(uint64_t a1)
{
  if (!qword_2811137B8)
  {
    type metadata accessor for MentalHealthLauncherComplicationView(255);
    sub_258B62478(&qword_281113948, type metadata accessor for MentalHealthLauncherComplicationView, &protocol conformance descriptor for MentalHealthLauncherComplicationView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811137B8);
    }
  }
}

void sub_258B61A88(uint64_t a1)
{
  if (!qword_281113818)
  {
    sub_258B61900(255);
    sub_258B62478(&qword_281113778, sub_258B61900, MEMORY[0x277CE3D88]);
    sub_258B60C78();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281113818);
    }
  }
}

void sub_258B61B58(uint64_t a1)
{
  if (!qword_281113820)
  {
    sub_258B61A88(255);
    sub_258B61900(255);
    sub_258B62478(&qword_281113778, sub_258B61900, MEMORY[0x277CE3D88]);
    sub_258B60C78();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281113820);
    }
  }
}

void sub_258B61C68(uint64_t a1)
{
  if (!qword_281113980)
  {
    sub_258B61B58(255);
    sub_258B61A88(255);
    sub_258B61900(255);
    sub_258B62478(&qword_281113778, sub_258B61900, MEMORY[0x277CE3D88]);
    sub_258B60C78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281113980);
    }
  }
}

uint64_t sub_258B61DB0()
{
  v0 = MEMORY[0x277D83D88];
  sub_258B64918(0, &qword_281113958, MEMORY[0x277D280F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  sub_258B64918(0, &qword_281113950, MEMORY[0x277D28108], v0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  sub_258B64918(0, &qword_281113978, MEMORY[0x277CC9260], v0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for MentalHealthLauncherComplicationView(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258B65254();
  sub_258B65244();
  sub_258B65234();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(v10 + 20);
  v14 = sub_258B65164();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *v12 = swift_getKeyPath();
  sub_258B64918(0, &qword_281113848, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v15 = *MEMORY[0x277D28100];
  v16 = sub_258B64F54();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v6, v15, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v18 = sub_258B64F44();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_258B64E44();
  sub_258B64BEC(v3, &qword_281113958, MEMORY[0x277D280F0]);
  sub_258B64BEC(v6, &qword_281113950, MEMORY[0x277D28108]);
  v19 = sub_258B64E54();
  (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
  sub_258B62478(&qword_281113948, type metadata accessor for MentalHealthLauncherComplicationView, &protocol conformance descriptor for MentalHealthLauncherComplicationView);
  sub_258B650A4();
  sub_258B64BEC(v9, &qword_281113978, MEMORY[0x277CC9260]);
  sub_258B64C5C(v12, type metadata accessor for MentalHealthLauncherComplicationView);
}

unint64_t sub_258B6225C()
{
  result = qword_281113850[0];
  if (!qword_281113850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281113850);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_258B622FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258B62344(uint64_t result, int a2, int a3)
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

uint64_t sub_258B6239C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258B623E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258B62478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MentalHealthLauncherComplicationTimelineEntry(uint64_t a1)
{
  result = qword_2811138B0;
  if (!qword_2811138B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258B62510(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for MentalHealthLauncherComplicationTimelineEntry(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B64E74();
  a2(v5);
  return sub_258B64C5C(v5, type metadata accessor for MentalHealthLauncherComplicationTimelineEntry);
}

uint64_t sub_258B625B4(uint64_t a1, void (*a2)(char *))
{
  v16 = a2;
  v2 = sub_258B651D4();
  MEMORY[0x28223BE20](v2 - 8);
  sub_258B64AF4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MentalHealthLauncherComplicationTimelineEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B64E74();
  sub_258B64918(0, &unk_27F97AC80, type metadata accessor for MentalHealthLauncherComplicationTimelineEntry, MEMORY[0x277D84560]);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_258B65840;
  sub_258B64B88(v11, v13 + v12);
  sub_258B651C4();
  sub_258B62478(qword_2811138C0, type metadata accessor for MentalHealthLauncherComplicationTimelineEntry, &unk_258B659D0);
  sub_258B651E4();
  v16(v7);
  (*(v5 + 8))(v7, v4);
  return sub_258B64C5C(v11, type metadata accessor for MentalHealthLauncherComplicationTimelineEntry);
}

uint64_t sub_258B62854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258B62908;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t sub_258B62908()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258B629FC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258B64D50;

  return sub_258B62A9C(a1, v4);
}

uint64_t sub_258B62A9C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_258B64E84();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = MEMORY[0x277D83D88];
  sub_258B64918(0, &qword_281113960, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v2[7] = swift_task_alloc();
  sub_258B64918(0, &qword_281113968, MEMORY[0x277CC99E8], v4);
  v2[8] = swift_task_alloc();
  v5 = sub_258B64E24();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v6 = sub_258B64D94();
  v2[12] = v6;
  v2[13] = *(v6 - 8);
  v2[14] = swift_task_alloc();
  sub_258B64DB4();
  v2[15] = swift_task_alloc();
  sub_258B64AA4(0, &qword_281113788, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v8 = sub_258B64F94();
  v2[19] = v8;
  v2[20] = *(v8 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258B62E08, 0, 0);
}

uint64_t sub_258B62E08(uint64_t a1)
{
  v108 = v1;
  sub_258B64F74();
  v2 = sub_258B64F84();
  v3 = sub_258B65284();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 208);
  v6 = *(v1 + 152);
  v7 = *(v1 + 160);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v107[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v107);
    _os_log_impl(&dword_258B5B000, v2, v3, "[%{public}s] Retrieving widget relevance entries", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x259C95000](v9, -1, -1);
    MEMORY[0x259C95000](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v106 = MEMORY[0x277D84F90];
  if (![*(v1 + 24) hasAnyStateOfMindReminderEnabled])
  {
    sub_258B64F74();
    v64 = sub_258B64F84();
    v65 = sub_258B65284();
    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v1 + 168);
    v68 = *(v1 + 152);
    if (v66)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v107[0] = v70;
      *v69 = 136446466;
      *(v69 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v107);
      *(v69 + 12) = 2048;
      *(v69 + 14) = 0;
      _os_log_impl(&dword_258B5B000, v64, v65, "[%{public}s] No enabled reminders so no Smart Stack relevance entries are provided (Count: %ld)", v69, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x259C95000](v70, -1, -1);
      MEMORY[0x259C95000](v69, -1, -1);
    }

    v10(v67, v68);
    goto LABEL_29;
  }

  if ([*(v1 + 24) endOfDayNotificationsEnabled])
  {
    sub_258B64F74();
    v11 = sub_258B64F84();
    v12 = sub_258B65284();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v1 + 200);
    v15 = *(v1 + 152);
    if (v13)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v107[0] = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v107);
      _os_log_impl(&dword_258B5B000, v11, v12, "[%{public}s] Bedtime relevance added", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x259C95000](v17, -1, -1);
      MEMORY[0x259C95000](v16, -1, -1);
    }

    v10(v14, v15);
    v18 = *(v1 + 112);
    v19 = *(v1 + 96);
    v20 = *(v1 + 104);
    sub_258B64D84();
    sub_258B64DA4();
    (*(v20 + 8))(v18, v19);
    sub_258B65144();
    v21 = sub_258B6412C(0, 1, 1, MEMORY[0x277D84F90]);
    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = sub_258B6412C((v22 > 1), v23 + 1, 1, v21);
    }

    v25 = *(v1 + 136);
    v24 = *(v1 + 144);
    v26 = *(v1 + 128);
    v21[2] = v23 + 1;
    (*(v25 + 32))(v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v24, v26);
    v106 = v21;
  }

  if ([*(v1 + 24) middayNotificationsEnabled])
  {
    sub_258B64F74();
    v27 = sub_258B64F84();
    v28 = sub_258B65284();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v1 + 192);
    v31 = *(v1 + 152);
    if (v29)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v107[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v107);
      _os_log_impl(&dword_258B5B000, v27, v28, "[%{public}s] Midday relevance added", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x259C95000](v33, -1, -1);
      MEMORY[0x259C95000](v32, -1, -1);
    }

    v10(v30, v31);
    v35 = *(v1 + 80);
    v34 = *(v1 + 88);
    v37 = *(v1 + 64);
    v36 = *(v1 + 72);
    v38 = *(v1 + 48);
    v39 = *(v1 + 56);
    v40 = *(v1 + 32);
    v41 = *(v1 + 40);
    v42 = sub_258B64F14();
    (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
    v43 = sub_258B64F24();
    (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
    LOBYTE(v104) = 1;
    v103 = 0;
    LOBYTE(v102) = 1;
    v101 = 0;
    LOBYTE(v100) = 1;
    v99 = 0;
    LOBYTE(v98) = 1;
    v97 = 0;
    LOBYTE(v96) = 1;
    v95 = 0;
    LOBYTE(v94) = 1;
    v93 = 0;
    LOBYTE(v92) = 1;
    v91 = 0;
    LOBYTE(v90) = 1;
    v89 = 0;
    LOBYTE(v88) = 0;
    v87 = 0;
    LOBYTE(v86) = 0;
    v85 = 12;
    LOBYTE(v84) = 1;
    v83 = 0;
    sub_258B64E14();
    sub_258B64E74();
    v44 = sub_258B5D584(v34, v38);
    (*(v41 + 8))(v38, v40);
    v45 = sub_258B5D078(v44);

    sub_258B639FC(v45);
    (*(v35 + 8))(v34, v36);
  }

  v46 = [*(v1 + 24) customReminderSchedule];
  sub_258B6497C();
  v47 = sub_258B65224();

  if (v47 >> 62)
  {
    v48 = sub_258B652F4();
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v48)
  {
    sub_258B64F74();

    v71 = sub_258B64F84();
    v72 = sub_258B65284();
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v1 + 176);
    v75 = *(v1 + 152);
    if (v73)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v107[0] = v77;
      *v76 = 136446466;
      *(v76 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v107);
      *(v76 + 12) = 2048;
      *(v76 + 14) = v106[2];

      _os_log_impl(&dword_258B5B000, v71, v72, "[%{public}s] Widget relevance provided (no custom scheduled reminders) (Count: %ld)", v76, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x259C95000](v77, -1, -1);
      MEMORY[0x259C95000](v76, -1, -1);

      v10(v74, v75);
    }

    else
    {

      v10(v74, v75);
    }

LABEL_29:
    sub_258B65174();
    goto LABEL_30;
  }

  v49 = *(v1 + 24);
  sub_258B63B50(v49);
  sub_258B639FC(v50);
  sub_258B64F74();
  swift_bridgeObjectRetain_n();
  v51 = v49;
  v52 = sub_258B64F84();
  v53 = sub_258B65284();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v1 + 24);
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v107[0] = v56;
    *v55 = 136446722;
    *(v55 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v107);
    *(v55 + 12) = 2048;
    v57 = [v54 customReminderSchedule];
    v58 = sub_258B65224();

    if (v58 >> 62)
    {
      v59 = sub_258B652F4();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v105 = *(v1 + 184);
    v60 = *(v1 + 152);
    v61 = v1;
    v62 = *(v1 + 24);

    *(v55 + 14) = v59;
    *(v55 + 22) = 2048;
    v63 = v106[2];

    *(v55 + 24) = v63;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_258B5B000, v52, v53, "[%{public}s] Widget relevance provided (including %ld custom scheduled reminders) (Count: %ld)", v55, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x259C95000](v56, -1, -1);
    MEMORY[0x259C95000](v55, -1, -1);

    v10(v105, v60);
  }

  else
  {
    v78 = *(v1 + 184);
    v61 = v1;
    v79 = *(v1 + 152);
    v80 = *(v1 + 24);
    swift_bridgeObjectRelease_n();

    v10(v78, v79);
  }

  sub_258B65174();
  v1 = v61;
LABEL_30:

  v81 = *(v1 + 8);

  return v81();
}

uint64_t sub_258B63990@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B64E84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_258B639FC(uint64_t result)
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_258B6412C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(result + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_258B64AA4(0, &qword_281113788, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
  if (v8 < v2)
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
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_258B63B50(void *a1)
{
  v34 = sub_258B64E84();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_258B64E24();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 customReminderSchedule];
  sub_258B6497C();
  v9 = sub_258B65224();

  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_28;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_29:

    return;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    v31 = (v2 + 1);
    v32 = v10 & 0xC000000000000001;
    v2 = MEMORY[0x277D84F90];
    v29 = v10;
    v30 = (v5 + 8);
    while (1)
    {
      if (v32)
      {
        v13 = MEMORY[0x259C94CB0](v12);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = [v13 dateComponents];
      sub_258B64DE4();

      sub_258B64E74();
      v16 = sub_258B5D584(v7, v4);
      (*v31)(v4, v34);
      (*v30)(v7, v33);
      v5 = sub_258B5D078(v16);

      v17 = *(v5 + 16);
      v18 = v2[2];
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v27 = v10;
        v28 = sub_258B652F4();
        v10 = v27;
        v11 = v28;
        if (!v28)
        {
          goto LABEL_29;
        }

        goto LABEL_3;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v21 = v2[3] >> 1, v21 >= v19))
      {
        if (*(v5 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v22 = v18 + v17;
        }

        else
        {
          v22 = v18;
        }

        v2 = sub_258B6412C(isUniquelyReferenced_nonNull_native, v22, 1, v2);
        v21 = v2[3] >> 1;
        if (*(v5 + 16))
        {
LABEL_19:
          v23 = v21 - v2[2];
          sub_258B64AA4(0, &qword_281113788, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
          if (v23 < v17)
          {
            goto LABEL_26;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v24 = v2[2];
            v25 = __OFADD__(v24, v17);
            v26 = v24 + v17;
            if (v25)
            {
              goto LABEL_27;
            }

            v2[2] = v26;
          }

          goto LABEL_6;
        }
      }

      if (v17)
      {
        goto LABEL_25;
      }

LABEL_6:
      ++v12;

      v10 = v29;
      if (v11 == v12)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
}

void *sub_258B63F30(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258B64918(0, &qword_27F97AC68, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
  v10 = *(sub_258B64E84() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_258B64E84() - 8);
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

void *sub_258B6412C(void *result, int64_t a2, char a3, void *a4)
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

  v10 = MEMORY[0x277D84F78];
  if (!v9)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258B649C8(0);
  sub_258B64AA4(0, &qword_281113788, v10 + 8, MEMORY[0x277CE3B48]);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v8;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  sub_258B64AA4(0, &qword_281113788, v10 + 8, MEMORY[0x277CE3B48]);
  v17 = *(v16 - 8);
  if (v5)
  {
    if (v14 < a4 || (v18 = (*(v17 + 80) + 32) & ~*(v17 + 80), v14 + v18 >= a4 + v18 + *(v17 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

unint64_t sub_258B64340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_258B6440C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_258B64A48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_258B6440C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_258B64518(a5, a6);
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
    result = sub_258B652E4();
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

void *sub_258B64518(uint64_t a1, unint64_t a2)
{
  v3 = sub_258B64564(a1, a2);
  sub_258B64694(&unk_2869DFD98);
  return v3;
}

void *sub_258B64564(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_258B64780(v5, 0);
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

  result = sub_258B652E4();
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
        v10 = sub_258B65214();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_258B64780(v10, 0);
        result = sub_258B652C4();
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

uint64_t sub_258B64694(uint64_t result)
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

  result = sub_258B6480C(result, v11, 1, v3);
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

void *sub_258B64780(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_258B64AA4(0, &qword_27F97AC70, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_258B6480C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258B64AA4(0, &qword_27F97AC70, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_258B64918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_258B6497C()
{
  result = qword_27F97AC60;
  if (!qword_27F97AC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F97AC60);
  }

  return result;
}

void sub_258B649C8(uint64_t a1)
{
  if (!qword_27F97AC50)
  {
    sub_258B64AA4(255, &qword_281113788, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
    v1 = sub_258B65314();
    if (!v2)
    {
      atomic_store(v1, &qword_27F97AC50);
    }
  }
}

uint64_t sub_258B64A48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_258B64AA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258B64AF4(uint64_t a1)
{
  if (!qword_27F97AC78)
  {
    type metadata accessor for MentalHealthLauncherComplicationTimelineEntry(255);
    sub_258B62478(qword_2811138C0, type metadata accessor for MentalHealthLauncherComplicationTimelineEntry, &unk_258B659D0);
    v1 = sub_258B651F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F97AC78);
    }
  }
}

uint64_t sub_258B64B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MentalHealthLauncherComplicationTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258B64BEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258B64918(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258B64C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258B64CE4(uint64_t a1)
{
  result = sub_258B64E84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}