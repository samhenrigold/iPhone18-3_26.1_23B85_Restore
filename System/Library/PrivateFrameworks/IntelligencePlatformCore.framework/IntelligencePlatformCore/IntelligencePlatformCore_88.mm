void sub_1C4C39B18(void *a1, void *a2)
{
  v5 = a1;
  v6 = a1 + 8;
  sub_1C43FF7C8();
  v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  *&v9 = 136315394;
  v96 = v9;
  *&v9 = 136315650;
  v99 = v9;
  v95 = MEMORY[0x1E69E7CC0];
  v98 = MEMORY[0x1E69E7CC0];
  v103 = a2;
  v109 = v7;
  v104 = v6;
  v105 = v2;
LABEL_2:
  v10 = v8;
  if (!v3)
  {
    goto LABEL_4;
  }

  do
  {
    v8 = v10;
LABEL_7:
    sub_1C44168C0();
    v3 &= v3 - 1;
    v12 = (v8 << 10) | (16 * v11);
    v13 = (v5[6] + v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (v5[7] + v12);
    v17 = *v16;
    v18 = v16[1];
    v19 = a2[2];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!v19 || (v20 = sub_1C445FAA8(v15, v14), (v21 & 1) == 0))
    {
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v43 = sub_1C4F00978();
      sub_1C442B738(v43, qword_1EDE2DDF8);
      sub_1C4404CE0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v44 = sub_1C4F00968();
      v45 = sub_1C4F01CF8();

      if (os_log_type_enabled(v44, v45))
      {
        sub_1C441024C();
        logb = v44;
        v46 = swift_slowAlloc();
        sub_1C443FD74();
        v110 = swift_slowAlloc();
        *(v46 + 4) = sub_1C4434780(*&v96);
        *(v46 + 12) = 2080;
        v47 = v6;
        v48 = sub_1C441B080();

        *(v46 + 14) = v48;
        v6 = v47;
        _os_log_impl(&dword_1C43F8000, logb, v45, "ViewMigration: old view no longer exists for %s: %s", v46, 0x16u);
        swift_arrayDestroy();
        v2 = v105;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C443D664();
        v98 = v72;
      }

      v50 = *(v98 + 16);
      v49 = *(v98 + 24);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        sub_1C43FFD98(v49);
        sub_1C443D664();
        v98 = v73;
      }

      v52 = v98;
      goto LABEL_31;
    }

    v22 = (a2[7] + 16 * v20);
    v23 = v22[1];
    v24 = *v22 == v17 && v23 == v18;
    log = *v22;
    if (!v24 && (sub_1C4F02938() & 1) == 0)
    {
      v54 = qword_1EDDFD018;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v54 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v55 = sub_1C4F00978();
      sub_1C442B738(v55, qword_1EDE2DDF8);
      sub_1C4404CE0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v56 = sub_1C4F00968();
      v57 = sub_1C4F01CF8();

      v58 = sub_1C4C41FB4();
      if (os_log_type_enabled(v58, v59))
      {
        sub_1C43FEC60();
        v60 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v110 = v102;
        *(v60 + 4) = sub_1C4434780(*&v99);
        *(v60 + 12) = 2080;
        v61 = sub_1C441B080();

        *(v60 + 14) = v61;
        *(v60 + 22) = 2080;
        v62 = sub_1C441D828(log, v23, &v110);

        *(v60 + 24) = v62;
        _os_log_impl(&dword_1C43F8000, v56, v57, "ViewMigration: hash value changed for %s: %s -> %s", v60, 0x20u);
        sub_1C4488484(v63, v64, v65, v66, v67, v68, v69, v70, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v102);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v6 = v104;
      v2 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C443D664();
        v95 = v74;
      }

      v50 = *(v95 + 16);
      v71 = *(v95 + 24);
      v51 = v50 + 1;
      if (v50 >= v71 >> 1)
      {
        sub_1C43FFD98(v71);
        sub_1C443D664();
        v95 = v75;
      }

      v52 = v95;
LABEL_31:
      *(v52 + 16) = v51;
      v53 = v52 + 16 * v50;
      *(v53 + 32) = v15;
      *(v53 + 40) = v14;
      a2 = v103;
      v5 = v109;
      goto LABEL_2;
    }

    v25 = qword_1EDDFD018;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v25 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2DDF8);
    sub_1C4404CE0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CC8();

    v29 = sub_1C4C41FB4();
    if (os_log_type_enabled(v29, v30))
    {
      sub_1C43FEC60();
      v31 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v110 = v101;
      v32 = sub_1C4434780(*&v99);

      *(v31 + 4) = v32;
      *(v31 + 12) = 2080;
      v33 = sub_1C441B080();

      *(v31 + 14) = v33;
      *(v31 + 22) = 2080;
      v34 = sub_1C441D828(log, v23, &v110);

      *(v31 + 24) = v34;
      _os_log_impl(&dword_1C43F8000, v27, v28, "ViewMigration: hash value matches for %s: %s == %s", v31, 0x20u);
      sub_1C4488484(v35, v36, v37, v38, v39, v40, v41, v42, v94, v95, v96, *(&v96 + 1), v97, v98, v99, *(&v99 + 1), v100, v101);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      a2 = v103;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v10 = v8;
    v5 = v109;
    v6 = v104;
    v2 = v105;
  }

  while (v3);
  while (1)
  {
LABEL_4:
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v8 >= v2)
    {
      break;
    }

    v3 = v6[v8];
    ++v10;
    if (v3)
    {
      goto LABEL_7;
    }
  }

  v76 = a2 + 8;
  sub_1C43FF7C8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v77 = 0;
  while (v3)
  {
    v78 = v77;
LABEL_48:
    sub_1C44168C0();
    v3 &= v3 - 1;
    v80 = (v78 << 10) | (16 * v79);
    v81 = (a2[6] + v80);
    v82 = *v81;
    v83 = v81[1];
    v84 = a2[7] + v80;
    v85 = *(v84 + 8);
    loga = *v84;
    v86 = v5[2];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v86 && (sub_1C445FAA8(v82, v83), v5 = v109, (v87 & 1) != 0))
    {

      v77 = v78;
    }

    else
    {
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v88 = sub_1C4F00978();
      sub_1C442B738(v88, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v89 = sub_1C4F00968();
      v90 = sub_1C4F01CF8();

      if (os_log_type_enabled(v89, v90))
      {
        sub_1C441024C();
        v91 = swift_slowAlloc();
        sub_1C443FD74();
        v110 = swift_slowAlloc();
        *v91 = v96;
        v92 = sub_1C441B080();

        *(v91 + 4) = v92;
        *(v91 + 12) = 2080;
        v93 = sub_1C441D828(loga, v85, &v110);

        *(v91 + 14) = v93;
        _os_log_impl(&dword_1C43F8000, v89, v90, "ViewMigration: new view did not previously exist for: %s:%s", v91, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        a2 = v103;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v77 = v78;
      v5 = v109;
    }
  }

  while (1)
  {
    v78 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v78 >= v2)
    {

      return;
    }

    v3 = v76[v78];
    ++v77;
    if (v3)
    {
      goto LABEL_48;
    }
  }

LABEL_59:
  __break(1u);
}

void sub_1C4C3A37C()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C4EFA608();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  if (sub_1C4F013F8())
  {
    v10 = sub_1C44179F4();
    sub_1C440BAA8(v10, v11, v12, v3);
    v13 = _s10WrappedURLVMa(0);
    sub_1C43FE5F8();
    sub_1C4EF9888();
    v14 = sub_1C4423D20();
    v17 = v13;
LABEL_12:
    sub_1C440BAA8(v14, v15, v16, v17);
    goto LABEL_13;
  }

  sub_1C4EFA598();
  sub_1C43FE5F8();
  if (!sub_1C4EFA528())
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2DDF8);
    sub_1C4404CE0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CF8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_1C43FD084();
      sub_1C43FEC60();
      v31 = swift_slowAlloc();
      *v21 = 136315138;
      v22 = sub_1C43FE5F8();
      *(v21 + 4) = sub_1C441D828(v22, v23, v24);
      _os_log_impl(&dword_1C43F8000, v19, v20, "No path found for %s", v21, 0xCu);
      sub_1C440962C(v31);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    _s10WrappedURLVMa(0);
    v14 = sub_1C44179F4();
    goto LABEL_12;
  }

  sub_1C4F01138();
  sub_1C4EFA5E8();
  if (!v0)
  {

    (*(v5 + 16))(v2, v9, v3);
    v25 = sub_1C4423D20();
    sub_1C440BAA8(v25, v26, v27, v3);
    v28 = _s10WrappedURLVMa(0);
    sub_1C4EFA5F8();
    v29 = sub_1C43FD018();
    v30(v29);
    v14 = sub_1C4423D20();
    v17 = v28;
    goto LABEL_12;
  }

LABEL_13:
  sub_1C43FBC80();
}

