uint64_t sub_227295D00(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729640C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_226ECCE18;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_226ECCE18;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_227296B18(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_227297224(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_227297930(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729803C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_227298748(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_227298E54(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_227299560(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_227299C6C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729A378(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729AA84(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729B190(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729B89C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729BFA8(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729C6B4(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729CDC0(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729D4CC(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729DBD8(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729E2E4(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729E9F0(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729F0FC(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729F808(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_22729FF14(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_2272A0620(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_226EC0768(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_2272A0D2C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v69 = a4;
  v10 = sub_22766B390();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v79 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766BE40();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = v68 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v75 = v19;
  MEMORY[0x28223BE20](v20);
  v82 = v68 - v21;
  v22 = sub_22766BD20();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v68 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v73 = v29;
  sub_227216960(a3);

  sub_22766BD10();
  v76 = v28;
  v77 = v23;
  v30 = *(v23 + 16);
  v78 = v22;
  v30(v25, v28, v22);
  sub_22766BE30();
  if (a5)
  {
    v31 = MEMORY[0x277D837D0];
    v32 = a5;
    v33 = v69;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[1] = v32;
  v84 = v31;

  v34 = v82;
  sub_22766BE20();
  v35 = v81;
  v36 = v81 + 8;
  v69 = *(v81 + 8);
  v69(v18, v12);
  sub_226E97D1C(v83, &unk_27D7BC990, &qword_227670A30);
  v37 = v79;
  sub_22766A730();
  v38 = v70;
  v39 = v34;
  v40 = *(v35 + 16);
  v40(v70, v39, v12);
  v41 = sub_22766B380();
  v42 = sub_22766C8B0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v80;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v68[1] = v36;
    v47 = v40;
    v48 = v46;
    v83[0] = v46;
    *v45 = 136315138;
    v47(v44, v38, v12);
    v49 = sub_22766C060();
    v50 = v38;
    v51 = v49;
    v53 = v52;
    v54 = v69;
    v69(v50, v12);
    v55 = sub_226E97AE8(v51, v53, v83);
    v44 = v80;

    *(v45 + 4) = v55;
    _os_log_impl(&dword_226E8E000, v41, v42, "ScriptConnection invoking %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v56 = v48;
    v40 = v47;
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v79, v72);
  }

  else
  {

    v54 = v69;
    v69(v38, v12);
    (*(v71 + 8))(v37, v72);
  }

  v57 = v82;
  sub_22766BD50();
  v84 = sub_22766B9C0();
  v85 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v83);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v83);
  v40(v44, v57, v12);
  v58 = v81;
  v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v60 = (v75 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v44, v12);
  v62 = (v61 + v60);
  v63 = v73;
  *v62 = sub_2272B822C;
  v62[1] = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2272B822C;
  *(v64 + 24) = v63;
  v65 = sub_226EA1CF4();

  v66 = sub_22766C950();
  v84 = v65;
  v85 = MEMORY[0x277D225C0];
  v83[0] = v66;
  sub_22766BDD0();

  v54(v57, v12);
  (*(v77 + 8))(v76, v78);
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_2272A1438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_226EB46D8();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v10 = sub_227669290();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226EB4390;
  *(v11 + 24) = v9;

  v10(sub_226E9F880, v11);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2272A15C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_226EB4120();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v10 = sub_227669290();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226EB4390;
  *(v11 + 24) = v9;

  v10(sub_226E9F880, v11);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2272A1748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B4D84;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A8, &unk_227680630);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B4DC0;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A1C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B4BFC;
  v30[1] = v22;
  sub_227664420();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B4C38;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272A21C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B4A74;
  v30[1] = v22;
  sub_2276676E0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B4AB0;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272A26F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B472C;
  v30[1] = v22;
  sub_227664700();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B4768;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272A2C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7A0, &unk_22767E4D0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v49, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = v9;
  v49 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B5BD8;
  v30[1] = v22;
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v49, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B5C14;
  v40[1] = v33;

  sub_227669270();
  (*(v48 + 8))(v36, v37);
}

uint64_t sub_2272A3158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v49, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = v9;
  v49 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B5B0C;
  v30[1] = v22;
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v49, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B5B48;
  v40[1] = v33;

  sub_227669270();
  (*(v48 + 8))(v36, v37);
}

uint64_t sub_2272A3688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B5804;
  v30[1] = v22;
  sub_227667D20();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B5840;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272A3BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B567C;
  v30[1] = v22;
  sub_2276631A0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B56B8;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272A40F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B54F4;
  v30[1] = v22;
  sub_227664170();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B5530;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272A4624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B3AA0;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B3ADC;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A4B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B505C;
  v30[1] = v22;
  sub_227666190();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B5098;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272A509C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA00, &qword_227684DA0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B536C;
  v30[1] = v22;
  sub_227664DC0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B53A8;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272A55D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B4EF0;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B4F2C;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A5B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B4914;
  v30[1] = v22;
  sub_227667210();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B4950;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272A6048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B805C;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B8098;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B5F68;
  v30[1] = v22;
  sub_227668CE0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B5FA4;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272A6AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B44F0;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B4540;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A7004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD920, &qword_227672130);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B7AB0;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2E8, &unk_22767E590);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7AEC;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A7548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC8, &qword_227672140);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B7B58;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2E0, &unk_22767E5A0);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7B94;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A7A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD930, &qword_227672150);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B7C00;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D8, &unk_22767E5B0);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7C3C;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A7FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B7CA8;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7CE4;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A8514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD940, &qword_227672160);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B7D50;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2F0, &qword_22768B810);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7D8C;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A8A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B7DF8;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E88, &qword_2276767D8);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7E34;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A8F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD950, &qword_227672170);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B7EA0;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D0, &qword_22767D538);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7EDC;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A94E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF0, &qword_227672180);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B7F48;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2C0, &unk_22768B820);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_226EE15F0;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A9A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD960, &qword_227672190);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B7FB4;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB978, &unk_22767B520);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7FF0;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272A9F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB0, &qword_227672120);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B5EC0;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94D0, &unk_22767E4E0);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B5EFC;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272AA4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B5D48;
  v30[1] = v22;
  sub_2276666A0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B5D98;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272AA9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B5E04;
  v30[1] = v22;
  sub_227666C80();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B5E54;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272AAF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD900, &unk_22767E580);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B7928;
  v30[1] = v22;
  sub_227669080();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7964;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272AB448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B774C;
  v30[1] = v22;
  sub_2276645D0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7788;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272AB97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B734C;
  v30[1] = v22;
  sub_227664220();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7388;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272ABEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B6FDC;
  v30[1] = v22;
  sub_2276642E0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7018;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272AC3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B6A10;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC290, &unk_227680650);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B6A4C;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272AC928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC340, &unk_22767E550);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B6E54;
  v30[1] = v22;
  sub_227667850();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B6E90;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272ACE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD880, &unk_22767E540);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B6CE8;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB178, &unk_227680640);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B6D24;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272AD3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD870, &qword_22767E530);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B6B7C;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E8, &qword_22767E538);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B6BB8;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272AD8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B6888;
  v30[1] = v22;
  sub_2276692D0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B68C4;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272ADE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD830, &unk_227682470);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B6518;
  v30[1] = v22;
  sub_227666DC0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B6554;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272AE34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B63B8;
  v30[1] = v22;
  sub_2276685B0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B63F4;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272AE880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v51 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v50 = v9;
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v49;
  v25 = v4;
  (*(v53 + 16))(v49, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B61CC;
  v30[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  v31 = v52;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B6208;
  v40[1] = v33;

  sub_227669270();
  (*(v50 + 8))(v36, v37);
}

uint64_t sub_2272AEDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B75EC;
  v30[1] = v22;
  sub_227668800();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7628;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272AF2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B71EC;
  v30[1] = v22;
  sub_2276684D0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B7228;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272AF82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B6728;
  v30[1] = v22;
  sub_227666DB0();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B6764;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272AFD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v53 = *(v4 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  (*(v15 + 16))(&v42 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14, v16);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v56;
  v45 = v3;
  v42 = v8;
  sub_2276696A0();
  v47 = *(v9 + 16);
  v43 = v11;
  v20 = v55;
  v47(v11, v48, v55);
  v21 = *(v9 + 80);
  v44 = ((v21 + 16) & ~v21) + v10;
  v48 = (v21 + 16) & ~v21;
  v49 = v9;
  v22 = swift_allocObject();
  v46 = *(v9 + 32);
  v46(v22 + ((v21 + 16) & ~v21), v11, v20);
  v23 = v53;
  v24 = v50;
  v25 = v4;
  (*(v53 + 16))(v50, v8, v4);
  v26 = v23;
  v27 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v28 = (v52 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v24, v25);
  v30 = (v29 + v28);
  *v30 = sub_2272B51E4;
  v30[1] = v22;
  sub_227665030();
  v31 = v51;
  sub_227669270();
  (*(v26 + 8))(v42, v25);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v19;
  *(v33 + 24) = v32;
  v34 = v43;
  v35 = v31;
  v36 = v31;
  v37 = v55;
  v47(v43, v35, v55);
  v38 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v46(v39 + v48, v34, v37);
  v40 = (v39 + v38);
  *v40 = sub_2272B5220;
  v40[1] = v33;

  sub_227669270();
  (*(v49 + 8))(v36, v37);
}

uint64_t sub_2272B02B4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_227664530();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v32 = *(v34 - 8);
  v12 = MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v12);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B46EC;
  v25[1] = v19;
  sub_227664700();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272A26F4(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B0670@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_227666DA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
  v32 = *(v34 - 8);
  v12 = MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v12);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B48D4;
  v25[1] = v19;
  sub_227667210();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272A5B14(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B0A2C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v5 = sub_227668910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v33 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = *(v3 + 24);
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = v33;
  sub_227669280();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v29;
  v22 = v27;
  v21 = v28;
  (*(v8 + 16))(v27, v19, v28);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v22, v21);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B3A60;
  v25[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  sub_227669270();
  (*(v8 + 8))(v33, v21);
  sub_2272A4624(v15, v32);
  return (*(v30 + 8))(v15, v31);
}

