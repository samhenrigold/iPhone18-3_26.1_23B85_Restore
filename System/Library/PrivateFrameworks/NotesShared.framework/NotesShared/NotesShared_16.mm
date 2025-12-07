id _s11NotesShared7ICQueryC012makeQueryForbA0_21allowsRecentlyDeletedACSb_SbtFZ_0(char a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v6 = v4 | 0x9000000000000000;
  if ((a2 & 1) == 0)
  {
    v7 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2150C29C0;
    *(v8 + 32) = v6;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v8 + 40) = v4 | 0x5000000000000000;
    *(v7 + 16) = v8;
    v6 = v7;
  }

  v9 = type metadata accessor for ICQuery(v4, v5);
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___ICQueryObjC_type] = v6;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_214FF7D64()
{
  result = qword_27CA439B0;
  if (!qword_27CA439B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439B0);
  }

  return result;
}

unint64_t sub_214FF7DBC()
{
  result = qword_27CA439B8;
  if (!qword_27CA439B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439B8);
  }

  return result;
}

unint64_t sub_214FF7E14()
{
  result = qword_27CA439C0;
  if (!qword_27CA439C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439C0);
  }

  return result;
}

uint64_t sub_214FF7E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FF7ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FF7F30(uint64_t a1)
{
  v2 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_214FF7F8C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v120 = sub_2150A4340();
  v117 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v6);
  v103 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2150A42C0();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v8);
  v111 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50, &qword_2150CACD0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v114 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v121 = &v101 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F60, &qword_2150C2C58);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v109 = &v101 - v18;
  v116 = sub_2150A42D0();
  v108 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v19);
  v110 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F68, &qword_2150C2C60);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v106 = &v101 - v23;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70, &qword_2150C2C68);
  MEMORY[0x28223BE20](v107, v24);
  v119 = &v101 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48, &qword_2150C25E0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v105 = &v101 - v28;
  v29 = sub_2150A4360();
  v123 = *(v29 - 8);
  v124 = v29;
  v31 = MEMORY[0x28223BE20](v29, v30);
  v104 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v122 = &v101 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v101 - v37;
  v39 = sub_2150A3750();
  v118 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39, v40);
  v43 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v101 - v45;
  v47 = a1;
  v131 = a1;
  v132 = a2;
  v48 = a2;
  v129 = 58;
  v130 = 0xE100000000000000;
  v49 = sub_214F57844();
  sub_214F57898();
  v115 = v49;
  sub_2150A4A00();
  if (v126)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v102 = a3;
  v101 = *(&v125 + 1);
  v50 = sub_2150A4D40();
  MEMORY[0x216061730](v50);

  v51 = sub_2150A4A90();

  v52 = ICIsNotesURLScheme(v51);

  if ((v52 & 1) == 0)
  {
    goto LABEL_29;
  }

  v53 = v48;
  sub_2150A3720();
  v54 = v118;
  if ((*(v118 + 48))(v38, 1, v39) == 1)
  {
    sub_214F302D4(v38, &qword_27CA41D40, &unk_2150C7230);
    v56 = v119;
    v55 = v120;
    v57 = v124;
  }

  else
  {
    (*(v54 + 32))(v46, v38, v39);
    (*(v54 + 16))(v43, v46, v39);
    FolderID.init(url:)(v43, &v125);
    (*(v54 + 8))(v46, v39);
    v58 = v126;
    v56 = v119;
    v55 = v120;
    v57 = v124;
    if (v126)
    {
      v59 = v102;
      *v102 = v125;
      *(v59 + 2) = v58;
      return;
    }
  }

  v129 = v47;
  v130 = v53;
  v127 = 63;
  v128 = 0xE100000000000000;
  sub_2150A4A00();
  if (v126)
  {
    v60 = sub_214F56B68(v101, v47, v53);
    v61 = v116;
    v62 = v117;
  }

  else
  {
    v61 = v116;
    v62 = v117;
    if (v125 >> 14 < v101 >> 14)
    {
      __break(1u);
      return;
    }

    v60 = sub_2150A4D40();
  }

  v63 = MEMORY[0x216061730](v60);
  v65 = v64;

  v131 = v63;
  v132 = v65;

  v66 = sub_2150A4CD0();

  if (v66)
  {
    sub_214F56BB4(2);
  }

  v67 = v122;
  MEMORY[0x216060F30](v131, v132);
  v68 = sub_2150A42E0();
  v69 = 1;
  (*(*(v68 - 8) + 56))(v105, 1, 1, v68);
  sub_2150A4300();
  (*(v123 + 16))(v104, v67, v57);
  v70 = v110;
  sub_2150A42B0();
  v71 = *(v108 + 32);
  v72 = v109;
  v71(v109, v70, v61);
  v73 = v106;
  v71(v106, v72, v61);
  v71(v70, v73, v61);
  v74 = MEMORY[0x277D854A8];
  sub_214F578EC(&qword_280C24260, MEMORY[0x277D854A8], MEMORY[0x277D854B0]);
  sub_2150A4D60();
  v75 = (v56 + *(v107 + 44));
  *v75 = sub_214F56C3C;
  v75[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78, &qword_2150C2C70);
  sub_214F578EC(&qword_280C24258, v74, MEMORY[0x277D854B8]);
  v76 = v111;
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498], MEMORY[0x277D854A0]);
  v77 = v113;
  LOBYTE(v71) = sub_2150A4A80();
  (*(v112 + 8))(v76, v77);
  if ((v71 & 1) == 0)
  {
    v78 = sub_2150A5470();
    (*(v62 + 16))(v121);
    v78(&v125, 0);
    sub_2150A5410();
    v69 = 0;
  }

  v79 = v121;
  (*(v62 + 56))(v121, v69, 1, v55);
  v80 = v114;
  sub_214F57934(v79, v114);
  if ((*(v62 + 48))(v80, 1, v55) != 1)
  {
    v81 = v103;
    (*(v62 + 32))(v103, v80, v55);
    *&v125 = sub_2150A4330();
    *(&v125 + 1) = v82;
    sub_214D6E6C4();
    v83 = sub_2150A58C0();
    v85 = v84;

    if (!v85)
    {
      v83 = sub_2150A4330();
      v85 = v86;
    }

    (*(v62 + 8))(v81, v55);
    if (v83 == 0x7265646C6F66 && v85 == 0xE600000000000000)
    {

      goto LABEL_24;
    }

    v87 = sub_2150A6270();

    if (v87)
    {
LABEL_24:
      v88 = sub_214F56CC8();
      if (v89)
      {
        v90 = v88;
        v91 = v89;
        v92 = sub_2150A5EE0();
        v93 = v124;
        if (v92 == 1)
        {
          v94 = 1;
        }

        else
        {
          if (v92)
          {
            sub_214F302D4(v56, &qword_27CA41F70, &qword_2150C2C68);
            (*(v123 + 8))(v122, v93);
            v100 = v102;
            *v102 = 0;
            *(v100 + 1) = v90;
            *(v100 + 2) = v91;
            return;
          }

          v94 = 0;
        }

        v96 = sub_214F56CC8();
        v98 = v97;
        sub_214F302D4(v56, &qword_27CA41F70, &qword_2150C2C68);
        (*(v123 + 8))(v122, v93);
        if (v98)
        {
          v99 = v102;
          *v102 = v94;
          *(v99 + 1) = v96;
          *(v99 + 2) = v98;
          return;
        }

        goto LABEL_29;
      }
    }
  }

  sub_214F302D4(v56, &qword_27CA41F70, &qword_2150C2C68);
  (*(v123 + 8))(v122, v124);
LABEL_29:
  v95 = v102;
  *v102 = 0;
  *(v95 + 1) = 0;
  *(v95 + 2) = 0;
}

void sub_214FF8C98(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2150A4340();
  v106 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v93 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2150A42C0();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v99 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50, &qword_2150CACD0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v103 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v102 = &v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F60, &qword_2150C2C58);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v97 = &v89 - v20;
  v107 = sub_2150A42D0();
  v96 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v21);
  v98 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F68, &qword_2150C2C60);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v94 = &v89 - v25;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70, &qword_2150C2C68);
  MEMORY[0x28223BE20](v95, v26);
  v105 = &v89 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48, &qword_2150C25E0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v89 - v30;
  v109 = sub_2150A4360();
  v104 = *(v109 - 8);
  v33 = MEMORY[0x28223BE20](v109, v32);
  v35 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v108 = &v89 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = &v89 - v40;
  v117 = a1;
  v118 = a2;
  v115 = 58;
  v116 = 0xE100000000000000;
  sub_214F57844();
  sub_214F57898();
  sub_2150A4A00();
  if (v112)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    return;
  }

  v91 = v6;
  v92 = a3;
  v90 = v111;
  v42 = sub_2150A4D40();
  MEMORY[0x216061730](v42);

  v43 = sub_2150A4A90();

  v44 = ICIsNotesURLScheme(v43);

  if ((v44 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2150A3720();
  sub_214F302D4(v41, &qword_27CA41D40, &unk_2150C7230);
  v115 = a1;
  v116 = a2;
  v113 = 63;
  v114 = 0xE100000000000000;
  sub_2150A4A00();
  if (v112)
  {
    v45 = sub_214F56B68(v90, a1, a2);
    v46 = v107;
  }

  else
  {
    v46 = v107;
    if (v110 >> 14 < v90 >> 14)
    {
      __break(1u);
      return;
    }

    v45 = sub_2150A4D40();
  }

  v47 = MEMORY[0x216061730](v45);
  v49 = v48;

  v117 = v47;
  v118 = v49;

  v50 = sub_2150A4CD0();

  v51 = v109;
  v52 = v104;
  if (v50)
  {
    sub_214F56BB4(2);
  }

  v53 = v108;
  MEMORY[0x216060F30](v117, v118);
  v54 = sub_2150A42E0();
  v55 = 1;
  (*(*(v54 - 8) + 56))(v31, 1, 1, v54);
  sub_2150A4300();
  (*(v52 + 16))(v35, v53, v51);
  v56 = v98;
  sub_2150A42B0();
  v57 = *(v96 + 32);
  v58 = v97;
  v57(v97, v56, v46);
  v59 = v94;
  v57(v94, v58, v46);
  v57(v56, v59, v46);
  v60 = MEMORY[0x277D854A8];
  sub_214F578EC(&qword_280C24260, MEMORY[0x277D854A8], MEMORY[0x277D854B0]);
  v61 = v105;
  sub_2150A4D60();
  v62 = (v61 + *(v95 + 44));
  *v62 = sub_214F56C3C;
  v62[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78, &qword_2150C2C70);
  sub_214F578EC(&qword_280C24258, v60, MEMORY[0x277D854B8]);
  v63 = v99;
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498], MEMORY[0x277D854A0]);
  v64 = v101;
  LOBYTE(v58) = sub_2150A4A80();
  (*(v100 + 8))(v63, v64);
  v65 = v106;
  v66 = v102;
  if ((v58 & 1) == 0)
  {
    v67 = sub_2150A5470();
    (*(v65 + 16))(v66);
    v67(&v110, 0);
    sub_2150A5410();
    v55 = 0;
  }

  v68 = v91;
  (*(v65 + 56))(v66, v55, 1, v91);
  v69 = v103;
  sub_214F57934(v66, v103);
  if ((*(v65 + 48))(v69, 1, v68) != 1)
  {
    v70 = v93;
    (*(v65 + 32))(v93, v69, v68);
    v110 = sub_2150A4330();
    v111 = v71;
    sub_214D6E6C4();
    v72 = sub_2150A58C0();
    v74 = v73;

    if (!v74)
    {
      v72 = sub_2150A4330();
      v74 = v75;
    }

    (*(v65 + 8))(v70, v91);
    if (v72 == 1702129518 && v74 == 0xE400000000000000)
    {

      goto LABEL_19;
    }

    v76 = sub_2150A6270();

    if (v76)
    {
LABEL_19:
      v77 = sub_214F56CC8();
      if (v78)
      {
        v79 = v77;
        v80 = v78;
        v81 = sub_2150A5EE0();
        if (v81 == 1)
        {
          v82 = 1;
        }

        else
        {
          if (v81)
          {
            sub_214F302D4(v61, &qword_27CA41F70, &qword_2150C2C68);
            (*(v52 + 8))(v108, v109);
            v88 = v92;
            *v92 = 0;
            *(v88 + 1) = v79;
            *(v88 + 2) = v80;
            return;
          }

          v82 = 0;
        }

        v84 = sub_214F56CC8();
        v86 = v85;
        sub_214F302D4(v61, &qword_27CA41F70, &qword_2150C2C68);
        (*(v52 + 8))(v108, v109);
        if (v86)
        {
          v87 = v92;
          *v92 = v82;
          *(v87 + 1) = v84;
          *(v87 + 2) = v86;
          return;
        }

        goto LABEL_24;
      }
    }
  }

  sub_214F302D4(v61, &qword_27CA41F70, &qword_2150C2C68);
  (*(v52 + 8))(v108, v109);
LABEL_24:
  v83 = v92;
  *v92 = 0;
  *(v83 + 1) = 0;
  *(v83 + 2) = 0;
}

void sub_214FF9804(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2150A4340();
  v106 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v92 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2150A42C0();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v99 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50, &qword_2150CACD0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v103 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v102 = &v88 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F60, &qword_2150C2C58);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v96 = &v88 - v20;
  v98 = sub_2150A42D0();
  v95 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v21);
  v97 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F68, &qword_2150C2C60);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v93 = &v88 - v25;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70, &qword_2150C2C68);
  MEMORY[0x28223BE20](v94, v26);
  v105 = &v88 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48, &qword_2150C25E0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v88 - v30;
  v104 = sub_2150A4360();
  v108 = *(v104 - 8);
  v33 = MEMORY[0x28223BE20](v104, v32);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v107 = &v88 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = &v88 - v40;
  v116 = a1;
  v117 = a2;
  v114 = 58;
  v115 = 0xE100000000000000;
  sub_214F57844();
  sub_214F57898();
  sub_2150A4A00();
  if (v111)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    return;
  }

  v90 = v6;
  v91 = a3;
  v89 = v110;
  v42 = sub_2150A4D40();
  MEMORY[0x216061730](v42);

  v43 = sub_2150A4A90();

  v44 = ICIsNotesURLScheme(v43);

  if ((v44 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2150A3720();
  sub_214F302D4(v41, &qword_27CA41D40, &unk_2150C7230);
  v114 = a1;
  v115 = a2;
  v112 = 63;
  v113 = 0xE100000000000000;
  sub_2150A4A00();
  if (v111)
  {
    v45 = sub_214F56B68(v89, a1, a2);
  }

  else
  {
    if (v109 >> 14 < v89 >> 14)
    {
      __break(1u);
      return;
    }

    v45 = sub_2150A4D40();
  }

  v46 = MEMORY[0x216061730](v45);
  v48 = v47;

  v116 = v46;
  v117 = v48;

  v49 = sub_2150A4CD0();

  v50 = v104;
  if (v49)
  {
    sub_214F56BB4(2);
  }

  v51 = v107;
  MEMORY[0x216060F30](v116, v117);
  v52 = sub_2150A42E0();
  v53 = 1;
  (*(*(v52 - 8) + 56))(v31, 1, 1, v52);
  sub_2150A4300();
  (*(v108 + 16))(v35, v51, v50);
  v54 = v97;
  sub_2150A42B0();
  v55 = *(v95 + 32);
  v56 = v96;
  v57 = v98;
  v55(v96, v54, v98);
  v58 = v93;
  v55(v93, v56, v57);
  v55(v54, v58, v57);
  v59 = MEMORY[0x277D854A8];
  sub_214F578EC(&qword_280C24260, MEMORY[0x277D854A8], MEMORY[0x277D854B0]);
  v60 = v105;
  sub_2150A4D60();
  v61 = (v60 + *(v94 + 44));
  *v61 = sub_214F56C3C;
  v61[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78, &qword_2150C2C70);
  sub_214F578EC(&qword_280C24258, v59, MEMORY[0x277D854B8]);
  v62 = v99;
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498], MEMORY[0x277D854A0]);
  v63 = v101;
  LOBYTE(v56) = sub_2150A4A80();
  (*(v100 + 8))(v62, v63);
  v64 = v106;
  v65 = v102;
  if ((v56 & 1) == 0)
  {
    v66 = sub_2150A5470();
    (*(v64 + 16))(v65);
    v66(&v109, 0);
    sub_2150A5410();
    v53 = 0;
  }

  v67 = v90;
  (*(v64 + 56))(v65, v53, 1, v90);
  v68 = v103;
  sub_214F57934(v65, v103);
  if ((*(v64 + 48))(v68, 1, v67) != 1)
  {
    v69 = v92;
    (*(v64 + 32))(v92, v68, v67);
    v109 = sub_2150A4330();
    v110 = v70;
    sub_214D6E6C4();
    v71 = sub_2150A58C0();
    v73 = v72;

    if (!v73)
    {
      v71 = sub_2150A4330();
      v73 = v74;
    }

    (*(v64 + 8))(v69, v90);
    if (v71 == 0x656D686361747461 && v73 == 0xEA0000000000746ELL)
    {

      goto LABEL_19;
    }

    v75 = sub_2150A6270();

    if (v75)
    {
LABEL_19:
      v76 = sub_214F56CC8();
      if (v77)
      {
        v78 = v76;
        v79 = v77;
        v80 = sub_2150A5EE0();
        if (v80 == 1)
        {
          v81 = 1;
        }

        else
        {
          if (v80)
          {
            sub_214F302D4(v60, &qword_27CA41F70, &qword_2150C2C68);
            (*(v108 + 8))(v107, v50);
            v87 = v91;
            *v91 = 0;
            *(v87 + 1) = v78;
            *(v87 + 2) = v79;
            return;
          }

          v81 = 0;
        }

        v83 = sub_214F56CC8();
        v85 = v84;
        sub_214F302D4(v60, &qword_27CA41F70, &qword_2150C2C68);
        (*(v108 + 8))(v107, v50);
        if (v85)
        {
          v86 = v91;
          *v91 = v81;
          *(v86 + 1) = v83;
          *(v86 + 2) = v85;
          return;
        }

        goto LABEL_24;
      }
    }
  }

  sub_214F302D4(v60, &qword_27CA41F70, &qword_2150C2C68);
  (*(v108 + 8))(v107, v50);
LABEL_24:
  v82 = v91;
  *v91 = 0;
  *(v82 + 1) = 0;
  *(v82 + 2) = 0;
}

