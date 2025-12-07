void sub_1B219C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1B211F62C();
  a25 = v27;
  a26 = v28;
  if (!*(v29 + 16))
  {
    goto LABEL_4;
  }

  sub_1B212420C();
  sub_1B219E06C();
  sub_1B21150B8();
  sub_1B21A0ED0(v30, v31, v32, v33);
  sub_1B2111980();
  sub_1B21156C4();
  if (!v34)
  {
    __break(1u);
LABEL_4:
    v26 = MEMORY[0x1E69E7CC0];
  }

  a10 = v26;
  sub_1B219E4D4(&a10, sub_1B21A155C, MEMORY[0x1E69E6530], sub_1B224B140);
  sub_1B2121F6C();
}

void sub_1B219C550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1B211F62C();
  a25 = v27;
  a26 = v28;
  if (!*(v29 + 16))
  {
    goto LABEL_4;
  }

  sub_1B212420C();
  sub_1B219E06C();
  sub_1B21150B8();
  sub_1B21A0ED0(v30, v31, v32, v33);
  sub_1B2111980();
  sub_1B21156C4();
  if (!v34)
  {
    __break(1u);
LABEL_4:
    v26 = MEMORY[0x1E69E7CC0];
  }

  a10 = v26;
  sub_1B219E4D4(&a10, sub_1B21A15B8, MEMORY[0x1E69E7360], sub_1B224B140);
  sub_1B2121F6C();
}

void sub_1B219C61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B211F62C();
  if (v11[2])
  {
    v10 = v11;
    sub_1B212420C();
    sub_1B2140078();
    sub_1B21150B8();
    sub_1B21A0FB8(v12, v13, v14, v15);
    sub_1B2111980();
    sub_1B21156C4();
    if (!v16)
    {
      __break(1u);
    }
  }

  sub_1B214406C();
  sub_1B219E560(v17);
  if (v10)
  {

    __break(1u);
  }

  else
  {
    sub_1B2121F6C();
  }
}

void sub_1B219C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B211F62C();
  if (v11[2])
  {
    v10 = v11;
    sub_1B212420C();
    sub_1B2140078();
    sub_1B21150B8();
    sub_1B21A1288(v12, v13, v14, v15);
    sub_1B2111980();
    sub_1B21156C4();
    if (!v16)
    {
      __break(1u);
    }
  }

  sub_1B214406C();
  sub_1B219E5CC(v17);
  if (v10)
  {

    __break(1u);
  }

  else
  {
    sub_1B2121F6C();
  }
}

void sub_1B219C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B211F62C();
  if (v11[2])
  {
    v10 = v11;
    sub_1B212420C();
    sub_1B2140078();
    sub_1B21150B8();
    sub_1B21400DC();
    sub_1B2111980();
    sub_1B21156C4();
    if (!v12)
    {
      __break(1u);
    }
  }

  sub_1B214406C();
  sub_1B219E560(v13);
  if (v10)
  {

    __break(1u);
  }

  else
  {
    sub_1B2121F6C();
  }
}

void FTS5.database(_:didCreate:using:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 64) == 1)
  {

    sub_1B2113B50();
    Database.primaryKey(_:)();
    if (v4)
    {
      sub_1B2113B50();
      sub_1B213CB6C();
      sub_1B219DF24(v7, v8, v9, v10, v11);
      return;
    }

    v116 = a4;
    v119 = a3;
    if (v125)
    {
      v112 = 0x6469776F72;
      if (v125 == 1)
      {
        sub_1B21424A0(v123, v124, 1u);
      }

      v114 = 0xE500000000000000;
    }

    else
    {
      v112 = v123;
      v114 = v124;
    }

    MEMORY[0x1B2741EB0](a2, a3);
    sub_1B2122C5C();
    v123 = 34;
    v124 = 0xE100000000000000;
    v12 = sub_1B2113B50();
    MEMORY[0x1B2741EB0](v12);
    sub_1B2122C5C();
    sub_1B2113B50();
    sub_1B213CB6C();
    sub_1B219DF24(v13, v14, v15, v16, v17);
    sub_1B21115FC();
    swift_beginAccess();
    v18 = *(a4 + 24);
    v19 = sub_1B2116B08();
    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v21 = v19;
      v122[0] = MEMORY[0x1E69E7CC0];
      v22 = v19 & ~(v19 >> 63);

      sub_1B2116B10(0, v22, 0, v23, v24, v25, v26);
      if (v21 < 0)
      {
        __break(1u);
        return;
      }

      v27 = 0;
      v28 = v122[0];
      v29 = v18 & 0xC000000000000001;
      v30 = v18;
      do
      {
        if (v29)
        {
          v31 = MEMORY[0x1B27427E0](v27, v30);
        }

        else
        {
          v31 = *(v30 + 8 * v27 + 32);
        }

        v33 = *(v31 + 16);
        v32 = *(v31 + 24);

        v122[0] = v28;
        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        if (v35 >= v34 >> 1)
        {
          v37 = sub_1B211156C(v34);
          sub_1B2116B10(v37, v35 + 1, 1, v38, v39, v40, v41);
          v28 = v122[0];
        }

        ++v27;
        *(v28 + 16) = v35 + 1;
        v36 = v28 + 16 * v35;
        *(v36 + 32) = v33;
        *(v36 + 40) = v32;
      }

      while (v21 != v27);

      v20 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    v122[0] = &unk_1F2968EE0;

    sub_1B2156C88(v42);
    v47 = qword_1F2968EF0[0];
    if (qword_1F2968EF0[0])
    {
      sub_1B2116B10(0, qword_1F2968EF0[0], 0, v43, v44, v45, v46);
      v48 = v20;
      v49 = &qword_1F2968EF0[3];
      do
      {
        v50 = *(v49 - 1);
        v51 = *v49;
        v122[0] = 34;
        v122[1] = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v50, v51);
        sub_1B2122C5C();

        v121 = v48;
        v53 = *(v48 + 16);
        v52 = *(v48 + 24);
        if (v53 >= v52 >> 1)
        {
          v55 = sub_1B211156C(v52);
          sub_1B2116B10(v55, v53 + 1, 1, v56, v57, v58, v59);
        }

        *(v48 + 16) = v53 + 1;
        v54 = v48 + 16 * v53;
        *(v54 + 32) = 34;
        *(v54 + 40) = 0xE100000000000000;
        v49 += 2;
        --v47;
      }

      while (v47);

      v20 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v117 = sub_1B212DE74();
    v118 = v60;

    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 32) = v112;
    *(inited + 40) = v114;
    v122[0] = inited;

    sub_1B2156C88(v28);
    v66 = *(v122[0] + 16);
    if (v66)
    {
      v126 = v20;
      sub_1B2116B10(0, v66, 0, v62, v63, v64, v65);
      v67 = (v122[0] + 40);
      v68 = v126;
      do
      {
        v69 = *(v67 - 1);
        v70 = *v67;
        v122[0] = 779576686;
        v122[1] = 0xE400000000000000;
        sub_1B211D8BC();

        MEMORY[0x1B2741EB0](v69, v70);
        sub_1B2122C5C();
        MEMORY[0x1B2741EB0](v121);

        v126 = v68;
        v72 = *(v68 + 16);
        v71 = *(v68 + 24);
        if (v72 >= v71 >> 1)
        {
          v74 = sub_1B211156C(v71);
          sub_1B2116B10(v74, v72 + 1, 1, v75, v76, v77, v78);
          v68 = v126;
        }

        *(v68 + 16) = v72 + 1;
        v73 = v68 + 16 * v72;
        *(v73 + 32) = 779576686;
        *(v73 + 40) = 0xE400000000000000;
        v67 += 2;
        --v66;
      }

      while (v66);

      v20 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    v110 = sub_1B212DE74();
    v111 = v79;

    v80 = swift_initStackObject();
    *(v80 + 16) = xmmword_1B22546B0;
    *(v80 + 32) = v112;
    *(v80 + 40) = v114;
    v122[0] = v80;
    sub_1B2156C88(v28);
    v85 = *(v122[0] + 16);
    if (v85)
    {
      v126 = v20;
      sub_1B2116B10(0, v85, 0, v81, v82, v83, v84);
      v86 = (v122[0] + 40);
      v87 = v20;
      do
      {
        v88 = *(v86 - 1);
        v89 = *v86;
        v122[0] = 778333295;
        v122[1] = 0xE400000000000000;

        MEMORY[0x1B2741EB0](v88, v89);
        sub_1B2122C5C();
        MEMORY[0x1B2741EB0](34, 0xE100000000000000);

        v126 = v87;
        v91 = *(v87 + 16);
        v90 = *(v87 + 24);
        if (v91 >= v90 >> 1)
        {
          v93 = sub_1B211156C(v90);
          sub_1B2116B10(v93, v91 + 1, 1, v94, v95, v96, v97);
          v87 = v126;
        }

        *(v87 + 16) = v91 + 1;
        v92 = v87 + 16 * v91;
        *(v92 + 32) = 778333295;
        *(v92 + 40) = 0xE400000000000000;
        v86 += 2;
        --v85;
      }

      while (v85);
    }

    else
    {

      v87 = MEMORY[0x1E69E7CC0];
    }

    v122[0] = v87;
    v98 = sub_1B212DE74();
    v113 = v99;
    v115 = v98;

    if (*(v116 + 16))
    {
      v100 = 0x4520544F4E204649;
    }

    else
    {
      v100 = 0;
    }

    if (*(v116 + 16))
    {
      v101 = 0xEE00205354534958;
    }

    else
    {
      v101 = 0xE000000000000000;
    }

    sub_1B2252CD0();
    MEMORY[0x1B2741EB0](0x5420455441455243, 0xEF20524547474952);
    MEMORY[0x1B2741EB0](v100, v101);
    MEMORY[0x1B2741EB0](a2, v119);
    MEMORY[0x1B2741EB0](6906207, 0xE300000000000000);
    MEMORY[0x1B2741EB0](24415, 0xE200000000000000);
    sub_1B2122C5C();

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](0xD000000000000011, 0x80000001B226DA70);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B214CBDC();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B21A18BC();
    MEMORY[0x1B2741EB0](v117, v118);
    sub_1B212D54C();
    MEMORY[0x1B2741EB0](v110, v111);
    MEMORY[0x1B2741EB0](0xD000000000000017, 0x80000001B226DAB0);
    MEMORY[0x1B2741EB0](v100, v101);
    sub_1B2113168();
    MEMORY[0x1B2741EB0](a2, v119);
    MEMORY[0x1B2741EB0](6578527, 0xE300000000000000);
    sub_1B211D8BC();
    MEMORY[0x1B2741EB0]();
    sub_1B2122C5C();

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    sub_1B212D858();
    MEMORY[0x1B2741EB0](0xD000000000000011);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B214CBDC();
    sub_1B21352FC();
    sub_1B21A18BC();
    sub_1B21352FC();
    MEMORY[0x1B2741EB0](8236, 0xE200000000000000);
    MEMORY[0x1B2741EB0](v117, v118);
    MEMORY[0x1B2741EB0](0xD000000000000013, 0x80000001B226DAF0);
    MEMORY[0x1B2741EB0](v115, v113);
    MEMORY[0x1B2741EB0](0xD000000000000017, 0x80000001B226DAB0);
    MEMORY[0x1B2741EB0](v100, v101);

    sub_1B2113168();
    MEMORY[0x1B2741EB0](a2, v119);
    v102 = sub_1B2126088();
    MEMORY[0x1B2741EB0](v102, 0xE300000000000000);
    sub_1B211D8BC();
    MEMORY[0x1B2741EB0]();
    sub_1B2122C5C();

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    sub_1B212D858();
    MEMORY[0x1B2741EB0](0xD000000000000011);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    sub_1B214CBDC();
    sub_1B21352FC();
    sub_1B21A18BC();
    sub_1B21352FC();
    MEMORY[0x1B2741EB0](8236, 0xE200000000000000);
    MEMORY[0x1B2741EB0](v117, v118);
    MEMORY[0x1B2741EB0](0xD000000000000013, 0x80000001B226DAF0);
    MEMORY[0x1B2741EB0](v115, v113);

    sub_1B212D858();
    MEMORY[0x1B2741EB0](0xD000000000000013);
    sub_1B21352FC();
    sub_1B21A18BC();
    MEMORY[0x1B2741EB0](v117, v118);

    sub_1B212D54C();
    MEMORY[0x1B2741EB0](v110, v111);

    MEMORY[0x1B2741EB0](0x3B444E450A3B29, 0xE700000000000000);
    v103._countAndFlagsBits = 0;
    v104 = MEMORY[0x1E69E7CC0];
    v122[0] = MEMORY[0x1E69E7CC0];
    v122[1] = MEMORY[0x1E69E7CC8];
    v105.values._rawValue = v122;
    v103._object = 0xE000000000000000;
    Database.execute(sql:arguments:)(v103, v105);

    if (!v106)
    {

      strcpy(v122, "INSERT INTO ");
      BYTE5(v122[1]) = 0;
      HIWORD(v122[1]) = -5120;
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
      sub_1B21A18BC();
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);

      sub_1B212D858();
      MEMORY[0x1B2741EB0](0xD000000000000013);
      v107._countAndFlagsBits = v122[0];
      v108 = v122[1];
      v122[0] = v104;
      v122[1] = MEMORY[0x1E69E7CC8];
      v109.values._rawValue = v122;
      v107._object = v108;
      Database.execute(sql:arguments:)(v107, v109);
    }
  }
}

uint64_t sub_1B219D2C4(uint64_t a1)
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  v3 = 0;
  ppStmt[0] = 0;
  sub_1B21115FC();
  swift_beginAccess();
  if (sqlite3_prepare_v3(*(a1 + 16), "SELECT fts5(?)", -1, 0, ppStmt, 0))
  {
    sub_1B21A1694();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    sqlite3_bind_pointer(ppStmt[0], 1, &v3, "fts5_api_ptr", 0);
    sqlite3_step(ppStmt[0]);
    a1 = v3;
    if (!v3)
    {
      sub_1B21A1694();
      swift_allocError();
      swift_willThrow();
    }

    sqlite3_finalize(ppStmt[0]);
  }

  return a1;
}

uint64_t FTS5TableDefinition.tokenizer.getter@<X0>(void *a1@<X8>)
{
  sub_1B21115FC();
  swift_beginAccess();
  *a1 = *(v1 + 72);
}

uint64_t FTS5TableDefinition.tokenizer.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1B211D8D0(v2 + 72, a2);
  *(v2 + 72) = v3;
}

uint64_t FTS5TableDefinition.content.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v3 = *(v2 + 56);
  v5 = *(v2 + 64);
  v6 = *(v2 + 32);
  if (v5)
  {
    v7 = *(v2 + 40);
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    v8 = v6;
    v9 = v7;
    v10 = v4;
    v11 = v3;
    v12 = 1;
  }

  else
  {
    v13 = *(v2 + 40);
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
    *(v2 + 48) = v4;
    *(v2 + 56) = v3;
    *(v2 + 64) = 0;

    v8 = v6;
    v9 = v13;
    v10 = v4;
    v11 = v3;
    v12 = v5;
  }

  return sub_1B219DF24(v8, v9, v10, v11, v12);
}

uint64_t (*FTS5TableDefinition.content.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = FTS5TableDefinition.content.getter();
  a1[1] = v3;
  return sub_1B219D640;
}

uint64_t FTS5TableDefinition.contentRowID.getter()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1B219D69C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t FTS5TableDefinition.contentRowID.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 64);
  v6 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v4)
  {
    v7 = *(v2 + 56);
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
    *(v2 + 64) = 0;
    v8 = v3;
    v9 = v6;
    v10 = v5;
    v11 = 1;
  }

  else
  {
    v12 = *(v2 + 56);
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
    *(v2 + 64) = 0;

    v8 = v3;
    v9 = v6;
    v10 = v5;
    v7 = v12;
    v11 = v4;
  }

  return sub_1B219DF24(v8, v9, v10, v7, v11);
}

uint64_t (*FTS5TableDefinition.contentRowID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = FTS5TableDefinition.contentRowID.getter();
  a1[1] = v3;
  return sub_1B219D7C8;
}

uint64_t sub_1B219D7E0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

uint64_t FTS5TableDefinition.prefixes.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
}

uint64_t FTS5TableDefinition.prefixes.setter(uint64_t a1, uint64_t a2)
{
  sub_1B211D8D0(v2 + 80, a2);
  *(v2 + 80) = a1;
}

uint64_t FTS5TableDefinition.columnSize.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  return *(v0 + 88);
}

uint64_t FTS5TableDefinition.columnSize.setter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = sub_1B211D8D0(v2 + 88, a2);
  *(v2 + 88) = a1;
  *(v2 + 96) = v3 & 1;
  return result;
}

uint64_t FTS5TableDefinition.detail.getter()
{
  sub_1B21115FC();
  swift_beginAccess();

  return sub_1B2112FD0();
}