uint64_t sub_2272B0DE0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v5 = sub_227667D10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v33 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = *(v3 + 24);
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = v33;
  sub_227669280();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v29;
  v22 = v27;
  v21 = v28;
  (*(v8 + 16))(v27, v19, v28);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v22, v21);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B8334;
  v25[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  sub_227669270();
  (*(v8 + 8))(v33, v21);
  sub_2272A4624(v15, v32);
  return (*(v30 + 8))(v15, v31);
}

uint64_t sub_2272B1194@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_227668E80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v32 = *(v34 - 8);
  v12 = MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v12);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B6378;
  v25[1] = v19;
  sub_2276685B0();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272AE34C(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B1550@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_2276645D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v32 = *(v34 - 8);
  v12 = MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v12);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B75AC;
  v25[1] = v19;
  sub_227668800();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272AEDC4(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B190C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_227664220();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v32 = *(v34 - 8);
  v12 = MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v12);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B71AC;
  v25[1] = v19;
  sub_2276684D0();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272AF2F8(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B1CC8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v35 = a3;
  v5 = sub_2276692D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v32 = *(v34 - 8);
  v12 = MEMORY[0x28223BE20](v34);
  v14 = &v27 - v13;
  v28 = *(v3 + 24);
  v15 = v28;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v12);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v29;
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v33;
  v21 = v30;
  v20 = v31;
  v22 = v18;
  (*(v8 + 16))(v30, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v20);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B66E8;
  v25[1] = v19;
  sub_227666DB0();

  sub_227669270();
  (*(v8 + 8))(v22, v20);
  sub_2272AF82C(v14, v35);
  return (*(v32 + 8))(v14, v34);
}

