uint64_t sub_1B0695414(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

unint64_t type metadata accessor for MFMailMessageLibraryUIDMessageSize(uint64_t a1)
{
  v5 = qword_1EB6DA5F8;
  if (!qword_1EB6DA5F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA5F8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for EDMailboxActionType(uint64_t a1)
{
  v5 = qword_1EB6E1450;
  if (!qword_1EB6E1450)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1450);
      return v2;
    }
  }

  return v5;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B06956FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 16))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 12);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0695848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 > 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 12) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for MFMailMessageLibraryIndexedUIDRange(uint64_t a1)
{
  v5 = qword_1EB6DA5E8;
  if (!qword_1EB6DA5E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA5E8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for ECMessageBodyElementAttributes(uint64_t a1)
{
  v5 = qword_1EB6DA700;
  if (!qword_1EB6DA700)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA700);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B0695B64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0695C6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t type metadata accessor for os_unfair_lock_s(uint64_t a1)
{
  v5 = qword_1EB6DAB20;
  if (!qword_1EB6DAB20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAB20);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for BGSystemTaskExpirationReason(uint64_t a1)
{
  v5 = qword_1EB6E1460;
  if (!qword_1EB6E1460)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1460);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for MFActivityMonitorNewMessagesState(uint64_t a1)
{
  v5 = qword_1EB6DA618;
  if (!qword_1EB6DA618)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA618);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CompareOptions(uint64_t a1)
{
  v5 = qword_1EB6E1470;
  if (!qword_1EB6E1470)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1470);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B0696080()
{
  v2 = qword_1EB6DEF30;
  if (!qword_1EB6DEF30)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0696118()
{
  v2 = qword_1EB6DEF18;
  if (!qword_1EB6DEF18)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06961B0()
{
  v2 = qword_1EB6DA710;
  if (!qword_1EB6DA710)
  {
    type metadata accessor for ECMessageBodyElementAttributes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0696230()
{
  v2 = qword_1EB6DAB98;
  if (!qword_1EB6DAB98)
  {
    type metadata accessor for ECJunkMailLevel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAB98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06962B0()
{
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t _s15ActivityUpdaterVMa(uint64_t a1)
{
  v2 = qword_1EB6DBE40;
  if (!qword_1EB6DBE40)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

char *sub_1B0696390(char *a1, char *a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  v5 = *(a1 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 1) = v5;
  v6 = *(_s8ActivityVMa(0) + 24);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  return a2;
}

uint64_t _s8ActivityVMa(uint64_t a1)
{
  v2 = qword_1EB6DBD58;
  if (!qword_1EB6DBD58)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

char *sub_1B06964CC(char *a1)
{
  v8 = a1;
  v6 = 0;
  v5 = (*(*(_s8ActivityVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v5;
  sub_1B0696390(v2, &v5 - v5);
  v3 = _s15ActivityUpdaterVMa(v6);
  sub_1B0696574(v7, (v1 + *(v3 + 20)));
  return sub_1B0696630(v8);
}

char *sub_1B0696574(char *a1, char *a2)
{
  *a2 = *a1;

  *(a2 + 1) = *(a1 + 1);

  v4 = *(_s8ActivityVMa(0) + 24);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 40))(&a2[v4], &a1[v4]);
  return a2;
}

char *sub_1B0696630(char *a1)
{

  v3 = *(_s8ActivityVMa(0) + 24);
  v1 = sub_1B0E43108();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

uint64_t sub_1B06966C0()
{
  v2 = *(v0 + *(_s15ActivityUpdaterVMa(0) + 24));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B06966F8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + *(_s15ActivityUpdaterVMa(0) + 24)) = a1;
}

void *sub_1B0696744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v28 = a1;
  v25 = a2;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v18 = 0;
  v29 = sub_1B0E43108();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v17 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = &v16 - v17;
  v19 = (*(*(_s8ActivityVMa(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v16 - v19;
  v23 = _s15ActivityUpdaterVMa(v4);
  v20 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v16 - v20;
  v33 = &v16 - v20;
  v32 = v5;
  v31 = v6;
  MEMORY[0x1E69E5928](v6);
  v7 = v26;
  v8 = v28;
  v9 = v29;
  v10 = v21;
  *v30 = v25;
  (*(v7 + 16))(v10, v8, v9);
  sub_1B0696984(v21, v22);
  sub_1B0696BC8(v22, &v30[*(v23 + 20)]);
  v11 = sub_1B0696C6C();
  v12 = v24;
  v13 = v11;
  v14 = v30;
  *&v30[*(v23 + 24)] = v13;
  sub_1B0696CF8(v14, v12);
  MEMORY[0x1E69E5920](v25);
  (*(v26 + 8))(v28, v29);
  return sub_1B0696E40(v30);
}

char *sub_1B0696984@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v23 = a1;
  v26 = 0;
  v25 = 0;
  v12 = 0;
  v22 = sub_1B0E43108();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v7 - v7;
  v8 = (*(*(_s8ActivityVMa(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v18 = &v7 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v7 - v9;
  v26 = &v7 - v9;
  v25 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1660, &unk_1B0E99840);
  v11 = sub_1B0E46A48();
  v10 = type metadata accessor for Activity.MailboxStatus(v12);
  v13 = sub_1B0417568();
  v14 = &type metadata for MailboxRowID;
  v17 = sub_1B0E445D8();
  sub_1B0E46A48();
  v15 = sub_1B0E45438();
  (*(v20 + 16))(v16, v23, v22);
  sub_1B06A42BC(v17, v15, v16, v18);
  sub_1B0696BC8(v18, v24);
  sub_1B0696390(v24, v19);
  (*(v20 + 8))(v23, v22);
  return sub_1B0696630(v24);
}

char *sub_1B0696BC8(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v4 = *(_s8ActivityVMa(0) + 24);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t sub_1B0696C6C()
{
  v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1790, &qword_1B0E99B48);
  sub_1B0E46A48();
  sub_1B0417568();
  v1 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

char *sub_1B0696CF8(char *a1, char *a2)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v4;
  v9 = _s15ActivityUpdaterVMa(0);
  v5 = *(v9 + 20);
  v6 = *&a1[v5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v5] = v6;
  v7 = *&a1[v5 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v5 + 8] = v7;
  v8 = *(_s8ActivityVMa(0) + 24);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(&a2[v5 + v8], &a1[v5 + v8]);
  v12 = *(v9 + 24);
  v13 = *&a1[v12];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *&a2[v12] = v13;
  return result;
}

void *sub_1B0696E40(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  v3 = a1 + *(_s15ActivityUpdaterVMa(0) + 20);

  v4 = *(_s8ActivityVMa(0) + 24);
  v1 = sub_1B0E43108();
  (*(*(v1 - 8) + 8))(&v3[v4]);

  return a1;
}

uint64_t sub_1B0696F14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v175 = a4;
  v174 = a3;
  v177 = a2;
  v176 = a1;
  v167 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v162 = 0;
  v185 = 0;
  v183 = 0;
  v163 = sub_1B0E43108();
  v164 = *(v163 - 8);
  v165 = v164;
  MEMORY[0x1EEE9AC00](0);
  v166 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = _s6LoggerVMa(v6);
  v170 = *(*(v168 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167);
  v172 = (v170 + 15) & 0xFFFFFFFFFFFFFFF0;
  v169 = v71 - v172;
  MEMORY[0x1EEE9AC00](v7);
  v171 = v71 - v172;
  MEMORY[0x1EEE9AC00](v8);
  v173 = v71 - v172;
  v178 = sub_1B0E439A8();
  v179 = *(v178 - 8);
  v180 = v179;
  MEMORY[0x1EEE9AC00](v176);
  v181 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v10;
  v197 = v11;
  v196 = v12;
  v195 = v13;
  v194 = v4;
  v182 = *v11;
  if ((v11[1] & 1) == 0)
  {
    v161 = v182;
    v183 = v182;
    v193 = v182;
LABEL_11:
    v184 = v193;
    sub_1B0E430F8();
    v71[1] = v71;
    MEMORY[0x1EEE9AC00](v176);
    v71[-2] = v66;
    sub_1B06985B4(v67, &v184, v68, sub_1B06B9120, &v71[-4], v69);
    (*(v165 + 8))(v166, v163);
    return v162;
  }

  v14 = MailboxName.inbox.unsafeMutableAddressor();
  v159 = *v14;
  v158 = *(v14 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07BEBE4(v159, v158, &v191);

  v160 = v191;
  if ((v192 & 1) == 0)
  {
    v157 = v160;
    v15 = v177;
    v16 = v160;
    v185 = v160;
    *v177 = v160;
    *(v15 + 8) = 0;
    v193 = v16;
    goto LABEL_11;
  }

  (*(v180 + 16))(v181, v175, v178);
  sub_1B0394784(v175, v173);
  sub_1B0394784(v173, v171);
  sub_1B03F4FD0(v173, v169);
  v17 = (v171 + *(v168 + 20));
  v110 = *v17;
  v111 = *(v17 + 1);
  sub_1B039480C(v171);
  v109 = 24;
  v136 = 7;
  v18 = swift_allocObject();
  v19 = v111;
  v121 = v18;
  *(v18 + 16) = v110;
  *(v18 + 20) = v19;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v20 = swift_allocObject();
  v21 = v111;
  v112 = v20;
  *(v20 + 16) = v110;
  *(v20 + 20) = v21;

  v135 = 32;
  v22 = swift_allocObject();
  v23 = v112;
  v137 = v22;
  *(v22 + 16) = sub_1B039BBE8;
  *(v22 + 24) = v23;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v169);
  v156 = sub_1B0E43988();
  v113 = v156;
  v155 = sub_1B0E458E8();
  v114 = v155;
  v131 = 17;
  v140 = swift_allocObject();
  v115 = v140;
  v124 = 16;
  *(v140 + 16) = 16;
  v141 = swift_allocObject();
  v116 = v141;
  v133 = 4;
  *(v141 + 16) = 4;
  v24 = swift_allocObject();
  v117 = v24;
  *(v24 + 16) = sub_1B0394C30;
  v127 = 0;
  *(v24 + 24) = 0;
  v25 = swift_allocObject();
  v26 = v117;
  v142 = v25;
  v118 = v25;
  *(v25 + 16) = sub_1B0394C24;
  *(v25 + 24) = v26;
  v143 = swift_allocObject();
  v119 = v143;
  v130 = 0;
  *(v143 + 16) = 0;
  v144 = swift_allocObject();
  v120 = v144;
  *(v144 + 16) = 1;
  v27 = swift_allocObject();
  v28 = v121;
  v122 = v27;
  *(v27 + 16) = sub_1B039BA2C;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v122;
  v145 = v29;
  v123 = v29;
  *(v29 + 16) = sub_1B039BA88;
  *(v29 + 24) = v30;
  v146 = swift_allocObject();
  v125 = v146;
  *(v146 + 16) = v124;
  v147 = swift_allocObject();
  v126 = v147;
  *(v147 + 16) = v133;
  v31 = swift_allocObject();
  v32 = v127;
  v128 = v31;
  *(v31 + 16) = sub_1B039BB94;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v128;
  v148 = v33;
  v129 = v33;
  *(v33 + 16) = sub_1B0394C24;
  *(v33 + 24) = v34;
  v149 = swift_allocObject();
  v132 = v149;
  *(v149 + 16) = v130;
  v150 = swift_allocObject();
  v134 = v150;
  *(v150 + 16) = v133;
  v35 = swift_allocObject();
  v36 = v137;
  v138 = v35;
  *(v35 + 16) = sub_1B039BBA0;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v138;
  v153 = v37;
  v139 = v37;
  *(v37 + 16) = sub_1B039BC08;
  *(v37 + 24) = v38;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v151 = sub_1B0E46A48();
  v152 = v39;

  v40 = v140;
  v41 = v152;
  *v152 = sub_1B0398F5C;
  v41[1] = v40;

  v42 = v141;
  v43 = v152;
  v152[2] = sub_1B0398F5C;
  v43[3] = v42;

  v44 = v142;
  v45 = v152;
  v152[4] = sub_1B0399178;
  v45[5] = v44;

  v46 = v143;
  v47 = v152;
  v152[6] = sub_1B0398F5C;
  v47[7] = v46;

  v48 = v144;
  v49 = v152;
  v152[8] = sub_1B0398F5C;
  v49[9] = v48;

  v50 = v145;
  v51 = v152;
  v152[10] = sub_1B039BA94;
  v51[11] = v50;

  v52 = v146;
  v53 = v152;
  v152[12] = sub_1B0398F5C;
  v53[13] = v52;

  v54 = v147;
  v55 = v152;
  v152[14] = sub_1B0398F5C;
  v55[15] = v54;

  v56 = v148;
  v57 = v152;
  v152[16] = sub_1B0399178;
  v57[17] = v56;

  v58 = v149;
  v59 = v152;
  v152[18] = sub_1B0398F5C;
  v59[19] = v58;

  v60 = v150;
  v61 = v152;
  v152[20] = sub_1B0398F5C;
  v61[21] = v60;

  v62 = v152;
  v63 = v153;
  v152[22] = sub_1B03991EC;
  v62[23] = v63;
  sub_1B0394964();

  if (os_log_type_enabled(v156, v155))
  {
    v64 = v162;
    v103 = sub_1B0E45D78();
    v99 = v103;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v101 = 0;
    v104 = sub_1B03949A8(0, v100, v100);
    v102 = v104;
    v105 = sub_1B03949A8(v101, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v190 = v103;
    v189 = v104;
    v188 = v105;
    v106 = &v190;
    sub_1B0394A48(0, &v190);
    sub_1B0394A48(4, v106);
    v186 = sub_1B0398F5C;
    v187 = v115;
    sub_1B03949FC(&v186, v106, &v189, &v188);
    v107 = v64;
    v108 = v64;
    if (v64)
    {
      v97 = 0;

      __break(1u);
    }

    else
    {
      v186 = sub_1B0398F5C;
      v187 = v116;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v95 = 0;
      v96 = 0;
      v186 = sub_1B0399178;
      v187 = v118;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v93 = 0;
      v94 = 0;
      v186 = sub_1B0398F5C;
      v187 = v119;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v91 = 0;
      v92 = 0;
      v186 = sub_1B0398F5C;
      v187 = v120;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v89 = 0;
      v90 = 0;
      v186 = sub_1B039BA94;
      v187 = v123;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v87 = 0;
      v88 = 0;
      v186 = sub_1B0398F5C;
      v187 = v125;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v85 = 0;
      v86 = 0;
      v186 = sub_1B0398F5C;
      v187 = v126;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v83 = 0;
      v84 = 0;
      v186 = sub_1B0399178;
      v187 = v129;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v81 = 0;
      v82 = 0;
      v186 = sub_1B0398F5C;
      v187 = v132;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v79 = 0;
      v80 = 0;
      v186 = sub_1B0398F5C;
      v187 = v134;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v77 = 0;
      v78 = 0;
      v186 = sub_1B03991EC;
      v187 = v139;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v75 = 0;
      v76 = 0;
      _os_log_impl(&dword_1B0389000, v113, v114, "[%.*hhx-%.*X] Unable to get inbox row ID.", v99, 0x17u);
      v74 = 0;
      sub_1B03998A8(v102, 0, v100);
      sub_1B03998A8(v105, v74, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v98 = v75;
    }
  }

  else
  {
    v65 = v162;

    v98 = v65;
  }

  v72 = v98;

  (*(v180 + 8))(v181, v178);
  return v72;
}

id sub_1B0698500(uint64_t *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v8 = *a1;
  v7 = a2;
  v6 = v8;
  v5 = sub_1B07BECC0(&v6);
  if (!v5)
  {
    return 0;
  }

  v3 = [v5 objectID];
  MEMORY[0x1E69E5920](v5);
  return v3;
}

char *sub_1B06985B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v21 = a2;
  v26 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v19 = 0;
  v27 = sub_1B0E43108();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v18 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v29 = &v17 - v18;
  v20 = (*(*(type metadata accessor for Activity(v7) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v28 = &v17 - v20;
  v23 = (*(*(_s8ActivityVMa(v8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v34 = &v17 - v23;
  v42 = v9;
  v41 = *v10;
  v40 = v11;
  v38 = v12;
  v39 = v13;
  v37 = v14;
  v36 = v6;
  v30 = &v35;
  v35 = v41;
  sub_1B03DEB8C(v9, v15);
  (*(v24 + 16))(v29, v26, v27);
  sub_1B06987D4(v30, v28, v29, v34);
  sub_1B069945C(v34, v31, v32, v33);
  return sub_1B0696630(v34);
}

char *sub_1B06987D4@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v68 = a4;
  v87 = a1;
  v69 = a2;
  v83 = a3;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v104 = 0;
  v105 = 0;
  v101 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858);
  v70 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v16 - v70;
  v72 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v16 - v70);
  v73 = &v16 - v72;
  v74 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v16 - v72);
  v95 = &v16 - v74;
  v79 = 0;
  v96 = type metadata accessor for Activity.MailboxStatus(0);
  v93 = *(v96 - 8);
  v94 = v96 - 8;
  v75 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v16 - v75;
  v119 = &v16 - v75;
  v77 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v16 - v77;
  v118 = &v16 - v77;
  v82 = sub_1B0E43108();
  v88 = *(v82 - 8);
  v81 = v82 - 8;
  v80 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79);
  v90 = &v16 - v80;
  v85 = *(*(_s8ActivityVMa(v10) - 8) + 64);
  v84 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v16 - v84;
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v92 = &v16 - v86;
  v117 = &v16 - v86;
  v89 = *v87;
  v116 = v89;
  v115 = a2;
  v114 = v13;
  (*(v88 + 16))(v12);
  sub_1B0696984(v90, v91);
  sub_1B0696BC8(v91, v92);
  Activity.accountStatus.getter(v95);
  v97 = *(v93 + 48);
  v98 = v93 + 48;
  if (v97(v95, 1, v96) != 1)
  {
    sub_1B0415DC0(v95, v78);
    sub_1B0416014(v78, v73);
    (*(v93 + 56))(v73, 0, 1, v96);
    v67 = &v99;
    v99 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1670, &unk_1B0E99860);
    sub_1B0E44788();
    sub_1B0416B60(v78);
LABEL_37:
    sub_1B0696390(v92, v68);
    (*(v88 + 8))(v83, v82);
    sub_1B03DC998(v69);
    return sub_1B0696630(v92);
  }

  sub_1B0415C08(v95);
  Activity.allMailboxIDs.getter(&v108);
  v62 = v108;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v63 = v62 + 56;
  v64 = (1 << (*(v62 + 32) & 0x3F)) - 1;
  v65 = *(v62 + 56);
  v66 = v64 + 1;
  if (v64 + 1 < 64)
  {
    v61 = v65 & ((1 << (v66 & 0x3F)) - 1);
  }

  else
  {
    v61 = v65;
  }

  v109 = v62;
  v110 = v63;
  v111 = v64;
  v112 = 0;
  v113 = v61;
  while (1)
  {
    if (v109 < 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v59 = v109;
    v55 = v110;
    v56 = v111;
    v57 = v112;
    v58 = v113;
    result = sub_1B06B9128();
    v60 = v59;
    if (v59 < 0)
    {
      break;
    }

    v50 = v59;
    v51 = v55;
    v52 = v56;
    v53 = v57;
    v54 = v58;
LABEL_13:
    v44 = v54;
    v45 = v53;
    v46 = v52;
    v47 = v51;
    v48 = v50;
    if (!v54)
    {
      goto LABEL_15;
    }

    v38 = (v45 << 6) + __clz(__rbit64(v44));
    v39 = v44 & (v44 - 1);
    v40 = v45;
LABEL_25:
    v27 = v40;
    v26 = v39;
    sub_1B03D091C((*(v48 + 48) + 16 * v38), &v106);
    v28 = v26;
    v29 = v27;
LABEL_26:
    v109 = v48;
    v110 = v47;
    v111 = v46;
    v112 = v29;
    v113 = v28;
    sub_1B06B916C();
    v24 = v106;
    v25 = v107;
    if (!v106)
    {
      sub_1B06B91B0();
      goto LABEL_37;
    }

    v22 = v24;
    v23 = v25;
    v20 = v25;
    v19 = v24;
    v104 = v24;
    v105 = v25;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B5A58(v19, v20, &v102);
    v21 = v102;
    if (v103)
    {
    }

    else
    {
      v18 = v21;
      v17 = v21;
      v101 = v21;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      Activity.subscript.getter(v19, v20, v71);
      if (v97(v71, 1, v96) == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v97(v71, 1, v96) != 1)
        {
          sub_1B0415C08(v71);
        }
      }

      else
      {
        sub_1B0415DC0(v71, v76);
      }

      sub_1B0416014(v76, v73);
      (*(v93 + 56))(v73, 0, 1, v96);
      v16 = &v100;
      v100 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1670, &unk_1B0E99860);
      sub_1B0E44788();
      sub_1B0416B60(v76);
    }
  }

  v49 = v60 & 0x7FFFFFFFFFFFFFFFLL;

  __break(1u);
LABEL_15:
  v41 = (v46 + 64) / 0x40uLL;
  v42 = v44;
  for (i = v45; ; i = v37)
  {
    v35 = i;
    v36 = v42;
    v37 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v33 = v36;
    v34 = v35;
    if (v37 >= v41)
    {
      v106 = 0;
      v107 = 0;
      v28 = v33;
      v29 = v34;
      goto LABEL_26;
    }

    v30 = *(v47 + 8 * v37);
    v31 = v30;
    v32 = v37;
    if (v30)
    {
      v38 = (v32 << 6) + __clz(__rbit64(v31));
      v39 = v31 & (v31 - 1);
      v40 = v32;
      goto LABEL_25;
    }

    v42 = 0;
  }

  __break(1u);
  return result;
}

char *sub_1B069945C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v126 = a1;
  v111 = a2;
  v112 = a3;
  v116 = a4;
  v123 = sub_1B039BBE8;
  v131 = sub_1B0394C30;
  v132 = sub_1B0394C24;
  v134 = sub_1B039BA2C;
  v136 = sub_1B039BA88;
  v139 = sub_1B039BB94;
  v140 = sub_1B0394C24;
  v143 = sub_1B039BBA0;
  v145 = sub_1B039BC08;
  v148 = sub_1B06B91F0;
  v152 = sub_1B039BCF8;
  v154 = sub_1B0398F5C;
  v156 = sub_1B0398F5C;
  v158 = sub_1B0399178;
  v160 = sub_1B0398F5C;
  v162 = sub_1B0398F5C;
  v164 = sub_1B039BA94;
  v166 = sub_1B0398F5C;
  v168 = sub_1B0398F5C;
  v170 = sub_1B0399178;
  v172 = sub_1B0398F5C;
  v174 = sub_1B0398F5C;
  v176 = sub_1B03991EC;
  v178 = sub_1B0398F5C;
  v180 = sub_1B0398F5C;
  v183 = sub_1B039BCEC;
  v199 = 0;
  v197 = 0;
  v198 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v97 = 0;
  v105 = 0;
  v98 = _s15ActivityUpdaterVMa(0);
  v99 = (*(*(v98 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v100 = &v74 - v99;
  v101 = *(_s8ActivityVMa(v4) - 8);
  v127 = v101;
  v128 = *(v101 + 64);
  v102 = (v128 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v74 - v102;
  v104 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v130 = &v74 - v104;
  v118 = _s6LoggerVMa(v7);
  v106 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105);
  v125 = &v74 - v106;
  v107 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v119 = &v74 - v107;
  v108 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v117 = &v74 - v108;
  v109 = sub_1B0E439A8();
  v114 = *(v109 - 8);
  v110 = v109 - 8;
  v12 = MEMORY[0x1EEE9AC00](v126);
  v115 = &v74 - v13;
  v199 = v14;
  v197 = v111;
  v198 = v112;
  v196 = v15;
  v195 = v113;
  (*(v114 + 16))(&v74 - v13, v12);
  sub_1B0394784(v116, v117);
  sub_1B0394784(v117, v119);
  sub_1B03F4FD0(v117, v125);
  v16 = (v119 + *(v118 + 20));
  v121 = *v16;
  v122 = *(v16 + 1);
  sub_1B039480C(v119);
  v120 = 24;
  v150 = 7;
  v17 = swift_allocObject();
  v18 = v122;
  v135 = v17;
  *(v17 + 16) = v121;
  *(v17 + 20) = v18;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v19 = swift_allocObject();
  v20 = v122;
  v124 = v19;
  *(v19 + 16) = v121;
  *(v19 + 20) = v20;

  v149 = 32;
  v21 = swift_allocObject();
  v22 = v124;
  v144 = v21;
  *(v21 + 16) = v123;
  *(v21 + 24) = v22;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v125);
  sub_1B0696390(v126, v130);
  v129 = (*(v127 + 80) + 16) & ~*(v127 + 80);
  v151 = swift_allocObject();
  sub_1B0696BC8(v130, (v151 + v129));
  v187 = sub_1B0E43988();
  v188 = sub_1B0E458D8();
  v147 = 17;
  v155 = swift_allocObject();
  v138 = 16;
  *(v155 + 16) = 16;
  v157 = swift_allocObject();
  v142 = 4;
  *(v157 + 16) = 4;
  v23 = swift_allocObject();
  v133 = v23;
  *(v23 + 16) = v131;
  *(v23 + 24) = 0;
  v24 = swift_allocObject();
  v25 = v133;
  v159 = v24;
  *(v24 + 16) = v132;
  *(v24 + 24) = v25;
  v161 = swift_allocObject();
  *(v161 + 16) = 0;
  v163 = swift_allocObject();
  *(v163 + 16) = 1;
  v26 = swift_allocObject();
  v27 = v135;
  v137 = v26;
  *(v26 + 16) = v134;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v137;
  v165 = v28;
  *(v28 + 16) = v136;
  *(v28 + 24) = v29;
  v167 = swift_allocObject();
  *(v167 + 16) = v138;
  v169 = swift_allocObject();
  *(v169 + 16) = v142;
  v30 = swift_allocObject();
  v141 = v30;
  *(v30 + 16) = v139;
  *(v30 + 24) = 0;
  v31 = swift_allocObject();
  v32 = v141;
  v171 = v31;
  *(v31 + 16) = v140;
  *(v31 + 24) = v32;
  v173 = swift_allocObject();
  *(v173 + 16) = 0;
  v175 = swift_allocObject();
  *(v175 + 16) = v142;
  v33 = swift_allocObject();
  v34 = v144;
  v146 = v33;
  *(v33 + 16) = v143;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v146;
  v177 = v35;
  *(v35 + 16) = v145;
  *(v35 + 24) = v36;
  v179 = swift_allocObject();
  *(v179 + 16) = 32;
  v181 = swift_allocObject();
  *(v181 + 16) = 8;
  v37 = swift_allocObject();
  v38 = v151;
  v153 = v37;
  *(v37 + 16) = v148;
  *(v37 + 24) = v38;
  v39 = swift_allocObject();
  v40 = v153;
  v184 = v39;
  *(v39 + 16) = v152;
  *(v39 + 24) = v40;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v182 = sub_1B0E46A48();
  v185 = v41;

  v42 = v155;
  v43 = v185;
  *v185 = v154;
  v43[1] = v42;

  v44 = v157;
  v45 = v185;
  v185[2] = v156;
  v45[3] = v44;

  v46 = v159;
  v47 = v185;
  v185[4] = v158;
  v47[5] = v46;

  v48 = v161;
  v49 = v185;
  v185[6] = v160;
  v49[7] = v48;

  v50 = v163;
  v51 = v185;
  v185[8] = v162;
  v51[9] = v50;

  v52 = v165;
  v53 = v185;
  v185[10] = v164;
  v53[11] = v52;

  v54 = v167;
  v55 = v185;
  v185[12] = v166;
  v55[13] = v54;

  v56 = v169;
  v57 = v185;
  v185[14] = v168;
  v57[15] = v56;

  v58 = v171;
  v59 = v185;
  v185[16] = v170;
  v59[17] = v58;

  v60 = v173;
  v61 = v185;
  v185[18] = v172;
  v61[19] = v60;

  v62 = v175;
  v63 = v185;
  v185[20] = v174;
  v63[21] = v62;

  v64 = v177;
  v65 = v185;
  v185[22] = v176;
  v65[23] = v64;

  v66 = v179;
  v67 = v185;
  v185[24] = v178;
  v67[25] = v66;

  v68 = v181;
  v69 = v185;
  v185[26] = v180;
  v69[27] = v68;

  v70 = v184;
  v71 = v185;
  v185[28] = v183;
  v71[29] = v70;
  sub_1B0394964();

  if (os_log_type_enabled(v187, v188))
  {
    v72 = v97;
    v90 = sub_1B0E45D78();
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v91 = sub_1B03949A8(0, v89, v89);
    v92 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v93 = &v193;
    v193 = v90;
    v94 = &v192;
    v192 = v91;
    v95 = &v191;
    v191 = v92;
    sub_1B0394A48(2, &v193);
    sub_1B0394A48(5, v93);
    v189 = v154;
    v190 = v155;
    sub_1B03949FC(&v189, v93, v94, v95);
    v96 = v72;
    if (v72)
    {

      __break(1u);
    }

    else
    {
      v189 = v156;
      v190 = v157;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v88 = 0;
      v189 = v158;
      v190 = v159;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v87 = 0;
      v189 = v160;
      v190 = v161;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v86 = 0;
      v189 = v162;
      v190 = v163;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v85 = 0;
      v189 = v164;
      v190 = v165;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v84 = 0;
      v189 = v166;
      v190 = v167;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v83 = 0;
      v189 = v168;
      v190 = v169;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v82 = 0;
      v189 = v170;
      v190 = v171;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v81 = 0;
      v189 = v172;
      v190 = v173;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v80 = 0;
      v189 = v174;
      v190 = v175;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v79 = 0;
      v189 = v176;
      v190 = v177;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v78 = 0;
      v189 = v178;
      v190 = v179;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v77 = 0;
      v189 = v180;
      v190 = v181;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      v76 = 0;
      v189 = v183;
      v190 = v184;
      sub_1B03949FC(&v189, &v193, &v192, &v191);
      _os_log_impl(&dword_1B0389000, v187, v188, "[%.*hhx-%.*X] New activity: %s", v90, 0x21u);
      sub_1B03998A8(v91, 0, v89);
      sub_1B03998A8(v92, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v187);
  (*(v114 + 8))(v115, v109);
  sub_1B0696390(&v113[*(v98 + 20)], v130);
  sub_1B0696390(v126, v103);
  v75 = sub_1B069ADA0(v130, v103);
  v194 = v75;
  sub_1B0696CF8(v113, v100);
  v74 = *v100;
  MEMORY[0x1E69E5928](v74);
  sub_1B0696E40(v100);
  sub_1B069BC30(v75);
  MEMORY[0x1E69E5920](v74);

  return sub_1B069AC50(v113, v126);
}

char *sub_1B069AC50(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v7 = a2;
  v13 = 0;
  v12 = 0;
  v9 = 0;
  v8 = (*(*(_s8ActivityVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v6 - v8;
  v13 = v2;
  v12 = v3;
  sub_1B0696390(v3, &v6 - v8);
  v4 = _s15ActivityUpdaterVMa(v9);
  return sub_1B0696574(v11, (v10 + *(v4 + 20)));
}

uint64_t sub_1B069AD10(uint64_t a1)
{
  v3 = a1;
  v5 = _s8ActivityVMa(0);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v3 - v4;
  sub_1B0696390(v1, &v3 - v4);
  return sub_1B0E44BA8();
}

uint64_t sub_1B069ADA0(char *a1, char *a2)
{
  v121 = a1;
  v114 = a2;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v125 = __b;
  __len = 40;
  __c = 0;
  memset(__b, 0, sizeof(__b));
  memset(v145, 0, sizeof(v145));
  memset(v144, 0, sizeof(v144));
  v141 = 0;
  v134 = 0;
  v130 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v88 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v89 = &v31 - v88;
  v97 = 0;
  v90 = sub_1B0E43108();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v90);
  v94 = &v31 - v93;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1678, &qword_1B0E99870);
  v95 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v96 = (&v31 - v95);
  v98 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1668, &qword_1B0E99858) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v31 - v98;
  v100 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v101 = &v31 - v100;
  v122 = type metadata accessor for Activity.MailboxStatus(v6);
  v102 = *(v122 - 8);
  v103 = v122 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v122);
  v105 = &v31 - v104;
  v152 = &v31 - v104;
  v106 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v31 - v106;
  v108 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v31 - v106);
  v109 = &v31 - v108;
  v110 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v31 - v108);
  v111 = &v31 - v110;
  v151 = &v31 - v110;
  v112 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v31 - v112;
  v150 = &v31 - v112;
  v115 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1680, &qword_1B0E99878) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v121);
  v116 = (&v31 - v115);
  v117 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v118 = (&v31 - v117);
  v119 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v120 = (&v31 - v119);
  v148 = v17;
  v147 = v18;
  v149 = sub_1B06A5FF4();
  v123 = *v121;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v124 = sub_1B0417568();
  v126 = &v153;
  sub_1B0E445C8();
  memcpy(v125, v126, __len);
  while (1)
  {
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1688, &qword_1B0E99880);
    sub_1B0E446D8();
    sub_1B06B9254(v118, v120);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1690, &qword_1B0E99888);
    v19 = *(v82 - 8);
    v80 = *(v19 + 48);
    v81 = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v20 = v80(v120, 1);
    v83 = v79;
    v84 = v82;
    v85 = v80;
    v86 = v81;
    if (v20 == 1)
    {
      break;
    }

    v71 = *v120;
    v21 = v120 + *(v82 + 48);
    v130 = v71;
    sub_1B0415DC0(v21, v113);
    v72 = *v114;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v129[1] = v71;
    sub_1B0E44778();
    if ((*(v102 + 48))(v101, 1, v122) == 1)
    {
      sub_1B0415C08(v101);

      v66 = 0;
      v22 = _s8ActivityVMa(0);
      (*(v91 + 16))(v96, &v114[*(v22 + 24)], v90);
      v23 = *(v91 + 56);
      v67 = 0;
      v68 = 1;
      v23(v96);
      v69 = _s8ActivityV4DiffV4KindOMa(v66);
      swift_storeEnumTagMultiPayload();
      (*(*(v69 - 8) + 56))(v96, v67, v68);
      v70 = v129;
      v129[0] = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16A8, &qword_1B0E998A0);
      sub_1B0E44788();
    }

    else
    {
      sub_1B0415DC0(v101, v111);

      sub_1B0416014(v113, v109);
      sub_1B0416014(v111, v107);
      v24 = _s8ActivityVMa(0);
      (*(v91 + 16))(v94, &v114[*(v24 + 24)], v90);
      sub_1B06A612C(v109, v107, v94, v96);
      v65 = &v128;
      v128 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16A8, &qword_1B0E998A0);
      sub_1B0E44788();
      sub_1B0416B60(v111);
    }

    sub_1B0416B60(v113);
  }

  v73 = v86;
  v74 = v85;
  v75 = v84;
  v76 = v83;
  sub_1B06B91B0();
  v77 = *v114;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v78 = &v154;
  sub_1B0E445C8();
  memcpy(v145, v78, sizeof(v145));
  while (1)
  {
    sub_1B0E446D8();
    sub_1B06B9254(v118, v116);
    if (v74(v116, 1, v75) == 1)
    {
      break;
    }

    v57 = *v116;
    v25 = v116 + *(v75 + 48);
    v134 = v57;
    sub_1B0415DC0(v25, v105);
    v55 = *v121;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v56 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v61 = &v133;
    v133 = v56;
    v60 = &v132;
    v132 = v57;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16B0, &qword_1B0E998A8);
    v59 = sub_1B06B9720();
    sub_1B06B96A8();
    v62 = sub_1B0E450A8();
    sub_1B039E440(v61);
    if ((v62 & 1) == 0)
    {
      v26 = *(v91 + 56);
      v53 = 1;
      v26(v89, 1, 1, v90);
      sub_1B06A6E68(v105, v89, v96);
      sub_1B06B97A8(v89);
      v27 = _s8ActivityV4DiffV4KindOMa(0);
      (*(*(v27 - 8) + 56))(v96, 0, v53);
      v54 = &v131;
      v131 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16A8, &qword_1B0E998A0);
      sub_1B0E44788();
    }

    sub_1B0416B60(v105);
  }

  sub_1B06B91B0();
  v63 = *(v121 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v64 = &v155;
  sub_1B0E45448();
  memcpy(v144, v64, sizeof(v144));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1698, &qword_1B0E99890);
    sub_1B0E45508();
    v52 = v142;
    if (v143)
    {
      break;
    }

    v51 = v52;
    v46 = v52;
    v141 = v52;
    v47 = *(v114 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v140 = v46;
    v48 = sub_1B0E45528();

    if ((v48 & 1) == 0)
    {
      v45 = *v114;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v139 = v46;
      sub_1B0E44778();

      if ((*(v102 + 48))(v99, 1, v122) == 1)
      {
        sub_1B0415C08(v99);
        v44 = 2;
      }

      else
      {
        v43 = Activity.MailboxStatus.isSelectedAndInSync.getter();
        sub_1B0416B60(v99);
        v44 = v43 & 1;
      }

      v138 = v44;
      if (v44 == 2)
      {
        v42 = 1;
      }

      else
      {
        v42 = v138;
      }

      if (v42)
      {
        v35 = v149;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v34 = _s8ActivityV4DiffV4KindOMa(0);
        v36 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v40 = &v137;
        v137 = v36;
        v39 = &v136;
        v136 = v46;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16A0, &qword_1B0E99898);
        v38 = sub_1B06B9620();
        sub_1B06B96A8();
        v41 = sub_1B0E450A8();
        sub_1B039E440(v40);
        if ((v41 & 1) == 0)
        {
          v29 = _s8ActivityVMa(0);
          (*(v91 + 16))(v96, &v114[*(v29 + 24)], v90);
          v30 = *(v91 + 56);
          v31 = 0;
          v32 = 1;
          v30(v96);
          swift_storeEnumTagMultiPayload();
          (*(*(v34 - 8) + 56))(v96, v31, v32);
          v33 = &v135;
          v135 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16A8, &qword_1B0E998A0);
          sub_1B0E44788();
        }
      }
    }
  }

  sub_1B06B91B0();
  v49 = &v149;
  v50 = v149;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0696630(v114);
  sub_1B0696630(v121);
  sub_1B039E440(v49);
  return v50;
}

void sub_1B069BC30(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v573 = v2;
  v564 = v3;
  v565 = v4;
  v566 = v5;
  v567 = v6;
  v510 = v1;
  v543 = 0;
  v511 = sub_1B039BBE8;
  v512 = sub_1B06BA324;
  v513 = sub_1B0394C30;
  v514 = sub_1B0394C24;
  v515 = sub_1B039BA2C;
  v516 = sub_1B039BA88;
  v517 = sub_1B039BB94;
  v518 = sub_1B0394C24;
  v519 = sub_1B039BBA0;
  v520 = sub_1B039BC08;
  v521 = sub_1B03FB1CC;
  v522 = sub_1B039BCF8;
  v523 = sub_1B06BA8E4;
  v524 = sub_1B039BCF8;
  v525 = sub_1B0398F5C;
  v526 = sub_1B0398F5C;
  v527 = sub_1B0399178;
  v528 = sub_1B0398F5C;
  v529 = sub_1B0398F5C;
  v530 = sub_1B039BA94;
  v531 = sub_1B0398F5C;
  v532 = sub_1B0398F5C;
  v533 = sub_1B0399178;
  v534 = sub_1B0398F5C;
  v535 = sub_1B0398F5C;
  v536 = sub_1B03991EC;
  v537 = sub_1B0398F5C;
  v538 = sub_1B0398F5C;
  v539 = sub_1B039BCEC;
  v540 = sub_1B0398F5C;
  v541 = sub_1B0398F5C;
  v542 = sub_1B039BCEC;
  v593 = 0;
  v592 = 0;
  v591 = 0;
  v589 = 0;
  v590 = 0;
  v588 = 0;
  v587 = 0;
  v574 = __b;
  v576 = 40;
  memset(__b, 0, sizeof(__b));
  v585 = 0;
  v577 = 0;
  v551 = 0;
  v544 = _s6LoggerVMa(0);
  v545 = (*(*(v544 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v546 = v92 - v545;
  v547 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v548 = v92 - v547;
  v549 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v550 = v92 - v549;
  v552 = sub_1B0E439A8();
  v553 = *(v552 - 8);
  v554 = v552 - 8;
  v555 = (*(v553 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v551);
  v556 = v92 - v555;
  v572 = _s8ActivityV4DiffV4KindOMa(v11);
  v557 = *(v572 - 8);
  v558 = v557;
  v559 = *(v557 + 64);
  v560 = (v559 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v572);
  v561 = (v92 - v560);
  v562 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v92 - v560);
  v563 = v92 - v562;
  v593 = v92 - v562;
  v568 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16B8, &qword_1B0E998B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v573);
  v569 = (v92 - v568);
  v570 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v571 = (v92 - v570);
  v592 = v15;
  v591 = v16;
  v589 = v17;
  v590 = v18;
  v588 = v19;
  v587 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0417568();
  v575 = &v594;
  sub_1B0E445C8();
  memcpy(v574, v575, v576);
  for (i = v577; ; i = v92[0])
  {
    v508 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16C0, &qword_1B0E998B8);
    sub_1B0E446D8();
    sub_1B06B9850(v569, v571);
    v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16C8, &qword_1B0E998C0);
    if ((*(*(v509 - 8) + 48))(v571, 1) == 1)
    {
      break;
    }

    v20 = v556;
    v465 = *v571;
    v21 = (v571 + *(v509 + 48));
    v585 = v465;
    sub_1B06B9E3C(v21, v563);
    (*(v553 + 16))(v20, v567, v552);
    sub_1B0394784(v567, v550);
    sub_1B0394784(v550, v548);
    sub_1B03F4FD0(v550, v546);
    v22 = (v548 + *(v544 + 20));
    v461 = *v22;
    v462 = *(v22 + 1);
    sub_1B039480C(v548);
    v464 = 24;
    v482 = 7;
    v23 = swift_allocObject();
    v24 = v462;
    v469 = v23;
    *(v23 + 16) = v461;
    *(v23 + 20) = v24;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v25 = swift_allocObject();
    v26 = v462;
    v463 = v25;
    *(v25 + 16) = v461;
    *(v25 + 20) = v26;

    v481 = 32;
    v27 = swift_allocObject();
    v28 = v463;
    v474 = v27;
    *(v27 + 16) = v511;
    *(v27 + 24) = v28;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v546);
    v466 = swift_allocObject();
    *(v466 + 16) = v465;

    v29 = swift_allocObject();
    v30 = v466;
    v476 = v29;
    *(v29 + 16) = v512;
    *(v29 + 24) = v30;

    sub_1B06BA32C(v563, v561);
    v467 = (*(v558 + 80) + 16) & ~*(v558 + 80);
    v483 = swift_allocObject();
    sub_1B06B9E3C(v561, (v483 + v467));
    v506 = sub_1B0E43988();
    v507 = sub_1B0E458D8();
    v479 = 17;
    v485 = swift_allocObject();
    v471 = 16;
    *(v485 + 16) = 16;
    v486 = swift_allocObject();
    v473 = 4;
    *(v486 + 16) = 4;
    v31 = swift_allocObject();
    v468 = v31;
    *(v31 + 16) = v513;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v468;
    v487 = v32;
    *(v32 + 16) = v514;
    *(v32 + 24) = v33;
    v488 = swift_allocObject();
    *(v488 + 16) = 0;
    v489 = swift_allocObject();
    *(v489 + 16) = 1;
    v34 = swift_allocObject();
    v35 = v469;
    v470 = v34;
    *(v34 + 16) = v515;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v470;
    v490 = v36;
    *(v36 + 16) = v516;
    *(v36 + 24) = v37;
    v491 = swift_allocObject();
    *(v491 + 16) = v471;
    v492 = swift_allocObject();
    *(v492 + 16) = v473;
    v38 = swift_allocObject();
    v472 = v38;
    *(v38 + 16) = v517;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v472;
    v493 = v39;
    *(v39 + 16) = v518;
    *(v39 + 24) = v40;
    v494 = swift_allocObject();
    *(v494 + 16) = 0;
    v495 = swift_allocObject();
    *(v495 + 16) = v473;
    v41 = swift_allocObject();
    v42 = v474;
    v475 = v41;
    *(v41 + 16) = v519;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v475;
    v496 = v43;
    *(v43 + 16) = v520;
    *(v43 + 24) = v44;
    v497 = swift_allocObject();
    v478 = 32;
    *(v497 + 16) = 32;
    v498 = swift_allocObject();
    v480 = 8;
    *(v498 + 16) = 8;
    v45 = swift_allocObject();
    v46 = v476;
    v477 = v45;
    *(v45 + 16) = v521;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v477;
    v499 = v47;
    *(v47 + 16) = v522;
    *(v47 + 24) = v48;
    v500 = swift_allocObject();
    *(v500 + 16) = v478;
    v501 = swift_allocObject();
    *(v501 + 16) = v480;
    v49 = swift_allocObject();
    v50 = v483;
    v484 = v49;
    *(v49 + 16) = v523;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v484;
    v503 = v51;
    *(v51 + 16) = v524;
    *(v51 + 24) = v52;
    v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v502 = sub_1B0E46A48();
    v504 = v53;

    v54 = v485;
    v55 = v504;
    *v504 = v525;
    v55[1] = v54;

    v56 = v486;
    v57 = v504;
    v504[2] = v526;
    v57[3] = v56;

    v58 = v487;
    v59 = v504;
    v504[4] = v527;
    v59[5] = v58;

    v60 = v488;
    v61 = v504;
    v504[6] = v528;
    v61[7] = v60;

    v62 = v489;
    v63 = v504;
    v504[8] = v529;
    v63[9] = v62;

    v64 = v490;
    v65 = v504;
    v504[10] = v530;
    v65[11] = v64;

    v66 = v491;
    v67 = v504;
    v504[12] = v531;
    v67[13] = v66;

    v68 = v492;
    v69 = v504;
    v504[14] = v532;
    v69[15] = v68;

    v70 = v493;
    v71 = v504;
    v504[16] = v533;
    v71[17] = v70;

    v72 = v494;
    v73 = v504;
    v504[18] = v534;
    v73[19] = v72;

    v74 = v495;
    v75 = v504;
    v504[20] = v535;
    v75[21] = v74;

    v76 = v496;
    v77 = v504;
    v504[22] = v536;
    v77[23] = v76;

    v78 = v497;
    v79 = v504;
    v504[24] = v537;
    v79[25] = v78;

    v80 = v498;
    v81 = v504;
    v504[26] = v538;
    v81[27] = v80;

    v82 = v499;
    v83 = v504;
    v504[28] = v539;
    v83[29] = v82;

    v84 = v500;
    v85 = v504;
    v504[30] = v540;
    v85[31] = v84;

    v86 = v501;
    v87 = v504;
    v504[32] = v541;
    v87[33] = v86;

    v88 = v503;
    v89 = v504;
    v504[34] = v542;
    v89[35] = v88;
    sub_1B0394964();

    if (os_log_type_enabled(v506, v507))
    {
      v90 = v508;
      v436 = sub_1B0E45D78();
      v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v437 = sub_1B03949A8(0, v435, v435);
      v438 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v439 = &v583;
      v583 = v436;
      v440 = &v582;
      v582 = v437;
      v441 = &v581;
      v581 = v438;
      sub_1B0394A48(2, &v583);
      sub_1B0394A48(6, v439);
      v579 = v525;
      v580 = v485;
      sub_1B03949FC(&v579, v439, v440, v441);
      v442 = v90;
      v443 = v485;
      v444 = v486;
      v445 = v487;
      v446 = v488;
      v447 = v489;
      v448 = v490;
      v449 = v491;
      v450 = v492;
      v451 = v493;
      v452 = v494;
      v453 = v495;
      v454 = v496;
      v455 = v497;
      v456 = v498;
      v457 = v499;
      v458 = v500;
      v459 = v501;
      v460 = v503;
      if (v90)
      {
        v416 = v443;
        v417 = v444;
        v418 = v445;
        v419 = v446;
        v420 = v447;
        v421 = v448;
        v422 = v449;
        v423 = v450;
        v424 = v451;
        v425 = v452;
        v426 = v453;
        v427 = v454;
        v428 = v455;
        v429 = v456;
        v430 = v457;
        v431 = v458;
        v432 = v459;
        v433 = v460;
        v92[17] = v460;
        v92[16] = v459;
        v92[15] = v458;
        v92[14] = v457;
        v92[13] = v456;
        v92[12] = v455;
        v92[11] = v454;
        v92[10] = v453;
        v92[9] = v452;
        v92[8] = v451;
        v92[7] = v450;
        v92[6] = v449;
        v92[5] = v448;
        v92[4] = v447;
        v92[3] = v446;
        v92[2] = v445;
        v92[1] = v444;

        __break(1u);
      }

      else
      {
        v579 = v526;
        v580 = v486;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v397 = 0;
        v398 = v485;
        v399 = v486;
        v400 = v487;
        v401 = v488;
        v402 = v489;
        v403 = v490;
        v404 = v491;
        v405 = v492;
        v406 = v493;
        v407 = v494;
        v408 = v495;
        v409 = v496;
        v410 = v497;
        v411 = v498;
        v412 = v499;
        v413 = v500;
        v414 = v501;
        v415 = v503;
        v579 = v527;
        v580 = v487;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v378 = 0;
        v379 = v485;
        v380 = v486;
        v381 = v487;
        v382 = v488;
        v383 = v489;
        v384 = v490;
        v385 = v491;
        v386 = v492;
        v387 = v493;
        v388 = v494;
        v389 = v495;
        v390 = v496;
        v391 = v497;
        v392 = v498;
        v393 = v499;
        v394 = v500;
        v395 = v501;
        v396 = v503;
        v579 = v528;
        v580 = v488;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v359 = 0;
        v360 = v485;
        v361 = v486;
        v362 = v487;
        v363 = v488;
        v364 = v489;
        v365 = v490;
        v366 = v491;
        v367 = v492;
        v368 = v493;
        v369 = v494;
        v370 = v495;
        v371 = v496;
        v372 = v497;
        v373 = v498;
        v374 = v499;
        v375 = v500;
        v376 = v501;
        v377 = v503;
        v579 = v529;
        v580 = v489;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v340 = 0;
        v341 = v485;
        v342 = v486;
        v343 = v487;
        v344 = v488;
        v345 = v489;
        v346 = v490;
        v347 = v491;
        v348 = v492;
        v349 = v493;
        v350 = v494;
        v351 = v495;
        v352 = v496;
        v353 = v497;
        v354 = v498;
        v355 = v499;
        v356 = v500;
        v357 = v501;
        v358 = v503;
        v579 = v530;
        v580 = v490;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v321 = 0;
        v322 = v485;
        v323 = v486;
        v324 = v487;
        v325 = v488;
        v326 = v489;
        v327 = v490;
        v328 = v491;
        v329 = v492;
        v330 = v493;
        v331 = v494;
        v332 = v495;
        v333 = v496;
        v334 = v497;
        v335 = v498;
        v336 = v499;
        v337 = v500;
        v338 = v501;
        v339 = v503;
        v579 = v531;
        v580 = v491;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v302 = 0;
        v303 = v485;
        v304 = v486;
        v305 = v487;
        v306 = v488;
        v307 = v489;
        v308 = v490;
        v309 = v491;
        v310 = v492;
        v311 = v493;
        v312 = v494;
        v313 = v495;
        v314 = v496;
        v315 = v497;
        v316 = v498;
        v317 = v499;
        v318 = v500;
        v319 = v501;
        v320 = v503;
        v579 = v532;
        v580 = v492;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v283 = 0;
        v284 = v485;
        v285 = v486;
        v286 = v487;
        v287 = v488;
        v288 = v489;
        v289 = v490;
        v290 = v491;
        v291 = v492;
        v292 = v493;
        v293 = v494;
        v294 = v495;
        v295 = v496;
        v296 = v497;
        v297 = v498;
        v298 = v499;
        v299 = v500;
        v300 = v501;
        v301 = v503;
        v579 = v533;
        v580 = v493;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v264 = 0;
        v265 = v485;
        v266 = v486;
        v267 = v487;
        v268 = v488;
        v269 = v489;
        v270 = v490;
        v271 = v491;
        v272 = v492;
        v273 = v493;
        v274 = v494;
        v275 = v495;
        v276 = v496;
        v277 = v497;
        v278 = v498;
        v279 = v499;
        v280 = v500;
        v281 = v501;
        v282 = v503;
        v579 = v534;
        v580 = v494;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v245 = 0;
        v246 = v485;
        v247 = v486;
        v248 = v487;
        v249 = v488;
        v250 = v489;
        v251 = v490;
        v252 = v491;
        v253 = v492;
        v254 = v493;
        v255 = v494;
        v256 = v495;
        v257 = v496;
        v258 = v497;
        v259 = v498;
        v260 = v499;
        v261 = v500;
        v262 = v501;
        v263 = v503;
        v579 = v535;
        v580 = v495;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v226 = 0;
        v227 = v485;
        v228 = v486;
        v229 = v487;
        v230 = v488;
        v231 = v489;
        v232 = v490;
        v233 = v491;
        v234 = v492;
        v235 = v493;
        v236 = v494;
        v237 = v495;
        v238 = v496;
        v239 = v497;
        v240 = v498;
        v241 = v499;
        v242 = v500;
        v243 = v501;
        v244 = v503;
        v579 = v536;
        v580 = v496;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v207 = 0;
        v208 = v485;
        v209 = v486;
        v210 = v487;
        v211 = v488;
        v212 = v489;
        v213 = v490;
        v214 = v491;
        v215 = v492;
        v216 = v493;
        v217 = v494;
        v218 = v495;
        v219 = v496;
        v220 = v497;
        v221 = v498;
        v222 = v499;
        v223 = v500;
        v224 = v501;
        v225 = v503;
        v579 = v537;
        v580 = v497;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v188 = 0;
        v189 = v485;
        v190 = v486;
        v191 = v487;
        v192 = v488;
        v193 = v489;
        v194 = v490;
        v195 = v491;
        v196 = v492;
        v197 = v493;
        v198 = v494;
        v199 = v495;
        v200 = v496;
        v201 = v497;
        v202 = v498;
        v203 = v499;
        v204 = v500;
        v205 = v501;
        v206 = v503;
        v579 = v538;
        v580 = v498;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v169 = 0;
        v170 = v485;
        v171 = v486;
        v172 = v487;
        v173 = v488;
        v174 = v489;
        v175 = v490;
        v176 = v491;
        v177 = v492;
        v178 = v493;
        v179 = v494;
        v180 = v495;
        v181 = v496;
        v182 = v497;
        v183 = v498;
        v184 = v499;
        v185 = v500;
        v186 = v501;
        v187 = v503;
        v579 = v539;
        v580 = v499;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v150 = 0;
        v151 = v485;
        v152 = v486;
        v153 = v487;
        v154 = v488;
        v155 = v489;
        v156 = v490;
        v157 = v491;
        v158 = v492;
        v159 = v493;
        v160 = v494;
        v161 = v495;
        v162 = v496;
        v163 = v497;
        v164 = v498;
        v165 = v499;
        v166 = v500;
        v167 = v501;
        v168 = v503;
        v579 = v540;
        v580 = v500;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v131 = 0;
        v132 = v485;
        v133 = v486;
        v134 = v487;
        v135 = v488;
        v136 = v489;
        v137 = v490;
        v138 = v491;
        v139 = v492;
        v140 = v493;
        v141 = v494;
        v142 = v495;
        v143 = v496;
        v144 = v497;
        v145 = v498;
        v146 = v499;
        v147 = v500;
        v148 = v501;
        v149 = v503;
        v579 = v541;
        v580 = v501;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v112 = 0;
        v113 = v485;
        v114 = v486;
        v115 = v487;
        v116 = v488;
        v117 = v489;
        v118 = v490;
        v119 = v491;
        v120 = v492;
        v121 = v493;
        v122 = v494;
        v123 = v495;
        v124 = v496;
        v125 = v497;
        v126 = v498;
        v127 = v499;
        v128 = v500;
        v129 = v501;
        v130 = v503;
        v579 = v542;
        v580 = v503;
        sub_1B03949FC(&v579, &v583, &v582, &v581);
        v93 = 0;
        v94 = v485;
        v95 = v486;
        v96 = v487;
        v97 = v488;
        v98 = v489;
        v99 = v490;
        v100 = v491;
        v101 = v492;
        v102 = v493;
        v103 = v494;
        v104 = v495;
        v105 = v496;
        v106 = v497;
        v107 = v498;
        v108 = v499;
        v109 = v500;
        v110 = v501;
        v111 = v503;
        _os_log_impl(&dword_1B0389000, v506, v507, "[%.*hhx-%.*X] Applying mailbox %s diff %s", v436, 0x2Bu);
        sub_1B03998A8(v437, 0, v435);
        sub_1B03998A8(v438, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v434 = v93;
      }
    }

    else
    {
      v91 = v508;

      v434 = v91;
    }

    v92[0] = v434;
    MEMORY[0x1E69E5920](v506);
    (*(v553 + 8))(v556, v552);
    v584 = v465;
    sub_1B06A9598(&v584);
    sub_1B06BA948(v563);
  }

  sub_1B06B91B0();
}

uint64_t sub_1B06A0484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v35 = a2;
  v36 = a3;
  v41 = a4;
  v40 = a5;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v47 = 0;
  v43 = 0;
  v55 = a4;
  v25 = 0;
  v26 = _s15ActivityUpdaterVMa(0);
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v28 = &v12 - v27;
  v38 = *(v5 - 8);
  v30 = v5 - 8;
  v29 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v12 - v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness - 8;
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v12 - v9;
  v54 = &v12 - v9;
  v53 = v10;
  v52 = v35;
  v51 = v36;
  v50 = v37;
  (*(v38 + 16))(v7, v8);
  sub_1B0E44F08();
  while (1)
  {
    swift_getAssociatedConformanceWitness();
    sub_1B0E45E38();
    v24 = v48;
    if (v49)
    {
      break;
    }

    v23 = v24;
    v20 = v24;
    v47 = v24;
    v21 = *&v37[*(v26 + 24)];
    v22 = &v44;
    v44 = v24;
    sub_1B0417568();
    sub_1B0E44778();
    if (v45)
    {
      v17 = &v45;
      v18 = v46;
      MEMORY[0x1E69E5928](v46);
      sub_1B06BAC30(v17);
      v19 = v18;
    }

    else
    {
      sub_1B06BAC30(&v45);
      v19 = 0;
    }

    v16 = v19;
    if (v19)
    {
      v15 = v16;
      v14 = v16;
      v43 = v16;
      sub_1B0696CF8(v37, v28);
      v13 = *v28;
      MEMORY[0x1E69E5928](v13);
      sub_1B0696E40(v28);
      v12 = [v14 objectID];
      v42 = v20;
      sub_1B06A08E0(v35, v12, &v42, v36);
      MEMORY[0x1E69E5920](v12);
      MEMORY[0x1E69E5920](v13);
      MEMORY[0x1E69E5920](v14);
    }
  }

  return (*(v33 + 8))(v39, AssociatedTypeWitness);
}

uint64_t sub_1B06A08E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v107 = a1;
  v110 = a2;
  v111 = a3;
  v115 = a4;
  v121 = sub_1B039BBE8;
  v126 = sub_1B06BA324;
  v128 = sub_1B0394C30;
  v129 = sub_1B0394C24;
  v131 = sub_1B039BA2C;
  v133 = sub_1B039BA88;
  v136 = sub_1B039BB94;
  v137 = sub_1B0394C24;
  v140 = sub_1B039BBA0;
  v142 = sub_1B039BC08;
  v145 = sub_1B03FB1CC;
  v149 = sub_1B039BCF8;
  v151 = sub_1B0398F5C;
  v153 = sub_1B0398F5C;
  v155 = sub_1B0399178;
  v157 = sub_1B0398F5C;
  v159 = sub_1B0398F5C;
  v161 = sub_1B039BA94;
  v163 = sub_1B0398F5C;
  v165 = sub_1B0398F5C;
  v167 = sub_1B0399178;
  v169 = sub_1B0398F5C;
  v171 = sub_1B0398F5C;
  v173 = sub_1B03991EC;
  v175 = sub_1B0398F5C;
  v177 = sub_1B0398F5C;
  v180 = sub_1B039BCEC;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v97 = 0;
  v103 = 0;
  v98 = sub_1B0E43108();
  v99 = *(v98 - 8);
  v100 = v98 - 8;
  v101 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v102 = &v74 - v101;
  v117 = _s6LoggerVMa(v4);
  v104 = (*(*(v117 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v103);
  v123 = &v74 - v104;
  v105 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v118 = &v74 - v105;
  v106 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v116 = &v74 - v106;
  v108 = sub_1B0E439A8();
  v113 = *(v108 - 8);
  v109 = v108 - 8;
  v9 = MEMORY[0x1EEE9AC00](v107);
  v114 = &v74 - v10;
  v195 = v11;
  v194 = v110;
  v125 = *v111;
  v193 = v125;
  v192 = v12;
  v191 = v112;
  (*(v113 + 16))(&v74 - v10, v9);
  sub_1B0394784(v115, v116);
  sub_1B0394784(v116, v118);
  sub_1B03F4FD0(v116, v123);
  v13 = (v118 + *(v117 + 20));
  v119 = *v13;
  v120 = *(v13 + 1);
  sub_1B039480C(v118);
  v124 = 24;
  v147 = 7;
  v14 = swift_allocObject();
  v15 = v120;
  v132 = v14;
  *(v14 + 16) = v119;
  *(v14 + 20) = v15;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v16 = swift_allocObject();
  v17 = v120;
  v122 = v16;
  *(v16 + 16) = v119;
  *(v16 + 20) = v17;

  v146 = 32;
  v18 = swift_allocObject();
  v19 = v122;
  v141 = v18;
  *(v18 + 16) = v121;
  *(v18 + 24) = v19;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v123);
  v127 = swift_allocObject();
  *(v127 + 16) = v125;

  v20 = swift_allocObject();
  v21 = v127;
  v148 = v20;
  *(v20 + 16) = v126;
  *(v20 + 24) = v21;

  v184 = sub_1B0E43988();
  v185 = sub_1B0E458D8();
  v144 = 17;
  v152 = swift_allocObject();
  v135 = 16;
  *(v152 + 16) = 16;
  v154 = swift_allocObject();
  v139 = 4;
  *(v154 + 16) = 4;
  v22 = swift_allocObject();
  v130 = v22;
  *(v22 + 16) = v128;
  *(v22 + 24) = 0;
  v23 = swift_allocObject();
  v24 = v130;
  v156 = v23;
  *(v23 + 16) = v129;
  *(v23 + 24) = v24;
  v158 = swift_allocObject();
  *(v158 + 16) = 0;
  v160 = swift_allocObject();
  *(v160 + 16) = 1;
  v25 = swift_allocObject();
  v26 = v132;
  v134 = v25;
  *(v25 + 16) = v131;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v134;
  v162 = v27;
  *(v27 + 16) = v133;
  *(v27 + 24) = v28;
  v164 = swift_allocObject();
  *(v164 + 16) = v135;
  v166 = swift_allocObject();
  *(v166 + 16) = v139;
  v29 = swift_allocObject();
  v138 = v29;
  *(v29 + 16) = v136;
  *(v29 + 24) = 0;
  v30 = swift_allocObject();
  v31 = v138;
  v168 = v30;
  *(v30 + 16) = v137;
  *(v30 + 24) = v31;
  v170 = swift_allocObject();
  *(v170 + 16) = 0;
  v172 = swift_allocObject();
  *(v172 + 16) = v139;
  v32 = swift_allocObject();
  v33 = v141;
  v143 = v32;
  *(v32 + 16) = v140;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v143;
  v174 = v34;
  *(v34 + 16) = v142;
  *(v34 + 24) = v35;
  v176 = swift_allocObject();
  *(v176 + 16) = 32;
  v178 = swift_allocObject();
  *(v178 + 16) = 8;
  v36 = swift_allocObject();
  v37 = v148;
  v150 = v36;
  *(v36 + 16) = v145;
  *(v36 + 24) = v37;
  v38 = swift_allocObject();
  v39 = v150;
  v181 = v38;
  *(v38 + 16) = v149;
  *(v38 + 24) = v39;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v179 = sub_1B0E46A48();
  v182 = v40;

  v41 = v152;
  v42 = v182;
  *v182 = v151;
  v42[1] = v41;

  v43 = v154;
  v44 = v182;
  v182[2] = v153;
  v44[3] = v43;

  v45 = v156;
  v46 = v182;
  v182[4] = v155;
  v46[5] = v45;

  v47 = v158;
  v48 = v182;
  v182[6] = v157;
  v48[7] = v47;

  v49 = v160;
  v50 = v182;
  v182[8] = v159;
  v50[9] = v49;

  v51 = v162;
  v52 = v182;
  v182[10] = v161;
  v52[11] = v51;

  v53 = v164;
  v54 = v182;
  v182[12] = v163;
  v54[13] = v53;

  v55 = v166;
  v56 = v182;
  v182[14] = v165;
  v56[15] = v55;

  v57 = v168;
  v58 = v182;
  v182[16] = v167;
  v58[17] = v57;

  v59 = v170;
  v60 = v182;
  v182[18] = v169;
  v60[19] = v59;

  v61 = v172;
  v62 = v182;
  v182[20] = v171;
  v62[21] = v61;

  v63 = v174;
  v64 = v182;
  v182[22] = v173;
  v64[23] = v63;

  v65 = v176;
  v66 = v182;
  v182[24] = v175;
  v66[25] = v65;

  v67 = v178;
  v68 = v182;
  v182[26] = v177;
  v68[27] = v67;

  v69 = v181;
  v70 = v182;
  v182[28] = v180;
  v70[29] = v69;
  sub_1B0394964();

  if (os_log_type_enabled(v184, v185))
  {
    v71 = v97;
    v90 = sub_1B0E45D78();
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v91 = sub_1B03949A8(0, v89, v89);
    v92 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v93 = &v190;
    v190 = v90;
    v94 = &v189;
    v189 = v91;
    v95 = &v188;
    v188 = v92;
    sub_1B0394A48(2, &v190);
    sub_1B0394A48(5, v93);
    v186 = v151;
    v187 = v152;
    sub_1B03949FC(&v186, v93, v94, v95);
    v96 = v71;
    if (v71)
    {

      __break(1u);
    }

    else
    {
      v186 = v153;
      v187 = v154;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v88 = 0;
      v186 = v155;
      v187 = v156;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v87 = 0;
      v186 = v157;
      v187 = v158;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v86 = 0;
      v186 = v159;
      v187 = v160;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v85 = 0;
      v186 = v161;
      v187 = v162;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v84 = 0;
      v186 = v163;
      v187 = v164;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v83 = 0;
      v186 = v165;
      v187 = v166;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v82 = 0;
      v186 = v167;
      v187 = v168;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v81 = 0;
      v186 = v169;
      v187 = v170;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v80 = 0;
      v186 = v171;
      v187 = v172;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v79 = 0;
      v186 = v173;
      v187 = v174;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v78 = 0;
      v186 = v175;
      v187 = v176;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v77 = 0;
      v186 = v177;
      v187 = v178;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      v76 = 0;
      v186 = v180;
      v187 = v181;
      sub_1B03949FC(&v186, &v190, &v189, &v188);
      _os_log_impl(&dword_1B0389000, v184, v185, "[%.*hhx-%.*X] Updating last-sync-date for mailbox row ID %s", v90, 0x21u);
      sub_1B03998A8(v91, 0, v89);
      sub_1B03998A8(v92, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  v72 = v102;
  MEMORY[0x1E69E5920](v184);
  (*(v113 + 8))(v114, v108);
  (*(v99 + 16))(v72, v107, v98);
  v75 = sub_1B0E43068();
  (*(v99 + 8))(v102, v98);
  v74 = *MEMORY[0x1E699A6B0];
  MEMORY[0x1E69E5928](v74);
  [v112 activityWithID:v110 setUserInfoObject:v75 forKey:v74];
  MEMORY[0x1E69E5920](v74);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06A2060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a1;
  v10 = a2;
  v11 = a3;
  v14 = 0;
  v13 = 0;
  v15 = a2;
  v9 = *(a2 - 8);
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a3);
  v12 = v7 - v8;
  v14 = v5;
  v13 = v3;
  (*(v9 + 16))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  return sub_1B0E45568();
}

void *sub_1B06A215C(uint64_t a1)
{
  v166 = a1;
  v173 = 0;
  v176 = sub_1B06A3CFC;
  v128 = sub_1B039BBE8;
  v129 = sub_1B0394C30;
  v130 = sub_1B0394C24;
  v131 = sub_1B039BA2C;
  v132 = sub_1B039BA88;
  v133 = sub_1B039BB94;
  v134 = sub_1B0394C24;
  v135 = sub_1B039BBA0;
  v136 = sub_1B039BC08;
  v137 = sub_1B06BAE4C;
  v138 = sub_1B03B0DF8;
  v139 = sub_1B0398F5C;
  v140 = sub_1B0398F5C;
  v141 = sub_1B0399178;
  v142 = sub_1B0398F5C;
  v143 = sub_1B0398F5C;
  v144 = sub_1B039BA94;
  v145 = sub_1B0398F5C;
  v146 = sub_1B0398F5C;
  v147 = sub_1B0399178;
  v148 = sub_1B0398F5C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B03991EC;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v153 = sub_1B0399260;
  v215 = 0;
  v214 = 0;
  v206 = 0;
  v207 = 0;
  v208 = 0;
  v205 = 0;
  v188 = __b;
  memset(__b, 0, sizeof(__b));
  v190 = 0;
  v194 = 0;
  v189 = 0;
  v154 = _s6LoggerVMa(0);
  v155 = (*(*(v154 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v156 = v70 - v155;
  v157 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v158 = v70 - v157;
  v159 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v160 = v70 - v159;
  v161 = sub_1B0E439A8();
  v162 = *(v161 - 8);
  v163 = v161 - 8;
  v164 = (*(v162 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v189);
  v165 = v70 - v164;
  v179 = _s15ActivityUpdaterVMa(v6);
  v167 = (*(*(v179 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v179);
  v168 = v70 - v167;
  v215 = v7;
  v214 = v1;
  v169 = *(v1 + *(v8 + 24));
  v181 = sub_1B0417568();
  v182 = &type metadata for MailboxRowID;
  v180 = &unk_1F26A08D8;
  v171 = sub_1B0E446B8();
  v210[1] = v171;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16E0, &qword_1B0E998D8);
  v9 = sub_1B06BAC8C();
  MEMORY[0x1B27270C0](v210, v170, v9);
  v172 = v210[0];

  v178 = &v209;
  v209 = v172;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16F0, &qword_1B0E998E0);
  v175 = sub_1B06BAD14();
  sub_1B06BAD78();
  sub_1B0E46728();
  sub_1B039E440(v178);
  v185 = v211;
  v186 = v212;
  v187 = v213;
  v206 = v211;
  v207 = v212;
  v208 = v213;
  v183 = *(v179 + 24);
  v184 = sub_1B06A3D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1700, &qword_1B0E998E8);
  sub_1B0E446F8();
  v205 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v201 = v185;
  v202 = v186;
  v203 = v187;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1708, &qword_1B0E998F0);
  sub_1B0E464B8();
  v191 = v189;
  v192 = v189;
  for (i = v190; ; i = v123)
  {
    v123 = i;
    v124 = v192;
    v125 = v191;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1710, &qword_1B0E998F8);
    result = sub_1B0E464C8();
    v126 = v200;
    v127 = v125;
    if (!v200)
    {
      break;
    }

    v122 = v126;
    v120 = v126;
    v194 = v126;
    v121 = v124 + 1;
    if (__OFADD__(v124, 1))
    {
      __break(1u);
      return result;
    }

    v205 = v121;
    sub_1B0696CF8(v177, v168);
    v119 = *v168;
    MEMORY[0x1E69E5928](v119);
    sub_1B0696E40(v168);
    v118 = [v120 objectID];
    [v119 activityWithID_finishedWithError_];
    MEMORY[0x1E69E5920](v118);
    MEMORY[0x1E69E5920](v119);
    MEMORY[0x1E69E5920](v120);
    v191 = v121;
    v192 = v121;
  }

  v12 = v165;
  v84 = v127;
  sub_1B06BAE00();
  (*(v162 + 16))(v12, v166, v161);
  sub_1B0394784(v166, v160);
  sub_1B0394784(v160, v158);
  sub_1B03F4FD0(v160, v156);
  v13 = (v158 + *(v154 + 20));
  v80 = *v13;
  v81 = *(v13 + 1);
  sub_1B039480C(v158);
  v83 = 24;
  v95 = 7;
  v14 = swift_allocObject();
  v15 = v81;
  v86 = v14;
  *(v14 + 16) = v80;
  *(v14 + 20) = v15;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v16 = swift_allocObject();
  v17 = v81;
  v82 = v16;
  *(v16 + 16) = v80;
  *(v16 + 20) = v17;

  v94 = 32;
  v18 = swift_allocObject();
  v19 = v82;
  v91 = v18;
  *(v18 + 16) = v128;
  *(v18 + 24) = v19;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v156);
  v96 = swift_allocObject();
  *(v96 + 16) = v84;
  v116 = sub_1B0E43988();
  v117 = sub_1B0E45908();
  v93 = 17;
  v98 = swift_allocObject();
  v88 = 16;
  *(v98 + 16) = 16;
  v99 = swift_allocObject();
  v90 = 4;
  *(v99 + 16) = 4;
  v20 = swift_allocObject();
  v85 = v20;
  *(v20 + 16) = v129;
  *(v20 + 24) = 0;
  v21 = swift_allocObject();
  v22 = v85;
  v100 = v21;
  *(v21 + 16) = v130;
  *(v21 + 24) = v22;
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  v102 = swift_allocObject();
  *(v102 + 16) = 1;
  v23 = swift_allocObject();
  v24 = v86;
  v87 = v23;
  *(v23 + 16) = v131;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v87;
  v103 = v25;
  *(v25 + 16) = v132;
  *(v25 + 24) = v26;
  v104 = swift_allocObject();
  *(v104 + 16) = v88;
  v105 = swift_allocObject();
  *(v105 + 16) = v90;
  v27 = swift_allocObject();
  v89 = v27;
  *(v27 + 16) = v133;
  *(v27 + 24) = 0;
  v28 = swift_allocObject();
  v29 = v89;
  v106 = v28;
  *(v28 + 16) = v134;
  *(v28 + 24) = v29;
  v107 = swift_allocObject();
  *(v107 + 16) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = v90;
  v30 = swift_allocObject();
  v31 = v91;
  v92 = v30;
  *(v30 + 16) = v135;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v92;
  v109 = v32;
  *(v32 + 16) = v136;
  *(v32 + 24) = v33;
  v110 = swift_allocObject();
  *(v110 + 16) = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = 8;
  v34 = swift_allocObject();
  v35 = v96;
  v97 = v34;
  *(v34 + 16) = v137;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v97;
  v113 = v36;
  *(v36 + 16) = v138;
  *(v36 + 24) = v37;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v112 = sub_1B0E46A48();
  v114 = v38;

  v39 = v98;
  v40 = v114;
  *v114 = v139;
  v40[1] = v39;

  v41 = v99;
  v42 = v114;
  v114[2] = v140;
  v42[3] = v41;

  v43 = v100;
  v44 = v114;
  v114[4] = v141;
  v44[5] = v43;

  v45 = v101;
  v46 = v114;
  v114[6] = v142;
  v46[7] = v45;

  v47 = v102;
  v48 = v114;
  v114[8] = v143;
  v48[9] = v47;

  v49 = v103;
  v50 = v114;
  v114[10] = v144;
  v50[11] = v49;

  v51 = v104;
  v52 = v114;
  v114[12] = v145;
  v52[13] = v51;

  v53 = v105;
  v54 = v114;
  v114[14] = v146;
  v54[15] = v53;

  v55 = v106;
  v56 = v114;
  v114[16] = v147;
  v56[17] = v55;

  v57 = v107;
  v58 = v114;
  v114[18] = v148;
  v58[19] = v57;

  v59 = v108;
  v60 = v114;
  v114[20] = v149;
  v60[21] = v59;

  v61 = v109;
  v62 = v114;
  v114[22] = v150;
  v62[23] = v61;

  v63 = v110;
  v64 = v114;
  v114[24] = v151;
  v64[25] = v63;

  v65 = v111;
  v66 = v114;
  v114[26] = v152;
  v66[27] = v65;

  v67 = v113;
  v68 = v114;
  v114[28] = v153;
  v68[29] = v67;
  sub_1B0394964();

  if (os_log_type_enabled(v116, v117))
  {
    v69 = v123;
    v73 = sub_1B0E45D78();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v72 = 0;
    v74 = sub_1B03949A8(0, v71, v71);
    v75 = sub_1B03949A8(v72, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v76 = &v199;
    v199 = v73;
    v77 = &v198;
    v198 = v74;
    v78 = &v197;
    v197 = v75;
    sub_1B0394A48(0, &v199);
    sub_1B0394A48(5, v76);
    v195 = v139;
    v196 = v98;
    sub_1B03949FC(&v195, v76, v77, v78);
    v79 = v69;
    if (v69)
    {

      __break(1u);
    }

    else
    {
      v195 = v140;
      v196 = v99;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[13] = 0;
      v195 = v141;
      v196 = v100;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[12] = 0;
      v195 = v142;
      v196 = v101;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[11] = 0;
      v195 = v143;
      v196 = v102;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[10] = 0;
      v195 = v144;
      v196 = v103;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[9] = 0;
      v195 = v145;
      v196 = v104;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[8] = 0;
      v195 = v146;
      v196 = v105;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[7] = 0;
      v195 = v147;
      v196 = v106;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[6] = 0;
      v195 = v148;
      v196 = v107;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[5] = 0;
      v195 = v149;
      v196 = v108;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[4] = 0;
      v195 = v150;
      v196 = v109;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[3] = 0;
      v195 = v151;
      v196 = v110;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[2] = 0;
      v195 = v152;
      v196 = v111;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      v70[1] = 0;
      v195 = v153;
      v196 = v113;
      sub_1B03949FC(&v195, &v199, &v198, &v197);
      _os_log_impl(&dword_1B0389000, v116, v117, "[%.*hhx-%.*X] Finished %ld activities as part of tear down.", v73, 0x21u);
      v70[0] = 0;
      sub_1B03998A8(v74, 0, v71);
      sub_1B03998A8(v75, v70[0], MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v116);
  (*(v162 + 8))(v165, v161);
}

uint64_t sub_1B06A3CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  result = MEMORY[0x1E69E5928](v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1B06A3D78()
{
  v2 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B06A3DA4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v1 = a1;
}

uint64_t sub_1B06A3DE0()
{
  v2 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B06A3E0C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v1 + 8) = a1;
}

uint64_t sub_1B06A3E48@<X0>(uint64_t a1@<X8>)
{
  v4 = *(_s8ActivityVMa(0) + 24);
  v2 = sub_1B0E43108();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B06A3EC0(uint64_t a1)
{
  v12 = a1;
  v7 = 0;
  v11 = sub_1B0E43108();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  (*(v9 + 16))(v2);
  v3 = _s8ActivityVMa(v7);
  (*(v9 + 40))(v1 + *(v3 + 24), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

BOOL sub_1B06A3FE0(uint64_t a1, uint64_t *a2)
{
  v19 = a1;
  v27 = a2;
  v35 = 0;
  v34 = 0;
  v28 = 0;
  v20 = sub_1B0E43108();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (v21[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v8[-v23];
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v8[-v25];
  v35 = v4;
  v34 = v5;
  v32 = *v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = *v27;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = type metadata accessor for Activity.MailboxStatus(v28);
  v30 = sub_1B0417568();
  sub_1B06BE4B8();
  v33 = sub_1B0E44758();

  if (v33)
  {
    v17 = *(v19 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = v27[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0E45478();

    if (v18)
    {
      v10 = _s8ActivityVMa(0);
      v6 = v19 + *(v10 + 24);
      v12 = v21[2];
      v11 = v21 + 2;
      v12(v26, v6, v20);
      v12(v24, v27 + *(v10 + 24), v20);
      v15 = sub_1B0E430C8();
      v14 = v21[1];
      v13 = v21 + 1;
      v14(v24, v20);
      v14(v26, v20);
      return (v15 & 1) != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B06A42BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v7 = *(_s8ActivityVMa(0) + 24);
  v4 = sub_1B0E43108();
  return (*(*(v4 - 8) + 32))(&a4[v7], a3);
}

uint64_t sub_1B06A4388(uint64_t a1, char *a2)
{
  v86 = a1;
  v98 = a2;
  v108 = 0;
  v107 = 0;
  v84 = 0;
  v56 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v57 = &v23 - v56;
  v58 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v23 - v58;
  v60 = sub_1B0E43108();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (v61[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v23 - v63;
  v65 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v63);
  v66 = &v23 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  v68 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v23 - v68;
  v70 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v23 - v70;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v72 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v23 - v72;
  v74 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v72);
  v75 = &v23 - v74;
  v76 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v74);
  v77 = &v23 - v76;
  v78 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v76);
  v79 = &v23 - v78;
  v80 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v78);
  v81 = &v23 - v80;
  v82 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v23 - v80);
  v83 = &v23 - v82;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1770, &qword_1B0E99B28);
  v85 = (*(*(v102 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84);
  v104 = &v23 - v85;
  v103 = _s8ActivityV4DiffV4KindOMa(v13);
  v96 = *(*(v103 - 8) + 64);
  v87 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v23 - v87;
  v89 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v90 = (&v23 - v89);
  v91 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v92 = (&v23 - v91);
  v93 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v94 = (&v23 - v93);
  v95 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v101 = (&v23 - v95);
  v97 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v99 = (&v23 - v97);
  v108 = v19;
  v107 = v20;
  sub_1B06BA32C(v19, (&v23 - v97));
  sub_1B06BA32C(v98, v101);
  v100 = *(v102 + 48);
  sub_1B06B9E3C(v99, v104);
  sub_1B06B9E3C(v101, &v104[v100]);
  v105 = *(v102 + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B06BA32C(v104, v94);
    v50 = *v94;
    v51 = *(v94 + 1);
    v52 = *(v94 + 2);
    v53 = *(v94 + 12);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
    v55 = v94 + *(v54 + 48);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B06B97A8(v55);
      goto LABEL_43;
    }

    v46 = *&v104[v105];
    v47 = *&v104[v105 + 8];
    v48 = *&v104[v105 + 16];
    v49 = *&v104[v105 + 24];
    v45 = &v104[v105 + *(v54 + 48)];
    sub_1B06BC984(v55, v83);
    sub_1B06BC984(v45, v81);
    if (!sub_1B06A5484(v50, v51, v52, v53, v46, v47, v48, v49))
    {
LABEL_14:
      sub_1B06B97A8(v81);
      sub_1B06B97A8(v83);
      sub_1B06BA948(v104);
      v35 = 0;
      return v35 & 1;
    }

    v42 = &v71[*(v67 + 48)];
    sub_1B06BC2F4(v83, v71);
    sub_1B06BC2F4(v81, v42);
    v43 = v61[6];
    v44 = v61 + 6;
    if (v43(v71, 1, v60) == 1)
    {
      if (v43(v42, 1, v60) == 1)
      {
        sub_1B06B97A8(v71);
        v41 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1B06BC2F4(v71, v79);
      if (v43(v42, 1, v60) != 1)
      {
        v37 = v61[4];
        v36 = v61 + 4;
        v37(v66, v79, v60);
        v37(v64, v42, v60);
        sub_1B06BC63C();
        v40 = sub_1B0E44A28();
        v39 = v61[1];
        v38 = v61 + 1;
        v39(v64, v60);
        v39(v66, v60);
        sub_1B06B97A8(v71);
        v41 = v40;
        goto LABEL_13;
      }

      (v61[1])(v79, v60);
    }

    sub_1B06BC510(v71);
    v41 = 0;
LABEL_13:
    if (v41)
    {
      sub_1B06B97A8(v81);
      sub_1B06B97A8(v83);
      sub_1B06BA948(v104);
      v35 = 1;
      return v35 & 1;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1B06BA32C(v104, v88);
      v21 = swift_getEnumCaseMultiPayload();
      if (v21 == 3)
      {
        sub_1B06BB304(v88, v59);
        sub_1B06BB304(&v104[v105], v57);
        if (static ConnectionStatus.Error.__derived_struct_equals(_:_:)(v59, v57))
        {
          sub_1B06BB840(v57);
          sub_1B06BB840(v59);
          sub_1B06BA948(v104);
          v35 = 1;
        }

        else
        {
          sub_1B06BB840(v57);
          sub_1B06BB840(v59);
          sub_1B06BA948(v104);
          v35 = 0;
        }

        return v35 & 1;
      }

      sub_1B06BB840(v88);
LABEL_43:
      sub_1B06BE5B8(v104);
      v35 = 0;
      return v35 & 1;
    }

    sub_1B06BA32C(v104, v90);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1B06B97A8(v90);
      goto LABEL_43;
    }

    sub_1B06BC984(v90, v77);
    sub_1B06BC984(&v104[v105], v75);
    v29 = &v69[*(v67 + 48)];
    sub_1B06BC2F4(v77, v69);
    sub_1B06BC2F4(v75, v29);
    v30 = v61[6];
    v31 = v61 + 6;
    if (v30(v69, 1, v60) == 1)
    {
      if (v30(v29, 1, v60) == 1)
      {
        sub_1B06B97A8(v69);
        v28 = 1;
        goto LABEL_32;
      }
    }

    else
    {
      sub_1B06BC2F4(v69, v73);
      if (v30(v29, 1, v60) != 1)
      {
        v24 = v61[4];
        v23 = v61 + 4;
        v24(v66, v73, v60);
        v24(v64, v29, v60);
        sub_1B06BC63C();
        v27 = sub_1B0E44A28();
        v26 = v61[1];
        v25 = v61 + 1;
        v26(v64, v60);
        v26(v66, v60);
        sub_1B06B97A8(v69);
        v28 = v27;
        goto LABEL_32;
      }

      (v61[1])(v73, v60);
    }

    sub_1B06BC510(v69);
    v28 = 0;
LABEL_32:
    if (v28)
    {
      sub_1B06B97A8(v75);
      sub_1B06B97A8(v77);
      sub_1B06BA948(v104);
      v35 = 1;
    }

    else
    {
      sub_1B06B97A8(v75);
      sub_1B06B97A8(v77);
      sub_1B06BA948(v104);
      v35 = 0;
    }

    return v35 & 1;
  }

  sub_1B06BA32C(v104, v92);
  v34 = *v92;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_43;
  }

  v32 = *&v104[v105];
  updated = _s8ActivityV4DiffV6UpdateOMa(0);
  sub_1B06BEB80();
  if (sub_1B0E45368())
  {

    sub_1B06BA948(v104);
    v35 = 1;
  }

  else
  {

    sub_1B06BA948(v104);
    v35 = 0;
  }

  return v35 & 1;
}

BOOL sub_1B06A5484(char a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if (a1 == 2)
  {
    return a5 == 2;
  }

  else
  {
    if (a1 != 3)
    {
      if (a5 != 2 && a5 != 3)
      {
        return (static Activity.MailboxStatus.Info.__derived_struct_equals(_:_:)(a1 & 1, a2, a3, a4 & 0x101, a5 & 1, a6, a7, a8 & 0x101) & 1) != 0;
      }

      return 0;
    }

    return a5 == 3;
  }
}

uint64_t sub_1B06A5724(uint64_t a1, const void *a2)
{
  v40 = a1;
  v50 = a2;
  v71 = 0;
  v70 = 0;
  v38 = 0;
  v31 = sub_1B0E43108();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v35 = v16 - v34;
  v36 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16 - v34);
  v37 = v16 - v36;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1780, &qword_1B0E99B30);
  v39 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v56 = v16 - v39;
  updated = _s8ActivityV4DiffV6UpdateOMa(v3);
  v48 = *(*(updated - 8) + 64);
  v41 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v16 - v41;
  v43 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v44 = (v16 - v43);
  v45 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v46 = (v16 - v45);
  v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v53 = v16 - v47;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v51 = v16 - v49;
  v71 = v8;
  v70 = v9;
  sub_1B06BCF60(v8, v16 - v49);
  sub_1B06BCF60(v50, v53);
  v52 = *(v54 + 48);
  sub_1B06BCE98(v51, v56);
  sub_1B06BCE98(v53, &v56[v52]);
  v57 = *(v54 + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1B06BCF60(v56, v46);
    v28 = *v46;
    v29 = v46[1];
    v30 = *(v46 + 16);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_27;
    }

    v10 = *&v56[v57];
    v11 = *&v56[v57 + 8];
    v12 = v56[v57 + 16];
    v62 = v28;
    v63 = v29;
    v64 = v30 & 1;
    v65 = v10;
    v66 = v11;
    v67 = v12 & 1;
    if (v30)
    {
      if (v67)
      {
        v27 = 1;
LABEL_11:
        if (v27)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v59 = v28;
      v60 = v29;
      v61 = v30 & 1;
      if ((v67 & 1) == 0)
      {
        v27 = static Activity.MailboxStatus.Info.FetchProgress.__derived_struct_equals(_:_:)(v59, v60, v65, v66);
        goto LABEL_11;
      }
    }

    v27 = 0;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B06BCF60(v56, v44);
    v25 = *v44;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_27;
    }

    v13 = *&v56[v57];
    v24 = &v69;
    v69 = v25;
    v22 = &v68;
    v68 = v13;
    State = type metadata accessor for EMActivityFetchState(0);
    sub_1B0694078();
    if (sub_1B0E46AE8())
    {
LABEL_19:
      sub_1B06BD028(v56);
      v26 = 1;
      return v26 & 1;
    }

LABEL_12:
    sub_1B06BD028(v56);
    v26 = 0;
    return v26 & 1;
  }

  sub_1B06BCF60(v56, v42);
  v14 = swift_getEnumCaseMultiPayload();
  if (v14 != 2)
  {
    (*(v32 + 8))(v42, v31);
LABEL_27:
    sub_1B06BEC00(v56);
    v26 = 0;
    return v26 & 1;
  }

  v21 = *(v32 + 32);
  v20 = v32 + 32;
  v21(v37, v42, v31);
  v21(v35, &v56[v57], v31);
  if (sub_1B0E430C8())
  {
    v19 = *(v32 + 8);
    v18 = v32 + 8;
    v19(v35, v31);
    v19(v37, v31);
    sub_1B06BD028(v56);
    v26 = 1;
  }

  else
  {
    v17 = *(v32 + 8);
    v16[1] = v32 + 8;
    v17(v35, v31);
    v17(v37, v31);
    sub_1B06BD028(v56);
    v26 = 0;
  }

  return v26 & 1;
}

BOOL sub_1B06A5F34(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s8ActivityV4DiffV4KindOMa(0);
  sub_1B0417568();
  sub_1B06BE538();
  v3 = sub_1B0E44758();

  return (v3 & 1) != 0;
}

uint64_t sub_1B06A5FF4()
{
  v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1788, &qword_1B0E99B38);
  sub_1B0E46A48();
  _s8ActivityV4DiffV4KindOMa(0);
  sub_1B0417568();
  v1 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

void *sub_1B06A612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v48 = a4;
  v78 = a1;
  v77 = a2;
  v76 = a3;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v97 = 0;
  v95 = 0;
  v96 = 0;
  v88 = 0;
  v93 = 0;
  v94 = 0;
  v70 = 0;
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v49 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v33 - v49;
  v97 = &v33 - v49;
  v51 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v33 - v51;
  v96 = &v33 - v51;
  v53 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v33 - v53;
  v95 = &v33 - v53;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v55 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v33 - v55;
  v57 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1678, &qword_1B0E99870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v58 = (&v33 - v57);
  v11 = _s18EmailActivityStateO7RunningVMa(v10);
  v59 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v60 = (&v33 - v59);
  v61 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v33 - v59);
  v62 = (&v33 - v61);
  v63 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v33 - v61);
  v64 = &v33 - v63;
  v94 = &v33 - v63;
  v65 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v33 - v65;
  v93 = &v33 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1718, &qword_1B0E99900);
  v68 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v33 - v68;
  v71 = _s18EmailActivityStateOMa(v16);
  v72 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v33 - v72;
  v74 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v33 - v74;
  v79 = _s8ActivityV4DiffV4KindOMa(v19);
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78);
  v83 = (&v33 - v82);
  v84 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v33 - v84;
  v86 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v33 - v86;
  v92 = &v33 - v86;
  v91 = v24;
  v90 = v25;
  v89 = v26;
  if (static Activity.MailboxStatus.__derived_enum_equals(_:_:)(v24, v25))
  {
    goto LABEL_29;
  }

  if (Activity.MailboxStatus.isSelectedAndInSync.getter())
  {
    v36 = sub_1B0E43108();
    v34 = *(v36 - 8);
    v35 = v36 - 8;
    (*(v34 + 16))(v85, v76);
    (*(v34 + 56))(v85, 0, 1, v36);
    swift_storeEnumTagMultiPayload();
    sub_1B06B9E3C(v85, v87);
    goto LABEL_28;
  }

  sub_1B06A719C(v75);
  sub_1B06A719C(v73);
  v45 = &v69[*(v67 + 48)];
  sub_1B06BAF3C(v75, v69);
  sub_1B06BAF3C(v73, v45);
  v46 = &v69[*(v67 + 48)];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (swift_getEnumCaseMultiPayload())
    {
      v27 = sub_1B0E43108();
      (*(*(v27 - 8) + 56))(v56, 1);
      sub_1B06A6E68(v77, v56, v85);
      sub_1B06B97A8(v56);
      sub_1B06B9E3C(v85, v87);
      sub_1B06BBBE8(v46);
      sub_1B06BB9BC(v69);
    }

    else
    {
      sub_1B06BBCB8(v69, v66);
      sub_1B06BBCB8(v46, v64);
      v93 = v66;
      v94 = v64;
      sub_1B06BBE40(v66, v62);
      sub_1B06BBE40(v64, v60);
      sub_1B06A753C(v62, v60, v58);
      if ((*(v80 + 48))(v58, 1, v79) != 0)
      {
        sub_1B06BBFC8(v58);
        sub_1B06BBBE8(v64);
        sub_1B06BBBE8(v66);
        goto LABEL_29;
      }

      sub_1B06B9E3C(v58, v87);
      sub_1B06BBBE8(v64);
      sub_1B06BBBE8(v66);
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v43 = *v46;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v88 = v43 & 1;
      if (v43)
      {
        v39 = sub_1B0E43108();
        v37 = *(v39 - 8);
        v38 = v39 - 8;
        (*(v37 + 16))(v83, v76);
        (*(v37 + 56))(v83, 0, 1, v39);
      }

      else
      {
        v28 = sub_1B0E43108();
        (*(*(v28 - 8) + 56))(v83, 1);
      }

      swift_storeEnumTagMultiPayload();
      sub_1B06B9E3C(v83, v87);
      sub_1B06BB9BC(v69);
      goto LABEL_28;
    }

    if ((*v69 & 1) != 0 || (v43 & 1) == 0)
    {
      goto LABEL_29;
    }

    v42 = sub_1B0E43108();
    v40 = *(v42 - 8);
    v41 = v42 - 8;
    (*(v40 + 16))(v85, v76);
    (*(v40 + 56))(v85, 0, 1, v42);
    swift_storeEnumTagMultiPayload();
    sub_1B06B9E3C(v85, v87);
LABEL_28:
    sub_1B06BA32C(v87, v48);
    (*(v80 + 56))(v48, 0, 1, v79);
    v30 = sub_1B0E43108();
    (*(*(v30 - 8) + 8))(v76);
    sub_1B0416B60(v77);
    sub_1B0416B60(v78);
    return sub_1B06BA948(v87);
  }

  v29 = swift_getEnumCaseMultiPayload();
  if (v29 != 2)
  {
    sub_1B06BB304(v46, v50);
    v97 = v50;
    sub_1B06BB524(v50, v85);
    swift_storeEnumTagMultiPayload();
    sub_1B06B9E3C(v85, v87);
    sub_1B06BB840(v50);
    sub_1B06BB9BC(v69);
    goto LABEL_28;
  }

  sub_1B06BB304(v69, v54);
  sub_1B06BB304(v46, v52);
  v95 = v54;
  v96 = v52;
  if ((static ConnectionStatus.Error.__derived_struct_equals(_:_:)(v54, v52) & 1) == 0)
  {
    sub_1B06BB524(v52, v85);
    swift_storeEnumTagMultiPayload();
    sub_1B06B9E3C(v85, v87);
    sub_1B06BB840(v52);
    sub_1B06BB840(v54);
    goto LABEL_28;
  }

  sub_1B06BB840(v52);
  sub_1B06BB840(v54);
LABEL_29:
  v32 = sub_1B0E43108();
  (*(*(v32 - 8) + 8))(v76);
  sub_1B0416B60(v77);
  sub_1B0416B60(v78);
  return (*(v80 + 56))(v48, 1, 1, v79);
}

uint64_t sub_1B06A6E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a3;
  v38 = a1;
  v37 = a2;
  v48 = 0;
  v47 = 0;
  v49 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v34 = 0;
  v35 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = &v25[-v35];
  v49 = &v25[-v35];
  v40 = type metadata accessor for Activity.MailboxStatus(v3);
  v39 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v25[-v39];
  v48 = v4;
  v47 = v5;
  sub_1B0416014(v4, &v25[-v39]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B06BB304(v41, v36);
      v49 = v36;
      sub_1B06BB524(v36, v33);
      _s8ActivityV4DiffV4KindOMa(0);
      swift_storeEnumTagMultiPayload();
      return sub_1B06BB840(v36);
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
        v7 = v33;
        v8 = v6;
        v9 = v37;
        v10 = &v33[*(v8 + 48)];
        *v33 = 2;
        v32 = 0;
        *(v7 + 1) = 0;
        *(v7 + 2) = 0;
        *(v7 + 12) = 0;
        sub_1B06BC2F4(v9, v10);
        _s8ActivityV4DiffV4KindOMa(v32);
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
        v12 = v33;
        v13 = v11;
        v14 = v37;
        v15 = &v33[*(v13 + 48)];
        *v33 = 3;
        v31 = 0;
        *(v12 + 1) = 0;
        *(v12 + 2) = 0;
        *(v12 + 12) = 0;
        sub_1B06BC2F4(v14, v15);
        _s8ActivityV4DiffV4KindOMa(v31);
      }

      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v26 = *v41;
    v29 = *(v41 + 1);
    v30 = *(v41 + 2);
    v28 = v41[24];
    v27 = v41[25];
    LOBYTE(v43) = v26;
    v44 = v29;
    v45 = v30;
    LOBYTE(v46) = v28 & 1;
    HIBYTE(v46) = v27;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
    v18 = v29;
    v19 = v30;
    v20 = v33;
    v21 = v17;
    v22 = v37;
    v23 = &v33[*(v21 + 48)];
    v24 = v28 & 1 | ((v27 & 1) << 8);
    *v33 = v26 & 1;
    *(v20 + 1) = v18;
    *(v20 + 2) = v19;
    *(v20 + 12) = v24;
    sub_1B06BC2F4(v22, v23);
    _s8ActivityV4DiffV4KindOMa(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B06A719C@<X0>(_BYTE *a1@<X8>)
{
  v18 = a1;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v19 = 0;
  v20 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = &v5 - v20;
  v35 = &v5 - v20;
  v24 = type metadata accessor for Activity.MailboxStatus(v1);
  v23 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v5 - v23;
  v34 = v2;
  sub_1B0416014(v2, &v5 - v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = v21;
      sub_1B06BB304(v25, v21);
      v35 = v4;
      if (ConnectionStatus.Error.shouldPresentToUserForIMAP.getter())
      {
        sub_1B06BB524(v21, v18);
      }

      else
      {
        *v18 = 0;
      }

      _s18EmailActivityStateOMa(0);
      swift_storeEnumTagMultiPayload();
      return sub_1B06BB840(v21);
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = 0;
        v17 = 0;
        sub_1B06A8F64(2, 0, 0, 0, v18);
        _s18EmailActivityStateOMa(v16);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        sub_1B06A8F64(3, 0, 0, 0, v18);
        _s18EmailActivityStateOMa(v14);
      }

      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v9 = *v25;
    v10 = *(v25 + 1);
    v11 = *(v25 + 2);
    v12 = v25[24];
    v13 = v25[25];
    LOBYTE(v30) = v9;
    v31 = v10;
    v32 = v11;
    LOBYTE(v33) = v12 & 1;
    HIBYTE(v33) = v13;
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      v27 = v10;
      v28 = v11;
      v29 = v12 & 1;
      v8 = (v12 & 1) != 0;
      v7 = v8;
    }

    if (v7)
    {
      v6 = v13 ^ 1;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      *v18 = 1;
    }

    else
    {
      sub_1B06A8F64(v9 & 1, v10, v11, v12 & 1 | ((v13 & 1) << 8), v18);
    }

    _s18EmailActivityStateOMa(0);
    return swift_storeEnumTagMultiPayload();
  }
}

void *sub_1B06A753C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v46 = a3;
  v70 = a1;
  v69 = a2;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v65 = 0;
  v47 = sub_1B0E43108();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v26 - v50;
  v91 = &v26 - v50;
  v52 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v26 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v26 - v55;
  v57 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v58 = &v26 - v57;
  v59 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v26 - v59;
  v61 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v26 - v61;
  v63 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v26 - v63;
  updated = _s8ActivityV4DiffV6UpdateOMa(v11);
  v67 = (*(*(updated - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v68 = (&v26 - v67);
  v71 = _s8ActivityV4DiffV4KindOMa(v12);
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v75 = (&v26 - v74);
  v76 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v26 - v76;
  v90 = &v26 - v76;
  v89 = v15;
  v88 = v16;
  if (sub_1B06A8218(v15, v16))
  {
    sub_1B06BBBE8(v69);
    sub_1B06BBBE8(v70);
    return (*(v72 + 56))(v46, 1, 1, v71);
  }

  v87 = sub_1B0E46A48();
  v43 = *v70;
  v44 = v70[1];
  v45 = *(v70 + 16);
  v17 = *v69;
  v18 = v69[1];
  v19 = *(v69 + 16);
  v82[1] = v43;
  v82[2] = v44;
  v83 = v45 & 1;
  v84 = v17;
  v85 = v18;
  v86 = v19 & 1;
  if ((v45 & 1) == 0)
  {
    v78 = v43;
    v79 = v44;
    v80 = v45 & 1;
    if ((v86 & 1) == 0)
    {
      v42 = static Activity.MailboxStatus.Info.FetchProgress.__derived_struct_equals(_:_:)(v78, v79, v84, v85);
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((v86 & 1) == 0)
  {
LABEL_10:
    v42 = 0;
    goto LABEL_8;
  }

  v42 = 1;
LABEL_8:
  if (!v42)
  {
    v20 = v68;
    v21 = v69[1];
    v22 = *(v69 + 16);
    *v68 = *v69;
    v20[1] = v21;
    *(v20 + 16) = v22 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1728, &qword_1B0E99910);
    sub_1B0E452E8();
  }

  v23 = v70[3];
  v41 = v82;
  v82[0] = v23;
  v24 = v69[3];
  v39 = &v81;
  v81 = v24;
  State = type metadata accessor for EMActivityFetchState(0);
  sub_1B06BC490();
  if ((sub_1B0E44A28() & 1) == 0)
  {
    *v68 = v69[3];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1728, &qword_1B0E99910);
    sub_1B0E452E8();
  }

  v35 = _s18EmailActivityStateO7RunningVMa(0);
  sub_1B06BC2F4(v70 + *(v35 + 24), v64);
  sub_1B06BC2F4(v69 + *(v35 + 24), v62);
  v36 = &v56[*(v54 + 48)];
  sub_1B06BC2F4(v64, v56);
  sub_1B06BC2F4(v62, v36);
  v37 = *(v48 + 48);
  v38 = v48 + 48;
  if (v37(v56, 1, v47) == 1)
  {
    if (v37(v36, 1, v47) != 1)
    {
      goto LABEL_23;
    }

    sub_1B06B97A8(v56);
    v34 = 1;
  }

  else
  {
    sub_1B06BC2F4(v56, v60);
    if (v37(v36, 1, v47) == 1)
    {
      (*(v48 + 8))(v60, v47);
LABEL_23:
      sub_1B06BC510(v56);
      v34 = 0;
      goto LABEL_21;
    }

    (*(v48 + 32))(v53, v36, v47);
    sub_1B06BC63C();
    v33 = sub_1B0E44A28();
    v32 = *(v48 + 8);
    v31 = v48 + 8;
    v32(v53, v47);
    v32(v60, v47);
    sub_1B06B97A8(v56);
    v34 = v33;
  }

LABEL_21:
  v30 = v34;
  sub_1B06B97A8(v62);
  sub_1B06B97A8(v64);
  if ((v30 & 1) == 0)
  {
    sub_1B06BC2F4(v69 + *(v35 + 24), v58);
    if (v37(v58, 1, v47) == 1)
    {
      sub_1B06B97A8(v58);
    }

    else
    {
      (*(v48 + 32))(v51, v58, v47);
      (*(v48 + 16))(v68, v51, v47);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1728, &qword_1B0E99910);
      sub_1B0E452E8();
      (*(v48 + 8))(v51, v47);
    }
  }

  v28 = &v87;
  v27 = v87;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v75 = v27;
  v29 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1B06B9E3C(v75, v77);
  sub_1B039E440(v28);
  sub_1B06BA32C(v77, v46);
  (*(v72 + 56))(v46, 0, v29, v71);
  sub_1B06BBBE8(v69);
  sub_1B06BBBE8(v70);
  return sub_1B06BA948(v77);
}

uint64_t sub_1B06A8108(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1B06A8168(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B06BC2F4(v2, &v5 - v6);
  v3 = _s18EmailActivityStateO7RunningVMa(0);
  sub_1B06BC6BC(v7, (v1 + *(v3 + 24)));
  return sub_1B06B97A8(v8);
}

BOOL sub_1B06A8218(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v41 = a2;
  v62 = 0;
  v61 = 0;
  v31 = sub_1B0E43108();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v15 - v34;
  v36 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v34);
  v37 = &v15 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v15 - v39;
  v43 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v15 - v43;
  v45 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v15 - v45;
  v47 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v15 - v47;
  v62 = v7;
  v61 = v8;
  v49 = *v7;
  v50 = *(v7 + 8);
  v51 = *(v7 + 16);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v56[1] = v49;
  v56[2] = v50;
  v57 = v51 & 1;
  v58 = v9;
  v59 = v10;
  v60 = v11 & 1;
  if ((v51 & 1) == 0)
  {
    v52 = v49;
    v53 = v50;
    v54 = v51 & 1;
    if ((v60 & 1) == 0)
    {
      v30 = static Activity.MailboxStatus.Info.FetchProgress.__derived_struct_equals(_:_:)(v52, v53, v58, v59);
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if ((v60 & 1) == 0)
  {
LABEL_9:
    v30 = 0;
    goto LABEL_7;
  }

  v30 = 1;
LABEL_7:
  if (v30)
  {
    v12 = *(v42 + 24);
    v29 = v56;
    v56[0] = v12;
    v13 = *(v41 + 24);
    v27 = &v55;
    v55 = v13;
    State = type metadata accessor for EMActivityFetchState(0);
    sub_1B0694078();
    if ((sub_1B0E46AE8() & 1) == 0)
    {
      return 0;
    }

    v23 = _s18EmailActivityStateO7RunningVMa(0);
    sub_1B06BC2F4((v42 + *(v23 + 24)), v48);
    sub_1B06BC2F4((v41 + *(v23 + 24)), v46);
    v24 = &v40[*(v38 + 48)];
    sub_1B06BC2F4(v48, v40);
    sub_1B06BC2F4(v46, v24);
    v25 = *(v32 + 48);
    v26 = v32 + 48;
    if (v25(v40, 1, v31) == 1)
    {
      if (v25(v24, 1, v31) != 1)
      {
        goto LABEL_19;
      }

      sub_1B06B97A8(v40);
      v22 = 1;
    }

    else
    {
      sub_1B06BC2F4(v40, v44);
      if (v25(v24, 1, v31) == 1)
      {
        (*(v32 + 8))(v44, v31);
LABEL_19:
        sub_1B06BC510(v40);
        v22 = 0;
        goto LABEL_18;
      }

      v18 = *(v32 + 32);
      v17 = v32 + 32;
      v18(v37, v44, v31);
      v18(v35, v24, v31);
      sub_1B06BC63C();
      v21 = sub_1B0E44A28();
      v20 = *(v32 + 8);
      v19 = v32 + 8;
      v20(v35, v31);
      v20(v37, v31);
      sub_1B06B97A8(v40);
      v22 = v21;
    }

LABEL_18:
    v16 = v22;
    sub_1B06B97A8(v46);
    sub_1B06B97A8(v48);
    return (v16 & 1) != 0;
  }

  return 0;
}

void *sub_1B06A8918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, const void *a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  v6 = _s18EmailActivityStateO7RunningVMa(0);
  return sub_1B06BC984(a5, (a6 + *(v6 + 24)));
}

uint64_t sub_1B06A8974(uint64_t a1, _BYTE *a2)
{
  v28 = a1;
  v38 = a2;
  v48 = 0;
  v47 = 0;
  v26 = 0;
  v18 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v16 - v18;
  v20 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v16 - v20;
  v5 = _s18EmailActivityStateO7RunningVMa(v4);
  v22 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v16 - v22;
  v24 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v16 - v22);
  v25 = &v16 - v24;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1718, &qword_1B0E99900);
  v27 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v44 = &v16 - v27;
  v43 = _s18EmailActivityStateOMa(v7);
  v36 = *(*(v43 - 8) + 64);
  v29 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v16 - v29;
  v31 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v16 - v31;
  v33 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v16 - v33;
  v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v16 - v35;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v16 - v37;
  v48 = v12;
  v47 = v13;
  sub_1B06BECF8(v12, &v16 - v37);
  sub_1B06BECF8(v38, v41);
  v40 = *(v42 + 48);
  sub_1B06BAF3C(v39, v44);
  sub_1B06BAF3C(v41, &v44[v40]);
  v45 = *(v42 + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1B06BECF8(v44, v30);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 == 2)
      {
        sub_1B06BB304(v30, v21);
        sub_1B06BB304(&v44[v45], v19);
        if (static ConnectionStatus.Error.__derived_struct_equals(_:_:)(v21, v19))
        {
          sub_1B06BB840(v19);
          sub_1B06BB840(v21);
          sub_1B06BB9BC(v44);
          v17 = 1;
        }

        else
        {
          sub_1B06BB840(v19);
          sub_1B06BB840(v21);
          sub_1B06BB9BC(v44);
          v17 = 0;
        }

        return v17 & 1;
      }

      sub_1B06BB840(v30);
LABEL_19:
      sub_1B06BF18C(v44);
      v17 = 0;
      return v17 & 1;
    }

    sub_1B06BECF8(v44, v32);
    v16 = *v32;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_19;
    }

    if ((v16 & 1) == (v44[v45] & 1))
    {
      sub_1B06BB9BC(v44);
      v17 = 1;
    }

    else
    {
      sub_1B06BB9BC(v44);
      v17 = 0;
    }
  }

  else
  {
    sub_1B06BECF8(v44, v34);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B06BBBE8(v34);
      goto LABEL_19;
    }

    sub_1B06BBCB8(v34, v25);
    sub_1B06BBCB8(&v44[v45], v23);
    if (sub_1B06A8218(v25, v23))
    {
      sub_1B06BBBE8(v23);
      sub_1B06BBBE8(v25);
      sub_1B06BB9BC(v44);
      v17 = 1;
    }

    else
    {
      sub_1B06BBBE8(v23);
      sub_1B06BBBE8(v25);
      sub_1B06BB9BC(v44);
      v17 = 0;
    }
  }

  return v17 & 1;
}

uint64_t sub_1B06A8F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v20 = a4;
  v37 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v17 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v16 - v17;
  v24 = 0;
  v18 = (*(*(_s18EmailActivityStateO7RunningVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v30 = &v16 - v18;
  v19 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v16 - v19;
  v37 = &v16 - v19;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v25 = sub_1B06A916C(v8, v9);
  v26 = v12;
  v27 = v13;
  v28 = sub_1B06A9284(v21, v22, v23, v20);
  v14 = sub_1B0E43108();
  (*(*(v14 - 8) + 56))(v29, 1);
  sub_1B06A8918(v25, v26, v27 & 1, v28, v29, v30);
  sub_1B06BBCB8(v30, v32);
  return sub_1B06BBCB8(v32, v31);
}

uint64_t sub_1B06A916C(char a1, uint64_t a2)
{
  if (a1 == 2 || a1 == 3)
  {
    return 0;
  }

  return a2;
}

uint64_t sub_1B06A9284(char a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  if ((a4 & 1) == 0)
  {
    return 2;
  }

  if (a1)
  {
    return 1;
  }

  return 3;
}

uint64_t sub_1B06A9424(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B06A94AC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B06A9508(uint64_t a1)
{
  v3 = a1;
  v5 = _s8ActivityV4DiffV4KindOMa(0);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v3 - v4;
  sub_1B06BA32C(v1, (&v3 - v4));
  return sub_1B0E44BA8();
}

uint64_t sub_1B06A9598(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1005 = v2;
  v1010 = v3;
  v1001 = v4;
  v1002 = v5;
  v1003 = v6;
  v1004 = v7;
  v800 = v1;
  v801 = sub_1B039BBE8;
  v802 = sub_1B0394C30;
  v803 = sub_1B0394C24;
  v804 = sub_1B039BA2C;
  v805 = sub_1B039BA88;
  v806 = sub_1B039BB94;
  v807 = sub_1B0394C24;
  v808 = sub_1B039BBA0;
  v809 = sub_1B039BC08;
  v810 = sub_1B03FB774;
  v811 = sub_1B06BCD8C;
  v812 = sub_1B0398F5C;
  v813 = sub_1B0398F5C;
  v814 = sub_1B0399178;
  v815 = sub_1B0398F5C;
  v816 = sub_1B0398F5C;
  v817 = sub_1B039BA94;
  v818 = sub_1B0398F5C;
  v819 = sub_1B0398F5C;
  v820 = sub_1B0399178;
  v821 = sub_1B0398F5C;
  v822 = sub_1B0398F5C;
  v823 = sub_1B03991EC;
  v824 = sub_1B0398F5C;
  v825 = sub_1B0398F5C;
  v826 = sub_1B03992D4;
  v827 = sub_1B039BBE8;
  v828 = sub_1B0394C24;
  v829 = sub_1B039BA2C;
  v830 = sub_1B039BA88;
  v831 = sub_1B0394C24;
  v832 = sub_1B039BBA0;
  v833 = sub_1B039BC08;
  v834 = sub_1B03FB774;
  v835 = sub_1B06BCD8C;
  v836 = sub_1B0398F5C;
  v837 = sub_1B0398F5C;
  v838 = sub_1B0399178;
  v839 = sub_1B0398F5C;
  v840 = sub_1B0398F5C;
  v841 = sub_1B039BA94;
  v842 = sub_1B0398F5C;
  v843 = sub_1B0398F5C;
  v844 = sub_1B0399178;
  v845 = sub_1B0398F5C;
  v846 = sub_1B0398F5C;
  v847 = sub_1B03991EC;
  v848 = sub_1B0398F5C;
  v849 = sub_1B0398F5C;
  v850 = sub_1B03992D4;
  v851 = sub_1B039BBE8;
  v852 = sub_1B0394C24;
  v853 = sub_1B039BA2C;
  v854 = sub_1B039BA88;
  v855 = sub_1B0394C24;
  v856 = sub_1B039BBA0;
  v857 = sub_1B039BC08;
  v858 = sub_1B03FB774;
  v859 = sub_1B06BCD8C;
  v860 = sub_1B0398F5C;
  v861 = sub_1B0398F5C;
  v862 = sub_1B0399178;
  v863 = sub_1B0398F5C;
  v864 = sub_1B0398F5C;
  v865 = sub_1B039BA94;
  v866 = sub_1B0398F5C;
  v867 = sub_1B0398F5C;
  v868 = sub_1B0399178;
  v869 = sub_1B0398F5C;
  v870 = sub_1B0398F5C;
  v871 = sub_1B03991EC;
  v872 = sub_1B0398F5C;
  v873 = sub_1B0398F5C;
  v874 = sub_1B03992D4;
  v875 = sub_1B039BBE8;
  v876 = sub_1B0394C24;
  v877 = sub_1B039BA2C;
  v878 = sub_1B039BA88;
  v879 = sub_1B0394C24;
  v880 = sub_1B039BBA0;
  v881 = sub_1B039BC08;
  v882 = sub_1B03FB774;
  v883 = sub_1B06BCD8C;
  v884 = sub_1B0398F5C;
  v885 = sub_1B0398F5C;
  v886 = sub_1B0399178;
  v887 = sub_1B0398F5C;
  v888 = sub_1B0398F5C;
  v889 = sub_1B039BA94;
  v890 = sub_1B0398F5C;
  v891 = sub_1B0398F5C;
  v892 = sub_1B0399178;
  v893 = sub_1B0398F5C;
  v894 = sub_1B0398F5C;
  v895 = sub_1B03991EC;
  v896 = sub_1B0398F5C;
  v897 = sub_1B0398F5C;
  v898 = sub_1B03992D4;
  v899 = sub_1B039BBE8;
  v900 = sub_1B0394C24;
  v901 = sub_1B039BA2C;
  v902 = sub_1B039BA88;
  v903 = sub_1B0394C24;
  v904 = sub_1B039BBA0;
  v905 = sub_1B039BC08;
  v906 = sub_1B03FB774;
  v907 = sub_1B06BCD8C;
  v908 = sub_1B0398F5C;
  v909 = sub_1B0398F5C;
  v910 = sub_1B0399178;
  v911 = sub_1B0398F5C;
  v912 = sub_1B0398F5C;
  v913 = sub_1B039BA94;
  v914 = sub_1B0398F5C;
  v915 = sub_1B0398F5C;
  v916 = sub_1B0399178;
  v917 = sub_1B0398F5C;
  v918 = sub_1B0398F5C;
  v919 = sub_1B03991EC;
  v920 = sub_1B0398F5C;
  v921 = sub_1B0398F5C;
  v922 = sub_1B03992D4;
  v923 = sub_1B039BBE8;
  v924 = sub_1B0394C24;
  v925 = sub_1B039BA2C;
  v926 = sub_1B039BA88;
  v927 = sub_1B0394C24;
  v928 = sub_1B039BBA0;
  v929 = sub_1B039BC08;
  v930 = sub_1B03FB774;
  v931 = sub_1B06BCD8C;
  v932 = sub_1B0398F5C;
  v933 = sub_1B0398F5C;
  v934 = sub_1B0399178;
  v935 = sub_1B0398F5C;
  v936 = sub_1B0398F5C;
  v937 = sub_1B039BA94;
  v938 = sub_1B0398F5C;
  v939 = sub_1B0398F5C;
  v940 = sub_1B0399178;
  v941 = sub_1B0398F5C;
  v942 = sub_1B0398F5C;
  v943 = sub_1B03991EC;
  v944 = sub_1B0398F5C;
  v945 = sub_1B0398F5C;
  v946 = sub_1B03992D4;
  v1106 = 0;
  v1101 = 0;
  v1100 = 0;
  v1099 = 0;
  v1097 = 0;
  v1098 = 0;
  v1096 = 0;
  v1095 = 0;
  v1090 = 0;
  v1091 = 0;
  v1108 = 0;
  v1088 = 0;
  v1089 = 0;
  v1105 = 0;
  v1085 = 0;
  v1086 = 0;
  v1104 = 0;
  v947 = 0;
  v1077 = 0;
  v1075 = 0;
  v1074 = 0;
  v1072 = 0;
  v1073 = 0;
  v1071[0] = 0;
  v1071[1] = 0;
  v1107 = 0;
  v1069 = 0;
  v1065 = 0;
  v1066 = 0;
  v1067 = 0;
  v1050 = 0;
  v1051 = 0;
  v1052 = 0;
  v1053 = 0;
  v1103 = 0;
  v1048 = 0;
  v1049 = 0;
  v1036 = 0;
  v1037 = 0;
  v1038 = 0;
  v1039 = 0;
  v1102 = 0;
  v1029 = 0;
  v999 = 0;
  v948 = type metadata accessor for ConnectionStatus.Error(0);
  v949 = *(v948 - 8);
  v950 = v948 - 8;
  v951 = (*(v949 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v948);
  v952 = &v393[-v951];
  v1108 = &v393[-v951];
  v953 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v999);
  v954 = &v393[-v953];
  v955 = sub_1B0E43108();
  v956 = *(v955 - 8);
  v957 = v955 - 8;
  v958 = (*(v956 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v999);
  v959 = &v393[-v958];
  v1107 = &v393[-v958];
  updated = _s8ActivityV4DiffV6UpdateOMa(v8);
  v961 = *(updated - 8);
  v962 = updated - 8;
  v963 = (*(v961 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](updated);
  v964 = &v393[-v963];
  v965 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v966 = &v393[-v965];
  v1106 = &v393[-v965];
  v967 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1730, &qword_1B0E99918) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v999);
  v968 = &v393[-v967];
  v969 = _s6LoggerVMa(v11);
  v970 = (*(*(v969 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v999);
  v971 = &v393[-v970];
  v972 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v973 = &v393[-v972];
  v974 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v975 = &v393[-v974];
  v976 = sub_1B0E439A8();
  v977 = *(v976 - 8);
  v978 = v976 - 8;
  v979 = (*(v977 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v976);
  v980 = &v393[-v979];
  v981 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v393[-v979]);
  v982 = &v393[-v981];
  v983 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v393[-v981]);
  v984 = &v393[-v983];
  v985 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v393[-v983]);
  v986 = &v393[-v985];
  v987 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v393[-v985]);
  v988 = &v393[-v987];
  v989 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v393[-v987]);
  v990 = &v393[-v989];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v991 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v992 = &v393[-v991];
  v1105 = &v393[-v991];
  v993 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v994 = &v393[-v993];
  v1104 = &v393[-v993];
  v995 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v996 = &v393[-v995];
  v1103 = &v393[-v995];
  v997 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v998 = &v393[-v997];
  v1102 = &v393[-v997];
  v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1738, &qword_1B0E99920);
  v1000 = (*(*(v1015 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v999);
  v1017 = &v393[-v1000];
  v1016 = _s8ActivityV4DiffV4KindOMa(v28);
  v1006 = (*(*(v1016 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1005);
  v1011 = &v393[-v1006];
  v1007 = *v29;
  v1101 = v1007;
  v1100 = v30;
  v1099 = v31;
  v1097 = v32;
  v1098 = v33;
  v1096 = v34;
  v1095 = v1;
  v1008 = *v1;
  v1009 = &v1092;
  v1092 = v1007;
  sub_1B0417568();
  sub_1B0E44778();
  v1013 = v1093;
  v1014 = v1094;
  v1090 = v1093;
  v1091 = v1094;
  sub_1B06BA32C(v1010, v1011);
  sub_1B06BC8E4(v1013, v1014);
  v1012 = *(v1015 + 48);
  sub_1B06B9E3C(v1011, v1017);
  v35 = v1014;
  v36 = v1015;
  v37 = v1017;
  v38 = &v1017[v1012];
  *v38 = v1013;
  v38[1] = v35;
  v39 = &v37[*(v36 + 48)];
  v1018 = *v39;
  v1019 = v39[1];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v599 = *v1017;
      if (v1018)
      {
        v597 = v1018;
        v598 = v1019;
        v498 = v1019;
        v499 = v1018;
        v1074 = v599;
        v1072 = v1018;
        v1073 = v1019;
        (*(v977 + 16))(v982, v1004, v976);
        sub_1B0394784(v1004, v975);
        sub_1B0394784(v975, v973);
        sub_1B03F4FD0(v975, v971);
        v275 = &v973[*(v969 + 20)];
        v500 = *v275;
        v501 = *(v275 + 1);
        sub_1B039480C(v973);
        v503 = 24;
        v514 = 7;
        v276 = swift_allocObject();
        v277 = v501;
        v505 = v276;
        *(v276 + 16) = v500;
        *(v276 + 20) = v277;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v278 = swift_allocObject();
        v279 = v501;
        v502 = v278;
        *(v278 + 16) = v500;
        *(v278 + 20) = v279;

        v513 = 32;
        v280 = swift_allocObject();
        v281 = v502;
        v510 = v280;
        *(v280 + 16) = v827;
        *(v280 + 24) = v281;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v971);
        v515 = swift_allocObject();
        *(v515 + 16) = v1007;
        v535 = sub_1B0E43988();
        v536 = sub_1B0E458D8();
        v512 = 17;
        v517 = swift_allocObject();
        v507 = 16;
        *(v517 + 16) = 16;
        v518 = swift_allocObject();
        v509 = 4;
        *(v518 + 16) = 4;
        v282 = swift_allocObject();
        v504 = v282;
        *(v282 + 16) = v802;
        *(v282 + 24) = 0;
        v283 = swift_allocObject();
        v284 = v504;
        v519 = v283;
        *(v283 + 16) = v828;
        *(v283 + 24) = v284;
        v520 = swift_allocObject();
        *(v520 + 16) = 0;
        v521 = swift_allocObject();
        *(v521 + 16) = 1;
        v285 = swift_allocObject();
        v286 = v505;
        v506 = v285;
        *(v285 + 16) = v829;
        *(v285 + 24) = v286;
        v287 = swift_allocObject();
        v288 = v506;
        v522 = v287;
        *(v287 + 16) = v830;
        *(v287 + 24) = v288;
        v523 = swift_allocObject();
        *(v523 + 16) = v507;
        v524 = swift_allocObject();
        *(v524 + 16) = v509;
        v289 = swift_allocObject();
        v508 = v289;
        *(v289 + 16) = v806;
        *(v289 + 24) = 0;
        v290 = swift_allocObject();
        v291 = v508;
        v525 = v290;
        *(v290 + 16) = v831;
        *(v290 + 24) = v291;
        v526 = swift_allocObject();
        *(v526 + 16) = 0;
        v527 = swift_allocObject();
        *(v527 + 16) = v509;
        v292 = swift_allocObject();
        v293 = v510;
        v511 = v292;
        *(v292 + 16) = v832;
        *(v292 + 24) = v293;
        v294 = swift_allocObject();
        v295 = v511;
        v528 = v294;
        *(v294 + 16) = v833;
        *(v294 + 24) = v295;
        v529 = swift_allocObject();
        *(v529 + 16) = 0;
        v530 = swift_allocObject();
        *(v530 + 16) = 8;
        v296 = swift_allocObject();
        v297 = v515;
        v516 = v296;
        *(v296 + 16) = v834;
        *(v296 + 24) = v297;
        v298 = swift_allocObject();
        v299 = v516;
        v532 = v298;
        *(v298 + 16) = v835;
        *(v298 + 24) = v299;
        v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v531 = sub_1B0E46A48();
        v533 = v300;

        v301 = v517;
        v302 = v533;
        *v533 = v836;
        v302[1] = v301;

        v303 = v518;
        v304 = v533;
        v533[2] = v837;
        v304[3] = v303;

        v305 = v519;
        v306 = v533;
        v533[4] = v838;
        v306[5] = v305;

        v307 = v520;
        v308 = v533;
        v533[6] = v839;
        v308[7] = v307;

        v309 = v521;
        v310 = v533;
        v533[8] = v840;
        v310[9] = v309;

        v311 = v522;
        v312 = v533;
        v533[10] = v841;
        v312[11] = v311;

        v313 = v523;
        v314 = v533;
        v533[12] = v842;
        v314[13] = v313;

        v315 = v524;
        v316 = v533;
        v533[14] = v843;
        v316[15] = v315;

        v317 = v525;
        v318 = v533;
        v533[16] = v844;
        v318[17] = v317;

        v319 = v526;
        v320 = v533;
        v533[18] = v845;
        v320[19] = v319;

        v321 = v527;
        v322 = v533;
        v533[20] = v846;
        v322[21] = v321;

        v323 = v528;
        v324 = v533;
        v533[22] = v847;
        v324[23] = v323;

        v325 = v529;
        v326 = v533;
        v533[24] = v848;
        v326[25] = v325;

        v327 = v530;
        v328 = v533;
        v533[26] = v849;
        v328[27] = v327;

        v329 = v532;
        v330 = v533;
        v533[28] = v850;
        v330[29] = v329;
        sub_1B0394964();

        if (os_log_type_enabled(v535, v536))
        {
          v331 = v947;
          v491 = sub_1B0E45D78();
          v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v490 = 0;
          v492 = sub_1B03949A8(0, v489, v489);
          v493 = sub_1B03949A8(v490, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v494 = &v1063;
          v1063 = v491;
          v495 = &v1062;
          v1062 = v492;
          v496 = &v1061;
          v1061 = v493;
          sub_1B0394A48(0, &v1063);
          sub_1B0394A48(5, v494);
          v1059 = v836;
          v1060 = v517;
          sub_1B03949FC(&v1059, v494, v495, v496);
          v497 = v331;
          if (v331)
          {

            __break(1u);
          }

          else
          {
            v1059 = v837;
            v1060 = v518;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v487 = 0;
            v1059 = v838;
            v1060 = v519;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v486 = 0;
            v1059 = v839;
            v1060 = v520;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v485 = 0;
            v1059 = v840;
            v1060 = v521;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v484 = 0;
            v1059 = v841;
            v1060 = v522;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v483 = 0;
            v1059 = v842;
            v1060 = v523;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v482 = 0;
            v1059 = v843;
            v1060 = v524;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v481 = 0;
            v1059 = v844;
            v1060 = v525;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v480 = 0;
            v1059 = v845;
            v1060 = v526;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v479 = 0;
            v1059 = v846;
            v1060 = v527;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v478 = 0;
            v1059 = v847;
            v1060 = v528;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v477 = 0;
            v1059 = v848;
            v1060 = v529;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v476 = 0;
            v1059 = v849;
            v1060 = v530;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v475 = 0;
            v1059 = v850;
            v1060 = v532;
            sub_1B03949FC(&v1059, &v1063, &v1062, &v1061);
            v474 = 0;
            _os_log_impl(&dword_1B0389000, v535, v536, "[%.*hhx-%.*X] Updating activity for mailbox row ID %lld)", v491, 0x21u);
            v473 = 0;
            sub_1B03998A8(v492, 0, v489);
            sub_1B03998A8(v493, v473, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v488 = v474;
          }
        }

        else
        {
          v332 = v947;

          v488 = v332;
        }

        v471 = v488;
        MEMORY[0x1E69E5920](v535);
        (*(v977 + 8))(v982, v976);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v1070[1] = v599;
        v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1728, &qword_1B0E99910);
        sub_1B06BCE10();
        sub_1B0E45798();
        for (i = v471; ; i = v469)
        {
          v469 = i;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1740, &qword_1B0E99928);
          sub_1B0E46518();
          if ((*(v961 + 48))(v968, 1, updated) == 1)
          {
            break;
          }

          sub_1B06BCE98(v968, v966);
          sub_1B06BCF60(v966, v964);
          v468 = swift_getEnumCaseMultiPayload();
          if (v468)
          {
            if (v468 == 1)
            {
              v462 = *v964;
              v1069 = v462;
              MEMORY[0x1E69E5928](v498);
              v463 = [v498 objectID];
              MEMORY[0x1E69E5920](v498);
              v1068 = v1007;
              sub_1B06B3D94(v462, v463, &v1068, v1004);
              MEMORY[0x1E69E5920](v463);
            }

            else
            {
              (*(v956 + 32))(v959, v964, v955);
              v1107 = v959;
              MEMORY[0x1E69E5928](v498);
              v461 = [v498 objectID];
              MEMORY[0x1E69E5920](v498);
              v1070[0] = v1007;
              sub_1B06A08E0(v959, v461, v1070, v1004);
              MEMORY[0x1E69E5920](v461);
              (*(v956 + 8))(v959, v955);
            }
          }

          else
          {
            v464 = *v964;
            v465 = v964[1];
            v466 = *(v964 + 16);
            v1065 = v464;
            v1066 = v465;
            v1067 = v466 & 1;
            MEMORY[0x1E69E5928](v498);
            v467 = [v498 objectID];
            MEMORY[0x1E69E5920](v498);
            v1064 = v1007;
            sub_1B06B09CC(v464, v465, v466 & 1, v467, &v1064, v1004);
            MEMORY[0x1E69E5920](v467);
          }

          sub_1B06BD028(v966);
        }

        sub_1B039E440(v1071);
        MEMORY[0x1E69E5920](v499);
        MEMORY[0x1E69E5920](v498);
      }

      else
      {
        (*(v977 + 16))(v984, v1004, v976);
        sub_1B0394784(v1004, v975);
        sub_1B0394784(v975, v973);
        sub_1B03F4FD0(v975, v971);
        v218 = &v973[*(v969 + 20)];
        v560 = *v218;
        v561 = *(v218 + 1);
        sub_1B039480C(v973);
        v563 = 24;
        v574 = 7;
        v219 = swift_allocObject();
        v220 = v561;
        v565 = v219;
        *(v219 + 16) = v560;
        *(v219 + 20) = v220;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v221 = swift_allocObject();
        v222 = v561;
        v562 = v221;
        *(v221 + 16) = v560;
        *(v221 + 20) = v222;

        v573 = 32;
        v223 = swift_allocObject();
        v224 = v562;
        v570 = v223;
        *(v223 + 16) = v851;
        *(v223 + 24) = v224;
        sub_1B0394868();
        sub_1B0394868();

        sub_1B039480C(v971);
        v575 = swift_allocObject();
        *(v575 + 16) = v1007;
        v595 = sub_1B0E43988();
        v596 = sub_1B0E458E8();
        v572 = 17;
        v577 = swift_allocObject();
        v567 = 16;
        *(v577 + 16) = 16;
        v578 = swift_allocObject();
        v569 = 4;
        *(v578 + 16) = 4;
        v225 = swift_allocObject();
        v564 = v225;
        *(v225 + 16) = v802;
        *(v225 + 24) = 0;
        v226 = swift_allocObject();
        v227 = v564;
        v579 = v226;
        *(v226 + 16) = v852;
        *(v226 + 24) = v227;
        v580 = swift_allocObject();
        *(v580 + 16) = 0;
        v581 = swift_allocObject();
        *(v581 + 16) = 1;
        v228 = swift_allocObject();
        v229 = v565;
        v566 = v228;
        *(v228 + 16) = v853;
        *(v228 + 24) = v229;
        v230 = swift_allocObject();
        v231 = v566;
        v582 = v230;
        *(v230 + 16) = v854;
        *(v230 + 24) = v231;
        v583 = swift_allocObject();
        *(v583 + 16) = v567;
        v584 = swift_allocObject();
        *(v584 + 16) = v569;
        v232 = swift_allocObject();
        v568 = v232;
        *(v232 + 16) = v806;
        *(v232 + 24) = 0;
        v233 = swift_allocObject();
        v234 = v568;
        v585 = v233;
        *(v233 + 16) = v855;
        *(v233 + 24) = v234;
        v586 = swift_allocObject();
        *(v586 + 16) = 0;
        v587 = swift_allocObject();
        *(v587 + 16) = v569;
        v235 = swift_allocObject();
        v236 = v570;
        v571 = v235;
        *(v235 + 16) = v856;
        *(v235 + 24) = v236;
        v237 = swift_allocObject();
        v238 = v571;
        v588 = v237;
        *(v237 + 16) = v857;
        *(v237 + 24) = v238;
        v589 = swift_allocObject();
        *(v589 + 16) = 0;
        v590 = swift_allocObject();
        *(v590 + 16) = 8;
        v239 = swift_allocObject();
        v240 = v575;
        v576 = v239;
        *(v239 + 16) = v858;
        *(v239 + 24) = v240;
        v241 = swift_allocObject();
        v242 = v576;
        v592 = v241;
        *(v241 + 16) = v859;
        *(v241 + 24) = v242;
        v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v591 = sub_1B0E46A48();
        v593 = v243;

        v244 = v577;
        v245 = v593;
        *v593 = v860;
        v245[1] = v244;

        v246 = v578;
        v247 = v593;
        v593[2] = v861;
        v247[3] = v246;

        v248 = v579;
        v249 = v593;
        v593[4] = v862;
        v249[5] = v248;

        v250 = v580;
        v251 = v593;
        v593[6] = v863;
        v251[7] = v250;

        v252 = v581;
        v253 = v593;
        v593[8] = v864;
        v253[9] = v252;

        v254 = v582;
        v255 = v593;
        v593[10] = v865;
        v255[11] = v254;

        v256 = v583;
        v257 = v593;
        v593[12] = v866;
        v257[13] = v256;

        v258 = v584;
        v259 = v593;
        v593[14] = v867;
        v259[15] = v258;

        v260 = v585;
        v261 = v593;
        v593[16] = v868;
        v261[17] = v260;

        v262 = v586;
        v263 = v593;
        v593[18] = v869;
        v263[19] = v262;

        v264 = v587;
        v265 = v593;
        v593[20] = v870;
        v265[21] = v264;

        v266 = v588;
        v267 = v593;
        v593[22] = v871;
        v267[23] = v266;

        v268 = v589;
        v269 = v593;
        v593[24] = v872;
        v269[25] = v268;

        v270 = v590;
        v271 = v593;
        v593[26] = v873;
        v271[27] = v270;

        v272 = v592;
        v273 = v593;
        v593[28] = v874;
        v273[29] = v272;
        sub_1B0394964();

        if (os_log_type_enabled(v595, v596))
        {
          v274 = v947;
          v553 = sub_1B0E45D78();
          v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v552 = 0;
          v554 = sub_1B03949A8(0, v551, v551);
          v555 = sub_1B03949A8(v552, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v556 = &v1058;
          v1058 = v553;
          v557 = &v1057;
          v1057 = v554;
          v558 = &v1056;
          v1056 = v555;
          sub_1B0394A48(0, &v1058);
          sub_1B0394A48(5, v556);
          v1054 = v860;
          v1055 = v577;
          sub_1B03949FC(&v1054, v556, v557, v558);
          v559 = v274;
          if (v274)
          {

            __break(1u);
          }

          else
          {
            v1054 = v861;
            v1055 = v578;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v550 = 0;
            v1054 = v862;
            v1055 = v579;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v549 = 0;
            v1054 = v863;
            v1055 = v580;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v548 = 0;
            v1054 = v864;
            v1055 = v581;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v547 = 0;
            v1054 = v865;
            v1055 = v582;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v546 = 0;
            v1054 = v866;
            v1055 = v583;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v545 = 0;
            v1054 = v867;
            v1055 = v584;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v544 = 0;
            v1054 = v868;
            v1055 = v585;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v543 = 0;
            v1054 = v869;
            v1055 = v586;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v542 = 0;
            v1054 = v870;
            v1055 = v587;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v541 = 0;
            v1054 = v871;
            v1055 = v588;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v540 = 0;
            v1054 = v872;
            v1055 = v589;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v539 = 0;
            v1054 = v873;
            v1055 = v590;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            v538 = 0;
            v1054 = v874;
            v1055 = v592;
            sub_1B03949FC(&v1054, &v1058, &v1057, &v1056);
            _os_log_impl(&dword_1B0389000, v595, v596, "[%.*hhx-%.*X] Trying to update an activity that doesn’t exist (mailbox row ID %lld)", v553, 0x21u);
            v537 = 0;
            sub_1B03998A8(v554, 0, v551);
            sub_1B03998A8(v555, v537, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v595);
        (*(v977 + 8))(v984, v976);
      }

      return sub_1B06BC934(v1013, v1014);
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_1B06BB304(v1017, v952);
      v1108 = v952;
      v1088 = v1018;
      v1089 = v1019;
      v392 = *(v956 + 56);
      v394 = 1;
      v392(v992, 1, 1, v955);
      sub_1B06BB524(v952, v954);
      (*(v949 + 56))(v954, 0, v394, v948);
      v1087 = v1007;
      sub_1B06B571C(v992, v954, &v1087, v1018, v1019, v1001, v1002, v1003, v1004);
      sub_1B03DD8D4(v954);
      sub_1B06B97A8(v992);
      sub_1B06BC934(v1018, v1019);
      sub_1B06BB840(v952);
      return sub_1B06BC934(v1013, v1014);
    }

    if (v1018)
    {
      sub_1B06BC984(v1017, v992);
      v1105 = v992;
      v1085 = v1018;
      v1086 = v1019;
      (*(v949 + 56))(v954, 1, 1, v948);
      v1084 = v1007;
      sub_1B06B571C(v992, v954, &v1084, v1018, v1019, v1001, v1002, v1003, v1004);
      sub_1B03DD8D4(v954);
      sub_1B06BC934(v1018, v1019);
      sub_1B06B97A8(v992);
      return sub_1B06BC934(v1013, v1014);
    }

    sub_1B06BC984(v1017, v994);
    v1104 = v994;
    v1083 = v1007;
    v460 = v1002(&v1083);
    if (v460)
    {
      v459 = v460;
      v458 = v460;
      v1077 = v460;
      v1076 = v1007;
      sub_1B06B0708(&v1076, v460, 4, 0, 0, 0, v994, v1004);
      v455 = v333;
      v457 = v334;
      MEMORY[0x1E69E5928](v334);
      MEMORY[0x1E69E5920](v455);
      MEMORY[0x1E69E5920](v457);
      v1075 = v457;
      v456 = [v457 objectID];
      [v1001 activityWithID_finishedWithError_];
      MEMORY[0x1E69E5920](v456);
      MEMORY[0x1E69E5920](v457);
      MEMORY[0x1E69E5920](v458);
      sub_1B06B97A8(v994);
      sub_1B06BC934(v1018, v1019);
      return sub_1B06BC934(v1013, v1014);
    }

    (*(v977 + 16))(v980, v1004, v976);
    sub_1B0394784(v1004, v975);
    sub_1B0394784(v975, v973);
    sub_1B03F4FD0(v975, v971);
    v335 = &v973[*(v969 + 20)];
    v418 = *v335;
    v419 = *(v335 + 1);
    sub_1B039480C(v973);
    v421 = 24;
    v432 = 7;
    v336 = swift_allocObject();
    v337 = v419;
    v423 = v336;
    *(v336 + 16) = v418;
    *(v336 + 20) = v337;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v338 = swift_allocObject();
    v339 = v419;
    v420 = v338;
    *(v338 + 16) = v418;
    *(v338 + 20) = v339;

    v431 = 32;
    v340 = swift_allocObject();
    v341 = v420;
    v428 = v340;
    *(v340 + 16) = v801;
    *(v340 + 24) = v341;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v971);
    v433 = swift_allocObject();
    *(v433 + 16) = v1007;
    v453 = sub_1B0E43988();
    v454 = sub_1B0E458E8();
    v430 = 17;
    v435 = swift_allocObject();
    v425 = 16;
    *(v435 + 16) = 16;
    v436 = swift_allocObject();
    v427 = 4;
    *(v436 + 16) = 4;
    v342 = swift_allocObject();
    v422 = v342;
    *(v342 + 16) = v802;
    *(v342 + 24) = 0;
    v343 = swift_allocObject();
    v344 = v422;
    v437 = v343;
    *(v343 + 16) = v803;
    *(v343 + 24) = v344;
    v438 = swift_allocObject();
    *(v438 + 16) = 0;
    v439 = swift_allocObject();
    *(v439 + 16) = 1;
    v345 = swift_allocObject();
    v346 = v423;
    v424 = v345;
    *(v345 + 16) = v804;
    *(v345 + 24) = v346;
    v347 = swift_allocObject();
    v348 = v424;
    v440 = v347;
    *(v347 + 16) = v805;
    *(v347 + 24) = v348;
    v441 = swift_allocObject();
    *(v441 + 16) = v425;
    v442 = swift_allocObject();
    *(v442 + 16) = v427;
    v349 = swift_allocObject();
    v426 = v349;
    *(v349 + 16) = v806;
    *(v349 + 24) = 0;
    v350 = swift_allocObject();
    v351 = v426;
    v443 = v350;
    *(v350 + 16) = v807;
    *(v350 + 24) = v351;
    v444 = swift_allocObject();
    *(v444 + 16) = 0;
    v445 = swift_allocObject();
    *(v445 + 16) = v427;
    v352 = swift_allocObject();
    v353 = v428;
    v429 = v352;
    *(v352 + 16) = v808;
    *(v352 + 24) = v353;
    v354 = swift_allocObject();
    v355 = v429;
    v446 = v354;
    *(v354 + 16) = v809;
    *(v354 + 24) = v355;
    v447 = swift_allocObject();
    *(v447 + 16) = 0;
    v448 = swift_allocObject();
    *(v448 + 16) = 8;
    v356 = swift_allocObject();
    v357 = v433;
    v434 = v356;
    *(v356 + 16) = v810;
    *(v356 + 24) = v357;
    v358 = swift_allocObject();
    v359 = v434;
    v450 = v358;
    *(v358 + 16) = v811;
    *(v358 + 24) = v359;
    v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v449 = sub_1B0E46A48();
    v451 = v360;

    v361 = v435;
    v362 = v451;
    *v451 = v812;
    v362[1] = v361;

    v363 = v436;
    v364 = v451;
    v451[2] = v813;
    v364[3] = v363;

    v365 = v437;
    v366 = v451;
    v451[4] = v814;
    v366[5] = v365;

    v367 = v438;
    v368 = v451;
    v451[6] = v815;
    v368[7] = v367;

    v369 = v439;
    v370 = v451;
    v451[8] = v816;
    v370[9] = v369;

    v371 = v440;
    v372 = v451;
    v451[10] = v817;
    v372[11] = v371;

    v373 = v441;
    v374 = v451;
    v451[12] = v818;
    v374[13] = v373;

    v375 = v442;
    v376 = v451;
    v451[14] = v819;
    v376[15] = v375;

    v377 = v443;
    v378 = v451;
    v451[16] = v820;
    v378[17] = v377;

    v379 = v444;
    v380 = v451;
    v451[18] = v821;
    v380[19] = v379;

    v381 = v445;
    v382 = v451;
    v451[20] = v822;
    v382[21] = v381;

    v383 = v446;
    v384 = v451;
    v451[22] = v823;
    v384[23] = v383;

    v385 = v447;
    v386 = v451;
    v451[24] = v824;
    v386[25] = v385;

    v387 = v448;
    v388 = v451;
    v451[26] = v825;
    v388[27] = v387;

    v389 = v450;
    v390 = v451;
    v451[28] = v826;
    v390[29] = v389;
    sub_1B0394964();

    if (os_log_type_enabled(v453, v454))
    {
      v391 = v947;
      v411 = sub_1B0E45D78();
      v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v410 = 0;
      v412 = sub_1B03949A8(0, v409, v409);
      v413 = sub_1B03949A8(v410, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v414 = &v1082;
      v1082 = v411;
      v415 = &v1081;
      v1081 = v412;
      v416 = &v1080;
      v1080 = v413;
      sub_1B0394A48(0, &v1082);
      sub_1B0394A48(5, v414);
      v1078 = v812;
      v1079 = v435;
      sub_1B03949FC(&v1078, v414, v415, v416);
      v417 = v391;
      if (v391)
      {

        __break(1u);
      }

      else
      {
        v1078 = v813;
        v1079 = v436;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v408 = 0;
        v1078 = v814;
        v1079 = v437;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v407 = 0;
        v1078 = v815;
        v1079 = v438;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v406 = 0;
        v1078 = v816;
        v1079 = v439;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v405 = 0;
        v1078 = v817;
        v1079 = v440;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v404 = 0;
        v1078 = v818;
        v1079 = v441;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v403 = 0;
        v1078 = v819;
        v1079 = v442;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v402 = 0;
        v1078 = v820;
        v1079 = v443;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v401 = 0;
        v1078 = v821;
        v1079 = v444;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v400 = 0;
        v1078 = v822;
        v1079 = v445;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v399 = 0;
        v1078 = v823;
        v1079 = v446;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v398 = 0;
        v1078 = v824;
        v1079 = v447;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v397 = 0;
        v1078 = v825;
        v1079 = v448;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        v396 = 0;
        v1078 = v826;
        v1079 = v450;
        sub_1B03949FC(&v1078, &v1082, &v1081, &v1080);
        _os_log_impl(&dword_1B0389000, v453, v454, "[%.*hhx-%.*X] Unable to get mailbox-object-id for mailbox row ID %lld", v411, 0x21u);
        v395 = 0;
        sub_1B03998A8(v412, 0, v409);
        sub_1B03998A8(v413, v395, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v453);
    (*(v977 + 8))(v980, v976);
    sub_1B06B97A8(v994);
    sub_1B06BC934(v1018, v1019);
    return sub_1B06BC934(v1013, v1014);
  }

  else
  {
    v795 = *v1017;
    v796 = *(v1017 + 1);
    v797 = *(v1017 + 2);
    v798 = *(v1017 + 12);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
    v799 = &v1017[*(v40 + 48)];
    if (v1018)
    {
      v793 = v1018;
      v794 = v1019;
      v158 = v986;
      v629 = v1019;
      v628 = v1018;
      sub_1B06BC984(v799, v996);
      v1050 = v795;
      v1051 = v796;
      v1052 = v797;
      v1053 = v798;
      v1103 = v996;
      v1048 = v628;
      v1049 = v629;
      MEMORY[0x1E69E5928](v629);
      v630 = [v629 objectID];
      MEMORY[0x1E69E5920](v629);
      [v1001 activityWithID:v630 finishedWithError:0];
      MEMORY[0x1E69E5920](v630);
      (*(v977 + 16))(v158, v1004, v976);
      sub_1B0394784(v1004, v975);
      sub_1B0394784(v975, v973);
      sub_1B03F4FD0(v975, v971);
      v159 = &v973[*(v969 + 20)];
      v631 = *v159;
      v632 = *(v159 + 1);
      sub_1B039480C(v973);
      v634 = 24;
      v645 = 7;
      v160 = swift_allocObject();
      v161 = v632;
      v636 = v160;
      *(v160 + 16) = v631;
      *(v160 + 20) = v161;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v162 = swift_allocObject();
      v163 = v632;
      v633 = v162;
      *(v162 + 16) = v631;
      *(v162 + 20) = v163;

      v644 = 32;
      v164 = swift_allocObject();
      v165 = v633;
      v641 = v164;
      *(v164 + 16) = v875;
      *(v164 + 24) = v165;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v971);
      v646 = swift_allocObject();
      *(v646 + 16) = v1007;
      v666 = sub_1B0E43988();
      v667 = sub_1B0E458D8();
      v643 = 17;
      v648 = swift_allocObject();
      v638 = 16;
      *(v648 + 16) = 16;
      v649 = swift_allocObject();
      v640 = 4;
      *(v649 + 16) = 4;
      v166 = swift_allocObject();
      v635 = v166;
      *(v166 + 16) = v802;
      *(v166 + 24) = 0;
      v167 = swift_allocObject();
      v168 = v635;
      v650 = v167;
      *(v167 + 16) = v876;
      *(v167 + 24) = v168;
      v651 = swift_allocObject();
      *(v651 + 16) = 0;
      v652 = swift_allocObject();
      *(v652 + 16) = 1;
      v169 = swift_allocObject();
      v170 = v636;
      v637 = v169;
      *(v169 + 16) = v877;
      *(v169 + 24) = v170;
      v171 = swift_allocObject();
      v172 = v637;
      v653 = v171;
      *(v171 + 16) = v878;
      *(v171 + 24) = v172;
      v654 = swift_allocObject();
      *(v654 + 16) = v638;
      v655 = swift_allocObject();
      *(v655 + 16) = v640;
      v173 = swift_allocObject();
      v639 = v173;
      *(v173 + 16) = v806;
      *(v173 + 24) = 0;
      v174 = swift_allocObject();
      v175 = v639;
      v656 = v174;
      *(v174 + 16) = v879;
      *(v174 + 24) = v175;
      v657 = swift_allocObject();
      *(v657 + 16) = 0;
      v658 = swift_allocObject();
      *(v658 + 16) = v640;
      v176 = swift_allocObject();
      v177 = v641;
      v642 = v176;
      *(v176 + 16) = v880;
      *(v176 + 24) = v177;
      v178 = swift_allocObject();
      v179 = v642;
      v659 = v178;
      *(v178 + 16) = v881;
      *(v178 + 24) = v179;
      v660 = swift_allocObject();
      *(v660 + 16) = 0;
      v661 = swift_allocObject();
      *(v661 + 16) = 8;
      v180 = swift_allocObject();
      v181 = v646;
      v647 = v180;
      *(v180 + 16) = v882;
      *(v180 + 24) = v181;
      v182 = swift_allocObject();
      v183 = v647;
      v663 = v182;
      *(v182 + 16) = v883;
      *(v182 + 24) = v183;
      v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v662 = sub_1B0E46A48();
      v664 = v184;

      v185 = v648;
      v186 = v664;
      *v664 = v884;
      v186[1] = v185;

      v187 = v649;
      v188 = v664;
      v664[2] = v885;
      v188[3] = v187;

      v189 = v650;
      v190 = v664;
      v664[4] = v886;
      v190[5] = v189;

      v191 = v651;
      v192 = v664;
      v664[6] = v887;
      v192[7] = v191;

      v193 = v652;
      v194 = v664;
      v664[8] = v888;
      v194[9] = v193;

      v195 = v653;
      v196 = v664;
      v664[10] = v889;
      v196[11] = v195;

      v197 = v654;
      v198 = v664;
      v664[12] = v890;
      v198[13] = v197;

      v199 = v655;
      v200 = v664;
      v664[14] = v891;
      v200[15] = v199;

      v201 = v656;
      v202 = v664;
      v664[16] = v892;
      v202[17] = v201;

      v203 = v657;
      v204 = v664;
      v664[18] = v893;
      v204[19] = v203;

      v205 = v658;
      v206 = v664;
      v664[20] = v894;
      v206[21] = v205;

      v207 = v659;
      v208 = v664;
      v664[22] = v895;
      v208[23] = v207;

      v209 = v660;
      v210 = v664;
      v664[24] = v896;
      v210[25] = v209;

      v211 = v661;
      v212 = v664;
      v664[26] = v897;
      v212[27] = v211;

      v213 = v663;
      v214 = v664;
      v664[28] = v898;
      v214[29] = v213;
      sub_1B0394964();

      if (os_log_type_enabled(v666, v667))
      {
        v215 = v947;
        v621 = sub_1B0E45D78();
        v619 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v620 = 0;
        v622 = sub_1B03949A8(0, v619, v619);
        v623 = sub_1B03949A8(v620, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v624 = &v1044;
        v1044 = v621;
        v625 = &v1043;
        v1043 = v622;
        v626 = &v1042;
        v1042 = v623;
        sub_1B0394A48(0, &v1044);
        sub_1B0394A48(5, v624);
        v1040 = v884;
        v1041 = v648;
        sub_1B03949FC(&v1040, v624, v625, v626);
        v627 = v215;
        if (v215)
        {

          __break(1u);
        }

        else
        {
          v1040 = v885;
          v1041 = v649;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v618 = 0;
          v1040 = v886;
          v1041 = v650;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v617 = 0;
          v1040 = v887;
          v1041 = v651;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v616 = 0;
          v1040 = v888;
          v1041 = v652;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v615 = 0;
          v1040 = v889;
          v1041 = v653;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v614 = 0;
          v1040 = v890;
          v1041 = v654;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v613 = 0;
          v1040 = v891;
          v1041 = v655;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v612 = 0;
          v1040 = v892;
          v1041 = v656;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v611 = 0;
          v1040 = v893;
          v1041 = v657;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v610 = 0;
          v1040 = v894;
          v1041 = v658;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v609 = 0;
          v1040 = v895;
          v1041 = v659;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v608 = 0;
          v1040 = v896;
          v1041 = v660;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v607 = 0;
          v1040 = v897;
          v1041 = v661;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          v606 = 0;
          v1040 = v898;
          v1041 = v663;
          sub_1B03949FC(&v1040, &v1044, &v1043, &v1042);
          _os_log_impl(&dword_1B0389000, v666, v667, "[%.*hhx-%.*X] Creating new activity for mailbox row ID %lld). B.", v621, 0x21u);
          v605 = 0;
          sub_1B03998A8(v622, 0, v619);
          sub_1B03998A8(v623, v605, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v666);
      (*(v977 + 8))(v986, v976);
      v600 = &v1047;
      v1047 = v1007;
      MEMORY[0x1E69E5928](v628);
      sub_1B06B0708(v600, v628, v795, v796, v797, v798, v996, v1004);
      v601 = v216;
      v602 = v217;
      MEMORY[0x1E69E5920](v628);
      v604 = v1046;
      v1046[0] = v601;
      v1046[1] = v602;
      v603 = &v1045;
      v1045 = v1007;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1700, &qword_1B0E998E8);
      sub_1B0E44788();
      sub_1B06B97A8(v996);
      MEMORY[0x1E69E5920](v628);
      MEMORY[0x1E69E5920](v629);
      return sub_1B06BC934(v1013, v1014);
    }

    sub_1B06BC984(v799, v998);
    v1036 = v795;
    v1037 = v796;
    v1038 = v797;
    v1039 = v798;
    v1102 = v998;
    v1035 = v1007;
    v792 = v1002(&v1035);
    if (v792)
    {
      v791 = v792;
      v753 = v792;
      v1029 = v792;
      (*(v977 + 16))(v990, v1004, v976);
      sub_1B0394784(v1004, v975);
      sub_1B0394784(v975, v973);
      sub_1B03F4FD0(v975, v971);
      v41 = &v973[*(v969 + 20)];
      v754 = *v41;
      v755 = *(v41 + 1);
      sub_1B039480C(v973);
      v757 = 24;
      v768 = 7;
      v42 = swift_allocObject();
      v43 = v755;
      v759 = v42;
      *(v42 + 16) = v754;
      *(v42 + 20) = v43;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v44 = swift_allocObject();
      v45 = v755;
      v756 = v44;
      *(v44 + 16) = v754;
      *(v44 + 20) = v45;

      v767 = 32;
      v46 = swift_allocObject();
      v47 = v756;
      v764 = v46;
      *(v46 + 16) = v899;
      *(v46 + 24) = v47;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v971);
      v769 = swift_allocObject();
      *(v769 + 16) = v1007;
      v789 = sub_1B0E43988();
      v790 = sub_1B0E458D8();
      v766 = 17;
      v771 = swift_allocObject();
      v761 = 16;
      *(v771 + 16) = 16;
      v772 = swift_allocObject();
      v763 = 4;
      *(v772 + 16) = 4;
      v48 = swift_allocObject();
      v758 = v48;
      *(v48 + 16) = v802;
      *(v48 + 24) = 0;
      v49 = swift_allocObject();
      v50 = v758;
      v773 = v49;
      *(v49 + 16) = v900;
      *(v49 + 24) = v50;
      v774 = swift_allocObject();
      *(v774 + 16) = 0;
      v775 = swift_allocObject();
      *(v775 + 16) = 1;
      v51 = swift_allocObject();
      v52 = v759;
      v760 = v51;
      *(v51 + 16) = v901;
      *(v51 + 24) = v52;
      v53 = swift_allocObject();
      v54 = v760;
      v776 = v53;
      *(v53 + 16) = v902;
      *(v53 + 24) = v54;
      v777 = swift_allocObject();
      *(v777 + 16) = v761;
      v778 = swift_allocObject();
      *(v778 + 16) = v763;
      v55 = swift_allocObject();
      v762 = v55;
      *(v55 + 16) = v806;
      *(v55 + 24) = 0;
      v56 = swift_allocObject();
      v57 = v762;
      v779 = v56;
      *(v56 + 16) = v903;
      *(v56 + 24) = v57;
      v780 = swift_allocObject();
      *(v780 + 16) = 0;
      v781 = swift_allocObject();
      *(v781 + 16) = v763;
      v58 = swift_allocObject();
      v59 = v764;
      v765 = v58;
      *(v58 + 16) = v904;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v765;
      v782 = v60;
      *(v60 + 16) = v905;
      *(v60 + 24) = v61;
      v783 = swift_allocObject();
      *(v783 + 16) = 0;
      v784 = swift_allocObject();
      *(v784 + 16) = 8;
      v62 = swift_allocObject();
      v63 = v769;
      v770 = v62;
      *(v62 + 16) = v906;
      *(v62 + 24) = v63;
      v64 = swift_allocObject();
      v65 = v770;
      v786 = v64;
      *(v64 + 16) = v907;
      *(v64 + 24) = v65;
      v788 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v785 = sub_1B0E46A48();
      v787 = v66;

      v67 = v771;
      v68 = v787;
      *v787 = v908;
      v68[1] = v67;

      v69 = v772;
      v70 = v787;
      v787[2] = v909;
      v70[3] = v69;

      v71 = v773;
      v72 = v787;
      v787[4] = v910;
      v72[5] = v71;

      v73 = v774;
      v74 = v787;
      v787[6] = v911;
      v74[7] = v73;

      v75 = v775;
      v76 = v787;
      v787[8] = v912;
      v76[9] = v75;

      v77 = v776;
      v78 = v787;
      v787[10] = v913;
      v78[11] = v77;

      v79 = v777;
      v80 = v787;
      v787[12] = v914;
      v80[13] = v79;

      v81 = v778;
      v82 = v787;
      v787[14] = v915;
      v82[15] = v81;

      v83 = v779;
      v84 = v787;
      v787[16] = v916;
      v84[17] = v83;

      v85 = v780;
      v86 = v787;
      v787[18] = v917;
      v86[19] = v85;

      v87 = v781;
      v88 = v787;
      v787[20] = v918;
      v88[21] = v87;

      v89 = v782;
      v90 = v787;
      v787[22] = v919;
      v90[23] = v89;

      v91 = v783;
      v92 = v787;
      v787[24] = v920;
      v92[25] = v91;

      v93 = v784;
      v94 = v787;
      v787[26] = v921;
      v94[27] = v93;

      v95 = v786;
      v96 = v787;
      v787[28] = v922;
      v96[29] = v95;
      sub_1B0394964();

      if (os_log_type_enabled(v789, v790))
      {
        v97 = v947;
        v746 = sub_1B0E45D78();
        v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v745 = 0;
        v747 = sub_1B03949A8(0, v744, v744);
        v748 = sub_1B03949A8(v745, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v749 = &v1025;
        v1025 = v746;
        v750 = &v1024;
        v1024 = v747;
        v751 = &v1023;
        v1023 = v748;
        sub_1B0394A48(0, &v1025);
        sub_1B0394A48(5, v749);
        v1021 = v908;
        v1022 = v771;
        sub_1B03949FC(&v1021, v749, v750, v751);
        v752 = v97;
        if (v97)
        {

          __break(1u);
        }

        else
        {
          v1021 = v909;
          v1022 = v772;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v743 = 0;
          v1021 = v910;
          v1022 = v773;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v742 = 0;
          v1021 = v911;
          v1022 = v774;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v741 = 0;
          v1021 = v912;
          v1022 = v775;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v740 = 0;
          v1021 = v913;
          v1022 = v776;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v739 = 0;
          v1021 = v914;
          v1022 = v777;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v738 = 0;
          v1021 = v915;
          v1022 = v778;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v737 = 0;
          v1021 = v916;
          v1022 = v779;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v736 = 0;
          v1021 = v917;
          v1022 = v780;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v735 = 0;
          v1021 = v918;
          v1022 = v781;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v734 = 0;
          v1021 = v919;
          v1022 = v782;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v733 = 0;
          v1021 = v920;
          v1022 = v783;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v732 = 0;
          v1021 = v921;
          v1022 = v784;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          v731 = 0;
          v1021 = v922;
          v1022 = v786;
          sub_1B03949FC(&v1021, &v1025, &v1024, &v1023);
          _os_log_impl(&dword_1B0389000, v789, v790, "[%.*hhx-%.*X] Creating new activity for mailbox row ID %lld). A.", v746, 0x21u);
          v730 = 0;
          sub_1B03998A8(v747, 0, v744);
          sub_1B03998A8(v748, v730, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v789);
      (*(v977 + 8))(v990, v976);
      v1028 = v1007;
      sub_1B06B0708(&v1028, v753, v795, v796, v797, v798, v998, v1004);
      v729 = v1027;
      v1027[0] = v98;
      v1027[1] = v99;
      v728 = &v1026;
      v1026 = v1007;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1700, &qword_1B0E998E8);
      sub_1B0E44788();
      MEMORY[0x1E69E5920](v753);
      sub_1B06B97A8(v998);
      return sub_1B06BC934(v1013, v1014);
    }

    (*(v977 + 16))(v988, v1004, v976);
    sub_1B0394784(v1004, v975);
    sub_1B0394784(v975, v973);
    sub_1B03F4FD0(v975, v971);
    v100 = &v973[*(v969 + 20)];
    v691 = *v100;
    v692 = *(v100 + 1);
    sub_1B039480C(v973);
    v694 = 24;
    v705 = 7;
    v101 = swift_allocObject();
    v102 = v692;
    v696 = v101;
    *(v101 + 16) = v691;
    *(v101 + 20) = v102;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v103 = swift_allocObject();
    v104 = v692;
    v693 = v103;
    *(v103 + 16) = v691;
    *(v103 + 20) = v104;

    v704 = 32;
    v105 = swift_allocObject();
    v106 = v693;
    v701 = v105;
    *(v105 + 16) = v923;
    *(v105 + 24) = v106;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v971);
    v706 = swift_allocObject();
    *(v706 + 16) = v1007;
    v726 = sub_1B0E43988();
    v727 = sub_1B0E458E8();
    v703 = 17;
    v708 = swift_allocObject();
    v698 = 16;
    *(v708 + 16) = 16;
    v709 = swift_allocObject();
    v700 = 4;
    *(v709 + 16) = 4;
    v107 = swift_allocObject();
    v695 = v107;
    *(v107 + 16) = v802;
    *(v107 + 24) = 0;
    v108 = swift_allocObject();
    v109 = v695;
    v710 = v108;
    *(v108 + 16) = v924;
    *(v108 + 24) = v109;
    v711 = swift_allocObject();
    *(v711 + 16) = 0;
    v712 = swift_allocObject();
    *(v712 + 16) = 1;
    v110 = swift_allocObject();
    v111 = v696;
    v697 = v110;
    *(v110 + 16) = v925;
    *(v110 + 24) = v111;
    v112 = swift_allocObject();
    v113 = v697;
    v713 = v112;
    *(v112 + 16) = v926;
    *(v112 + 24) = v113;
    v714 = swift_allocObject();
    *(v714 + 16) = v698;
    v715 = swift_allocObject();
    *(v715 + 16) = v700;
    v114 = swift_allocObject();
    v699 = v114;
    *(v114 + 16) = v806;
    *(v114 + 24) = 0;
    v115 = swift_allocObject();
    v116 = v699;
    v716 = v115;
    *(v115 + 16) = v927;
    *(v115 + 24) = v116;
    v717 = swift_allocObject();
    *(v717 + 16) = 0;
    v718 = swift_allocObject();
    *(v718 + 16) = v700;
    v117 = swift_allocObject();
    v118 = v701;
    v702 = v117;
    *(v117 + 16) = v928;
    *(v117 + 24) = v118;
    v119 = swift_allocObject();
    v120 = v702;
    v719 = v119;
    *(v119 + 16) = v929;
    *(v119 + 24) = v120;
    v720 = swift_allocObject();
    *(v720 + 16) = 0;
    v721 = swift_allocObject();
    *(v721 + 16) = 8;
    v121 = swift_allocObject();
    v122 = v706;
    v707 = v121;
    *(v121 + 16) = v930;
    *(v121 + 24) = v122;
    v123 = swift_allocObject();
    v124 = v707;
    v723 = v123;
    *(v123 + 16) = v931;
    *(v123 + 24) = v124;
    v725 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v722 = sub_1B0E46A48();
    v724 = v125;

    v126 = v708;
    v127 = v724;
    *v724 = v932;
    v127[1] = v126;

    v128 = v709;
    v129 = v724;
    v724[2] = v933;
    v129[3] = v128;

    v130 = v710;
    v131 = v724;
    v724[4] = v934;
    v131[5] = v130;

    v132 = v711;
    v133 = v724;
    v724[6] = v935;
    v133[7] = v132;

    v134 = v712;
    v135 = v724;
    v724[8] = v936;
    v135[9] = v134;

    v136 = v713;
    v137 = v724;
    v724[10] = v937;
    v137[11] = v136;

    v138 = v714;
    v139 = v724;
    v724[12] = v938;
    v139[13] = v138;

    v140 = v715;
    v141 = v724;
    v724[14] = v939;
    v141[15] = v140;

    v142 = v716;
    v143 = v724;
    v724[16] = v940;
    v143[17] = v142;

    v144 = v717;
    v145 = v724;
    v724[18] = v941;
    v145[19] = v144;

    v146 = v718;
    v147 = v724;
    v724[20] = v942;
    v147[21] = v146;

    v148 = v719;
    v149 = v724;
    v724[22] = v943;
    v149[23] = v148;

    v150 = v720;
    v151 = v724;
    v724[24] = v944;
    v151[25] = v150;

    v152 = v721;
    v153 = v724;
    v724[26] = v945;
    v153[27] = v152;

    v154 = v723;
    v155 = v724;
    v724[28] = v946;
    v155[29] = v154;
    sub_1B0394964();

    if (os_log_type_enabled(v726, v727))
    {
      v156 = v947;
      v684 = sub_1B0E45D78();
      v682 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v683 = 0;
      v685 = sub_1B03949A8(0, v682, v682);
      v686 = sub_1B03949A8(v683, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v687 = &v1034;
      v1034 = v684;
      v688 = &v1033;
      v1033 = v685;
      v689 = &v1032;
      v1032 = v686;
      sub_1B0394A48(0, &v1034);
      sub_1B0394A48(5, v687);
      v1030 = v932;
      v1031 = v708;
      sub_1B03949FC(&v1030, v687, v688, v689);
      v690 = v156;
      if (v156)
      {

        __break(1u);
      }

      else
      {
        v1030 = v933;
        v1031 = v709;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v681 = 0;
        v1030 = v934;
        v1031 = v710;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v680 = 0;
        v1030 = v935;
        v1031 = v711;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v679 = 0;
        v1030 = v936;
        v1031 = v712;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v678 = 0;
        v1030 = v937;
        v1031 = v713;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v677 = 0;
        v1030 = v938;
        v1031 = v714;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v676 = 0;
        v1030 = v939;
        v1031 = v715;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v675 = 0;
        v1030 = v940;
        v1031 = v716;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v674 = 0;
        v1030 = v941;
        v1031 = v717;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v673 = 0;
        v1030 = v942;
        v1031 = v718;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v672 = 0;
        v1030 = v943;
        v1031 = v719;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v671 = 0;
        v1030 = v944;
        v1031 = v720;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v670 = 0;
        v1030 = v945;
        v1031 = v721;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        v669 = 0;
        v1030 = v946;
        v1031 = v723;
        sub_1B03949FC(&v1030, &v1034, &v1033, &v1032);
        _os_log_impl(&dword_1B0389000, v726, v727, "[%.*hhx-%.*X] Unable to get mailbox-object-id for mailbox row ID %lld", v684, 0x21u);
        v668 = 0;
        sub_1B03998A8(v685, 0, v682);
        sub_1B03998A8(v686, v668, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v726);
    (*(v977 + 8))(v988, v976);
    sub_1B06B97A8(v998);
    return sub_1B06BC934(v1013, v1014);
  }
}

double sub_1B06B0708(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, const void *a7, uint64_t a8)
{
  v28 = a3;
  v23 = a6;
  v39 = 0;
  v38 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v27 = *a1;
  v39 = *a1;
  v38 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v33 = a7;
  v32 = a8;
  sub_1B06BAD14();
  if (v28 == 4)
  {
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v18 = sub_1B06A9284(v28, a4, a5, v23);
    v19 = 0;
  }

  sub_1B06B8AE0(a2, v18, v19 & 1, a7);
  type metadata accessor for EMActivityUserInfoKey(0);
  sub_1B0694EF0();
  v16 = sub_1B0E44598();

  v17 = [v26 startActivityOfType:1 userInfo:v16];
  MEMORY[0x1E69E5920](v16);
  v30 = v17;
  if (v28 == 4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v13 = sub_1B06A916C(v28, a4);
    v14 = v8;
    v15 = v9;
  }

  v12 = [v17 objectID];
  v29 = v27;
  sub_1B06B09CC(v13, v11, v15 & 1, v12, &v29, a8);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5928](a2);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  return result;
}

id sub_1B06B09CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v368 = a1;
  v367 = a2;
  v366 = a3;
  v363 = a4;
  v364 = a5;
  v365 = a6;
  v292 = sub_1B039BBE8;
  v293 = sub_1B06BA324;
  v294 = sub_1B0394C30;
  v295 = sub_1B0394C24;
  v296 = sub_1B039BA2C;
  v297 = sub_1B039BA88;
  v298 = sub_1B039BB94;
  v299 = sub_1B0394C24;
  v300 = sub_1B039BBA0;
  v301 = sub_1B039BC08;
  v302 = sub_1B03FB1CC;
  v303 = sub_1B039BCF8;
  v304 = sub_1B06BD0A8;
  v305 = sub_1B03B0DF8;
  v306 = sub_1B06BD0B4;
  v307 = sub_1B03B0DF8;
  v308 = sub_1B0398F5C;
  v309 = sub_1B0398F5C;
  v310 = sub_1B0399178;
  v311 = sub_1B0398F5C;
  v312 = sub_1B0398F5C;
  v313 = sub_1B039BA94;
  v314 = sub_1B0398F5C;
  v315 = sub_1B0398F5C;
  v316 = sub_1B0399178;
  v317 = sub_1B0398F5C;
  v318 = sub_1B0398F5C;
  v319 = sub_1B03991EC;
  v320 = sub_1B0398F5C;
  v321 = sub_1B0398F5C;
  v322 = sub_1B039BCEC;
  v323 = sub_1B0398F5C;
  v324 = sub_1B0398F5C;
  v325 = sub_1B0399260;
  v326 = sub_1B0398F5C;
  v327 = sub_1B0398F5C;
  v328 = sub_1B0399260;
  v329 = sub_1B039BBE8;
  v330 = sub_1B06BA324;
  v331 = sub_1B0394C24;
  v332 = sub_1B039BA2C;
  v333 = sub_1B039BA88;
  v334 = sub_1B0394C24;
  v335 = sub_1B039BBA0;
  v336 = sub_1B039BC08;
  v337 = sub_1B03FB1CC;
  v338 = sub_1B039BCF8;
  v339 = sub_1B0398F5C;
  v340 = sub_1B0398F5C;
  v341 = sub_1B0399178;
  v342 = sub_1B0398F5C;
  v343 = sub_1B0398F5C;
  v344 = sub_1B039BA94;
  v345 = sub_1B0398F5C;
  v346 = sub_1B0398F5C;
  v347 = sub_1B0399178;
  v348 = sub_1B0398F5C;
  v349 = sub_1B0398F5C;
  v350 = sub_1B03991EC;
  v351 = sub_1B0398F5C;
  v352 = sub_1B0398F5C;
  v353 = sub_1B039BCEC;
  v393 = 0;
  v394 = 0;
  v395 = 0;
  v392 = 0;
  v391 = 0;
  v390 = 0;
  v389 = 0;
  v354 = 0;
  v382 = 0;
  v383 = 0;
  v355 = 0;
  v356 = _s6LoggerVMa(0);
  v357 = (*(*(v356 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v358 = v164 - v357;
  v359 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v360 = v164 - v359;
  v361 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v362 = v164 - v361;
  v369 = sub_1B0E439A8();
  v370 = *(v369 - 8);
  v371 = v369 - 8;
  v372 = (*(v370 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v368);
  v373 = v164 - v372;
  v374 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v375 = v164 - v374;
  v393 = v14;
  v394 = v15;
  v395 = v16 & 1;
  v392 = v17;
  v376 = *v18;
  v391 = v376;
  v390 = v19;
  v389 = v6;
  if (v16)
  {
    (*(v370 + 16))(v373, v365, v369, v13);
    sub_1B0394784(v365, v362);
    sub_1B0394784(v362, v360);
    sub_1B03F4FD0(v362, v358);
    v105 = (v360 + *(v356 + 20));
    v173 = *v105;
    v174 = *(v105 + 1);
    sub_1B039480C(v360);
    v176 = 24;
    v188 = 7;
    v106 = swift_allocObject();
    v107 = v174;
    v179 = v106;
    *(v106 + 16) = v173;
    *(v106 + 20) = v107;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v108 = swift_allocObject();
    v109 = v174;
    v175 = v108;
    *(v108 + 16) = v173;
    *(v108 + 20) = v109;

    v187 = 32;
    v110 = swift_allocObject();
    v111 = v175;
    v184 = v110;
    *(v110 + 16) = v329;
    *(v110 + 24) = v111;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v358);
    v177 = swift_allocObject();
    *(v177 + 16) = v376;

    v112 = swift_allocObject();
    v113 = v177;
    v189 = v112;
    *(v112 + 16) = v330;
    *(v112 + 24) = v113;

    v209 = sub_1B0E43988();
    v210 = sub_1B0E458D8();
    v186 = 17;
    v191 = swift_allocObject();
    v181 = 16;
    *(v191 + 16) = 16;
    v192 = swift_allocObject();
    v183 = 4;
    *(v192 + 16) = 4;
    v114 = swift_allocObject();
    v178 = v114;
    *(v114 + 16) = v294;
    *(v114 + 24) = 0;
    v115 = swift_allocObject();
    v116 = v178;
    v193 = v115;
    *(v115 + 16) = v331;
    *(v115 + 24) = v116;
    v194 = swift_allocObject();
    *(v194 + 16) = 0;
    v195 = swift_allocObject();
    *(v195 + 16) = 1;
    v117 = swift_allocObject();
    v118 = v179;
    v180 = v117;
    *(v117 + 16) = v332;
    *(v117 + 24) = v118;
    v119 = swift_allocObject();
    v120 = v180;
    v196 = v119;
    *(v119 + 16) = v333;
    *(v119 + 24) = v120;
    v197 = swift_allocObject();
    *(v197 + 16) = v181;
    v198 = swift_allocObject();
    *(v198 + 16) = v183;
    v121 = swift_allocObject();
    v182 = v121;
    *(v121 + 16) = v298;
    *(v121 + 24) = 0;
    v122 = swift_allocObject();
    v123 = v182;
    v199 = v122;
    *(v122 + 16) = v334;
    *(v122 + 24) = v123;
    v200 = swift_allocObject();
    *(v200 + 16) = 0;
    v201 = swift_allocObject();
    *(v201 + 16) = v183;
    v124 = swift_allocObject();
    v125 = v184;
    v185 = v124;
    *(v124 + 16) = v335;
    *(v124 + 24) = v125;
    v126 = swift_allocObject();
    v127 = v185;
    v202 = v126;
    *(v126 + 16) = v336;
    *(v126 + 24) = v127;
    v203 = swift_allocObject();
    *(v203 + 16) = 32;
    v204 = swift_allocObject();
    *(v204 + 16) = 8;
    v128 = swift_allocObject();
    v129 = v189;
    v190 = v128;
    *(v128 + 16) = v337;
    *(v128 + 24) = v129;
    v130 = swift_allocObject();
    v131 = v190;
    v206 = v130;
    *(v130 + 16) = v338;
    *(v130 + 24) = v131;
    v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v205 = sub_1B0E46A48();
    v207 = v132;

    v133 = v191;
    v134 = v207;
    *v207 = v339;
    v134[1] = v133;

    v135 = v192;
    v136 = v207;
    v207[2] = v340;
    v136[3] = v135;

    v137 = v193;
    v138 = v207;
    v207[4] = v341;
    v138[5] = v137;

    v139 = v194;
    v140 = v207;
    v207[6] = v342;
    v140[7] = v139;

    v141 = v195;
    v142 = v207;
    v207[8] = v343;
    v142[9] = v141;

    v143 = v196;
    v144 = v207;
    v207[10] = v344;
    v144[11] = v143;

    v145 = v197;
    v146 = v207;
    v207[12] = v345;
    v146[13] = v145;

    v147 = v198;
    v148 = v207;
    v207[14] = v346;
    v148[15] = v147;

    v149 = v199;
    v150 = v207;
    v207[16] = v347;
    v150[17] = v149;

    v151 = v200;
    v152 = v207;
    v207[18] = v348;
    v152[19] = v151;

    v153 = v201;
    v154 = v207;
    v207[20] = v349;
    v154[21] = v153;

    v155 = v202;
    v156 = v207;
    v207[22] = v350;
    v156[23] = v155;

    v157 = v203;
    v158 = v207;
    v207[24] = v351;
    v158[25] = v157;

    v159 = v204;
    v160 = v207;
    v207[26] = v352;
    v160[27] = v159;

    v161 = v206;
    v162 = v207;
    v207[28] = v353;
    v162[29] = v161;
    sub_1B0394964();

    if (os_log_type_enabled(v209, v210))
    {
      v163 = v354;
      v166 = sub_1B0E45D78();
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v167 = sub_1B03949A8(0, v165, v165);
      v168 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v169 = &v388;
      v388 = v166;
      v170 = &v387;
      v387 = v167;
      v171 = &v386;
      v386 = v168;
      sub_1B0394A48(2, &v388);
      sub_1B0394A48(5, v169);
      v384 = v339;
      v385 = v191;
      sub_1B03949FC(&v384, v169, v170, v171);
      v172 = v163;
      if (v163)
      {

        __break(1u);
      }

      else
      {
        v384 = v340;
        v385 = v192;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[13] = 0;
        v384 = v341;
        v385 = v193;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[12] = 0;
        v384 = v342;
        v385 = v194;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[11] = 0;
        v384 = v343;
        v385 = v195;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[10] = 0;
        v384 = v344;
        v385 = v196;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[9] = 0;
        v384 = v345;
        v385 = v197;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[8] = 0;
        v384 = v346;
        v385 = v198;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[7] = 0;
        v384 = v347;
        v385 = v199;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[6] = 0;
        v384 = v348;
        v385 = v200;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[5] = 0;
        v384 = v349;
        v385 = v201;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[4] = 0;
        v384 = v350;
        v385 = v202;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[3] = 0;
        v384 = v351;
        v385 = v203;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[2] = 0;
        v384 = v352;
        v385 = v204;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        v164[1] = 0;
        v384 = v353;
        v385 = v206;
        sub_1B03949FC(&v384, &v388, &v387, &v386);
        _os_log_impl(&dword_1B0389000, v209, v210, "[%.*hhx-%.*X] Updating fetch-progress for mailbox row ID %s -> indeterminate", v166, 0x21u);
        sub_1B03998A8(v167, 0, v165);
        sub_1B03998A8(v168, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v209);
    (*(v370 + 8))(v373, v369);
    return [v291 activityWithID:v363 setCompletedCount:0 totalCount:-1];
  }

  else
  {
    v289 = v368;
    v290 = v367;
    v244 = v367;
    v243 = v368;
    v382 = v368;
    v383 = v367;
    (*(v370 + 16))(v375, v365, v369, v13);
    sub_1B0394784(v365, v362);
    sub_1B0394784(v362, v360);
    sub_1B03F4FD0(v362, v358);
    v20 = (v360 + *(v356 + 20));
    v238 = *v20;
    v239 = *(v20 + 1);
    sub_1B039480C(v360);
    v241 = 24;
    v260 = 7;
    v21 = swift_allocObject();
    v22 = v239;
    v246 = v21;
    *(v21 + 16) = v238;
    *(v21 + 20) = v22;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v23 = swift_allocObject();
    v24 = v239;
    v240 = v23;
    *(v23 + 16) = v238;
    *(v23 + 20) = v24;

    v259 = 32;
    v25 = swift_allocObject();
    v26 = v240;
    v251 = v25;
    *(v25 + 16) = v292;
    *(v25 + 24) = v26;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v358);
    v242 = swift_allocObject();
    *(v242 + 16) = v376;

    v27 = swift_allocObject();
    v28 = v242;
    v253 = v27;
    *(v27 + 16) = v293;
    *(v27 + 24) = v28;

    v29 = swift_allocObject();
    v30 = v244;
    v255 = v29;
    *(v29 + 16) = v243;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v244;
    v261 = v31;
    *(v31 + 16) = v243;
    *(v31 + 24) = v32;
    v287 = sub_1B0E43988();
    v288 = sub_1B0E458D8();
    v257 = 17;
    v263 = swift_allocObject();
    v248 = 16;
    *(v263 + 16) = 16;
    v264 = swift_allocObject();
    v250 = 4;
    *(v264 + 16) = 4;
    v33 = swift_allocObject();
    v245 = v33;
    *(v33 + 16) = v294;
    *(v33 + 24) = 0;
    v34 = swift_allocObject();
    v35 = v245;
    v265 = v34;
    *(v34 + 16) = v295;
    *(v34 + 24) = v35;
    v266 = swift_allocObject();
    *(v266 + 16) = 0;
    v267 = swift_allocObject();
    *(v267 + 16) = 1;
    v36 = swift_allocObject();
    v37 = v246;
    v247 = v36;
    *(v36 + 16) = v296;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v247;
    v268 = v38;
    *(v38 + 16) = v297;
    *(v38 + 24) = v39;
    v269 = swift_allocObject();
    *(v269 + 16) = v248;
    v270 = swift_allocObject();
    *(v270 + 16) = v250;
    v40 = swift_allocObject();
    v249 = v40;
    *(v40 + 16) = v298;
    *(v40 + 24) = 0;
    v41 = swift_allocObject();
    v42 = v249;
    v271 = v41;
    *(v41 + 16) = v299;
    *(v41 + 24) = v42;
    v272 = swift_allocObject();
    *(v272 + 16) = 0;
    v273 = swift_allocObject();
    *(v273 + 16) = v250;
    v43 = swift_allocObject();
    v44 = v251;
    v252 = v43;
    *(v43 + 16) = v300;
    *(v43 + 24) = v44;
    v45 = swift_allocObject();
    v46 = v252;
    v274 = v45;
    *(v45 + 16) = v301;
    *(v45 + 24) = v46;
    v275 = swift_allocObject();
    *(v275 + 16) = 32;
    v276 = swift_allocObject();
    v258 = 8;
    *(v276 + 16) = 8;
    v47 = swift_allocObject();
    v48 = v253;
    v254 = v47;
    *(v47 + 16) = v302;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v254;
    v277 = v49;
    *(v49 + 16) = v303;
    *(v49 + 24) = v50;
    v278 = swift_allocObject();
    *(v278 + 16) = 0;
    v279 = swift_allocObject();
    *(v279 + 16) = v258;
    v51 = swift_allocObject();
    v52 = v255;
    v256 = v51;
    *(v51 + 16) = v304;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v256;
    v280 = v53;
    *(v53 + 16) = v305;
    *(v53 + 24) = v54;
    v281 = swift_allocObject();
    *(v281 + 16) = 0;
    v282 = swift_allocObject();
    *(v282 + 16) = v258;
    v55 = swift_allocObject();
    v56 = v261;
    v262 = v55;
    *(v55 + 16) = v306;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v262;
    v284 = v57;
    *(v57 + 16) = v307;
    *(v57 + 24) = v58;
    v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v283 = sub_1B0E46A48();
    v285 = v59;

    v60 = v263;
    v61 = v285;
    *v285 = v308;
    v61[1] = v60;

    v62 = v264;
    v63 = v285;
    v285[2] = v309;
    v63[3] = v62;

    v64 = v265;
    v65 = v285;
    v285[4] = v310;
    v65[5] = v64;

    v66 = v266;
    v67 = v285;
    v285[6] = v311;
    v67[7] = v66;

    v68 = v267;
    v69 = v285;
    v285[8] = v312;
    v69[9] = v68;

    v70 = v268;
    v71 = v285;
    v285[10] = v313;
    v71[11] = v70;

    v72 = v269;
    v73 = v285;
    v285[12] = v314;
    v73[13] = v72;

    v74 = v270;
    v75 = v285;
    v285[14] = v315;
    v75[15] = v74;

    v76 = v271;
    v77 = v285;
    v285[16] = v316;
    v77[17] = v76;

    v78 = v272;
    v79 = v285;
    v285[18] = v317;
    v79[19] = v78;

    v80 = v273;
    v81 = v285;
    v285[20] = v318;
    v81[21] = v80;

    v82 = v274;
    v83 = v285;
    v285[22] = v319;
    v83[23] = v82;

    v84 = v275;
    v85 = v285;
    v285[24] = v320;
    v85[25] = v84;

    v86 = v276;
    v87 = v285;
    v285[26] = v321;
    v87[27] = v86;

    v88 = v277;
    v89 = v285;
    v285[28] = v322;
    v89[29] = v88;

    v90 = v278;
    v91 = v285;
    v285[30] = v323;
    v91[31] = v90;

    v92 = v279;
    v93 = v285;
    v285[32] = v324;
    v93[33] = v92;

    v94 = v280;
    v95 = v285;
    v285[34] = v325;
    v95[35] = v94;

    v96 = v281;
    v97 = v285;
    v285[36] = v326;
    v97[37] = v96;

    v98 = v282;
    v99 = v285;
    v285[38] = v327;
    v99[39] = v98;

    v100 = v284;
    v101 = v285;
    v285[40] = v328;
    v101[41] = v100;
    sub_1B0394964();

    if (os_log_type_enabled(v287, v288))
    {
      v102 = v354;
      v231 = sub_1B0E45D78();
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v232 = sub_1B03949A8(0, v230, v230);
      v233 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v234 = &v381;
      v381 = v231;
      v235 = &v380;
      v380 = v232;
      v236 = &v379;
      v379 = v233;
      sub_1B0394A48(2, &v381);
      sub_1B0394A48(7, v234);
      v377 = v308;
      v378 = v263;
      sub_1B03949FC(&v377, v234, v235, v236);
      v237 = v102;
      if (v102)
      {

        __break(1u);
      }

      else
      {
        v377 = v309;
        v378 = v264;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v229 = 0;
        v377 = v310;
        v378 = v265;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v228 = 0;
        v377 = v311;
        v378 = v266;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v227 = 0;
        v377 = v312;
        v378 = v267;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v226 = 0;
        v377 = v313;
        v378 = v268;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v225 = 0;
        v377 = v314;
        v378 = v269;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v224 = 0;
        v377 = v315;
        v378 = v270;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v223 = 0;
        v377 = v316;
        v378 = v271;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v222 = 0;
        v377 = v317;
        v378 = v272;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v221 = 0;
        v377 = v318;
        v378 = v273;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v220 = 0;
        v377 = v319;
        v378 = v274;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v219 = 0;
        v377 = v320;
        v378 = v275;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v218 = 0;
        v377 = v321;
        v378 = v276;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v217 = 0;
        v377 = v322;
        v378 = v277;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v216 = 0;
        v377 = v323;
        v378 = v278;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v215 = 0;
        v377 = v324;
        v378 = v279;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v214 = 0;
        v377 = v325;
        v378 = v280;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v213 = 0;
        v377 = v326;
        v378 = v281;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v212 = 0;
        v377 = v327;
        v378 = v282;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v211 = 0;
        v377 = v328;
        v378 = v284;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        _os_log_impl(&dword_1B0389000, v287, v288, "[%.*hhx-%.*X] Updating fetch-progress for mailbox row ID %s -> %ld / %ld", v231, 0x35u);
        sub_1B03998A8(v232, 0, v230);
        sub_1B03998A8(v233, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v287);
    (*(v370 + 8))(v375, v369);
    v103 = Activity.MailboxStatus.Info.FetchProgress.total.getter(v243, v244);
    return [v291 activityWithID:v363 setCompletedCount:v244 totalCount:v103];
  }
}

uint64_t sub_1B06B3D94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v134 = a1;
  v116 = a2;
  v117 = a3;
  v121 = a4;
  v127 = sub_1B039BBE8;
  v131 = sub_1B06BA324;
  v135 = sub_1B0394C30;
  v136 = sub_1B0394C24;
  v138 = sub_1B039BA2C;
  v140 = sub_1B039BA88;
  v143 = sub_1B039BB94;
  v144 = sub_1B0394C24;
  v147 = sub_1B039BBA0;
  v149 = sub_1B039BC08;
  v151 = sub_1B03FB1CC;
  v153 = sub_1B039BCF8;
  v157 = sub_1B06BD0C0;
  v161 = sub_1B03B0DF8;
  v163 = sub_1B0398F5C;
  v165 = sub_1B0398F5C;
  v167 = sub_1B0399178;
  v169 = sub_1B0398F5C;
  v171 = sub_1B0398F5C;
  v173 = sub_1B039BA94;
  v175 = sub_1B0398F5C;
  v177 = sub_1B0398F5C;
  v179 = sub_1B0399178;
  v181 = sub_1B0398F5C;
  v183 = sub_1B0398F5C;
  v185 = sub_1B03991EC;
  v187 = sub_1B0398F5C;
  v189 = sub_1B0398F5C;
  v191 = sub_1B039BCEC;
  v193 = sub_1B0398F5C;
  v195 = sub_1B0398F5C;
  v198 = sub_1B0399260;
  v213 = 0;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v209 = 0;
  v109 = 0;
  v110 = 0;
  v123 = _s6LoggerVMa(0);
  v111 = (*(*(v123 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v129 = &v82 - v111;
  v112 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v124 = &v82 - v112;
  v113 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v82 - v113;
  v114 = sub_1B0E439A8();
  v119 = *(v114 - 8);
  v115 = v114 - 8;
  v8 = MEMORY[0x1EEE9AC00](v134);
  v120 = &v82 - v9;
  v213 = v10;
  v212 = v116;
  v130 = *v117;
  v211 = v130;
  v210 = v11;
  v209 = v118;
  (*(v119 + 16))(&v82 - v9, v8);
  sub_1B0394784(v121, v122);
  sub_1B0394784(v122, v124);
  sub_1B03F4FD0(v122, v129);
  v12 = (v124 + *(v123 + 20));
  v125 = *v12;
  v126 = *(v12 + 1);
  sub_1B039480C(v124);
  v133 = 24;
  v159 = 7;
  v13 = swift_allocObject();
  v14 = v126;
  v139 = v13;
  *(v13 + 16) = v125;
  *(v13 + 20) = v14;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v15 = swift_allocObject();
  v16 = v126;
  v128 = v15;
  *(v15 + 16) = v125;
  *(v15 + 20) = v16;

  v158 = 32;
  v17 = swift_allocObject();
  v18 = v128;
  v148 = v17;
  *(v17 + 16) = v127;
  *(v17 + 24) = v18;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v129);
  v132 = swift_allocObject();
  *(v132 + 16) = v130;

  v19 = swift_allocObject();
  v20 = v132;
  v152 = v19;
  *(v19 + 16) = v131;
  *(v19 + 24) = v20;

  v160 = swift_allocObject();
  *(v160 + 16) = v134;
  v202 = sub_1B0E43988();
  v203 = sub_1B0E458D8();
  v155 = 17;
  v164 = swift_allocObject();
  v142 = 16;
  *(v164 + 16) = 16;
  v166 = swift_allocObject();
  v146 = 4;
  *(v166 + 16) = 4;
  v21 = swift_allocObject();
  v137 = v21;
  *(v21 + 16) = v135;
  *(v21 + 24) = 0;
  v22 = swift_allocObject();
  v23 = v137;
  v168 = v22;
  *(v22 + 16) = v136;
  *(v22 + 24) = v23;
  v170 = swift_allocObject();
  *(v170 + 16) = 0;
  v172 = swift_allocObject();
  *(v172 + 16) = 1;
  v24 = swift_allocObject();
  v25 = v139;
  v141 = v24;
  *(v24 + 16) = v138;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v141;
  v174 = v26;
  *(v26 + 16) = v140;
  *(v26 + 24) = v27;
  v176 = swift_allocObject();
  *(v176 + 16) = v142;
  v178 = swift_allocObject();
  *(v178 + 16) = v146;
  v28 = swift_allocObject();
  v145 = v28;
  *(v28 + 16) = v143;
  *(v28 + 24) = 0;
  v29 = swift_allocObject();
  v30 = v145;
  v180 = v29;
  *(v29 + 16) = v144;
  *(v29 + 24) = v30;
  v182 = swift_allocObject();
  *(v182 + 16) = 0;
  v184 = swift_allocObject();
  *(v184 + 16) = v146;
  v31 = swift_allocObject();
  v32 = v148;
  v150 = v31;
  *(v31 + 16) = v147;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v150;
  v186 = v33;
  *(v33 + 16) = v149;
  *(v33 + 24) = v34;
  v188 = swift_allocObject();
  *(v188 + 16) = 32;
  v190 = swift_allocObject();
  v156 = 8;
  *(v190 + 16) = 8;
  v35 = swift_allocObject();
  v36 = v152;
  v154 = v35;
  *(v35 + 16) = v151;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v154;
  v192 = v37;
  *(v37 + 16) = v153;
  *(v37 + 24) = v38;
  v194 = swift_allocObject();
  *(v194 + 16) = 0;
  v196 = swift_allocObject();
  *(v196 + 16) = v156;
  v39 = swift_allocObject();
  v40 = v160;
  v162 = v39;
  *(v39 + 16) = v157;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v162;
  v199 = v41;
  *(v41 + 16) = v161;
  *(v41 + 24) = v42;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v197 = sub_1B0E46A48();
  v200 = v43;

  v44 = v164;
  v45 = v200;
  *v200 = v163;
  v45[1] = v44;

  v46 = v166;
  v47 = v200;
  v200[2] = v165;
  v47[3] = v46;

  v48 = v168;
  v49 = v200;
  v200[4] = v167;
  v49[5] = v48;

  v50 = v170;
  v51 = v200;
  v200[6] = v169;
  v51[7] = v50;

  v52 = v172;
  v53 = v200;
  v200[8] = v171;
  v53[9] = v52;

  v54 = v174;
  v55 = v200;
  v200[10] = v173;
  v55[11] = v54;

  v56 = v176;
  v57 = v200;
  v200[12] = v175;
  v57[13] = v56;

  v58 = v178;
  v59 = v200;
  v200[14] = v177;
  v59[15] = v58;

  v60 = v180;
  v61 = v200;
  v200[16] = v179;
  v61[17] = v60;

  v62 = v182;
  v63 = v200;
  v200[18] = v181;
  v63[19] = v62;

  v64 = v184;
  v65 = v200;
  v200[20] = v183;
  v65[21] = v64;

  v66 = v186;
  v67 = v200;
  v200[22] = v185;
  v67[23] = v66;

  v68 = v188;
  v69 = v200;
  v200[24] = v187;
  v69[25] = v68;

  v70 = v190;
  v71 = v200;
  v200[26] = v189;
  v71[27] = v70;

  v72 = v192;
  v73 = v200;
  v200[28] = v191;
  v73[29] = v72;

  v74 = v194;
  v75 = v200;
  v200[30] = v193;
  v75[31] = v74;

  v76 = v196;
  v77 = v200;
  v200[32] = v195;
  v77[33] = v76;

  v78 = v199;
  v79 = v200;
  v200[34] = v198;
  v79[35] = v78;
  sub_1B0394964();

  if (os_log_type_enabled(v202, v203))
  {
    v80 = v109;
    v102 = sub_1B0E45D78();
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v103 = sub_1B03949A8(0, v101, v101);
    v104 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v105 = &v208;
    v208 = v102;
    v106 = &v207;
    v207 = v103;
    v107 = &v206;
    v206 = v104;
    sub_1B0394A48(2, &v208);
    sub_1B0394A48(6, v105);
    v204 = v163;
    v205 = v164;
    sub_1B03949FC(&v204, v105, v106, v107);
    v108 = v80;
    if (v80)
    {

      __break(1u);
    }

    else
    {
      v204 = v165;
      v205 = v166;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v100 = 0;
      v204 = v167;
      v205 = v168;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v99 = 0;
      v204 = v169;
      v205 = v170;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v98 = 0;
      v204 = v171;
      v205 = v172;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v97 = 0;
      v204 = v173;
      v205 = v174;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v96 = 0;
      v204 = v175;
      v205 = v176;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v95 = 0;
      v204 = v177;
      v205 = v178;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v94 = 0;
      v204 = v179;
      v205 = v180;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v93 = 0;
      v204 = v181;
      v205 = v182;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v92 = 0;
      v204 = v183;
      v205 = v184;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v91 = 0;
      v204 = v185;
      v205 = v186;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v90 = 0;
      v204 = v187;
      v205 = v188;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v89 = 0;
      v204 = v189;
      v205 = v190;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v88 = 0;
      v204 = v191;
      v205 = v192;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v87 = 0;
      v204 = v193;
      v205 = v194;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v86 = 0;
      v204 = v195;
      v205 = v196;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v85 = 0;
      v204 = v198;
      v205 = v199;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      _os_log_impl(&dword_1B0389000, v202, v203, "[%.*hhx-%.*X] Updating fetch-state for mailbox row ID %s -> %ld", v102, 0x2Bu);
      sub_1B03998A8(v103, 0, v101);
      sub_1B03998A8(v104, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v202);
  (*(v119 + 8))(v120, v114);
  sub_1B041A044();
  v84 = sub_1B0E455A8();
  v83 = *MEMORY[0x1E699A6A8];
  MEMORY[0x1E69E5928](v83);
  [v118 activityWithID:v116 setUserInfoObject:v84 forKey:v83];
  MEMORY[0x1E69E5920](v83);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06B571C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(uint64_t *), uint64_t a8, uint64_t a9)
{
  v369 = a1;
  v370 = a2;
  v357 = a3;
  v373 = a4;
  v362 = a5;
  v358 = a6;
  v359 = a7;
  v360 = a8;
  v361 = a9;
  v290 = sub_1B039BBE8;
  v291 = sub_1B0394C30;
  v292 = sub_1B0394C24;
  v293 = sub_1B039BA2C;
  v294 = sub_1B039BA88;
  v295 = sub_1B039BB94;
  v296 = sub_1B0394C24;
  v297 = sub_1B039BBA0;
  v298 = sub_1B039BC08;
  v299 = sub_1B03FB774;
  v300 = sub_1B06BCD8C;
  v301 = sub_1B0398F5C;
  v302 = sub_1B0398F5C;
  v303 = sub_1B0399178;
  v304 = sub_1B0398F5C;
  v305 = sub_1B0398F5C;
  v306 = sub_1B039BA94;
  v307 = sub_1B0398F5C;
  v308 = sub_1B0398F5C;
  v309 = sub_1B0399178;
  v310 = sub_1B0398F5C;
  v311 = sub_1B0398F5C;
  v312 = sub_1B03991EC;
  v313 = sub_1B0398F5C;
  v314 = sub_1B0398F5C;
  v315 = sub_1B03992D4;
  v316 = sub_1B06B8A1C;
  v317 = sub_1B039BBE8;
  v318 = sub_1B0394C24;
  v319 = sub_1B039BA2C;
  v320 = sub_1B039BA88;
  v321 = sub_1B0394C24;
  v322 = sub_1B039BBA0;
  v323 = sub_1B039BC08;
  v324 = sub_1B03FB774;
  v325 = sub_1B06BCD8C;
  v326 = sub_1B0398F5C;
  v327 = sub_1B0398F5C;
  v328 = sub_1B0399178;
  v329 = sub_1B0398F5C;
  v330 = sub_1B0398F5C;
  v331 = sub_1B039BA94;
  v332 = sub_1B0398F5C;
  v333 = sub_1B0398F5C;
  v334 = sub_1B0399178;
  v335 = sub_1B0398F5C;
  v336 = sub_1B0398F5C;
  v337 = sub_1B03991EC;
  v338 = sub_1B0398F5C;
  v339 = sub_1B0398F5C;
  v340 = sub_1B03992D4;
  v402 = 0;
  v401 = 0;
  v400 = 0;
  v399 = 0;
  v397 = 0;
  v398 = 0;
  v396 = 0;
  v394 = 0;
  v395 = 0;
  v393 = 0;
  v392 = 0;
  v391 = 0;
  v341 = 0;
  v384 = 0;
  v374 = 0;
  v375 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v342 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v343 = &v145 - v342;
  v349 = 0;
  v344 = sub_1B0E43108();
  v345 = *(v344 - 8);
  v346 = v344 - 8;
  v347 = (*(v345 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v349);
  v348 = &v145 - v347;
  v402 = &v145 - v347;
  v350 = _s6LoggerVMa(v11);
  v351 = (*(*(v350 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v349);
  v352 = &v145 - v351;
  v353 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v354 = &v145 - v353;
  v355 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v356 = &v145 - v355;
  v363 = sub_1B0E439A8();
  v364 = *(v363 - 8);
  v365 = v363 - 8;
  v367 = *(v364 + 64);
  v366 = (v367 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v373);
  v368 = &v145 - v366;
  MEMORY[0x1EEE9AC00](v16);
  v371 = &v145 - v17;
  v401 = v369;
  v400 = v370;
  v372 = *v18;
  v399 = v372;
  v397 = v19;
  v398 = v20;
  v396 = v21;
  v394 = v22;
  v395 = v23;
  v393 = v24;
  v392 = v9;
  sub_1B06BC8E4(v19, v20);
  if (v373)
  {
    v287 = v373;
    v288 = v362;
    v286 = v362;
    v285 = v373;
    v374 = v373;
    v375 = v362;
    MEMORY[0x1E69E5928](v362);
    v391 = v286;
    MEMORY[0x1E69E5920](v285);
    MEMORY[0x1E69E5920](v286);
LABEL_11:
    sub_1B06BC2F4(v369, v343);
    if ((*(v345 + 48))(v343, 1, v344) == 1)
    {
      sub_1B06B97A8(v343);
    }

    else
    {
      (*(v345 + 32))(v348, v343, v344);
      v217 = v391;
      MEMORY[0x1E69E5928](v391);
      v218 = [v217 objectID];
      MEMORY[0x1E69E5920](v217);
      v376 = v372;
      sub_1B06A08E0(v348, v218, &v376, v361);
      MEMORY[0x1E69E5920](v218);
      (*(v345 + 8))(v348, v344);
    }

    (*(v364 + 16))(v368, v361, v363);
    sub_1B0394784(v361, v356);
    sub_1B0394784(v356, v354);
    sub_1B03F4FD0(v356, v352);
    v85 = (v354 + *(v350 + 20));
    v180 = *v85;
    v181 = *(v85 + 1);
    sub_1B039480C(v354);
    v183 = 24;
    v194 = 7;
    v86 = swift_allocObject();
    v87 = v181;
    v185 = v86;
    *(v86 + 16) = v180;
    *(v86 + 20) = v87;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v88 = swift_allocObject();
    v89 = v181;
    v182 = v88;
    *(v88 + 16) = v180;
    *(v88 + 20) = v89;

    v193 = 32;
    v90 = swift_allocObject();
    v91 = v182;
    v190 = v90;
    *(v90 + 16) = v290;
    *(v90 + 24) = v91;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v352);
    v195 = swift_allocObject();
    *(v195 + 16) = v372;
    v215 = sub_1B0E43988();
    v216 = sub_1B0E458D8();
    v192 = 17;
    v197 = swift_allocObject();
    v187 = 16;
    *(v197 + 16) = 16;
    v198 = swift_allocObject();
    v189 = 4;
    *(v198 + 16) = 4;
    v92 = swift_allocObject();
    v184 = v92;
    *(v92 + 16) = v291;
    *(v92 + 24) = 0;
    v93 = swift_allocObject();
    v94 = v184;
    v199 = v93;
    *(v93 + 16) = v292;
    *(v93 + 24) = v94;
    v200 = swift_allocObject();
    *(v200 + 16) = 0;
    v201 = swift_allocObject();
    *(v201 + 16) = 1;
    v95 = swift_allocObject();
    v96 = v185;
    v186 = v95;
    *(v95 + 16) = v293;
    *(v95 + 24) = v96;
    v97 = swift_allocObject();
    v98 = v186;
    v202 = v97;
    *(v97 + 16) = v294;
    *(v97 + 24) = v98;
    v203 = swift_allocObject();
    *(v203 + 16) = v187;
    v204 = swift_allocObject();
    *(v204 + 16) = v189;
    v99 = swift_allocObject();
    v188 = v99;
    *(v99 + 16) = v295;
    *(v99 + 24) = 0;
    v100 = swift_allocObject();
    v101 = v188;
    v205 = v100;
    *(v100 + 16) = v296;
    *(v100 + 24) = v101;
    v206 = swift_allocObject();
    *(v206 + 16) = 0;
    v207 = swift_allocObject();
    *(v207 + 16) = v189;
    v102 = swift_allocObject();
    v103 = v190;
    v191 = v102;
    *(v102 + 16) = v297;
    *(v102 + 24) = v103;
    v104 = swift_allocObject();
    v105 = v191;
    v208 = v104;
    *(v104 + 16) = v298;
    *(v104 + 24) = v105;
    v209 = swift_allocObject();
    *(v209 + 16) = 0;
    v210 = swift_allocObject();
    *(v210 + 16) = 8;
    v106 = swift_allocObject();
    v107 = v195;
    v196 = v106;
    *(v106 + 16) = v299;
    *(v106 + 24) = v107;
    v108 = swift_allocObject();
    v109 = v196;
    v212 = v108;
    *(v108 + 16) = v300;
    *(v108 + 24) = v109;
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v211 = sub_1B0E46A48();
    v213 = v110;

    v111 = v197;
    v112 = v213;
    *v213 = v301;
    v112[1] = v111;

    v113 = v198;
    v114 = v213;
    v213[2] = v302;
    v114[3] = v113;

    v115 = v199;
    v116 = v213;
    v213[4] = v303;
    v116[5] = v115;

    v117 = v200;
    v118 = v213;
    v213[6] = v304;
    v118[7] = v117;

    v119 = v201;
    v120 = v213;
    v213[8] = v305;
    v120[9] = v119;

    v121 = v202;
    v122 = v213;
    v213[10] = v306;
    v122[11] = v121;

    v123 = v203;
    v124 = v213;
    v213[12] = v307;
    v124[13] = v123;

    v125 = v204;
    v126 = v213;
    v213[14] = v308;
    v126[15] = v125;

    v127 = v205;
    v128 = v213;
    v213[16] = v309;
    v128[17] = v127;

    v129 = v206;
    v130 = v213;
    v213[18] = v310;
    v130[19] = v129;

    v131 = v207;
    v132 = v213;
    v213[20] = v311;
    v132[21] = v131;

    v133 = v208;
    v134 = v213;
    v213[22] = v312;
    v134[23] = v133;

    v135 = v209;
    v136 = v213;
    v213[24] = v313;
    v136[25] = v135;

    v137 = v210;
    v138 = v213;
    v213[26] = v314;
    v138[27] = v137;

    v139 = v212;
    v140 = v213;
    v213[28] = v315;
    v140[29] = v139;
    sub_1B0394964();

    if (os_log_type_enabled(v215, v216))
    {
      v141 = v341;
      v173 = sub_1B0E45D78();
      v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v172 = 0;
      v174 = sub_1B03949A8(0, v171, v171);
      v175 = sub_1B03949A8(v172, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v176 = &v381;
      v381 = v173;
      v177 = &v380;
      v380 = v174;
      v178 = &v379;
      v379 = v175;
      sub_1B0394A48(0, &v381);
      sub_1B0394A48(5, v176);
      v377 = v301;
      v378 = v197;
      sub_1B03949FC(&v377, v176, v177, v178);
      v179 = v141;
      if (v141)
      {

        __break(1u);
      }

      else
      {
        v377 = v302;
        v378 = v198;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v169 = 0;
        v377 = v303;
        v378 = v199;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v168 = 0;
        v377 = v304;
        v378 = v200;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v167 = 0;
        v377 = v305;
        v378 = v201;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v166 = 0;
        v377 = v306;
        v378 = v202;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v165 = 0;
        v377 = v307;
        v378 = v203;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v164 = 0;
        v377 = v308;
        v378 = v204;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v163 = 0;
        v377 = v309;
        v378 = v205;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v162 = 0;
        v377 = v310;
        v378 = v206;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v161 = 0;
        v377 = v311;
        v378 = v207;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v160 = 0;
        v377 = v312;
        v378 = v208;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v159 = 0;
        v377 = v313;
        v378 = v209;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v158 = 0;
        v377 = v314;
        v378 = v210;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v157 = 0;
        v377 = v315;
        v378 = v212;
        sub_1B03949FC(&v377, &v381, &v380, &v379);
        v156 = 0;
        _os_log_impl(&dword_1B0389000, v215, v216, "[%.*hhx-%.*X] Completing activity for mailbox row ID %lld)", v173, 0x21u);
        v155 = 0;
        sub_1B03998A8(v174, 0, v171);
        sub_1B03998A8(v175, v155, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v170 = v156;
      }
    }

    else
    {
      v142 = v341;

      v170 = v142;
    }

    v143 = v170;
    MEMORY[0x1E69E5920](v215);
    (*(v364 + 8))(v368, v363);
    v152 = v391;
    MEMORY[0x1E69E5928](v391);
    v153 = [v152 objectID];
    MEMORY[0x1E69E5920](v152);
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    result = sub_1B03F1A20(v316, 0, v154, MEMORY[0x1E69E73E0], v144, v233, &v382);
    if (v143)
    {
      __break(1u);
    }

    else
    {
      v151 = v382;
      if (v382)
      {
        v150 = v151;
        v147 = v151;
        v148 = sub_1B0E42CC8();

        v149 = v148;
      }

      else
      {
        v149 = 0;
      }

      v146 = v149;
      [v358 activityWithID:v153 finishedWithError:?];
      MEMORY[0x1E69E5920](v146);
      MEMORY[0x1E69E5920](v153);
      MEMORY[0x1E69E5920](v391);
      return sub_1B06B89A0(v289, v372);
    }

    return result;
  }

  v390 = v372;
  v284 = v359(&v390);
  if (v284)
  {
    v283 = v284;
    v282 = v284;
    v384 = v284;
    v383 = v372;
    sub_1B06B0708(&v383, v284, 4, 0, 0, 0, v369, v361);
    v280 = v25;
    v281 = v26;
    MEMORY[0x1E69E5928](v26);
    MEMORY[0x1E69E5920](v280);
    MEMORY[0x1E69E5920](v281);
    v391 = v281;
    MEMORY[0x1E69E5920](v282);
    goto LABEL_11;
  }

  (*(v364 + 16))(v371, v361, v363);
  sub_1B0394784(v361, v356);
  sub_1B0394784(v356, v354);
  sub_1B03F4FD0(v356, v352);
  v27 = (v354 + *(v350 + 20));
  v243 = *v27;
  v244 = *(v27 + 1);
  sub_1B039480C(v354);
  v246 = 24;
  v257 = 7;
  v28 = swift_allocObject();
  v29 = v244;
  v248 = v28;
  *(v28 + 16) = v243;
  *(v28 + 20) = v29;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v30 = swift_allocObject();
  v31 = v244;
  v245 = v30;
  *(v30 + 16) = v243;
  *(v30 + 20) = v31;

  v256 = 32;
  v32 = swift_allocObject();
  v33 = v245;
  v253 = v32;
  *(v32 + 16) = v317;
  *(v32 + 24) = v33;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v352);
  v258 = swift_allocObject();
  *(v258 + 16) = v372;
  v278 = sub_1B0E43988();
  v279 = sub_1B0E458E8();
  v255 = 17;
  v260 = swift_allocObject();
  v250 = 16;
  *(v260 + 16) = 16;
  v261 = swift_allocObject();
  v252 = 4;
  *(v261 + 16) = 4;
  v34 = swift_allocObject();
  v247 = v34;
  *(v34 + 16) = v291;
  *(v34 + 24) = 0;
  v35 = swift_allocObject();
  v36 = v247;
  v262 = v35;
  *(v35 + 16) = v318;
  *(v35 + 24) = v36;
  v263 = swift_allocObject();
  *(v263 + 16) = 0;
  v264 = swift_allocObject();
  *(v264 + 16) = 1;
  v37 = swift_allocObject();
  v38 = v248;
  v249 = v37;
  *(v37 + 16) = v319;
  *(v37 + 24) = v38;
  v39 = swift_allocObject();
  v40 = v249;
  v265 = v39;
  *(v39 + 16) = v320;
  *(v39 + 24) = v40;
  v266 = swift_allocObject();
  *(v266 + 16) = v250;
  v267 = swift_allocObject();
  *(v267 + 16) = v252;
  v41 = swift_allocObject();
  v251 = v41;
  *(v41 + 16) = v295;
  *(v41 + 24) = 0;
  v42 = swift_allocObject();
  v43 = v251;
  v268 = v42;
  *(v42 + 16) = v321;
  *(v42 + 24) = v43;
  v269 = swift_allocObject();
  *(v269 + 16) = 0;
  v270 = swift_allocObject();
  *(v270 + 16) = v252;
  v44 = swift_allocObject();
  v45 = v253;
  v254 = v44;
  *(v44 + 16) = v322;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v254;
  v271 = v46;
  *(v46 + 16) = v323;
  *(v46 + 24) = v47;
  v272 = swift_allocObject();
  *(v272 + 16) = 0;
  v273 = swift_allocObject();
  *(v273 + 16) = 8;
  v48 = swift_allocObject();
  v49 = v258;
  v259 = v48;
  *(v48 + 16) = v324;
  *(v48 + 24) = v49;
  v50 = swift_allocObject();
  v51 = v259;
  v275 = v50;
  *(v50 + 16) = v325;
  *(v50 + 24) = v51;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v274 = sub_1B0E46A48();
  v276 = v52;

  v53 = v260;
  v54 = v276;
  *v276 = v326;
  v54[1] = v53;

  v55 = v261;
  v56 = v276;
  v276[2] = v327;
  v56[3] = v55;

  v57 = v262;
  v58 = v276;
  v276[4] = v328;
  v58[5] = v57;

  v59 = v263;
  v60 = v276;
  v276[6] = v329;
  v60[7] = v59;

  v61 = v264;
  v62 = v276;
  v276[8] = v330;
  v62[9] = v61;

  v63 = v265;
  v64 = v276;
  v276[10] = v331;
  v64[11] = v63;

  v65 = v266;
  v66 = v276;
  v276[12] = v332;
  v66[13] = v65;

  v67 = v267;
  v68 = v276;
  v276[14] = v333;
  v68[15] = v67;

  v69 = v268;
  v70 = v276;
  v276[16] = v334;
  v70[17] = v69;

  v71 = v269;
  v72 = v276;
  v276[18] = v335;
  v72[19] = v71;

  v73 = v270;
  v74 = v276;
  v276[20] = v336;
  v74[21] = v73;

  v75 = v271;
  v76 = v276;
  v276[22] = v337;
  v76[23] = v75;

  v77 = v272;
  v78 = v276;
  v276[24] = v338;
  v78[25] = v77;

  v79 = v273;
  v80 = v276;
  v276[26] = v339;
  v80[27] = v79;

  v81 = v275;
  v82 = v276;
  v276[28] = v340;
  v82[29] = v81;
  sub_1B0394964();

  if (os_log_type_enabled(v278, v279))
  {
    v83 = v341;
    v236 = sub_1B0E45D78();
    v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v235 = 0;
    v237 = sub_1B03949A8(0, v234, v234);
    v238 = sub_1B03949A8(v235, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v239 = &v389;
    v389 = v236;
    v240 = &v388;
    v388 = v237;
    v241 = &v387;
    v387 = v238;
    sub_1B0394A48(0, &v389);
    sub_1B0394A48(5, v239);
    v385 = v326;
    v386 = v260;
    sub_1B03949FC(&v385, v239, v240, v241);
    v242 = v83;
    if (v83)
    {

      __break(1u);
    }

    else
    {
      v385 = v327;
      v386 = v261;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v232 = 0;
      v385 = v328;
      v386 = v262;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v231 = 0;
      v385 = v329;
      v386 = v263;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v230 = 0;
      v385 = v330;
      v386 = v264;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v229 = 0;
      v385 = v331;
      v386 = v265;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v228 = 0;
      v385 = v332;
      v386 = v266;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v227 = 0;
      v385 = v333;
      v386 = v267;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v226 = 0;
      v385 = v334;
      v386 = v268;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v225 = 0;
      v385 = v335;
      v386 = v269;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v224 = 0;
      v385 = v336;
      v386 = v270;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v223 = 0;
      v385 = v337;
      v386 = v271;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v222 = 0;
      v385 = v338;
      v386 = v272;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v221 = 0;
      v385 = v339;
      v386 = v273;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      v220 = 0;
      v385 = v340;
      v386 = v275;
      sub_1B03949FC(&v385, &v389, &v388, &v387);
      _os_log_impl(&dword_1B0389000, v278, v279, "[%.*hhx-%.*X] Unable to get mailbox-object-id for completed mailbox row ID %lld", v236, 0x21u);
      v219 = 0;
      sub_1B03998A8(v237, 0, v234);
      sub_1B03998A8(v238, v219, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v278);
  (*(v364 + 8))(v371, v363);
  return sub_1B06B89A0(v289, v372);
}

uint64_t sub_1B06B8A1C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v9 = 0;
  v4[1] = 0;
  v5 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = v4 - v5;
  v9 = v2;
  sub_1B0E45968();
  sub_1B06BB524(v6, v7);
  result = sub_1B0714EC4(v7);
  *v8 = result;
  return result;
}

uint64_t sub_1B06B8AE0(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v48 = a1;
  v40 = a2;
  v55 = a3;
  v39 = a4;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v61 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v37 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v21 - v37;
  v52 = 0;
  v41 = sub_1B0E43108();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v21 - v44;
  v46 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v21 - v46;
  v70 = &v21 - v46;
  v69 = v8;
  v67 = v9;
  v68 = v10 & 1;
  v66 = v11;
  v65 = v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1750, &qword_1B0E99938);
  v51 = sub_1B0E46A48();
  v49 = v12;
  sub_1B06BD0C8(MEMORY[0x1E699A6B8], v12);
  MEMORY[0x1E69E5928](v48);
  v13 = sub_1B06BD108();
  v14 = v48;
  v15 = v49;
  v49[4] = v13;
  v15[1] = v14;
  sub_1B0394964();
  v54 = v16;
  v53 = type metadata accessor for EMActivityUserInfoKey(v52);
  sub_1B0694EF0();
  v64 = sub_1B0E445D8();
  if ((v55 & 1) == 0)
  {
    v36 = v40;
    v29 = v40;
    v61 = v40;
    v30 = *MEMORY[0x1E699A6A8];
    MEMORY[0x1E69E5928](v30);
    sub_1B041A044();
    v32 = v60;
    v60[3] = MEMORY[0x1E69E6530];
    v60[0] = v17;
    v31 = &v59;
    v59 = v30;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1758, &qword_1B0E99940);
    v33 = &v64;
    sub_1B0E44788();
    v34 = *MEMORY[0x1E699A6C0];
    MEMORY[0x1E69E5928](v34);
    v58 = MEMORY[0x1E69E6370];
    v57[0] = 1;
    v56 = v34;
    sub_1B0E44788();
  }

  sub_1B06BC2F4(v39, v38);
  if ((*(v42 + 48))(v38, 1, v41) == 1)
  {
    sub_1B06B97A8(v38);
  }

  else
  {
    v18 = v45;
    (*(v42 + 32))(v47, v38, v41);
    v23 = *MEMORY[0x1E699A6B0];
    MEMORY[0x1E69E5928](v23);
    (*(v42 + 16))(v18, v47, v41);
    v24 = sub_1B0E43068();
    v19 = sub_1B06BD16C();
    v26 = v63;
    v63[3] = v19;
    v63[0] = v24;
    v25 = &v62;
    v62 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1758, &qword_1B0E99940);
    sub_1B0E44788();
    v28 = *(v42 + 8);
    v27 = v42 + 8;
    v28(v45, v41);
    v28(v47, v41);
  }

  v21 = &v64;
  v22 = v64;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(v21);
  return v22;
}

uint64_t sub_1B06B91F0()
{
  v1 = *(_s8ActivityVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B069AD10(v2);
}

void *sub_1B06B9254(void *a1, void *a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1690, &qword_1B0E99888);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(a1, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1680, &qword_1B0E99878);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v13 = a2 + *(v18 + 48);
    v14 = a1 + *(v18 + 48);
    v15 = type metadata accessor for Activity.MailboxStatus(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v13 = *v14;
      v8 = type metadata accessor for ConnectionStatus.Error(0);
      __dst = &v13[*(v8 + 20)];
      __src = &v14[*(v8 + 20)];
      v11 = type metadata accessor for ConnectionStatus.Error.Details(0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(__src, 1))
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
        memcpy(__dst, __src, *(*(v3 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(__dst, __src, *(v12 + 64));
        }

        else
        {
          v2 = sub_1B0E441D8();
          (*(*(v2 - 8) + 32))(__dst, __src);
          swift_storeEnumTagMultiPayload();
        }

        (*(v12 + 56))(__dst, 0, 1, v11);
      }

      v4 = &v13[*(v8 + 24)];
      v5 = &v14[*(v8 + 24)];
      *v4 = *v5;
      v4[8] = v5[8];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v13, v14, *(*(v15 - 8) + 64));
    }

    (*(v19 + 56))(a2, 0, 1, v18);
  }

  return a2;
}