uint64_t FTS5TableDefinition.detail.setter(uint64_t a1, uint64_t a2)
{
  sub_1B211D8D0(v2 + 104, a2);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1B219DAA8(char *a1)
{
  v2 = *a1;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t FTS5TableDefinition.column(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for FTS5ColumnDefinition();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 1;
  swift_beginAccess();

  MEMORY[0x1B2742060](v7);
  sub_1B212B4C4(*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B2252630();
  swift_endAccess();
  return v6;
}

Swift::Void __swiftcall FTS5TableDefinition.synchronize(withTable:)(Swift::String withTable)
{
  object = withTable._object;
  v3 = *(v1 + 32);
  withTable._object = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *(v1 + 32) = withTable._countAndFlagsBits;
  *(v1 + 40) = object;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  sub_1B219DF24(v3, withTable._object, v4, v5, v6);
}

uint64_t FTS5TableDefinition.deinit()
{

  sub_1B219DF24(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t FTS5TableDefinition.__deallocating_deinit()
{
  FTS5TableDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t FTS5ColumnDefinition.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.dropFTS5SynchronizationTriggers(forTable:)(Swift::String forTable)
{
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD000000000000017, 0x80000001B226DB70);
  sub_1B2122994();
  MEMORY[0x1B2741EB0](6906207, 0xE300000000000000);
  MEMORY[0x1B2741EB0]();
  sub_1B2122C5C();

  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B211EAF4();
  sub_1B2122994();
  MEMORY[0x1B2741EB0](6578527, 0xE300000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  sub_1B2122C5C();

  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B211EAF4();
  sub_1B2122994();
  v1 = sub_1B2126088();
  MEMORY[0x1B2741EB0](v1, 0xE300000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  sub_1B2122C5C();

  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](59, 0xE100000000000000);
  v2._countAndFlagsBits = 0;
  v4[0] = MEMORY[0x1E69E7CC0];
  v4[1] = MEMORY[0x1E69E7CC8];
  v3.values._rawValue = v4;
  v2._object = 0xE000000000000000;
  Database.execute(sql:arguments:)(v2, v3);

  sub_1B212D644();
}

uint64_t sub_1B219DEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }
}

uint64_t sub_1B219DF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

const void *sub_1B219DF9C()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1B21619D8(&qword_1EB7A1188, &unk_1B2259BA0);
  v2 = sub_1B212CFA0(v1);
  v3 = j__malloc_size(v2);
  sub_1B21160A8(v3);
  return v2;
}

const void *sub_1B219E018()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1B211A26C(v1, v2, v3, v4);
  v6 = sub_1B212CFA0(v5);
  v7 = j__malloc_size(v6);
  sub_1B21160A8(v7);
  return v6;
}

void *sub_1B219E06C()
{
  sub_1B212CDB4();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B211A26C(v2, v3, v4, v5);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  v6[2] = v0;
  v6[3] = 2 * ((v7 - 32) / 8);
  return v6;
}

const void *sub_1B219E0D0()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
  v2 = sub_1B212CFA0(v1);
  v3 = j__malloc_size(v2);
  sub_1B21160A8(v3);
  return v2;
}

void *sub_1B219E138()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  v3[2] = v2;
  v3[3] = (2 * ((v4 - 32) / 8)) | 1;
  return v3;
}

const void *sub_1B219E1B4()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1B21619D8(&qword_1EB7A1268, &qword_1B2259BD0);
  v2 = sub_1B212CFA0(v1);
  v3 = j__malloc_size(v2);
  sub_1B21160A8(v3);
  return v2;
}

const void *sub_1B219E230()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1B211A26C(v1, v2, v3, v4);
  v6 = sub_1B212CFA0(v5);
  v7 = j__malloc_size(v6);
  sub_1B21160A8(v7);
  return v6;
}

unint64_t sub_1B219E2AC()
{
  result = qword_1EB7A1C00;
  if (!qword_1EB7A1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1C00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FTS5.Diacritics(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_1B219E420(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B219E434(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_1B219E474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B219E4D4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;
  result = sub_1B219E638(v11, a3, a4);
  *a1 = v8;
  return result;
}

uint64_t sub_1B219E560(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A15CC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B219E738(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B219E5CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A15FC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B219E82C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B219E638(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  result = sub_1B2252FC0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B2117214();
        v9 = sub_1B2252610();
        *(v9 + 16) = v8;
      }

      v10[0] = v9 + 32;
      v10[1] = v8;
      sub_1B219EA44(v10, v11, a1, v7, a3);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1B219E920(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1B219E738(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1B219EED0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B219E97C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B219E82C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B219F3BC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B219E97C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B219E920(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1B219E97C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1B22531F0();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B219EA44(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v84 = MEMORY[0x1E69E7CC0];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v79 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 8 * v9);
        v11 = *(*a3 + 8 * v7);
        v12 = v7 + 2;
        v13 = v10;
        while (1)
        {
          v14 = v12;
          if (v12 >= v6)
          {
            break;
          }

          v15 = (v10 < v11) ^ (*(*a3 + 8 * v12++) >= v13);
          v13 = *(*a3 + 8 * v14);
          if ((v15 & 1) == 0)
          {
            v9 = v14;
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v11)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v14)
            {
              v6 = v14;
            }

            v16 = v6 - 1;
            v17 = v7;
            do
            {
              if (v17 != v16)
              {
                v18 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v19 = *(v18 + 8 * v17);
                *(v18 + 8 * v17) = *(v18 + 8 * v16);
                *(v18 + 8 * v16) = v19;
              }

              v20 = ++v17 < v16--;
            }

            while (v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v9 - 8;
            v23 = v7 - v9;
            do
            {
              v24 = *(v21 + 8 * v9);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v9;
              v22 += 8;
              --v23;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1B21150D0();
        sub_1B2161EC4(v74, v75, v76, v8);
        v8 = v77;
      }

      v30 = v8[2];
      v29 = v8[3];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_1B2161EC4(v29 > 1, v30 + 1, 1, v8);
        v8 = v78;
      }

      v8[2] = v31;
      v32 = v8 + 4;
      v33 = &v8[2 * v30 + 4];
      *v33 = v7;
      v33[1] = v81;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          v35 = &v32[2 * v31 - 2];
          v36 = &v8[2 * v31];
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v37 = v8[4];
            v38 = v8[5];
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_56:
            if (v40)
            {
              goto LABEL_96;
            }

            v52 = *v36;
            v51 = v36[1];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_99;
            }

            v56 = v35[1];
            v57 = v56 - *v35;
            if (__OFSUB__(v56, *v35))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v54, v57))
            {
              goto LABEL_104;
            }

            if (v54 + v57 >= v39)
            {
              if (v39 < v57)
              {
                v34 = v31 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v31 < 2)
          {
            goto LABEL_98;
          }

          v59 = *v36;
          v58 = v36[1];
          v47 = __OFSUB__(v58, v59);
          v54 = v58 - v59;
          v55 = v47;
LABEL_71:
          if (v55)
          {
            goto LABEL_101;
          }

          v61 = *v35;
          v60 = v35[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_103;
          }

          if (v62 < v54)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v34 - 1 >= v31)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
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
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          sub_1B213CC74();
          if (!v67)
          {
            goto LABEL_112;
          }

          v68 = &v32[2 * v66];
          v69 = *v68;
          v70 = &v32[2 * v34];
          v71 = v70[1];
          sub_1B219FC48();
          if (v5)
          {
            goto LABEL_89;
          }

          if (v71 < v69)
          {
            goto LABEL_91;
          }

          v72 = v8;
          v73 = v8[2];
          if (v34 > v73)
          {
            goto LABEL_92;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v34 >= v73)
          {
            goto LABEL_93;
          }

          v31 = v73 - 1;
          memmove(&v32[2 * v34], v70 + 2, 16 * (v73 - 1 - v34));
          v72[2] = v73 - 1;
          v20 = v73 > 2;
          v8 = v72;
          if (!v20)
          {
            goto LABEL_85;
          }
        }

        v41 = &v32[2 * v31];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_94;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_95;
        }

        v48 = v36[1];
        v49 = v48 - *v36;
        if (__OFSUB__(v48, *v36))
        {
          goto LABEL_97;
        }

        v47 = __OFADD__(v39, v49);
        v50 = v39 + v49;
        if (v47)
        {
          goto LABEL_100;
        }

        if (v50 >= v44)
        {
          v64 = *v35;
          v63 = v35[1];
          v47 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v47)
          {
            goto LABEL_105;
          }

          if (v39 < v65)
          {
            v34 = v31 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v81;
      a4 = v79;
      if (v81 >= v6)
      {
        v84 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1B219F8C4(&v84, *a1, a3, a5);
LABEL_89:

  sub_1B212D644();
}

void sub_1B219EED0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        sub_1B213CC74();
        v12 = (v11 + 16 * v10);
        v13 = (v11 + 16 * v9);
        if (*v12 == *v13 && v12[1] == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1B22531F0();
        }

        v10 = v9 + 2;
        v16 = 16 * v9;
        v17 = v13 + 5;
        while (v10 < v6)
        {
          if (*(v17 - 1) == *(v17 - 3) && *v17 == *(v17 - 2))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1B22531F0()))
          {
            break;
          }

          ++v10;
          v17 += 2;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v19 = 16 * v10;
          v20 = v10;
          v21 = v9;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v23 = (v22 + v16);
              v24 = v22 + v19;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v21;
            v19 -= 16;
            v16 += 16;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v27 = a3[1];
      if (v10 < v27)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v27)
          {
            v28 = a3[1];
          }

          else
          {
            v28 = v9 + a4;
          }

          if (v28 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v28)
          {
            v93 = v5;
            v95 = v9;
            v29 = *a3;
            v30 = *a3 + 16 * v10;
            v31 = v9 - v10;
            do
            {
              v32 = v10;
              v33 = (v29 + 16 * v10);
              v34 = *v33;
              v35 = v33[1];
              v36 = v31;
              v37 = v30;
              do
              {
                v38 = v34 == *(v37 - 2) && v35 == *(v37 - 1);
                if (v38 || (sub_1B22531F0() & 1) == 0)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_124;
                }

                v34 = *v37;
                v35 = v37[1];
                *v37 = *(v37 - 1);
                *(v37 - 1) = v35;
                *(v37 - 2) = v34;
                v37 -= 2;
              }

              while (!__CFADD__(v36++, 1));
              v10 = v32 + 1;
              v30 += 16;
              --v31;
            }

            while (v32 + 1 != v28);
            v10 = v28;
            v5 = v93;
            v9 = v95;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v94 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_1B21150D0();
        sub_1B2161EC4(v86, v87, v88, v8);
        v8 = v89;
      }

      v41 = v8[2];
      v40 = v8[3];
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        sub_1B2161EC4(v40 > 1, v41 + 1, 1, v8);
        v8 = v90;
      }

      v8[2] = v42;
      v43 = v8 + 4;
      v44 = &v8[2 * v41 + 4];
      *v44 = v9;
      v44[1] = v94;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[2 * v42 - 2];
          v47 = &v8[2 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = v8[4];
            v49 = v8[5];
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_69:
            if (v51)
            {
              goto LABEL_109;
            }

            v63 = *v47;
            v62 = v47[1];
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_112;
            }

            v67 = v46[1];
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_117;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v42 < 2)
          {
            goto LABEL_111;
          }

          v70 = *v47;
          v69 = v47[1];
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_84:
          if (v66)
          {
            goto LABEL_114;
          }

          v72 = *v46;
          v71 = v46[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_116;
          }

          if (v73 < v65)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v45 - 1 >= v42)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          sub_1B213CC74();
          if (!v78)
          {
            goto LABEL_125;
          }

          v79 = &v43[2 * v77];
          v80 = *v79;
          v81 = &v43[2 * v45];
          v82 = v81[1];
          sub_1B219FDA4();
          if (v5)
          {
            goto LABEL_102;
          }

          if (v82 < v80)
          {
            goto LABEL_104;
          }

          v83 = v8;
          v84 = v8[2];
          if (v45 > v84)
          {
            goto LABEL_105;
          }

          *v79 = v80;
          v79[1] = v82;
          if (v45 >= v84)
          {
            goto LABEL_106;
          }

          v42 = v84 - 1;
          memmove(&v43[2 * v45], v81 + 2, 16 * (v84 - 1 - v45));
          v83[2] = v84 - 1;
          v85 = v84 > 2;
          v8 = v83;
          if (!v85)
          {
            goto LABEL_98;
          }
        }

        v52 = &v43[2 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_107;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_108;
        }

        v59 = v47[1];
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_110;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = v46[1];
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v94;
      if (v94 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1B219F9F0(&v97, *a1, a3);
LABEL_102:

  sub_1B212D644();
}