uint64_t sub_2272B2084@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v5 = sub_2276687F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v33 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = *(v3 + 24);
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v13);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = v33;
  sub_227669280();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v29;
  v22 = v27;
  v21 = v28;
  (*(v8 + 16))(v27, v19, v28);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v22, v21);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272B618C;
  v25[1] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  sub_227669270();
  (*(v8 + 8))(v33, v21);
  sub_2272AE880(v15, v32);
  return (*(v30 + 8))(v15, v31);
}

void *sub_2272B3408@<X0>(_BYTE *a2@<X8>)
{

  result = sub_227667720();
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_2272B346C(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v6 = a5[1];
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  v8 = v10;
  LOBYTE(v9) = 0;
  a1(&v8);

  sub_226EB4548(v7, 0);
}

uint64_t sub_2272B3508(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v10[5] = v8;

  return sub_227669270();
}

void sub_2272B35A0(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, void *), uint64_t a4, void *a5)
{
  v6 = a5[1];
  v9[0] = *a5;
  v9[1] = v6;
  a3(v10, v9);
  v7 = v10[0];
  v8 = v10[1];
  v11 = 0;
  a1(v10);

  sub_226EC33EC(v7, v8, 0);
}

void *sub_2272B3644@<X0>(void *a2@<X8>)
{

  result = sub_227667720();
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_2272B374C@<X0>(uint64_t *a2@<X8>)
{
  sub_226F62704();

  result = sub_22766C2F0();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_2272B37B0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, void **), uint64_t a4, void **a5)
{
  v6 = a5[1];
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  v8 = v10;
  LOBYTE(v9) = 0;
  a1(&v8);
  sub_226F38F34(v7, 0);
}

uint64_t sub_2272B38A8@<X0>(uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  a2(0);
  sub_226E9ECD0(a3, a4, a5);

  result = sub_22766C2F0();
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2272B3B7C@<X0>(uint64_t *a2@<X8>)
{
  sub_227664410();
  v4 = MEMORY[0x277D508B0];
  sub_226E9ECD0(&qword_28139B988, MEMORY[0x277D508B0], MEMORY[0x277D508A8]);
  sub_226E9ECD0(&qword_28139B998, v4, MEMORY[0x277D508B8]);

  result = sub_22766C5D0();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2272B3ED8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v11 = *a1;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);

  return sub_227669270();
}

void sub_2272B3F80(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);
  sub_226F38F34(v6, 0);
}

uint64_t sub_2272B40BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v12;
  v13[5] = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);

  return sub_227669270();
}

uint64_t sub_2272B4208@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a3@<X8>)
{
  a1(0);
  result = sub_227667710();
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_2272B5A84(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(a1 + 16);
  v6 = *a1;
  v7 = v4;
  v2(&v6);
  return v3(&v6);
}

uint64_t objectdestroy_9Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_2272B840C(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 name];
  if (!v4)
  {

LABEL_6:
    v8 = sub_227664DD0();
    sub_2272B8934(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51028], v8);
    swift_willThrow();

    return;
  }

  v5 = v4;
  sub_22766C000();

  v6 = [a1 kind];
  if (v6)
  {
    v7 = v6;
    sub_22766C000();
  }

  sub_227663360();
}