void sub_1C4C3A640()
{
  sub_1C43FE96C();
  v92 = v2;
  v93 = v1;
  v96 = v3;
  v94 = v4;
  v91 = v5;
  *&v90 = v6;
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  v86 = v8;
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v85[1] = v10 - v9;
  v11 = sub_1C456902C(&qword_1EC0C4FE0, &unk_1C4F5E668);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v85 - v13;
  v89 = _s10WrappedURLVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v88 = v17 - v16;
  sub_1C43FBE44();
  v18 = sub_1C4EFC018();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = (v23 - v22);
  v25 = sub_1C4F00D88();
  v26 = sub_1C43FBD18(v25);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v27 = sub_1C4EFB148();
  sub_1C43FCDF8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBD08();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4400B4C();
  sub_1C4EFB138();
  sub_1C43FE984();
  sub_1C4EFB108();
  sub_1C4F00D68();
  sub_1C4EFB0E8();
  *v24 = 0x404E000000000000;
  (*(v20 + 104))(v24, *MEMORY[0x1E69A00D8], v18);
  sub_1C4EFB118();
  v35 = v93;
  sub_1C4C3A37C();
  if (v35)
  {
    v36 = sub_1C4402120();
    v37(v36);
    goto LABEL_20;
  }

  v92 = v0;
  v93 = v27;
  v91 = v33;
  v85[0] = v29;
  if (sub_1C44157D4(v14, 1, v89) != 1)
  {
    sub_1C4410694();
    sub_1C4C41AB8(v14, v88);
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    v90 = xmmword_1C4F0CE60;
    *(inited + 16) = xmmword_1C4F0CE60;
    sub_1C4418C58(inited);
    v95[0] = sub_1C4EF9808();
    v95[1] = v49;
    MEMORY[0x1EEE9AC00](v95[0]);
    v85[-2] = v95;
    v50 = sub_1C44CE068();
    swift_setDeallocating();
    sub_1C44DEE40();

    if (v50)
    {
      v51 = swift_allocObject();
      *(v51 + 16) = v90;
      *(v51 + 32) = sub_1C4EF98D8();
      *(v51 + 40) = v52;
      sub_1C4415B50();
      sub_1C4EF9878();
      v53 = sub_1C4EF98D8();
      v55 = v54;
      (*(v86 + 8))(inited, v87);
      v56 = sub_1C4C3AED4(0x6265526C6C75662DLL, 0xED00002E646C6975, v53, v55);
      v58 = v57;

      v59 = v51;
      v60 = sub_1C4EF9808();
      v62 = sub_1C4C3AED4(v60, v61, v56, v58);
      v64 = v63;

      *(v51 + 48) = v62;
      *(v51 + 56) = v64;
    }

    else
    {
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1C4F0D130;
      v59 = v65;
      *(v65 + 32) = sub_1C4EF98D8();
      *(v59 + 40) = v66;
    }

    v39 = v96;
    v67 = v85[0];
    v68 = v91;
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v69 = sub_1C4F00978();
    sub_1C442B738(v69, qword_1EDE2DDF8);
    sub_1C43FEF2C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v70 = sub_1C4F00968();
    v71 = sub_1C4F01CF8();

    if (os_log_type_enabled(v70, v71))
    {
      sub_1C441024C();
      v72 = swift_slowAlloc();
      sub_1C443FD74();
      v95[0] = swift_slowAlloc();
      *v72 = 136315394;
      v73 = sub_1C43FD018();
      *(v72 + 4) = sub_1C441D828(v73, v74, v75);
      *(v72 + 12) = 2080;
      v76 = MEMORY[0x1C6940380](v59, MEMORY[0x1E69E6158]);
      v39 = sub_1C441D828(v76, v77, v95);

      *(v72 + 14) = v39;
      _os_log_impl(&dword_1C43F8000, v70, v71, "ViewMigration: Dropping table %s from paths %s", v72, 0x16u);
      swift_arrayDestroy();
      v67 = v85[0];
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v78 = 0;
    v79 = *(v59 + 16);
    v80 = v59;
    v81 = (v67 + 16);
    v89 = v79;
    *&v90 = v80;
    for (i = (v80 + 40); ; i += 2)
    {
      if (v89 == v78)
      {

        sub_1C4401180();
        sub_1C4C41B10();
        (*(v85[0] + 8))(v92, v93);
        goto LABEL_20;
      }

      if (v78 >= *(v90 + 16))
      {
        break;
      }

      v39 = *(i - 1);
      v82 = *i;
      (*v81)(v68, v92, v93);
      v83 = sub_1C4EFB218();
      sub_1C44099C4(v83);
      swift_bridgeObjectRetain_n();
      v84 = sub_1C4EFB1F8();
      MEMORY[0x1EEE9AC00](v84);
      v85[-4] = v94;
      v85[-3] = v96;
      v85[-2] = v39;
      v85[-1] = v82;
      sub_1C4EFB2C8();

      ++v78;
      v68 = v91;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_1C4420C3C(v14, &qword_1EC0C4FE0, &unk_1C4F5E668);
  i = v85[0];
  v39 = v93;
  if (qword_1EDDFD018 != -1)
  {
LABEL_22:
    sub_1C441A86C();
    swift_once();
  }

  v40 = sub_1C4F00978();
  sub_1C43FCEE8(v40, qword_1EDE2DDF8);
  v41 = sub_1C4F00968();
  v42 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v42))
  {
    v43 = sub_1C43FCED0();
    *v43 = 0;
    sub_1C441253C();
    _os_log_impl(v44, v45, v46, v47, v43, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (i[1])(v92, v39);
LABEL_20:
  sub_1C43FBC80();
}

uint64_t sub_1C4C3AED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F01438();
  sub_1C4F01308();
  return v5;
}

uint64_t sub_1C4C3AF54(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v26 = a4;
  v8 = sub_1C4EFB768();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CF8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v9;
    v16 = a2;
    v17 = v15;
    v18 = swift_slowAlloc();
    v25 = v8;
    v19 = v18;
    v27 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1C441D828(v16, a3, &v27);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1C441D828(v26, a5, &v27);
    _os_log_impl(&dword_1C43F8000, v13, v14, "ViewMigration: Deleting table %s from %s", v17, 0x16u);
    swift_arrayDestroy();
    v8 = v25;
    MEMORY[0x1C6942830](v19, -1, -1);
    v20 = v17;
    a2 = v16;
    v9 = v24;
    MEMORY[0x1C6942830](v20, -1, -1);
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1C4F02248();

  v27 = 0xD000000000000015;
  v28 = 0x80000001C4FB3220;
  MEMORY[0x1C6940010](a2, a3);
  sub_1C4EFB758();
  v21 = v29;
  sub_1C4EFBFF8();
  if (v21)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v9 + 8))(v11, v8);

    result = sub_1C4EFBE58();
    if (result)
    {
      sub_1C4C41C74();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1C4C3B2A8()
{
  sub_1C43FE96C();
  *&v139 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v147[3] = *MEMORY[0x1E69E9840];
  v140 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v138 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v136 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C447F150();
  v12 = sub_1C456902C(&qword_1EC0C4FE0, &unk_1C4F5E668);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v124 - v14;
  v16 = _s10WrappedURLVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = v139;
  sub_1C4C3A37C();
  if (!v21)
  {
    *&v139 = v7;
    v137 = v5;
    v129 = 0;
    v126 = v3;
    v127 = v20;
    v134 = v1;
    if (sub_1C44157D4(v15, 1, v16) == 1)
    {
      sub_1C4420C3C(v15, &qword_1EC0C4FE0, &unk_1C4F5E668);
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v22 = sub_1C4F00978();
      sub_1C43FCEE8(v22, qword_1EDE2DDF8);
      v23 = v137;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = sub_1C4F00968();
      v25 = sub_1C4F01CF8();

      v26 = sub_1C4C41FB4();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v139;
      if (v28)
      {
        v30 = sub_1C43FD084();
        sub_1C43FEC60();
        v31 = swift_slowAlloc();
        v147[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_1C441D828(v29, v23, v147);
        _os_log_impl(&dword_1C43F8000, v24, v25, "ViewMigration: could not retrieve token for %s", v30, 0xCu);
        sub_1C440962C(v31);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }

    else
    {
      sub_1C4410694();
      v32 = v127;
      sub_1C4C41AB8(v15, v127);
      v33 = v134;
      (*(v138 + 16))(v134, v32 + *(v16 + 20), v140);
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v34 = sub_1C4F00978();
      v135 = sub_1C442B738(v34, qword_1EDE2DDF8);
      v35 = sub_1C4F00968();
      v36 = sub_1C4F01CF8();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v136;
      if (v37)
      {
        v39 = sub_1C43FD084();
        sub_1C43FEC60();
        v40 = swift_slowAlloc();
        v147[0] = v40;
        *v39 = 136315138;
        sub_1C440D164(v134, &v141);
        sub_1C4413A70();
        sub_1C44902AC(v41, v42, MEMORY[0x1E6968FE0]);
        v43 = sub_1C4F02858();
        v45 = sub_1C441D828(v43, v44, v147);

        *(v39 + 4) = v45;
        sub_1C4480820(&dword_1C43F8000, v35, v36, "ViewMigration: Deleting database file: %s");
        sub_1C440962C(v40);
        v33 = v134;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v137 = objc_opt_self();
      v46 = [v137 defaultManager];
      sub_1C440D164(v33, v147);
      v47 = sub_1C4EF9868();
      v145 = 0;
      v48 = [v46 removeItemAtURL:v47 error:&v145];

      v49 = (v138 + 8);
      if (v48)
      {
        v50 = v145;
        v51 = sub_1C4EF9808();
        v53 = v52;
        sub_1C4EF9878();
        v132 = sub_1C4EF98D8();
        v55 = v54;
        v124[0] = *v49;
        v124[1] = v49;
        (v124[0])(v38, v140);
        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        inited = swift_initStackObject();
        v57 = sub_1C4418C58(inited);
        *(v57 + 1) = v58;
        *&v139 = v51;
        v145 = v51;
        v146 = v53;
        v59 = v53;
        MEMORY[0x1EEE9AC00](v57);
        v124[-2] = &v145;
        v60 = v129;
        v61 = sub_1C44CE068();
        swift_setDeallocating();
        sub_1C44DEE40();
        v129 = v60;
        if (v61)
        {
          v133 = v55;
          v62 = swift_initStackObject();
          *(v62 + 16) = xmmword_1C4F13950;
          v145 = 46;
          v146 = 0xE100000000000000;
          MEMORY[0x1C6940010](v139, v59);
          MEMORY[0x1C6940010](1818326829, 0xE400000000000000);
          v63 = v146;
          *(v62 + 32) = v145;
          *(v62 + 40) = v63;
          sub_1C443F7E4();
          MEMORY[0x1C6940010](1835561773, 0xE400000000000000);
          v64 = v146;
          *(v62 + 48) = v145;
          *(v62 + 56) = v64;
          sub_1C443F7E4();
          v65 = v146;
          *(v62 + 64) = v145;
          *(v62 + 72) = v65;
          v145 = 0;
          v146 = 0xE000000000000000;
          sub_1C4F02248();

          sub_1C443F7E4();
          MEMORY[0x1C6940010](1818326829, 0xE400000000000000);
          v66 = v146;
          *(v62 + 80) = v145;
          *(v62 + 88) = v66;
          v145 = 0;
          v146 = 0xE000000000000000;
          sub_1C4F02248();

          sub_1C443F7E4();

          v67 = MEMORY[0x1C6940010](1835561773, 0xE400000000000000);
          v68 = 0;
          v69 = v146;
          *(v62 + 96) = v145;
          *(v62 + 104) = v69;
          v130 = v62;
          v67.n128_u64[0] = 136315138;
          v125 = v67;
          while (1)
          {
            v70 = *(v130 + v68 + 40);
            *&v139 = *(v130 + v68 + 32);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v71 = v133;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v72 = sub_1C4F00968();
            v73 = sub_1C4F01CF8();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = sub_1C43FD084();
              v131 = v70;
              v75 = v74;
              sub_1C43FEC60();
              v76 = swift_slowAlloc();
              v128 = v76;
              *v75 = v125.n128_u32[0];
              v145 = v139;
              v146 = v131;
              v142 = v76;
              v143 = v132;
              v144 = v71;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v77 = sub_1C4F01438();
              sub_1C442A4F0(v77, v78);
              v79 = sub_1C441D828(v143, v144, &v142);

              *(v75 + 4) = v79;
              v71 = v133;
              _os_log_impl(&dword_1C43F8000, v72, v73, "ViewMigration: Deleting database file: %s", v75, 0xCu);
              sub_1C440962C(v128);
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              v70 = v131;
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
            }

            v80 = v132;
            v81 = [v137 defaultManager];
            v145 = v139;
            v146 = v70;
            v143 = v80;
            v144 = v71;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v82 = sub_1C4F01438();
            sub_1C442A4F0(v82, v83);

            v84 = sub_1C4F01108();

            v145 = 0;
            v85 = [v81 removeItemAtPath:v84 error:&v145];

            v61 = v145;
            v86 = v140;
            if (!v85)
            {
              break;
            }

            v87 = v145;
            v68 += 16;
            if (v68 == 80)
            {

              swift_setDeallocating();
              sub_1C44DEE40();
              v88 = v134;
              goto LABEL_22;
            }
          }

          swift_setDeallocating();
          v119 = v61;
          sub_1C44DEE40();

          sub_1C4EF97A8();

          swift_willThrow();
          sub_1C4401180();
          sub_1C4C41B10();
          v120 = v134;
          v121 = v86;
        }

        else
        {

          v88 = v134;
LABEL_22:
          sub_1C4EF98A8();
          swift_beginAccess();
          v91 = *(v138 + 40);
          v92 = sub_1C4409F48();
          v138 = v93;
          v91(v92);
          swift_beginAccess();
          *&v94 = 136315138;
          v139 = v94;
          while (1)
          {
            if ((sub_1C4EF9848() & 1) == 0)
            {
LABEL_33:
              sub_1C4401180();
              sub_1C4C41B10();
              (v124[0])(v88, v140);
              goto LABEL_34;
            }

            v95 = [v137 defaultManager];
            sub_1C4EF98E8();
            sub_1C4F01108();
            sub_1C44419F4();

            v142 = 0;
            v96 = [v95 contentsOfDirectoryAtPath:v61 error:&v142];

            v97 = v142;
            if (!v96)
            {
              v122 = v142;
              sub_1C4EF97A8();

              goto LABEL_38;
            }

            v98 = sub_1C4F01678();
            v99 = v97;

            v100 = *(v98 + 16);

            if (v100)
            {
              goto LABEL_33;
            }

            v101 = sub_1C4EF9828();
            v102 = sub_1C4EF9828();
            v103 = sub_1C4C3BFB0(v102, v101);

            if ((v103 & 1) == 0)
            {
              goto LABEL_33;
            }

            v104 = sub_1C4EF9828();
            v105 = sub_1C4EF9828();
            v106 = sub_1C47E7154(v104, v105);

            if (v106)
            {
              goto LABEL_33;
            }

            v107 = sub_1C4F00968();
            v108 = sub_1C4F01CF8();
            if (os_log_type_enabled(v107, v108))
            {
              v109 = sub_1C43FD084();
              sub_1C43FEC60();
              v110 = swift_slowAlloc();
              v142 = v110;
              *v109 = v139;
              sub_1C4413A70();
              sub_1C44902AC(&qword_1EDDFF9E8, v111, MEMORY[0x1E6968FE0]);
              v88 = v134;
              v112 = sub_1C4F02858();
              v114 = sub_1C441D828(v112, v113, &v142);

              *(v109 + 4) = v114;
              sub_1C4480820(&dword_1C43F8000, v107, v108, "ViewMigration: Deleting empty parent directory: %s");
              sub_1C440962C(v110);
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
            }

            else
            {

              v88 = v134;
            }

            v115 = [v137 defaultManager];
            v116 = sub_1C4EF9868();
            v142 = 0;
            v61 = [v115 removeItemAtURL:v116 error:&v142];

            if (!v61)
            {
              break;
            }

            v117 = v142;
            sub_1C4EF98A8();
            v118 = sub_1C4409F48();
            v91(v118);
          }

          v123 = v142;
          sub_1C44419F4();
          sub_1C4EF97A8();

LABEL_38:
          swift_willThrow();
          sub_1C4401180();
          sub_1C4C41B10();
          v120 = v88;
          v121 = v140;
        }

        (v124[0])(v120, v121);
      }

      else
      {
        v89 = (v138 + 8);
        v90 = v145;
        sub_1C4EF97A8();

        swift_willThrow();
        sub_1C4401180();
        sub_1C4C41B10();
        (*v89)(v33, v140);
      }
    }
  }

LABEL_34:
  sub_1C43FBC80();
}

uint64_t sub_1C4C3BFB0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = (result + 40);
  v6 = (a2 + 40);
  while (v4 != v3)
  {
    v7 = *(v2 + 16);
    v8 = v3 == v7;
    if (v3 == v7)
    {
      return v8;
    }

    if (v3 >= v7)
    {
      __break(1u);
      goto LABEL_17;
    }

    result = *(v6 - 1);
    if (result != *(v5 - 1) || *v6 != *v5)
    {
      result = sub_1C4F02938();
      if ((result & 1) == 0)
      {
        return v8;
      }
    }

    v5 += 2;
    v6 += 2;
    ++v3;
  }

  v10 = *(v2 + 16);
  if (v4 == v10)
  {
    return 1;
  }

  if (v4 < v10)
  {
    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1C4C3C064()
{
  sub_1C43FE96C();
  *&v202 = v1;
  v3 = v2;
  v197 = v4;
  v5 = sub_1C4EF98F8();
  sub_1C44016B0(v5);
  sub_1C43FCDF8();
  v200 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v205 = &v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v204 = v10;
  v199 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v198 = v13;
  sub_1C43FBDBC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC8];
  v216 = v14;
  *(v14 + 16) = MEMORY[0x1E69E7CC8];
  v221 = v15;
  v16 = *(v3 + 16);
  v210 = v0;
  if (v16)
  {
    v212 = 0;
    v208 = 0;
    v209 = 0;
    v206 = v15;
    v207 = 0;
    v17 = (v3 + 72);
    v18 = v15;
    v214 = v15;
    while (1)
    {
      v211 = v16;
      v19 = *(v17 - 5);
      v20 = *(v17 - 4);
      v22 = *(v17 - 3);
      v21 = *(v17 - 2);
      v23 = *v17;
      v215 = *(v17 - 1);
      v218 = v23;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44174AC();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      *&v219 = v18;
      v217 = v19;
      v24 = sub_1C445FAA8(v19, v20);
      if (__OFADD__(*(v18 + 16), (v25 & 1) == 0))
      {
        break;
      }

      v26 = v24;
      v27 = v25;
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      sub_1C440C7C8();
      if (sub_1C4F02458())
      {
        v28 = v217;
        sub_1C445FAA8(v217, v20);
        sub_1C4404D54();
        if (!v30)
        {
          goto LABEL_102;
        }

        v26 = v29;
      }

      else
      {
        v28 = v217;
      }

      i = v219;
      if (v27)
      {
        v31 = (*(v219 + 56) + 16 * v26);
        *v31 = v22;
        v31[1] = v21;
      }

      else
      {
        sub_1C4401D38(v219 + 8 * (v26 >> 6));
        v33 = (v32[6] + 16 * v26);
        *v33 = v28;
        v33[1] = v20;
        v34 = (v32[7] + 16 * v26);
        *v34 = v22;
        v34[1] = v21;
        v35 = v32[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_99;
        }

        v32[2] = v37;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      sub_1C44239FC(v212, 0);
      v38 = v216;
      swift_isUniquelyReferenced_nonNull_native();
      *&v219 = *(v38 + 16);
      v39 = sub_1C43FFE3C();
      sub_1C445FAA8(v39, v40);
      sub_1C43FC438();
      if (__OFADD__(v43, v44))
      {
        goto LABEL_94;
      }

      v45 = v41;
      v46 = v42;
      sub_1C456902C(&qword_1EC0BDDB8, &unk_1C4F32060);
      sub_1C440C7C8();
      v212 = v47;
      v48 = sub_1C4F02458();
      v49 = v219;
      if (v48)
      {
        v50 = sub_1C43FFE3C();
        sub_1C445FAA8(v50, v51);
        sub_1C4404D54();
        if (!v30)
        {
          goto LABEL_102;
        }

        v45 = v52;
      }

      *(v216 + 16) = v49;
      if ((v46 & 1) == 0)
      {
        sub_1C4401D38(&v49[v45 >> 6]);
        v53 = (v49[6] + 16 * v45);
        *v53 = v22;
        v53[1] = v21;
        *(v49[7] + 8 * v45) = MEMORY[0x1E69E7CC0];
        v54 = v49[2];
        v36 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v36)
        {
          goto LABEL_100;
        }

        v49[2] = v55;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v56 = v49[7];
      v57 = *(v56 + 8 * v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v56 + 8 * v45) = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C443D664();
        sub_1C44608E0(v115);
      }

      v60 = *(v57 + 16);
      v59 = *(v57 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1C43FCFE8(v59);
        sub_1C443D664();
        sub_1C44608E0(v116);
      }

      *(v57 + 16) = v60 + 1;
      v61 = v57 + 16 * v60;
      v62 = v217;
      *(v61 + 32) = v217;
      *(v61 + 40) = v20;
      if (v218)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44239FC(v209, 0);
        v63 = v214;
        swift_isUniquelyReferenced_nonNull_native();
        *&v219 = v63;
        sub_1C445FAA8(v62, v20);
        v65 = v64;
        sub_1C43FC438();
        if (__OFADD__(v67, v68))
        {
          goto LABEL_96;
        }

        v69 = v66;
        v70 = sub_1C4F02458();
        v71 = v219;
        v214 = v219;
        if (v70)
        {
          sub_1C445FAA8(v62, v20);
          sub_1C4404D54();
          if (!v30)
          {
            goto LABEL_102;
          }

          v69 = v72;
          v71 = v214;
        }

        if ((v65 & 1) == 0)
        {
          v73 = sub_1C4409F48();
          sub_1C44686DC(v73, v74, v20, MEMORY[0x1E69E7CC0], v214);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v71 = v214;
        }

        v75 = *(v71 + 56);
        v76 = *(v75 + 8 * v69);
        v77 = swift_isUniquelyReferenced_nonNull_native();
        *(v75 + 8 * v69) = v76;
        if ((v77 & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C443D664();
          sub_1C44608E0(v117);
        }

        v79 = *(v76 + 16);
        v78 = *(v76 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_1C43FCFE8(v78);
          sub_1C443D664();
          sub_1C44608E0(v118);
        }

        *(v76 + 16) = v79 + 1;
        v80 = v76 + 16 * v79;
        v81 = v218;
        *(v80 + 32) = v215;
        *(v80 + 40) = v81;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44239FC(v208, 0);
        swift_isUniquelyReferenced_nonNull_native();
        *&v219 = v221;
        v82 = sub_1C43FFE3C();
        sub_1C445FAA8(v82, v83);
        sub_1C43FC438();
        if (__OFADD__(v86, v87))
        {
          goto LABEL_97;
        }

        v88 = v84;
        v89 = v85;
        sub_1C456902C(&qword_1EC0C4380, &unk_1C4F58BB0);
        sub_1C440C7C8();
        v90 = sub_1C4F02458();
        v91 = v219;
        if (v90)
        {
          v92 = sub_1C43FFE3C();
          sub_1C445FAA8(v92, v93);
          sub_1C4404D54();
          if (!v30)
          {
            goto LABEL_102;
          }

          v88 = v94;
        }

        v221 = v91;
        if ((v89 & 1) == 0)
        {
          sub_1C4C3CFB4(&v219);
          v95 = sub_1C43FE5F8();
          sub_1C44686DC(v95, v96, v21, v97, v91);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v206 = v91;
        v98 = *(v91 + 56);
        sub_1C44239FC(v207, 0);
        swift_isUniquelyReferenced_nonNull_native();
        *&v219 = *(v98 + 8 * v88);
        *(v98 + 8 * v88) = 0x8000000000000000;
        sub_1C445FAA8(v215, v218);
        v100 = v99;
        sub_1C43FC438();
        if (__OFADD__(v102, v103))
        {
          goto LABEL_98;
        }

        v104 = v101;
        if (sub_1C4F02458())
        {
          v105 = v219;
          sub_1C445FAA8(v215, v218);
          sub_1C4404D54();
          if (!v30)
          {
            goto LABEL_102;
          }

          v104 = v106;
        }

        else
        {

          v105 = v219;
        }

        *(v98 + 8 * v88) = v105;

        v108 = *(v98 + 8 * v88);
        if (v100)
        {
        }

        else
        {
          sub_1C44686DC(v104, v215, v218, MEMORY[0x1E69E7CC0], *(v98 + 8 * v88));
        }

        v18 = i;
        v109 = *(v108 + 56);
        v110 = *(v109 + 8 * v104);
        v111 = swift_isUniquelyReferenced_nonNull_native();
        *(v109 + 8 * v104) = v110;
        if ((v111 & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C443D664();
          v110 = v119;
          *(v109 + 8 * v104) = v119;
        }

        v113 = *(v110 + 16);
        v112 = *(v110 + 24);
        if (v113 >= v112 >> 1)
        {
          sub_1C43FFD98(v112);
          sub_1C443D664();
          v110 = v120;
          *(v109 + 8 * v104) = v120;
        }

        v107 = v211;
        *(v110 + 16) = v113 + 1;
        v114 = v110 + 16 * v113;
        *(v114 + 32) = v217;
        *(v114 + 40) = v20;
        v207 = sub_1C48362FC;
        v208 = sub_1C4C3CFB4;
        v209 = sub_1C48362FC;
      }

      else
      {

        v18 = i;
        v107 = v211;
      }

      v17 += 6;
      v212 = sub_1C48362FC;
      v16 = (v107 - 1);
      if (!v16)
      {
        goto LABEL_62;
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
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    sub_1C4F029F8();
    __break(1u);
  }

  else
  {
    v212 = 0;
    v208 = 0;
    v209 = 0;
    v206 = v15;
    v207 = 0;
    v18 = v15;
    v214 = v15;
LABEL_62:
    v220 = MEMORY[0x1E69E7CC8];
    sub_1C43FBDBC();
    v121 = swift_allocObject();
    *(v121 + 16) = MEMORY[0x1E69E7CD0];
    v122 = v121;
    sub_1C43FBDBC();
    v123 = swift_allocObject();
    v217 = v123;
    *(v123 + 16) = v197;
    v203 = v123 + 16;
    sub_1C43FBDBC();
    v124 = swift_allocObject();
    swift_bridgeObjectRetain_n();
    v125 = sub_1C4499940();
    v218 = v124;
    *(v124 + 16) = v125;
    v197 = v124 + 16;
    v126 = v200;
    v127 = *(v200 + 16);
    v128 = v198;
    v129 = v201;
    v127(v198, v202, v201);
    v127(v204, v128, v129);
    v130 = (*(v126 + 80) + 48) & ~*(v126 + 80);
    v131 = swift_allocObject();
    v131[2] = v122;
    v131[3] = v216;
    v131[4] = v124;
    v131[5] = v217;
    v132 = *(v126 + 32);
    v211 = v131;
    v132(v131 + v130, v128, v129);
    v127(v205, v202, v129);
    swift_retain_n();

    v133 = v203;

    v215 = v122;

    *&v134 = 136315138;
    v202 = v134;
    for (i = v18; ; v18 = i)
    {
LABEL_63:
      swift_beginAccess();
      v135 = *v133;
      if (!*(*v133 + 16))
      {
        swift_endAccess();

        v190 = *(v200 + 8);
        v191 = sub_1C440F03C();
        v190(v191);
        (v190)(v204, v135);
        sub_1C44174AC();

        sub_1C440D164(v197, &v219);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C442385C();
        goto LABEL_92;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C48348F0();
        v135 = v183;
      }

      v136 = *(v135 + 16);
      if (!v136)
      {
        goto LABEL_101;
      }

      v137 = v136 - 1;
      v138 = v135 + 16 * v137;
      v140 = *(v138 + 32);
      v139 = *(v138 + 40);
      *(v135 + 16) = v137;
      *v133 = v135;
      swift_endAccess();
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v141 = sub_1C4F00978();
      sub_1C442B738(v141, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v142 = sub_1C4F00968();
      v143 = sub_1C4F01CF8();

      if (os_log_type_enabled(v142, v143))
      {
        v144 = sub_1C43FD084();
        sub_1C43FEC60();
        v145 = swift_slowAlloc();
        *&v219 = v145;
        *v144 = v202;
        v146 = sub_1C43FE99C();
        *(v144 + 4) = sub_1C441D828(v146, v147, v148);
        _os_log_impl(&dword_1C43F8000, v142, v143, "ViewMigration: Cleaning state for view %s", v144, 0xCu);
        sub_1C440962C(v145);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v18 = i;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      if (!*(v18 + 16) || (v149 = sub_1C43FE99C(), sub_1C445FAA8(v149, v150), (v151 & 1) == 0))
      {
        v186 = *(v200 + 8);
        v187 = v201;
        v186(v205, v201);
        v186(v204, v187);
        sub_1C44174AC();

        v188 = sub_1C450B034();
        sub_1C43FFB2C(&unk_1F44064D8, v188);
        *v189 = v140;
        *(v189 + 8) = v139;
        *(v189 + 16) = xmmword_1C4F5E640;
        *(v189 + 32) = 0xD00000000000003ALL;
        *(v189 + 40) = 0x80000001C4FBBD50;
        *(v189 + 48) = v219;
        *(v189 + 64) = 0;
        swift_willThrow();

        goto LABEL_91;
      }

      v152 = v214;
      v153 = *(v214 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v153)
      {
        v154 = sub_1C43FE99C();
        v156 = sub_1C445FAA8(v154, v155);
        if (v157)
        {
          v158 = *(*(v152 + 56) + 8 * v156);
          v159 = *(v158 + 16);
          if (v159)
          {
            break;
          }
        }
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v171 = sub_1C4F00968();
      v172 = sub_1C4F01CF8();

      v173 = sub_1C4C41FB4();
      if (os_log_type_enabled(v173, v174))
      {
        v175 = sub_1C43FD084();
        sub_1C43FEC60();
        v176 = swift_slowAlloc();
        *&v219 = v176;
        *v175 = v202;
        v177 = sub_1C43FE99C();
        v180 = sub_1C441D828(v177, v178, v179);

        *(v175 + 4) = v180;
        _os_log_impl(&dword_1C43F8000, v171, v172, "ViewMigration: View %s has no tables so deleting path", v175, 0xCu);
        sub_1C440962C(v176);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v181 = sub_1C43FD574();
      v182 = v210;
      sub_1C4C3D00C(v181);
      v133 = v203;
      if (v182)
      {

        v192 = *(v200 + 8);
        sub_1C44A1F58();
        v192();
        (v192)(v204, v139);

        sub_1C44174AC();

        goto LABEL_91;
      }

      v210 = 0;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v160 = 0;
    v161 = (v158 + 40);
    v162 = v205;
    while (1)
    {
      if (v159 == v160)
      {

        v18 = i;
        v133 = v203;
        goto LABEL_63;
      }

      if (v160 >= *(v158 + 16))
      {
        goto LABEL_95;
      }

      v163 = *(v161 - 1);
      v164 = *v161;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v195 = v217;
      v194 = v211;
      v193 = v218;
      v165 = sub_1C43FD574();
      v166 = v163;
      v167 = v210;
      sub_1C4C3D484(v165, v168, v166, v164, v215, v169, v216, v170, v193, sub_1C4C41BB8, v194, v195, v162);
      v210 = v167;
      if (v167)
      {
        break;
      }

      ++v160;
      v161 += 2;
    }

    v184 = *(v200 + 8);
    v185 = sub_1C440F03C();
    v184(v185);
    (v184)(v204, v158);

LABEL_91:

    sub_1C442385C();
LABEL_92:
    sub_1C43FBC80();
  }
}

uint64_t sub_1C4C3CFB4@<X0>(uint64_t *a1@<X8>)
{
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

void sub_1C4C3D484(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v18 = sub_1C4F00978();
  v19 = sub_1C442B738(v18, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v105 = v19;
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CF8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = a3;
    v24 = swift_slowAlloc();
    v111 = v24;
    *v22 = 136315394;
    *(v22 + 4) = sub_1C441D828(a1, a2, &v111);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1C441D828(v23, a4, &v111);
    _os_log_impl(&dword_1C43F8000, v20, v21, "ViewMigration: Cleaning state for %s -> %s", v22, 0x16u);
    swift_arrayDestroy();
    v25 = v24;
    a3 = v23;
    MEMORY[0x1C6942830](v25, -1, -1);
    MEMORY[0x1C6942830](v22, -1, -1);
  }

  swift_beginAccess();
  v26 = *(a5 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = sub_1C4499AD0(a1, a2, v26);

  v28 = a1;
  if (v27)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CF8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v28;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v107 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1C441D828(v31, a2, &v107);
      _os_log_impl(&dword_1C43F8000, v29, v30, "ViewMigration: %s has already been removed", v32, 0xCu);
      sub_1C440962C(v33);
      MEMORY[0x1C6942830](v33, -1, -1);
      v34 = v32;
LABEL_34:
      MEMORY[0x1C6942830](v34, -1, -1);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v109 = *a6;
  v35 = v109;
  *a6 = 0x8000000000000000;
  v36 = sub_1C445FAA8(a1, a2);
  if (__OFADD__(*(v35 + 16), (v37 & 1) == 0))
  {
    __break(1u);
    goto LABEL_43;
  }

  v38 = v36;
  v39 = v37;
  sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
  v40 = v109;
  if (sub_1C4F02458())
  {
    v41 = sub_1C445FAA8(a1, a2);
    v43 = a4;
    if ((v39 & 1) == (v42 & 1))
    {
      v38 = v41;
      goto LABEL_13;
    }

LABEL_43:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v43 = a4;
LABEL_13:
  *a6 = v109;
  if ((v39 & 1) == 0)
  {
    sub_1C44686DC(v38, a1, a2, MEMORY[0x1E69E7CD0], v40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44869B4(&v109, a3, v43, v44, v45, v46, v47, v48, v90, v92, v94, v96, a8, a7, a6, a4, v105, v107, *(&v107 + 1), v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
  v50 = v49;
  swift_endAccess();

  if ((v50 & 1) == 0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = sub_1C4F00968();
    v81 = sub_1C4F01CF8();

    if (os_log_type_enabled(v29, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = a3;
      v85 = v83;
      *&v107 = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_1C441D828(v84, v43, &v107);
      _os_log_impl(&dword_1C43F8000, v29, v81, "ViewMigration: %s has already been dropped", v82, 0xCu);
      sub_1C440962C(v85);
      MEMORY[0x1C6942830](v85, -1, -1);
      v34 = v82;
      goto LABEL_34;
    }

LABEL_35:

    return;
  }

  swift_beginAccess();
  v51 = sub_1C4663244();
  if (!v51)
  {
    swift_endAccess();
    sub_1C450B034();
    v86 = swift_allocError();
    *v87 = v28;
    *(v87 + 8) = a2;
    *(v87 + 16) = xmmword_1C4F5E650;
    *(v87 + 32) = 0xD00000000000001DLL;
    *(v87 + 40) = 0x80000001C4FBBD90;
    *(v87 + 48) = v107;
    *(v87 + 64) = 0;
    v116 = v86;
    swift_willThrow();
LABEL_39:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return;
  }

  v52 = v51;
  swift_endAccess();
  swift_beginAccess();
  if (!sub_1C4663244())
  {
    swift_endAccess();
    goto LABEL_38;
  }

  v53 = sub_1C4663244();
  swift_endAccess();

  v103 = v53;
  if (!v53)
  {
LABEL_38:

    sub_1C450B034();
    v88 = swift_allocError();
    *v89 = a3;
    *(v89 + 8) = v43;
    *(v89 + 16) = xmmword_1C4F5E650;
    *(v89 + 32) = 0xD000000000000026;
    *(v89 + 40) = 0x80000001C4FBBDB0;
    *(v89 + 48) = v107;
    *(v89 + 64) = 0;
    v116 = v88;
    swift_willThrow();
    goto LABEL_39;
  }

  v101 = a10;
  v54 = v116;
  v55 = sub_1C4C33FC4(v52, (a9 + 16));

  if (v55)
  {
    v116 = v54;
    v93 = a11;
    v97 = v28;
    v99 = a3;
    v95 = a13;
    v56 = *(v53 + 16);
    if (v56)
    {
      v57 = (v103 + 40);
      do
      {
        v59 = *(v57 - 1);
        v58 = *v57;
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        sub_1C44869B4(&v109, v59, v58, v60, v61, v62, v63, v64, v91, v93, v95, v97, v99, v101, v103, v104, v106, v107, *(&v107 + 1), v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
        v66 = v65;
        swift_endAccess();

        if (v66)
        {
          swift_beginAccess();
          sub_1C4588BAC();
          v67 = *(*(a12 + 16) + 16);
          sub_1C45897E8();
          v68 = *(a12 + 16);
          *(v68 + 16) = v67 + 1;
          v69 = v68 + 16 * v67;
          *(v69 + 32) = v59;
          *(v69 + 40) = v58;
          *(a12 + 16) = v68;
          swift_endAccess();
        }

        else
        {
        }

        v57 += 2;
        --v56;
      }

      while (v56);
    }

    v70 = v116;
    sub_1C4C3A640();
    v116 = v70;
    if (v70)
    {
      *&v107 = v116;
      v71 = v116;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v72 = v116;
        v73 = v116;
        v74 = sub_1C4F00968();
        v75 = sub_1C4F01CE8();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v107 = v78;
          *v76 = 136315650;
          *(v76 + 4) = sub_1C441D828(v97, a2, &v107);
          *(v76 + 12) = 2080;
          *(v76 + 14) = sub_1C441D828(v99, v104, &v107);
          *(v76 + 22) = 2112;
          v79 = v116;
          v80 = _swift_stdlib_bridgeErrorToNSError();
          *(v76 + 24) = v80;
          *v77 = v80;
          _os_log_impl(&dword_1C43F8000, v74, v75, "ViewMigration: Could not remove path %s %s: %@", v76, 0x20u);
          sub_1C4420C3C(v77, &qword_1EC0BDA00, &qword_1C4F10D30);
          MEMORY[0x1C6942830](v77, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x1C6942830](v78, -1, -1);
          MEMORY[0x1C6942830](v76, -1, -1);
        }
      }

      v101(v97, a2);

      v116 = 0;
    }
  }

  else
  {

    a10(v28, a2);
    v116 = v54;
  }
}

void sub_1C4C3E024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v337 = v20;
  v24 = v23;
  v300 = v25;
  v292 = v26;
  v303 = v27;
  v298 = v28;
  v306 = v29;
  v31 = v30;
  v341 = *MEMORY[0x1E69E9840];
  v305 = _s14ViewConfigInfoVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v304 = v34;
  v35 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
  sub_1C43FBD18(v35);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2C8(&v291 - v37);
  v323 = sub_1C4F001E8();
  sub_1C43FCDF8();
  v332 = v38;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v43 = sub_1C43FD2C8(v42);
  v328 = _s10ViewConfigVMa(v43);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBD08();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  v326 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FD230();
  v327 = v52;
  v53 = sub_1C43FBE44();
  v324 = _s15ConfigReferenceOMa(v53);
  sub_1C43FCDF8();
  v331 = v54;
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  v333 = v58;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  v325 = v61;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FD230();
  v330 = v63;
  sub_1C43FBE44();
  v334 = sub_1C4EFA608();
  sub_1C43FCDF8();
  v329 = v64;
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBCC4();
  v336 = v67 - v66;
  sub_1C43FBE44();
  v319 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v69 = v68;
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v291 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v291 - v76;
  v294 = v24;
  v79 = sub_1C4C85A88(v24) == 0x7261656C63 && v78 == 0xE500000000000000;
  v80 = &xmmword_1EDDFD000;
  v335 = v69;
  if (v79)
  {
  }

  else
  {
    v81 = sub_1C4F02938();

    if ((v81 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v83 = sub_1C4F00978();
  sub_1C43FCEE8(v83, qword_1EDE2DDF8);
  v84 = sub_1C4F00968();
  v85 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v85))
  {
    v86 = sub_1C43FCED0();
    *v86 = 0;
    sub_1C441253C();
    _os_log_impl(v87, v88, v89, v90, v86, 2u);
    v80 = &xmmword_1EDDFD000;
    v69 = v335;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v82 = sub_1C4BC0594();
LABEL_13:
  v91 = *(v303 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_pool);
  MEMORY[0x1EEE9AC00](v82);
  *(&v291 - 4) = sub_1C4C3FDD8;
  *(&v291 - 3) = 0;
  *(&v291 - 2) = v92;
  v291 = v91;
  v93 = sub_1C49A583C(sub_1C4C41A60, (&v291 - 6));
  v297 = v94;
  v296 = v93;
  v95 = *(v93 + 16);
  v96 = &unk_1C4F0C000;
  v293 = v47;
  if (v95)
  {
    v97 = v333;
    v98 = v330;
    v99 = v31;
    goto LABEL_15;
  }

  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v318 = v31;
  v215 = sub_1C4F00978();
  sub_1C43FCEE8(v215, qword_1EDE2DDF8);
  v216 = v319;
  (*(v69 + 16))(v77, v298, v319);
  v217 = sub_1C4F00968();
  v218 = sub_1C4F01CF8();
  v219 = os_log_type_enabled(v217, v218);
  *&v317 = v74;
  if (v219)
  {
    v80 = sub_1C43FD084();
    sub_1C43FEC60();
    v220 = swift_slowAlloc();
    v339 = v220;
    *v80 = 136315138;
    v221 = sub_1C4EF98D8();
    v223 = v222;
    v320 = *(v69 + 8);
    v320(v77, v216);
    v224 = sub_1C441D828(v221, v223, &v339);

    *(v80 + 4) = v224;
    sub_1C4480820(&dword_1C43F8000, v217, v218, "ViewMigration: No stored view config hashes. Deleting artifacts directory: %s");
    sub_1C440962C(v220);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v320 = *(v69 + 8);
    v320(v77, v216);
  }

  v235 = objc_opt_self();
  v236 = [v235 defaultManager];
  sub_1C4EF98D8();
  sub_1C4F01108();
  sub_1C44419F4();

  v237 = [v236 fileExistsAtPath_];

  v98 = v330;
  v96 = &unk_1C4F0C000;
  if (v237)
  {
    v238 = [v235 defaultManager];
    v239 = sub_1C4EF9868();
    v339 = 0;
    v240 = [v238 removeItemAtURL:v239 error:&v339];

    if (!v240)
    {
      v251 = v339;
      sub_1C44620AC();

      sub_1C4EF97A8();

      swift_willThrow();
      goto LABEL_70;
    }

    v241 = v339;
  }

  sub_1C4EFA598();
  if (*(sub_1C4EFA518() + 16))
  {

    sub_1C4F01138();
    v242 = v337;
    sub_1C4EFA5B8();
    v337 = v242;
    if (v242)
    {

      sub_1C44620AC();

      goto LABEL_70;
    }

    v261 = v321;
    sub_1C4EFA5F8();
    sub_1C441BB28();
    sub_1C4EF98A8();
    v262 = (v335 + 8);
    v263 = v320;
    v320(v261, v319);
    sub_1C4415B50();
    sub_1C4EF98A8();
    v264 = sub_1C43FD024();
    v321 = v262;
    v263(v264);
    v265 = [v235 defaultManager];
    sub_1C4EF98D8();
    sub_1C4F01108();
    sub_1C44419F4();

    LODWORD(v262) = [v265 fileExistsAtPath_];

    v97 = v333;
    if (v262)
    {
      v266 = [v235 defaultManager];
      v267 = sub_1C4EF9868();
      v339 = 0;
      v268 = [v266 removeItemAtURL:v267 error:&v339];

      v269 = v339;
      if (!v268)
      {
        goto LABEL_93;
      }

      v270 = v339;
    }

    v271 = [v235 defaultManager];
    v272 = sub_1C4EF9868();
    v339 = 0;
    v273 = [v271 createDirectoryAtURL:v272 withIntermediateDirectories:1 attributes:0 error:&v339];

    v269 = v339;
    if (v273)
    {
      v274 = v339;
      v275 = sub_1C4469300();
      v276(v275);
      v277 = sub_1C4416B78();
      v278(v277);
      v98 = v330;
      v99 = v318;
      v96 = &unk_1C4F0C000;
      goto LABEL_83;
    }

LABEL_93:
    v279 = v269;
    sub_1C44620AC();

    sub_1C4EF97A8();

    swift_willThrow();
    v280 = sub_1C4469300();
    v281(v280);
    v282 = sub_1C4416B78();
    v283(v282);
    goto LABEL_70;
  }

  v97 = v333;
  v99 = v318;
LABEL_83:
  v80 = &xmmword_1EDDFD000;
LABEL_15:
  v100 = *(v80 + 3);
  v101 = v337;
  if (v100 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v102 = sub_1C4F00978();
  v334 = sub_1C442B738(v102, qword_1EDE2DDF8);
  v103 = sub_1C4F00968();
  v104 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v104))
  {
    v105 = sub_1C43FCED0();
    *v105 = 0;
    sub_1C441253C();
    _os_log_impl(v106, v107, v108, v109, v105, 2u);
    v98 = v330;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v110 = MEMORY[0x1E69E7CC8];
  v338 = MEMORY[0x1E69E7CC8];
  _s17ViewDependencyDAGCMa();
  swift_initStackObject();
  sub_1C4403FC0();
  _s7DAGNodeCMa();
  v111 = sub_1C4F00F28();
  v318 = v103;
  *(v103 + 2) = v111;
  v113 = *(v99 + 2);
  if (v113)
  {
    v114 = 0;
    v336 = v99 + ((*(v331 + 80) + 32) & ~*(v331 + 80));
    v311 = v335 + 32;
    v310 = v335 + 8;
    v295 = v332 + 32;
    v301 = (v332 + 16);
    v308 = (v332 + 8);
    v335 = *(v331 + 72);
    v316 = MEMORY[0x1E69E7CC8];
    *&v112 = v96[458];
    v317 = v112;
    *&v112 = 136315394;
    v307 = v112;
    v329 = v113;
    while (1)
    {
      sub_1C442D720();
      sub_1C4509798(v115, v98);
      sub_1C4C907BC();
      if (v117 >> 60 == 15)
      {
        v337 = v101;
        sub_1C442D720();
        sub_1C4509798(v98, v97);
        v118 = v98;
        v119 = sub_1C4F00968();
        v120 = sub_1C4F01CD8();
        if (os_log_type_enabled(v119, v120))
        {
          v103 = sub_1C43FD084();
          sub_1C43FEC60();
          v121 = swift_slowAlloc();
          v339 = v121;
          *v103 = v317;
          sub_1C442D720();
          v122 = v322;
          sub_1C4509798(v97, v322);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v124 = *v122;
            v123 = v122[1];
          }

          else
          {
            sub_1C4402C08();
            v144 = v314;
            v145 = v319;
            v146(v314, v122, v319);
            sub_1C4413A70();
            sub_1C44902AC(&qword_1EDDFF9E8, v147, MEMORY[0x1E6968FE0]);
            v124 = sub_1C4F02858();
            v123 = v148;
            sub_1C4402C08();
            v149(v144, v145);
          }

          v97 = v333;
          sub_1C4C41B10();
          v150 = sub_1C441D828(v124, v123, &v339);

          *(v103 + 1) = v150;
          _os_log_impl(&dword_1C43F8000, v119, v120, "ViewMigration: Failed to retrieve contents of config for %s", v103, 0xCu);
          sub_1C440962C(v121);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          v98 = v330;
          sub_1C4C41B10();
          v113 = v329;
        }

        else
        {

          sub_1C44164D4();
          sub_1C4C41B10();
          sub_1C4402120();
          sub_1C4C41B10();
          v98 = v118;
        }

        v101 = v337;
        goto LABEL_51;
      }

      v125 = v116;
      v126 = v117;
      sub_1C44344B8(v116, v117);
      v127 = objc_autoreleasePoolPush();
      sub_1C4403FC0();
      v128 = sub_1C4EF9348();
      sub_1C44099C4(v128);
      sub_1C4EF9338();
      sub_1C441E7D4();
      sub_1C44902AC(&qword_1EDDFF5F0, v129, &unk_1C4F623C4);
      v130 = v326;
      v131 = v328;
      sub_1C4EF9328();
      if (v101)
      {

        objc_autoreleasePoolPop(v103);
        sub_1C441DFEC(v125, v126);
        sub_1C442D720();
        v132 = v325;
        sub_1C4509798(v98, v325);
        v133 = v101;
        v103 = sub_1C4F00968();
        v134 = sub_1C4F01CD8();

        if (os_log_type_enabled(v103, v134))
        {
          v331 = v125;
          v332 = v126;
          v337 = v101;
          sub_1C441024C();
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          sub_1C44BBEEC(v136);
          sub_1C43FEC60();
          v137 = swift_slowAlloc();
          v339 = sub_1C44016B0(v137);
          *v135 = v307;
          sub_1C442D720();
          sub_1C4509798(v132, v309);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v113 = v329;
          }

          else
          {
            sub_1C4402C08();
            v169 = v314;
            v170 = sub_1C44149C8();
            v171 = v319;
            v172(v170);
            sub_1C4413A70();
            sub_1C44902AC(&qword_1EDDFF9E8, v173, MEMORY[0x1E6968FE0]);
            sub_1C4F02858();
            sub_1C4402C08();
            v174 = v169;
            v175 = v171;
            v113 = v329;
            v98 = v330;
            v176(v174, v175);
          }

          sub_1C4C41B10();
          v177 = sub_1C43FD018();
          v180 = sub_1C441D828(v177, v178, v179);

          *(v135 + 4) = v180;
          *(v135 + 12) = 2112;
          v181 = v337;
          v182 = v337;
          v183 = _swift_stdlib_bridgeErrorToNSError();
          *(v135 + 14) = v183;
          v184 = v320;
          *v320 = v183;
          _os_log_impl(&dword_1C43F8000, v103, v134, "ViewMigration: Failed to decode contents of data for %s: %@", v135, 0x16u);
          sub_1C4420C3C(v184, &qword_1EC0BDA00, &qword_1C4F10D30);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C440962C(v321);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          sub_1C441DFEC(v331, v332);
          sub_1C4C41B10();
          v101 = 0;
          v97 = v333;
          goto LABEL_51;
        }

        sub_1C441DFEC(v125, v126);
        sub_1C44164D4();
        sub_1C4C41B10();
        sub_1C43FD024();
        sub_1C4C41B10();
        v101 = 0;
      }

      else
      {
        v337 = 0;

        objc_autoreleasePoolPop(v103);
        v331 = v125;
        v332 = v126;
        sub_1C44415B4(v125, v126);
        v138 = v312;
        sub_1C4C41AB8(v130, v312);
        v139 = v138;
        v140 = v327;
        sub_1C4C41AB8(v139, v327);
        v141 = v313;
        sub_1C446C964(v140 + *(v131 + 80), v313, &qword_1EC0BDCB0, &unk_1C4F54830);
        if (sub_1C44157D4(v141, 1, v323) == 1)
        {
          v142 = sub_1C4402CD0();
          sub_1C4420C3C(v142, v143, &unk_1C4F54830);
        }

        else
        {
          sub_1C4402C08();
          v151 = sub_1C43FD024();
          v152(v151);
          v153 = *v301;
          v154 = v299;
          v155 = sub_1C440BB4C();
          v153(v155);
          v156 = (v300 + *(type metadata accessor for Configuration(0) + 20));
          v158 = *v156;
          v157 = v156[1];
          Features.FeatureFlag.asOption()();
          v159 = v323;
          v160 = *v308;
          (*v308)(v154, v323);
          if ((v339 & ~v158) != 0 || (v340 & v157) != v340)
          {
            (v153)(v302, v315, v159);
            sub_1C44A1F58();
            sub_1C4509798(v201, v202);
            v103 = sub_1C4F00968();
            v203 = sub_1C4F01CF8();
            if (os_log_type_enabled(v103, v203))
            {
              sub_1C441024C();
              v204 = swift_slowAlloc();
              sub_1C443FD74();
              v205 = swift_slowAlloc();
              v339 = sub_1C44016B0(v205);
              *v204 = v307;
              v206 = sub_1C4F001C8();
              v208 = v207;
              v209 = sub_1C4440E18();
              v160(v209);
              sub_1C441D828(v206, v208, &v339);
              sub_1C43FEF2C();

              *(v204 + 4) = v206;
              *(v204 + 12) = 2080;
              v210 = *v157;
              v211 = *(v157 + 8);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4407F44();
              sub_1C4C41B10();
              sub_1C441D828(v210, v211, &v339);
              sub_1C43FEF2C();

              *(v204 + 14) = v210;
              _os_log_impl(&dword_1C43F8000, v103, v203, "ViewMigration: Feature flag %s not enabled for view %s", v204, 0x16u);
              sub_1C4422A7C(&a16);
              swift_arrayDestroy();
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();

              sub_1C441DFEC(v331, v332);
              (v160)(v315, v323);
            }

            else
            {

              sub_1C441DFEC(v331, v332);
              sub_1C4407F44();
              sub_1C4C41B10();
              v212 = sub_1C4440E18();
              v103 = *(v213 - 256);
              v160(v212);
              v214 = sub_1C44089C8();
              v160(v214);
            }

            sub_1C4440094();
            v98 = v330;
            sub_1C4C41B10();
            v97 = v333;
            v101 = v337;
            v113 = v329;
            sub_1C4407F44();
            sub_1C4C41B10();
            goto LABEL_51;
          }

          (v160)(v315, v159);
          v131 = v328;
        }

        v161 = v327[33];
        if (v161 && (v162 = *(v161 + 16)) != 0)
        {
          v339 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0(0, v162, 0);
          v163 = v339;
          v164 = (v161 + 48);
          do
          {
            v161 = *(v164 - 1);
            v165 = *v164;
            v339 = v163;
            v167 = v163[2];
            v166 = v163[3];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if (v167 >= v166 >> 1)
            {
              sub_1C44CD9C0(v166 > 1, v167 + 1, 1);
              v163 = v339;
            }

            v163[2] = v167 + 1;
            v168 = &v163[2 * v167];
            v168[4] = v161;
            v168[5] = v165;
            v164 += 7;
            --v162;
          }

          while (v162);
          v131 = v328;
        }

        else
        {
          v163 = MEMORY[0x1E69E7CC0];
        }

        v185 = v327;
        v186 = v327[1];
        v187 = sub_1C44016B0(*v327);
        sub_1C4CCF200(v187, v186, v163);
        v188 = v185[37];
        v320 = v185[36];
        sub_1C442D720();
        sub_1C44A1F58();
        sub_1C4509798(v189, v190);
        v191 = *(v185 + *(v131 + 96));
        LODWORD(v316) = (v191 != 2) & (v191 ^ 1);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v192 = sub_1C4C3925C(v331, v332, v185, v306);
        v194 = v193;
        v195 = v304;
        v196 = v320;
        *v304 = v163;
        v195[1] = v196;
        v195[2] = v188;
        v197 = v305;
        sub_1C4C41AB8(v161, v195 + *(v305 + 24));
        *(v195 + *(v197 + 28)) = v316;
        v198 = (v195 + *(v197 + 32));
        *v198 = v192;
        v198[1] = v194;
        sub_1C4425510();
        sub_1C44A1F58();
        sub_1C4C41AB8(v199, v200);
        v103 = v338;
        swift_isUniquelyReferenced_nonNull_native();
        v339 = v103;
        v98 = v330;
        sub_1C4662C0C();

        sub_1C441DFEC(v331, v332);
        v316 = v339;
        v338 = v339;
        sub_1C4440094();
        sub_1C4C41B10();
        sub_1C4407F44();
        sub_1C4C41B10();
        v101 = v337;
      }

      v97 = v333;
      v113 = v329;
LABEL_51:
      if (++v114 == v113)
      {
        goto LABEL_62;
      }
    }
  }

  v316 = v110;
LABEL_62:
  v225 = v101;
  v226 = v316;
  v227 = sub_1C4C3412C(v316);
  v228 = v294;
  v229 = v298;
  v230 = v296;
  v231 = v318;
  if (v294 - 2 >= 3)
  {
    if (!v294)
    {

      swift_setDeallocating();

      sub_1C44620AC();
LABEL_67:

      goto LABEL_69;
    }

    sub_1C47C81C0();
    v226 = v316;
    if ((v243 & 1) != 0 && !*(v297 + 16))
    {

      sub_1C44620AC();
      v244 = sub_1C4F00968();
      v245 = sub_1C4F01CF8();
      if (!sub_1C43FCEA4(v245))
      {
        swift_setDeallocating();

        goto LABEL_69;
      }

      v246 = sub_1C43FCED0();
      *v246 = 0;
      sub_1C441253C();
      _os_log_impl(v247, v248, v249, v250, v246, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      swift_setDeallocating();

      goto LABEL_67;
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v232 = sub_1C45A322C();
  sub_1C4C37198(v231, v232);
  if (!v225)
  {

    sub_1C4C344B8(v226);
    v233 = sub_1C43FBC98();
    sub_1C4C375F8(v233, v234);
    sub_1C44419F4();

    v252 = v292;
    if (v292)
    {
      v253 = v292;
    }

    else
    {
      if (qword_1EDDFE3A8 != -1)
      {
        swift_once();
      }

      v290 = *(sub_1C4ABFA6C() + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19SyncDeviceRetriever_lockedBox);
      os_unfair_lock_lock((v290 + 24));
      v253 = *(*(v290 + 16) + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      os_unfair_lock_unlock((v290 + 24));

      v252 = v292;
    }

    MEMORY[0x1EEE9AC00](v252);
    *(&v291 - 80) = v228;
    *(&v291 - 9) = v230;
    *(&v291 - 8) = v227;
    *(&v291 - 7) = &v338;
    v254 = v303;
    *(&v291 - 6) = v297;
    *(&v291 - 5) = v254;
    *(&v291 - 4) = v229;
    *(&v291 - 3) = v226;
    *(&v291 - 2) = v253;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4418704(sub_1C4C41A80, (&v291 - 12), v255, v256, v257, v258, v259, v260, v291, v292);

    v284 = [objc_opt_self() defaultManager];
    v285 = sub_1C4EF9868();
    v339 = 0;
    v286 = [v284 createDirectoryAtURL:v285 withIntermediateDirectories:1 attributes:0 error:&v339];

    v287 = v339;
    if (v286)
    {
      sub_1C4422A7C(&a13);
      swift_setDeallocating();
      v288 = v287;
    }

    else
    {
      v289 = v339;
      sub_1C4EF97A8();

      swift_willThrow();
      swift_setDeallocating();
    }

    goto LABEL_67;
  }

  sub_1C44620AC();

  swift_setDeallocating();

LABEL_69:

LABEL_70:
  sub_1C43FBC80();
}

void sub_1C4C3FDD8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C4BAEEAC();
  if (!v3)
  {
    v8 = v7;
    v9 = sub_1C4BB9AC8(a1, a2);
    *a3 = v8;
    a3[1] = v9;
  }
}

uint64_t sub_1C4C3FE4C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11)
{
  if (sub_1C4C85A88(a2) == 0x654465746F6D6572 && v17 == 0xED00007365636976)
  {
  }

  else
  {
    v19 = sub_1C4F02938();

    if ((v19 & 1) == 0)
    {
      v83 = a8;
      sub_1C4C39B18(a3, a4);
      v21 = v20;
      sub_1C4C33D60(v22, a5);
      v24 = *(v21 + 16);
      v25 = *(v23 + 16);
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_43;
      }

      v28 = *(a6 + 16);
      v86 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_44;
      }

      v84 = *(a6 + 16);
      v89 = v23;
      if (qword_1EDDFD018 != -1)
      {
        goto LABEL_45;
      }

      while (1)
      {
        v29 = sub_1C4F00978();
        v90 = sub_1C442B738(v29, qword_1EDE2DDF8);
        v30 = sub_1C4F00968();
        v31 = sub_1C4F01CF8();
        v87 = a5;
        v88 = a1;
        v85 = a7;
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v93[0] = v33;
          *v32 = 134218242;
          *(v32 + 4) = *(v21 + 16);
          *(v32 + 12) = 2080;
          v34 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v35 = MEMORY[0x1C6940380](v34, MEMORY[0x1E69E6158]);
          v37 = v36;

          v38 = sub_1C441D828(v35, v37, v93);

          *(v32 + 14) = v38;
          _os_log_impl(&dword_1C43F8000, v30, v31, "ViewMigration: Found %ld removed views: %s", v32, 0x16u);
          sub_1C440962C(v33);
          MEMORY[0x1C6942830](v33, -1, -1);
          MEMORY[0x1C6942830](v32, -1, -1);
        }

        v39 = sub_1C4F00968();
        v40 = sub_1C4F01CF8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v93[0] = v42;
          *v41 = 134218242;
          *(v41 + 4) = *(v89 + 16);
          *(v41 + 12) = 2080;
          v43 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v44 = MEMORY[0x1C6940380](v43, MEMORY[0x1E69E6158]);
          v46 = v45;

          v47 = sub_1C441D828(v44, v46, v93);

          *(v41 + 14) = v47;
          _os_log_impl(&dword_1C43F8000, v39, v40, "ViewMigration: Found %ld modified views: %s", v41, 0x16u);
          sub_1C440962C(v42);
          MEMORY[0x1C6942830](v42, -1, -1);
          MEMORY[0x1C6942830](v41, -1, -1);
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = sub_1C4F00968();
        v49 = sub_1C4F01CF8();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v93[0] = v51;
          *v50 = 134218242;
          *(v50 + 4) = v84;

          *(v50 + 12) = 2080;
          v52 = MEMORY[0x1C6940380](a6, MEMORY[0x1E69E6158]);
          v54 = sub_1C441D828(v52, v53, v93);

          *(v50 + 14) = v54;
          _os_log_impl(&dword_1C43F8000, v48, v49, "ViewMigration: Found %ld disabled views: %s", v50, 0x16u);
          sub_1C440962C(v51);
          MEMORY[0x1C6942830](v51, -1, -1);
          MEMORY[0x1C6942830](v50, -1, -1);
        }

        else
        {
        }

        a1 = v88;
        if (!a4[2])
        {
          v55 = sub_1C4F00968();
          v56 = sub_1C4F01CF8();
          if (!os_log_type_enabled(v55, v56))
          {
            goto LABEL_28;
          }

          v59 = swift_slowAlloc();
          *v59 = 0;
          v60 = "ViewMigration: No view cleanup data exists. Skipping cleanup step";
          goto LABEL_27;
        }

        v55 = sub_1C4F00968();
        v56 = sub_1C4F01CF8();
        v57 = os_log_type_enabled(v55, v56);
        if (!v86)
        {
          break;
        }

        if (v57)
        {
          v58 = swift_slowAlloc();
          *v58 = 134217984;
          *(v58 + 4) = v86;
          _os_log_impl(&dword_1C43F8000, v55, v56, "ViewMigration: View cleanup data exists and have %ld views to clean up. Proceeding to cleanup step", v58, 0xCu);
          MEMORY[0x1C6942830](v58, -1, -1);
        }

        sub_1C4C4069C();
        if (v11)
        {
        }

        v93[2] = v21;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v69 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C449ADBC(v69);
        v70 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C449ADBC(v70);
        sub_1C4C3C064();
        v72 = v71;

        v73 = 0;
        a7 = v72 + 56;
        v74 = 1 << *(v72 + 32);
        v75 = -1;
        if (v74 < 64)
        {
          v75 = ~(-1 << v74);
        }

        v76 = v75 & *(v72 + 56);
        v77 = (v74 + 63) >> 6;
        while (1)
        {
          a5 = v87;
          if (!v76)
          {
            break;
          }

          v78 = v73;
LABEL_40:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4C40CD0();
          v76 &= v76 - 1;

          v73 = v78;
        }

        while (1)
        {
          v78 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          if (v78 >= v77)
          {

            a7 = v85;
            goto LABEL_29;
          }

          v76 = *(a7 + 8 * v78);
          ++v73;
          if (v76)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        swift_once();
      }

      if (!v57)
      {
        goto LABEL_28;
      }

      v59 = swift_slowAlloc();
      *v59 = 0;
      v60 = "ViewMigration: View cleanup data exists but don't need to clean any views. Skipping cleanup step";
LABEL_27:
      _os_log_impl(&dword_1C43F8000, v55, v56, v60, v59, 2u);
      MEMORY[0x1C6942830](v59, -1, -1);
LABEL_28:

      a7 = v85;
      a5 = v87;
    }
  }

LABEL_29:
  v61 = *a5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C369A0();
  if (v11)
  {
  }

  sub_1C4C34EC4(a1, a7, v61, a10, a11);
  sub_1C4C36128();
  sub_1C4C36200();
  sub_1C4C362D8(a1, v62, v63, v64, v65, v66, v67, v68, v82, v83, v84, v85, v86, v87, v88, v89, v90, a4, a6, v93[0]);
  sub_1C4C36558();
  v79 = a7;
  v80 = *(a7 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_configCache);
  os_unfair_lock_lock(v80 + 6);
  sub_1C4F00238();
  os_unfair_lock_unlock(v80 + 6);

  return sub_1C4C367F0(a1, v79);
}

void sub_1C4C4069C()
{
  sub_1C43FE96C();
  v2 = v0;
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4402A68();
  sub_1C4EFBC98();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FE984();
  MEMORY[0x1C693A960](0xD0000000000000BALL);
  sub_1C4EFBEE8();
  if (!v0)
  {
    sub_1C4EFBC58();
    v8 = sub_1C44089C8();
    v9(v8);
    sub_1C4EFB768();
    v10 = sub_1C44179F4();
    sub_1C440BAA8(v10, v11, v12, v13);
    memset(v51, 0, 40);
    sub_1C440BB4C();
    v14 = sub_1C4EFBC28();

    sub_1C4420C3C(v51, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v1, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v15 = sub_1C4428DA0(v14);
    if (!v15)
    {

      goto LABEL_4;
    }

    v16 = v15;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1C459F0B0(0, v15 & ~(v15 >> 63), 0);
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v18 = v52;
      v45 = v14;
      v46 = v14 & 0xC000000000000001;
      v43 = v14 & 0xFFFFFFFFFFFFFF8;
      v44 = v16;
      while (!__OFADD__(v17, 1))
      {
        v50 = v18;
        if (v46)
        {
          v19 = sub_1C44089C8();
          v20 = MEMORY[0x1C6940F90](v19);
        }

        else
        {
          if (v17 >= *(v43 + 16))
          {
            goto LABEL_32;
          }

          v20 = *(v14 + 8 * v17 + 32);
        }

        sub_1C447FA7C();
        sub_1C4EFBBA8();
        v21 = sub_1C4EFBBE8();
        if (v21)
        {
          MEMORY[0x1EEE9AC00](v21);
          *(&v43 - 2) = v20;
          *(&v43 - 1) = 0;
          v23 = sqlite3_column_type(v22, 0);
          if (v23 == 5)
          {
            MEMORY[0x1EEE9AC00](v23);
            *(&v43 - 2) = sub_1C487BF24;
            *(&v43 - 1) = (&v43 - 4);
            goto LABEL_36;
          }

          v24 = sub_1C4F011E8();
          v48 = v25;
        }

        else
        {
          sub_1C4EFBB98();
          v48 = v51[1];
          v24 = v51[0];
        }

        sub_1C447FA7C();
        sub_1C4EFBBA8();
        v26 = sub_1C4EFBBE8();
        if (v26)
        {
          MEMORY[0x1EEE9AC00](v26);
          *(&v43 - 2) = v20;
          *(&v43 - 1) = 1;
          v28 = sqlite3_column_type(v27, 1);
          if (v28 == 5)
          {
            MEMORY[0x1EEE9AC00](v28);
            *(&v43 - 2) = sub_1C487BDA4;
            *(&v43 - 1) = (&v43 - 4);
LABEL_36:
            sub_1C4EFB968();
            while (1)
            {
LABEL_37:
              swift_unexpectedError();
              __break(1u);
            }
          }

          v29 = sub_1C4F011E8();
          v47 = v30;
          v51[0] = v29;
        }

        else
        {
          sub_1C4EFBB98();
          v47 = v51[1];
          v29 = v51[0];
        }

        v49 = v24;
        sub_1C447FA7C();
        sub_1C4EFBBA8();
        v31 = sub_1C4EFBBE8();
        if (v31)
        {
          v32 = v17 + 1;
          v33 = v2;
          if (sqlite3_column_type(v31, 2) == 5)
          {

            v34 = 0;
            v35 = 0;
          }

          else
          {
            v35 = sub_1C4F011E8();
            v34 = v36;
          }
        }

        else
        {
          v32 = v17 + 1;
          sub_1C4EFBBF8();
          v33 = 0;

          v34 = v51[1];
          v35 = v51[0];
        }

        v18 = v50;
        v53 = v50;
        v38 = *(v50 + 16);
        v37 = *(v50 + 24);
        if (v38 >= v37 >> 1)
        {
          v42 = sub_1C43FCFE8(v37);
          sub_1C459F0B0(v42, v38 + 1, 1);
          v18 = v53;
        }

        *(v18 + 16) = v38 + 1;
        v39 = (v18 + 48 * v38);
        v40 = v48;
        v39[4] = v49;
        v39[5] = v40;
        v41 = v47;
        v39[6] = v29;
        v39[7] = v41;
        v39[8] = v35;
        v39[9] = v34;
        ++v17;
        v14 = v45;
        v2 = v33;
        if (v32 == v44)
        {

          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  v6 = sub_1C44089C8();
  v7(v6);
LABEL_4:
  sub_1C43FBC80();
}

void sub_1C4C40CD0()
{
  sub_1C43FE96C();
  v110 = v0;
  v111 = v2;
  v4 = v3;
  v112 = v5;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v103 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v106 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v109 = v14;
  sub_1C43FBE44();
  v113 = sub_1C4EFBC98();
  sub_1C43FCDF8();
  v119 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v102 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v105 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v107 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v95 - v24;
  v26 = sub_1C4EFB678();
  sub_1C43FCDF8();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  v101 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v100 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v104 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C44146B8();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v95 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v95 - v42;
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C4400B4C();
  sub_1C4EFB648();
  sub_1C4EFB638();
  v108 = v4;
  *&v114 = v4;
  *(&v114 + 1) = v111;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C44587CC();
  v48 = *(v28 + 32);
  v47 = v28 + 32;
  v46 = v48;
  v49 = sub_1C44149C8();
  v48(v49);
  sub_1C4EFBC88();
  v50 = v110;
  sub_1C4EFBEE8();
  if (v50)
  {
    (*(v119 + 8))(v25, v113);
  }

  else
  {
    v95[2] = v43;
    v96 = v40;
    v95[1] = v1;
    v110 = v46;
    v95[3] = v47;
    v51 = *(v119 + 8);
    v51(v25, v113);
    v52 = sub_1C4EFB768();
    sub_1C43FCF64();
    sub_1C440BAA8(v53, v54, v55, v52);
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    v56 = MEMORY[0x1E69E6530];
    sub_1C44149C8();
    sub_1C4EFB9A8();

    sub_1C4420C3C(&v114, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v109, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v118)
    {
      if (qword_1EDDFD018 != -1)
      {
        sub_1C441A86C();
        swift_once();
      }

      v57 = sub_1C4F00978();
      sub_1C43FCEE8(v57, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v58 = sub_1C4F00968();
      v59 = sub_1C4F01CD8();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = sub_1C43FD084();
        sub_1C43FEC60();
        v61 = swift_slowAlloc();
        *&v114 = v61;
        *v60 = 136315138;
        v62 = sub_1C43FD018();
        *(v60 + 4) = sub_1C441D828(v62, v63, v64);
        sub_1C441253C();
        sub_1C4480820(v65, v66, v67, v68);
        sub_1C440962C(v61);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }
    }

    else
    {
      v109 = v52;
      v111 = v51;
      v69 = v117;
      sub_1C445140C();
      sub_1C4EFB648();
      sub_1C4EFB638();
      *(&v115 + 1) = v56;
      v116 = MEMORY[0x1E69A0178];
      *&v114 = v69;
      sub_1C4EFB658();
      sub_1C4420C3C(&v114, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C44587CC();
      v70 = v56;
      v71 = v110;
      (v110)(v96, v70, v26);
      sub_1C4EFBC88();
      sub_1C4EFBEE8();
      sub_1C441F064();
      v72();
      v73 = v106;
      sub_1C43FCF64();
      sub_1C440BAA8(v74, v75, v76, v109);
      sub_1C4EFC0A8();
      sub_1C4420C3C(v73, &unk_1EC0C06C0, &unk_1C4F10DB0);

      sub_1C445140C();
      sub_1C4EFB648();
      sub_1C4EFB638();
      v116 = MEMORY[0x1E69A0178];
      sub_1C448F20C(MEMORY[0x1E69E6530]);
      sub_1C4420C3C(&v114, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C4EFB638();
      v77 = sub_1C44149C8();
      v71(v77);
      sub_1C4EFBC88();
      sub_1C4EFBEE8();
      sub_1C441F064();
      v78();
      v79 = v103;
      sub_1C43FCF64();
      sub_1C440BAA8(v80, v81, v82, v109);
      sub_1C4EFC0A8();
      sub_1C4420C3C(v79, &unk_1EC0C06C0, &unk_1C4F10DB0);

      v83 = v100;
      sub_1C4EFB648();
      sub_1C4EFB638();
      v84 = MEMORY[0x1E69A0178];
      v116 = MEMORY[0x1E69A0178];
      sub_1C448F20C(MEMORY[0x1E69E6530]);
      sub_1C4420C3C(&v114, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C44587CC();
      (v110)(v101, v83, v26);
      sub_1C4EFBC88();
      sub_1C4EFBEE8();
      sub_1C43FEF2C();
      sub_1C441F064();
      v85();
      v86 = v99;
      sub_1C43FCF64();
      sub_1C440BAA8(v87, v88, v89, v109);
      sub_1C4EFC0A8();
      sub_1C4420C3C(v86, &unk_1EC0C06C0, &unk_1C4F10DB0);

      sub_1C445140C();
      sub_1C4EFB648();
      sub_1C43FE984();
      sub_1C4EFB638();
      v116 = v84;
      sub_1C448F20C(MEMORY[0x1E69E6530]);
      sub_1C4420C3C(&v114, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C44587CC();
      (v110)(v98, 0, v26);
      sub_1C4415B50();
      sub_1C4EFBC88();
      sub_1C4EFBEE8();
      sub_1C441F064();
      v90();
      v91 = v97;
      sub_1C43FCF64();
      sub_1C440BAA8(v92, v93, v94, v109);
      sub_1C4EFC0A8();
      sub_1C4420C3C(v91, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4C41788(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v19 = v4;
  v20 = a1 + 32;
  v5 = a2 + 56;
  while (1)
  {
    do
    {
      if (v3 == v4)
      {
        return 1;
      }

      v6 = v3++;
    }

    while (!*(a2 + 16));
    v7 = (v20 + 24 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](v8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    v11 = sub_1C4F02B68();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_14:

    v4 = v19;
  }

  v14 = ~v12;
  v15 = *(a2 + 48);
  while (1)
  {
    v16 = (v15 + 24 * v13);
    if (*v16 == v8)
    {
      v17 = v16[1] == v9 && v16[2] == v10;
      if (v17 || (sub_1C4F02938() & 1) != 0)
      {
        break;
      }
    }

    v13 = (v13 + 1) & v14;
    if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t sub_1C4C418FC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  sub_1C4F02AF8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01298();
  v11 = sub_1C4F02B68();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = sub_1C4F02938();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

uint64_t sub_1C4C41A34@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1C4D117E4(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
    a1[1] = v8;
  }

  return result;
}

uint64_t sub_1C4C41AB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4C41B10()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1C4C41B64()
{
  result = qword_1EDDF95D0;
  if (!qword_1EDDF95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95D0);
  }

  return result;
}

uint64_t sub_1C4C41BB8()
{
  v0 = sub_1C4EF98F8();
  sub_1C43FBD18(v0);
  v1 = sub_1C43FE99C();
  return sub_1C4C3D00C(v1);
}

unint64_t sub_1C4C41C74()
{
  result = qword_1EC0C4FE8;
  if (!qword_1EC0C4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C4FE8);
  }

  return result;
}

uint64_t sub_1C4C41CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C4FF0, &qword_1C4F5E678);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C4C41D60(uint64_t a1)
{
  sub_1C4C41DE4(319);
  if (v1 <= 0x3F)
  {
    sub_1C4EF98F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4C41DE4(uint64_t a1)
{
  if (!qword_1EDDF01D8)
  {
    sub_1C4EFA608();
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDF01D8);
    }
  }
}

void sub_1C4C41E74(uint64_t a1)
{
  sub_1C4C41F60(319, &qword_1EDDDBC20, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C4C41F60(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      _s15ConfigReferenceOMa(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4C41F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4C41FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s30MUIDIdentifierMapViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x48uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = xmmword_1C4F5B670;
      *(v11 + 32) = 0xD000000000000025;
      *(v11 + 40) = 0x80000001C4FB83A0;
      *(v11 + 48) = v13;
      *(v11 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C42114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C41FC0(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C421C0()
{
  v164 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
  MEMORY[0x1EEE9AC00](v164);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v3);
  v160 = v137 - v4;
  v5 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v157 = v137 - v6;
  sub_1C43FBE44();
  v7 = sub_1C4EFDE68();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FD2D8();
  v156 = v8;
  v9 = sub_1C43FBE44();
  v174 = type metadata accessor for GraphTriple(v9);
  sub_1C43FCDF8();
  v140 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v173 = v12;
  sub_1C43FBE44();
  v142 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v139 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v141 = v15;
  v16 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v172 = v137 - v17;
  sub_1C43FBE44();
  v18 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v20 = v19;
  v169 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  v167 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v166 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v137 - v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v137 - v32;
  v168 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v171 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2D8();
  v170 = v36;
  sub_1C43FBE44();
  v165 = sub_1C4EFF0C8();
  v175 = sub_1C4F00F28();
  v143 = v0;
  v159 = *(v0 + 16);
  v37 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v38 = *(sub_1C4EFEEF8() - 8);
  v39 = *(v38 + 72);
  v40 = *(v38 + 80);
  v41 = swift_allocObject();
  v158 = xmmword_1C4F0D130;
  *(v41 + 16) = xmmword_1C4F0D130;
  sub_1C4EFE308();
  sub_1C4D504A4();
  v155 = v42;
  sub_1C448DE08();
  v154 = v43;
  v150 = v39;
  v149 = v40;
  v152 = v37;
  v44 = swift_allocObject();
  sub_1C442C690(v44);
  v151 = (v40 + 32) & ~v40;
  sub_1C4EFE658();
  sub_1C4D504A4();
  v46 = v45;
  v47 = *MEMORY[0x1E69A95C0];
  v48 = v20 + 104;
  v49 = *(v20 + 104);
  v50 = v33;
  sub_1C4412864();
  v49();
  v51 = v30;
  sub_1C4412864();
  v49();
  v52 = v27;
  sub_1C4412864();
  v49();
  v53 = v166;
  sub_1C4412864();
  v49();
  v54 = v167;
  v148 = v47;
  sub_1C4412864();
  v147 = v48;
  v146 = v49;
  v49();
  v135 = v54;
  v136 = v46;
  v55 = v53;
  sub_1C4EFDCD8();

  v57 = v169 + 8;
  v56 = *(v169 + 8);
  v56(v54, v18);
  v58 = v57;
  v56(v55, v18);
  v155 = v52;
  v56(v52, v18);
  v154 = v51;
  v56(v51, v18);
  v153 = v50;
  v145 = v56;
  v56(v50, v18);
  v59 = sub_1C4EFF8F8();
  v60 = v172;
  sub_1C440BAA8(v172, 1, 1, v59);
  v61 = v170;
  v62 = sub_1C498DB80();
  v63 = v168;
  v64 = v62;
  sub_1C4423A0C(v60, &qword_1EC0BAA00, &unk_1C4F17400);
  v65 = *(v171 + 8);
  v171 += 8;
  v144 = v65;
  v65(v61, v63);
  v66 = *(v64 + 16);
  if (v66)
  {
    v169 = v58;
    v138 = v18;
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D120();
    v67 = __dst[0];
    v68 = (*(v140 + 80) + 32) & ~*(v140 + 80);
    v137[1] = v64;
    v69 = v64 + v68;
    v172 = *(v140 + 72);
    v70 = v139;
    v71 = (v139 + 16);
    v72 = v142;
    v73 = v141;
    do
    {
      v74 = v173;
      sub_1C4709E74(v69, v173);
      (*v71)(v73, v74 + *(v174 + 24), v72);
      sub_1C4709ED8(v74);
      __dst[0] = v67;
      v76 = *(v67 + 16);
      v75 = *(v67 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1C4413A88(v75);
        sub_1C459D120();
        v67 = __dst[0];
      }

      *(v67 + 16) = v76 + 1;
      (*(v70 + 32))(v67 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v76, v73, v72);
      v69 += v172;
      --v66;
    }

    while (v66);

    v18 = v138;
  }

  else
  {
  }

  sub_1C459740C();
  v174 = v77;
  v78 = swift_allocObject();
  sub_1C442C690(v78);
  sub_1C4EFE558();
  sub_1C4D504A4();
  v173 = v79;
  v80 = v153;
  sub_1C440109C();
  v81 = v146;
  v146();
  v82 = v154;
  sub_1C440109C();
  v81();
  v83 = v155;
  sub_1C440109C();
  v81();
  v84 = v166;
  sub_1C440109C();
  v81();
  v85 = v167;
  sub_1C440109C();
  v81();
  v134[1] = v85;
  v134[0] = v174;
  sub_1C4EFDE58();

  v86 = v145;
  v145(v85, v18);
  v86(v84, v18);
  v86(v83, v18);
  v86(v82, v18);
  v86(v80, v18);
  v87 = v170;
  sub_1C4EFDEA8();
  v88 = sub_1C4EFD678();
  v89 = v157;
  v90 = sub_1C440BAA8(v157, 1, 1, v88);
  MEMORY[0x1EEE9AC00](v90);
  v135 = &v175;
  sub_1C48687D0(v87, v89, sub_1C4C43214, v134);
  sub_1C4423A0C(v89, &unk_1EC0C07E0, &unk_1C4F168F0);
  v144(v87, v168);
  v91 = v175;
  v92 = *(v175 + 16);
  if (v92)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459DB58(0, v92, 0);
    v93 = __dst[0];
    result = sub_1C4703354();
    v97 = 0;
    v98 = v91 + 64;
    v159 = v165 - 8;
    v154 = v95;
    v153 = v91 + 72;
    v158 = xmmword_1C4F0CE60;
    v155 = v92;
    v156 = v91 + 64;
    v157 = v91;
    v99 = v164;
    v100 = v161;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v91 + 32))
    {
      if ((*(v98 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v91 + 36) != v95)
      {
        goto LABEL_30;
      }

      v169 = 1 << result;
      v170 = result >> 6;
      v167 = v97;
      v168 = v95;
      LODWORD(v166) = v96;
      v101 = *(v99 + 48);
      v102 = *(v91 + 56);
      v103 = (*(v91 + 48) + 16 * result);
      v105 = *v103;
      v104 = v103[1];
      v106 = v165;
      v107 = *(v165 - 8);
      v108 = v107;
      v109 = v102 + *(v107 + 72) * result;
      v110 = *(v107 + 16);
      v174 = v93;
      v111 = v160;
      v173 = result;
      v110(&v160[v101], v109, v165);
      *v100 = v105;
      v100[1] = v104;
      v112 = *(v99 + 48);
      v172 = *(v108 + 32);
      (v172)(v100 + v112, &v111[v101], v106);
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v113 = swift_allocObject();
      sub_1C442C690(v113);
      v114 = v162;
      sub_1C4C4321C(v100, v162);
      v115 = *v114;
      v116 = v114[1];
      v171 = *(v99 + 48);
      v113[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v113[4].n128_u64[0] = MEMORY[0x1E69A0138];
      v113[2].n128_u64[0] = v115;
      v113[2].n128_u64[1] = v116;
      v117 = v163;
      sub_1C4C4321C(v100, v163);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v118 = *(v99 + 48);
      v113[6].n128_u64[0] = v106;
      v113[6].n128_u64[1] = sub_1C4C4328C();
      v119 = sub_1C4422F90(&v113[4].n128_i64[1]);
      v120 = v117 + v118;
      v93 = v174;
      (v172)(v119, v120, v106);
      sub_1C4423A0C(v100, &qword_1EC0BDCE0, &unk_1C4F31990);
      (*(v108 + 8))(v114 + v171, v106);
      __dst[0] = v93;
      v122 = *(v93 + 16);
      v121 = *(v93 + 24);
      if (v122 >= v121 >> 1)
      {
        v131 = sub_1C4413A88(v121);
        sub_1C459DB58(v131, v132, v133);
        v93 = __dst[0];
      }

      *(v93 + 16) = v122 + 1;
      *(v93 + 8 * v122 + 32) = v113;
      v91 = v157;
      v123 = 1 << *(v157 + 32);
      result = v173;
      if (v173 >= v123)
      {
        goto LABEL_31;
      }

      v98 = v156;
      v124 = *(v156 + 8 * v170);
      if ((v124 & v169) == 0)
      {
        goto LABEL_32;
      }

      if (*(v157 + 36) != v168)
      {
        goto LABEL_33;
      }

      v125 = v124 & (-2 << (v173 & 0x3F));
      if (v125)
      {
        v123 = __clz(__rbit64(v125)) | v173 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v126 = v170 << 6;
        v127 = v170 + 1;
        v128 = (v153 + 8 * v170);
        while (v127 < (v123 + 63) >> 6)
        {
          v130 = *v128++;
          v129 = v130;
          v126 += 64;
          ++v127;
          if (v130)
          {
            sub_1C440951C(v173, v168, v166 & 1);
            v123 = __clz(__rbit64(v129)) + v126;
            goto LABEL_26;
          }
        }

        sub_1C440951C(v173, v168, v166 & 1);
      }

LABEL_26:
      v96 = 0;
      v97 = (v167 + 1);
      result = v123;
      v95 = v154;
      if ((v167 + 1) == v155)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_27:
    memcpy(__dst, (v143 + 24), sizeof(__dst));
    sub_1C4BC7458();
  }

  return result;
}

uint64_t sub_1C4C430E8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  type metadata accessor for GraphTriple(0);
  v5 = sub_1C4EFF0C8();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_1C440BAA8(v4, 0, 1, v5);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C80730();
  return 1;
}

uint64_t sub_1C4C4321C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4C4328C()
{
  result = qword_1EDDFA1C8;
  if (!qword_1EDDFA1C8)
  {
    sub_1C4EFF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA1C8);
  }

  return result;
}

uint64_t sub_1C4C432F4@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  a1[3] = &type metadata for ObjectRowDatabaseTable;
  a1[4] = &off_1F43F54B8;
  v3 = swift_allocObject();
  *a1 = v3;
  memcpy((v3 + 16), v1, 0x48uLL);
  return sub_1C4A4CA50(__dst, &v5);
}

uint64_t sub_1C4C4337C()
{

  sub_1C446C37C(sub_1C4C449DC, v0);
}

void sub_1C4C433DC(uint64_t a1, void *a2)
{
  memcpy(__dst, a2 + 12, sizeof(__dst));
  sub_1C4D03DB4();
  if (!v2)
  {
    v4 = a2[22];
    if (v4)
    {
      v5 = a2[21];
      _s23UpdatedObjectDiffWriterCMa();
      v7 = swift_allocObject();
      sub_1C4BC3C1C(v5, v4);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

uint64_t sub_1C4C43508(uint64_t a1)
{
  v2 = v1;
  sub_1C4C674A0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2[10];
  v10 = v2[11];
  sub_1C4409678(v2 + 7, v9);
  (*(v10 + 24))(v4, v6, v8, v9, v10);

  sub_1C49A56B8();
  v12 = v11;

  return v12;
}

void sub_1C4C43644(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t (*a4)(char *, uint64_t, uint64_t)@<X5>, int a5@<W6>, void *a6@<X8>)
{
  LODWORD(v45) = a5;
  v47 = a4;
  v46 = a3;
  v44 = a6;
  v9 = sub_1C4EFF0C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1 + 12, sizeof(__dst));
  sub_1C4BDFB60();
  if (!v6)
  {
    v42 = a2;
    v50 = v12;
    v13 = a1[22];
    if (v13)
    {
      v49 = v10;
      v48 = v9;
      v14 = a1[26];
      v15 = a1[27];
      v16 = a1[24];
      v17 = a1[25];
      v18 = a1[23];
      v19 = a1[21];
      v52[5] = v19;
      v52[6] = v13;
      v52[7] = v18;
      v52[8] = v16;
      v52[9] = v17;
      v52[10] = v14;
      v52[11] = v15;
      _s23UpdatedObjectDiffWriterCMa();
      v43 = swift_allocObject();
      sub_1C4BC3C1C(v19, v13);

      sub_1C4B8B458();
      v21 = 0;
      v22 = v42;
      v23 = *(v42 + 16);
      v24 = v48;
      if (v23)
      {
        v45 = 0;
        v54 = MEMORY[0x1E69E7CC0];
        v43 = v20;

        sub_1C44CD9C0(0, v23, 0);
        v25 = v54;
        v47 = *(v49 + 16);
        v26 = v22 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v46 = *(v49 + 72);
        v49 += 16;
        v27 = (v49 - 8);
        v28 = v50;
        do
        {
          v47(v28, v26, v24);
          v51 = sub_1C4EFF0A8();
          v29 = sub_1C4F02858();
          v28 = v50;
          v30 = v29;
          v32 = v31;
          (*v27)(v50, v24);
          v54 = v25;
          v34 = *(v25 + 16);
          v33 = *(v25 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_1C44CD9C0(v33 > 1, v34 + 1, 1);
            v28 = v50;
            v25 = v54;
          }

          *(v25 + 16) = v34 + 1;
          v35 = v25 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
          v26 += v46;
          --v23;
          v24 = v48;
        }

        while (v23);
        v37 = v44;
        v21 = v45;
      }

      else
      {

        v25 = MEMORY[0x1E69E7CC0];
        v37 = v44;
      }

      v52[3] = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v52[4] = sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6328]);
      v52[0] = v25;
      sub_1C4B8C0BC();

      if (v21)
      {

        sub_1C440962C(v52);
      }

      else
      {
        sub_1C440962C(v52);

        sub_1C4B8BB5C();
        v39 = v38;
        v41 = v40;

        *v37 = v39;
        v37[1] = v41;
        *(v37 + 16) = 0;
      }
    }

    else
    {
      v36 = v44;
      *v44 = 0;
      v36[1] = 0;
      *(v36 + 16) = 1;
    }
  }
}

uint64_t sub_1C4C43AE0()
{

  sub_1C440962C((v0 + 56));
  memcpy(v2, (v0 + 96), sizeof(v2));
  sub_1C4C449F8(v2);
  return v0;
}

uint64_t sub_1C4C43B38()
{
  sub_1C4C43AE0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C43B90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1C4C43BD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C4C43C68(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v22.n128_u64[0] = 0;
  sub_1C44E9220();
  if (!v4)
  {
    v10 = v9;
    v11 = a3[22];
    if (v11)
    {
      v12 = a3[27];
      v13 = a3[25];
      v23 = a3[24];
      v14 = a3[23];
      v15 = a3[21];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440E8AC();
      if (!v12)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      a4[3] = &type metadata for ObjectRowDatabaseTable;
      a4[4] = &off_1F43F54B8;
      v16 = swift_allocObject();
      *a4 = v16;
      v16[2] = v15;
      v16[3] = v11;
      v16[4] = v10;
      v16[5] = v14;
      v16[6] = v23;
      v16[7] = v13;
      v16[8] = v15;
      v16[9] = v11;
      v16[10] = v12;
    }

    else
    {
      v17 = sub_1C440B538();
      v18 = sub_1C43FFB2C(&unk_1F44064D8, v17);
      *v19 = a1;
      v19[1] = a2;
      sub_1C441A880(v18, v19);
      sub_1C44010A8(v22, v20, v21);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C43DD0(uint64_t a1, uint64_t a2, void *a3)
{
  v41[0] = 0uLL;
  sub_1C44E9220();
  if (!v3)
  {
    v8 = a3[22];
    if (v8)
    {
      v9 = a3[27];
      v10 = a3[25];
      v44 = a3[24];
      v11 = a3[23];
      v41[0].n128_u64[0] = a3[21];
      v41[0].n128_u64[1] = v8;
      v38 = v7;
      v35 = v41[0].n128_u64[0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_bridgeObjectRetain_n();
      v34 = v11;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v33 = v10;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440E8AC();
      v12 = MEMORY[0x1E69E7CC0];
      v36 = v9;
      if (v9)
      {
        v12 = v9;
      }

      v40[0] = v41[0].n128_u64[0];
      v40[1] = v8;
      v40[2] = v38;
      v40[3] = v11;
      v40[4] = v44;
      v40[5] = v10;
      v40[6] = v41[0].n128_u64[0];
      v40[7] = v8;
      v40[8] = v12;
      v13 = (a3 + *(_s6ConfigVMa(0) + 52));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[3];
      v28 = v13[2];
      v29 = v15;
      v31 = v16;
      v32 = v14;
      v17 = v13[5];
      v30 = v13[4];
      v27 = v17;
      v18 = v13[6];
      memcpy(v41, v40, 0x48uLL);
      v41[4].n128_u64[1] = v14;
      v41[5].n128_u64[0] = v15;
      v41[5].n128_u64[1] = v28;
      v41[6].n128_u64[0] = v16;
      v41[6].n128_u64[1] = v30;
      v41[7].n128_u64[0] = v27;
      v41[7].n128_u64[1] = v18;
      v19 = memcpy(v42, v41, sizeof(v42));
      v37 = &v27;
      v20 = a3[26];
      v43[0] = v35;
      v43[1] = v8;
      v43[2] = v34;
      v43[3] = v44;
      v43[4] = v33;
      v43[5] = v20;
      v43[6] = v36;
      MEMORY[0x1EEE9AC00](v19);
      v26[2] = v42;
      v26[3] = v43;
      sub_1C4BC3C1C(v32, v29);
      sub_1C4A4CA50(v40, &v39);

      sub_1C446C37C(sub_1C4C44B78, v26);
      sub_1C4C449F8(v41);

      sub_1C4AF9888(v40);
    }

    else
    {
      v21 = sub_1C440B538();
      v22 = sub_1C43FFB2C(&unk_1F44064D8, v21);
      *v23 = a1;
      v23[1] = a2;
      sub_1C441A880(v22, v23);
      sub_1C44010A8(v41[0], v24, v25);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C44054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 40))
  {
    v6 = *(a3 + 40);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  memcpy(v10, a2, sizeof(v10));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A4B56C(a1, v6);

  if (!v3)
  {
    v7 = *(a2 + 80);
    if (v7)
    {
      v8 = *(a2 + 72);
      v9 = *(a2 + 104);
      v13 = *(a2 + 88);
      v14 = v9;
      v15 = *(a2 + 120);
      v11 = v8;
      v12 = v7;
      sub_1C4B8C8BC();
    }
  }
}

void sub_1C4C44120(uint64_t a1, uint64_t a2, void *a3)
{
  v33[0] = 0uLL;
  sub_1C44E9220();
  if (!v3)
  {
    v8 = a3[22];
    if (v8)
    {
      v9 = a3[27];
      v10 = a3[25];
      v30 = a3[24];
      v11 = a3[23];
      v35 = v7;
      v12 = a3[21];
      v33[0].n128_u64[0] = v12;
      v33[0].n128_u64[1] = v8;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440E8AC();
      v13 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        v13 = v9;
      }

      v32[0] = v12;
      v32[1] = v8;
      v32[2] = v35;
      v32[3] = v11;
      v32[4] = v30;
      v32[5] = v10;
      v32[6] = v33[0].n128_u64[0];
      v32[7] = v8;
      v32[8] = v13;
      v14 = (a3 + *(_s6ConfigVMa(0) + 52));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = v14[4];
      v20 = v14[5];
      v28 = v14[6];
      v29 = v15;
      memcpy(v33, v32, 0x48uLL);
      v33[4].n128_u64[1] = v15;
      v33[5].n128_u64[0] = v16;
      v33[5].n128_u64[1] = v17;
      v33[6].n128_u64[0] = v18;
      v33[6].n128_u64[1] = v19;
      v33[7].n128_u64[0] = v20;
      v33[7].n128_u64[1] = v28;
      v21 = memcpy(__dst, v33, 0x80uLL);
      v30 = &v28;
      MEMORY[0x1EEE9AC00](v21);
      v27[2] = __dst;
      sub_1C4BC3C1C(v29, v16);
      sub_1C4A4CA50(v32, &v31);

      sub_1C446C37C(sub_1C4C44B5C, v27);
      sub_1C4C449F8(v33);

      sub_1C4AF9888(v32);
    }

    else
    {
      v22 = sub_1C440B538();
      v23 = sub_1C43FFB2C(&unk_1F44064D8, v22);
      *v24 = a1;
      v24[1] = a2;
      sub_1C441A880(v23, v24);
      sub_1C44010A8(v33[0], v25, v26);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }
}

void sub_1C4C44354(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1C4D03DB4();
  if (!v2)
  {
    v4 = *(a2 + 88);
    v7[0] = *(a2 + 72);
    v7[1] = v4;
    v7[2] = *(a2 + 104);
    v8 = *(a2 + 120);
    if (*(&v7[0] + 1))
    {
      v5 = *(a2 + 104);
      v11 = *(a2 + 88);
      v12 = v5;
      v13 = *(a2 + 120);
      v10 = v7[0];
      _s23UpdatedObjectDiffWriterCMa();
      swift_allocObject();
      sub_1C4BE2FBC(v7, v6);

      sub_1C4B8B458();
      sub_1C4B8B8EC();
    }
  }
}

void *sub_1C4C444B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v37[-2] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v5;
  swift_unownedRetainStrong();
  v13 = a3;
  v14 = v12;
  sub_1C4C81AA0(a1, a2, v13);
  if (v4)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    if (swift_dynamicCast())
    {
      memcpy(v39, v37, sizeof(v39));
      swift_unownedRetainStrong();

      sub_1C443A738(a1, a2, v15, v16, v17, v18, v19, v20);

      if (v11[26])
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v23 = _s31ObjectSQLViewGenerationProviderVMa(0);
      sub_1C4C67D64();
      v25 = v24;
      v27 = v26;

      swift_unownedRetainStrong();
      sub_1C4C68220();
      v30 = v29;
      v37[3] = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
      v37[4] = sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50, MEMORY[0x1E69E6508]);
      v37[0] = v30;
      v31 = sub_1C4C81ADC(v37);

      sub_1C440962C(v37);
      if (*(v31 + 16))
      {
        sub_1C4C687F0(v31, v37);
      }

      else
      {
        v32 = *(*(v5 + *(v23 + 28)) + 16);
        v37[3] = type metadata accessor for GraphDatabase(0);
        v37[4] = &off_1F4405C68;
        v37[0] = v32;
      }

      v34 = *v11;
      v33 = v11[1];
      sub_1C442E860(v37, v38);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v35 = sub_1C4C68B88(v31);

      _s23ObjectSQLViewGenerationCMa();
      v14 = swift_allocObject();
      v14[2] = v34;
      v14[3] = v33;
      sub_1C441D670(v38, (v14 + 7));
      memcpy(v14 + 12, v39, 0x80uLL);
      v14[5] = v25;
      v14[6] = v27;
      v14[4] = v35;
      sub_1C445F57C(v11);
      sub_1C440962C(v37);
    }

    else
    {
      v21 = sub_1C440B538();
      sub_1C43FFB2C(&unk_1F44064D8, v21);
      *v22 = a1;
      *(v22 + 8) = a2;
      *(v22 + 16) = xmmword_1C4F5B670;
      *(v22 + 32) = 0xD000000000000025;
      *(v22 + 40) = v12;
      *(v22 + 48) = v36;
      *(v22 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v14;
}

uint64_t sub_1C4C44934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C4C444B8(a1, a2, a3);
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t _s31ObjectSQLViewGenerationProviderVMa(uint64_t a1)
{
  result = qword_1EDDF76B8;
  if (!qword_1EDDF76B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4C44AAC(uint64_t a1)
{
  sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    sub_1C4BE30F8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GraphStore(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4C44BC4(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = sub_1C4EFF658();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C4EFF648();
  a10(a1, v19, a4, a5, a6, a7);
  return (*(v15 + 8))(v19, v13);
}

uint64_t sub_1C4C44CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C442C068(a1, a2, a3, a4, a5, a6);
  v10 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C441EDD0();
  type metadata accessor for GraphTriple(v12);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v17);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  v85 = sub_1C442E620(v19, v79[0]);
  sub_1C43FCDF8();
  v80 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v79[3] = v23 - v22;
  v24 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  sub_1C43FBD18(v24);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4418964();
  v26 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v79[1] = v29 - v28;
  v30 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C43FCDF8();
  v81 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C44113BC();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v79 - v34;
  sub_1C4412870();
  v38 = sub_1C45023B8(v36, v37, &protocol conformance descriptor for GraphTriple);
  sub_1C441E7F0(v38);
  sub_1C445FFF0(v82, v6, &qword_1EC0BE4F0, &qword_1C4F37248);
  v39 = sub_1C44033D8();
  v41 = sub_1C44157D4(v39, v40, v26);
  v87 = v30;
  v84 = v35;
  if (v41 == 1)
  {
    sub_1C4420C3C(v6, &qword_1EC0BE4F0, &qword_1C4F37248);
    v42 = v81;
  }

  else
  {
    v43 = sub_1C440927C();
    v44(v43);
    v88[3] = sub_1C4EFB298();
    v88[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(v88);
    sub_1C4EFDCA8();
    v45 = sub_1C43FD7B0(&qword_1EDDFCD10, &unk_1EC0C0800, &qword_1C4F0F948);
    sub_1C4404828(v45);
    v46 = sub_1C440D314();
    v47(v46);
    v48 = sub_1C441CEDC();
    v49(v48);
    sub_1C440962C(v88);
    v50 = sub_1C443551C();
    v51(v50);
    v42 = v6;
  }

  v52 = v9;
  v53 = v83;
  sub_1C445FFF0(v86, v83, &unk_1EC0C07E0, &unk_1C4F168F0);
  v54 = sub_1C44033D8();
  v55 = v85;
  if (sub_1C44157D4(v54, v56, v85) == 1)
  {
    v55 = v42;
    sub_1C4420C3C(v53, &unk_1EC0C07E0, &unk_1C4F168F0);
    v52 = v87;
    v57 = v84;
  }

  else
  {
    v57 = v80;
    v58 = sub_1C440D314();
    v59(v58);
    v79[0] = v52;
    sub_1C4EFD658();
    v60 = sub_1C4417A04(&qword_1EDDF0108, &unk_1EC0C0800, &qword_1C4F0F948);
    sub_1C44302B4(v60);

    v61 = sub_1C4415058();
    v62(v61);
    v63 = sub_1C4406204();
    v64(v63);
    v65 = sub_1C43FF7F0();
    v66(v65);
  }

  sub_1C4403190(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C4412870();
  v69 = sub_1C45023B8(v67, v68, &protocol conformance descriptor for GraphTriple);
  sub_1C43FCA94(v69);
  if (v7)
  {
    return (*(v55 + 8))(v57, v52);
  }

  while (1)
  {
    sub_1C44F1798();
    if (sub_1C44157D4(v8, 1, v88[7]) == 1)
    {
      v75 = sub_1C44206EC();
      v76(v75);

      return sub_1C4420C3C(v8, &unk_1EC0BC900, byte_1C4F142D0);
    }

    sub_1C4C47124(v8, v16, type metadata accessor for GraphTriple);
    v71 = objc_autoreleasePoolPush();
    v72 = sub_1C4405478();
    v74 = v73(v72);
    objc_autoreleasePoolPop(v52);
    if ((v74 & 1) == 0)
    {
      break;
    }

    sub_1C4432D08();
  }

  v77 = sub_1C44206EC();
  v78(v77);

  return sub_1C4432D08();
}

uint64_t sub_1C4C452D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C442C068(a1, a2, a3, a4, a5, a6);
  v10 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C441EDD0();
  type metadata accessor for EventTriple(v12);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v17);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  v85 = sub_1C442E620(v19, v79[0]);
  sub_1C43FCDF8();
  v80 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v79[3] = v23 - v22;
  v24 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  sub_1C43FBD18(v24);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4418964();
  v26 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v79[1] = v29 - v28;
  v30 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  sub_1C43FCDF8();
  v81 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C44113BC();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v79 - v34;
  sub_1C4401198();
  v38 = sub_1C45023B8(v36, v37, &protocol conformance descriptor for EventTriple);
  sub_1C441E7F0(v38);
  sub_1C445FFF0(v82, v6, &qword_1EC0BE4F0, &qword_1C4F37248);
  v39 = sub_1C44033D8();
  v41 = sub_1C44157D4(v39, v40, v26);
  v87 = v30;
  v84 = v35;
  if (v41 == 1)
  {
    sub_1C4420C3C(v6, &qword_1EC0BE4F0, &qword_1C4F37248);
    v42 = v81;
  }

  else
  {
    v43 = sub_1C440927C();
    v44(v43);
    v88[3] = sub_1C4EFB298();
    v88[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(v88);
    sub_1C4EFDCA8();
    v45 = sub_1C43FD7B0(&qword_1EDDFE878, &qword_1EC0BDFD0, &qword_1C4F324F8);
    sub_1C4404828(v45);
    v46 = sub_1C440D314();
    v47(v46);
    v48 = sub_1C441CEDC();
    v49(v48);
    sub_1C440962C(v88);
    v50 = sub_1C443551C();
    v51(v50);
    v42 = v6;
  }

  v52 = v9;
  v53 = v83;
  sub_1C445FFF0(v86, v83, &unk_1EC0C07E0, &unk_1C4F168F0);
  v54 = sub_1C44033D8();
  v55 = v85;
  if (sub_1C44157D4(v54, v56, v85) == 1)
  {
    v55 = v42;
    sub_1C4420C3C(v53, &unk_1EC0C07E0, &unk_1C4F168F0);
    v52 = v87;
    v57 = v84;
  }

  else
  {
    v57 = v80;
    v58 = sub_1C440D314();
    v59(v58);
    v79[0] = v52;
    sub_1C4EFD658();
    v60 = sub_1C4417A04(&qword_1EC0C07F8, &qword_1EC0BDFD0, &qword_1C4F324F8);
    sub_1C44302B4(v60);

    v61 = sub_1C4415058();
    v62(v61);
    v63 = sub_1C4406204();
    v64(v63);
    v65 = sub_1C43FF7F0();
    v66(v65);
  }

  sub_1C4403190(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8);
  sub_1C4401198();
  v69 = sub_1C45023B8(v67, v68, &protocol conformance descriptor for EventTriple);
  sub_1C43FCA94(v69);
  if (v7)
  {
    return (*(v55 + 8))(v57, v52);
  }

  while (1)
  {
    sub_1C478813C();
    if (sub_1C44157D4(v8, 1, v88[7]) == 1)
    {
      v75 = sub_1C44206EC();
      v76(v75);

      return sub_1C4420C3C(v8, &unk_1EC0BC8E0, &qword_1C4F29AC0);
    }

    sub_1C4C47124(v8, v16, type metadata accessor for EventTriple);
    v71 = objc_autoreleasePoolPush();
    v72 = sub_1C4405478();
    v74 = v73(v72);
    objc_autoreleasePoolPop(v52);
    if ((v74 & 1) == 0)
    {
      break;
    }

    sub_1C4413AA0();
  }

  v77 = sub_1C44206EC();
  v78(v77);

  return sub_1C4413AA0();
}

uint64_t sub_1C4C458C4()
{
  v2 = v1;
  v81 = sub_1C456902C(&qword_1EC0C5000, &qword_1C4F5E9F8);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  v80 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = v68 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v78 = v68 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v77 = v68 - v10;
  v11 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4418964();
  v13 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v68 - v15;
  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v17 = sub_1C4F00978();
    v68[1] = sub_1C442B738(v17, qword_1EDE2DF70);
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C43F8000, v18, v19, "Beginning running of PageRank", v20, 2u);
      MEMORY[0x1C6942830](v20, -1, -1);
    }

    v21 = sub_1C4EFF0C8();
    sub_1C456902C(&qword_1EC0B8A78, &qword_1C4F5EA00);
    sub_1C440B690();
    sub_1C45023B8(v22, v23, MEMORY[0x1E69A9820]);
    v86 = v21;
    v87 = sub_1C4F00F28();
    v69 = v2;
    sub_1C4EFDE98();
    sub_1C440A1C4();
    v24 = sub_1C4EFD678();
    v25 = sub_1C44033D8();
    v27 = sub_1C440BAA8(v25, v26, 1, v24);
    MEMORY[0x1EEE9AC00](v27);
    v68[-2] = &v87;
    sub_1C4868800(v16, v0, sub_1C4C46FE8, &v68[-4], sub_1C4C470CC);
    sub_1C4420C3C(v0, &unk_1EC0C07E0, &unk_1C4F168F0);
    sub_1C4420C3C(v16, &qword_1EC0BE4F0, &qword_1C4F37248);
    sub_1C440A1C4();
    v28 = sub_1C44033D8();
    v30 = sub_1C440BAA8(v28, v29, 1, v24);
    MEMORY[0x1EEE9AC00](v30);
    v68[-2] = &v87;
    sub_1C4868800(v16, v0, sub_1C4C46FF0, &v68[-4], sub_1C4C4704C);
    sub_1C4420C3C(v0, &unk_1EC0C07E0, &unk_1C4F168F0);
    sub_1C4420C3C(v16, &qword_1EC0BE4F0, &qword_1C4F37248);
    v31 = v87;
    v32 = sub_1C4A7AEDC(v87, 50, 0.85, 0.01);
    v0 = *(v32 + 16);
    if (!v0)
    {
      break;
    }

    v68[0] = v31;
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459DB58(0, v0, 0);
    v2 = __dst[0];
    v35 = sub_1C4703354();
    v36 = 0;
    v37 = v32 + 64;
    v38 = v86;
    v76 = v86 - 8;
    v71 = v33;
    v70 = v32 + 72;
    v75 = xmmword_1C4F0CE60;
    v72 = v0;
    v73 = v32 + 64;
    v74 = v32;
    while ((v35 & 0x8000000000000000) == 0 && v35 < 1 << *(v32 + 32))
    {
      v39 = v35 >> 6;
      if ((*(v37 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v32 + 36) != v33)
      {
        goto LABEL_28;
      }

      v84 = v33;
      v85 = 1 << v35;
      v82 = v34;
      v83 = v36;
      v40 = *(v38 - 8);
      v41 = v77;
      (*(v40 + 16))(v77, *(v32 + 48) + *(v40 + 72) * v35, v38);
      v42 = *(*(v32 + 56) + 8 * v35);
      v43 = *(v40 + 32);
      v86 = v2;
      v44 = v78;
      v43(v78, v41, v38);
      v45 = v81;
      *(v44 + *(v81 + 48)) = v42;
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v16 = swift_allocObject();
      *(v16 + 1) = v75;
      v46 = v38;
      v47 = v79;
      sub_1C445FFF0(v44, v79, &qword_1EC0C5000, &qword_1C4F5E9F8);
      *(v16 + 7) = v46;
      sub_1C440B690();
      *(v16 + 8) = sub_1C45023B8(&qword_1EDDFA1C8, v48, MEMORY[0x1E69A9808]);
      v49 = sub_1C4422F90(v16 + 4);
      v50 = v47;
      v38 = v46;
      v43(v49, v50, v46);
      v51 = v80;
      sub_1C445FFF0(v44, v80, &qword_1EC0C5000, &qword_1C4F5E9F8);
      v52 = *(v51 + *(v45 + 48));
      *(v16 + 12) = MEMORY[0x1E69E63B0];
      *(v16 + 13) = MEMORY[0x1E69A0168];
      *(v16 + 9) = v52;
      v53 = v44;
      v2 = v86;
      sub_1C4420C3C(v53, &qword_1EC0C5000, &qword_1C4F5E9F8);
      (*(v40 + 8))(v51, v46);
      __dst[0] = v2;
      v0 = *(v2 + 16);
      v54 = *(v2 + 24);
      if (v0 >= v54 >> 1)
      {
        sub_1C459DB58(v54 > 1, v0 + 1, 1);
        v2 = __dst[0];
      }

      *(v2 + 16) = v0 + 1;
      *(v2 + 8 * v0 + 32) = v16;
      v32 = v74;
      v55 = 1 << *(v74 + 32);
      if (v35 >= v55)
      {
        goto LABEL_29;
      }

      v37 = v73;
      v56 = *(v73 + 8 * v39);
      if ((v56 & v85) == 0)
      {
        goto LABEL_30;
      }

      if (*(v74 + 36) != v84)
      {
        goto LABEL_31;
      }

      v57 = v56 & (-2 << (v35 & 0x3F));
      if (v57)
      {
        v55 = __clz(__rbit64(v57)) | v35 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v58 = v39 << 6;
        v59 = v39 + 1;
        v60 = (v70 + 8 * v39);
        while (v59 < (v55 + 63) >> 6)
        {
          v61 = *v60++;
          v16 = v61;
          v58 += 64;
          ++v59;
          if (v61)
          {
            sub_1C440951C(v35, v84, v82 & 1);
            v55 = __clz(__rbit64(v16)) + v58;
            goto LABEL_22;
          }
        }

        sub_1C440951C(v35, v84, v82 & 1);
      }

LABEL_22:
      v34 = 0;
      v36 = v83 + 1;
      v35 = v55;
      v33 = v71;
      v0 = v72;
      if (v83 + 1 == v72)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_23:

  v62 = sub_1C4F00968();
  v63 = sub_1C4F01CF8();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v69;
  if (v64)
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_1C43F8000, v62, v63, "Writing page rank to database", v66, 2u);
    MEMORY[0x1C6942830](v66, -1, -1);
  }

  memcpy(__dst, (v65 + 24), sizeof(__dst));
  sub_1C4BC74D0();
}

uint64_t sub_1C4C461E4(char *a1, void *a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_1C4EFF0C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  v25 = &a1[*(type metadata accessor for GraphTriple(0) + 32)];
  v27 = *v25;
  v26 = *(v25 + 1);
  v65[3] = MEMORY[0x1E69E6158];
  v65[0] = v27;
  v65[1] = v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C82A1C(v65);
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    sub_1C4420C3C(v6, &unk_1EC0BA0E0, &qword_1C4F105A0);
    return 1;
  }

  v61 = v10;
  v62 = v15;
  v63 = a2;
  (*(v8 + 32))(v24, v6, v7);
  sub_1C4EFF098();
  sub_1C45023B8(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
  v28 = sub_1C4F010B8();
  v29 = v8;
  v30 = *(v8 + 8);
  v30(v21, v7);
  if (v28 & 1) != 0 || (sub_1C4EFF098(), v31 = sub_1C4F010B8(), v30(v21, v7), (v31))
  {
    v30(v24, v7);
    return 1;
  }

  v58 = v30;
  v59 = *(v29 + 16);
  v59(v62, v24, v7);
  v32 = v63;
  LODWORD(v57) = swift_isUniquelyReferenced_nonNull_native();
  v65[0] = *v32;
  v33 = v65[0];
  *v32 = 0x8000000000000000;
  sub_1C44E3664();
  v60 = v35;
  if (__OFADD__(*(v33 + 16), (v34 & 1) == 0))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = v34;
  v57 = sub_1C456902C(&qword_1EC0C5008, qword_1C4F5EA08);
  v37 = sub_1C4F02458();
  v38 = v65[0];
  if (v37)
  {
    sub_1C44E3664();
    v60 = v39;
    v41 = v63;
    if ((v36 & 1) != (v40 & 1))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v41 = v63;
  }

  *v41 = v38;

  v42 = *v41;
  if ((v36 & 1) == 0)
  {
    v59(v21, a1, v7);
    sub_1C457EB2C(v60, v21, MEMORY[0x1E69E7CD0], v42);
  }

  sub_1C44D56D0();
  v58(v18, v7);
  v59(v61, a1, v7);
  swift_isUniquelyReferenced_nonNull_native();
  v65[0] = *v41;
  v43 = v65[0];
  *v41 = 0x8000000000000000;
  sub_1C44E3664();
  v46 = v45;
  if (__OFADD__(*(v43 + 16), (v45 & 1) == 0))
  {
    goto LABEL_23;
  }

  v47 = v44;
  v48 = sub_1C4F02458();
  v49 = v65[0];
  if ((v48 & 1) == 0)
  {
    v52 = v63;
    goto LABEL_18;
  }

  sub_1C44E3664();
  v52 = v63;
  if ((v46 & 1) == (v51 & 1))
  {
    v47 = v50;
LABEL_18:
    *v52 = v49;

    v53 = *v52;
    if ((v46 & 1) == 0)
    {
      v59(v21, v24, v7);
      sub_1C457EB2C(v47, v21, MEMORY[0x1E69E7CD0], v53);
    }

    v54 = v64;
    sub_1C44D56D0();
    v55 = v58;
    v58(v54, v7);
    v55(v24, v7);
    return 1;
  }

LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4C46780(char *a1, void *a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_1C4EFF0C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  v25 = &a1[*(type metadata accessor for EventTriple(0) + 32)];
  v27 = *v25;
  v26 = *(v25 + 1);
  v65[3] = MEMORY[0x1E69E6158];
  v65[0] = v27;
  v65[1] = v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C82A1C(v65);
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    sub_1C4420C3C(v6, &unk_1EC0BA0E0, &qword_1C4F105A0);
    return 1;
  }

  v61 = v10;
  v62 = v15;
  v63 = a2;
  (*(v8 + 32))(v24, v6, v7);
  sub_1C4EFF098();
  sub_1C45023B8(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
  v28 = sub_1C4F010B8();
  v29 = v8;
  v30 = *(v8 + 8);
  v30(v21, v7);
  if (v28 & 1) != 0 || (sub_1C4EFF098(), v31 = sub_1C4F010B8(), v30(v21, v7), (v31))
  {
    v30(v24, v7);
    return 1;
  }

  v58 = v30;
  v59 = *(v29 + 16);
  v59(v62, v24, v7);
  v32 = v63;
  LODWORD(v57) = swift_isUniquelyReferenced_nonNull_native();
  v65[0] = *v32;
  v33 = v65[0];
  *v32 = 0x8000000000000000;
  sub_1C44E3664();
  v60 = v35;
  if (__OFADD__(*(v33 + 16), (v34 & 1) == 0))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = v34;
  v57 = sub_1C456902C(&qword_1EC0C5008, qword_1C4F5EA08);
  v37 = sub_1C4F02458();
  v38 = v65[0];
  if (v37)
  {
    sub_1C44E3664();
    v60 = v39;
    v41 = v63;
    if ((v36 & 1) != (v40 & 1))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v41 = v63;
  }

  *v41 = v38;

  v42 = *v41;
  if ((v36 & 1) == 0)
  {
    v59(v21, a1, v7);
    sub_1C457EB2C(v60, v21, MEMORY[0x1E69E7CD0], v42);
  }

  sub_1C44D56D0();
  v58(v18, v7);
  v59(v61, a1, v7);
  swift_isUniquelyReferenced_nonNull_native();
  v65[0] = *v41;
  v43 = v65[0];
  *v41 = 0x8000000000000000;
  sub_1C44E3664();
  v46 = v45;
  if (__OFADD__(*(v43 + 16), (v45 & 1) == 0))
  {
    goto LABEL_23;
  }

  v47 = v44;
  v48 = sub_1C4F02458();
  v49 = v65[0];
  if ((v48 & 1) == 0)
  {
    v52 = v63;
    goto LABEL_18;
  }

  sub_1C44E3664();
  v52 = v63;
  if ((v46 & 1) == (v51 & 1))
  {
    v47 = v50;
LABEL_18:
    *v52 = v49;

    v53 = *v52;
    if ((v46 & 1) == 0)
    {
      v59(v21, v24, v7);
      sub_1C457EB2C(v47, v21, MEMORY[0x1E69E7CD0], v53);
    }

    v54 = v64;
    sub_1C44D56D0();
    v55 = v58;
    v58(v54, v7);
    v55(v24, v7);
    return 1;
  }

LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4C46D1C()
{

  return v0;
}

uint64_t sub_1C4C46D90()
{
  sub_1C4C46D1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C46DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s22PageRankViewGenerationCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x48uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = xmmword_1C4F5B670;
      *(v11 + 32) = 0xD000000000000025;
      *(v11 + 40) = 0x80000001C4FB83A0;
      *(v11 + 48) = v13;
      *(v11 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C46F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C46DE8(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C47124(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4C47184(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4C471EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s40PeopleRelationshipAliasViewViewGeneratorCMa();
      v5 = swift_allocObject();
      *(v5 + 16) = a5;
      *(v5 + 24) = v14;
      *(v5 + 32) = v15;
      *(v5 + 56) = 0xD000000000000539;
      *(v5 + 64) = 0x80000001C4FBC190;
      *(v5 + 48) = v16;
    }

    else
    {
      sub_1C450B034();
      v10 = swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = xmmword_1C4F5B670;
      *(v11 + 32) = 0xD000000000000025;
      *(v11 + 40) = 0x80000001C4FB83A0;
      *(v11 + 48) = v13;
      *(v11 + 64) = 0;
      v5 = v10;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return v5;
}

uint64_t sub_1C4C47368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C471EC(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C47414()
{
  v0 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  v45 = &v48;

  sub_1C4465390(sub_1C4C47CB4, v44);

  v1 = v48;
  v41 = sub_1C4428DA0(v48);
  if (!v41)
  {
LABEL_25:
    if (qword_1EDDFECD0 != -1)
    {
LABEL_32:
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = *(v0 + 16);

      _os_log_impl(&dword_1C43F8000, v27, v28, "Writing %ld rows to PeopleRelationShipView", v29, 0xCu);
      MEMORY[0x1C6942830](v29, -1, -1);
    }

    else
    {
    }

    sub_1C4BC7440(v0, v36[3], v36[4], v36[5], v36[6]);
  }

  v2 = 0;
  v40 = v1 & 0xC000000000000001;
  v37 = v1 & 0xFFFFFFFFFFFFFF8;
  v38 = xmmword_1C4F0C890;
  v39 = v1;
  while (1)
  {
    if (v40)
    {
      v3 = MEMORY[0x1C6940F90](v2, v1);
    }

    else
    {
      if (v2 >= *(v37 + 16))
      {
        goto LABEL_31;
      }

      v3 = *(v1 + 8 * v2 + 32);
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_1C441A898(0);
    v4 = sub_1C4EFBBE8();
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v4);
      v34 = v3;
      v35 = 0;
      v6 = sqlite3_column_type(v5, 0);
      if (v6 == 5)
      {
        goto LABEL_33;
      }

      v42 = sub_1C4F02AA8();
    }

    else
    {
      sub_1C4EFBB98();
      v42 = v46;
    }

    sub_1C441A898(1);
    v7 = sub_1C4EFBBE8();
    v43 = v2 + 1;
    if (v7)
    {
      MEMORY[0x1EEE9AC00](v7);
      v34 = v3;
      v35 = 1;
      v6 = sqlite3_column_type(v8, 1);
      if (v6 == 5)
      {
LABEL_33:
        MEMORY[0x1EEE9AC00](v6);
        sub_1C43FD954();
        *(v31 - 16) = sub_1C487BF24;
        *(v31 - 8) = v33;
        sub_1C4EFB968();
        goto LABEL_35;
      }

      v9 = sub_1C4F011E8();
      v11 = v10;
      v46 = v9;
    }

    else
    {
      sub_1C4EFBB98();
      v9 = v46;
      v11 = v47;
    }

    sub_1C441A898(2);
    v12 = sub_1C4EFBBE8();
    if (!v12)
    {
      v13 = v0;
      sub_1C4EFBB98();
      v16 = v46;
      v18 = v47;
      goto LABEL_20;
    }

    v13 = v0;
    MEMORY[0x1EEE9AC00](v12);
    v34 = v3;
    v35 = 2;
    v15 = sqlite3_column_type(v14, 2);
    if (v15 == 5)
    {
      break;
    }

    v16 = sub_1C4F011E8();
    v18 = v17;
    v46 = v16;
LABEL_20:
    sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
    v19 = swift_allocObject();
    *(v19 + 16) = v38;
    *(v19 + 56) = MEMORY[0x1E69E7360];
    *(v19 + 64) = MEMORY[0x1E69A01D0];
    *(v19 + 32) = v42;
    v20 = MEMORY[0x1E69E6158];
    *(v19 + 96) = MEMORY[0x1E69E6158];
    v21 = MEMORY[0x1E69A0138];
    *(v19 + 104) = MEMORY[0x1E69A0138];
    *(v19 + 112) = v16;
    *(v19 + 72) = v9;
    *(v19 + 80) = v11;
    *(v19 + 136) = v20;
    *(v19 + 144) = v21;
    *(v19 + 120) = v18;
    v0 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458B824();
      v0 = v24;
    }

    v1 = v39;
    v22 = v43;
    v23 = *(v0 + 16);
    if (v23 >= *(v0 + 24) >> 1)
    {
      sub_1C458B824();
      v0 = v25;
    }

    *(v0 + 16) = v23 + 1;
    *(v0 + 8 * v23 + 32) = v19;
    ++v2;
    if (v22 == v41)
    {
      goto LABEL_25;
    }
  }

  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD954();
  *(v32 - 16) = sub_1C487BDA4;
  *(v32 - 8) = v33;
  sub_1C4EFB968();
LABEL_35:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C4C47A98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1C4EFB758();
  v9 = sub_1C4EFBC18();
  if (v3)
  {
    (*(v6 + 8))(v8, v5);
    return sub_1C46AA374(v12);
  }

  else
  {
    v11 = v9;
    (*(v6 + 8))(v8, v5);
    sub_1C46AA374(v12);
    *a2 = v11;
  }
}

uint64_t sub_1C4C47C08()
{

  return v0;
}

uint64_t sub_1C4C47C5C()
{
  sub_1C4C47C08();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C47CD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&qword_1EC0BFA28, &qword_1C4F3BA48);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  *(&v9 - v4) = a2;
  v6 = *MEMORY[0x1E69A0060];
  v7 = sub_1C4EFBD98();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  sub_1C440BAA8(v5, 0, 1, v7);

  return sub_1C4EFB6F8();
}

uint64_t sub_1C4C47E60(uint64_t a1)
{
  v3 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v11 = *(a1 + 16);
  v12 = (v5 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      return v16;
    }

    (*(v5 + 16))(v9, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v3);
    sub_1C4F01968();
    if (v1)
    {
      break;
    }

    ++v10;
    sub_1C471D870();
    v14 = v13;
    (*v12)(v9, v3);
    sub_1C49D3A70(v14);
  }

  (*v12)(v9, v3);
}

uint64_t sub_1C4C47FEC()
{
  v1 = type metadata accessor for GraphTriple(0);
  v99 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C43FBCC4();
  v4 = v3 - v2;
  v5 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v118 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FD2C8(&v90 - v12);
  v105 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v109 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2C8(&v90 - v19);
  v100 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = sub_1C4EFDE68();
  MEMORY[0x1EEE9AC00](v26 - 8);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v28 - v27);
  v104 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v103 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v102 = v32 - v31;
  sub_1C442E860(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_eventTracker, v114);
  v33 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_graphStore);
  v34 = sub_1C4418280(v114, v115);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v37 = (v36 - v35);
  (*(v38 + 16))(v36 - v35);
  v39 = *v37;

  v101 = v33;
  v40 = sub_1C4C49008(v39, v33);
  v41 = sub_1C440962C(v114);
  v42 = v113;
  sub_1C471B834(v41, v43, v44, v45, v46, v47, v48, v49, v90, v91, v92, v93, v94, *(&v94 + 1), v95, v96, v97, v98, v99, v100);
  if (v42)
  {
  }

  v97 = 0;
  v96 = v40;
  v98 = v0;
  v91 = v10;
  v92 = v5;
  v93 = v4;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  v50 = swift_allocObject();
  v94 = xmmword_1C4F0D130;
  *(v50 + 16) = xmmword_1C4F0D130;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v113 = v51;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = v94;
  sub_1C4EFD4C8();
  v53 = sub_1C4EFD2F8();
  v55 = v54;
  (*(v21 + 8))(v25, v100);
  *(inited + 32) = v53;
  *(inited + 40) = v55;
  sub_1C448DE08();
  v100 = v56;
  v57 = v109;
  v58 = *(v109 + 104);
  v59 = v105;
  (v58)(v111, *MEMORY[0x1E69A95C0], v105);
  sub_1C4400844();
  v58();
  v60 = v106;
  sub_1C4400844();
  v58();
  v61 = v107;
  sub_1C4400844();
  v58();
  v62 = v108;
  sub_1C4400844();
  v58();
  v63 = v111;
  sub_1C4EFDE58();

  v64 = *(v57 + 8);
  v64(v62, v59);
  v64(v61, v59);
  v64(v60, v59);
  v64(v112, v59);
  v64(v63, v59);
  v65 = v102;
  sub_1C4EFDEA8();
  v66 = sub_1C4EFF8F8();
  v67 = v110;
  sub_1C440BAA8(v110, 1, 1, v66);
  v68 = sub_1C498DB80();
  sub_1C482ADC8(v67);
  (*(v103 + 8))(v65, v104);
  v69 = *(v68 + 16);
  if (v69)
  {
    v114[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v70 = v114[0];
    v71 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v111 = v68;
    v72 = v68 + v71;
    v113 = *(v99 + 72);
    v73 = (v118 + 16);
    v112 = v118 + 32;
    v74 = v93;
    v75 = v92;
    v76 = v91;
    do
    {
      sub_1C443C008(v72, v74, type metadata accessor for GraphTriple);
      (*v73)(v76, v74, v75);
      sub_1C449F280(v74, type metadata accessor for GraphTriple);
      v114[0] = v70;
      v77 = *(v70 + 16);
      if (v77 >= *(v70 + 24) >> 1)
      {
        sub_1C459D178();
        v74 = v93;
        v70 = v114[0];
      }

      *(v70 + 16) = v77 + 1;
      (*(v118 + 32))(v70 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v77, v76, v75);
      v72 += v113;
      --v69;
    }

    while (v69);

    v78 = v98;
    v79 = v97;
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
    v78 = v98;
    v79 = v97;
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v80 = sub_1C4F00978();
  sub_1C442B738(v80, qword_1EDE2DF70);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v81 = sub_1C4F00968();
  v82 = sub_1C4F01CB8();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v114[0] = v84;
    *v83 = 136315394;
    *(v83 + 4) = sub_1C441D828(*(v78 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_config), *(v78 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_config + 8), v114);
    *(v83 + 12) = 2048;
    *(v83 + 14) = *(v70 + 16);

    _os_log_impl(&dword_1C43F8000, v81, v82, "FeatureView %s: Fetching facts for people count:%ld", v83, 0x16u);
    sub_1C440962C(v84);
    MEMORY[0x1C6942830](v84, -1, -1);
    MEMORY[0x1C6942830](v83, -1, -1);
  }

  else
  {
  }

  sub_1C4C47E60(v70);
  if (v79)
  {

    sub_1C4C49124(v117);
  }

  sub_1C4C49124(v117);

  v86 = v78[3];
  v87 = v78[4];
  v88 = v78[5];
  v89 = v78[6];
  v114[0] = v78[2];
  v114[1] = v86;
  v114[2] = v87;
  v115 = v88;
  v116 = v89;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C47D32C8();
}

uint64_t sub_1C4C48B74()
{

  sub_1C449F280(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_config, _s10ViewConfigVMa);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28PersonEntityTaggingFactsView_eventTracker));
  return v0;
}

uint64_t sub_1C4C48BFC()
{
  sub_1C4C48B74();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonEntityTaggingFactsView(uint64_t a1)
{
  result = qword_1EDDDFC10;
  if (!qword_1EDDDFC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4C48CA8(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4C48D54()
{
  sub_1C4C47FEC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4C48E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EF98F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for BehaviorDatabaseEventTracker();
  v15[4] = &off_1F43E2390;
  v15[0] = a1;
  sub_1C442E860(v15, a3 + OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_eventTracker);
  *(a3 + 16) = a2;
  sub_1C443C008(a2 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v8, type metadata accessor for Configuration);

  sub_1C4EF9888();

  sub_1C440962C(v15);
  (*(v10 + 8))(v8, v9);
  (*(v10 + 32))(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_databaseURL, v12, v9);
  return a3;
}

uint64_t sub_1C4C49008(uint64_t a1, uint64_t a2)
{
  v14 = type metadata accessor for BehaviorDatabaseEventTracker();
  v15 = &off_1F43E2390;
  v13[0] = a1;
  type metadata accessor for EntityTaggingFactsFeaturizer(0);
  v4 = swift_allocObject();
  v5 = sub_1C4418280(v13, v14);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = sub_1C4C48E24(*v8, a2, v4);
  sub_1C440962C(v13);
  return v10;
}

uint64_t sub_1C4C491A8(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v1 = *(a1 + 16);
  for (i = (a1 + 32); v1; --v1)
  {
    v3 = i[1];
    v8 = *i;
    v9[0] = v3;
    *(v9 + 9) = *(i + 25);
    sub_1C45A2358(&v8, v6);
    v4 = sub_1C472675C(&v8);
    sub_1C45EC75C(&v8);
    sub_1C49D3A70(v4);
    i += 3;
  }

  return v7;
}

void sub_1C4C49250(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1C4EFDAB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C4D0E2C0())
  {
    sub_1C463E224();
    sub_1C4D0E478();
  }

  else
  {
    v10 = v1[7];
    if (v10)
    {
      v48 = a1;
      sub_1C442E860(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_loiEventTracker, &v55);
      v11 = sub_1C4418280(&v55, v58);
      v12 = MEMORY[0x1EEE9AC00](v11);
      v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14, v12);
      v16 = *v14;
      v17 = swift_retain_n();
      v50 = sub_1C4C4DF30(v17, v16, 0);
      sub_1C440962C(&v55);
      sub_1C4409678((v4 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_histogramKeyProvider), *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_histogramKeyProvider + 24));
      (*(v7 + 104))(v9, *MEMORY[0x1E69A9418], v6);
      v18 = sub_1C45EA9C0(v9);
      v51 = v3;
      if (v3)
      {
        (*(v7 + 8))(v9, v6);
      }

      else
      {
        v24 = v18;
        v47 = v10;
        v45 = v4;
        (*(v7 + 8))(v9, v6);
        v25 = 0;
        v4 = *(v24 + 16);
        v26 = v24 + 72;
        v49 = MEMORY[0x1E69E7CC0];
        v52 = v24;
        v46 = v24 + 72;
LABEL_11:
        v27 = (v26 + 48 * v25);
        while (v4 != v25)
        {
          if (v25 >= *(v24 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          if (*v27 == 17)
          {
            v28 = *(v27 - 5);
            v29 = *(v27 - 4);
            v30 = *(v27 - 3);
            v31 = *(v27 - 2);
            v32 = *(v27 - 1);
            v55 = v28;
            v56 = v29;
            v53 = 44;
            v54 = 0xE100000000000000;
            sub_1C4415EA8();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if ((sub_1C4F02048() & 1) == 0)
            {
              v33 = v49;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v60 = v33;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C459D238(0, *(v33 + 16) + 1, 1);
                v33 = v60;
              }

              v36 = *(v33 + 16);
              v35 = *(v33 + 24);
              v37 = v36 + 1;
              if (v36 >= v35 >> 1)
              {
                v49 = v36 + 1;
                sub_1C459D238(v35 > 1, v36 + 1, 1);
                v37 = v49;
                v33 = v60;
              }

              ++v25;
              *(v33 + 16) = v37;
              v49 = v33;
              v38 = v33 + 48 * v36;
              *(v38 + 32) = v28;
              *(v38 + 40) = v29;
              *(v38 + 48) = v30;
              *(v38 + 56) = v31;
              *(v38 + 64) = v32;
              *(v38 + 72) = 17;
              v24 = v52;
              v26 = v46;
              goto LABEL_11;
            }

            sub_1C45A23B4(v28, v29, v30, v31, v32, 17);
            v24 = v52;
          }

          v27 += 48;
          ++v25;
        }

        v39 = v51;
        sub_1C4C491A8(v49);

        if (!v39)
        {
          v40 = v45[3];
          v41 = v45[4];
          v42 = v45[5];
          v43 = v45[6];
          v55 = v45[2];
          v56 = v40;
          v57 = v41;
          v58 = v42;
          v59 = v43;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          sub_1C47D32C8();

          sub_1C4D0E5C0();
        }
      }
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
LABEL_27:
        swift_once();
      }

      v19 = sub_1C4F00978();
      sub_1C442B738(v19, qword_1EDE2DDE0);

      v20 = sub_1C4F00968();
      v21 = sub_1C4F01CF8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v55 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1C441D828(*(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_config), *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_config + 8), &v55);
        _os_log_impl(&dword_1C43F8000, v20, v21, "FeatureView: %s: Featurizer is nil. Ignoring AllSources and returning", v22, 0xCu);
        sub_1C440962C(v23);
        MEMORY[0x1C6942830](v23, -1, -1);
        MEMORY[0x1C6942830](v22, -1, -1);
      }

      sub_1C4D0E51C();
    }
  }
}

uint64_t sub_1C4C4985C()
{

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_config);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_histogramKeyProvider));
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23PersonEntityTaggingView_loiEventTracker));
  return v0;
}

uint64_t sub_1C4C498D8()
{
  sub_1C4C4985C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonEntityTaggingView(uint64_t a1)
{
  result = qword_1EDDE1DF0;
  if (!qword_1EDDE1DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4C49984(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4C49A2C(uint64_t a1)
{
  sub_1C4C49250(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C49AD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EF97E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  sub_1C4F01C78();
  sub_1C4C4D5F4(&qword_1EC0C5020, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  while (1)
  {
    sub_1C4F01FA8();
    if (!v13)
    {
      break;
    }

    sub_1C44482AC(&v12, v11);
    v8 = sub_1C4C4D088(v11, a2);
    v9 = sub_1C440962C(v11);
    if (v8)
    {
      MEMORY[0x1C6940330](v9);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      v7 = v14;
    }
  }

  (*(v4 + 8))(v6, v3);

  return v7;
}

void *sub_1C4C49C9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);
  if (v4)
  {
  }

  else
  {

    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C4C4D5F4(&qword_1EDDFEDB8, type metadata accessor for ErrorHandlingDatabasePool, &unk_1C4F24468);
      sub_1C4EFDC78();
      swift_allocObject();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFDC68();
      v9 = objc_allocWithZone(sub_1C4EFE168());
      v13 = sub_1C4EFE148();
      _s29PhotosAutonamingViewGeneratorCMa();
      a2 = swift_allocObject();
      a2[18] = &type metadata for PhotosAutonamingRejectionProvider;
      a2[19] = &off_1F4404F80;
      memcpy(a2 + 2, __dst, 0x60uLL);
      a2[14] = v13;
    }

    else
    {
      sub_1C44206C8();
      v10 = sub_1C450B034();
      sub_1C43FFB2C(&unk_1F44064D8, v10);
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = xmmword_1C4F5B670;
      *(v11 + 32) = 0xD000000000000025;
      *(v11 + 40) = a4;
      *(v11 + 48) = __dst[0];
      *(v11 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a2;
}

uint64_t sub_1C4C49EDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1C4C49C9C(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C49F88(uint64_t a1)
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_1C43FCED0();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, v4, v5, "PhotosAutonamingViewGenerator: Performing full rebuild.", v6, 2u);
    sub_1C43FBE2C();
  }

  if (sub_1C4428DA0(a1))
  {
    sub_1C4431590(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C6940F90](0, a1);
    }

    else
    {
    }

    v18 = v7;
    v16 = 0;
    v17 = 0;
    MEMORY[0x1EEE9AC00](v7);
    v15[2] = v1;
    v15[3] = &v17;
    v15[4] = a1;
    v15[5] = &v18;
    v15[6] = &v16;

    sub_1C446C37C(sub_1C4C4D514, v15);

    sub_1C4C4A5F8();
  }

  else
  {
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CD8();
    if (os_log_type_enabled(v9, v10))
    {
      *sub_1C43FCED0() = 0;
      sub_1C44011B0(&dword_1C43F8000, v11, v12, "Expected at least one KG source");
      sub_1C43FBE2C();
    }

    sub_1C44206C8();
    v13 = sub_1C446D0DC();
    sub_1C43FFB2C(&type metadata for ViewUpdateError, v13);
    return sub_1C4407F5C(v14, 31);
  }
}

uint64_t sub_1C4C4A1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v21 = a3;
  v9 = sub_1C4EFB768();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, (a2 + 16), sizeof(__dst));
  v26 = 0;
  v27 = 0xE000000000000000;
  v29 = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4F02248();

  v26 = 0xD000000000000015;
  v27 = 0x80000001C4FB3220;
  MEMORY[0x1C6940010](__dst[0], __dst[1]);
  sub_1C4EFB758();
  v24 = a1;
  v13 = v25;
  sub_1C4EFBFF8();
  if (v13)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    (*(v10 + 8))(v12, v9);

    MEMORY[0x1EEE9AC00](v15);
    *(&v20 - 2) = __dst;
    sub_1C4EFBFD8();
    v16 = v29;
    v18 = v22;
    v17 = v23;
    v19 = v21;
    while (*(sub_1C4C4A498(v19, v16, v18, v17, a2) + 16))
    {
      sub_1C4B76FC8();
    }

    sub_1C4B76B30();
  }
}

unint64_t sub_1C4C4A498(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_1C4428DA0(a2);
  v21 = a2 & 0xC000000000000001;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v12 = a2 + 32;
  while (1)
  {
    result = *a1;
    if (*a1 >= v10)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if (v21)
    {
      v14 = MEMORY[0x1C6940F90]();
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *(v11 + 16))
    {
      goto LABEL_14;
    }

    v14 = *(v12 + 8 * result);

LABEL_7:
    *a3 = v14;

    v15 = *a4;
    v16 = *(a5 + 72);
    v22[0] = *(a5 + 56);
    v22[1] = v16;
    v23 = *(a5 + 88);
    v17 = sub_1C4CDFB34(v15, 0, v22, 0, 1);
    v19 = v18;
    v20 = v17;

    *a4 = v19;
    if (*(v20 + 16))
    {
      return v20;
    }

    if (__OFADD__(*a1, 1))
    {
      goto LABEL_15;
    }

    ++*a1;
    *a4 = 0;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C4C4A5F8()
{
  sub_1C4C4A65C();

  sub_1C446C37C(sub_1C4C4D538, v0);
}

uint64_t sub_1C4C4A65C()
{
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C4F00978();
  sub_1C442B738(v0, qword_1EDDFECB8);
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C43F8000, v1, v2, "PhotosAutonamingViewGenerator: Removing rejections.", v3, 2u);
    MEMORY[0x1C6942830](v3, -1, -1);
  }

  sub_1C446C37C(sub_1C4C4C540, 0);
}

uint64_t sub_1C4C4A778(uint64_t a1, void *a2)
{
  v4 = a2[18];
  v5 = a2[19];
  sub_1C4409678(a2 + 15, v4);
  v7[2] = a2;
  v7[3] = a1;
  return (*(v5 + 8))(sub_1C4C4D554, v7, v4, v5);
}

void sub_1C4C4A80C(NSObject **a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v71 = sub_1C4EFBC98();
  v5 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v80 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1C4EFF0C8();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFB678();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v73 = v70 - v11;
  v12 = sub_1C456902C(&qword_1EC0C5010, qword_1C4F5EDF0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v87 = (v70 - v13);
  v86 = sub_1C4EFF1E8();
  v14 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v70 - v17;
  v19 = *a1;
  v20 = a1[1];
  v22 = a1[2];
  v21 = a1[3];
  if (qword_1EDDFECB0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v23 = sub_1C4F00978();
  v24 = sub_1C442B738(v23, qword_1EDDFECB8);
  v25 = v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v89 = v24;
  v26 = sub_1C4F00968();
  v27 = sub_1C4F01CF8();

  v28 = os_log_type_enabled(v26, v27);
  v81 = a3;
  v79 = v5;
  v83 = v21;
  v70[1] = v25;
  if (v28)
  {
    v29 = v25;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v85 = v20;
    v32 = v31;
    v33 = swift_slowAlloc();
    v90 = v33;
    *v30 = 138740483;
    *(v30 + 4) = v29;
    *v32 = v29;
    v84 = v14;
    *(v30 + 12) = 2085;
    v34 = v29;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = v18;
    v36 = sub_1C441D828(v85, v22, &v90);

    *(v30 + 14) = v36;
    *(v30 + 22) = 2085;
    v37 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v38 = MEMORY[0x1C6940380](v37, &type metadata for AutonamingRejection.RejectedInfo);
    v40 = v39;

    v41 = sub_1C441D828(v38, v40, &v90);
    v14 = v84;

    *(v30 + 24) = v41;
    v18 = v35;
    _os_log_impl(&dword_1C43F8000, v26, v27, "PhotosAutonamingViewGenerator: Processing rejection: %{sensitive}@ - %{sensitive}s - %{sensitive}s.", v30, 0x20u);
    sub_1C4423A0C(v32, &qword_1EC0BDA00, &qword_1C4F10D30);
    v42 = v32;
    v20 = v85;
    MEMORY[0x1C6942830](v42, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v33, -1, -1);
    MEMORY[0x1C6942830](v30, -1, -1);
  }

  v43 = v87;
  v21 = 0;
  sub_1C4EFE158();
  a3 = v89;
  if (sub_1C44157D4(v43, 1, v86) == 1)
  {
    sub_1C4423A0C(v43, &qword_1EC0C5010, qword_1C4F5EDF0);
    v44 = sub_1C4F00968();
    v45 = sub_1C4F01CF8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1C43F8000, v44, v45, "PhotosAutonamingViewGenerator: Could not process rejection because GraphPerson could not be found.", v46, 2u);
      MEMORY[0x1C6942830](v46, -1, -1);
    }
  }

  else
  {
    v88 = v22;
    v85 = v20;
    v47 = v82;
    v48 = v86;
    v14[4](v82, v43, v86);
    v20 = v18;
    v14[2](v18, v47, v48);
    v49 = sub_1C4EFF1D8();
    v50 = (v14 + 1);
    v14 = v14[1];
    v84 = v50;
    (v14)(v47, v48);
    v5 = v49;
    v19 = sub_1C4F00968();
    v51 = sub_1C4F01CF8();
    if (os_log_type_enabled(v19, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1C43F8000, v19, v51, "PhotosAutonamingViewGenerator: Obtained a GraphPerson for the rejection", v52, 2u);
      MEMORY[0x1C6942830](v52, -1, -1);
    }

    v53 = 0;
    v22 = v83;
    v54 = *(v83 + 16);
    v18 = (v83 + 48);
    while (v54 != v53)
    {
      if (v53 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v55 = *v18;
      v56 = *(v18 - 1);
      v90 = *(v18 - 2);
      v91 = v56;
      v92 = v55;
      sub_1C4C4D55C();
      v19 = sub_1C4C4B3D8(&v90, v5);
      sub_1C4C4D564();
      if (v19)
      {
        v87 = v14;

        v60 = sub_1C4F00968();
        v61 = sub_1C4F01CF8();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_1C43F8000, v60, v61, "PhotosAutonamingViewGenerator: Removing person.", v62, 2u);
          MEMORY[0x1C6942830](v62, -1, -1);
        }

        v63 = v73;
        sub_1C4EFB648();
        sub_1C4EFB638();
        sub_1C4C4D5F4(&qword_1EC0C5018, MEMORY[0x1E69A9870], MEMORY[0x1E69A9868]);
        v64 = v72;
        sub_1C4EFD5A8();
        v65 = sub_1C4EFF048();
        v67 = v66;
        (*(v74 + 8))(v64, v76);
        v90 = v65;
        v91 = v67;
        sub_1C4415EA8();
        sub_1C4EFB668();

        sub_1C4EFB638();
        (*(v77 + 32))(v75, v63, v78);
        v68 = v80;
        sub_1C4EFBC88();
        sub_1C4EFC008();
        v69 = (v79 + 8);

        (*v69)(v68, v71);
        (v87)(v20, v86);
        return;
      }

      v18 += 24;
      ++v53;
    }

    v57 = sub_1C4F00968();
    v58 = sub_1C4F01CF8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1C43F8000, v57, v58, "PhotosAutonamingViewGenerator: Will not remove person because no feedback matches the current suggestion.", v59, 2u);
      MEMORY[0x1C6942830](v59, -1, -1);
    }

    (v14)(v20, v86);
  }
}

uint64_t sub_1C4C4B3D8(uint64_t a1, void *a2)
{
  v5 = sub_1C4EF9788();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v12 = [a2 suggestedNameComponents];
    if (v12)
    {
      v13 = v12;
      v51 = v6;
      sub_1C4EF9768();

      v14 = sub_1C4EF9758();
      v15 = [v14 autonamingFeedbackStandardizedRepresentation];

      v16 = sub_1C4F01138();
      v18 = v17;

      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v19 = sub_1C4F00978();
      sub_1C442B738(v19, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C4D55C();
      v20 = sub_1C4F00968();
      v21 = sub_1C4F01CF8();

      sub_1C4C4D564();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v50 = v16;
        v23 = v22;
        v24 = swift_slowAlloc();
        v49[1] = v2;
        v25 = v24;
        v52 = v24;
        *v23 = 136643075;
        *(v23 + 4) = sub_1C441D828(v50, v18, &v52);
        *(v23 + 12) = 2085;
        *(v23 + 14) = sub_1C441D828(v11, v10, &v52);
        _os_log_impl(&dword_1C43F8000, v20, v21, "PhotosAutonamingViewGenerator: Comparing suggested name '%{sensitive}s' with rejected name '%{sensitive}s'.", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v25, -1, -1);
        v26 = v23;
        v16 = v50;
        MEMORY[0x1C6942830](v26, -1, -1);
      }

      if (v16 == v11 && v10 == v18)
      {
        LOBYTE(v28) = 1;
      }

      else
      {
        LOBYTE(v28) = sub_1C4F02938();
      }

      (*(v51 + 8))(v9, v5);
      return v28 & 1;
    }

    v38 = [a2 suggestedNameString];
    if (!v38)
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v46 = sub_1C4F00978();
      sub_1C442B738(v46, qword_1EDDFECB8);
      v28 = sub_1C4F00968();
      v47 = sub_1C4F01CF8();
      if (os_log_type_enabled(v28, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1C43F8000, v28, v47, "PhotosAutonamingViewGenerator: Graph Person has no suggested name.", v48, 2u);
        MEMORY[0x1C6942830](v48, -1, -1);
      }

      LOBYTE(v28) = 0;
      return v28 & 1;
    }

    v39 = v38;
    v40 = sub_1C4F01138();
    v42 = v41;

    if (v40 != v11 || v10 != v42)
    {
      v44 = sub_1C4F02938();

      return v44 & 1;
    }

    goto LABEL_36;
  }

  v28 = [a2 suggestedContactIdentifier];
  if (v28)
  {
    v29 = sub_1C4F01138();
    v31 = v30;

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v32 = sub_1C4F00978();
    sub_1C442B738(v32, qword_1EDDFECB8);
    sub_1C4C4D55C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CF8();

    sub_1C4C4D564();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v52 = v36;
      *v35 = 136643075;
      *(v35 + 4) = sub_1C441D828(v29, v31, &v52);
      *(v35 + 12) = 2085;
      *(v35 + 14) = sub_1C441D828(v11, v10, &v52);
      _os_log_impl(&dword_1C43F8000, v33, v34, "PhotosAutonamingViewGenerator: Comparing suggested contact ID '%{sensitive}s' with rejected contact ID '%{sensitive}s'.", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v36, -1, -1);
      MEMORY[0x1C6942830](v35, -1, -1);
    }

    if (v29 == v11 && v10 == v31)
    {
LABEL_36:

      LOBYTE(v28) = 1;
      return v28 & 1;
    }

    LOBYTE(v28) = sub_1C4F02938();
  }

  return v28 & 1;
}

uint64_t sub_1C4C4B9E4(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = sub_1C4428DA0(v1);
  v3 = result;
  v4 = 0;
  while (2)
  {
    if (v3 != v4)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1C6940F90](v4, v1);
        v5 = result;
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      if (!__OFADD__(v4, 1))
      {
        switch(*(v5 + 33))
        {
          case 2:

            goto LABEL_18;
          default:
            v6 = sub_1C4F02938();

            ++v4;
            if (v6)
            {
              return 1;
            }

            continue;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    break;
  }

  sub_1C4441C50(*(*(a1 + 56) + 33));
  if (v8 == 0x7165527261656C63 && v7 == 0xED00006465726975)
  {
LABEL_18:

    return 1;
  }

  else
  {
    v10 = sub_1C4F02938();

    return v10 & 1;
  }
}

uint64_t sub_1C4C4BC00()
{
  sub_1C4C4A65C();
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v2[2] = __dst;
  return sub_1C446C37C(sub_1C4B7BCC4, v2);
}

uint64_t sub_1C4C4BC64(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = sub_1C4428DA0(v1);
  v3 = result;
  v4 = 0;
  while (2)
  {
    if (v3 != v4)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1C6940F90](v4, v1);
        v5 = result;
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      if (!__OFADD__(v4, 1))
      {
        switch(*(v5 + 33))
        {
          case 1:

            goto LABEL_18;
          default:
            v6 = sub_1C4F02938();

            ++v4;
            if (v6)
            {
              return 1;
            }

            continue;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    break;
  }

  sub_1C4441C50(*(*(a1 + 56) + 33));
  if (v8 == 0xD000000000000013 && 0x80000001C4F87C40 == v7)
  {
LABEL_18:

    return 1;
  }

  else
  {
    v10 = sub_1C4F02938();

    return v10 & 1;
  }
}

void sub_1C4C4BE70(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v5 = sub_1C4F00978();
    v47 = sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "PhotosAutonamingViewGenerator: handleUpdate called.", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    v44 = a1;
    v9 = *(a1 + 64);
    v10 = sub_1C4428DA0(v9);
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = 0;
    v46 = *(v44 + 56);
    a1 = v9 & 0xC000000000000001;
    v45 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a1)
      {
        v13 = MEMORY[0x1C6940F90](v12, v9);
      }

      else
      {
        if (v12 >= *(v45 + 16))
        {
          goto LABEL_42;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (*(v46 + 32) & 1) != 0 || *(v13 + 32) == 1 && (sub_1C4C149D8())
      {
        v15 = sub_1C4F00968();
        v16 = sub_1C4F01CF8();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_1C43F8000, v15, v16, "PhotosAutonamingViewGenerator: KG or control source updated. Performing full rebuild and removing rejected associations.", v17, 2u);
          MEMORY[0x1C6942830](v17, -1, -1);
        }

        v18 = *(v3 + 72);
        v49[0] = *(v3 + 56);
        v49[1] = v18;
        v50 = *(v3 + 88);
        v19 = sub_1C4CDFB34(0, 1, v49, 0, 1);
        v21 = v20;
        v22 = v19;
        v23 = memcpy(__dst, (v3 + 16), sizeof(__dst));
        MEMORY[0x1EEE9AC00](v23);
        v42[2] = __dst;
        v42[3] = v22;
        v42[4] = 0;
        v42[5] = 0;
        sub_1C446C37C(sub_1C4C4D56C, v42);

        v24 = sub_1C4F00968();
        v25 = sub_1C4F01CF8();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_1C43F8000, v24, v25, "PhotosAutonamingViewGenerator: Finished inserting triples.", v26, 2u);
          MEMORY[0x1C6942830](v26, -1, -1);
        }

        sub_1C4CDF41C(v21);
      }

      else
      {
        *(v13 + 34) = 1;
      }

      ++v12;
      if (v14 == v11)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_21:
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CF8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1C43F8000, v27, v28, "PhotosAutonamingViewGenerator: Removing rejected associations.", v29, 2u);
    MEMORY[0x1C6942830](v29, -1, -1);
  }

  sub_1C4C4A5F8();
  sub_1C4441C50(*(v43 + 33));
  v32 = v31 == 0xD000000000000013 && 0x80000001C4F87C40 == v30;
  v33 = v44;
  if (v32)
  {

    goto LABEL_30;
  }

  v34 = sub_1C4F02938();

  if (v34)
  {
LABEL_30:
    sub_1C4CDD42C();
  }

  v35 = *(v33 + 72);
  v36 = sub_1C4428DA0(v35);
  if (v36)
  {
    v37 = v36;
    if (v36 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v37; ++i)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6940F90](i, v35);
      }

      else
      {
      }

      sub_1C4CBF8F8();
    }
  }

  sub_1C444F17C();
  v39 = sub_1C4F00968();
  v40 = sub_1C4F01CF8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1C43F8000, v39, v40, "PhotosAutonamingViewGenerator: Completed.", v41, 2u);
    MEMORY[0x1C6942830](v41, -1, -1);
  }
}

uint64_t sub_1C4C4C3B0(unint64_t a1)
{
  v3 = *(a1 + 96);
  if (sub_1C4428DA0(v3))
  {
    sub_1C4431590(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6940F90](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    if (sub_1C4C4B9E4(a1))
    {
      sub_1C4C4BC00();
      sub_1C4D0E478();
    }

    else if (sub_1C4C4BC64(a1))
    {
      sub_1C4C49F88(*(a1 + 64));
      if (!v1)
      {
        sub_1C4D0E5C0();
      }
    }

    else
    {
      sub_1C4C4BE70(a1, v4);
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CD8();
    if (os_log_type_enabled(v6, v7))
    {
      *sub_1C43FCED0() = 0;
      sub_1C44011B0(&dword_1C43F8000, v8, v9, "Expected a KV source config");
      sub_1C43FBE2C();
    }

    sub_1C44206C8();
    v10 = sub_1C446D0DC();
    sub_1C43FFB2C(&type metadata for ViewUpdateError, v10);
    return sub_1C4407F5C(v11, 27);
  }
}

uint64_t sub_1C4C4C540()
{
  v1 = sub_1C4EFB0B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  if (v0)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1C4C4D5F4(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4829BD0();
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C4C4C7C4()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00C8];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB4F8();

  return sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4C4C98C()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_1C4AF9ADC(v2);

  sub_1C440962C((v0 + 120));
  return v0;
}

uint64_t sub_1C4C4C9D4()
{
  sub_1C4C4C98C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4C4CA08(unint64_t a1)
{
  sub_1C4C4C3B0(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t AutonamingRejection.init(identifierType:identifier:rejectedInfos:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t AutonamingRejection.identifier.getter()
{
  v1 = *(v0 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void sub_1C4C4CB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v7 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  isEscapingClosureAtFileLocation = sub_1C44B90E0(v6);
  v9 = objc_opt_self();
  v10 = [isEscapingClosureAtFileLocation librarySpecificFetchOptions];
  v11 = [v9 fetchPersonsWithAutonamingSuggestionFeatureUserFeedbackWithOptions_];

  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    sub_1C4C4D3A4(sub_1C4C4D5AC, v12, v11);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDDFECB8);
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CD8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_1C43FCED0();
    *v16 = 0;
    _os_log_impl(&dword_1C43F8000, v14, v15, "Could not get rejected persons.", v16, 2u);
    sub_1C43FBE2C();
  }

  sub_1C44206C8();
  v17 = sub_1C446D0DC();
  sub_1C43FFB2C(&type metadata for ViewUpdateError, v17);
  sub_1C4407F5C(v18, 31);
}

void sub_1C4C4CDB4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void **))
{
  [a1 fetchPropertySetsIfNeeded];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [a1 userFeedbackProperties];
  v8 = [v7 autonamingUserFeedbacks];

  if (v8)
  {
    v27 = a1;
    v28 = a4;

    v9 = sub_1C4C49AD4(v8, v6);

    v10 = sub_1C4428DA0(v9);
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (v10 != v11)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1C6940F90](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v34[0] = v13;
      sub_1C4C4D23C(v34, &v30);

      v15 = v32;
      v16 = v30;
      v17 = v31;
      if (v32 == 255)
      {
        sub_1C4C4D5DC(v30, v31, 255);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458F5F8();
          v12 = v20;
        }

        v18 = *(v12 + 16);
        if (v18 >= *(v12 + 24) >> 1)
        {
          sub_1C458F5F8();
          v12 = v21;
        }

        *(v12 + 16) = v18 + 1;
        v19 = v12 + 24 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
        *(v19 + 48) = v15 & 1;
      }

      ++v11;
    }

    sub_1C4EFFC88();
    v22 = sub_1C4EFFC78();
    v23 = [v27 localIdentifier];
    v24 = sub_1C4F01138();
    v26 = v25;

    v30 = v22;
    v31 = v24;
    v32 = v26;
    v33 = v12;
    v28(&v30);
    v29 = v30;
  }

  else
  {
  }
}

uint64_t sub_1C4C4D088(uint64_t a1, uint64_t a2)
{
  sub_1C442B870(a1, v11);
  sub_1C4461BB8(0, &qword_1EC0C5028, 0x1E6978B00);
  if (swift_dynamicCast())
  {
  }

  else
  {
    swift_beginAccess();
    if ((*(a2 + 16) & 1) == 0)
    {
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v4 = sub_1C4F00978();
      sub_1C442B738(v4, qword_1EDDFECB8);
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CE8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1C43F8000, v5, v6, "PHPersonUserFeedbackProperties.autonamingUserFeedbacks element type was not a PHUserFeedback", v7, 2u);
        MEMORY[0x1C6942830](v7, -1, -1);
      }

      swift_beginAccess();
      *(a2 + 16) = 1;
    }
  }

  sub_1C442B870(a1, v11);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_1C4C4D23C(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if ([*a1 type] != 3 || (v4 = sub_1C4D3C5B4(v3), !v5))
  {
LABEL_12:
    *a2 = 0;
    *(a2 + 8) = 0;
    v9 = -1;
    goto LABEL_13;
  }

  v6 = v4;
  v7 = v5;
  v8 = [v3 feature];
  if (v8 == 2)
  {
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    return;
  }

  if (v8 != 1)
  {

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C43F8000, v11, v12, "PhotosAutonamingViewGenerator: Unknown feedback case for autonaming. Will not process this feedback.", v13, 2u);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    goto LABEL_12;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  v9 = 1;
LABEL_13:
  *(a2 + 16) = v9;
}

void sub_1C4C4D3A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1C4C4D5D4;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C4AAF5EC;
  v8[3] = &unk_1F4404FE0;
  v7 = _Block_copy(v8);

  [a3 enumerateObjectsUsingBlock_];
  _Block_release(v7);
}

void sub_1C4C4D488(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void **))
{
  v8 = objc_autoreleasePoolPush();
  sub_1C4C4CDB4(a1, a2, a3, a4);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1C4C4D5DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C4C4D564();
  }

  return result;
}

uint64_t sub_1C4C4D5F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4C4D66C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  if (sub_1C4D0E2C0())
  {
    sub_1C463E224();
    sub_1C4D0E478();
  }

  else if (*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_featurizer))
  {
    v34 = a1;
    sub_1C442E860(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_loiEventTracker, v31);
    sub_1C4418280(v31, v32);
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v13);
    sub_1C43FBCC4();
    v16 = (v15 - v14);
    (*(v17 + 16))(v15 - v14);
    v18 = *v16;
    v19 = swift_retain_n();
    sub_1C4C4DF30(v19, v18, 1);
    sub_1C440962C(v31);
    sub_1C4409678((v1 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_histogramKeyProvider), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_histogramKeyProvider + 24));
    (*(v8 + 104))(v12, *MEMORY[0x1E69A9418], v6);
    v20 = sub_1C45EA9C0(v12);
    if (v3)
    {
      (*(v8 + 8))(v12, v6);
    }

    else
    {
      v26 = v20;
      (*(v8 + 8))(v12, v6);
      sub_1C4C491A8(v26);

      v27 = v4[3];
      v28 = v4[4];
      v29 = v4[5];
      v30 = v4[6];
      v31[0] = v4[2];
      v31[1] = v27;
      v31[2] = v28;
      v32 = v29;
      v33 = v30;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C47D32C8();

      sub_1C4D0E5C0();
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v21 = sub_1C4F00978();
    sub_1C442B738(v21, qword_1EDE2DDE0);

    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CF8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1C441D828(*(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_config), *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_config + 8), v31);
      _os_log_impl(&dword_1C43F8000, v22, v23, "%s: Featurizer is nil. Ignoring AllSources and returning", v24, 0xCu);
      sub_1C440962C(v25);
      MEMORY[0x1C6942830](v25, -1, -1);
      MEMORY[0x1C6942830](v24, -1, -1);
    }

    sub_1C4D0E51C();
  }
}

uint64_t sub_1C4C4DAD8()
{

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_config);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_histogramKeyProvider));
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29PhotosPersonEntityTaggingView_loiEventTracker));
  return v0;
}

uint64_t sub_1C4C4DB5C()
{
  sub_1C4C4DAD8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PhotosPersonEntityTaggingView(uint64_t a1)
{
  result = qword_1EDDDF668;
  if (!qword_1EDDDF668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4C4DC08(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4C4DCB0(uint64_t a1)
{
  sub_1C4C4D66C(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C4C4DD58(void *a1)
{
  v5[3] = *a1;
  v5[4] = &off_1F43E2390;
  v5[0] = a1;

  v1 = objc_autoreleasePoolPush();
  sub_1C4724B80(v5, &v4);
  objc_autoreleasePoolPop(v1);
  v2 = v4;
  sub_1C440962C(v5);
  return v2;
}

uint64_t sub_1C4C4DDEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v15[3] = type metadata accessor for BehaviorDatabaseEventTracker();
  v15[4] = &off_1F43E2390;
  v15[0] = a2;
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore23EntityTaggingFeaturizer____lazy_storage___calendar;
  v9 = sub_1C4EF9F88();
  sub_1C440BAA8(a4 + v8, 1, 1, v9);
  *(a4 + 16) = a1;
  *(a4 + 24) = a3 & 1;
  sub_1C442E860(v15, a4 + 40);
  v10 = *sub_1C4409678((a4 + 40), *(a4 + 64));

  sub_1C4C4DD58(v10);
  sub_1C456902C(&qword_1EC0C5030, &qword_1C4F5EF28);
  v11 = swift_allocObject();
  v11[1] = xmmword_1C4F0CE60;
  sub_1C465C50C();
  v12 = v17[0];
  v11[2] = v16;
  v11[3] = v12;
  *(v11 + 57) = *(v17 + 9);
  sub_1C465C50C();

  v13 = v18[0];
  v11[5] = v17[2];
  v11[6] = v13;
  *(v11 + 105) = *(v18 + 9);

  sub_1C440962C(v15);
  *(a4 + 32) = v11;
  return a4;
}

uint64_t sub_1C4C4DF30(uint64_t a1, uint64_t a2, char a3)
{
  v15 = type metadata accessor for BehaviorDatabaseEventTracker();
  v16 = &off_1F43E2390;
  v14[0] = a2;
  type metadata accessor for EntityTaggingFeaturizer(0);
  v6 = swift_allocObject();
  sub_1C4418280(v14, v15);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = sub_1C4C4DDEC(a1, *v10, a3 & 1, v6);
  sub_1C440962C(v14);
  return v12;
}

uint64_t sub_1C4C4E04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v5)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s34PHPersonIdentifierMapViewGeneratorCMa();
      a4 = swift_allocObject();
      *(a4 + 16) = a5;
      memcpy((a4 + 24), __src, 0x48uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v11 = a1;
      *(v11 + 8) = a2;
      *(v11 + 16) = xmmword_1C4F5B670;
      *(v11 + 32) = 0xD000000000000025;
      *(v11 + 40) = 0x80000001C4FB83A0;
      *(v11 + 48) = v13;
      *(v11 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C4E1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C4E04C(a1, a2, a3, *v3, v3[1]);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C4E24C()
{
  v164 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
  MEMORY[0x1EEE9AC00](v164);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v3);
  v160 = v137 - v4;
  v5 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v157 = v137 - v6;
  sub_1C43FBE44();
  v7 = sub_1C4EFDE68();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FD2D8();
  v156 = v8;
  v9 = sub_1C43FBE44();
  v174 = type metadata accessor for GraphTriple(v9);
  sub_1C43FCDF8();
  v140 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v173 = v12;
  sub_1C43FBE44();
  v142 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v139 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v141 = v15;
  v16 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v172 = v137 - v17;
  sub_1C43FBE44();
  v18 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v20 = v19;
  v169 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  v167 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v166 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v137 - v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v137 - v32;
  v168 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v171 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2D8();
  v170 = v36;
  sub_1C43FBE44();
  v165 = sub_1C4EFF0C8();
  v175 = sub_1C4F00F28();
  v143 = v0;
  v159 = *(v0 + 16);
  v37 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v38 = *(sub_1C4EFEEF8() - 8);
  v39 = *(v38 + 72);
  v40 = *(v38 + 80);
  v41 = swift_allocObject();
  v158 = xmmword_1C4F0D130;
  *(v41 + 16) = xmmword_1C4F0D130;
  sub_1C4EFE308();
  sub_1C4D504A4();
  v155 = v42;
  sub_1C448DE08();
  v154 = v43;
  v150 = v39;
  v149 = v40;
  v152 = v37;
  v44 = swift_allocObject();
  sub_1C442C690(v44);
  v151 = (v40 + 32) & ~v40;
  sub_1C4EFE658();
  sub_1C4D504A4();
  v46 = v45;
  v47 = *MEMORY[0x1E69A95C0];
  v48 = v20 + 104;
  v49 = *(v20 + 104);
  v50 = v33;
  sub_1C4412864();
  v49();
  v51 = v30;
  sub_1C4412864();
  v49();
  v52 = v27;
  sub_1C4412864();
  v49();
  v53 = v166;
  sub_1C4412864();
  v49();
  v54 = v167;
  v148 = v47;
  sub_1C4412864();
  v147 = v48;
  v146 = v49;
  v49();
  v135 = v54;
  v136 = v46;
  v55 = v53;
  sub_1C4EFDCD8();

  v57 = v169 + 8;
  v56 = *(v169 + 8);
  v56(v54, v18);
  v58 = v57;
  v56(v55, v18);
  v155 = v52;
  v56(v52, v18);
  v154 = v51;
  v56(v51, v18);
  v153 = v50;
  v145 = v56;
  v56(v50, v18);
  v59 = sub_1C4EFF8F8();
  v60 = v172;
  sub_1C440BAA8(v172, 1, 1, v59);
  v61 = v170;
  v62 = sub_1C498DB80();
  v63 = v168;
  v64 = v62;
  sub_1C4423A0C(v60, &qword_1EC0BAA00, &unk_1C4F17400);
  v65 = *(v171 + 8);
  v171 += 8;
  v144 = v65;
  v65(v61, v63);
  v66 = *(v64 + 16);
  if (v66)
  {
    v169 = v58;
    v138 = v18;
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D120();
    v67 = __dst[0];
    v68 = (*(v140 + 80) + 32) & ~*(v140 + 80);
    v137[1] = v64;
    v69 = v64 + v68;
    v172 = *(v140 + 72);
    v70 = v139;
    v71 = (v139 + 16);
    v72 = v142;
    v73 = v141;
    do
    {
      v74 = v173;
      sub_1C4709E74(v69, v173);
      (*v71)(v73, v74 + *(v174 + 24), v72);
      sub_1C4709ED8(v74);
      __dst[0] = v67;
      v76 = *(v67 + 16);
      v75 = *(v67 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1C4413A88(v75);
        sub_1C459D120();
        v67 = __dst[0];
      }

      *(v67 + 16) = v76 + 1;
      (*(v70 + 32))(v67 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v76, v73, v72);
      v69 += v172;
      --v66;
    }

    while (v66);

    v18 = v138;
  }

  else
  {
  }

  sub_1C459740C();
  v174 = v77;
  v78 = swift_allocObject();
  sub_1C442C690(v78);
  sub_1C4EFE558();
  sub_1C4D504A4();
  v173 = v79;
  v80 = v153;
  sub_1C440109C();
  v81 = v146;
  v146();
  v82 = v154;
  sub_1C440109C();
  v81();
  v83 = v155;
  sub_1C440109C();
  v81();
  v84 = v166;
  sub_1C440109C();
  v81();
  v85 = v167;
  sub_1C440109C();
  v81();
  v134[1] = v85;
  v134[0] = v174;
  sub_1C4EFDE58();

  v86 = v145;
  v145(v85, v18);
  v86(v84, v18);
  v86(v83, v18);
  v86(v82, v18);
  v86(v80, v18);
  v87 = v170;
  sub_1C4EFDEA8();
  v88 = sub_1C4EFD678();
  v89 = v157;
  v90 = sub_1C440BAA8(v157, 1, 1, v88);
  MEMORY[0x1EEE9AC00](v90);
  v135 = &v175;
  sub_1C48687D0(v87, v89, sub_1C4C4F2A0, v134);
  sub_1C4423A0C(v89, &unk_1EC0C07E0, &unk_1C4F168F0);
  v144(v87, v168);
  v91 = v175;
  v92 = *(v175 + 16);
  if (v92)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459DB58(0, v92, 0);
    v93 = __dst[0];
    result = sub_1C4703354();
    v97 = 0;
    v98 = v91 + 64;
    v159 = v165 - 8;
    v154 = v95;
    v153 = v91 + 72;
    v158 = xmmword_1C4F0CE60;
    v155 = v92;
    v156 = v91 + 64;
    v157 = v91;
    v99 = v164;
    v100 = v161;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v91 + 32))
    {
      if ((*(v98 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v91 + 36) != v95)
      {
        goto LABEL_30;
      }

      v169 = 1 << result;
      v170 = result >> 6;
      v167 = v97;
      v168 = v95;
      LODWORD(v166) = v96;
      v101 = *(v99 + 48);
      v102 = *(v91 + 56);
      v103 = (*(v91 + 48) + 16 * result);
      v105 = *v103;
      v104 = v103[1];
      v106 = v165;
      v107 = *(v165 - 8);
      v108 = v107;
      v109 = v102 + *(v107 + 72) * result;
      v110 = *(v107 + 16);
      v174 = v93;
      v111 = v160;
      v173 = result;
      v110(&v160[v101], v109, v165);
      *v100 = v105;
      v100[1] = v104;
      v112 = *(v99 + 48);
      v172 = *(v108 + 32);
      (v172)(v100 + v112, &v111[v101], v106);
      sub_1C456902C(&qword_1EC0C51B0, &unk_1C4F0DC80);
      v113 = swift_allocObject();
      sub_1C442C690(v113);
      v114 = v162;
      sub_1C4C4321C(v100, v162);
      v115 = *v114;
      v116 = v114[1];
      v171 = *(v99 + 48);
      v113[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v113[4].n128_u64[0] = MEMORY[0x1E69A0138];
      v113[2].n128_u64[0] = v115;
      v113[2].n128_u64[1] = v116;
      v117 = v163;
      sub_1C4C4321C(v100, v163);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v118 = *(v99 + 48);
      v113[6].n128_u64[0] = v106;
      v113[6].n128_u64[1] = sub_1C4C4328C();
      v119 = sub_1C4422F90(&v113[4].n128_i64[1]);
      v120 = v117 + v118;
      v93 = v174;
      (v172)(v119, v120, v106);
      sub_1C4423A0C(v100, &qword_1EC0BDCE0, &unk_1C4F31990);
      (*(v108 + 8))(v114 + v171, v106);
      __dst[0] = v93;
      v122 = *(v93 + 16);
      v121 = *(v93 + 24);
      if (v122 >= v121 >> 1)
      {
        v131 = sub_1C4413A88(v121);
        sub_1C459DB58(v131, v132, v133);
        v93 = __dst[0];
      }

      *(v93 + 16) = v122 + 1;
      *(v93 + 8 * v122 + 32) = v113;
      v91 = v157;
      v123 = 1 << *(v157 + 32);
      result = v173;
      if (v173 >= v123)
      {
        goto LABEL_31;
      }

      v98 = v156;
      v124 = *(v156 + 8 * v170);
      if ((v124 & v169) == 0)
      {
        goto LABEL_32;
      }

      if (*(v157 + 36) != v168)
      {
        goto LABEL_33;
      }

      v125 = v124 & (-2 << (v173 & 0x3F));
      if (v125)
      {
        v123 = __clz(__rbit64(v125)) | v173 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v126 = v170 << 6;
        v127 = v170 + 1;
        v128 = (v153 + 8 * v170);
        while (v127 < (v123 + 63) >> 6)
        {
          v130 = *v128++;
          v129 = v130;
          v126 += 64;
          ++v127;
          if (v130)
          {
            sub_1C440951C(v173, v168, v166 & 1);
            v123 = __clz(__rbit64(v129)) + v126;
            goto LABEL_26;
          }
        }

        sub_1C440951C(v173, v168, v166 & 1);
      }

LABEL_26:
      v96 = 0;
      v97 = (v167 + 1);
      result = v123;
      v95 = v154;
      if ((v167 + 1) == v155)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_27:
    memcpy(__dst, (v143 + 24), sizeof(__dst));
    sub_1C4BC7458();
  }

  return result;
}

uint64_t sub_1C4C4F174(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  type metadata accessor for GraphTriple(0);
  v5 = sub_1C4EFF0C8();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  sub_1C440BAA8(v4, 0, 1, v5);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C80730();
  return 1;
}

uint64_t sub_1C4C4F2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  ViewGeneration.ViewClients.storage(for:fullRebuild:)(a1, a2, a3);

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
    if (swift_dynamicCast())
    {
      _s30PreprocessObjectsViewGeneratorCMa();
      a4 = swift_allocObject();
      memcpy((a4 + 16), __src, 0x60uLL);
    }

    else
    {
      a4 = 0x80000001C4FB83A0;
      sub_1C450B034();
      swift_allocError();
      *v9 = a1;
      *(v9 + 8) = a2;
      *(v9 + 16) = xmmword_1C4F5B670;
      *(v9 + 32) = 0xD000000000000025;
      *(v9 + 40) = 0x80000001C4FB83A0;
      *(v9 + 48) = v11;
      *(v9 + 64) = 0;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }
  }

  return a4;
}

uint64_t sub_1C4C4F3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4C4F2B8(a1, a2, a3, *v3);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t sub_1C4C4F4A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v10 = sub_1C4EFF1C8();
  sub_1C43FCDF8();
  v50 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v15 = sub_1C4F00978();
  v51 = sub_1C442B738(v15, qword_1EDDFECB8);
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  if (os_log_type_enabled(v16, v17))
  {
    sub_1C43FD1A8();
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C43F8000, v16, v17, "PhotosAutonamingViewGenerator: Performing full rebuild.", v18, 2u);
    v2 = v1;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  if (sub_1C4428DA0(a1))
  {
    sub_1C4431590(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1C6940F90](0, a1);
    }

    else
    {
      v19 = *(a1 + 32);
    }

    v54 = v19;
    sub_1C4EF9E48();
    sub_1C43FCF64();
    sub_1C440BAA8(v20, v21, v22, v23);
    sub_1C4EFF1A8();
    if (v2)
    {

      sub_1C43FCF64();
      sub_1C440BAA8(v24, v25, v26, v10);
      sub_1C4C50A00(v9);
      v27 = sub_1C4F00968();
      sub_1C4F01CD8();
      v28 = sub_1C4407F80();
      if (os_log_type_enabled(v28, v29))
      {
        sub_1C43FD1A8();
        v30 = swift_slowAlloc();
        *v30 = 0;
        sub_1C441253C();
        _os_log_impl(v31, v32, v33, v34, v30, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C446D0DC();
      swift_allocError();
      sub_1C43FE0B0(v35, 0xD000000000000027);
    }

    else
    {
      sub_1C440BAA8(v9, 0, 1, v10);
      v46 = v50;
      v47 = (*(v50 + 32))(v14, v9, v10);
      v52 = 0;
      v53 = 0;
      MEMORY[0x1EEE9AC00](v47);
      *(&v49 - 6) = v48;
      *(&v49 - 5) = &v53;
      *(&v49 - 4) = a1;
      *(&v49 - 3) = &v54;
      *(&v49 - 2) = &v52;
      *(&v49 - 1) = v14;

      sub_1C446C37C(sub_1C4C50A68, (&v49 - 8));

      (*(v46 + 8))(v14, v10);
    }
  }

  else
  {
    v36 = sub_1C4F00968();
    sub_1C4F01CD8();
    v37 = sub_1C4407F80();
    if (os_log_type_enabled(v37, v38))
    {
      sub_1C43FD1A8();
      v39 = swift_slowAlloc();
      *v39 = 0;
      sub_1C441253C();
      _os_log_impl(v40, v41, v42, v43, v39, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C446D0DC();
    swift_allocError();
    return sub_1C43FE0B0(v44, 0xD00000000000001FLL);
  }
}

unint64_t sub_1C4C4FA0C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_1C4428DA0(a2);
  v24 = a2 & 0xC000000000000001;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v12 = a2 + 32;
  while (1)
  {
    result = *a1;
    if (*a1 >= v10)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if (v24)
    {
      v14 = MEMORY[0x1C6940F90]();
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *(v11 + 16))
    {
      goto LABEL_17;
    }

    v14 = *(v12 + 8 * result);

LABEL_7:
    *a3 = v14;

    v15 = *a4;
    v16 = *(a5 + 72);
    v25[0] = *(a5 + 56);
    v25[1] = v16;
    v26 = *(a5 + 88);
    v17 = sub_1C4CDFB34(v15, 0, v25, 0, 1);
    v19 = v18;
    v20 = v17;

    *a4 = v19;
    if (*(v20 + 16))
    {
      MEMORY[0x1EEE9AC00](v21);
      sub_1C45D9F98();
      if (!v23)
      {
        v10 = v22;
      }

      return v10;
    }

    if (__OFADD__(*a1, 1))
    {
      goto LABEL_18;
    }

    ++*a1;
    *a4 = 0;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1C4C4FBE4(uint64_t a1)
{
  sub_1C4C4F4A0(*(a1 + 64));
  if (!v1)
  {
    sub_1C4D0E5C0();
  }
}

uint64_t sub_1C4C4FC28(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = sub_1C4EFF1C8();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CF8();
    if (os_log_type_enabled(v14, v15))
    {
      sub_1C43FD1A8();
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Preprocess Objects: handleUpdate called.", v16, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C4EF9E48();
    sub_1C43FCF64();
    sub_1C440BAA8(v17, v18, v19, v20);
    sub_1C4EFF1A8();
    sub_1C440BAA8(v7, 0, 1, v8);
    v35 = v10;
    v21 = *(v10 + 4);
    v36 = v8;
    v21(v41, v7, v8);
    v7 = *(a1 + 64);
    v39 = sub_1C4428DA0(v7);
    if (!v39)
    {
      return (*(v35 + 1))(v41, v36);
    }

    v22 = 0;
    v23 = *(v40 + 72);
    v43[0] = *(v40 + 56);
    v43[1] = v23;
    v44 = *(v40 + 88);
    v38 = v7 & 0xC000000000000001;
    v37 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v38)
      {
        MEMORY[0x1C6940F90](v22, v7);
      }

      else
      {
        if (v22 >= *(v37 + 16))
        {
          goto LABEL_18;
        }
      }

      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v24 = sub_1C4F00968();
      v25 = sub_1C4F01CF8();
      if (os_log_type_enabled(v24, v25))
      {
        sub_1C43FD1A8();
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1C43F8000, v24, v25, "PreprocessObjectsView: KG or control source updated. Performing full rebuild and removing rejected associations.", v26, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v27 = sub_1C4CDFB34(0, 1, v43, 0, 1);
      v29 = v28;
      MEMORY[0x1EEE9AC00](v27);
      *(&v35 - 2) = v41;
      sub_1C45D9F98();
      v31 = v30;

      v32 = memcpy(__dst, (v40 + 16), sizeof(__dst));
      v10 = &v35;
      MEMORY[0x1EEE9AC00](v32);
      *(&v35 - 4) = __dst;
      *(&v35 - 3) = v31;
      *(&v35 - 2) = 0;
      *(&v35 - 1) = 0;
      sub_1C446C37C(sub_1C4C4D56C, (&v35 - 6));

      v33 = sub_1C4F00968();
      a1 = sub_1C4F01CF8();
      if (os_log_type_enabled(v33, a1))
      {
        sub_1C43FD1A8();
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1C43F8000, v33, a1, "PreprocessObjectsView: Finished inserting triples.", v10, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C4CDF41C(v29);

      ++v22;
      if (v8 == v39)
      {
        return (*(v35 + 1))(v41, v36);
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_1C44064A8();
    swift_once();
  }
}

uint64_t sub_1C4C50240@<X0>(__int128 *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a1[1];
  v28 = *a1;
  v29 = v6;
  v7 = *(a1 + 5);
  v30 = *(a1 + 4);
  v25 = *(a1 + 6);
  v26 = v7;
  v31 = *(a1 + 7);
  v23 = *(a1 + 9);
  v24 = *(a1 + 8);
  v8 = *(a1 + 10);
  v9 = *(a1 + 14);
  v10 = *(a1 + 16);
  v21 = *(a1 + 15);
  v22 = *(a1 + 13);
  v11 = *(a1 + 17);
  v19 = *(a1 + 145);
  v20 = *(a1 + 144);
  sub_1C4EFF168();
  v12 = sub_1C4EFF1B8();
  if (v3)
  {

    *a2 = v3;
  }

  else
  {
    v15 = v12;
    v16 = v13;

    v17 = v29;
    *a3 = v28;
    *(a3 + 16) = v17;
    *(a3 + 32) = v30;
    *(a3 + 40) = v26;
    v18 = v31;
    *(a3 + 48) = v25;
    *(a3 + 56) = v18;
    *(a3 + 64) = v24;
    *(a3 + 72) = v23;
    *(a3 + 80) = v8;
    *(a3 + 88) = v15;
    *(a3 + 96) = v16;
    *(a3 + 104) = v22;
    *(a3 + 112) = v9;
    *(a3 + 120) = v21;
    *(a3 + 128) = v10;
    *(a3 + 136) = v11;
    *(a3 + 144) = v20;
    *(a3 + 145) = v19;
    sub_1C487BE08(&v28, v27);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4C503A4(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = sub_1C4428DA0(v1);
  v3 = result;
  v4 = 0;
  while (2)
  {
    if (v3 != v4)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1C6940F90](v4, v1);
        v5 = result;
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      if (!__OFADD__(v4, 1))
      {
        switch(*(v5 + 33))
        {
          case 2:

            goto LABEL_18;
          default:
            v6 = sub_1C4F02938();

            ++v4;
            if (v6)
            {
              return 1;
            }

            continue;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    break;
  }

  sub_1C4441C50(*(*(a1 + 56) + 33));
  if (v8 == 0x7165527261656C63 && v7 == 0xED00006465726975)
  {
LABEL_18:

    return 1;
  }

  else
  {
    v10 = sub_1C4F02938();

    return v10 & 1;
  }
}

uint64_t sub_1C4C505C0()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v2[2] = __dst;
  return sub_1C446C37C(sub_1C4B7BCC4, v2);
}

uint64_t sub_1C4C50620(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = sub_1C4428DA0(v1);
  v3 = result;
  v4 = 0;
  while (2)
  {
    if (v3 != v4)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1C6940F90](v4, v1);
        v5 = result;
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      if (!__OFADD__(v4, 1))
      {
        switch(*(v5 + 33))
        {
          case 1:

            goto LABEL_18;
          default:
            v6 = sub_1C4F02938();

            ++v4;
            if (v6)
            {
              return 1;
            }

            continue;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    break;
  }

  sub_1C4441C50(*(*(a1 + 56) + 33));
  if (v8 == 0xD000000000000013 && 0x80000001C4F87C40 == v7)
  {
LABEL_18:

    return 1;
  }

  else
  {
    v10 = sub_1C4F02938();

    return v10 & 1;
  }
}

void sub_1C4C5082C(uint64_t a1)
{
  if (sub_1C4C503A4(a1))
  {
    sub_1C4C505C0();
    sub_1C4D0E478();
  }

  else if (sub_1C4C50620(a1))
  {
    sub_1C4C4F4A0(*(a1 + 64));
    if (!v1)
    {
      sub_1C4D0E5C0();
    }
  }

  else
  {
    sub_1C4C4FC28(a1);
  }
}