void sub_214FFA378(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2150A4340();
  v106 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v93 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2150A42C0();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v99 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50, &qword_2150CACD0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v103 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v102 = &v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F60, &qword_2150C2C58);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v97 = &v89 - v20;
  v107 = sub_2150A42D0();
  v96 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v21);
  v98 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F68, &qword_2150C2C60);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v94 = &v89 - v25;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70, &qword_2150C2C68);
  MEMORY[0x28223BE20](v95, v26);
  v105 = &v89 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48, &qword_2150C25E0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v89 - v30;
  v109 = sub_2150A4360();
  v104 = *(v109 - 8);
  v33 = MEMORY[0x28223BE20](v109, v32);
  v35 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v108 = &v89 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = &v89 - v40;
  v117 = a1;
  v118 = a2;
  v115 = 58;
  v116 = 0xE100000000000000;
  sub_214F57844();
  sub_214F57898();
  sub_2150A4A00();
  if (v112)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    return;
  }

  v91 = v6;
  v92 = a3;
  v90 = v111;
  v42 = sub_2150A4D40();
  MEMORY[0x216061730](v42);

  v43 = sub_2150A4A90();

  v44 = ICIsNotesURLScheme(v43);

  if ((v44 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2150A3720();
  sub_214F302D4(v41, &qword_27CA41D40, &unk_2150C7230);
  v115 = a1;
  v116 = a2;
  v113 = 63;
  v114 = 0xE100000000000000;
  sub_2150A4A00();
  if (v112)
  {
    v45 = sub_214F56B68(v90, a1, a2);
    v46 = v107;
  }

  else
  {
    v46 = v107;
    if (v110 >> 14 < v90 >> 14)
    {
      __break(1u);
      return;
    }

    v45 = sub_2150A4D40();
  }

  v47 = MEMORY[0x216061730](v45);
  v49 = v48;

  v117 = v47;
  v118 = v49;

  v50 = sub_2150A4CD0();

  v51 = v109;
  v52 = v104;
  if (v50)
  {
    sub_214F56BB4(2);
  }

  v53 = v108;
  MEMORY[0x216060F30](v117, v118);
  v54 = sub_2150A42E0();
  v55 = 1;
  (*(*(v54 - 8) + 56))(v31, 1, 1, v54);
  sub_2150A4300();
  (*(v52 + 16))(v35, v53, v51);
  v56 = v98;
  sub_2150A42B0();
  v57 = *(v96 + 32);
  v58 = v97;
  v57(v97, v56, v46);
  v59 = v94;
  v57(v94, v58, v46);
  v57(v56, v59, v46);
  v60 = MEMORY[0x277D854A8];
  sub_214F578EC(&qword_280C24260, MEMORY[0x277D854A8], MEMORY[0x277D854B0]);
  v61 = v105;
  sub_2150A4D60();
  v62 = (v61 + *(v95 + 44));
  *v62 = sub_214F56C3C;
  v62[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78, &qword_2150C2C70);
  sub_214F578EC(&qword_280C24258, v60, MEMORY[0x277D854B8]);
  v63 = v99;
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498], MEMORY[0x277D854A0]);
  v64 = v101;
  LOBYTE(v58) = sub_2150A4A80();
  (*(v100 + 8))(v63, v64);
  v65 = v106;
  v66 = v102;
  if ((v58 & 1) == 0)
  {
    v67 = sub_2150A5470();
    (*(v65 + 16))(v66);
    v67(&v110, 0);
    sub_2150A5410();
    v55 = 0;
  }

  v68 = v91;
  (*(v65 + 56))(v66, v55, 1, v91);
  v69 = v103;
  sub_214F57934(v66, v103);
  if ((*(v65 + 48))(v69, 1, v68) != 1)
  {
    v70 = v93;
    (*(v65 + 32))(v93, v69, v68);
    v110 = sub_2150A4330();
    v111 = v71;
    sub_214D6E6C4();
    v72 = sub_2150A58C0();
    v74 = v73;

    if (!v74)
    {
      v72 = sub_2150A4330();
      v74 = v75;
    }

    (*(v65 + 8))(v70, v91);
    if (v72 == 0x656C626174 && v74 == 0xE500000000000000)
    {

      goto LABEL_19;
    }

    v76 = sub_2150A6270();

    if (v76)
    {
LABEL_19:
      v77 = sub_214F56CC8();
      if (v78)
      {
        v79 = v77;
        v80 = v78;
        v81 = sub_2150A5EE0();
        if (v81 == 1)
        {
          v82 = 1;
        }

        else
        {
          if (v81)
          {
            sub_214F302D4(v61, &qword_27CA41F70, &qword_2150C2C68);
            (*(v52 + 8))(v108, v109);
            v88 = v92;
            *v92 = 0;
            *(v88 + 1) = v79;
            *(v88 + 2) = v80;
            return;
          }

          v82 = 0;
        }

        v84 = sub_214F56CC8();
        v86 = v85;
        sub_214F302D4(v61, &qword_27CA41F70, &qword_2150C2C68);
        (*(v52 + 8))(v108, v109);
        if (v86)
        {
          v87 = v92;
          *v92 = v82;
          *(v87 + 1) = v84;
          *(v87 + 2) = v86;
          return;
        }

        goto LABEL_24;
      }
    }
  }

  sub_214F302D4(v61, &qword_27CA41F70, &qword_2150C2C68);
  (*(v52 + 8))(v108, v109);
LABEL_24:
  v83 = v92;
  *v92 = 0;
  *(v83 + 1) = 0;
  *(v83 + 2) = 0;
}

uint64_t static ICAppURLUtilities.entityURI(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19[-1] - v6;
  v8 = sub_2150A3750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F5EBF0(v19);
  sub_214F30070(LOBYTE(v19[0]), v19[1], v19[2], v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_214F302D4(v7, &qword_27CA41D40, &unk_2150C7230);
    v13 = 1;
  }

  else
  {
    v14 = *(v9 + 32);
    v14(v12, v7, v8);
    v15 = [a1 ownerRecordName];
    if (v15)
    {
      v16 = v15;
      v18 = sub_2150A4AD0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA439C8, &qword_2150C7FB8);
      sub_2150A3120();
      *(swift_allocObject() + 16) = xmmword_2150C25D0;
      sub_2150A30F0();

      sub_2150A3710();
    }

    v14(a2, v12, v8);
    v13 = 0;
  }

  return (*(v9 + 56))(a2, v13, 1, v8);
}

uint64_t sub_214FFB348(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  LOBYTE(a4) = sub_214FFBE34(v9, a4);
  (*(v6 + 8))(v9, v5);
  return a4 & 1;
}

uint64_t static ICAppURLUtilities.objectIDURIRepresentation(forHTMLNoteEntityURI:context:)@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_2150A3650();
  sub_214FF8C98(v5, v6, v15);

  if (v16)
  {
    if (v15[0] == 2 || (v15[0] & 1) == 0)
    {
    }

    else
    {
      v7 = sub_2150A4A90();

      v8 = [a2 noteForIdentifier_];

      if (v8)
      {
        v9 = [v8 objectID];
        v10 = [v9 URIRepresentation];

        sub_2150A36F0();
        swift_unknownObjectRelease();

        v11 = 0;
        goto LABEL_8;
      }
    }
  }

  v11 = 1;
LABEL_8:
  v12 = sub_2150A3750();
  v13 = *(*(v12 - 8) + 56);

  return v13(a3, v11, 1, v12);
}

uint64_t sub_214FFB870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  LOBYTE(a4) = a4(v9);
  (*(v6 + 8))(v9, v5);
  return a4 & 1;
}

uint64_t _sSo17ICAppURLUtilitiesC11NotesSharedE19isHTMLNoteEntityURIySb10Foundation3URLVFZ_0(uint64_t a1)
{
  v1 = sub_2150A3650();
  sub_214FF8C98(v1, v2, v6);

  result = v7;
  if (v7)
  {
    v4 = v6[0];

    if (v4 == 2)
    {
      return 0;
    }

    else if (v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    else
    {
      v5 = sub_2150A6270();

      return v5 & 1;
    }
  }

  return result;
}

uint64_t _sSo17ICAppURLUtilitiesC11NotesSharedE20modernNoteIdentifier13fromEntityURISSSg10Foundation3URLV_tFZ_0(uint64_t a1)
{
  v1 = sub_2150A3650();
  sub_214FF8C98(v1, v2, v4);

  if (!v6)
  {
    return 0;
  }

  if (v4[0] != 2 && (v4[0] & 1) == 0)
  {
    return v5;
  }

  return 0;
}

uint64_t _sSo17ICAppURLUtilitiesC11NotesSharedE21isHTMLFolderEntityURIySb10Foundation3URLVFZ_0(uint64_t a1)
{
  v1 = sub_2150A3650();
  sub_214FF7F8C(v1, v2, v6);

  if (v6[2])
  {
    if (LOBYTE(v6[0]) == 2)
    {

      v3 = 1;
    }

    else
    {
      if (v6[0])
      {
        v4 = sub_2150A6270();

        v3 = v4 ^ 1;
      }

      else
      {
        swift_bridgeObjectRelease_n();
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_214FFBE34(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v3 = sub_2150A3650();
  a2(&v7, v3);

  result = v8;
  if (v8)
  {
    v5 = v7;

    if (v5 == 2)
    {
      return 0;
    }

    else if (v5)
    {
      v6 = sub_2150A6270();

      return v6 & 1;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }
  }

  return result;
}

id _sSo17ICAppURLUtilitiesC11NotesSharedE8objectID22forHTMLFolderEntityURI7contextSo015NSManagedObjectF0CSg10Foundation3URLVSg_So15ICLegacyContext_ptFZ_0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v37 - v10;
  v12 = sub_2150A3750();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v37 - v19;
  sub_214FE4C9C(a1, v11);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    v22 = v11;
LABEL_3:
    sub_214F302D4(v22, &qword_27CA41D40, &unk_2150C7230);
    return 0;
  }

  v38 = a2;
  v39 = v17;
  v23 = *(v13 + 32);
  v23(v20, v11, v12);
  v24 = sub_2150A3650();
  sub_214FF7F8C(v24, v25, v40);

  if (!v40[2])
  {
    goto LABEL_15;
  }

  if (LOBYTE(v40[0]) != 2)
  {
    if (v40[0])
    {

      v26 = sub_2150A4A90();

      v27 = [v38 folderForIdentifier_];

      if (v27)
      {
        v28 = [v27 objectID];

        swift_unknownObjectRelease();
      }

      else
      {

        v28 = 0;
      }

      (*(v13 + 8))(v20, v12);
      return v28;
    }

LABEL_15:
    (*(v13 + 8))(v20, v12);
    return 0;
  }

  sub_2150A3720();

  if (v21(v8, 1, v12) == 1)
  {

    (*(v13 + 8))(v20, v12);
    v22 = v8;
    goto LABEL_3;
  }

  v23(v39, v8, v12);
  v29 = [v38 managedObjectContext];
  if (v29 && (v30 = v29, v31 = [v29 persistentStoreCoordinator], v30, v31))
  {
    v32 = v39;
    v33 = sub_2150A36B0();
    v34 = [v31 managedObjectIDForURIRepresentation_];
  }

  else
  {

    v34 = 0;
    v32 = v39;
  }

  v36 = *(v13 + 8);
  v36(v32, v12);
  v36(v20, v12);
  return v34;
}

id _sSo17ICAppURLUtilitiesC11NotesSharedE8objectID24forModernFolderEntityURI11noteContextSo015NSManagedObjectF0CSg10Foundation3URLVSg_So06ICNoteM0CtFZ_0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21[-1] - v6;
  v8 = sub_2150A3750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FE4C9C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_214F302D4(v7, &qword_27CA41D40, &unk_2150C7230);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v14 = sub_2150A3650();
    sub_214FF7F8C(v14, v15, v21);

    if (v21[2])
    {
      if (LOBYTE(v21[0]) == 2 || (v21[0] & 1) != 0)
      {
        (*(v9 + 8))(v12, v8);

        return 0;
      }

      else
      {
        v16 = [a2 managedObjectContext];
        v17 = sub_2150A4A90();

        v18 = [objc_opt_self() folderWithIdentifier:v17 context:v16];

        if (v18)
        {
          v19 = [v18 objectID];
        }

        else
        {
          v19 = 0;
        }

        (*(v9 + 8))(v12, v8);
        return v19;
      }
    }

    else
    {
      (*(v9 + 8))(v12, v8);
      return 0;
    }
  }
}

uint64_t sub_214FFC5B8()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214FFC614()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

void sub_214FFC65C(BOOL *a2@<X8>)
{
  v3 = sub_2150A5EE0();

  *a2 = v3 != 0;
}

void sub_214FFC6D4(BOOL *a3@<X8>)
{
  v4 = sub_2150A5EE0();

  *a3 = v4 != 0;
}

uint64_t sub_214FFC72C(uint64_t a1)
{
  v2 = sub_214FFC944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FFC768(uint64_t a1)
{
  v2 = sub_214FFC944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FastSync.NoteContentMessage.recordBatchData.getter()
{
  v1 = *v0;
  sub_214FCA120(*v0, *(v0 + 8));
  return v1;
}

uint64_t FastSync.NoteContentMessage.init(recordBatchData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FastSync.NoteContentMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA439D0, &qword_2150C7FC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FCA120(v8, v9);
  sub_214FFC944();
  sub_2150A65B0();
  v11 = v8;
  v12 = v9;
  sub_214FEED30();
  sub_2150A60A0();
  sub_214F7EDE4(v11, v12);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_214FFC944()
{
  result = qword_27CA439D8;
  if (!qword_27CA439D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439D8);
  }

  return result;
}

uint64_t FastSync.NoteContentMessage.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA439E0, &qword_2150C7FC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FFC944();
  sub_2150A6590();
  if (!v2)
  {
    sub_214FEED84();
    sub_2150A5FC0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_214FFCB08(uint64_t a1)
{
  *(a1 + 8) = sub_214FFCB38();
  result = sub_214FFCB8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214FFCB38()
{
  result = qword_27CA439E8;
  if (!qword_27CA439E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439E8);
  }

  return result;
}

unint64_t sub_214FFCB8C()
{
  result = qword_27CA439F0;
  if (!qword_27CA439F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t sub_214FFCC2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214FFCC80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_214FFCCF0()
{
  result = qword_27CA439F8;
  if (!qword_27CA439F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439F8);
  }

  return result;
}

unint64_t sub_214FFCD48()
{
  result = qword_27CA43A00;
  if (!qword_27CA43A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A00);
  }

  return result;
}

unint64_t sub_214FFCDA0()
{
  result = qword_27CA43A08;
  if (!qword_27CA43A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A08);
  }

  return result;
}

double sub_214FFCDF4(uint64_t a1, unsigned __int8 a2)
{
  sub_2150A4BB0();

  return result;
}

uint64_t PersistedActivityEvent.Activities.type.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FFD110(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        result = sub_214FFD174(v7);
        v9 = 2;
      }

      else
      {
        result = sub_214FFD174(v7);
        v9 = 4;
      }
    }

    else
    {
      if (!result)
      {
        result = sub_214FFD174(v7);
        *a1 = 0;
        return result;
      }

      result = sub_214FFD174(v7);
      v9 = 1;
    }
  }

  else if (result <= 5)
  {
    if (result == 4)
    {
      result = sub_214FFD174(v7);
      v9 = 5;
    }

    else
    {
      result = sub_214FFD174(v7);
      v9 = 6;
    }
  }

  else
  {
    if (result == 6)
    {
      *a1 = 7;
      v10 = sub_2150A3A00();
      return (*(*(v10 - 8) + 8))(v7, v10);
    }

    if (result == 7)
    {
      result = sub_214FFD174(v7);
      v9 = 8;
    }

    else
    {
      v9 = 3;
    }
  }

  *a1 = v9;
  return result;
}

uint64_t type metadata accessor for PersistedActivityEvent.Activities(uint64_t a1)
{
  result = qword_280C24438;
  if (!qword_280C24438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214FFD110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedActivityEvent.Activities(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FFD174(uint64_t a1)
{
  v2 = type metadata accessor for PersistedActivityEvent.Activities(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PersistedActivityEvent.Activities.participants.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_214FFD110(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    sub_214FFD174(v4);
  }

  else if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      return *v4;
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      v7 = v4[2];
      v6 = v4[3];
      v11 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42720, &qword_2150C2968);
      result = swift_allocObject();
      v9 = v11;
      *(result + 16) = xmmword_2150C25D0;
      *(result + 32) = v9;
      *(result + 48) = v7;
      *(result + 56) = v6;
      return result;
    }

    v10 = sub_2150A3A00();
    (*(*(v10 - 8) + 8))(v4, v10);
  }

  return MEMORY[0x277D84F90];
}

void PersistedActivityEvent.Activities.Types.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_2150A5EE0();

  v5 = 9;
  if (v4 < 9)
  {
    v5 = v4;
  }

  *a3 = v5;
}

