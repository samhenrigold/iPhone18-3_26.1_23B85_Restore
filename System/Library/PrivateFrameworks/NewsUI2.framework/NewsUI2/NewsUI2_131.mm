uint64_t sub_21954C4E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21954C548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_21954C5EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = sub_219BF17D4();
  v6 = v5;
  if (v4 == sub_219BF17D4() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_219BF78F4();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_21954C6B8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for MyRecipesConfig(0);
  a1[4] = sub_21954C708();
  *a1 = v3;
}

unint64_t sub_21954C708()
{
  result = qword_27CC1BA88;
  if (!qword_27CC1BA88)
  {
    type metadata accessor for MyRecipesConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BA88);
  }

  return result;
}

uint64_t type metadata accessor for MyRecipesLayoutModel(uint64_t a1)
{
  result = qword_27CC1BA90;
  if (!qword_27CC1BA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21954C7AC()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21954CF54(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_21954C910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21954CF54(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_21954C9FC(uint64_t a1)
{
  v2 = sub_21954CFB8(&qword_27CC1BAA0, &unk_219C89080);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21954CAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21954CF54(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_21954CCAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21954CF54(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21954CE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21954CF54(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_21954CF54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyRecipesLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21954CFB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MyRecipesLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21954D0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v5[23] = type metadata accessor for MyRecipesLayoutModel(0);
  v5[24] = swift_task_alloc();
  v6 = sub_219BEF974();
  v5[25] = v6;
  v5[26] = *(v6 - 8);
  v5[27] = swift_task_alloc();
  sub_218C3F258(0);
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  v8 = sub_219BE9FA4();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  v9 = MEMORY[0x277D83D88];
  sub_21954F190(0, &qword_280EE9048, MEMORY[0x277D6D1A0], MEMORY[0x277D83D88]);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v10 = sub_219BDCB14();
  v5[38] = v10;
  v5[39] = *(v10 - 8);
  v5[40] = swift_task_alloc();
  v11 = sub_219BEE074();
  v5[41] = v11;
  v5[42] = *(v11 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  sub_21954F190(0, &qword_280E91990, MEMORY[0x277D32218], v9);
  v5[45] = swift_task_alloc();
  sub_21954F190(0, &qword_280E91548, MEMORY[0x277D325F8], v9);
  v5[46] = swift_task_alloc();
  sub_219BF2124();
  v5[47] = swift_task_alloc();
  sub_21954F190(0, &qword_280E924F8, MEMORY[0x277D31DD0], v9);
  v5[48] = swift_task_alloc();
  sub_21954EFE0(0, &qword_27CC0B168, MEMORY[0x277D6D710]);
  v5[49] = v12;
  v5[50] = *(v12 - 8);
  v5[51] = swift_task_alloc();
  sub_218C3F2EC(0);
  v5[52] = v13;
  v5[53] = *(v13 - 8);
  v5[54] = swift_task_alloc();
  v14 = sub_219BE8944();
  v5[55] = v14;
  v5[56] = *(v14 - 8);
  v5[57] = swift_task_alloc();
  v15 = sub_219BE8164();
  v5[58] = v15;
  v5[59] = *(v15 - 8);
  v5[60] = swift_task_alloc();
  sub_219BEF6B4();
  v5[61] = swift_task_alloc();
  v16 = sub_219BEF594();
  v5[62] = v16;
  v5[63] = *(v16 - 8);
  v5[64] = swift_task_alloc();
  sub_219BEF5B4();
  v5[65] = swift_task_alloc();
  sub_219BEF604();
  v5[66] = swift_task_alloc();
  sub_219BEF644();
  v5[67] = swift_task_alloc();
  sub_219BEF664();
  v5[68] = swift_task_alloc();
  v17 = sub_219BEF694();
  v5[69] = v17;
  v5[70] = *(v17 - 8);
  v5[71] = swift_task_alloc();
  sub_21954F190(0, &qword_280E91358, MEMORY[0x277D326A8], v9);
  v5[72] = swift_task_alloc();
  sub_21954F190(0, &qword_280E91368, MEMORY[0x277D32698], v9);
  v5[73] = swift_task_alloc();
  v18 = sub_219BEF6C4();
  v5[74] = v18;
  v5[75] = *(v18 - 8);
  v5[76] = swift_task_alloc();
  sub_219BDCAF4();
  v5[77] = swift_task_alloc();
  v19 = sub_219BDCAE4();
  v5[78] = v19;
  v5[79] = *(v19 - 8);
  v5[80] = swift_task_alloc();
  v20 = sub_219BDCAB4();
  v5[81] = v20;
  v5[82] = *(v20 - 8);
  v5[83] = swift_task_alloc();
  sub_21954F190(0, &unk_280E90C60, MEMORY[0x277D32FE0], v9);
  v5[84] = swift_task_alloc();
  v21 = sub_219BF0634();
  v5[85] = v21;
  v5[86] = *(v21 - 8);
  v5[87] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21954DA58, 0, 0);
}

void *sub_21954DA58()
{
  v76 = v0[87];
  v86 = v0[86];
  v84 = v0[85];
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v106 = v0[80];
  v98 = v0[79];
  v102 = v0[78];
  v82 = v0[76];
  v88 = v0[75];
  v89 = v0[74];
  v64 = v0[72];
  v5 = v0[70];
  v66 = v0[71];
  v68 = v0[69];
  v62 = v0[73];
  v78 = v0[64];
  v74 = v0[63];
  v63 = *(*(v0[22] + 24) + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_log);
  v71 = v0[62];
  v95 = v0[60];
  v91 = v0[59];
  v93 = v0[58];
  v101 = v0[57];
  v97 = v0[56];
  v100 = v0[55];
  v6 = v0[20];
  (*(v86 + 16))();
  v7 = sub_219BF0BD4();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
  v65 = v63;
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v8 = sub_219BEF624();
  (*(*(v8 - 8) + 56))(v62, 1, 1, v8);
  v9 = sub_219BEF684();
  (*(*(v9 - 8) + 56))(v64, 1, 1, v9);
  (*(v5 + 104))(v66, *MEMORY[0x277D326B0], v68);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v74 + 104))(v78, *MEMORY[0x277D32680], v71);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  sub_219BEE0E4();

  (*(v88 + 8))(v82, v89);
  (*(v98 + 8))(v106, v102);
  (*(v3 + 8))(v2, v4);
  sub_218864E0C(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v86 + 8))(v76, v84);
  (*(v91 + 16))(v95, v6, v93);
  (*(v97 + 104))(v101, *MEMORY[0x277D6E078], v100);
  sub_2189540C0(0);
  sub_21954F148(&qword_27CC0B188, sub_2189540C0, MEMORY[0x277D6EC70]);
  v10 = sub_219BF5E44();
  if (v10)
  {
    v11 = v10;
    v108 = MEMORY[0x277D84F90];
    sub_218C37AD0(0, v10 & ~(v10 >> 63), 0);
    v12 = v108;
    result = sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v14 = v0;
      v15 = 0;
      v16 = v0[50];
      v80 = (v16 + 16);
      v81 = v0 + 7;
      v17 = v0[42];
      v83 = (v0[39] + 8);
      v77 = (v17 + 16);
      v75 = (v0[32] + 104);
      v67 = v0[26];
      v99 = v0[29];
      v72 = (v17 + 8);
      v73 = v0[53];
      v85 = (v16 + 8);
      v70 = *MEMORY[0x277D6E980];
      v69 = *MEMORY[0x277D6E988];
      v79 = v11;
      while (1)
      {
        v18 = __OFADD__(v15, 1);
        v19 = v15 + 1;
        if (v18)
        {
          break;
        }

        v20 = v14[51];
        v21 = sub_219BF5EC4();
        (*v80)(v20);
        v21(v81, 0);
        sub_219BE6934();
        v22 = v14[13];
        v23 = OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_dataSource;
        v94 = v12;
        v96 = v14[11];
        if (*(v96 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_dataSource) == 1)
        {
          sub_21954F190(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
          sub_219BF14C4();
          *(swift_allocObject() + 16) = xmmword_219C09BA0;
          sub_219BF2114();
          sub_219BF14A4();
          sub_219BEDB54();
          v24 = 0;
        }

        else
        {
          v24 = 1;
        }

        v25 = v14[48];
        v26 = sub_219BEDB64();
        (*(*(v26 - 8) + 56))(v25, v24, 1, v26);
        v87 = v19;
        if (*(v96 + v23) == 1)
        {
          v14[17] = v22;
          sub_219BF7894();
        }

        v28 = v14[45];
        v27 = v14[46];
        v29 = v14[36];
        v90 = v14[37];
        v92 = v14[35];
        v103 = v14[34];
        v30 = sub_219BEF4E4();
        (*(*(v30 - 8) + 56))(v27, 1, 1, v30);
        v31 = sub_219BEEA64();
        (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
        sub_21954F0A0();
        sub_21954F148(&qword_27CC1BAB0, type metadata accessor for MyRecipesModel, &unk_219C899B8);
        sub_219BE69F4();

        sub_218864E0C(v28, &qword_280E91990, MEMORY[0x277D32218]);
        sub_218864E0C(v27, &qword_280E91548, MEMORY[0x277D325F8]);
        v32 = sub_219BDCB24();
        *(v14 + 1) = 0u;
        *(v14 + 2) = 0u;
        v14[6] = 0;
        v33 = *(*(v32 - 8) + 56);
        v33(v90, 1, 1, v32);
        v33(v29, 1, 1, v32);
        v33(v92, 1, 1, v32);
        v33(v103, 1, 1, v32);
        sub_219BDCB04();
        sub_219BEE0B4();
        v34 = v14[43];
        v35 = v14[44];
        v37 = v14[40];
        v36 = v14[41];
        v38 = v14[38];
        v39 = v14[33];
        v40 = v14[31];

        (*v83)(v37, v38);
        sub_218864E0C((v14 + 2), &qword_280E91020, sub_2189BD704);
        (*v77)(v34, v35, v36);
        v14[14] = sub_21954F284(v34);
        v14[15] = v41;
        v42 = sub_219BE9F84();
        (*(*(v42 - 8) + 104))(v39, v70, v42);
        (*v75)(v39, v69, v40);
        v43 = sub_219BEE004();
        v44 = *(v43 + 16);
        if (v44)
        {
          v109 = MEMORY[0x277D84F90];
          sub_218C37B20(0, v44, 0);
          v45 = v43 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
          v104 = *(v67 + 16);
          v105 = *(v67 + 72);
          do
          {
            v46 = v14[27];
            v48 = v14[24];
            v47 = v14[25];
            v104(v46, v45, v47);
            v104(v48, v46, v47);
            sub_21954F148(&qword_27CC0F628, type metadata accessor for MyRecipesLayoutModel, &unk_219C89048);
            sub_219BE75D4();
            (*(v67 + 8))(v46, v47);
            v50 = *(v109 + 16);
            v49 = *(v109 + 24);
            if (v50 >= v49 >> 1)
            {
              sub_218C37B20((v49 > 1), v50 + 1, 1);
            }

            v51 = v14[30];
            v52 = v14[28];
            *(v109 + 16) = v50 + 1;
            (*(v99 + 32))(v109 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v50, v51, v52);
            v45 += v105;
            --v44;
          }

          while (v44);
        }

        v107 = v14[51];
        v54 = v14[48];
        v53 = v14[49];
        v55 = v14[44];
        v56 = v14[41];
        sub_21954F0F4();
        sub_21954F148(&qword_27CC1BAA0, type metadata accessor for MyRecipesLayoutModel, &unk_219C89080);
        sub_219BE81A4();

        (*v72)(v55, v56);
        sub_218864E0C(v54, &qword_280E924F8, MEMORY[0x277D31DD0]);
        (*v85)(v107, v53);
        v12 = v94;
        v58 = *(v94 + 16);
        v57 = *(v94 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_218C37AD0((v57 > 1), v58 + 1, 1);
          v12 = v94;
        }

        v59 = v14[54];
        v60 = v14[52];
        *(v12 + 16) = v58 + 1;
        (*(v73 + 32))(v12 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v58, v59, v60);
        result = sub_219BF5E94();
        v15 = v87;
        if (v87 == v79)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v14 = v0;
LABEL_20:
    sub_21954F0F4();
    sub_21954F148(&qword_27CC1BAA0, type metadata accessor for MyRecipesLayoutModel, &unk_219C89080);
    sub_219BE6564();
    sub_219BEE0C4();

    v61 = v14[1];

    return v61();
  }

  return result;
}

uint64_t sub_21954EF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_21954D0B0(a1, a2, a3, a4);
}

void sub_21954EFE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyRecipesSectionDescriptor;
    v8[1] = type metadata accessor for MyRecipesModel(255);
    v8[2] = sub_21895406C();
    v8[3] = sub_21954F148(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21954F0A0()
{
  result = qword_27CC1BAA8;
  if (!qword_27CC1BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BAA8);
  }

  return result;
}

unint64_t sub_21954F0F4()
{
  result = qword_27CC1BAB8;
  if (!qword_27CC1BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BAB8);
  }

  return result;
}

uint64_t sub_21954F148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21954F190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21954F208(uint64_t a1)
{
  v2 = sub_21954F848();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_21954F244(uint64_t a1)
{
  v2 = sub_21954F0F4();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21954F284(uint64_t a1)
{
  v2 = type metadata accessor for MyRecipesLayoutSectionDescriptor.Footer(0);
  v49 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MyRecipesLayoutSectionDescriptor.Header(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE9834();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v9 + 104;
  v14 = *(v9 + 104);
  v14(v12, *MEMORY[0x277D6E758], v8, v10);
  v15 = sub_219BEE054();
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v44 = v17;
  v17(v12, v8);
  v18 = *(v15 + 16);
  v46 = a1;
  if (v18)
  {
    v40[0] = v14;
    v40[1] = v13;
    v41 = v12;
    v42 = v16;
    v43 = v8;
    v50 = MEMORY[0x277D84F90];
    sub_218C37BC0(0, v18, 0);
    v19 = v15;
    v20 = v50;
    v48 = sub_219BF00D4();
    v21 = *(v48 - 8);
    v47 = *(v21 + 16);
    v22 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    do
    {
      v47(v7, v22, v48);
      v50 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_218C37BC0((v24 > 1), v25 + 1, 1);
        v20 = v50;
      }

      *(v20 + 16) = v25 + 1;
      sub_21954F7E0(v7, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, type metadata accessor for MyRecipesLayoutSectionDescriptor.Header);
      v22 += v23;
      --v18;
    }

    while (v18);

    a1 = v46;
    v8 = v43;
    v12 = v41;
    (v40[0])(v41, *MEMORY[0x277D6E750], v43);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
    (v14)(v12, *MEMORY[0x277D6E750], v8);
  }

  v26 = sub_219BEE054();
  v44(v12, v8);
  v27 = *(v26 + 16);
  v28 = v45;
  if (v27)
  {
    v50 = MEMORY[0x277D84F90];
    sub_218C37B70(0, v27, 0);
    v29 = v50;
    v48 = sub_219BF00D4();
    v30 = *(v48 - 8);
    v31 = *(v30 + 16);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v47 = v26;
    v33 = v26 + v32;
    v34 = *(v30 + 72);
    do
    {
      v31(v28, v33, v48);
      v50 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_218C37B70((v35 > 1), v36 + 1, 1);
        v29 = v50;
      }

      *(v29 + 16) = v36 + 1;
      sub_21954F7E0(v28, v29 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v36, type metadata accessor for MyRecipesLayoutSectionDescriptor.Footer);
      v33 += v34;
      --v27;
    }

    while (v27);
    v37 = sub_219BEE074();
    (*(*(v37 - 8) + 8))(v46, v37);
  }

  else
  {

    v38 = sub_219BEE074();
    (*(*(v38 - 8) + 8))(a1, v38);
  }

  return v20;
}

uint64_t sub_21954F7E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21954F848()
{
  result = qword_27CC1BAC0;
  if (!qword_27CC1BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BAC0);
  }

  return result;
}

void sub_21954F8DC(void *a1)
{
  sub_2189F1E48(0);
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_218C812D8(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_219552D60(v6);
  *a1 = v4;
}

uint64_t sub_21954F984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v45);
  v43 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40320(0);
  v42 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F1E48(0);
  v44 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219552B74(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21954FE1C(a1, a3);
  v20 = v19;
  v47 = a3;
  v48 = a1;
  v49 = a2;
  v21 = *(v19 + 16);
  if (v21)
  {
    v36[2] = v18;
    v36[3] = a4;
    v46 = MEMORY[0x277D84F90];

    sub_218C37A80(0, v21, 0);
    v22 = v46;
    v23 = *(v10 + 16);
    v39 = v10 + 16;
    v40 = v23;
    v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v36[1] = v20;
    v25 = (v20 + v24);
    v26 = *(v10 + 72);
    v37 = (v10 + 8);
    v38 = v26;
    v36[4] = v13 + 32;
    v27 = v41;
    do
    {
      v28 = v13;
      v29 = v42;
      v30 = v40;
      v40(v27, v25, v42);
      v30(v43, v27, v29);
      sub_2186EF7D4(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
      sub_219BE5FB4();
      (*v37)(v27, v29);
      v46 = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_218C37A80((v31 > 1), v32 + 1, 1);
        v22 = v46;
      }

      *(v22 + 16) = v32 + 1;
      v13 = v28;
      (*(v28 + 32))(v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v32, v15, v44);
      v25 += v38;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v33 = sub_2186EF7D4(&qword_27CC1BAF0, sub_2189F1E48, MEMORY[0x277D6D408]);
  v34 = sub_2186EF7D4(&qword_27CC1BAF8, sub_2189F1E48, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v22, v44, v33, v34);
  sub_21895406C();
  sub_2186EF7D4(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
  return sub_219BE6924();
}

void sub_21954FE1C(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v87 = type metadata accessor for MyRecipeItem.Resolved(0);
  v58 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C40320(0);
  v91 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF3C84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v88 = a2;
  v85 = OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_formatContent;
  v15 = sub_219BF18E4();
  v76 = *(v15 + 16);
  if (!v76)
  {
LABEL_57:

    return;
  }

  v16 = 0;
  v83 = OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_feedContext;
  v75 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v74 = v9 + 16;
  v73 = v9 + 88;
  v72 = *MEMORY[0x277D34128];
  v71 = *MEMORY[0x277D34108];
  v70 = *MEMORY[0x277D34100];
  v69 = *MEMORY[0x277D34130];
  v68 = *MEMORY[0x277D34118];
  v67 = *MEMORY[0x277D340E8];
  v66 = *MEMORY[0x277D340F8];
  v65 = *MEMORY[0x277D34120];
  v17 = (v9 + 8);
  v64 = *MEMORY[0x277D34110];
  v82 = v5 + 32;
  v81 = xmmword_219C09EC0;
  v80 = MEMORY[0x277D84F90];
  v62 = *MEMORY[0x277D340F0];
  v77 = (v9 + 8);
  v84 = v5;
  v57 = v8;
  v56 = v9;
  v55 = v11;
  v78 = v14;
  v63 = v15;
  while (v16 < *(v15 + 16))
  {
    v18 = *(v9 + 72);
    v79 = v16;
    v19 = *(v9 + 16);
    v19(v14, v75 + v18 * v16, v8);
    v19(v11, v14, v8);
    v20 = (*(v9 + 88))(v11, v8);
    if (v20 == v72 || v20 == v71 || v20 == v70 || v20 == v69 || v20 == v68 || v20 == v67 || v20 == v66 || v20 == v65 || v20 == v64)
    {
      v29 = *v17;
      v30 = v14;
      v31 = v11;
      (*v17)(v11, v8);
      v32 = v30;
LABEL_41:
      v29(v32, v8);
      v35 = MEMORY[0x277D84F90];
      goto LABEL_44;
    }

    if (v20 != v62)
    {
      v29 = *v17;
      (*v17)(v14, v8);
      v31 = v11;
      v32 = v11;
      goto LABEL_41;
    }

    v33 = v60;
    v34 = *(v60 + 16);
    v61 = v17 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v34)
    {
      v93 = MEMORY[0x277D84F90];
      sub_218C37A30(0, v34, 0);
      v35 = v93;
      v90 = *(v59 + 16);
      v36 = v33 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v89 = *(v58 + 72);
      do
      {
        v37 = v86;
        sub_219552C40(v36, v86, type metadata accessor for MyRecipeItem.Resolved);
        v92 = *v37;
        sub_21871D24C();
        v38 = swift_allocObject();
        *(v38 + 16) = v81;
        *(v38 + 32) = sub_219BF17D4();
        *(v38 + 40) = v39;
        *(v38 + 48) = 0x73657069636572;
        *(v38 + 56) = 0xE700000000000000;
        MEMORY[0x21CEC80A0](v38);

        sub_219BDBD34();
        sub_2186EF7D4(&qword_280EE9C80, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        sub_219BEE1D4();

        sub_219552CA8(v37, type metadata accessor for MyRecipeItem.Resolved);
        v93 = v35;
        v41 = *(v35 + 16);
        v40 = *(v35 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_218C37A30((v40 > 1), v41 + 1, 1);
          v35 = v93;
        }

        *(v35 + 16) = v41 + 1;
        (*(v84 + 32))(v35 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v41, v7, v91);
        v36 += v89;
        --v34;
      }

      while (v34);
      v42 = *v77;
      v8 = v57;
      (*v77)(v78, v57);
      v9 = v56;
      v11 = v55;
    }

    else
    {
      v42 = *v17;
      (*v17)(v78, v8);
      v35 = MEMORY[0x277D84F90];
    }

    v31 = v11;
    v42(v11, v8);
LABEL_44:
    v43 = v35;
    v44 = *(v35 + 16);
    v45 = v80;
    v46 = v80[2];
    v47 = v46 + v44;
    if (__OFADD__(v46, v44))
    {
      goto LABEL_59;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v47 <= v45[3] >> 1)
    {
      v17 = v77;
      v49 = v45;
    }

    else
    {
      if (v46 <= v47)
      {
        v50 = v46 + v44;
      }

      else
      {
        v50 = v46;
      }

      v49 = sub_2191FADFC(isUniquelyReferenced_nonNull_native, v50, 1, v45);
      v17 = v77;
    }

    v51 = *(v43 + 16);
    v80 = v49;
    if (v51)
    {
      if ((v49[3] >> 1) - v49[2] < v44)
      {
        goto LABEL_61;
      }

      v11 = v31;
      swift_arrayInitWithCopy();

      v14 = v78;
      if (v44)
      {
        v52 = v80[2];
        v53 = __OFADD__(v52, v44);
        v54 = v52 + v44;
        if (v53)
        {
          goto LABEL_62;
        }

        v80[2] = v54;
      }
    }

    else
    {

      v11 = v31;
      v14 = v78;
      if (v44)
      {
        goto LABEL_60;
      }
    }

    v16 = v79 + 1;
    v15 = v63;
    if (v79 + 1 == v76)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

void sub_2195506A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v160 = a4;
  v151 = a3;
  v152 = a2;
  v150 = a5;
  sub_219552B74(0);
  MEMORY[0x28223BE20](v6 - 8);
  v149 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219552D08(0);
  MEMORY[0x28223BE20](v8 - 8);
  v153 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v172 = &v146 - v11;
  MEMORY[0x28223BE20](v12);
  v171 = &v146 - v13;
  v158 = type metadata accessor for MyRecipeItem.Resolved(0);
  v148 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v177 = (&v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = sub_219BF0B74();
  v15 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v168 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40320(0);
  v182 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v174 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v180 = &v146 - v21;
  v159 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v159);
  v157 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  *&v167 = &v146 - v24;
  sub_2189F1E48(0);
  v181 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v173 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v156 = &v146 - v29;
  MEMORY[0x28223BE20](v30);
  v176 = &v146 - v31;
  MEMORY[0x28223BE20](v32);
  v175 = &v146 - v33;
  sub_218953FB4(0);
  v35 = v34;
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v38 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219253098(0);
  v40 = v39 - 8;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v38, a1, v35, v41);
  sub_2186EF7D4(&qword_27CC1BB08, sub_218953FB4, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v44 = *(v40 + 44);
  sub_2186EF7D4(&qword_27CC17FB0, sub_218953FB4, MEMORY[0x277D6D730]);
  v170 = v35;
  sub_219BF5E84();
  v45 = *&v43[v44] == v183[0];
  v179 = v26;
  v147 = v18;
  if (!v45)
  {
    v166 = (v26 + 16);
    v165 = (v18 + 32);
    v164 = (v15 + 8);
    v155 = v26 + 32;
    v163 = (v18 + 8);
    v162 = v26 + 8;
    v154 = v26 + 40;
    v178 = MEMORY[0x277D84F98];
    v161 = v44;
    while (1)
    {
      v96 = sub_219BF5EC4();
      v97 = *v166;
      v98 = v175;
      v99 = v181;
      (*v166)(v175);
      v96(v183, 0);
      sub_219BF5E94();
      v100 = v167;
      sub_219BE5FC4();
      (*v165)(v180, v100, v182);
      v101 = v168;
      sub_219BF07D4();
      v102 = sub_219BF0B44();
      (*v164)(v101, v169);
      v103 = [v102 identifier];

      v104 = sub_219BF5414();
      v106 = v105;

      (v97)(v176, v98, v99);
      v107 = v178;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v183[0] = v107;
      v40 = sub_21870F700(v104, v106);
      v110 = v107[2];
      v111 = (v109 & 1) == 0;
      v112 = v110 + v111;
      if (__OFADD__(v110, v111))
      {
        goto LABEL_61;
      }

      v113 = v109;
      if (v107[3] >= v112)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v109)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_21949669C();
          if (v113)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_219487940(v112, isUniquelyReferenced_nonNull_native);
        v114 = sub_21870F700(v104, v106);
        if ((v113 & 1) != (v115 & 1))
        {
          goto LABEL_65;
        }

        v40 = v114;
        if (v113)
        {
LABEL_27:

          v178 = v183[0];
          v26 = v179;
          v95 = v181;
          (*(v179 + 40))(*(v183[0] + 56) + *(v179 + 72) * v40, v176, v181);
          (*v163)(v180, v182);
          (*(v26 + 8))(v175, v95);
          goto LABEL_28;
        }
      }

      v116 = v183[0];
      *(v183[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v117 = (v116[6] + 16 * v40);
      *v117 = v104;
      v117[1] = v106;
      v26 = v179;
      v118 = v181;
      (*(v179 + 32))(v116[7] + *(v179 + 72) * v40, v176, v181);
      (*v163)(v180, v182);
      (*(v26 + 8))(v175, v118);
      v119 = v116[2];
      v87 = __OFADD__(v119, 1);
      v120 = v119 + 1;
      if (v87)
      {
        goto LABEL_63;
      }

      v178 = v116;
      v116[2] = v120;
LABEL_28:
      sub_219BF5E84();
      if (*&v43[v161] == v183[0])
      {
        goto LABEL_4;
      }
    }
  }

  v178 = MEMORY[0x277D84F98];
LABEL_4:
  sub_219552CA8(v43, sub_219253098);
  v46 = *(v152 + 16);
  if (v46)
  {
    v170 = OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_feedContext;
    v169 = OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_formatContent;
    v40 = v152 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
    v180 = (v26 + 56);
    v176 = (v26 + 32);
    v164 = (v26 + 16);
    v168 = (v147 + 16);
    v166 = (v147 + 8);
    v165 = (v26 + 40);
    v175 = *(v148 + 72);
    v47 = v178;

    v167 = xmmword_219C09EC0;
    v48 = v47;
    v49 = v181;
    v50 = v177;
    while (1)
    {
      v178 = v46;
      sub_219552C40(v40, v50, type metadata accessor for MyRecipeItem.Resolved);
      v53 = *v50;
      v54 = [v53 identifier];
      v55 = sub_219BF5414();
      v57 = v56;

      v58 = sub_21870F700(v55, v57);
      LOBYTE(v54) = v59;

      if (v54)
      {
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v183[0] = v47;
        if (!v60)
        {
          sub_21949669C();
          v47 = v183[0];
        }

        v61 = v171;
        (*(v26 + 32))(v171, *(v47 + 56) + *(v26 + 72) * v58, v49);
        sub_21948AFFC(v58, v47);
        v62 = 0;
      }

      else
      {
        v62 = 1;
        v61 = v171;
      }

      v63 = *v180;
      (*v180)(v61, v62, 1, v49);
      sub_219552CA8(v61, sub_219552D08);
      v64 = [v53 identifier];
      v65 = sub_219BF5414();
      v67 = v66;

      if (v48[2])
      {
        v68 = sub_21870F700(v65, v67);
        v70 = v69;

        if (v70)
        {
          v71 = v172;
          (*(v26 + 16))(v172, v48[7] + *(v26 + 72) * v68, v49);
          v63(v71, 0, 1, v49);
          sub_219552CA8(v71, sub_219552D08);
          goto LABEL_7;
        }
      }

      else
      {
      }

      v72 = v172;
      v63(v172, 1, 1, v49);
      sub_219552CA8(v72, sub_219552D08);
      sub_21871D24C();
      v73 = swift_allocObject();
      *(v73 + 16) = v167;
      *(v73 + 32) = sub_219BF17D4();
      *(v73 + 40) = v74;
      *(v73 + 48) = 0x73657069636572;
      *(v73 + 56) = 0xE700000000000000;
      MEMORY[0x21CEC80A0](v73);

      sub_219BDBD34();
      sub_2186EF7D4(&qword_280EE9C80, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v49 = v181;
      v75 = v174;
      sub_219BEE1D4();

      v76 = [v53 identifier];
      v77 = sub_219BF5414();
      v79 = v78;

      (*v168)(v157, v75, v182);
      sub_2186EF7D4(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
      v80 = v156;
      sub_219BE5FB4();
      v81 = *v176;
      (*v176)(v173, v80, v49);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v183[0] = v48;
      v83 = sub_21870F700(v77, v79);
      v85 = v48[2];
      v86 = (v84 & 1) == 0;
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (v87)
      {
        goto LABEL_62;
      }

      v89 = v84;
      if (v48[3] < v88)
      {
        break;
      }

      if (v82)
      {
        goto LABEL_22;
      }

      v94 = v83;
      sub_21949669C();
      v83 = v94;
      if (v89)
      {
LABEL_6:
        v51 = v83;

        v48 = v183[0];
        v26 = v179;
        (*(v179 + 40))(*(v183[0] + 56) + *(v179 + 72) * v51, v173, v49);
        (*v166)(v174, v182);
        goto LABEL_7;
      }

LABEL_23:
      v48 = v183[0];
      *(v183[0] + 8 * (v83 >> 6) + 64) |= 1 << v83;
      v91 = (v48[6] + 16 * v83);
      *v91 = v77;
      v91[1] = v79;
      v81(v48[7] + *(v179 + 72) * v83, v173, v49);
      (*v166)(v174, v182);
      v92 = v48[2];
      v87 = __OFADD__(v92, 1);
      v93 = v92 + 1;
      if (v87)
      {
        goto LABEL_64;
      }

      v48[2] = v93;
      v26 = v179;
LABEL_7:
      v50 = v177;
      v52 = v178;
      sub_219552CA8(v177, type metadata accessor for MyRecipeItem.Resolved);
      v40 += v175;
      v46 = (v52 - 1);
      if (!v46)
      {
        goto LABEL_41;
      }
    }

    sub_219487940(v88, v82);
    v83 = sub_21870F700(v77, v79);
    if ((v89 & 1) != (v90 & 1))
    {
      goto LABEL_65;
    }

LABEL_22:
    if (v89)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  v47 = v178;

  v48 = v47;
LABEL_41:
  v121 = 1 << *(v47 + 32);
  v122 = -1;
  if (v121 < 64)
  {
    v122 = ~(-1 << v121);
  }

  v123 = v26;
  v124 = v122 & *(v47 + 64);
  v125 = (v121 + 63) >> 6;
  v126 = (v123 + 56);
  v182 = v123 + 32;

  v127 = 0;
  while (v124)
  {
LABEL_51:
    v131 = (*(v47 + 48) + ((v127 << 10) | (16 * __clz(__rbit64(v124)))));
    v132 = *v131;
    v133 = v131[1];

    v134 = sub_21870F700(v132, v133);
    v136 = v135;

    if (v136)
    {
      v137 = swift_isUniquelyReferenced_nonNull_native();
      v183[0] = v48;
      v40 = v153;
      if (!v137)
      {
        sub_21949669C();
        v48 = v183[0];
      }

      v129 = v181;
      (*(v179 + 32))(v40, v48[7] + *(v179 + 72) * v134, v181);
      sub_21948AFFC(v134, v48);
      v128 = 0;
    }

    else
    {
      v128 = 1;
      v129 = v181;
      v40 = v153;
    }

    v124 &= v124 - 1;
    (*v126)(v40, v128, 1, v129);
    sub_219552CA8(v40, sub_219552D08);
  }

  while (1)
  {
    v130 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
      break;
    }

    if (v130 >= v125)
    {

      v183[5] = v160;
      v183[6] = v152;
      v183[7] = v151;
      v138 = v48[2];
      if (!v138)
      {
        goto LABEL_58;
      }

      v139 = sub_21947D568(v48[2], 0);
      sub_2194AC4FC(v183, &v139[(*(v179 + 80) + 32) & ~*(v179 + 80)], v138, v48);
      v182 = v140;
      v141 = v183[0];
      swift_bridgeObjectRetain_n();

      sub_21892DE98(v141);
      if (v182 != v138)
      {
        __break(1u);
LABEL_58:

        v139 = MEMORY[0x277D84F90];
      }

      v183[0] = v139;
      sub_21954F8DC(v183);
      v142 = v181;

      v143 = v183[0];
      v144 = sub_2186EF7D4(&qword_27CC1BAF0, sub_2189F1E48, MEMORY[0x277D6D408]);
      v145 = sub_2186EF7D4(&qword_27CC1BAF8, sub_2189F1E48, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v143, v142, v144, v145);
      sub_21895406C();
      sub_2186EF7D4(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
      sub_219BE6924();

      return;
    }

    v124 = *(v47 + 64 + 8 * v130);
    ++v127;
    if (v124)
    {
      v127 = v130;
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_219BF79A4();
  __break(1u);

  __break(1u);
}

uint64_t sub_219551AE0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  sub_218C40320(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDBD34();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = v31 - v10;
  v11 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v11 - 8);
  v35 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v31 - v17;
  sub_2189F1E48(0);
  v33 = v19;
  sub_219BE5FC4();
  v32 = type metadata accessor for MyRecipesModel;
  sub_219552C40(v18, v15, type metadata accessor for MyRecipesModel);
  v20 = *(v4 + 32);
  v20(v6, v15, v3);
  sub_219BF07F4();
  v21 = v4 + 8;
  v22 = *(v4 + 8);
  v31[1] = v21;
  v22(v6, v3);
  sub_219552CA8(v18, type metadata accessor for MyRecipesModel);
  sub_219BE5FC4();
  v23 = v35;
  sub_219552C40(v15, v35, v32);
  v20(v6, v23, v3);
  v24 = v36;
  sub_219BF07F4();
  v22(v6, v3);
  sub_219552CA8(v15, type metadata accessor for MyRecipesModel);
  v25 = v34;
  v26 = v24;
  LOBYTE(v24) = sub_219BDBC14();
  v27 = *(v38 + 8);
  v28 = v26;
  v29 = v39;
  v27(v28, v39);
  v27(v25, v29);
  return v24 & 1;
}

void sub_219551E3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = sub_219BDBD34();
  v80 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BF0B74();
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40320(0);
  v94 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v72 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = v61 - v10;
  MEMORY[0x28223BE20](v11);
  v98 = v61 - v12;
  v76 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v76);
  v70 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = v61 - v15;
  MEMORY[0x28223BE20](v16);
  v86 = v61 - v17;
  sub_2189F1E48(0);
  v19 = v18;
  v89 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v88 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v95 = v61 - v22;
  sub_219552B74(0);
  MEMORY[0x28223BE20](v23 - 8);
  v61[2] = v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEE5A4();

  v90 = sub_2195529CC(v25);
  sub_218953FB4(0);
  v27 = v26;
  sub_219BE6934();
  v28 = v99;

  sub_219BE6934();
  v101 = v103;
  v102 = v104;
  v29 = sub_2186EF7D4(&qword_27CC17FB0, sub_218953FB4, MEMORY[0x277D6D730]);
  v96 = a1;
  v30 = sub_219BF5E44();
  v61[1] = v28;
  if (!v30)
  {
    v97 = MEMORY[0x277D84F90];
LABEL_12:
    v59 = sub_2186EF7D4(&qword_27CC1BAF0, sub_2189F1E48, MEMORY[0x277D6D408]);
    v60 = sub_2186EF7D4(&qword_27CC1BAF8, sub_2189F1E48, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v97, v19, v59, v60);
    sub_21895406C();
    sub_2186EF7D4(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    sub_219BE6924();

    return;
  }

  v31 = v30;
  v100 = MEMORY[0x277D84F90];
  sub_218C37A80(0, v30 & ~(v30 >> 63), 0);
  v97 = v100;
  v87 = v27;
  sub_219BF5DF4();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = v29;
    v61[0] = a2;
    v68 = v28 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_feedContext;
    v67 = v28 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_formatContent;
    v84 = (v89 + 16);
    v83 = (v7 + 32);
    v82 = (v91 + 1);
    v81 = (v7 + 8);
    v91 = (v89 + 32);
    v66 = (v80 + 8);
    v65 = (v7 + 16);
    v64 = (v89 + 8);
    v63 = xmmword_219C09EC0;
    v33 = v88;
    v85 = v32;
    v62 = v19;
    do
    {
      v34 = sub_219BF5EC4();
      (*v84)(v33);
      v34(&v99, 0);
      v35 = v86;
      sub_219BE5FC4();
      v36 = *v83;
      (*v83)(v98, v35, v94);
      v37 = v92;
      sub_219BF07D4();
      v38 = sub_219BF0B44();
      v39 = *v82;
      (*v82)(v37, v93);
      v40 = MEMORY[0x21CEC5310](v38);

      if (v40)
      {
        v79 = *(v75 + 16);
        v41 = v92;
        v42 = v94;
        sub_219BF07D4();
        v78 = sub_219BF0B44();
        v39(v41, v93);
        sub_21871D24C();
        v43 = swift_allocObject();
        *(v43 + 16) = v63;
        *(v43 + 32) = sub_219BF17D4();
        *(v43 + 40) = v44;
        *(v43 + 48) = 0x73657069636572;
        *(v43 + 56) = 0xE700000000000000;
        v77 = MEMORY[0x21CEC80A0](v43);

        v45 = v69;
        sub_219BE5FC4();
        v46 = v70;
        sub_219552C40(v45, v70, type metadata accessor for MyRecipesModel);
        v47 = v72;
        v36(v72, v46, v42);
        v48 = v73;
        sub_219BF07F4();
        v80 = v31;
        v49 = *v81;
        (*v81)(v47, v42);
        sub_219552CA8(v45, type metadata accessor for MyRecipesModel);
        sub_2186EF7D4(&qword_280EE9C80, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v50 = v42;
        v51 = v71;
        v52 = v78;
        v53 = v74;
        sub_219BEE1D4();

        (*v66)(v48, v53);
        (*v65)(v45, v51, v50);
        sub_2186EF7D4(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
        v33 = v88;
        sub_219BE5FB4();
        v54 = v98;
        v49(v51, v50);
        v49(v54, v50);
        v31 = v80;
        v19 = v62;
        (*v64)(v33, v62);
      }

      else
      {
        (*v81)(v98, v94);
        (*v91)(v95, v33, v19);
      }

      v55 = v97;
      v100 = v97;
      v57 = *(v97 + 16);
      v56 = *(v97 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_218C37A80((v56 > 1), v57 + 1, 1);
        v55 = v100;
      }

      *(v55 + 16) = v57 + 1;
      v58 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v97 = v55;
      (*(v89 + 32))(v55 + v58 + *(v89 + 72) * v57, v95, v19);
      sub_219BF5E94();
      --v31;
    }

    while (v31);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_2195529CC(uint64_t a1)
{
  v2 = sub_219BEE274();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v4 + 16))
  {
    *v7 = v4;
    (*(v3 + 104))(v7, *MEMORY[0x277D31F90], v2, v5);
    v8 = sub_2191F70C4(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_2191F70C4((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    (*(v3 + 32))(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v7, v2);
  }

  else
  {
  }

  return sub_219BEE594();
}

void sub_219552B74(uint64_t a1)
{
  if (!qword_27CC1BAE8)
  {
    sub_2189F1E48(255);
    sub_2186EF7D4(&qword_27CC1BAF0, sub_2189F1E48, MEMORY[0x277D6D408]);
    sub_2186EF7D4(&qword_27CC1BAF8, sub_2189F1E48, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BAE8);
    }
  }
}

uint64_t sub_219552C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219552CA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219552D08(uint64_t a1)
{
  if (!qword_27CC1BB00)
  {
    sub_2189F1E48(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BB00);
    }
  }
}

void sub_219552D60(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        sub_2189F1E48(0);
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      sub_2189F1E48(0);
      v8[0] = (v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)));
      v8[1] = v5;
      sub_2195534C0(v8, v9, a1, v4);
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
    sub_219552E8C(0, v2, 1, a1);
  }
}

void sub_219552E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_218C40320(0);
  v78 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v77 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = sub_219BDBD34();
  v11 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v86 = &v55[-v14];
  v15 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v73 = &v55[-v18];
  MEMORY[0x28223BE20](v19);
  v72 = &v55[-v20];
  sub_2189F1E48(0);
  v22 = v21;
  MEMORY[0x28223BE20](v21);
  v65 = &v55[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v87 = &v55[-v25];
  v28 = MEMORY[0x28223BE20](v26);
  v85 = &v55[-v29];
  v57 = a2;
  if (a3 != a2)
  {
    v31 = *(v27 + 16);
    v30 = v27 + 16;
    v32 = *a4;
    v33 = *(v30 + 56);
    v69 = (v9 + 32);
    v70 = v31;
    v67 = (v11 + 8);
    v68 = v9 + 8;
    v66 = (v30 - 8);
    v71 = v30;
    v63 = (v30 + 16);
    v34 = v32 + v33 * (a3 - 1);
    v62 = -v33;
    v35 = a1 - a3;
    v64 = v32;
    v56 = v33;
    v36 = v32 + v33 * a3;
    v84 = v22;
    v37 = (v9 + 8);
LABEL_5:
    v61 = a3;
    v58 = v36;
    v59 = v35;
    v79 = v35;
    v60 = v34;
    while (1)
    {
      v83 = v36;
      v38 = v70;
      v70(v28);
      (v38)(v87, v34, v22);
      v39 = v72;
      sub_219BE5FC4();
      v82 = type metadata accessor for MyRecipesModel;
      v40 = v73;
      sub_219552C40(v39, v73, type metadata accessor for MyRecipesModel);
      v81 = *v69;
      v41 = v77;
      v42 = v78;
      v81(v77, v40, v78);
      sub_219BF07F4();
      v80 = *v37;
      v80(v41, v42);
      sub_219552CA8(v39, type metadata accessor for MyRecipesModel);
      sub_219BE5FC4();
      v43 = v74;
      sub_219552C40(v40, v74, v82);
      v81(v41, v43, v42);
      v44 = v75;
      sub_219BF07F4();
      v45 = v41;
      v22 = v84;
      v80(v45, v42);
      sub_219552CA8(v40, type metadata accessor for MyRecipesModel);
      v46 = v86;
      LOBYTE(v40) = sub_219BDBC14();
      v47 = *v67;
      v48 = v44;
      v49 = v76;
      (*v67)(v48, v76);
      v47(v46, v49);
      v50 = v83;
      v51 = *v66;
      (*v66)(v87, v22);
      v51(v85, v22);
      if ((v40 & 1) == 0)
      {
LABEL_4:
        a3 = v61 + 1;
        v34 = v60 + v56;
        v35 = v59 - 1;
        v36 = v58 + v56;
        if (v61 + 1 == v57)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v64)
      {
        break;
      }

      v52 = *v63;
      v53 = v65;
      (*v63)(v65, v50, v22);
      swift_arrayInitWithTakeFrontToBack();
      v52(v34, v53, v22);
      v34 += v62;
      v36 = v50 + v62;
      if (__CFADD__(v79++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2195534C0(uint64_t (**a1)(uint64_t a1), uint64_t a2, void (*a3)(void), int64_t a4)
{
  v5 = v4;
  v157 = a1;
  sub_218C40320(0);
  v183 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v182 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_219BDBD34();
  v11 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v192 = &v152 - v14;
  v15 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v179 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v178 = &v152 - v18;
  MEMORY[0x28223BE20](v19);
  v177 = &v152 - v20;
  sub_2189F1E48(0);
  v193 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v162 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v171 = &v152 - v25;
  MEMORY[0x28223BE20](v26);
  v194 = &v152 - v27;
  MEMORY[0x28223BE20](v28);
  v191 = &v152 - v29;
  MEMORY[0x28223BE20](v30);
  v153 = &v152 - v31;
  v33 = MEMORY[0x28223BE20](v32);
  v155 = &v152 - v34;
  v35 = *(a3 + 1);
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_97:
    a4 = *v157;
    if (!*v157)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_99;
  }

  v36 = 0;
  v184 = v22 + 16;
  v185 = (v22 + 8);
  v175 = (v9 + 8);
  v176 = (v9 + 32);
  v174 = (v11 + 8);
  v173 = (v22 + 32);
  v37 = MEMORY[0x277D84F90];
  v159 = a3;
  v167 = v22;
  v156 = a4;
  while (1)
  {
    v38 = v36;
    if (v36 + 1 >= v35)
    {
      v52 = v36 + 1;
    }

    else
    {
      v168 = v35;
      v39 = *a3;
      v40 = v22;
      v41 = *(v22 + 72);
      v42 = *(v40 + 16);
      v43 = v155;
      v44 = *a3 + v41 * (v36 + 1);
      v158 = v38;
      v45 = v193;
      (v42)(v155, v33);
      v190 = v39;
      v172 = v41;
      v46 = v39 + v41 * v158;
      v47 = v158;
      v48 = v153;
      v169 = v42;
      (v42)(v153, v46, v45);
      LODWORD(v170) = sub_219551AE0(v43, v48);
      if (v5)
      {
        v151 = *v185;
        (*v185)(v48, v45);
        (v151)(v155, v45);
        goto LABEL_110;
      }

      v154 = v37;
      v160 = 0;
      v37 = *v185;
      (*v185)(v48, v45);
      v166 = v37;
      (v37)(v155, v45);
      v49 = (v47 + 2);
      v50 = v172;
      v51 = (v190 + v172 * (v47 + 2));
      v22 = v167;
      while (1)
      {
        v52 = v168;
        if (v168 == v49)
        {
          break;
        }

        v190 = v51;
        v53 = v169;
        v189 = v49;
        v169();
        v188 = v44;
        v53(v194, v44, v45);
        v54 = v177;
        sub_219BE5FC4();
        v55 = v178;
        sub_219552C40(v54, v178, type metadata accessor for MyRecipesModel);
        v187 = *v176;
        v57 = v182;
        v56 = v183;
        (v187)(v182, v55, v183);
        sub_219BF07F4();
        v186 = *v175;
        v186(v57, v56);
        sub_219552CA8(v54, type metadata accessor for MyRecipesModel);
        v58 = v194;
        sub_219BE5FC4();
        v59 = v179;
        sub_219552C40(v55, v179, type metadata accessor for MyRecipesModel);
        (v187)(v57, v59, v56);
        v60 = v180;
        sub_219BF07F4();
        v186(v57, v56);
        v45 = v193;
        v22 = v167;
        sub_219552CA8(v55, type metadata accessor for MyRecipesModel);
        v61 = v192;
        v62 = sub_219BDBC14() & 1;
        v37 = v174;
        v63 = *v174;
        v64 = v60;
        v65 = v181;
        (*v174)(v64, v181);
        v63(v61, v65);
        v66 = v166;
        v166(v58, v45);
        v66(v191, v45);
        v50 = v172;
        v49 = v189 + 1;
        v51 = (v172 + v190);
        v44 = v172 + v188;
        if ((v170 & 1) != v62)
        {
          v52 = v189;
          break;
        }
      }

      a4 = v156;
      v5 = v160;
      a3 = v159;
      v38 = v158;
      if ((v170 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v52 < v158)
      {
        goto LABEL_131;
      }

      if (v158 < v52)
      {
        v67 = v50 * (v52 - 1);
        v68 = v52 * v50;
        v168 = v52;
        v69 = v52;
        v70 = v158;
        v71 = v158 * v50;
        v37 = v154;
        do
        {
          if (v70 != --v69)
          {
            v73 = *a3;
            if (!*a3)
            {
              goto LABEL_135;
            }

            v190 = *v173;
            (v190)(v162, v73 + v71, v193);
            if (v71 < v67 || v73 + v71 >= v73 + v68)
            {
              v72 = v193;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v72 = v193;
              if (v71 != v67)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            (v190)(v73 + v67, v162, v72);
            v5 = v160;
            a3 = v159;
            v50 = v172;
          }

          ++v70;
          v67 -= v50;
          v68 -= v50;
          v71 += v50;
        }

        while (v70 < v69);
        v22 = v167;
        a4 = v156;
        v38 = v158;
        v52 = v168;
      }

      else
      {
LABEL_24:
        v37 = v154;
      }
    }

    v74 = *(a3 + 1);
    if (v52 < v74)
    {
      if (__OFSUB__(v52, v38))
      {
        goto LABEL_128;
      }

      if (v52 - v38 < a4)
      {
        if (__OFADD__(v38, a4))
        {
          goto LABEL_129;
        }

        if (v38 + a4 >= v74)
        {
          v75 = *(a3 + 1);
        }

        else
        {
          v75 = (v38 + a4);
        }

        if (v75 < v38)
        {
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          v37 = sub_218C81048(v37);
LABEL_99:
          v195 = v37;
          v146 = *(v37 + 16);
          if (v146 >= 2)
          {
            while (*a3)
            {
              v147 = *(v37 + 16 * v146);
              v148 = v37;
              v149 = *(v37 + 16 * (v146 - 1) + 32);
              v37 = *(v37 + 16 * (v146 - 1) + 40);
              sub_21955450C((*a3 + *(v22 + 72) * v147), (*a3 + *(v22 + 72) * v149), (*a3 + *(v22 + 72) * v37), a4);
              if (v5)
              {
                goto LABEL_110;
              }

              if (v37 < v147)
              {
                goto LABEL_125;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v148 = sub_218C81048(v148);
              }

              if (v146 - 2 >= *(v148 + 2))
              {
                goto LABEL_126;
              }

              v150 = &v148[16 * v146];
              *v150 = v147;
              *(v150 + 1) = v37;
              v195 = v148;
              sub_218C80FBC(v146 - 1);
              v37 = v195;
              v146 = *(v195 + 16);
              if (v146 <= 1)
              {
                goto LABEL_110;
              }
            }

            goto LABEL_136;
          }

LABEL_110:

          return;
        }

        if (v52 != v75)
        {
          break;
        }
      }
    }

    v76 = v52;
    if (v52 < v38)
    {
      goto LABEL_127;
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = v76;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_2191F6B60(0, *(v37 + 16) + 1, 1, v37);
    }

    a4 = *(v37 + 16);
    v78 = *(v37 + 24);
    v79 = a4 + 1;
    v80 = a3;
    if (a4 >= v78 >> 1)
    {
      v37 = sub_2191F6B60((v78 > 1), a4 + 1, 1, v37);
    }

    *(v37 + 16) = v79;
    v81 = v37 + 16 * a4;
    v82 = v163;
    *(v81 + 32) = v38;
    *(v81 + 40) = v82;
    if (!*v157)
    {
      goto LABEL_137;
    }

    if (a4)
    {
      a3 = *v157;
      while (1)
      {
        v83 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v84 = *(v37 + 32);
          v85 = *(v37 + 40);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_56:
          if (v87)
          {
            goto LABEL_116;
          }

          v100 = (v37 + 16 * v79);
          v102 = *v100;
          v101 = v100[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_119;
          }

          v106 = (v37 + 32 + 16 * v83);
          v108 = *v106;
          v107 = v106[1];
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v104, v109))
          {
            goto LABEL_123;
          }

          if (v104 + v109 >= v86)
          {
            if (v86 < v109)
            {
              v83 = v79 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v110 = (v37 + 16 * v79);
        v112 = *v110;
        v111 = v110[1];
        v94 = __OFSUB__(v111, v112);
        v104 = v111 - v112;
        v105 = v94;
LABEL_70:
        if (v105)
        {
          goto LABEL_118;
        }

        v113 = v37 + 16 * v83;
        v115 = *(v113 + 32);
        v114 = *(v113 + 40);
        v94 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v94)
        {
          goto LABEL_121;
        }

        if (v116 < v104)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v83 - 1;
        if (v83 - 1 >= v79)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*v80)
        {
          goto LABEL_134;
        }

        v121 = *(v37 + 32 + 16 * a4);
        v122 = *(v37 + 32 + 16 * v83 + 8);
        sub_21955450C((*v80 + *(v22 + 72) * v121), (*v80 + *(v22 + 72) * *(v37 + 32 + 16 * v83)), (*v80 + *(v22 + 72) * v122), a3);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v122 < v121)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_218C81048(v37);
        }

        if (a4 >= *(v37 + 16))
        {
          goto LABEL_113;
        }

        v123 = v37 + 16 * a4;
        *(v123 + 32) = v121;
        *(v123 + 40) = v122;
        v195 = v37;
        sub_218C80FBC(v83);
        v37 = v195;
        v79 = *(v195 + 16);
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v88 = v37 + 32 + 16 * v79;
      v89 = *(v88 - 64);
      v90 = *(v88 - 56);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_114;
      }

      v93 = *(v88 - 48);
      v92 = *(v88 - 40);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_115;
      }

      v95 = (v37 + 16 * v79);
      v97 = *v95;
      v96 = v95[1];
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_117;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_120;
      }

      if (v99 >= v91)
      {
        v117 = (v37 + 32 + 16 * v83);
        v119 = *v117;
        v118 = v117[1];
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_124;
        }

        if (v86 < v120)
        {
          v83 = v79 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    a3 = v80;
    v35 = *(v80 + 1);
    v36 = v163;
    a4 = v156;
    if (v163 >= v35)
    {
      goto LABEL_97;
    }
  }

  v154 = v37;
  v160 = v5;
  v124 = *a3;
  v125 = *(v22 + 72);
  v172 = *(v22 + 16);
  v126 = v124 + v125 * (v52 - 1);
  v169 = -v125;
  v158 = v38;
  v127 = (v38 - v52);
  v170 = v124;
  v161 = v125;
  v128 = v124 + v52 * v125;
  v129 = v193;
  v163 = v75;
LABEL_88:
  v168 = v52;
  v164 = v128;
  v165 = v127;
  v130 = v127;
  v166 = v126;
  while (1)
  {
    v186 = v128;
    v187 = v130;
    v131 = v172;
    v172(v33);
    v131(v194, v126, v129);
    v132 = v177;
    sub_219BE5FC4();
    v190 = type metadata accessor for MyRecipesModel;
    v133 = v178;
    sub_219552C40(v132, v178, type metadata accessor for MyRecipesModel);
    v189 = *v176;
    v135 = v182;
    v134 = v183;
    (v189)(v182, v133, v183);
    sub_219BF07F4();
    v188 = *v175;
    v188(v135, v134);
    sub_219552CA8(v132, type metadata accessor for MyRecipesModel);
    sub_219BE5FC4();
    v136 = v179;
    sub_219552C40(v133, v179, v190);
    (v189)(v135, v136, v134);
    v137 = v180;
    sub_219BF07F4();
    v188(v135, v134);
    v129 = v193;
    sub_219552CA8(v133, type metadata accessor for MyRecipesModel);
    v138 = v192;
    LOBYTE(v136) = sub_219BDBC14();
    v139 = *v174;
    v140 = v137;
    v141 = v181;
    (*v174)(v140, v181);
    v139(v138, v141);
    a4 = *v185;
    (*v185)(v194, v129);
    (a4)(v191, v129);
    if ((v136 & 1) == 0)
    {
LABEL_87:
      v52 = v168 + 1;
      v126 = v166 + v161;
      v127 = v165 - 1;
      v128 = &v164[v161];
      v76 = v163;
      if (v168 + 1 != v163)
      {
        goto LABEL_88;
      }

      v5 = v160;
      a3 = v159;
      v22 = v167;
      v37 = v154;
      v38 = v158;
      if (v163 < v158)
      {
        goto LABEL_127;
      }

      goto LABEL_36;
    }

    v142 = v187;
    if (!v170)
    {
      break;
    }

    a4 = *v173;
    v143 = v171;
    v144 = v186;
    (*v173)(v171, v186, v129);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v126, v143, v129);
    v126 = v169 + v126;
    v128 = v169 + v144;
    v145 = __CFADD__(v142, 1);
    v130 = v142 + 1;
    if (v145)
    {
      goto LABEL_87;
    }
  }

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
}

void sub_21955450C(void (*a1)(void), void (*a2)(void), void (*a3)(void), void (*a4)(void))
{
  sub_218C40320(0);
  v89 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v88 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BDBD34();
  v11 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = v71 - v14;
  v15 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = v71 - v18;
  MEMORY[0x28223BE20](v19);
  v83 = v71 - v20;
  sub_2189F1E48(0);
  v97 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v100 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v98 = v71 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_60;
  }

  v28 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_61;
  }

  v29 = (a2 - a1) / v27;
  v103 = a1;
  v102 = a4;
  if (v29 >= v28 / v27)
  {
    v96 = v9;
    v31 = v28 / v27 * v27;
    if (a4 < a2 || a2 + v31 <= a4)
    {
      v32 = v11;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v32 = v11;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v49 = a4 + v31;
    if (v31 >= 1)
    {
      v50 = -v27;
      v77 = (v22 + 16);
      v76 = (v96 + 32);
      v75 = (v96 + 8);
      v74 = (v32 + 8);
      v73 = (v22 + 8);
      v51 = v49;
      v94 = a4;
      v95 = a1;
      v78 = -v27;
      while (2)
      {
        while (1)
        {
          v71[0] = v49;
          v52 = (a2 + v50);
          v96 = (a2 + v50);
          v79 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v103 = a2;
              v101 = v71[0];
              goto LABEL_58;
            }

            v72 = v49;
            v93 = (a3 + v50);
            v92 = v51;
            v54 = *v77;
            v80 = v51 + v50;
            v55 = v97;
            v91 = a3;
            v54();
            (v54)(v100, v52, v55);
            v56 = v83;
            sub_219BE5FC4();
            v90 = type metadata accessor for MyRecipesModel;
            v57 = v84;
            sub_219552C40(v56, v84, type metadata accessor for MyRecipesModel);
            v82 = *v76;
            v59 = v88;
            v58 = v89;
            (v82)(v88, v57, v89);
            sub_219BF07F4();
            v81 = *v75;
            v81(v59, v58);
            sub_219552CA8(v56, type metadata accessor for MyRecipesModel);
            v60 = v100;
            sub_219BE5FC4();
            v61 = v85;
            sub_219552C40(v57, v85, v90);
            (v82)(v59, v61, v58);
            v62 = v86;
            sub_219BF07F4();
            v81(v59, v58);
            sub_219552CA8(v57, type metadata accessor for MyRecipesModel);
            v63 = v99;
            LOBYTE(v61) = sub_219BDBC14();
            v64 = *v74;
            v65 = v62;
            v66 = v87;
            (*v74)(v65, v87);
            v64(v63, v66);
            v67 = *v73;
            (*v73)(v60, v55);
            v67(v98, v55);
            if (v61)
            {
              break;
            }

            v68 = v80;
            v49 = v80;
            a3 = v93;
            v69 = v94;
            if (v91 < v92 || v93 >= v92)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v95;
              v52 = v96;
              v50 = v78;
            }

            else
            {
              a1 = v95;
              v52 = v96;
              v50 = v78;
              if (v91 != v92)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v51 = v49;
            v53 = v68 > v69;
            a2 = v79;
            if (!v53)
            {
              goto LABEL_56;
            }
          }

          v51 = v92;
          a3 = v93;
          v70 = v94;
          if (v91 < v79 || v93 >= v79)
          {
            break;
          }

          a1 = v95;
          a2 = v96;
          v49 = v72;
          v50 = v78;
          if (v91 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v51 <= v70)
          {
            goto LABEL_56;
          }
        }

        a2 = v96;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v95;
        v49 = v72;
        v50 = v78;
        if (v51 > v70)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v103 = a2;
    v101 = v49;
  }

  else
  {
    v30 = v29 * v27;
    if (a4 < a1 || a1 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v82 = (a4 + v30);
    v101 = a4 + v30;
    v93 = a3;
    if (v30 >= 1 && a2 < a3)
    {
      v79 = *(v22 + 16);
      v78 = v9 + 32;
      v77 = (v9 + 8);
      v76 = (v11 + 8);
      v81 = (v22 + 16);
      v75 = (v22 + 8);
      v80 = v27;
      v34 = v97;
      do
      {
        v95 = a1;
        v96 = a2;
        v94 = a4;
        v35 = v79;
        v79();
        (v35)(v100, a4, v34);
        v36 = v83;
        sub_219BE5FC4();
        v92 = type metadata accessor for MyRecipesModel;
        v37 = v84;
        sub_219552C40(v36, v84, type metadata accessor for MyRecipesModel);
        v91 = *v78;
        v39 = v88;
        v38 = v89;
        (v91)(v88, v37, v89);
        sub_219BF07F4();
        v90 = *v77;
        (v90)(v39, v38);
        sub_219552CA8(v36, type metadata accessor for MyRecipesModel);
        sub_219BE5FC4();
        v40 = v85;
        sub_219552C40(v37, v85, v92);
        (v91)(v39, v40, v38);
        v41 = v86;
        sub_219BF07F4();
        (v90)(v39, v38);
        sub_219552CA8(v37, type metadata accessor for MyRecipesModel);
        v42 = v99;
        v43 = sub_219BDBC14();
        v44 = *v76;
        v45 = v87;
        (*v76)(v41, v87);
        (v44)(v42, v45);
        v46 = *v75;
        (*v75)(v100, v34);
        v46(v98, v34);
        if (v43)
        {
          v47 = v80;
          v48 = v95;
          a2 = &v80[v96];
          a4 = v94;
          if (v95 < v96 || v95 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v95 != v96)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v48 = v95;
          a2 = v96;
          v47 = v80;
          a4 = &v80[v94];
          if (v95 < v94 || v95 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v95 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v102 = a4;
        }

        a1 = &v47[v48];
        v103 = a1;
      }

      while (a4 < v82 && a2 < v93);
    }
  }

LABEL_58:
  sub_2189F1AF4(&v103, &v102, &v101);
}

void sub_219554FE0(uint64_t a1)
{
  v3 = sub_219BDD144();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for MyRecipesViewController();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;

  v5 = sub_219BE1E04();

  if (v5)
  {
    sub_21955532C();
    sub_219BF17D4();
    sub_219BEA8C4();
    swift_allocObject();
    sub_219BEA8A4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21955512C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187060FC(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0]);
  swift_unknownObjectRetain();
  sub_219BE1B84();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MyRecipesConfig(0);
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187060FC(0, &qword_27CC1BB18, &protocol descriptor for MyRecipesTrackerObserverType);
  return sub_219BE1BA4();
}

unint64_t sub_21955532C()
{
  result = qword_27CC1BB10;
  if (!qword_27CC1BB10)
  {
    type metadata accessor for MyRecipesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BB10);
  }

  return result;
}

uint64_t sub_219555384@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for MyRecipesModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_282A783D8;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_219555434()
{
  type metadata accessor for MyRecipesConfig(0);
  sub_219BE2904();

  type metadata accessor for MyRecipesViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1BB20, &protocol descriptor for MyRecipesStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1BB28, &protocol descriptor for MyRecipesRouterType, 1);
  sub_219BE2914();
  type metadata accessor for MyRecipesRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC1BB30, &protocol descriptor for MyRecipesEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1BB38, &protocol descriptor for MyRecipesInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1BB40, &protocol descriptor for MyRecipesDataManagerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC1BB48, &protocol descriptor for MyRecipesTrackerType, 1);
  sub_219BE2914();

  sub_219559994(0);
  sub_219BE2904();

  type metadata accessor for MyRecipesBlueprintModifierFactory();
  sub_219BE2904();

  sub_2195599B4(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21955A260(0);
  sub_219BE2904();

  sub_21955A454(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_219559AA0(0);
  sub_219BE2904();

  sub_21955A39C(0);
  sub_219BE2904();

  sub_219559EF4(0);
  sub_219BE2904();

  type metadata accessor for MyRecipesBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC1BC08, &protocol descriptor for MyRecipesSectionFactoryType, 1);
  sub_219BE2914();

  sub_21955A4E8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_219559BA8(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();

  sub_219559D24(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219559FF4(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21955A174(0);
  sub_219BE2904();

  type metadata accessor for MyRecipesBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for MyRecipesBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_21955A624(0);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_21955A6B8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  sub_21955A7A4(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21955A838(0);
  sub_219BE2904();

  sub_21955A978(0);
  sub_219BE2904();

  return result;
}

char *sub_219555F44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1BB20, &protocol descriptor for MyRecipesStylerType, 1);
  result = sub_219BE1E34();
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1BB30, &protocol descriptor for MyRecipesEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v22;
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A4E8(0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v20 = type metadata accessor for MyRecipesStyler();
    v21 = &off_282A783A0;
    v19[0] = v11;
    v12 = objc_allocWithZone(type metadata accessor for MyRecipesViewController());
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_21955AD90(*v16, v3, v4, v5, v12);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219556204@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_219559FAC(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for MyRecipesStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A783A0;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219556464@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BDD274();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for MyRecipesRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A77C60;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219556560(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MyRecipesViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_2195565E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1BB38, &protocol descriptor for MyRecipesInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1BB28, &protocol descriptor for MyRecipesRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1BB48, &protocol descriptor for MyRecipesTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_21955AFE8(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A77DA0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219556890@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1BB40, &protocol descriptor for MyRecipesDataManagerType, 0);
  result = sub_219BE1E34();
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195599B4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A838(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A978(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MyRecipesBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    sub_21955ACFC(0);
    v9 = swift_allocObject();
    v9[3] = 0;
    swift_unknownObjectWeakInit();
    v9[8] = v10;
    v9[9] = v11;
    v9[6] = v6;
    v9[7] = v7;
    v9[4] = v5;
    v9[5] = v8;
    *(v10 + 208) = &off_282A77F88;
    result = swift_unknownObjectWeakAssign();
    *a2 = v9;
    a2[1] = &off_282A77FA0;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_219556A64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E927A0, MEMORY[0x277D30420], 1);
  result = sub_219BE1E34();
  if (!v16[3])
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E927D0, MEMORY[0x277D303B8], 1);
  result = sub_219BE1E34();
  if (!v15[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00, MEMORY[0x277D33810], 1);
  result = sub_219BE1E34();
  if (!v14[3])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  v5 = v12;
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MyRecipesConfig(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E900F0, MEMORY[0x277D33F20], 1);
  result = sub_219BE1E34();
  if (!v11[3])
  {
LABEL_16:
    __break(1u);
    return result;
  }

  type metadata accessor for MyRecipesDataManager();
  v8 = swift_allocObject();
  v8[26] = 0;
  swift_unknownObjectWeakInit();
  sub_218718690(v16, (v8 + 2));
  sub_218718690(v15, (v8 + 7));
  sub_218718690(v14, (v8 + 12));
  v8[17] = v5;
  v8[18] = v6;
  v8[19] = v7;
  sub_218718690(v11, (v8 + 20));
  if (*(v7 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_dataSource))
  {
    __swift_project_boxed_opaque_existential_1(v8 + 7, v8[10]);
    sub_219559FAC(&qword_27CC1BCD0, type metadata accessor for MyRecipesDataManager, &unk_219C88798);
    swift_unknownObjectRetain();

    sub_219BED2A4();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8 + 2, v8[5]);
    sub_219559FAC(&qword_27CC1BCD8, type metadata accessor for MyRecipesDataManager, &unk_219C887C8);
    swift_unknownObjectRetain();

    sub_219BED394();
  }

  v9 = v8[17];

  sub_219274F1C(v10, v9);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  *a2 = v8;
  a2[1] = &off_282A77D08;
  return result;
}

void *sub_219556E38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91010, MEMORY[0x277D32BB8], 1);
  result = sub_219BE1DF4();
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1BB18, &protocol descriptor for MyRecipesTrackerObserverType, 0);
  sub_219BE1E34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v10 != 2)
  {
    v8 = type metadata accessor for MyRecipesTracker();
    v9 = swift_allocObject();
    *(v9 + 24) = v7;
    *(v9 + 32) = v6;
    *(v9 + 16) = v5;
    sub_2186CB1F0(&v15, v9 + 40);
    result = sub_2186CB1F0(&v13, v9 + 80);
    *(v9 + 120) = v11;
    *(v9 + 128) = v12;
    *(v9 + 136) = v10 & 1;
    a2[3] = v8;
    a2[4] = &off_282A657A8;
    *a2 = v9;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_2195570E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC1BC08, &protocol descriptor for MyRecipesSectionFactoryType, 1);
  result = sub_219BE1E34();
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for MyRecipesConfig(0);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      v5 = MEMORY[0x28223BE20](v4);
      v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = *v7;
      v10 = type metadata accessor for MyRecipesSectionFactory();
      v18[3] = v10;
      v18[4] = &off_282A783B8;
      v18[0] = v9;
      type metadata accessor for MyRecipesBlueprintModifierFactory();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      v13 = MEMORY[0x28223BE20](v12);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v17 = *v15;
      v11[5] = v10;
      v11[6] = &off_282A783B8;
      v11[2] = v17;
      v11[7] = v3;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219557344(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559994(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219559AA0(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2195599B4(0);
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219557424(uint64_t a1, void *a2)
{
  sub_21955AC1C(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_21955AC3C(0, &qword_27CC1BCB8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_219559FAC(&qword_27CC1BCC0, sub_21955AC1C, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21955A260(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_219559FAC(&qword_27CC1BCC8, sub_21955A260, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2195575BC(void *a1)
{
  sub_218B79DE4(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MyRecipesBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A39C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A454(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21955A260(0);
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219557724(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559EF4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_21955A454(0);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2195578C4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_219557908(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559BA8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A7A4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219559FAC(&qword_27CC1BCA0, sub_21955A7A4, MEMORY[0x277D6E070]);
    sub_219559AA0(0);
    swift_allocObject();
    return sub_219BE72C4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219557AD0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for MyRecipesConfig(0);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for MyRecipesBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219557BBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE244();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for MyRecipesSectionFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A783B8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219557C44(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559994(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559BA8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A624(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219559FAC(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_21955A4E8(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_219557F48(uint64_t a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 104))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E3C8], v4);
  sub_219BE86C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21955A454(0);
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_219559FAC(&qword_27CC1BCA8, sub_21955A454, MEMORY[0x277D6E7D0]);
  }

  else
  {
    v8 = 0;
    v18 = 0;
    v19 = 0;
  }

  v17 = v10;
  v20 = v8;
  v21 = v9;
  sub_219BE8724();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21955A7A4(0);
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_219559FAC(&qword_27CC1BCA0, sub_21955A7A4, MEMORY[0x277D6E070]);
  }

  else
  {
    v12 = 0;
    v18 = 0;
    v19 = 0;
  }

  v17 = v14;
  v20 = v12;
  v21 = v13;
  return sub_219BE86F4();
}

id sub_219558144(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219558224(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559D24(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559FF4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A174(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219559BA8(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219558390@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559BA8(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219558448()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_219558518(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2195585E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559994(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559EF4(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MyRecipesBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MyRecipesBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_219559D24(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_21955877C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790, 0x277D759D8);
    sub_219BE1B74();
  }

  else
  {
    __break(1u);
  }
}

void *sub_21955888C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219558960(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559994(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559EF4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A624(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_219559FAC(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_219559FF4(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_219558BB0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21955A4E8(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE9714();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_21955A6B8(0);
    if (sub_219BE1E24())
    {
      sub_219559FAC(&qword_27CC1BC98, sub_21955A6B8, MEMORY[0x277D6E3F0]);
    }

    return sub_219BE9774();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219558CF0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559994(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219559EF4(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21955A174(0);
      v4 = objc_allocWithZone(v3);
      return sub_219BE9F24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219558DB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for MyRecipesBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219558E5C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MyRecipesViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A78438;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_219558EF0()
{
  type metadata accessor for MyRecipesBlueprintViewSupplementaryViewProvider();

  return swift_allocObject();
}

uint64_t sub_219558F24(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21955AB80(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559994(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_21955A624(0);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219559184(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A6B8(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_219559FAC(&qword_27CC1BC88, sub_21955A6B8, MEMORY[0x277D6E3F8]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2195592C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559994(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219559BA8(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21955A6B8(0);
      swift_allocObject();
      return sub_219BE9094();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2195593DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559BA8(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219559498(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21955A4E8(0);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_219559FAC(a3, sub_21955A4E8, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_21955954C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21955A4E8(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_219559FAC(&qword_27CC1BC70, sub_21955A4E8, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2195595F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559BA8(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21955A7A4(0);
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21955966C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219559EF4(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219559BA8(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21955AA94(0);
      v5 = v4;
      swift_allocObject();
      v6 = sub_219BEA4E4();
      v7[3] = v5;
      v7[4] = sub_219559FAC(&qword_27CC1BC68, sub_21955AA94, MEMORY[0x277D6EAD8]);
      v7[0] = v6;
      sub_219BE8924();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2195597A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559EF4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350, 0x277D31340);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8AB0, MEMORY[0x277D30250], 1);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_21955A838(0);
    swift_allocObject();
    return sub_219BDE2E4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2195598D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219559994(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219559EF4(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21955A978(0);
      swift_allocObject();
      return sub_219BDEBB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2195599B4(uint64_t a1)
{
  if (!qword_27CC1BB58)
  {
    sub_219559994(255);
    sub_219559AA0(255);
    sub_219559FAC(&qword_27CC1BB80, sub_219559994, MEMORY[0x277D6D8C8]);
    sub_219559FAC(&qword_27CC1BBD8, sub_219559AA0, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BB58);
    }
  }
}

void sub_219559AA0(uint64_t a1)
{
  if (!qword_27CC1BB60)
  {
    type metadata accessor for MyRecipesModel(255);
    sub_219559BA8(255);
    sub_21895406C();
    sub_219559FAC(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    sub_219559FAC(&qword_27CC1BBD0, sub_219559BA8, MEMORY[0x277D6DC88]);
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BB60);
    }
  }
}

void sub_219559BA8(uint64_t a1)
{
  if (!qword_27CC1BB68)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_219559D24(255);
    sub_219559FF4(255);
    sub_21955A174(255);
    type metadata accessor for MyRecipesViewController();
    sub_219559FAC(&qword_27CC1BBB8, sub_219559D24, MEMORY[0x277D6E820]);
    sub_219559FAC(&qword_27CC1BBC0, sub_219559FF4, MEMORY[0x277D6E738]);
    sub_219559FAC(&qword_27CC1BBC8, sub_21955A174, MEMORY[0x277D6E918]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BB68);
    }
  }
}

void sub_219559D24(uint64_t a1)
{
  if (!qword_27CC1BB70)
  {
    sub_219559994(255);
    sub_219559EF4(255);
    type metadata accessor for MyRecipesBlueprintViewCellProvider();
    type metadata accessor for MyRecipesBlueprintViewSupplementaryViewProvider();
    sub_219559FAC(&qword_27CC1BB80, sub_219559994, MEMORY[0x277D6D8C8]);
    sub_219559FAC(&qword_27CC1BB88, sub_219559EF4, MEMORY[0x277D6DF38]);
    sub_219559FAC(&qword_27CC1BB90, type metadata accessor for MyRecipesBlueprintViewCellProvider, &unk_219C88944);
    sub_219559FAC(&qword_27CC1BB98, type metadata accessor for MyRecipesBlueprintViewSupplementaryViewProvider, &unk_219C88B30);
    sub_219559FAC(&qword_27CC1BAA0, type metadata accessor for MyRecipesLayoutModel, &unk_219C89080);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BB70);
    }
  }
}

void sub_219559EF4(uint64_t a1)
{
  if (!qword_27CC1BB78)
  {
    type metadata accessor for MyRecipesLayoutModel(255);
    sub_218C3F3A4();
    sub_219559FAC(&qword_27CC0F628, type metadata accessor for MyRecipesLayoutModel, &unk_219C89048);
    v1 = sub_219BE8564();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BB78);
    }
  }
}

uint64_t sub_219559FAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_219559FF4(uint64_t a1)
{
  if (!qword_27CC1BBA0)
  {
    sub_219559994(255);
    sub_219559EF4(255);
    type metadata accessor for MyRecipesViewController();
    sub_219559FAC(&qword_27CC1BB80, sub_219559994, MEMORY[0x277D6D8C8]);
    sub_219559FAC(&qword_27CC1BB88, sub_219559EF4, MEMORY[0x277D6DF38]);
    sub_219559FAC(&qword_27CC1BBA8, type metadata accessor for MyRecipesViewController, &unk_219C89650);
    sub_219559FAC(&qword_27CC1BAA0, type metadata accessor for MyRecipesLayoutModel, &unk_219C89080);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BBA0);
    }
  }
}

void sub_21955A174(uint64_t a1)
{
  if (!qword_27CC1BBB0)
  {
    sub_219559994(255);
    sub_219559EF4(255);
    sub_219559FAC(&qword_27CC1BB80, sub_219559994, MEMORY[0x277D6D8C8]);
    sub_219559FAC(&qword_27CC1BB88, sub_219559EF4, MEMORY[0x277D6DF38]);
    v1 = sub_219BE9F34();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BBB0);
    }
  }
}

void sub_21955A260(uint64_t a1)
{
  if (!qword_27CC1BBE0)
  {
    sub_219559EF4(255);
    type metadata accessor for MyRecipesBlueprintLayoutBuilder();
    sub_21955A39C(255);
    sub_219559FAC(&qword_27CC1BB88, sub_219559EF4, MEMORY[0x277D6DF38]);
    sub_219559FAC(&qword_27CC1BBF0, type metadata accessor for MyRecipesBlueprintLayoutBuilder, &unk_219C89268);
    sub_219559FAC(&qword_27CC1BBF8, sub_21955A39C, MEMORY[0x277D6E7B8]);
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BBE0);
    }
  }
}

void sub_21955A39C(uint64_t a1)
{
  if (!qword_27CC1BBE8)
  {
    type metadata accessor for MyRecipesLayoutModel(255);
    sub_21954F0F4();
    sub_219559FAC(&qword_27CC1BAA0, type metadata accessor for MyRecipesLayoutModel, &unk_219C89080);
    v1 = sub_219BE9974();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BBE8);
    }
  }
}

void sub_21955A454(uint64_t a1)
{
  if (!qword_27CC1BC00)
  {
    sub_219559EF4(255);
    sub_219559FAC(&qword_27CC1BB88, sub_219559EF4, MEMORY[0x277D6DF38]);
    v1 = sub_219BE99B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BC00);
    }
  }
}

void sub_21955A4E8(uint64_t a1)
{
  if (!qword_27CC1BC10)
  {
    sub_219559994(255);
    sub_219559BA8(255);
    type metadata accessor for MyRecipesViewController();
    sub_219559FAC(&qword_27CC1BB80, sub_219559994, MEMORY[0x277D6D8C8]);
    sub_219559FAC(&qword_27CC1BBD0, sub_219559BA8, MEMORY[0x277D6DC88]);
    sub_219559FAC(&qword_27CC1BBA8, type metadata accessor for MyRecipesViewController, &unk_219C89650);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BC10);
    }
  }
}

void sub_21955A624(uint64_t a1)
{
  if (!qword_27CC1BC18)
  {
    sub_219559994(255);
    sub_219559FAC(&qword_27CC1BB80, sub_219559994, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BC18);
    }
  }
}

void sub_21955A6B8(uint64_t a1)
{
  if (!qword_27CC1BC20)
  {
    sub_219559994(255);
    sub_219559BA8(255);
    sub_219559FAC(&qword_27CC1BC28, sub_219559994, MEMORY[0x277D6D8C0]);
    sub_219559FAC(&qword_27CC1BBD0, sub_219559BA8, MEMORY[0x277D6DC88]);
    v1 = sub_219BE90A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BC20);
    }
  }
}

void sub_21955A7A4(uint64_t a1)
{
  if (!qword_27CC1BC30)
  {
    sub_219559BA8(255);
    sub_219559FAC(&qword_27CC1BBD0, sub_219559BA8, MEMORY[0x277D6DC88]);
    v1 = sub_219BE8934();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BC30);
    }
  }
}

void sub_21955A838(uint64_t a1)
{
  if (!qword_27CC1BC38)
  {
    sub_219559EF4(255);
    sub_219559FAC(&qword_27CC1BB88, sub_219559EF4, MEMORY[0x277D6DF38]);
    sub_219559FAC(&qword_27CC1BC40, type metadata accessor for MyRecipesLayoutModel, &unk_219C890D0);
    sub_219559FAC(&qword_27CC1BC48, type metadata accessor for MyRecipesLayoutModel, &unk_219C89200);
    sub_219559FAC(&qword_27CC1BC50, type metadata accessor for MyRecipesLayoutModel, &unk_219C891D8);
    v1 = sub_219BDE304();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BC38);
    }
  }
}

void sub_21955A978(uint64_t a1)
{
  if (!qword_27CC1BC58)
  {
    type metadata accessor for MyRecipesModel(255);
    type metadata accessor for MyRecipesLayoutModel(255);
    sub_21895406C();
    sub_219559FAC(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    sub_218C3F3A4();
    sub_219559FAC(&qword_27CC0F628, type metadata accessor for MyRecipesLayoutModel, &unk_219C89048);
    v1 = sub_219BDEBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BC58);
    }
  }
}

void sub_21955AA94(uint64_t a1)
{
  if (!qword_27CC1BC60)
  {
    sub_219559EF4(255);
    sub_219559BA8(255);
    sub_219559FAC(&qword_27CC1BB88, sub_219559EF4, MEMORY[0x277D6DF38]);
    sub_219559FAC(&qword_27CC1BBD0, sub_219559BA8, MEMORY[0x277D6DC88]);
    v1 = sub_219BEA4F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BC60);
    }
  }
}

void sub_21955AB80(uint64_t a1)
{
  if (!qword_27CC1BC90)
  {
    sub_219559994(255);
    sub_219559FAC(&qword_27CC1BB80, sub_219559994, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BC90);
    }
  }
}

void sub_21955AC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyRecipesSectionDescriptor;
    v8[1] = type metadata accessor for MyRecipesModel(255);
    v8[2] = sub_21895406C();
    v8[3] = sub_219559FAC(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21955ACFC(uint64_t a1)
{
  if (!qword_27CC1BCE0)
  {
    v2 = type metadata accessor for MyRecipesBlueprintModifierFactory();
    v3 = sub_219559FAC(&qword_27CC1BCE8, type metadata accessor for MyRecipesBlueprintModifierFactory, &unk_219C88A34);
    v5 = type metadata accessor for MyRecipesInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27CC1BCE0);
    }
  }
}

char *sub_21955AD90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for MyRecipesStyler();
  v20[4] = &off_282A783A0;
  a5[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_isBeingUsedAsPlugin] = 0;
  v20[3] = v11;
  v20[0] = a1;
  *&a5[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_pluggableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_blueprintHorizontalShimView] = 0;
  sub_218718690(v20, &a5[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_styler]);
  v12 = &a5[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_eventHandler];
  *v12 = a2;
  v12[1] = a3;
  *&a5[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_blueprintViewController] = a4;
  v19.receiver = a5;
  v19.super_class = ObjectType;
  swift_unknownObjectRetain();
  v13 = a4;
  v14 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  *(*&v14[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_eventHandler] + 24) = &off_282A78440;
  swift_unknownObjectWeakAssign();
  v15 = *&v14[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_blueprintViewController];
  v16 = v14;
  v17 = v15;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v16;
}

void *sub_21955AEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for MyRecipesRouter();
  v15[4] = &off_282A77C60;
  v15[0] = a3;
  v14[3] = type metadata accessor for MyRecipesTracker();
  v14[4] = &off_282A657A8;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A77D90, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_21955AFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for MyRecipesRouter();
  v27 = &off_282A77C60;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_282A657A8;
  v22[0] = a4;
  type metadata accessor for MyRecipesEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_21955AEF0(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

void sub_21955B358()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_blueprintViewController];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  sub_219BE9BB4();
  v19 = v2;
  v20 = sub_219BE9BA4();
  if (!v20)
  {
LABEL_8:
    v25 = [v1 traitCollection];
    sub_21955DDB4();

    return;
  }

  v21 = v20;
  v22 = [v1 view];
  if (v22)
  {
    v23 = v22;
    [v22 addSubview_];

    v24 = *&v1[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_blueprintHorizontalShimView];
    *&v1[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_blueprintHorizontalShimView] = v21;

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
}

void sub_21955B5A8()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewWillLayoutSubviews);
  v2 = [*&v0[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_blueprintViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  sub_219BE8734();
  v14 = *&v0[OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_blueprintHorizontalShimView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
}

double sub_21955B7F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = a1;

  sub_219BE3494();

  return result;
}

uint64_t sub_21955B874(uint64_t a1, uint64_t (*a2)(double, double))
{
  v3 = sub_219BE8164();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE86E4();
  swift_getObjectType();
  sub_219BE9E04();
  swift_unknownObjectRelease();
  sub_219BE8154();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  sub_219BE8664();
  v9 = sub_219BE7BC4();

  v10 = [v9 collectionViewLayout];

  [v10 collectionViewContentSize];
  v12 = v11;

  return a2(v8, v12);
}

uint64_t sub_21955BA4C(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21955BABC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_218A5FF2C;
}

uint64_t sub_21955BB60()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_21955BBA8(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

double sub_21955BC6C@<D0>(uint64_t a1@<X8>)
{
  sub_219BE8714();
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(a1 + 24) = v2;
    *(a1 + 32) = *(v3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_21955DCF8(v7, &qword_27CC0D548, sub_218A79068);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_21955BD50(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_eventHandler);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 32);
  v11 = v5;

  v10(sub_21955DA60, v7, ObjectType, v8);

  return result;
}

double sub_21955BE20(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_eventHandler);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;

  v10(sub_21955DA24, v7, ObjectType, v8);

  return result;
}

void sub_21955BEF0(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_21955DC4C(&qword_27CC1BB10, v5, type metadata accessor for MyRecipesViewController, &unk_219C89790);
      v6 = v4;
      sub_219BE98B4();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21955C008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v11 = OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v11) & 1) == 0)
    {
      v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v12 + 40))(nullsub_1, 0, ObjectType, v12);
    }

    return;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    v14 = OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v14) & 1) == 0)
    {
      v15 = *(*(v3 + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_eventHandler) + 40);
      v16 = swift_getObjectType();
      (*(v15 + 32))(nullsub_1, 0, v16, v15);
    }
  }

  else
  {
    if (v10 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v10 == *MEMORY[0x277D6E978])
    {
      return;
    }

    if (v10 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v10 != *MEMORY[0x277D6E958])
    {
      if (v10 == *MEMORY[0x277D6E970])
      {
        sub_219BE8664();
        v17 = sub_219BE7BC4();

        [v17 reloadData];
      }

      else if (v10 != *MEMORY[0x277D6E960] && v10 != *MEMORY[0x277D6E968] && v10 != *MEMORY[0x277D6E938] && v10 != *MEMORY[0x277D6E940])
      {
        (*(v6 + 8))(v9, v5);
      }
    }
  }
}

double sub_21955C31C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_eventHandler);
  __swift_project_boxed_opaque_existential_1(v4 + 11, v4[14]);
  sub_219250B48();
  __swift_project_boxed_opaque_existential_1(v4 + 6, v4[9]);
  v5 = v4[5];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 48))(a2, ObjectType, v5);
  sub_219542FD0(v7);

  return result;
}

uint64_t sub_21955C3C4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_eventHandler);
  __swift_project_boxed_opaque_existential_1(v4 + 6, v4[9]);
  v5 = v4[5];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 48))(a2, ObjectType, v5);
  v8 = sub_2195435A0(v7);

  return v8;
}

uint64_t sub_21955C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5818](a1, a2, ObjectType, a4);
}

uint64_t sub_21955C51C(uint64_t a1)
{
  sub_219BE8664();
  v1 = sub_219BE7BC4();

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    swift_getObjectType();
    v3 = sub_219BE99F4();
  }

  return v3 & 1;
}

void sub_21955C5B4(uint64_t a1, uint64_t a2)
{
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v2 = v3 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    swift_getObjectType();
    sub_219BE9A04();
  }
}

uint64_t sub_21955C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5498](a1, a2, ObjectType, a4);
}

uint64_t sub_21955C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5488](a1, a2, ObjectType, a4);
}