void sub_1B219F3BC(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1B22531F0();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1B22531F0()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1B22531F0() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1B2161EC4(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1B219FF28((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_1B219FB1C(&v92, *result, a3);
LABEL_102:
}

void sub_1B219F8C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v6 = sub_1B21A00CC();
  }

  v14 = v5;
  *v5 = v6;
  v7 = (v6 + 16);
  for (i = *(v6 + 2); ; *v7 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v14 = v6;
      return;
    }

    sub_1B213CC74();
    if (!v9)
    {
      break;
    }

    v5 = &v6[16 * i];
    v10 = *v5;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1B219FC48();
    if (v4)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v5 = v10;
    v5[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v6;
  __break(1u);
}

uint64_t sub_1B219F9F0(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1B219FDA4();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1B219FB1C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1B219FF28((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1B219FC48()
{
  sub_1B2116A24();
  sub_1B2132584();
  if (v7 != v8)
  {
    v6(v2, v4, v0);
    v12 = &v0[v4];
    while (1)
    {
      if (v0 >= v12 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_28;
      }

      v10 = *v1;
      if (*v1 >= *v0)
      {
        break;
      }

      v11 = v2 == v1++;
      if (!v11)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++v2;
    }

    v10 = *v0;
    v11 = v2 == v0++;
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v2 = v10;
    goto LABEL_14;
  }

  v6(v1, v5, v0);
  v12 = &v0[v5];
LABEL_15:
  v13 = v1 - 1;
  for (--v3; v12 > v0 && v1 > v2; --v3)
  {
    v15 = *(v12 - 1);
    if (v15 < *v13)
    {
      v11 = v3 + 1 == v1--;
      if (!v11)
      {
        *v3 = *v13;
        v1 = v13;
      }

      goto LABEL_15;
    }

    if (v12 != v3 + 1)
    {
      *v3 = v15;
    }

    --v12;
  }

LABEL_28:
  v16 = v12 - v0;
  if (v1 != v0 || v1 >= &v0[v16])
  {
    memmove(v1, v0, 8 * v16);
  }

  return 1;
}

uint64_t sub_1B219FDA4()
{
  sub_1B2116A24();
  sub_1B2132584();
  if (v6 != v7)
  {
    sub_1B215A618(v2, v4, v0);
    v11 = (v0 + 16 * v4);
    while (1)
    {
      if (v0 >= v11 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_36;
      }

      v9 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
      if (v9 || (sub_1B22531F0() & 1) == 0)
      {
        break;
      }

      v10 = v1;
      v9 = v2 == v1;
      v1 += 16;
      if (!v9)
      {
        goto LABEL_17;
      }

LABEL_18:
      v2 += 16;
    }

    v10 = v0;
    v9 = v2 == v0;
    v0 += 16;
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v2 = *v10;
    goto LABEL_18;
  }

  sub_1B215A618(v1, v5, v0);
  v11 = (v0 + 16 * v5);
LABEL_19:
  v12 = (v1 - 16);
  for (--v3; v11 > v0 && v1 > v2; --v3)
  {
    v14 = *(v11 - 2) == *(v1 - 16) && *(v11 - 1) == *(v1 - 8);
    if (!v14 && (sub_1B22531F0() & 1) != 0)
    {
      v9 = v3 + 1 == v1;
      v1 -= 16;
      if (!v9)
      {
        *v3 = *v12;
        v1 = v12;
      }

      goto LABEL_19;
    }

    if (v11 != v3 + 1)
    {
      *v3 = *(v11 - 1);
    }

    --v11;
  }

LABEL_36:
  v15 = (v11 - v0) / 16;
  if (v1 != v0 || v1 >= v0 + 16 * v15)
  {
    memmove(v1, v0, 16 * v15);
  }

  return 1;
}

uint64_t sub_1B219FF28(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1B215A618(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1B22531F0() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1B215A618(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1B22531F0() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_1B21A00E4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1B21A0110(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B21619D8(&qword_1EB7A0DC8, &unk_1B22544E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1B21A0210()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v49 = v12;

  v13 = sub_1B2131DCC();
  v15 = v14;
  v17 = v16;

  v48 = v3;

  v55 = v7;

  if (v11 && v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      v54 = v1;
      v18 = 0;
      v19 = v5 + 64;
      v50 = v5 + 72;
      v53 = v5;
      v51 = v9;
      v52 = v5 + 64;
      while (!__OFADD__(v18, 1))
      {
        if (v17)
        {
          goto LABEL_40;
        }

        if (*(v5 + 36) != v15)
        {
          goto LABEL_33;
        }

        v20 = 1 << *(v5 + 32);
        if (v13 == v20)
        {
          v17 = 0;
LABEL_30:
          v1 = v54;
          goto LABEL_31;
        }

        if (v13 < 0 || v13 >= v20)
        {
          goto LABEL_34;
        }

        v59 = v11;
        v21 = v13 >> 6;
        if ((*(v19 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_35;
        }

        v58 = *(v5 + 36);
        v56 = v15;
        v57 = v18 + 1;
        v22 = (*(v5 + 48) + 16 * v13);
        v23 = v22[1];
        v60 = *v22;
        sub_1B211EE68(*(v5 + 56) + 40 * v13, v64);
        v24 = type metadata accessor for Row();
        sub_1B211EE68(v64, v61);
        v26 = v62;
        v25 = v63;
        v27 = sub_1B21A1628(v61, v62);
        MEMORY[0x1EEE9AC00](v27);
        sub_1B2111844();
        v30 = v29 - v28;
        (*(v31 + 16))(v29 - v28);

        v32 = sub_1B21B64A0(v55, v30, v24, v26, v25);
        sub_1B2113208(v61);
        if (*(v54 + 16) && (v33 = sub_1B211E590(), (v34 & 1) != 0))
        {
          v35 = *(v54 + 56) + 24 * v33;
          v36 = *(v35 + 8);
          v37 = *(v35 + 16);

          sub_1B2113208(v64);
          swift_beginAccess();
          *(v32 + 80) = v36;
          *(v32 + 88) = v37;
          v38 = v32;
        }

        else
        {
          v38 = v32;
          sub_1B2113208(v64);
        }

        v5 = v53;
        v19 = v52;
        v39 = 1 << *(v53 + 32);
        if (v13 >= v39)
        {
          goto LABEL_36;
        }

        v40 = *(v52 + 8 * v21);
        if ((v40 & (1 << v13)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v53 + 36) != v58)
        {
          goto LABEL_38;
        }

        v41 = v40 & (-2 << (v13 & 0x3F));
        if (v41)
        {
          v13 = __clz(__rbit64(v41)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v42 = v51;
        }

        else
        {
          v43 = v21 << 6;
          v44 = v21 + 1;
          v45 = (v50 + 8 * v21);
          v42 = v51;
          while (v44 < (v39 + 63) >> 6)
          {
            v47 = *v45++;
            v46 = v47;
            v43 += 64;
            ++v44;
            if (v47)
            {
              sub_1B21268C8(v13, v56, 0);
              v13 = __clz(__rbit64(v46)) + v43;
              goto LABEL_26;
            }
          }

          sub_1B21268C8(v13, v56, 0);
          v13 = v39;
        }

LABEL_26:
        v17 = 0;
        v15 = *(v53 + 36);
        *v59 = v60;
        v59[1] = v23;
        v59[2] = v38;
        v11 = v59 + 3;
        v18 = v57;
        if (v57 == v42)
        {
          goto LABEL_30;
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
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
LABEL_31:
    *v49 = v55;
    *(v49 + 8) = v5;
    *(v49 + 16) = v48;
    *(v49 + 24) = v1;
    *(v49 + 32) = v13;
    *(v49 + 40) = v15;
    *(v49 + 48) = v17 & 1;
    sub_1B2111588();
  }
}

void sub_1B21A064C(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    sub_1B212E2A4();
LABEL_13:
    *a1 = v3;
    a1[1] = v8;
    return;
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = a2;
    v16 = a1;
    v6 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v8 = *(v3 + 72);
      if (v20 == v8)
      {
        v3 = v19;
        goto LABEL_12;
      }

      Row.subscript.getter(v17, &v20);
      v10 = v9;
      v12 = v11;
      v13 = v17[0];
      v14 = v17[1];
      v15 = v18;

      sub_1B2113A20(v13, v14, v15);

      sub_1B2113A44(v13, v14, v15);
      sub_1B2151DE0(&v20, v20);
      *v5 = v10;
      *(v5 + 8) = v12;
      *(v5 + 16) = v13;
      *(v5 + 24) = v14;
      *(v5 + 32) = v15;
      v5 += 40;
      ++v6;
      if (v7 == a3)
      {
        v3 = v19;
        v8 = v20;
LABEL_12:
        a1 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1B21A0780()
{
  sub_1B211431C();
  if (!v3)
  {
    sub_1B212E2A4();
LABEL_17:
    sub_1B2123360(v2, v5, v8);
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = v3;
    v23 = v2;
    sub_1B2115BFC();
    v12 = (v10 - v11) >> 6;
    v24 = v5;
    while (v9 < v6)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (1)
        {
          v14 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v2 = v23;
            goto LABEL_17;
          }

          v1 = *(v0 + 8 * v14);
          ++v8;
          if (v1)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v8;
LABEL_12:
      sub_1B21A18EC();
      v16 = v15 | (v14 << 6);
      v18 = (*(v17 + 48) + 32 * v16);
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      v22 = *(*(v17 + 56) + 16 * v16);
      *v7 = *v18;
      *(v7 + 8) = v19;
      *(v7 + 16) = v20;
      *(v7 + 24) = v21;
      *(v7 + 32) = v22;
      if (v13 == v6)
      {

        v8 = v14;
        v2 = v23;
        v5 = v24;
        goto LABEL_17;
      }

      v7 += 48;

      v9 = v13;
      v8 = v14;
      v5 = v24;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1B21A08F0()
{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1B21713A0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  if (!v8)
  {
    *v10 = v4;
    *(v10 + 8) = 0;
    memcpy((v10 + 16), __src, 0xB8uLL);
    *(v10 + 208) = 0;
    *(v10 + 216) = 0;
    *(v10 + 200) = v2;
    *(v10 + 224) = 0;
LABEL_35:
    sub_1B2111588();
    return;
  }

  if (!v6)
  {
    sub_1B21497F4();
LABEL_34:
    *v10 = v4;
    *(v10 + 8) = v0;
    v20 = v11;
    sub_1B211FE14((v10 + 16));
    *(v10 + 200) = v2;
    *(v10 + 208) = v20;
    *(v10 + 216) = v22;
    *(v10 + 224) = v21;
    goto LABEL_35;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_1B21497F4();
  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (v12 >= v6)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_38;
    }

    if (!v13)
    {
      break;
    }

    if (v13 == 1)
    {
      goto LABEL_15;
    }

    if (!v11)
    {
      goto LABEL_43;
    }

LABEL_25:
    v18 = *(v11 + 16);
    if (v22 == v18)
    {
      goto LABEL_14;
    }

    if (v22 >= v18)
    {
      goto LABEL_39;
    }

    v23 = v11;
    v19 = v11 + 184 * v22;
    memcpy(v31, (v19 + 32), sizeof(v31));
    ++v22;
    memmove(v32, (v19 + 32), 0xB8uLL);
    nullsub_1();
    sub_1B211AF1C(v31, v30);
    memcpy(v33, v32, sizeof(v33));
    v13 = 2;
LABEL_29:
    memcpy(v8, v33, 0xB8uLL);
    v8 += 184;
    ++v12;
    v11 = v23;
    if (v14 == v6)
    {
      goto LABEL_34;
    }
  }

  v15 = *(v4 + 16);
  v23 = v11;
  if (v0 == v15)
  {
LABEL_32:
    *v10 = v4;
    *(v10 + 8) = v0;
    sub_1B211FE14((v10 + 16));
    *(v10 + 200) = v2;
    *(v10 + 208) = v23;
    *(v10 + 216) = v22;
    *(v10 + 224) = 3;
    goto LABEL_35;
  }

  if (v0 >= v15)
  {
    goto LABEL_40;
  }

  sub_1B2135658(v29);
  ++v0;
  sub_1B2135658(v30);
  nullsub_1();
  memcpy(v31, v30, sizeof(v31));
  nullsub_1();
  sub_1B211FE14(v32);
  sub_1B21A1750(v29, v28, &qword_1EB7A1248, &qword_1B2254A48);
  sub_1B21A16E8(v32);
  memcpy(__dst, v31, sizeof(__dst));
  v11 = v23;
LABEL_14:
  v21 = 1;
LABEL_15:
  v23 = v11;
  while (1)
  {
    sub_1B211FE14(v32);
    if (sub_1B2171378(v32) == 1)
    {
      break;
    }

    sub_1B211FE14(v29);
    sub_1B2171344(v30);
    memcpy(__dst, v30, sizeof(__dst));
    memcpy(v31, v29, sizeof(v31));
    if (sub_1B213EA68(v31) != 1)
    {
      memcpy(v33, v29, sizeof(v33));
      v13 = 1;
      goto LABEL_29;
    }

    v16 = *(v4 + 16);
    if (v0 == v16)
    {
      v17 = __src;
    }

    else
    {
      if (v0 >= v16)
      {
        __break(1u);
        goto LABEL_37;
      }

      sub_1B2135658(v25);
      ++v0;
      sub_1B2135658(v26);
      nullsub_1();
      memcpy(v27, v26, sizeof(v27));
      nullsub_1();
      sub_1B21A1750(v25, v24, &qword_1EB7A1248, &qword_1B2254A48);
      v17 = v27;
    }

    memcpy(v28, v17, sizeof(v28));
    sub_1B211FE14(v26);
    sub_1B21A16E8(v26);
    memcpy(__dst, v28, sizeof(__dst));
    memcpy(v27, v28, sizeof(v27));
    if (sub_1B2171378(v27) == 1)
    {
      goto LABEL_32;
    }

    if (*(v2 + 16))
    {

      v22 = 0;
      v21 = 2;
      v11 = v2;
      if (!v2)
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_1B21A0CC8()
{
  sub_1B2111F14();
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  if (!v0)
  {
    v11 = *(v2 + 16);
LABEL_12:
    *v5 = v3;
    v5[1] = v11;
    sub_1B2111588();
    return;
  }

  v7 = v1;
  if (!v1)
  {
    v11 = *(v2 + 16);
    goto LABEL_12;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v8 = v0;
    v9 = 0;
    for (i = (v2 + 232 * v6 - 200); ; i -= 232)
    {
      v11 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v11 > *(v3 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      memcpy(__dst, i, 0xE3uLL);
      memmove(v8, i, 0xE3uLL);
      if (v7 + v9 == 1)
      {
        sub_1B21819B8(__dst, v12);
        v11 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 232;
      sub_1B21819B8(__dst, v12);
      --v9;
    }

    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
}

void sub_1B21A0DC4()
{
  sub_1B2111F14();
  sub_1B2111FE0();
  if (!v4)
  {
    sub_1B212E2A4();
LABEL_17:
    sub_1B2113B5C(v8);
    sub_1B2111588();
    return;
  }

  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = v4;
    sub_1B2115BFC();
    v11 = (v10 - v2) >> 6;
    while (v9 < v6)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v13 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            goto LABEL_17;
          }

          v3 = *(v1 + 8 * v13);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v8;
LABEL_12:
      v14 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v15 = *(v0 + 48) + 24 * (v14 | (v13 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      *v7 = *v15;
      *(v7 + 8) = v17;
      *(v7 + 16) = v18;
      if (v12 == v6)
      {
        sub_1B2113A20(v16, v17, v18);
        v8 = v13;
        goto LABEL_17;
      }

      v7 += 24;
      sub_1B2113A20(v16, v17, v18);
      v9 = v12;
      v8 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1B21A0ED0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B21A0FB8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B21A1114()
{
  sub_1B211431C();
  if (!v3)
  {
    sub_1B212E2A4();
LABEL_17:
    sub_1B2123360(v2, v5, v8);
    return;
  }

  v6 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = v3;
    v25 = v2;
    sub_1B2115BFC();
    v12 = (v10 - v11) >> 6;
    while (1)
    {
      if (v9 >= v6)
      {
        goto LABEL_20;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (1)
        {
          v14 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            goto LABEL_15;
          }

          v1 = *(v0 + 8 * v14);
          ++v8;
          if (v1)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v14 = v8;
LABEL_12:
      sub_1B21A18EC();
      v16 = v15 | (v14 << 6);
      v18 = v17;
      v19 = (*(v17 + 48) + 16 * v16);
      v20 = *v19;
      v21 = v19[1];
      sub_1B21A1750(*(v17 + 56) + 40 * v16, &v27, &qword_1EB7A0E30, &unk_1B2259360);
      *&v26 = v20;
      *(&v26 + 1) = v21;
      v22 = v29;
      v33 = v29;
      v23 = v28;
      v24 = v27;
      v31 = v27;
      v32 = v28;
      v30 = v26;
      *v7 = v26;
      *(v7 + 16) = v24;
      *(v7 + 32) = v23;
      *(v7 + 48) = v22;
      if (v13 == v6)
      {
        break;
      }

      v7 += 56;

      v9 = v13;
      v8 = v14;
      v5 = v18;
    }

    v8 = v14;
    v5 = v18;
LABEL_15:
    v2 = v25;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
}

void *sub_1B21A1288(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21A13E4(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v18 = a3;
    v19 = result;
    v7 = 0;
    v8 = *(a4 + 16);
    v9 = a3 - 1;
    for (i = (a4 + 40); ; i += 2)
    {
      if (v8 == v7)
      {
        a3 = v8;
        result = v19;
        goto LABEL_14;
      }

      if (v7 >= *(a4 + 16))
      {
        break;
      }

      if (!*(a5 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(i - 1);
      v12 = *i;

      result = sub_1B211E590();
      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }

      v14 = (*(a5 + 56) + 24 * result);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      *v6 = v11;
      v6[1] = v12;
      v6[2] = v15;
      v6[3] = v16;
      v6[4] = v17;
      if (v9 == v7)
      {

        a3 = v18;
        result = v19;
        goto LABEL_14;
      }

      v6 += 5;

      ++v7;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21A1628(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1B21A1694()
{
  result = qword_1EB7A1C08;
  if (!qword_1EB7A1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1C08);
  }

  return result;
}

uint64_t sub_1B21A16E8(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1250, &unk_1B2259BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B21A1750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B21619D8(a3, a4);
  v5 = sub_1B2112FD0();
  v6(v5);
  return a2;
}

_BYTE *sub_1B21A17B4(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B21A1860()
{
  result = qword_1EB7A1C10;
  if (!qword_1EB7A1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1C10);
  }

  return result;
}

void sub_1B21A18BC()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21A18D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
}

uint64_t FetchRequest<>.fetchCursor(_:)()
{
  sub_1B21150E0();
  sub_1B212CDC0();
  swift_getAssociatedTypeWitness();
  v0 = sub_1B21129A8();
  return static DatabaseValueConvertible<>.fetchCursor<A>(_:_:)(v0, v1, v2, v3, v4, v5, v6);
}

{
  sub_1B211543C();
  sub_1B21130B8(v0, v1, v2);
  v3 = sub_1B2115A3C();
  return static DatabaseValueConvertible.fetchCursor<A>(_:_:)(v3, v4, v5, v6, v7, v8);
}

{
  sub_1B213CB2C();
  sub_1B2122C8C();
  sub_1B211F200();
  return static Row.fetchCursor<A>(_:_:)();
}

uint64_t FetchRequest<>.fetchSet(_:)()
{
  sub_1B2114774();
  v1 = v0;
  sub_1B212CDC0();
  swift_getAssociatedTypeWitness();
  return static DatabaseValueConvertible<>.fetchSet<A>(_:_:)(v1);
}

{
  sub_1B211AD7C();
  sub_1B2122C98();
  swift_getAssociatedTypeWitness();
  sub_1B2115EC8();
  swift_getAssociatedTypeWitness();
  v0 = sub_1B2122518();
  return static Optional<A>.fetchSet<A>(_:_:)(v0);
}

{
  sub_1B21150E0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return static DatabaseValueConvertible<>.fetchSet<A>(_:_:)(v5, v0, AssociatedTypeWitness, v4, v2, v1, v3);
}

{
  sub_1B2114774();
  v2 = v1;
  swift_getAssociatedTypeWitness();
  sub_1B2117ADC();
  swift_getAssociatedTypeWitness();
  v3 = sub_1B21226E8();
  return static Optional<A>.fetchSet<A>(_:_:)(v3, v4, v5, v6, v7, v0, v2);
}

{
  sub_1B213CB2C();
  sub_1B2144154();
  return static Row.fetchSet<A>(_:_:)();
}

uint64_t sub_1B21A1AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  sub_1B211AD7C();
  sub_1B2122C98();
  swift_getAssociatedTypeWitness();
  sub_1B2115EC8();
  swift_getAssociatedTypeWitness();
  v8 = sub_1B2122518();
  return a7(v8);
}

uint64_t static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(sqlite3_stmt *a1, int a2, void *(*a3)(_OWORD *__return_ptr), uint64_t a4, uint64_t a5)
{
  a3(v16);
  sub_1B21A2FC0();
  swift_allocError();
  v9 = v8;
  v15[0] = v16[0];
  v15[1] = v16[1];
  v15[2] = v16[2];
  v15[3] = v16[3];
  sub_1B21320F0(a1, a2, &v13);
  v11 = v13;
  v12 = v14;
  sub_1B2183238(a5, v15, &v11, v9);
  sub_1B2113A44(v11, *(&v11 + 1), v12);
  sub_1B218450C(v16);
  return swift_willThrow();
}

void static DatabaseValueConvertible<>.fastDecode(fromStatement:atUncheckedIndex:context:)()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v24 = v7;
  v8 = sub_1B2252B00();
  sub_1B211280C();
  v23 = v9;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B21182D8();
  v11 = sub_1B21146D8();
  v13 = sqlite3_column_type(v11, v12);
  if (v13 == 5)
  {
    goto LABEL_5;
  }

  v14 = sub_1B21146D8();
  v15(v14);
  sub_1B2113020(v0);
  if (v16)
  {
    v13 = (*(v23 + 8))(v0, v8);
LABEL_5:
    MEMORY[0x1EEE9AC00](v13);
    sub_1B21156F0();
    *(v17 - 16) = v6;
    *(v17 - 8) = v4;
    v18 = sub_1B21146D8();
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v18, v19, v20, v21, v2);
    goto LABEL_6;
  }

  sub_1B21142DC();
  (*(v22 + 32))(v24, v0, v2);
LABEL_6:
  sub_1B2112FDC();
}

void static DatabaseValueConvertible<>.fastDecode(fromRow:atUncheckedIndex:)()
{
  sub_1B2111640();
  sub_1B2117A88();
  v6 = v5;
  sub_1B212CDC0();
  sub_1B2252B00();
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B211E4C8();
  if (!v3)
  {
    sub_1B214407C();
    Row.fastDecode<A>(_:atUncheckedIndex:)();
    goto LABEL_10;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    v17 = v9;
    v18 = v8;
    MEMORY[0x1EEE9AC00](v8);
    v10 = sub_1B211F648();
    if (v10 != 5)
    {
      v11 = sub_1B2121F88();
      v12(v11);
      sub_1B2113020(v4);
      if (!v13)
      {
        sub_1B21142DC();
        (*(v16 + 32))(v6, v4, v0);
LABEL_10:
        sub_1B2112FDC();
        return;
      }

      v10 = (*(v17 + 8))(v4, v18);
    }

    MEMORY[0x1EEE9AC00](v10);
    sub_1B21156F0();
    *(v14 - 16) = sub_1B21A303C;
    *(v14 - 8) = v2;
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v3, v1, sub_1B21A3284, v15, v0);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t static DatabaseValueConvertible<>.fastDecodeIfPresent(fromStatement:atUncheckedIndex:context:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = sub_1B2252B00();
  sub_1B211280C();
  v9 = v8;
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B21182D8();
  v11 = sub_1B21146D8();
  if (sqlite3_column_type(v11, v12) == 5)
  {
    v13 = a4;
    v14 = 1;
  }

  else
  {
    v15 = sub_1B21146D8();
    v16(v15);
    sub_1B2113020(v4);
    if (v17)
    {
      v18 = (*(v9 + 8))(v4, v7);
      MEMORY[0x1EEE9AC00](v18);
      sub_1B21156F0();
      *(v19 - 16) = a1;
      *(v19 - 8) = a2;
      v20 = sub_1B21146D8();
      return static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v20, v21, v22, v23, a3);
    }

    sub_1B21142DC();
    (*(v25 + 32))(a4, v4, a3);
    v13 = a4;
    v14 = 0;
  }

  return sub_1B21117B4(v13, v14, 1, a3);
}

void static DatabaseValueConvertible<>.fastDecodeIfPresent(fromRow:atUncheckedIndex:)()
{
  sub_1B2111640();
  sub_1B2117A88();
  v6 = v5;
  sub_1B212CDC0();
  sub_1B2252B00();
  sub_1B211280C();
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v7);
  sub_1B211E4C8();
  if (!v3)
  {
    sub_1B214407C();
    Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
    goto LABEL_11;
  }

  v21 = v6;
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    v10 = v9;
    v20 = v8;
    MEMORY[0x1EEE9AC00](v8);
    if (sub_1B211F648() == 5)
    {
      v11 = v21;
      v12 = 1;
LABEL_10:
      sub_1B21117B4(v11, v12, 1, v0);
      goto LABEL_11;
    }

    v13 = sub_1B2121F88();
    v14(v13);
    sub_1B2113020(v4);
    if (!v15)
    {
      sub_1B21142DC();
      (*(v19 + 32))(v21, v4, v0);
      v11 = v21;
      v12 = 0;
      goto LABEL_10;
    }

    v16 = (*(v10 + 8))(v4, v20);
    MEMORY[0x1EEE9AC00](v16);
    sub_1B21156F0();
    *(v17 - 16) = sub_1B21A3288;
    *(v17 - 8) = v2;
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v3, v1, sub_1B21A3284, v18, v0);
LABEL_11:
    sub_1B2112FDC();
    return;
  }

  __break(1u);
}

const char *sub_1B21A24DC@<X0>(unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = 1;

  return RowDecodingContext.init(row:key:)(v4, &v6, a3);
}

void (*sub_1B21A2564(void *a1))(void *)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = FastDatabaseValueCursor._isDone.modify(v2);
  return sub_1B21A25C0;
}

void (*sub_1B21A26B8(void *a1))(void *)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = FastNullableDatabaseValueCursor._isDone.modify(v2);
  return sub_1B21A325C;
}

uint64_t static DatabaseValueConvertible<>.fetchSet(_:arguments:adapter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B211AD7C();
  v12 = v11;
  sub_1B2117FF8(v13, v14);
  result = static DatabaseValueConvertible<>.fetchCursor(_:arguments:adapter:)(v15, v16, v17, v18, v19, v20);
  if (!v7)
  {
    v22 = result;
    type metadata accessor for FastDatabaseValueCursor(0, v12, v9, v8);
    sub_1B21165B0();
    swift_getWitnessTable();
    return Set.init<A>(_:)(v22, v12, v8, a7);
  }

  return result;
}

uint64_t sub_1B21A2870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  sub_1B211AD7C();
  v11 = v10;
  sub_1B21229B4();
  v13 = v12();
  if (!v8)
  {
    v21 = sub_1B2112014(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25[0]);
    v11 = a8(v21);
    sub_1B2142D18(v25);
  }

  return v11;
}

uint64_t static Optional<A>.fetchAll(_:arguments:adapter:)()
{
  sub_1B2114774();
  sub_1B2117FF8(v1, v2);
  result = static Optional<A>.fetchCursor(_:arguments:adapter:)(v3, v4, v5, v6, v7, v8);
  if (!v0)
  {
    sub_1B2252B00();
    sub_1B22526A0();
    v10 = sub_1B2116A40();
    type metadata accessor for FastNullableDatabaseValueCursor(v10, v11, v12, v13);
    sub_1B21119A4();
    sub_1B21160BC();
    WitnessTable = swift_getWitnessTable();
    sub_1B2115C0C(WitnessTable, v15, v16, v17);
    return v18;
  }

  return result;
}

uint64_t static Optional<A>.fetchSet(_:arguments:adapter:)()
{
  sub_1B211AD7C();
  sub_1B2117FF8(v3, v4);
  result = static Optional<A>.fetchCursor(_:arguments:adapter:)(v5, v6, v7, v8, v9, v10);
  if (!v0)
  {
    v12 = result;
    sub_1B2115EC8();
    v13 = sub_1B2252B00();
    v14 = sub_1B2115EC8();
    v16 = type metadata accessor for FastNullableDatabaseValueCursor(v14, v15, v2, v1);
    WitnessTable = swift_getWitnessTable();
    sub_1B21160BC();
    swift_getWitnessTable();
    return Set.init<A>(_:)(v12, v13, v16, WitnessTable);
  }

  return result;
}

{
  sub_1B2114774();
  v15 = *v2;
  result = static Optional<A>.fetchCursor(_:arguments:adapter:)(v3, &v15, v4, v5, v6);
  if (!v0)
  {
    v8 = result;
    sub_1B2117ADC();
    v9 = sub_1B2252B00();
    v10 = sub_1B2117ADC();
    v13 = type metadata accessor for NullableDatabaseValueCursor(v10, v11, v1, v12);
    WitnessTable = swift_getWitnessTable();
    sub_1B2116884();
    swift_getWitnessTable();
    return Set.init<A>(_:)(v8, v9, v13, WitnessTable);
  }

  return result;
}

uint64_t sub_1B21A2BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  sub_1B211A288();
  v10 = v9;
  v12 = v11;
  v14 = *v13;
  v15 = v13[1];
  sub_1B2122784(v16, v21);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B22546B0;
  __src[0] = v12;
  __src[1] = v10;
  __src[2] = v14;
  __src[3] = v15;
  sub_1B2114CC4(__src);
  memcpy((v17 + 32), __src, 0xB8uLL);
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v24 = v17;

  sub_1B2142B5C(v21, v22);
  v25 = 2;
  sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  sub_1B21576B0();
  v18 = sub_1B212DE98();
  v19 = a9(v18);
  sub_1B2122400(v22, &qword_1EB7A1C18, &qword_1B2259C90);
  return v19;
}

uint64_t sub_1B21A2D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  sub_1B2122C98();
  v14 = v13;
  v17 = *v15;
  v16 = v15[1];
  sub_1B2122784(v18, v26);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B22546B0;
  __src[0] = v11;
  __src[1] = v10;
  __src[2] = v17;
  __src[3] = v16;
  sub_1B2114CC4(__src);
  memcpy((v19 + 32), __src, 0xB8uLL);
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v29 = v19;

  sub_1B2142B5C(v26, v27);
  v30 = 2;
  v20 = sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  v21 = sub_1B21576B0();
  v22 = a10(v14, v27, a6, v20, a7, a8, a9, v21);
  sub_1B2122400(v27, &qword_1EB7A1C18, &qword_1B2259C90);
  return v22;
}

uint64_t sub_1B21A2F0C()
{
  sub_1B211AD7C();
  v2 = v1;
  sub_1B21229B4();
  v4 = v3();
  if (!v0)
  {
    v12 = sub_1B2112014(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17[0]);
    v2 = v13(v12);
    sub_1B2142D18(v17);
  }

  return v2;
}

unint64_t sub_1B21A2FC0()
{
  result = qword_1EB7A1C20;
  if (!qword_1EB7A1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1C20);
  }

  return result;
}

uint64_t sub_1B21A30B8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21A30F4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21A3130(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21A316C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DatabasePublishers(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1B21A333C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21A33D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 162))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B21A3420(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 162) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 2 * -a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 146) = 0u;
      return result;
    }

    *(a1 + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21A34B4(uint64_t result, char a2)
{
  v2 = *(result + 104) & 1;
  v3 = *(result + 160) & 0x81FF | ((a2 & 3) << 13);
  *(result + 64) &= 1uLL;
  *(result + 104) = v2;
  *(result + 160) = v3;
  return result;
}

uint64_t sub_1B21A34FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B21A353C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21A35CC(unsigned __int8 a1)
{
  sub_1B2253420();
  MEMORY[0x1B2742F10](a1);
  return sub_1B2253470();
}

uint64_t sub_1B21A3630(uint64_t a1)
{
  v2 = *v1;
  sub_1B2253420();
  sub_1B21A35A4(v4, v2);
  return sub_1B2253470();
}

uint64_t sub_1B21A36CC(uint64_t a1, void (*a2)(char *, uint64_t, __int128 *, uint64_t))
{
  v4 = v2;
  sub_1B21173F4();
  v6._countAndFlagsBits = 0xD000000000000019;
  Database.execute(sql:arguments:)(v6, v7);

  if (!v9)
  {
    v12 = 1;
    v11 = *v4;
    sub_1B2158E58(&v11, &v10);

    a2(&v12, a1, v4, a1);
    return sub_1B21A38B8();
  }

  return result;
}

uint64_t sub_1B21A37E4()
{
  sub_1B21619D8(&qword_1EB7A0E28, &unk_1B2254540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  v3 = *v0;
  v2 = v0[1];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = v3;
  *(inited + 40) = v2;

  sub_1B2112554(inited, &v11, v4, v5, v6, v7);
  v8._object = 0x80000001B226DD00;
  v9.values._rawValue = &v11;
  v8._countAndFlagsBits = 0xD000000000000033;
  Database.execute(sql:arguments:)(v8, v9);
}

uint64_t sub_1B21A38B8()
{
  sub_1B21173F4();
  v0._countAndFlagsBits = 0xD000000000000018;
  Database.execute(sql:arguments:)(v0, v1);
}

_BYTE *storeEnumTagSinglePayload for Migration.ForeignKeyChecks(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B21A3A00()
{
  result = qword_1EB7A1C28[0];
  if (!qword_1EB7A1C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A1C28);
  }

  return result;
}

uint64_t sub_1B21A3A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21A3AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2112028();
  memcpy(v7, v8, v9);
  sub_1B2112028();
  memcpy(v10, v11, v12);
  if (sub_1B21A6348(&v26) == 1)
  {
    v23[0] = a2;
    v23[1] = a3;
    sub_1B21C7B28(v25);
    memcpy(v27, v25, 0xABuLL);
    if (sub_1B21A6348(v27) == 1)
    {
      memcpy(v24, v25, 0xABuLL);
LABEL_8:
      sub_1B212AC5C(v24, &qword_1EB7A1CB0, &qword_1B225A4B8);
    }

    v17 = memcpy(v24, v25, 0xABuLL);
    MEMORY[0x1EEE9AC00](v17);
    v20[2] = v23;
    result = sub_1B21C3948(sub_1B21A638C, v20, v18);
    if ((v19 & 1) == 0)
    {
      sub_1B2194714();

      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    memcpy(v23, __src, 0xABuLL);
    memcpy(v27, __src, 0xABuLL);
    sub_1B21818BC(v23, v21);
    sub_1B21C76E0();
    memcpy(v24, v22, 0xABuLL);
    if (sub_1B21A6348(v24) == 1)
    {
      memcpy(v21, v22, 0xABuLL);
      sub_1B212AC5C(v21, &qword_1EB7A1CB0, &qword_1B225A4B8);
      sub_1B21449A8();
      v13 = *(*v3 + 16);
      sub_1B2144A08();
      result = sub_1B212AC5C(a1, &qword_1EB7A1CB0, &qword_1B225A4B8);
      v15 = *v3;
      *(v15 + 16) = v13 + 1;
      v16 = v15 + 16 * v13;
      *(v16 + 32) = a2;
      *(v16 + 40) = a3;
      *v3 = v15;
    }

    else
    {

      sub_1B212CDCC(a1);
      memcpy(v21, v22, 0xABuLL);
      return sub_1B212CDCC(v21);
    }
  }

  return result;
}

uint64_t sub_1B21A3D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B21A64B8(a1, &v9);
  if (*(&v10 + 1) == 1)
  {
    sub_1B212AC5C(&v9, qword_1EB7A1570, &qword_1B225A4D0);
    sub_1B21A3E34(a2, a3, v12);

    sub_1B212AC5C(a1, qword_1EB7A1570, &qword_1B225A4D0);
    v6 = qword_1EB7A1570;
    v7 = &qword_1B225A4D0;
  }

  else
  {
    v12[0] = v9;
    v12[1] = v10;
    v13 = v11;
    sub_1B2144750(v12, a2, a3, &v9);

    sub_1B212CDCC(a1);
    sub_1B212CDCC(&v9);
    v6 = &qword_1EB7A0E30;
    v7 = &unk_1B2259360;
  }

  return sub_1B212AC5C(v12, v6, v7);
}

uint64_t sub_1B21A3E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  sub_1B21C7C4C(&v10);
  if (*(&v11 + 1) == 1)
  {
    result = sub_1B212AC5C(&v10, qword_1EB7A1570, &qword_1B225A4D0);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = xmmword_1B2259350;
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
    MEMORY[0x1EEE9AC00](v4);
    v9[2] = v16;
    result = sub_1B21C3948(sub_1B21A638C, v9, v6);
    if (v7)
    {
      __break(1u);
    }

    else
    {
      sub_1B2194714();

      v8 = v14;
      *a3 = v13;
      *(a3 + 16) = v8;
      *(a3 + 32) = v15;
    }
  }

  return result;
}

void sub_1B21A3F40()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B2252190();
  v8 = *(v5 + 16);
  v9 = v5 + 40;
  v98 = v6;
  v52 = v3;
  if (v8)
  {
    while (*(v3 + 16))
    {
      v10 = *(v9 - 8);
      v11 = *v9;

      sub_1B2111664();
      sub_1B211E590();
      if ((v12 & 1) == 0)
      {
        goto LABEL_18;
      }

      v53 = v9;
      v54 = v8;
      sub_1B21165CC();
      memcpy(v13, v14, v15);
      sub_1B21165CC();
      memcpy(v16, v17, v18);
      sub_1B21165CC();
      memmove(v19, v20, v21);
      v65[0] = v10;
      v65[1] = v11;
      memcpy(v66, __src, sizeof(v66));

      sub_1B2181728(v63, __dst);
      sub_1B2181728(v64, __dst);
      sub_1B212AC5C(v65, &qword_1EB7A13A8, &qword_1B2257E40);
      memcpy(v68, v64, 0xD2uLL);
      v67[0] = v10;
      v67[1] = v11;
      memcpy(__dst, v64, 0x68uLL);
      v22 = v68[13];
      v56 = v68[14];
      *v60 = *&v64[113];
      *&v60[15] = *&v64[128];
      v23 = v68[17];
      v24 = v68[18];
      v57 = *&v64[152];
      v58 = *&v64[168];
      *v59 = *&v64[184];
      *&v59[10] = *&v64[194];
      v69[2] = *&v64[80];
      v69[1] = *&v64[64];
      v69[0] = *&v64[48];
      v70 = *&v64[96];
      v71 = v68[13];
      v72 = v68[14];
      *v73 = *&v64[113];
      *&v73[15] = *&v64[128];
      v74 = v68[17];
      v75 = v68[18];
      v76 = *&v64[152];
      v77 = *&v64[168];
      v78[0] = *&v64[184];
      *(v78 + 10) = *&v64[194];
      v83 = *&v64[48];
      v84 = *&v64[64];
      v85 = *&v64[80];
      v86 = *&v64[96];
      v82[0] = *&v64[113];
      *(v82 + 15) = *&v64[128];
      *(v81 + 10) = *&v64[194];
      v81[0] = *&v64[184];
      v80 = *&v64[168];
      v79 = *&v64[152];
      sub_1B2181728(v68, __src);
      sub_1B2136148(v69, __src);

      v25 = v1;
      sub_1B21A3F40();
      v27 = v26;
      v55 = v28;

      v9 = __dst;
      v87[0] = __dst[3];
      v87[1] = __dst[4];
      v87[2] = __dst[5];
      v88 = *&__dst[6];
      v89 = v22;
      v90 = v56;
      *v91 = *v60;
      *&v91[15] = *&v60[15];
      v92 = v23;
      v93 = v24;
      *(v96 + 10) = *&v59[10];
      v96[0] = *v59;
      v95 = v58;
      v94 = v57;
      sub_1B2137224(v87);
      __dst[3] = v83;
      __dst[4] = v84;
      __dst[5] = v85;
      *&__dst[6] = v86;
      memcpy(v97, __dst, 0x68uLL);
      *(&v97[14] + 1) = v82[0];
      *&v97[19] = v79;
      v97[13] = MEMORY[0x1E69E7CC0];
      LOBYTE(v97[14]) = 0;
      v97[16] = *(v82 + 15);
      v97[17] = v27;
      v97[18] = v55;
      *&v97[21] = v80;
      *&v97[23] = v81[0];
      *(&v97[24] + 2) = *(v81 + 10);
      sub_1B2181728(v97, __src);
      swift_isUniquelyReferenced_nonNull_native();
      *&__dst[0] = v7;
      sub_1B2111664();
      sub_1B211E590();
      sub_1B2118304();
      if (__OFADD__(v31, v32))
      {
        goto LABEL_19;
      }

      v9 = v29;
      v33 = v30;
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      if (sub_1B2252E70())
      {
        sub_1B2111664();
        v34 = sub_1B211E590();
        v3 = v52;
        v36 = v54;
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_22;
        }

        v9 = v34;
      }

      else
      {
        v3 = v52;
        v36 = v54;
      }

      if (v33)
      {
        goto LABEL_21;
      }

      v7 = *&__dst[0];
      sub_1B21129C8(*&__dst[0] + 8 * (v9 >> 6));
      v37 = (v7[6] + 16 * v9);
      *v37 = v10;
      v37[1] = v11;
      memcpy((v7[7] + 216 * v9), v97, 0xD2uLL);
      v38 = v7[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_20;
      }

      v7[2] = v40;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B21150D0();
        sub_1B214400C();
        v98 = v44;
      }

      v1 = v25;
      v42 = *(v98 + 16);
      v41 = *(v98 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1B211156C(v41);
        sub_1B214400C();
        v98 = v45;
      }

      *(v98 + 16) = v42 + 1;
      v43 = v98 + 16 * v42;
      *(v43 + 32) = v10;
      *(v43 + 40) = v11;
      sub_1B218179C(v97);
      sub_1B212AC5C(v67, &qword_1EB7A13A8, &qword_1B2257E40);
      v9 = v53 + 16;
      v8 = v36 - 1;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    sub_1B2115C3C();
    v48 = (v46 + v9 * v47);
    sub_1B21165CC();
    memcpy(v49, v50, v51);
    memcpy(v48, v97, 0xD2uLL);
    sub_1B218179C(__src);
    sub_1B2115700();
    sub_1B2117408("Fatal error");
    __break(1u);
LABEL_22:
    sub_1B2253390();
    __break(1u);
  }

  else
  {
LABEL_16:
    sub_1B2112FDC();
  }
}

void sub_1B21A44DC()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1B2252190();
  v6 = *(v3 + 16);
  v7 = (v3 + 40);
  v42 = v1;
  if (v6)
  {
    while (*(v1 + 16))
    {
      v9 = *(v7 - 1);
      v8 = *v7;

      v10 = sub_1B211E590();
      if ((v11 & 1) == 0)
      {
        goto LABEL_17;
      }

      v44 = v6;
      v43 = v7;
      v12 = (*(v1 + 56) + 216 * v10);
      memcpy(__dst, v12, 0xD2uLL);
      memcpy(__src, v12, 0xD2uLL);
      memmove(v53, v12, 0xD2uLL);
      v54[0] = v9;
      v54[1] = v8;
      memcpy(v55, __src, sizeof(v55));

      sub_1B2181728(__dst, v50);
      sub_1B2181728(v53, v50);
      sub_1B212AC5C(v54, &qword_1EB7A13A8, &qword_1B2257E40);
      memcpy(v57, v53, 0xD2uLL);
      v56[0] = v9;
      v56[1] = v8;
      memcpy(v50, v53, 0x88uLL);
      v13 = v57[17];
      v14 = v57[18];
      v45 = v57[19];
      v47 = *&v53[153];
      v48 = *&v53[169];
      v49[0] = *&v53[185];
      *(v49 + 9) = *&v53[194];
      memcpy(v58, &v53[48], 0x58uLL);
      v58[11] = v57[17];
      v58[12] = v57[18];
      LOBYTE(v58[13]) = v57[19];
      *(&v58[13] + 1) = *&v53[153];
      *(&v58[15] + 1) = *&v53[169];
      *(&v58[17] + 1) = *&v53[185];
      *(&v58[18] + 2) = *&v53[194];
      v15 = swift_allocObject();
      *(v15 + 16) = MEMORY[0x1E69E7CC0];
      v60 = *&v53[48];
      *&v61 = *&v53[64];
      memcpy(v46, &v58[5], sizeof(v46));
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1B214D354;
      *(v16 + 24) = v15;
      sub_1B2181728(v57, __src);
      sub_1B2136148(v58, __src);

      v59[0] = v60;
      *&v59[1] = v61;
      *(&v59[1] + 1) = sub_1B2139E34;
      *&v59[2] = v16;
      memcpy(&v59[2] + 8, v46, 0x7AuLL);
      memcpy(v46, v59, 0x58uLL);
      v60 = *(&v59[6] + 9);
      v61 = *(&v59[7] + 9);
      v62[0] = *(&v59[8] + 9);
      *(v62 + 9) = *(&v59[9] + 2);
      sub_1B2136148(v59, __src);
      sub_1B21A44DC();
      v6 = v17;
      v19 = v18;
      sub_1B2137224(v59);

      memcpy(v63, &v50[6], sizeof(v63));
      v64 = v13;
      v65 = v14;
      v66 = v45;
      v67 = v47;
      v68 = v48;
      *v69 = v49[0];
      *&v69[9] = *(v49 + 9);
      sub_1B2137224(v63);
      memcpy(&v50[6], v46, 0x58uLL);
      memcpy(v70, v50, 0x88uLL);
      v70[17] = v6;
      v70[18] = v19;
      LOBYTE(v70[19]) = 0;
      *(&v70[19] + 1) = v60;
      *(&v70[21] + 1) = v61;
      *(&v70[23] + 1) = v62[0];
      *(&v70[24] + 2) = *(v62 + 9);
      sub_1B2181728(v70, __src);
      swift_isUniquelyReferenced_nonNull_native();
      v50[0] = v5;
      sub_1B211E590();
      sub_1B2118304();
      if (__OFADD__(v22, v23))
      {
        goto LABEL_18;
      }

      v6 = v20;
      v24 = v21;
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      if (sub_1B2252E70())
      {
        v25 = sub_1B211E590();
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_21;
        }

        v6 = v25;
      }

      if (v24)
      {
        goto LABEL_20;
      }

      v5 = v50[0];
      sub_1B21129C8(v50[0] + 8 * (v6 >> 6));
      v27 = (v5[6] + 16 * v6);
      *v27 = v9;
      v27[1] = v8;
      memcpy((v5[7] + 216 * v6), v70, 0xD2uLL);
      v28 = v5[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_19;
      }

      v5[2] = v30;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B21150D0();
        sub_1B214400C();
        v4 = v34;
      }

      v32 = *(v4 + 16);
      v31 = *(v4 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1B211156C(v31);
        sub_1B214400C();
        v4 = v35;
      }

      *(v4 + 16) = v32 + 1;
      v33 = v4 + 16 * v32;
      *(v33 + 32) = v9;
      *(v33 + 40) = v8;
      sub_1B218179C(v70);
      sub_1B212AC5C(v56, &qword_1EB7A13A8, &qword_1B2257E40);
      v1 = v42;
      v7 = v43 + 2;
      v6 = v44 - 1;
      if (v44 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_1B2115C3C();
    v38 = (v36 + v6 * v37);
    sub_1B21165CC();
    memcpy(v39, v40, v41);
    memcpy(v38, v70, 0xD2uLL);
    sub_1B218179C(__src);
    sub_1B2115700();
    sub_1B2117408("Fatal error");
    __break(1u);
LABEL_21:
    sub_1B2253390();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1B2112FDC();
  }
}

void sub_1B21A4AD0()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1B2252190();
  v6 = *(v3 + 16);
  v7 = (v3 + 40);
  v8 = &qword_1EB7A1CB8;
  v36 = v4;
  v34 = v1;
  if (v6)
  {
    while (*(v1 + 16))
    {
      v9 = *(v7 - 1);
      v10 = *v7;

      v11 = sub_1B211E590();
      if ((v12 & 1) == 0)
      {
        goto LABEL_17;
      }

      v35 = v6;
      v13 = (*(v1 + 56) + 216 * v11);
      memcpy(__dst, v13, sizeof(__dst));
      memcpy(__src, v13, sizeof(__src));
      memmove(v39, v13, 0xD8uLL);
      v40[0] = v9;
      v40[1] = v10;
      memcpy(v41, __src, sizeof(v41));

      sub_1B21A63AC(__dst, v37);
      sub_1B21A63AC(v39, v37);
      v14 = v8;
      sub_1B212AC5C(v40, v8, &qword_1B225A4C0);
      memcpy(v43, v39, sizeof(v43));
      v42[0] = v9;
      v42[1] = v10;
      memcpy(v37, v39, sizeof(v37));
      memcpy(v46, &v39[48], sizeof(v46));
      sub_1B21A63AC(v43, __src);
      sub_1B224FB7C(MEMORY[0x1E69E7CC0], v45);
      sub_1B21A6408(v45, &v37[48]);
      memcpy(__src, v37, sizeof(__src));
      sub_1B21A63AC(__src, v37);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1B211E590();
      sub_1B2118304();
      if (__OFADD__(v17, v18))
      {
        goto LABEL_18;
      }

      v8 = v15;
      v19 = v16;
      sub_1B21619D8(&qword_1EB7A1CC0, &qword_1B225A4C8);
      if (sub_1B2252E70())
      {
        v20 = sub_1B211E590();
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_21;
        }

        v8 = v20;
      }

      if (v19)
      {
        goto LABEL_20;
      }

      sub_1B21129C8(&v5[v8 >> 6]);
      v22 = (v5[6] + 16 * v8);
      *v22 = v9;
      v22[1] = v10;
      memcpy((v5[7] + 216 * v8), __src, 0xD8uLL);
      v23 = v5[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_19;
      }

      v5[2] = v25;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B21150D0();
        sub_1B214400C();
        v36 = v29;
      }

      v8 = v14;
      v27 = *(v36 + 16);
      v26 = *(v36 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1B211156C(v26);
        sub_1B214400C();
        v36 = v30;
      }

      *(v36 + 16) = v27 + 1;
      v28 = v36 + 16 * v27;
      *(v28 + 32) = v9;
      *(v28 + 40) = v10;
      sub_1B21A6464(__src);
      sub_1B212AC5C(v42, v14, &qword_1B225A4C0);
      v7 += 2;
      v1 = v34;
      v6 = v35 - 1;
      if (v35 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_1B2115C3C();
    v33 = (v31 + v8 * v32);
    memcpy(v37, v33, sizeof(v37));
    memcpy(v33, __src, 0xD8uLL);
    sub_1B21A6464(v37);
    sub_1B2115700();
    sub_1B2117408("Fatal error");
    __break(1u);
LABEL_21:
    sub_1B2253390();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1B2112FDC();
  }
}

void sub_1B21A4EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, _BYTE *), void *a4)
{
  v6 = sub_1B21A5FDC(a2, a3, a4);
  if (!v4)
  {
    v7 = v6;
    v8 = *(a1 + 16);
    swift_retain_n();
    v9 = 0;
    v10 = a1 + 40;
    v11 = MEMORY[0x1E69E7CC0];
LABEL_3:
    for (i = (v10 + 16 * v9); ; i += 2)
    {
      if (v8 == v9)
      {

        return;
      }

      if (v9 >= v8)
      {
        break;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_19;
      }

      if (v7[2])
      {
        v14 = *(i - 1);
        v13 = *i;

        sub_1B211E590();
        if (v15)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B2116B10(0, *(v11 + 16) + 1, 1, v16, v17, v18, v19);
          }

          v21 = *(v11 + 16);
          v20 = *(v11 + 24);
          v22 = v21 + 1;
          if (v21 >= v20 >> 1)
          {
            sub_1B2116B10(v20 > 1, v21 + 1, 1, v16, v17, v18, v19);
            v22 = v21 + 1;
          }

          *(v11 + 16) = v22;
          v23 = v11 + 16 * v21;
          *(v23 + 32) = v14;
          *(v23 + 40) = v13;
          ++v9;
          v10 = a1 + 40;
          goto LABEL_3;
        }
      }

      ++v9;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

void sub_1B21A501C()
{
  sub_1B2111640();
  v4 = v3;
  v6 = v5;
  v7 = 0;
  v9 = *(v8 + 16);
  v66 = v1;
  v67 = v8 + 32;
  v99 = v5;
  for (i = v9; ; v9 = i)
  {
    if (v7 == v9)
    {
      sub_1B2117018(&v95);
      sub_1B2114348();
      v7 = v9;
    }

    else
    {
      if (v7 >= v9)
      {
        goto LABEL_40;
      }

      if (!*(v6 + 16))
      {
        goto LABEL_41;
      }

      v10 = v67 + 16 * v7;
      v0 = *v10;
      v2 = *(v10 + 8);

      sub_1B2122194();
      if ((v11 & 1) == 0)
      {
        goto LABEL_42;
      }

      sub_1B2112028();
      memcpy(v12, v13, v14);
      sub_1B2112028();
      memcpy(v15, v16, v17);
      sub_1B2112028();
      memmove(v18, v19, v20);
      __dst[0] = v0;
      __dst[1] = v2;
      memcpy(&__dst[2], __src, 0xABuLL);

      sub_1B21818BC(v92, &v69);
      sub_1B21818BC(v93, &v69);
      sub_1B212AC5C(__dst, &qword_1EB7A1BD0, &qword_1B226C7C0);
      v21 = __OFADD__(v7++, 1);
      if (v21)
      {
        goto LABEL_43;
      }

      v95 = v0;
      v96 = v2;
      memcpy(v97, v93, sizeof(v97));
      nullsub_1();
      sub_1B2114348();
    }

    memcpy(v97, v98, sizeof(v97));
    v95 = v0;
    v96 = v2;
    if (sub_1B2117000(&v95) == 1)
    {
      sub_1B2112FDC();
      return;
    }

    memcpy(__dst, v98, 0xABuLL);
    if (*(v4[1] + 16))
    {
      sub_1B2122194();
      if (v22)
      {
        sub_1B21818BC(__dst, v93);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v4[1];
        v92[0] = v24;
        sub_1B2122194();
        sub_1B2118304();
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
          goto LABEL_45;
        }

        v30 = v25;
        v31 = v26;
        v32 = sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
        v33 = sub_1B211D8EC(v32);
        if (v33)
        {
          v24 = v92[0];
          v33 = sub_1B2122194();
          if ((v31 & 1) != (v34 & 1))
          {
            goto LABEL_47;
          }

          v30 = v33;
        }

        if (v31)
        {
          sub_1B2114784(v33, v34, v35, v36, v37, v38, v39, v40, v66, v67, i, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], v92[0]);
          memcpy(v0, __dst, 0xABuLL);

          sub_1B219A920(__dst);
          sub_1B219A920(v93);
          v4[1] = v24;
LABEL_24:
          v6 = v99;
          continue;
        }

        v6 = v92[0];
        sub_1B21129C8(v92[0] + 8 * (v30 >> 6));
        sub_1B21160D4();
        v59 = *(v6 + 16);
        v21 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v21)
        {
          goto LABEL_46;
        }

        sub_1B212DEB4(v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B21150D0();
          sub_1B214400C();
          v30 = v64;
        }

        sub_1B2122534();
        if (v58)
        {
          sub_1B214400C();
          v30 = v65;
        }

        goto LABEL_36;
      }
    }

    sub_1B21818BC(__dst, v93);
    sub_1B21818BC(__dst, v93);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v4[1];
    v92[0] = v41;
    sub_1B2122194();
    sub_1B2118304();
    v29 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      break;
    }

    v30 = v42;
    v46 = v43;
    v47 = sub_1B21619D8(&qword_1EB7A1BD8, &qword_1B225A4B0);
    v48 = sub_1B211D8EC(v47);
    if (v48)
    {
      v41 = v92[0];
      v48 = sub_1B2122194();
      if ((v46 & 1) != (v49 & 1))
      {
        goto LABEL_47;
      }

      v30 = v48;
    }

    if (v46)
    {
      sub_1B2114784(v48, v49, v50, v51, v52, v53, v54, v55, v66, v67, i, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], v92[0]);
      memcpy(v0, __dst, 0xABuLL);
      sub_1B219A920(__dst);

      sub_1B219A920(__dst);
      v4[1] = v41;
      sub_1B219A920(v93);
      goto LABEL_24;
    }

    v6 = v92[0];
    sub_1B21129C8(v92[0] + 8 * (v30 >> 6));
    sub_1B21160D4();
    v56 = *(v6 + 16);
    v21 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v21)
    {
      goto LABEL_44;
    }

    sub_1B212DEB4(v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B21150D0();
      sub_1B214400C();
      v30 = v62;
    }

    sub_1B2122534();
    if (v58)
    {
      sub_1B214400C();
      v30 = v63;
    }

    sub_1B219A920(__dst);
LABEL_36:
    sub_1B219A920(__dst);
    *(v30 + 16) = isUniquelyReferenced_nonNull_native;
    v61 = v30 + 16 * v29;
    *(v61 + 32) = v0;
    *(v61 + 40) = v2;
    *v4 = v30;
  }

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
LABEL_47:
  sub_1B2253390();
  __break(1u);
}

uint64_t sub_1B21A5480(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21A5490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a2;
  v11 = sub_1B2252B00();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B22526E0();
  (*(v14 + 16))(a1, v17, a6);
  sub_1B22521F0();
  result = sub_1B2122A98(v13, 1, a7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 8))(v17, a6);
    return (*(*(a7 - 8) + 32))(v20, v13, a7);
  }

  return result;
}

uint64_t sub_1B21A565C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B21A5478(*v1);
  *a1 = result;
  return result;
}

void (*sub_1B21A5690(uint64_t **a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v7 = sub_1B2170FB8(0x40uLL);
  *a1 = v7;
  v9 = a3[2];
  v8 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v7[5] = v11;
  v12 = sub_1B2170FB8(*(v11 + 64));
  v7[6] = v12;
  v13 = sub_1B21A5888(v7, *a2, *v3, v3[1], v9, v8, a3[4]);
  v15 = v14;
  v7[7] = v13;
  (*(*(v9 - 8) + 16))(v12);
  (*(*(v8 - 8) + 16))(&v12[*(TupleTypeMetadata2 + 48)], v15, v8);
  return sub_1B21A5810;
}

void sub_1B21A5810(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_1B21A5888(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v15 = *(TupleTypeMetadata2 - 8);
  a1[1] = v15;
  v16 = sub_1B2170FB8(*(v15 + 64));
  a1[2] = v16;
  sub_1B21A5490(v16, v16 + *(TupleTypeMetadata2 + 48), a2, a3, a4, a5, a6, a7);
  return sub_1B21A599C;
}

void sub_1B21A599C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1B21A5A10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B21A5480(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B21A5A3C(uint64_t *a1)
{
  result = sub_1B21A5480(*a1);
  *a1 = result;
  return result;
}

__n128 sub_1B21A5A68@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1B21A5A78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B21A5AD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1B21A5B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  swift_getTupleTypeMetadata2();
  v6 = sub_1B22526A0();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1B221B368(sub_1B21A5F28, v11, v6, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  v12 = a1;
  swift_getWitnessTable();
  sub_1B22521A0();
  return v9;
}

uint64_t sub_1B21A5C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1, TupleTypeMetadata2, v9);
  v13 = *(TupleTypeMetadata2 + 48);
  (*(*(a2 - 8) + 32))(a4, v11, a2);
  return (*(*(a3 - 8) + 8))(&v11[v13], a3);
}

uint64_t sub_1B21A5DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B21A5B50(a1, a2[2], a2[3], a2[4]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B21A5DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_1B22526B0() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE68930](a2, a4, a5, a6, a7, a8);
}

void *sub_1B21A5F4C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B21A6160(v8, a2, a3, a4);
    v10 = v9;

    return v10;
  }

  return result;
}