unint64_t PersistedActivityEvent.Activities.Types.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x657461657263;
    v7 = 2037411683;
    if (v1 != 2)
    {
      v7 = 0x656D616E6572;
    }

    if (*v0)
    {
      v6 = 1702260589;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    v3 = 0xD000000000000013;
    if (v1 != 7)
    {
      v3 = 0x6E6F69746E656DLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6574656C6564;
    if (v1 != 4)
    {
      v4 = 0x6974726150646461;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_214FFD498(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x657261506D6F7266;
    v6 = 0x746E657261506E69;
    if (a1 != 2)
    {
      v6 = 0x656E6F447369;
    }

    if (a1)
    {
      v5 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7069636974726170;
    v2 = 0x746E657261506F74;
    if (a1 != 7)
    {
      v2 = 1701869940;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C616E696769726FLL;
    if (a1 != 4)
    {
      v3 = 0x7069636974726170;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_214FFD5CC()
{
  v1 = *v0;
  sub_2150A64B0();
  sub_214FFCDF4(v3, v1);
  return sub_2150A64E0();
}

uint64_t sub_214FFD61C()
{
  v1 = *v0;
  sub_2150A64B0();
  sub_214FFCDF4(v3, v1);
  return sub_2150A64E0();
}

unint64_t sub_214FFD66C@<X0>(unint64_t *a1@<X8>)
{
  result = PersistedActivityEvent.Activities.Types.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_214FFD74C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_215000E24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214FFD780(uint64_t a1)
{
  v2 = sub_215000580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FFD7BC(uint64_t a1)
{
  v2 = sub_215000580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersistedActivityEvent.Activities.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A10, &qword_2150C8230);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v3);
  v5 = &v80 - v4;
  v85 = type metadata accessor for PersistedActivityEvent.Activities(0);
  v7 = MEMORY[0x28223BE20](v85, v6);
  v88 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v83 = &v80 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v87 = &v80 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v86 = &v80 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v80 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v80 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v80 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v80 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v80 - v35;
  v37 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_215000580();
  v90 = v5;
  v38 = v92;
  sub_2150A6590();
  if (v38)
  {
    return __swift_destroy_boxed_opaque_existential_0(v93);
  }

  v92 = v21;
  v39 = v86;
  v82 = v29;
  v40 = v87;
  v41 = v88;
  v81 = v25;
  v42 = v89;
  LOBYTE(v96) = 8;
  sub_2150005D4();
  v43 = v90;
  v44 = v91;
  sub_2150A5FC0();
  v80 = 0;
  if (v98 > 3u)
  {
    if (v98 <= 5u)
    {
      v73 = v36;
      if (v98 == 4)
      {
        LOBYTE(v96) = 0;
        sub_214F848DC();
        v54 = v80;
        sub_2150A5FC0();
        if (v54)
        {
          goto LABEL_3;
        }

        (*(v42 + 8))(v43, v44);
        v55 = v99;
        v56 = v100;
        v57 = v92;
        *v92 = v98;
        *(v57 + 1) = v55;
        *(v57 + 2) = v56;
        swift_storeEnumTagMultiPayload();
        v79 = v57;
      }

      else
      {
        LOBYTE(v96) = 5;
        sub_214F84930();
        v65 = v80;
        sub_2150A5FC0();
        if (v65)
        {
          goto LABEL_3;
        }

        (*(v42 + 8))(v43, v44);
        v66 = v99;
        *v39 = v98;
        *(v39 + 1) = v66;
        *(v39 + 1) = v100;
        swift_storeEnumTagMultiPayload();
        v79 = v39;
      }
    }

    else
    {
      v92 = v36;
      if (v98 == 6)
      {
        LOBYTE(v96) = 5;
        sub_214F84930();
        v58 = v80;
        sub_2150A5FC0();
        if (v58)
        {
          goto LABEL_3;
        }

        (*(v42 + 8))(v43, v44);
        v59 = v99;
        *v40 = v98;
        *(v40 + 1) = v59;
        *(v40 + 1) = v100;
        swift_storeEnumTagMultiPayload();
        v79 = v40;
      }

      else
      {
        if (v98 == 7)
        {
          sub_2150A3A00();
          LOBYTE(v98) = 1;
          sub_215000818(&qword_27CA43008, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
          v46 = v80;
          sub_2150A5FC0();
          if (!v46)
          {
            LOBYTE(v98) = 3;
            v70 = sub_2150A5F90();
            v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20, &qword_2150CD880) + 48);
            (*(v42 + 8))(v43, v44);
            v72 = v83;
            v83[v71] = v70 & 1;
            swift_storeEnumTagMultiPayload();
            v73 = v92;
            sub_214F84734(v72, v92);
            v74 = v84;
LABEL_34:
            sub_214F84734(v73, v74);
            return __swift_destroy_boxed_opaque_existential_0(v93);
          }

          goto LABEL_3;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA421A0, &qword_2150C34C0);
        LOBYTE(v96) = 6;
        sub_21500067C(&qword_27CA43A28, sub_214F84930, MEMORY[0x277D83978]);
        v64 = v80;
        sub_2150A5FC0();
        if (v64)
        {
LABEL_3:
          (*(v42 + 8))(v43, v44);
          return __swift_destroy_boxed_opaque_existential_0(v93);
        }

        (*(v42 + 8))(v43, v44);
        *v41 = v98;
        swift_storeEnumTagMultiPayload();
        v79 = v41;
      }

      v73 = v92;
    }

    v67 = v73;
LABEL_33:
    sub_214F84734(v79, v67);
    v74 = v84;
    goto LABEL_34;
  }

  if (v98 > 1u)
  {
    v74 = v84;
    if (v98 != 2)
    {
      (*(v42 + 8))(v43, v44);
      v73 = v36;
      swift_storeEnumTagMultiPayload();
      goto LABEL_34;
    }

    LOBYTE(v96) = 4;
    sub_214F848DC();
    v50 = v80;
    sub_2150A5FC0();
    if (v50)
    {
      goto LABEL_3;
    }

    v51 = v98;
    v53 = v99;
    v52 = v100;
    LOBYTE(v94) = 0;
    sub_2150A5F60();
    v87 = v96;
    v88 = v53;
    v86 = *(&v96 + 1);
    v92 = v97;
    v101 = 7;
    sub_2150A5F60();
    (*(v42 + 8))(v43, v44);
    v75 = v95;
    v76 = v81;
    *v81 = v51;
    v77 = v87;
    *(v76 + 1) = v88;
    *(v76 + 2) = v52;
    v78 = v86;
    *(v76 + 3) = v77;
    *(v76 + 4) = v78;
    *(v76 + 5) = v92;
    *(v76 + 3) = v94;
    *(v76 + 8) = v75;
    swift_storeEnumTagMultiPayload();
    v79 = v76;
LABEL_35:
    v73 = v36;
    v67 = v36;
    goto LABEL_33;
  }

  if (v98)
  {
    LOBYTE(v96) = 0;
    sub_214F848DC();
    v60 = v80;
    sub_2150A5F60();
    if (v60)
    {
      goto LABEL_3;
    }

    v61 = v98;
    v62 = v99;
    v63 = v100;
    LOBYTE(v94) = 7;
    sub_2150A5F60();
    (*(v42 + 8))(v43, v44);
    v68 = v97;
    v69 = v82;
    *v82 = v61;
    v69[1] = v62;
    v69[2] = v63;
    *(v69 + 3) = v96;
    v69[5] = v68;
    swift_storeEnumTagMultiPayload();
    v79 = v69;
    goto LABEL_35;
  }

  LOBYTE(v96) = 2;
  sub_214F848DC();
  v47 = v80;
  sub_2150A5FC0();
  (*(v42 + 8))(v43, v44);
  v74 = v84;
  if (!v47)
  {
    v48 = v99;
    v49 = v100;
    *v33 = v98;
    *(v33 + 1) = v48;
    *(v33 + 2) = v49;
    swift_storeEnumTagMultiPayload();
    v73 = v36;
    sub_214F84734(v33, v36);
    goto LABEL_34;
  }

  return __swift_destroy_boxed_opaque_existential_0(v93);
}

double PersistedActivityEvent.Activities.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2150A3A00();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v45, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A30, &qword_2150C8238);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v43 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_215000580();
  sub_2150A65B0();
  v15 = v2;
  PersistedActivityEvent.Activities.type.getter(&v49);
  v52 = 8;
  sub_215000628();
  v16 = v48;
  sub_2150A60A0();
  if (v16)
  {
    (*(v11 + 8))(v14, v10);
    return result;
  }

  v18 = v44;
  v20 = v46;
  v19 = v47;
  v48 = v11;
  sub_214FFD110(v15, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v37 = v14;
        v39 = *(v9 + 2);
        v38 = *(v9 + 3);
        v40 = *(v9 + 5);
        v47 = *(v9 + 4);
        v49 = *v9;
        v50 = v39;
        v52 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A48, &qword_2150C8240);
        sub_2150006F4();
        sub_2150A60A0();

        *&v49 = v38;
        *(&v49 + 1) = v47;
        v50 = v40;
        v52 = 7;
        sub_2150A60A0();
        (*(v48 + 8))(v37, v10);
      }

      else
      {
        v22 = *(v9 + 1);
        v23 = *(v9 + 2);
        LOBYTE(v49) = *v9;
        *(&v49 + 1) = v22;
        v50 = v23;
        v52 = 2;
        sub_214F847EC();
        sub_2150A60A0();
        (*(v48 + 8))(v14, v10);
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v41 = *(v9 + 1);
      v42 = *(v9 + 2);
      LOBYTE(v49) = *v9;
      *(&v49 + 1) = v41;
      v50 = v42;
      v52 = 0;
      sub_214F847EC();
      goto LABEL_18;
    }

    v24 = *v9;
    v25 = *(v9 + 1);
    v26 = *(v9 + 2);
    v27 = *(v9 + 3);
    v46 = *(v9 + 4);
    v47 = v27;
    v28 = v14;
    v30 = *(v9 + 5);
    v29 = *(v9 + 6);
    v31 = *(v9 + 7);
    v32 = *(v9 + 8);
    LOBYTE(v49) = v24;
    *(&v49 + 1) = v25;
    v50 = v26;
    v52 = 4;
    sub_214F847EC();
    sub_2150A60A0();
    v43 = v31;
    v44 = v29;
    v45 = v32;

    *&v49 = v47;
    *(&v49 + 1) = v46;
    v50 = v30;
    v52 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A48, &qword_2150C8240);
    sub_2150006F4();
    sub_2150A60A0();

    *&v49 = v44;
    *(&v49 + 1) = v43;
    v50 = v45;
    v52 = 7;
    sub_2150A60A0();
    (*(v48 + 8))(v28, v10);
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        LODWORD(v45) = v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20, &qword_2150CD880) + 48)];
        (*(v20 + 32))(v18, v9, v19);
        LOBYTE(v49) = 1;
        sub_215000818(&qword_280C241B8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
        sub_2150A60A0();
        LOBYTE(v49) = 3;
        sub_2150A6070();
        (*(v20 + 8))(v18, v19);
      }

      else if (EnumCaseMultiPayload == 7)
      {
        *&v49 = *v9;
        v52 = 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA421A0, &qword_2150C34C0);
        sub_21500067C(&qword_27CA43A40, sub_214F84840, MEMORY[0x277D83948]);
LABEL_18:
        sub_2150A60A0();
        (*(v48 + 8))(v14, v10);
        goto LABEL_19;
      }

      (*(v48 + 8))(v14, v10);
      return result;
    }

    v33 = v14;
    v34 = *(v9 + 1);
    v35 = *(v9 + 2);
    v36 = *(v9 + 3);
    *&v49 = *v9;
    *(&v49 + 1) = v34;
    v50 = v35;
    v51 = v36;
    v52 = 5;
    sub_214F84840();
    sub_2150A60A0();
    (*(v48 + 8))(v33, v10);
  }

LABEL_19:

  return result;
}

uint64_t PersistedActivityEvent.Activities.isSharedRootActivity.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities(0);
  v3 = MEMORY[0x28223BE20](v1, v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v17 - v7;
  sub_214FFD110(v0, &v17 - v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
LABEL_7:
    sub_214FFD174(v8);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 4) < 2)
  {
    v10 = v8;
LABEL_25:
    sub_214FFD174(v10);
    return 1;
  }

  v15 = sub_2150A3A00();
  (*(*(v15 - 8) + 8))(v8, v15);
LABEL_8:
  sub_214FFD110(v0, v5);
  v11 = swift_getEnumCaseMultiPayload();
  if (v11 > 3)
  {
    if (v11 > 5)
    {
      if (v11 == 6)
      {
        v16 = sub_2150A3A00();
        (*(*(v16 - 8) + 8))(v5, v16);
        return 0;
      }

      if (v11 != 7)
      {
        return 0;
      }
    }

    goto LABEL_20;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
LABEL_20:
      sub_214FFD174(v5);
      return 0;
    }

    v12 = *(v5 + 5);

    if (!v12)
    {
      return 1;
    }

LABEL_19:

    return 0;
  }

  if (v11 != 2)
  {
    v10 = v5;
    goto LABEL_25;
  }

  v13 = *(v5 + 8);

  if (v13)
  {
    goto LABEL_19;
  }

  return 1;
}

uint64_t PersistedActivityEvent.Activities.isParticipantActivity.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FFD110(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      return 0;
    }

LABEL_7:
    sub_214FFD174(v4);
    return 0;
  }

  if ((EnumCaseMultiPayload - 4) < 2)
  {
    sub_214FFD174(v4);
    return 1;
  }

  v7 = sub_2150A3A00();
  (*(*(v7 - 8) + 8))(v4, v7);
  return 0;
}

uint64_t PersistedActivityEvent.Activities.isRemoveActivity.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FFD110(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v9 = sub_2150A3A00();
        (*(*(v9 - 8) + 8))(v4, v9);
        return 0;
      }

      if (EnumCaseMultiPayload != 7)
      {
        return 0;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_13:
      sub_214FFD174(v4);
      return 0;
    }

    v6 = *(v4 + 5);

    if (!v6)
    {
      return 1;
    }

LABEL_12:

    return 0;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_214FFD174(v4);
    return 1;
  }

  v7 = *(v4 + 8);

  if (v7)
  {
    goto LABEL_12;
  }

  return 1;
}

uint64_t PersistedActivityEvent.Activities.isAddActivity.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FFD110(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v8 = sub_2150A3A00();
        (*(*(v8 - 8) + 8))(v4, v8);
        return 0;
      }

      if (EnumCaseMultiPayload != 7)
      {
        return 0;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_12:
      sub_214FFD174(v4);
      return 0;
    }

    v7 = *(v4 + 5);

    if (!v7)
    {
      return 1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_214FFD174(v4);
      return 1;
    }

    v9 = *(v4 + 2);

    if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t PersistedActivityEvent.Activities.isNoteActivity.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FFD110(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 6)
  {
    sub_214FFD174(v4);
    return 0;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v7 = sub_2150A3A00();
    (*(*(v7 - 8) + 8))(v4, v7);
    return 1;
  }

  if (EnumCaseMultiPayload != 7)
  {
    return 0;
  }

  sub_214FFD174(v4);
  return 1;
}

void PersistedActivityEvent.Activities.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2150A3A00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersistedActivityEvent.Activities(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_214FFD110(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v20 = 5;
      }

      else
      {
        v20 = 6;
      }

      MEMORY[0x216063080](v20);
      sub_2150A4BB0();
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20, &qword_2150CD880);
        (*(v4 + 32))(v7, v11, v3);
        MEMORY[0x216063080](7);
        sub_215000818(&qword_280C241B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_2150A49B0();
        sub_2150A64D0();
        (*(v4 + 8))(v7, v3);
        return;
      }

      if (EnumCaseMultiPayload != 7)
      {
        MEMORY[0x216063080](3);
        return;
      }

      v13 = *v11;
      MEMORY[0x216063080](8);
      MEMORY[0x216063080](*(v13 + 16));
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = v13 + 56;
        do
        {
          v15 += 32;

          sub_2150A4BB0();

          --v14;
        }

        while (v14);
      }
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v16 = 4;
      goto LABEL_22;
    }

    v18 = v11[5];
    v17 = v11[6];
    v23[1] = v11[4];
    v23[2] = v17;
    v19 = v11[8];
    v23[3] = v11[7];
    MEMORY[0x216063080](2);
    sub_2150A4BB0();

    sub_2150A4BB0();

    sub_2150A64D0();
    if (v18)
    {
      sub_2150A4BB0();

      sub_2150A4BB0();
    }

    if (v19)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = 0;
LABEL_22:
      MEMORY[0x216063080](v16);
      sub_2150A4BB0();

      sub_2150A4BB0();
LABEL_30:

      return;
    }

    v21 = v11[2];
    v22 = v11[5];
    MEMORY[0x216063080](1);
    if (v21)
    {
      sub_2150A64D0();
      sub_2150A4BB0();

      sub_2150A4BB0();

      if (!v22)
      {
        goto LABEL_31;
      }

LABEL_29:
      sub_2150A64D0();
      sub_2150A4BB0();

      sub_2150A4BB0();
      goto LABEL_30;
    }

    sub_2150A64D0();
    if (v22)
    {
      goto LABEL_29;
    }
  }

LABEL_31:
  sub_2150A64D0();
}

uint64_t PersistedActivityEvent.Activities.hashValue.getter()
{
  sub_2150A64B0();
  PersistedActivityEvent.Activities.hash(into:)(v1);
  return sub_2150A64E0();
}

uint64_t sub_214FFF6C4()
{
  sub_2150A64B0();
  PersistedActivityEvent.Activities.hash(into:)(v1);
  return sub_2150A64E0();
}

uint64_t sub_214FFF708()
{
  sub_2150A64B0();
  PersistedActivityEvent.Activities.hash(into:)(v1);
  return sub_2150A64E0();
}