void *static SkillLevel.representativeSamples()()
{
  v18 = sub_2276633A0();
  v0 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  v4 = sub_22766C090();
  v5 = sub_22766CB70();
  v27 = v4;
  v28[0] = v3;
  v28[1] = v28;
  v28[2] = &v27;
  v26 = v5;
  v28[3] = &v26;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v20 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v21 = v20;
  v22 = sub_226F5BF60(&qword_27D7BA460, &qword_27D7B8470, qword_227677CA0);
  v6 = sub_2276638E0();

  v7 = *(v6 + 16);
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    result = sub_226ED3590(0, v7, 0);
    v9 = 0;
    v10 = v19;
    v14 = v0 + 32;
    v15 = v7;
    v11 = v6 + 72;
    v16 = v6;
    v17 = v0;
    while (v9 < *(v6 + 16))
    {

      sub_227663360();
      v19 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_226ED3590((v12 > 1), v13 + 1, 1);
        v10 = v19;
      }

      ++v9;
      *(v10 + 16) = v13 + 1;
      result = (*(v17 + 32))(v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v13, v2, v18);
      v11 += 48;
      v6 = v16;
      if (v15 == v9)
      {

        return v10;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2272B88DC(uint64_t a1)
{
  result = sub_2272B8934(&qword_28139BCE8, MEMORY[0x277D4FF18], &protocol conformance descriptor for SkillLevel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2272B8934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2272B897C(void *a1)
{
  sub_227663370();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227663390();
  v3 = sub_22766BFD0();

  [a1 setName_];

  sub_227663380();
  if (v4)
  {
    v5 = sub_22766BFD0();
  }

  else
  {
    v5 = 0;
  }

  [a1 setKind_];
}

unint64_t static Int64.kilobytes(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 53))
  {
    result <<= 10;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t static Int64.megabytes(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (result >> 53)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!(result >> 43))
  {
    result <<= 20;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_2272B8AA8()
{
  result = qword_27D7BC700;
  if (!qword_27D7BC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC700);
  }

  return result;
}

unint64_t sub_2272B8AFC(uint64_t a1)
{
  result = sub_2272B8B24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2272B8B24()
{
  result = qword_27D7BC708;
  if (!qword_27D7BC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC708);
  }

  return result;
}

uint64_t sub_2272B8B78(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1ED90(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1ED90((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2272B8C80@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D10];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2272B8D00@<X0>(void *a1@<X8>)
{
  v2 = sub_227666700();
  v4 = v3;
  v6 = v5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA060, qword_227677538);
  sub_227663AD0();
  result = sub_226EB2DFC(v2, v4, v6);
  *a1 = v8;
  a1[1] = v9;
  return result;
}

uint64_t sub_2272B8D88(uint64_t a1)
{
  *(a1 + 24) = sub_2272B8DF0(&qword_2813A5698, &unk_2276774F0);
  result = sub_2272B8DF0(&qword_2813A5690, MEMORY[0x277D52580]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2272B8DF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227666710();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2272B8E48()
{
  result = qword_27D7BC710;
  if (!qword_27D7BC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC710);
  }

  return result;
}

unint64_t sub_2272B8E9C(uint64_t a1)
{
  result = sub_2272B8EC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2272B8EC4()
{
  result = qword_27D7BC718;
  if (!qword_27D7BC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC718);
  }

  return result;
}

uint64_t sub_2272B8F18(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EEB0(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EEB0((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_2272B9020(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v5);
  v134 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v135 = &v117 - v8;
  MEMORY[0x28223BE20](v9);
  v125 = &v117 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v117 - v12;
  v14 = sub_22766AA10();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_22766AA90();
  v130 = *(v15 - 8);
  v131 = v15;
  MEMORY[0x28223BE20](v15);
  v129 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766AA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC720, &qword_22767E808);
  v17 = *(sub_22766AA30() - 8);
  v127 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_227670CD0;
  sub_22766AA00();
  sub_22766A9F0();
  v144 = MEMORY[0x277D839B0];
  v132 = a2;
  LOBYTE(v142) = a2;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v18 = [a1 serviceBeginsTimestamp];
  v140 = v18;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC728, &unk_22767E810);
  v19 = sub_22766CB80();
  v21 = v20;
  v144 = MEMORY[0x277D837D0];

  v142 = v19;
  v143 = v21;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v22 = [a1 subscriptionBundleID];
  v23 = sub_22722DB68();
  v144 = v23;
  v142 = v22;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v24 = [a1 expiryDate];
  if (v24)
  {
    v25 = v24;
    sub_227662710();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_227662750();
  v28 = *(v27 - 8);
  v137 = *(v28 + 56);
  v138 = v27;
  v136 = v28 + 56;
  v137(v13, v26, 1);
  v126 = v5;
  v29 = sub_22766CB80();
  v31 = v30;
  sub_226E97D1C(v13, &qword_27D7B9690, qword_227670B50);
  v32 = MEMORY[0x277D837D0];
  v144 = MEMORY[0x277D837D0];
  v142 = v29;
  v143 = v31;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v33 = [a1 isInGracePeriod];
  v144 = MEMORY[0x277D839B0];
  LOBYTE(v142) = v33;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v34 = [a1 inAppAdamID];
  v144 = v23;
  v142 = v34;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v35 = [a1 initialPurchaseTimestamp];
  v140 = v35;
  v36 = sub_22766CB80();
  v38 = v37;
  v144 = v32;

  v142 = v36;
  v143 = v38;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v39 = [a1 isOfferPeriod];
  v144 = MEMORY[0x277D839B0];
  LOBYTE(v142) = v39;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v40 = [a1 poolType];
  if (v40)
  {
    v41 = v40;
    v42 = sub_22766C000();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v140 = v42;
  v141 = v44;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v45 = sub_22766CB80();
  v47 = v46;
  v144 = v32;

  v142 = v45;
  v143 = v47;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v48 = [a1 promoScenarioID];
  v140 = v48;
  v49 = sub_22766CB80();
  v51 = v50;
  v144 = v32;

  v142 = v49;
  v143 = v51;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v52 = [a1 isPurchaser];
  v144 = MEMORY[0x277D839B0];
  LOBYTE(v142) = v52;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v53 = [a1 startDate];
  if (v53)
  {
    v54 = v125;
    v55 = v53;
    sub_227662710();

    v56 = 0;
  }

  else
  {
    v56 = 1;
    v54 = v125;
  }

  (v137)(v54, v56, 1, v138);
  v57 = sub_22766CB80();
  v59 = v58;
  sub_226E97D1C(v54, &qword_27D7B9690, qword_227670B50);
  v60 = MEMORY[0x277D837D0];
  v144 = MEMORY[0x277D837D0];
  v142 = v57;
  v143 = v59;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v61 = [a1 entitlementSourceAdamID];
  v140 = v61;
  v62 = sub_22766CB80();
  v64 = v63;
  v144 = v60;

  v142 = v62;
  v143 = v64;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  v126 = "\n    entitlementSourceAdamID: ";
  sub_22766A9F0();
  v65 = [a1 featureAccessTypeID];
  v140 = v65;
  v66 = sub_22766CB80();
  v68 = v67;
  v144 = v60;

  v142 = v66;
  v143 = v68;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v69 = [a1 isTrialPeriod];
  v144 = MEMORY[0x277D839B0];
  LOBYTE(v142) = v69;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v70 = [a1 freeTrialPeriodID];
  v140 = v70;
  v71 = sub_22766CB80();
  v73 = v72;
  v144 = v60;

  v142 = v71;
  v143 = v73;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v74 = [a1 vendorAdHocOfferID];
  if (v74)
  {
    v75 = v74;
    v76 = sub_22766C000();
    v78 = v77;
  }

  else
  {
    v76 = 0;
    v78 = 0;
  }

  v140 = v76;
  v141 = v78;
  v79 = sub_22766CB80();
  v81 = v80;
  v82 = MEMORY[0x277D837D0];
  v144 = MEMORY[0x277D837D0];

  v142 = v79;
  v143 = v81;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  v83 = [a1 featureAccessTypeID];
  v140 = v83;
  v84 = sub_22766CB80();
  v86 = v85;
  v144 = v82;

  v142 = v84;
  v143 = v86;
  sub_22766A9E0();
  sub_226E97D1C(&v142, &unk_27D7BC990, &qword_227670A30);
  sub_22766A9F0();
  sub_22766AA20();
  v87 = v129;
  sub_22766AA70();

  (*(v130 + 8))(v87, v131);
  v88 = [a1 serviceBeginsTimestamp];
  v131 = v88;
  if (v88)
  {
    v89 = v88;
    [v88 doubleValue];
    v91 = v90;

    v139 = v91;
  }

  else
  {
    v139 = 0;
  }

  v93 = v134;
  v92 = v135;
  v94 = [a1 initialPurchaseTimestamp];
  v95 = v94;
  if (v94)
  {
    [v94 doubleValue];
    v97 = v96;

    v130 = v97;
  }

  else
  {
    v130 = 0;
  }

  v98 = [a1 promoScenarioID];
  if (v98)
  {
    v128 = sub_22766D330();
  }

  else
  {
    v128 = 0;
  }

  v99 = [a1 entitlementSourceAdamID];
  v129 = v95;
  if (v99)
  {
    v126 = sub_22766D330();
  }

  else
  {
    v126 = 0;
  }

  v100 = [a1 featureAccessTypeID];
  if (v100)
  {
    v125 = sub_22766D330();
  }

  else
  {
    v125 = 0;
  }

  v101 = [a1 freeTrialPeriodID];
  v127 = v98;
  if (v101)
  {
    v122 = sub_22766D330();
  }

  else
  {
    v122 = 0;
  }

  v102 = [a1 subscriptionBundleID];
  v123 = sub_22766D330();

  v103 = [a1 expiryDate];
  if (v103)
  {
    v104 = v103;
    sub_227662710();

    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  (v137)(v92, v105, 1, v138);
  v121 = [a1 isInGracePeriod];
  v106 = [a1 inAppAdamID];
  v120 = sub_22766D330();

  v119 = [a1 isOfferPeriod];
  v107 = [a1 poolType];
  if (v107)
  {
    v108 = v107;
    v118 = sub_22766C000();
    v117 = v109;
  }

  else
  {
    v118 = 0;
    v117 = 0;
  }

  v124 = v100;
  v110 = [a1 productCode];
  if (v110)
  {
    v111 = v110;
    sub_22766C000();
  }

  [a1 isPurchaser];
  v112 = [a1 startDate];
  if (v112)
  {
    v113 = v112;
    sub_227662710();

    v114 = 0;
  }

  else
  {
    v114 = 1;
  }

  (v137)(v93, v114, 1, v138);
  [a1 isTrialPeriod];
  v115 = [a1 vendorAdHocOfferID];
  if (v115)
  {
    v116 = v115;
    sub_22766C000();
  }

  sub_227665AC0();
}

unint64_t sub_2272BA0DC()
{
  result = qword_27D7BC730;
  if (!qword_27D7BC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC730);
  }

  return result;
}

unint64_t sub_2272BA130(uint64_t a1)
{
  result = sub_2272BA158();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2272BA158()
{
  result = qword_27D7BC738;
  if (!qword_27D7BC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC738);
  }

  return result;
}

uint64_t sub_2272BA1AC(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EE50(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EE50((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_2272BA2B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022769C240, v14);
    _os_log_impl(&dword_226E8E000, v8, v9, "[%{public}s] Failed to load JSStack", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v12 = (*(v5 + 8))(v7, v4);
  MEMORY[0x28223BE20](v12);
  v14[-2] = v2;
  v14[-1] = a1;
  return sub_2276696A0();
}

void *sub_2272BA4C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022767E8F0, v14);
    _os_log_impl(&dword_226E8E000, v8, v9, "[%{public}s] Failed to load JSStack", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v12 = (*(v5 + 8))(v7, v4);
  MEMORY[0x28223BE20](v12);
  v14[-2] = v2;
  v14[-1] = a1;
  return sub_2276696A0();
}

id sub_2272BA6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a1;
  v58 = a2;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FB0, &unk_227677140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v50 - v5;
  v7 = sub_22766BD90();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B700();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v15 + 8))(v17, v14);
  v18 = dispatch_group_create();
  v57 = v3;
  v19 = sub_226EAB6B8(v18);
  LOBYTE(v15) = v20;

  if (v15)
  {
    *(swift_allocObject() + 16) = v19;
  }

  else
  {
    sub_22766B6F0();
    sub_22766B5E0();
    v51 = 0;
    (*(v11 + 8))(v13, v10);
    v21 = sub_22766BDB0();
    sub_22766BD80();
    v22 = sub_22766BCB0();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    v60 = 0;
    memset(v59, 0, sizeof(v59));
    v50[1] = v21;
    v52 = MEMORY[0x22AA98090](v9, v6, 0, 0, v59);
    sub_226E97D1C(v59, &qword_27D7B9FB8, &unk_22767E980);
    sub_226E97D1C(v6, &qword_27D7B9FB0, &unk_227677140);
    (*(v53 + 8))(v9, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FC0, qword_227677150);
    v23 = sub_22766BD30();
    v24 = *(v23 - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    v54 = v27;
    *(v27 + 16) = xmmword_227674070;
    v28 = (v27 + v26);
    v29 = swift_allocObject();
    v30 = v57;
    *(v29 + 16) = v57;
    *v28 = 0xD000000000000015;
    v28[1] = 0x8000000227698060;
    v28[2] = sub_2272BB800;
    v28[3] = v29;
    v31 = *MEMORY[0x277D22450];
    v32 = *(v24 + 104);
    (v32)(v28, v31, v23);
    v33 = (v28 + v25);
    v34 = swift_allocObject();
    *(v34 + 16) = ObjectType;
    *v33 = 0xD000000000000010;
    v33[1] = 0x8000000227698080;
    v33[2] = sub_2272BB918;
    v33[3] = v34;
    v53 = v23;
    (v32)(v28 + v25, v31, v23);
    v35 = (v28 + 2 * v25);
    v36 = *&v30[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_scriptConfiguration];
    *v35 = 0xD000000000000013;
    v35[1] = 0x80000002276980A0;
    v35[2] = v36;
    v37 = *MEMORY[0x277D22448];
    v32();
    v38 = (v28 + 3 * v25);
    v39 = objc_allocWithZone(type metadata accessor for ScriptStorefrontCache());
    ObjectType = v30;
    v40 = v36;
    v41 = [v39 init];
    *v38 = 0xD000000000000015;
    v38[1] = 0x80000002276980C0;
    v38[2] = v41;
    v42 = v53;
    (v32)(v38, v37, v53);
    v43 = (v28 + 4 * v25);
    v44 = [objc_allocWithZone(type metadata accessor for OfflineScriptBag()) init];
    *v43 = 6775138;
    v43[1] = 0xE300000000000000;
    v43[2] = v44;
    (v32)(v43, v37, v42);
    v45 = (v28 + 5 * v25);
    v46 = [objc_allocWithZone(type metadata accessor for SimulatorNetwork()) init];
    *v45 = 7628142;
    v45[1] = 0xE300000000000000;
    v45[2] = v46;
    (v32)(v45, v37, v42);
    sub_226E91B50(v61, v28 + 6 * v25);
    (v32)(v28 + 6 * v25, *MEMORY[0x277D22460], v42);
    *&v59[0] = v52;
    sub_226EA50A4(v54);
    result = [objc_allocWithZone(MEMORY[0x277CD4660]) init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v48 = v51;
    v49 = sub_22766BD40();
    if (!v48)
    {
      sub_226EBE3DC(v49);
      sub_2276692A0();

      return __swift_destroy_boxed_opaque_existential_0(v61);
    }

    __swift_destroy_boxed_opaque_existential_0(v61);
    sub_2272BA4C0(v56);
    *(swift_allocObject() + 16) = v48;
  }

  return sub_227669280();
}

id sub_2272BAEBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkScriptLink(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NetworkScriptLink(uint64_t a1)
{
  result = qword_2813A28D0;
  if (!qword_2813A28D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2272BB010(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScriptLinkState(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_2272BB10C()
{
  result = qword_27D7BC740;
  if (!qword_27D7BC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC740);
  }

  return result;
}

void sub_2272BB160(uint64_t a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScriptLinkState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - v12);
  v14 = OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_state;
  swift_beginAccess();
  sub_226EA81F8(a1 + v14, v13);
  if (swift_getEnumCaseMultiPayload())
  {
    v26 = v5;
    sub_226EA4FC0(v13);
    sub_22766A730();

    v15 = sub_22766B380();
    v16 = sub_22766C8A0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = v2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v27[0] = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022769C240, v27);
      *(v18 + 12) = 2082;
      sub_226EA81F8(a1 + v14, v10);
      v20 = sub_22766C060();
      v22 = sub_226E97AE8(v20, v21, v27);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_226E8E000, v15, v16, "[%{public}s] JSStack stack failed to load in unexpected state %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    (*(v28 + 8))(v7, v26);
  }

  else
  {
    v23 = *v13;
    v24 = sub_22766B5F0();
    (*(*(v24 - 8) + 16))(v10, a2, v24);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_226EA4F5C(v10, a1 + v14);
    swift_endAccess();
    dispatch_group_leave(v23);
  }
}

void sub_2272BB4B4(char *a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScriptLinkState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v26 - v12);
  v14 = OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_state;
  swift_beginAccess();
  sub_226EA81F8(&a1[v14], v13);
  if (swift_getEnumCaseMultiPayload())
  {
    v27 = v5;
    sub_226EA4FC0(v13);
    sub_22766A730();
    v15 = a1;
    v16 = sub_22766B380();
    v17 = sub_22766C8A0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022767E8F0, v28);
      *(v19 + 12) = 2082;
      sub_226EA81F8(&a1[v14], v10);
      v21 = sub_22766C060();
      v23 = sub_226E97AE8(v21, v22, v28);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_226E8E000, v16, v17, "[%{public}s] JSStack stack failed to load in unexpected state %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v20, -1, -1);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    (*(v29 + 8))(v7, v27);
  }

  else
  {
    v24 = *v13;
    v25 = sub_22766B5F0();
    (*(*(v25 - 8) + 16))(v10, a2, v25);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_226EA4F5C(v10, &a1[v14]);
    swift_endAccess();
    dispatch_group_leave(v24);
  }
}

uint64_t sub_2272BB848(uint64_t a1)
{
  v3 = *(sub_22766B5F0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_2272BA4C0(v1 + v4);
  return v5(a1, 1);
}

unint64_t sub_2272BB944()
{
  result = qword_27D7BC750;
  if (!qword_27D7BC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC750);
  }

  return result;
}

uint64_t SQLiteDatabase.makeHandle(queue:)(void *a1)
{
  v39 = a1;
  v2 = sub_22766B3C0();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227662320();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for SQLiteDatabase(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v1;
  sub_226FFF108(v1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B30, &qword_227675350) + 48)];
    (*(v11 + 32))(v13, v19, v10);
    v21 = v43;
    v22 = sub_2272BBE14(v13, 0x400000 - (v20 << 20));
    if (v21)
    {
      v16 = v13;
      return (*(v11 + 8))(v16, v10);
    }

    v26 = v22;
    sub_226EA1CF4();
    v28 = v36;
    v27 = v37;
    v29 = v38;
    (*(v37 + 104))(v36, *MEMORY[0x277D851C8], v38);
    v30 = sub_22766C980();
    (*(v27 + 8))(v28, v29);
    (*(v11 + 8))(v13, v10);
    type metadata accessor for SQLiteDatabaseHandle();
    result = swift_allocObject();
    *(result + 16) = v26;
    *(result + 24) = 0;
    *(result + 32) = v30;
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    (*(v40 + 104))(v6, *MEMORY[0x277CC91D8], v41);
    sub_227662480();
    v23 = v43;
    v24 = sub_2272BBE14(v16, 0);
    if (v23)
    {
      return (*(v11 + 8))(v16, v10);
    }

    v31 = v24;
    (*(v11 + 8))(v16, v10);
    type metadata accessor for SQLiteDatabaseHandle();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    v33 = v39;
    *(v32 + 32) = v39;
    v34 = v33;
    return v32;
  }

  return result;
}

sqlite3 *sub_2272BBE14(uint64_t a1, int a2)
{
  v3 = v2;
  ppDb[1] = *MEMORY[0x277D85DE8];
  ppDb[0] = 0;
  v5 = sub_227662460();
  v17 = a2;
  v18 = ppDb;
  v14 = sub_2272BC054;
  v15 = &v16;
  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      *filename = v5;
      v12 = v6 & 0xFFFFFFFFFFFFFFLL;
      v7 = filename;
      goto LABEL_6;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      v13 = sqlite3_open_v2(v7, ppDb, a2 | 6, 0);
      goto LABEL_7;
    }
  }

  sub_22766CE10();
LABEL_7:

  sub_2273946A4(v13);
  if (!v2)
  {
    v3 = ppDb[0];
    if (ppDb[0])
    {
      v9 = sqlite3_extended_result_codes(ppDb[0], 0);
      sub_2273946A4(v9);
    }

    else
    {
      sub_22706F95C();
      v3 = swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 2;
      swift_willThrow();
    }
  }

  return v3;
}

void *sub_2272BBF9C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_10:
    result = sub_22766CE10();
    if (!v4)
    {
      return HIDWORD(v7);
    }

    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = a3(v6, (a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (!v4)
      {
        return LODWORD(v6[0]);
      }

      return result;
    }

    goto LABEL_10;
  }

  v6[0] = a1;
  v6[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  result = a3(&v7, v6);
  if (!v4)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2272BC054@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sqlite3_open_v2(a1, *(v2 + 24), *(v2 + 16) | 6, 0);
  *a2 = result;
  return result;
}

void *sub_2272BC094@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _DWORD *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_2272BC0F0@<X0>(_DWORD *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t dispatch thunk of APIClientReporting.reportBundleIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E92F34;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2272BC2EC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  sub_226E97D1C(v0 + 168, &qword_27D7BC758, &qword_22767ED30);
  v3 = OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver__fakeSupportedWatchAvailable;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver__fakeSupportedPhoneAvailable, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2272BC430()
{
  sub_2272BC2EC();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AccountDeviceObserver(uint64_t a1)
{
  result = qword_2813A0828;
  if (!qword_2813A0828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2272BC4B0(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2272BC58C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766A8A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276693C0();
  (*(v10 + 104))(v12, *MEMORY[0x277D4F8C8], v9);
  v14 = sub_226EC9A38(v12, v13);

  result = (*(v10 + 8))(v12, v9);
  if (v14)
  {
    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    v16 = [objc_opt_self() defaultCenter];
    [v16 addObserver:v1 selector:sel_deviceListChanged name:*MEMORY[0x277CF0010] object:0];

    v17 = [objc_opt_self() defaultCenter];
    [v17 addObserver:v1 selector:sel_deviceListChanged name:*MEMORY[0x277D4FB78] object:0];

    v18 = sub_22766C4B0();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v1;

    sub_2272CA940(0, 0, v4, &unk_22767ED70, v19);
  }

  return result;
}

uint64_t sub_2272BC8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2272BC988;

  return sub_2272BCAFC();
}

uint64_t sub_2272BC988()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_2272BCA98, v1, 0);
}

uint64_t sub_2272BCA98()
{
  sub_2272BD860();
  sub_2272BDFA0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272BCAFC()
{
  v1[18] = v0;
  v2 = sub_22766B390();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272BCBE0, v0, 0);
}

uint64_t sub_2272BCBE0()
{
  sub_2272BF7E8(*(v0 + 144) + 168, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 152);
    v3 = *(v0 + 160);
    v4 = *(v0 + 144);
    sub_226E92AB8((v0 + 56), v0 + 16);
    sub_22766A730();
    sub_22766B370();
    v5 = *(v3 + 8);
    *(v0 + 200) = v5;
    *(v0 + 208) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v1, v2);
    v6 = v4[19];
    v7 = v4[20];
    __swift_project_boxed_opaque_existential_0(v4 + 16, v6);
    v8 = (*(v7 + 8))(v6, v7);
    v9 = MEMORY[0x277D84F90];
    *(v0 + 216) = v8;
    if (v8)
    {
      v9 = v8;
    }

    *(v0 + 136) = v9;
    sub_226E91B50(v0 + 16, v0 + 96);
    v10 = swift_allocObject();
    *(v0 + 224) = v10;
    sub_226E92AB8((v0 + 96), v10 + 16);
    v11 = swift_task_alloc();
    *(v0 + 232) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC760, &unk_22767ED48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA208, &qword_227678960);
    v14 = sub_2272BF904();
    *v11 = v0;
    v11[1] = sub_2272BCF00;

    return MEMORY[0x2821AFB18](5, &unk_22767ED40, v10, v12, v13, v14);
  }

  else
  {
    sub_226E97D1C(v0 + 56, &qword_27D7BC758, &qword_22767ED30);
    sub_22766A730();
    v15 = sub_22766B380();
    v16 = sub_22766C890();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 176);
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_226E8E000, v15, v16, "Error: Unable to reference Apple ID authentication controller.", v21, 2u);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    (*(v20 + 8))(v18, v19);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_2272BCF00(uint64_t a1)
{
  v3 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v4 = v3[18];
    v5 = sub_2272BD2DC;
  }

  else
  {
    v6 = v3[18];

    v5 = sub_2272BD044;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

void sub_2272BD044()
{
  v1 = v0[30];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_21:

    sub_22766A730();

    v14 = sub_22766B380();
    v15 = sub_22766C8B0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = *(v4 + 2);

      _os_log_impl(&dword_226E8E000, v14, v15, "Found %ld supported account devices", v16, 0xCu);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    else
    {
    }

    v17 = v0[25];
    v18 = v0[23];
    v20 = v0[18];
    v19 = v0[19];

    v17(v18, v19);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    *(v20 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices) = v4;

    v21 = v0[1];

    v21();
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    v6 = *(v5 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_2273A5460(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_15:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = *(v4 + 2);
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_31;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_29;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_2272BD2DC()
{

  sub_22766A730();
  v1 = sub_22766B380();
  v2 = sub_22766C890();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[31];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[19];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226E8E000, v1, v2, "Unexpected error while updating account devices.", v8, 2u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  v5(v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2272BD430(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return MEMORY[0x2822009F8](sub_2272BD458, 0, 0);
}

uint64_t sub_2272BD458()
{
  v1 = [*(v0 + 32) ams_altDSID];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = [objc_allocWithZone(MEMORY[0x277CF0220]) init];
    *(v0 + 40) = v4;
    [v4 setAltDSID_];

    v5 = sub_22766C2B0();
    [v4 setOperatingSystems_];

    v6 = v3[3];
    v7 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v6);
    v11 = (*(v7 + 16) + **(v7 + 16));
    v8 = swift_task_alloc();
    *(v0 + 48) = v8;
    *v8 = v0;
    v8[1] = sub_2272BD658;

    return v11(v4, v6, v7);
  }

  else
  {
    **(v0 + 16) = 0;
    v10 = *(v0 + 8);

    return v10();
  }
}