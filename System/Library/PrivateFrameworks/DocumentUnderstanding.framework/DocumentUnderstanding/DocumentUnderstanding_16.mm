uint64_t sub_232C5DDB4(void **a1, id *a2, id *a3, void **a4, void (*a5)(void **, int64_t, void **))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    a5(a1, a2 - a1, a4);
    v12 = &v5[v9];
    while (1)
    {
      if (v5 >= v12 || v7 >= a3)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v14 = *v5;
      v15 = *v7;
      v16 = v14;
      [v15 confidence];
      v18 = v17;
      [v16 confidence];
      v20 = v19;

      if (v18 >= v20)
      {
        break;
      }

      v21 = v7;
      v22 = v8 == v7++;
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
    }

    v21 = v5;
    v22 = v8 == v5++;
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v21;
    goto LABEL_13;
  }

  a5(a2, a3 - a2, a4);
  v12 = &v5[v10];
  v39 = v5;
LABEL_15:
  v23 = v7 - 1;
  --v6;
  while (v12 > v5 && v7 > v8)
  {
    v25 = v8;
    v26 = v23;
    v27 = *v23;
    v28 = *(v12 - 1);
    v29 = v27;
    [v28 confidence];
    v31 = v30;
    [v29 confidence];
    v33 = v32;

    v34 = v6 + 1;
    if (v31 < v33)
    {
      v22 = v34 == v7;
      v35 = v26;
      v7 = v26;
      v8 = v25;
      v5 = v39;
      if (!v22)
      {
        *v6 = *v35;
        v7 = v35;
      }

      goto LABEL_15;
    }

    if (v12 != v34)
    {
      *v6 = *(v12 - 1);
    }

    --v6;
    --v12;
    v23 = v26;
    v8 = v25;
    v5 = v39;
  }

LABEL_28:
  v36 = v12 - v5;
  if (v7 != v5 || v7 >= &v5[v36])
  {
    memmove(v7, v5, 8 * v36);
  }

  return 1;
}

void sub_232C5DFF4(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_232BA4DEC(0, a3, a4);
  v7 = sub_232CE9FD0();

  [a2 *a5];
}

unint64_t sub_232C5E078(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_232CEA610();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_232C5E120(uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return swift_beginAccess();
}

id sub_232C5E144()
{

  return [v1 (v0 + 2447)];
}

uint64_t sub_232C5E174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;

  return sub_232CE9A30();
}

uint64_t sub_232C5E194(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_232C60C20(result, 1, sub_232B35ECC);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_232C5E268(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_232C60C20(result, 1, sub_232B35ABC);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_232C5E38C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v10 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_232C60C98(result, 1, v9);
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v15 < 1)
  {
LABEL_6:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void SQLiteDatabase.init(dbPath:migrationsList:isFrozen:)()
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_232CE9A30();
  sub_232B48F0C();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  sub_232C071E8();
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB] = 0;
  v14 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_temporaryURL;
  v15 = sub_232CE8C00();
  sub_232B12504(&v0[v14], 1, 1, v15);
  v16 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_dbPath];
  *v16 = v9;
  v16[1] = v7;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_migrationsList] = v5;
  v0[OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_isFrozen] = v3;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for SQLiteDatabase(0);
  v17 = objc_msgSendSuper2(&v22, sel_init);
  sub_232C5E840();
  if (v18)
  {
  }

  else
  {
    sub_232CE9A20();
    v19 = sub_232CE9A00();
    v20 = sub_232CEA1C0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_232B02000, v19, v20, "SQLiteDatabase: Unable to initialize database", v21, 2u);
      sub_232BA6A84();
    }

    (*(v12 + 8))(v1, v10);
  }

  sub_232B20A00();
}

uint64_t type metadata accessor for SQLiteDatabase(uint64_t a1)
{
  result = qword_27DDC8378;
  if (!qword_27DDC8378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SQLiteDatabase.__deallocating_deinit()
{
  sub_232C5F750();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SQLiteDatabase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232C5E840()
{
  sub_232B35110();
  v176 = *MEMORY[0x277D85DE8];
  v170 = sub_232CE9A30();
  sub_232B48F0C();
  v172 = v2;
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  v168 = (v4 - v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v144 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v144 - v10;
  v12 = sub_232CE8D40();
  sub_232B48F0C();
  v169 = v13;
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v17 = v16 - v15;
  v18 = sub_232CE8B40();
  sub_232B48F0C();
  v171 = v19;
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  sub_232C071E8();
  v21 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v21 - 8);
  sub_232B3516C();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v144 - v26;
  v28 = sub_232CE8C00();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v29);
  sub_232B3516C();
  MEMORY[0x28223BE20](v30 - v31);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  MEMORY[0x28223BE20](v35);
  MEMORY[0x28223BE20](v36);
  if (*(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB))
  {
    goto LABEL_31;
  }

  v156 = v12;
  v161 = v11;
  v162 = v1;
  v165 = v27;
  v155 = v8;
  v164 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB;
  v160 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_isFrozen);
  v167 = v0;
  if (v160 != 1)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_7;
  }

  v153 = v40;
  v154 = v39;
  v147 = v38;
  v148 = v37;
  v157 = v44;
  v163 = v43;
  v158 = v42;
  v45 = &v144 - v41;
  v46 = NSTemporaryDirectory();
  sub_232CE9D50();
  v166 = v28;

  sub_232B12504(v165, 1, 1, v166);
  v47 = v171;
  v48 = v171[13];
  v49 = v162;
  v150 = *MEMORY[0x277CC91D8];
  v152 = v18;
  v151 = v171 + 13;
  v149 = v48;
  v48(v162);
  v159 = v45;
  v50 = v166;
  sub_232CE8BE0();
  v51 = v24;
  sub_232CE8BD0();
  if (sub_232B12480(v24, 1, v50) == 1)
  {
    (*(v157 + 8))(v159, v50);
    sub_232B359E4(v24);
    goto LABEL_31;
  }

  v72 = v157;
  v73 = *(v157 + 32);
  v146 = v157 + 32;
  v145 = v73;
  v73(v163, v51, v50);
  v74 = v17;
  sub_232CE8D30();
  v75 = sub_232CE8D20();
  v77 = v76;
  (*(v169 + 8))(v74, v156);
  v174 = v75;
  v175 = v77;

  MEMORY[0x238391C30](95, 0xE100000000000000);

  v79 = v174;
  v78 = v175;
  v80 = sub_232CE8B80();
  v82 = v81;
  v174 = v79;
  v175 = v78;
  v83 = v166;

  MEMORY[0x238391C30](v80, v82);

  v84 = v152;
  v149(v49, v150, v152);
  sub_232B48080();
  v85 = v158;
  sub_232CE8BF0();
  (v47[1])(v49, v84);

  v86 = v161;
  sub_232CE9A20();
  v87 = v72;
  v88 = *(v72 + 16);
  v89 = v153;
  v88(v153, v163, v83);
  v90 = v154;
  v169 = v88;
  v162 = v72 + 16;
  v88(v154, v85, v83);
  v91 = sub_232CE9A00();
  v92 = sub_232CEA1A0();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v174 = v171;
    *v93 = 136315394;
    v94 = v89;
    sub_232CE8BC0();
    sub_232BA69E4();
    v95 = v89;
    v96 = *(v87 + 8);
    v96(v95, v83);
    sub_232C61960();
    sub_232C619BC();
    *(v93 + 4) = v94;
    *(v93 + 12) = 2080;
    sub_232CE8BC0();
    sub_232BA69E4();
    v96(v90, v83);
    sub_232C61960();
    sub_232C619BC();
    *(v93 + 14) = v90;
    _os_log_impl(&dword_232B02000, v91, v92, "(SQLiteDatabase) Copying file from %s to %s", v93, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232C3BAA0();

    v97 = *(v172 + 8);
    v98 = v161;
  }

  else
  {

    v99 = *(v87 + 8);
    v99(v90, v83);
    v100 = v89;
    v96 = v99;
    v99(v100, v83);
    v97 = *(v172 + 8);
    v98 = v86;
  }

  v101 = v170;
  v171 = v97;
  (v97)(v98, v170);
  v102 = [objc_opt_self() defaultManager];
  v103 = v163;
  v104 = sub_232CE8B90();
  v105 = v158;
  v106 = sub_232CE8B90();
  v174 = 0;
  v107 = [v102 copyItemAtURL:v104 toURL:v106 error:&v174];

  if (v107)
  {
    v168 = v96;
    v108 = v174;
    v109 = v155;
    sub_232CE9A20();
    v110 = v147;
    v111 = v166;
    v112 = v169;
    (v169)(v147, v103, v166);
    v113 = v148;
    v112(v148, v105, v111);
    v114 = sub_232CE9A00();
    v115 = sub_232CEA1A0();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v174 = v169;
      *v116 = 136315394;
      v117 = v110;
      sub_232CE8BC0();
      sub_232BA69E4();
      v118 = v110;
      v119 = v168;
      v168(v118, v111);
      sub_232C61960();
      sub_232C619BC();
      *(v116 + 4) = v117;
      *(v116 + 12) = 2080;
      v120 = v113;
      sub_232CE8BC0();
      sub_232BA69E4();
      v121 = v113;
      v122 = v119;
      v119(v121, v111);
      sub_232C61960();
      sub_232C619BC();
      *(v116 + 14) = v120;
      _os_log_impl(&dword_232B02000, v114, v115, "(SQLiteDatabase) Copied file from %s to %s", v116, 0x16u);
      swift_arrayDestroy();
      sub_232BA6A84();
      sub_232C3BAA0();

      sub_232C619D4();
      v123 = v155;
    }

    else
    {

      v138 = v113;
      v122 = v168;
      v168(v138, v111);
      v122(v110, v111);
      sub_232C619D4();
      v123 = v109;
    }

    (v171)(v123, v170);
    v139 = v158;
    sub_232CE8BC0();
    v122(v163, v111);
    v122(v159, v111);
    v140 = v165;
    v145(v165, v139, v111);
    sub_232B12504(v140, 0, 1, v111);
    v141 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_temporaryURL;
    v142 = v167;
    swift_beginAccess();

    sub_232C617C8(v140, v142 + v141);
    swift_endAccess();
LABEL_7:
    v52 = objc_opt_self();
    v53 = sub_232C61A00();
    v54 = [v52 corruptionMarkerPathForPath_];

    v55 = v54;
    v56 = v54;
    if (!v54)
    {
      sub_232CE9D50();
      v56 = sub_232CE9D20();

      sub_232CE9D50();
      v55 = sub_232CE9D20();
    }

    v57 = v54;
    v58 = sub_232C61A00();

    v59 = [v52 isInMemoryPath_];

    if (v59)
    {
    }

    else
    {
      v60 = objc_opt_self();
      v61 = [v60 defaultManager];
      v62 = [v61 fileExistsAtPath_];

      if (v62)
      {
        v63 = sub_232C61A00();
        [v52 truncateDatabaseAtPath_];

        v64 = [v60 defaultManager];
        v174 = 0;
        v65 = [v64 removeItemAtPath:v55 error:&v174];

        if (!v65)
        {
          v136 = v174;

          v137 = sub_232CE8B30();

          swift_willThrow();
          sub_232C5F750();

          goto LABEL_31;
        }

        v66 = v174;
        goto LABEL_15;
      }
    }

LABEL_15:
    v67 = v167;
    v68 = sub_232C61A00();

    v69 = [v52 initializeDatabase:v68 withContentProtection:0 newDatabaseCreated:0 errorHandler:0];

    v70 = v164;
    v71 = *(v67 + v164);
    *(v67 + v164) = v69;

    if (*(v67 + v70))
    {
      sub_232C5FC20();
      if ((v160 & 1) == 0)
      {
        sub_232C6014C();
      }
    }

    else
    {
      sub_232C5F750();
    }

    goto LABEL_31;
  }

  v124 = v174;
  v125 = sub_232CE8B30();

  swift_willThrow();
  v126 = v168;
  sub_232CE9A20();
  v127 = v125;
  v128 = sub_232CE9A00();
  v129 = sub_232CEA1C0();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v174 = v131;
    *v130 = 136315138;
    v173 = v125;
    v132 = v125;
    sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
    v133 = sub_232CE9DC0();
    v135 = sub_232BAD2D4(v133, v134, &v174);

    *(v130 + 4) = v135;
    _os_log_impl(&dword_232B02000, v128, v129, "(SQLiteDatabase) Could not copy original database to writable DB location with error: %s", v130, 0xCu);
    sub_232B2040C(v131);
    sub_232BA6A84();
    sub_232C3BAA0();
  }

  sub_232C619D4();
  (v171)(v126, v101);
  v143 = v166;
  v96(v158, v166);
  v96(v163, v143);
  v96(v159, v143);
LABEL_31:
  sub_232B20A00();
}

void sub_232C5F750()
{
  sub_232B35110();
  v48[4] = *MEMORY[0x277D85DE8];
  v2 = sub_232CE9A30();
  sub_232B48F0C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v8 = v7 - v6;
  v9 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_232C071E8();
  v10 = sub_232CE8C00();
  sub_232B48F0C();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_232B3516C();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v20 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_temporaryURL;
  swift_beginAccess();
  sub_232B35974(v0 + v20, v1);
  if (sub_232B12480(v1, 1, v10) == 1)
  {
    sub_232B359E4(v1);
  }

  else
  {
    v45 = v4;
    v46 = v2;
    (*(v12 + 32))(v19, v1, v10);
    v21 = objc_opt_self();
    v22 = [v21 defaultManager];
    sub_232CE8BC0();
    v23 = sub_232CE9D20();

    v24 = [v22 fileExistsAtPath_];

    if (v24)
    {
      v25 = [v21 defaultManager];
      v26 = sub_232CE8B90();
      v48[0] = 0;
      v27 = [v25 removeItemAtURL:v26 error:v48];

      if (v27)
      {
        v28 = *(v12 + 8);
        v29 = v48[0];
        v28(v19, v10);
      }

      else
      {
        v30 = v48[0];
        v31 = sub_232CE8B30();

        swift_willThrow();
        sub_232CE9A20();
        (*(v12 + 16))(v16, v19, v10);
        v32 = v31;
        v33 = sub_232CE9A00();
        v34 = sub_232CEA1C0();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v48[0] = v44;
          *v35 = 136315394;
          v43 = v34;
          sub_232CE8BC0();
          sub_232BA69E4();
          v42 = v33;
          v36 = *(v12 + 8);
          v36(v16, v10);
          sub_232C61960();
          sub_232C619BC();
          *(v35 + 4) = v16;
          *(v35 + 12) = 2080;
          v47 = v31;
          v37 = v31;
          sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
          v38 = sub_232CE9DC0();
          v40 = sub_232BAD2D4(v38, v39, v48);

          *(v35 + 14) = v40;
          v41 = v42;
          _os_log_impl(&dword_232B02000, v42, v43, "(SQLiteDatabase) Unable to remove file at %s.  Error: %s", v35, 0x16u);
          swift_arrayDestroy();
          sub_232BA6A84();
          sub_232BA6A84();
        }

        else
        {

          v36 = *(v12 + 8);
          v36(v16, v10);
        }

        (*(v45 + 8))(v8, v46);
        v36(v19, v10);
      }
    }

    else
    {
      (*(v12 + 8))(v19, v10);
    }
  }

  sub_232B20A00();
}

sqlite3 *sub_232C5FC20()
{
  sub_232C60064(0xD000000000000019, 0x8000000232D0B3F0);
  v1 = [*(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB) handle];

  return DU_UDF_prenorm_cosine_distance_create_function(v1);
}

uint64_t sub_232C5FC7C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB;
  v2 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB);
  if (v2)
  {
    v3 = v2;
    v4 = sub_232CE9FD0();
    [v3 prepAndRunNonDataQueries:v4 onError:0];

    v5 = *(v0 + v1);
    v16 = 0;
    if (v5)
    {
      v6 = v5;
      v7 = sub_232CE9D20();
      v8 = swift_allocObject();
      *(v8 + 16) = &v16;
      v9 = sub_232C6198C(&unk_284813E30);
      v10 = sub_232C613E0;
      *(v9 + 16) = sub_232C613E0;
      *(v9 + 24) = v8;
      aBlock[4] = sub_232C6185C;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      sub_232C618C0();
      aBlock[2] = v11;
      aBlock[3] = &unk_284813E48;
      v12 = _Block_copy(aBlock);

      sub_232C619E0(v6, sel_prepAndRunQuery_onPrep_onRow_onError_);
      _Block_release(v12);

      v13 = v16;
    }

    else
    {
      v13 = 0;
      v10 = 0;
      v8 = 0;
    }
  }

  else
  {
    v13 = 0;
    v10 = 0;
    v8 = 0;
    v16 = 0;
  }

  sub_232B0D210(v10, v8);
  return v13;
}

uint64_t sub_232C5FE30(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void sub_232C5FE7C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB);
  if (v2)
  {
    v4 = v2;
    v5 = sub_232CE9D20();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = sub_232C6198C(&unk_284813DB8);
    *(v7 + 16) = sub_232C613D8;
    *(v7 + 24) = v6;
    v14 = sub_232C61860;
    v15 = v7;
    v10 = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    sub_232C6194C();
    v12 = v8;
    v13 = &unk_284813DD0;
    v9 = _Block_copy(&v10);

    [v4 prepAndRunQuery:v5 onPrep:v9 onRow:0 onError:{0, v10, v11}];
    _Block_release(v9);
  }
}

void sub_232C5FFB8(void *a1, uint64_t a2)
{
  v3 = sub_232CEA100();
  [a1 bindParam:1 toInt64AsNSNumber:v3];
}

void sub_232C60018(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_232C60064(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB);
  if (v3)
  {
    sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_232CF6460;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    v7 = v3;

    v8 = sub_232CE9FD0();

    [v7 prepAndRunNonDataQueries:v8 onError:0];
  }
}

void sub_232C6014C()
{
  v1 = sub_232C5FC7C();
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_migrationsList;
  swift_beginAccess();
  v3 = 16 * v1;
  for (i = v1; ; ++i)
  {
    v5 = *(v0 + v2);
    if (i >= *(v5 + 16))
    {
      sub_232C5FE7C(i);
      return;
    }

    if (v1 < 0)
    {
      break;
    }

    v6 = v5 + v3;
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);

    sub_232C60064(v7, v8);

    v3 += 16;
  }

  __break(1u);
}

void sub_232C60204(uint64_t a1)
{
  swift_beginAccess();

  sub_232C5E194(v1);
  swift_endAccess();
  sub_232C6014C();
}

void sub_232C60274()
{
  sub_232B35110();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_232CE9A30();
  sub_232B48F0C();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_232B20704();
  v15 = v14 - v13;
  sub_232C5E840();
  if (v16)
  {
    v17 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB);
    if (v17)
    {
      v18 = v17;
      v19 = sub_232CE9D20();
      if (v8)
      {
        v20 = sub_232C6198C(&unk_284813CC8);
        *(v20 + 16) = v8;
        *(v20 + 24) = v6;
        sub_232C61928(v20);
        v30 = 1107296256;
        sub_232C6194C();
        v31 = v21;
        v32 = &unk_284813CE0;
        v22 = _Block_copy(&v29);

        if (v4)
        {
LABEL_5:
          v23 = sub_232C6198C(&unk_284813C78);
          *(v23 + 16) = v4;
          *(v23 + 24) = v2;
          sub_232C61928(v23);
          v30 = 1107296256;
          sub_232C618C0();
          v31 = v24;
          v32 = &unk_284813C90;
          v25 = _Block_copy(&v29);

LABEL_11:
          [v18 prepAndRunQuery:v19 onPrep:v22 onRow:v25 onError:0];
          _Block_release(v25);
          _Block_release(v22);

          goto LABEL_12;
        }
      }

      else
      {
        v22 = 0;
        if (v4)
        {
          goto LABEL_5;
        }
      }

      v25 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    sub_232CE9A20();
    v26 = sub_232CE9A00();
    v27 = sub_232CEA1C0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_232B02000, v26, v27, "SQLiteDatabase: Unable to initialize database", v28, 2u);
      sub_232C3BAA0();
    }

    (*(v11 + 8))(v15, v9);
  }

LABEL_12:
  sub_232B20A00();
}