uint64_t _s11NotesShared22PersistedActivityEventV10ActivitiesO2eeoiySbAE_AEtFZ_0(uint64_t a1, char *a2)
{
  v147 = a2;
  v3 = sub_2150A3A00();
  v145 = *(v3 - 8);
  v146 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v143 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PersistedActivityEvent.Activities(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = (&v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v8, v11);
  v144 = &v138 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = (&v138 - v16);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v138 - v20);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v138 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = (&v138 - v28);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = (&v138 - v32);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v138 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A88, &qword_2150C8568);
  v39 = MEMORY[0x28223BE20](v37 - 8, v38);
  v41 = (&v138 + *(v39 + 56) - v40);
  v42 = a1;
  v43 = &v138 - v40;
  sub_214FFD110(v42, &v138 - v40);
  sub_214FFD110(v147, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_214FFD110(v43, v36);
        v48 = *(v36 + 1);
        v47 = *(v36 + 2);
        if (!swift_getEnumCaseMultiPayload())
        {
          v49 = *v36;
LABEL_65:
          v99 = *v41;
          v101 = v41[1];
          v100 = v41[2];
          if (v49)
          {
            v102 = 1702129518;
          }

          else
          {
            v102 = 0x7265646C6F66;
          }

          if (v49)
          {
            v103 = 0xE400000000000000;
          }

          else
          {
            v103 = 0xE600000000000000;
          }

          if (v99)
          {
            v104 = 1702129518;
          }

          else
          {
            v104 = 0x7265646C6F66;
          }

          if (v99)
          {
            v105 = 0xE400000000000000;
          }

          else
          {
            v105 = 0xE600000000000000;
          }

          if (v102 == v104 && v103 == v105)
          {
          }

          else
          {
            v107 = sub_2150A6270();

            if ((v107 & 1) == 0)
            {

              goto LABEL_104;
            }
          }

          if (v48 != v101 || v47 != v100)
          {
            v110 = sub_2150A6270();

            if ((v110 & 1) == 0)
            {
              goto LABEL_104;
            }

LABEL_100:
            v108 = v43;
LABEL_101:
            sub_214FFD174(v108);
            v46 = 1;
            return v46 & 1;
          }

LABEL_99:

          goto LABEL_100;
        }

        goto LABEL_87;
      }

      sub_214FFD110(v43, v33);
      v82 = *v33;
      v83 = v33[1];
      v85 = v33[2];
      v84 = v33[3];
      v86 = v33[4];
      v87 = v33[5];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_86:

        goto LABEL_87;
      }

      v147 = v86;
      v88 = v43;
      v90 = v41[2];
      v89 = v41[3];
      v91 = v41[5];
      if (v85)
      {
        if (v90)
        {
          v144 = v41[4];
          v145 = v89;
          v92 = *v41;
          v146 = v41[1];
          if (v82)
          {
            v93 = 1702129518;
          }

          else
          {
            v93 = 0x7265646C6F66;
          }

          if (v82)
          {
            v94 = 0xE400000000000000;
          }

          else
          {
            v94 = 0xE600000000000000;
          }

          if (v92)
          {
            v95 = 1702129518;
          }

          else
          {
            v95 = 0x7265646C6F66;
          }

          if (v92)
          {
            v96 = 0xE400000000000000;
          }

          else
          {
            v96 = 0xE600000000000000;
          }

          if (v93 == v95 && v94 == v96)
          {
            swift_bridgeObjectRetain_n();
          }

          else
          {
            v98 = sub_2150A6270();
            swift_bridgeObjectRetain_n();

            if ((v98 & 1) == 0)
            {
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
LABEL_132:

              sub_214FFD174(v88);
              goto LABEL_89;
            }
          }

          if (v83 == v146 && v85 == v90)
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          else
          {
            v120 = sub_2150A6270();
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            if ((v120 & 1) == 0)
            {
              goto LABEL_132;
            }
          }

LABEL_142:
          v121 = v88;
          if (v87)
          {
            if (v91)
            {
              if (v84)
              {
                v122 = 1702129518;
              }

              else
              {
                v122 = 0x7265646C6F66;
              }

              if (v84)
              {
                v123 = 0xE400000000000000;
              }

              else
              {
                v123 = 0xE600000000000000;
              }

              if (v145)
              {
                v124 = 1702129518;
              }

              else
              {
                v124 = 0x7265646C6F66;
              }

              if (v145)
              {
                v125 = 0xE400000000000000;
              }

              else
              {
                v125 = 0xE600000000000000;
              }

              if (v122 == v124 && v123 == v125)
              {
                swift_bridgeObjectRetain_n();
              }

              else
              {
                v127 = sub_2150A6270();
                swift_bridgeObjectRetain_n();

                if ((v127 & 1) == 0)
                {
                  swift_bridgeObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  goto LABEL_164;
                }
              }

              if (v147 == v144 && v87 == v91)
              {
                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                v108 = v121;
                goto LABEL_101;
              }

              v135 = sub_2150A6270();
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              if ((v135 & 1) == 0)
              {
LABEL_164:
                sub_214FFD174(v121);
                goto LABEL_89;
              }

LABEL_203:
              v108 = v121;
              goto LABEL_101;
            }
          }

          else if (!v91)
          {

            goto LABEL_203;
          }

          goto LABEL_164;
        }
      }

      else if (!v90)
      {
        v144 = v41[4];
        v145 = v89;

        goto LABEL_142;
      }

      goto LABEL_132;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_214FFD110(v43, v25);
      v48 = *(v25 + 1);
      v47 = *(v25 + 2);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v49 = *v25;
        goto LABEL_65;
      }

LABEL_87:

      goto LABEL_88;
    }

    v147 = v43;
    sub_214FFD110(v43, v29);
    v50 = v29[1];
    v51 = v29[2];
    v52 = v29[4];
    v146 = v29[3];
    v53 = v29[5];
    v54 = v29[6];
    v55 = v29[7];
    v56 = v29[8];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      v43 = v147;
      goto LABEL_88;
    }

    v143 = v52;
    v144 = v54;
    v140 = v55;
    v57 = v56;
    v58 = *v29;
    v59 = *v41;
    v61 = v41[1];
    v60 = v41[2];
    v142 = v41[3];
    v62 = v41[5];
    v141 = v41[4];
    v139 = v41[6];
    v138 = v41[7];
    v145 = v41[8];
    if (v58)
    {
      v63 = 1702129518;
    }

    else
    {
      v63 = 0x7265646C6F66;
    }

    if (v58)
    {
      v64 = 0xE400000000000000;
    }

    else
    {
      v64 = 0xE600000000000000;
    }

    if (v59)
    {
      v65 = 1702129518;
    }

    else
    {
      v65 = 0x7265646C6F66;
    }

    if (v59)
    {
      v66 = 0xE400000000000000;
    }

    else
    {
      v66 = 0xE600000000000000;
    }

    if (v63 == v65 && v64 == v66)
    {
    }

    else
    {
      v68 = sub_2150A6270();

      if ((v68 & 1) == 0)
      {

LABEL_127:

        sub_214FFD174(v147);
        goto LABEL_89;
      }
    }

    if (v50 == v61 && v51 == v60)
    {

      v111 = v57;
      v112 = v144;
    }

    else
    {
      v113 = sub_2150A6270();

      v111 = v57;
      v112 = v144;
      if ((v113 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    if (v53)
    {
      if (v62)
      {
        if (v146)
        {
          v114 = 1702129518;
        }

        else
        {
          v114 = 0x7265646C6F66;
        }

        if (v146)
        {
          v115 = 0xE400000000000000;
        }

        else
        {
          v115 = 0xE600000000000000;
        }

        if (v142)
        {
          v116 = 1702129518;
        }

        else
        {
          v116 = 0x7265646C6F66;
        }

        if (v142)
        {
          v117 = 0xE400000000000000;
        }

        else
        {
          v117 = 0xE600000000000000;
        }

        if (v114 == v116 && v115 == v117)
        {
          swift_bridgeObjectRetain_n();

          v118 = v147;
          v119 = v143;
        }

        else
        {
          v128 = sub_2150A6270();
          swift_bridgeObjectRetain_n();

          v118 = v147;
          v119 = v143;
          if ((v128 & 1) == 0)
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            goto LABEL_198;
          }
        }

        if (v119 == v141 && v53 == v62)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v129 = sub_2150A6270();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if ((v129 & 1) == 0)
          {
            goto LABEL_198;
          }
        }

        goto LABEL_174;
      }
    }

    else if (!v62)
    {

      v118 = v147;
LABEL_174:
      v130 = v145;
      if (v111)
      {
        if (v145)
        {
          if (v112)
          {
            v131 = 1702129518;
          }

          else
          {
            v131 = 0x7265646C6F66;
          }

          if (v112)
          {
            v132 = 0xE400000000000000;
          }

          else
          {
            v132 = 0xE600000000000000;
          }

          if (v139)
          {
            v133 = 1702129518;
          }

          else
          {
            v133 = 0x7265646C6F66;
          }

          if (v139)
          {
            v134 = 0xE400000000000000;
          }

          else
          {
            v134 = 0xE600000000000000;
          }

          if (v131 == v133 && v132 == v134)
          {
            swift_bridgeObjectRetain_n();
          }

          else
          {
            v136 = sub_2150A6270();
            swift_bridgeObjectRetain_n();

            if ((v136 & 1) == 0)
            {
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              goto LABEL_199;
            }
          }

          if (v140 == v138 && v111 == v130)
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v108 = v118;
            goto LABEL_101;
          }

          v137 = sub_2150A6270();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if (v137)
          {
LABEL_211:
            v108 = v118;
            goto LABEL_101;
          }

LABEL_199:
          sub_214FFD174(v118);
          goto LABEL_89;
        }
      }

      else if (!v145)
      {

        goto LABEL_211;
      }

LABEL_198:

      goto LABEL_199;
    }

    v118 = v147;

    goto LABEL_198;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_214FFD110(v43, v21);
      v70 = *v21;
      v69 = v21[1];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
LABEL_33:
        if (v70 != *v41 || v69 != v41[1])
        {
          v72 = sub_2150A6270();

          if ((v72 & 1) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_100;
        }

        goto LABEL_99;
      }
    }

    else
    {
      sub_214FFD110(v43, v17);
      v70 = *v17;
      v69 = v17[1];
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_86;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v73 = v144;
    sub_214FFD110(v43, v144);
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20, &qword_2150CD880) + 48);
    v75 = *(v73 + v74);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      (*(v145 + 8))(v73, v146);
      goto LABEL_88;
    }

    v76 = *(v41 + v74);
    v78 = v145;
    v77 = v146;
    v79 = v143;
    (*(v145 + 32))(v143, v41, v146);
    v80 = sub_2150A39B0();
    v81 = *(v78 + 8);
    v81(v79, v77);
    v81(v73, v77);
    if (v80)
    {
      sub_214FFD174(v43);
      v46 = v75 ^ v76 ^ 1;
      return v46 & 1;
    }

LABEL_104:
    sub_214FFD174(v43);
    goto LABEL_89;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (swift_getEnumCaseMultiPayload() != 8)
    {
LABEL_88:
      sub_21500115C(v43);
LABEL_89:
      v46 = 0;
      return v46 & 1;
    }

    goto LABEL_100;
  }

  sub_214FFD110(v43, v10);
  v45 = *v10;
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    goto LABEL_87;
  }

  v46 = sub_214F8F7B0(v45, *v41);

  sub_214FFD174(v43);
  return v46 & 1;
}

unint64_t sub_215000580()
{
  result = qword_27CA43A18;
  if (!qword_27CA43A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A18);
  }

  return result;
}

unint64_t sub_2150005D4()
{
  result = qword_27CA43A20;
  if (!qword_27CA43A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A20);
  }

  return result;
}

unint64_t sub_215000628()
{
  result = qword_27CA43A38;
  if (!qword_27CA43A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A38);
  }

  return result;
}

uint64_t sub_21500067C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA421A0, &qword_2150C34C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2150006F4()
{
  result = qword_27CA43A50;
  if (!qword_27CA43A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43A48, &qword_2150C8240);
    sub_214F847EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A50);
  }

  return result;
}

unint64_t sub_21500077C()
{
  result = qword_27CA43A58;
  if (!qword_27CA43A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A58);
  }

  return result;
}

uint64_t sub_215000818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_215000860(uint64_t a1)
{
  sub_215000938();
  if (v1 <= 0x3F)
  {
    sub_215000968(319);
    if (v2 <= 0x3F)
    {
      sub_2150009DC(319);
      if (v3 <= 0x3F)
      {
        sub_215000A58();
        if (v4 <= 0x3F)
        {
          sub_215000A88();
          if (v5 <= 0x3F)
          {
            sub_215000AB8(319);
            if (v6 <= 0x3F)
            {
              sub_215000B24();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

ValueMetadata *sub_215000938()
{
  result = qword_280C24628;
  if (!qword_280C24628)
  {
    result = &type metadata for ActivityEventObject;
    atomic_store(&type metadata for ActivityEventObject, &qword_280C24628);
  }

  return result;
}

void sub_215000968(uint64_t a1)
{
  if (!qword_280C24448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43A48, &qword_2150C8240);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C24448);
    }
  }
}

void sub_2150009DC(uint64_t a1)
{
  if (!qword_280C24450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43A48, &qword_2150C8240);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280C24450);
    }
  }
}

ValueMetadata *sub_215000A58()
{
  result = qword_280C24458;
  if (!qword_280C24458)
  {
    result = &type metadata for ActivityEventObject;
    atomic_store(&type metadata for ActivityEventObject, &qword_280C24458);
  }

  return result;
}

ValueMetadata *sub_215000A88()
{
  result = qword_280C24300[0];
  if (!qword_280C24300[0])
  {
    result = &type metadata for ActivityEventParticipant;
    atomic_store(&type metadata for ActivityEventParticipant, qword_280C24300);
  }

  return result;
}

void sub_215000AB8(uint64_t a1)
{
  if (!qword_280C24460)
  {
    sub_2150A3A00();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C24460);
    }
  }
}

void sub_215000B24()
{
  if (!qword_280C24250)
  {
    sub_215000B6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280C24250);
    }
  }
}

void sub_215000B6C()
{
  if (!qword_280C24248)
  {
    v0 = sub_2150A4FD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C24248);
    }
  }
}

uint64_t sub_215000BCC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_215000C5C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_215000D20()
{
  result = qword_27CA43A68;
  if (!qword_27CA43A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A68);
  }

  return result;
}

unint64_t sub_215000D78()
{
  result = qword_27CA43A70;
  if (!qword_27CA43A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A70);
  }

  return result;
}

unint64_t sub_215000DD0()
{
  result = qword_27CA43A78;
  if (!qword_27CA43A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A78);
  }

  return result;
}

uint64_t sub_215000E24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657261506D6F7266 && a2 == 0xEA0000000000746ELL || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657261506E69 && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F447369 && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61 || (sub_2150A6270() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_2150A6270() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E657261506F74 && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_2150A6270();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_215001108()
{
  result = qword_27CA43A80;
  if (!qword_27CA43A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A80);
  }

  return result;
}

uint64_t sub_21500115C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A88, &qword_2150C8568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSAttributedString __swiftcall ICTTMergeableAttributedString.authorAttributedString(for:object:)(__C::_NSRange a1, ICCloudSyncingObject *object)
{
  v3 = v2;
  length = a1.length;
  location = a1.location;
  result.super.isa = [v3 attributedString];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v9 = [(objc_class *)result.super.isa attributedSubstringFromRange:location, length];

    v10 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v11 = swift_allocObject();
    v11[2] = v3;
    v11[3] = v10;
    v11[4] = object;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2150017AC;
    *(v12 + 24) = v11;
    v18[4] = sub_2150017B8;
    v18[5] = v12;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2150017E0;
    v18[3] = &block_descriptor_11;
    v13 = _Block_copy(v18);
    v14 = v3;
    v15 = v10;
    v16 = object;

    [v14 enumerateEditsInRange:location usingBlock:{length, v13}];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2150013C8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v50 = a5;
  v52 = a3;
  v51 = sub_2150A3960();
  v49 = *(v51 - 8);
  v8 = MEMORY[0x28223BE20](v51, v7);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v53 = &v48 - v11;
  v12 = sub_2150A3A00();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v48 - v23;
  v25 = [a1 replicaID];
  sub_2150A39C0();

  v26 = [objc_opt_self() CR_unserialized];
  sub_2150A39C0();

  v27 = sub_2150A39B0();
  v28 = *(v13 + 8);
  v28(v17, v12);
  v28(v21, v12);
  if (v27)
  {
    v29 = v52;
  }

  else
  {
    v29 = a1;
  }

  v30 = &selRef_replicaUUID;
  if ((v27 & 1) == 0)
  {
    v30 = &selRef_replicaID;
  }

  v31 = [v29 *v30];
  sub_2150A39C0();

  v32 = ICTTAttributeNameReplicaID;
  v33 = sub_2150A39A0();
  v34 = [a1 range];
  v35 = a4;
  [a4 addAttribute:v32 value:v33 range:{v34, v36}];

  v37 = [a1 timestamp];
  if (v37)
  {
    v38 = v48;
    v39 = v37;
    sub_2150A3930();

    v40 = v49;
    v41 = v51;
    (*(v49 + 32))(v53, v38, v51);
    v42 = sub_2150A39A0();
    LODWORD(v38) = [v50 trustsTimestampsFromReplicaID_];

    if (v38)
    {
      v43 = ICTTAttributeNameTimestamp;
      sub_2150A3910();
      v44 = sub_2150A5290();
      v45 = [a1 range];
      [v35 addAttribute:v43 value:v44 range:{v45, v46}];
    }

    (*(v40 + 8))(v53, v41);
  }

  return (v28)(v24, v12);
}

void sub_2150017E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

Swift::Void __swiftcall ICTTMergeableAttributedString.insertAuthorAttributedString(_:at:)(NSAttributedString _, Swift::Int at)
{
  v14 = at;
  v4 = ICTTAttributeNameReplicaID;
  v5 = [(objc_class *)_.super.isa ic_range];
  v7 = v6;
  v8 = swift_allocObject();
  v8[2].super.isa = v2;
  v8[3].super.isa = _.super.isa;
  v8[4].super.isa = &v14;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_215001E0C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_215001E18;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_215001D60;
  aBlock[3] = &block_descriptor_12;
  v10 = _Block_copy(aBlock);
  v11 = v2;
  v12 = _.super.isa;

  [(objc_class *)v12 enumerateAttribute:v4 inRange:v5 options:v7 usingBlock:0, v10];

  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_2150019F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v34 = a6;
  v35 = a3;
  v33 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360, &qword_2150C2988);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v32 - v12;
  v14 = sub_2150A3A00();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FA9E9C(a1, v36);
  if (v37)
  {
    v19 = swift_dynamicCast();
    (*(v15 + 56))(v13, v19 ^ 1u, 1, v14);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v18, v13, v14);
      goto LABEL_7;
    }
  }

  else
  {
    sub_214F302D4(v36, &qword_27CA42178, &qword_2150C6010);
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  v20 = [a5 replicaUUID];
  sub_2150A39C0();

  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_214F302D4(v13, &unk_27CA42360, &qword_2150C2988);
  }

LABEL_7:
  v21 = [a5 serialize];
  v22 = sub_2150A37B0();
  v24 = v23;

  v25 = objc_allocWithZone(ICTTMergeableAttributedString);
  v26 = sub_2150A3790();
  v27 = sub_2150A39A0();
  v28 = [v25 initWithData:v26 replicaID:v27];

  sub_214F7EDE4(v22, v24);
  v29 = v35;
  v30 = [v34 attributedSubstringFromRange_];
  [v28 insertAttributedString:v30 atIndex:*a7];

  [a5 mergeWithString_];
  result = (*(v15 + 8))(v18, v14);
  if (__OFADD__(*a7, v29))
  {
    __break(1u);
  }

  else
  {
    *a7 += v29;
  }

  return result;
}

uint64_t sub_215001D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_214D72488(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_214F302D4(v13, &qword_27CA42178, &qword_2150C6010);
}