uint64_t sub_21955C724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5480](a1, a2, ObjectType, a4);
}

uint64_t sub_21955C77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5490](a1, a2, ObjectType, a4);
}

uint64_t sub_21955C7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D54A0](a1, ObjectType, a3);
}

uint64_t sub_21955C824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D54A8](a1, ObjectType, a3);
}

uint64_t sub_21955C874()
{
  sub_21955DA9C(0, &qword_27CC1BD20, MEMORY[0x277D32FD0]);
  MEMORY[0x28223BE20](v1 - 8);
  v126 = &v87 - v2;
  sub_218C40320(0);
  v141 = v3;
  v135 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v140 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BF0614();
  v132 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v103 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = &v87 - v7;
  v8 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v102 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v138 = &v87 - v11;
  MEMORY[0x28223BE20](v12);
  v125 = &v87 - v13;
  v137 = sub_219BF0B74();
  v129 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v108 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BDD374();
  v104 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v101 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v117 = &v87 - v17;
  sub_2189F1E48(0);
  v19 = v18;
  v131 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v109 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21955DAF0(0);
  v96 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219552B74(0);
  v25 = v24;
  v130 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v95 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v99 = &v87 - v28;
  sub_21955DB88(0, &qword_27CC0B168, MEMORY[0x277D6D710]);
  v128 = v29;
  v115 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v127 = &v87 - v30;
  sub_2195491F8(0);
  v32 = v31 - 8;
  MEMORY[0x28223BE20](v31);
  v97 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189540C0(0);
  v100 = v34;
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v87 - v39;
  v136 = v0;
  sub_219BE86A4();
  v142 = v143;
  sub_219559994(0);
  sub_21955DC4C(&qword_27CC1BB80, 255, sub_219559994, MEMORY[0x277D6D8C8]);
  v41 = v128;
  sub_219BE7B94();

  v144 = MEMORY[0x277D84F90];
  v89 = v35;
  v42 = *(v35 + 16);
  v88 = v40;
  v42(v37, v40, v100);
  sub_21955DC4C(&qword_27CC1BD38, 255, sub_2189540C0, MEMORY[0x277D6EC68]);
  v43 = v97;
  v44 = v127;
  sub_219BF56A4();
  v45 = *(v32 + 44);
  v46 = v109;
  v134 = OBJC_IVAR____TtC7NewsUI223MyRecipesViewController_pluggableDelegate;
  v47 = sub_21955DC4C(&qword_27CC0B188, 255, sub_2189540C0, MEMORY[0x277D6EC70]);
  sub_219BF5E84();
  v48 = v45;
  v49 = v43;
  if (*&v43[v48] != v143)
  {
    v110 = &v136[v134];
    v93 = (v115 + 16);
    v92 = (v130 + 16);
    v122 = (v131 + 2);
    v136 = (v135 + 4);
    ++v135;
    LODWORD(v134) = *MEMORY[0x277D32DF0];
    v133 = (v132 + 13);
    ++v132;
    v121 = (v129 + 48);
    v107 = (v129 + 32);
    v106 = (v129 + 8);
    v120 = (v131 + 1);
    v116 = (v104 + 32);
    v91 = (v130 + 8);
    v90 = (v115 + 8);
    v124 = v23;
    v123 = v25;
    v94 = v48;
    v98 = v47;
    v119 = v19;
    while (1)
    {
      v52 = sub_219BF5EC4();
      (*v93)(v44);
      v52(&v143, 0);
      sub_219BF5E94();
      v53 = v99;
      sub_219BE6974();
      (*v92)(v95, v53, v25);
      sub_21955DC4C(&qword_27CC1BD40, 255, sub_219552B74, MEMORY[0x277D6CC40]);
      sub_219BF56A4();
      v54 = *(v96 + 36);
      swift_beginAccess();
      v55 = sub_21955DC4C(&qword_27CC1BD30, 255, sub_219552B74, MEMORY[0x277D6CC48]);
      sub_219BF5E84();
      v56 = *&v23[v54];
      v131 = MEMORY[0x277D84F90];
      v57 = v105;
      if (v56 != v143)
      {
        break;
      }

LABEL_4:
      sub_21955DD54(v23, sub_21955DAF0);
      (*v91)(v99, v25);
      (*v90)(v44, v41);
      sub_2191EE2BC(v131);
      v51 = v97;
      sub_219BF5E84();
      v49 = v51;
      if (*&v51[v94] == v143)
      {
        goto LABEL_2;
      }
    }

    v130 = v54;
    v131 = MEMORY[0x277D84F90];
    v129 = v55;
    while (1)
    {
      v58 = sub_219BF5EC4();
      (*v122)(v46);
      v58(&v143, 0);
      sub_219BF5E94();
      v59 = v125;
      sub_219BE5FC4();
      v60 = v138;
      sub_21955DC94(v59, v138);
      v61 = *v136;
      v62 = v140;
      v63 = v60;
      v64 = v141;
      (*v136)(v140, v63, v141);
      sub_219BF07D4();
      v65 = *v135;
      (*v135)(v62, v64);
      sub_21955DD54(v59, type metadata accessor for MyRecipesModel);
      v66 = *v133;
      v67 = v139;
      (*v133)(v57, v134, v139);
      v68 = v126;
      sub_219BF04C4();
      v69 = *v132;
      (*v132)(v57, v67);
      v70 = v137;
      if ((*v121)(v68, 1, v137) == 1)
      {
        (*v120)(v46, v19);
        sub_21955DCF8(v68, &qword_27CC1BD20, MEMORY[0x277D32FD0]);
      }

      else
      {
        v71 = v108;
        (*v107)(v108, v68, v70);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v115 = sub_219BE98C4();
          v114 = v72;
          swift_unknownObjectRelease();
          v113 = sub_219BF0B44();
          v112 = sub_219BF0AF4();
          v111 = v73;
          v74 = v138;
          v75 = v109;
          sub_219BE5FC4();
          v76 = v102;
          sub_21955DC94(v74, v102);
          v77 = v140;
          v78 = v141;
          v61(v140, v76, v141);
          v79 = v103;
          sub_219BF07D4();
          v65(v77, v78);
          sub_21955DD54(v74, type metadata accessor for MyRecipesModel);
          v80 = v139;
          v66(v79, v134, v139);
          sub_219BF04D4();
          v69(v79, v80);
          v81 = v101;
          sub_219BDD354();
          v82 = v71;
          v19 = v119;
          v46 = v75;
          (*v106)(v82, v137);
          (*v120)(v75, v19);
          v83 = *v116;
          (*v116)(v117, v81, v118);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_2191F846C(0, v131[2] + 1, 1, v131);
          }

          v85 = v131[2];
          v84 = v131[3];
          v23 = v124;
          v25 = v123;
          v41 = v128;
          v44 = v127;
          if (v85 >= v84 >> 1)
          {
            v131 = sub_2191F846C((v84 > 1), v85 + 1, 1, v131);
          }

          v86 = v131;
          v131[2] = v85 + 1;
          v83(&v86[((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v85], v117, v118);
          v57 = v105;
          goto LABEL_9;
        }

        (*v106)(v71, v70);
        v46 = v109;
        v19 = v119;
        (*v120)(v109, v119);
      }

      v23 = v124;
      v25 = v123;
      v41 = v128;
      v44 = v127;
LABEL_9:
      sub_219BF5E84();
      if (*&v23[v130] == v143)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_2:
  sub_21955DD54(v49, sub_2195491F8);
  (*(v89 + 8))(v88, v100);
  return v144;
}

void sub_21955DA9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21955DAF0(uint64_t a1)
{
  if (!qword_27CC1BD28)
  {
    sub_219552B74(255);
    sub_21955DC4C(&qword_27CC1BD30, 255, sub_219552B74, MEMORY[0x277D6CC48]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1BD28);
    }
  }
}

void sub_21955DB88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyRecipesSectionDescriptor;
    v8[1] = type metadata accessor for MyRecipesModel(255);
    v8[2] = sub_21895406C();
    v8[3] = sub_21955DC4C(&qword_27CC1AE10, 255, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21955DC4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_21955DC94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyRecipesModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21955DCF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21955DA9C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21955DD54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21955DDB4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    sub_2186F8B0C();
    v3 = sub_219BF6D44();
    [v2 setBackgroundColor_];

    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v4 = sub_219BF6D44();
    [v5 setBackgroundColor_];

    [v5 setShowsHorizontalScrollIndicator_];
    [v5 setShowsVerticalScrollIndicator_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21955DEC8(uint64_t a1, uint64_t a2)
{
  sub_218C40320(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21955DF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218C40320(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for MyRecipesModel(uint64_t a1)
{
  result = qword_27CC1BD48;
  if (!qword_27CC1BD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21955DFFC(uint64_t a1)
{
  sub_218C40320(319);
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

uint64_t sub_21955E0E8()
{
  v1 = sub_219BF0B74();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40320(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21955DC94(v0, v12);
  (*(v7 + 32))(v9, v12, v6);
  sub_219BF07D4();
  v13 = sub_219BF0AF4();
  (*(v2 + 8))(v4, v1);
  (*(v7 + 8))(v9, v6);
  return v13;
}

uint64_t sub_21955E2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2186EF81C(&qword_27CC1BD70, type metadata accessor for MyRecipesModel, &unk_219C89898);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_21955E470(uint64_t a1, uint64_t a2)
{
  sub_218C40320(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  sub_21955F77C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  sub_21955DC94(a1, v14);
  sub_21955DC94(a2, &v14[v16]);
  v17 = *(v6 + 32);
  v17(v11, v14, v5);
  v17(v8, &v14[v16], v5);
  sub_219BF0B74();
  sub_219BDBD34();
  v18 = MEMORY[0x277D32FD0];
  sub_2186EF81C(&unk_280E90C70, MEMORY[0x277D32FD0], MEMORY[0x277D32FD8]);
  sub_2186EF81C(&unk_280E90C80, v18, MEMORY[0x277D32FC8]);
  LOBYTE(a2) = sub_219BF07C4();
  v19 = *(v6 + 8);
  v19(v8, v5);
  v19(v11, v5);
  return a2 & 1;
}

uint64_t sub_21955E6A8()
{
  v1 = sub_219BF0B74();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40320(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21955DC94(v0, v12);
  (*(v7 + 32))(v9, v12, v6);
  sub_219BF07D4();
  sub_219BF0B54();
  (*(v2 + 8))(v4, v1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21955E894()
{
  v1 = sub_219BF0B74();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40320(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21955DC94(v0, v12);
  (*(v7 + 32))(v9, v12, v6);
  sub_219BF07D4();
  v13 = sub_219BF0B44();
  (*(v2 + 8))(v4, v1);
  sub_21955F7E0(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  sub_219BE6364();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C0B8C0;
  sub_219BE6354();
  sub_219BE62D4();
  sub_219BE6304();

  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_21955EB64@<X0>(uint64_t a1@<X8>)
{
  sub_218C40320(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21955DC94(v1, v10);
  (*(v5 + 32))(v7, v10, v4);
  sub_219BF07D4();
  (*(v5 + 8))(v7, v4);
  v11 = *MEMORY[0x277D32DF0];
  v12 = sub_219BF0614();
  return (*(*(v12 - 8) + 104))(a1, v11, v12);
}

uint64_t sub_21955ECEC()
{
  sub_218C40320(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0614();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21955DC94(v0, v8);
  (*(v3 + 32))(v5, v8, v2);
  sub_219BF07D4();
  (*(v3 + 8))(v5, v2);
  (*(v10 + 104))(v12, *MEMORY[0x277D32DF0], v9);
  v13 = sub_219BF05A4();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_21955EF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v30[6] = a8;
  v30[7] = a9;
  v12 = sub_219BE57D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - v14;
  sub_218C40320(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v30 - v22;
  v24 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21955DC94(v10, v26);
  (*(v18 + 32))(v23, v26, v17);
  (*(v18 + 16))(v20, v23, v17);
  (*(v13 + 16))(v15, a1, v12);
  WitnessTable = swift_getWitnessTable();
  v28 = sub_21987A290(v20, v15, v12, WitnessTable);
  (*(v18 + 8))(v23, v17);
  return v28;
}

uint64_t sub_21955F16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_21955F7E0(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C0EE20;
  v10 = sub_219BE6684();
  v11 = sub_219BE6654();
  if (v11)
  {
    v12 = MEMORY[0x277D6D630];
    v13 = v10;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
  }

  *(v9 + 32) = v11;
  *(v9 + 56) = v13;
  *(v9 + 64) = v12;
  v14 = sub_219BE6634();
  if (v14)
  {
    v15 = MEMORY[0x277D6D630];
    v16 = v10;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v9 + 80) = 0;
    *(v9 + 88) = 0;
  }

  *(v9 + 72) = v14;
  *(v9 + 96) = v16;
  *(v9 + 104) = v15;
  v17 = sub_219BE6614();
  if (v17)
  {
    v18 = MEMORY[0x277D6D630];
    v19 = v10;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    *(v9 + 120) = 0;
    *(v9 + 128) = 0;
  }

  *(v9 + 112) = v17;
  *(v9 + 136) = v19;
  *(v9 + 144) = v18;
  v20 = sub_219BE6664();
  if (v20)
  {
    v21 = MEMORY[0x277D6D630];
  }

  else
  {
    v10 = 0;
    v21 = 0;
    *(v9 + 160) = 0;
    *(v9 + 168) = 0;
  }

  *(v9 + 152) = v20;
  *(v9 + 176) = v10;
  *(v9 + 184) = v21;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  return sub_219BE59D4();
}

uint64_t sub_21955F424@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BF0B74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21955F7E0(0, &qword_280E925F8, MEMORY[0x277D31CE8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  sub_218C40320(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21955DC94(v1, v17);
  (*(v12 + 32))(v14, v17, v11);
  sub_219BF07D4();
  sub_219BF0B44();
  (*(v4 + 8))(v6, v3);
  sub_219BED9C4();
  v18 = sub_219BED9D4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    (*(v12 + 8))(v14, v11);
    result = sub_21955F844(v9);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v18;
    *(a1 + 32) = sub_2186EF81C(&qword_27CC0D938, MEMORY[0x277D31CE8], MEMORY[0x277D31CE0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(v19 + 32))(boxed_opaque_existential_1, v9, v18);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

void sub_21955F77C(uint64_t a1)
{
  if (!qword_27CC1BD80)
  {
    type metadata accessor for MyRecipesModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1BD80);
    }
  }
}

void sub_21955F7E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21955F844(uint64_t a1)
{
  sub_21955F7E0(0, &qword_280E925F8, MEMORY[0x277D31CE8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ForYouRecipesTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EACA30;
  if (!qword_280EACA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21955F944(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      sub_219BEF244();
      if (v3 <= 0x3F)
      {
        sub_2190E9FE4(319);
        if (v4 <= 0x3F)
        {
          sub_2186F95C4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21955FA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a4;
  v46 = a6;
  v43 = a5;
  v44 = a3;
  v48 = a7;
  v49 = a2;
  v8 = sub_219BF0354();
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_219BEF244();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v41 - v17;
  sub_2189AD5C8(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_219124040(a1, v18, &qword_280E91A70, sub_2189AD5C8);
  v24 = *(v21 + 48);
  if (v24(v18, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CBD0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    if (v24(v18, 1, v20) != 1)
    {
      sub_2191240AC(v18, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v18, v20);
  }

  v25 = v48;
  (*(v21 + 32))(v48, v23, v20);
  if (v49)
  {
    v26 = v49;
  }

  else
  {
    v50 = 1;
    sub_2186F9548();
    swift_allocObject();
    v26 = sub_219BEF534();
  }

  v28 = v44;
  v27 = v45;
  v29 = type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
  *(v25 + v29[5]) = v26;
  if (v28)
  {

    v30 = v28;
  }

  else
  {
    v50 = 15;
    sub_2186F9548();
    swift_allocObject();

    v30 = sub_219BEF534();
  }

  *(v25 + v29[6]) = v30;
  sub_219124040(v27, v12, &qword_280E916D0, MEMORY[0x277D324F0]);
  v31 = *(v14 + 48);
  if (v31(v12, 1, v13) == 1)
  {
    v32 = v14;

    v33 = v12;
    v34 = v27;
    v35 = v42;
    sub_219BEF1C4();
    v36 = v31(v33, 1, v13);
    v37 = v35;
    v27 = v34;
    v38 = v46;
    if (v36 != 1)
    {
      sub_2191240AC(v33, &qword_280E916D0, MEMORY[0x277D324F0]);
    }
  }

  else
  {
    v32 = v14;
    v37 = v42;
    (*(v14 + 32))(v42, v12, v13);

    v38 = v46;
  }

  (*(v32 + 32))(v25 + v29[7], v37, v13);
  v39 = v43;
  if (!v43)
  {
    sub_219BF0344();
    sub_2190E9FE4(0);
    swift_allocObject();
    v39 = sub_219BEF534();
  }

  *(v25 + v29[8]) = v39;
  if (!v38)
  {
    LOBYTE(v50) = 1;
    sub_2186F95C4();
    swift_allocObject();
    v38 = sub_219BEF534();
  }

  sub_2191240AC(v27, &qword_280E916D0, MEMORY[0x277D324F0]);
  result = sub_2191240AC(v47, &qword_280E91A70, sub_2189AD5C8);
  *(v25 + v29[9]) = v38;
  return result;
}

uint64_t sub_219560060@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_219BF0354();
  MEMORY[0x28223BE20](v3 - 8);
  v78 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_219BEF244();
  v77 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v76 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v73);
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219123FEC(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = v62 - v14;
  sub_219123FEC(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v15 - 8);
  v83 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = v62 - v18;
  sub_219561190(0, &qword_280E8CB40, MEMORY[0x277D844C8]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = v62 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195610D8();
  v24 = v85;
  sub_219BF7B34();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v65 = v12;
  v67 = 0;
  v68 = v21;
  v70 = a1;
  v71 = v9;
  v26 = v73;
  LOBYTE(v90) = 0;
  sub_21877CBD0(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v27 = v81;
  v28 = v75;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v89) = 1;
  v29 = MEMORY[0x277D32620];
  sub_21877CBD0(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v72 = v90;
  LOBYTE(v88) = 2;
  sub_219BF7674();
  v85 = v89;
  LOBYTE(v88) = 3;
  sub_21877CBD0(&qword_280E916D8, MEMORY[0x277D324F0], MEMORY[0x277D32500]);
  sub_219BF7674();
  sub_2190E9FE4(0);
  v31 = v30;
  LOBYTE(v87) = 4;
  sub_21877CBD0(&qword_280E91450, sub_2190E9FE4, v29);
  v62[0] = v31;
  sub_219BF7674();
  v63 = v88;
  sub_2186F95C4();
  v33 = v32;
  LOBYTE(v86) = 5;
  sub_21877CBD0(&qword_280E913F8, sub_2186F95C4, v29);
  v69 = v20;
  v62[1] = v33;
  sub_219BF7674();
  v64 = v87;
  v34 = v83;
  sub_219124040(v27, v83, &qword_280E91A70, sub_2189AD5C8);
  v35 = v74;
  v36 = *(v74 + 48);
  v37 = v36(v34, 1, v28);
  v38 = v23;
  v39 = v35;
  if (v37 == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CBD0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v40 = v80;
    sub_219BEE974();
    v41 = v36(v83, 1, v28);
    v42 = v40;
    v43 = v26;
    v44 = v65;
    v45 = v28;
    if (v41 != 1)
    {
      sub_2191240AC(v83, &qword_280E91A70, sub_2189AD5C8);
      v45 = v28;
      v42 = v80;
    }
  }

  else
  {
    v42 = v80;
    (*(v35 + 32))(v80, v83, v28);
    v43 = v26;
    v44 = v65;
    v45 = v28;
  }

  v46 = v71;
  (*(v39 + 32))(v71, v42, v45);
  v47 = v76;
  if (v72)
  {
    v48 = v72;
  }

  else
  {
    v86 = 1;
    swift_allocObject();
    v48 = sub_219BEF534();
  }

  *(v46 + v43[5]) = v48;
  v49 = v85;
  v66 = v38;
  if (v85)
  {

    v50 = v49;
  }

  else
  {
    v86 = 15;
    swift_allocObject();

    v50 = sub_219BEF534();
  }

  *(v46 + v43[6]) = v50;
  v51 = v84;
  sub_219124040(v84, v44, &qword_280E916D0, MEMORY[0x277D324F0]);
  v52 = v77;
  v53 = v44;
  v54 = *(v77 + 48);
  v55 = v82;
  if (v54(v44, 1, v82) == 1)
  {

    sub_219BEF1C4();
    v56 = v54(v44, 1, v55);
    v51 = v84;
    v57 = v70;
    if (v56 != 1)
    {
      sub_2191240AC(v53, &qword_280E916D0, MEMORY[0x277D324F0]);
    }
  }

  else
  {
    (*(v52 + 32))(v47, v44, v55);

    v57 = v70;
  }

  (*(v52 + 32))(v46 + v43[7], v47, v55);
  v58 = v63;
  if (!v63)
  {
    sub_219BF0344();
    swift_allocObject();
    v58 = sub_219BEF534();
  }

  v59 = v69;
  v60 = v68;
  v61 = v64;
  *(v46 + v43[8]) = v58;
  if (!v61)
  {
    LOBYTE(v86) = 1;
    swift_allocObject();
    v61 = sub_219BEF534();
  }

  sub_2191240AC(v51, &qword_280E916D0, MEMORY[0x277D324F0]);
  sub_2191240AC(v81, &qword_280E91A70, sub_2189AD5C8);
  (*(v60 + 8))(v66, v59);
  *(v46 + v43[9]) = v61;
  sub_21956112C(v46, v79);
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_219560B54(void *a1)
{
  v3 = v1;
  sub_219561190(0, &qword_27CC1BD88, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195610D8();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8(0);
  sub_21877CBD0(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186F9548();
    sub_21877CBD0(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    LOBYTE(v14) = 3;
    sub_219BEF244();
    sub_21877CBD0(&unk_280E916E0, MEMORY[0x277D324F0], MEMORY[0x277D324F8]);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2190E9FE4(0);
    sub_21877CBD0(&qword_27CC1BD90, sub_2190E9FE4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_2186F95C4();
    sub_21877CBD0(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219560F24()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0x676E6970756F7267;
  v4 = 0x7669446369706F74;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_219561004@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21956142C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21956102C(uint64_t a1)
{
  v2 = sub_2195610D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219561068(uint64_t a1)
{
  v2 = sub_2195610D8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2195610D8()
{
  result = qword_280EACA58[0];
  if (!qword_280EACA58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EACA58);
  }

  return result;
}

uint64_t sub_21956112C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219561190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2195610D8();
    v7 = a3(a1, &type metadata for ForYouRecipesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2195611F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877CBD0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  v4 = type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x21CEC5FB0](a1 + *(v4 + 28), a2 + *(v4 + 28)) & 1) == 0)
  {
    return 0;
  }

  sub_2190E9FE4(0);
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186F95C4();
  return sub_219BEF504() & 1;
}

unint64_t sub_219561328()
{
  result = qword_27CC1BD98;
  if (!qword_27CC1BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BD98);
  }

  return result;
}

unint64_t sub_219561380()
{
  result = qword_280EACA48;
  if (!qword_280EACA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EACA48);
  }

  return result;
}

unint64_t sub_2195613D8()
{
  result = qword_280EACA50;
  if (!qword_280EACA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EACA50);
  }

  return result;
}

uint64_t sub_21956142C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xED000073656C7552 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7669446369706F74 && a2 == 0xEE00797469737265 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_219561668(uint64_t a1)
{
  if (!qword_280E92200)
  {
    type metadata accessor for ChannelRecipesTagFeedGroupConfigData(255);
    sub_219561734(&qword_280E9BC50, type metadata accessor for ChannelRecipesTagFeedGroupConfigData, &unk_219C8A310);
    sub_219561734(&qword_280E9BC58, type metadata accessor for ChannelRecipesTagFeedGroupConfigData, &unk_219C8A2E8);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92200);
    }
  }
}

uint64_t sub_219561734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ChannelRecipesTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA3C88;
  if (!qword_280EA3C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195617DC(uint64_t a1)
{
  sub_219561668(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChannelRecipesTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510, MEMORY[0x277D33778]);
      if (v3 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280EBE990, &protocol descriptor for FoodClusteringServiceType);
        if (v4 <= 0x3F)
        {
          sub_2186CFDE4(319, &qword_280EE9E00, MEMORY[0x277D33810]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2195618E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_219561988(a1, a2);
}

uint64_t sub_219561988(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  type metadata accessor for TagFeedGroup(0);
  v3[12] = swift_task_alloc();
  v4 = sub_219BF2034();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_219BEFA04();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219561AEC, 0, 0);
}

uint64_t sub_219561AEC()
{
  v1 = type metadata accessor for ChannelRecipesTagFeedGroupEmitterCursor();
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_219561BB8;
  v3 = v0[10];

  return MEMORY[0x282190858](v0 + 8, v1, &unk_219C89E38, v3, v1);
}

uint64_t sub_219561BB8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_219561E60;
  }

  else
  {
    v2 = sub_219561CCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219561CCC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  *(v0 + 192) = *(v0 + 64);
  v3 = sub_2199FBB10(v2);
  if (v1)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = v3;
    v7 = *(v0 + 88);
    v8 = *(type metadata accessor for ChannelRecipesTagFeedGroupEmitter(0) + 32);
    *(v0 + 280) = v8;
    *(v0 + 200) = v6;
    *(v0 + 284) = 0;
    v9 = *(v7 + v8 + 24);
    v10 = *(v7 + v8 + 32);
    __swift_project_boxed_opaque_existential_1((v7 + v8), v9);
    v11 = sub_219BEF9E4();
    *(v0 + 216) = v11;
    v12 = swift_task_alloc();
    *(v0 + 224) = v12;
    v13 = sub_218C6FA54();
    *v12 = v0;
    v12[1] = sub_219561F00;

    return MEMORY[0x282192290](v11, v9, v13, v10);
  }
}

uint64_t sub_219561E60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219561F00(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_219562A4C;
  }

  else
  {
    v4 = sub_21956203C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21956203C(__n128 a1)
{
  v50 = v1;
  if (*(v1 + 284) == 1)
  {
  }

  v2 = *(v1 + 232);
  if (v2 >> 62)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= sub_219BEF9D4())
  {
    if (qword_280EE5F50 != -1)
    {
      swift_once();
    }

    v11 = sub_219BE5434();
    __swift_project_value_buffer(v11, qword_280F62598);
    swift_bridgeObjectRetain_n();
    v12 = sub_219BE5414();
    v13 = sub_219BF6214();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v49 = v15;
      *v14 = 136315394;
      swift_beginAccess();
      v16 = [sub_219BEF9F4() identifier];
      swift_unknownObjectRelease();
      v17 = sub_219BF5414();
      v19 = v18;

      v20 = sub_2186D1058(v17, v19, &v49);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2048;
      if (v2 >> 62)
      {
        v21 = sub_219BF7214();
      }

      else
      {
        v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 14) = v21;

      _os_log_impl(&dword_2186C1000, v12, v13, "ChannelRecipes emitter create content for next group channel=%s, recipes=%ld", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x21CECF960](v15, -1, -1);
      MEMORY[0x21CECF960](v14, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v24 = *(v1 + 232);
    v25 = *(v1 + 160);
    v26 = *(v1 + 120);
    swift_beginAccess();
    sub_2195632C0(v25, v24, v26);

    v27 = sub_219BEF9F4();
    *(v1 + 248) = v27;
    v28 = swift_task_alloc();
    *(v1 + 256) = v28;
    *v28 = v1;
    v28[1] = sub_21956272C;
    v29 = *(v1 + 120);
    v30 = *(v1 + 80);

    return sub_219563CA8(v30, v29, v27);
  }

  else
  {
    v4 = *(v1 + 200);
    if (v4)
    {
      v5 = *(v4 + 16);
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = *(v1 + 136);
        v8 = *(v7 + 16);
        v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v8(*(v1 + 144), v5 + v9, *(v1 + 128));
        if (v6 == 1)
        {
          (*(*(v1 + 136) + 32))(*(v1 + 152), *(v1 + 144), *(v1 + 128));

          v10 = 0;
        }

        else
        {
          v37 = *(v1 + 144);
          v39 = *(v1 + 128);
          v38 = *(v1 + 136);
          v8(*(v1 + 152), v37, v39);
          sub_218B674BC(v5, v5 + v9, 1, (2 * v6) | 1);
          v41 = v40;
          (*(v38 + 8))(v37, v39);
          v10 = swift_allocObject();
          *(v10 + 16) = v41;
        }

        (*(*(v1 + 136) + 40))(*(v1 + 160), *(v1 + 152), *(v1 + 128));
        v42 = *(v1 + 232);
        *(v1 + 200) = v10;
        *(v1 + 208) = v42;
        *(v1 + 284) = 1;
        v43 = (*(v1 + 88) + *(v1 + 280));
        v44 = v43[3];
        v45 = v43[4];
        __swift_project_boxed_opaque_existential_1(v43, v44);
        v46 = sub_219BEF9E4();
        *(v1 + 216) = v46;
        v47 = swift_task_alloc();
        *(v1 + 224) = v47;
        v48 = sub_218C6FA54();
        *v47 = v1;
        v47[1] = sub_219561F00;

        return MEMORY[0x282192290](v46, v44, v48, v45);
      }

      v32 = *(v1 + 160);
      v33 = *(v1 + 128);
      v34 = *(v1 + 136);
      v35 = sub_219BEEDD4();
      sub_219561734(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D32390], v35);
      swift_willThrow();

      (*(v34 + 8))(v32, v33);

      v23 = *(v1 + 8);
    }

    else
    {
      v22 = *(v1 + 72);

      *v22 = 0xD000000000000022;
      v22[1] = 0x8000000219D263D0;
      sub_218A59C84(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v1 + 136) + 8))(*(v1 + 160), *(v1 + 128));

      v23 = *(v1 + 8);
    }

    return v23();
  }
}

uint64_t sub_21956272C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  swift_unknownObjectRelease();
  if (v1)
  {
    v4 = sub_219562B4C;
  }

  else
  {
    v4 = sub_219562868;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219562868()
{
  v1 = v0[25];
  sub_2195644E0(v0[33], v0[12]);
  if (v1)
  {
    v2 = v0[25];
    v3 = v0[21];
    v4 = v0[14];
    v14 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[9];
    sub_218ACC140(0);
    v9 = (v7 + *(v8 + 48));
    sub_219564EE8(v6, v7, type metadata accessor for TagFeedGroup);
    v9[3] = v3;

    *v9 = v2;
    sub_219564E88(v6, type metadata accessor for TagFeedGroup);
    (*(v4 + 8))(v14, v5);
  }

  else
  {
    v10 = v0[12];
    v11 = v0[9];
    (*(v0[14] + 8))(v0[15], v0[13]);

    sub_219382AE8(v10, v11);
  }

  sub_218A59C84(0);
  swift_storeEnumTagMultiPayload();
  (*(v0[17] + 8))(v0[20], v0[16]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_219562A4C()
{
  v1 = *(v0 + 284);

  if (v1 == 1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);

    (*(v4 + 8))(v2, v3);
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_219562B4C()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_219562C44@<X0>(uint64_t *a1@<X8>)
{
  sub_219561668(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x6000000000000004;
  return result;
}

uint64_t sub_219562CC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for ChannelRecipesTagFeedGroupKnobs(0);
  a2[4] = sub_219561734(&qword_280EA9C30, type metadata accessor for ChannelRecipesTagFeedGroupKnobs, &unk_219C89EC0);
  a2[5] = sub_219561734(&qword_27CC1BDC0, type metadata accessor for ChannelRecipesTagFeedGroupKnobs, &unk_219C89E98);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219564EE8(v2 + v4, boxed_opaque_existential_1, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
}

uint64_t sub_219562D8C(uint64_t a1)
{
  type metadata accessor for ChannelRecipesTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  sub_2186E4B70(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_218C6FAA0(0);
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EDA0C(v6);
  return v1;
}

uint64_t sub_219562F3C()
{
  sub_219561668(0);

  return sub_219BEDCA4();
}

uint64_t sub_219562F68@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E4B70(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219561668(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219564E88(inited + 32, sub_2188317B0);
  sub_219564F50(0);
  a2[3] = v6;
  a2[4] = sub_219561734(&qword_27CC1BDD0, sub_219564F50, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2195630EC(uint64_t a1)
{
  sub_219561734(&qword_27CC1BDB0, type metadata accessor for ChannelRecipesTagFeedGroupEmitter, &unk_219C89CFC);

  return sub_219BE2324();
}

uint64_t sub_2195632C0@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v69 = a3;
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BF3C84();
  v72 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v66 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF2124();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_219BF14C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v70 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v63 - v13;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDB954();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  sub_219BEF9F4();
  swift_getObjectType();
  sub_219BF6244();
  swift_unknownObjectRelease();
  v22 = (*(v19 + 48))(v17, 1, v18);
  v73 = a2;
  if (v22 != 1)
  {
    v28 = v10;
    (*(v19 + 32))(v21, v17, v18);
    sub_219BF20E4();
    v29 = v14;
    sub_219BF14A4();
    v30 = sub_2191F7664(0, 1, 1, MEMORY[0x277D84F90]);
    v32 = v30[2];
    v31 = v30[3];
    if (v32 >= v31 >> 1)
    {
      v30 = sub_2191F7664((v31 > 1), v32 + 1, 1, v30);
    }

    v30[2] = v32 + 1;
    v33 = v28 + 32;
    v34 = *(v28 + 32);
    v35 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v67 = v30;
    v36 = *(v33 + 40);
    v37 = v30 + v35 + v36 * v32;
    v38 = v9;
    v64 = v33;
    v34(v37, v29, v9);
    sub_219BF20E4();
    sub_219BF14A4();
    v39 = sub_2191F7664(0, 1, 1, MEMORY[0x277D84F90]);
    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    v42 = v39;
    if (v41 >= v40 >> 1)
    {
      v42 = sub_2191F7664((v40 > 1), v41 + 1, 1, v39);
    }

    (*(v19 + 8))(v21, v18);
    v27 = v42;
    *(v42 + 2) = v41 + 1;
    v34(&v42[v35 + v41 * v36], v70, v38);
    goto LABEL_11;
  }

  sub_219564E88(v17, sub_21873F65C);
  if (qword_280EE5F50 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v23 = sub_219BE5434();
    __swift_project_value_buffer(v23, qword_280F62598);
    v24 = sub_219BE5414();
    v25 = sub_219BF61F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2186C1000, v24, v25, "ChannelRecipes emitter failed to resolve recipe catalog search url for footer link", v26, 2u);
      MEMORY[0x21CECF960](v26, -1, -1);
    }

    v27 = MEMORY[0x277D84F90];
    v67 = MEMORY[0x277D84F90];
LABEL_11:
    sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_219C146A0;
    *(v43 + 32) = sub_219BEF9F4();
    sub_2186E4B70(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v44 = *(sub_219BF3E84() - 8);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_219C0B8C0;
    v48 = v73 >> 62 ? sub_219BF7214() : *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = MEMORY[0x277D84F90];
    if (!v48)
    {
      break;
    }

    v74 = MEMORY[0x277D84F90];
    sub_218C34A88(0, v48 & ~(v48 >> 63), 0);
    if ((v48 & 0x8000000000000000) == 0)
    {
      v63[0] = v46;
      v63[1] = v45;
      v63[2] = v47;
      v64 = v43;
      v50 = 0;
      v51 = v73;
      v52 = v74;
      v70 = v27;
      v71 = v73 & 0xC000000000000001;
      v53 = *MEMORY[0x277D34120];
      v54 = (v72 + 104);
      v55 = v65;
      v56 = v66;
      v57 = v48;
      do
      {
        if (v71)
        {
          v58 = MEMORY[0x21CECE0F0](v50);
        }

        else
        {
          v58 = *(v51 + 8 * v50 + 32);
        }

        *v56 = v58;
        (*v54)(v56, v53, v55);
        v74 = v52;
        v60 = *(v52 + 16);
        v59 = *(v52 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_218C34A88((v59 > 1), v60 + 1, 1);
          v52 = v74;
        }

        ++v50;
        *(v52 + 16) = v60 + 1;
        (*(v72 + 32))(v52 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v60, v56, v55);
        v51 = v73;
      }

      while (v57 != v50);
      v49 = MEMORY[0x277D84F90];
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  sub_218F0B984(v49);
  sub_218F0BA7C(v49);
  sub_218F0BB90(v49);
  sub_219BF3E74();
  sub_218F0B984(v49);
  sub_218F0BA7C(v49);
  sub_218F0BB90(v49);
  sub_219BF3E74();
  sub_218F0B984(v49);
  sub_218F0BA7C(v49);
  sub_218F0BB90(v49);
  sub_219BF3E74();
  v61 = sub_219BEC004();
  (*(*(v61 - 8) + 56))(v68, 1, 1, v61);
  sub_219A95188(v49);
  sub_219A95188(v49);
  sub_219A951A0(v49);
  sub_219A951B8(v49);
  sub_219A952CC(v49);
  sub_219A952E4(v49);
  sub_219A953F8(v49);
  return sub_219BF2024();
}

uint64_t sub_219563CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186E4B70(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[9] = swift_task_alloc();
  sub_2186E4B70(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[10] = swift_task_alloc();
  sub_2186E4B70(0, &qword_280E91A70, sub_2189AD5C8, v5);
  v4[11] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_218A89A94(0);
  v4[15] = swift_task_alloc();
  sub_2186FE720(0);
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for ChannelRecipesTagFeedGroupConfigData(0);
  v4[18] = swift_task_alloc();
  v7 = sub_219BF1934();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219563F48, 0, 0);
}

uint64_t sub_219563F48()
{
  v1 = *(v0 + 160);
  v30 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v33 = *(v0 + 152);
  v34 = *(v0 + 88);
  v35 = *(v0 + 80);
  v36 = *(v0 + 72);
  v5 = *(v0 + 56);
  v31 = *(v0 + 64);
  v32 = type metadata accessor for ChannelRecipesTagFeedGroupEmitter(0);
  v6 = (v31 + *(v32 + 24));
  v37 = v6[4];
  v38 = v6[3];
  __swift_project_boxed_opaque_existential_1(v6, v38);
  sub_219561668(0);
  sub_219BEDD14();
  v7 = *(v3 + 20);
  v8 = [v5 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  MEMORY[0x21CECC330](v9, v11);

  v12 = [v5 identifier];
  sub_219BF5414();

  v13 = sub_219BEC004();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_218A42400(0);
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_219BF1764();

  sub_219564E88(v4, sub_218A89A94);
  sub_219564E88(v2, sub_2186FE720);
  v15 = *(v1 + 8);
  *(v0 + 176) = v15;
  *(v0 + 184) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v30 + v7, v33);
  v16 = *(v32 + 20);
  sub_2189AD5C8(0);
  v18 = v17;
  v19 = *(v17 - 8);
  (*(v19 + 16))(v34, v31 + v16, v17);
  (*(v19 + 56))(v34, 0, 1, v18);
  sub_219BEF0B4();
  v20 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v21 = sub_219BF35D4();
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  *(v0 + 208) = 28;
  sub_218C6F8FC(0);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v22 = *(*(v0 + 32) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v23 = sub_219BF2774();
  (*(*(v23 - 8) + 56))(v36, 1, 1, v23);
  v24 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v24 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v25 = swift_task_alloc();
  *(v0 + 192) = v25;
  *v25 = v0;
  v25[1] = sub_219381D88;
  v26 = *(v0 + 168);
  v27 = *(v0 + 112);
  v28 = *(v0 + 48);

  return MEMORY[0x2821921B8](v26, v28, v27, v38, v37);
}

uint64_t sub_2195644E0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v12 = a1;
  v15 = a3;
  sub_2186E4B70(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v13 = &v12 - v4;
  v5 = sub_219BEF554();
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v14 = sub_219BED8D4();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219561668(0);

  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for ChannelRecipesTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v10 = sub_219BEE5D4();
  (*(*(v10 - 8) + 56))(v13, 1, 1, v10);
  sub_219BED844();
  (*(v7 + 32))(v15, v9, v14);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2195647E4(uint64_t a1, uint64_t a2)
{
  v2[72] = a2;
  v2[71] = a1;
  v3 = sub_219BF01F4();
  v2[73] = v3;
  v2[74] = *(v3 - 8);
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v4 = sub_219BEFC44();
  v2[77] = v4;
  v2[78] = *(v4 - 8);
  v2[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219564910, 0, 0);
}

uint64_t sub_219564910(uint64_t a1)
{
  sub_219BEF164();
  v2 = *(v1 + 96);
  *(v1 + 208) = *(v1 + 80);
  *(v1 + 224) = v2;
  v3 = *(v1 + 128);
  *(v1 + 240) = *(v1 + 112);
  *(v1 + 256) = v3;
  v4 = *(v1 + 32);
  *(v1 + 144) = *(v1 + 16);
  *(v1 + 160) = v4;
  v5 = *(v1 + 64);
  *(v1 + 176) = *(v1 + 48);
  *(v1 + 192) = v5;
  v6 = *(v1 + 184);
  *(v1 + 640) = v6;

  sub_218A410EC(v1 + 144);
  v7 = swift_task_alloc();
  *(v1 + 648) = v7;
  v8 = sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  *v7 = v1;
  v7[1] = sub_219564A80;
  v9 = *(v1 + 632);
  v10 = *(v1 + 616);
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v9, v6, v10, v8, v11);
}

uint64_t sub_219564A80()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_2193829C0;
  }

  else
  {
    v2 = sub_219564B94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219564B94()
{
  v1 = *(v0 + 656);

  sub_219BEFC14();
  sub_219BEF164();
  if (v1)
  {
    v2 = *(v0 + 632);
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    (*(*(v0 + 592) + 8))(*(v0 + 608), *(v0 + 584));
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v6 = *(v0 + 632);
    v7 = *(v0 + 624);
    v8 = *(v0 + 616);
    v9 = *(v0 + 608);
    v10 = *(v0 + 600);
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    v23 = *(v0 + 568);
    v13 = *(v0 + 352);
    *(v0 + 464) = *(v0 + 336);
    *(v0 + 480) = v13;
    v14 = *(v0 + 384);
    *(v0 + 496) = *(v0 + 368);
    *(v0 + 512) = v14;
    v15 = *(v0 + 288);
    *(v0 + 400) = *(v0 + 272);
    *(v0 + 416) = v15;
    v16 = *(v0 + 320);
    *(v0 + 432) = *(v0 + 304);
    *(v0 + 448) = v16;
    v17 = *(v0 + 512);

    sub_218A410EC(v0 + 400);
    sub_2186E2394();
    *(v0 + 552) = v18;
    *(v0 + 560) = sub_219561734(&qword_280E8E9B0, sub_2186E2394, MEMORY[0x277D83B78]);
    *(v0 + 528) = v17;
    sub_219BF01D4();
    __swift_destroy_boxed_opaque_existential_1((v0 + 528));
    v19 = sub_219BF01E4();
    v20 = *(v11 + 8);
    v20(v10, v12);
    v20(v9, v12);
    (*(v7 + 8))(v6, v8);
    type metadata accessor for ChannelRecipesTagFeedGroupEmitterCursor();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *v23 = v21;
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_219564DEC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_2195647E4(a1, v1);
}

uint64_t sub_219564E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219564EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ChannelRecipesTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA9C20;
  if (!qword_280EA9C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219564FF8(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_2186EDCB0(319, &qword_280E912E0, MEMORY[0x277D32720]);
    if (v2 <= 0x3F)
    {
      sub_218CC4F9C();
      if (v3 <= 0x3F)
      {
        sub_2186ECA28();
        if (v4 <= 0x3F)
        {
          sub_2186F95C4();
          if (v5 <= 0x3F)
          {
            sub_218CC4F34(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2195650F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a7;
  v30 = a6;
  v31 = a3;
  v32 = a2;
  sub_2186EDCB0(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  sub_2189AD5C8(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_218D0B510(a1, v14, &qword_280E91A70, sub_2189AD5C8);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v16) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CC18(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    if (v20(v14, 1, v16) != 1)
    {
      sub_218D0B57C(v14, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v14, v16);
  }

  (*(v17 + 32))(a8, v19, v16);
  v21 = type metadata accessor for ChannelRecipesTagFeedGroupKnobs(0);
  v22 = v32;
  sub_218D0B510(v32, a8 + v21[5], &qword_280E912E0, MEMORY[0x277D32720]);
  v23 = v34;
  v24 = v30;
  if (v31)
  {
    v25 = v31;
  }

  else
  {
    sub_218CC4F9C();
    swift_allocObject();
    v25 = sub_219BEEE04();
  }

  *(a8 + v21[6]) = v25;
  if (a4)
  {

    v26 = a4;
  }

  else
  {
    v37 = 0;
    sub_2186ECA28();
    swift_allocObject();

    v26 = sub_219BEF534();
  }

  *(a8 + v21[7]) = v26;
  if (a5)
  {

    v27 = a5;
  }

  else
  {
    v36 = 0;
    sub_2186F95C4();
    swift_allocObject();

    v27 = sub_219BEF534();
  }

  *(a8 + v21[8]) = v27;
  if (v24)
  {
  }

  else
  {
    v35 = 0;
    sub_2186F95C4();
    swift_allocObject();

    v24 = sub_219BEF534();
  }

  *(a8 + v21[9]) = v24;
  if (!v23)
  {
    v23 = sub_2194AE724(MEMORY[0x277D84F90]);
  }

  sub_218D0B57C(v22, &qword_280E912E0, MEMORY[0x277D32720]);
  result = sub_218D0B57C(v33, &qword_280E91A70, sub_2189AD5C8);
  *(a8 + v21[10]) = v23;
  return result;
}

uint64_t sub_21956557C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_2189AD5C8(0);
  v66 = v3;
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v64 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChannelRecipesTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = v49 - v9;
  sub_2186EDCB0(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = v49 - v13;
  sub_2195669E0(0, &qword_280E8CAE0, MEMORY[0x277D844C8]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = v49 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219566928();
  v19 = v68;
  sub_219BF7B34();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = a1;
  v55 = 0;
  v57 = v16;
  v58 = v5;
  v59 = v7;
  LOBYTE(v74) = 0;
  sub_21877CC18(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v21 = v61;
  v22 = v66;
  sub_219BF7674();
  sub_219BEF814();
  LOBYTE(v74) = 1;
  sub_21877CC18(&qword_280E912E8, MEMORY[0x277D32720], MEMORY[0x277D32738]);
  v23 = v62;
  sub_219BF7674();
  sub_218CC4F9C();
  v25 = v24;
  LOBYTE(v73) = 2;
  sub_21877CC18(&qword_280E91798, sub_218CC4F9C, MEMORY[0x277D32448]);
  v49[1] = v25;
  sub_219BF7674();
  v53 = v74;
  sub_2186ECA28();
  v27 = v26;
  LOBYTE(v72) = 3;
  v28 = MEMORY[0x277D32620];
  sub_21877CC18(&qword_280E913D8, sub_2186ECA28, MEMORY[0x277D32620]);
  v49[2] = v27;
  sub_219BF7674();
  v60 = v73;
  sub_2186F95C4();
  LOBYTE(v71) = 4;
  sub_21877CC18(&qword_280E913F8, sub_2186F95C4, v28);
  sub_219BF7674();
  v68 = v72;
  LOBYTE(v70) = 5;
  sub_219BF7674();
  v50 = v71;
  sub_218CC4F34(0);
  LOBYTE(v69) = 6;
  sub_218CC84B8();
  v51 = v15;
  sub_219BF7674();
  v52 = v70;
  v29 = v21;
  v30 = v67;
  sub_218D0B510(v21, v67, &qword_280E91A70, sub_2189AD5C8);
  v31 = v63;
  v32 = *(v63 + 48);
  v33 = v32(v30, 1, v22);
  v34 = v23;
  v56 = v18;
  if (v33 == 1)
  {
    v35 = v31;
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CC18(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v36 = v64;
    sub_219BEE974();
    v37 = v66;
    if (v32(v67, 1, v66) != 1)
    {
      sub_218D0B57C(v67, &qword_280E91A70, sub_2189AD5C8);
    }
  }

  else
  {
    v35 = v31;
    v36 = v64;
    v37 = v66;
    (*(v31 + 32))(v64, v67, v66);
  }

  v38 = v59;
  (*(v35 + 32))(v59, v36, v37);
  v39 = v58;
  sub_218D0B510(v23, v38 + v58[5], &qword_280E912E0, MEMORY[0x277D32720]);
  v40 = v50;
  if (v53)
  {
    v41 = v53;
  }

  else
  {
    swift_allocObject();
    v41 = sub_219BEEE04();
  }

  v42 = v60;
  *(v38 + v39[6]) = v41;
  v43 = v68;
  if (v42)
  {

    v44 = v42;
  }

  else
  {
    v69 = 0;
    swift_allocObject();

    v44 = sub_219BEF534();
    v43 = v68;
  }

  *(v38 + v39[7]) = v44;
  if (v43)
  {

    v45 = v43;
  }

  else
  {
    LOBYTE(v69) = 0;
    swift_allocObject();

    v45 = sub_219BEF534();
  }

  *(v38 + v39[8]) = v45;
  if (v40)
  {
  }

  else
  {
    LOBYTE(v69) = 0;
    swift_allocObject();

    v40 = sub_219BEF534();
  }

  v46 = v65;
  v47 = v57;
  *(v38 + v39[9]) = v40;
  v48 = v52;
  if (!v52)
  {
    v48 = sub_2194AE724(MEMORY[0x277D84F90]);
  }

  sub_218D0B57C(v34, &qword_280E912E0, MEMORY[0x277D32720]);
  sub_218D0B57C(v29, &qword_280E91A70, sub_2189AD5C8);
  (*(v47 + 8))(v56, v51);
  *(v38 + v39[10]) = v48;
  sub_21956697C(v38, v46);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_219565ED4(void *a1)
{
  v3 = v1;
  sub_2195669E0(0, &qword_27CC1BDD8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219566928();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8(0);
  sub_21877CC18(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ChannelRecipesTagFeedGroupKnobs(0);
    LOBYTE(v14) = 1;
    sub_219BEF814();
    sub_21877CC18(&qword_280E912F0, MEMORY[0x277D32720], MEMORY[0x277D32728]);
    sub_219BF77E4();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_218CC4F9C();
    sub_21877CC18(&qword_280E917A0, sub_218CC4F9C, MEMORY[0x277D32440]);
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186ECA28();
    sub_21877CC18(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186F95C4();
    sub_21877CC18(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_218CC4F34(0);
    sub_218CC6A10();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2195662F0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6972657473756C63;
    if (v1 != 1)
    {
      v5 = 0x546465726F6E6769;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x73656C7572;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 == 5)
    {
      v2 = 0xD000000000000020;
    }

    v3 = 0xD000000000000014;
    if (v1 != 3)
    {
      v3 = 0x796E41776F6C6C61;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2195663F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219566B5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219566420(uint64_t a1)
{
  v2 = sub_219566928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21956645C(uint64_t a1)
{
  v2 = sub_219566928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2195664CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  sub_218CC85CC(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877CC18(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = type metadata accessor for ChannelRecipesTagFeedGroupKnobs(0);
  v16 = a1;
  v17 = a2;
  v30 = v15;
  v31 = v16;
  v18 = *(v15 + 20);
  v19 = *(v12 + 48);
  v20 = MEMORY[0x277D32720];
  sub_218D0B510(v16 + v18, v14, &qword_280E912E0, MEMORY[0x277D32720]);
  v21 = v17 + v18;
  v22 = v17;
  sub_218D0B510(v21, &v14[v19], &qword_280E912E0, v20);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) != 1)
  {
    sub_218D0B510(v14, v10, &qword_280E912E0, MEMORY[0x277D32720]);
    if (v23(&v14[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v19], v4);
      sub_21877CC18(&qword_27CC10CD8, MEMORY[0x277D32720], MEMORY[0x277D32730]);
      v24 = sub_219BF53A4();
      v25 = *(v5 + 8);
      v25(v7, v4);
      v25(v10, v4);
      v22 = v17;
      sub_218D0B57C(v14, &qword_280E912E0, MEMORY[0x277D32720]);
      if (v24)
      {
        goto LABEL_9;
      }

LABEL_14:
      v28 = 0;
      return v28 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_218D0BBC4(v14);
    goto LABEL_14;
  }

  if (v23(&v14[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_218D0B57C(v14, &qword_280E912E0, MEMORY[0x277D32720]);
LABEL_9:
  sub_218CC4F9C();
  v27 = v30;
  v26 = v31;
  if ((sub_219BEEDE4() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2186F95C4();
  if ((sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21931A484(*(v26 + *(v27 + 40)), *(v22 + *(v27 + 40)));
  return v28 & 1;
}

unint64_t sub_219566928()
{
  result = qword_280EA9C48;
  if (!qword_280EA9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9C48);
  }

  return result;
}

uint64_t sub_21956697C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelRecipesTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2195669E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219566928();
    v7 = a3(a1, &type metadata for ChannelRecipesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219566A58()
{
  result = qword_27CC1BDE0;
  if (!qword_27CC1BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BDE0);
  }

  return result;
}

unint64_t sub_219566AB0()
{
  result = qword_280EA9C38;
  if (!qword_280EA9C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9C38);
  }

  return result;
}

unint64_t sub_219566B08()
{
  result = qword_280EA9C40;
  if (!qword_280EA9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9C40);
  }

  return result;
}

uint64_t sub_219566B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546465726F6E6769 && a2 == 0xED00007344496761 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CD6960 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796E41776F6C6C61 && a2 == 0xEF6C656E6E616843 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000219CD6980 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CD6940 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_219566DC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195675D0(0, &qword_27CC1BE00, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ChannelRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219567518();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_219567634(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21956756C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21956706C(uint64_t a1)
{
  v2 = sub_219567518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195670A8(uint64_t a1)
{
  v2 = sub_219567518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219567124(void *a1)
{
  sub_2195675D0(0, &qword_27CC1BE10, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219567518();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_219567634(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219567384(uint64_t a1)
{
  result = sub_219567634(&qword_27CC1A528, type metadata accessor for ChannelRecipesTagFeedGroup, &unk_219C8A140);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2195673DC(void *a1)
{
  a1[1] = sub_219567634(&qword_27CC1BDF8, type metadata accessor for ChannelRecipesTagFeedGroup, &unk_219C8A06C);
  a1[2] = sub_219567634(&qword_27CC1C730, type metadata accessor for ChannelRecipesTagFeedGroup, &unk_219C8A118);
  result = sub_219567634(&qword_27CC1C840, type metadata accessor for ChannelRecipesTagFeedGroup, &unk_219C8A0F0);
  a1[3] = result;
  return result;
}

uint64_t sub_219567488(uint64_t a1)
{
  v2 = sub_219567634(&qword_27CC1BDF8, type metadata accessor for ChannelRecipesTagFeedGroup, &unk_219C8A06C);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_219567518()
{
  result = qword_27CC1BE08;
  if (!qword_27CC1BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BE08);
  }

  return result;
}

uint64_t sub_21956756C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelRecipesTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2195675D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219567518();
    v7 = a3(a1, &type metadata for ChannelRecipesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219567634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219567690()
{
  result = qword_27CC1BE18;
  if (!qword_27CC1BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BE18);
  }

  return result;
}

unint64_t sub_2195676E8()
{
  result = qword_27CC1BE20;
  if (!qword_27CC1BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BE20);
  }

  return result;
}

unint64_t sub_219567740()
{
  result = qword_27CC1BE28;
  if (!qword_27CC1BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BE28);
  }

  return result;
}

uint64_t type metadata accessor for ChannelRecipesTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E9BC40;
  if (!qword_280E9BC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219567808@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219567D38(0, &qword_280E8C880, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219567CE4();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 28;
    v13 = type metadata accessor for ChannelRecipesTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219567A70(void *a1)
{
  v3 = v1;
  sub_219567D38(0, &qword_27CC1BE30, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219567CE4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for ChannelRecipesTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219567C3C(uint64_t a1)
{
  v2 = sub_219567CE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219567C78(uint64_t a1)
{
  v2 = sub_219567CE4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219567CE4()
{
  result = qword_280E9BC70[0];
  if (!qword_280E9BC70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9BC70);
  }

  return result;
}

void sub_219567D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219567CE4();
    v7 = a3(a1, &type metadata for ChannelRecipesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219567DB0()
{
  result = qword_27CC1BE38;
  if (!qword_27CC1BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BE38);
  }

  return result;
}

unint64_t sub_219567E08()
{
  result = qword_280E9BC60;
  if (!qword_280E9BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BC60);
  }

  return result;
}

unint64_t sub_219567E60()
{
  result = qword_280E9BC68;
  if (!qword_280E9BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BC68);
  }

  return result;
}

uint64_t PaidBundleViaOfferBadgeOrigin.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_219567F40()
{
  result = qword_27CC1BE40;
  if (!qword_27CC1BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BE40);
  }

  return result;
}

id sub_219567FA4()
{
  if (qword_27CC08988 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_27CC08950 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    return (v5 & ~(v5 >> 63));
  }

  else
  {
    v2 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
    if ([v2 respondsToSelector_])
    {
      v3 = [v2 smarterMessagingConfig];
      swift_unknownObjectRelease();
      v4 = [v3 maxShortcutsBubbleTipPresentations];

      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }
}

id sub_2195680F4()
{
  if (qword_280EE9920 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_27CC08960 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    return (v5 & ~(v5 >> 63));
  }

  else
  {
    v2 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
    if ([v2 respondsToSelector_])
    {
      v3 = [v2 smarterMessagingConfig];
      swift_unknownObjectRelease();
      v4 = [v3 maxSportsScoresBubbleTipPresentations];

      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }
}

id sub_219568244()
{
  if (qword_27CC08998 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_27CC08970 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    return (v5 & ~(v5 >> 63));
  }

  else
  {
    v2 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
    if ([v2 respondsToSelector_])
    {
      v3 = [v2 smarterMessagingConfig];
      swift_unknownObjectRelease();
      v4 = [v3 maxNewsPlusStoriesBubbleTipPresentations];

      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }
}

id sub_219568394()
{
  if (qword_27CC08988 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_27CC08958 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    return (v5 & ~(v5 >> 63));
  }

  else
  {
    v2 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
    if ([v2 respondsToSelector_])
    {
      v3 = [v2 smarterMessagingConfig];
      swift_unknownObjectRelease();
      v4 = [v3 shortcutsBubbleTipPresentationsQuiescenceInterval];

      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }
}

id sub_2195684F0()
{
  if (qword_280EE9920 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_27CC08968 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    return (v5 & ~(v5 >> 63));
  }

  else
  {
    v2 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
    if ([v2 respondsToSelector_])
    {
      v3 = [v2 smarterMessagingConfig];
      swift_unknownObjectRelease();
      v4 = [v3 sportsScoresBubbleTipPresentationsQuiescenceInterval];

      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }
}

id sub_21956864C()
{
  if (qword_27CC08998 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_27CC08978 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    return (v5 & ~(v5 >> 63));
  }

  else
  {
    v2 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
    if ([v2 respondsToSelector_])
    {
      v3 = [v2 smarterMessagingConfig];
      swift_unknownObjectRelease();
      v4 = [v3 newsPlusStoriesBubbleTipPresentationsQuiescenceInterval];

      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }
}

id sub_2195687A0(unint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v2 >> 61;
  if ((v2 >> 61) > 3)
  {
    if (v5 <= 5)
    {
      *&v18 = *a1;
      *(&v18 + 1) = v2;
      *&v19 = v4;
      if (v5 == 4)
      {
        return sub_21956A380(&v18);
      }

      else
      {
        return sub_21956A5E4(&v18);
      }
    }

    if (v5 == 6)
    {
      return sub_21956A754();
    }

    v9 = [*(v1 + 128) cachedSubscription];
    if (objc_getAssociatedObject(v9, v9 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18 = v16;
    v19 = v17;
    if (*(&v17 + 1))
    {
      sub_21870AD58();
      if (swift_dynamicCast())
      {
        v10 = v15;
        v11 = [v15 integerValue];
        if (v11 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_218745A0C(&v18, sub_21880702C);
    }

    v10 = 0;
    v11 = 0;
LABEL_26:
    if (objc_getAssociatedObject(v9, ~v11))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18 = v16;
    v19 = v17;
    if (*(&v17 + 1))
    {
      sub_21870AD58();
      if (swift_dynamicCast())
      {
        v12 = v15;
        v13 = [v12 integerValue];

        v14 = v13 - 217;
        return sub_21956AF10(((v14 ^ v11) & 1) == 0);
      }
    }

    else
    {
      sub_218745A0C(&v18, sub_21880702C);
    }

LABEL_33:

    v14 = -217;
    return sub_21956AF10(((v14 ^ v11) & 1) == 0);
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return sub_219569B58();
    }

    else
    {
      *&v18 = *a1;
      *(&v18 + 1) = v2;
      *&v19 = v4;
      return sub_219569E9C(&v18);
    }
  }

  else if (v5)
  {
    return sub_219569824();
  }

  else
  {
    result = sub_219568A44(*a1, v4);
    if (v7 == -1)
    {
      result = sub_219568F30(v3);
      if (v8 == -1)
      {
        return sub_219569514(v3);
      }
    }
  }

  return result;
}

unint64_t sub_219568A44(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280EE5F90 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F625F8);
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2186C1000, v7, v8, "Checking Tip eligibility for 'Enable Notifications' presentation...", v9, 2u);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  if (!a2)
  {
    v11 = sub_219BE5414();
    v12 = sub_219BF6214();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Unknown notifications authorization status. Not eligible for 'Enable Notifications' presentation.";
      goto LABEL_17;
    }

LABEL_18:

    return 0;
  }

  v10 = *(a2 + OBJC_IVAR___TSNotificationSettings_authorizationStatus);
  if (v10 == 2)
  {
    v11 = sub_219BE5414();
    v12 = sub_219BF6214();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "User has authorized notifications. Not eligible for 'Enable Notifications' presentation.";
LABEL_17:
      _os_log_impl(&dword_2186C1000, v11, v12, v14, v13, 2u);
      MEMORY[0x21CECF960](v13, -1, -1);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v15 = swift_dynamicCastObjCProtocolConditional();
  if (!v15 || ![v15 supportsNotifications])
  {
    v11 = sub_219BE5414();
    v12 = sub_219BF6214();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Channel does not support notifications. Not eligible for 'Enable Notifications' presentation.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v16 = *(v3 + 16);

  v17 = [v16 possiblyUnfetchedAppConfiguration];
  if ([v17 respondsToSelector_])
  {
    v18 = [v17 smarterMessagingConfig];
    swift_unknownObjectRelease();
    v19 = [v18 maxEnableNotificationBubbleTipPresentations];
  }

  else
  {
    swift_unknownObjectRelease();
    v19 = 0;
  }

  if (qword_27CC088A0 != -1)
  {
    swift_once();
  }

  sub_21956B2B4();

  sub_219BDC7D4();

  if (v33 >= v19)
  {
    v22 = sub_219BE5414();
    v26 = sub_219BF6214();
    if (os_log_type_enabled(v22, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      *(v27 + 4) = v33;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v19;
      v28 = "Number of tip presentations [%ld] reached limit [%ld]. Not eligible for 'Enable Notifications' presentation.";
      v29 = v26;
      v30 = v22;
      v31 = v27;
      v32 = 22;
LABEL_33:
      _os_log_impl(&dword_2186C1000, v30, v29, v28, v31, v32);
      MEMORY[0x21CECF960](v27, -1, -1);
    }

LABEL_34:

    return 0;
  }

  v21 = sub_21956B308(a1, v10, 0);
  v22 = sub_219BE5414();
  v23 = sub_219BF6214();
  v24 = os_log_type_enabled(v22, v23);
  if ((v21 & 1) == 0)
  {
    if (v24)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Quiescence interval has not elapsed. Not eligible for 'Enable Notifications' presentation.";
      v29 = v23;
      v30 = v22;
      v31 = v27;
      v32 = 2;
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (v24)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2186C1000, v22, v23, "Tip is eligible for 'Enable Notifications' presentation...", v25, 2u);
    MEMORY[0x21CECF960](v25, -1, -1);
  }

  return a1;
}