uint64_t sub_232C604D0(void *a1)
{
  result = sqlite3_column_count([a1 stmt]);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = result + 1;
    v5 = MEMORY[0x277D84F90];
    do
    {
      if (sqlite3_column_text([a1 stmt], v3))
      {
        v6 = sub_232CE9EB0();
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232B35ECC();
          v5 = v11;
        }

        v9 = *(v5 + 16);
        if (v9 >= *(v5 + 24) >> 1)
        {
          sub_232B35ECC();
          v5 = v12;
        }

        *(v5 + 16) = v9 + 1;
        v10 = v5 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v8;
      }

      ++v3;
    }

    while (v4 != v3);
    sub_232B124A8(&qword_27DDC72D0, &unk_232CF8990);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_232CF6460;
    sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
    sub_232B48E4C(&qword_2814DF978, &qword_27DDC6908, &unk_232CF64D0, MEMORY[0x277D83958]);
    v14 = sub_232CE9CD0();
    v16 = v15;

    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_232CEA800();

    return *MEMORY[0x277D42690];
  }

  return result;
}

void sub_232C606C8(uint64_t a1)
{
  v3 = sub_232CE9A30();
  sub_232B48F0C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  sub_232C071E8();
  sub_232C5E840();
  if (v7)
  {
    v8 = *&v1[OBJC_IVAR____TtC21DocumentUnderstanding14SQLiteDatabase_internalSQLiteDB];
    if (v8)
    {
      v9 = v8;
      v10 = sub_232CE9D20();
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      v12 = sub_232C6198C(&unk_284813D40);
      *(v12 + 16) = sub_232C609CC;
      *(v12 + 24) = v11;
      aBlock[4] = sub_232C6185C;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      sub_232C618C0();
      aBlock[2] = v13;
      aBlock[3] = &unk_284813D58;
      v14 = _Block_copy(aBlock);
      v15 = v1;

      sub_232C619E0(v9, sel_prepAndRunQuery_onPrep_onRow_onError_);
      _Block_release(v14);
    }
  }

  else
  {
    sub_232CE9A20();
    v16 = sub_232CE9A00();
    v17 = sub_232CEA1C0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_232B02000, v16, v17, "SQLiteDatabase: Unable to initialize database", v18, 2u);
      sub_232BA6A84();
    }

    (*(v5 + 8))(v2, v3);
  }
}