void *Commands.defaultCommand()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_27CA41630 != -1)
  {
    swift_once();
  }

  v7 = off_27CA42E00;
  swift_beginAccess();
  v7[16] = 1;
  result = (*(*(a2 + 8) + 40))(&v14, MEMORY[0x277D84F90], a1);
  if (!v3)
  {
    sub_214F6163C(&v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A90, &qword_2150C8570);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A98, &qword_2150C8578);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      result = sub_214D7A458(&v14, a3);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      DynamicType = swift_getDynamicType();
      v10 = v16;
      v11 = *(v16 + 8);
      a3[3] = DynamicType;
      a3[4] = v10;
      __swift_allocate_boxed_opaque_existential_1(a3);
      v11(DynamicType, v10);
      result = __swift_destroy_boxed_opaque_existential_0(&v14);
    }
  }

  v7[16] = 0;
  return result;
}

uint64_t static Commands.command(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v66 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v20 = &v66 - v19;
  v21 = v15[2];
  if (v21)
  {
    v67 = v18;
    v68 = v17;
    v83 = v16;
    v78 = v15[4];
    v22 = v15[5];
    v70 = v15;
    sub_214F6E4D8(v15, (v15 + 4), 1, (2 * v21) | 1);
    v24 = v23;
    v25 = *(v23 + 16);
    v79 = v22;

    v74 = v3;
    v72 = v5;
    v71 = a3;
    v73 = v24;
    if (v25)
    {
      v26 = v83;
      v69 = sub_215002694(*(v24 + 32), *(v24 + 40));
    }

    else
    {
      v69 = 0;
      v26 = v83;
    }

    v35 = (*(v26 + 16))(a2, v26);
    if (sub_2150A4F80())
    {
      v36 = 0;
      v76 = (v8 + 16);
      v77 = (v8 + 32);
      v75 = (v8 + 8);
      while (1)
      {
        v37 = sub_2150A4F60();
        sub_2150A4F00();
        if (v37)
        {
          (*(v8 + 16))(v20, v35 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v36, a2);
          v38 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_16;
          }
        }

        else
        {
          result = sub_2150A5BB0();
          if (v67 != 8)
          {
            __break(1u);
            return result;
          }

          *&v82[0] = result;
          (*v76)(v20, v82, a2);
          swift_unknownObjectRelease();
          v38 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        v39 = *v77;
        (*v77)(v13, v20, a2);
        if (sub_215002704(v78, v79, a2, v83))
        {
          break;
        }

        (*v75)(v13, a2);
        ++v36;
        if (v38 == sub_2150A4F80())
        {
          goto LABEL_17;
        }
      }

      v56 = v72;
      (*(*(v83 + 8) + 40))(v82, v73, a2);
      if (v56)
      {

        if (v69)
        {

          v57 = v68;
          v39(v68, v13, a2);
          v59 = type metadata accessor for HelpCommand(0, a2, v83, v58);
          v60 = v71;
          v71[3] = v59;
          v60[4] = &off_282710EC8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
          return sub_214F8535C(v57, a2, boxed_opaque_existential_1);
        }

        else
        {
          swift_willThrow();
          return (*v75)(v13, a2);
        }
      }

      else
      {

        sub_214F6163C(v82, v81);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A90, &qword_2150C8570);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A98, &qword_2150C8578);
        if (swift_dynamicCast())
        {
          (*v75)(v13, a2);
          __swift_destroy_boxed_opaque_existential_0(v80);
          v62 = v71;
        }

        else
        {
          v62 = v71;
          if (v69)
          {
            __swift_destroy_boxed_opaque_existential_0(v82);
            v63 = v68;
            v39(v68, v13, a2);
            v62[3] = type metadata accessor for HelpCommand(0, a2, v83, v64);
            v62[4] = &off_282710EC8;
            v65 = __swift_allocate_boxed_opaque_existential_1(v62);
            return sub_214F8535C(v63, a2, v65);
          }

          (*v75)(v13, a2);
        }

        return sub_214D7A458(v82, v62);
      }
    }

    else
    {
LABEL_17:

      v40 = v83;
      v41 = v74;
      v42 = sub_215002694(v78, v79);

      if (v42)
      {
        sub_214F8B378();
        v44 = v43;
        v46 = v45;
        result = type metadata accessor for GroupHelpCommand(0, a2, v40, v47);
        v48 = v71;
        v71[3] = result;
        v48[4] = &off_2827110A8;
        *v48 = v44;
        *(v48 + 8) = v46 & 1;
      }

      else
      {
        google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v41);
        v50 = v49;
        v52 = v51;
        v54 = type metadata accessor for UnknownCommand(0, a2, v40, v53);
        v55 = v71;
        v71[3] = v54;
        v55[4] = &off_282710578;
        *v55 = v50;
        v55[1] = v52;
      }
    }
  }

  else
  {
    v27 = v16;
    sub_214F8B378();
    v28 = a3;
    v30 = v29;
    v32 = v31;
    result = type metadata accessor for GroupHelpCommand(0, a2, v27, v33);
    v28[3] = result;
    v28[4] = &off_2827110A8;
    *v28 = v30;
    *(v28 + 8) = v32 & 1;
  }

  return result;
}

BOOL sub_215002694(uint64_t a1, uint64_t a2)
{
  sub_214D6E6C4();
  v2 = sub_2150A58B0();

  return v2 == 0;
}

BOOL sub_215002704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 8) + 32))(a3);
  v4 = sub_2150A4D30();
  sub_214FBDA8C(v4, v5);

  sub_214D6E6C4();
  v6 = sub_2150A58B0();

  return v6 == 0;
}

uint64_t Commands.decode<A>(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v5 = a3;
  if (qword_27CA41630 != -1)
  {
    v7 = a1;
    v8 = a2;
    v10 = a4;
    v11 = a5;
    swift_once();
    a5 = v11;
    a4 = v10;
    a1 = v7;
    a2 = v8;
    v5 = a3;
  }

  return ArgumentDecoder.decode<A>(_:from:)(a1, a2, v5, *(a4 + 16), a5);
}

uint64_t NSFileManager.itemExists(at:)()
{
  v1 = swift_slowAlloc();
  sub_2150A3700();
  v2 = sub_2150A4A90();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:v1];

  if (v3)
  {
    if (*v1)
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

id NSFileManager.createDirectory(at:withIntermediateDirectories:)(uint64_t a1, char a2)
{
  v3 = v2;
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2150A36B0();
  v8[0] = 0;
  LODWORD(v3) = [v3 createDirectoryAtURL:v5 withIntermediateDirectories:a2 & 1 attributes:0 error:v8];

  if (v3)
  {
    return v8[0];
  }

  v7 = v8[0];
  sub_2150A35D0();

  return swift_willThrow();
}

void NSFileManager.url(for:)(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 URLForDirectory:a1 inDomain:1 appropriateForURL:0 create:1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = v2;
    sub_2150A36F0();
    v5 = v3;
  }

  else
  {
    v6 = v7[0];
    sub_2150A35D0();

    swift_willThrow();
  }
}

void NSFileManager.subdirectoriesOfDirectory(at:)()
{
  v2 = v0;
  v54 = *MEMORY[0x277D85DE8];
  v46 = sub_2150A3470();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2150A3750();
  v50 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v52 = &v38 - v12;
  v13 = sub_2150A36B0();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43AA0, &qword_2150C8588);
  v14 = swift_allocObject();
  v48 = xmmword_2150C25D0;
  *(v14 + 16) = xmmword_2150C25D0;
  v15 = *MEMORY[0x277CBE868];
  *(v14 + 32) = *MEMORY[0x277CBE868];
  type metadata accessor for URLResourceKey(0);
  v47 = v15;
  v16 = sub_2150A4EB0();

  v53 = 0;
  v17 = [v2 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:v16 options:0 error:&v53];

  v18 = v53;
  if (v17)
  {
    v51 = v7;
    v19 = sub_2150A4ED0();
    v20 = v18;

    v21 = v19;
    v45 = *(v19 + 16);
    if (v45)
    {
      v22 = 0;
      v42 = (v3 + 8);
      v43 = v50 + 16;
      v38 = (v50 + 32);
      v41 = (v50 + 8);
      v40 = MEMORY[0x277D84F90];
      v23 = v51;
      v44 = v21;
      while (1)
      {
        if (v22 >= *(v21 + 16))
        {
          __break(1u);
        }

        v24 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v25 = *(v50 + 72);
        (*(v50 + 16))(v52, v21 + v24 + v25 * v22, v23);
        inited = swift_initStackObject();
        *(inited + 16) = v48;
        v27 = v6;
        v28 = v47;
        *(inited + 32) = v47;
        v29 = v28;
        sub_214F80E70(inited);
        swift_setDeallocating();
        sub_215003364(inited + 32);
        sub_2150A3660();
        if (v1)
        {
          break;
        }

        v30 = sub_2150A3450();
        (*v42)(v6, v46);
        if (v30 == 2 || (v30 & 1) == 0)
        {
          v23 = v51;
          (*v41)(v52, v51);
        }

        else
        {
          v31 = *v38;
          v23 = v51;
          (*v38)(v39, v52, v51);
          v32 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53 = v32;
          if (isUniquelyReferenced_nonNull_native)
          {
            v34 = v32;
          }

          else
          {
            sub_214F86FCC(0, v32[2] + 1, 1);
            v23 = v51;
            v34 = v53;
          }

          v36 = v34[2];
          v35 = v34[3];
          if (v36 >= v35 >> 1)
          {
            sub_214F86FCC((v35 > 1), v36 + 1, 1);
            v23 = v51;
            v34 = v53;
          }

          v34[2] = v36 + 1;
          v40 = v34;
          v31(v34 + v24 + v36 * v25, v39, v23);
          v6 = v27;
        }

        ++v22;
        v21 = v44;
        if (v45 == v22)
        {
          goto LABEL_18;
        }
      }

      (*v41)(v52, v51);
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
LABEL_18:
    }
  }

  else
  {
    v37 = v53;
    sub_2150A35D0();

    swift_willThrow();
  }
}

id sub_2150030F4(uint64_t a1)
{
  v2 = v1;
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2150A36B0();
  v6[0] = 0;
  LODWORD(v2) = [v2 removeItemAtURL:v3 error:v6];

  if (v2)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_2150A35D0();

  return swift_willThrow();
}

id sub_2150031D0(uint64_t a1)
{
  v2 = v1;
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2150A36B0();
  v4 = sub_2150A36B0();
  v7[0] = 0;
  LODWORD(v2) = [v2 copyItemAtURL:v3 toURL:v4 error:v7];

  if (v2)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_2150A35D0();

  return swift_willThrow();
}

uint64_t sub_2150032B4()
{
  v1 = swift_slowAlloc();
  sub_2150A3700();
  v2 = sub_2150A4A90();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:v1];

  if (v3)
  {
    if (*v1)
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_215003364(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t FastSyncError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 > 3)
  {
    if (*(v0 + 32) > 5u)
    {
      v7 = *(v0 + 16);
      v6 = *(v0 + 24);
      if (v3 != 6)
      {
        if (!(v7 | v2 | v1 | v6))
        {
          return 0xD000000000000033;
        }

        v10 = v7 | v2 | v6;
        if (v1 == 1 && !v10)
        {
          return 0xD000000000000035;
        }

        if (v1 != 2 || v10)
        {
          return 0xD000000000000020;
        }

        return 0xD000000000000036;
      }

      v11 = 0;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0x7069636974726150, 0xEC00000020746E61);
      MEMORY[0x2160617E0](v1, v2);
      MEMORY[0x2160617E0](0xD000000000000023, 0x80000002150E6690);
      v4 = v7;
      v5 = v6;
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_12;
      }

      sub_2150A5B20();

      v11 = 0xD000000000000013;
      MEMORY[0x2160617E0](v1, v2);
      v4 = 0xD000000000000017;
      v5 = 0x80000002150E6710;
    }

LABEL_14:
    MEMORY[0x2160617E0](v4, v5);
    return v11;
  }

  if (*(v0 + 32) <= 1u)
  {
    if (*(v0 + 32))
    {
      sub_2150A5B20();

      v8 = 0xD000000000000020;
LABEL_13:
      v11 = v8;
      v4 = v1;
      v5 = v2;
      goto LABEL_14;
    }

LABEL_12:
    sub_2150A5B20();

    v8 = 0xD000000000000028;
    goto LABEL_13;
  }

  return v1;
}

unint64_t sub_215003804()
{
  result = qword_27CA43AA8;
  if (!qword_27CA43AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43AA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11NotesShared13FastSyncErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_215003898(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2150038E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_215003928(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t URL.init(stringLiteral:)@<X0>(uint64_t a4@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - v11;
  sub_2150A5B70();
  sub_2150A3720();

  sub_214F43C14(v12, v9, &qword_27CA41D40, &unk_2150C7230);
  v13 = sub_2150A3750();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    result = sub_214F302D4(v9, &qword_27CA41D40, &unk_2150C7230);
    __break(1u);
  }

  else
  {
    sub_214F302D4(v12, &qword_27CA41D40, &unk_2150C7230);
    return (*(v14 + 32))(a4, v9, v13);
  }

  return result;
}

uint64_t sub_215003AD8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v15 - v11;
  sub_2150A5B70();
  sub_2150A3720();

  sub_214F43C14(v12, v9, &qword_27CA41D40, &unk_2150C7230);
  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v9, 1, a2) == 1)
  {
    result = sub_214F302D4(v9, &qword_27CA41D40, &unk_2150C7230);
    __break(1u);
  }

  else
  {
    sub_214F302D4(v12, &qword_27CA41D40, &unk_2150C7230);
    return (*(v13 + 32))(a3, v9, a2);
  }

  return result;
}

uint64_t URL.fileSize.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43AB0, &qword_2150C8788);
  v2 = MEMORY[0x28223BE20](v0 - 8, v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43AA0, &qword_2150C8588);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  v9 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v10 = v9;
  sub_214F80E70(inited);
  swift_setDeallocating();
  sub_215003364(inited + 32);
  sub_2150A3660();

  v11 = sub_2150A3470();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v7, 0, 1, v11);
  sub_214F43C14(v7, v4, &qword_27CA43AB0, &qword_2150C8788);
  if ((*(v12 + 48))(v4, 1, v11) == 1)
  {
    sub_214F302D4(v7, &qword_27CA43AB0, &qword_2150C8788);
    sub_214F302D4(v4, &qword_27CA43AB0, &qword_2150C8788);
    return 0;
  }

  else
  {
    v14 = sub_2150A3460();
    sub_214F302D4(v7, &qword_27CA43AB0, &qword_2150C8788);
    (*(v12 + 8))(v4, v11);
    return v14;
  }
}

uint64_t URL.deletingFragment()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v33 - v9;
  sub_2150A3730();
  if (v11)
  {
    v12 = sub_2150A3650();
    v14 = v13;
    sub_2150A3650();
    v15 = sub_2150A4BC0();

    v16 = sub_2150A4BC0();

    v19 = v15 - v16;
    if (__OFSUB__(v15, v16))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v19, 1))
    {
      v20 = sub_2150238C4(v19 - 1, v12, v14);
      v22 = v21;
      v24 = v23;
      v26 = v25;

      MEMORY[0x216061730](v20, v22, v24, v26);

      sub_2150A3720();

      sub_214F43C14(v10, v7, &qword_27CA41D40, &unk_2150C7230);
      v27 = sub_2150A3750();
      v28 = *(v27 - 8);
      v29 = (*(v28 + 48))(v7, 1, v27);
      v17 = &qword_27CA41D40;
      v18 = &unk_2150C7230;
      if (v29 != 1)
      {
        sub_214F302D4(v10, &qword_27CA41D40, &unk_2150C7230);
        return (*(v28 + 32))(a1, v7, v27);
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    result = sub_214F302D4(v7, v17, v18);
    __break(1u);
    return result;
  }

  v31 = sub_2150A3750();
  v32 = *(*(v31 - 8) + 16);

  return v32(a1, v1, v31);
}

id sub_21500415C(void *a1)
{
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  v7 = a1;
  v8 = URL.fileSize.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = 0;
  if ((v10 & 1) == 0)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  return v11;
}

id NSURL.fileSize.getter()
{
  v0 = sub_2150A3750();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  v5 = URL.fileSize.getter();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = 0;
  if ((v7 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  return result;
}

uint64_t NSURL.deletingFragment()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  URL.deletingFragment()(a1);
  return (*(v3 + 8))(v6, v2);
}

id sub_215004460(uint64_t a1)
{
  v1 = sub_2150A3750();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  sub_2150A36F0();
  URL.deletingFragment()(v9);
  v10 = *(v2 + 8);
  v10(v6, v1);
  v11 = sub_2150A36B0();
  v10(v9, v1);

  return v11;
}

uint64_t sub_215004600(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2150A3750();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_215004674()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43AC8);
  v1 = __swift_project_value_buffer(v0, qword_27CA43AC8);
  if (qword_27CA415E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42B58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id ICFolder.smartFolderQuery.getter()
{
  v1 = v0;
  v2 = sub_2150A4B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 smartFolderQueryJSON];
  if (result)
  {
    v8 = result;
    sub_2150A4AD0();

    sub_2150A4B10();
    v9 = sub_2150A4AE0();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    if (v11 >> 60 == 15)
    {
      if (qword_27CA416A0 != -1)
      {
        swift_once();
      }

      v12 = sub_2150A3F30();
      __swift_project_value_buffer(v12, qword_27CA43AC8);
      v13 = sub_2150A3F10();
      v14 = sub_2150A5550();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_214D51000, v13, v14, "Could not create JSON data from smartFolderQueryJSON", v15, 2u);
        MEMORY[0x216064AF0](v15, -1, -1);
      }

      return 0;
    }

    else
    {
      sub_2150A2F80();
      swift_allocObject();
      sub_2150A2F70();
      type metadata accessor for ICQuery(0, v16);
      sub_215005A8C(&qword_27CA43AE0, &protocol conformance descriptor for ICQuery);
      sub_2150A2F60();

      sub_214FE1228(v9, v11);
      return v17[1];
    }
  }

  return result;
}

id ICFolder.smartFolderQuery.setter(void *a1)
{
  v2 = v1;
  v4 = sub_2150A4B20();
  MEMORY[0x28223BE20](v4 - 8, v5);
  if (a1)
  {
    sub_2150A2FE0();
    swift_allocObject();
    sub_2150A2FD0();
    type metadata accessor for ICQuery(0, v6);
    sub_215005A8C(&qword_27CA43AE8, &protocol conformance descriptor for ICQuery);
    v8 = sub_2150A2FC0();
    v10 = v9;
    sub_2150A4B10();
    sub_2150A4AF0();
    if (v11)
    {
      v12 = sub_2150A4A90();
    }

    else
    {
      v12 = 0;
    }

    [v2 setSmartFolderQueryJSON_];

    sub_214F7EDE4(v8, v10);
  }

  else
  {

    return [v1 setSmartFolderQueryJSON_];
  }
}