void *sub_1B21A5FDC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, _BYTE *), void *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1B21A5F4C(v12, v8, v6, a2, a3);
      MEMORY[0x1B2743C50](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1B2148CEC(0, v8, v9);
  sub_1B21A6160(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

void sub_1B21A6160(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, _BYTE *))
{
  v5 = v4;
  v25 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v31 = v5;
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(a3 + 56) + 216 * v15);
    memcpy(__dst, v19, 0xD2uLL);
    memcpy(__src, v19, 0xD2uLL);

    sub_1B2181728(__dst, v28);
    v20 = v31;
    v21 = a4(v18, v17, __src);
    v5 = v20;
    if (v20)
    {
      memcpy(v28, __src, 0xD2uLL);
      sub_1B218179C(v28);

      return;
    }

    v22 = v21;
    memcpy(v28, __src, 0xD2uLL);
    sub_1B218179C(v28);

    if (v22)
    {
      *(result + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1B21E8248();
        return;
      }
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
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v31 = v5;
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1B21A6348(uint64_t a1)
{
  if ((*(a1 + 72) >> 1) > 0x80000000)
  {
    return -(*(a1 + 72) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B21A64B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(qword_1EB7A1570, &qword_1B225A4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B21A6544(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1B216EE6C(0, v5, 0);
  v6 = v23;
  for (i = (a3 + 56); ; i += 4)
  {
    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    v20[0] = *(i - 3);
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;

    a1(&v21, v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v13 = v21;
    v14 = v22;
    v23 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      v19 = v21;
      sub_1B216EE6C(v15 > 1, v16 + 1, 1);
      v13 = v19;
      v6 = v23;
    }

    *(v6 + 16) = v16 + 1;
    v17 = v6 + 24 * v16;
    *(v17 + 32) = v13;
    *(v17 + 48) = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21A66A4(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1B216EF10(0, v5, 0);
  v6 = v28;
  for (i = (a3 + 56); ; i += 4)
  {
    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v23[0] = *(i - 3);
    v23[1] = v9;
    v23[2] = v10;
    v23[3] = v11;

    a1(&v24, v23);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v13 = v24;
    v12 = v25;
    v15 = v26;
    v14 = v27;
    v28 = v6;
    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      v21 = v25;
      v19 = v27;
      sub_1B216EF10(v16 > 1, v17 + 1, 1);
      v14 = v19;
      v12 = v21;
      v6 = v28;
    }

    *(v6 + 16) = v17 + 1;
    v18 = (v6 + 32 * v17);
    v18[4] = v13;
    v18[5] = v12;
    v18[6] = v15;
    v18[7] = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21A6804(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1B2114114(0, v9, 0, a4, a5, a6, a7);
  v10 = v28;
  for (i = (a3 + 32); ; ++i)
  {
    v25 = *i;

    a1(&v26, &v25);
    if (v8)
    {
      break;
    }

    v8 = 0;

    v18 = v26;
    v19 = v27;
    v28 = v10;
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    if (v21 >= v20 >> 1)
    {
      v24 = v26;
      sub_1B2114114(v20 > 1, v21 + 1, 1, v14, v15, v16, v17);
      v18 = v24;
      v10 = v28;
    }

    *(v10 + 16) = v21 + 1;
    v22 = v10 + 24 * v21;
    *(v22 + 32) = v18;
    *(v22 + 48) = v19;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21A6964(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B213CA68();
  v4 = v13;
  if (v3)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      __dst[0] = v6;
      __dst[1] = v7;
      LOBYTE(__dst[2]) = v8;
      sub_1B2113A20(v6, v7, v8);
      swift_getAtKeyPath();
      sub_1B2113A44(v6, v7, v8);
      memcpy(__dst, __src, 0xA3uLL);
      v13 = v4;
      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_1B213CA68();
        v4 = v13;
      }

      v5 += 24;
      *(v4 + 16) = v9 + 1;
      memcpy((v4 + 168 * v9 + 32), __dst, 0xA3uLL);
      --v3;
    }

    while (v3);
  }

  return v4;
}

void *sub_1B21A6AA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X8>)
{
  v7 = sub_1B2116B08();
  if (v7)
  {
    v8 = v7;
    sub_1B21C2A5C(0, (a1 & 0xC000000000000001) == 0, a1);
    v59 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_43;
    }

    v9 = *(a1 + 32);

    {
      v64 = v9;
      MEMORY[0x1EEE9AC00](i);
      v51 = &v64;
      v3 = 0;
      v11 = sub_1B21A6544(sub_1B21AAAC4, v50, a2);
      v12 = v11;
      v13 = v11[2];
      if (!v13)
      {

        v63[0] = xmmword_1B2259350;
        LOBYTE(v63[1]) = 0;
        sub_1B2127D7C(v63);
        return memcpy(a3, v63, 0xA3uLL);
      }

      v54 = v9;
      v55 = a3;
      a2 = v11[6];
      *(&v53 + 1) = a2;
      if (v13 != 1)
      {
        v58 = a1 & 0xFFFFFFFFFFFFFF8;

        v34 = 0;
        v35 = MEMORY[0x1E69E7CC0];
        while (v8 != v34)
        {
          if (v59)
          {
            a3 = MEMORY[0x1B27427E0](v34, a1);
          }

          else
          {
            if (v34 >= *(v58 + 16))
            {
              goto LABEL_41;
            }

            a3 = *(a1 + 8 * v34 + 32);
          }

          a2 = (v34 + 1);
          if (__OFADD__(v34, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          sub_1B21A8FF0(a3, v12, v62);

          memcpy(v63, v62, 0xA3uLL);
          if (sub_1B213EA68(v63) == 1)
          {
            memcpy(v61, v62, 0xA3uLL);
            sub_1B212ACBC(v61, &qword_1EB7A1CD0);
            ++v34;
          }

          else
          {
            memcpy(v61, v62, 0xA3uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B213B944();
              v35 = v37;
            }

            a3 = *(v35 + 16);
            v36 = *(v35 + 24);
            if (a3 >= v36 >> 1)
            {
              sub_1B211156C(v36);
              sub_1B213B944();
              v35 = v38;
            }

            memcpy(v60, v61, sizeof(v60));
            *(v35 + 16) = a3 + 1;
            memcpy((v35 + 168 * a3 + 32), v60, 0xA3uLL);
            ++v34;
          }
        }

        if (qword_1ED85D4E8 != -1)
        {
          sub_1B21165D8(&qword_1ED85D4E8);
        }

        sub_1B212CDE4();
        *&v63[0] = v39;
        *(&v63[0] + 1) = v40;
        v63[1] = *(v41 + 16);
        LOBYTE(v63[2]) = v42;
        BYTE1(v63[2]) = v43;
        BYTE2(v63[2]) = v44;
        MEMORY[0x1EEE9AC00](v45);
        v50[0] = sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
        v50[1] = sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
        v51 = &protocol witness table for SQLExpression;
        swift_getKeyPath();

        sub_1B224F214();
        v47 = v46;

        sub_1B213B4BC(v63, v47, v55);
      }

      v14 = v11[5];
      v57 = v11[4];

      v15 = sub_1B2116B08();
      v20 = MEMORY[0x1E69E7CC0];
      *&v53 = v14;
      if (!v15)
      {
        break;
      }

      a3 = v15;
      v58 = 0;
      v62[0] = MEMORY[0x1E69E7CC0];
      a2 = v62;
      sub_1B2114114(0, v15 & ~(v15 >> 63), 0, v16, v17, v18, v19);
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_45:
        swift_unexpectedError();
        __break(1u);
        goto LABEL_46;
      }

      v21 = 0;
      v20 = v62[0];
      v56 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v3 = v58;
        if (v59)
        {
          a2 = MEMORY[0x1B27427E0](v21, a1);
        }

        else
        {
          if (v21 >= *(v56 + 16))
          {
            goto LABEL_42;
          }

          a2 = *(a1 + 8 * v21 + 32);
        }

        sub_1B222EAB8(v57, v63);
        v58 = v3;
        if (v3)
        {
          goto LABEL_45;
        }

        v23 = v63[0];
        v24 = v63[1];
        v62[0] = v20;
        v8 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v8 >= v25 >> 1)
        {
          v27 = sub_1B211156C(v25);
          a2 = v62;
          v52 = v28;
          sub_1B2114114(v27, v8 + 1, 1, v29, v30, v31, v32);
          v23 = v52;
          v20 = v62[0];
        }

        *(v20 + 16) = v8 + 1;
        v26 = v20 + 24 * v8;
        *(v26 + 32) = v23;
        *(v26 + 48) = v24;
        ++v21;
        if (v22 == a3)
        {
          v3 = v58;
          goto LABEL_37;
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      i = MEMORY[0x1B27427E0](0, a1);
    }

LABEL_37:
    v62[0] = sub_1B2168F10(v20);
    sub_1B2239E6C(v63, 0, 0, 4);
    sub_1B21678F0(*&v63[0], *(&v63[0] + 1), v63[1]);
    *&v63[0] = sub_1B216E8CC(v62[0]);
    v48 = sub_1B21129D8();
    sub_1B21A9BC4(v48, 0);
    if (v3)
    {
      goto LABEL_47;
    }

    v49 = *&v63[0];
    *(&v63[1] + 1) = &type metadata for Column;
    *&v63[2] = &protocol witness table for Column;
    v63[0] = v53;

    sub_1B21A8EAC(v63, v49, v55);

    sub_1B2113208(v63);
  }

  else
  {
LABEL_46:
    sub_1B2117C80();
    sub_1B2112034("Fatal error");
    __break(1u);
LABEL_47:

    __break(1u);
  }

  return result;
}

void *sub_1B21A70E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = *(a2 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v53 = a3;
      *&__dst[0] = MEMORY[0x1E69E7CC0];
      sub_1B216EE8C(0, v7, 0);
      v9 = *&__dst[0];
      v10 = (a2 + 56);
      do
      {
        v12 = *(v10 - 1);
        v11 = *v10;
        *&__dst[0] = v9;
        v14 = v9[2];
        v13 = v9[3];
        v15 = v14 + 1;

        if (v14 >= v13 >> 1)
        {
          sub_1B216EE8C(v13 > 1, v14 + 1, 1);
          v9 = *&__dst[0];
        }

        v9[2] = v15;
        v16 = &v9[2 * v14];
        v16[4] = v12;
        v16[5] = v11;
        v10 += 4;
        --v7;
      }

      while (v7);
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v15 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v15)
      {

        __dst[0] = xmmword_1B2259350;
        LOBYTE(__dst[1]) = 0;
        sub_1B2127D7C(__dst);
        return memcpy(a3, __dst, 0xA3uLL);
      }

      v53 = a3;
      v9 = MEMORY[0x1E69E7CC0];
    }

    v17 = v9[4];
    v18 = v9[5];

    if (v15 == 1)
    {

      sub_1B2114114(0, v4, 0, v19, v20, v21, v22);
      v23 = v8;
      v24 = xmmword_1B2259350;
      do
      {
        *&__dst[0] = v23;
        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = sub_1B211156C(v25);
          v52 = v29;
          sub_1B2114114(v28, v26 + 1, 1, v30, v31, v32, v33);
          v24 = v52;
          v23 = *&__dst[0];
        }

        *(v23 + 16) = v26 + 1;
        v27 = v23 + 24 * v26;
        *(v27 + 32) = v24;
        *(v27 + 48) = 0;
        --v4;
      }

      while (v4);
      v56[0] = sub_1B2168F10(v23);
      sub_1B2239E6C(__dst, 0, 0, 4);
      sub_1B21678F0(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
      *&__dst[0] = sub_1B216E8CC(v56[0]);
      v40 = sub_1B21129D8();
      sub_1B21A9BC4(v40, 0);

      v41 = *&__dst[0];
      *(&__dst[1] + 1) = &type metadata for Column;
      *&__dst[2] = &protocol witness table for Column;
      *&__dst[0] = v17;
      *(&__dst[0] + 1) = v18;

      sub_1B21A8EAC(__dst, v41, v53);

      return sub_1B2113208(__dst);
    }

    else
    {
      v34 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      while (v4 != v34)
      {
        if (v34 >= v4)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (__OFADD__(v34, 1))
        {
          goto LABEL_31;
        }

        sub_1B21A9410(v9, v56);
        memcpy(__dst, v56, 0xA3uLL);
        if (sub_1B213EA68(__dst) == 1)
        {
          memcpy(v55, v56, 0xA3uLL);
          sub_1B212ACBC(v55, &qword_1EB7A1CD0);
          ++v34;
        }

        else
        {
          memcpy(v55, v56, 0xA3uLL);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B213B944();
            v35 = v38;
          }

          v37 = *(v35 + 16);
          v36 = *(v35 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_1B211156C(v36);
            sub_1B213B944();
            v35 = v39;
          }

          memcpy(v54, v55, sizeof(v54));
          *(v35 + 16) = v37 + 1;
          memcpy((v35 + 168 * v37 + 32), v54, 0xA3uLL);
          ++v34;
        }
      }

      if (qword_1ED85D4E8 == -1)
      {
        goto LABEL_28;
      }

LABEL_32:
      sub_1B21165D8(&qword_1ED85D4E8);
LABEL_28:
      sub_1B212CDE4();
      *&__dst[0] = v43;
      *(&__dst[0] + 1) = v44;
      __dst[1] = *(v45 + 16);
      LOBYTE(__dst[2]) = v46;
      BYTE1(__dst[2]) = v47;
      BYTE2(__dst[2]) = v48;
      MEMORY[0x1EEE9AC00](v49);
      sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
      sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
      swift_getKeyPath();

      sub_1B224F214();
      v51 = v50;

      sub_1B213B4BC(__dst, v51, v53);
    }
  }

  else
  {
    sub_1B2117C80();
    sub_1B2112034("Fatal error");
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1B21A75E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[2];
  if (v4)
  {
    v8 = a1[5];
    v49[0] = a1[4];
    v49[1] = v8;
    MEMORY[0x1EEE9AC00](v49[0]);
    v39 = v49;

    v9 = sub_1B21A66A4(sub_1B21AAA44, v38, a2);
    v10 = v9;
    v11 = *(v9 + 16);
    if (v11)
    {
      v12 = *(v9 + 40);
      v13 = v10[7];
      if (v11 == 1)
      {
        v14 = v10[6];
        v15 = v10[4];
        v16 = v10[5];

        v47[0] = v15;
        v47[1] = v16;
        MEMORY[0x1EEE9AC00](v17);
        v39 = v47;
        v22 = sub_1B21A6804(sub_1B21AAAA4, v38, a1, v18, v19, v20, v21);
        v46[0] = sub_1B2168F10(v22);
        sub_1B2239E6C(v48, 0, 0, 4);
        sub_1B21678F0(*&v48[0], *(&v48[0] + 1), v48[1]);
        *&v48[0] = sub_1B216E8CC(v46[0]);
        sub_1B21A9BC4(sub_1B2172528, 0);

        v23 = *&v48[0];
        *(&v48[1] + 1) = &type metadata for Column;
        *&v48[2] = &protocol witness table for Column;
        *&v48[0] = v14;
        *(&v48[0] + 1) = v13;

        sub_1B21A8EAC(v48, v23, a3);

        sub_1B2113208(v48);
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v42 = v12;
        v43 = a3;

        v41 = v13;

        v24 = 0;
        v44 = MEMORY[0x1E69E7CC0];
        v25 = a1 + 5;
        v40 = a1 + 5;
LABEL_7:
        v26 = &v25[2 * v24];
        while (v4 != v24)
        {
          if (v24 >= v4)
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_22;
          }

          v28 = *(v26 - 1);
          v29 = *v26;

          sub_1B21A9730(v28, v29, v10, v47);

          memcpy(v48, v47, 0xA3uLL);
          if (sub_1B213EA68(v48) != 1)
          {
            memcpy(v46, v47, 0xA3uLL);
            v30 = v44;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B213B944();
              v30 = v32;
            }

            v31 = *(v30 + 16);
            if (v31 >= *(v30 + 24) >> 1)
            {
              sub_1B213B944();
              v30 = v33;
            }

            memcpy(v45, v46, sizeof(v45));
            *(v30 + 16) = v31 + 1;
            v44 = v30;
            memcpy((v30 + 168 * v31 + 32), v45, 0xA3uLL);
            v24 = v27;
            v25 = v40;
            goto LABEL_7;
          }

          memcpy(v46, v47, 0xA3uLL);
          sub_1B212ACBC(v46, &qword_1EB7A1CD0);
          ++v24;
          v26 += 2;
        }

        if (qword_1ED85D4E8 == -1)
        {
          goto LABEL_19;
        }

LABEL_23:
        v34 = swift_once();
LABEL_19:
        v48[0] = xmmword_1ED85D4F0;
        v48[1] = xmmword_1ED85D500;
        LOWORD(v48[2]) = word_1ED85D510;
        BYTE2(v48[2]) = byte_1ED85D512;
        MEMORY[0x1EEE9AC00](v34);
        v38[0] = sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
        v38[1] = sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
        v39 = &protocol witness table for SQLExpression;
        swift_getKeyPath();

        sub_1B224F214();
        v36 = v35;

        sub_1B213B4BC(v48, v36, v43);
      }
    }

    else
    {

      v48[0] = xmmword_1B2259350;
      LOBYTE(v48[1]) = 0;
      sub_1B2127D7C(v48);
      memcpy(a3, v48, 0xA3uLL);
    }
  }

  else
  {
    sub_1B2252EC0();
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1B21A7C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(_BYTE *, uint64_t, uint64_t, void *, uint64_t, uint64_t, double))
{
  v13 = *a4;
  v14 = a4[1];
  v15 = sub_1B213574C();
  v17[0] = v13;
  v17[1] = v14;
  a9(v18, a2, a3, v17, a5, a6, v15);

  return sub_1B2181698(v13);
}

uint64_t sub_1B21A7D38(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(_BYTE *, uint64_t, uint64_t, void *, uint64_t, uint64_t, double))
{
  v13 = a1[1];
  v14 = *a4;
  v15 = a4[1];
  v18[2] = *a1;
  v18[3] = v13;
  type metadata accessor for Table(0, a6, a3, a4);
  v16 = sub_1B21518F0(v19);
  v18[0] = v14;
  v18[1] = v15;
  a8(v19, a2, a3, v18, a5, a6, v16);

  return sub_1B2181698(v14);
}

uint64_t static TableRecord.association<A>(to:on:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t *x8_0@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for CommonTableExpression(0, a5, v10, v11);
  sub_1B21518F0(__srca);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *&v14 = sub_1B219A420;
  *(&v14 + 1) = v12;
  v15 = 0;
  v16 = 0;
  v17 = 0x80;
  sub_1B21D92BC(__srca, &v14, x8_0);
}

uint64_t static TableRecord.association<A>(to:)@<X0>(void *__src@<X0>, uint64_t a3@<X2>, uint64_t *x8_0@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for CommonTableExpression(0, a3, v6, v7);
  sub_1B21518F0(__srca);
  *&v9 = sub_1B21C5B28;
  *(&v9 + 1) = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0x80;
  return sub_1B21D92BC(__srca, &v9, x8_0);
}

void *static TableRecord.hasMany<A, B>(_:through:using:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B21119D0();
  v21 = sub_1B2114758(v13, v14, v15, v16, v17, v18, v19, v20);
  v22(v21);
  v23 = sub_1B211D618();
  v24(v23);
  sub_1B216CEF8(v44);
  swift_getAssociatedTypeWitness();
  sub_1B2118008();
  result = sub_1B21E1C58(v25, v26);
  if (v11)
  {
    v28 = sub_1B212DED4();
    type metadata accessor for HasManyThroughAssociation(v28, v29, v30, v31);
    WitnessTable = swift_getWitnessTable();
    sub_1B2118310(WitnessTable, v33, v34, v35, v36, v37, v38, v39, v42, v43);
    AssociationToMany.forKey(_:)(v40, v41);
  }

  else
  {
    *v12 = v44;
  }

  return result;
}

void *static TableRecord.hasOne<A, B>(_:through:using:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B21119D0();
  v21 = sub_1B2114758(v13, v14, v15, v16, v17, v18, v19, v20);
  v22(v21);
  v23 = sub_1B211D618();
  v24(v23);
  sub_1B216CEF8(v44);
  swift_getAssociatedTypeWitness();
  sub_1B2118008();
  result = sub_1B21E1C58(v25, v26);
  if (v11)
  {
    v28 = sub_1B212DED4();
    type metadata accessor for HasOneThroughAssociation(v28, v29, v30, v31);
    WitnessTable = swift_getWitnessTable();
    sub_1B2118310(WitnessTable, v33, v34, v35, v36, v37, v38, v39, v42, v43);
    AssociationToOne.forKey(_:)(v40, v41);
  }

  else
  {
    *v12 = v44;
  }

  return result;
}

void *TableRecord<>.request<A>(for:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v10 = *(a5 + 16);
  v34 = *(v10 + 8);
  v34(&v37, a2, v10);
  if (*(v37 + 16))
  {
    v32 = a1;
    v33 = a6;
    memcpy(__dst, (v37 + 32), 0xE3uLL);
    v11 = __dst[3];
    v12 = __dst[4];
    v13 = __dst[5];
    v14 = __dst[6];
    v15 = SLOBYTE(__dst[7]);
    sub_1B21819B8(__dst, __src);

    v16 = sub_1B2117434();
    sub_1B2181640(v16, v17, v18, v19, v20);
    sub_1B2181A14(__dst);
    if ((v15 & 0x80000000) == 0)
    {
      v38[0] = v11;
      v38[1] = v12;
      v38[2] = v13;
      v38[3] = v14;
      v39 = v15 & 1;
      v34(__src, a2, v10);
      v35 = __src[0];

      sub_1B21A838C(&v35, v38, v6, v32);
      v21 = sub_1B2117434();
      sub_1B21816DC(v21, v22, v23, v24, v25);

      sub_1B2209954(__src);

      swift_getAssociatedTypeWitness();
      return sub_1B2135E6C(__src, v33);
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1B2117434();
  sub_1B21816DC(v27, v28, v29, v30, v31);
  sub_1B2252EC0();
  __break(1u);

  __break(1u);
  return result;
}

void sub_1B21A838C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v6 = *(a4 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = *v8;
  if (*(*v8 + 16))
  {
    v25 = v8;
    v15 = v9;
    v35 = v13;
    v27 = v11;
    v28 = v12;
    v26 = v10;
    memcpy(v32, v14 + 12, 0xA2uLL);
    (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v16 = (*(v6 + 80) + 89) & ~*(v6 + 80);
    v17 = swift_allocObject();
    v18 = v26;
    v19 = v27;
    *(v17 + 16) = v4;
    *(v17 + 24) = v18;
    v20 = v28;
    *(v17 + 32) = v19;
    *(v17 + 40) = v20;
    *(v17 + 48) = v35;
    v21 = *(v15 + 16);
    *(v17 + 56) = *v15;
    *(v17 + 72) = v21;
    *(v17 + 88) = *(v15 + 32);
    (*(v6 + 32))(v17 + v16, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v4 = v32;
    sub_1B21C35B0(sub_1B21A8BB8, v17, v31);
    sub_1B21A8C14(v15, v33);

    if (v14[2])
    {
      memcpy(v33, v14 + 4, 0xE3uLL);
      memcpy(v30, v14 + 4, sizeof(v30));
      memcpy(__dst, v14 + 12, 0xA2uLL);
      sub_1B21819B8(v33, v29);
      sub_1B2137224(__dst);
      memcpy(&v30[64], v31, 0xA2uLL);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = v25;
      *v25 = v14;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_8:
  sub_1B21956E4();
  v14 = v23;
  *v4 = v23;
LABEL_4:
  if (v14[2])
  {
    memcpy(v29, v14 + 4, 0xE3uLL);
    memcpy(v14 + 4, v30, 0xE3uLL);
    sub_1B2181A14(v29);
    *v4 = v14;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B21A8608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v34 = a3;
  v35 = a5;
  v31 = a6;
  v33 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 8);
  v36 = v11;
  v14 = v12(v13, v11, v9);
  v16 = *(a2 + 32);
  v17 = *(a2 + 16);
  if (v16)
  {
    v18 = v14;
  }

  else
  {
    v18 = *a2;
  }

  if (*(a2 + 32))
  {
    v19 = v15;
  }

  else
  {
    v19 = *(a2 + 8);
  }

  if (*(a2 + 32))
  {
    v20 = *a2;
  }

  else
  {
    v20 = v14;
  }

  if (*(a2 + 32))
  {
    v21 = *(a2 + 8);
  }

  else
  {
    v21 = v15;
  }

  if (v17)
  {
    v22 = *(a2 + 24);
  }

  else
  {
    v22 = 0;
  }

  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = v17;
  v42 = v22;

  v23 = v43;
  v24 = sub_1B21D9790(a1);
  if (v23)
  {
  }

  else
  {
    v26 = v24;

    v27 = sub_1B21D9D18(v16, v26);

    sub_1B21619D8(&qword_1EB7A1CC8, &qword_1B225A4D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    v29 = v32;
    (*(v33 + 16))(v32, v34, a4);

    sub_1B2143368(v30, v29, a4, v35, v36);
    sub_1B21A75E8(inited, v27, v31);

    swift_setDeallocating();
    return sub_1B21B71B8();
  }
}

uint64_t sub_1B21A88EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2116104(a1, a2, a3, a4);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, v5, v6, v7);
  sub_1B2115698(InterfaceRequest);
  v9 = sub_1B21221AC();
  v10 = v4(v9);
  sub_1B2116508(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  sub_1B2111808();
  return (*(v18 + 8))(v41, v5);
}

uint64_t sub_1B21A89B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B2116104(a1, a2, a3, a4);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, v5, v6, v7);
  sub_1B2115698(InterfaceRequest);
  v9 = sub_1B21221AC();
  v10 = v4(v9);
  sub_1B2116508(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  sub_1B2111808();
  return (*(v18 + 8))(v41, v5);
}

uint64_t sub_1B21A8A50(uint64_t a1, uint64_t a2)
{
  sub_1B212CFD8(a1, a2);
  static TableRecord.all()(v4);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a2, v5, v6);
  v8 = sub_1B211508C(InterfaceRequest);
  v9 = DerivableRequest.annotated(with:)(a1, a2, v8);
  sub_1B2116508(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  sub_1B2111808();
  return (*(v17 + 8))(v40, a2);
}

uint64_t static TableRecord.having(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B212CFD8(a1, a2);
  static TableRecord.all()(v3);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest(0, a2, v4, v5);
  sub_1B211508C(InterfaceRequest);
  DerivableRequest.having(_:)();
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808();
  return (*(v7 + 8))(__dst, a2);
}

uint64_t sub_1B21A8C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = a5[5];
  v12 = a5[6];
  sub_1B21139A0(a5 + 2, v11);
  v13 = (*(v12 + 88))(a1, a2, v11, v12);
  if (v14)
  {
    sub_1B2252CD0();

    MEMORY[0x1B2741EB0](a1, a2);
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    *a6 = v13;
    a6[1] = a3;
    a6[2] = a4;
  }

  return result;
}

uint64_t sub_1B21A8D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

uint64_t sub_1B21A8DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a1;
  v13 = a2;
  sub_1B219020C();
  v4 = v15;
  if (v15)
  {
    v5 = v16;
    sub_1B21139A0(v14, v15);
    (*(v5 + 24))(&v10, v4, v5);
    v9 = v10;
    v6 = v11;
    result = sub_1B2113208(v14);
    v8 = v9;
  }

  else
  {
    result = sub_1B212ACBC(v14, &qword_1EB7A0E30);
    v8 = 0uLL;
    v6 = 4;
  }

  *a3 = v8;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_1B21A8EAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
  sub_1B21202F4(&qword_1ED85DE50, &qword_1EB7A10C0);
  KeyPath = swift_getKeyPath();

  v7 = sub_1B21A6964(a2, KeyPath);

  __src[0] = v7;
  sub_1B21513E8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v8 = a1[3];
  v9 = a1[4];
  sub_1B21139A0(a1, v8);
  (*(*(v9 + 8) + 8))(v11, v8);
  sub_1B2151410(v11, a3);
  memcpy(v14, v11, 0xA3uLL);
  sub_1B21356F8(v14);
  memcpy(v15, __dst, 0xA2uLL);
  return sub_1B2151630(v15);
}

void *sub_1B21A8FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v5 = *(a2 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v6 = (a2 + 48);
  if (v5)
  {
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *(v6 - 2);

      if (!v8)
      {
        break;
      }

      sub_1B222EAB8(v9, v25);
      if (v4)
      {
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v10 = *v25;
      v11 = v25[16];
      if (v25[16] == 4 && *v25 == 0)
      {

        sub_1B2113A44(0, 0, 4);

        sub_1B2179418(v25);
        return memcpy(a3, v25, 0xA3uLL);
      }

      v24[0] = v7;
      v24[1] = v8;
      sub_1B2134F5C(v24);
      memcpy(v23, v24, 0xA3uLL);
      __src[0] = v10;
      LOBYTE(__src[1]) = v11;
      sub_1B2127D7C(__src);
      memcpy(v22, __src, sizeof(v22));
      memcpy(v25, v24, sizeof(v25));
      memcpy(v26, __src, sizeof(v26));
      sub_1B2113A20(v10, *(&v10 + 1), v11);

      sub_1B2113A20(v10, *(&v10 + 1), v11);

      sub_1B2113A20(v10, *(&v10 + 1), v11);
      sub_1B2113A44(0, 0, 4);
      sub_1B2113A44(v10, *(&v10 + 1), v11);
      sub_1B212ACBC(v25, &qword_1EB7A1CE0);
      sub_1B21353B0(0, v23, v21);
      sub_1B2113A44(v10, *(&v10 + 1), v11);

      v12 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B213B944();
        v28 = v15;
      }

      v13 = *(v28 + 16);
      if (v13 >= *(v28 + 24) >> 1)
      {
        sub_1B213B944();
        v28 = v16;
      }

      sub_1B2113A44(v10, *(&v10 + 1), v11);

      v14 = v28;
      *(v28 + 16) = v13 + 1;
      a1 = memcpy((v14 + 168 * v13 + 32), v21, 0xA3uLL);
      v6 += 3;
      v5 = v12 - 1;
      v4 = 0;
    }

    while (v12 != 1);
  }

  if (qword_1ED85DC80 != -1)
  {
    a1 = swift_once();
  }

  *v25 = xmmword_1ED85DC88;
  *&v25[16] = xmmword_1ED85DC98;
  *&v25[32] = word_1ED85DCA8;
  v25[34] = byte_1ED85DCAA;
  MEMORY[0x1EEE9AC00](a1);
  sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
  sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
  swift_getKeyPath();

  sub_1B224F214();
  v18 = v17;

  sub_1B213B4BC(v25, v18, __src);

  memcpy(v25, __src, sizeof(v25));
  nullsub_1();
  return memcpy(a3, v25, 0xA3uLL);
}

void *sub_1B21A9410@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v2 = *(a1 + 16);
  v3 = (a1 + 40);
  for (i = MEMORY[0x1E69E7CC0]; v2; --v2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;

    if (!v6)
    {
      break;
    }

    v15[0] = v5;
    v15[1] = v6;
    sub_1B2134F5C(v15);
    memcpy(v16, v15, 0xA3uLL);
    v17[0] = xmmword_1B2259350;
    LOBYTE(v17[1]) = 0;
    sub_1B2127D7C(v17);
    memcpy(v13, v17, sizeof(v13));
    memcpy(v18, v15, sizeof(v18));
    memcpy(v19, v17, sizeof(v19));

    sub_1B2127DC0(v16, __src);
    sub_1B212ACBC(v18, &qword_1EB7A1CE0);
    memcpy(v14, v16, 0xA3uLL);
    sub_1B21353B0(0, v14, __src);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B213B944();
      i = v8;
    }

    v7 = *(i + 16);
    if (v7 >= *(i + 24) >> 1)
    {
      sub_1B213B944();
      i = v9;
    }

    *(i + 16) = v7 + 1;
    a1 = memcpy((i + 168 * v7 + 32), __src, 0xA3uLL);
    v3 += 2;
  }

  if (qword_1ED85DC80 != -1)
  {
    a1 = swift_once();
  }

  *v18 = xmmword_1ED85DC88;
  *&v18[16] = xmmword_1ED85DC98;
  *&v18[32] = word_1ED85DCA8;
  v18[34] = byte_1ED85DCAA;
  MEMORY[0x1EEE9AC00](a1);
  sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
  sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
  swift_getKeyPath();

  sub_1B224F214();
  v11 = v10;

  sub_1B213B4BC(v18, v11, __src);

  memcpy(v18, __src, sizeof(v18));
  nullsub_1();
  return memcpy(v21, v18, 0xA3uLL);
}

void *sub_1B21A9730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v22 = a1;
  v4 = *(a3 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 56); v4; --v4)
  {
    v6 = *(i - 1);
    v7 = *i;
    v8 = *(i - 2);

    if (!v8)
    {
      break;
    }

    v24 = i;
    v28[0] = v22;
    v28[1] = a2;
    sub_1B219020C();
    v9 = *&v29[24];
    if (*&v29[24])
    {
      v10 = *&v29[32];
      sub_1B21139A0(v29, *&v29[24]);
      (*(v10 + 24))(__src, v9, v10);
      v11 = __src[0];
      v12 = __src[1];
      v13 = LOBYTE(__src[2]);
      sub_1B2113208(v29);
    }

    else
    {
      sub_1B212ACBC(v29, &qword_1EB7A0E30);
      v11 = 0;
      v12 = 0;
      v13 = 4;
    }

    if (v13 == 4 && !(v12 | v11))
    {
      sub_1B2113A44(0, 0, 4);

      sub_1B2179418(v29);
      return memcpy(a4, v29, 0xA3uLL);
    }

    v28[0] = v6;
    v28[1] = v7;
    sub_1B2134F5C(v28);
    memcpy(v27, v28, 0xA3uLL);
    __src[0] = v11;
    __src[1] = v12;
    LOBYTE(__src[2]) = v13;
    sub_1B2127D7C(__src);
    memcpy(v26, __src, sizeof(v26));
    memcpy(v29, v28, sizeof(v29));
    memcpy(v30, __src, sizeof(v30));
    sub_1B2113A20(v11, v12, v13);
    sub_1B2113A20(v11, v12, v13);
    sub_1B2113A20(v11, v12, v13);

    swift_bridgeObjectRetain_n();
    sub_1B2113A44(0, 0, 4);
    sub_1B2113A44(v11, v12, v13);
    sub_1B212ACBC(v29, &qword_1EB7A1CE0);
    sub_1B21353B0(0, v27, v25);
    sub_1B2113A44(v11, v12, v13);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B213B944();
      v32 = v16;
    }

    v14 = *(v32 + 16);
    if (v14 >= *(v32 + 24) >> 1)
    {
      sub_1B213B944();
      v32 = v17;
    }

    sub_1B2113A44(v11, v12, v13);
    v15 = v32;
    *(v32 + 16) = v14 + 1;
    memcpy((v15 + 168 * v14 + 32), v25, 0xA3uLL);

    i = v24 + 4;
  }

  if (qword_1ED85DC80 != -1)
  {
    a1 = swift_once();
  }

  *v29 = xmmword_1ED85DC88;
  *&v29[16] = xmmword_1ED85DC98;
  *&v29[32] = word_1ED85DCA8;
  v29[34] = byte_1ED85DCAA;
  MEMORY[0x1EEE9AC00](a1);
  sub_1B21619D8(&qword_1EB7A1CD8, &unk_1B225EDE0);
  sub_1B21202F4(&qword_1ED85D868, &qword_1EB7A1CD8);
  swift_getKeyPath();

  sub_1B224F214();
  v19 = v18;

  sub_1B213B4BC(v29, v19, __src);

  memcpy(v29, __src, sizeof(v29));
  nullsub_1();
  return memcpy(a4, v29, 0xA3uLL);
}

