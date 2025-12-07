uint64_t sub_2189E5310(uint64_t a1)
{
  v2 = sub_2189E4D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189E534C(uint64_t a1)
{
  v2 = sub_2189E4D50();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2189E538C()
{
  result = qword_27CC0C540;
  if (!qword_27CC0C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C540);
  }

  return result;
}

unint64_t sub_2189E53E4()
{
  result = qword_27CC0C548;
  if (!qword_27CC0C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C548);
  }

  return result;
}

unint64_t sub_2189E543C()
{
  result = qword_27CC0C550;
  if (!qword_27CC0C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C550);
  }

  return result;
}

unint64_t sub_2189E5490(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id BridgedNewsActivitySender.__allocating_init(viewController:presentationTransitionFactory:dismissalTransitionFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___TSNewsActivitySender_viewController] = a1;
  v12 = &v11[OBJC_IVAR___TSNewsActivitySender_presentationTransitionFactory];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR___TSNewsActivitySender_dismissalTransitionFactory];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id BridgedNewsActivitySender.init(viewController:presentationTransitionFactory:dismissalTransitionFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___TSNewsActivitySender_viewController] = a1;
  v12 = &v5[OBJC_IVAR___TSNewsActivitySender_presentationTransitionFactory];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v5[OBJC_IVAR___TSNewsActivitySender_dismissalTransitionFactory];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id BridgedNewsActivitySender.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedNewsActivitySender.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2189E58A0(uint64_t a1)
{
  v2 = *v1;
  if (qword_27CC07D08 != -1)
  {
    swift_once();
  }

  sub_2189E5A38();
  sub_219BDC7D4();
  if (v7)
  {
    return 0;
  }

  v4 = *(*(v2 + 16) + OBJC_IVAR___TSNewsActivitySender_presentationTransitionFactory);

  v6 = v4(v5);

  return v6;
}

uint64_t sub_2189E5968(char a1, uint64_t a2)
{
  v4 = *v2;
  if (qword_27CC07D08 != -1)
  {
    swift_once();
  }

  sub_2189E5A38();
  sub_219BDC7D4();
  if (v8)
  {
    return 0;
  }

  v6 = *(*(v4 + 16) + OBJC_IVAR___TSNewsActivitySender_dismissalTransitionFactory);

  v7 = v6(a1 & 1);

  return v7;
}

unint64_t sub_2189E5A38()
{
  result = qword_27CC0C5E0;
  if (!qword_27CC0C5E0)
  {
    type metadata accessor for BridgedNewsActivitySender.Factory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C5E0);
  }

  return result;
}

id sub_2189E5A90()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id sub_2189E5AC8(char a1)
{
  v2 = (*(*(v1 + 16) + 16))(*(v1 + 16), a1 & 1);

  return v2;
}

uint64_t sub_2189E5B08(uint64_t a1)
{
  v23 = a1;
  v22 = sub_219BE9944();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDCD34();
  v20 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v24 = &v20 - v9;
  sub_219BDD184();
  v11 = v22;
  (*(v2 + 16))(&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v22);
  (*(v5 + 16))(v7, v10, v4);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = (v3 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v12, v21, v11);
  v15 = v20;
  (*(v5 + 32))(v14 + v13, v7, v20);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  sub_219BDD154();

  sub_219BDD134();
  v16 = v1[8];
  v17 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v17);
  (*(v16 + 56))(&v25, v17, v16);
  sub_219BE7884();
  v18 = sub_218932F9C(v25);
  return (*(v5 + 8))(v24, v15, v18);
}