char *ICFolder.smartFolderDescription.getter()
{
  v1 = v0;
  if ([v0 isSmartFolder])
  {
    result = [v0 smartFolderQueryObjC];
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = OBJC_IVAR___ICQueryObjC_type;
    swift_beginAccess();
    v5 = *&v3[v4];
    v55[0] = v5;

    v57.value.super.isa = [v0 managedObjectContext];
    isa = v57.value.super.isa;
    ICQueryType.tagSelection(managedObjectContext:)(v7, v57);
    v9 = v8;

    v10 = [v9 tagIdentifiers];
    v11 = sub_2150A4ED0();

    v52 = v11;
    if (*(v11 + 16))
    {
      v12 = [v1 managedObjectContext];
      if (v12)
      {
        v49 = v12;
        v13 = [objc_opt_self() canonicalHashtagsInContext_];
        sub_214D55670(0, &qword_27CA43AF0, off_278192D00);
        v14 = sub_2150A4ED0();

        v56 = MEMORY[0x277D84F90];
        if (v14 >> 62)
        {
          goto LABEL_26;
        }

        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v50 = v5;
        for (i = v3; v15; i = v3)
        {
          v16 = 0;
          v53 = v14 & 0xFFFFFFFFFFFFFF8;
          v54 = v14 & 0xC000000000000001;
          while (1)
          {
            if (v54)
            {
              v17 = MEMORY[0x216062780](v16, v14);
            }

            else
            {
              if (v16 >= *(v53 + 16))
              {
                goto LABEL_25;
              }

              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            v5 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            v19 = [v17 standardizedContent];
            if (v19)
            {
              v3 = v15;
              v20 = v14;
              v21 = v19;
              v22 = sub_2150A4AD0();
              v24 = v23;

              v55[0] = v22;
              v55[1] = v24;
              MEMORY[0x28223BE20](v25, v26);
              v48[2] = v55;
              LOBYTE(v21) = sub_215068408(sub_214F73280, v48, v52);

              if (v21)
              {
                sub_2150A5CB0();
                sub_2150A5CF0();
                sub_2150A5D00();
                sub_2150A5CC0();
              }

              else
              {
              }

              v14 = v20;
              v15 = v3;
            }

            else
            {
            }

            ++v16;
            if (v5 == v15)
            {
              v27 = v56;
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          v15 = sub_2150A59D0();
          v50 = v5;
        }

        v27 = MEMORY[0x277D84F90];
LABEL_28:

        if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
        {
LABEL_49:
          v28 = sub_2150A59D0();
          if (v28)
          {
LABEL_31:
            v29 = 0;
            v30 = MEMORY[0x277D84F90];
            v31 = &selRef_dictionaryWithObjects_forKeys_count_;
            do
            {
              v32 = v29;
              while (1)
              {
                if ((v27 & 0xC000000000000001) != 0)
                {
                  v33 = MEMORY[0x216062780](v32, v27);
                }

                else
                {
                  if (v32 >= *(v27 + 16))
                  {
                    goto LABEL_48;
                  }

                  v33 = *(v27 + 8 * v32 + 32);
                }

                v34 = v33;
                v29 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  __break(1u);
LABEL_48:
                  __break(1u);
                  goto LABEL_49;
                }

                v35 = [v33 v31[41]];
                if (v35)
                {
                  break;
                }

                ++v32;
                if (v29 == v28)
                {
                  goto LABEL_51;
                }
              }

              v36 = v35;
              sub_2150A4AD0();

              v37 = sub_2150A4A90();

              v38 = v30;
              v39 = [v37 ic_withHashtagPrefix];

              v40 = sub_2150A4AD0();
              v42 = v41;

              v30 = v38;
              v43 = v40;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v30 = sub_21505F4D0(0, *(v30 + 2) + 1, 1, v30);
              }

              v45 = *(v30 + 2);
              v44 = *(v30 + 3);
              if (v45 >= v44 >> 1)
              {
                v30 = sub_21505F4D0((v44 > 1), v45 + 1, 1, v30);
              }

              *(v30 + 2) = v45 + 1;
              v46 = &v30[16 * v45];
              *(v46 + 4) = v43;
              *(v46 + 5) = v42;
              v31 = &selRef_dictionaryWithObjects_forKeys_count_;
            }

            while (v29 != v28);
            goto LABEL_51;
          }
        }

        else
        {
          v28 = *(v27 + 16);
          if (v28)
          {
            goto LABEL_31;
          }
        }

        v30 = MEMORY[0x277D84F90];
LABEL_51:

        v55[0] = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
        sub_214F86A40();
        v47 = sub_2150A4A20();

        return v47;
      }
    }
  }

  return 0;
}

id sub_215005340(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_2150A4A90();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *ICFolder.smartFolderShortDescription.getter()
{
  if ([v0 isSmartFolder])
  {
    result = [v0 smartFolderQueryObjC];
    if (!result)
    {
      return result;
    }

    v2 = result;
    swift_beginAccess();

    v17.value.super.isa = [v0 managedObjectContext];
    isa = v17.value.super.isa;
    ICQueryType.tagSelection(managedObjectContext:)(v4, v17);
    v6 = v5;

    if ([v6 isNonEmpty])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C25D0;
      v8 = [v6 selectedTagCount];
      v9 = MEMORY[0x277D83C10];
      *(inited + 56) = MEMORY[0x277D83B88];
      *(inited + 64) = v9;
      *(inited + 32) = v8;
      v10 = objc_opt_self();
      v11 = sub_2150A4A90();
      v12 = [v10 localizedFrameworkStringForKey:v11 value:0 table:0 allowSiri:0];

      v13 = sub_2150A4AD0();
      v15 = v14;

      v16 = sub_215005B28(inited, v13, v15);

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
      swift_arrayDestroy();
      return v16;
    }
  }

  return 0;
}

id static ICFolder.makeSmartFolder(with:titleComponents:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [swift_getObjCClassFromMetadata() newFolderInAccount_];
  [v5 setSmartFolderQueryObjC_];
  if (*(a2 + 16))
  {
    v6 = objc_opt_self();
    v7 = sub_2150A4EB0();
    v8 = [v6 objc:v7 defaultSmartFolderTitleWithComponents:?];

    [v5 setTitle_];
  }

  return v5;
}

id static ICFolder.makeSmartFolder(with:in:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_2150A4EB0();
  v6 = [ObjCClassFromMetadata objc:a1 smartFolderWithQuery:v5 titleComponents:a2 account:?];

  return v6;
}

id sub_215005914(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_2150A4A90();

  v7 = a3[3];
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8, v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_2150A6260();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFormat:v6 locale:v12 arguments:a4];

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_215005A8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ICQuery(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_215005AD0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2150A6270() & 1;
  }
}

uint64_t sub_215005B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2150A5DA0();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v5 = v4 + 3;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_26:
    v24 = sub_2150A5D90();
    sub_214D55670(0, &qword_27CA42350, 0x277CCACA8);
    v29[3] = sub_2150A3AC0();
    __swift_allocate_boxed_opaque_existential_1(v29);

    sub_2150A3A70();
    v25 = sub_215005914(a2, a3, v29, v24);
    v26 = sub_2150A4AD0();

    return v26;
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v8 + 40 * v7), *(v8 + 40 * v7 + 24));
    result = sub_2150A6570();
    v10 = *v5;
    v11 = *(result + 16);
    v12 = __OFADD__(*v5, v11);
    v13 = *v5 + v11;
    if (v12)
    {
      break;
    }

    v14 = v4[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v4[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v4[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v4[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_2150A5D80();
      result = v16;
LABEL_18:
      v18 = v4[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v5;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v5 + 1;
        if (__OFADD__(*v5, 1))
        {
          break;
        }

        *v5 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v7 == v6)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t _sSo8ICFolderC11NotesSharedE23defaultSmartFolderTitle10componentsSSSaySSG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 2)
  {
    v16 = a1;

    sub_214FB240C(&v16);
    v11 = v16;
    v12 = [objc_allocWithZone(MEMORY[0x277CCAAF0]) init];
    sub_2150680E0(v11);

    v13 = sub_2150A4EB0();

    v14 = [v12 stringFromItems_];

    if (v14)
    {
      v10 = sub_2150A4AD0();
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    v3 = MEMORY[0x277D83C10];
    *(inited + 56) = MEMORY[0x277D83B88];
    *(inited + 64) = v3;
    *(inited + 32) = v1;
    v4 = objc_opt_self();
    v5 = sub_2150A4A90();
    v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:0];

    v7 = sub_2150A4AD0();
    v9 = v8;

    v10 = sub_215005B28(inited, v7, v9);
    swift_bridgeObjectRelease_n();
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
    swift_arrayDestroy();
  }

  return v10;
}

Swift::Void __swiftcall ICHashtag.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = v1;
  v3 = [v1 displayText];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2150A4AD0();
    v7 = v6;

    sub_2150A4AD0();
    MEMORY[0x2160617E0](58, 0xE100000000000000);
    MEMORY[0x2160617E0](6775156, 0xE300000000000000);
    MEMORY[0x2160617E0](47, 0xE100000000000000);
    MEMORY[0x2160617E0](v5, v7);

    v8 = [v2 displayText];
    if (v8)
    {
      v9 = v8;
      sub_2150A4AD0();
    }

    sub_214F301C4(MEMORY[0x277D84F90]);
    sub_2150A5710();
  }

  else
  {
    __break(1u);
  }
}

Swift::String __swiftcall Duration.formattedTime(fractionalSeconds:)(Swift::Bool fractionalSeconds)
{
  v3 = v2;
  v4 = v1;
  v25[1] = fractionalSeconds;
  v5 = sub_2150A6240();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2150A65F0();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2150A6600();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v4;
  v28 = v3;
  v19 = sub_2150A6620();
  v20 = (v6 + 104);
  v21 = *MEMORY[0x277D84688];
  if (v19 >= 3600)
  {
    (*v20)(v9, v21, v5);
    sub_2150A65E0();
  }

  else
  {
    (*v20)(v9, v21, v5);
    sub_2150A65D0();
  }

  (*(v6 + 8))(v9, v5);
  sub_2150A2F50();
  (*(v10 + 8))(v13, v26);
  sub_215006470();
  sub_2150A6610();
  (*(v15 + 8))(v18, v14);
  v22 = v29;
  v23 = v30;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

unint64_t sub_215006470()
{
  result = qword_27CA43AF8;
  if (!qword_27CA43AF8)
  {
    sub_2150A6600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43AF8);
  }

  return result;
}

void sub_2150064C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2150A35C0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t NotesInvernessClient.Environments.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_215006544@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t NotesInvernessClient.localURLString.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICNotesInvernessClientObjc_localURLString);

  return v1;
}

uint64_t sub_215006640()
{
  v1 = *(v0 + OBJC_IVAR___ICNotesInvernessClientObjc_environment);
  if ((v1 - 1) >= 3)
  {
    result = sub_2150A63B0();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR___ICNotesInvernessClientObjc_container);
    v4 = v1 - 1;
    return sub_2150082A0(v2, &v4, *(v0 + OBJC_IVAR___ICNotesInvernessClientObjc_localURLString), *(v0 + OBJC_IVAR___ICNotesInvernessClientObjc_localURLString + 8));
  }

  return result;
}

id NotesInvernessClient.__allocating_init(container:environment:localURLString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___ICNotesInvernessClientObjc_container] = a1;
  *&v9[OBJC_IVAR___ICNotesInvernessClientObjc_environment] = a2;
  v10 = &v9[OBJC_IVAR___ICNotesInvernessClientObjc_localURLString];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id NotesInvernessClient.init(container:environment:localURLString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___ICNotesInvernessClientObjc_container] = a1;
  *&v4[OBJC_IVAR___ICNotesInvernessClientObjc_environment] = a2;
  v5 = &v4[OBJC_IVAR___ICNotesInvernessClientObjc_localURLString];
  *v5 = a3;
  *(v5 + 1) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for NotesInvernessClient();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_215006850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v29 = a8;
  v28 = a7;
  v30 = a14;
  v31 = a15;
  v27[2] = a11;
  v27[1] = a10;
  v27[0] = a9;
  v21 = type metadata accessor for MentionNotificationRequestV2(0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v28;
  v39 = v29;
  v40 = a9;
  v41 = a10;
  v42 = a11;
  v43 = a12;
  v44 = a13;
  sub_215007384(&qword_27CA432C8, type metadata accessor for MentionNotificationRequestV2, &protocol conformance descriptor for MentionNotificationRequestV2);
  sub_2150A3DB0();
  sub_215006640();
  v25 = swift_allocObject();
  *(v25 + 16) = v30;
  *(v25 + 24) = v31;

  sub_214FC97AC(v24, sub_215006CF8, v25);

  return sub_215008A3C(v24, type metadata accessor for MentionNotificationRequestV2);
}

void sub_215006A6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  *a1 = a2;
  a1[1] = a3;

  a1[2] = a4;
  a1[3] = a5;

  a1[4] = a6;
  a1[5] = a7;

  a1[6] = a8;
  a1[7] = a9;

  a1[8] = a10;
  a1[9] = a11;

  a1[10] = a12;
  a1[11] = a13;

  a1[12] = a14;
  a1[13] = a15;

  a1[14] = a16;
  a1[15] = a17;
}

void sub_215006BF8(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B30, &qword_2150C8988);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v9 - v6);
  sub_214F43C14(a1, &v9 - v6, &qword_27CA43B30, &qword_2150C8988);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
  }

  else
  {
    sub_214F302D4(v7, &qword_27CA43B30, &qword_2150C8988);
    v8 = 0;
  }

  a2(v8);
}

uint64_t sub_215007078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a6;
  v26 = a8;
  v28 = a12;
  v29 = a13;
  v25 = a9;
  updated = type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
  MEMORY[0x28223BE20](updated, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a7;
  v35 = v26;
  v36 = a5;
  v37 = v27;
  v38 = a9;
  v39 = a10;
  v40 = a11;
  sub_215007384(qword_280C23720, type metadata accessor for DidCompleteInstallOrUpdateRequest, &protocol conformance descriptor for DidCompleteInstallOrUpdateRequest);
  sub_2150A3DB0();
  sub_215006640();
  v23 = swift_allocObject();
  *(v23 + 16) = v28;
  *(v23 + 24) = v29;

  sub_214FC9984(v22, sub_215007714, v23);

  return sub_215008A3C(v22, type metadata accessor for DidCompleteInstallOrUpdateRequest);
}

uint64_t sub_215007248(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{

  *a1 = a2;
  a1[1] = a3;

  a1[2] = a4;
  a1[3] = a5;

  a1[6] = a6;
  a1[7] = a7;

  a1[4] = a8;
  a1[5] = a9;

  a1[8] = a10;
  a1[9] = a11;
  v19 = a1[10];
  v20 = a1[11];
  sub_214FCA120(a12, a13);
  result = sub_214F7EDE4(v19, v20);
  a1[10] = a12;
  a1[11] = a13;
  return result;
}

uint64_t sub_215007384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2150073CC(uint64_t a1, void (*a2)(void *, void, unint64_t, uint64_t), uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v4 = sub_2150A3BC0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v33 - v11;
  updated = type metadata accessor for DidCompleteInstallOrUpdateResponse(0);
  MEMORY[0x28223BE20](updated - 8, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B28, &qword_2150C8980);
  MEMORY[0x28223BE20](v17, v18);
  v20 = (&v33 - v19);
  sub_214F43C14(a1, &v33 - v19, &qword_27CA43B28, &qword_2150C8980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = v21;
    v36(v21, 0, 0xF000000000000000, 0);
  }

  else
  {
    sub_2150089D8(v20, v16);
    v34 = v16;
    v23 = *(v16 + 2);
    v40 = MEMORY[0x277D84F90];
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = sub_2150088F4();
      v28 = *(v5 + 16);
      v26 = v5 + 16;
      v27 = v28;
      v29 = (v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
      v38 = *(v26 + 56);
      v39 = v25;
      v37 = MEMORY[0x277D84F90];
      v28(v12, v29, v4);
      while (1)
      {
        v27(v9, v12, v4);
        v30 = sub_2150A5740();
        v31 = (*(v26 - 8))(v12, v4);
        if (v30)
        {
          MEMORY[0x216061A60](v31);
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v37 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2150A4F10();
          }

          sub_2150A4F70();
          v37 = v40;
        }

        v29 += v38;
        if (!--v24)
        {
          break;
        }

        v27(v12, v29, v4);
      }
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    v32 = v34;
    v36(0, *v34, v34[1], v37);

    sub_215008A3C(v32, type metadata accessor for DidCompleteInstallOrUpdateResponse);
  }
}

void sub_2150079E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = sub_2150A35C0();
  }

  else
  {
    v8 = 0;
  }

  if (a3 >> 60 == 15)
  {
    v9 = 0;
    if (a4)
    {
LABEL_6:
      sub_2150088F4();
      v10 = sub_2150A4EB0();
      goto LABEL_9;
    }
  }

  else
  {
    v9 = sub_2150A3790();
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_9:
  v11 = v10;
  (*(a5 + 16))(a5, v8, v9);
}

void sub_215007B60(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v11 = type metadata accessor for RunGarbageCollectorRequest(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && ([a1 isCancelled] & 1) != 0)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    a4();
    v15 = v24;
  }

  else
  {
    *v14 = xmmword_2150C8880;
    _s11NotesShared11PingRequestVACycfC_0();
    if (a3 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = a2;
    }

    v24 = a4;
    if (a3 >> 60 == 15)
    {
      v17 = 0xC000000000000000;
    }

    else
    {
      v17 = a3;
    }

    v18 = *v14;
    v19 = *(v14 + 1);
    sub_214FE1214(a2, a3);
    sub_214F7EDE4(v18, v19);
    *v14 = v16;
    *(v14 + 1) = v17;
    sub_215006640();
    v20 = swift_allocObject();
    v20[2] = v5;
    v20[3] = a1;
    v20[4] = v24;
    v20[5] = a5;
    v21 = v5;
    v22 = a1;

    sub_214FC9B5C(v14, sub_215008A9C, v20);

    sub_215008A3C(v14, type metadata accessor for RunGarbageCollectorRequest);
  }
}