id SQLiteDatabase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_232C6098C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_232C609F0(uint64_t a1)
{
  sub_232C60BC8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_232C60BC8(uint64_t a1)
{
  if (!qword_2814E25E8)
  {
    sub_232CE8C00();
    v1 = sub_232CEA350();
    if (!v2)
    {
      atomic_store(v1, &qword_2814E25E8);
    }
  }
}

uint64_t sub_232C60C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_232C60C98(uint64_t a1, char a2, __n128 a3)
{
  v5 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v3 = v5;
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_232CEA610();
LABEL_9:
  result = sub_232CEA540();
  *v3 = result;
  return result;
}

uint64_t sub_232C60F40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232CEA610();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232B26B10();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for DUUserInterfaceUnderstandingResult();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_232B48E4C(&qword_27DDC83A0, &qword_27DDC7060, &qword_232CF8020, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          sub_232B124A8(&qword_27DDC7060, &qword_232CF8020);
          v9 = sub_232B4D0A4(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232C610C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232CEA610();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232B26B10();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for DUStructuredEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_232B48E4C(&qword_27DDC8398, &qword_27DDC8390, &unk_232CFEB28, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          sub_232B124A8(&qword_27DDC8390, &unk_232CFEB28);
          v9 = sub_232B4CFEC(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232C61250(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232CEA610();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232B26B10();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for DUCategoryResult();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_232B48E4C(&qword_27DDC8388, &qword_27DDC7048, &qword_232CF7FC0, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          sub_232B124A8(&qword_27DDC7048, &qword_232CF7FC0);
          v9 = sub_232B4CFEC(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232C613E0(void *a1)
{
  v2 = *(v1 + 16);
  *v2 = [a1 getIntegerForColumn_];
  return *MEMORY[0x277D42698];
}

uint64_t sub_232C61630(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232CEA610();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232B26B10();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_232BA4DEC(0, &qword_27DDC6928, 0x277CC34B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_232B48E4C(&qword_27DDC83C8, &qword_27DDC80D0, &unk_232CFEB50, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          sub_232B124A8(&qword_27DDC80D0, &unk_232CFEB50);
          v9 = sub_232B4CFEC(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232C617C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C61864(unint64_t *a1)
{
  v4 = MEMORY[0x277D83988];

  return sub_232B48E4C(a1, v1, v2, v4);
}

uint64_t sub_232C61908()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_232C61928(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t sub_232C61960()
{

  return sub_232BAD2D4(v0, v1, (v2 - 120));
}

uint64_t sub_232C6198C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_232C619A4()
{

  return sub_232B124A8(v0, v1);
}

uint64_t sub_232C619BC()
{
}

id sub_232C619E0(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_232C61A00()
{

  return sub_232CE9D20();
}

id SQLiteRetrievalDatabase.__allocating_init(dbURL:isFrozen:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return SQLiteRetrievalDatabase.init(dbURL:isFrozen:)(a1, v3);
}

id SQLiteRetrievalDatabase.init(dbURL:isFrozen:)(uint64_t a1, char a2)
{
  sub_232CE8B60();
  v5 = objc_allocWithZone(type metadata accessor for SQLiteDatabase(0));
  SQLiteDatabase.init(dbPath:migrationsList:isFrozen:)();
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_database] = v6;
  v2[OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_isFrozen] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SQLiteRetrievalDatabase();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = sub_232CE8C00();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_232C61B8C(uint64_t result)
{
  if ((*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_isFrozen) & 1) == 0)
  {
    v2 = result;
    v3 = *(result + 16);
    if (v3)
    {
      type metadata accessor for DUVectorUtils();
      v4 = v2 + 32;
      do
      {
        v5 = *(v4 + 16);
        v11 = *v4;
        v12 = v5;
        v13 = *(v4 + 32);
        v6 = v5;
        sub_232C61CC4(&v11, v10);
        v7 = sub_232C18940(v6);
        v8 = swift_allocObject();
        v9 = v12;
        *(v8 + 16) = v11;
        *(v8 + 32) = v9;
        *(v8 + 48) = v13;
        *(v8 + 56) = v7;
        sub_232C61CC4(&v11, v10);
        sub_232C60274();

        result = sub_232C61D2C(&v11);
        v4 += 40;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void sub_232C61D80()
{
  if ((*(v0 + OBJC_IVAR____TtC21DocumentUnderstanding23SQLiteRetrievalDatabase_isFrozen) & 1) == 0)
  {
    sub_232C60274();
  }
}

uint64_t sub_232C61DE4(uint64_t a1, uint64_t a2, float a3)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 16) = MEMORY[0x277D84F90];
  v8 = (v6 + 16);
  type metadata accessor for DUVectorUtils();
  v9 = sub_232C18940(a1);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a3;
  *(v10 + 32) = a2;

  sub_232C60274();

  swift_beginAccess();
  v11 = *v8;

  v12 = *(v11 + 16);
  if (v12)
  {
    sub_232B64C88(0, v12, 0);
    v13 = v7;
    v14 = (v11 + 64);
    do
    {
      v16 = *(v14 - 4);
      v15 = *(v14 - 3);
      v17 = *(v14 - 2);
      v18 = *(v14 - 1);
      v19 = *v14;

      sub_232C05E58(v17, v18);

      sub_232C05E58(v17, v18);
      sub_232BB6018(v17, v18);

      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_232B64C88((v20 > 1), v21 + 1, 1);
      }

      *(v7 + 16) = v21 + 1;
      v22 = v7 + 40 * v21;
      *(v22 + 32) = v16;
      *(v22 + 40) = v15;
      *(v22 + 48) = v17;
      *(v22 + 56) = v18;
      *(v22 + 64) = v19;
      v14 += 10;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

id SQLiteRetrievalDatabase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SQLiteRetrievalDatabase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SQLiteRetrievalDatabase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232C621FC(uint64_t a1@<X8>)
{
  *a1 = xmmword_232CF76F0;
  *(a1 + 16) = xmmword_232CF76F0;
  *(a1 + 32) = 0;
  v1 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232CE9330();
  sub_232C693A4(v1[8]);
  sub_232C69210(v1[9]);
  sub_232C69210(v1[10]);
  sub_232C69210(v1[11]);
  sub_232C69210(v1[12]);
  sub_232C69210(v1[13]);
}

uint64_t sub_232C62274@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  v3 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0) + 20);
  if (qword_27DDC6428 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27DDC83E0;
}

void sub_232C622F0(uint64_t a2@<X8>)
{
  sub_232CE9330();
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v4 = (a2 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0;
  sub_232C693A4(*(v3 + 24));
}

double sub_232C62330@<D0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232CE9330();
  result = 0.0;
  *&a1[v2[6]] = xmmword_232CFBB70;
  v4 = &a1[v2[7]];
  *v4 = 0;
  v4[1] = 0;
  *&a1[v2[8]] = xmmword_232CFBB70;
  v5 = &a1[v2[9]];
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_232C6239C()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD51A0);
  sub_232B135C4(v0, qword_27DDD51A0);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_232CF8A10;
  v4 = v48 + v3 + v1[14];
  *(v48 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v48 + v3 + v2 + v1[14];
  *(v48 + v3 + v2) = 9;
  *v8 = "type";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v48 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 20;
  *v10 = "labels";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v48 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "phoneNumber";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v48 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "email";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v48 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "url";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v48 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "addressComponents";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v48 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CalendarEvent";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v48 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "homeAutomationID";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v7();
  v23 = (v48 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 21;
  *v24 = "displayInfo";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v48 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 8;
  *v26 = "responseDebugInfo";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v7();
  v27 = (v48 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 3;
  *v28 = "phoneNumberLabel";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v7();
  v29 = (v48 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "frameInWindow";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v48 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "absoluteOriginOnScreen";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v7();
  v33 = (v48 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 13;
  *v34 = "isOnScreen";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v7();
  v35 = (v48 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 14;
  *v36 = "frameInWindow_debugX";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v7();
  v37 = (v48 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 15;
  *v38 = "frameInWindow_debugY";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v7();
  v39 = (v48 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 16;
  *v40 = "frameInWindow_debugWidth";
  *(v40 + 1) = 24;
  v40[16] = 2;
  v7();
  v41 = (v48 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 17;
  *v42 = "frameInWindow_debugHeight";
  *(v42 + 1) = 25;
  v42[16] = 2;
  v7();
  v43 = (v48 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 18;
  *v44 = "absoluteOriginOnScreen_debugX";
  *(v44 + 1) = 29;
  v44[16] = 2;
  v7();
  v45 = (v48 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 19;
  *v46 = "absoluteOriginOnScreen_debugY";
  *(v46 + 1) = 29;
  v46[16] = 2;
  v7();
  return sub_232CE9600();
}

uint64_t sub_232C629F8()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
  swift_allocObject();
  result = sub_232C62A38();
  qword_27DDC83E0 = result;
  return result;
}

uint64_t sub_232C62A38()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = sub_232CE9C60();
  v1 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232B12504(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232B12504(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
  v7 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B12504(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow) = xmmword_232CF76F0;
  *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen) = xmmword_232CF76F0;
  *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen) = 0;
  v9 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugX;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugY;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugWidth;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugHeight;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugX;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
  *v14 = 0;
  *(v14 + 8) = 1;
  return v0;
}

uint64_t sub_232C62BD0(void *a1)
{
  v3 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  sub_232B2D120(v3);
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  sub_232B2D108();
  v73 = v5;
  v6 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  sub_232B2D120(v6);
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  sub_232B2D108();
  v70 = v8;
  v9 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  sub_232B2D120(v9);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  sub_232B2D108();
  v68 = v11;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 104) = sub_232CE9C60();
  v12 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232C69320(v12, v13, v14, v12);
  v15 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  v67 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  *v15 = 0;
  v15[1] = 0;
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232C69320(v16, v17, v18, v16);
  v19 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232C69320(v19, v20, v21, v19);
  v22 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  v69 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  *v22 = 0;
  v22[1] = 0;
  v71 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow);
  *(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow) = xmmword_232CF76F0;
  v72 = (v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen);
  *(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen) = xmmword_232CF76F0;
  v74 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen;
  *(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen) = 0;
  sub_232C69314(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugX);
  sub_232C69314(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugY);
  sub_232C69314(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugWidth);
  sub_232C69314(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugHeight);
  sub_232C69314(v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugX);
  v23 = v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
  v75 = v1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_232BA63D0();
  swift_beginAccess();
  v24 = a1[2];
  v25 = a1[3];
  sub_232B13F5C(v1 + 16, v93);
  *(v1 + 16) = v24;
  *(v1 + 24) = v25;

  sub_232BA63D0();
  swift_beginAccess();
  v27 = a1[4];
  v26 = a1[5];
  sub_232B13F5C(v1 + 32, v92);
  *(v1 + 32) = v27;
  *(v1 + 40) = v26;

  sub_232BA63D0();
  swift_beginAccess();
  v28 = a1[6];
  sub_232B13F5C(v1 + 48, v91);
  *(v1 + 48) = v28;

  sub_232BA63D0();
  swift_beginAccess();
  v30 = a1[7];
  v29 = a1[8];
  sub_232B13F5C(v1 + 56, &v90);
  *(v1 + 56) = v30;
  *(v1 + 64) = v29;

  sub_232BA63D0();
  swift_beginAccess();
  v32 = a1[9];
  v31 = a1[10];
  sub_232B13F5C(v1 + 72, &v89);
  *(v1 + 72) = v32;
  *(v1 + 80) = v31;

  sub_232BA63D0();
  swift_beginAccess();
  v34 = a1[11];
  v33 = a1[12];
  sub_232B13F5C(v1 + 88, &v88);
  *(v1 + 88) = v34;
  *(v1 + 96) = v33;

  sub_232BA63D0();
  v35 = swift_beginAccess();
  v36 = a1[13];
  sub_232BC1C58(v35, &v87);
  *(v1 + 104) = v36;

  v37 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232B5D6C0(a1 + v37, v68, &qword_27DDC7AC0, &qword_232CFBB80);
  sub_232C692FC();
  swift_beginAccess();
  sub_232C69270();
  swift_endAccess();
  v38 = (a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  sub_232BA63D0();
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];
  sub_232B13F5C(v67, &v86);
  *v67 = v40;
  v67[1] = v39;

  v41 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232B5D6C0(a1 + v41, v70, &qword_27DDC70F8, &qword_232CF8260);
  sub_232C692FC();
  swift_beginAccess();
  sub_232C69270();
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232B5D6C0(a1 + v42, v73, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232C692FC();
  swift_beginAccess();
  sub_232C69270();
  swift_endAccess();
  v43 = (a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  sub_232BA63D0();
  swift_beginAccess();
  v45 = *v43;
  v44 = v43[1];
  sub_232B13F5C(v69, &v85);
  *v69 = v45;
  v69[1] = v44;

  v46 = (a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow);
  sub_232BA63D0();
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];
  sub_232B13F5C(v71, &v84);
  v49 = *v71;
  v50 = v71[1];
  *v71 = v48;
  v71[1] = v47;
  v51 = sub_232B35090();
  sub_232B41B94(v51, v52);
  sub_232B41BEC(v49, v50);
  v53 = (a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen);
  sub_232BA63D0();
  swift_beginAccess();
  v55 = *v53;
  v54 = v53[1];
  sub_232B13F5C(v72, &v83);
  v56 = *v72;
  v57 = v72[1];
  *v72 = v55;
  v72[1] = v54;
  v58 = sub_232B35090();
  sub_232B41B94(v58, v59);
  sub_232B41BEC(v56, v57);
  v60 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen;
  sub_232BA63D0();
  swift_beginAccess();
  LOBYTE(v60) = *(a1 + v60);
  sub_232B13F5C(v1 + v74, &v82);
  *(v1 + v74) = v60;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();
  sub_232BC1C58(v61, &v81);
  sub_232C69308();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();
  sub_232BC1C58(v62, &v80);
  sub_232C69308();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();
  sub_232BC1C58(v63, &v79);
  sub_232C69308();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();
  sub_232BC1C58(v64, &v78);
  sub_232C69308();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();
  sub_232BC1C58(v65, &v77);
  sub_232C69308();
  LOBYTE(v60) = a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692D4();

  sub_232B13F5C(v75, &v76);
  *v75 = v74;
  *(v75 + 8) = v60;
  return v1;
}

uint64_t sub_232C633DC()
{

  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent, &qword_27DDC7AC0, &qword_232CFBB80);

  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo, &qword_27DDC70F8, &qword_232CF8260);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo, &qword_27DDC67C8, &unk_232CF5E70);

  sub_232B41BEC(*(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow), *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow + 8));
  sub_232B41BEC(*(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen), *(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen + 8));
  return v0;
}

uint64_t sub_232C634DC()
{
  v0 = sub_232C633DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_232C63558(uint64_t a1)
{
  sub_232C63720(319, &qword_27DDC8468, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
  if (v1 <= 0x3F)
  {
    sub_232C63720(319, &qword_27DDC8470, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);
    if (v2 <= 0x3F)
    {
      sub_232C63720(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_232C63720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232C63804(uint64_t a1)
{
  v1 = sub_232CE9340();
  if (v2 <= 0x3F)
  {
    sub_232B21E3C(319, &qword_27DDC8498, MEMORY[0x277CC9318]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_232B21E3C(319, &qword_2814DFA10, MEMORY[0x277D837D0]);
      if (v6 > 0x3F)
      {
        return v5;
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

uint64_t sub_232C63938(uint64_t a1)
{
  result = sub_232CE9340();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_232C639E4(uint64_t a1)
{
  sub_232CE9340();
  if (v1 <= 0x3F)
  {
    sub_232B21E3C(319, &qword_27DDC6840, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_232C63AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
    swift_allocObject();
    v10 = sub_232C62BD0(v10);
    *(v4 + v8) = v10;
  }

  return sub_232C63B4C(v10, a1, a2, a3);
}

uint64_t sub_232C63B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232C63E94(a2, a1, a3, a4);
        continue;
      case 2:
        sub_232C63F18(a2, a1, a3, a4);
        continue;
      case 3:
        v16 = MEMORY[0x277D217D0];
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel;
        goto LABEL_24;
      case 4:
        sub_232C271EC(a2, a1, a3, a4);
        continue;
      case 5:
        sub_232C63F9C(a2, a1, a3, a4);
        continue;
      case 6:
        sub_232C64020(a2, a1, a3, a4);
        continue;
      case 7:
        sub_232C640C4(a2, a1, a3, a4);
        continue;
      case 8:
        sub_232C641A0(a2, a1, a3, a4);
        continue;
      case 9:
        sub_232C6427C(a2, a1, a3, a4);
        continue;
      case 10:
        v16 = MEMORY[0x277D217D0];
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID;
        goto LABEL_24;
      case 11:
        v16 = MEMORY[0x277D21768];
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow;
        goto LABEL_24;
      case 12:
        v16 = MEMORY[0x277D21768];
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen;
LABEL_24:
        sub_232C64300(v17, v18, v19, v20, v21, v16);
        continue;
      case 13:
        sub_232C64394(a2, a1, a3, a4);
        continue;
      case 14:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugX;
        goto LABEL_22;
      case 15:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugY;
        goto LABEL_22;
      case 16:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugWidth;
        goto LABEL_22;
      case 17:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugHeight;
        goto LABEL_22;
      case 18:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugX;
        goto LABEL_22;
      case 19:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
LABEL_22:
        sub_232C64420(v11, v12, v13, v14, v15);
        break;
      case 20:
        sub_232C644A0(a2, a1, a3, a4);
        break;
      case 21:
        sub_232C6456C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C63E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C63F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C63F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C64020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9310();
  sub_232CE9390();
  return swift_endAccess();
}

uint64_t sub_232C640C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232C68CE0(&qword_27DDC7B50, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent, &unk_232CFF104);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C641A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232C68CE0(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C6427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE9490();
  return swift_endAccess();
}

uint64_t sub_232C64300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  sub_232C692FC();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_232C64394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_232CE93C0();
  return swift_endAccess();
}

uint64_t sub_232C64420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_232C692FC();
  swift_beginAccess();
  sub_232B2F148();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232C644A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  sub_232C68CE0(&qword_27DDC7B48, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel, &unk_232CFF17C);
  sub_232CE94B0();
  return swift_endAccess();
}

uint64_t sub_232C6456C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232C68CE0(&qword_27DDC7110, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo, &unk_232CFF26C);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C64648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0);
  sub_232B2F148();
  result = sub_232C646AC(v5, v6, v7, a3);
  if (!v3)
  {
    sub_232B35090();
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C646AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_232C64B78(a1, a2, a3, a4);
  if (!v4)
  {
    sub_232C64C14(a1, a2, a3, a4);
    sub_232C65254();
    sub_232C64CB0(a1, a2, a3, a4);
    sub_232C64D4C(a1, a2, a3, a4);
    swift_beginAccess();
    if (*(*(a1 + 104) + 16))
    {
      sub_232CE9310();

      sub_232CE9520();
    }

    sub_232C64DE8(a1, a2, a3, a4);
    sub_232C64FD0(a1, a2, a3, a4);
    sub_232C651B8(a1, a2, a3, a4);
    sub_232C65254();
    v10 = a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindow;
    swift_beginAccess();
    if (!sub_232B3F4B0(*v10, *(v10 + 8)))
    {
      v12 = *v10;
      v11 = *(v10 + 8);
      sub_232B41B94(v12, v11);
      sub_232CE9580();
      sub_232B41BEC(v12, v11);
    }

    v13 = a1 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen;
    swift_beginAccess();
    if (!sub_232B3F4B0(*v13, *(v13 + 8)))
    {
      v15 = *v13;
      v14 = *(v13 + 8);
      sub_232B41B94(v15, v14);
      sub_232CE9580();
      sub_232B41BEC(v15, v14);
    }

    v16 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen;
    swift_beginAccess();
    if (*(a1 + v16) == 1)
    {
      sub_232CE9560();
    }

    sub_232C652E4();
    sub_232C652E4();
    sub_232C652E4();
    sub_232C652E4();
    sub_232C652E4();
    sub_232C652E4();
    swift_beginAccess();
    if (*(*(a1 + 48) + 16))
    {
      type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
      sub_232C68CE0(&qword_27DDC7B48, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel, &unk_232CFF17C);

      sub_232CE95D0();
    }

    return sub_232C65358(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_232C64B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C64C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 64))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C64CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 80))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C64D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 96))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C64DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
  swift_beginAccess();
  sub_232B5D6C0(a1 + v9, v7, &qword_27DDC7AC0, &qword_232CFBB80);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC7AC0, &qword_232CFBB80);
  }

  sub_232C69118();
  sub_232C68CE0(&qword_27DDC7B50, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent, &unk_232CFF104);
  sub_232CE95E0();
  return sub_232C6916C();
}

uint64_t sub_232C64FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
  swift_beginAccess();
  sub_232B5D6C0(a1 + v9, v7, &qword_27DDC67C8, &unk_232CF5E70);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232C69118();
  sub_232C68CE0(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  sub_232CE95E0();
  return sub_232C6916C();
}

uint64_t sub_232C651B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {

    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C65254()
{
  sub_232C692B8();
  v2 = v0 + v1;
  sub_232BA63D0();
  result = swift_beginAccess();
  if (*(v2 + 8))
  {

    sub_232C692E0();
    sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C652E4()
{
  sub_232C692B8();
  v2 = v0 + v1;
  sub_232BA63D0();
  result = swift_beginAccess();
  if ((*(v2 + 8) & 1) == 0)
  {
    sub_232B2F148();
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C65358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  MEMORY[0x28223BE20](v8);
  v9 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
  swift_beginAccess();
  sub_232B5D6C0(a1 + v9, v7, &qword_27DDC70F8, &qword_232CF8260);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC70F8, &qword_232CF8260);
  }

  sub_232C69118();
  sub_232C68CE0(&qword_27DDC7110, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo, &unk_232CFF26C);
  sub_232CE95E0();
  return sub_232C6916C();
}

uint64_t sub_232C65540()
{
  v2 = sub_232C69220();
  v3 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {

    v6 = sub_232C655FC(v4, v5);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C691C8();
  v9 = sub_232C68CE0(v7, v8, MEMORY[0x277D216D0]);
  return sub_232C6933C(v9) & 1;
}

uint64_t sub_232C655FC(void *a1, void *a2)
{
  v165 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  sub_232BFF638();
  v161 = v6;
  v164 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  sub_232B13F24();
  sub_232B2D114();
  MEMORY[0x28223BE20](v7);
  v9 = &v157 - v8;
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = sub_232B2D120(v10);
  MEMORY[0x28223BE20](v11);
  sub_232B3516C();
  v163 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v167 = &v157 - v15;
  v169 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v16);
  sub_232BFF638();
  v162 = v17;
  v168 = sub_232B124A8(&qword_27DDC8540, &qword_232CFF2E8);
  sub_232B13F24();
  sub_232B2D114();
  MEMORY[0x28223BE20](v18);
  sub_232B2D108();
  v170 = v19;
  v20 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v21 = sub_232B2D120(v20);
  MEMORY[0x28223BE20](v21);
  sub_232B3516C();
  v166 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v172 = &v157 - v25;
  v26 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v27);
  sub_232BFF638();
  v171 = v28;
  v29 = sub_232B124A8(&qword_27DDC8548, &unk_232CFF2F0);
  sub_232B13F24();
  sub_232B2D114();
  MEMORY[0x28223BE20](v30);
  sub_232B2D108();
  v173 = v31;
  v32 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v33 = sub_232B2D120(v32);
  MEMORY[0x28223BE20](v33);
  sub_232B3516C();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v157 - v38;
  sub_232BA63D0();
  swift_beginAccess();
  v40 = a1[2];
  v41 = a1[3];
  sub_232BA63D0();
  swift_beginAccess();
  v42 = a2[3];
  if (v41)
  {
    if (!v42)
    {
      return 0;
    }

    v43 = v40 == a2[2] && v41 == v42;
    if (!v43)
    {
      sub_232BC1E48();
      if ((sub_232CEA750() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v42)
  {
    return 0;
  }

  sub_232BA63D0();
  swift_beginAccess();
  v44 = a1[4];
  v45 = a1[5];
  sub_232BA63D0();
  swift_beginAccess();
  v46 = a2[5];
  if (!v45)
  {
    if (!v46)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v46)
  {
    return 0;
  }

  if (v44 != a2[4] || v45 != v46)
  {
    sub_232BC1E48();
    if ((sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v160 = v9;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232BA63D0();
  swift_beginAccess();

  v48 = sub_232BC1E48();
  sub_232B34B54(v48, v49);
  v50 = a2;
  v52 = v51;

  if ((v52 & 1) == 0)
  {
    goto LABEL_61;
  }

  sub_232BA63D0();
  swift_beginAccess();
  v54 = a1[7];
  v53 = a1[8];
  v159 = a1;
  sub_232BA63D0();
  swift_beginAccess();
  v55 = v50[8];
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_61;
    }

    v56 = v54 == v50[7] && v53 == v55;
    v57 = v159;
    if (!v56)
    {
      sub_232C69230();
      if ((sub_232CEA750() & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
    v57 = v159;
    if (v55)
    {
      goto LABEL_61;
    }
  }

  sub_232BA63D0();
  swift_beginAccess();
  v59 = v57[9];
  v58 = v57[10];
  sub_232BA63D0();
  swift_beginAccess();
  v60 = v50[10];
  if (v58)
  {
    if (!v60)
    {
      goto LABEL_61;
    }

    if (v59 != v50[9] || v58 != v60)
    {
      sub_232C69230();
      if ((sub_232CEA750() & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  else if (v60)
  {
    goto LABEL_61;
  }

  sub_232BA63D0();
  swift_beginAccess();
  v63 = v57[11];
  v62 = v57[12];
  sub_232BA63D0();
  swift_beginAccess();
  v64 = v50[12];
  if (v62)
  {
    if (!v64)
    {
      goto LABEL_61;
    }

    if (v63 != v50[11] || v62 != v64)
    {
      sub_232C69230();
      if ((sub_232CEA750() & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  else if (v64)
  {
    goto LABEL_61;
  }

  sub_232BA63D0();
  swift_beginAccess();
  sub_232BA63D0();
  swift_beginAccess();

  v66 = sub_232BC1E48();
  sub_232B3223C(v66, v67);
  v158 = v50;
  v69 = v68;

  if ((v69 & 1) == 0)
  {
    goto LABEL_61;
  }

  v70 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232B5D6C0(v57 + v70, v39, &qword_27DDC7AC0, &qword_232CFBB80);
  v71 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
  v72 = v158;
  sub_232BA63D0();
  swift_beginAccess();
  v73 = *(v29 + 48);
  v74 = v173;
  sub_232B5D6C0(v39, v173, &qword_27DDC7AC0, &qword_232CFBB80);
  sub_232B5D6C0(v72 + v71, v74 + v73, &qword_27DDC7AC0, &qword_232CFBB80);
  sub_232B351B0(v74, 1, v26);
  if (v43)
  {
    sub_232B13790(v39, &qword_27DDC7AC0, &qword_232CFBB80);
    sub_232B351B0(v74 + v73, 1, v26);
    if (v43)
    {
      sub_232B13790(v74, &qword_27DDC7AC0, &qword_232CFBB80);
      goto LABEL_64;
    }

LABEL_59:
    v76 = &qword_27DDC8548;
    v77 = &unk_232CFF2F0;
    v78 = v74;
LABEL_60:
    sub_232B13790(v78, v76, v77);
    goto LABEL_61;
  }

  sub_232B5D6C0(v74, v36, &qword_27DDC7AC0, &qword_232CFBB80);
  sub_232B351B0(v74 + v73, 1, v26);
  if (v75)
  {
    sub_232B13790(v39, &qword_27DDC7AC0, &qword_232CFBB80);
    sub_232C6916C();
    goto LABEL_59;
  }

  sub_232C69118();
  v80 = sub_232BA5C94();
  v82 = v74;
  v83 = sub_232C6787C(v80, v81);
  sub_232C6916C();
  sub_232B13790(v39, &qword_27DDC7AC0, &qword_232CFBB80);
  sub_232C6916C();
  sub_232B13790(v82, &qword_27DDC7AC0, &qword_232CFBB80);
  if ((v83 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_64:
  v84 = (v57 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  sub_232BA63D0();
  swift_beginAccess();
  v85 = *v84;
  v86 = v84[1];
  v87 = (v72 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
  sub_232BA63D0();
  swift_beginAccess();
  v88 = v87[1];
  if (v86)
  {
    v89 = v172;
    v90 = v160;
    if (!v88)
    {
      goto LABEL_61;
    }

    v91 = v85 == *v87 && v86 == v88;
    if (!v91 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v89 = v172;
    v90 = v160;
    if (v88)
    {
      goto LABEL_61;
    }
  }

  v92 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C69360(v57 + v92, v89);
  v93 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
  sub_232BA63D0();
  swift_beginAccess();
  v94 = *(v168 + 48);
  v95 = v170;
  sub_232C69360(v89, v170);
  sub_232C69360(v72 + v93, v95 + v94);
  v96 = v169;
  sub_232B351B0(v95, 1, v169);
  if (v43)
  {
    sub_232B13790(v89, &qword_27DDC70F8, &qword_232CF8260);
    sub_232B351B0(v95 + v94, 1, v96);
    if (v43)
    {
      sub_232B13790(v95, &qword_27DDC70F8, &qword_232CF8260);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  sub_232B5D6C0(v95, v166, &qword_27DDC70F8, &qword_232CF8260);
  sub_232B351B0(v95 + v94, 1, v96);
  if (v97)
  {
    sub_232B13790(v89, &qword_27DDC70F8, &qword_232CF8260);
    sub_232C6916C();
LABEL_81:
    v76 = &qword_27DDC8540;
    v77 = &qword_232CFF2E8;
    v78 = v95;
    goto LABEL_60;
  }

  sub_232C69118();
  v98 = sub_232BA5C94();
  v100 = sub_232C68730(v98, v99);
  sub_232C6916C();
  sub_232B13790(v89, &qword_27DDC70F8, &qword_232CF8260);
  sub_232C6916C();
  sub_232B13790(v95, &qword_27DDC70F8, &qword_232CF8260);
  if ((v100 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_83:
  v101 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
  sub_232BA63D0();
  swift_beginAccess();
  v102 = v167;
  sub_232C69360(v57 + v101, v167);
  v103 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
  sub_232BA63D0();
  swift_beginAccess();
  v104 = *(v164 + 48);
  sub_232C69360(v102, v90);
  sub_232C69360(v72 + v103, v90 + v104);
  v105 = v165;
  sub_232B351B0(v90, 1, v165);
  if (v43)
  {
    sub_232B13790(v167, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B351B0(v90 + v104, 1, v105);
    if (v43)
    {
      sub_232B13790(v90, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_88;
    }

    goto LABEL_99;
  }

  v112 = v163;
  sub_232B5D6C0(v90, v163, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232B351B0(v90 + v104, 1, v105);
  if (v113)
  {
    sub_232B13790(v167, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232C6916C();
LABEL_99:
    v76 = &qword_27DDC6828;
    v77 = &unk_232CF6030;
    v78 = v90;
    goto LABEL_60;
  }

  v114 = v161;
  sub_232C69118();
  v115 = *(v105 + 20);
  v116 = *(v114 + v115 + 8);
  if (!*(v112 + v115 + 8))
  {
    if (!v116)
    {
      goto LABEL_107;
    }

LABEL_115:
    sub_232B13790(v167, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232C6916C();
    sub_232C6916C();
    sub_232B13790(v160, &qword_27DDC67C8, &unk_232CF5E70);
    goto LABEL_61;
  }

  if (!v116)
  {
    goto LABEL_115;
  }

  sub_232B2DF50(v112 + v115);
  v119 = v43 && v117 == v118;
  if (!v119 && (sub_232CEA750() & 1) == 0)
  {
    goto LABEL_115;
  }

LABEL_107:
  sub_232CE9340();
  sub_232C691C8();
  sub_232C68CE0(v120, v121, MEMORY[0x277D216D0]);
  v122 = sub_232CE9CF0();
  sub_232B13790(v167, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232C6916C();
  sub_232BB6644();
  sub_232C6916C();
  sub_232B13790(v160, &qword_27DDC67C8, &unk_232CF5E70);
  v57 = v159;
  if ((v122 & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_88:
  v106 = (v57 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  sub_232BA63D0();
  swift_beginAccess();
  v107 = *v106;
  v108 = v106[1];
  v109 = (v72 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__phoneNumberLabel);
  sub_232BA63D0();
  swift_beginAccess();
  v110 = v109[1];
  if (v108)
  {
    if (!v110)
    {
      goto LABEL_61;
    }

    v111 = v107 == *v109 && v108 == v110;
    if (!v111 && (sub_232CEA750() & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else if (v110)
  {
    goto LABEL_61;
  }

  sub_232C69264();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232BA63D0();
  swift_beginAccess();
  v123 = sub_232C69230();
  sub_232B41B94(v123, v124);
  v125 = sub_232BA5C94();
  sub_232B41B94(v125, v126);
  v127 = sub_232C69230();
  v128 = MEMORY[0x2383909F0](v127);
  v129 = sub_232BA5C94();
  sub_232B41BEC(v129, v130);
  v131 = sub_232C69230();
  sub_232B41BEC(v131, v132);
  if ((v128 & 1) == 0)
  {
    goto LABEL_61;
  }

  sub_232C69264();
  sub_232BA63D0();
  swift_beginAccess();
  v133 = v72 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreen;
  sub_232BA63D0();
  swift_beginAccess();
  v134 = *(v133 + 8);
  v135 = sub_232C69230();
  sub_232B41B94(v135, v136);
  v137 = sub_232BA5C94();
  sub_232B41B94(v137, v138);
  v139 = sub_232C69230();
  v140 = MEMORY[0x2383909F0](v139);
  v141 = sub_232BA5C94();
  sub_232B41BEC(v141, v142);
  v143 = sub_232C69230();
  sub_232B41BEC(v143, v144);
  if ((v140 & 1) == 0)
  {
    goto LABEL_61;
  }

  v145 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen;
  v146 = v159;
  sub_232BA63D0();
  swift_beginAccess();
  LODWORD(v145) = *(v146 + v145);
  v147 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__isOnScreen;
  sub_232BA63D0();
  swift_beginAccess();
  if (v145 != *(v72 + v147))
  {
    goto LABEL_61;
  }

  sub_232C69264();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();
  v148 = v72 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugX;
  sub_232BA63D0();
  swift_beginAccess();
  if (v134)
  {
    if ((*(v148 + 8) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (*(v148 + 8))
    {
      goto LABEL_61;
    }

    sub_232C692F0();
    if (!v43)
    {
      goto LABEL_61;
    }
  }

  sub_232C69264();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();
  v149 = v72 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugY;
  sub_232BA63D0();
  swift_beginAccess();
  if (v134)
  {
    if ((*(v149 + 8) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (*(v149 + 8))
    {
      goto LABEL_61;
    }

    sub_232C692F0();
    if (!v43)
    {
      goto LABEL_61;
    }
  }

  sub_232C69264();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();
  v150 = v72 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugWidth;
  sub_232BA63D0();
  swift_beginAccess();
  if (v134)
  {
    if ((*(v150 + 8) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (*(v150 + 8))
    {
      goto LABEL_61;
    }

    sub_232C692F0();
    if (!v43)
    {
      goto LABEL_61;
    }
  }

  sub_232C69264();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();
  v151 = v72 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__frameInWindowDebugHeight;
  sub_232BA63D0();
  swift_beginAccess();
  if (v134)
  {
    if ((*(v151 + 8) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (*(v151 + 8))
    {
      goto LABEL_61;
    }

    sub_232C692F0();
    if (!v43)
    {
      goto LABEL_61;
    }
  }

  sub_232C69264();
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();
  v152 = v72 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugX;
  sub_232BA63D0();
  swift_beginAccess();
  if (v134)
  {
    if (*(v152 + 8))
    {
      goto LABEL_146;
    }

LABEL_61:

    return 0;
  }

  if (*(v152 + 8))
  {
    goto LABEL_61;
  }

  sub_232C692F0();
  if (!v43)
  {
    goto LABEL_61;
  }

LABEL_146:
  sub_232BA63D0();
  swift_beginAccess();
  sub_232C692AC();

  v153 = v72 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__absoluteOriginOnScreenDebugY;
  sub_232BA63D0();
  swift_beginAccess();
  v154 = *v153;
  v155 = *(v153 + 8);

  if (v134)
  {
    if (!v155)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v154)
    {
      v156 = v155;
    }

    else
    {
      v156 = 1;
    }

    if (v156)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_232C666F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C68CE0(&qword_27DDC8528, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity, &unk_232CFF0CC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C66794(uint64_t a1)
{
  v2 = sub_232C68CE0(&qword_27DDC7B40, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity, &unk_232CFF1F4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C6685C(uint64_t a1, uint64_t a2)
{
  sub_232C68CE0(&qword_27DDC7B40, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity, &unk_232CFF1F4);

  return sub_232CE9500();
}

uint64_t sub_232C668DC()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD51B8);
  sub_232B135C4(v0, qword_27DDD51B8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "labelName";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidenceScore";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C66AA4()
{
  sub_232B60720();
  while (1)
  {
    sub_232B35090();
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = sub_232B13EE0();
      sub_232C66B6C(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = sub_232B13EE0();
      sub_232C66B08(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_232C66BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B2F148();
  result = sub_232C66C34(v5, v6, v7, a3);
  if (!v3)
  {
    sub_232B2F148();
    sub_232C66CAC(v9, v10, v11, a3);
    sub_232B35090();
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C66C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C66CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C66D24()
{
  v0 = sub_232C69220();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v0);
  sub_232B2DF3C();
  if (v3)
  {
    if (!v1)
    {
      return 0;
    }

    sub_232B2DF50(v2);
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  sub_232C542E4();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v10)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C691C8();
  v13 = sub_232C68CE0(v11, v12, MEMORY[0x277D216D0]);
  return sub_232C6933C(v13) & 1;
}

uint64_t sub_232C66DFC()
{
  sub_232CE9340();
  sub_232B13F24();
  v0 = sub_232B2080C();

  return v1(v0);
}

uint64_t sub_232C66E58()
{
  sub_232B4D640();
  sub_232CE9340();
  sub_232B13F24();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_232C66EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C68CE0(&qword_27DDC8530, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel, &unk_232CFEFDC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C66F84(uint64_t a1)
{
  v2 = sub_232C68CE0(&qword_27DDC7B48, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel, &unk_232CFF17C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C6704C(uint64_t a1, uint64_t a2)
{
  sub_232C68CE0(&qword_27DDC7B48, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel, &unk_232CFF17C);

  return sub_232CE9500();
}

uint64_t sub_232C670CC()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD51D0);
  sub_232B135C4(v0, qword_27DDD51D0);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF7250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "isAllDay";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "startDate";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "startTimezone";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "endDate";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "endTimezone";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C67350()
{
  sub_232B60720();
  while (1)
  {
    sub_232B35090();
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B2F148();
        sub_232CE93C0();
        break;
      case 2:
        v15 = sub_232B13EE0();
        sub_232C67404(v15, v16, v17, v18);
        break;
      case 3:
        v7 = sub_232B13EE0();
        sub_232C67468(v7, v8, v9, v10);
        break;
      case 4:
        v11 = sub_232B13EE0();
        sub_232C674CC(v11, v12, v13, v14);
        break;
      case 5:
        v3 = sub_232B13EE0();
        sub_232C67530(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C67594()
{
  sub_232B606E4();
  if (*v0 != 1 || (result = sub_232C693B8(1, 1), !v1))
  {
    v3 = sub_232B47864();
    result = sub_232C6764C(v3, v4, v5, v6);
    if (!v1)
    {
      v7 = sub_232B47864();
      sub_232C676EC(v7, v8, v9, v10);
      v11 = sub_232B47864();
      sub_232C67764(v11, v12, v13, v14);
      v15 = sub_232B47864();
      sub_232C67804(v15, v16, v17, v18);
      type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
      sub_232B2F148();
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C6764C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v6 = a1 + *(result + 24);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_232B41B94(*v6, *(v6 + 8));
    sub_232CE9580();
    return sub_232BB6018(v8, v7);
  }

  return result;
}

uint64_t sub_232C676EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C67764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v6 = a1 + *(result + 32);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_232B41B94(*v6, *(v6 + 8));
    sub_232CE9580();
    return sub_232BB6018(v8, v7);
  }

  return result;
}

uint64_t sub_232C67804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C6787C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = sub_232C69220();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(v2);
  sub_232C69290();
  if (!v6 & v5)
  {
    sub_232C6938C();
    if (!(!v6 & v5))
    {
      goto LABEL_9;
    }

    v3 = sub_232C691E0();
    sub_232BB6018(v3, v4);
  }

  else
  {
    sub_232C6938C();
    if (!v6 & v5)
    {
      goto LABEL_9;
    }

    v12 = sub_232C691E0();
    v13 = MEMORY[0x2383909F0](v12);
    v14 = sub_232BB6644();
    sub_232BB6018(v14, v15);
    v16 = sub_232B35090();
    sub_232BB6018(v16, v17);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  sub_232B2DF3C();
  if (v20)
  {
    if (!v18)
    {
      return 0;
    }

    sub_232B2DF50(v19);
    v23 = v6 && v21 == v22;
    if (!v23 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  sub_232C69290();
  if (!v6 & v5)
  {
    sub_232C6938C();
    if (!v6 & v5)
    {
      v24 = sub_232C691E0();
      sub_232BB6018(v24, v25);
      goto LABEL_28;
    }

LABEL_9:
    v7 = sub_232C691E0();
    sub_232BB6018(v7, v8);
    v9 = sub_232BB6644();
    sub_232BB6018(v9, v10);
    return 0;
  }

  sub_232C6938C();
  if (!v27 & v26)
  {
    goto LABEL_9;
  }

  v28 = sub_232C691E0();
  v29 = MEMORY[0x2383909F0](v28);
  v30 = sub_232BB6644();
  sub_232BB6018(v30, v31);
  v32 = sub_232B35090();
  sub_232BB6018(v32, v33);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  sub_232B2DF3C();
  if (v36)
  {
    if (v34)
    {
      sub_232B2DF50(v35);
      v39 = v6 && v37 == v38;
      if (v39 || (sub_232CEA750() & 1) != 0)
      {
        goto LABEL_37;
      }
    }

    return 0;
  }

  if (v34)
  {
    return 0;
  }

LABEL_37:
  sub_232CE9340();
  sub_232C691C8();
  v42 = sub_232C68CE0(v40, v41, MEMORY[0x277D216D0]);
  return sub_232B606FC(v42) & 1;
}

uint64_t sub_232C67A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C68CE0(&qword_27DDC8538, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent, &unk_232CFEEEC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C67B10(uint64_t a1)
{
  v2 = sub_232C68CE0(&qword_27DDC7B50, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent, &unk_232CFF104);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C67BD8(uint64_t a1, uint64_t a2)
{
  sub_232C68CE0(&qword_27DDC7B50, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent, &unk_232CFF104);

  return sub_232CE9500();
}

uint64_t sub_232C67C58()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD51E8);
  sub_232B135C4(v0, qword_27DDD51E8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF8A40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "frameInWindow";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "absoluteOriginOnScreen";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isOnScreen";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "frameInWindow_debugX";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "frameInWindow_debugY";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "frameInWindow_debugWidth";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "frameInWindow_debugHeight";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "absoluteOriginOnScreen_debugX";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "absoluteOriginOnScreen_debugY";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C67FDC()
{
  sub_232B60720();
  while (1)
  {
    sub_232B35090();
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        sub_232B2F148();
        sub_232CE9420();
        break;
      case 3:
        sub_232B2F148();
        sub_232CE93C0();
        break;
      case 4:
        v7 = sub_232B13EE0();
        sub_232C680CC(v7, v8, v9, v10);
        break;
      case 5:
        v3 = sub_232B13EE0();
        sub_232C68130(v3, v4, v5, v6);
        break;
      case 6:
        v15 = sub_232B13EE0();
        sub_232C68194(v15, v16, v17, v18);
        break;
      case 7:
        v19 = sub_232B13EE0();
        sub_232C681F8(v19, v20, v21, v22);
        break;
      case 8:
        v11 = sub_232B13EE0();
        sub_232C6825C(v11, v12, v13, v14);
        break;
      case 9:
        v23 = sub_232B13EE0();
        sub_232C682C0(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C68324()
{
  sub_232B606E4();
  v2 = sub_232C69398();
  if (sub_232B3F4B0(v2, v3) || (sub_232C69398(), sub_232C692E0(), result = sub_232CE9580(), !v0))
  {
    v5 = sub_232C69398();
    if (sub_232B3F4B0(v5, v6) || (sub_232C69398(), sub_232C692E0(), result = sub_232CE9580(), !v0))
    {
      if (*(v1 + 32) != 1 || (result = sub_232C693B8(1, 3), !v0))
      {
        v7 = sub_232B47864();
        result = sub_232C68460(v7, v8, v9, v10);
        if (!v0)
        {
          v11 = sub_232B47864();
          sub_232C684D8(v11, v12, v13, v14);
          v15 = sub_232B47864();
          sub_232C68550(v15, v16, v17, v18);
          v19 = sub_232B47864();
          sub_232C685C8(v19, v20, v21, v22);
          v23 = sub_232B47864();
          sub_232C68640(v23, v24, v25, v26);
          v27 = sub_232B47864();
          sub_232C686B8(v27, v28, v29, v30);
          type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
          sub_232B2F148();
          return sub_232CE9320();
        }
      }
    }
  }

  return result;
}

uint64_t sub_232C68460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C684D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C68550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C685C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C68640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  if ((*(a1 + *(result + 48) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C686B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  if ((*(a1 + *(result + 52) + 8) & 1) == 0)
  {
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232C68730(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x2383909F0](*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (MEMORY[0x2383909F0](*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(0);
  sub_232C542E4();
  if (v6)
  {
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v7)
    {
      return 0;
    }
  }

  sub_232C542E4();
  if (v9)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v10)
    {
      return 0;
    }
  }

  sub_232C542E4();
  if (v12)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v13)
    {
      return 0;
    }
  }

  sub_232C542E4();
  if (v15)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v16)
    {
      return 0;
    }
  }

  sub_232C542E4();
  if (v18)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    sub_232B34FA4();
    if (v19)
    {
      return 0;
    }
  }

  sub_232C542E4();
  if (v21)
  {
    if (v20)
    {
      goto LABEL_29;
    }

    return 0;
  }

  sub_232B34FA4();
  if (v22)
  {
    return 0;
  }

LABEL_29:
  sub_232CE9340();
  sub_232C691C8();
  v25 = sub_232C68CE0(v23, v24, MEMORY[0x277D216D0]);
  return sub_232B606FC(v25) & 1;
}

uint64_t sub_232C68884(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_232CEA820();
  a1(0);
  sub_232C68CE0(a2, a3, a4);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C6892C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232C689A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_232C68A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C68CE0(&qword_27DDC8520, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo, &unk_232CFEDFC);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C68B08(uint64_t a1)
{
  v2 = sub_232C68CE0(&qword_27DDC7110, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo, &unk_232CFF26C);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C68BD0(uint64_t a1, uint64_t a2)
{
  sub_232C68CE0(&qword_27DDC7110, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo, &unk_232CFF26C);

  return sub_232CE9500();
}

uint64_t sub_232C68CE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232C69118()
{
  v1 = sub_232C69220();
  v2(v1);
  sub_232B13F24();
  v3 = sub_232B2080C();
  v4(v3);
  return v0;
}

uint64_t sub_232C6916C()
{
  v1 = sub_232B4D640();
  v2(v1);
  sub_232B13F24();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_232C691E0()
{
  sub_232C05E58(v1, v0);
  sub_232C05E58(v3, v2);
  return v1;
}

void sub_232C69210(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t sub_232C6923C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  v3 = v2 - 1;
  if (v3 < 0)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_232C69270()
{

  return sub_232B5BD4C(v3, v0 + v4, v1, v2);
}

uint64_t sub_232C69320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B12504(v4 + v5, 1, 1, a4);
}

uint64_t sub_232C6933C(uint64_t a1)
{

  return sub_232CE9CF0();
}

uint64_t sub_232C69360(uint64_t a1, uint64_t a2)
{

  return sub_232B5D6C0(a1, a2, v2, v3);
}

void sub_232C693A4(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t sub_232C693B8(uint64_t a1, uint64_t a2)
{

  return sub_232CE9560();
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(uint64_t a1)
{
  result = qword_27DDC8550;
  if (!qword_27DDC8550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C6944C(uint64_t a1)
{
  sub_232C69548(319, &qword_27DDC8560, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_232CE9340();
    if (v2 <= 0x3F)
    {
      sub_232C69548(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232C69548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_232C695AC@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  sub_232CE9330();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);

  return sub_232B12504(a1 + v3, 1, 1, v4);
}

uint64_t sub_232C6961C()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5200);
  sub_232B135C4(v0, qword_27DDD5200);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "structuredEntities";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseDebugInfo";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C697E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = sub_232B13EE0();
      sub_232C698F8(v10, v11, v12, v13);
    }

    else if (result == 1)
    {
      v6 = sub_232B13EE0();
      sub_232C69858(v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t sub_232C69858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0);
  sub_232C6A368(&qword_27DDC7B40, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity, &unk_232CFF1F4);
  return sub_232CE94B0();
}

uint64_t sub_232C698F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232C6A368(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  return sub_232CE94C0();
}

uint64_t sub_232C699AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0), sub_232C6A368(&qword_27DDC7B40, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity, &unk_232CFF1F4), result = sub_232CE95D0(), !v4))
  {
    result = sub_232C69AB8(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232C69AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  sub_232B21B7C(a1 + *(v11 + 24), v7);
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232B21BEC(v7, v10);
  sub_232C6A368(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, &unk_232CF66A0);
  sub_232CE95E0();
  return sub_232B21C50(v10);
}

uint64_t sub_232C69C58(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  sub_232B13F24();
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_232B33B34(*a1, *a2);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v16 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0) + 24);
  v17 = *(v11 + 48);
  sub_232B21B7C(a1 + v16, v14);
  sub_232B21B7C(a2 + v16, &v14[v17]);
  sub_232B13FF0(v14);
  if (v21)
  {
    sub_232B13FF0(&v14[v17]);
    if (v21)
    {
      sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_232B21B7C(v14, v10);
  sub_232B13FF0(&v14[v17]);
  if (v21)
  {
    sub_232B21C50(v10);
LABEL_11:
    v22 = &qword_27DDC6828;
    v23 = &unk_232CF6030;
LABEL_23:
    sub_232B13790(v14, v22, v23);
LABEL_24:
    v20 = 0;
    return v20 & 1;
  }

  sub_232B21BEC(&v14[v17], v7);
  v24 = *(v4 + 20);
  v25 = &v10[v24];
  v26 = *&v10[v24 + 8];
  v27 = &v7[v24];
  v28 = *(v27 + 1);
  if (!v26)
  {
    if (!v28)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (!v28 || (*v25 == *v27 ? (v29 = v26 == v28) : (v29 = 0), !v29 && (sub_232CEA750() & 1) == 0))
  {
LABEL_22:
    sub_232B21C50(v7);
    sub_232B21C50(v10);
    v22 = &qword_27DDC67C8;
    v23 = &unk_232CF5E70;
    goto LABEL_23;
  }

LABEL_19:
  sub_232CE9340();
  sub_232C6A3B0();
  sub_232C6A368(v30, v31, MEMORY[0x277D216D0]);
  v32 = sub_232CE9CF0();
  sub_232B21C50(v7);
  sub_232B21C50(v10);
  sub_232B13790(v14, &qword_27DDC67C8, &unk_232CF5E70);
  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  sub_232CE9340();
  sub_232C6A3B0();
  sub_232C6A368(v18, v19, MEMORY[0x277D216D0]);
  v20 = sub_232CE9CF0();
  return v20 & 1;
}

uint64_t sub_232C69F5C()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse(0);
  sub_232C6A368(&qword_27DDC8570, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse, &unk_232CFF368);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C6A034(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C6A368(&qword_27DDC8580, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse, &unk_232CFF3F8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C6A0B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6448 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5200);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C6A158(uint64_t a1)
{
  v2 = sub_232C6A368(&qword_27DDC7B78, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse, &unk_232CFF430);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C6A1C8(uint64_t a1, uint64_t a2)
{
  sub_232C6A368(&qword_27DDC7B78, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse, &unk_232CFF430);

  return sub_232CE9500();
}

uint64_t sub_232C6A368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

DocumentUnderstanding::TaggedCharacterRange::TaggedCharacterRangeAnnotationType_optional __swiftcall TaggedCharacterRange.TaggedCharacterRangeAnnotationType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_232C6A3EC@<X0>(uint64_t *a1@<X8>)
{
  result = TaggedCharacterRange.TaggedCharacterRangeAnnotationType.rawValue.getter();
  *a1 = result;
  return result;
}

void *sub_232C6A414@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X1>)
{
  result = sub_232C6A488(a2, &v4);
  *a1 = v4;
  return result;
}

uint64_t sub_232C6A488@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_232C4A23C(v2 + 16, a1);
  *a2 = *(v2 + 16);
  return result;
}

uint64_t sub_232C6A4C0(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_232B13F34(v2 + 16, a2);
  *(v2 + 16) = v3;
  return result;
}

double sub_232C6A564(uint64_t a1, uint64_t a2)
{
  sub_232C4A23C(v2 + 24, a2);

  return result;
}

uint64_t sub_232C6A590(uint64_t a1, uint64_t a2)
{
  sub_232B13F34(v2 + 24, a2);
  *(v2 + 24) = a1;
}

double sub_232C6A63C(uint64_t a1, uint64_t a2)
{
  sub_232C4A23C(v2 + 32, a2);

  return result;
}

uint64_t sub_232C6A668(uint64_t a1, uint64_t a2)
{
  sub_232B13F34(v2 + 32, a2);
  *(v2 + 32) = a1;
}

uint64_t sub_232C6A6E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232C6A768(v1, v2);
}

uint64_t sub_232C6A728(uint64_t a1, uint64_t a2)
{
  sub_232C4A23C(v2 + 40, a2);
  v3 = *(v2 + 40);

  return v3;
}

uint64_t sub_232C6A768(uint64_t a1, uint64_t a2)
{
  sub_232B13F34(v2 + 40, a2);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

double sub_232C6A820(uint64_t a1, uint64_t a2)
{
  sub_232C4A23C(v2 + 56, a2);

  return result;
}

uint64_t sub_232C6A84C(uint64_t a1, uint64_t a2)
{
  sub_232B13F34(v2 + 56, a2);
  *(v2 + 56) = a1;
}

uint64_t sub_232C6A8CC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = *a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

void *sub_232C6A8E8(void *result, void *a2)
{
  if (result[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = a2[2];
  if (!v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2[4] >= result[5])
  {
    return 0;
  }

  if (v2 != 1)
  {
    return (result[4] < a2[5]);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_232C6A93C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v26 = a1 & 0xC000000000000001;
  v27 = sub_232B26B10();
  v28 = a1;
  v24 = a2;
  v25 = a1 + 32;
  v5 = a2 & 0xC000000000000001;
  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  v22 = a2 & 0xFFFFFFFFFFFFFF8;
  v23 = a2 & 0xC000000000000001;
  while (1)
  {
    if (v4 == v27)
    {

      return;
    }

    sub_232B26B2C();
    if (v26)
    {
      v7 = MEMORY[0x2383922C0](v4, v28);
    }

    else
    {
      v7 = *(v25 + 8 * v4);
    }

    v8 = __OFADD__(v4++, 1);
    if (v8)
    {
      break;
    }

    v29 = MEMORY[0x277D84F90];
    v9 = sub_232B26B10();
    swift_beginAccess();
    for (i = 0; v9 != i; ++i)
    {
      if (v5)
      {
        v11 = MEMORY[0x2383922C0](i, a2);
      }

      else
      {
        if (i >= *(v6 + 16))
        {
          goto LABEL_40;
        }

        v11 = *(a2 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v11 == v7 || (type metadata accessor for TaggedCharacterRange(), swift_beginAccess(), (sub_232C6A8E8(*(v11 + 32), *(v7 + 32)) & 1) != 0))
      {
        sub_232CEA560();
        sub_232CEA590();
        sub_232CEA5A0();
        sub_232CEA570();
      }

      else
      {
      }
    }

    v12 = sub_232B26B10();
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    while (v12 != v13)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2383922C0](v13, v29);
      }

      else
      {
        if (v13 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        v15 = *(v29 + 8 * v13 + 32);
      }

      if (__OFADD__(v13, 1))
      {
        goto LABEL_41;
      }

      swift_beginAccess();
      v16 = *(v15 + 24);

      v17 = *(v16 + 16);
      v18 = *(v14 + 16);
      if (__OFADD__(v18, v17))
      {
        goto LABEL_43;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v17 > *(v14 + 24) >> 1)
      {
        sub_232B35ECC();
        v14 = v19;
      }

      if (*(v16 + 16))
      {
        if ((*(v14 + 24) >> 1) - *(v14 + 16) < v17)
        {
          goto LABEL_45;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v20 = *(v14 + 16);
          v8 = __OFADD__(v20, v17);
          v21 = v20 + v17;
          if (v8)
          {
            goto LABEL_46;
          }

          *(v14 + 16) = v21;
        }
      }

      else
      {

        if (v17)
        {
          goto LABEL_44;
        }
      }

      ++v13;
    }

    swift_beginAccess();
    sub_232C5E194(v14);
    swift_endAccess();
    swift_beginAccess();
    *(v7 + 16) = 2;

    v5 = v23;
    a2 = v24;
    v6 = v22;
  }

LABEL_47:
  __break(1u);
}

uint64_t TaggedCharacterRange.deinit()
{

  return v0;
}

uint64_t TaggedCharacterRange.__deallocating_deinit()
{
  TaggedCharacterRange.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_232C6AD2C()
{
  result = qword_27DDC8588;
  if (!qword_27DDC8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8588);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaggedCharacterRange.TaggedCharacterRangeAnnotationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TaggedCharacterRange.TaggedCharacterRangeAnnotationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232C6B13C(uint64_t a1)
{

  return swift_beginAccess();
}

id DUBulkUpdater.init(client:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_documentNamespace];
  *v4 = 0xD000000000000028;
  *(v4 + 1) = 0x8000000232D09E90;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v6 = objc_allocWithZone(type metadata accessor for DUClient());
    v5 = DUClient.init(identifier:)(0x6470755F6B6C7562, 0xEC00000072657461);
  }

  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_client] = v5;
  type metadata accessor for PoemAggregationModelHandler();
  swift_allocObject();
  v7 = a1;
  v8 = v5;
  v9 = sub_232C349B0();
  v10 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_poemOnBoardHandler];
  *v10 = v8;
  *(v10 + 1) = v9;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for DUBulkUpdater();
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

uint64_t sub_232C6B2C0()
{
  v1[2] = v0;
  v2 = sub_232CE9A30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C6B38C, 0, 0);
}

uint64_t sub_232C6B38C(uint64_t a1)
{
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1A0();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_232BA73DC() = 0;
    sub_232B28888(&dword_232B02000, v4, v5, "DocumentUnderstanding: Beginning handlePoemOnBoarding");
    sub_232BA6A84();
  }

  v6 = v1[6];
  v7 = v1[3];
  v8 = v1[4];

  v9 = *(v8 + 8);
  v1[7] = v9;
  v9(v6, v7);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_232C6B4C0;

  return sub_232C3DCC0();
}

uint64_t sub_232C6B4C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232C6B614, 0, 0);
  }
}

uint64_t sub_232C6B614(uint64_t a1)
{
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1A0();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_232BA73DC() = 0;
    sub_232B28888(&dword_232B02000, v4, v5, "DocumentUnderstanding: Ending handlePoemOnBoarding");
    sub_232BA6A84();
  }

  v6 = v1[7];
  v7 = v1[5];
  v8 = v1[3];

  v6(v7, v8);

  v9 = v1[1];

  return v9();
}

uint64_t sub_232C6B70C()
{
  v0 = sub_232CE9A30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  sub_232CE9A20();
  v7 = sub_232CE9A00();
  v8 = sub_232CEA1A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_232BA73DC();
    *v9 = 0;
    _os_log_impl(&dword_232B02000, v7, v8, "DocumentUnderstanding: Beginning handle incremental PoemUpdate", v9, 2u);
    sub_232BA6A84();
  }

  v10 = *(v1 + 8);
  v10(v6, v0);
  type metadata accessor for PoemAggregationModelHandler();
  swift_initStackObject();
  v11 = sub_232C349B0();
  v12 = sub_232C4F934(v11);
  v13.n128_u64[0] = *(v11 + 136);
  if (*(v11 + 152))
  {
    v13.n128_f64[0] = 0.45;
  }

  v14 = sub_232C500D0(v12, v13);

  sub_232C39390(v14, 1);

  sub_232CE9A20();
  v15 = sub_232CE9A00();
  v16 = sub_232CEA1A0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_232BA73DC();
    *v17 = 0;
    _os_log_impl(&dword_232B02000, v15, v16, "DocumentUnderstanding: Ending handle incremental PoemUpdate", v17, 2u);
    sub_232BA6A84();
  }

  return (v10)(v3, v0);
}

id DUBulkUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUBulkUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUBulkUpdater();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of DUBulkUpdater.triggerPoemOnBoarding()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_232BB0620;

  return v5();
}

id DUDocumentUpdater.init(client:)(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_documentNamespace];
  *v4 = 0xD000000000000028;
  *(v4 + 1) = 0x8000000232D09E90;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v6 = objc_allocWithZone(type metadata accessor for DUClient());
    v5 = DUClient.init(identifier:)(0xD000000000000010, 0x8000000232D0BB30);
  }

  v7 = OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_client;
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_client] = v5;
  updated = type metadata accessor for PoemUpdateHandler();
  v9 = objc_allocWithZone(updated);
  *&v9[OBJC_IVAR____TtC21DocumentUnderstanding17PoemUpdateHandler_client] = v5;
  v17.receiver = v9;
  v17.super_class = updated;
  v10 = a1;
  v11 = v5;
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_poemUpdateHandler] = objc_msgSendSuper2(&v17, sel_init);
  v12 = *&v2[v7];
  v13 = objc_allocWithZone(type metadata accessor for SpotlightDocumentTaggingUpdateHandler());
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightDocumentTaggingUpdateHandler] = sub_232C5A618(v12);
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightUpdateFetcher] = [objc_allocWithZone(type metadata accessor for CoreSpotlightUpdateFetcher()) init];
  v16.receiver = v2;
  v16.super_class = type metadata accessor for DUDocumentUpdater();
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

uint64_t sub_232C6BDA8()
{
  sub_232B26C44();
  v1[6] = v0;
  v2 = sub_232CE9A30();
  v1[7] = v2;
  sub_232B27FBC(v2);
  v1[8] = v3;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_232C6BE70()
{
  sub_232B482F8();
  sub_232CE9A20();
  v1 = sub_232CE9A00();
  v2 = sub_232CEA1A0();
  if (sub_232C6F000(v2))
  {
    v3 = sub_232BA73DC();
    *v3 = 0;
    sub_232C6F080();
    _os_log_impl(v4, v5, v6, v7, v3, 2u);
    sub_232BA6A84();
  }

  v8 = v0[11];
  v9 = v0[7];
  v10 = v0[8];

  v11 = *(v10 + 8);
  v0[12] = v11;
  v11(v8, v9);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  sub_232C6EF9C(v12);

  return sub_232B288A8(0, 1, 0, 1);
}

uint64_t sub_232C6BFA0()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B482C0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v5;

  if (v0)
  {

    sub_232B26CF4();

    return v6();
  }

  else
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

void sub_232C6C0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_232C6F0B8();
  sub_232CE9A20();

  v13 = sub_232CE9A00();
  v14 = sub_232CEA1A0();
  if (sub_232C6F000(v14))
  {
    v15 = sub_232BC1F80();
    *v15 = 134217984;
    *(v15 + 4) = sub_232B26B10();

    sub_232C6F080();
    _os_log_impl(v16, v17, v18, v19, v15, 0xCu);
    sub_232BA6A84();
  }

  else
  {
  }

  v20 = v12[14];
  v21 = v12[12];
  v22 = v12[10];
  v23 = v12[7];
  v12[15] = (v12[8] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v22, v23);
  v24 = sub_232B26B10();
  v25 = 0;
  v58 = v20 & 0xC000000000000001;
  v26 = v20 & 0xFFFFFFFFFFFFFF8;
  v27 = v20 + 32;
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    v12[16] = v28;
    if (v24 == v25)
    {
      break;
    }

    if (v58)
    {
      v29 = MEMORY[0x2383922C0](v25, v12[14]);
    }

    else
    {
      if (v25 >= *(v26 + 16))
      {
        goto LABEL_29;
      }

      v29 = *(v27 + 8 * v25);
    }

    v30 = v29;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v31 = sub_232C6DAC0(v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232B373E4();
      v28 = v34;
    }

    v32 = *(v28 + 16);
    if (v32 >= *(v28 + 24) >> 1)
    {
      sub_232B373E4();
      v28 = v35;
    }

    *(v28 + 16) = v32 + 1;
    v33 = v28 + 16 * v32;
    *(v33 + 32) = v31;
    *(v33 + 40) = v30;
    ++v25;
  }

  v36 = *(v28 + 16);
  v12[17] = v36;
  if (v36)
  {
    v12[18] = OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_spotlightDocumentTaggingUpdateHandler;
    v12[19] = 0;
    v37 = v12[16];
    if (!v37[2])
    {
      goto LABEL_30;
    }

    v38 = v37[4];
    v12[20] = v38;
    v39 = v37[5];
    v12[21] = v39;
    if (v38)
    {
      v38;
      v40 = v39;
      v41 = sub_232C6F0F4();
      v42 = sub_232C6F0AC(v41);
      *v42 = v43;
      sub_232C6EEB4(v42);
      sub_232C6EFE4();

      sub_232C5AA74();
    }

    else
    {
      v53 = v39;
      sub_232B26D00();
      v54 = swift_task_alloc();
      v55 = sub_232C6F0A0(v54);
      *v55 = v56;
      sub_232C6EEE4(v55);
      sub_232C6EFE4();

      sub_232C6E5A8();
    }
  }

  else
  {

    sub_232C6F10C();

    sub_232C6EF10();
    sub_232C6EFE4();

    v46(v45, v46, v47, v48, v49, v50, v51, v52, v58, a10, a11, a12);
  }
}

uint64_t sub_232C6C408()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = v2;
  sub_232B482C0();
  *v4 = v3;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_232C6C50C()
{
  sub_232B26C7C();
  v2 = *(v0 + 160);

  sub_232C6EF78();
  if (v4)
  {

    sub_232C6F10C();

    sub_232C6EF10();

    v5();
  }

  else
  {
    sub_232C6EF64(v3);
    if (v6)
    {
      __break(1u);
    }

    else
    {
      sub_232C6EF20(v7);
      if (v8)
      {
        sub_232C6F038();
        v10 = v9;
        v11 = v1;
        v12 = sub_232C6F0F4();
        v13 = sub_232C6F0AC(v12);
        *v13 = v14;
        sub_232C6EEB4(v13);

        sub_232C5AA74();
      }

      else
      {
        v15 = v1;
        sub_232B26D00();
        v16 = swift_task_alloc();
        v17 = sub_232C6F0A0(v16);
        *v17 = v18;
        sub_232C6EEE4(v17);

        sub_232C6E5A8();
      }
    }
  }
}

uint64_t sub_232C6C658()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_232C6C754()
{
  sub_232B26C7C();

  sub_232C6EF78();
  if (v3)
  {

    sub_232C6F10C();

    sub_232C6EF10();

    v4();
  }

  else
  {
    sub_232C6EF64(v2);
    if (v5)
    {
      __break(1u);
    }

    else
    {
      sub_232C6EF20(v6);
      if (v7)
      {
        sub_232C6F038();
        v9 = v8;
        v10 = v1;
        v11 = sub_232C6F0F4();
        v12 = sub_232C6F0AC(v11);
        *v12 = v13;
        sub_232C6EEB4(v12);

        sub_232C5AA74();
      }

      else
      {
        v14 = v1;
        sub_232B26D00();
        v15 = swift_task_alloc();
        v16 = sub_232C6F0A0(v15);
        *v16 = v17;
        sub_232C6EEE4(v16);

        sub_232C6E5A8();
      }
    }
  }
}

void sub_232C6C898(uint64_t a1)
{
  v43 = v1;
  v2 = *(v1 + 200);
  v3 = *(v1 + 168);
  sub_232CE9A20();
  v4 = v3;
  v5 = v2;
  v6 = sub_232CE9A00();
  v7 = sub_232CEA1C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 200);
    v9 = *(v1 + 168);
    v41 = *(v1 + 96);
    v40 = *(v1 + 72);
    v10 = *(v1 + 56);
    v11 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_232C5A200();
    v14 = sub_232BAD2D4(v12, v13, &v42);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_232CEA7B0();
    v17 = sub_232BAD2D4(v15, v16, &v42);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_232B02000, v6, v7, "Error while handling failed file searchable item %s. Error: %s", v11, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232BA6A84();

    v41(v40, v10);
  }

  else
  {
    v18 = *(v1 + 200);
    v19 = *(v1 + 96);
    v20 = *(v1 + 72);
    v17 = *(v1 + 56);

    v19(v20, v17);
  }

  sub_232C6EF78();
  if (v22)
  {

    sub_232C6F10C();

    sub_232C6EF10();
    sub_232C6EFA8();

    __asm { BRAA            X1, X16 }
  }

  sub_232C6EF64(v21);
  if (v25)
  {
    __break(1u);
  }

  else
  {
    sub_232C6EF20(v26);
    if (v27)
    {
      sub_232C6F038();
      v29 = v28;
      v30 = v17;
      v31 = sub_232C6F0F4();
      v32 = sub_232C6F0AC(v31);
      *v32 = v33;
      sub_232C6EEB4(v32);
      sub_232C6EFA8();

      sub_232C5AA74();
    }

    else
    {
      v35 = v17;
      sub_232B26D00();
      v36 = swift_task_alloc();
      v37 = sub_232C6F0A0(v36);
      *v37 = v38;
      sub_232C6EEE4(v37);
      sub_232C6EFA8();

      sub_232C6E5A8();
    }
  }
}

uint64_t sub_232C6CB8C()
{
  sub_232B26C7C();
  v1 = *(v0 + 160);

  sub_232B26CF4();

  return v2();
}

uint64_t sub_232C6CC14()
{
  sub_232B26C44();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v5 = sub_232CE9A30();
  v1[27] = v5;
  sub_232B27FBC(v5);
  v1[28] = v6;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232C6CCF8(uint64_t a1)
{
  v97 = v1;
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1A0();
  if (sub_232C6F000(v3))
  {
    v4 = sub_232BA73DC();
    *v4 = 0;
    sub_232C6F080();
    _os_log_impl(v5, v6, v7, v8, v4, 2u);
    sub_232BA6A84();
  }

  v9 = v1[33];
  v10 = v1[27];
  v11 = v1[28];
  v13 = v1[24];
  v12 = v1[25];
  v14 = v1[23];

  v15 = *(v11 + 8);
  v1[34] = v15;
  v15(v9, v10);
  type metadata accessor for HarvestingDocumentNormalization();
  static HarvestingDocumentNormalization.normalizeDocument(documentData:documentType:)(v14, v13, v12, v16, v17, v18, v19, v20, v89, v92, v95, v96[0], v96[1], v96[2], v96[3], v96[4], v96[5], v96[6], v96[7], v96[8]);
  v1[35] = v21;
  v1[36] = v22;
  v25 = v21;
  sub_232CE9810();
  v26 = MEMORY[0x238391560]();
  if (v26)
  {
    sub_232CE9A20();
    v27 = v25;
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v1[32];
    v32 = v1[27];
    if (v30)
    {
      v33 = sub_232BC1F80();
      v93 = v32;
      v34 = swift_slowAlloc();
      v96[0] = v34;
      *v33 = 136315138;
      v90 = v31;
      v35 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
      sub_232B13F74(&v27[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID], (v1 + 17));
      v36 = (*&v27[v35] + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
      sub_232B13F74(v36, (v1 + 20));
      v37 = *v36;
      v38 = v36[1];

      v39 = sub_232BAD2D4(v37, v38, v96);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_232B02000, v28, v29, "(DUDocumentUpdater) Sending Harvesting Update with identifier %s to Spotlight Update Handler", v33, 0xCu);
      sub_232B2040C(v34);
      sub_232B26D28();
      sub_232BA6A84();

      v40 = v93;
      v41 = v90;
    }

    else
    {

      v41 = v31;
      v40 = v32;
    }

    v15(v41, v40);
    v57 = swift_task_alloc();
    v1[37] = v57;
    *v57 = v1;
    sub_232C6EF9C(v57);
    sub_232C6EFA8();

    return sub_232C5AA74();
  }

  else
  {
    sub_232CE9A20();
    v42 = v25;
    v43 = sub_232CE9A00();
    v44 = sub_232CEA1A0();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v1[31];
    v47 = v1[27];
    if (v45)
    {
      sub_232BC1F80();
      v94 = v46;
      v46 = &OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
      v91 = v47;
      v47 = sub_232C6F01C();
      v96[0] = v47;
      LODWORD(OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID) = 136315138;
      v48 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
      sub_232B13F74(&v42[OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID], (v1 + 11));
      v49 = (*&v42[v48] + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
      sub_232B13F74(v49, (v1 + 14));
      v51 = *v49;
      v50 = v49[1];

      v52 = sub_232BAD2D4(v51, v50, v96);

      *(&OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID + 4) = v52;
      sub_232C6EFC4(&dword_232B02000, v53, v54, "(DUDocumentUpdater) Feature flag to index nonfile documents is off.  Skipping Spotlight updater for document %s");
      sub_232B2040C(v47);
      sub_232BA6A84();
      sub_232B26D28();

      v55 = v94;
      v56 = v91;
    }

    else
    {

      v55 = v46;
      v56 = v47;
    }

    v15(v55, v56);
    v60 = v1[35];
    v61 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
    sub_232B13F74(v60 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID, (v1 + 2));
    v62 = (*(&v61->isa + v60) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID);
    sub_232B13F74(v62, (v1 + 5));
    v63 = v62[1];
    if (!v63 || (*v62 == 0xD000000000000013 ? (v64 = v63 == 0x8000000232D09F20) : (v64 = 0), !v64 && (sub_232CEA750() & 1) == 0))
    {
      v79 = v1[29];
      sub_232CE9A20();
      v80 = sub_232CE9A00();
      v81 = sub_232CEA1A0();
      os_log_type_enabled(v80, v81);
      sub_232C6F08C();
      if (v82)
      {
        *sub_232BA73DC() = 0;
        sub_232C6F0D4(&dword_232B02000, v83, v84, "Poem update is only supported for iOS messages");
        sub_232B26D28();
        v85 = v61;
        v61 = v80;
      }

      else
      {
        v85 = v60;
        v60 = v80;
      }

      (v47)(v79, v46);
      sub_232C6F048();

      sub_232C6EF10();
      sub_232C6EFA8();

      __asm { BRAA            X1, X16 }
    }

    v65 = v1[35];
    sub_232CE9A20();
    v66 = v65;
    v67 = sub_232CE9A00();
    v68 = sub_232CEA1A0();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v1[34];
    if (v69)
    {
      sub_232BC1F80();
      v71 = sub_232C6F01C();
      v96[0] = v71;
      *v70 = 136315138;
      v72 = (*(&v61->isa + v60) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
      sub_232B13F74(v72, (v1 + 8));
      v74 = *v72;
      v73 = v72[1];

      v75 = sub_232BAD2D4(v74, v73, v96);

      *(v70 + 4) = v75;
      sub_232C6EFC4(&dword_232B02000, v76, v77, "Sending harvesting update with identifier %s to Poem Update Handler");
      sub_232B2040C(v71);
      sub_232BA6A84();
      sub_232B26D28();
    }

    v78 = sub_232C6EF8C();
    (v70)(v78);
    v86 = swift_task_alloc();
    v1[39] = v86;
    *v86 = v1;
    sub_232C6EF38(v86);
    sub_232C6EFA8();

    return sub_232C52E7C(v87);
  }
}

uint64_t sub_232C6D3E8()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v6 + 304) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232C6D4E4()
{
  v35 = v1;
  v3 = v1[35];
  v4 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
  sub_232B13F74(v3 + OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID, (v1 + 2));
  v5 = (*(&v4->isa + v3) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID);
  sub_232B13F74(v5, (v1 + 5));
  v6 = v5[1];
  if (v6 && (*v5 == 0xD000000000000013 ? (v7 = v6 == 0x8000000232D09F20) : (v7 = 0), v7 || (sub_232CEA750() & 1) != 0))
  {
    v8 = v1[35];
    sub_232CE9A20();
    v9 = v8;
    v10 = sub_232CE9A00();
    v11 = sub_232CEA1A0();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v1[34];
    if (v12)
    {
      sub_232BC1F80();
      v14 = sub_232C6F01C();
      v34 = v14;
      *v13 = 136315138;
      v15 = (*(&v4->isa + v3) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
      sub_232B13F74(v15, (v1 + 8));
      v17 = *v15;
      v16 = v15[1];

      v18 = sub_232BAD2D4(v17, v16, &v34);

      *(v13 + 4) = v18;
      sub_232C6EFC4(&dword_232B02000, v19, v20, "Sending harvesting update with identifier %s to Poem Update Handler");
      sub_232B2040C(v14);
      sub_232BA6A84();
      sub_232B26D28();

      v21 = sub_232C6EF8C();
      (v13)(v21);
    }

    else
    {

      v31 = sub_232C6EF8C();
      (v13)(v31);
    }

    v32 = swift_task_alloc();
    v1[39] = v32;
    *v32 = v1;
    v33 = sub_232C6EF38(v32);

    return sub_232C52E7C(v33);
  }

  else
  {
    v22 = v1[29];
    sub_232CE9A20();
    v23 = sub_232CE9A00();
    v24 = sub_232CEA1A0();
    os_log_type_enabled(v23, v24);
    sub_232C6F08C();
    if (v25)
    {
      *sub_232BA73DC() = 0;
      sub_232C6F0D4(&dword_232B02000, v26, v27, "Poem update is only supported for iOS messages");
      sub_232B26D28();
      v28 = v4;
      v4 = v23;
    }

    else
    {
      v28 = v3;
      v3 = v23;
    }

    v2(v22, v0);
    sub_232C6F048();

    sub_232C6EF10();

    return v29();
  }
}

uint64_t sub_232C6D7FC()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v6 + 320) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232C6D8F8()
{
  sub_232B26C7C();
  v1 = *(v0 + 280);

  sub_232C6F048();

  sub_232C6EF10();

  return v2();
}

uint64_t sub_232C6D980()
{
  sub_232B482F8();
  v1 = *(v0 + 280);

  sub_232B26CF4();

  return v2();
}

uint64_t sub_232C6DA20()
{
  sub_232B482F8();
  v1 = *(v0 + 280);

  sub_232B26CF4();

  return v2();
}

id sub_232C6DAC0(void *a1)
{
  sub_232CE9A30();
  sub_232B48F0C();
  v71 = v3;
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  sub_232B3516C();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v67 = &v66 - v8;
  v9 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v66 - v10;
  v12 = sub_232CE8C00();
  sub_232B48F0C();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_232B3516C();
  v66 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v70 = &v66 - v19;
  v20 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v20 - 8);
  sub_232B3516C();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v66 - v28;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v66 - v32;
  v68 = a1;
  v34 = [a1 attributeSet];
  v35 = [v34 contentURL];

  if (v35)
  {
    sub_232CE8BB0();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  sub_232B12504(v29, v36, 1, v12);
  sub_232C4A008(v29, v33);
  sub_232B35974(v33, v26);
  if (sub_232B12480(v26, 1, v12) == 1)
  {
    sub_232B359E4(v26);
    sub_232CE9A20();
    v37 = sub_232CE9A00();
    v38 = sub_232CEA1C0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = sub_232BA73DC();
      *v39 = 0;
      _os_log_impl(&dword_232B02000, v37, v38, "There is no path for the searchable item", v39, 2u);
      sub_232BA6A84();
    }

    (*(v71 + 8))(v6, v72);
  }

  else
  {
    v41 = v14;
    v43 = v14 + 32;
    v42 = *(v14 + 32);
    v44 = v70;
    v42(v70, v26, v12);
    type metadata accessor for FilesDocumentIngester();
    static FilesDocumentIngester.ingestDocumentFromFile(fileURL:)();
    v46 = v43 - 16;
    if (v45)
    {
      v47 = v45;
      sub_232C6E8FC(v68);
      (*(v41 + 16))(v23, v44, v12);
      sub_232B12504(v23, 0, 1, v12);
      v48 = v47;
      sub_232CE8D00();
      v49 = sub_232CE8D10();
      sub_232B12504(v11, 0, 1, v49);
      v50 = objc_allocWithZone(type metadata accessor for DUDocumentUpdate(0));
      sub_232B48304();
      v40 = DUDocumentUpdate.init(documentID:documentBody:document:associatedFileURL:documentType:updateTimestamp:documentAttributes:)(v51, v52, v53, v47, v23, 1701603686, 0xE400000000000000, v11, 0);

      (*(v41 + 8))(v44, v12);
      sub_232B359E4(v33);
      return v40;
    }

    v55 = v67;
    sub_232CE9A20();
    v56 = v66;
    (*v46)(v66, v44, v12);
    v57 = sub_232CE9A00();
    v58 = sub_232CEA1A0();
    if (os_log_type_enabled(v57, v58))
    {
      sub_232BC1F80();
      v59 = v56;
      v60 = sub_232C6F01C();
      v73 = v60;
      *v46 = 136315138;
      v69 = sub_232CE8B60();
      v62 = v61;
      v63 = *(v41 + 8);
      v63(v59, v12);
      v64 = sub_232BAD2D4(v69, v62, &v73);

      *(v46 + 4) = v64;
      _os_log_impl(&dword_232B02000, v57, v58, "FilesDocumentIngester failed for url: %s", v46, 0xCu);
      sub_232B2040C(v60);
      sub_232BA6A84();
      sub_232B26D28();

      (*(v71 + 8))(v67, v72);
      v63(v70, v12);
    }

    else
    {

      v65 = *(v41 + 8);
      v65(v56, v12);
      (*(v71 + 8))(v55, v72);
      v65(v44, v12);
    }
  }

  sub_232B359E4(v33);
  return 0;
}

uint64_t sub_232C6E0C8()
{
  sub_232B26C44();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 81) = v3;
  *(v1 + 80) = v4;
  *(v1 + 16) = v5;
  v6 = sub_232CE9A30();
  *(v1 + 40) = v6;
  sub_232B27FBC(v6);
  *(v1 + 48) = v7;
  *(v1 + 56) = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_232C6E184()
{
  sub_232B26C7C();
  v1 = *(v0 + 81);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_232C6E23C;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_232B288A8(v5, v2 & 1, v4, v1 & 1);
}

uint64_t sub_232C6E23C()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B482C0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_232C6E37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_232C6F0B8();
  sub_232CE9A20();

  v13 = sub_232CE9A00();
  v14 = sub_232CEA1A0();
  if (sub_232C6F000(v14))
  {
    v15 = sub_232BC1F80();
    *v15 = 134217984;
    *(v15 + 4) = sub_232B26B10();

    sub_232C6F080();
    _os_log_impl(v16, v17, v18, v19, v15, 0xCu);
    sub_232BA6A84();
  }

  else
  {
  }

  v20 = v12[9];
  (*(v12[6] + 8))(v12[7], v12[5]);
  v21 = sub_232B26B10();
  v22 = 0;
  v23 = v20 & 0xC000000000000001;
  v24 = v20 & 0xFFFFFFFFFFFFFF8;
  v25 = v20 + 32;
  v26 = MEMORY[0x277D84F90];
  while (v21 != v22)
  {
    if (v23)
    {
      v27 = MEMORY[0x2383922C0](v22, v12[9]);
    }

    else
    {
      if (v22 >= *(v24 + 16))
      {
        goto LABEL_22;
      }

      v27 = *(v25 + 8 * v22);
    }

    v28 = v27;
    v29 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v30 = sub_232C6DAC0(v27);
    if (v30)
    {
      v31 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232B36248();
        v26 = v35;
      }

      v32 = *(v26 + 16);
      v33 = v32 + 1;
      if (v32 >= *(v26 + 24) >> 1)
      {
        a9 = v32 + 1;
        sub_232B36248();
        v33 = v32 + 1;
        v26 = v36;
      }

      *(v26 + 16) = v33;
      v34 = v26 + 16 * v32;
      *(v34 + 32) = v31;
      *(v34 + 40) = v28;
      v22 = v29;
    }

    else
    {

      ++v22;
    }
  }

  sub_232C6EFE4();

  v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_232C6E5A8()
{
  sub_232B26C44();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_232CE9A30();
  v1[4] = v3;
  sub_232B27FBC(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232C6E658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_232C6F0B8();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = v20[2];
  sub_232CE9A20();
  v24 = v23;
  v25 = sub_232CE9A00();
  v26 = sub_232CEA1C0();

  v27 = os_log_type_enabled(v25, v26);
  v29 = v20[5];
  v28 = v20[6];
  v30 = v20[4];
  if (v27)
  {
    v31 = sub_232BC1F80();
    v32 = swift_slowAlloc();
    a9 = v32;
    *v31 = 136315138;
    v33 = sub_232C5A200();
    v35 = sub_232BAD2D4(v33, v34, &a9);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_232B02000, v25, v26, "Unable to construct a document update for %s", v31, 0xCu);
    sub_232B2040C(v32);
    sub_232BA6A84();
    sub_232BA6A84();
  }

  (*(v29 + 8))(v28, v30);
  v36 = swift_task_alloc();
  v20[7] = v36;
  *v36 = v20;
  v36[1] = sub_232C6E800;
  sub_232C6EFE4();

  return sub_232C5A788(v37, v38, v39, v40, v41);
}

uint64_t sub_232C6E800()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  sub_232B26CF4();

  return v3();
}

char *sub_232C6E8FC(void *a1)
{
  v2 = sub_232C31B34(a1, &selRef_bundleID);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = sub_232C31B34(a1, &selRef_domainIdentifier);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = [a1 uniqueIdentifier];
  v23 = sub_232CE9D50();
  v12 = v11;

  sub_232CEA4F0();

  v27[0] = 0xD000000000000013;
  v27[1] = 0x8000000232D0BC20;
  MEMORY[0x238391C30](v4, v5);
  MEMORY[0x238391C30](24415, 0xE200000000000000);
  MEMORY[0x238391C30](v8, v9);
  MEMORY[0x238391C30](24415, 0xE200000000000000);
  MEMORY[0x238391C30](v23, v12);
  v13 = *(v24 + OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_documentNamespace);
  v14 = *(v24 + OBJC_IVAR____TtC21DocumentUnderstanding17DUDocumentUpdater_documentNamespace + 8);
  v15 = objc_allocWithZone(type metadata accessor for DUDocumentIdentifier());

  v16 = DUDocumentIdentifier.init(documentNamespace:documentID:)(v13, v14, 0xD000000000000013, 0x8000000232D0BC20);
  v17 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightBundleID];
  sub_232C6F064(v16, v27);
  *v17 = v4;
  v17[1] = v5;

  v19 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightDomainIdentifier];
  sub_232C6F064(v18, v26);
  *v19 = v8;
  v19[1] = v9;

  v21 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_spotlightUniqueIdentifier];
  sub_232C6F064(v20, v25);
  *v21 = v23;
  v21[1] = v12;

  return v16;
}

id DUDocumentUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentUpdater();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of DUDocumentUpdater.handleFileUpdateNotification()()
{
  sub_232B26C7C();
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x98);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  sub_232C6EF9C(v3);

  return v5();
}

uint64_t dispatch thunk of DUDocumentUpdater.handleHarvestingEventUpdate(serializedDocument:documentType:)()
{
  sub_232B482F8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  sub_232C6EF9C(v9);

  return v11(v7, v5, v3);
}

void sub_232C6EF20(uint64_t a1@<X8>)
{
  v3 = v1 + 16 * a1;
  *(v2 + 160) = *(v3 + 32);
  *(v2 + 168) = *(v3 + 40);
}

void sub_232C6EFC4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL sub_232C6F000(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_232C6F01C()
{

  return swift_slowAlloc();
}

uint64_t sub_232C6F048()
{
}

uint64_t sub_232C6F064(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_232C6F0D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_232C6F0F4()
{

  return swift_task_alloc();
}

uint64_t sub_232C6F10C()
{
}

uint64_t sub_232C6F124(uint64_t a1, uint64_t a2)
{
  v5 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v6 = sub_232B2D120(v5);
  MEMORY[0x28223BE20](v6);
  sub_232C79D04();
  v7 = sub_232CEA090();
  sub_232C79D94(v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_232CFF880;
  v9[5] = v8;
  v10 = sub_232C79C54();
  sub_232C784D4(v10, v11, v2, v12, v13);
}

uint64_t TextUnderstandingManagerError.hashValue.getter()
{
  v1 = *v0;
  sub_232CEA820();
  MEMORY[0x2383925C0](v1);
  return sub_232CEA850();
}

id sub_232C6F2A4()
{
  result = [objc_allocWithZone(type metadata accessor for TextUnderstandingManager()) init];
  qword_2814E2328 = result;
  return result;
}

id TextUnderstandingManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TextUnderstandingManager.shared.getter()
{
  if (qword_2814E2320 != -1)
  {
    swift_once();
  }

  v1 = qword_2814E2328;

  return v1;
}

id TextUnderstandingManager.init()()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_foundInEventsQueue;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___client] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___updater] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___bulkupdater] = 0;
  sub_232C78904(0xD000000000000028, 0x8000000232D0BC40, *&v0[v1]);
  [*&v0[v1] setMaxConcurrentOperationCount_];
  [*&v0[v1] setQualityOfService_];
  sub_232C78904(0xD000000000000036, 0x8000000232D0BC70, *&v0[v2]);
  [*&v0[v2] setMaxConcurrentOperationCount_];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TextUnderstandingManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_232C6F4D8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___client;
  v2 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___client);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager____lazy_storage___client);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for DUClient());
    v6 = DUClient.init(identifier:)(0xD000000000000030, 0x8000000232D0BF10);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_232C6F5CC(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(id))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = v3;
    v10 = sub_232C6F4D8();
    v11 = objc_allocWithZone(a2(0));
    v12 = a3(v10);
    v13 = *(v9 + v4);
    *(v9 + v4) = v12;
    v6 = v12;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

void sub_232C6F664(uint64_t a1, void (**a2)(void))
{
  v3 = sub_232CE9A30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE9A20();
  v7 = sub_232CE9A00();
  v8 = sub_232CEA1A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_232B02000, v7, v8, "Received ping \n", v9, 2u);
    MEMORY[0x238393870](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  a2[2](a2);
  _Block_release(a2);
}

uint64_t sub_232C6F7BC(uint64_t (*a1)(uint64_t))
{
  v4 = sub_232CE9A30();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_232C799AC(v8);
  v9 = sub_232CE9A00();
  sub_232CEA1A0();
  sub_232C79CF8();
  if (os_log_type_enabled(v9, v10))
  {
    sub_232BAE0AC();
    v11 = swift_slowAlloc();
    sub_232BD7228(v11);
    sub_232C79C30(&dword_232B02000, v9, v2, "Received ping \n");
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v12 = (*(v6 + 8))(v1, v4);
  return a1(v12);
}

void sub_232C6F8E8(uint64_t a1, void (**a2)(void))
{
  v4 = sub_232CE9A30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = aBlock - v9;
  sub_232CE9A20();
  v11 = sub_232CE9A00();
  v12 = sub_232CEA1A0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_232B02000, v11, v12, "DocumentUnderstanding: triggerSpotlightFileUpdateNoArgs in manager called", v13, 2u);
    MEMORY[0x238393870](v13, -1, -1);
  }

  v14 = *(v5 + 8);
  v14(v10, v4);
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    v15 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_232C7994C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232BB4000;
    aBlock[3] = &unk_2848143B0;
    v17 = _Block_copy(aBlock);

    [v15 addOperationWithBlock_];
    _Block_release(v17);
  }

  else
  {
    sub_232CE9A20();
    v18 = sub_232CE9A00();
    v19 = sub_232CEA1A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_232B02000, v18, v19, "(TextUnderstandingManager) SearchAndOrganizationDocumentIngest is off.  Skipping triggerSpotlightFileUpdateNoArgs", v20, 2u);
      MEMORY[0x238393870](v20, -1, -1);
    }

    v14(v7, v4);
  }

  a2[2](a2);
  _Block_release(a2);
}

void sub_232C6FBCC()
{
  sub_232B35110();
  v2 = v0;
  v4 = v3;
  v5 = sub_232CE9A30();
  sub_232B48F0C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_232C79BD4();
  MEMORY[0x28223BE20](v9);
  sub_232C31C18(v10);
  v11 = sub_232CE9A00();
  v12 = sub_232CEA1A0();
  if (os_log_type_enabled(v11, v12))
  {
    sub_232BAE0AC();
    *swift_slowAlloc() = 0;
    sub_232C79D54(&dword_232B02000, v13, v14, "DocumentUnderstanding: triggerSpotlightFileUpdateNoArgs in manager called");
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v15 = *(v7 + 8);
  v15(v0, v5);
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    v16 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    sub_232BC1ECC();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24[4] = sub_232C7898C;
    v24[5] = v17;
    sub_232C52900();
    v24[1] = 1107296256;
    sub_232C79980();
    v24[2] = v18;
    v24[3] = &unk_284813FB0;
    v19 = _Block_copy(v24);

    [v16 addOperationWithBlock_];
    _Block_release(v19);
  }

  else
  {
    sub_232CE9A20();
    v21 = sub_232CE9A00();
    sub_232CEA1A0();
    sub_232C79CF8();
    if (os_log_type_enabled(v21, v22))
    {
      sub_232BAE0AC();
      v23 = swift_slowAlloc();
      sub_232BD7228(v23);
      sub_232C79C30(&dword_232B02000, v21, v2, "(TextUnderstandingManager) SearchAndOrganizationDocumentIngest is off.  Skipping triggerSpotlightFileUpdateNoArgs");
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v20 = (v15)(v1, v5);
  }

  v4(v20);
  sub_232B20A00();
}

uint64_t sub_232C6FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_232CE9A30();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C6FED0, 0, 0);
}

uint64_t sub_232C6FED0()
{
  sub_232B26C44();
  sub_232C79A88();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 80) = sub_232C6F564();

    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    sub_232C6EF9C(v3);

    return sub_232C6BDA8();
  }

  else
  {
    sub_232C79CD4(0);

    sub_232B26CF4();

    return v5();
  }
}

uint64_t sub_232C6FFB4()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232C700B4()
{
  sub_232C79DE0();
  sub_232B482F8();
  v2 = *(v0 + 96);

  sub_232CE9A20();
  v3 = v2;
  v4 = sub_232CE9A00();
  v5 = sub_232CEA1C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    sub_232BC1F80();
    v8 = sub_232C79C7C();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    sub_232C79B20();
    _os_log_impl(v11, v12, v13, v14, v1, 0xCu);
    sub_232B267AC(v8, &qword_27DDC6FD0, &unk_232CFA240);
    v15 = sub_232C79A24();
    MEMORY[0x238393870](v15);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  else
  {
  }

  v16 = (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  sub_232C79CD4(v16);

  sub_232B26CF4();
  sub_232C79DCC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void sub_232C70228(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_232C7029C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v7 = sub_232CE9A30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = aBlock - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  _Block_copy(a5);
  sub_232CE9A20();
  v15 = sub_232CE9A00();
  v16 = sub_232CEA1A0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_232B02000, v15, v16, "DocumentUnderstanding - Server addOrUpdateSearchableItems called", v17, 2u);
    MEMORY[0x238393870](v17, -1, -1);
  }

  v18 = *(v8 + 8);
  v18(v13, v7);
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    v19 = *(a4 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = sub_232C79978;
    v21[4] = v14;
    aBlock[4] = sub_232C7997C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232BB4000;
    aBlock[3] = &unk_284814388;
    v22 = _Block_copy(aBlock);

    [v19 addOperationWithBlock_];
    _Block_release(v22);
  }

  else
  {
    sub_232CE9A20();
    v23 = sub_232CE9A00();
    v24 = sub_232CEA1A0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_232B02000, v23, v24, "(TextUnderstandingManager) SearchAndOrganizationDocumentIngest is off.  Skipping addOrUpdateSearchableItems", v25, 2u);
      MEMORY[0x238393870](v25, -1, -1);
    }

    v18(v10, v7);
    a5[2](a5, 0);
  }

  _Block_release(a5);
}

void sub_232C705E8()
{
  sub_232B35110();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_232CE9A30();
  sub_232B48F0C();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_232C79BD4();
  MEMORY[0x28223BE20](v11);
  sub_232C31C18(v12);
  v13 = sub_232CE9A00();
  v14 = sub_232CEA1A0();
  if (os_log_type_enabled(v13, v14))
  {
    sub_232BAE0AC();
    *swift_slowAlloc() = 0;
    sub_232C79D54(&dword_232B02000, v15, v16, "DocumentUnderstanding - Server addOrUpdateSearchableItems called");
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v17 = *(v9 + 8);
  v17(v0, v7);
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    v18 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    sub_232BC1ECC();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v6;
    v20[4] = v4;
    v26[4] = sub_232C789DC;
    v26[5] = v20;
    sub_232C52900();
    v26[1] = 1107296256;
    sub_232C79980();
    v26[2] = v21;
    v26[3] = &unk_284814000;
    v22 = _Block_copy(v26);

    [v18 addOperationWithBlock_];
    _Block_release(v22);
  }

  else
  {
    sub_232CE9A20();
    v23 = sub_232CE9A00();
    sub_232CEA1A0();
    sub_232C79CF8();
    if (os_log_type_enabled(v23, v24))
    {
      sub_232BAE0AC();
      v25 = swift_slowAlloc();
      sub_232BD7228(v25);
      sub_232C79C30(&dword_232B02000, v23, v2, "(TextUnderstandingManager) SearchAndOrganizationDocumentIngest is off.  Skipping addOrUpdateSearchableItems");
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v17(v1, v7);
    v6(0);
  }

  sub_232B20A00();
}

void sub_232C70858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = dispatch_semaphore_create(0);
  v9 = sub_232CEA090();
  sub_232B12504(v7, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = v8;

  v13 = v8;
  sub_232B23FB4(0, 0, v7, &unk_232CFF930, v12);

  sub_232CEA280();
}

uint64_t sub_232C709BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](sub_232C709E0, 0, 0);
}

uint64_t sub_232C709E0()
{
  sub_232B26C44();
  sub_232C79A88();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 72) = sub_232C6F564();

    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    sub_232C6EF9C(v3);

    return sub_232C6BDA8();
  }

  else
  {
    (*(v0 + 48))();
    sub_232CEA290();
    sub_232B26CF4();

    return v5();
  }
}

uint64_t sub_232C70ACC()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232C70BCC()
{
  sub_232B26C44();
  (*(v0 + 48))(0);
  sub_232CEA290();
  sub_232B26CF4();

  return v1();
}

uint64_t sub_232C70C34()
{
  sub_232B26C7C();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  v3 = v1;
  v2(v1);

  sub_232CEA290();
  sub_232B26CF4();

  return v4();
}

void sub_232C70D94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_232CE8B20();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_232C70DF8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v39 = a1;
  v40 = a2;
  v8 = sub_232CE9A30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  _Block_copy(a5);
  sub_232CE9A20();
  v16 = sub_232CE9A00();
  v17 = sub_232CEA1A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = v9;
    v19 = v11;
    v20 = v8;
    v21 = a5;
    v22 = v15;
    v23 = a3;
    v24 = a4;
    v25 = v18;
    *v18 = 0;
    _os_log_impl(&dword_232B02000, v16, v17, "(TextUnderstandingManager) addSerializedDocument called", v18, 2u);
    v26 = v25;
    a4 = v24;
    a3 = v23;
    v15 = v22;
    a5 = v21;
    v8 = v20;
    v11 = v19;
    v9 = v38;
    MEMORY[0x238393870](v26, -1, -1);
  }

  v27 = *(v9 + 8);
  v27(v14, v8);
  sub_232CE9810();
  if ((MEMORY[0x238391520]() & 1) != 0 || a3 == 1)
  {
    v31 = *(a4 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v35 = v39;
    v34 = v40;
    v33[2] = v32;
    v33[3] = v35;
    v33[4] = v34;
    v33[5] = a3;
    v33[6] = sub_232C78F6C;
    v33[7] = v15;
    aBlock[4] = sub_232C79948;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232BB4000;
    aBlock[3] = &unk_284814310;
    v36 = _Block_copy(aBlock);
    sub_232B41B94(v35, v34);

    [v31 addOperationWithBlock_];
    _Block_release(v36);
  }

  else
  {
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_232B02000, v28, v29, "(TextUnderstandingManager) SearchAndOrganizationDocumentIngest is off, and document type is not messages.  Skipping addSerializedDocument", v30, 2u);
      MEMORY[0x238393870](v30, -1, -1);
    }

    v27(v11, v8);
    a5[2](a5, 0);
  }

  _Block_release(a5);
}

void sub_232C711A0()
{
  sub_232B35110();
  v38 = v1;
  v39 = v2;
  v4 = v3;
  v37 = v5;
  v7 = v6;
  v8 = sub_232CE9A30();
  sub_232B48F0C();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  sub_232C31C18(v15);
  v16 = sub_232CE9A00();
  v17 = sub_232CEA1A0();
  if (os_log_type_enabled(v16, v17))
  {
    sub_232BAE0AC();
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_232B02000, v16, v17, "(TextUnderstandingManager) addSerializedDocument called", v18, 2u);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v19 = *(v10 + 8);
  v19(v0, v8);
  sub_232CE9810();
  if ((MEMORY[0x238391520]() & 1) != 0 || v4 == 1)
  {
    v27 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
    sub_232BC1ECC();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v7;
    v30 = v38;
    v29[4] = v37;
    v29[5] = v4;
    v31 = v39;
    v29[6] = v30;
    v29[7] = v31;
    v40[4] = sub_232C789E8;
    v40[5] = v29;
    sub_232C52900();
    v40[1] = 1107296256;
    sub_232C79980();
    v40[2] = v32;
    v40[3] = &unk_284814050;
    v33 = _Block_copy(v40);
    v34 = sub_232B37B20();
    sub_232B41B94(v34, v35);

    [v27 addOperationWithBlock_];
    _Block_release(v33);
  }

  else
  {
    sub_232CE9A20();
    v20 = sub_232CE9A00();
    v21 = sub_232CEA1A0();
    if (sub_232C79B04(v21))
    {
      sub_232BAE0AC();
      v22 = swift_slowAlloc();
      *v22 = 0;
      sub_232C79B20();
      _os_log_impl(v23, v24, v25, v26, v22, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v19(v13, v8);
    v38(0);
  }

  sub_232B20A00();
}

void sub_232C71458(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = dispatch_semaphore_create(0);
  v15 = sub_232CEA090();
  sub_232B12504(v13, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;
  v18[9] = a6;
  v18[10] = v14;
  sub_232B41B94(a2, a3);

  v19 = v14;
  sub_232B23FB4(0, 0, v13, &unk_232CFF920, v18);

  sub_232CEA280();
}

uint64_t sub_232C715EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](sub_232C71620, 0, 0);
}

uint64_t sub_232C71620()
{
  sub_232B26C44();
  sub_232C79A88();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 96) = sub_232C6F564();

    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_232C71718;
    sub_232BC1EF8(*(v0 + 48));

    return sub_232C6CC14();
  }

  else
  {
    (*(v0 + 72))();
    sub_232CEA290();
    sub_232B26CF4();

    return v5();
  }
}

uint64_t sub_232C71718()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232C71818()
{
  sub_232B26C44();
  (*(v0 + 72))(0);
  sub_232CEA290();
  sub_232B26CF4();

  return v1();
}

uint64_t sub_232C71880()
{
  sub_232B26C7C();
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);

  v3 = v1;
  v2(v1);

  sub_232CEA290();
  sub_232B26CF4();

  return v4();
}

void sub_232C719CC()
{
  sub_232B35110();
  v2 = v1;
  v22 = v4;
  v23 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_232CE9A30();
  sub_232B48F0C();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_232C799AC(v13);
  v14 = sub_232CE9A00();
  v15 = sub_232CEA1A0();
  if (os_log_type_enabled(v14, v15))
  {
    sub_232BAE0AC();
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_232B02000, v14, v15, "(TextUnderstandingManager) foundInEventsResponseForSerializedDocument called", v16, 2u);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v11 + 8))(v0, v9);
  v17 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_foundInEventsQueue);
  sub_232BC1ECC();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v22;
  v19[4] = v2;
  v19[5] = v8;
  v19[6] = v6;
  v19[7] = v23;
  v24[4] = sub_232C78A00;
  v24[5] = v19;
  sub_232C52900();
  v24[1] = 1107296256;
  sub_232C79980();
  v24[2] = v20;
  v24[3] = &unk_2848140A0;
  v21 = _Block_copy(v24);

  sub_232B41B94(v8, v6);

  [v17 addOperationWithBlock_];
  _Block_release(v21);
  sub_232B20A00();
}

void sub_232C71BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = dispatch_semaphore_create(0);
  v15 = sub_232CEA090();
  sub_232B12504(v13, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;
  v18[9] = a6;
  v18[10] = v14;

  sub_232B41B94(a4, a5);
  v19 = v14;
  sub_232B23FB4(0, 0, v13, &unk_232CFF910, v18);

  sub_232CEA280();
}

uint64_t sub_232C71D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[94] = v11;
  v8[93] = v10;
  v8[92] = a8;
  v8[91] = a7;
  v8[90] = a6;
  v8[89] = a5;
  v8[88] = a4;
  return MEMORY[0x2822009F8](sub_232C71D8C, 0, 0);
}

uint64_t sub_232C7201C()
{
  sub_232B26C7C();
  v2 = *v1;
  sub_232B51338();
  *v4 = v3;
  v5 = *v1;
  sub_232BC1BAC();
  *v6 = v5;
  *(v8 + 800) = v7;
  *(v8 + 808) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_232C72144()
{
  sub_232C79B8C();
  v1 = v0[100];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
  sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult, (v0 + 8));
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity;
    sub_232B13F74(v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_detectedEventPolarity, (v0 + 11));
    v105 = *(v3 + v4);
    v5 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError;
    v6 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationIdError + v3, (v0 + 14));
    v7 = *&v5[v3];
    v8 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationId);
    sub_232BCA1AC(v6, (v0 + 17));
    v9 = v8[1];
    v102 = *v8;
    v10 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError;
    v11 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationNameError + v3, (v0 + 20));
    v12 = *&v10[v3];
    v13 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_reservationName);
    sub_232BCA1AC(v11, (v0 + 23));
    v14 = v13[1];
    v99 = *v13;
    v15 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError;
    v16 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressError + v3, (v0 + 26));
    v17 = *&v15[v3];
    v18 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddress);
    sub_232BCA1AC(v16, (v0 + 29));
    v19 = v18[1];
    v98 = *v18;
    v20 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents;
    sub_232B13F74(v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startAddressComponents, (v0 + 32));
    v21 = *(v3 + v20);

    if (v21)
    {

      v22 = v3;
      v23 = v7;

      v24 = v12;

      v25 = v17;
      sub_232BC2848(v21);
      v96 = v26;
    }

    else
    {
      v29 = v3;
      v30 = v7;

      v31 = v12;

      v32 = v17;
      v96 = 0;
    }

    v33 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError;
    v34 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressError + v3, (v0 + 35));
    v35 = *&v33[v3];
    v36 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddress);
    sub_232BCA1AC(v34, (v0 + 38));
    v94 = *v36;
    v111 = v36[1];
    v37 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents;
    sub_232B13F74(v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endAddressComponents, (v0 + 41));
    v38 = *(v3 + v37);
    v103 = v9;
    v104 = v7;
    v100 = v14;
    v101 = v12;
    v97 = v19;
    v95 = v35;

    if (v38)
    {

      v39 = v35;
      sub_232BC2848(v38);
      v89 = v40;
    }

    else
    {
      v41 = v35;
      v89 = 0;
    }

    v93 = v0[97];
    v91 = v0[100];
    v92 = v0[96];
    v90 = v0[89];
    v42 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError;
    v43 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlaceError + v3, (v0 + 44));
    v110 = *&v42[v3];
    v44 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startPlace);
    sub_232BCA1AC(v43, (v0 + 47));
    v88 = *v44;
    v109 = v44[1];
    v45 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError;
    v46 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlaceError + v3, (v0 + 50));
    v108 = *&v45[v3];
    v47 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endPlace);
    sub_232BCA1AC(v46, (v0 + 53));
    v87 = *v47;
    v107 = v47[1];
    v48 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError;
    v49 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDateError + v3, (v0 + 56));
    v106 = *&v48[v3];
    v50 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_startDate);
    sub_232BCA1AC(v49, (v0 + 59));
    v51 = v50[1];
    v86 = *v50;
    v52 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError;
    v53 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDateError + v3, (v0 + 62));
    v54 = *&v52[v3];
    v55 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_endDate);
    sub_232BCA1AC(v53, (v0 + 65));
    v56 = v55[1];
    v85 = *v55;
    v57 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError;
    v58 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelNameError + v3, (v0 + 68));
    v83 = *&v57[v3];
    v59 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_hotelName);
    sub_232BCA1AC(v58, (v0 + 71));
    v60 = v59[1];
    v84 = *v59;
    v61 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError;
    v62 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestNameError + v3, (v0 + 74));
    v63 = *&v61[v3];
    v64 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_guestName);
    sub_232BCA1AC(v62, (v0 + 77));
    v65 = v64[1];
    v82 = *v64;
    v66 = OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError;
    v67 = sub_232B13F74(OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieNameError + v3, (v0 + 80));
    v81 = *&v66[v3];
    v68 = (v3 + OBJC_IVAR____TtC21DocumentUnderstanding20DUFoundInEventResult_movieName);
    sub_232BCA1AC(v67, (v0 + 83));
    v79 = v68[1];
    v80 = *v68;
    objc_allocWithZone(MEMORY[0x277D06968]);

    v69 = v110;

    v70 = v108;

    v71 = v106;

    v72 = v54;

    v73 = v83;

    v74 = v63;

    v75 = v81;
    v28 = sub_232C77D9C(v105, v104, v102, v103, v101, v99, v100, v17, v98, v97, v96, v95, v94, v111, v89, v110, v88, v109, v108, v87, v107, v106, v86, v51, v54, v85, v56, v83, v84, v60, v63, v82, v65, v81, v80, v79);
    v90(v28, 0);

    v27 = v93;
  }

  else
  {
    v27 = v0[100];
    v3 = v0[97];
    v28 = v0[96];
  }

  v76 = v0[95];
  sub_232CEA290();

  sub_232B26CF4();
  sub_232C6EFE4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_232C72748()
{
  sub_232B26C7C();
  v1 = *(v0 + 768);

  v2 = *(v0 + 808);
  v3 = *(v0 + 712);
  v4 = [objc_allocWithZone(MEMORY[0x277D06968]) init];
  v5 = v2;
  v3(v4, v2);

  v6 = *(v0 + 760);
  sub_232CEA290();

  sub_232B26CF4();

  return v7();
}

void sub_232C728F4()
{
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v1);
  sub_232C799AC(v2);
  v3 = sub_232CE9A00();
  v4 = sub_232CEA1A0();
  if (os_log_type_enabled(v3, v4))
  {
    sub_232BAE0AC();
    v5 = swift_slowAlloc();
    sub_232C31D84(v5);
    sub_232C79C48();
    _os_log_impl(v6, v7, v8, v9, v10, v11);
    v12 = sub_232C79A24();
    MEMORY[0x238393870](v12);
  }

  v13 = sub_232BC1E48();
  v14(v13);
  v15 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue);
  sub_232BC1ECC();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_232C78A18;
  v24 = v16;
  sub_232C79AE4();
  v20 = 1107296256;
  sub_232C79980();
  v21 = v17;
  v22 = &unk_2848140C8;
  v18 = _Block_copy(aBlock);

  [v15 addOperationWithBlock_];
  _Block_release(v18);
}

void sub_232C72A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v7 = sub_232B2D120(v6);
  MEMORY[0x28223BE20](v7);
  v8 = sub_232C79D04();
  v9 = dispatch_semaphore_create(v8);
  v10 = sub_232CEA090();
  sub_232C79D94(v10);
  sub_232BC1ECC();
  v11 = swift_allocObject();
  sub_232B13F74(a1 + 16, v17);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_232C79B6C();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = v9;
  v14 = v9;
  v15 = sub_232C79C54();
  sub_232B23FB4(v15, v16, v3, a3, v13);

  sub_232CEA280();
}

uint64_t sub_232C72B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_232CE9A30();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C72C5C, 0, 0);
}

uint64_t sub_232C72C5C()
{
  sub_232B26C7C();
  sub_232C79A88();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_232C6F598();

    v4 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_poemOnBoardHandler];
    v5 = *&v3[OBJC_IVAR____TtC21DocumentUnderstanding13DUBulkUpdater_poemOnBoardHandler];
    v0[10] = v5;
    v0[11] = *(v4 + 1);

    v6 = v5;

    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    sub_232C6EF9C(v7);

    return sub_232C3DCC0();
  }

  else
  {
    sub_232C79CD4(0);

    sub_232B26CF4();

    return v9();
  }
}

uint64_t sub_232C72D80()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232C72E88()
{
  sub_232B26C44();
  sub_232C79CD4(v0);

  sub_232B26CF4();

  return v1();
}

uint64_t sub_232C72EE4()
{
  sub_232C79DE0();
  sub_232B482F8();
  v2 = *(v0 + 104);

  sub_232CE9A20();
  v3 = v2;
  v4 = sub_232CE9A00();
  v5 = sub_232CEA1C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    sub_232BC1F80();
    v8 = sub_232C79C7C();
    *v1 = 138412290;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    sub_232C79B20();
    _os_log_impl(v11, v12, v13, v14, v1, 0xCu);
    sub_232B267AC(v8, &qword_27DDC6FD0, &unk_232CFA240);
    v15 = sub_232C79A24();
    MEMORY[0x238393870](v15);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  else
  {
  }

  v16 = (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  sub_232C79CD4(v16);

  sub_232B26CF4();
  sub_232C79DCC();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void sub_232C73098()
{
  v1 = v0;
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v2);
  sub_232C799AC(v3);
  v4 = sub_232CE9A00();
  v5 = sub_232CEA1A0();
  if (os_log_type_enabled(v4, v5))
  {
    sub_232BAE0AC();
    v6 = swift_slowAlloc();
    sub_232C31D84(v6);
    sub_232C79C48();
    _os_log_impl(v7, v8, v9, v10, v11, v12);
    v13 = sub_232C79A24();
    MEMORY[0x238393870](v13);
  }

  v14 = sub_232BC1E48();
  v15(v14);
  v16 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding24TextUnderstandingManager_queue];
  sub_232BC1ECC();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  v25 = sub_232C78A50;
  v26 = v17;
  sub_232C79AE4();
  v22 = 1107296256;
  sub_232C79980();
  v23 = v18;
  v24 = &unk_284814118;
  v19 = _Block_copy(aBlock);
  v20 = v1;

  [v16 addOperationWithBlock_];
  _Block_release(v19);
}

void sub_232C7322C()
{
  v0 = sub_232C6F598();
  sub_232C6B70C();
}

uint64_t sub_232C732C0(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = *MEMORY[0x277D06510], , sub_232BA5FEC(), sub_232B2053C(), sub_232BECA40(), , !v2))
  {

    v2 = 0xE700000000000000;
    v1 = 0x6E776F6E6B6E75;
  }

  v3 = sub_232BE0738(v1, v2);
  if (v3 == 14)
  {
    return 0;
  }

  return sub_232BE0724(v3);
}

uint64_t static TextUnderstandingManager._extractPersonalID(withLines:pid:)()
{
  sub_232B26C44();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  sub_232B2D120(v4);
  v1[28] = sub_232B27FCC();
  v5 = sub_232CE9A30();
  v1[29] = v5;
  sub_232B27FBC(v5);
  v1[30] = v6;
  v1[31] = sub_232C79E3C();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232C734EC()
{
  sub_232C79B8C();
  v88 = v0;
  type metadata accessor for DUModelRunner();
  static DUModelRunner.isLLMAvailable(for:)();
  if ((v1 & 1) == 0)
  {
    sub_232CE9A20();
    v27 = sub_232CE9A00();
    v28 = sub_232CEA1C0();
    if (sub_232C6F000(v28))
    {
      sub_232BAE0AC();
      v29 = swift_slowAlloc();
      sub_232BD4280(v29);
      sub_232C79A04();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v35 = sub_232C79A54();
    v36(v35);
    sub_232CE9D50();
    sub_232BECA40();
    sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_232CF6460;
    *(inited + 32) = sub_232CE9D50();
    *(inited + 40) = v38;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000020;
    *(inited + 56) = 0x8000000232D0BCB0;
    v39 = sub_232CE9C60();
    v40 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v41 = sub_232C79A64();
    v43 = 1;
    goto LABEL_14;
  }

  static DUModelRunner.isModelEnabled(modelType:preferredLanguages:)();
  if ((v2 & 1) == 0)
  {
    sub_232CE9A20();
    v44 = sub_232CE9A00();
    v45 = sub_232CEA1C0();
    if (sub_232C6F000(v45))
    {
      sub_232BAE0AC();
      v46 = swift_slowAlloc();
      sub_232BD4280(v46);
      sub_232C79A04();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v52 = sub_232C79A54();
    v53(v52);
    sub_232CE9D50();
    sub_232BECA40();
    sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
    v54 = swift_initStackObject();
    *(v54 + 16) = xmmword_232CF6460;
    *(v54 + 32) = sub_232CE9D50();
    *(v54 + 40) = v55;
    *(v54 + 72) = MEMORY[0x277D837D0];
    *(v54 + 48) = 0xD000000000000027;
    *(v54 + 56) = 0x8000000232D0BCE0;
    v39 = sub_232CE9C60();
    v56 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v41 = sub_232C79A64();
    v43 = 0;
LABEL_14:
    sub_232BC8980(v41, v42, v43, v39);
LABEL_18:
    sub_232C79D74(v0[37]);

    v67 = sub_232C79C54();

    return v68(v67);
  }

  v3 = v0[25];
  type metadata accessor for DUIDClassificationImplementation();
  v0[22] = v3;
  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  sub_232B27E88();
  v4 = sub_232C79B98();
  LOBYTE(v3) = static DUIDClassificationImplementation.textLengthGate(for:minLength:maxLength:)(v4, v5, 50, 1500);
  v7 = v6;

  if ((v3 & 1) == 0)
  {
    sub_232CE9A20();
    v57 = sub_232CE9A00();
    v58 = sub_232CEA1E0();
    if (sub_232C6F000(v58))
    {
      v59 = sub_232BC1F80();
      *v59 = 134217984;
      *(v59 + 4) = v7;
      sub_232C79A04();
      _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    goto LABEL_17;
  }

  v0[23] = v0[25];
  v8 = sub_232C79B98();
  v10 = static DUIDClassificationImplementation.isIDDocument(for:labelKey:labelThreshold:)(v8, v9, 0x6576697469736F70, 0xE800000000000000, 0.5);
  v12 = v11;
  v14 = v13;

  if (v10 == 2)
  {
    sub_232CE9A20();
    v15 = sub_232CE9A00();
    v16 = sub_232CEA1C0();
    if (os_log_type_enabled(v15, v16))
    {
      sub_232BAE0AC();
      v17 = swift_slowAlloc();
      sub_232C31D84(v17);
      sub_232C79C48();
      _os_log_impl(v18, v19, v20, v21, v22, v23);
      v24 = sub_232C79A24();
      MEMORY[0x238393870](v24);
    }

    v25 = sub_232BA5FEC();
    v26(v25);
    goto LABEL_18;
  }

  if ((v10 & 1) == 0)
  {
    sub_232CE9A20();
    v57 = sub_232CE9A00();
    v79 = sub_232CEA1E0();
    if (sub_232C6F000(v79))
    {
      v80 = sub_232BC1F80();
      *v80 = 134217984;
      v81 = v12;
      if (v14)
      {
        v81 = -1.0;
      }

      *(v80 + 4) = v81;
      sub_232C79A04();
      _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

LABEL_17:

    v65 = sub_232C79A54();
    v66(v65);
    goto LABEL_18;
  }

  v70 = v0[28];
  v72 = v0[25];
  v71 = v0[26];
  v87 = 2;
  v0[38] = DUModelRunner.__allocating_init(extractionCategory:pid:)(&v87, v71, 0);
  v0[24] = v72;
  sub_232C79B98();
  v0[39] = v73;
  v74 = sub_232CE8E10();
  sub_232B12504(v70, 1, 1, v74);
  v75 = swift_task_alloc();
  v0[40] = v75;
  *v75 = v0;
  v75[1] = sub_232C73B54;
  v76 = sub_232BC1E48();

  return sub_232BDE050(v76, v77, v78);
}

uint64_t sub_232C73B54()
{
  sub_232B26C7C();
  sub_232B26C70();
  sub_232BC1BAC();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v9 + 328) = v8;
  *(v9 + 336) = v0;

  sub_232B267AC(v5, &qword_27DDC7398, &unk_232CF9070);

  sub_232B48304();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_232C73CBC()
{
  sub_232C79B8C();
  v1 = *(v0 + 328);
  v2 = v1;
  if (*(v1 + 16) >= 2uLL)
  {
    sub_232CE9A20();
    v3 = sub_232CE9A00();
    v4 = sub_232CEA1C0();
    if (sub_232C6F000(v4))
    {
      sub_232BAE0AC();
      v5 = swift_slowAlloc();
      sub_232BD4280(v5);
      sub_232C79A04();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v11 = sub_232BA5FEC();
    v12(v11);
    v2 = *(v0 + 328);
  }

  sub_232C732C0(v2);
  if (*(v1 + 16))
  {
  }

  sub_232C6EFE4();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_232C73E3C()
{
  sub_232BAE1F8();
  v2 = *(v0 + 336);
  sub_232CE9A20();
  v3 = v2;
  v4 = sub_232CE9A00();
  v5 = sub_232CEA1C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 336);
    sub_232BC1F80();
    v7 = sub_232C79C7C();
    *v1 = 138412290;
    v8 = v6;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_232B02000, v4, v5, "(TextUnderstandingManager) extractPersonalID failed: %@", v1, 0xCu);
    sub_232B267AC(v7, &qword_27DDC6FD0, &unk_232CFA240);
    v10 = sub_232C79A24();
    MEMORY[0x238393870](v10);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  v11 = sub_232C79BF0();
  v12(v11);
  sub_232C79D74(*(v0 + 296));

  v13 = sub_232C79C54();

  return v14(v13);
}

uint64_t sub_232C74064(uint64_t a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = _Block_copy(aBlock);
  v4[3] = sub_232CE9FE0();
  swift_getObjCClassMetadata();
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_232C7413C;

  return static TextUnderstandingManager._extractPersonalID(withLines:pid:)();
}

uint64_t sub_232C7413C()
{
  sub_232B482F8();
  v2 = v1;
  v4 = v3;
  sub_232B26C70();
  v6 = v5;
  sub_232B51338();
  *v7 = v6;
  v8 = *v0;
  sub_232B26B3C();
  *v9 = v8;

  if (v4)
  {
    type metadata accessor for DUExtractionAttributeKey(0, v10, v11, v12);
    sub_232C78F14(v13, v14, v15, v16);
    v17 = sub_232CE9C20();
    if (v2)
    {
LABEL_3:
      v18 = sub_232CE8B20();
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  v19 = *(v6 + 16);
  v20 = sub_232B37B20();
  v21(v20);

  _Block_release(v19);

  sub_232B26CF4();

  return v22();
}

void sub_232C742D8()
{
  sub_232B35110();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  ObjectType = swift_getObjectType();
  v9 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v10 = sub_232B2D120(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_232CE9A30();
  sub_232B48F0C();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_232C799AC(v17);
  v18 = sub_232CE9A00();
  v19 = sub_232CEA1A0();
  if (os_log_type_enabled(v18, v19))
  {
    sub_232BAE0AC();
    v20 = swift_slowAlloc();
    v26 = v8;
    *v20 = 0;
    _os_log_impl(&dword_232B02000, v18, v19, "(TextUnderstandingManager) extractPersonalID called", v20, 2u);
    v8 = v26;
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v15 + 8))(v0, v13);
  v21 = sub_232CEA090();
  sub_232B12504(v12, 1, 1, v21);
  sub_232C79CEC();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v8;
  v22[5] = v6;
  v22[6] = v4;
  v22[7] = v2;
  v22[8] = ObjectType;

  v23 = sub_232C79C54();
  sub_232B23FB4(v23, v24, v12, v25, v22);

  sub_232B20A00();
}

uint64_t sub_232C744E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_232C74590;

  return static TextUnderstandingManager._extractPersonalID(withLines:pid:)();
}

uint64_t sub_232C74590()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  *v2 = *v0;
  v1[9] = v3;

  sub_232B48304();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_232C747E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    type metadata accessor for DUExtractionAttributeKey(0, a2, a3, a4);
    sub_232C78F14(v8, v9, v10, v11);
    v7 = sub_232CE9C20();
  }

  if (a3)
  {
    v12 = sub_232CE8B20();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a4 + 16))(a4, v7, a2);
}

uint64_t static TextUnderstandingManager._extractEvents(document:documentType:onBehalfOfPID:)()
{
  sub_232B26C44();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v5 = sub_232CE9A30();
  v1[36] = v5;
  sub_232B27FBC(v5);
  v1[37] = v6;
  v1[38] = sub_232C79E3C();
  v1[39] = swift_task_alloc();
  v7 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v7);
  v1[40] = sub_232B27FCC();
  v8 = type metadata accessor for DULLMInput(0);
  v1[41] = v8;
  sub_232B2D120(v8);
  v1[42] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C749B4()
{
  v1 = sub_232B591FC();
  v0[43] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text);
    sub_232B13F74(v1 + OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text, (v0 + 2));
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;
      v6 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v6 = *v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {
        v7 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline];
        sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_headline], (v0 + 5));
        v54 = *v7;
        v55 = *(v7 + 1);
        v8 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData;
        sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentHTMLData], (v0 + 8));
        v9 = *&v2[v8];
        if (v9)
        {
          v10 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
          sub_232B13F74(v9 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, (v0 + 11));
          v11 = *(v9 + v10);
          if (v11)
          {
            v12 = (v11 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName);
            sub_232B13F74(v11 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName, (v0 + 14));
            v52 = v12[1];
            v53 = *v12;
          }

          else
          {
            v52 = 0;
            v53 = 0;
          }

          v40 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
          sub_232B13F74(v9 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, (v0 + 17));
          v41 = *(v9 + v40);
          if (v41)
          {
            v42 = (v41 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail);
            sub_232B13F74(v41 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail, (v0 + 20));
            v38 = *v42;
            v39 = v42[1];
          }

          else
          {
            v38 = 0;
            v39 = 0;
          }
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v52 = 0;
          v53 = 0;
        }

        v43 = v0[40];
        v44 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated;
        sub_232B13F74(&v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_dateCreated], (v0 + 23));
        sub_232B26744(&v2[v44], v43, &qword_27DDC6A80, &qword_232CF6D30);
        if (v9)
        {
          v45 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
          sub_232B13F74(v9 + OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, (v0 + 26));
          v46 = *(v9 + v45);
          if (v46)
          {
            v47 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
            sub_232B13F74(v46 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers, (v0 + 29));
            v46 = *(v46 + v47);
          }
        }

        else
        {
          v46 = 0;
        }

        v49 = v0[41];
        v48 = v0[42];
        v50 = v0[40];
        *v48 = v0[33];
        v48[1] = v5;
        v48[2] = v4;
        v48[3] = v54;
        v48[4] = v55;
        v48[5] = v53;
        v48[6] = v52;
        v48[7] = v38;
        v48[8] = v39;
        sub_232BA4BBC(v50, v48 + *(v49 + 36));
        *(v48 + *(v49 + 40)) = v46;

        v51 = swift_task_alloc();
        v0[44] = v51;
        *v51 = v0;
        v51[1] = sub_232C74E14;
        sub_232BC1EF8(v0[42]);

        return static TextUnderstandingManager._extractEvents(input:onBehalfOfPID:)();
      }
    }

    sub_232CE9A20();
    v13 = sub_232CE9A00();
    v14 = sub_232CEA1C0();
    if (sub_232C79B04(v14))
    {
      sub_232BAE0AC();
      v15 = swift_slowAlloc();
      *v15 = 0;
      sub_232C79B20();
      _os_log_impl(v16, v17, v18, v19, v15, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v20 = sub_232C79BF0();
    v21(v20);
    sub_232C78B18();
    sub_232B4ACD4();
    v22 = swift_allocError();
    sub_232C79B2C(v22, v23);
  }

  else
  {
    sub_232CE9A20();
    v24 = sub_232CE9A00();
    v25 = sub_232CEA1C0();
    if (sub_232C6F000(v25))
    {
      sub_232BAE0AC();
      v26 = swift_slowAlloc();
      sub_232BD4280(v26);
      sub_232C79A04();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v32 = sub_232C79A54();
    v33(v32);
    sub_232C78B18();
    sub_232B4ACD4();
    v34 = swift_allocError();
    sub_232C79B2C(v34, v35);
  }

  sub_232B26CF4();

  return v36();
}

uint64_t sub_232C74E14(uint64_t a1)
{
  sub_232C79DE0();
  sub_232B482F8();
  v4 = v3;
  v5 = *v2;
  v6 = *v2;
  sub_232B26B3C();
  *v7 = v6;
  *v7 = *v2;
  *(v6 + 360) = v1;

  v8 = *(v5 + 336);
  if (!v1)
  {
    *(v6 + 368) = v4;
  }

  sub_232C78B6C(v8);
  sub_232B48304();
  sub_232C79DCC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C74F44()
{
  sub_232B26C7C();

  sub_232B51374();
  v2 = *(v0 + 368);

  return v1(v2);
}

uint64_t sub_232C74FD4()
{
  sub_232B26C7C();

  sub_232B26CF4();

  return v1();
}

uint64_t static TextUnderstandingManager._extractEvents(input:onBehalfOfPID:)()
{
  sub_232B26C7C();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_232C7510C;

  return static TextUnderstandingManager._extractEventsAndOrders(input:onBehalfOfPID:)();
}

uint64_t sub_232C7510C()
{
  sub_232B26C7C();
  v3 = v2;
  sub_232B26C70();
  v5 = v4;
  sub_232B51338();
  *v6 = v5;
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v5 + 32) = v0;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    sub_232B48304();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_232C75240()
{
  sub_232B26C7C();
  v1 = *(v0 + 32);
  v2 = static TextUnderstandingManager.filterOrderExtractions(extractions:)(*(v0 + 40));

  sub_232B51374();
  if (!v1)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t sub_232C752E4(void *a1, int a2, int a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v7 = a1;
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_232C753C4;

  return static TextUnderstandingManager._extractEvents(document:documentType:onBehalfOfPID:)();
}

uint64_t sub_232C753C4()
{
  sub_232B26C7C();
  v2 = v0;
  sub_232B26C70();
  v4 = v3;
  sub_232B51338();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_232B26B3C();
  *v9 = v8;

  if (v2)
  {
    v10 = sub_232CE8B20();

    v11 = v10;
  }

  else
  {
    sub_232B124A8(&qword_27DDC6C58, &qword_232CF89A0);
    v12 = sub_232CE9FD0();

    v11 = v12;
  }

  v13 = *(v4 + 24);
  v14 = sub_232BC1E48();
  v15(v14);

  _Block_release(v13);
  sub_232B26CF4();

  return v16();
}

uint64_t sub_232C75540()
{
  v0 = sub_232CE9A30();
  sub_232B48F0C();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232B2053C();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    if (v6 != sub_232CE9D50() || v9 != v10)
    {
      v12 = sub_232CEA750();

      if (v12)
      {
LABEL_16:

        LOBYTE(v0) = 1;
        return v0 & 1;
      }

      if (v8 != sub_232CE9D50() || v9 != v13)
      {
        LOBYTE(v0) = sub_232CEA750();

        return v0 & 1;
      }
    }

    goto LABEL_16;
  }

  sub_232CE9A20();
  v15 = sub_232CE9A00();
  v16 = sub_232CEA1C0();
  if (os_log_type_enabled(v15, v16))
  {
    sub_232BAE0AC();
    v17 = swift_slowAlloc();
    sub_232C31D84(v17);
    sub_232C79C48();
    _os_log_impl(v18, v19, v20, v21, v22, v23);
    v24 = sub_232C79A24();
    MEMORY[0x238393870](v24);
  }

  (*(v2 + 8))(v5, v0);
  sub_232C78B18();
  sub_232B4ACD4();
  swift_allocError();
  *v25 = 2;
  swift_willThrow();
  return v0 & 1;
}

uint64_t static TextUnderstandingManager.filterOrderExtractions(extractions:)(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v2)
    {
      return v5;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_16;
    }

    v6 = *(v4 + 8 * v2);

    v7 = sub_232C75540();
    if (v1)
    {

      return v5;
    }

    if (v7)
    {

      ++v2;
    }

    else
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_232B64CA8(0, *(v5 + 16) + 1, 1);
      }

      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        result = sub_232B64CA8((v8 > 1), v9 + 1, 1);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v6;
      ++v2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t static TextUnderstandingManager._extractEventsAndOrders(input:onBehalfOfPID:)()
{
  sub_232B26C44();
  *(v0 + 264) = v1;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  v4 = sub_232CE9A30();
  *(v0 + 152) = v4;
  sub_232B27FBC(v4);
  *(v0 + 160) = v5;
  *(v0 + 168) = sub_232C79E3C();
  *(v0 + 176) = swift_task_alloc();
  *(v0 + 184) = swift_task_alloc();
  *(v0 + 192) = swift_task_alloc();
  *(v0 + 200) = swift_task_alloc();
  *(v0 + 208) = swift_task_alloc();
  *(v0 + 216) = swift_task_alloc();
  sub_232B48304();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232C75A78()
{
  sub_232C79B8C();
  type metadata accessor for DUModelRunner();
  static DUModelRunner.isLLMAvailable(for:)();
  if (v1)
  {
    static DUModelRunner.isModelEnabled(modelType:preferredLanguages:)();
    if (v2)
    {
      v3 = v0[17];
      type metadata accessor for DUFoundInEventClassificationImplementation(0);
      swift_allocObject();
      v0[28] = DUFoundInEventClassificationImplementation.init()();
      v4 = *(v3 + 32);
      type metadata accessor for DULLMInput(0);
      sub_232C79A14();
      v9 = sub_232BABB6C(v5, v6, v7, v8);
      v0[29] = v9;
      v22 = v9;
      v23 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
      sub_232B13F74(&v9[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate], (v0 + 2));
      v24 = *&v22[v23];
      if (v24 && [v24 BOOLValue])
      {
        sub_232CE9A20();
        v25 = sub_232CE9A00();
        v26 = sub_232CEA1E0();
        if (sub_232C6F000(v26))
        {
          sub_232BAE0AC();
          v27 = swift_slowAlloc();
          sub_232BD4280(v27);
          sub_232C79A04();
          _os_log_impl(v28, v29, v30, v31, v32, 2u);
          sub_232B4ACF0();
          MEMORY[0x238393870]();
        }

        v33 = sub_232C79A54();
        v34(v33);
        type metadata accessor for DUFoundInEventLLMImplementation();
        v35 = swift_task_alloc();
        v0[30] = v35;
        *v35 = v0;
        v35[1] = sub_232C76204;
        v36 = sub_232BC1EF8(v0[17]);

        return sub_232BB6A2C(v36, v37, v38);
      }

      v40 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass;
      sub_232B13F74(&v22[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass], (v0 + 5));
      v41 = *&v22[v40];
      if (v41)
      {
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v42 = v41;
        v43 = sub_232C79E24();
        v44 = sub_232C79BB8(v43);

        if (v44)
        {
          sub_232CE9A20();
          v45 = sub_232CE9A00();
          v46 = sub_232CEA1E0();
          if (sub_232C79B04(v46))
          {
            sub_232BAE0AC();
            v47 = swift_slowAlloc();
            sub_232BD7228(v47);
            sub_232C79B20();
            sub_232C79C30(v48, v49, v50, v51);
            sub_232B4ACF0();
            MEMORY[0x238393870]();
          }

          v52 = sub_232C79B4C();
          v53(v52);
          sub_232BB7B64();
          sub_232B4ACD4();
          v54 = swift_allocError();
          v56 = xmmword_232CFF6B0;
LABEL_39:
          *v55 = v56;
          sub_232C79C60(v54, v55);

LABEL_44:

          goto LABEL_45;
        }
      }

      v57 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale;
      sub_232B13F74(&v22[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale], (v0 + 8));
      v58 = *&v22[v57];
      if (v58)
      {
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v59 = v58;
        v60 = sub_232C79E24();
        v61 = sub_232C79BB8(v60);

        if (v61)
        {
          sub_232CE9A20();
          v62 = sub_232CE9A00();
          v63 = sub_232CEA1E0();
          if (sub_232C79B04(v63))
          {
            sub_232BAE0AC();
            v64 = swift_slowAlloc();
            sub_232BD7228(v64);
            sub_232C79B20();
            sub_232C79C30(v65, v66, v67, v68);
            sub_232B4ACF0();
            MEMORY[0x238393870]();
          }

          v69 = sub_232C79B4C();
          v70(v69);
          sub_232BB7B64();
          sub_232B4ACD4();
          v54 = swift_allocError();
          v56 = xmmword_232CFF6C0;
          goto LABEL_39;
        }
      }

      v71 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent;
      sub_232B13F74(&v22[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent], (v0 + 11));
      v72 = *&v22[v71];
      if (v72)
      {
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v73 = v72;
        v74 = sub_232C79E24();
        v75 = sub_232C79BB8(v74);

        if (v75)
        {
          sub_232CE9A20();
          v76 = sub_232CE9A00();
          v77 = sub_232CEA1E0();
          if (sub_232C79B04(v77))
          {
            sub_232BAE0AC();
            v78 = swift_slowAlloc();
            sub_232BD7228(v78);
            sub_232C79B20();
            sub_232C79C30(v79, v80, v81, v82);
            sub_232B4ACF0();
            MEMORY[0x238393870]();
          }

          v83 = sub_232C79B4C();
          v84(v83);
          sub_232BB7B64();
          sub_232B4ACD4();
          v54 = swift_allocError();
          v56 = xmmword_232CFF6D0;
          goto LABEL_39;
        }
      }

      v85 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors;
      sub_232B13F74(&v22[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors], (v0 + 14));
      v86 = *&v22[v85];
      if (v86)
      {
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v87 = v86;
        v88 = sub_232C79E24();
        v89 = sub_232C79BB8(v88);

        if (v89)
        {
          sub_232CE9A20();
          v90 = sub_232CE9A00();
          v91 = sub_232CEA1E0();
          if (sub_232C79B04(v91))
          {
            sub_232BAE0AC();
            v92 = swift_slowAlloc();
            sub_232BD7228(v92);
            sub_232C79B20();
            sub_232C79C30(v93, v94, v95, v96);
            sub_232B4ACF0();
            MEMORY[0x238393870]();
          }

          v97 = sub_232C79B4C();
          v98(v97);
          sub_232BB7B64();
          sub_232B4ACD4();
          v54 = swift_allocError();
          v56 = xmmword_232CFF6E0;
          goto LABEL_39;
        }
      }

      sub_232CE9A20();
      v99 = sub_232CE9A00();
      v100 = sub_232CEA1E0();
      if (sub_232C79B04(v100))
      {
        sub_232BAE0AC();
        v101 = swift_slowAlloc();
        sub_232C31D84(v101);
        sub_232C79B20();
        sub_232C79C48();
        _os_log_impl(v102, v103, v104, v105, v106, v107);
        v108 = sub_232C79A24();
        MEMORY[0x238393870](v108);
      }

      v109 = v0[22];
      v110 = v0[19];
      v111 = v0[20];

      (*(v111 + 8))(v109, v110);
      sub_232BB7B64();
      sub_232B4ACD4();
      v112 = swift_allocError();
      *v113 = xmmword_232CFF6F0;
      sub_232C79C60(v112, v113);
      goto LABEL_44;
    }

    sub_232BB7B64();
    sub_232B4ACD4();
    v20 = swift_allocError();
    *v21 = 0;
    v21[1] = 0;
  }

  else
  {
    sub_232CE9A20();
    v10 = sub_232CE9A00();
    v11 = sub_232CEA1C0();
    if (sub_232C6F000(v11))
    {
      sub_232BAE0AC();
      v12 = swift_slowAlloc();
      sub_232BD4280(v12);
      sub_232C79A04();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v18 = sub_232C79A54();
    v19(v18);
    sub_232BB7B64();
    sub_232B4ACD4();
    v20 = swift_allocError();
    *v21 = xmmword_232CFF6A0;
  }

  sub_232C79C60(v20, v21);
LABEL_45:
  sub_232C79D34();

  sub_232B26CF4();

  return v114();
}