uint64_t sub_1B21A9BC4(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A1570();
    v5 = v6;
  }

  result = sub_1B21A9C48(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_1B21A9C48(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1B2252FC0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v9 = sub_1B2252610();
        *(v9 + 16) = v8;
      }

      v10[0] = (v9 + 32);
      v10[1] = v8;
      sub_1B21A9E98(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1B21A9D4C(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1B21A9D4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v29 = *v4;
    v7 = (v29 + 24 * a3);
    v8 = result - a3;
LABEL_4:
    v21 = v7;
    v22 = a3;
    v20 = v8;
    v9 = v7;
    while (1)
    {
      v10 = *(v7 + 1);
      v11 = *(v7 + 16);
      v26 = *v7;
      v27 = v10;
      v12 = *(v9 - 3);
      v13 = *(v9 - 2);
      v9 = (v9 - 24);
      v28 = v11;
      v14 = *(v9 + 16);
      v23 = v12;
      v24 = v13;
      v25 = v14;
      sub_1B2113A20(v26, v10, v11);
      sub_1B2113A20(v12, v13, v14);
      v15 = a4(&v26, &v23);
      sub_1B2113A44(v23, v24, v25);
      result = sub_1B2113A44(v26, v27, v28);
      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v29)
        {
          __break(1u);
          return result;
        }

        v16 = *(v7 + 16);
        v17 = *v7;
        *v7 = *v9;
        *(v7 + 2) = *(v9 + 2);
        *(v7 - 24) = v17;
        *(v7 - 8) = v16;
        v7 = v9;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v22 + 1;
      v7 = (v21 + 24);
      v8 = v20 - 1;
      if (v22 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1B21A9E98(uint64_t **result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v136 = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v127 = *result;
    if (*result)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_96;
    }

    goto LABEL_136;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v121 = v10;
      v13 = *a3;
      v14 = v9 + 1;
      v15 = *a3 + 24 * v12;
      v16 = *(v15 + 8);
      v17 = *(v15 + 16);
      v133 = *v15;
      v134 = v16;
      v135 = v17;
      v18 = v13 + 24 * v11;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v130 = *v18;
      v19 = v130;
      v131 = v20;
      v132 = v21;
      sub_1B2113A20(v133, v16, v17);
      sub_1B2113A20(v19, v20, v21);
      LODWORD(v127) = a4(&v133, &v130);
      if (v7)
      {
LABEL_104:
        sub_1B2113A44(v130, v131, v132);
        sub_1B2113A44(v133, v134, v135);
        goto LABEL_105;
      }

      sub_1B2113A44(v130, v131, v132);
      sub_1B2113A44(v133, v134, v135);
      v124 = 24 * v11;
      v22 = (v13 + 24 * v11 + 64);
      v119 = v11;
      v23 = v11 + 2;
      v12 = v14;
      while (1)
      {
        v24 = v12;
        v25 = v23;
        if (v12 + 1 >= v8)
        {
          break;
        }

        v26 = v8;
        v27 = *(v22 - 1);
        v28 = *v22;
        v133 = *(v22 - 2);
        v134 = v27;
        v135 = v28;
        v30 = *(v22 - 4);
        v31 = *(v22 - 24);
        v130 = *(v22 - 5);
        v29 = v130;
        v131 = v30;
        v132 = v31;
        sub_1B2113A20(v133, v27, v28);
        sub_1B2113A20(v29, v30, v31);
        LODWORD(v29) = a4(&v133, &v130);
        sub_1B2113A44(v130, v131, v132);
        sub_1B2113A44(v133, v134, v135);
        v22 += 24;
        ++v12;
        v23 = v25 + 1;
        v8 = v26;
        if ((v127 ^ v29))
        {
          goto LABEL_10;
        }
      }

      v12 = v8;
LABEL_10:
      if (v127)
      {
        if (v12 < v119)
        {
          goto LABEL_130;
        }

        v32 = v119 <= v24;
        v10 = v121;
        v11 = v119;
        if (v32)
        {
          if (v8 >= v25)
          {
            v33 = v25;
          }

          else
          {
            v33 = v8;
          }

          v34 = 24 * v33;
          v35 = v12;
          v36 = v119;
          v37 = v124;
          do
          {
            if (v36 != --v35)
            {
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              v39 = (v38 + v37);
              v40 = v38 + v34;
              v41 = *(v39 + 16);
              v42 = *v39;
              v43 = *(v40 - 8);
              *v39 = *(v40 - 24);
              *(v39 + 2) = v43;
              *(v40 - 24) = v42;
              *(v40 - 8) = v41;
            }

            ++v36;
            v34 -= 24;
            v37 += 24;
          }

          while (v36 < v35);
        }
      }

      else
      {
        v11 = v119;
        v10 = v121;
      }
    }

    v44 = a3[1];
    if (v12 >= v44)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_126;
    }

    if (v12 - v11 >= a6)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      return;
    }

    if (v11 + a6 >= v44)
    {
      v45 = a3[1];
    }

    else
    {
      v45 = v11 + a6;
    }

    if (v45 < v11)
    {
      goto LABEL_129;
    }

    if (v12 != v45)
    {
      v91 = v11;
      v92 = *a3;
      v93 = *a3 + 24 * v12;
      v120 = v91;
      v122 = v10;
      v94 = v91 - v12;
      v116 = v45;
      do
      {
        v126 = v12;
        v127 = v93;
        v117 = v94;
        v95 = v93;
        do
        {
          v96 = *(v93 + 8);
          v97 = *(v93 + 16);
          v133 = *v93;
          v134 = v96;
          v98 = *(v95 - 24);
          v99 = *(v95 - 16);
          v95 -= 24;
          v135 = v97;
          v100 = *(v95 + 16);
          v130 = v98;
          v131 = v99;
          v132 = v100;
          sub_1B2113A20(v133, v96, v97);
          sub_1B2113A20(v98, v99, v100);
          v101 = a4(&v133, &v130);
          if (v7)
          {
            goto LABEL_104;
          }

          v102 = v101;
          sub_1B2113A44(v130, v131, v132);
          sub_1B2113A44(v133, v134, v135);
          if ((v102 & 1) == 0)
          {
            break;
          }

          if (!v92)
          {
            goto LABEL_133;
          }

          v103 = *(v93 + 16);
          v104 = *v93;
          *v93 = *v95;
          *(v93 + 16) = *(v95 + 16);
          *(v93 - 24) = v104;
          *(v93 - 8) = v103;
          v93 = v95;
        }

        while (!__CFADD__(v94++, 1));
        ++v12;
        v93 = (v127 + 3);
        v94 = v117 - 1;
      }

      while (v126 + 1 != v116);
      v12 = v116;
      v11 = v120;
      v10 = v122;
    }

LABEL_33:
    if (v12 < v11)
    {
      goto LABEL_125;
    }

    v125 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B2161EC4(0, *(v10 + 2) + 1, 1, v10);
      v10 = v106;
    }

    v47 = *(v10 + 2);
    v46 = *(v10 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      sub_1B2161EC4(v46 > 1, v47 + 1, 1, v10);
      v10 = v107;
    }

    *(v10 + 2) = v48;
    v49 = v10 + 32;
    v50 = &v10[16 * v47 + 32];
    *v50 = v11;
    *(v50 + 1) = v125;
    v127 = *result;
    if (!*result)
    {
      goto LABEL_135;
    }

    if (v47)
    {
      break;
    }