void sub_215007D6C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v25[1] = a2;
  v9 = type metadata accessor for RunGarbageCollectorResponse(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B20, &qword_2150C8978);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = (v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v18);
  v20 = v25 - v19;
  sub_214F43C14(a1, v25 - v19, &qword_27CA43B20, &qword_2150C8978);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_215008844(v20, v12);
    v21 = *v12;
    v22 = v12[1];
    v23 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v23 != 2 || *(v21 + 16) == *(v21 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v23)
    {
      if (v21 == v21 >> 32)
      {
LABEL_11:
        sub_215008A3C(v12, type metadata accessor for RunGarbageCollectorResponse);
        sub_215008A3C(v20, type metadata accessor for RunGarbageCollectorResponse);
        goto LABEL_12;
      }
    }

    else if ((v22 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    sub_215007B60(a3, v21, v22, a4, a5);
    sub_215008A3C(v12, type metadata accessor for RunGarbageCollectorResponse);
    sub_215008A3C(v20, type metadata accessor for RunGarbageCollectorResponse);
    return;
  }

  sub_214F302D4(v20, &qword_27CA43B20, &qword_2150C8978);
LABEL_12:
  sub_214F43C14(a1, v17, &qword_27CA43B20, &qword_2150C8978);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v17;
  }

  else
  {
    sub_214F302D4(v17, &qword_27CA43B20, &qword_2150C8978);
    v24 = 0;
  }

  (a4)(v24);
}

id NotesInvernessClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotesInvernessClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesInvernessClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2150080C0()
{
  result = qword_27CA43B18;
  if (!qword_27CA43B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43B18);
  }

  return result;
}

uint64_t dispatch thunk of NotesInvernessClient.sendMentionNotification(recipientUserId:senderName:noteTitle:mentionSnippet:shareRecordName:shareOwnerUserId:noteRecordName:inlineAttachmentRecordName:callback:)()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x78);

  return v2();
}

uint64_t sub_2150082A0(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v24 - v8;
  v10 = sub_2150A3750();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2 + 1;
  if (*a2 == 1)
  {
    v16 = 6254687;
  }

  else
  {
    v16 = 6251615;
  }

  strcpy(v26, "NotesService");
  HIBYTE(v26[6]) = 0;
  v26[7] = -5120;
  MEMORY[0x2160617E0](v16, 0xE300000000000000);

  MEMORY[0x2160617E0](0x302E302E31, 0xE500000000000000);

  v17 = sub_2150A4A90();
  v18 = [a1 codeServiceWithName:v17 databaseScope:{2, v24, v25}];

  if (v15 != 3)
  {

    goto LABEL_8;
  }

  sub_2150A3720();
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {

    (*(v11 + 32))(v14, v9, v10);
    v19 = sub_2150A4A90();

    v20 = sub_2150A36B0();
    v21 = [a1 codeServiceWithName:v19 databaseScope:2 serviceInstanceURL:v20];

    (*(v11 + 8))(v14, v10);
    v18 = v21;
LABEL_8:
    type metadata accessor for NotesServiceAPIAsyncClient(0, v22);
    result = swift_allocObject();
    *(result + 16) = v18;
    return result;
  }

  sub_214F302D4(v9, &qword_27CA41D40, &unk_2150C7230);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

void sub_2150085D4(void *a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void))
{
  v10 = type metadata accessor for RunGarbageCollectorRequest(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  if (a1)
  {
    _Block_copy(a5);
    if ([a1 isCancelled])
    {
      v15 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
      v25 = sub_2150A35C0();
      a5[2](a5, v25);

      v16 = v25;

      return;
    }
  }

  else
  {
    _Block_copy(a5);
  }

  *v13 = xmmword_2150C8880;
  _s11NotesShared11PingRequestVACycfC_0();
  if (a3 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = a2;
  }

  if (a3 >> 60 == 15)
  {
    v18 = 0xC000000000000000;
  }

  else
  {
    v18 = a3;
  }

  v19 = *v13;
  v20 = *(v13 + 1);
  sub_214FE1214(a2, a3);
  sub_214F7EDE4(v19, v20);
  *v13 = v17;
  *(v13 + 1) = v18;
  sub_215006640();
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a1;
  v21[4] = sub_214FE2BD4;
  v21[5] = v14;
  v22 = a4;
  v23 = a1;

  sub_214FC9B5C(v13, sub_215008838, v21);

  sub_215008A3C(v13, type metadata accessor for RunGarbageCollectorRequest);
}

uint64_t sub_215008844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunGarbageCollectorResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2150088F4()
{
  result = qword_280C230F0;
  if (!qword_280C230F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C230F0);
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2150089D8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for DidCompleteInstallOrUpdateResponse(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_215008A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static NSBundle.sharedFramework.getter()
{
  v1 = ICSharedFrameworkBundleIdentifier();
  if (!v1)
  {
    sub_2150A4AD0();
    v1 = sub_2150A4A90();
  }

  v2 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  v3 = v0;
  if (!v2)
  {
    v3 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  v5[0] = v2;
  v5[3] = v3;
  castOrFatalError<A>(_:as:)(v5, v0, v0, &v6);
  sub_214FBC238(v5);
  return v6;
}

void ICQueryEntity.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_2150A5EE0();

  *a3 = v4 != 0;
}

unint64_t sub_215008C00()
{
  result = qword_27CA43B38;
  if (!qword_27CA43B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43B38);
  }

  return result;
}

uint64_t sub_215008C54()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_215008CB0()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

void sub_215008CF8(BOOL *a2@<X8>)
{
  v3 = sub_2150A5EE0();

  *a2 = v3 != 0;
}

unint64_t sub_215008E20()
{
  result = qword_27CA43B40;
  if (!qword_27CA43B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43B40);
  }

  return result;
}

uint64_t sub_215008E74(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();

  return swift_continuation_throwingResume();
}

uint64_t static ICPaperAttachmentCreationHelper.copyNewPaperBundle(to:from:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_2150A3750();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v3[21] = *(v5 + 64);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215009018, 0, 0);
}

uint64_t sub_215009018()
{
  v1 = sub_215009674(*(v0 + 192), *(v0 + 128));
  *(v0 + 208) = v1;
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 152);
  v16 = *(v0 + 136);
  v17 = *(v0 + 168);
  v19 = *(v4 + 32);
  v6 = *(v0 + 200);
  v19();
  v18 = [objc_opt_self() ic_fileCoordinationOperationQueue];
  *(v0 + 216) = v18;
  v7 = *(v4 + 16);
  v7(v3, v16, v5);
  v7(v2, v6, v5);
  v8 = *(v4 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = (v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + v10 + 8) & ~v8;
  v12 = swift_allocObject();
  *(v0 + 224) = v12;
  (v19)(v12 + v9, v3, v5);
  *(v12 + v10) = v1;
  (v19)(v12 + v11, v2, v5);
  v13 = v1;
  v14 = v18;

  return MEMORY[0x2822009F8](sub_215009244, 0, 0);
}

uint64_t sub_215009244()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v7 = v0 + 27;
  v6 = v0[27];
  v5 = v7[1];
  v1[2] = v2;
  v1[3] = sub_2150093AC;
  v8 = swift_continuation_init();
  v9 = swift_allocObject();
  v9[2] = sub_215009984;
  v9[3] = v5;
  v9[4] = v8;
  v1[14] = sub_215009A2C;
  v1[15] = v9;
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_214F44018;
  v1[13] = &block_descriptor_12;
  v10 = _Block_copy(v4);

  [v6 addOperationWithBlock_];
  _Block_release(v10);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_2150093AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 232) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_215009598;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_2150094E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2150094E0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_215009598(uint64_t a1)
{
  v3 = v1[26];
  v2 = v1[27];
  v4 = v1[25];
  v5 = v1[19];
  v6 = v1[20];
  swift_willThrow();

  (*(v6 + 8))(v4, v5);

  v7 = v1[1];

  return v7();
}

id sub_215009674(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 paperBundleModel];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 paperBundleURL];

    sub_2150A36F0();
    (*(v7 + 32))(a1, v10, v6);
    v14 = type metadata accessor for ICSystemPaperDocument();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] = a2;
    v23.receiver = v15;
    v23.super_class = v14;
    v16 = a2;
    v17 = objc_msgSendSuper2(&v23, sel_init);
    v18 = [*&v17[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] managedObjectContext];
    if (v18 && (v20 = v18, MEMORY[0x28223BE20](v18, v19), *(&v23 - 2) = v17, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500, &qword_2150C94E0), sub_2150A56D0(), v20, (v3 = v24) != 0))
    {
    }

    else
    {
      v3 = v16;
      sub_21507C17C(2, v3);

      swift_willThrow();
      (*(v7 + 8))(a1, v6);
    }
  }

  else
  {
    v21 = a2;
    sub_21507C17C(1, v21);

    swift_willThrow();
  }

  return v3;
}

void sub_215009904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0, &qword_2150C4DE0);
  sub_2150A4710();
  if (!v3)
  {
  }
}

void sub_215009984()
{
  v1 = *(sub_2150A3750() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_215009904(v0 + v3, *(v0 + v4), v0 + ((v2 + v4 + 8) & ~v2));
}

uint64_t sub_215009BC4(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a1;
  v7 = sub_2150A3750();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[5] = v8;
  v4[6] = _Block_copy(a3);
  sub_2150A36F0();
  swift_getObjCClassMetadata();
  v9 = a1;
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = sub_215009D0C;

  return static ICPaperAttachmentCreationHelper.copyNewPaperBundle(to:from:)(v9, v8);
}

uint64_t sub_215009D0C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  if (v2)
  {
    if (v4)
    {
      v10 = *(v3 + 48);
      v11 = sub_2150A35C0();

      (v10)[2](v10, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v12 = *(v3 + 48);
    v12[2](v12, 0);
    _Block_release(v12);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t static ICPaperAttachmentCreationHelper.createPaperDocument(for:fromLegacyMediaAt:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B48, &qword_2150C8AB0);
  v3[20] = swift_task_alloc();
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230) - 8);
  v3[21] = v4;
  v3[22] = *(v4 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = sub_2150A3750();
  v3[25] = v5;
  v6 = *(v5 - 8);
  v3[26] = v6;
  v3[27] = *(v6 + 64);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21500A0B0, 0, 0);
}

uint64_t sub_21500A0B0()
{
  v1 = [*(v0 + 128) managedObjectContext];
  v2 = *(v0 + 160);
  if (!v1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B50, &qword_2150C8AB8);
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    goto LABEL_5;
  }

  v3 = v1;
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  sub_2150A56D0();
  v8 = *(v0 + 160);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B50, &qword_2150C8AB8);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  if (v10 == 1)
  {
LABEL_5:
    sub_214F302D4(*(v0 + 160), &qword_27CA43B48, &qword_2150C8AB0);

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  v30 = v13;
  v32 = *(v0 + 224);
  v33 = *(v0 + 216);
  v16 = *(v0 + 200);
  v15 = *(v0 + 208);
  v17 = *(v0 + 192);
  v34 = *(v0 + 168);
  v18 = *(v0 + 160);
  v37 = *(v18 + *(v9 + 48));
  v38 = *(v0 + 184);
  v36 = *(v0 + 144);
  v31 = *(v0 + 136);
  *(v0 + 248) = v37;
  v19 = *(v9 + 64);
  v20 = *(v15 + 32);
  v20(v14, v18, v16);
  sub_214F48094(v18 + v19, v17);
  v35 = [objc_opt_self() ic_fileCoordinationOperationQueue];
  *(v0 + 256) = v35;
  v21 = *(v15 + 16);
  v21(v13, v14, v16);
  v21(v32, v31, v16);
  sub_214FE4C9C(v17, v38);
  v22 = *(v15 + 80);
  v23 = (v22 + 24) & ~v22;
  v24 = (v33 + v22 + v23) & ~v22;
  v25 = (v33 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v34 + 80) + v25 + 8) & ~*(v34 + 80);
  v27 = swift_allocObject();
  *(v0 + 264) = v27;
  *(v27 + 16) = v36;
  v20(v27 + v23, v30, v16);
  v20(v27 + v24, v32, v16);
  *(v27 + v25) = v37;
  sub_214F48094(v38, v27 + v26);
  v28 = v37;
  v29 = v35;

  return MEMORY[0x2822009F8](sub_21500A4D4, 0, 0);
}

uint64_t sub_21500A4D4()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v7 = v0 + 32;
  v6 = v0[32];
  v5 = v7[1];
  v1[2] = v2;
  v1[3] = sub_21500A63C;
  v8 = swift_continuation_init();
  v9 = swift_allocObject();
  v9[2] = sub_21500AC10;
  v9[3] = v5;
  v9[4] = v8;
  v1[14] = sub_21500CAE0;
  v1[15] = v9;
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_214F44018;
  v1[13] = &block_descriptor_15;
  v10 = _Block_copy(v4);

  [v6 addOperationWithBlock_];
  _Block_release(v10);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21500A63C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 272) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_21500A858;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_21500A770;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21500A770()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);

  sub_214F302D4(v4, &qword_27CA41D40, &unk_2150C7230);
  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21500A858(uint64_t a1)
{
  v3 = v1[31];
  v2 = v1[32];
  v4 = v1[30];
  v5 = v1[25];
  v6 = v1[26];
  v7 = v1[24];
  swift_willThrow();

  sub_214F302D4(v7, &qword_27CA41D40, &unk_2150C7230);
  (*(v6 + 8))(v4, v5);

  v8 = v1[1];

  return v8();
}

id sub_21500A970@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - v10;
  v12 = sub_2150A3750();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v30 - v19;
  result = sub_215009674(v17, a1);
  if (!v2)
  {
    v22 = result;
    v30[0] = *(v13 + 32);
    v30[1] = 0;
    (v30[0])(v20, v17, v12);
    v23 = [a1 fallbackPDFURL];
    if (v23)
    {
      v24 = v23;
      sub_2150A36F0();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = v31;
    (*(v13 + 56))(v8, v25, 1, v12);
    sub_214F48094(v8, v11);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B50, &qword_2150C8AB8);
    v28 = *(v27 + 48);
    v29 = *(v27 + 64);
    (v30[0])(v26, v20, v12);
    *(v26 + v28) = v22;
    sub_214F48094(v11, v26 + v29);
    return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  return result;
}

uint64_t sub_21500AC10()
{
  v1 = *(sub_2150A3750() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230) - 8);
  return sub_21500C06C(v0 + v4, v0 + v5, *(v0 + v6), v0 + ((*(v7 + 80) + v6 + 8) & ~*(v7 + 80)));
}

uint64_t sub_21500AE90(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a1;
  v7 = sub_2150A3750();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[5] = v8;
  v4[6] = _Block_copy(a3);
  sub_2150A36F0();
  swift_getObjCClassMetadata();
  v9 = a1;
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = sub_21500CAD8;

  return static ICPaperAttachmentCreationHelper.createPaperDocument(for:fromLegacyMediaAt:)(v9, v8);
}

id static ICPaperAttachmentCreationHelper.createPaperDocument(for:fromLegacyMediaAt:)(void *a1, uint64_t a2)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - v6;
  v8 = sub_2150A3750();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v23 - v15;
  result = sub_215009674(v13, a1);
  if (!v2)
  {
    v18 = result;
    v24 = 0;
    (*(v9 + 32))(v16, v13, v8);
    v19 = [a1 managedObjectContext];
    if (v19)
    {
      v21 = v19;
      MEMORY[0x28223BE20](v19, v20);
      *(&v23 - 2) = a1;
      v22 = v24;
      sub_2150A56D0();
      v24 = v22;
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    sub_21500C06C(v16, v25, v18, v7);

    sub_214F302D4(v7, &qword_27CA41D40, &unk_2150C7230);
    return (*(v9 + 8))(v16, v8);
  }

  return result;
}

uint64_t sub_21500B244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 fallbackPDFURL];
  if (v3)
  {
    v4 = v3;
    sub_2150A36F0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2150A3750();
  return (*(*(v6 - 8) + 56))(a2, v5, 1, v6);
}

id static ICPaperAttachmentCreationHelper.createSystemPaperAttachment(with:in:)(uint64_t a1, void *a2)
{
  v27[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0, &unk_2150C7220);
  v27[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v27 - v5;
  v7 = sub_2150A3750();
  v28 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v29 = v27 - v13;
  v14 = sub_2150A3A00();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v15 + 8))(v18, v14);
  v19 = sub_2150A4A90();

  v20 = [a2 addSystemPaperAttachmentWithIdentifier_];

  v21 = sub_215009674(v11, v20);
  v30 = v3;
  (*(v28 + 32))(v29, v11, v7);
  sub_2150A45B0();
  sub_2150A48D0();
  v22 = sub_2150A4590();
  sub_2150A4830();
  v23 = objc_opt_self();
  v24 = [v23 sharedState];
  [v24 beginBlockingDeauthentication];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0, &qword_2150C4DE0);
  sub_2150A4750();
  v26 = [v23 sharedState];
  [v26 endBlockingDeauthentication];

  (*(v27[0] + 8))(v6, v30);
  (*(v28 + 8))(v29, v7);
  return v20;
}

ICPaperAttachmentCreationHelper __swiftcall ICPaperAttachmentCreationHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_21500BB9C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v4 = sub_2150A3750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B60, &unk_2150C8B00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = *(v5 + 16);
  v22 = a2;
  v13(v8, a2, v4);

  sub_2150A4840();
  sub_2150A4510();
  v14 = sub_2150A4550();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(v21, v12, v14);
  }

  sub_214F302D4(v12, &qword_27CA43B60, &unk_2150C8B00);
  type metadata accessor for ICPaperDocumentError(0);
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48, &unk_2150C2B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = sub_2150A4AD0();
  *(inited + 40) = v17;
  *(inited + 72) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  v13(boxed_opaque_existential_1, v22, v4);
  sub_214FA4BBC(inited);
  swift_setDeallocating();
  sub_214F302D4(inited + 32, &qword_27CA41D60, &unk_2150C5450);
  sub_21500CA8C(&qword_27CA41B88, type metadata accessor for ICPaperDocumentError, &unk_2150C2448);
  sub_2150A35B0();
  return swift_willThrow();
}