void *sub_2189E5DD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a4;
  v37 = a3;
  v41 = a1;
  v4 = sub_219BE1444();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BE14C4();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  MEMORY[0x28223BE20](v7);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF074();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE1544();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE1524();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9924();
  (*(v14 + 104))(v16, *MEMORY[0x277D2F3B8], v13);
  sub_2189E63C0(v12);
  v21 = v36;
  sub_219BE1514();
  sub_2189E98A4(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  sub_219BDCCC4();
  (*(v18 + 8))(v20, v17);
  v22 = v21[7];
  v23 = v21[8];
  __swift_project_boxed_opaque_existential_1(v21 + 4, v22);
  (*(v23 + 48))(&v45 + 1, v22, v23);
  (*(v40 + 104))(v39, **(&unk_278242258 + SBYTE1(v45)), v42);
  __swift_project_boxed_opaque_existential_1(v21 + 4, v21[7]);
  sub_219BE1D74();
  v24 = v38;
  sub_219BE1484();
  sub_2189E98A4(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  v25 = v24;
  v26 = v43;
  sub_219BDCCC4();
  (*(v44 + 8))(v25, v26);
  v27 = v21[7];
  v28 = v21[8];
  __swift_project_boxed_opaque_existential_1(v21 + 4, v27);
  result = (*(v28 + 48))(&v45, v27, v28);
  if (v45 == 3)
  {
    __swift_project_boxed_opaque_existential_1(v21 + 4, v21[7]);
    sub_219BE1D74();
    v30 = v33;
    sub_219BE1424();
    sub_2189E98A4(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
    v31 = v35;
    sub_219BDCCC4();
    return (*(v34 + 8))(v30, v31);
  }

  return result;
}

uint64_t sub_2189E63C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE15B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE9C04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9934();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D6E830])
  {
    v11 = *MEMORY[0x277D2D868];
    v12 = sub_219BDF074();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  else if (v10 == *MEMORY[0x277D6E840] || v10 == *MEMORY[0x277D6E848] || v10 == *MEMORY[0x277D6E838])
  {
    sub_2189E93A0(0, &unk_280E8C140, MEMORY[0x277CEAE60]);
    sub_219BDD0A4();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    (*(v3 + 104))(v5, *MEMORY[0x277D2F548], v2);
    sub_219BDD094();
    (*(v3 + 8))(v5, v2);
    v16 = sub_219BDCD14();

    v17 = sub_219BDF074();
    if (v16)
    {
      v18 = MEMORY[0x277D2D820];
    }

    else
    {
      v18 = MEMORY[0x277D2D810];
    }

    return (*(*(v17 - 8) + 104))(a1, *v18, v17);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

double sub_2189E674C(uint64_t a1)
{
  v3 = sub_219BE8F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_219BDD154();

  v9 = v1[8];
  v10 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v10);
  (*(v9 + 56))(&v13, v10, v9);
  sub_219BE7864();
  return sub_218932F9C(v13);
}

uint64_t sub_2189E68DC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_2189E98A4(&qword_280EE7F30, MEMORY[0x277D2F910], MEMORY[0x277D2F908]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_218806FD0(v37);
  sub_219BE8F44();
  (*(v10 + 32))(v12, v15, v9);
  v19 = (*(v10 + 88))(v12, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v12, v9);
    }
  }

  sub_219BDF234();
  sub_2189E93A0(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_2189E98A4(&qword_280EE8810, MEMORY[0x277D2D9A8], MEMORY[0x277D2D9A0]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_2189E98A4(&qword_280EE8760, MEMORY[0x277D2DB18], MEMORY[0x277D2DB00]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

double sub_2189E6EDC(uint64_t a1)
{
  v2 = v1;
  sub_2189E9714(0, &qword_27CC0C5F0, MEMORY[0x277D6DA48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v45[-v8];
  v9 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21897BFEC(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = v5;
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v14 + 8))(v16, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v11;
  v52 = a1;
  v50 = v7;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2189E93F4(0);
      v49 = *(v34 + 48);
      v35 = *&v11[*(v34 + 64) + 32];

      __swift_project_boxed_opaque_existential_1((v2 + 80), *(v2 + 104));
      v36 = [v18[2] identifier];
      sub_219BF5414();

      v33 = sub_219BF4774();

      v37 = sub_219BF0444();
      (*(*(v37 - 8) + 8))(&v11[v49], v37);
      goto LABEL_7;
    }

    v19 = v11[8];
    v48 = v11[9];
    LODWORD(v49) = v19;
    v20 = v11[10];
    v46 = v11[11];
    v47 = v20;
    v21 = v11[12];
    v22 = *(v11 + 2);
    v23 = v11[24];
    sub_2189E9530(*(v11 + 4), *(v11 + 5), *(v11 + 6));
    sub_2189E9570(0);
    v25 = 80;
    v26 = 64;
  }

  else
  {
    v27 = v11[8];
    v48 = v11[9];
    LODWORD(v49) = v27;
    v28 = v11[10];
    v46 = v11[11];
    v47 = v28;
    v21 = v11[12];
    v22 = *(v11 + 2);
    v23 = v11[24];
    sub_2189E96A0(0);
    v25 = 64;
    v26 = 48;
  }

  v29 = *(v24 + v26);
  v30 = *&v11[*(v24 + v25) + 32];

  v31 = sub_219BF0744();
  (*(*(v31 - 8) + 8))(&v11[v29], v31);
  v54 = v18;
  v55 = v49;
  v56 = v48;
  v57 = v47;
  v58 = v46;
  v59 = v21;
  v60 = v22;
  v61 = v23;
  __swift_project_boxed_opaque_existential_1((v2 + 80), *(v2 + 104));
  v32 = [v18 identifier];
  sub_219BF5414();

  v33 = sub_219BF4774();
  sub_218950D08(&v54);

LABEL_7:
  v38 = v51;
  v39 = v53;
  (*(v6 + 16))(v51, v52, v53);
  v40 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v41 = (v50 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v6 + 32))(v42 + v40, v38, v39);
  v43 = v42 + v41;
  *v43 = v2;
  *(v43 + 8) = v33 & 1;

  sub_219BDD154();

  return result;
}

uint64_t sub_2189E73D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v147 = a4;
  v140 = a3;
  v175 = a1;
  v5 = sub_219BDF1E4();
  v163 = *(v5 - 8);
  v164 = v5;
  MEMORY[0x28223BE20](v5);
  v162 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BE1444();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v165 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189E9714(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v9 = v8;
  v170 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v166 = &v128 - v10;
  sub_2189E97D4(0);
  MEMORY[0x28223BE20](v11 - 8);
  v171 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189E9714(0, &qword_27CC0AE58, MEMORY[0x277D6D710]);
  v173 = *(v13 - 8);
  *&v174 = v13;
  MEMORY[0x28223BE20](v13);
  v172 = &v128 - v14;
  v15 = sub_219BDBD34();
  v160 = *(v15 - 8);
  v161 = v15;
  MEMORY[0x28223BE20](v15);
  v159 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BDF8A4();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_219BE0B64();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BE09E4();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_219BDF104();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BDF1A4();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_219BDFCE4();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BDBD64();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BDFFB4();
  *&v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BE1714();
  v149 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v26 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC(0);
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v34 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v128 - v36;
  sub_2189E9714(0, &qword_27CC0C5F0, MEMORY[0x277D6DA48]);
  v168 = a2;
  v169 = v38;
  sub_219BE7564();
  sub_219BE5FC4();
  v39 = *(v32 + 8);
  v39(v37, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v167 = *v29;
  if (!EnumCaseMultiPayload)
  {
    LODWORD(v174) = v29[8];
    LODWORD(v173) = v29[9];
    v41 = v29[10];
    v42 = v29[11];
    v43 = v29[12];
    v44 = *(v29 + 2);
    v45 = v29[24];
    sub_2189E96A0(0);
    v47 = 64;
    v48 = 48;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    LODWORD(v174) = v29[8];
    LODWORD(v173) = v29[9];
    v41 = v29[10];
    v42 = v29[11];
    v43 = v29[12];
    v44 = *(v29 + 2);
    v45 = v29[24];
    sub_2189E9530(*(v29 + 4), *(v29 + 5), *(v29 + 6));
    sub_2189E9570(0);
    v47 = 80;
    v48 = 64;
LABEL_5:
    v49 = *(v46 + v48);
    v50 = *&v29[*(v46 + v47) + 32];

    v51 = sub_219BF0744();
    (*(*(v51 - 8) + 8))(&v29[v49], v51);
    v176 = v167;
    v177 = v174;
    v178 = v173;
    v179 = v41;
    v180 = v42;
    v181 = v43;
    v130 = v44;
    v182 = v44;
    v183 = v45;
    v52 = v26;
    sub_21934C4BC();
    sub_2189E93A0(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
    v166 = v53;
    v54 = sub_219BDCD44();
    v55 = *(v54 - 8);
    v56 = *(v55 + 80);
    v57 = (v56 + 32) & ~v56;
    v172 = (v57 + *(v55 + 72));
    v58 = swift_allocObject();
    v174 = xmmword_219C09BA0;
    *(v58 + 16) = xmmword_219C09BA0;
    v59 = *MEMORY[0x277CEAD18];
    v60 = *(v55 + 104);
    (v60)(v58 + v57, v59, v54);
    v165 = "newsActivityManager";
    sub_2189E98A4(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
    v61 = v148;
    sub_219BDCCC4();

    (*(v149 + 8))(v52, v61);
    v62 = v150;
    sub_219BDBD54();
    sub_219BDBD44();
    v151[1](v62, v152);
    v63 = v153;
    sub_219BDFFA4();
    v171 = v56;
    v64 = swift_allocObject();
    *(v64 + 16) = v174;
    v163 = v54;
    v164 = v57;
    LODWORD(v173) = v59;
    v170 = v60;
    (v60)(v64 + v57, v59, v54);
    sub_2189E98A4(&unk_280EE84F0, MEMORY[0x277D2E290], MEMORY[0x277D2E288]);
    v65 = v155;
    sub_219BDCCC4();

    (*(v154 + 8))(v63, v65);
    sub_2189E98A4(&qword_27CC0C620, type metadata accessor for MagazineGridItemModel, &unk_219C46358);
    result = sub_219BE75B4();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v67 = v156;
      sub_219BDFCD4();
      v68 = swift_allocObject();
      *(v68 + 16) = v174;
      v70 = v163;
      v69 = v164;
      (v170)(v68 + v164, v173, v163);
      v162 = (v55 + 104);
      sub_2189E98A4(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
      v71 = v158;
      sub_219BDCCC4();

      (*(v157 + 8))(v67, v71);
      v72 = v131;
      sub_219BF6AC4();
      v73 = swift_allocObject();
      *(v73 + 16) = v174;
      v74 = v73 + v69;
      v75 = v173;
      v76 = v170;
      (v170)(v74, v173, v70);
      sub_2189E98A4(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
      v77 = v133;
      sub_219BDCCC4();

      (*(v132 + 8))(v72, v77);
      v158 = *(v140 + 24);
      v78 = v167;
      v79 = [v167 sourceChannel];
      v80 = v134;
      sub_219BE01F4();
      swift_unknownObjectRelease();
      v81 = swift_allocObject();
      *(v81 + 16) = v174;
      v83 = v163;
      v82 = v164;
      (v76)(v81 + v164, v75, v163);
      sub_2189E98A4(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
      v84 = v136;
      sub_219BDCCC4();

      (*(v135 + 8))(v80, v84);
      v85 = [v78 sourceChannel];
      v86 = v137;
      sub_219BE01E4();
      swift_unknownObjectRelease();
      sub_218950D08(&v176);
      v87 = swift_allocObject();
      *(v87 + 16) = v174;
      (v170)(v87 + v82, v173, v83);
      sub_2189E98A4(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
      v88 = v139;
      sub_219BDCCC4();

      (*(v138 + 8))(v86, v88);
      v89 = v141;
      sub_219BE0B54();
      v90 = swift_allocObject();
      *(v90 + 16) = v174;
      v92 = v163;
      v91 = v164;
      v93 = v170;
      (v170)(v90 + v164, v173, v163);
      sub_2189E98A4(&qword_27CC0C628, MEMORY[0x277D2EB60], MEMORY[0x277D2EB58]);
      v94 = v143;
      sub_219BDCCC4();

      (*(v142 + 8))(v89, v94);
      v95 = v144;
      sub_219BDF894();
      v96 = swift_allocObject();
      *(v96 + 16) = v174;
      (v93)(v96 + v91, v173, v92);
      sub_2189E98A4(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
      v97 = v146;
      sub_219BDCCC4();

      (*(v145 + 8))(v95, v97);
      sub_219BE0274();
      v98 = v159;
      sub_219BE75A4();
      sub_2189E98A4(&unk_280EE8460, MEMORY[0x277D2E418], MEMORY[0x277D2E410]);
      sub_219BDCC64();
      v99 = v161;
      v100 = *(v160 + 8);
      v100(v98, v161);
      sub_219BE7574();
      sub_219BDCC74();
      return (v100)(v98, v99);
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_2189E93F4(0);
  v155 = *(v101 + 48);
  v102 = *&v29[*(v101 + 64) + 32];

  v103 = v166;
  sub_219BE7594();
  sub_219BE7564();
  sub_219BE5F84();
  v39(v34, v31);
  v104 = v171;
  sub_219BEB244();

  (*(v170 + 1))(v103, v9);
  v106 = v173;
  v105 = v174;
  if ((*(v173 + 48))(v104, 1, v174) == 1)
  {

    sub_2189E9848(v104);
  }

  else
  {
    (*(v106 + 32))(v172, v104, v105);
    v107 = [v167[2] identifier];
    sub_219BF5414();

    sub_219BE1424();
    sub_2189E93A0(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
    v171 = v108;
    v109 = sub_219BDCD44();
    v153 = v109;
    v110 = *(v109 - 8);
    v166 = *(v110 + 72);
    v111 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v112 = swift_allocObject();
    v154 = xmmword_219C09BA0;
    *(v112 + 16) = xmmword_219C09BA0;
    v113 = *MEMORY[0x277CEAD18];
    v114 = *(v110 + 104);
    (v114)(v112 + v111, v113, v109);
    v170 = "newsActivityManager";
    sub_2189E98A4(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
    v115 = v165;
    v116 = v130;
    sub_219BDCCC4();

    (*(v129 + 8))(v115, v116);
    sub_219BE6944();
    v117 = v162;
    sub_219BDF1C4();
    v118 = v153;
    v119 = swift_allocObject();
    *(v119 + 16) = v154;
    LODWORD(v152) = v113;
    v165 = (v110 + 104);
    v151 = v114;
    (v114)(v119 + v111, v113, v118);
    sub_2189E98A4(&unk_280EE8840, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
    v120 = v164;
    sub_219BDCCC4();

    (*(v163 + 8))(v117, v120);
    sub_2189E98A4(&qword_27CC0C620, type metadata accessor for MagazineGridItemModel, &unk_219C46358);
    result = sub_219BE75B4();
    if (result < 0xFFFFFFFF80000000)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (result > 0x7FFFFFFF)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v121 = v156;
    sub_219BDFCD4();
    v122 = swift_allocObject();
    *(v122 + 16) = v154;
    (v151)(v122 + v111, v152, v118);
    sub_2189E98A4(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
    v123 = v158;
    sub_219BDCCC4();

    (*(v157 + 8))(v121, v123);
    sub_219BDFEC4();
    v124 = v159;
    sub_219BE75A4();
    sub_2189E98A4(&unk_280EE8520, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
    sub_219BDCC64();
    v125 = *(v160 + 8);
    v126 = v161;
    v125(v124, v161);
    sub_219BE7574();
    sub_219BDCC74();

    v125(v124, v126);
    (*(v173 + 8))(v172, v174);
  }

  v127 = sub_219BF0444();
  return (*(*(v127 - 8) + 8))(&v29[v155], v127);
}

uint64_t sub_2189E8E84()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_2189E9530(*(v6 + 4), *(v6 + 5), *(v6 + 6));
      sub_2189E9570(0);
      v10 = *(v9 + 64);
      v11 = *&v6[*(v9 + 80) + 32];

      v12 = sub_219BF0744();
    }

    else
    {

      sub_2189E93F4(0);
      v10 = *(v18 + 48);
      v19 = *&v6[*(v18 + 64) + 32];

      v12 = sub_219BF0444();
    }

    (*(*(v12 - 8) + 8))(&v6[v10]);
    *v3 = 6775156;
    v3[1] = 0xE300000000000000;
    (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
    sub_219BDD204();
    return (*(v1 + 8))(v3, v0);
  }

  else
  {

    sub_2189E96A0(0);
    v14 = *(v13 + 48);
    v15 = *&v6[*(v13 + 64) + 32];

    *v3 = 0x6575737369;
    v3[1] = 0xE500000000000000;
    (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
    sub_219BDD204();
    (*(v1 + 8))(v3, v0);
    v16 = sub_219BF0744();
    return (*(*(v16 - 8) + 8))(&v6[v14], v16);
  }
}

uint64_t sub_2189E91B4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

void *sub_2189E9230(uint64_t a1)
{
  v3 = *(sub_219BE9944() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDCD34() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2189E5DD8(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_2189E9330(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2189E68DC(a1, v4);
}

void sub_2189E93A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2189E93F4(uint64_t a1)
{
  if (!qword_27CC0C5F8)
  {
    type metadata accessor for TagModel();
    sub_219BF0444();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC0C5F8);
    }
  }
}

uint64_t sub_2189E9470(uint64_t a1)
{
  sub_2189E9714(0, &qword_27CC0C5F0, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_2189E73D8(a1, v1 + v5, v7, v8);
}

void sub_2189E9530(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

void sub_2189E9570(uint64_t a1)
{
  if (!qword_27CC0C600)
  {
    MEMORY[0x28223BE20](a1);
    sub_2186DEEA0(255, &qword_27CC0C608, &type metadata for IssueModel);
    sub_219BF0744();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC0C600);
    }
  }
}

void sub_2189E96A0(uint64_t a1)
{
  if (!qword_27CC0C610)
  {
    sub_219BF0744();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC0C610);
    }
  }
}

void sub_2189E9714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel(255);
    v8[2] = sub_21895164C();
    v8[3] = sub_2189E98A4(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2189E97D4(uint64_t a1)
{
  if (!qword_27CC0C618)
  {
    sub_2189E9714(255, &qword_27CC0AE58, MEMORY[0x277D6D710]);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C618);
    }
  }
}

uint64_t sub_2189E9848(uint64_t a1)
{
  sub_2189E97D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2189E98A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2189E9954(uint64_t a1, uint64_t a2)
{
  v14[1] = a2;
  v3 = MEMORY[0x277D30320];
  sub_2189EB45C(0, &qword_27CC0C630, MEMORY[0x277D30320], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v7 = sub_219BDED54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = *(v8 + 16);
  v11(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v9);
  sub_2189EB45C(0, &qword_27CC0C638, v3, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
  (v11)(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_2189E9B7C(v6);
  sub_2189EB358(v6, &qword_27CC0C630, v3);
  v12 = sub_219BE31C4();

  return v12;
}

uint64_t sub_2189E9B7C(uint64_t a1)
{
  v2 = sub_219BF4534();
  MEMORY[0x28223BE20](v2 - 8);
  v35[1] = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2189EB45C(0, &qword_27CC0C640, MEMORY[0x277D33238], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v35 - v6;
  v8 = sub_219BF1274();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF1254();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v35[0] = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189EB45C(0, &qword_27CC0C630, MEMORY[0x277D30320], v4);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v35 - v16;
  sub_2189EB3C8(a1, v35 - v16);
  v18 = sub_219BDED54();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v20 = &qword_27CC0C630;
    v21 = MEMORY[0x277D30320];
    v22 = v17;
LABEL_5:
    sub_2189EB358(v22, v20, v21);
    v36 = 0;
    sub_2189EB45C(0, &qword_280EE6918, sub_2189EB4C0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  v23 = sub_219BDED44();
  v24 = v17;
  v25 = v23;
  (*(v19 + 8))(v24, v18);
  sub_219BF6CA4();
  sub_219BF1264();
  (*(v9 + 8))(v11, v8);
  v26 = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {

    v20 = &qword_27CC0C640;
    v21 = MEMORY[0x277D33238];
    v22 = v7;
    goto LABEL_5;
  }

  v28 = *(v13 + 32);
  v29 = v35[0];
  v28(v35[0], v7, v12);
  v30 = sub_219BF1244();
  v37 = sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
  v38 = sub_2189EB528();
  v36 = v30;
  v31 = [objc_opt_self() mainScreen];
  [v31 scale];

  sub_219BF4524();
  sub_219BF4544();
  swift_allocObject();
  v32 = sub_219BF4514();
  MEMORY[0x28223BE20](v32);
  v35[-4] = v35[2];
  v35[-3] = v33;
  v35[-2] = v25;
  sub_2189EB45C(0, &qword_280EE6918, sub_2189EB4C0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v34 = sub_219BE30B4();

  (*(v26 + 8))(v29, v12);
  return v34;
}

id sub_2189EA114(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5)
{
  v106 = a5;
  v8 = sub_219BDBD64();
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x28223BE20](v8);
  v107 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDED54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContinueReadingEligibility(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_2189EAD9C();
    v59 = swift_allocError();
    *v60 = 0;
    *v16 = v59;
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2189EB45C(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  v18 = Strong;
  v96 = v14;
  v97 = v16;
  v102 = v11;
  v94 = *(v11 + 16);
  v95 = v11 + 16;
  v94(v13, a1, v10);
  v19 = *(v18 + 344);
  v103 = v18;
  __swift_project_boxed_opaque_existential_1((v18 + 320), v19);
  v20 = sub_219B7D048();
  v21 = sub_219BDED44();
  v104 = v10;
  v105 = a1;
  v22 = v21;
  v23 = [v21 identifier];
  v24 = sub_219BF5414();
  v100 = v25;
  v101 = v24;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  v28 = sub_219BDB5E4();
  v98 = v29;
  v99 = v28;

  v30 = [v22 title];
  v31 = sub_219BF5414();
  v32 = a2;
  v34 = v33;

  v35 = [v22 coverDate];
  v36 = sub_219BF5414();
  v38 = v37;

  v39 = sub_2189DCA74(v36, v38, v31, v34);
  v41 = v40;

  v42 = v107;
  sub_219BDBD54();
  v43 = sub_219BDBD44();
  v45 = v44;
  (*(v108 + 8))(v42, v109);
  (*(v102 + 8))(v13, v104);
  LOBYTE(v110) = v106 & 1;
  *&v115 = v101;
  *(&v115 + 1) = v100;
  *&v116 = v22;
  BYTE8(v116) = 1;
  *(&v116 + 9) = v113;
  HIDWORD(v116) = *(&v113 + 3);
  *&v117 = v99;
  *(&v117 + 1) = v98;
  *&v118 = v39;
  *(&v118 + 1) = v41;
  *&v119 = a4;
  BYTE8(v119) = v106 & 1;
  *(&v119 + 9) = v111;
  HIDWORD(v119) = *(&v111 + 3);
  *&v120 = v43;
  *(&v120 + 1) = v45;
  *&v121 = v32;
  *(&v121 + 1) = v20;
  v122 = 0;
  sub_2189EB258(a4, v106 & 1);
  v46 = v32;
  v47 = sub_219BDED44();
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE93F0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (v113)
  {
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    v48 = qword_280F617A8;
    sub_2186F20D4(0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_219C09BA0;
    v50 = [v47 identifier];
    v51 = sub_219BF5414();
    v53 = v52;

    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 64) = sub_2186FC3BC();
    *(v49 + 32) = v51;
    *(v49 + 40) = v53;
    v54 = sub_219BF6214();
    sub_219BE5314("Forcing eligibility for Issue ID : %{public}@", 45, 2, &dword_2186C1000, v48, v54, v49);

    goto LABEL_8;
  }

  v62 = v103;
  v63 = *(v103 + 128);
  swift_unknownObjectRetain();
  v64 = [v47 isPaid];
  v65 = [v47 isBundlePaid];
  v66 = [objc_msgSend(v47 sourceChannel)];
  swift_unknownObjectRelease();
  v67 = sub_219BF5414();
  v69 = v68;

  if (v64)
  {
    v70 = [objc_msgSend(v63 purchaseProvider)];
    v71 = sub_219BF5D44();

    LOBYTE(v70) = sub_2188537B8(v67, v69, v71);

    swift_unknownObjectRelease();
    if (v70)
    {

      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    if (!v65)
    {
      goto LABEL_34;
    }
  }

  else if ((v65 & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_37;
  }

  v72 = [objc_msgSend(v63 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v72, v72 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
  }

  v113 = v111;
  v114 = v112;
  if (!*(&v112 + 1))
  {
    sub_218806FD0(&v113);
    goto LABEL_24;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v73 = 0;
    v75 = 0;
    goto LABEL_25;
  }

  v73 = v110;
  v74 = [v110 integerValue];
  if (v74 == -1)
  {

    v62 = v103;
    goto LABEL_36;
  }

  v75 = v74;
LABEL_25:
  if (objc_getAssociatedObject(v72, ~v75))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
  }

  v113 = v111;
  v114 = v112;
  if (!*(&v112 + 1))
  {
    sub_218806FD0(&v113);
LABEL_33:

    v62 = v103;
    if (v75)
    {
      goto LABEL_36;
    }

LABEL_34:

    swift_unknownObjectRelease();
LABEL_43:
    v94(v97, v105, v104);
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    goto LABEL_44;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v76 = v110;
  v77 = [v76 integerValue];

  v78 = v77 ^ v75;
  v62 = v103;
  if ((v78 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_36:
  v79 = [objc_msgSend(v63 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v80 = [v79 bundleChannelIDs];

  v81 = sub_219BF53D4();
  v82 = [v80 containsObject_];

  swift_unknownObjectRelease();
  if ((v82 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  v83 = [objc_msgSend(v47 sourceChannel)];
  swift_unknownObjectRelease();
  v84 = sub_219BF5414();
  v86 = v85;

  result = [*(v62 + 120) mutedTagIDs];
  if (result)
  {
    v87 = result;
    v88 = sub_219BF5D44();

    LOBYTE(v87) = sub_2188537B8(v84, v86, v88);

    if (v87)
    {

      v94(v97, v105, v104);
      type metadata accessor for ContinueReadingIneligibilityReason(0);
LABEL_44:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_2189EB45C(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
      swift_allocObject();
      goto LABEL_45;
    }

    result = [*(v62 + 120) ignoredTagIDs];
    if (result)
    {
      v89 = result;
      v90 = sub_219BF5D44();

      v91 = sub_2188537B8(v84, v86, v90);

      if ((v91 & 1) == 0)
      {
LABEL_8:
        v55 = v120;
        v56 = v97;
        *(v97 + 4) = v119;
        *(v56 + 5) = v55;
        *(v56 + 6) = v121;
        *(v56 + 112) = v122;
        v57 = v116;
        *v56 = v115;
        *(v56 + 1) = v57;
        v58 = v118;
        *(v56 + 2) = v117;
        *(v56 + 3) = v58;
        swift_storeEnumTagMultiPayload();
        sub_2189EB45C(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_2189EB2A8(&v115, &v113);
LABEL_45:
        v92 = sub_219BE3014();

        sub_2189EB304(&v115);

        return v92;
      }

      goto LABEL_43;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2189EAD9C()
{
  result = qword_27CC0D4A0;
  if (!qword_27CC0D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D4A0);
  }

  return result;
}

uint64_t sub_2189EADF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a5 + 22, a5[25]);
  v16[3] = sub_219BF4544();
  v16[4] = sub_2189EB5A4();
  v16[0] = a6;
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = sub_2189EB59C;
  v13[4] = v12;

  v14 = a7;
  sub_219BE6254();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_2189EAF08(void *a1, void *a2, id a3, void (*a4)(void *))
{
  v7 = [a3 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  if (a1)
  {
    v11 = qword_280E8D8F0;
    v12 = a1;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_280F617A8;
    sub_2186F20D4(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v8;
    *(v14 + 40) = v10;
    v15 = sub_219BF6214();
    sub_219BE5314("Successfully retrieved thumbnail image for Issue ID : %{public}@", 64, 2, &dword_2186C1000, v13, v15, v14);

    v25 = v12;
    a4(a1);
  }

  else
  {
    if (a2)
    {
      v16 = a2;
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      v17 = qword_280F617A8;
      v18 = sub_219BF61F4();
      sub_2186F20D4(0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C09EC0;
      v20 = MEMORY[0x277D837D0];
      *(v19 + 56) = MEMORY[0x277D837D0];
      v21 = sub_2186FC3BC();
      *(v19 + 64) = v21;
      *(v19 + 32) = v8;
      *(v19 + 40) = v10;
      sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
      sub_219BF7484();
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 72) = 0;
      *(v19 + 80) = 0xE000000000000000;
      sub_219BE5314("Error retrieving the thumbnail image for Issue ID (%{public}@) : %{public}@", 75, 2, &dword_2186C1000, v17, v18, v19);
    }

    else
    {
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      v22 = qword_280F617A8;
      sub_2186F20D4(0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C09BA0;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_2186FC3BC();
      *(v23 + 32) = v8;
      *(v23 + 40) = v10;
      v24 = sub_219BF6214();
      sub_219BE5314("Failed to retrieve a thumbnail image for Issue ID : %{public}@", 62, 2, &dword_2186C1000, v22, v24, v23);
    }

    a4(0);
  }
}

id sub_2189EB258(unint64_t a1, char a2)
{
  if (a2)
  {
    return sub_2189EB264(a1);
  }

  else
  {
    return a1;
  }
}

unint64_t sub_2189EB264(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2189EB358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2189EB45C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2189EB3C8(uint64_t a1, uint64_t a2)
{
  sub_2189EB45C(0, &qword_27CC0C630, MEMORY[0x277D30320], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2189EB45C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2189EB4C0(uint64_t a1)
{
  if (!qword_280E8DA60)
  {
    sub_2186C6148(255, &qword_280E8DA68, 0x277D755B8);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8DA60);
    }
  }
}

unint64_t sub_2189EB528()
{
  result = qword_280E8E780;
  if (!qword_280E8E780)
  {
    sub_2186C6148(255, &qword_280E8E770, 0x277D30E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E780);
  }

  return result;
}

unint64_t sub_2189EB5A4()
{
  result = qword_27CC0C648;
  if (!qword_27CC0C648)
  {
    sub_219BF4544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C648);
  }

  return result;
}

void sub_2189EB608(void *a1, uint64_t a2, id a3)
{
  v6 = sub_219BE9414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_219BF53D4();

  v11 = [a1 objectForKey_];

  if (v11)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v17, v18);
    sub_2186CF94C(0);
    swift_dynamicCast();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    v13 = a1;

    sub_219BE6454();

    v14 = sub_219BF53D4();

    v15 = [v13 objectForKey_];

    if (v15)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v17, v18);
      swift_dynamicCast();
      *&v18[0] = 0xF000000000000018;
      (*(v7 + 104))(v9, *MEMORY[0x277D6E598], v6);
      sub_219BE6474();
      (*(v7 + 8))(v9, v6);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  (*(v7 + 8))(v9, v6);

  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_2189EB914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v5 = sub_219BED174();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED1D4();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED214();
  v29 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v18 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v28 = *(v12 + 8);
  v28(v14, v11);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = a2;
  v19[3] = v20;
  v19[4] = v21;
  aBlock[4] = sub_2189EC390;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_13;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21879DD98(0);
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
  sub_219BF7164();
  MEMORY[0x21CECD420](v17, v10, v7, v22);
  _Block_release(v22);

  (*(v32 + 8))(v7, v5);
  (*(v30 + 8))(v10, v31);
  return (v28)(v17, v29);
}

void sub_2189EBCF4(void *a1, void (*a2)(id))
{

  v4 = sub_219BF53D4();

  v5 = [a1 objectForKey_];

  if (v5)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v15, &v16);
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    swift_dynamicCast();
    type metadata accessor for HistoryFeedViewController();
    sub_219BF6584();

    v6 = v17;
    if (v17)
    {
      sub_219BE8664();
      v7 = sub_219BE7BC4();

      v8 = v7;

      v9 = sub_219BF53D4();

      [a1 setObject:v8 forKey:v9];

      v10 = 0;
    }

    else
    {
      v11 = objc_allocWithZone(MEMORY[0x277D6D138]);
      v12 = sub_219BF53D4();
      v13 = [v11 initWithMessage_];

      v10 = v13;
      v8 = v13;
    }

    a2(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2189EBF98(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_219BED174();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED214();
  v28 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v17 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v27 = *(v11 + 8);
  v27(v13, v10);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = sub_2189EC378;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_4;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21879DD98(0);
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
  sub_219BF7164();
  MEMORY[0x21CECD420](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v31 + 8))(v6, v4);
  (*(v29 + 8))(v9, v30);
  return (v27)(v16, v28);
}

uint64_t sub_2189EC3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a1;
  v9 = swift_task_alloc();
  *(v5 + 72) = v9;
  *v9 = v5;
  v9[1] = sub_2189EC464;

  return sub_2189EC5C0(v5 + 16, a3, a4, a5);
}

uint64_t sub_2189EC464()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2189EC594, 0, 0);
  }
}

uint64_t sub_2189EC594()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v1[1] = *(v0 + 32);
  v1[2] = v3;
  *v1 = v2;
  return (*(v0 + 8))();
}

uint64_t sub_2189EC5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_219BED684();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_219BED624();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = sub_219BED6B4();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2189EC740, 0, 0);
}

uint64_t sub_2189EC740()
{
  sub_2189EEA80(*(v0 + 80), *(v0 + 88));
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  *(v0 + 184) = CACurrentMediaTime();
  *v1 = v6;
  (*(v2 + 104))(v1, *MEMORY[0x277D31BF0], v3);
  v7 = *(v5 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange);
  v8 = v4[1];
  *(v0 + 192) = v8;
  v9 = v4[2];
  *(v0 + 200) = v9;
  *(v0 + 208) = v4[5];
  *(v0 + 216) = v4[4];
  v10 = *MEMORY[0x277D30BC0];
  v11 = qword_280E8D7F8;
  swift_bridgeObjectRetain_n();
  v12 = v6;
  swift_unknownObjectRetain();
  v7;
  v13 = v8;
  v14 = v9;
  v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 104);
  v16 = qword_280F61708;
  *(v0 + 224) = qword_280F61708;
  v16;
  sub_219BED6A4();
  v17 = v15[35];
  v18 = v15[36];
  __swift_project_boxed_opaque_existential_1(v15 + 32, v17);
  v19 = swift_task_alloc();
  *(v0 + 232) = v19;
  *v19 = v0;
  v19[1] = sub_2189ECADC;
  v20 = *(v0 + 176);
  v21 = *(v0 + 128);

  return MEMORY[0x28218FB20](v21, v20, v17, v18);
}

uint64_t sub_2189ECADC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_2189ED144;
  }

  else
  {
    v2 = sub_2189ECBF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2189ECBF8()
{
  v53 = v0;
  v1 = *(*(v0 + 96) + 24);
  v2 = sub_219BED674();
  v52 = v1;

  sub_2191ED6C8(v2);
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C0EE20;
  if (v1 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83C10];
  *(v3 + 56) = MEMORY[0x277D83B88];
  *(v3 + 64) = v6;
  *(v3 + 32) = v4;
  if (v1 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v3 + 96) = v5;
  *(v3 + 104) = v6;
  *(v3 + 72) = v7;
  v8 = sub_219BED634();
  if (v8 >> 62)
  {
    v9 = sub_219BF7214();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = *(v0 + 224);

  *(v3 + 136) = v5;
  *(v3 + 144) = v6;
  *(v3 + 112) = v9;
  v11 = sub_21988DFA0();
  v13 = v12;
  *(v3 + 176) = MEMORY[0x277D837D0];
  v51 = sub_2186FC3BC();
  *(v3 + 184) = v51;
  *(v3 + 152) = v11;
  *(v3 + 160) = v13;
  v14 = sub_219BF6214();
  sub_219BE5314("Tag feed fetch add %ld from previous feed then combined headlines to %ld and %ld evergreen feed items, feed=%{public}@", 118, 2, &dword_2186C1000, v10, v14, v3);

  v15 = sub_219BED654();
  v16 = sub_219BED664();
  if (sub_219BED644())
  {

    v50 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  if (!v15)
  {
    v50 = *(v0 + 192);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_13:
    v17 = *(v0 + 200);
    goto LABEL_14;
  }

  v18 = *(v0 + 96);
  v19 = v15;
  v20 = [v19 bottom];
  v21 = [*v18 bottom];
  v50 = [objc_opt_self() feedRangeWithTop:v20 bottom:v21];

  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_11:
  v22 = *(v0 + 96);
  v23 = v16;
  v24 = [v23 &_OBJC_LABEL_PROTOCOL___FCShortcutListObserving];
  v25 = [*v22 &_OBJC_LABEL_PROTOCOL___FCShortcutListObserving];
  v17 = [objc_opt_self() &off_278247290 + 5];

LABEL_14:
LABEL_15:
  v26 = *(v0 + 240);

  v52 = sub_219758F7C(v27);
  sub_2189ED798(&v52);
  if (v26)
  {
  }

  else
  {
    v48 = *(v0 + 216);
    v49 = *(v0 + 208);
    v28 = *(v0 + 168);
    v45 = *(v0 + 160);
    v46 = *(v0 + 176);
    v29 = *(v0 + 120);
    v41 = *(v0 + 128);
    v42 = *(v0 + 224);
    v43 = *(v0 + 112);
    v30 = *(v0 + 72);

    v47 = v52;
    v44 = sub_219BED634();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_219C0B8C0;
    sub_2189EEB80(v50, v17);
    v32 = sub_21988DFA0();
    v33 = MEMORY[0x277D837D0];
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = v51;
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0xE000000000000000;
    *(v0 + 48) = v50;
    *(v0 + 56) = v17;
    sub_219BF7484();
    sub_2189EEBC0(v50, v17);
    v35 = *(v0 + 32);
    v36 = *(v0 + 40);
    *(v31 + 96) = v33;
    *(v31 + 104) = v51;
    *(v31 + 72) = v35;
    *(v31 + 80) = v36;
    sub_219BF5CD4();
    v37 = MEMORY[0x277D83A80];
    *(v31 + 136) = MEMORY[0x277D839F8];
    *(v31 + 144) = v37;
    *(v31 + 112) = v38;
    v39 = sub_219BF6214();
    sub_219BE5314("Successfully fetched tag feed pool headlines, feedDescription=%{public}@, nextBatch=%{public}@, time=%fms", 105, 2, &dword_2186C1000, v42, v39, v31);

    (*(v29 + 8))(v41, v43);
    (*(v28 + 8))(v46, v45);

    *v30 = v47;
    v30[1] = v44;
    v30[2] = v48;
    v30[3] = v50;
    v30[4] = v17;
    v30[5] = v49;
    v40 = *(v0 + 8);

    v40();
  }
}

uint64_t sub_2189ED144()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2189ED1E0(void **a1, void **a2)
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = sub_219BDBD34();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v50 - v22;
  v24 = *a1;
  v53 = *a2;
  v25 = [v24 displayDate];
  if (v25)
  {
    v26 = v25;
    sub_219BDBCA4();

    v27 = *(v15 + 32);
    v27(v13, v19, v14);
    v28 = *(v15 + 56);
    v28(v13, 0, 1, v14);
    v27(v23, v13, v14);
    v29 = v53;
  }

  else
  {
    v52 = v23;
    v28 = *(v15 + 56);
    v28(v13, 1, 1, v14);
    v30 = [v24 publishDate];
    if (v30)
    {
      v31 = v30;
      sub_219BDBCA4();

      v32 = *(v15 + 32);
      v32(v10, v19, v14);
      v28(v10, 0, 1, v14);
      v32(v52, v10, v14);
      v33 = (*(v15 + 48))(v13, 1, v14);
    }

    else
    {
      v28(v10, 1, 1, v14);
      sub_219BDBD24();
      v34 = *(v15 + 48);
      if (v34(v10, 1, v14) != 1)
      {
        sub_2189DD39C(v10);
      }

      v33 = v34(v13, 1, v14);
    }

    v29 = v53;
    if (v33 != 1)
    {
      sub_2189DD39C(v13);
    }

    v23 = v52;
  }

  v35 = [v29 displayDate];
  v36 = v55;
  if (v35)
  {
    v37 = v35;
    sub_219BDBCA4();

    v38 = *(v15 + 32);
    v38(v36, v19, v14);
    v28(v36, 0, 1, v14);
    v39 = v54;
    v38(v54, v36, v14);
  }

  else
  {
    v28(v55, 1, 1, v14);
    v40 = [v29 publishDate];
    if (v40)
    {
      v41 = v40;
      sub_219BDBCA4();

      v52 = v23;
      v42 = *(v15 + 32);
      v43 = v51;
      v42(v51, v19, v14);
      v28(v43, 0, 1, v14);
      v39 = v54;
      v42(v54, v43, v14);
      v23 = v52;
      v44 = (*(v15 + 48))(v36, 1, v14);
    }

    else
    {
      v45 = v51;
      v28(v51, 1, 1, v14);
      v39 = v54;
      sub_219BDBD24();
      v46 = *(v15 + 48);
      if (v46(v45, 1, v14) != 1)
      {
        sub_2189DD39C(v45);
      }

      v44 = v46(v36, 1, v14);
    }

    if (v44 != 1)
    {
      sub_2189DD39C(v36);
    }
  }

  v47 = sub_219BDBC14();
  v48 = *(v15 + 8);
  v48(v39, v14);
  v48(v23, v14);
  return v47 & 1;
}

uint64_t sub_2189ED798(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2189ED814(v6);
  return sub_219BF73E4();
}

void sub_2189ED814(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_218731D50();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2189EDA08(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2189ED918(0, v2, 1, a1);
  }
}

uint64_t sub_2189ED918(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = sub_2189ED1E0(&v17, &v16);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v12;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_2189EDA08(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v150 = a1;
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v164 = &v147 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v147 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v147 - v17;
  v171 = sub_219BDBD34();
  MEMORY[0x28223BE20](v171);
  v20 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v167 = &v147 - v22;
  MEMORY[0x28223BE20](v23);
  v169 = &v147 - v25;
  v26 = a3[1];
  v153 = a3;
  if (v26 >= 1)
  {
    v158 = v10;
    v148 = a4;
    v27 = 0;
    v165 = (v24 + 56);
    v166 = (v24 + 32);
    v159 = (v24 + 48);
    v161 = (v24 + 8);
    v28 = MEMORY[0x277D84F90];
    v157 = v15;
    v160 = v18;
    v163 = v20;
    v29 = v18;
    while (1)
    {
      v30 = v27++;
      if (v27 >= v26)
      {
        v151 = v30;
      }

      else
      {
        v31 = v26;
        v149 = v28;
        v10 = *a3;
        v32 = *(*a3 + 8 * v27);
        v172 = *(*a3 + 8 * v30);
        v173[0] = v32;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        LODWORD(v170) = sub_2189ED1E0(v173, &v172);
        if (v5)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v33 = v30 + 2;
        v34 = 8 * v30;
        v35 = (v10 + 8 * v30 + 16);
        while (v31 != v33)
        {
          v36 = *v35;
          v172 = *(v35 - 1);
          v173[0] = v36;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v10 = sub_2189ED1E0(v173, &v172);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          ++v33;
          ++v35;
          if ((v170 ^ v10))
          {
            v37 = v33 - 1;
            goto LABEL_12;
          }
        }

        v37 = v31;
LABEL_12:
        v5 = 0;
        v28 = v149;
        v29 = v160;
        v151 = v30;
        if (v170)
        {
          if (v37 < v30)
          {
            goto LABEL_144;
          }

          if (v30 < v37)
          {
            v38 = 8 * v37 - 8;
            v39 = v37;
            v40 = v30;
            do
            {
              if (v40 != --v39)
              {
                v42 = *v153;
                if (!*v153)
                {
                  goto LABEL_148;
                }

                v41 = *(v42 + v34);
                *(v42 + v34) = *(v42 + v38);
                *(v42 + v38) = v41;
              }

              ++v40;
              v38 -= 8;
              v34 += 8;
            }

            while (v40 < v39);
          }
        }

        v27 = v37;
        a3 = v153;
      }

      v43 = a3[1];
      if (v27 < v43)
      {
        if (__OFSUB__(v27, v151))
        {
          goto LABEL_140;
        }

        if (v27 - v151 < v148)
        {
          v44 = v151 + v148;
          if (__OFADD__(v151, v148))
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (v44 >= v43)
          {
            v44 = a3[1];
          }

          if (v44 < v151)
          {
            goto LABEL_143;
          }

          if (v27 != v44)
          {
            v149 = v28;
            v147 = v5;
            v162 = *a3;
            v45 = v162 + 8 * v27 - 8;
            v46 = v151 - v27;
            v152 = v44;
            do
            {
              v155 = v45;
              v156 = v27;
              v47 = v46;
              v48 = *(v162 + 8 * v27);
              v154 = v46;
              do
              {
                v168 = v47;
                v49 = *v45;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v50 = [v48 displayDate];
                v170 = v49;
                if (v50)
                {
                  v51 = v167;
                  v52 = v50;
                  sub_219BDBCA4();

                  v53 = *v166;
                  v54 = v51;
                  v49 = v170;
                  v55 = v171;
                  (*v166)(v29, v54, v171);
                  v56 = *v165;
                  (*v165)(v29, 0, 1, v55);
                  v53(v169, v29, v55);
                }

                else
                {
                  v56 = *v165;
                  (*v165)(v29, 1, 1, v171);
                  v57 = [v48 publishDate];
                  if (v57)
                  {
                    v58 = v167;
                    v59 = v57;
                    sub_219BDBCA4();

                    v60 = *v166;
                    v61 = v157;
                    v62 = v58;
                    v63 = v171;
                    (*v166)(v157, v62, v171);
                    v56(v61, 0, 1, v63);
                    v60(v169, v61, v63);
                    v64 = *v159;
                  }

                  else
                  {
                    v65 = v157;
                    v66 = v171;
                    v56(v157, 1, 1, v171);
                    sub_219BDBD24();
                    v64 = *v159;
                    if ((*v159)(v65, 1, v66) != 1)
                    {
                      sub_2189DD39C(v65);
                    }
                  }

                  v29 = v160;
                  if (v64(v160, 1, v171) != 1)
                  {
                    sub_2189DD39C(v29);
                  }
                }

                v67 = [v49 displayDate];
                if (v67)
                {
                  v68 = v167;
                  v69 = v67;
                  sub_219BDBCA4();

                  v70 = *v166;
                  v71 = v29;
                  v72 = v164;
                  v73 = v68;
                  v74 = v171;
                  (*v166)(v164, v73, v171);
                  v56(v72, 0, 1, v74);
                  v75 = v163;
                  v76 = v72;
                  v29 = v71;
                  v70(v163, v76, v74);
                  v77 = v75;
                }

                else
                {
                  v56(v164, 1, 1, v171);
                  v78 = [v49 publishDate];
                  v79 = v159;
                  if (v78)
                  {
                    v80 = v167;
                    v81 = v78;
                    sub_219BDBCA4();

                    v82 = *v166;
                    v83 = v158;
                    v84 = v80;
                    v85 = v171;
                    (*v166)(v158, v84, v171);
                    v56(v83, 0, 1, v85);
                    v82(v163, v83, v85);
                    v86 = (*v79)(v164, 1, v171);
                  }

                  else
                  {
                    v87 = v158;
                    v88 = v171;
                    v56(v158, 1, 1, v171);
                    sub_219BDBD24();
                    v89 = *v79;
                    if ((*v79)(v87, 1, v88) != 1)
                    {
                      sub_2189DD39C(v87);
                    }

                    v86 = v89(v164, 1, v171);
                  }

                  v29 = v160;
                  v77 = v163;
                  if (v86 != 1)
                  {
                    sub_2189DD39C(v164);
                  }
                }

                v90 = v169;
                v10 = sub_219BDBC14();
                v91 = *v161;
                v92 = v171;
                (*v161)(v77, v171);
                v91(v90, v92);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if ((v10 & 1) == 0)
                {
                  break;
                }

                v93 = v168;
                if (!v162)
                {
                  goto LABEL_145;
                }

                v94 = *v45;
                v48 = *(v45 + 8);
                *v45 = v48;
                *(v45 + 8) = v94;
                v45 -= 8;
                v95 = __CFADD__(v93, 1);
                v47 = v93 + 1;
              }

              while (!v95);
              v27 = v156 + 1;
              v45 = v155 + 8;
              v46 = v154 - 1;
            }

            while (v156 + 1 != v152);
            v27 = v152;
            v5 = v147;
            a3 = v153;
            v28 = v149;
          }
        }
      }

      if (v27 < v151)
      {
        goto LABEL_139;
      }

      v96 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v28 = v96;
      }

      else
      {
        v28 = sub_2191F6B60(0, *(v96 + 2) + 1, 1, v96);
      }

      v10 = *(v28 + 2);
      v97 = *(v28 + 3);
      v29 = v10 + 1;
      if (v10 >= v97 >> 1)
      {
        v28 = sub_2191F6B60((v97 > 1), v10 + 1, 1, v28);
      }

      *(v28 + 2) = v29;
      v98 = &v28[16 * v10];
      *(v98 + 4) = v151;
      *(v98 + 5) = v27;
      if (!*v150)
      {
        goto LABEL_149;
      }

      if (v10)
      {
        v99 = *v150;
        while (1)
        {
          v100 = v29 - 1;
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v101 = *(v28 + 4);
            v102 = *(v28 + 5);
            v111 = __OFSUB__(v102, v101);
            v103 = v102 - v101;
            v104 = v111;
LABEL_77:
            if (v104)
            {
              goto LABEL_128;
            }

            v117 = &v28[16 * v29];
            v119 = *v117;
            v118 = *(v117 + 1);
            v120 = __OFSUB__(v118, v119);
            v121 = v118 - v119;
            v122 = v120;
            if (v120)
            {
              goto LABEL_131;
            }

            v123 = &v28[16 * v100 + 32];
            v125 = *v123;
            v124 = *(v123 + 1);
            v111 = __OFSUB__(v124, v125);
            v126 = v124 - v125;
            if (v111)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v121, v126))
            {
              goto LABEL_135;
            }

            if (v121 + v126 >= v103)
            {
              if (v103 < v126)
              {
                v100 = v29 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          v127 = &v28[16 * v29];
          v129 = *v127;
          v128 = *(v127 + 1);
          v111 = __OFSUB__(v128, v129);
          v121 = v128 - v129;
          v122 = v111;
LABEL_91:
          if (v122)
          {
            goto LABEL_130;
          }

          v130 = &v28[16 * v100];
          v132 = *(v130 + 4);
          v131 = *(v130 + 5);
          v111 = __OFSUB__(v131, v132);
          v133 = v131 - v132;
          if (v111)
          {
            goto LABEL_133;
          }

          if (v133 < v121)
          {
            goto LABEL_3;
          }

LABEL_98:
          v10 = v100 - 1;
          if (v100 - 1 >= v29)
          {
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            v142 = sub_218C81048(v10);
            goto LABEL_113;
          }

          if (!*a3)
          {
            goto LABEL_146;
          }

          v138 = v28;
          v29 = *&v28[16 * v10 + 32];
          v139 = *&v28[16 * v100 + 40];
          sub_2189EE6E8((*a3 + 8 * v29), (*a3 + 8 * *&v28[16 * v100 + 32]), (*a3 + 8 * v139), v99);
          if (v5)
          {
            goto LABEL_121;
          }

          if (v139 < v29)
          {
            goto LABEL_124;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v140 = v138;
          }

          else
          {
            v140 = sub_218C81048(v138);
          }

          if (v10 >= *(v140 + 2))
          {
            goto LABEL_125;
          }

          v141 = &v140[16 * v10];
          *(v141 + 4) = v29;
          *(v141 + 5) = v139;
          v174 = v140;
          v10 = &v174;
          sub_218C80FBC(v100);
          v28 = v174;
          v29 = *(v174 + 2);
          if (v29 <= 1)
          {
            goto LABEL_3;
          }
        }

        v105 = &v28[16 * v29 + 32];
        v106 = *(v105 - 64);
        v107 = *(v105 - 56);
        v111 = __OFSUB__(v107, v106);
        v108 = v107 - v106;
        if (v111)
        {
          goto LABEL_126;
        }

        v110 = *(v105 - 48);
        v109 = *(v105 - 40);
        v111 = __OFSUB__(v109, v110);
        v103 = v109 - v110;
        v104 = v111;
        if (v111)
        {
          goto LABEL_127;
        }

        v112 = &v28[16 * v29];
        v114 = *v112;
        v113 = *(v112 + 1);
        v111 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v111)
        {
          goto LABEL_129;
        }

        v111 = __OFADD__(v103, v115);
        v116 = v103 + v115;
        if (v111)
        {
          goto LABEL_132;
        }

        if (v116 >= v108)
        {
          v134 = &v28[16 * v100 + 32];
          v136 = *v134;
          v135 = *(v134 + 1);
          v111 = __OFSUB__(v135, v136);
          v137 = v135 - v136;
          if (v111)
          {
            goto LABEL_138;
          }

          if (v103 < v137)
          {
            v100 = v29 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_77;
      }

LABEL_3:
      v26 = a3[1];
      v29 = v160;
      if (v27 >= v26)
      {
        goto LABEL_110;
      }
    }
  }

  v28 = MEMORY[0x277D84F90];
LABEL_110:
  v29 = *v150;
  if (*v150)
  {
    v10 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    v142 = v10;
LABEL_113:
    v174 = v142;
    v10 = *(v142 + 2);
    if (v10 < 2)
    {
LABEL_121:

      return;
    }

    while (1)
    {
      v143 = *a3;
      if (!*a3)
      {
        break;
      }

      a3 = *&v142[16 * v10];
      v144 = v142;
      v145 = *&v142[16 * v10 + 24];
      sub_2189EE6E8((v143 + 8 * a3), (v143 + 8 * *&v142[16 * v10 + 16]), (v143 + 8 * v145), v29);
      if (v5)
      {
        goto LABEL_121;
      }

      if (v145 < a3)
      {
        goto LABEL_136;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = sub_218C81048(v144);
      }

      if (v10 - 2 >= *(v144 + 2))
      {
        goto LABEL_137;
      }

      v146 = &v144[16 * v10];
      *v146 = a3;
      *(v146 + 1) = v145;
      v174 = v144;
      sub_218C80FBC(v10 - 1);
      v142 = v174;
      v10 = *(v174 + 2);
      a3 = v153;
      if (v10 <= 1)
      {
        goto LABEL_121;
      }
    }

LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2189EE6E8(void **__dst, void **__src, void **a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v17 = sub_2189ED1E0(&v45, &v44);
      if (v4)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v33 = v15 - v5 + 7;
        if ((v15 - v5) >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= v5 + (v33 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if ((v15 - v5) >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v39 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = v21 - 1;
  v24 = v15 + v22;
  --v6;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29 = sub_2189ED1E0(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v31 = v6 + 1;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    --v6;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= (v43 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

id sub_2189EEA80(void *a1, uint64_t a2)
{
  v4 = sub_219BED694();
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = [a1 backingTag];
  swift_getObjectType();
  v7 = sub_219BF6254();
  swift_unknownObjectRelease();
  v8 = *(a2 + 64);
  if (v7)
  {
    if ([v8 respondsToSelector_])
    {
      result = [v8 singleTopicFeedMinFeedItemsPerRequest];
      goto LABEL_9;
    }

LABEL_12:
    sub_2189EEC00();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }

  if (([v8 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_12;
  }

  result = [v8 singleChannelFeedMinFeedItemsPerRequest];
LABEL_9:
  if (result <= v5)
  {
    return v5;
  }

  return result;
}

id sub_2189EEB80(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_2189EEBC0(void *a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_2189EEC00()
{
  result = qword_280ED2660;
  if (!qword_280ED2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2660);
  }

  return result;
}

void sub_2189EEC54()
{
  v1 = v0;
  v2 = sub_219BECB44();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  type metadata accessor for SearchHomeViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v0;
  v6 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v6)
  {
    __break(1u);
    goto LABEL_23;
  }

  v126 = v6;
  v127 = v4;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2186C709C(0, &unk_280ED7980, &protocol descriptor for SearchModuleType, 1);
  sub_219BE1E34();
  if (!v135)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_2186CB1F0(&v134, v136);
  v7 = __swift_project_boxed_opaque_existential_1(v136, v136[3]);
  v9 = v0[11];
  v8 = v0[12];
  v5 = v0[13];
  v10 = *v7;
  __swift_project_boxed_opaque_existential_1((*v7 + 16), *(*v7 + 40));
  type metadata accessor for SearchViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v125 = v9;
  v12 = v5;
  v11[4] = v8;
  v11[5] = v5;
  v128 = v8;
  swift_unknownObjectRetain();
  v13 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v13)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = sub_219BED0C4();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (v14)
  {
    sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
    sub_219BE1E34();
    if (v135)
    {
      v15 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
      v16 = MEMORY[0x28223BE20](v15);
      v18 = (&v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v21 = type metadata accessor for BaseStyler(0);
      v132 = v21;
      v22 = sub_218704030(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
      v133 = v22;
      v131[0] = v20;
      type metadata accessor for SearchHomeContainerStyler();
      v23 = swift_allocObject();
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v131, v21);
      v25 = MEMORY[0x28223BE20](v24);
      v27 = (&v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v28 + 16))(v27, v25);
      v29 = *v27;
      v23[5] = v21;
      v23[6] = v22;
      v23[2] = v29;
      __swift_destroy_boxed_opaque_existential_1(v131);
      __swift_destroy_boxed_opaque_existential_1(&v134);
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      sub_2186C709C(0, &qword_280EE5150, MEMORY[0x277D6DA40], 0);
      sub_219BE1E34();
      v30 = v134;
      if (v134)
      {
        v31 = *(&v134 + 1);
        v124 = type metadata accessor for SearchHomeContainerController();
        v32 = objc_allocWithZone(v124);
        swift_unknownObjectWeakInit();
        *&v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v33 = &v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_currentSearchTerm];
        *v33 = 0;
        v33[1] = 0xE000000000000000;
        *&v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_currentFilteredTagIDs] = 0;
        v34 = &v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_windowTitle];
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v36 = [objc_opt_self() bundleForClass_];
        v121 = 0x8000000219CDE940;
        v37 = sub_219BDB5E4();
        v39 = v38;

        *v34 = v37;
        v34[1] = v39;
        v40 = &v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_previousWindowTitle];
        *v40 = 0;
        v40[1] = 0;
        v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_shouldUpdateWindowTitle] = 1;
        *&v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_styler] = v23;
        v41 = &v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController];
        v42 = v126;
        *v41 = v126;
        v41[8] = 0;
        v43 = &v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchResultsViewController];
        *v43 = v13;
        v43[8] = 0;
        v44 = &v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_toolbarManager];
        *v44 = v30;
        v44[1] = v31;
        *&v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchOrigination] = v125;
        v45 = &v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterProvider];
        *v45 = v128;
        v45[1] = v12;
        type metadata accessor for SearchFilterBarViewModel(0);
        v46 = swift_allocObject();
        v46[3] = 0;
        swift_unknownObjectWeakInit();
        v47 = OBJC_IVAR____TtC7NewsUI224SearchFilterBarViewModel___observationRegistrar;
        swift_unknownObjectRetain();

        v48 = v42;
        v126 = v13;
        swift_unknownObjectRetain();
        v125 = v47;
        sub_219BDC234();
        v131[0] = MEMORY[0x277D84F90];
        v5 = 0;
        sub_2189F05F8(v131);
        v46[4] = v131[0];
        *&v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarViewModel] = v46;
        v131[0] = v46;
        sub_2189F082C(0);
        v50 = objc_allocWithZone(v49);
        swift_retain_n();
        v51 = sub_219BEC9B4();
        v52 = OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarHostingController;
        *&v32[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarHostingController] = v51;
        v53 = v51;
        sub_219BECB34();
        sub_219BEC9A4();

        if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
        {
LABEL_10:
          v127 = v48;
          v129.receiver = v32;
          v129.super_class = v124;
          v58 = objc_msgSendSuper2(&v129, sel_initWithNibName_bundle_, 0, 0);
          v59 = *&v58[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController];
          v60 = v58[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController + 8];
          v61 = v58;
          v62 = v59;
          v123 = v23;
          v122 = v30;
          if (v60 == 1)
          {
            v63 = sub_219BE7964();

            v62 = v63;
          }

          *&v62[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_delegate + 8] = &off_282AA06B8;
          swift_unknownObjectWeakAssign();
          v64 = v61;

          swift_getObjectType();
          v65 = v12[3];
          v66 = v64;
          v65(v66, &off_282AA0698);

          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *(&v122 - 4) = v46;
          *(&v122 - 3) = v61;
          v121 = &off_282AA06A8;
          v131[0] = v46;
          sub_218704030(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel, &unk_219C6FC7C);
          sub_219BDC1F4();

LABEL_21:
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v136);
          return;
        }

        v54 = [*&v32[v52] view];
        if (v54)
        {
          v55 = v54;
          sub_219BE8664();
          v56 = sub_219BE7BC4();

          v57 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v56 edge:1 style:0];

          [v55 addInteraction_];
          goto LABEL_10;
        }

        goto LABEL_29;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  sub_219BE1E34();
  if (!v135)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v68 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
  v69 = MEMORY[0x28223BE20](v68);
  v71 = (&v122 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71, v69);
  v73 = *v71;
  v74 = type metadata accessor for BaseStyler(0);
  v132 = v74;
  v75 = sub_218704030(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
  v133 = v75;
  v131[0] = v73;
  type metadata accessor for SearchHomeContainerStyler();
  v76 = swift_allocObject();
  v77 = __swift_mutable_project_boxed_opaque_existential_1(v131, v74);
  v5 = &v122;
  v78 = MEMORY[0x28223BE20](v77);
  v80 = (&v122 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v81 + 16))(v80, v78);
  v82 = *v80;
  v76[5] = v74;
  v76[6] = v75;
  v76[2] = v82;
  __swift_destroy_boxed_opaque_existential_1(v131);
  __swift_destroy_boxed_opaque_existential_1(&v134);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2186C709C(0, &qword_280EE5150, MEMORY[0x277D6DA40], 0);
  sub_219BE1E34();
  v83 = v134;
  if (!v134)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v84 = *(&v134 + 1);
  v124 = type metadata accessor for SearchHomeContainerController();
  v85 = objc_allocWithZone(v124);
  swift_unknownObjectWeakInit();
  *&v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v86 = &v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_currentSearchTerm];
  *v86 = 0;
  v86[1] = 0xE000000000000000;
  *&v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_currentFilteredTagIDs] = 0;
  v87 = &v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_windowTitle];
  type metadata accessor for Localized();
  v88 = swift_getObjCClassFromMetadata();
  v89 = [objc_opt_self() bundleForClass_];
  v121 = 0x8000000219CDE940;
  v90 = sub_219BDB5E4();
  v92 = v91;

  *v87 = v90;
  v87[1] = v92;
  v93 = &v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_previousWindowTitle];
  *v93 = 0;
  v93[1] = 0;
  v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_shouldUpdateWindowTitle] = 1;
  *&v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_styler] = v76;
  v94 = &v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController];
  v95 = v126;
  *v94 = v126;
  v94[8] = 0;
  v96 = &v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchResultsViewController];
  *v96 = v13;
  v96[8] = 0;
  v97 = &v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_toolbarManager];
  *v97 = v83;
  v97[1] = v84;
  *&v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchOrigination] = v125;
  v98 = &v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterProvider];
  *v98 = v128;
  v98[1] = v12;
  type metadata accessor for SearchFilterBarViewModel(0);
  v99 = swift_allocObject();
  v99[3] = 0;
  swift_unknownObjectWeakInit();
  v100 = OBJC_IVAR____TtC7NewsUI224SearchFilterBarViewModel___observationRegistrar;
  swift_unknownObjectRetain();
  v101 = v95;
  v126 = v13;

  swift_unknownObjectRetain();
  v125 = v100;
  sub_219BDC234();
  v131[0] = MEMORY[0x277D84F90];
  v5 = 0;
  sub_2189F05F8(v131);
  v99[4] = v131[0];
  *&v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarViewModel] = v99;
  v131[0] = v99;
  sub_2189F082C(0);
  v103 = objc_allocWithZone(v102);
  swift_retain_n();
  v104 = sub_219BEC9B4();
  v105 = OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarHostingController;
  *&v85[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarHostingController] = v104;
  v106 = v104;
  sub_219BECB34();
  sub_219BEC9A4();

  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
LABEL_18:
    v127 = v76;
    v111 = v12;
    v130.receiver = v85;
    v130.super_class = v124;
    v112 = objc_msgSendSuper2(&v130, sel_initWithNibName_bundle_, 0, 0, v101);
    v113 = *&v112[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController];
    v114 = v112[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController + 8];
    v115 = v112;
    v116 = v113;
    v123 = v83;
    if (v114 == 1)
    {
      v117 = sub_219BE7964();

      v116 = v117;
    }

    *&v116[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_delegate + 8] = &off_282AA06B8;
    swift_unknownObjectWeakAssign();
    v118 = v115;

    swift_getObjectType();
    v119 = v111[3];
    v66 = v118;
    v119();

    v120 = swift_getKeyPath();
    MEMORY[0x28223BE20](v120);
    *(&v122 - 4) = v99;
    *(&v122 - 3) = v115;
    v121 = &off_282AA06A8;
    v131[0] = v99;
    sub_218704030(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel, &unk_219C6FC7C);
    sub_219BDC1F4();

    goto LABEL_21;
  }

  v107 = [*&v85[v105] view];
  if (v107)
  {
    v108 = v107;
    sub_219BE8664();
    v109 = sub_219BE7BC4();

    v110 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v109 edge:1 style:0];

    [v108 addInteraction_];
    goto LABEL_18;
  }

LABEL_30:
  __break(1u);

  __break(1u);
}

char *sub_2189EFDBC(char *a1)
{
  v2 = v1;
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = *(v1 + 64);
  }

  else
  {
    sub_2189EEC54();
    v5 = *(v1 + 64);
    *(v2 + 64) = v6;
    v4 = v6;
  }

  v7 = type metadata accessor for SearchHomeCoordinatingController();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v8[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchTerm];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v8[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchOrigination];
  *v10 = 0;
  v10[8] = 1;
  *&v8[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController] = v4;
  v41.receiver = v8;
  v41.super_class = v7;
  v11 = v3;
  v12 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);
  v13 = [objc_allocWithZone(MEMORY[0x277D759F0]) initWithSearchResultsController_];
  [v13 setDelegate_];
  v14 = [v13 searchBar];
  [v14 setDelegate_];

  [v13 setShowsSearchResultsController_];
  v15 = [v13 searchBar];
  [v15 setAutocorrectionType_];

  v16 = [v13 searchBar];
  [v16 setAutocapitalizationType_];

  v17 = [v13 searchBar];
  [v17 setLookToDictateEnabled_];

  v18 = [v13 searchBar];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v21 = [v20 bundleForClass_];
  sub_219BDB5E4();

  v22 = sub_219BF53D4();

  [v18 setPlaceholder_];

  if ([*(v2 + 72) useOfflineMode])
  {
    v23 = [v13 searchBar];
    v24 = [v23 searchTextField];

    [v24 setEnabled_];
  }

  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v13;
  v27 = v13;

  swift_unknownObjectWeakAssign();
  v28 = v27;
  sub_21903F5E8();
  if (sub_219BED0C4())
  {
    v29 = a1;
  }

  else
  {
    v29 = v12;
  }

  v30 = [v29 navigationItem];
  [v30 setSearchController_];

  v31 = 2;
  if (sub_219BED0C4())
  {
    v32 = 3;
  }

  else
  {
    v32 = 2;
  }

  [v30 setPreferredSearchBarPlacement_];
  [v30 setHidesSearchBarWhenScrolling_];
  if ((sub_219BED0C4() & 1) == 0)
  {
    v33 = [v20 bundleForClass_];
    sub_219BDB5E4();

    v34 = sub_219BF53D4();

    [v30 setTitle_];

    v31 = 1;
  }

  [v30 setLargeTitleDisplayMode_];
  if ((sub_219BED0C4() & 1) == 0)
  {
    v35 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    v36 = [v35 navigationBar];
    [v36 setPrefersLargeTitles_];

    sub_219BE9D54();
    v37 = v35;
    v38 = sub_219BE9CE4();

    v30 = v28;
    v28 = v12;
    v12 = v38;
  }

  return v12;
}

double sub_2189F0398(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ([*(Strong + 72) useOfflineMode])
    {
      v6 = [a3 searchBar];
      v7 = [v6 searchTextField];

      [v7 setEnabled_];
    }
  }

  return result;
}

double sub_2189F0464(void *a1, uint64_t a2)
{
  swift_unownedRetainStrong();

  sub_219BDD224();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  sub_219BE1BA4();

  return result;
}

uint64_t sub_2189F056C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2189F05F8(uint64_t *a1)
{
  v2 = *(type metadata accessor for SearchHomeFilterItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_218C81184(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2189F08FC(v5);
  *a1 = v3;
}

uint64_t sub_2189F06A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_218704030(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel, &unk_219C6FC7C);
  sub_219BDC204();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_2189F0750(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_218704030(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel, &unk_219C6FC7C);
  sub_219BDC1F4();

  return result;
}

void sub_2189F082C(uint64_t a1)
{
  if (!qword_280E927F8)
  {
    sub_2189F0888();
    v1 = sub_219BEC9C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E927F8);
    }
  }
}

unint64_t sub_2189F0888()
{
  result = qword_280ED05A0[0];
  if (!qword_280ED05A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED05A0);
  }

  return result;
}

void sub_2189F08FC(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SearchHomeFilterItem(0);
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SearchHomeFilterItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2189F0C28(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2189F0A28(0, v2, 1, a1);
  }
}

void sub_2189F0A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SearchHomeFilterItem(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_2189F1C54(v23, v17);
      sub_2189F1C54(v20, v13);
      v24 = sub_219BDBC14();
      sub_2189F1CB8(v13);
      sub_2189F1CB8(v17);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_2189F1D14(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_2189F1D14(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2189F0C28(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for SearchHomeFilterItem(0);
  v110 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v104 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v113 = &v99 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v99 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v99 - v17;
  v112 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = a4;
    }

    else
    {
LABEL_129:
      v94 = sub_218C81048(a4);
    }

    v115 = v94;
    a4 = *(v94 + 2);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *&v94[16 * a4];
        v96 = v94;
        v97 = *&v94[16 * a4 + 24];
        sub_2189F1488(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *&v94[16 * a4 + 16], *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_218C81048(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_218C80FBC(a4 - 1);
        v94 = v115;
        a4 = *(v115 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v101 = a4;
  v114 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v105 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *v112;
      v25 = v22;
      v26 = *(v110 + 72);
      v5 = *v112 + v26 * v23;
      sub_2189F1C54(v5, v18);
      sub_2189F1C54(v24 + v26 * v25, v15);
      LODWORD(v109) = sub_219BDBC14();
      sub_2189F1CB8(v15);
      sub_2189F1CB8(v18);
      v100 = v25;
      v27 = v25 + 2;
      v111 = v26;
      v28 = v24 + v26 * v27;
      v29 = v109;
      while (v19 != v27)
      {
        sub_2189F1C54(v28, v18);
        sub_2189F1C54(v5, v15);
        v30 = sub_219BDBC14() & 1;
        sub_2189F1CB8(v15);
        sub_2189F1CB8(v18);
        ++v27;
        v28 += v111;
        v5 += v111;
        if ((v29 & 1) != v30)
        {
          v31 = v29;
          v19 = v27 - 1;
          goto LABEL_11;
        }
      }

      v31 = v29;
LABEL_11:
      v22 = v100;
      a4 = v101;
      if (v31)
      {
        if (v19 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v19)
        {
          v99 = v6;
          v32 = v111 * (v19 - 1);
          v33 = v19 * v111;
          v109 = v19;
          v34 = v19;
          v35 = v100;
          v36 = v100 * v111;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v37 + v36;
              sub_2189F1D14(v37 + v36, v104);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_2189F1D14(v104, v37 + v32);
            }

            ++v35;
            v32 -= v111;
            v33 -= v111;
            v36 += v111;
          }

          while (v35 < v34);
          v6 = v99;
          v22 = v100;
          a4 = v101;
          v19 = v109;
        }
      }
    }

    v38 = v112[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v38)
        {
          v39 = v112[1];
        }

        else
        {
          v39 = v22 + a4;
        }

        if (v39 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v105;
    }

    else
    {
      v21 = sub_2191F6B60(0, *(v105 + 2) + 1, 1, v105);
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v21 = sub_2191F6B60((v41 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v40;
    v43 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v21 + 4);
          v46 = *(v21 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_54:
          if (v48)
          {
            goto LABEL_113;
          }

          v61 = &v21[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_116;
          }

          v67 = &v21[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_120;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v71 = &v21[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_68:
        if (v66)
        {
          goto LABEL_115;
        }

        v74 = &v21[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
          __break(1u);
          goto LABEL_128;
        }

        if (!*v112)
        {
          goto LABEL_131;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_2189F1488(*v112 + *(v110 + 72) * v83, *v112 + *(v110 + 72) * *&v21[16 * v44 + 32], *v112 + *(v110 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v83)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_218C81048(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_110;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v115 = v82;
        sub_218C80FBC(v44);
        v21 = v115;
        v5 = *(v115 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v21[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_111;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v56 = &v21[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_114;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_117;
      }

      if (v60 >= v52)
      {
        v78 = &v21[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_121;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v112[1];
    v20 = v106;
    a4 = v101;
    if (v106 >= v19)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v22;
  a4 = *v112;
  v85 = *(v110 + 72);
  v86 = *v112 + v85 * (v19 - 1);
  v87 = v19;
  v88 = -v85;
  v89 = v22 - v87;
  v109 = v87;
  v103 = v85;
  v5 = a4 + v87 * v85;
  v106 = v39;
LABEL_86:
  v107 = v5;
  v108 = v89;
  v111 = v86;
  v90 = v86;
  while (1)
  {
    sub_2189F1C54(v5, v18);
    sub_2189F1C54(v90, v15);
    v91 = sub_219BDBC14();
    sub_2189F1CB8(v15);
    sub_2189F1CB8(v18);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v86 = v111 + v103;
      v89 = v108 - 1;
      v40 = v106;
      v5 = v107 + v103;
      if (++v109 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v22 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v92 = v113;
    sub_2189F1D14(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_2189F1D14(v92, v90);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_2189F1488(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v42 = type metadata accessor for SearchHomeFilterItem(0);
  MEMORY[0x28223BE20](v42);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v46 = a1;
  v45 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37[1] = v4;
    v22 = a4 + v17;
    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = v22;
      v39 = v23;
      v40 = a4;
      do
      {
        v37[0] = v25;
        v26 = a2;
        v27 = a2 + v23;
        while (1)
        {
          v29 = v43;
          if (v26 <= a1)
          {
            v46 = v26;
            v44 = v37[0];
            goto LABEL_59;
          }

          v38 = v25;
          v43 += v23;
          v30 = v24 + v23;
          sub_2189F1C54(v30, v11);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v41;
          sub_2189F1C54(v32, v41);
          v35 = sub_219BDBC14();
          v36 = v34;
          v11 = v33;
          sub_2189F1CB8(v36);
          sub_2189F1CB8(v33);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v43 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v39;
          if (!v28)
          {
            a2 = v26;
            goto LABEL_58;
          }
        }

        if (v29 < v26 || v43 >= v26)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          v23 = v39;
        }

        else
        {
          v25 = v38;
          v23 = v39;
          a2 = v31;
          if (v29 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_58:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v44 = a4 + v16;
    if (v16 >= 1 && a2 < v43)
    {
      do
      {
        sub_2189F1C54(a2, v11);
        v20 = v41;
        sub_2189F1C54(a4, v41);
        v21 = sub_219BDBC14();
        sub_2189F1CB8(v20);
        sub_2189F1CB8(v11);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v46 = a1;
      }

      while (a4 < v18 && a2 < v43);
    }
  }

LABEL_59:
  sub_2189F1B6C(&v46, &v45, &v44, type metadata accessor for SearchHomeFilterItem);
}

void sub_2189F19EC(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  sub_2189F1DCC(0, a4, a5, a6);
  v10 = *(*(v9 - 8) + 72);
  if (!v10)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (v8 - v7 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_17;
  }

  if (v6 < v7 || v6 >= v7 + (v8 - v7) / v10 * v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v6 != v7)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_2189F1B6C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2189F1C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHomeFilterItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189F1CB8(uint64_t a1)
{
  v2 = type metadata accessor for SearchHomeFilterItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2189F1D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHomeFilterItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2189F1D78()
{
  result = qword_280E8E800;
  if (!qword_280E8E800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E800);
  }

  return result;
}

void sub_2189F1DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2189F1E48(uint64_t a1)
{
  if (!qword_27CC0C660)
  {
    type metadata accessor for MyRecipesModel(255);
    sub_218704030(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C660);
    }
  }
}

uint64_t sub_2189F1EF4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v9[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE93D0 = result;
  return result;
}

uint64_t sub_2189F20E4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v9[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE93F8 = result;
  return result;
}

uint64_t sub_2189F22D4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v9[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9410 = result;
  return result;
}

uint64_t sub_2189F24C4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6588(0, &qword_280EE9068, MEMORY[0x277D83A90], MEMORY[0x277D6D108]);
  v5[2] = 0;
  v5[3] = 1036831949;
  v5[1] = 0x40000000;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9D4();
  qword_280EE93E8 = result;
  return result;
}

double sub_2189F26C4()
{

  return result;
}

uint64_t Settings.Options.Masthead.Overrides.deinit()
{
  v0 = _s11TeaSettings0B0C7NewsUI2E7ModulesV10SearchFeedV15ConfigOverridesCfd_0();

  return v0;
}

uint64_t Settings.Options.Masthead.Overrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C7NewsUI2E7ModulesV10SearchFeedV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_2189F2814()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE93A8 = result;
  return result;
}

uint64_t sub_2189F29E4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v9[15] = 1;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC0C668 = result;
  return result;
}

uint64_t sub_2189F2BD8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BF5414();
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC0C670 = result;
  return result;
}

uint64_t sub_2189F2DF0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v9[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC0C678 = result;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2189F30A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2189F30EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2189F3150(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v77 = a3;
  v78 = a2;
  v76 = sub_219BE6DF4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F3FDC(0, &qword_280EE4B18, MEMORY[0x277D6DF88]);
  v72 = v6;
  v71 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v70 = &v69 - v7;
  v83 = type metadata accessor for CuratedAudioFeedGroup(0);
  MEMORY[0x28223BE20](v83);
  v82 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v9);
  v92 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v69 - v12;
  sub_218953904(0);
  v14 = v13;
  v81 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v80 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v79 = &v69 - v17;
  MEMORY[0x28223BE20](v18);
  v94 = &v69 - v19;
  MEMORY[0x28223BE20](v20);
  v89 = &v69 - v21;
  sub_2189F3F28(0);
  v91 = v22 - 8;
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F3FBC(0);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioFeedServiceConfig(0);
  sub_2189F3EE0(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
  v30 = sub_219BEF3E4();
  v87 = v3;
  v96 = v3;
  sub_218944AE0(sub_2189F40D0, v95, v30);
  v32 = v31;

  v97 = v32;
  sub_2189F40F0(0);
  v90 = v33;
  sub_2189F3EE0(&qword_280E8F4E8, sub_2189F40F0, MEMORY[0x277D83970]);
  sub_2189F3EE0(&qword_280EE5800, sub_218953904, MEMORY[0x277D6D718]);
  v86 = sub_219BF56C4();

  v69 = v27;
  v34 = *(v27 + 16);
  v75 = a1;
  v35 = a1;
  v36 = v9;
  v37 = v26;
  v34(v29, v35, v26);
  v34(v24, v29, v26);
  v38 = *(v91 + 44);
  sub_2189F3EE0(&qword_280EE3698, sub_2189F3FBC, MEMORY[0x277D6EC70]);
  v85 = v29;
  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v24[v38] != v97)
  {
    v90 = (v81 + 32);
    v91 = v81 + 16;
    v88 = (v81 + 8);
    v84 = v36;
    while (1)
    {
      v46 = sub_219BF5EC4();
      v47 = *v91;
      v48 = v89;
      (*v91)(v89);
      v46(&v97, 0);
      v49 = v37;
      sub_219BF5E94();
      v50 = *v90;
      (*v90)(v94, v48, v14);
      v51 = v93;
      sub_219BE6934();
      sub_2189F4148(v51, v92);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v56 = 3;
LABEL_20:
        sub_2189F4210(v93, type metadata accessor for AudioFeedSectionDescriptor);
        sub_2189F4210(v92, type metadata accessor for AudioFeedSectionDescriptor);
        goto LABEL_21;
      }

      if (EnumCaseMultiPayload != 3)
      {
        sub_2189F4210(v93, type metadata accessor for AudioFeedSectionDescriptor);
LABEL_5:
        (*v88)(v94, v14);
        v37 = v49;
        goto LABEL_6;
      }

      v53 = v82;
      sub_2189F41AC(v92, v82);
      v54 = sub_219BF7614();
      sub_2189F4210(v53, type metadata accessor for CuratedAudioFeedGroup);
      sub_2189F4210(v93, type metadata accessor for AudioFeedSectionDescriptor);
      if (v54 == 1)
      {
        v55 = 5;
      }

      else
      {
        v55 = 4;
      }

      if (v54)
      {
        v56 = v55;
      }

      else
      {
        v56 = 0;
      }

LABEL_21:
      if ((sub_218C30E0C(v56, *(v87 + 16)) & 1) == 0)
      {
        goto LABEL_5;
      }

      v57 = sub_219BE6944();
      if (!*(v86 + 16))
      {

LABEL_26:
        v68 = v94;
        sub_219BE6944();
        v37 = v49;
        sub_219BEB214();

        (*v88)(v68, v14);
        goto LABEL_6;
      }

      v59 = sub_21870F700(v57, v58);
      v61 = v60;

      if ((v61 & 1) == 0)
      {
        goto LABEL_26;
      }

      v62 = v81;
      v63 = *(v86 + 56) + *(v81 + 72) * v59;
      v64 = v80;
      (v47)(v80, v63, v14);
      v65 = v79;
      v50(v79, v64, v14);
      v66 = v94;
      v37 = v49;
      sub_219BEB234();
      v67 = *(v62 + 8);
      v67(v65, v14);
      v67(v66, v14);
LABEL_6:
      sub_219BF5E84();
      if (*&v24[v38] == v97)
      {
        goto LABEL_2;
      }
    }

    if (EnumCaseMultiPayload)
    {
      v56 = 2;
    }

    else
    {
      v56 = 1;
    }

    goto LABEL_20;
  }

LABEL_2:
  sub_2189F4210(v24, sub_2189F3F28);

  v39 = v37;
  v40 = v74;
  v41 = v73;
  v42 = v76;
  (*(v74 + 104))(v73, *MEMORY[0x277D6D868], v76);
  type metadata accessor for AudioFeedModel(0);
  sub_2189F3EE0(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
  sub_2189F3EE0(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
  sub_2189F3EE0(&qword_280EBC458, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23ED4);
  v43 = v70;
  v44 = v85;
  sub_219BE85E4();
  (*(v40 + 8))(v41, v42);
  v78(v43);
  (*(v71 + 8))(v43, v72);
  return (*(v69 + 8))(v44, v39);
}

uint64_t sub_2189F3C8C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a1;
  v5 = sub_219BF0BD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2 + 5, a2[8]);
  v9 = a2[4];
  type metadata accessor for AudioFeedServiceConfig(0);
  sub_2189F3EE0(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
  sub_219BEF3A4();
  sub_218AB609C(v12, v9, v8, a3);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2189F3DFC()
{
  result = qword_280EA6D98;
  if (!qword_280EA6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6D98);
  }

  return result;
}

uint64_t sub_2189F3EE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2189F3F28(uint64_t a1)
{
  if (!qword_280E8D488)
  {
    sub_2189F3FBC(255);
    sub_2189F3EE0(&qword_280EE3698, sub_2189F3FBC, MEMORY[0x277D6EC70]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D488);
    }
  }
}

void sub_2189F3FDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_2189F3EE0(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
    v8[3] = sub_2189F3EE0(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2189F40F0(uint64_t a1)
{
  if (!qword_280E8F4F0)
  {
    sub_218953904(255);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8F4F0);
    }
  }
}

uint64_t sub_2189F4148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189F41AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedAudioFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189F4210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation6ResultOy7NewsUI28TagModelCGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2189F42B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2189F42F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2189F4358(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v28 = a3;
  v29 = a2;
  v22 = a1;
  v25 = sub_219BE6DF4();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F4DD8(0, &qword_27CC0C688, MEMORY[0x277D6DF88]);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  sub_2189F4D0C(0);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2189F4DD8(0, &qword_27CC0AE38, MEMORY[0x277D6EC60]);
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v31 = v3;
  sub_218944B34(sub_2189F4ECC, v30);
  v15 = v14;
  sub_218950D5C(0);
  v17 = v16;
  v18 = sub_2189F4FB8(&qword_27CC0C698, sub_218950D5C, MEMORY[0x277D6D720]);
  v19 = sub_2189F4FB8(&qword_27CC0C6A0, sub_218950D5C, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v15, v17, v18, v19);
  type metadata accessor for MagazineCatalogSectionDescriptor(0);
  type metadata accessor for MagazineCatalogModel(0);
  sub_2189F4FB8(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor, &unk_219C59554);
  sub_2189F4FB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel, &unk_219C20338);
  sub_219BEB2D4();
  v20 = v25;
  (*(v4 + 104))(v6, *MEMORY[0x277D6D868], v25);
  sub_2189F4FB8(&qword_27CC0C6A8, type metadata accessor for MagazineCatalogSectionDescriptor, &unk_219C59644);
  sub_219BE85E4();
  (*(v4 + 8))(v6, v20);
  v29(v9);
  (*(v26 + 8))(v9, v27);
  return (*(v23 + 8))(v13, v24);
}

uint64_t sub_2189F47B4(uint64_t a1, uint64_t a2)
{
  sub_2189F4EEC(0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for MagazineCatalogSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  sub_218950D5C(0);
  sub_219BE6934();
  v13 = a2;
  sub_218944E70(sub_2189F5000, v12);
  v6 = v5;
  sub_2189537DC(0);
  v8 = v7;
  v9 = sub_2189F4FB8(&qword_27CC0C6B8, sub_2189537DC, MEMORY[0x277D6D408]);
  v10 = sub_2189F4FB8(&qword_27CC0C6C0, sub_2189537DC, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v6, v8, v9, v10);
  type metadata accessor for MagazineCatalogModel(0);
  sub_2189F4FB8(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor, &unk_219C59554);
  sub_2189F4FB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel, &unk_219C20338);
  return sub_219BE6924();
}

uint64_t sub_2189F49F4(uint64_t a1, unint64_t *a2)
{
  v3 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  v9 = type metadata accessor for MagazineCatalogModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v18 - v13;
  sub_2189537DC(0);
  sub_219BE5FC4();
  sub_2189F5020(v14, v8);
  __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
  v15 = *a2;
  if (v15 >> 62)
  {
    v16 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = v15;
  }

  sub_2189F5084(v15);
  sub_218BA57B8(v8, v16, v5);
  sub_2189F50B4(v15);
  sub_2189F50E4(v5, v11);
  sub_2189F4FB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel, &unk_219C20338);
  sub_219BE5FB4();
  sub_21897C080(v5);
  return sub_21897C080(v8);
}

uint64_t sub_2189F4BE8(uint64_t a1)
{
  v2 = sub_2189F5148();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2189F4C28()
{
  result = qword_27CC0C680;
  if (!qword_27CC0C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C680);
  }

  return result;
}

void sub_2189F4D0C(uint64_t a1)
{
  if (!qword_27CC0C690)
  {
    sub_218950D5C(255);
    sub_2189F4FB8(&qword_27CC0C698, sub_218950D5C, MEMORY[0x277D6D720]);
    sub_2189F4FB8(&qword_27CC0C6A0, sub_218950D5C, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C690);
    }
  }
}

void sub_2189F4DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineCatalogSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineCatalogModel(255);
    v8[2] = sub_2189F4FB8(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor, &unk_219C59554);
    v8[3] = sub_2189F4FB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel, &unk_219C20338);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2189F4EEC(uint64_t a1)
{
  if (!qword_27CC0C6B0)
  {
    sub_2189537DC(255);
    sub_2189F4FB8(&qword_27CC0C6B8, sub_2189537DC, MEMORY[0x277D6D408]);
    sub_2189F4FB8(&qword_27CC0C6C0, sub_2189537DC, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C6B0);
    }
  }
}

uint64_t sub_2189F4FB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2189F5020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridItemModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2189F5084(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

double sub_2189F50B4(unint64_t a1)
{
  if ((a1 >> 62) <= 2)
  {
  }

  return result;
}

uint64_t sub_2189F50E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridItemModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2189F5148()
{
  result = qword_27CC0C6C8;
  if (!qword_27CC0C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C6C8);
  }

  return result;
}

uint64_t sub_2189F51B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 490))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 472);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2189F51FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 490) = 1;
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
      *(result + 472) = (a2 - 1);
      return result;
    }

    *(result + 490) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2189F52D8()
{
  result = qword_27CC0C6D0;
  if (!qword_27CC0C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C6D0);
  }

  return result;
}

uint64_t sub_2189F532C(uint64_t a1)
{
  v2 = v1;
  v45 = *v2;
  sub_2189F7934(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v5 = v4;
  v6 = *(v4 - 8);
  v43 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v35 - v7;
  v8 = sub_219BE22B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE22F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v5;
  v44 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  (*(v13 + 8))(v15, v12);
  v16 = sub_219BE22C4();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  if (v18)
  {
    sub_2189F7934(0, &qword_27CC0C6D8, sub_21873FA4C, MEMORY[0x277D6CF30]);
    v19 = swift_allocObject();
    v19[2] = v2;
    v19[3] = v16;
    v19[4] = v18;

    v38 = sub_219BE2F54();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v35 = sub_219BF66A4();
    v39 = v16;
    v42 = v2;
    v37 = *(v6 + 16);
    v20 = v18;
    v21 = v40;
    v22 = v41;
    v37(v40, v44, v41);
    v23 = *(v6 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    *(v24 + 24) = v20;
    v36 = v20;
    v25 = *(v6 + 32);
    v25(v24 + ((v23 + 32) & ~v23), v21, v22);

    v26 = v35;
    sub_219BE2F94();

    v37(v21, v44, v22);
    v27 = (v23 + 16) & ~v23;
    v28 = (v43 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v25(v29 + v27, v21, v22);
    v30 = (v29 + v28);
    v31 = v36;
    *v30 = v39;
    v30[1] = v31;
    v32 = sub_219BE2E54();
    v33 = sub_219BE3084();

    return v33;
  }

  else
  {
    v46 = 0;
    sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_2189F5848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2189F586C, 0, 0);
}

uint64_t sub_2189F586C()
{
  v1 = v0[3];
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2189F592C;
  v6 = v0[4];
  v5 = v0[5];

  return MEMORY[0x282192258](v6, v5, v2, v3);
}

uint64_t sub_2189F592C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_2189F5A78, 0, 0);
  }
}

void sub_2189F5A9C(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v93 = a2;
  v90 = a4;
  v91 = a5;
  v89 = a3;
  v92 = a6;
  v81 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v81);
  v82 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF2624();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BF1D74();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF2CB4();
  v84 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_219BF2634();
  v83 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F7D74(0, &unk_27CC0C6E0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v74 - v18;
  v20 = sub_219BF1584();
  v21 = *(v20 - 8);
  v87 = v20;
  v88 = v21;
  *&v22 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v85 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = [*a1 puzzleType];
  v26 = objc_opt_self();
  swift_getObjectType();
  if (![v26 isTagAllowedInContentStoreFront_])
  {
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v32 = sub_219BE5434();
    __swift_project_value_buffer(v32, qword_27CCD8BA0);
    v33 = v90;

    v34 = sub_219BE5414();
    v35 = sub_219BF61F4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v94 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2186D1058(v89, v33, &v94);
      _os_log_impl(&dword_2186C1000, v34, v35, "Cannot navigate to Puzzle: %s. Content not allowed in StoreFront.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x21CECF960](v37, -1, -1);
      MEMORY[0x21CECF960](v36, -1, -1);
    }

    v38 = swift_allocObject();
    *(v38 + 40) = &type metadata for AlertContentRegionUnavailable;
    *(v38 + 48) = sub_2189F7F2C();
    *(v38 + 56) = 1;
    v94 = v38;
    v39 = sub_2189F6690(&v94);
    goto LABEL_18;
  }

  v86 = v25;
  if (![v26 isTagAllowedForNewsVersion_])
  {
    goto LABEL_13;
  }

  v27 = [objc_opt_self() sharedInstance];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 isNewsVersionAllowed_];

    if (v29)
    {
      if (sub_219BF68F4())
      {
        v30 = v93;
        sub_219BF1B74();
        v31 = v87;
        if ((*(v88 + 48))(v19, 1, v87) == 1)
        {
          sub_2189F7BE8(v19);
          goto LABEL_27;
        }

        (*(v88 + 32))(v85, v19, v31);
        v52 = *(v30 + 104);
        v90 = *(v30 + 112);
        __swift_project_boxed_opaque_existential_1((v30 + 80), v52);
        *v13 = v24;
        v53 = v84;
        (*(v84 + 104))(v13, *MEMORY[0x277D33BA8], v11);
        swift_unknownObjectRetain();
        sub_219BF4794();
        (*(v53 + 8))(v13, v11);
        LOBYTE(v52) = sub_219BF2614();
        (*(v83 + 8))(v16, v14);
        if (v52)
        {
          (*(v88 + 8))(v85, v87);
LABEL_27:
          if ([*(v30 + 160) puzzlesEnabled])
          {
            v54 = v81;
            v55 = *(v81 + 20);
            v56 = sub_219BF24E4();
            v57 = v82;
            (*(*(v56 - 8) + 56))(&v82[v55], 1, 1, v56);
            *v57 = v24;
            *(v57 + 8) = 0;
            *(v57 + 16) = 1;
            v58 = (v57 + v54[6]);
            *v58 = 0;
            v58[1] = 0;
            v59 = (v57 + v54[7]);
            *v59 = 0;
            v59[1] = 0;
            v60 = (v57 + v54[8]);
            *v60 = 0;
            v60[1] = 0;
            v61 = swift_allocBox();
            sub_2189F7F80(v57, v62);
            v94 = v61 | 0xE000000000000006;
            swift_unknownObjectRetain();
            v39 = sub_2189F6690(&v94);
            swift_unknownObjectRelease();
            sub_218932F9C(v94);
            sub_2189F7FE4(v57);
          }

          else
          {
            swift_unknownObjectRelease();
            v39 = 1;
          }

          goto LABEL_19;
        }

        v63 = *(v30 + 144);
        v90 = *(v30 + 152);
        __swift_project_boxed_opaque_existential_1((v30 + 120), v63);
        v64 = v75;
        v65 = v76;
        v66 = v78;
        (*(v76 + 104))(v75, *MEMORY[0x277D335F0], v78);
        v68 = v79;
        v67 = v80;
        v69 = v77;
        (*(v79 + 104))(v77, *MEMORY[0x277D33990], v80);
        v70 = sub_219BF4984();
        (*(v68 + 8))(v69, v67);
        (*(v65 + 8))(v64, v66);
        v71 = swift_allocObject();
        *(v71 + 16) = v70;
        *(v71 + 56) = 2;
        v94 = v71;
        v72 = v70;
        v39 = sub_2189F6690(&v94);

        swift_unknownObjectRelease();
        v73 = sub_218932F9C(v94);
        (*(v88 + 8))(v85, v87, v73);
LABEL_19:
        *v92 = v39 & 1;
        return;
      }

      if (qword_27CC08628 != -1)
      {
        swift_once();
      }

      v47 = sub_219BE5434();
      __swift_project_value_buffer(v47, qword_27CCD8BA0);
      v48 = v90;

      v42 = sub_219BE5414();
      v49 = sub_219BF61F4();

      if (os_log_type_enabled(v42, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v94 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_2186D1058(v89, v48, &v94);
        _os_log_impl(&dword_2186C1000, v42, v49, "Cannot navigate to Puzzle: %s. Content not allowed in public build.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x21CECF960](v51, -1, -1);
        MEMORY[0x21CECF960](v50, -1, -1);
      }

      goto LABEL_17;
    }

LABEL_13:
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v40 = sub_219BE5434();
    __swift_project_value_buffer(v40, qword_27CCD8BA0);
    v41 = v90;

    v42 = sub_219BE5414();
    v43 = sub_219BF61F4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v94 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_2186D1058(v89, v41, &v94);
      _os_log_impl(&dword_2186C1000, v42, v43, "Cannot navigate to Puzzle: %s. Content not allowed for News version.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x21CECF960](v45, -1, -1);
      MEMORY[0x21CECF960](v44, -1, -1);
    }

LABEL_17:

    v46 = swift_allocObject();
    *(v46 + 40) = &type metadata for AlertContentUnavailable;
    *(v46 + 48) = sub_2189F7CD8();
    *(v46 + 56) = 1;
    v94 = v46;
    v39 = sub_2189F6690(&v94);
LABEL_18:
    swift_unknownObjectRelease();
    sub_218932F9C(v94);
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_2189F6690(unint64_t *a1)
{
  sub_2189F7934(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  v10 = *a1;
  v11 = sub_218DB24B0();
  v12 = *(v1 + 24);
  if ((v11 & 1) != 0 || !((v10 >> 58) & 0x3C | (v10 >> 1) & 3))
  {
    v13 = sub_219BDFA44();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    memset(v36, 0, 40);
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v33 = v12;
    sub_2187B153C(v34, &v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v30 + 1))
    {
      sub_21875F93C(&v29, v31);
      *&v29 = v10;
      v14 = sub_2194DA78C(v31);
      v16 = v15;
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      sub_2189F7DDC(&v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v14 = qword_280ED32D8;
      v16 = qword_280ED32E0;
      v18 = qword_280ED32E8;

      sub_2188202A8(v16);
    }

    v28[1] = v10;
    v30 = 0u;
    v29 = 0u;
    sub_2189B4E2C(v9, v6);
    sub_2187B153C(v36, v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    sub_2189B4EAC(v6, v22 + v19);
    v23 = v22 + v20;
    v24 = v31[1];
    *v23 = v31[0];
    *(v23 + 16) = v24;
    *(v23 + 32) = v32;
    v25 = (v22 + v21);
    v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v25 = 0;
    v25[1] = 0;
    *v26 = v14;
    v26[1] = v16;
    v26[2] = v18;

    sub_2188202A8(v16);
    sub_2189F7D74(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v16, v18);
    sub_2189F7DDC(v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
    sub_2189F7DDC(v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186CFDE4);
    sub_218744930(v9, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2189F7934);
    sub_218744930(&v29, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21870F240);
  }

  else
  {
    v36[0] = v12;
    *&v34[0] = v10;
    sub_2189F7D74(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    sub_2189B4DD4();
    sub_219BEB484();
  }

  return 1;
}

void sub_2189F6E98(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v85 = a2;
  v78 = a5;
  v72 = a4;
  v81 = a3;
  v8 = sub_219BF2624();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BF1D74();
  v10 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F7D74(0, &unk_27CC0C6E0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v71 - v13;
  v84 = sub_219BF1584();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F7934(0, &unk_27CC0C6F0, MEMORY[0x277D338D8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v71 - v17;
  v19 = sub_219BF2504();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v71 - v24;
  v86 = a1;
  v79 = a1;
  v26 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  v27 = swift_dynamicCast();
  v28 = *(v20 + 56);
  if (v27)
  {
    v71 = v10;
    v80 = a6;
    v28(v18, 0, 1, v19);
    (*(v20 + 32))(v25, v18, v19);
    v29 = *(v20 + 104);
    v29(v22, *MEMORY[0x277D338C8], v19);
    v30 = sub_219BF24F4();
    v31 = *(v20 + 8);
    v31(v22, v19);
    if (v30)
    {
      v32 = swift_allocObject();
      if (qword_27CC08A10 != -1)
      {
        swift_once();
      }

      v33 = v84;
      v34 = __swift_project_value_buffer(v84, qword_27CCD9060);
      v32[5] = type metadata accessor for AlertDeviceOffline(0);
      v32[6] = sub_2189F7D2C(&qword_27CC0C708, 255, type metadata accessor for AlertDeviceOffline, &unk_219C31144);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32 + 2);
      (*(v82 + 16))(boxed_opaque_existential_1, v34, v33);
      goto LABEL_16;
    }

    v29(v22, *MEMORY[0x277D338D0], v19);
    v69 = sub_219BF24F4();
    v31(v22, v19);
    if (v69)
    {
      v32 = swift_allocObject();
      v32[5] = &type metadata for AlertContentUnavailable;
      v32[6] = sub_2189F7CD8();
LABEL_16:
      *(v32 + 56) = 1;
      v86 = v32;
      v54 = sub_2189F6690(&v86);
      v70 = sub_218932F9C(v86);
      (v31)(v25, v19, v70);
      v37 = v80;
      goto LABEL_17;
    }

    v31(v25, v19);
    v36 = v85;
    v37 = v80;
    v10 = v71;
  }

  else
  {
    v28(v18, 1, 1, v19);
    sub_218744930(v18, &unk_27CC0C6F0, MEMORY[0x277D338D8], MEMORY[0x277D83D88], sub_2189F7934);
    v36 = v85;
    v37 = a6;
  }

  sub_219BF1B74();
  v38 = v82;
  v39 = v84;
  if ((*(v82 + 48))(v14, 1, v84) == 1)
  {
    sub_2189F7BE8(v14);
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v40 = sub_219BE5434();
    __swift_project_value_buffer(v40, qword_27CCD8BA0);
    v41 = v79;
    v42 = v79;
    v43 = v78;

    v44 = sub_219BE5414();
    v45 = sub_219BF61F4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v37;
      v48 = v43;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v86 = v50;
      *v46 = 136315394;
      v51 = v48;
      v37 = v47;
      *(v46 + 4) = sub_2186D1058(v72, v51, &v86);
      *(v46 + 12) = 2112;
      v52 = v41;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v53;
      *v49 = v53;
      _os_log_impl(&dword_2186C1000, v44, v45, "Cannot navigate to Puzzle: %s. %@", v46, 0x16u);
      sub_2189F7DDC(v49, &qword_280E8D9F0, &qword_280E8DA00, 0x277D82BB8, sub_2186C6148);
      MEMORY[0x21CECF960](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x21CECF960](v50, -1, -1);
      MEMORY[0x21CECF960](v46, -1, -1);
    }

    v54 = 1;
  }

  else
  {
    (*(v38 + 32))(v83, v14, v39);
    v55 = v36[18];
    v79 = v36[19];
    __swift_project_boxed_opaque_existential_1(v36 + 15, v55);
    v56 = v73;
    v57 = v75;
    (*(v10 + 104))(v73, *MEMORY[0x277D335F0], v75);
    v58 = *MEMORY[0x277D33990];
    v59 = v76;
    v60 = *(v76 + 104);
    v61 = v10;
    v62 = v74;
    v80 = v37;
    v63 = v77;
    v60(v74, v58, v77);
    v64 = sub_219BF4984();
    v65 = v63;
    v37 = v80;
    (*(v59 + 8))(v62, v65);
    (*(v61 + 8))(v56, v57);
    v66 = swift_allocObject();
    v66[2] = v64;
    *(v66 + 56) = 2;
    v86 = v66;
    v67 = v64;
    v54 = sub_2189F6690(&v86);

    v68 = sub_218932F9C(v86);
    (*(v38 + 8))(v83, v84, v68);
  }

LABEL_17:
  *v37 = v54 & 1;
}

uint64_t sub_2189F783C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2189F7934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2189F7998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_2189F5848(a1, v4, v5, v6);
}

void sub_2189F7B04(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_2189F7934(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v8 = (*(*(v7 - 8) + 80) + 16) & ~*(*(v7 - 8) + 80);
  v9 = (v3 + ((*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2189F6E98(a1, a2, v3 + v8, *v9, v9[1], a3);
}

uint64_t sub_2189F7BE8(uint64_t a1)
{
  sub_2189F7D74(0, &unk_27CC0C6E0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2189F7C7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF6FB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2189F7CD8()
{
  result = qword_27CC0C700;
  if (!qword_27CC0C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C700);
  }

  return result;
}

uint64_t sub_2189F7D2C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2189F7D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2189F7DDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2189F7C7C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2189F7E38(void *a1)
{
  sub_2189F7934(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_2189F7F2C()
{
  result = qword_27CC1DF50;
  if (!qword_27CC1DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DF50);
  }

  return result;
}

uint64_t sub_2189F7F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189F7FE4(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2189F8040(uint64_t a1, uint64_t a2)
{
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D743F8];
  v7 = v4;
  v8 = [v5 systemFontOfSize:20.0 weight:v6];
  v9 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x277D740C0];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v11 = v2[7];
  v12 = v10;
  v14 = sub_2195C990C(v11, 0, v13);
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 80) = v14;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v17 = sub_219BF5204();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

uint64_t sub_2189F8224()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2189F8288()
{
  v1 = [*(v0 + 16) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_17;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -32;
    return (v6 ^ v3) & 1;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 32;
  return (v6 ^ v3) & 1;
}

uint64_t sub_2189F8438(uint64_t a1)
{
  v3 = sub_219BF2CB4();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BF2634();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEEA34();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v1[8];
  v18 = [v17 useOfflineMode];
  if (!v18)
  {
    return v18 & 1;
  }

  if ((sub_2189F8288() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    if (sub_219BEED44())
    {
      LOBYTE(v18) = [v17 dimNonSubscriberContentOffline];
    }

    else
    {
      LOBYTE(v18) = 0;
    }

    return v18 & 1;
  }

  (*(v13 + 16))(v16, a1, v12);
  v19 = (*(v13 + 88))(v16, v12);
  if (v19 == *MEMORY[0x277D321F8])
  {
    (*(v13 + 96))(v16, v12);
    (*(v9 + 32))(v11, v16, v8);
    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    (*(v9 + 16))(v5, v11, v8);
    v21 = v38;
    v20 = v39;
    (*(v38 + 104))(v5, *MEMORY[0x277D33BB8], v39);
    v22 = v40;
    sub_219BF4794();
    (*(v21 + 8))(v5, v20);
    v23 = sub_219BF2614();
    (*(v41 + 8))(v22, v42);
    (*(v9 + 8))(v11, v8);
LABEL_5:
    LOBYTE(v18) = v23 ^ 1;
    return v18 & 1;
  }

  if (v19 == *MEMORY[0x277D32210])
  {
    (*(v13 + 96))(v16, v12);
    v24 = *v16;
    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    *v5 = v24;
    v25 = MEMORY[0x277D33BC0];
LABEL_13:
    v28 = v38;
    v27 = v39;
    (*(v38 + 104))(v5, *v25, v39);
    swift_unknownObjectRetain();
    v29 = v40;
    sub_219BF4794();
    (*(v28 + 8))(v5, v27);
    v30 = sub_219BF2614();
    swift_unknownObjectRelease();
    (*(v41 + 8))(v29, v42);
    LOBYTE(v18) = v30 ^ 1;
    return v18 & 1;
  }

  if (v19 == *MEMORY[0x277D32208])
  {
    (*(v13 + 96))(v16, v12);
    v26 = *v16;
    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    *v5 = v26;
    v25 = MEMORY[0x277D33B98];
    goto LABEL_13;
  }

  if (v19 == *MEMORY[0x277D32200])
  {
    (*(v13 + 96))(v16, v12);
    v32 = *v16;
    v33 = v16[1];
    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    *v5 = v32;
    v5[1] = v33;
    v35 = v38;
    v34 = v39;
    (*(v38 + 104))(v5, *MEMORY[0x277D33B80], v39);
    v36 = v40;
    sub_219BF4794();
    (*(v35 + 8))(v5, v34);
    v23 = sub_219BF2614();
    (*(v41 + 8))(v36, v42);
    goto LABEL_5;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_2189F8A28()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

void sub_2189F8AA0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_219BE1EF4();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F8F78();
  MEMORY[0x28223BE20](v6 - 8);
  v35 = sub_219BE1CA4();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[5];
  v33 = v2[6];
  v11 = __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
  v12 = a1;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v31[0] = v11;
    v15 = sub_21947D1C0(v13, 0);
    v16 = sub_2194ABD64(v40, v15 + 4, v13, v12);
    v31[4] = *&v40[8];
    v17 = *v40;
    v32 = v16;
    v31[3] = *&v40[16];
    v31[2] = *&v40[24];
    v31[1] = v41;

    sub_21892DE98(v17);
    if (v32 != v13)
    {
      __break(1u);
      return;
    }

    v14 = MEMORY[0x277D84F90];
  }

  v18 = sub_219BF1E54();

  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  v19 = sub_21945CCB8(v18);

  v20 = *(v19 + 16);
  if (v20)
  {
    v39 = v14;
    sub_218C34898(0, v20, 0);
    v21 = v39;
    v22 = (v4 + 16);
    v33 = v7 + 32;
    v23 = v20 - 1;
    for (i = 32; ; i += 32)
    {
      v25 = v19;
      v26 = *(v19 + i);
      *&v40[9] = *(v19 + i + 9);
      *v40 = v26;
      v38[0] = v26;
      *(v38 + 9) = *&v40[9];
      sub_218950CAC(v40, v37);
      sub_218950CAC(v40, v37);
      if (qword_280EE7CB0 != -1)
      {
        swift_once();
      }

      v27 = v36;
      v28 = __swift_project_value_buffer(v36, qword_280EE7CB8);
      (*v22)(v34, v28, v27);
      swift_getKeyPath();
      sub_219BE3374();
      sub_219BE1C94();
      sub_218950D08(v40);
      v39 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_218C34898((v29 > 1), v30 + 1, 1);
        v21 = v39;
      }

      *(v21 + 16) = v30 + 1;
      (*(v7 + 32))(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v9, v35);
      if (!v23)
      {
        break;
      }

      --v23;
      v19 = v25;
    }
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  *v40 = v21;
  sub_2189F8FFC(0, &qword_280EE6AA8, sub_2189F8FC8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
}

void sub_2189F8F78()
{
  if (!qword_280EE6878)
  {
    v0 = sub_219BE3474();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6878);
    }
  }
}

void sub_2189F8FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2189F9060(uint64_t isUniquelyReferenced_nonNull_native, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v127 = a6;
  v142 = a3;
  v129 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v129);
  v19 = (&v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_219BF0BD4();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = v20;
  v124 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D83D88];
  sub_2189FEFB4(0, &unk_280EE8530, MEMORY[0x277D2E1C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v22 - 8);
  v121 = &v115 - v23;
  sub_2189FEFB4(0, &qword_280EE80F8, MEMORY[0x277D2EF98], v21);
  MEMORY[0x28223BE20](v24 - 8);
  v120 = &v115 - v25;
  v134 = sub_219BE0FE4();
  v128 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v136 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189FEFB4(0, &qword_280EE8150, MEMORY[0x277D2EDE8], v21);
  MEMORY[0x28223BE20](v27 - 8);
  v133 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v137 = &v115 - v30;
  CACurrentMediaTime();
  sub_219BE2CF4();
  v131 = a5;
  v31 = *(a5 + 24);
  v140 = v145;
  v132 = a7;
  v123 = a8;
  v135 = a9;
  sub_2189FE1B8(v145, v31, a7, a8, a9);
  v130 = v32;
  if (v32 >> 62)
  {
LABEL_30:
    v59 = sub_219BF7214();
    v33 = v140;
    if (v59)
    {
      goto LABEL_3;
    }

LABEL_31:

    sub_2189FE9D0();
    v60 = swift_allocError();
    *v61 = 1;
    v142();

    return;
  }

  v33 = v140;
  if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_3:
  v146 = MEMORY[0x277D84F98];
  v116 = v33 >> 62;
  v119 = isUniquelyReferenced_nonNull_native;
  v118 = a2;
  v117 = v19;
  if (v33 >> 62)
  {
    isUniquelyReferenced_nonNull_native = sub_219BF7214();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_5:
      v34 = 0;
      v141 = *(v131 + 16);
      v142 = (v33 & 0xC000000000000001);
      v138 = v33 & 0xFFFFFFFFFFFFFF8;
      v19 = MEMORY[0x277D84F98];
      v139 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v142)
        {
          v35 = MEMORY[0x21CECE0F0](v34, v33);
        }

        else
        {
          if (v34 >= *(v138 + 16))
          {
            goto LABEL_28;
          }

          v35 = *(v33 + 8 * v34 + 32);
        }

        a2 = v35;
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        sub_219BE2CF4();
        v37 = v145;
        v38 = [v145 objectForKey_];

        if (v38)
        {
          break;
        }

LABEL_7:
        ++v34;
        if (v36 == isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_33;
        }
      }

      v39 = [a2 itemID];
      v40 = sub_219BF5414();
      v42 = v41;

      v43 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v146;
      *&v145 = v146;
      v46 = sub_21870F700(v40, v42);
      v47 = *(v44 + 16);
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_27;
      }

      v50 = v45;
      if (*(v44 + 24) < v49)
      {
        sub_21947DE54(v49, isUniquelyReferenced_nonNull_native);
        v51 = sub_21870F700(v40, v42);
        if ((v50 & 1) != (v52 & 1))
        {
          sub_219BF79A4();
          __break(1u);
          goto LABEL_45;
        }

        v46 = v51;
        if ((v50 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_22:

        v19 = v145;
        v57 = *(v145 + 56);
        v58 = *(v57 + 8 * v46);
        *(v57 + 8 * v46) = v43;

LABEL_23:
        v146 = v19;
        isUniquelyReferenced_nonNull_native = v139;
        v33 = v140;
        goto LABEL_7;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v45)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_219490304();
        if (v50)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      v19 = v145;
      *(v145 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v53 = (v19[6] + 16 * v46);
      *v53 = v40;
      v53[1] = v42;
      *(v19[7] + 8 * v46) = v43;

      v54 = v19[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_29;
      }

      v19[2] = v56;
      goto LABEL_23;
    }
  }

LABEL_33:
  *&v145 = v130;
  sub_2189FE7E4(0);
  sub_2189FE94C(&qword_280E8ED60, sub_2189FE7E4, MEMORY[0x277D83970]);
  v62 = sub_219BF56E4();

  MEMORY[0x28223BE20](v63);
  v113 = &v146;
  v64 = v131;
  v114 = v131;
  sub_2189451AC(sub_2189FE84C, (&v115 - 4), v62);
  v66 = v65;

  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v68 = MEMORY[0x277D83A80];
  *(v67 + 56) = MEMORY[0x277D839F8];
  *(v67 + 64) = v68;
  *(v67 + 32) = v69;
  v70 = *(v66 + 16);
  v71 = MEMORY[0x277D83C10];
  *(v67 + 96) = MEMORY[0x277D83B88];
  *(v67 + 104) = v71;
  *(v67 + 72) = v70;
  sub_219BF6214();
  sub_219BE5314("My headlines fetch headlines, time=%fms, count=%ld", v115, v116);

  v72 = *(v135 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  if (([v72 respondsToSelector_] & 1) != 0 && (v73 = objc_msgSend(v72, sel_numberOfFetchedHeadlinesToReport), v73 >= 1))
  {
    sub_2189FA304(v135, v33, v73);
    sub_2189FDE70(v74, v75, v76, &v146);
    sub_219BE0F14();
    swift_unknownObjectRelease();
    v77 = 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = sub_219BE0F24();
  (*(*(v78 - 8) + 56))(v137, v77, 1, v78);
  CACurrentMediaTime();
  v79 = (v64 + *(_s19FeedItemFetchResultVMa(0) + 36));
  sub_219BDB174();
  sub_219BE2CF4();

  v142 = v66;
  if (v116)
  {
    v141 = sub_219BF7214();
  }

  else
  {
    v141 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v140 = sub_219BF5CC4();
  MetricsVMa = _s20FeedItemFetchMetricsVMa(0);
  MEMORY[0x28223BE20](MetricsVMa);
  v113 = v79;
  sub_218F8B624(sub_2189FE86C, (&v115 - 4), v81);
  v82 = objc_opt_self();
  sub_219BDB184();
  v83 = sub_219BF5904();

  [v82 fc:v83 durationOfDateIntervalsIgnoringOverlap:?];

  v138 = sub_219BF5CC4();
  MEMORY[0x28223BE20](v138);
  v113 = v79;
  sub_218F8B624(sub_2189FF09C, (&v115 - 4), v84);
  v85 = sub_219BF5904();

  [v82 fc:v85 durationOfDateIntervalsIgnoringOverlap:?];

  sub_219BF5CC4();
  sub_219BE2CF4();

  sub_219BF5CC4();
  v86 = *(v79 + *(MetricsVMa + 20));
  if (v86 >= 3)
  {
LABEL_45:
    *&v145 = v86;
    sub_219BF7974();
    __break(1u);
  }

  else
  {
    v139 = a13;
    v87 = **(&unk_2782422A8 + v86);
    v88 = sub_219BE11A4();
    v89 = *(v88 - 8);
    v90 = v120;
    (*(v89 + 104))(v120, v87, v88);
    (*(v89 + 56))(v90, 0, 1, v88);
    v91 = v121;
    sub_218BA7880(v121);
    v113 = v90;
    v114 = v91;
    sub_219BE0FD4();
    v141 = MEMORY[0x277D2EDE8];
    sub_2189FEA94(v137, v133, &qword_280EE8150, MEMORY[0x277D2EDE8]);
    [v123 decayedPublisherDiversificationPenalty];
    v93 = v92;
    v94 = v125;
    v95 = v124;
    v96 = v126;
    (*(v125 + 16))(v124, a10, v126);
    sub_218718690(a11, &v145);
    sub_218718690(a12, v144);
    v97 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v98 = (v122 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
    v100 = (v99 + 47) & 0xFFFFFFFFFFFFFFF8;
    v101 = swift_allocObject();
    v102 = v132;
    *(v101 + 16) = v127;
    *(v101 + 24) = v102;
    (*(v94 + 32))(v101 + v97, v95, v96);
    *(v101 + v98) = v135;
    sub_2186CB1F0(&v145, v101 + v99);
    sub_2186CB1F0(v144, v101 + v100);
    *(v101 + ((v100 + 47) & 0xFFFFFFFFFFFFFFF8)) = v139;
    _s11MyHeadlinesCMa(0);
    v103 = swift_allocObject();
    v104 = OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResult;
    v143 = MEMORY[0x277D84F90];
    v138 = sub_2189FE94C(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_2189FEFB4(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
    v131 = v105;
    v140 = sub_218711654();

    v106 = v132;

    sub_219BF7164();
    sub_2189FEFB4(0, &qword_280EE7188, sub_2189FE994, MEMORY[0x277D6CEE8]);
    swift_allocObject();
    *(v103 + v104) = sub_219BE2D14();
    v107 = v128;
    (*(v128 + 16))(v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_analyticsData, v136, v134);
    v108 = v133;
    v109 = v141;
    sub_2189FEA94(v133, v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_articleScoreSummaryDataList, &qword_280EE8150, v141);
    v110 = MEMORY[0x277D84F90];
    *(v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_consumedScoredItems) = MEMORY[0x277D84F90];
    *(v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_decayedPublisherDiversificationPenalty) = v93;
    *(v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_scoredItems) = v142;
    v111 = (v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResultProvider);
    *v111 = sub_2189FE888;
    v111[1] = v101;
    swift_allocObject();
    swift_weakInit();
    v143 = v110;

    sub_219BF7164();
    swift_allocObject();
    v112 = sub_219BE2D14();

    sub_2189FEA24(v108, &qword_280EE8150, v109);
    (*(v107 + 8))(v136, v134);
    *(v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResult) = v112;

    *&v145 = v103;
    v119(&v145);
    sub_2189FEA24(v137, &qword_280EE8150, v109);
  }
}

void sub_2189FA13C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2189FA1A4(id *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [v5 identifier];
  v7 = sub_219BF5414();
  v9 = v8;

  v10 = *a2;
  if (*(v10 + 16))
  {
    v11 = sub_21870F700(v7, v9);
    v13 = v12;

    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v11);
    }
  }

  else
  {
  }

  v15 = *(a3 + 24);
  v16 = [v5 feedID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_219BF5414();
    v20 = v19;

    if (*(v15 + 16))
    {
      goto LABEL_7;
    }

LABEL_10:

    return sub_219BEDBD4();
  }

  v18 = 0;
  v20 = 0xE000000000000000;
  if (!*(v15 + 16))
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = sub_21870F700(v18, v20);
  v23 = v22;

  if (v23)
  {
    v24 = *(*(v15 + 56) + 8 * v21);
  }

  return sub_219BEDBD4();
}

uint64_t sub_2189FA304(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  if (([v6 respondsToSelector_] & 1) == 0 || objc_msgSend(v6, sel_shouldShuffleReportedHeadlines))
  {

    v24 = sub_219758FA8(v8);
    sub_218D28FEC();
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      a2 = v24;
      LODWORD(v7) = v24 < 0 || (v24 & 0x4000000000000000) != 0;
      if (v7 != 1)
      {
        v9 = *(v24 + 16);
        if (v9 >= a3)
        {
          v10 = a3;
        }

        else
        {
          v10 = *(v24 + 16);
        }

        if (a3)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v9 >= v11)
        {
LABEL_15:
          if ((a2 & 0xC000000000000001) != 0 && v11)
          {
            sub_2186C6148(0, &qword_280E8E800, 0x277D35488);

            v12 = 0;
            do
            {
              v13 = v12 + 1;
              sub_219BF7334();
              v12 = v13;
            }

            while (v11 != v13);
          }

          else
          {
          }

          if (v7)
          {
            v14 = sub_219BF7564();

            return v14;
          }

          return a2;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v20 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v20 >= a3)
    {
      v21 = a3;
    }

    else
    {
      v21 = v20;
    }

    if (v20 < 0)
    {
      v21 = a3;
    }

    if (a3)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

    if (sub_219BF7214() >= v11)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v3 = a2 >> 62;
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a3)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (result < v17)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_33:
    if ((a2 & 0xC000000000000001) != 0 && v17)
    {
      sub_2186C6148(0, &qword_280E8E800, 0x277D35488);

      v18 = 0;
      do
      {
        v19 = v18 + 1;
        sub_219BF7334();
        v18 = v19;
      }

      while (v17 != v19);
      if (!v3)
      {
        goto LABEL_38;
      }
    }

    else
    {

      if (!v3)
      {
LABEL_38:
        a2 &= 0xFFFFFFFFFFFFFF8uLL;
        return a2;
      }
    }

    return sub_219BF7564();
  }

LABEL_55:
  v22 = sub_219BF7214();
  result = sub_219BF7214();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v22 >= a3)
    {
      v23 = a3;
    }

    else
    {
      v23 = v22;
    }

    if (v22 < 0)
    {
      v23 = a3;
    }

    if (a3)
    {
      v17 = v23;
    }

    else
    {
      v17 = 0;
    }

    result = sub_219BF7214();
    if (result < v17)
    {
      goto LABEL_65;
    }

    goto LABEL_33;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_2189FA5E4@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_219BE1774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  sub_2189FEFB4(0, &qword_280EE7F38, MEMORY[0x277D2F8F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v27 - v12;
  v14 = [*a1 itemID];
  v15 = sub_219BF5414();
  v17 = v16;

  v18 = *a2;
  if (*(v18 + 16) && (v19 = sub_21870F700(v15, v17), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
    if ([v21 hasShadowScores])
    {
      [v21 shadowTabiScore];
      [v21 shadowAgedPersonalizationScore];
      sub_219BE1764();
      (*(v6 + 56))(v13, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v13, 1, 1, v5);
    }

    [v21 tabiScore];
    [v21 agedPersonalizationScore];
    sub_219BE1764();
    v24 = MEMORY[0x277D2F8F0];
    sub_2189FEA94(v13, v9, &qword_280EE7F38, MEMORY[0x277D2F8F0]);
    v25 = v28;
    sub_219BE0A14();

    sub_2189FEA24(v13, &qword_280EE7F38, v24);
    v26 = sub_219BE0A24();
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {

    v22 = sub_219BE0A24();
    return (*(*(v22 - 8) + 56))(v28, 1, 1, v22);
  }
}

uint64_t sub_2189FA970(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v43 = a6;
  v50 = a4;
  v51 = a1;
  v52 = a3;
  v53 = a2;
  v48 = sub_219BF0BD4();
  v56 = *(v48 - 8);
  v49 = *(v56 + 64);
  MEMORY[0x28223BE20](v48);
  v55 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TopicTodayFeedGroupKnobs(0);
  v47 = *(v11 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for ChannelTodayFeedGroupKnobs(0);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v40 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = a5 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  v22 = *(v21 + *(type metadata accessor for TodayConfig(0) + 20));
  v44 = v20;
  sub_2189FEB14(v22 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_channelKnobs, v20, type metadata accessor for ChannelTodayFeedGroupKnobs);
  v42 = v15;
  sub_2189FEB14(v22 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_topicKnobs, v15, type metadata accessor for TopicTodayFeedGroupKnobs);
  v58 = a7;
  type metadata accessor for FCSportsOnboardingState(0);
  sub_219BE3204();
  sub_218718690(v43, v59);
  v23 = swift_allocObject();
  v41 = a5;
  *(v23 + 16) = a5;
  sub_2186CB1F0(v59, v23 + 24);

  v24 = sub_219BE2E54();
  sub_2186E2394();
  v43 = sub_219BE2F64();

  sub_2189FEB14(v20, &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChannelTodayFeedGroupKnobs);
  v25 = v56;
  v26 = v48;
  (*(v56 + 16))(v55, v50, v48);
  sub_2189FEB14(v15, v57, type metadata accessor for TopicTodayFeedGroupKnobs);
  v27 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v28 = (v17 + *(v25 + 80) + v27) & ~*(v25 + 80);
  v29 = (v49 + *(v47 + 80) + v28) & ~*(v47 + 80);
  v30 = (v46 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v41;
  sub_2189FEF4C(v40, v33 + v27, type metadata accessor for ChannelTodayFeedGroupKnobs);
  (*(v56 + 32))(v33 + v28, v55, v26);
  sub_2189FEF4C(v57, v33 + v29, type metadata accessor for TopicTodayFeedGroupKnobs);
  *(v33 + v30) = v51;
  v35 = v52;
  v34 = v53;
  *(v33 + v31) = v52;
  *(v33 + v32) = v34;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v54;

  v36 = v35;

  v37 = sub_219BE2E54();
  sub_219BEFE34();
  v38 = sub_219BE2F64();

  sub_2189FEE28(v42, type metadata accessor for TopicTodayFeedGroupKnobs);
  sub_2189FEE28(v44, type metadata accessor for ChannelTodayFeedGroupKnobs);
  return v38;
}

uint64_t sub_2189FAEEC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1 != 1)
  {
    if (qword_280E8D910 != -1)
    {
LABEL_37:
      swift_once();
    }

    v16 = qword_280F617C0;
    v17 = sub_219BF6214();
    sub_219BE5314("Not ignoring sports tags for today feed pool because user is not onboarded to sports", 84, 2, &dword_2186C1000, v16, v17, MEMORY[0x277D84F90], v40);
    goto LABEL_12;
  }

  v6 = [*(a2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) mySportsTagID];
  if (!v6)
  {
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    v18 = qword_280F617C0;
    v19 = sub_219BF61F4();
    sub_219BE5314("Not ignoring sports tags because we have no mySportsTagID", 57, 2, &dword_2186C1000, v18, v19, MEMORY[0x277D84F90]);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = sub_219BF5414();
  v10 = v9;
  v11 = *(a2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController);
  v12 = [v11 hasMutedSubscriptionForTagID_];

  if (v12)
  {
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    v13 = qword_280F617C0;
    sub_2186F20D4(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v8;
    *(v14 + 40) = v10;
    v15 = sub_219BF6214();
    sub_219BE5314("Not ignoring sports tags because the user has muted the mySportsTagID %{public}@", 80, 2, &dword_2186C1000, v13, v15, v14);

LABEL_12:
    sub_2189FEFB4(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  v21 = [v11 cachedSubscribedTags];
  if (v21)
  {
    v22 = v21;
    sub_2186D8870();
    v23 = sub_219BF5924();
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  if (v23 >> 62)
  {
    v24 = sub_219BF7214();
    if (v24)
    {
LABEL_18:
      v25 = 0;
      v42 = MEMORY[0x277D84F90];
      do
      {
        v26 = v25;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x21CECE0F0](v26, v23);
            v25 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v27 = *(v23 + 8 * v26 + 32);
            swift_unknownObjectRetain();
            v25 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          v28 = [v27 asSports];
          if (v28)
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v26;
          if (v25 == v24)
          {
            goto LABEL_40;
          }
        }

        v41 = v4;
        v29 = [v28 identifier];
        swift_unknownObjectRelease();
        v30 = sub_219BF5414();
        v40 = v31;

        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_218840D24(0, *(v42 + 2) + 1, 1, v42);
        }

        v33 = *(v42 + 2);
        v32 = *(v42 + 3);
        if (v33 >= v32 >> 1)
        {
          v42 = sub_218840D24((v32 > 1), v33 + 1, 1, v42);
        }

        *(v42 + 2) = v33 + 1;
        v34 = &v42[16 * v33];
        v4 = v41;
        *(v34 + 4) = v30;
        *(v34 + 5) = v40;
      }

      while (v25 != v24);
      goto LABEL_40;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_18;
    }
  }

  v42 = MEMORY[0x277D84F90];
LABEL_40:

  v35 = sub_218845F78(v42);

  MEMORY[0x28223BE20](v36);
  sub_219BF29D4();
  sub_219BE3204();
  *(swift_allocObject() + 16) = v35;

  v37 = sub_219BE2E54();
  sub_2186E2394();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v35;
  v38 = sub_219BE2E54();
  v39 = sub_219BE3054();

  return v39;
}

uint64_t sub_2189FB4B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF29C4();
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = MEMORY[0x277D83B88];
  *(v3 + 64) = v5;
  *(v3 + 32) = v4;
  sub_219BF6214();
  sub_219BE5314("Returning %d sports tags to filter today feed pool against", v8);

  sub_2194796A0(v6, v2);
  sub_2189FEFB4(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2189FB608(uint64_t a1, uint64_t a2)
{
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617C0;
  v3 = sub_219BF61F4();
  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_219BE5314("Failed to fetch sports graph for determining ignored sports tag ids for onboarded user, error=%{public}@.", 105, 2, &dword_2186C1000, v2, v3, v4);

  sub_2189FEFB4(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

id sub_2189FB7A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v100 = a8;
  v109 = a7;
  v98 = a5;
  v111 = a4;
  v11 = sub_219BEED94();
  v101 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BEFD94();
  MEMORY[0x28223BE20](v14 - 8);
  v107 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189FEFB4(0, &unk_280E91800, MEMORY[0x277D32348], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v105 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v103 = v90 - v19;
  MEMORY[0x28223BE20](v20);
  v106 = v90 - v21;
  MEMORY[0x28223BE20](v22);
  v104 = v90 - v23;
  v24 = sub_219BEEDB4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v96 = v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for ChannelTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v113);
  v110 = v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for TopicTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v108);
  v102 = v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21960A8D8();

  sub_2194796A0(v30, v29);
  v32 = v31;

  sub_2194796A0(v33, v32);
  v35 = v34;
  v112 = a2;
  v36 = *(a2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  result = [v36 respondsToSelector_];
  if (result)
  {
    v92 = v24;
    v93 = a6;
    v38 = [v36 deprecatedSportsTopicTagIds];
    if (v38)
    {
      v39 = v38;
      v40 = sub_219BF5924();
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    v91 = v25;
    v41 = sub_2194B1FF0(v40, v35);

    v42 = a3;
    v43 = sub_219BEEDF4();
    sub_2194796A0(v43, v41);
    v45 = v44;
    v46 = v98;
    v47 = sub_219BEEDF4();
    sub_2194796A0(v47, v45);
    v114[14] = v48;
    if ([*(v112 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability) useFood])
    {
      v49 = [v36 foodHubTagID];
      if (v49)
      {
        v50 = v49;
        v51 = sub_219BF5414();
        v53 = v52;

        sub_219497B60(v114, v51, v53);
      }
    }

    v95 = v11;
    v97 = v13;
    v54 = v102;
    v55 = v110;
    sub_2189FC4A8(v102, v110, v112, v46, v42);
    sub_219BE1CC4();
    if (sub_219BE1CB4())
    {
      v56 = sub_2189FD370(type metadata accessor for TopicTodayFeedGroupKnobs, sub_2189FEF18);
      if (v57)
      {
        v58 = v56;
        v59 = v57;
        if (qword_280E8D7E8 != -1)
        {
          swift_once();
        }

        v60 = qword_280F61700;
        sub_2186F20D4(0);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_219C09BA0;
        *(v61 + 56) = MEMORY[0x277D837D0];
        *(v61 + 64) = sub_2186FC3BC();
        *(v61 + 32) = v58;
        *(v61 + 40) = v59;
        v62 = sub_219BF6214();
        sub_219BE5314("Created clustering request with topicKnobs=%{public}@", 53, 2, &dword_2186C1000, v60, v62, v61);

        v55 = v110;
      }

      v63 = sub_2189FD370(type metadata accessor for ChannelTodayFeedGroupKnobs, sub_2189FEEE4);
      if (v64)
      {
        v65 = v63;
        v66 = v64;
        if (qword_280E8D7E8 != -1)
        {
          swift_once();
        }

        v67 = qword_280F61700;
        sub_2186F20D4(0);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_219C09BA0;
        *(v68 + 56) = MEMORY[0x277D837D0];
        *(v68 + 64) = sub_2186FC3BC();
        *(v68 + 32) = v65;
        *(v68 + 40) = v66;
        v69 = sub_219BF6214();
        sub_219BE5314("Created clustering request with channelKnobs=%{public}@", 55, 2, &dword_2186C1000, v67, v69, v68);

        v55 = v110;
      }
    }

    v90[1] = [objc_msgSend(v109 appConfigurationManager)];
    swift_unknownObjectRelease();
    v70 = v108;
    v71 = v111;
    sub_219BEF524();
    v90[0] = v114[9];
    sub_2189FD708(v54 + v70[9], v71, 0x766146206F747541, 0xEE0073657469726FLL, v104);
    v72 = v113;
    v73 = sub_2189FD708(v55 + *(v113 + 24), v71, 0x6C656E6E616843, 0xE700000000000000, v106);
    v98 = v90;
    v94 = *(v55 + *(v72 + 28));
    MEMORY[0x28223BE20](v73);
    sub_219BEF814();
    sub_219BEED84();
    v74 = v99;
    v99 = sub_219BF5254();
    MEMORY[0x28223BE20](v99);
    v75 = v110;
    v94 = sub_219BF5254();
    v98 = v74;
    sub_2189FD708(v54 + v70[10], v71, 0x6C6172656E6547, 0xE700000000000000, v103);
    sub_2189FD708(v54 + v70[11], v71, 0x726F462065726F4DLL, 0xEC000000756F5920, v105);

    sub_219BEF524();
    sub_219BEF524();
    sub_219BEF524();
    sub_219BEF524();
    sub_219BEF524();
    v76 = [objc_msgSend(v109 appConfigurationManager)];
    swift_unknownObjectRelease();
    if ([v76 respondsToSelector_])
    {
      v77 = [v76 allowAnyChannelForTodayChannelGroups];
    }

    else
    {
      v77 = 0;
    }

    v78 = v97;
    v79 = v95;
    swift_unknownObjectRelease();
    sub_219BEF524();
    v80 = v114[0];
    *v78 = v77;
    v78[1] = v80;
    (*(v101 + 104))(v78, *MEMORY[0x277D32350], v79);
    v81 = sub_219BEE6F4();
    v114[3] = v81;
    v114[4] = MEMORY[0x277D320F0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
    v83 = v75;
    v84 = *MEMORY[0x277D329E0];
    v85 = sub_219BEFBD4();
    (*(*(v85 - 8) + 104))(boxed_opaque_existential_1, v84, v85);
    (*(*(v81 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D320E8], v81);
    result = [*(v112 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController) autoFavoriteTagIDs];
    if (result)
    {
      v86 = result;

      v87 = sub_219BF5924();

      sub_218845F78(v87);

      v88 = v96;
      sub_219BEEDA4();
      v89 = sub_219BEFF64();
      (*(v91 + 8))(v88, v92);
      sub_2189FEE28(v83, type metadata accessor for ChannelTodayFeedGroupKnobs);
      sub_2189FEE28(v102, type metadata accessor for TopicTodayFeedGroupKnobs);
      return v89;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2189FC4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides(0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  if (([v14 respondsToSelector_] & 1) != 0 && (v15 = objc_msgSend(v14, sel_todayFeedGroupClusteringKnobOverrides)) != 0)
  {
    v63 = a1;
    v65 = a4;
    v66 = a2;
    v67 = a5;
    v16 = v15;
    sub_219BF5214();

    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    v17 = qword_280F61700;
    sub_2186F20D4(0);
    v62 = v18;
    v19 = swift_allocObject();
    v61 = xmmword_219C09BA0;
    *(v19 + 16) = xmmword_219C09BA0;
    v20 = sub_219BF5224();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x277D837D0];
    v64 = sub_2186FC3BC();
    *(v19 + 64) = v64;
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v23 = v17;
    v24 = sub_219BF6214();
    sub_219BE5314("Trying convert clustering knobs overrides dictionary back into JSON data. overridesDictionary=%{public}@", 104, 2, &dword_2186C1000, v17, v24, v19);

    v25 = objc_opt_self();
    v26 = sub_219BF5204();
    v69 = 0;
    v27 = [v25 dataWithJSONObject:v26 options:0 error:&v69];

    v28 = v69;
    if (v27)
    {
      v29 = sub_219BDBA04();
      v31 = v30;

      v32 = sub_219BF6214();
      sub_219BE5314("Successfully converted overrides into data, trying to decode feed group clustering overrides", 92, 2, &dword_2186C1000, v17, v32, MEMORY[0x277D84F90]);
      sub_219BDAFF4();
      swift_allocObject();
      sub_219BDAFE4();
      sub_2189FE94C(&qword_280E98800, type metadata accessor for TodayFeedGroupClusteringKnobOverrides, &unk_219C94638);
      v33 = v29;
      v34 = v31;
      sub_219BDAFC4();
      v35 = v65;
      v36 = v63;

      v55 = swift_allocObject();
      *(v55 + 16) = v61;
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_219BF7484();
      v56 = v69;
      v57 = v70;
      v58 = v64;
      *(v55 + 56) = MEMORY[0x277D837D0];
      *(v55 + 64) = v58;
      *(v55 + 32) = v56;
      *(v55 + 40) = v57;
      v59 = sub_219BF6214();
      sub_219BE5314("Decoded feed group clustering overrides %{public}@", 50, 2, &dword_2186C1000, v23, v59, v55);

      sub_2189FCB14(v13, v35, v36);
      sub_2189FCF48(v13, v67, v66);
      sub_2186C6190(v33, v34);
      return sub_2189FEE28(v13, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
    }

    v41 = v17;
    v42 = v28;
    v43 = sub_219BDB724();

    swift_willThrow();
    v44 = v65;
    v45 = v63;
    v46 = sub_219BF61F4();
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_219C09EC0;
    v48 = sub_219BF5224();
    v50 = v49;

    v51 = MEMORY[0x277D837D0];
    v52 = v64;
    *(v47 + 56) = MEMORY[0x277D837D0];
    *(v47 + 64) = v52;
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    v69 = 0;
    v70 = 0xE000000000000000;
    v68 = v43;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v53 = v69;
    v54 = v70;
    *(v47 + 96) = v51;
    *(v47 + 104) = v52;
    *(v47 + 72) = v53;
    *(v47 + 80) = v54;
    sub_219BE5314("Failed to serialize and decode today feed group clustering overrides. Returning non-overridden knobs. Error: %{public}@", 119, 2, &dword_2186C1000, v41, v46, v47);

    sub_2189FEB14(v44, v45, type metadata accessor for TopicTodayFeedGroupKnobs);
    v40 = v66;
    v39 = v67;
  }

  else
  {
    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    v37 = qword_280F61700;
    v38 = sub_219BF6214();
    sub_219BE5314("No topic group clustering knobs overrides specified", 51, 2, &dword_2186C1000, v37, v38, MEMORY[0x277D84F90]);
    sub_2189FEB14(a4, a1, type metadata accessor for TopicTodayFeedGroupKnobs);
    v39 = a5;
    v40 = a2;
  }

  return sub_2189FEB14(v39, v40, type metadata accessor for ChannelTodayFeedGroupKnobs);
}

uint64_t sub_2189FCB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2189FEFB4(0, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v9 = type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides(0);
  sub_2189FEA94(a1 + *(v13 + 28), v8, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2189FEA24(v8, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    v14 = qword_280F61700;
    v15 = sub_219BF6214();
    sub_219BE5314("Overrides didn't specify any topic specific overrides", 53, 2, &dword_2186C1000, v14, v15, MEMORY[0x277D84F90]);
    return sub_2189FEB14(a2, a3, type metadata accessor for TopicTodayFeedGroupKnobs);
  }

  else
  {
    v30[1] = a2;
    v32 = a3;
    sub_2189FEF4C(v8, v12, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    v31 = qword_280F61700;
    sub_2186F20D4(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09EC0;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_219BF7484();
    v18 = v33;
    v19 = v34;
    v20 = MEMORY[0x277D837D0];
    *(v17 + 56) = MEMORY[0x277D837D0];
    v21 = sub_2186FC3BC();
    *(v17 + 64) = v21;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    v33 = 0;
    v34 = 0xE000000000000000;
    type metadata accessor for TopicTodayFeedGroupKnobs(0);
    sub_219BF7484();
    v22 = v33;
    v23 = v34;
    *(v17 + 96) = v20;
    *(v17 + 104) = v21;
    *(v17 + 72) = v22;
    *(v17 + 80) = v23;
    v24 = sub_219BF6214();
    v25 = v31;
    sub_219BE5314("Applying topic knob overrides %{public}@ to topic group knobs %{public}@", 72, 2, &dword_2186C1000, v31, v24, v17);

    sub_219965FB0(v12, v32);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_219BF7484();
    v27 = v33;
    v28 = v34;
    *(v26 + 56) = v20;
    *(v26 + 64) = v21;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    v29 = sub_219BF6214();
    sub_219BE5314("Final topic knobs: %{public}@", 29, 2, &dword_2186C1000, v25, v29, v26);

    return sub_2189FEE28(v12, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
  }
}

uint64_t sub_2189FCF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2189FEFB4(0, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189FEA94(a1, v8, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2189FEA24(v8, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    v13 = qword_280F61700;
    v14 = sub_219BF6214();
    sub_219BE5314("Overrides didn't specify any channel specific overrides", 55, 2, &dword_2186C1000, v13, v14, MEMORY[0x277D84F90]);
    return sub_2189FEB14(a2, a3, type metadata accessor for ChannelTodayFeedGroupKnobs);
  }

  else
  {
    v31 = a2;
    v32 = a3;
    sub_2189FEF4C(v8, v12, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    v30 = qword_280F61700;
    sub_2186F20D4(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09EC0;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_219BF7484();
    v17 = v33;
    v18 = v34;
    v19 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v20 = sub_2186FC3BC();
    *(v16 + 64) = v20;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    v33 = 0;
    v34 = 0xE000000000000000;
    type metadata accessor for ChannelTodayFeedGroupKnobs(0);
    sub_219BF7484();
    v21 = v33;
    v22 = v34;
    *(v16 + 96) = v19;
    *(v16 + 104) = v20;
    *(v16 + 72) = v21;
    *(v16 + 80) = v22;
    v23 = sub_219BF6214();
    v24 = v30;
    sub_219BE5314("Applying channel knob overrides %{public}@ to channel group knobs %{public}@", 76, 2, &dword_2186C1000, v30, v23, v16);

    sub_218CC5018(v12, v32);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C09BA0;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_219BF7484();
    v26 = v33;
    v27 = v34;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = v20;
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    v28 = sub_219BF6214();
    sub_219BE5314("Final channel knobs: %{public}@", 31, 2, &dword_2186C1000, v24, v28, v25);

    return sub_2189FEE28(v12, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
  }
}

uint64_t sub_2189FD370(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = sub_219BF5474();
  MEMORY[0x28223BE20](v4 - 8);
  sub_219BDB084();
  swift_allocObject();
  sub_219BDB074();
  a1(0);
  a2();
  v11 = sub_219BDB064();
  v13 = v12;

  v14 = objc_opt_self();
  v15 = sub_219BDB9E4();
  v30[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v30];

  v17 = v30[0];
  if (v16)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(&v31, v33);
    v18 = sub_219BF78D4();
    v30[0] = 0;
    v19 = [v14 dataWithJSONObject:v18 options:1 error:v30];
    swift_unknownObjectRelease();
    v20 = v30[0];
    if (v19)
    {
      v21 = sub_219BDBA04();
      v23 = v22;

      sub_219BF5464();
      v24 = sub_219BF5434();
      sub_2186C6190(v11, v13);
      sub_2186C6190(v21, v23);
      __swift_destroy_boxed_opaque_existential_1(&v31);
      return v24;
    }

    v28 = v20;
    v29 = sub_219BDB724();

    swift_willThrow();
    v27 = v29;
    sub_2186C6190(v11, v13);
    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  else
  {
    v25 = v17;
    v26 = sub_219BDB724();

    swift_willThrow();
    v27 = v26;
    sub_2186C6190(v11, v13);
  }

  if (qword_280E8D7E8 != -1)
  {
    swift_once();
  }

  v5 = qword_280F61700;
  v6 = sub_219BF61F4();
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_219BF7484();
  v8 = v31;
  v9 = v32;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_219BE5314("Failed to make pretty version of encodable value %{public}@", 59, 2, &dword_2186C1000, v5, v6, v7);

  return 0;
}

uint64_t sub_2189FD708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v49 = a5;
  v8 = sub_219BF0BD4();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D32720];
  sub_2189FEFB4(0, &qword_280E912E0, MEMORY[0x277D32720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v41 - v15;
  v17 = sub_219BEF814();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189FEA94(a1, v16, &qword_280E912E0, v10);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2189FEA24(v16, &qword_280E912E0, MEMORY[0x277D32720]);
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    v21 = qword_280F617C0;
    sub_2186F20D4(0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09BA0;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_2186FC3BC();
    *(v22 + 32) = v48;
    *(v22 + 40) = a4;

    v23 = sub_219BF6214();
    sub_219BE5314("Failed to create clustering options for %{public}@ knobs, will fall back to legacy clustering configuration", 107, 2, &dword_2186C1000, v21, v23, v22);

    v24 = sub_219BEED84();
    return (*(*(v24 - 8) + 56))(v49, 1, 1, v24);
  }

  else
  {
    v44 = a2;
    v26 = a4;
    (*(v18 + 32))(v20, v16, v17);
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    v27 = qword_280F617C0;
    v43 = qword_280F617C0;
    sub_2186F20D4(0);
    v41[1] = v28;
    v29 = swift_allocObject();
    v42 = xmmword_219C09EC0;
    *(v29 + 16) = xmmword_219C09EC0;
    v30 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    v31 = sub_2186FC3BC();
    *(v29 + 64) = v31;
    v32 = v48;
    *(v29 + 32) = v48;
    *(v29 + 40) = v26;
    v50 = 0;
    v51 = 0xE000000000000000;

    sub_219BF7484();
    v33 = v50;
    v34 = v51;
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 72) = v33;
    *(v29 + 80) = v34;
    v35 = sub_219BF6214();
    sub_219BE5314("Creating cluster options for %{public}@ using feed group clustering knobs %{public}@", 84, 2, &dword_2186C1000, v27, v35, v29);

    (*(v18 + 16))(v13, v20, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
    (*(v46 + 16))(v45, v44, v47);
    sub_219BEED74();
    v36 = swift_allocObject();
    *(v36 + 16) = v42;
    v37 = MEMORY[0x277D837D0];
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = v31;
    *(v36 + 32) = v32;
    *(v36 + 40) = v26;
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_2189FEFB4(0, &unk_280E91800, MEMORY[0x277D32348], MEMORY[0x277D83D88]);

    sub_219BF7484();
    v38 = v50;
    v39 = v51;
    *(v36 + 96) = v37;
    *(v36 + 104) = v31;
    *(v36 + 72) = v38;
    *(v36 + 80) = v39;
    v40 = sub_219BF6214();
    sub_219BE5314("Created clustering options for %{public}@: %{public}@", 53, 2, &dword_2186C1000, v43, v40, v36);

    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_2189FDCC8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a6;
  v25 = a5;
  v23 = a2;
  v13 = MEMORY[0x277D32720];
  sub_2189FEFB4(0, &qword_280E912E0, MEMORY[0x277D32720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  v18 = *a3;
  v17 = a3[1];
  *a1 = v18;
  a1[1] = v17;
  v19 = sub_219BEF814();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v16, a4, v19);
  (*(v20 + 56))(v16, 0, 1, v19);
  v26 = a7;
  v27 = a8;

  MEMORY[0x21CECC330](v18, v17);
  sub_2189FD708(v16, v24, v26, v27, v23);

  return sub_2189FEA24(v16, &qword_280E912E0, v13);
}

void sub_2189FDE70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  sub_2189FEFB4(0, &unk_280EE8240, MEMORY[0x277D2E9F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_219BE0A24();
  MEMORY[0x28223BE20](v12);
  v37 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v34 = &v30 - v16;
  v17 = a3 >> 1;
  v18 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    v31 = v15;
    v35 = (v15 + 32);
    v36 = (v15 + 48);
    if (a2 > v17)
    {
      v17 = a2;
    }

    v19 = v17 - a2;
    v20 = (a1 + 8 * a2);
    v21 = MEMORY[0x277D84F90];
    v32 = v12;
    v33 = a4;
    v30 = v11;
    while (v19)
    {
      v38 = *v20;
      v22 = v38;
      sub_2189FA5E4(&v38, a4, v11);
      if (v4)
      {

        return;
      }

      if ((*v36)(v11, 1, v12) == 1)
      {
        sub_2189FEA24(v11, &unk_280EE8240, MEMORY[0x277D2E9F0]);
      }

      else
      {
        v23 = v12;
        v24 = v34;
        v25 = *v35;
        (*v35)(v34, v11, v23);
        v25(v37, v24, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2191F7028(0, v21[2] + 1, 1, v21);
        }

        v27 = v21[2];
        v26 = v21[3];
        v11 = v30;
        if (v27 >= v26 >> 1)
        {
          v21 = sub_2191F7028((v26 > 1), v27 + 1, 1, v21);
        }

        v21[2] = v27 + 1;
        v28 = v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27;
        v29 = v32;
        v25(v28, v37, v32);
        v12 = v29;
        a4 = v33;
      }

      --v19;
      ++v20;
      if (!--v18)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2189FE1B8(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    sub_2186C6148(0, &qword_280E8E760, 0x277D30FA8);
    v10 = sub_219BF5204();
  }

  else
  {
    v10 = 0;
  }

  v11 = [a3 subscriptionController];
  if (!v11)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 autoFavoriteTagIDs];

  if (v13)
  {
    v14 = sub_219BF5924();
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = objc_opt_self();
  sub_218845F78(v14);

  v16 = sub_219BF5D34();

  v17 = [v15 transformationWithFeedContextByFeedID:v10 autoFavoriteTagIDs:v16];

  v18 = sub_2191F7014(0, 1, 1, MEMORY[0x277D84F90]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_2191F7014((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[40 * v20];
  *(v21 + 4) = 0xD000000000000017;
  *(v21 + 5) = 0x8000000219CDF4A0;
  *(v21 + 6) = v17;
  *(v21 + 7) = 0;
  v21[64] = 0;
  v22 = [a3 subscriptionController];
  if (!v22)
  {
    goto LABEL_38;
  }

  v23 = v22;
  v24 = [v22 newlySubscribedTagIDsInDateRange_];

  if (v24)
  {
    v25 = sub_219BF5924();
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  sub_218845F78(v25);

  v26 = MEMORY[0x277D837D0];
  v27 = sub_219BF5D34();

  if (a2)
  {
    sub_2186C6148(0, &qword_280E8E760, 0x277D30FA8);
    v28 = sub_219BF5204();
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() transformationWithTagIDs:v27 feedContextByFeedID:v28];

  if (!v29)
  {
    goto LABEL_39;
  }

  v31 = *(v18 + 2);
  v30 = *(v18 + 3);
  if (v31 >= v30 >> 1)
  {
    v18 = sub_2191F7014((v30 > 1), v31 + 1, 1, v18);
  }

  *(v18 + 2) = v31 + 1;
  v32 = &v18[40 * v31];
  *(v32 + 2) = xmmword_219C12320;
  *(v32 + 6) = v29;
  *(v32 + 7) = 0;
  v32[64] = 0;
  v33 = [objc_opt_self() transformationWithPersonalizer_];
  if (!v33)
  {
    goto LABEL_40;
  }

  v35 = *(v18 + 2);
  v34 = *(v18 + 3);
  if (v35 >= v34 >> 1)
  {
    v60 = v33;
    v18 = sub_2191F7014((v34 > 1), v35 + 1, 1, v18);
    v33 = v60;
  }

  *(v18 + 2) = v35 + 1;
  v36 = &v18[40 * v35];
  *(v36 + 2) = xmmword_219C12330;
  *(v36 + 6) = v33;
  *(v36 + 7) = 0;
  v36[64] = 0;
  v37 = NewsCoreUserDefaults();
  v38 = [v37 BOOLForKey_];

  v39 = objc_opt_self();
  if (v38)
  {
    v40 = 0x64022513ELL;
  }

  else
  {
    v40 = 0x64022113ELL;
  }

  v41 = [v39 transformationWithFilterOptions:v40 configuration:*(a5 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) context:a3];
  v43 = *(v18 + 2);
  v42 = *(v18 + 3);
  if (v43 >= v42 >> 1)
  {
    v61 = v41;
    v18 = sub_2191F7014((v42 > 1), v43 + 1, 1, v18);
    v41 = v61;
  }

  *(v18 + 2) = v43 + 1;
  v44 = &v18[40 * v43];
  *(v44 + 4) = v41;
  *(v44 + 5) = 0;
  *(v44 + 6) = 0;
  *(v44 + 7) = 0;
  v44[64] = 1;
  sub_218FD1490(a1, v18);
  v46 = v45;
  v48 = v47;

  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  v49 = qword_280F617C0;
  sub_2186F20D4(0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_219C0B8C0;
  if (a1 >> 62)
  {
    v62 = v50;
    v51 = sub_219BF7214();
    v50 = v62;
  }

  else
  {
    v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = MEMORY[0x277D83B88];
  v53 = MEMORY[0x277D83C10];
  *(v50 + 56) = MEMORY[0x277D83B88];
  *(v50 + 64) = v53;
  *(v50 + 32) = v51;
  if (v46 >> 62)
  {
    v63 = v50;
    v54 = sub_219BF7214();
    v50 = v63;
  }

  else
  {
    v54 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v50 + 96) = v52;
  *(v50 + 104) = v53;
  *(v50 + 72) = v54;
  v55 = v50;
  v56 = sub_218FD25C8(v48);
  v58 = v57;
  v55[17] = v26;
  v55[18] = sub_2186FC3BC();
  v55[14] = v56;
  v55[15] = v58;
  v59 = sub_219BF6214();
  sub_219BE5314("My headlines fetch filtered feed items from %ld to %ld for reasons: %{public}@", 78, 2, &dword_2186C1000, v49, v59, v55);
}

void sub_2189FE7E4(uint64_t a1)
{
  if (!qword_280E8ED70)
  {
    sub_2186C6148(255, &qword_280E8E800, 0x277D35488);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8ED70);
    }
  }
}

uint64_t sub_2189FE888(uint64_t a1)
{
  v3 = *(sub_219BF0BD4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v5);
  v11 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_2189FA970(a1, v8, v9, v1 + v4, v10, v1 + v6, v1 + v7, v11);
}

uint64_t sub_2189FE94C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2189FE9D0()
{
  result = qword_280EBCB60[0];
  if (!qword_280EBCB60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBCB60);
  }

  return result;
}

uint64_t sub_2189FEA24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2189FEFB4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2189FEA94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2189FEFB4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2189FEB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189FEB7C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

void sub_2189FEBF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig(255);
    v7 = sub_2189FE94C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id sub_2189FEC94(uint64_t *a1)
{
  v3 = *(type metadata accessor for ChannelTodayFeedGroupKnobs(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BF0BD4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for TopicTodayFeedGroupKnobs(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2189FB7A8(a1, *(v1 + 16), v1 + v4, v1 + v7, (v1 + v10), *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2189FEE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189FEF4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2189FEFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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