LABEL_82:
    v8 = a3[1];
    v9 = v125;
    if (v125 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v51 = v48 - 1;
    v52 = &v49[16 * v48 - 16];
    v53 = &v10[16 * v48];
    if (v48 >= 4)
    {
      v58 = &v49[16 * v48];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_113;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_114;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_116;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_119;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_124;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_53;
    }

    if (v48 == 3)
    {
      v54 = *(v10 + 4);
      v55 = *(v10 + 5);
      v64 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      v57 = v64;
LABEL_53:
      if (v57)
      {
        goto LABEL_115;
      }

      v69 = *v53;
      v68 = *(v53 + 1);
      v70 = __OFSUB__(v68, v69);
      v71 = v68 - v69;
      v72 = v70;
      if (v70)
      {
        goto LABEL_118;
      }

      v73 = *(v52 + 1);
      v74 = v73 - *v52;
      if (__OFSUB__(v73, *v52))
      {
        goto LABEL_121;
      }

      if (__OFADD__(v71, v74))
      {
        goto LABEL_123;
      }

      if (v71 + v74 >= v56)
      {
        if (v56 < v74)
        {
          v51 = v48 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (v48 < 2)
    {
      goto LABEL_117;
    }

    v76 = *v53;
    v75 = *(v53 + 1);
    v64 = __OFSUB__(v75, v76);
    v71 = v75 - v76;
    v72 = v64;
LABEL_68:
    if (v72)
    {
      goto LABEL_120;
    }

    v78 = *v52;
    v77 = *(v52 + 1);
    v64 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if (v64)
    {
      goto LABEL_122;
    }

    if (v79 < v71)
    {
      goto LABEL_82;
    }

LABEL_75:
    if (v51 - 1 >= v48)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_131;
    }

    v83 = v10;
    v84 = &v49[16 * v51 - 16];
    v85 = *v84;
    v86 = v51;
    v87 = &v49[16 * v51];
    v88 = *(v87 + 1);
    sub_1B21AA620((*a3 + 24 * *v84), (*a3 + 24 * *v87), *a3 + 24 * v88, v127, a4);
    if (v7)
    {
      goto LABEL_105;
    }

    if (v88 < v85)
    {
      goto LABEL_107;
    }

    v7 = v49;
    v89 = *(v83 + 2);
    if (v86 > v89)
    {
      goto LABEL_108;
    }

    *v84 = v85;
    *(v84 + 1) = v88;
    if (v86 >= v89)
    {
      goto LABEL_109;
    }

    v90 = v86;
    v48 = v89 - 1;
    sub_1B21A00E4(v87 + 16, v89 - 1 - v90, v87);
    v10 = v83;
    *(v83 + 2) = v89 - 1;
    v32 = v89 > 2;
    v49 = v7;
    v7 = 0;
    if (!v32)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  v10 = sub_1B21A00CC();
LABEL_96:
  v108 = v10 + 16;
  v109 = *(v10 + 2);
  while (v109 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_132;
    }

    v110 = v10;
    v111 = &v10[16 * v109];
    v112 = *v111;
    v113 = &v108[2 * v109];
    v114 = *(v113 + 1);
    sub_1B21AA620((*a3 + 24 * *v111), (*a3 + 24 * *v113), *a3 + 24 * v114, v127, a4);
    if (v7)
    {
      break;
    }

    if (v114 < v112)
    {
      goto LABEL_110;
    }

    if (v109 - 2 >= *v108)
    {
      goto LABEL_111;
    }

    *v111 = v112;
    *(v111 + 1) = v114;
    v115 = *v108 - v109;
    if (*v108 < v109)
    {
      goto LABEL_112;
    }

    v109 = *v108 - 1;
    sub_1B21A00E4(v113 + 16, v115, v113);
    *v108 = v109;
    v10 = v110;
  }

LABEL_105:
}

uint64_t sub_1B21AA620(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v48 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 24;
  v10 = (a3 - a2) / 24;
  if (v9 >= v10)
  {
    v56 = v5;
    sub_1B213CECC();
    v47 = &a4[3 * v10];
    __src = a4;
LABEL_15:
    v23 = 0;
    v44 = v7 - 3;
    while (1)
    {
      v12 = &v47[v23 / 8];
      if (&v47[v23 / 8] <= a4 || v7 <= a1)
      {
LABEL_29:
        v37 = 3 * ((v12 - a4) / 24);
        v38 = v7 < a4 || v7 >= &a4[v37];
        if (v38 || v7 != a4)
        {
          v39 = v7;
          goto LABEL_41;
        }

        return 1;
      }

      v25 = *(v12 - 2);
      v53 = *(v12 - 3);
      v54 = v25;
      v55 = *(v12 - 8);
      v27 = *(v7 - 2);
      v50 = *(v7 - 3);
      v26 = v50;
      v51 = v27;
      v52 = *(v7 - 8);
      v28 = v52;
      sub_1B2113A20(v53, v25, v55);
      sub_1B2113A20(v26, v27, v28);
      v29 = v56;
      v30 = a5(&v53, &v50);
      v56 = v29;
      if (v29)
      {
        break;
      }

      v31 = v30;
      v32 = v7;
      v33 = (v48 + v23);
      v34 = v48 + v23 - 24;
      sub_1B2113A44(v50, v51, v52);
      sub_1B2113A44(v53, v54, v55);
      if (v31)
      {
        v47 = (v47 + v23);
        v48 = v48 + v23 - 24;
        a4 = __src;
        v7 -= 3;
        if (v33 != v32)
        {
          v36 = *v44;
          *(v34 + 16) = v44[2];
          *v34 = v36;
          v7 = v44;
          v48 = v34;
        }

        goto LABEL_15;
      }

      if (v12 != (v48 + v23))
      {
        v35 = *(v12 - 3);
        *(v48 + v23 - 8) = *(v12 - 1);
        *v34 = v35;
      }

      v23 -= 24;
      a4 = __src;
    }

    sub_1B2113A44(v50, v51, v52);
    sub_1B2113A44(v53, v54, v55);
    v41 = __src;
    v37 = 3 * ((v47 - __src + v23) / 24);
    if (v7 < __src || v7 >= &__src[3 * ((v47 - __src + v23) / 24)])
    {
      memmove(v7, __src, v37 * 8);
      return 1;
    }

    if (v7 != __src)
    {
      v39 = v7;
      goto LABEL_42;
    }
  }

  else
  {
    v11 = a3;
    sub_1B213CECC();
    v12 = &a4[3 * v9];
    while (1)
    {
      if (a4 >= v12 || v7 >= v11)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v14 = v7[1];
      v53 = *v7;
      v54 = v14;
      v55 = *(v7 + 16);
      v16 = a4[1];
      v50 = *a4;
      v15 = v50;
      v51 = v16;
      v52 = *(a4 + 16);
      v17 = v52;
      sub_1B2113A20(v53, v14, v55);
      sub_1B2113A20(v15, v16, v17);
      v18 = a5(&v53, &v50);
      if (v5)
      {
        break;
      }

      v19 = v18;
      sub_1B2113A44(v50, v51, v52);
      sub_1B2113A44(v53, v54, v55);
      if (v19)
      {
        v20 = v7;
        v21 = v8 == v7;
        v7 += 3;
      }

      else
      {
        v20 = a4;
        v21 = v8 == a4;
        a4 += 3;
      }

      v11 = v48;
      if (!v21)
      {
        v22 = *v20;
        v8[2] = v20[2];
        *v8 = v22;
      }

      v8 += 3;
    }

    sub_1B2113A44(v50, v51, v52);
    sub_1B2113A44(v53, v54, v55);
    v37 = 3 * ((v12 - a4) / 24);
    v40 = v8 < a4 || v8 >= &a4[v37];
    if (v40 || v8 != a4)
    {
      v39 = v8;
LABEL_41:
      v41 = a4;
LABEL_42:
      memmove(v39, v41, v37 * 8);
    }
  }

  return 1;
}

void CGFloat.databaseValue.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t static CGFloat.fromDatabaseValue(_:)(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (v3 != 1)
  {
    if (v3)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = result;
    }
  }

  return result;
}

uint64_t sub_1B21AAB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static CGFloat.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B21AAB68(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x4B4341424C4C4F52;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x4B4341424C4C4F52;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x54524F4241;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1279869254;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x45524F4E4749;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x4543414C504552;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x54524F4241;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1279869254;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x45524F4E4749;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x4543414C504552;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B211832C(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1B21AACB8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x45444143534143;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x45444143534143;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x5443495254534552;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x4C4C554E20544553;
      break;
    case 3:
      v5 = 0x4146454420544553;
      v3 = 0xEB00000000544C55;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x5443495254534552;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x4C4C554E20544553;
      break;
    case 3:
      v2 = 0x4146454420544553;
      v6 = 0xEB00000000544C55;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B211832C(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1B21AAE08(char a1, char a2)
{
  v2 = 0xE900000000000045;
  v3 = 0x4445525245464544;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x54414944454D4D49;
    }

    else
    {
      v4 = 0x564953554C435845;
    }

    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x4445525245464544;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x54414944454D4D49;
    }

    else
    {
      v3 = 0x564953554C435845;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B22531F0();
  }

  return v7 & 1;
}