void sub_21500BE8C()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = sub_2150A36B0();
  v3 = sub_2150A36B0();
  v14[0] = 0;
  v4 = [v1 linkItemAtURL:v2 toURL:v3 error:v14];

  if (v4)
  {
    v5 = v14[0];
  }

  else
  {
    v6 = v14[0];
    v7 = sub_2150A35D0();

    swift_willThrow();
    v8 = [v0 defaultManager];
    v9 = sub_2150A36B0();
    v10 = sub_2150A36B0();
    v14[0] = 0;
    v11 = [v8 copyItemAtURL:v9 toURL:v10 error:v14];

    if (v11)
    {
      v12 = v14[0];
    }

    else
    {
      v13 = v14[0];
      sub_2150A35D0();

      swift_willThrow();
    }
  }
}

uint64_t sub_21500C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v39 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v32 - v8;
  v10 = sub_2150A3750();
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2150A48B0();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548, &unk_2150C7280);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v32 - v19;
  sub_2150A48A0();
  v40 = a2;
  v41 = a3;
  v38 = a3;
  sub_2150A4550();
  sub_21500CA8C(&qword_27CA435D0, MEMORY[0x277CD94D0], MEMORY[0x277CD94C8]);
  v21 = v42;
  result = sub_2150A47F0();
  if (!v21)
  {
    v32 = v13;
    v33 = v9;
    v34 = v10;
    v35 = v17;
    v23 = v37;
    v42 = v16;
    v24 = objc_opt_self();
    v25 = [v24 sharedState];
    [v25 beginBlockingDeauthentication];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436A8, &qword_2150C7660);
    sub_2150A4750();
    v26 = [v24 sharedState];
    [v26 endBlockingDeauthentication];

    v27 = v33;
    sub_214FE4C9C(v36, v33);
    v28 = v34;
    if ((*(v23 + 48))(v27, 1, v34) == 1)
    {
      (*(v35 + 8))(v20, v42);
      return sub_214F302D4(v27, &qword_27CA41D40, &unk_2150C7230);
    }

    else
    {
      v29 = v32;
      (*(v23 + 32))(v32, v27, v28);
      sub_21500BE8C();
      v30 = v42;
      v31 = v35;
      (*(v23 + 8))(v29, v28);
      return (*(v31 + 8))(v20, v30);
    }
  }

  return result;
}

uint64_t sub_21500C610()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_214F557A8;

  return sub_21500AE90(v2, v3, v5, v4);
}

uint64_t sub_21500C6D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_214F557A8;

  return sub_2150175CC(v2, v3, v4);
}

uint64_t sub_21500C790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214F557A8;

  return sub_2150176B4(a1, v4, v5, v6);
}

uint64_t objectdestroy_18Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21500C8A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_214F557A8;

  return sub_215009BC4(v2, v3, v5, v4);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21500C9A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214F53FB0;

  return sub_2150176B4(a1, v4, v5, v6);
}

uint64_t sub_21500CA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NotesShared::TableFormat::Formats_optional sub_21500CAE4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = TableFormat.Formats.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t ArgumentDecodable<>.init(fromArgument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v40 = a2;
  v41 = a6;
  v10 = sub_2150A57E0();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v39 = &v35 - v12;
  v38 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_2150A57E0();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v35 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x28223BE20](v17, v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v35 - v26;
  (*(a5 + 24))(a1, v40, AssociatedTypeWitness, a5);
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v19, v14);
    v28 = *(a3 - 8);
  }

  else
  {
    (*(v20 + 32))(v27, v19, AssociatedTypeWitness);
    (*(v20 + 16))(v24, v27, AssociatedTypeWitness);
    v29 = v39;
    sub_2150A4E00();
    (*(v20 + 8))(v27, AssociatedTypeWitness);
    v28 = *(a3 - 8);
    v30 = v28;
    if (!(*(v28 + 48))(v29, 1, a3))
    {
      v34 = v41;
      (*(v28 + 32))(v41, v29, a3);
      v32 = v34;
      v31 = 0;
      return (*(v30 + 56))(v32, v31, 1, a3);
    }

    (*(v36 + 8))(v29, v37);
  }

  v30 = v28;
  v31 = 1;
  v32 = v41;
  return (*(v30 + 56))(v32, v31, 1, a3);
}

uint64_t static ArgumentDecodable<>.typeSummary(forName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v16 = &v26[-v15];
  sub_2150A5B40();
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = sub_214F86288(sub_21500EEDC, v26, AssociatedTypeWitness, MEMORY[0x277D837D0], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v18);
  (*(v13 + 8))(v16, AssociatedTypeWitness);
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  sub_2150118F0(&qword_280C24540, MEMORY[0x277D83958]);
  v20 = sub_2150A4A20();
  v22 = v21;

  v35 = 0;
  v36 = 0xE000000000000000;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v32 = 0;
  v23 = sub_2150A6100();
  MEMORY[0x2160617E0](v23);

  sub_2150A49F0();
  v35 = v33;
  v36 = v34;
  MEMORY[0x2160617E0](40, 0xE100000000000000);
  MEMORY[0x2160617E0](v20, v22);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v32 = 0;
  v24 = sub_2150A6100();
  MEMORY[0x2160617E0](v24);

  sub_2150A49F0();
  MEMORY[0x2160617E0](v33, v34);

  return v35;
}

uint64_t sub_21500D250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = _sSb11NotesSharedE12fromArgumentSbSgSS_tcfC_0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21500D298@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

Swift::Int_optional __swiftcall Int.init(fromArgument:)(Swift::String fromArgument)
{
  v1 = sub_2150100FC(fromArgument._countAndFlagsBits, fromArgument._object);
  v3 = v2 & 1;
  result.value = v1;
  result.is_nil = v3;
  return result;
}

void __swiftcall Float.init(fromArgument:)(Swift::Float_optional *__return_ptr retstr, Swift::String fromArgument)
{
  v2 = 0;
  sub_21500FA00(fromArgument._countAndFlagsBits, fromArgument._object, &v2, MEMORY[0x277D84FB0], sub_215011C1C);
}

void sub_21500D448(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  v4 = sub_21500FA00(a1, a2, &v6, MEMORY[0x277D84FB0], sub_215011C1C);

  v5 = v6;
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 4) = (v4 & 1) == 0;
}

Swift::Double_optional __swiftcall Double.init(fromArgument:)(Swift::String fromArgument)
{
  v4 = 0;
  v1 = sub_21500FA00(fromArgument._countAndFlagsBits, fromArgument._object, &v4, MEMORY[0x277D84FA8], sub_215011BF0);

  v3 = (v1 & 1) != 0 && v4;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

void sub_21500D5C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  v4 = sub_21500FA00(a1, a2, &v6, MEMORY[0x277D84FA8], sub_215011BF0);

  v5 = v6;
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = (v4 & 1) == 0;
}

uint64_t Data.init(fromArgument:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A3770();
  v4 = v3;
  sub_214FE1214(v2, v3);

  if (v4 >> 60 != 15)
  {
    sub_214FE1228(v2, v4);
  }

  return v2;
}

double sub_21500D720@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2150C8880;
  return result;
}

void sub_21500D730(uint64_t *a3@<X8>)
{
  v4 = sub_2150A3770();
  v6 = v5;
  sub_214FE1214(v4, v5);

  if (v6 >> 60 != 15)
  {
    sub_214FE1228(v4, v6);
  }

  *a3 = v4;
  a3[1] = v6;
}

uint64_t Date.init(fromArgument:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v46 = a3;
  v42 = sub_2150A37E0();
  MEMORY[0x28223BE20](v42, v5);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2150A38D0();
  MEMORY[0x28223BE20](v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v44 = &v40 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v41 = &v40 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v40 - v20;
  v22 = sub_2150A3960();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v28 = sub_2150A4B40();
  v29 = v27;
  if (v28 == 1953718640 && v27 == 0xE400000000000000 || (sub_2150A6270() & 1) != 0)
  {

    sub_2150A37F0();
    goto LABEL_5;
  }

  if (v28 == 7827310 && v29 == 0xE300000000000000 || (sub_2150A6270() & 1) != 0)
  {

    _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
    goto LABEL_5;
  }

  if (v28 == 0x657275747566 && v29 == 0xE600000000000000)
  {

LABEL_15:

    sub_2150A3860();
    goto LABEL_5;
  }

  v32 = sub_2150A6270();

  if (v32)
  {
    goto LABEL_15;
  }

  v47 = v45;
  v48 = a2;

  MEMORY[0x21605FD00](v33);
  sub_215011A70(&qword_27CA43B68, MEMORY[0x277CC94A0], MEMORY[0x277CC9498]);
  sub_2150A3970();
  v34 = v44;
  v35 = v41;
  v36 = *(v23 + 56);
  v37 = v36(v21, 0, 1, v22);
  v47 = v45;
  v48 = a2;
  MEMORY[0x21605FCF0](v37);
  sub_215011A70(&qword_27CA43B70, MEMORY[0x277CC9428], MEMORY[0x277CC9418]);
  sub_2150A3970();
  v38 = v43;
  v36(v35, 0, 1, v22);
  sub_214F71500(v21, v38);
  v39 = *(v23 + 48);
  if (v39(v38, 1, v22) == 1)
  {
    sub_214F71500(v35, v34);
    if (v39(v38, 1, v22) != 1)
    {
      sub_214F302D4(v38, &qword_27CA41DD0, &unk_2150C2740);
    }
  }

  else
  {
    sub_214F302D4(v35, &qword_27CA41DD0, &unk_2150C2740);
    (*(v23 + 32))(v34, v38, v22);
    v36(v34, 0, 1, v22);
  }

  if (v39(v34, 1, v22) == 1)
  {
    sub_214F302D4(v34, &qword_27CA41DD0, &unk_2150C2740);
    return v36(v46, 1, 1, v22);
  }

  (*(v23 + 32))(v26, v34, v22);
LABEL_5:
  v30 = v46;
  (*(v23 + 32))(v46, v26, v22);
  return (*(v23 + 56))(v30, 0, 1, v22);
}

uint64_t sub_21500DEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t (*a6)(void, __n128)@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v22 - v16;
  a5(a1, a2);

  v18 = (a6)(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18))
  {
    sub_214F302D4(v17, a3, a4);
    v20 = 1;
  }

  else
  {
    (*(v19 + 32))(a7, v17, v18);
    v20 = 0;
  }

  return (*(v19 + 56))(a7, v20, 1, v18);
}

uint64_t sub_21500E0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, void (*a6)(uint64_t, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v21 - v16;
  a6(a1, a2);

  v18 = *(a3 - 8);
  if ((*(v18 + 48))(v17, 1, a3))
  {
    sub_214F302D4(v17, a4, a5);
    v19 = 1;
  }

  else
  {
    (*(v18 + 32))(a7, v17, a3);
    v19 = 0;
  }

  return (*(v18 + 56))(a7, v19, 1, a3);
}

uint64_t Optional<A>.init(fromArgument:)@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(a2 + 24))();
  v4 = sub_2150A57E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t Array<A>.init(fromArgument:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277D84F90];
  v7 = sub_214FA4CEC(MEMORY[0x277D84F90]);
  type metadata accessor for ArgumentDecoder.Decoder(0, v8);
  inited = swift_initStackObject();
  *(inited + 40) = v6;
  *(inited + 48) = sub_214FA4E00(v6);
  *(inited + 16) = v6;
  *(inited + 24) = v7;
  *(inited + 32) = 0;

  sub_214FA5CE8(v10, v6, a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  sub_2150118F0(&qword_27CA43B78, MEMORY[0x277D83970]);
  v11 = sub_2150A4D80();

  swift_setDeallocating();

  return v11;
}

uint64_t sub_21500E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(a4 + 32))(a1, a2);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v9 = sub_2150A6100();
  MEMORY[0x2160617E0](v9);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](a6, a7);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return v12;
}

uint64_t sub_21500E664@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array<A>.defaultArgument.getter(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_21500E690@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.init(fromArgument:)(a1, a2, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t static Set<>.defaultArgument.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2150A4F40();
  if (sub_2150A4F80())
  {
    v6 = sub_2150103FC(v5, a1, a3);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t Set<>.init(fromArgument:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = Array<A>.init(fromArgument:)(a1, a2, a3, a4);
  if (result)
  {
    sub_2150A4FD0();
    swift_getWitnessTable();
    return sub_2150A5340();
  }

  return result;
}

uint64_t sub_21500E7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = static Set<>.defaultArgument.getter(*(a1 + 16), a2, *(a1 + 24));
  *a3 = result;
  return result;
}

uint64_t sub_21500E7F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Set<>.init(fromArgument:)(a1, a2, *(a3 + 16), *(a4 - 8), *(a3 + 24));
  *a5 = result;
  return result;
}

uint64_t static ArgumentDecodable<>.defaultArgument.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v9 = sub_2150A57E0();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - v16;
  (*(a3 + 16))(AssociatedTypeWitness, a3);
  sub_2150A4E00();
  (*(v10 + 16))(v14, v17, v9);
  v18 = *(a1 - 8);
  v19 = (*(v18 + 48))(v14, 1, a1);
  v20 = *(v10 + 8);
  if (v19 == 1)
  {
    result = v20(v14, v9);
    __break(1u);
  }

  else
  {
    v20(v17, v9);
    return (*(v18 + 32))(a4, v14, a1);
  }

  return result;
}

uint64_t sub_21500EA78(char a1)
{
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A5DB0();

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v2 = sub_2150A6100();
  MEMORY[0x2160617E0](v2);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return 0;
}

void sub_21500EC7C(uint64_t a1@<X0>, void *a4@<X8>)
{
  v14 = a4;
  v13[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v6);
  v8 = v13 - v7;
  v17 = 0;
  v18 = 0xE000000000000000;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v19 = 35;
  v9 = sub_2150A6100();
  MEMORY[0x2160617E0](v9);

  sub_2150A49F0();
  MEMORY[0x2160617E0](v15, v16);

  sub_2150A4DF0();
  sub_2150A6250();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v19 = 0;
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  sub_2150A49F0();
  MEMORY[0x2160617E0](v15, v16);

  v11 = v18;
  v12 = v14;
  *v14 = v17;
  v12[1] = v11;
}

void *sub_21500EF04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42300, &unk_2150C3870);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_21500EF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_2150A4D30();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21500F504(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_2150A5C80();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_21500F504(uint64_t a1, unint64_t a2)
{
  v2 = sub_2150A4D40();
  v6 = sub_21500F584(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21500F584(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2150A5820();
    if (!v9 || (v10 = v9, v11 = sub_21500EF04(v9, 0), v12 = sub_21500F6DC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2150A4BA0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2150A4BA0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2150A5C80();
LABEL_4:

  return sub_2150A4BA0();
}

unint64_t sub_21500F6DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21500F8FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2150A4C80();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2150A5C80();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21500F8FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2150A4C60();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_21500F8FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2150A4CC0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x216061830](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_21500FA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v6 = v11;
LABEL_11:
        v9 = a4(v6, a3);
        if (v9)
        {
          return (*v9 == 0);
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 >= 0x21 || ((0x100003E01uLL >> v7) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_2150A5AF0();
  if (!v5)
  {
    return v12;
  }

  return v8;
}

uint64_t _sSS11NotesSharedE11typeSummary7forNameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  sub_2150A5B20();
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v4 = sub_2150A6100();
  MEMORY[0x2160617E0](v4);

  sub_2150A49F0();

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](60, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v7 = sub_2150A6100();
  MEMORY[0x2160617E0](v7);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](a1, a2);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v8 = sub_2150A6100();
  MEMORY[0x2160617E0](v8);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v9 = sub_2150A6100();
  MEMORY[0x2160617E0](v9);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](62, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return 0;
}

uint64_t _sSb11NotesSharedE12fromArgumentSbSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A4B40();
  v4 = v3;

  if (v2 == 7562617 && v4 == 0xE300000000000000 || (sub_2150A6270() & 1) != 0 || v2 == 1702195828 && v4 == 0xE400000000000000 || (sub_2150A6270() & 1) != 0 || v2 == 49 && v4 == 0xE100000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (v2 == 28526 && v4 == 0xE200000000000000 || (sub_2150A6270() & 1) != 0 || v2 == 0x65736C6166 && v4 == 0xE500000000000000 || (sub_2150A6270() & 1) != 0 || v2 == 48 && v4 == 0xE100000000000000)
  {

    return 0;
  }

  else
  {
    v6 = sub_2150A6270();

    result = 0;
    if ((v6 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_2150100FC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
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
        result = sub_2150A5C80();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_21500EF78(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2150103FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v52 = &v40 - v12;
  v41 = v13;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v40 - v15;
  if (sub_2150A4F80())
  {
    sub_2150A5AD0();
    v17 = sub_2150A5AC0();
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  v45 = sub_2150A4F80();
  if (!v45)
  {
    return v17;
  }

  v18 = 0;
  v50 = (v6 + 16);
  v51 = v17 + 56;
  v47 = v6 + 32;
  v49 = (v6 + 8);
  v42 = v6;
  v43 = v5;
  v44 = v16;
  while (1)
  {
    v19 = sub_2150A4F60();
    sub_2150A4F00();
    if (v19)
    {
      v20 = *(v6 + 16);
      v20(v16, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18), a2);
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (v21)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_2150A5BB0();
      if (v41 != 8)
      {
        goto LABEL_23;
      }

      v53 = result;
      v20 = *v50;
      (*v50)(v16, &v53, a2);
      swift_unknownObjectRelease();
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (v21)
      {
LABEL_20:
        __break(1u);
        return v17;
      }
    }

    v48 = v22;
    v46 = *(v6 + 32);
    v46(v52, v16, a2);
    v23 = sub_2150A49A0();
    v24 = v17;
    v25 = -1 << *(v17 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v51 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v20(v9, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = sub_2150A4A80();
        v34 = *v49;
        (*v49)(v9, a2);
        if (v33)
        {
          v34(v52, a2);
          a3 = v32;
          v6 = v42;
          v5 = v43;
          v17 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v51 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v42;
      v5 = v43;
    }

    v35 = v52;
    *(v51 + 8 * v27) = v29 | v28;
    v36 = *(v24 + 48) + v30 * v26;
    v17 = v24;
    result = (v46)(v36, v35, a2);
    v38 = *(v24 + 16);
    v21 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v21)
    {
      break;
    }

    *(v24 + 16) = v39;
LABEL_7:
    v16 = v44;
    v18 = v48;
    if (v48 == v45)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}